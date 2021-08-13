; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.quad_struct = type { i32, i32, %struct.quad_struct*, %struct.quad_struct*, %struct.quad_struct*, %struct.quad_struct*, %struct.quad_struct* }

@NumNodes = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Perimeter with %d levels on %d processors\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"# of leaves is %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"perimeter is %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dealwithargs(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp sgt i32 %6, 2
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i8**, i8*** %4, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 2
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @atoi(i8* %11)
  store i32 %12, i32* @NumNodes, align 4
  br label %14

13:                                               ; preds = %2
  store i32 1, i32* @NumNodes, align 4
  br label %14

14:                                               ; preds = %13, %8
  %15 = load i32, i32* %3, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i8**, i8*** %4, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @atoi(i8* %20)
  store i32 %21, i32* %5, align 4
  br label %23

22:                                               ; preds = %14
  store i32 11, i32* %5, align 4
  br label %23

23:                                               ; preds = %22, %17
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i32 @atoi(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @CountTree(%struct.quad_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.quad_struct*, align 8
  %4 = alloca %struct.quad_struct*, align 8
  %5 = alloca %struct.quad_struct*, align 8
  %6 = alloca %struct.quad_struct*, align 8
  %7 = alloca %struct.quad_struct*, align 8
  store %struct.quad_struct* %0, %struct.quad_struct** %3, align 8
  %8 = load %struct.quad_struct*, %struct.quad_struct** %3, align 8
  %9 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %8, i32 0, i32 2
  %10 = load %struct.quad_struct*, %struct.quad_struct** %9, align 8
  store %struct.quad_struct* %10, %struct.quad_struct** %4, align 8
  %11 = load %struct.quad_struct*, %struct.quad_struct** %3, align 8
  %12 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %11, i32 0, i32 3
  %13 = load %struct.quad_struct*, %struct.quad_struct** %12, align 8
  store %struct.quad_struct* %13, %struct.quad_struct** %5, align 8
  %14 = load %struct.quad_struct*, %struct.quad_struct** %3, align 8
  %15 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %14, i32 0, i32 4
  %16 = load %struct.quad_struct*, %struct.quad_struct** %15, align 8
  store %struct.quad_struct* %16, %struct.quad_struct** %6, align 8
  %17 = load %struct.quad_struct*, %struct.quad_struct** %3, align 8
  %18 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %17, i32 0, i32 5
  %19 = load %struct.quad_struct*, %struct.quad_struct** %18, align 8
  store %struct.quad_struct* %19, %struct.quad_struct** %7, align 8
  %20 = load %struct.quad_struct*, %struct.quad_struct** %4, align 8
  %21 = icmp eq %struct.quad_struct* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %1
  %23 = load %struct.quad_struct*, %struct.quad_struct** %5, align 8
  %24 = icmp eq %struct.quad_struct* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load %struct.quad_struct*, %struct.quad_struct** %6, align 8
  %27 = icmp eq %struct.quad_struct* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load %struct.quad_struct*, %struct.quad_struct** %7, align 8
  %30 = icmp eq %struct.quad_struct* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 1, i32* %2, align 4
  br label %44

32:                                               ; preds = %28, %25, %22, %1
  %33 = load %struct.quad_struct*, %struct.quad_struct** %4, align 8
  %34 = call i32 @CountTree(%struct.quad_struct* %33)
  %35 = load %struct.quad_struct*, %struct.quad_struct** %5, align 8
  %36 = call i32 @CountTree(%struct.quad_struct* %35)
  %37 = add nsw i32 %34, %36
  %38 = load %struct.quad_struct*, %struct.quad_struct** %6, align 8
  %39 = call i32 @CountTree(%struct.quad_struct* %38)
  %40 = add nsw i32 %37, %39
  %41 = load %struct.quad_struct*, %struct.quad_struct** %7, align 8
  %42 = call i32 @CountTree(%struct.quad_struct* %41)
  %43 = add nsw i32 %40, %42
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %32, %31
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @perimeter(%struct.quad_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.quad_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.quad_struct*, align 8
  %7 = alloca %struct.quad_struct*, align 8
  store %struct.quad_struct* %0, %struct.quad_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.quad_struct*, %struct.quad_struct** %3, align 8
  %9 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %49

12:                                               ; preds = %2
  %13 = load %struct.quad_struct*, %struct.quad_struct** %3, align 8
  %14 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %13, i32 0, i32 4
  %15 = load %struct.quad_struct*, %struct.quad_struct** %14, align 8
  store %struct.quad_struct* %15, %struct.quad_struct** %7, align 8
  %16 = load %struct.quad_struct*, %struct.quad_struct** %7, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sdiv i32 %17, 2
  %19 = call i32 @perimeter(%struct.quad_struct* %16, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load %struct.quad_struct*, %struct.quad_struct** %3, align 8
  %23 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %22, i32 0, i32 5
  %24 = load %struct.quad_struct*, %struct.quad_struct** %23, align 8
  store %struct.quad_struct* %24, %struct.quad_struct** %7, align 8
  %25 = load %struct.quad_struct*, %struct.quad_struct** %7, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sdiv i32 %26, 2
  %28 = call i32 @perimeter(%struct.quad_struct* %25, i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load %struct.quad_struct*, %struct.quad_struct** %3, align 8
  %32 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %31, i32 0, i32 3
  %33 = load %struct.quad_struct*, %struct.quad_struct** %32, align 8
  store %struct.quad_struct* %33, %struct.quad_struct** %7, align 8
  %34 = load %struct.quad_struct*, %struct.quad_struct** %7, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sdiv i32 %35, 2
  %37 = call i32 @perimeter(%struct.quad_struct* %34, i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load %struct.quad_struct*, %struct.quad_struct** %3, align 8
  %41 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %40, i32 0, i32 2
  %42 = load %struct.quad_struct*, %struct.quad_struct** %41, align 8
  store %struct.quad_struct* %42, %struct.quad_struct** %7, align 8
  %43 = load %struct.quad_struct*, %struct.quad_struct** %7, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sdiv i32 %44, 2
  %46 = call i32 @perimeter(%struct.quad_struct* %43, i32 %45)
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %5, align 4
  br label %160

49:                                               ; preds = %2
  %50 = load %struct.quad_struct*, %struct.quad_struct** %3, align 8
  %51 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %159

54:                                               ; preds = %49
  %55 = load %struct.quad_struct*, %struct.quad_struct** %3, align 8
  %56 = call %struct.quad_struct* @gtequal_adj_neighbor(%struct.quad_struct* %55, i32 0)
  store %struct.quad_struct* %56, %struct.quad_struct** %6, align 8
  %57 = load %struct.quad_struct*, %struct.quad_struct** %6, align 8
  %58 = icmp eq %struct.quad_struct* %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load %struct.quad_struct*, %struct.quad_struct** %6, align 8
  %61 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %68

64:                                               ; preds = %59, %54
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %5, align 4
  br label %80

68:                                               ; preds = %59
  %69 = load %struct.quad_struct*, %struct.quad_struct** %6, align 8
  %70 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 2
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load %struct.quad_struct*, %struct.quad_struct** %6, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @sum_adjacent(%struct.quad_struct* %74, i32 3, i32 2, i32 %75)
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %73, %68
  br label %80

80:                                               ; preds = %79, %64
  %81 = load %struct.quad_struct*, %struct.quad_struct** %3, align 8
  %82 = call %struct.quad_struct* @gtequal_adj_neighbor(%struct.quad_struct* %81, i32 1)
  store %struct.quad_struct* %82, %struct.quad_struct** %6, align 8
  %83 = load %struct.quad_struct*, %struct.quad_struct** %6, align 8
  %84 = icmp eq %struct.quad_struct* %83, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load %struct.quad_struct*, %struct.quad_struct** %6, align 8
  %87 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %94

90:                                               ; preds = %85, %80
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %5, align 4
  br label %106

94:                                               ; preds = %85
  %95 = load %struct.quad_struct*, %struct.quad_struct** %6, align 8
  %96 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %97, 2
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load %struct.quad_struct*, %struct.quad_struct** %6, align 8
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @sum_adjacent(%struct.quad_struct* %100, i32 2, i32 0, i32 %101)
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %99, %94
  br label %106

106:                                              ; preds = %105, %90
  %107 = load %struct.quad_struct*, %struct.quad_struct** %3, align 8
  %108 = call %struct.quad_struct* @gtequal_adj_neighbor(%struct.quad_struct* %107, i32 2)
  store %struct.quad_struct* %108, %struct.quad_struct** %6, align 8
  %109 = load %struct.quad_struct*, %struct.quad_struct** %6, align 8
  %110 = icmp eq %struct.quad_struct* %109, null
  br i1 %110, label %116, label %111

111:                                              ; preds = %106
  %112 = load %struct.quad_struct*, %struct.quad_struct** %6, align 8
  %113 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %116, label %120

116:                                              ; preds = %111, %106
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %5, align 4
  br label %132

120:                                              ; preds = %111
  %121 = load %struct.quad_struct*, %struct.quad_struct** %6, align 8
  %122 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp eq i32 %123, 2
  br i1 %124, label %125, label %131

125:                                              ; preds = %120
  %126 = load %struct.quad_struct*, %struct.quad_struct** %6, align 8
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @sum_adjacent(%struct.quad_struct* %126, i32 0, i32 1, i32 %127)
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %125, %120
  br label %132

132:                                              ; preds = %131, %116
  %133 = load %struct.quad_struct*, %struct.quad_struct** %3, align 8
  %134 = call %struct.quad_struct* @gtequal_adj_neighbor(%struct.quad_struct* %133, i32 3)
  store %struct.quad_struct* %134, %struct.quad_struct** %6, align 8
  %135 = load %struct.quad_struct*, %struct.quad_struct** %6, align 8
  %136 = icmp eq %struct.quad_struct* %135, null
  br i1 %136, label %142, label %137

137:                                              ; preds = %132
  %138 = load %struct.quad_struct*, %struct.quad_struct** %6, align 8
  %139 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %142, label %146

142:                                              ; preds = %137, %132
  %143 = load i32, i32* %4, align 4
  %144 = load i32, i32* %5, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %5, align 4
  br label %158

146:                                              ; preds = %137
  %147 = load %struct.quad_struct*, %struct.quad_struct** %6, align 8
  %148 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp eq i32 %149, 2
  br i1 %150, label %151, label %157

151:                                              ; preds = %146
  %152 = load %struct.quad_struct*, %struct.quad_struct** %6, align 8
  %153 = load i32, i32* %4, align 4
  %154 = call i32 @sum_adjacent(%struct.quad_struct* %152, i32 1, i32 3, i32 %153)
  %155 = load i32, i32* %5, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %5, align 4
  br label %157

157:                                              ; preds = %151, %146
  br label %158

158:                                              ; preds = %157, %142
  br label %159

159:                                              ; preds = %158, %49
  br label %160

160:                                              ; preds = %159, %12
  %161 = load i32, i32* %5, align 4
  ret i32 %161
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.quad_struct* @gtequal_adj_neighbor(%struct.quad_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.quad_struct*, align 8
  %4 = alloca %struct.quad_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.quad_struct*, align 8
  %7 = alloca %struct.quad_struct*, align 8
  %8 = alloca i32, align 4
  store %struct.quad_struct* %0, %struct.quad_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.quad_struct*, %struct.quad_struct** %4, align 8
  %10 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %9, i32 0, i32 6
  %11 = load %struct.quad_struct*, %struct.quad_struct** %10, align 8
  store %struct.quad_struct* %11, %struct.quad_struct** %7, align 8
  %12 = load %struct.quad_struct*, %struct.quad_struct** %4, align 8
  %13 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.quad_struct*, %struct.quad_struct** %7, align 8
  %16 = icmp ne %struct.quad_struct* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @adj(i32 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.quad_struct*, %struct.quad_struct** %7, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call %struct.quad_struct* @gtequal_adj_neighbor(%struct.quad_struct* %23, i32 %24)
  store %struct.quad_struct* %25, %struct.quad_struct** %6, align 8
  br label %28

26:                                               ; preds = %17, %2
  %27 = load %struct.quad_struct*, %struct.quad_struct** %7, align 8
  store %struct.quad_struct* %27, %struct.quad_struct** %6, align 8
  br label %28

28:                                               ; preds = %26, %22
  %29 = load %struct.quad_struct*, %struct.quad_struct** %6, align 8
  %30 = icmp ne %struct.quad_struct* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load %struct.quad_struct*, %struct.quad_struct** %6, align 8
  %33 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.quad_struct*, %struct.quad_struct** %6, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @reflect(i32 %38, i32 %39)
  %41 = call %struct.quad_struct* @child(%struct.quad_struct* %37, i32 %40)
  store %struct.quad_struct* %41, %struct.quad_struct** %3, align 8
  br label %44

42:                                               ; preds = %31, %28
  %43 = load %struct.quad_struct*, %struct.quad_struct** %6, align 8
  store %struct.quad_struct* %43, %struct.quad_struct** %3, align 8
  br label %44

44:                                               ; preds = %42, %36
  %45 = load %struct.quad_struct*, %struct.quad_struct** %3, align 8
  ret %struct.quad_struct* %45
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sum_adjacent(%struct.quad_struct* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.quad_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.quad_struct* %0, %struct.quad_struct** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.quad_struct*, %struct.quad_struct** %6, align 8
  %11 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %32

14:                                               ; preds = %4
  %15 = load %struct.quad_struct*, %struct.quad_struct** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.quad_struct* @child(%struct.quad_struct* %15, i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = sdiv i32 %20, 2
  %22 = call i32 @sum_adjacent(%struct.quad_struct* %17, i32 %18, i32 %19, i32 %21)
  %23 = load %struct.quad_struct*, %struct.quad_struct** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call %struct.quad_struct* @child(%struct.quad_struct* %23, i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = sdiv i32 %28, 2
  %30 = call i32 @sum_adjacent(%struct.quad_struct* %25, i32 %26, i32 %27, i32 %29)
  %31 = add nsw i32 %22, %30
  store i32 %31, i32* %5, align 4
  br label %40

32:                                               ; preds = %4
  %33 = load %struct.quad_struct*, %struct.quad_struct** %6, align 8
  %34 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %5, align 4
  br label %40

39:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %39, %37, %14
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.quad_struct* @child(%struct.quad_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.quad_struct*, align 8
  %4 = alloca %struct.quad_struct*, align 8
  %5 = alloca i32, align 4
  store %struct.quad_struct* %0, %struct.quad_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %23 [
    i32 1, label %7
    i32 0, label %11
    i32 3, label %15
    i32 2, label %19
  ]

7:                                                ; preds = %2
  %8 = load %struct.quad_struct*, %struct.quad_struct** %4, align 8
  %9 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %8, i32 0, i32 3
  %10 = load %struct.quad_struct*, %struct.quad_struct** %9, align 8
  store %struct.quad_struct* %10, %struct.quad_struct** %3, align 8
  br label %24

11:                                               ; preds = %2
  %12 = load %struct.quad_struct*, %struct.quad_struct** %4, align 8
  %13 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %12, i32 0, i32 2
  %14 = load %struct.quad_struct*, %struct.quad_struct** %13, align 8
  store %struct.quad_struct* %14, %struct.quad_struct** %3, align 8
  br label %24

15:                                               ; preds = %2
  %16 = load %struct.quad_struct*, %struct.quad_struct** %4, align 8
  %17 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %16, i32 0, i32 5
  %18 = load %struct.quad_struct*, %struct.quad_struct** %17, align 8
  store %struct.quad_struct* %18, %struct.quad_struct** %3, align 8
  br label %24

19:                                               ; preds = %2
  %20 = load %struct.quad_struct*, %struct.quad_struct** %4, align 8
  %21 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %20, i32 0, i32 4
  %22 = load %struct.quad_struct*, %struct.quad_struct** %21, align 8
  store %struct.quad_struct* %22, %struct.quad_struct** %3, align 8
  br label %24

23:                                               ; preds = %2
  store %struct.quad_struct* null, %struct.quad_struct** %3, align 8
  br label %24

24:                                               ; preds = %23, %19, %15, %11, %7
  %25 = load %struct.quad_struct*, %struct.quad_struct** %3, align 8
  ret %struct.quad_struct* %25
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @adj(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %43 [
    i32 0, label %7
    i32 2, label %16
    i32 1, label %25
    i32 3, label %34
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi i1 [ true, %7 ], [ %12, %10 ]
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %3, align 4
  br label %43

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 2
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i1 [ true, %16 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %3, align 4
  br label %43

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 3
  br label %31

31:                                               ; preds = %28, %25
  %32 = phi i1 [ true, %25 ], [ %30, %28 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %3, align 4
  br label %43

34:                                               ; preds = %2
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, 0
  br label %40

40:                                               ; preds = %37, %34
  %41 = phi i1 [ true, %34 ], [ %39, %37 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %40, %31, %22, %13, %2
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @reflect(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %18

11:                                               ; preds = %8, %2
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %17 [
    i32 0, label %13
    i32 1, label %14
    i32 3, label %15
    i32 2, label %16
  ]

13:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %24

14:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %24

15:                                               ; preds = %11
  store i32 2, i32* %3, align 4
  br label %24

16:                                               ; preds = %11
  store i32 3, i32* %3, align 4
  br label %24

17:                                               ; preds = %11
  br label %18

18:                                               ; preds = %17, %8
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %24 [
    i32 0, label %20
    i32 1, label %21
    i32 3, label %22
    i32 2, label %23
  ]

20:                                               ; preds = %18
  store i32 2, i32* %3, align 4
  br label %24

21:                                               ; preds = %18
  store i32 3, i32* %3, align 4
  br label %24

22:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %24

23:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %22, %21, %20, %18, %16, %15, %14, %13
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.quad_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = call i32 @dealwithargs(i32 %9, i8** %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @NumNodes, align 4
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  %15 = load i32, i32* @NumNodes, align 4
  %16 = sub nsw i32 %15, 1
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.quad_struct* @MakeTree(i32 2097152, i32 0, i32 0, i32 0, i32 %16, %struct.quad_struct* null, i32 3, i32 %17)
  store %struct.quad_struct* %18, %struct.quad_struct** %6, align 8
  %19 = load %struct.quad_struct*, %struct.quad_struct** %6, align 8
  %20 = call i32 @CountTree(%struct.quad_struct* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load %struct.quad_struct*, %struct.quad_struct** %6, align 8
  %24 = call i32 @perimeter(%struct.quad_struct* %23, i32 4096)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  call void @exit(i32 0) #4
  unreachable
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.quad_struct* @MakeTree(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.quad_struct* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.quad_struct*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.quad_struct*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.quad_struct* %5, %struct.quad_struct** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %21 = call noalias i8* @malloc(i64 48) #5
  %22 = bitcast i8* %21 to %struct.quad_struct*
  store %struct.quad_struct* %22, %struct.quad_struct** %18, align 8
  %23 = load %struct.quad_struct*, %struct.quad_struct** %14, align 8
  %24 = load %struct.quad_struct*, %struct.quad_struct** %18, align 8
  %25 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %24, i32 0, i32 6
  store %struct.quad_struct* %23, %struct.quad_struct** %25, align 8
  %26 = load i32, i32* %15, align 4
  %27 = load %struct.quad_struct*, %struct.quad_struct** %18, align 8
  %28 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @CheckIntersect(i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* %9, align 4
  %34 = sdiv i32 %33, 2
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %17, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %8
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 512
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load %struct.quad_struct*, %struct.quad_struct** %18, align 8
  %42 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load %struct.quad_struct*, %struct.quad_struct** %18, align 8
  %44 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %43, i32 0, i32 2
  store %struct.quad_struct* null, %struct.quad_struct** %44, align 8
  %45 = load %struct.quad_struct*, %struct.quad_struct** %18, align 8
  %46 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %45, i32 0, i32 3
  store %struct.quad_struct* null, %struct.quad_struct** %46, align 8
  %47 = load %struct.quad_struct*, %struct.quad_struct** %18, align 8
  %48 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %47, i32 0, i32 4
  store %struct.quad_struct* null, %struct.quad_struct** %48, align 8
  %49 = load %struct.quad_struct*, %struct.quad_struct** %18, align 8
  %50 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %49, i32 0, i32 5
  store %struct.quad_struct* null, %struct.quad_struct** %50, align 8
  br label %167

51:                                               ; preds = %37, %8
  %52 = load i32, i32* %17, align 4
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  %55 = load %struct.quad_struct*, %struct.quad_struct** %18, align 8
  %56 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  %57 = load %struct.quad_struct*, %struct.quad_struct** %18, align 8
  %58 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %57, i32 0, i32 2
  store %struct.quad_struct* null, %struct.quad_struct** %58, align 8
  %59 = load %struct.quad_struct*, %struct.quad_struct** %18, align 8
  %60 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %59, i32 0, i32 3
  store %struct.quad_struct* null, %struct.quad_struct** %60, align 8
  %61 = load %struct.quad_struct*, %struct.quad_struct** %18, align 8
  %62 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %61, i32 0, i32 4
  store %struct.quad_struct* null, %struct.quad_struct** %62, align 8
  %63 = load %struct.quad_struct*, %struct.quad_struct** %18, align 8
  %64 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %63, i32 0, i32 5
  store %struct.quad_struct* null, %struct.quad_struct** %64, align 8
  br label %166

65:                                               ; preds = %51
  %66 = load i32, i32* %16, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %65
  %69 = load %struct.quad_struct*, %struct.quad_struct** %18, align 8
  %70 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  %71 = load %struct.quad_struct*, %struct.quad_struct** %18, align 8
  %72 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %71, i32 0, i32 2
  store %struct.quad_struct* null, %struct.quad_struct** %72, align 8
  %73 = load %struct.quad_struct*, %struct.quad_struct** %18, align 8
  %74 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %73, i32 0, i32 3
  store %struct.quad_struct* null, %struct.quad_struct** %74, align 8
  %75 = load %struct.quad_struct*, %struct.quad_struct** %18, align 8
  %76 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %75, i32 0, i32 4
  store %struct.quad_struct* null, %struct.quad_struct** %76, align 8
  %77 = load %struct.quad_struct*, %struct.quad_struct** %18, align 8
  %78 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %77, i32 0, i32 5
  store %struct.quad_struct* null, %struct.quad_struct** %78, align 8
  br label %165

79:                                               ; preds = %65
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %80, %81
  %83 = sdiv i32 %82, 2
  store i32 %83, i32* %19, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %13, align 4
  %86 = add nsw i32 %84, %85
  %87 = add nsw i32 %86, 1
  %88 = sdiv i32 %87, 2
  store i32 %88, i32* %20, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %9, align 4
  %92 = sub nsw i32 %90, %91
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %9, align 4
  %95 = sub nsw i32 %93, %94
  %96 = load i32, i32* %20, align 4
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %96, %97
  %99 = add nsw i32 %98, 1
  %100 = sdiv i32 %99, 2
  %101 = load i32, i32* %13, align 4
  %102 = load %struct.quad_struct*, %struct.quad_struct** %18, align 8
  %103 = load i32, i32* %16, align 4
  %104 = sub nsw i32 %103, 1
  %105 = call %struct.quad_struct* @MakeTree(i32 %89, i32 %92, i32 %95, i32 %100, i32 %101, %struct.quad_struct* %102, i32 2, i32 %104)
  %106 = load %struct.quad_struct*, %struct.quad_struct** %18, align 8
  %107 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %106, i32 0, i32 4
  store %struct.quad_struct* %105, %struct.quad_struct** %107, align 8
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %109, %110
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %9, align 4
  %114 = sub nsw i32 %112, %113
  %115 = load i32, i32* %20, align 4
  %116 = load i32, i32* %20, align 4
  %117 = load i32, i32* %13, align 4
  %118 = add nsw i32 %116, %117
  %119 = sdiv i32 %118, 2
  %120 = load %struct.quad_struct*, %struct.quad_struct** %18, align 8
  %121 = load i32, i32* %16, align 4
  %122 = sub nsw i32 %121, 1
  %123 = call %struct.quad_struct* @MakeTree(i32 %108, i32 %111, i32 %114, i32 %115, i32 %119, %struct.quad_struct* %120, i32 3, i32 %122)
  %124 = load %struct.quad_struct*, %struct.quad_struct** %18, align 8
  %125 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %124, i32 0, i32 5
  store %struct.quad_struct* %123, %struct.quad_struct** %125, align 8
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %127, %128
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %130, %131
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* %19, align 4
  %135 = add nsw i32 %133, %134
  %136 = add nsw i32 %135, 1
  %137 = sdiv i32 %136, 2
  %138 = load i32, i32* %19, align 4
  %139 = load %struct.quad_struct*, %struct.quad_struct** %18, align 8
  %140 = load i32, i32* %16, align 4
  %141 = sub nsw i32 %140, 1
  %142 = call %struct.quad_struct* @MakeTree(i32 %126, i32 %129, i32 %132, i32 %137, i32 %138, %struct.quad_struct* %139, i32 1, i32 %141)
  %143 = load %struct.quad_struct*, %struct.quad_struct** %18, align 8
  %144 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %143, i32 0, i32 3
  store %struct.quad_struct* %142, %struct.quad_struct** %144, align 8
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* %9, align 4
  %148 = sub nsw i32 %146, %147
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %149, %150
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* %19, align 4
  %155 = add nsw i32 %153, %154
  %156 = sdiv i32 %155, 2
  %157 = load %struct.quad_struct*, %struct.quad_struct** %18, align 8
  %158 = load i32, i32* %16, align 4
  %159 = sub nsw i32 %158, 1
  %160 = call %struct.quad_struct* @MakeTree(i32 %145, i32 %148, i32 %151, i32 %152, i32 %156, %struct.quad_struct* %157, i32 0, i32 %159)
  %161 = load %struct.quad_struct*, %struct.quad_struct** %18, align 8
  %162 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %161, i32 0, i32 2
  store %struct.quad_struct* %160, %struct.quad_struct** %162, align 8
  %163 = load %struct.quad_struct*, %struct.quad_struct** %18, align 8
  %164 = getelementptr inbounds %struct.quad_struct, %struct.quad_struct* %163, i32 0, i32 0
  store i32 2, i32* %164, align 8
  br label %165

165:                                              ; preds = %79, %68
  br label %166

166:                                              ; preds = %165, %54
  br label %167

167:                                              ; preds = %166, %40
  %168 = load %struct.quad_struct*, %struct.quad_struct** %18, align 8
  ret %struct.quad_struct* %168
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @CheckIntersect(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %7, align 4
  %11 = add nsw i32 %9, %10
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = add nsw i32 %12, %13
  %15 = call i32 @CheckOutside(i32 %11, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %45, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %18, %19
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = sub nsw i32 %21, %22
  %24 = call i32 @CheckOutside(i32 %20, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %45, label %26

26:                                               ; preds = %17
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 %27, %28
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = sub nsw i32 %30, %31
  %33 = call i32 @CheckOutside(i32 %29, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %7, align 4
  %38 = sub nsw i32 %36, %37
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %39, %40
  %42 = call i32 @CheckOutside(i32 %38, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %35
  store i32 2, i32* %4, align 4
  br label %84

45:                                               ; preds = %35, %26, %17, %3
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %49, %50
  %52 = call i32 @CheckOutside(i32 %48, i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %53, %54
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = sub nsw i32 %56, %57
  %59 = call i32 @CheckOutside(i32 %55, i32 %58)
  %60 = add nsw i32 %52, %59
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %7, align 4
  %63 = sub nsw i32 %61, %62
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = sub nsw i32 %64, %65
  %67 = call i32 @CheckOutside(i32 %63, i32 %66)
  %68 = add nsw i32 %60, %67
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %7, align 4
  %71 = sub nsw i32 %69, %70
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %72, %73
  %75 = call i32 @CheckOutside(i32 %71, i32 %74)
  %76 = add nsw i32 %68, %75
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp eq i32 %77, 4
  br i1 %78, label %82, label %79

79:                                               ; preds = %45
  %80 = load i32, i32* %8, align 4
  %81 = icmp eq i32 %80, -4
  br i1 %81, label %82, label %83

82:                                               ; preds = %79, %45
  store i32 0, i32* %4, align 4
  br label %84

83:                                               ; preds = %79
  store i32 1, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %82, %44
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @CheckOutside(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = mul nsw i32 %7, %8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = mul nsw i32 %10, %11
  %13 = add nsw i32 %9, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp sgt i32 %14, 4194304
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %22

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 1048576
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %22

21:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %20, %16
  %23 = load i32, i32* %3, align 4
  ret i32 %23
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
