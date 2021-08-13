; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.p_type = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [18 x i8] c"Compile date: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"today\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Compiler switches: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"ERROR in %s: Could not open datafile %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"%d %d %d %d %d %d %d %d %d\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Trying %d\0A\00", align 1
@mu.near = internal global [18 x i32] [i32 80, i32 112, i32 112, i32 117, i32 15, i32 15, i32 15, i32 112, i32 112, i32 112, i32 125, i32 43, i32 47, i32 15, i32 80, i32 100, i32 103, i32 15], align 16
@.str.8 = private unnamed_addr constant [15 x i8] c"Gul: %d %d %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"bin+art: %d %d\0A\00", align 1
@__const.m2u.m = private unnamed_addr constant [18 x i32] [i32 1, i32 2, i32 9, i32 10, i32 4, i32 17, i32 6, i32 0, i32 8, i32 15, i32 11, i32 12, i32 5, i32 13, i32 7, i32 14, i32 3, i32 16], align 16
@__const.m2d.m = private unnamed_addr constant [18 x i32] [i32 7, i32 0, i32 1, i32 16, i32 4, i32 12, i32 6, i32 14, i32 8, i32 2, i32 3, i32 10, i32 11, i32 13, i32 15, i32 9, i32 17, i32 5], align 16
@__const.m0d.m = private unnamed_addr constant [18 x i32] [i32 0, i32 2, i32 3, i32 10, i32 11, i32 5, i32 17, i32 7, i32 1, i32 9, i32 15, i32 12, i32 13, i32 6, i32 8, i32 14, i32 4, i32 16], align 16
@__const.m0u.m = private unnamed_addr constant [18 x i32] [i32 0, i32 8, i32 1, i32 2, i32 16, i32 5, i32 13, i32 7, i32 14, i32 9, i32 3, i32 4, i32 11, i32 12, i32 15, i32 10, i32 17, i32 6], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.p_type, align 8
  %8 = alloca %struct._IO_FILE*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  %15 = load i8*, i8** %14, align 8
  %16 = call %struct._IO_FILE* @fopen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store %struct._IO_FILE* %16, %struct._IO_FILE** %8, align 8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %18 = icmp eq %struct._IO_FILE* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* %23, i8* %26)
  call void @exit(i32 1) #4
  unreachable

28:                                               ; preds = %2
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %30 = getelementptr inbounds %struct.p_type, %struct.p_type* %7, i32 0, i32 0
  %31 = getelementptr inbounds %struct.p_type, %struct.p_type* %7, i32 0, i32 1
  %32 = getelementptr inbounds %struct.p_type, %struct.p_type* %7, i32 0, i32 2
  %33 = getelementptr inbounds %struct.p_type, %struct.p_type* %7, i32 0, i32 3
  %34 = getelementptr inbounds %struct.p_type, %struct.p_type* %7, i32 0, i32 4
  %35 = getelementptr inbounds %struct.p_type, %struct.p_type* %7, i32 0, i32 5
  %36 = getelementptr inbounds %struct.p_type, %struct.p_type* %7, i32 0, i32 6
  %37 = getelementptr inbounds %struct.p_type, %struct.p_type* %7, i32 0, i32 7
  %38 = getelementptr inbounds %struct.p_type, %struct.p_type* %7, i32 0, i32 8
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32* %30, i32* %31, i32* %32, i32* %33, i32* %34, i32* %35, i32* %36, i32* %37, i32* %38)
  store i32 2, i32* %6, align 4
  br label %40

40:                                               ; preds = %49, %28
  %41 = load i32, i32* %6, align 4
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @mu(%struct.p_type* byval(%struct.p_type) align 8 %7, i32 %43, i32 0, i32 -1)
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = call i32 @putchar(i32 10)
  br label %52

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 2
  store i32 %51, i32* %6, align 4
  br label %40

52:                                               ; preds = %46
  ret i32 0
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #2

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @mu(%struct.p_type* byval(%struct.p_type) align 8 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.p_type, align 8
  %11 = alloca %struct.p_type, align 8
  %12 = alloca %struct.p_type, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sub nsw i32 %14, 4
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %99

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [18 x i32], [18 x i32]* @mu.near, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = and i32 2, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %218

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [18 x i32], [18 x i32]* @mu.near, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = and i32 8, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %218

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [18 x i32], [18 x i32]* @mu.near, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = and i32 16, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %218

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [18 x i32], [18 x i32]* @mu.near, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = and i32 32, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %218

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [18 x i32], [18 x i32]* @mu.near, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = and i32 1, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %218

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [18 x i32], [18 x i32]* @mu.near, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = and i32 4, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %218

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [18 x i32], [18 x i32]* @mu.near, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = and i32 64, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store i32 0, i32* %5, align 4
  br label %218

80:                                               ; preds = %71
  %81 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [18 x i32], [18 x i32]* @mu.near, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = and i32 64, %85
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  store i32 0, i32* %5, align 4
  br label %218

89:                                               ; preds = %80
  %90 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 8
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [18 x i32], [18 x i32]* @mu.near, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = and i32 64, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  store i32 0, i32* %5, align 4
  br label %218

98:                                               ; preds = %89
  br label %99

99:                                               ; preds = %98, %4
  %100 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 5
  br i1 %102, label %103, label %146

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 6
  br i1 %106, label %107, label %146

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %109, 12
  br i1 %110, label %111, label %146

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 13
  br i1 %114, label %115, label %146

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %117, 14
  br i1 %118, label %119, label %146

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 15
  br i1 %122, label %123, label %146

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 6
  %125 = load i32, i32* %124, align 8
  %126 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 7
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %125, %127
  %129 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 8
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %128, %130
  %132 = icmp eq i32 %131, 3
  br i1 %132, label %133, label %146

133:                                              ; preds = %123
  %134 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 6
  %135 = load i32, i32* %134, align 8
  %136 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 7
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 8
  %139 = load i32, i32* %138, align 8
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %135, i32 %137, i32 %139)
  %141 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 5
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 %142, i32 %144)
  store i32 1, i32* %5, align 4
  br label %218

146:                                              ; preds = %123, %119, %115, %111, %107, %103, %99
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* %7, align 4
  %149 = icmp sle i32 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  store i32 0, i32* %5, align 4
  br label %218

151:                                              ; preds = %146
  %152 = load i32, i32* %8, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  br label %160

155:                                              ; preds = %151
  call void @m0u(%struct.p_type* sret %10, %struct.p_type* byval(%struct.p_type) align 8 %0)
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* %7, align 4
  %158 = add nsw i32 %157, 1
  %159 = call i32 @md(%struct.p_type* byval(%struct.p_type) align 8 %10, i32 %156, i32 %158, i32 0)
  br label %160

160:                                              ; preds = %155, %154
  %161 = phi i32 [ 0, %154 ], [ %159, %155 ]
  store i32 %161, i32* %9, align 4
  %162 = load i32, i32* %9, align 4
  %163 = icmp eq i32 %162, 1
  br i1 %163, label %164, label %173

164:                                              ; preds = %160
  %165 = call i32 @putchar(i32 48)
  %166 = load i32, i32* %7, align 4
  %167 = srem i32 %166, 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %164
  %170 = call i32 @putchar(i32 32)
  br label %171

171:                                              ; preds = %169, %164
  %172 = load i32, i32* %9, align 4
  store i32 %172, i32* %5, align 4
  br label %218

173:                                              ; preds = %160
  %174 = load i32, i32* %8, align 4
  %175 = icmp eq i32 %174, 1
  br i1 %175, label %176, label %177

176:                                              ; preds = %173
  br label %182

177:                                              ; preds = %173
  call void @m1u(%struct.p_type* sret %11, %struct.p_type* byval(%struct.p_type) align 8 %0)
  %178 = load i32, i32* %6, align 4
  %179 = load i32, i32* %7, align 4
  %180 = add nsw i32 %179, 1
  %181 = call i32 @md(%struct.p_type* byval(%struct.p_type) align 8 %11, i32 %178, i32 %180, i32 1)
  br label %182

182:                                              ; preds = %177, %176
  %183 = phi i32 [ 0, %176 ], [ %181, %177 ]
  store i32 %183, i32* %9, align 4
  %184 = load i32, i32* %9, align 4
  %185 = icmp eq i32 %184, 1
  br i1 %185, label %186, label %195

186:                                              ; preds = %182
  %187 = call i32 @putchar(i32 49)
  %188 = load i32, i32* %7, align 4
  %189 = srem i32 %188, 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %186
  %192 = call i32 @putchar(i32 32)
  br label %193

193:                                              ; preds = %191, %186
  %194 = load i32, i32* %9, align 4
  store i32 %194, i32* %5, align 4
  br label %218

195:                                              ; preds = %182
  %196 = load i32, i32* %8, align 4
  %197 = icmp eq i32 %196, 2
  br i1 %197, label %198, label %199

198:                                              ; preds = %195
  br label %204

199:                                              ; preds = %195
  call void @m2u(%struct.p_type* sret %12, %struct.p_type* byval(%struct.p_type) align 8 %0)
  %200 = load i32, i32* %6, align 4
  %201 = load i32, i32* %7, align 4
  %202 = add nsw i32 %201, 1
  %203 = call i32 @md(%struct.p_type* byval(%struct.p_type) align 8 %12, i32 %200, i32 %202, i32 2)
  br label %204

204:                                              ; preds = %199, %198
  %205 = phi i32 [ 0, %198 ], [ %203, %199 ]
  store i32 %205, i32* %9, align 4
  %206 = load i32, i32* %9, align 4
  %207 = icmp eq i32 %206, 1
  br i1 %207, label %208, label %216

208:                                              ; preds = %204
  %209 = call i32 @putchar(i32 50)
  %210 = load i32, i32* %7, align 4
  %211 = srem i32 %210, 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %208
  %214 = call i32 @putchar(i32 32)
  br label %215

215:                                              ; preds = %213, %208
  br label %216

216:                                              ; preds = %215, %204
  %217 = load i32, i32* %9, align 4
  store i32 %217, i32* %5, align 4
  br label %218

218:                                              ; preds = %216, %193, %171, %150, %133, %97, %88, %79, %70, %61, %52, %43, %34, %25
  %219 = load i32, i32* %5, align 4
  ret i32 %219
}

declare dso_local i32 @putchar(i32) #1

; Function Attrs: noinline nounwind uwtable
define internal void @m0u(%struct.p_type* noalias sret %0, %struct.p_type* byval(%struct.p_type) align 8 %1) #0 {
  %3 = alloca [18 x i32], align 16
  %4 = bitcast [18 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([18 x i32]* @__const.m0u.m to i8*), i64 72, i1 false)
  %5 = getelementptr inbounds %struct.p_type, %struct.p_type* %1, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [18 x i32], [18 x i32]* %3, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.p_type, %struct.p_type* %1, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [18 x i32], [18 x i32]* %3, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.p_type, %struct.p_type* %1, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [18 x i32], [18 x i32]* %3, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.p_type, %struct.p_type* %1, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [18 x i32], [18 x i32]* %3, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 3
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.p_type, %struct.p_type* %1, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [18 x i32], [18 x i32]* %3, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 4
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.p_type, %struct.p_type* %1, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [18 x i32], [18 x i32]* %3, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 5
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds %struct.p_type, %struct.p_type* %1, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [18 x i32], [18 x i32]* %3, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 6
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds %struct.p_type, %struct.p_type* %1, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [18 x i32], [18 x i32]* %3, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 7
  store i32 %51, i32* %52, align 4
  %53 = getelementptr inbounds %struct.p_type, %struct.p_type* %1, i32 0, i32 8
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [18 x i32], [18 x i32]* %3, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 8
  store i32 %57, i32* %58, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @md(%struct.p_type* byval(%struct.p_type) align 8 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.p_type, align 8
  %11 = alloca %struct.p_type, align 8
  %12 = alloca %struct.p_type, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %84

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %26

21:                                               ; preds = %17
  call void @m0d(%struct.p_type* sret %10, %struct.p_type* byval(%struct.p_type) align 8 %0)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  %25 = call i32 @mu(%struct.p_type* byval(%struct.p_type) align 8 %10, i32 %22, i32 %24, i32 0)
  br label %26

26:                                               ; preds = %21, %20
  %27 = phi i32 [ 0, %20 ], [ %25, %21 ]
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = call i32 @putchar(i32 48)
  %32 = load i32, i32* %7, align 4
  %33 = srem i32 %32, 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 @putchar(i32 32)
  br label %37

37:                                               ; preds = %35, %30
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %5, align 4
  br label %84

39:                                               ; preds = %26
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %48

43:                                               ; preds = %39
  call void @m1d(%struct.p_type* sret %11, %struct.p_type* byval(%struct.p_type) align 8 %0)
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  %47 = call i32 @mu(%struct.p_type* byval(%struct.p_type) align 8 %11, i32 %44, i32 %46, i32 1)
  br label %48

48:                                               ; preds = %43, %42
  %49 = phi i32 [ 0, %42 ], [ %47, %43 ]
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = call i32 @putchar(i32 49)
  %54 = load i32, i32* %7, align 4
  %55 = srem i32 %54, 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = call i32 @putchar(i32 32)
  br label %59

59:                                               ; preds = %57, %52
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %5, align 4
  br label %84

61:                                               ; preds = %48
  %62 = load i32, i32* %8, align 4
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %70

65:                                               ; preds = %61
  call void @m2d(%struct.p_type* sret %12, %struct.p_type* byval(%struct.p_type) align 8 %0)
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  %69 = call i32 @mu(%struct.p_type* byval(%struct.p_type) align 8 %12, i32 %66, i32 %68, i32 2)
  br label %70

70:                                               ; preds = %65, %64
  %71 = phi i32 [ 0, %64 ], [ %69, %65 ]
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = call i32 @putchar(i32 50)
  %76 = load i32, i32* %7, align 4
  %77 = srem i32 %76, 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = call i32 @putchar(i32 32)
  br label %81

81:                                               ; preds = %79, %74
  br label %82

82:                                               ; preds = %81, %70
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %82, %59, %37, %16
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

; Function Attrs: noinline nounwind uwtable
define internal void @m1u(%struct.p_type* noalias sret %0, %struct.p_type* byval(%struct.p_type) align 8 %1) #0 {
  %3 = bitcast %struct.p_type* %0 to i8*
  %4 = bitcast %struct.p_type* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 8 %4, i64 36, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @m2u(%struct.p_type* noalias sret %0, %struct.p_type* byval(%struct.p_type) align 8 %1) #0 {
  %3 = alloca [18 x i32], align 16
  %4 = bitcast [18 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([18 x i32]* @__const.m2u.m to i8*), i64 72, i1 false)
  %5 = getelementptr inbounds %struct.p_type, %struct.p_type* %1, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [18 x i32], [18 x i32]* %3, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.p_type, %struct.p_type* %1, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [18 x i32], [18 x i32]* %3, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.p_type, %struct.p_type* %1, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [18 x i32], [18 x i32]* %3, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.p_type, %struct.p_type* %1, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [18 x i32], [18 x i32]* %3, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 3
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.p_type, %struct.p_type* %1, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [18 x i32], [18 x i32]* %3, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 4
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.p_type, %struct.p_type* %1, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [18 x i32], [18 x i32]* %3, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 5
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds %struct.p_type, %struct.p_type* %1, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [18 x i32], [18 x i32]* %3, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 6
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds %struct.p_type, %struct.p_type* %1, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [18 x i32], [18 x i32]* %3, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 7
  store i32 %51, i32* %52, align 4
  %53 = getelementptr inbounds %struct.p_type, %struct.p_type* %1, i32 0, i32 8
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [18 x i32], [18 x i32]* %3, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 8
  store i32 %57, i32* %58, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal void @m0d(%struct.p_type* noalias sret %0, %struct.p_type* byval(%struct.p_type) align 8 %1) #0 {
  %3 = alloca [18 x i32], align 16
  %4 = bitcast [18 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([18 x i32]* @__const.m0d.m to i8*), i64 72, i1 false)
  %5 = getelementptr inbounds %struct.p_type, %struct.p_type* %1, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [18 x i32], [18 x i32]* %3, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.p_type, %struct.p_type* %1, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [18 x i32], [18 x i32]* %3, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.p_type, %struct.p_type* %1, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [18 x i32], [18 x i32]* %3, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.p_type, %struct.p_type* %1, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [18 x i32], [18 x i32]* %3, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 3
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.p_type, %struct.p_type* %1, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [18 x i32], [18 x i32]* %3, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 4
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.p_type, %struct.p_type* %1, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [18 x i32], [18 x i32]* %3, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 5
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds %struct.p_type, %struct.p_type* %1, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [18 x i32], [18 x i32]* %3, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 6
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds %struct.p_type, %struct.p_type* %1, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [18 x i32], [18 x i32]* %3, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 7
  store i32 %51, i32* %52, align 4
  %53 = getelementptr inbounds %struct.p_type, %struct.p_type* %1, i32 0, i32 8
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [18 x i32], [18 x i32]* %3, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 8
  store i32 %57, i32* %58, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @m1d(%struct.p_type* noalias sret %0, %struct.p_type* byval(%struct.p_type) align 8 %1) #0 {
  %3 = bitcast %struct.p_type* %0 to i8*
  %4 = bitcast %struct.p_type* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 8 %4, i64 36, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @m2d(%struct.p_type* noalias sret %0, %struct.p_type* byval(%struct.p_type) align 8 %1) #0 {
  %3 = alloca [18 x i32], align 16
  %4 = bitcast [18 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([18 x i32]* @__const.m2d.m to i8*), i64 72, i1 false)
  %5 = getelementptr inbounds %struct.p_type, %struct.p_type* %1, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [18 x i32], [18 x i32]* %3, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.p_type, %struct.p_type* %1, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [18 x i32], [18 x i32]* %3, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.p_type, %struct.p_type* %1, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [18 x i32], [18 x i32]* %3, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.p_type, %struct.p_type* %1, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [18 x i32], [18 x i32]* %3, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 3
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.p_type, %struct.p_type* %1, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [18 x i32], [18 x i32]* %3, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 4
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.p_type, %struct.p_type* %1, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [18 x i32], [18 x i32]* %3, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 5
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds %struct.p_type, %struct.p_type* %1, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [18 x i32], [18 x i32]* %3, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 6
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds %struct.p_type, %struct.p_type* %1, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [18 x i32], [18 x i32]* %3, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 7
  store i32 %51, i32* %52, align 4
  %53 = getelementptr inbounds %struct.p_type, %struct.p_type* %1, i32 0, i32 8
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [18 x i32], [18 x i32]* %3, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.p_type, %struct.p_type* %0, i32 0, i32 8
  store i32 %57, i32* %58, align 4
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
