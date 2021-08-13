; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Toggle = type { i8, {}*, %struct.Toggle* (%struct.Toggle*)* }
%struct.NthToggle = type { %struct.Toggle, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @toggle_value(%struct.Toggle* %0) #0 {
  %2 = alloca %struct.Toggle*, align 8
  store %struct.Toggle* %0, %struct.Toggle** %2, align 8
  %3 = load %struct.Toggle*, %struct.Toggle** %2, align 8
  %4 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %3, i32 0, i32 0
  %5 = load i8, i8* %4, align 8
  ret i8 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.Toggle* @toggle_activate(%struct.Toggle* %0) #0 {
  %2 = alloca %struct.Toggle*, align 8
  store %struct.Toggle* %0, %struct.Toggle** %2, align 8
  %3 = load %struct.Toggle*, %struct.Toggle** %2, align 8
  %4 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %3, i32 0, i32 0
  %5 = load i8, i8* %4, align 8
  %6 = icmp ne i8 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = trunc i32 %8 to i8
  %10 = load %struct.Toggle*, %struct.Toggle** %2, align 8
  %11 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %10, i32 0, i32 0
  store i8 %9, i8* %11, align 8
  %12 = load %struct.Toggle*, %struct.Toggle** %2, align 8
  ret %struct.Toggle* %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.Toggle* @init_Toggle(%struct.Toggle* %0, i8 signext %1) #0 {
  %3 = alloca %struct.Toggle*, align 8
  %4 = alloca i8, align 1
  store %struct.Toggle* %0, %struct.Toggle** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %4, align 1
  %6 = load %struct.Toggle*, %struct.Toggle** %3, align 8
  %7 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %6, i32 0, i32 0
  store i8 %5, i8* %7, align 8
  %8 = load %struct.Toggle*, %struct.Toggle** %3, align 8
  %9 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %8, i32 0, i32 1
  %10 = bitcast {}** %9 to i8 (%struct.Toggle*)**
  store i8 (%struct.Toggle*)* @toggle_value, i8 (%struct.Toggle*)** %10, align 8
  %11 = load %struct.Toggle*, %struct.Toggle** %3, align 8
  %12 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %11, i32 0, i32 2
  store %struct.Toggle* (%struct.Toggle*)* @toggle_activate, %struct.Toggle* (%struct.Toggle*)** %12, align 8
  %13 = load %struct.Toggle*, %struct.Toggle** %3, align 8
  ret %struct.Toggle* %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.Toggle* @new_Toggle(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.Toggle*, align 8
  store i8 %0, i8* %2, align 1
  %4 = call noalias i8* @malloc(i64 24) #4
  %5 = bitcast i8* %4 to %struct.Toggle*
  store %struct.Toggle* %5, %struct.Toggle** %3, align 8
  %6 = load %struct.Toggle*, %struct.Toggle** %3, align 8
  %7 = load i8, i8* %2, align 1
  %8 = call %struct.Toggle* @init_Toggle(%struct.Toggle* %6, i8 signext %7)
  ret %struct.Toggle* %8
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.NthToggle* @nth_toggle_activate(%struct.NthToggle* %0) #0 {
  %2 = alloca %struct.NthToggle*, align 8
  store %struct.NthToggle* %0, %struct.NthToggle** %2, align 8
  %3 = load %struct.NthToggle*, %struct.NthToggle** %2, align 8
  %4 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* %4, align 4
  %7 = load %struct.NthToggle*, %struct.NthToggle** %2, align 8
  %8 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = icmp sge i32 %6, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load %struct.NthToggle*, %struct.NthToggle** %2, align 8
  %13 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %13, i32 0, i32 0
  %15 = load i8, i8* %14, align 8
  %16 = icmp ne i8 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = trunc i32 %18 to i8
  %20 = load %struct.NthToggle*, %struct.NthToggle** %2, align 8
  %21 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %21, i32 0, i32 0
  store i8 %19, i8* %22, align 8
  %23 = load %struct.NthToggle*, %struct.NthToggle** %2, align 8
  %24 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %23, i32 0, i32 2
  store i32 0, i32* %24, align 4
  br label %25

25:                                               ; preds = %11, %1
  %26 = load %struct.NthToggle*, %struct.NthToggle** %2, align 8
  ret %struct.NthToggle* %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.NthToggle* @init_NthToggle(%struct.NthToggle* %0, i32 %1) #0 {
  %3 = alloca %struct.NthToggle*, align 8
  %4 = alloca i32, align 4
  store %struct.NthToggle* %0, %struct.NthToggle** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.NthToggle*, %struct.NthToggle** %3, align 8
  %7 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %6, i32 0, i32 1
  store i32 %5, i32* %7, align 8
  %8 = load %struct.NthToggle*, %struct.NthToggle** %3, align 8
  %9 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %8, i32 0, i32 2
  store i32 0, i32* %9, align 4
  %10 = load %struct.NthToggle*, %struct.NthToggle** %3, align 8
  %11 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %11, i32 0, i32 2
  store %struct.Toggle* (%struct.Toggle*)* bitcast (%struct.NthToggle* (%struct.NthToggle*)* @nth_toggle_activate to %struct.Toggle* (%struct.Toggle*)*), %struct.Toggle* (%struct.Toggle*)** %12, align 8
  %13 = load %struct.NthToggle*, %struct.NthToggle** %3, align 8
  ret %struct.NthToggle* %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.NthToggle* @new_NthToggle(i8 signext %0, i32 %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca %struct.NthToggle*, align 8
  store i8 %0, i8* %3, align 1
  store i32 %1, i32* %4, align 4
  %6 = call noalias i8* @malloc(i64 32) #4
  %7 = bitcast i8* %6 to %struct.NthToggle*
  store %struct.NthToggle* %7, %struct.NthToggle** %5, align 8
  %8 = load %struct.NthToggle*, %struct.NthToggle** %5, align 8
  %9 = bitcast %struct.NthToggle* %8 to %struct.Toggle*
  %10 = load i8, i8* %3, align 1
  %11 = call %struct.Toggle* @init_Toggle(%struct.Toggle* %9, i8 signext %10)
  %12 = bitcast %struct.Toggle* %11 to %struct.NthToggle*
  store %struct.NthToggle* %12, %struct.NthToggle** %5, align 8
  %13 = load %struct.NthToggle*, %struct.NthToggle** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.NthToggle* @init_NthToggle(%struct.NthToggle* %13, i32 %14)
  ret %struct.NthToggle* %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Toggle*, align 8
  %9 = alloca %struct.NthToggle*, align 8
  %10 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @atoi(i8* %16) #5
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %13
  %20 = phi i32 [ %17, %13 ], [ 70000000, %18 ]
  store i32 %20, i32* %7, align 4
  %21 = call %struct.Toggle* @new_Toggle(i8 signext 1)
  store %struct.Toggle* %21, %struct.Toggle** %8, align 8
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %41, %19
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 5
  br i1 %24, label %25, label %44

25:                                               ; preds = %22
  %26 = load %struct.Toggle*, %struct.Toggle** %8, align 8
  %27 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %26, i32 0, i32 2
  %28 = load %struct.Toggle* (%struct.Toggle*)*, %struct.Toggle* (%struct.Toggle*)** %27, align 8
  %29 = load %struct.Toggle*, %struct.Toggle** %8, align 8
  %30 = call %struct.Toggle* %28(%struct.Toggle* %29)
  %31 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %30, i32 0, i32 1
  %32 = bitcast {}** %31 to i8 (%struct.Toggle*)**
  %33 = load i8 (%struct.Toggle*)*, i8 (%struct.Toggle*)** %32, align 8
  %34 = load %struct.Toggle*, %struct.Toggle** %8, align 8
  %35 = call signext i8 %33(%struct.Toggle* %34)
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  %40 = call i32 @puts(i8* %39)
  br label %41

41:                                               ; preds = %25
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %22

44:                                               ; preds = %22
  %45 = load %struct.Toggle*, %struct.Toggle** %8, align 8
  %46 = bitcast %struct.Toggle* %45 to i8*
  call void @free(i8* %46) #4
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %55, %44
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = call %struct.Toggle* @new_Toggle(i8 signext 1)
  store %struct.Toggle* %52, %struct.Toggle** %8, align 8
  %53 = load %struct.Toggle*, %struct.Toggle** %8, align 8
  %54 = bitcast %struct.Toggle* %53 to i8*
  call void @free(i8* %54) #4
  br label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %47

58:                                               ; preds = %47
  %59 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %60 = call %struct.NthToggle* @new_NthToggle(i8 signext 1, i32 3)
  store %struct.NthToggle* %60, %struct.NthToggle** %9, align 8
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %84, %58
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 8
  br i1 %63, label %64, label %87

64:                                               ; preds = %61
  %65 = load %struct.NthToggle*, %struct.NthToggle** %9, align 8
  %66 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %66, i32 0, i32 2
  %68 = load %struct.Toggle* (%struct.Toggle*)*, %struct.Toggle* (%struct.Toggle*)** %67, align 8
  %69 = load %struct.NthToggle*, %struct.NthToggle** %9, align 8
  %70 = bitcast %struct.NthToggle* %69 to %struct.Toggle*
  %71 = call %struct.Toggle* %68(%struct.Toggle* %70)
  %72 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %71, i32 0, i32 1
  %73 = bitcast {}** %72 to i8 (%struct.Toggle*)**
  %74 = load i8 (%struct.Toggle*)*, i8 (%struct.Toggle*)** %73, align 8
  %75 = load %struct.NthToggle*, %struct.NthToggle** %9, align 8
  %76 = bitcast %struct.NthToggle* %75 to %struct.Toggle*
  %77 = call signext i8 %74(%struct.Toggle* %76)
  %78 = icmp ne i8 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %64
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %81

80:                                               ; preds = %64
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %81

81:                                               ; preds = %80, %79
  %82 = load i8*, i8** %10, align 8
  %83 = call i32 @puts(i8* %82)
  br label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %61

87:                                               ; preds = %61
  %88 = load %struct.NthToggle*, %struct.NthToggle** %9, align 8
  %89 = bitcast %struct.NthToggle* %88 to i8*
  call void @free(i8* %89) #4
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %98, %87
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %90
  %95 = call %struct.NthToggle* @new_NthToggle(i8 signext 1, i32 3)
  store %struct.NthToggle* %95, %struct.NthToggle** %9, align 8
  %96 = load %struct.NthToggle*, %struct.NthToggle** %9, align 8
  %97 = bitcast %struct.NthToggle* %96 to i8*
  call void @free(i8* %97) #4
  br label %98

98:                                               ; preds = %94
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %6, align 4
  br label %90

101:                                              ; preds = %90
  ret i32 0
}

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @puts(i8*) #3

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
