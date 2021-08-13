; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"Pfannkuchen(%d) = %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 11, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = call i64 @fannkuch(i32 %8)
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %7, i64 %9)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @fannkuch(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %224

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = call noalias i8* @calloc(i64 %24, i64 4) #3
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** %4, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = call noalias i8* @calloc(i64 %28, i64 4) #3
  %30 = bitcast i8* %29 to i32*
  store i32* %30, i32** %5, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = call noalias i8* @calloc(i64 %32, i64 4) #3
  %34 = bitcast i8* %33 to i32*
  store i32* %34, i32** %6, align 8
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %45, %22
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load i32, i32* %10, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %40, i32* %44, align 4
  br label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %35

48:                                               ; preds = %35
  %49 = load i32, i32* %3, align 4
  store i32 %49, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store i64 0, i64* %8, align 8
  br label %50

50:                                               ; preds = %223, %48
  %51 = load i32, i32* %12, align 4
  %52 = icmp slt i32 %51, 30
  br i1 %52, label %53, label %73

53:                                               ; preds = %50
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %66, %53
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %3, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 1, %63
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %58
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %54

69:                                               ; preds = %54
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %69, %50
  br label %74

74:                                               ; preds = %84, %73
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 1
  br i1 %76, label %77, label %87

77:                                               ; preds = %74
  %78 = load i32, i32* %9, align 4
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  store i32 %78, i32* %83, align 4
  br label %84

84:                                               ; preds = %77
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %9, align 4
  br label %74

87:                                               ; preds = %74
  %88 = load i32*, i32** %5, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %178, label %92

92:                                               ; preds = %87
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %13, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %178, label %100

100:                                              ; preds = %92
  store i64 0, i64* %7, align 8
  store i32 1, i32* %10, align 4
  br label %101

101:                                              ; preds = %115, %100
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %3, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %118

105:                                              ; preds = %101
  %106 = load i32*, i32** %5, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %4, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 %110, i32* %114, align 4
  br label %115

115:                                              ; preds = %105
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %10, align 4
  br label %101

118:                                              ; preds = %101
  %119 = load i32*, i32** %5, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %11, align 4
  br label %122

122:                                              ; preds = %168, %118
  store i32 1, i32* %10, align 4
  %123 = load i32, i32* %11, align 4
  %124 = sub nsw i32 %123, 1
  store i32 %124, i32* %14, align 4
  br label %125

125:                                              ; preds = %149, %122
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %14, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %154

129:                                              ; preds = %125
  %130 = load i32*, i32** %4, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %15, align 4
  %135 = load i32*, i32** %4, align 8
  %136 = load i32, i32* %14, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32*, i32** %4, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 %139, i32* %143, align 4
  %144 = load i32, i32* %15, align 4
  %145 = load i32*, i32** %4, align 8
  %146 = load i32, i32* %14, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  store i32 %144, i32* %148, align 4
  br label %149

149:                                              ; preds = %129
  %150 = load i32, i32* %10, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %14, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %14, align 4
  br label %125

154:                                              ; preds = %125
  %155 = load i64, i64* %7, align 8
  %156 = add nsw i64 %155, 1
  store i64 %156, i64* %7, align 8
  %157 = load i32*, i32** %4, align 8
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %14, align 4
  %162 = load i32, i32* %11, align 4
  %163 = load i32*, i32** %4, align 8
  %164 = load i32, i32* %11, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  store i32 %162, i32* %166, align 4
  %167 = load i32, i32* %14, align 4
  store i32 %167, i32* %11, align 4
  br label %168

168:                                              ; preds = %154
  %169 = load i32, i32* %11, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %122, label %171

171:                                              ; preds = %168
  %172 = load i64, i64* %8, align 8
  %173 = load i64, i64* %7, align 8
  %174 = icmp slt i64 %172, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %171
  %176 = load i64, i64* %7, align 8
  store i64 %176, i64* %8, align 8
  br label %177

177:                                              ; preds = %175, %171
  br label %178

178:                                              ; preds = %177, %92, %87
  br label %179

179:                                              ; preds = %220, %178
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* %3, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %179
  %184 = load i64, i64* %8, align 8
  store i64 %184, i64* %2, align 8
  br label %224

185:                                              ; preds = %179
  %186 = load i32*, i32** %5, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 0
  %188 = load i32, i32* %187, align 4
  store i32 %188, i32* %16, align 4
  store i32 0, i32* %10, align 4
  br label %189

189:                                              ; preds = %193, %185
  %190 = load i32, i32* %10, align 4
  %191 = load i32, i32* %9, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %206

193:                                              ; preds = %189
  %194 = load i32, i32* %10, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %11, align 4
  %196 = load i32*, i32** %5, align 8
  %197 = load i32, i32* %11, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = load i32*, i32** %5, align 8
  %202 = load i32, i32* %10, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  store i32 %200, i32* %204, align 4
  %205 = load i32, i32* %11, align 4
  store i32 %205, i32* %10, align 4
  br label %189

206:                                              ; preds = %189
  %207 = load i32, i32* %16, align 4
  %208 = load i32*, i32** %5, align 8
  %209 = load i32, i32* %9, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  store i32 %207, i32* %211, align 4
  %212 = load i32*, i32** %6, align 8
  %213 = load i32, i32* %9, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = sub nsw i32 %216, 1
  store i32 %217, i32* %215, align 4
  %218 = icmp sgt i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %206
  br label %223

220:                                              ; preds = %206
  %221 = load i32, i32* %9, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %9, align 4
  br label %179

223:                                              ; preds = %219
  br label %50

224:                                              ; preds = %183, %21
  %225 = load i64, i64* %2, align 8
  ret i64 %225
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
