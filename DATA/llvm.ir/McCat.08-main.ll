; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.HPointStruct = type { double, double, double, double }
%struct.ObjPointStruct = type { double, double, double, double, double, double }
%struct.ObjectStruct = type { [57 x i8], %struct.PointListStruct*, %struct.Poly3Struct*, %struct.Poly4Struct*, %struct.Texture*, %struct.Material*, %struct.PointStruct, i32, i32, %struct.PointStruct, %struct.PointStruct, %struct.PointStruct, %struct.ObjectStruct*, %struct.ObjectStruct*, i32, i32, i32, i32, i32, i32, i32, %struct.ObjectStruct*, %struct.ObjectStruct* }
%struct.PointListStruct = type { %struct.ObjPointStruct*, %struct.PointListStruct*, %struct.PointListStruct* }
%struct.Poly3Struct = type { [3 x %struct.ObjPointStruct*], %struct.Material*, %struct.Texture*, %struct.Poly3Struct*, %struct.Poly3Struct* }
%struct.Poly4Struct = type { [4 x %struct.ObjPointStruct*], %struct.Material*, %struct.Texture*, %struct.Poly4Struct*, %struct.Poly4Struct* }
%struct.Texture = type { %struct.PointStruct, %struct.BitMapListStruct*, %struct.PointStruct, %struct.PointStruct, %struct.PointStruct, %struct.Texture*, %struct.Texture* }
%struct.BitMapListStruct = type { %struct.BitMapStruct, %struct.BitMapListStruct*, %struct.BitMapListStruct* }
%struct.BitMapStruct = type { i8* }
%struct.Material = type { float, float, float, %struct.Material*, %struct.Material* }
%struct.PointStruct = type { double, double, double }

@pyramid = dso_local global [12 x [3 x double]] [[3 x double] [double 1.000000e+00, double -6.700000e-01, double 6.700000e-01], [3 x double] [double -1.000000e+00, double -6.700000e-01, double 6.700000e-01], [3 x double] [double 0.000000e+00, double -6.700000e-01, double -1.000000e+00], [3 x double] [double 0.000000e+00, double 1.000000e+00, double 0.000000e+00], [3 x double] [double 1.000000e+00, double -6.700000e-01, double 6.700000e-01], [3 x double] [double 0.000000e+00, double -6.700000e-01, double -1.000000e+00], [3 x double] [double 0.000000e+00, double 1.000000e+00, double 0.000000e+00], [3 x double] [double 0.000000e+00, double -6.700000e-01, double -1.000000e+00], [3 x double] [double -1.000000e+00, double -6.700000e-01, double 6.700000e-01], [3 x double] [double 0.000000e+00, double 1.000000e+00, double 0.000000e+00], [3 x double] [double 1.000000e+00, double -6.700000e-01, double 6.700000e-01], [3 x double] [double -1.000000e+00, double -6.700000e-01, double 6.700000e-01]], align 16
@SPyramid = dso_local global [24 x [3 x double]] [[3 x double] [double 1.000000e+00, double -1.000000e+00, double 1.000000e+00], [3 x double] [double -1.000000e+00, double -1.000000e+00, double 1.000000e+00], [3 x double] [double -1.000000e+00, double -1.000000e+00, double -1.000000e+00], [3 x double] [double 1.000000e+00, double -1.000000e+00, double -1.000000e+00], [3 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], [3 x double] [double 1.000000e+00, double 1.000000e+00, double -1.000000e+00], [3 x double] [double -1.000000e+00, double 1.000000e+00, double -1.000000e+00], [3 x double] [double -1.000000e+00, double 1.000000e+00, double 1.000000e+00], [3 x double] [double 1.000000e+00, double -1.000000e+00, double 1.000000e+00], [3 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], [3 x double] [double -1.000000e+00, double 1.000000e+00, double 1.000000e+00], [3 x double] [double -1.000000e+00, double -1.000000e+00, double 1.000000e+00], [3 x double] [double 1.000000e+00, double -1.000000e+00, double -1.000000e+00], [3 x double] [double -1.000000e+00, double -1.000000e+00, double -1.000000e+00], [3 x double] [double -1.000000e+00, double 1.000000e+00, double -1.000000e+00], [3 x double] [double 1.000000e+00, double 1.000000e+00, double -1.000000e+00], [3 x double] [double 1.000000e+00, double -1.000000e+00, double -1.000000e+00], [3 x double] [double 1.000000e+00, double 1.000000e+00, double -1.000000e+00], [3 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], [3 x double] [double 1.000000e+00, double -1.000000e+00, double 1.000000e+00], [3 x double] [double -1.000000e+00, double -1.000000e+00, double -1.000000e+00], [3 x double] [double -1.000000e+00, double -1.000000e+00, double 1.000000e+00], [3 x double] [double -1.000000e+00, double 1.000000e+00, double 1.000000e+00], [3 x double] [double -1.000000e+00, double 1.000000e+00, double -1.000000e+00]], align 16
@.str = private unnamed_addr constant [11 x i8] c"TestObject\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"SphereObject\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Point[%i] = (%.2f, %.2f, %.2f)\00", align 1
@.str.1.6 = private unnamed_addr constant [24 x i8] c" -> (%.2f, %.2f, %.2f)\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"PrintPoly3s[%i] = (%.2f, %.2f, %.2f)\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"-> (%.2f, %.2f, %.2f)\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"PrintPoly4s[%i] = %.2f, %.2f, %.2f\00", align 1
@.str.5.9 = private unnamed_addr constant [10 x i8] c"Name: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Scale    : (%.2f,%.2f,%.2f)\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Origin   : (%.2f,%.2f,%.2f)\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Rotation : (%.2f,%.2f,%.2f)\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Color    : (%.2f,%.2f,%.2f)\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"Style     : FULL\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Style     : HALF\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"Style     : NONE\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.13 = private unnamed_addr constant [30 x i8] c"Cannot Translate NULL-object\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Cannot Rotate NULL-object\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"Cannot Scale NULL-object\0A\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c" [[ %.2f, %.2f, %.2f, %.2f] \0A\00", align 1
@.str.1.25 = private unnamed_addr constant [30 x i8] c"  [ %.2f, %.2f, %.2f, %.2f] \0A\00", align 1
@.str.2.26 = private unnamed_addr constant [30 x i8] c"  [ %.2f, %.2f, %.2f, %.2f]]\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @PointToHPoint(%struct.HPointStruct* noalias sret %0, %struct.ObjPointStruct* byval(%struct.ObjPointStruct) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %1, i32 0, i32 0
  %4 = load double, double* %3, align 8
  %5 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %0, i32 0, i32 0
  store double %4, double* %5, align 8
  %6 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %1, i32 0, i32 1
  %7 = load double, double* %6, align 8
  %8 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %0, i32 0, i32 1
  store double %7, double* %8, align 8
  %9 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %1, i32 0, i32 2
  %10 = load double, double* %9, align 8
  %11 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %0, i32 0, i32 2
  store double %10, double* %11, align 8
  %12 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %0, i32 0, i32 3
  store double 1.000000e+00, double* %12, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @TPointToHPoint(%struct.HPointStruct* noalias sret %0, %struct.ObjPointStruct* byval(%struct.ObjPointStruct) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %1, i32 0, i32 3
  %4 = load double, double* %3, align 8
  %5 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %0, i32 0, i32 0
  store double %4, double* %5, align 8
  %6 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %1, i32 0, i32 4
  %7 = load double, double* %6, align 8
  %8 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %0, i32 0, i32 1
  store double %7, double* %8, align 8
  %9 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %1, i32 0, i32 5
  %10 = load double, double* %9, align 8
  %11 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %0, i32 0, i32 2
  store double %10, double* %11, align 8
  %12 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %0, i32 0, i32 3
  store double 1.000000e+00, double* %12, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @HPointToPoint(%struct.ObjPointStruct* noalias sret %0, %struct.HPointStruct* byval(%struct.HPointStruct) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %1, i32 0, i32 0
  %4 = load double, double* %3, align 8
  %5 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %0, i32 0, i32 0
  store double %4, double* %5, align 8
  %6 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %1, i32 0, i32 1
  %7 = load double, double* %6, align 8
  %8 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %0, i32 0, i32 1
  store double %7, double* %8, align 8
  %9 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %1, i32 0, i32 2
  %10 = load double, double* %9, align 8
  %11 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %0, i32 0, i32 2
  store double %10, double* %11, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @HPointToTPoint(%struct.ObjPointStruct* noalias sret %0, %struct.HPointStruct* byval(%struct.HPointStruct) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %1, i32 0, i32 0
  %4 = load double, double* %3, align 8
  %5 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %0, i32 0, i32 3
  store double %4, double* %5, align 8
  %6 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %1, i32 0, i32 1
  %7 = load double, double* %6, align 8
  %8 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %0, i32 0, i32 4
  store double %7, double* %8, align 8
  %9 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %1, i32 0, i32 2
  %10 = load double, double* %9, align 8
  %11 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %0, i32 0, i32 5
  store double %10, double* %11, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.ObjectStruct* @MakeSphere(%struct.ObjectStruct* %0, i32 %1, i32 %2, double %3) #0 {
  %5 = alloca %struct.ObjectStruct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca [4 x %struct.PointStruct], align 16
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store %struct.ObjectStruct* %0, %struct.ObjectStruct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store double %3, double* %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sitofp i32 %14 to double
  %16 = fdiv double 0x401921FB54442EEA, %15
  store double %16, double* %12, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sitofp i32 %17 to double
  %19 = fdiv double 0x401921FB54442EEA, %18
  store double %19, double* %13, align 8
  store double 0xC00921FB54442EEA, double* %10, align 8
  br label %20

20:                                               ; preds = %151, %4
  %21 = load double, double* %10, align 8
  %22 = fcmp olt double %21, 0x400921FBDA7BEBF0
  br i1 %22, label %23, label %155

23:                                               ; preds = %20
  store double 0xC00921FB54442EEA, double* %11, align 8
  br label %24

24:                                               ; preds = %146, %23
  %25 = load double, double* %11, align 8
  %26 = fcmp olt double %25, 0x400921FBDA7BEBF0
  br i1 %26, label %27, label %150

27:                                               ; preds = %24
  %28 = load double, double* %11, align 8
  %29 = call double @cos(double %28) #5
  %30 = load double, double* %10, align 8
  %31 = call double @cos(double %30) #5
  %32 = fmul double %29, %31
  %33 = load double, double* %8, align 8
  %34 = fmul double %32, %33
  %35 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %9, i64 0, i64 0
  %36 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %35, i32 0, i32 0
  store double %34, double* %36, align 16
  %37 = load double, double* %11, align 8
  %38 = call double @sin(double %37) #5
  %39 = load double, double* %10, align 8
  %40 = call double @cos(double %39) #5
  %41 = fmul double %38, %40
  %42 = load double, double* %8, align 8
  %43 = fmul double %41, %42
  %44 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %9, i64 0, i64 0
  %45 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %44, i32 0, i32 1
  store double %43, double* %45, align 8
  %46 = load double, double* %10, align 8
  %47 = call double @sin(double %46) #5
  %48 = load double, double* %8, align 8
  %49 = fmul double %47, %48
  %50 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %9, i64 0, i64 0
  %51 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %50, i32 0, i32 2
  store double %49, double* %51, align 16
  %52 = load double, double* %11, align 8
  %53 = call double @cos(double %52) #5
  %54 = load double, double* %10, align 8
  %55 = load double, double* %12, align 8
  %56 = fadd double %54, %55
  %57 = call double @cos(double %56) #5
  %58 = fmul double %53, %57
  %59 = load double, double* %8, align 8
  %60 = fmul double %58, %59
  %61 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %9, i64 0, i64 1
  %62 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %61, i32 0, i32 0
  store double %60, double* %62, align 8
  %63 = load double, double* %11, align 8
  %64 = call double @sin(double %63) #5
  %65 = load double, double* %10, align 8
  %66 = load double, double* %12, align 8
  %67 = fadd double %65, %66
  %68 = call double @cos(double %67) #5
  %69 = fmul double %64, %68
  %70 = load double, double* %8, align 8
  %71 = fmul double %69, %70
  %72 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %9, i64 0, i64 1
  %73 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %72, i32 0, i32 1
  store double %71, double* %73, align 8
  %74 = load double, double* %10, align 8
  %75 = load double, double* %12, align 8
  %76 = fadd double %74, %75
  %77 = call double @sin(double %76) #5
  %78 = load double, double* %8, align 8
  %79 = fmul double %77, %78
  %80 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %9, i64 0, i64 1
  %81 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %80, i32 0, i32 2
  store double %79, double* %81, align 8
  %82 = load double, double* %11, align 8
  %83 = load double, double* %13, align 8
  %84 = fadd double %82, %83
  %85 = call double @cos(double %84) #5
  %86 = load double, double* %10, align 8
  %87 = load double, double* %12, align 8
  %88 = fadd double %86, %87
  %89 = call double @cos(double %88) #5
  %90 = fmul double %85, %89
  %91 = load double, double* %8, align 8
  %92 = fmul double %90, %91
  %93 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %9, i64 0, i64 2
  %94 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %93, i32 0, i32 0
  store double %92, double* %94, align 16
  %95 = load double, double* %11, align 8
  %96 = load double, double* %13, align 8
  %97 = fadd double %95, %96
  %98 = call double @sin(double %97) #5
  %99 = load double, double* %10, align 8
  %100 = load double, double* %12, align 8
  %101 = fadd double %99, %100
  %102 = call double @cos(double %101) #5
  %103 = fmul double %98, %102
  %104 = load double, double* %8, align 8
  %105 = fmul double %103, %104
  %106 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %9, i64 0, i64 2
  %107 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %106, i32 0, i32 1
  store double %105, double* %107, align 8
  %108 = load double, double* %10, align 8
  %109 = load double, double* %12, align 8
  %110 = fadd double %108, %109
  %111 = call double @sin(double %110) #5
  %112 = load double, double* %8, align 8
  %113 = fmul double %111, %112
  %114 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %9, i64 0, i64 2
  %115 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %114, i32 0, i32 2
  store double %113, double* %115, align 16
  %116 = load double, double* %11, align 8
  %117 = load double, double* %13, align 8
  %118 = fadd double %116, %117
  %119 = call double @cos(double %118) #5
  %120 = load double, double* %10, align 8
  %121 = call double @cos(double %120) #5
  %122 = fmul double %119, %121
  %123 = load double, double* %8, align 8
  %124 = fmul double %122, %123
  %125 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %9, i64 0, i64 3
  %126 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %125, i32 0, i32 0
  store double %124, double* %126, align 8
  %127 = load double, double* %11, align 8
  %128 = load double, double* %13, align 8
  %129 = fadd double %127, %128
  %130 = call double @sin(double %129) #5
  %131 = load double, double* %10, align 8
  %132 = call double @cos(double %131) #5
  %133 = fmul double %130, %132
  %134 = load double, double* %8, align 8
  %135 = fmul double %133, %134
  %136 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %9, i64 0, i64 3
  %137 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %136, i32 0, i32 1
  store double %135, double* %137, align 8
  %138 = load double, double* %10, align 8
  %139 = call double @sin(double %138) #5
  %140 = load double, double* %8, align 8
  %141 = fmul double %139, %140
  %142 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %9, i64 0, i64 3
  %143 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %142, i32 0, i32 2
  store double %141, double* %143, align 8
  %144 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %145 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %9, i64 0, i64 0
  call void @InsertPoly4(%struct.ObjectStruct* %144, %struct.PointStruct* %145, %struct.Texture* null, %struct.Material* null)
  br label %146

146:                                              ; preds = %27
  %147 = load double, double* %11, align 8
  %148 = load double, double* %13, align 8
  %149 = fadd double %147, %148
  store double %149, double* %11, align 8
  br label %24

150:                                              ; preds = %24
  br label %151

151:                                              ; preds = %150
  %152 = load double, double* %10, align 8
  %153 = load double, double* %12, align 8
  %154 = fadd double %152, %153
  store double %154, double* %10, align 8
  br label %20

155:                                              ; preds = %20
  %156 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  ret %struct.ObjectStruct* %156
}

; Function Attrs: nounwind
declare dso_local double @cos(double) #1

; Function Attrs: nounwind
declare dso_local double @sin(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ObjectStruct*, align 8
  %8 = alloca %struct.ObjectStruct*, align 8
  %9 = alloca %struct.ObjectStruct*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.ObjectStruct* null, %struct.ObjectStruct** %7, align 8
  store %struct.ObjectStruct* null, %struct.ObjectStruct** %8, align 8
  store %struct.ObjectStruct* null, %struct.ObjectStruct** %9, align 8
  %10 = call %struct.ObjectStruct* @Oalloc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store %struct.ObjectStruct* %10, %struct.ObjectStruct** %7, align 8
  %11 = call %struct.ObjectStruct* @Oalloc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store %struct.ObjectStruct* %11, %struct.ObjectStruct** %8, align 8
  %12 = load %struct.ObjectStruct*, %struct.ObjectStruct** %8, align 8
  %13 = call %struct.ObjectStruct* @MakeSphere(%struct.ObjectStruct* %12, i32 25, i32 25, double 1.000000e+01)
  store %struct.ObjectStruct* %13, %struct.ObjectStruct** %8, align 8
  %14 = load %struct.ObjectStruct*, %struct.ObjectStruct** %8, align 8
  %15 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %14, i32 0, i32 9
  %16 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %15, i32 0, i32 0
  store double 8.700000e+01, double* %16, align 8
  %17 = load %struct.ObjectStruct*, %struct.ObjectStruct** %8, align 8
  %18 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %17, i32 0, i32 9
  %19 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %18, i32 0, i32 1
  store double 8.700000e+01, double* %19, align 8
  %20 = load %struct.ObjectStruct*, %struct.ObjectStruct** %7, align 8
  %21 = load %struct.ObjectStruct*, %struct.ObjectStruct** %8, align 8
  call void @InsertChild(%struct.ObjectStruct* %20, %struct.ObjectStruct* %21)
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %32, %2
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 360
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = sitofp i32 %26 to double
  %28 = load %struct.ObjectStruct*, %struct.ObjectStruct** %7, align 8
  %29 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %28, i32 0, i32 10
  %30 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %29, i32 0, i32 1
  store double %27, double* %30, align 8
  %31 = load %struct.ObjectStruct*, %struct.ObjectStruct** %7, align 8
  call void @CalcObject(%struct.ObjectStruct* %31)
  br label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %22

35:                                               ; preds = %22
  %36 = load %struct.ObjectStruct*, %struct.ObjectStruct** %8, align 8
  call void @PrintObject(%struct.ObjectStruct* %36)
  %37 = load %struct.ObjectStruct*, %struct.ObjectStruct** %9, align 8
  store %struct.ObjectStruct* %37, %struct.ObjectStruct** %7, align 8
  %38 = load %struct.ObjectStruct*, %struct.ObjectStruct** %7, align 8
  call void @Draw_All(%struct.ObjectStruct* %38)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.ObjectStruct* @Oalloc(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ObjectStruct*, align 8
  store i8* %0, i8** %2, align 8
  store %struct.ObjectStruct* null, %struct.ObjectStruct** %3, align 8
  %4 = call noalias i8* @calloc(i64 272, i64 1) #5
  %5 = bitcast i8* %4 to %struct.ObjectStruct*
  store %struct.ObjectStruct* %5, %struct.ObjectStruct** %3, align 8
  %6 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  %7 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %6, i32 0, i32 0
  %8 = getelementptr inbounds [57 x i8], [57 x i8]* %7, i64 0, i64 0
  %9 = load i8*, i8** %2, align 8
  %10 = call i8* @strcpy(i8* %8, i8* %9) #5
  %11 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  %12 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %11, i32 0, i32 6
  %13 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %12, i32 0, i32 0
  store double 1.000000e+00, double* %13, align 8
  %14 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  %15 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %14, i32 0, i32 6
  %16 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %15, i32 0, i32 1
  store double 1.000000e+00, double* %16, align 8
  %17 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  %18 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %17, i32 0, i32 6
  %19 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %18, i32 0, i32 2
  store double 1.000000e+00, double* %19, align 8
  %20 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  %21 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %20, i32 0, i32 7
  store i32 0, i32* %21, align 8
  %22 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  %23 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %22, i32 0, i32 8
  store i32 0, i32* %23, align 4
  %24 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  %25 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %24, i32 0, i32 14
  store i32 0, i32* %25, align 8
  %26 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  %27 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %26, i32 0, i32 15
  store i32 0, i32* %27, align 4
  %28 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  %29 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %28, i32 0, i32 16
  store i32 0, i32* %29, align 8
  %30 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  %31 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %30, i32 0, i32 17
  store i32 0, i32* %31, align 4
  %32 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  %33 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %32, i32 0, i32 18
  store i32 0, i32* %33, align 8
  %34 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  %35 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %34, i32 0, i32 19
  store i32 0, i32* %35, align 4
  %36 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  %37 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %36, i32 0, i32 20
  store i32 0, i32* %37, align 8
  %38 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  %39 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %38, i32 0, i32 12
  store %struct.ObjectStruct* null, %struct.ObjectStruct** %39, align 8
  %40 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  %41 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %40, i32 0, i32 13
  store %struct.ObjectStruct* null, %struct.ObjectStruct** %41, align 8
  %42 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  %43 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %42, i32 0, i32 10
  %44 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %43, i32 0, i32 0
  store double 0.000000e+00, double* %44, align 8
  %45 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  %46 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %45, i32 0, i32 10
  %47 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %46, i32 0, i32 1
  store double 0.000000e+00, double* %47, align 8
  %48 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  %49 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %48, i32 0, i32 10
  %50 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %49, i32 0, i32 2
  store double 0.000000e+00, double* %50, align 8
  %51 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  %52 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %51, i32 0, i32 11
  %53 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %52, i32 0, i32 0
  store double 1.000000e+00, double* %53, align 8
  %54 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  %55 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %54, i32 0, i32 11
  %56 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %55, i32 0, i32 1
  store double 1.000000e+00, double* %56, align 8
  %57 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  %58 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %57, i32 0, i32 11
  %59 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %58, i32 0, i32 2
  store double 1.000000e+00, double* %59, align 8
  %60 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  %61 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %60, i32 0, i32 9
  %62 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %61, i32 0, i32 0
  store double 0.000000e+00, double* %62, align 8
  %63 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  %64 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %63, i32 0, i32 9
  %65 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %64, i32 0, i32 1
  store double 0.000000e+00, double* %65, align 8
  %66 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  %67 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %66, i32 0, i32 9
  %68 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %67, i32 0, i32 2
  store double 0.000000e+00, double* %68, align 8
  %69 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  ret %struct.ObjectStruct* %69
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.ObjPointStruct* @InsertPoint(%struct.ObjectStruct* %0, double %1, double %2, double %3) #0 {
  %5 = alloca %struct.ObjectStruct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.PointListStruct*, align 8
  %10 = alloca %struct.PointListStruct*, align 8
  %11 = alloca %struct.ObjPointStruct*, align 8
  store %struct.ObjectStruct* %0, %struct.ObjectStruct** %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  store %struct.PointListStruct* null, %struct.PointListStruct** %10, align 8
  store %struct.ObjPointStruct* null, %struct.ObjPointStruct** %11, align 8
  %12 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %13 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %12, i32 0, i32 15
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %86

16:                                               ; preds = %4
  %17 = call noalias i8* @malloc(i64 24) #5
  %18 = bitcast i8* %17 to %struct.PointListStruct*
  %19 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %20 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %19, i32 0, i32 1
  store %struct.PointListStruct* %18, %struct.PointListStruct** %20, align 8
  %21 = call noalias i8* @malloc(i64 48) #5
  %22 = bitcast i8* %21 to %struct.ObjPointStruct*
  %23 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %24 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %23, i32 0, i32 1
  %25 = load %struct.PointListStruct*, %struct.PointListStruct** %24, align 8
  %26 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %25, i32 0, i32 0
  store %struct.ObjPointStruct* %22, %struct.ObjPointStruct** %26, align 8
  %27 = load double, double* %6, align 8
  %28 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %29 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %28, i32 0, i32 1
  %30 = load %struct.PointListStruct*, %struct.PointListStruct** %29, align 8
  %31 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %30, i32 0, i32 0
  %32 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %31, align 8
  %33 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %32, i32 0, i32 0
  store double %27, double* %33, align 8
  %34 = load double, double* %7, align 8
  %35 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %36 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %35, i32 0, i32 1
  %37 = load %struct.PointListStruct*, %struct.PointListStruct** %36, align 8
  %38 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %37, i32 0, i32 0
  %39 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %38, align 8
  %40 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %39, i32 0, i32 1
  store double %34, double* %40, align 8
  %41 = load double, double* %8, align 8
  %42 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %43 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %42, i32 0, i32 1
  %44 = load %struct.PointListStruct*, %struct.PointListStruct** %43, align 8
  %45 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %44, i32 0, i32 0
  %46 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %45, align 8
  %47 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %46, i32 0, i32 2
  store double %41, double* %47, align 8
  %48 = load double, double* %6, align 8
  %49 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %50 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %49, i32 0, i32 1
  %51 = load %struct.PointListStruct*, %struct.PointListStruct** %50, align 8
  %52 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %51, i32 0, i32 0
  %53 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %52, align 8
  %54 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %53, i32 0, i32 3
  store double %48, double* %54, align 8
  %55 = load double, double* %7, align 8
  %56 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %57 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %56, i32 0, i32 1
  %58 = load %struct.PointListStruct*, %struct.PointListStruct** %57, align 8
  %59 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %58, i32 0, i32 0
  %60 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %59, align 8
  %61 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %60, i32 0, i32 4
  store double %55, double* %61, align 8
  %62 = load double, double* %8, align 8
  %63 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %64 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %63, i32 0, i32 1
  %65 = load %struct.PointListStruct*, %struct.PointListStruct** %64, align 8
  %66 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %65, i32 0, i32 0
  %67 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %66, align 8
  %68 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %67, i32 0, i32 5
  store double %62, double* %68, align 8
  %69 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %70 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %69, i32 0, i32 1
  %71 = load %struct.PointListStruct*, %struct.PointListStruct** %70, align 8
  %72 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %71, i32 0, i32 1
  store %struct.PointListStruct* null, %struct.PointListStruct** %72, align 8
  %73 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %74 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %73, i32 0, i32 1
  %75 = load %struct.PointListStruct*, %struct.PointListStruct** %74, align 8
  %76 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %75, i32 0, i32 2
  store %struct.PointListStruct* null, %struct.PointListStruct** %76, align 8
  %77 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %78 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %77, i32 0, i32 1
  %79 = load %struct.PointListStruct*, %struct.PointListStruct** %78, align 8
  %80 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %79, i32 0, i32 0
  %81 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %80, align 8
  store %struct.ObjPointStruct* %81, %struct.ObjPointStruct** %11, align 8
  %82 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %83 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %82, i32 0, i32 15
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  br label %194

86:                                               ; preds = %4
  %87 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %88 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %87, i32 0, i32 1
  %89 = load %struct.PointListStruct*, %struct.PointListStruct** %88, align 8
  store %struct.PointListStruct* %89, %struct.PointListStruct** %9, align 8
  br label %90

90:                                               ; preds = %134, %86
  %91 = load %struct.PointListStruct*, %struct.PointListStruct** %9, align 8
  %92 = icmp ne %struct.PointListStruct* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %11, align 8
  %95 = icmp eq %struct.ObjPointStruct* %94, null
  br label %96

96:                                               ; preds = %93, %90
  %97 = phi i1 [ false, %90 ], [ %95, %93 ]
  br i1 %97, label %98, label %135

98:                                               ; preds = %96
  %99 = load %struct.PointListStruct*, %struct.PointListStruct** %9, align 8
  %100 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %99, i32 0, i32 0
  %101 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %100, align 8
  %102 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %101, i32 0, i32 0
  %103 = load double, double* %102, align 8
  %104 = load double, double* %6, align 8
  %105 = call i32 @FPEqual(double %103, double %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %129

107:                                              ; preds = %98
  %108 = load %struct.PointListStruct*, %struct.PointListStruct** %9, align 8
  %109 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %108, i32 0, i32 0
  %110 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %109, align 8
  %111 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %110, i32 0, i32 1
  %112 = load double, double* %111, align 8
  %113 = load double, double* %7, align 8
  %114 = call i32 @FPEqual(double %112, double %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %107
  %117 = load %struct.PointListStruct*, %struct.PointListStruct** %9, align 8
  %118 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %117, i32 0, i32 0
  %119 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %118, align 8
  %120 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %119, i32 0, i32 2
  %121 = load double, double* %120, align 8
  %122 = load double, double* %8, align 8
  %123 = call i32 @FPEqual(double %121, double %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %116
  %126 = load %struct.PointListStruct*, %struct.PointListStruct** %9, align 8
  %127 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %126, i32 0, i32 0
  %128 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %127, align 8
  store %struct.ObjPointStruct* %128, %struct.ObjPointStruct** %11, align 8
  br label %134

129:                                              ; preds = %116, %107, %98
  %130 = load %struct.PointListStruct*, %struct.PointListStruct** %9, align 8
  store %struct.PointListStruct* %130, %struct.PointListStruct** %10, align 8
  %131 = load %struct.PointListStruct*, %struct.PointListStruct** %9, align 8
  %132 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %131, i32 0, i32 1
  %133 = load %struct.PointListStruct*, %struct.PointListStruct** %132, align 8
  store %struct.PointListStruct* %133, %struct.PointListStruct** %9, align 8
  br label %134

134:                                              ; preds = %129, %125
  br label %90

135:                                              ; preds = %96
  %136 = load %struct.PointListStruct*, %struct.PointListStruct** %9, align 8
  %137 = icmp eq %struct.PointListStruct* %136, null
  br i1 %137, label %138, label %193

138:                                              ; preds = %135
  %139 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %11, align 8
  %140 = icmp eq %struct.ObjPointStruct* %139, null
  br i1 %140, label %141, label %193

141:                                              ; preds = %138
  %142 = call noalias i8* @malloc(i64 24) #5
  %143 = bitcast i8* %142 to %struct.PointListStruct*
  store %struct.PointListStruct* %143, %struct.PointListStruct** %9, align 8
  %144 = load %struct.PointListStruct*, %struct.PointListStruct** %9, align 8
  %145 = load %struct.PointListStruct*, %struct.PointListStruct** %10, align 8
  %146 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %145, i32 0, i32 1
  store %struct.PointListStruct* %144, %struct.PointListStruct** %146, align 8
  %147 = call noalias i8* @malloc(i64 48) #5
  %148 = bitcast i8* %147 to %struct.ObjPointStruct*
  %149 = load %struct.PointListStruct*, %struct.PointListStruct** %9, align 8
  %150 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %149, i32 0, i32 0
  store %struct.ObjPointStruct* %148, %struct.ObjPointStruct** %150, align 8
  %151 = load double, double* %6, align 8
  %152 = load %struct.PointListStruct*, %struct.PointListStruct** %9, align 8
  %153 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %152, i32 0, i32 0
  %154 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %153, align 8
  %155 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %154, i32 0, i32 0
  store double %151, double* %155, align 8
  %156 = load double, double* %7, align 8
  %157 = load %struct.PointListStruct*, %struct.PointListStruct** %9, align 8
  %158 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %157, i32 0, i32 0
  %159 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %158, align 8
  %160 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %159, i32 0, i32 1
  store double %156, double* %160, align 8
  %161 = load double, double* %8, align 8
  %162 = load %struct.PointListStruct*, %struct.PointListStruct** %9, align 8
  %163 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %162, i32 0, i32 0
  %164 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %163, align 8
  %165 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %164, i32 0, i32 2
  store double %161, double* %165, align 8
  %166 = load double, double* %6, align 8
  %167 = load %struct.PointListStruct*, %struct.PointListStruct** %9, align 8
  %168 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %167, i32 0, i32 0
  %169 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %168, align 8
  %170 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %169, i32 0, i32 3
  store double %166, double* %170, align 8
  %171 = load double, double* %7, align 8
  %172 = load %struct.PointListStruct*, %struct.PointListStruct** %9, align 8
  %173 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %172, i32 0, i32 0
  %174 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %173, align 8
  %175 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %174, i32 0, i32 4
  store double %171, double* %175, align 8
  %176 = load double, double* %8, align 8
  %177 = load %struct.PointListStruct*, %struct.PointListStruct** %9, align 8
  %178 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %177, i32 0, i32 0
  %179 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %178, align 8
  %180 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %179, i32 0, i32 5
  store double %176, double* %180, align 8
  %181 = load %struct.PointListStruct*, %struct.PointListStruct** %10, align 8
  %182 = load %struct.PointListStruct*, %struct.PointListStruct** %9, align 8
  %183 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %182, i32 0, i32 2
  store %struct.PointListStruct* %181, %struct.PointListStruct** %183, align 8
  %184 = load %struct.PointListStruct*, %struct.PointListStruct** %9, align 8
  %185 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %184, i32 0, i32 1
  store %struct.PointListStruct* null, %struct.PointListStruct** %185, align 8
  %186 = load %struct.PointListStruct*, %struct.PointListStruct** %9, align 8
  %187 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %186, i32 0, i32 0
  %188 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %187, align 8
  store %struct.ObjPointStruct* %188, %struct.ObjPointStruct** %11, align 8
  %189 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %190 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %189, i32 0, i32 15
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 4
  br label %193

193:                                              ; preds = %141, %138, %135
  br label %194

194:                                              ; preds = %193, %16
  %195 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %11, align 8
  ret %struct.ObjPointStruct* %195
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @FPEqual(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %5 = load double, double* %3, align 8
  %6 = load double, double* %4, align 8
  %7 = fsub double %5, %6
  %8 = call double @llvm.fabs.f64(double %7)
  %9 = fpext double %8 to x86_fp80
  %10 = fcmp olt x86_fp80 %9, 0xK3FEB8637BD05AF6C69B6
  %11 = zext i1 %10 to i32
  ret i32 %11
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @InsertPoly3(%struct.ObjectStruct* %0, %struct.PointStruct* %1, %struct.Texture* %2, %struct.Material* %3) #0 {
  %5 = alloca %struct.ObjectStruct*, align 8
  %6 = alloca %struct.PointStruct*, align 8
  %7 = alloca %struct.Texture*, align 8
  %8 = alloca %struct.Material*, align 8
  %9 = alloca %struct.Poly3Struct*, align 8
  %10 = alloca i32, align 4
  store %struct.ObjectStruct* %0, %struct.ObjectStruct** %5, align 8
  store %struct.PointStruct* %1, %struct.PointStruct** %6, align 8
  store %struct.Texture* %2, %struct.Texture** %7, align 8
  store %struct.Material* %3, %struct.Material** %8, align 8
  store %struct.Poly3Struct* null, %struct.Poly3Struct** %9, align 8
  %11 = call noalias i8* @malloc(i64 56) #5
  %12 = bitcast i8* %11 to %struct.Poly3Struct*
  store %struct.Poly3Struct* %12, %struct.Poly3Struct** %9, align 8
  %13 = load %struct.Poly3Struct*, %struct.Poly3Struct** %9, align 8
  %14 = getelementptr inbounds %struct.Poly3Struct, %struct.Poly3Struct* %13, i32 0, i32 3
  store %struct.Poly3Struct* null, %struct.Poly3Struct** %14, align 8
  %15 = load %struct.Poly3Struct*, %struct.Poly3Struct** %9, align 8
  %16 = getelementptr inbounds %struct.Poly3Struct, %struct.Poly3Struct* %15, i32 0, i32 4
  store %struct.Poly3Struct* null, %struct.Poly3Struct** %16, align 8
  %17 = load %struct.Poly3Struct*, %struct.Poly3Struct** %9, align 8
  %18 = getelementptr inbounds %struct.Poly3Struct, %struct.Poly3Struct* %17, i32 0, i32 1
  store %struct.Material* null, %struct.Material** %18, align 8
  %19 = load %struct.Poly3Struct*, %struct.Poly3Struct** %9, align 8
  %20 = getelementptr inbounds %struct.Poly3Struct, %struct.Poly3Struct* %19, i32 0, i32 2
  store %struct.Texture* null, %struct.Texture** %20, align 8
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %50, %4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 3
  br i1 %23, label %24, label %53

24:                                               ; preds = %21
  %25 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %26 = load %struct.PointStruct*, %struct.PointStruct** %6, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %26, i64 %28
  %30 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %29, i32 0, i32 0
  %31 = load double, double* %30, align 8
  %32 = load %struct.PointStruct*, %struct.PointStruct** %6, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %32, i64 %34
  %36 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %35, i32 0, i32 1
  %37 = load double, double* %36, align 8
  %38 = load %struct.PointStruct*, %struct.PointStruct** %6, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %38, i64 %40
  %42 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %41, i32 0, i32 2
  %43 = load double, double* %42, align 8
  %44 = call %struct.ObjPointStruct* @InsertPoint(%struct.ObjectStruct* %25, double %31, double %37, double %43)
  %45 = load %struct.Poly3Struct*, %struct.Poly3Struct** %9, align 8
  %46 = getelementptr inbounds %struct.Poly3Struct, %struct.Poly3Struct* %45, i32 0, i32 0
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [3 x %struct.ObjPointStruct*], [3 x %struct.ObjPointStruct*]* %46, i64 0, i64 %48
  store %struct.ObjPointStruct* %44, %struct.ObjPointStruct** %49, align 8
  br label %50

50:                                               ; preds = %24
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %21

53:                                               ; preds = %21
  %54 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %55 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %54, i32 0, i32 2
  %56 = load %struct.Poly3Struct*, %struct.Poly3Struct** %55, align 8
  %57 = icmp eq %struct.Poly3Struct* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.Poly3Struct*, %struct.Poly3Struct** %9, align 8
  %60 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %61 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %60, i32 0, i32 2
  store %struct.Poly3Struct* %59, %struct.Poly3Struct** %61, align 8
  br label %76

62:                                               ; preds = %53
  %63 = load %struct.Poly3Struct*, %struct.Poly3Struct** %9, align 8
  %64 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %65 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %64, i32 0, i32 2
  %66 = load %struct.Poly3Struct*, %struct.Poly3Struct** %65, align 8
  %67 = getelementptr inbounds %struct.Poly3Struct, %struct.Poly3Struct* %66, i32 0, i32 4
  store %struct.Poly3Struct* %63, %struct.Poly3Struct** %67, align 8
  %68 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %69 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %68, i32 0, i32 2
  %70 = load %struct.Poly3Struct*, %struct.Poly3Struct** %69, align 8
  %71 = load %struct.Poly3Struct*, %struct.Poly3Struct** %9, align 8
  %72 = getelementptr inbounds %struct.Poly3Struct, %struct.Poly3Struct* %71, i32 0, i32 3
  store %struct.Poly3Struct* %70, %struct.Poly3Struct** %72, align 8
  %73 = load %struct.Poly3Struct*, %struct.Poly3Struct** %9, align 8
  %74 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %75 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %74, i32 0, i32 2
  store %struct.Poly3Struct* %73, %struct.Poly3Struct** %75, align 8
  br label %76

76:                                               ; preds = %62, %58
  %77 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %78 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %77, i32 0, i32 16
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @InsertPoly4(%struct.ObjectStruct* %0, %struct.PointStruct* %1, %struct.Texture* %2, %struct.Material* %3) #0 {
  %5 = alloca %struct.ObjectStruct*, align 8
  %6 = alloca %struct.PointStruct*, align 8
  %7 = alloca %struct.Texture*, align 8
  %8 = alloca %struct.Material*, align 8
  %9 = alloca %struct.Poly4Struct*, align 8
  %10 = alloca i32, align 4
  store %struct.ObjectStruct* %0, %struct.ObjectStruct** %5, align 8
  store %struct.PointStruct* %1, %struct.PointStruct** %6, align 8
  store %struct.Texture* %2, %struct.Texture** %7, align 8
  store %struct.Material* %3, %struct.Material** %8, align 8
  store %struct.Poly4Struct* null, %struct.Poly4Struct** %9, align 8
  %11 = call noalias i8* @malloc(i64 64) #5
  %12 = bitcast i8* %11 to %struct.Poly4Struct*
  store %struct.Poly4Struct* %12, %struct.Poly4Struct** %9, align 8
  %13 = load %struct.Poly4Struct*, %struct.Poly4Struct** %9, align 8
  %14 = getelementptr inbounds %struct.Poly4Struct, %struct.Poly4Struct* %13, i32 0, i32 3
  store %struct.Poly4Struct* null, %struct.Poly4Struct** %14, align 8
  %15 = load %struct.Poly4Struct*, %struct.Poly4Struct** %9, align 8
  %16 = getelementptr inbounds %struct.Poly4Struct, %struct.Poly4Struct* %15, i32 0, i32 4
  store %struct.Poly4Struct* null, %struct.Poly4Struct** %16, align 8
  %17 = load %struct.Poly4Struct*, %struct.Poly4Struct** %9, align 8
  %18 = getelementptr inbounds %struct.Poly4Struct, %struct.Poly4Struct* %17, i32 0, i32 1
  store %struct.Material* null, %struct.Material** %18, align 8
  %19 = load %struct.Poly4Struct*, %struct.Poly4Struct** %9, align 8
  %20 = getelementptr inbounds %struct.Poly4Struct, %struct.Poly4Struct* %19, i32 0, i32 2
  store %struct.Texture* null, %struct.Texture** %20, align 8
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %50, %4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 4
  br i1 %23, label %24, label %53

24:                                               ; preds = %21
  %25 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %26 = load %struct.PointStruct*, %struct.PointStruct** %6, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %26, i64 %28
  %30 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %29, i32 0, i32 0
  %31 = load double, double* %30, align 8
  %32 = load %struct.PointStruct*, %struct.PointStruct** %6, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %32, i64 %34
  %36 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %35, i32 0, i32 1
  %37 = load double, double* %36, align 8
  %38 = load %struct.PointStruct*, %struct.PointStruct** %6, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %38, i64 %40
  %42 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %41, i32 0, i32 2
  %43 = load double, double* %42, align 8
  %44 = call %struct.ObjPointStruct* @InsertPoint(%struct.ObjectStruct* %25, double %31, double %37, double %43)
  %45 = load %struct.Poly4Struct*, %struct.Poly4Struct** %9, align 8
  %46 = getelementptr inbounds %struct.Poly4Struct, %struct.Poly4Struct* %45, i32 0, i32 0
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [4 x %struct.ObjPointStruct*], [4 x %struct.ObjPointStruct*]* %46, i64 0, i64 %48
  store %struct.ObjPointStruct* %44, %struct.ObjPointStruct** %49, align 8
  br label %50

50:                                               ; preds = %24
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %21

53:                                               ; preds = %21
  %54 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %55 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %54, i32 0, i32 3
  %56 = load %struct.Poly4Struct*, %struct.Poly4Struct** %55, align 8
  %57 = icmp eq %struct.Poly4Struct* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.Poly4Struct*, %struct.Poly4Struct** %9, align 8
  %60 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %61 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %60, i32 0, i32 3
  store %struct.Poly4Struct* %59, %struct.Poly4Struct** %61, align 8
  br label %76

62:                                               ; preds = %53
  %63 = load %struct.Poly4Struct*, %struct.Poly4Struct** %9, align 8
  %64 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %65 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %64, i32 0, i32 3
  %66 = load %struct.Poly4Struct*, %struct.Poly4Struct** %65, align 8
  %67 = getelementptr inbounds %struct.Poly4Struct, %struct.Poly4Struct* %66, i32 0, i32 4
  store %struct.Poly4Struct* %63, %struct.Poly4Struct** %67, align 8
  %68 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %69 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %68, i32 0, i32 3
  %70 = load %struct.Poly4Struct*, %struct.Poly4Struct** %69, align 8
  %71 = load %struct.Poly4Struct*, %struct.Poly4Struct** %9, align 8
  %72 = getelementptr inbounds %struct.Poly4Struct, %struct.Poly4Struct* %71, i32 0, i32 3
  store %struct.Poly4Struct* %70, %struct.Poly4Struct** %72, align 8
  %73 = load %struct.Poly4Struct*, %struct.Poly4Struct** %9, align 8
  %74 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %75 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %74, i32 0, i32 3
  store %struct.Poly4Struct* %73, %struct.Poly4Struct** %75, align 8
  br label %76

76:                                               ; preds = %62, %58
  %77 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %78 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %77, i32 0, i32 17
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.ObjectStruct* @ArrayToPoly3(%struct.ObjectStruct* %0, [3 x double]* %1, i32 %2) #0 {
  %4 = alloca %struct.ObjectStruct*, align 8
  %5 = alloca [3 x double]*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [3 x %struct.PointStruct], align 16
  %8 = alloca i32, align 4
  store %struct.ObjectStruct* %0, %struct.ObjectStruct** %4, align 8
  store [3 x double]* %1, [3 x double]** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %94, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %97

13:                                               ; preds = %9
  %14 = load [3 x double]*, [3 x double]** %5, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 %16
  %18 = getelementptr inbounds [3 x double], [3 x double]* %17, i64 0, i64 0
  %19 = load double, double* %18, align 8
  %20 = getelementptr inbounds [3 x %struct.PointStruct], [3 x %struct.PointStruct]* %7, i64 0, i64 0
  %21 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %20, i32 0, i32 0
  store double %19, double* %21, align 16
  %22 = load [3 x double]*, [3 x double]** %5, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 %24
  %26 = getelementptr inbounds [3 x double], [3 x double]* %25, i64 0, i64 1
  %27 = load double, double* %26, align 8
  %28 = getelementptr inbounds [3 x %struct.PointStruct], [3 x %struct.PointStruct]* %7, i64 0, i64 0
  %29 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %28, i32 0, i32 1
  store double %27, double* %29, align 8
  %30 = load [3 x double]*, [3 x double]** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 %32
  %34 = getelementptr inbounds [3 x double], [3 x double]* %33, i64 0, i64 2
  %35 = load double, double* %34, align 8
  %36 = getelementptr inbounds [3 x %struct.PointStruct], [3 x %struct.PointStruct]* %7, i64 0, i64 0
  %37 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %36, i32 0, i32 2
  store double %35, double* %37, align 16
  %38 = load [3 x double]*, [3 x double]** %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [3 x double], [3 x double]* %38, i64 %41
  %43 = getelementptr inbounds [3 x double], [3 x double]* %42, i64 0, i64 0
  %44 = load double, double* %43, align 8
  %45 = getelementptr inbounds [3 x %struct.PointStruct], [3 x %struct.PointStruct]* %7, i64 0, i64 1
  %46 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %45, i32 0, i32 0
  store double %44, double* %46, align 8
  %47 = load [3 x double]*, [3 x double]** %5, align 8
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [3 x double], [3 x double]* %47, i64 %50
  %52 = getelementptr inbounds [3 x double], [3 x double]* %51, i64 0, i64 1
  %53 = load double, double* %52, align 8
  %54 = getelementptr inbounds [3 x %struct.PointStruct], [3 x %struct.PointStruct]* %7, i64 0, i64 1
  %55 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %54, i32 0, i32 1
  store double %53, double* %55, align 8
  %56 = load [3 x double]*, [3 x double]** %5, align 8
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [3 x double], [3 x double]* %56, i64 %59
  %61 = getelementptr inbounds [3 x double], [3 x double]* %60, i64 0, i64 2
  %62 = load double, double* %61, align 8
  %63 = getelementptr inbounds [3 x %struct.PointStruct], [3 x %struct.PointStruct]* %7, i64 0, i64 1
  %64 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %63, i32 0, i32 2
  store double %62, double* %64, align 8
  %65 = load [3 x double]*, [3 x double]** %5, align 8
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 2
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [3 x double], [3 x double]* %65, i64 %68
  %70 = getelementptr inbounds [3 x double], [3 x double]* %69, i64 0, i64 0
  %71 = load double, double* %70, align 8
  %72 = getelementptr inbounds [3 x %struct.PointStruct], [3 x %struct.PointStruct]* %7, i64 0, i64 2
  %73 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %72, i32 0, i32 0
  store double %71, double* %73, align 16
  %74 = load [3 x double]*, [3 x double]** %5, align 8
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 2
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [3 x double], [3 x double]* %74, i64 %77
  %79 = getelementptr inbounds [3 x double], [3 x double]* %78, i64 0, i64 1
  %80 = load double, double* %79, align 8
  %81 = getelementptr inbounds [3 x %struct.PointStruct], [3 x %struct.PointStruct]* %7, i64 0, i64 2
  %82 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %81, i32 0, i32 1
  store double %80, double* %82, align 8
  %83 = load [3 x double]*, [3 x double]** %5, align 8
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 2
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [3 x double], [3 x double]* %83, i64 %86
  %88 = getelementptr inbounds [3 x double], [3 x double]* %87, i64 0, i64 2
  %89 = load double, double* %88, align 8
  %90 = getelementptr inbounds [3 x %struct.PointStruct], [3 x %struct.PointStruct]* %7, i64 0, i64 2
  %91 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %90, i32 0, i32 2
  store double %89, double* %91, align 16
  %92 = load %struct.ObjectStruct*, %struct.ObjectStruct** %4, align 8
  %93 = getelementptr inbounds [3 x %struct.PointStruct], [3 x %struct.PointStruct]* %7, i64 0, i64 0
  call void @InsertPoly3(%struct.ObjectStruct* %92, %struct.PointStruct* %93, %struct.Texture* null, %struct.Material* null)
  br label %94

94:                                               ; preds = %13
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 3
  store i32 %96, i32* %8, align 4
  br label %9

97:                                               ; preds = %9
  %98 = load %struct.ObjectStruct*, %struct.ObjectStruct** %4, align 8
  ret %struct.ObjectStruct* %98
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.ObjectStruct* @ArrayToPoly4(%struct.ObjectStruct* %0, [3 x double]* %1, i32 %2) #0 {
  %4 = alloca %struct.ObjectStruct*, align 8
  %5 = alloca [3 x double]*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x %struct.PointStruct], align 16
  %8 = alloca i32, align 4
  store %struct.ObjectStruct* %0, %struct.ObjectStruct** %4, align 8
  store [3 x double]* %1, [3 x double]** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %121, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %124

13:                                               ; preds = %9
  %14 = load [3 x double]*, [3 x double]** %5, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 %16
  %18 = getelementptr inbounds [3 x double], [3 x double]* %17, i64 0, i64 0
  %19 = load double, double* %18, align 8
  %20 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %7, i64 0, i64 0
  %21 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %20, i32 0, i32 0
  store double %19, double* %21, align 16
  %22 = load [3 x double]*, [3 x double]** %5, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 %24
  %26 = getelementptr inbounds [3 x double], [3 x double]* %25, i64 0, i64 1
  %27 = load double, double* %26, align 8
  %28 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %7, i64 0, i64 0
  %29 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %28, i32 0, i32 1
  store double %27, double* %29, align 8
  %30 = load [3 x double]*, [3 x double]** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 %32
  %34 = getelementptr inbounds [3 x double], [3 x double]* %33, i64 0, i64 2
  %35 = load double, double* %34, align 8
  %36 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %7, i64 0, i64 0
  %37 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %36, i32 0, i32 2
  store double %35, double* %37, align 16
  %38 = load [3 x double]*, [3 x double]** %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [3 x double], [3 x double]* %38, i64 %41
  %43 = getelementptr inbounds [3 x double], [3 x double]* %42, i64 0, i64 0
  %44 = load double, double* %43, align 8
  %45 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %7, i64 0, i64 1
  %46 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %45, i32 0, i32 0
  store double %44, double* %46, align 8
  %47 = load [3 x double]*, [3 x double]** %5, align 8
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [3 x double], [3 x double]* %47, i64 %50
  %52 = getelementptr inbounds [3 x double], [3 x double]* %51, i64 0, i64 1
  %53 = load double, double* %52, align 8
  %54 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %7, i64 0, i64 1
  %55 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %54, i32 0, i32 1
  store double %53, double* %55, align 8
  %56 = load [3 x double]*, [3 x double]** %5, align 8
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [3 x double], [3 x double]* %56, i64 %59
  %61 = getelementptr inbounds [3 x double], [3 x double]* %60, i64 0, i64 2
  %62 = load double, double* %61, align 8
  %63 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %7, i64 0, i64 1
  %64 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %63, i32 0, i32 2
  store double %62, double* %64, align 8
  %65 = load [3 x double]*, [3 x double]** %5, align 8
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 2
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [3 x double], [3 x double]* %65, i64 %68
  %70 = getelementptr inbounds [3 x double], [3 x double]* %69, i64 0, i64 0
  %71 = load double, double* %70, align 8
  %72 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %7, i64 0, i64 2
  %73 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %72, i32 0, i32 0
  store double %71, double* %73, align 16
  %74 = load [3 x double]*, [3 x double]** %5, align 8
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 2
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [3 x double], [3 x double]* %74, i64 %77
  %79 = getelementptr inbounds [3 x double], [3 x double]* %78, i64 0, i64 1
  %80 = load double, double* %79, align 8
  %81 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %7, i64 0, i64 2
  %82 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %81, i32 0, i32 1
  store double %80, double* %82, align 8
  %83 = load [3 x double]*, [3 x double]** %5, align 8
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 2
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [3 x double], [3 x double]* %83, i64 %86
  %88 = getelementptr inbounds [3 x double], [3 x double]* %87, i64 0, i64 2
  %89 = load double, double* %88, align 8
  %90 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %7, i64 0, i64 2
  %91 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %90, i32 0, i32 2
  store double %89, double* %91, align 16
  %92 = load [3 x double]*, [3 x double]** %5, align 8
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 3
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [3 x double], [3 x double]* %92, i64 %95
  %97 = getelementptr inbounds [3 x double], [3 x double]* %96, i64 0, i64 0
  %98 = load double, double* %97, align 8
  %99 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %7, i64 0, i64 3
  %100 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %99, i32 0, i32 0
  store double %98, double* %100, align 8
  %101 = load [3 x double]*, [3 x double]** %5, align 8
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 3
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [3 x double], [3 x double]* %101, i64 %104
  %106 = getelementptr inbounds [3 x double], [3 x double]* %105, i64 0, i64 1
  %107 = load double, double* %106, align 8
  %108 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %7, i64 0, i64 3
  %109 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %108, i32 0, i32 1
  store double %107, double* %109, align 8
  %110 = load [3 x double]*, [3 x double]** %5, align 8
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 3
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [3 x double], [3 x double]* %110, i64 %113
  %115 = getelementptr inbounds [3 x double], [3 x double]* %114, i64 0, i64 2
  %116 = load double, double* %115, align 8
  %117 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %7, i64 0, i64 3
  %118 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %117, i32 0, i32 2
  store double %116, double* %118, align 8
  %119 = load %struct.ObjectStruct*, %struct.ObjectStruct** %4, align 8
  %120 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %7, i64 0, i64 0
  call void @InsertPoly4(%struct.ObjectStruct* %119, %struct.PointStruct* %120, %struct.Texture* null, %struct.Material* null)
  br label %121

121:                                              ; preds = %13
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, 4
  store i32 %123, i32* %8, align 4
  br label %9

124:                                              ; preds = %9
  %125 = load %struct.ObjectStruct*, %struct.ObjectStruct** %4, align 8
  ret %struct.ObjectStruct* %125
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @PrintPoints(%struct.ObjectStruct* %0) #0 {
  %2 = alloca %struct.ObjectStruct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.PointListStruct*, align 8
  store %struct.ObjectStruct* %0, %struct.ObjectStruct** %2, align 8
  store i32 0, i32* %3, align 4
  store %struct.PointListStruct* null, %struct.PointListStruct** %4, align 8
  %5 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %6 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %5, i32 0, i32 1
  %7 = load %struct.PointListStruct*, %struct.PointListStruct** %6, align 8
  %8 = icmp ne %struct.PointListStruct* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %11 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %10, i32 0, i32 1
  %12 = load %struct.PointListStruct*, %struct.PointListStruct** %11, align 8
  store %struct.PointListStruct* %12, %struct.PointListStruct** %4, align 8
  br label %13

13:                                               ; preds = %9, %1
  br label %14

14:                                               ; preds = %17, %13
  %15 = load %struct.PointListStruct*, %struct.PointListStruct** %4, align 8
  %16 = icmp ne %struct.PointListStruct* %15, null
  br i1 %16, label %17, label %56

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.PointListStruct*, %struct.PointListStruct** %4, align 8
  %20 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %19, i32 0, i32 0
  %21 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %20, align 8
  %22 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %21, i32 0, i32 0
  %23 = load double, double* %22, align 8
  %24 = load %struct.PointListStruct*, %struct.PointListStruct** %4, align 8
  %25 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %24, i32 0, i32 0
  %26 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %25, align 8
  %27 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %26, i32 0, i32 1
  %28 = load double, double* %27, align 8
  %29 = load %struct.PointListStruct*, %struct.PointListStruct** %4, align 8
  %30 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %29, i32 0, i32 0
  %31 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %30, align 8
  %32 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %31, i32 0, i32 2
  %33 = load double, double* %32, align 8
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %18, double %23, double %28, double %33)
  %35 = load %struct.PointListStruct*, %struct.PointListStruct** %4, align 8
  %36 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %35, i32 0, i32 0
  %37 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %36, align 8
  %38 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %37, i32 0, i32 3
  %39 = load double, double* %38, align 8
  %40 = load %struct.PointListStruct*, %struct.PointListStruct** %4, align 8
  %41 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %40, i32 0, i32 0
  %42 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %41, align 8
  %43 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %42, i32 0, i32 4
  %44 = load double, double* %43, align 8
  %45 = load %struct.PointListStruct*, %struct.PointListStruct** %4, align 8
  %46 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %45, i32 0, i32 0
  %47 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %46, align 8
  %48 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %47, i32 0, i32 5
  %49 = load double, double* %48, align 8
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1.6, i64 0, i64 0), double %39, double %44, double %49)
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  %53 = load %struct.PointListStruct*, %struct.PointListStruct** %4, align 8
  %54 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %53, i32 0, i32 1
  %55 = load %struct.PointListStruct*, %struct.PointListStruct** %54, align 8
  store %struct.PointListStruct* %55, %struct.PointListStruct** %4, align 8
  br label %14

56:                                               ; preds = %14
  ret void
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @PrintPoly3s(%struct.ObjectStruct* %0) #0 {
  %2 = alloca %struct.ObjectStruct*, align 8
  %3 = alloca %struct.Poly3Struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ObjectStruct* %0, %struct.ObjectStruct** %2, align 8
  store %struct.Poly3Struct* null, %struct.Poly3Struct** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %7 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %6, i32 0, i32 2
  %8 = load %struct.Poly3Struct*, %struct.Poly3Struct** %7, align 8
  %9 = icmp ne %struct.Poly3Struct* %8, null
  br i1 %9, label %10, label %83

10:                                               ; preds = %1
  %11 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %12 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %11, i32 0, i32 2
  %13 = load %struct.Poly3Struct*, %struct.Poly3Struct** %12, align 8
  store %struct.Poly3Struct* %13, %struct.Poly3Struct** %3, align 8
  br label %14

14:                                               ; preds = %76, %10
  %15 = load %struct.Poly3Struct*, %struct.Poly3Struct** %3, align 8
  %16 = icmp ne %struct.Poly3Struct* %15, null
  br i1 %16, label %17, label %82

17:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %73, %17
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 3
  br i1 %20, label %21, label %76

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.Poly3Struct*, %struct.Poly3Struct** %3, align 8
  %24 = getelementptr inbounds %struct.Poly3Struct, %struct.Poly3Struct* %23, i32 0, i32 0
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [3 x %struct.ObjPointStruct*], [3 x %struct.ObjPointStruct*]* %24, i64 0, i64 %26
  %28 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %27, align 8
  %29 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %28, i32 0, i32 0
  %30 = load double, double* %29, align 8
  %31 = load %struct.Poly3Struct*, %struct.Poly3Struct** %3, align 8
  %32 = getelementptr inbounds %struct.Poly3Struct, %struct.Poly3Struct* %31, i32 0, i32 0
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [3 x %struct.ObjPointStruct*], [3 x %struct.ObjPointStruct*]* %32, i64 0, i64 %34
  %36 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %35, align 8
  %37 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %36, i32 0, i32 1
  %38 = load double, double* %37, align 8
  %39 = load %struct.Poly3Struct*, %struct.Poly3Struct** %3, align 8
  %40 = getelementptr inbounds %struct.Poly3Struct, %struct.Poly3Struct* %39, i32 0, i32 0
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [3 x %struct.ObjPointStruct*], [3 x %struct.ObjPointStruct*]* %40, i64 0, i64 %42
  %44 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %43, align 8
  %45 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %44, i32 0, i32 2
  %46 = load double, double* %45, align 8
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %22, double %30, double %38, double %46)
  %48 = load %struct.Poly3Struct*, %struct.Poly3Struct** %3, align 8
  %49 = getelementptr inbounds %struct.Poly3Struct, %struct.Poly3Struct* %48, i32 0, i32 0
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [3 x %struct.ObjPointStruct*], [3 x %struct.ObjPointStruct*]* %49, i64 0, i64 %51
  %53 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %52, align 8
  %54 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %53, i32 0, i32 3
  %55 = load double, double* %54, align 8
  %56 = load %struct.Poly3Struct*, %struct.Poly3Struct** %3, align 8
  %57 = getelementptr inbounds %struct.Poly3Struct, %struct.Poly3Struct* %56, i32 0, i32 0
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [3 x %struct.ObjPointStruct*], [3 x %struct.ObjPointStruct*]* %57, i64 0, i64 %59
  %61 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %60, align 8
  %62 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %61, i32 0, i32 4
  %63 = load double, double* %62, align 8
  %64 = load %struct.Poly3Struct*, %struct.Poly3Struct** %3, align 8
  %65 = getelementptr inbounds %struct.Poly3Struct, %struct.Poly3Struct* %64, i32 0, i32 0
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [3 x %struct.ObjPointStruct*], [3 x %struct.ObjPointStruct*]* %65, i64 0, i64 %67
  %69 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %68, align 8
  %70 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %69, i32 0, i32 5
  %71 = load double, double* %70, align 8
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), double %55, double %63, double %71)
  br label %73

73:                                               ; preds = %21
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %18

76:                                               ; preds = %18
  %77 = load %struct.Poly3Struct*, %struct.Poly3Struct** %3, align 8
  %78 = getelementptr inbounds %struct.Poly3Struct, %struct.Poly3Struct* %77, i32 0, i32 3
  %79 = load %struct.Poly3Struct*, %struct.Poly3Struct** %78, align 8
  store %struct.Poly3Struct* %79, %struct.Poly3Struct** %3, align 8
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %14

82:                                               ; preds = %14
  br label %83

83:                                               ; preds = %82, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @PrintPoly4s(%struct.ObjectStruct* %0) #0 {
  %2 = alloca %struct.ObjectStruct*, align 8
  %3 = alloca %struct.Poly4Struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ObjectStruct* %0, %struct.ObjectStruct** %2, align 8
  store %struct.Poly4Struct* null, %struct.Poly4Struct** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %7 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %6, i32 0, i32 3
  %8 = load %struct.Poly4Struct*, %struct.Poly4Struct** %7, align 8
  %9 = icmp ne %struct.Poly4Struct* %8, null
  br i1 %9, label %10, label %83

10:                                               ; preds = %1
  %11 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %12 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %11, i32 0, i32 3
  %13 = load %struct.Poly4Struct*, %struct.Poly4Struct** %12, align 8
  store %struct.Poly4Struct* %13, %struct.Poly4Struct** %3, align 8
  br label %14

14:                                               ; preds = %76, %10
  %15 = load %struct.Poly4Struct*, %struct.Poly4Struct** %3, align 8
  %16 = icmp ne %struct.Poly4Struct* %15, null
  br i1 %16, label %17, label %82

17:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %73, %17
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 4
  br i1 %20, label %21, label %76

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.Poly4Struct*, %struct.Poly4Struct** %3, align 8
  %24 = getelementptr inbounds %struct.Poly4Struct, %struct.Poly4Struct* %23, i32 0, i32 0
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [4 x %struct.ObjPointStruct*], [4 x %struct.ObjPointStruct*]* %24, i64 0, i64 %26
  %28 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %27, align 8
  %29 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %28, i32 0, i32 0
  %30 = load double, double* %29, align 8
  %31 = load %struct.Poly4Struct*, %struct.Poly4Struct** %3, align 8
  %32 = getelementptr inbounds %struct.Poly4Struct, %struct.Poly4Struct* %31, i32 0, i32 0
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x %struct.ObjPointStruct*], [4 x %struct.ObjPointStruct*]* %32, i64 0, i64 %34
  %36 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %35, align 8
  %37 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %36, i32 0, i32 1
  %38 = load double, double* %37, align 8
  %39 = load %struct.Poly4Struct*, %struct.Poly4Struct** %3, align 8
  %40 = getelementptr inbounds %struct.Poly4Struct, %struct.Poly4Struct* %39, i32 0, i32 0
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [4 x %struct.ObjPointStruct*], [4 x %struct.ObjPointStruct*]* %40, i64 0, i64 %42
  %44 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %43, align 8
  %45 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %44, i32 0, i32 2
  %46 = load double, double* %45, align 8
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %22, double %30, double %38, double %46)
  %48 = load %struct.Poly4Struct*, %struct.Poly4Struct** %3, align 8
  %49 = getelementptr inbounds %struct.Poly4Struct, %struct.Poly4Struct* %48, i32 0, i32 0
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [4 x %struct.ObjPointStruct*], [4 x %struct.ObjPointStruct*]* %49, i64 0, i64 %51
  %53 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %52, align 8
  %54 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %53, i32 0, i32 3
  %55 = load double, double* %54, align 8
  %56 = load %struct.Poly4Struct*, %struct.Poly4Struct** %3, align 8
  %57 = getelementptr inbounds %struct.Poly4Struct, %struct.Poly4Struct* %56, i32 0, i32 0
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [4 x %struct.ObjPointStruct*], [4 x %struct.ObjPointStruct*]* %57, i64 0, i64 %59
  %61 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %60, align 8
  %62 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %61, i32 0, i32 4
  %63 = load double, double* %62, align 8
  %64 = load %struct.Poly4Struct*, %struct.Poly4Struct** %3, align 8
  %65 = getelementptr inbounds %struct.Poly4Struct, %struct.Poly4Struct* %64, i32 0, i32 0
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [4 x %struct.ObjPointStruct*], [4 x %struct.ObjPointStruct*]* %65, i64 0, i64 %67
  %69 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %68, align 8
  %70 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %69, i32 0, i32 5
  %71 = load double, double* %70, align 8
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), double %55, double %63, double %71)
  br label %73

73:                                               ; preds = %21
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %18

76:                                               ; preds = %18
  %77 = load %struct.Poly4Struct*, %struct.Poly4Struct** %3, align 8
  %78 = getelementptr inbounds %struct.Poly4Struct, %struct.Poly4Struct* %77, i32 0, i32 3
  %79 = load %struct.Poly4Struct*, %struct.Poly4Struct** %78, align 8
  store %struct.Poly4Struct* %79, %struct.Poly4Struct** %3, align 8
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %14

82:                                               ; preds = %14
  br label %83

83:                                               ; preds = %82, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @PrintObject(%struct.ObjectStruct* %0) #0 {
  %2 = alloca %struct.ObjectStruct*, align 8
  store %struct.ObjectStruct* %0, %struct.ObjectStruct** %2, align 8
  %3 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %4 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %3, i32 0, i32 0
  %5 = getelementptr inbounds [57 x i8], [57 x i8]* %4, i64 0, i64 0
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.9, i64 0, i64 0), i8* %5)
  %7 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  call void @PrintPoints(%struct.ObjectStruct* %7)
  %8 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  call void @PrintPoly3s(%struct.ObjectStruct* %8)
  %9 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  call void @PrintPoly4s(%struct.ObjectStruct* %9)
  %10 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %11 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %10, i32 0, i32 11
  %12 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %11, i32 0, i32 0
  %13 = load double, double* %12, align 8
  %14 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %15 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %14, i32 0, i32 11
  %16 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %15, i32 0, i32 1
  %17 = load double, double* %16, align 8
  %18 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %19 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %18, i32 0, i32 11
  %20 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %19, i32 0, i32 2
  %21 = load double, double* %20, align 8
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), double %13, double %17, double %21)
  %23 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %24 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %23, i32 0, i32 9
  %25 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %24, i32 0, i32 0
  %26 = load double, double* %25, align 8
  %27 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %28 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %27, i32 0, i32 9
  %29 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %28, i32 0, i32 1
  %30 = load double, double* %29, align 8
  %31 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %32 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %31, i32 0, i32 9
  %33 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %32, i32 0, i32 2
  %34 = load double, double* %33, align 8
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), double %26, double %30, double %34)
  %36 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %37 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %36, i32 0, i32 10
  %38 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %37, i32 0, i32 0
  %39 = load double, double* %38, align 8
  %40 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %41 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %40, i32 0, i32 10
  %42 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %41, i32 0, i32 1
  %43 = load double, double* %42, align 8
  %44 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %45 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %44, i32 0, i32 10
  %46 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %45, i32 0, i32 2
  %47 = load double, double* %46, align 8
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), double %39, double %43, double %47)
  %49 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %50 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %49, i32 0, i32 6
  %51 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %50, i32 0, i32 0
  %52 = load double, double* %51, align 8
  %53 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %54 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %53, i32 0, i32 6
  %55 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %54, i32 0, i32 1
  %56 = load double, double* %55, align 8
  %57 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %58 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %58, i32 0, i32 2
  %60 = load double, double* %59, align 8
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), double %52, double %56, double %60)
  %62 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %63 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %1
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %1
  %69 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %70 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %69, i32 0, i32 8
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %68
  %76 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %77 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 2
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %75
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @InsertChild(%struct.ObjectStruct* %0, %struct.ObjectStruct* %1) #0 {
  %3 = alloca %struct.ObjectStruct*, align 8
  %4 = alloca %struct.ObjectStruct*, align 8
  store %struct.ObjectStruct* %0, %struct.ObjectStruct** %3, align 8
  store %struct.ObjectStruct* %1, %struct.ObjectStruct** %4, align 8
  %5 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  %6 = icmp ne %struct.ObjectStruct* %5, null
  br i1 %6, label %7, label %33

7:                                                ; preds = %2
  %8 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  %9 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %8, i32 0, i32 12
  %10 = load %struct.ObjectStruct*, %struct.ObjectStruct** %9, align 8
  %11 = icmp eq %struct.ObjectStruct* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = load %struct.ObjectStruct*, %struct.ObjectStruct** %4, align 8
  %14 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  %15 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %14, i32 0, i32 12
  store %struct.ObjectStruct* %13, %struct.ObjectStruct** %15, align 8
  br label %32

16:                                               ; preds = %7
  %17 = load %struct.ObjectStruct*, %struct.ObjectStruct** %4, align 8
  %18 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  %19 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %18, i32 0, i32 12
  %20 = load %struct.ObjectStruct*, %struct.ObjectStruct** %19, align 8
  %21 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %20, i32 0, i32 21
  store %struct.ObjectStruct* %17, %struct.ObjectStruct** %21, align 8
  %22 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  %23 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %22, i32 0, i32 12
  %24 = load %struct.ObjectStruct*, %struct.ObjectStruct** %23, align 8
  %25 = load %struct.ObjectStruct*, %struct.ObjectStruct** %4, align 8
  %26 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %25, i32 0, i32 22
  store %struct.ObjectStruct* %24, %struct.ObjectStruct** %26, align 8
  %27 = load %struct.ObjectStruct*, %struct.ObjectStruct** %4, align 8
  %28 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %27, i32 0, i32 21
  store %struct.ObjectStruct* null, %struct.ObjectStruct** %28, align 8
  %29 = load %struct.ObjectStruct*, %struct.ObjectStruct** %4, align 8
  %30 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  %31 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %30, i32 0, i32 12
  store %struct.ObjectStruct* %29, %struct.ObjectStruct** %31, align 8
  br label %32

32:                                               ; preds = %16, %12
  br label %33

33:                                               ; preds = %32, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @CalcObjectChildren(%struct.ObjectStruct* %0, double %1, double %2, double %3, double %4, double %5, double %6, double %7, double %8, double %9) #0 {
  %11 = alloca %struct.ObjectStruct*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca %struct.ObjectStruct*, align 8
  store %struct.ObjectStruct* %0, %struct.ObjectStruct** %11, align 8
  store double %1, double* %12, align 8
  store double %2, double* %13, align 8
  store double %3, double* %14, align 8
  store double %4, double* %15, align 8
  store double %5, double* %16, align 8
  store double %6, double* %17, align 8
  store double %7, double* %18, align 8
  store double %8, double* %19, align 8
  store double %9, double* %20, align 8
  store %struct.ObjectStruct* null, %struct.ObjectStruct** %21, align 8
  %22 = load %struct.ObjectStruct*, %struct.ObjectStruct** %11, align 8
  %23 = icmp ne %struct.ObjectStruct* %22, null
  br i1 %23, label %24, label %58

24:                                               ; preds = %10
  %25 = load %struct.ObjectStruct*, %struct.ObjectStruct** %11, align 8
  %26 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %25, i32 0, i32 12
  %27 = load %struct.ObjectStruct*, %struct.ObjectStruct** %26, align 8
  store %struct.ObjectStruct* %27, %struct.ObjectStruct** %21, align 8
  br label %28

28:                                               ; preds = %31, %24
  %29 = load %struct.ObjectStruct*, %struct.ObjectStruct** %21, align 8
  %30 = icmp ne %struct.ObjectStruct* %29, null
  br i1 %30, label %31, label %57

31:                                               ; preds = %28
  %32 = load %struct.ObjectStruct*, %struct.ObjectStruct** %21, align 8
  %33 = load double, double* %12, align 8
  %34 = load double, double* %13, align 8
  %35 = load double, double* %14, align 8
  call void @ScaleObjectAdd(%struct.ObjectStruct* %32, double %33, double %34, double %35)
  %36 = load %struct.ObjectStruct*, %struct.ObjectStruct** %21, align 8
  %37 = load double, double* %15, align 8
  %38 = load double, double* %16, align 8
  %39 = load double, double* %17, align 8
  call void @RotateObjectAdd(%struct.ObjectStruct* %36, double %37, double %38, double %39)
  %40 = load %struct.ObjectStruct*, %struct.ObjectStruct** %21, align 8
  %41 = load double, double* %18, align 8
  %42 = load double, double* %19, align 8
  %43 = load double, double* %20, align 8
  call void @TranslateObjectAdd(%struct.ObjectStruct* %40, double %41, double %42, double %43)
  %44 = load %struct.ObjectStruct*, %struct.ObjectStruct** %21, align 8
  %45 = load double, double* %12, align 8
  %46 = load double, double* %13, align 8
  %47 = load double, double* %14, align 8
  %48 = load double, double* %15, align 8
  %49 = load double, double* %16, align 8
  %50 = load double, double* %17, align 8
  %51 = load double, double* %18, align 8
  %52 = load double, double* %19, align 8
  %53 = load double, double* %20, align 8
  call void @CalcObjectChildren(%struct.ObjectStruct* %44, double %45, double %46, double %47, double %48, double %49, double %50, double %51, double %52, double %53)
  %54 = load %struct.ObjectStruct*, %struct.ObjectStruct** %21, align 8
  %55 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %54, i32 0, i32 21
  %56 = load %struct.ObjectStruct*, %struct.ObjectStruct** %55, align 8
  store %struct.ObjectStruct* %56, %struct.ObjectStruct** %21, align 8
  br label %28

57:                                               ; preds = %28
  br label %58

58:                                               ; preds = %57, %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ScaleObjectAdd(%struct.ObjectStruct* %0, double %1, double %2, double %3) #0 {
  %5 = alloca %struct.ObjectStruct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca [4 x [4 x double]]*, align 8
  %10 = alloca %struct.HPointStruct, align 8
  %11 = alloca %struct.PointListStruct*, align 8
  %12 = alloca %struct.HPointStruct, align 8
  %13 = alloca %struct.HPointStruct, align 8
  store %struct.ObjectStruct* %0, %struct.ObjectStruct** %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  store [4 x [4 x double]]* null, [4 x [4 x double]]** %9, align 8
  store %struct.PointListStruct* null, %struct.PointListStruct** %11, align 8
  %14 = load double, double* %6, align 8
  %15 = load double, double* %7, align 8
  %16 = load double, double* %8, align 8
  %17 = call [4 x [4 x double]]* @ScaleMatrix(double %14, double %15, double %16)
  store [4 x [4 x double]]* %17, [4 x [4 x double]]** %9, align 8
  %18 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %19 = icmp ne %struct.ObjectStruct* %18, null
  br i1 %19, label %20, label %58

20:                                               ; preds = %4
  %21 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %22 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %21, i32 0, i32 1
  %23 = load %struct.PointListStruct*, %struct.PointListStruct** %22, align 8
  store %struct.PointListStruct* %23, %struct.PointListStruct** %11, align 8
  br label %24

24:                                               ; preds = %27, %20
  %25 = load %struct.PointListStruct*, %struct.PointListStruct** %11, align 8
  %26 = icmp ne %struct.PointListStruct* %25, null
  br i1 %26, label %27, label %57

27:                                               ; preds = %24
  %28 = load %struct.PointListStruct*, %struct.PointListStruct** %11, align 8
  %29 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %28, i32 0, i32 0
  %30 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %29, align 8
  call void @TPointToHPoint(%struct.HPointStruct* sret %12, %struct.ObjPointStruct* byval(%struct.ObjPointStruct) align 8 %30)
  %31 = bitcast %struct.HPointStruct* %10 to i8*
  %32 = bitcast %struct.HPointStruct* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 32, i1 false)
  %33 = load [4 x [4 x double]]*, [4 x [4 x double]]** %9, align 8
  call void @MultMatrixHPoint(%struct.HPointStruct* sret %13, [4 x [4 x double]]* %33, %struct.HPointStruct* byval(%struct.HPointStruct) align 8 %10)
  %34 = bitcast %struct.HPointStruct* %10 to i8*
  %35 = bitcast %struct.HPointStruct* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 32, i1 false)
  %36 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %10, i32 0, i32 0
  %37 = load double, double* %36, align 8
  %38 = load %struct.PointListStruct*, %struct.PointListStruct** %11, align 8
  %39 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %38, i32 0, i32 0
  %40 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %39, align 8
  %41 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %40, i32 0, i32 3
  store double %37, double* %41, align 8
  %42 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %10, i32 0, i32 1
  %43 = load double, double* %42, align 8
  %44 = load %struct.PointListStruct*, %struct.PointListStruct** %11, align 8
  %45 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %44, i32 0, i32 0
  %46 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %45, align 8
  %47 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %46, i32 0, i32 4
  store double %43, double* %47, align 8
  %48 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %10, i32 0, i32 2
  %49 = load double, double* %48, align 8
  %50 = load %struct.PointListStruct*, %struct.PointListStruct** %11, align 8
  %51 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %50, i32 0, i32 0
  %52 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %51, align 8
  %53 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %52, i32 0, i32 5
  store double %49, double* %53, align 8
  %54 = load %struct.PointListStruct*, %struct.PointListStruct** %11, align 8
  %55 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %54, i32 0, i32 1
  %56 = load %struct.PointListStruct*, %struct.PointListStruct** %55, align 8
  store %struct.PointListStruct* %56, %struct.PointListStruct** %11, align 8
  br label %24

57:                                               ; preds = %24
  br label %61

58:                                               ; preds = %4
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %57
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @RotateObjectAdd(%struct.ObjectStruct* %0, double %1, double %2, double %3) #0 {
  %5 = alloca %struct.ObjectStruct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca [4 x [4 x double]]*, align 8
  %10 = alloca %struct.HPointStruct, align 8
  %11 = alloca %struct.PointListStruct*, align 8
  %12 = alloca %struct.HPointStruct, align 8
  %13 = alloca %struct.HPointStruct, align 8
  store %struct.ObjectStruct* %0, %struct.ObjectStruct** %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  store [4 x [4 x double]]* null, [4 x [4 x double]]** %9, align 8
  store %struct.PointListStruct* null, %struct.PointListStruct** %11, align 8
  %14 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %15 = icmp ne %struct.ObjectStruct* %14, null
  br i1 %15, label %16, label %58

16:                                               ; preds = %4
  %17 = load double, double* %6, align 8
  %18 = load double, double* %7, align 8
  %19 = load double, double* %8, align 8
  %20 = call [4 x [4 x double]]* @RotateMatrix(double %17, double %18, double %19)
  store [4 x [4 x double]]* %20, [4 x [4 x double]]** %9, align 8
  %21 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %22 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %21, i32 0, i32 1
  %23 = load %struct.PointListStruct*, %struct.PointListStruct** %22, align 8
  store %struct.PointListStruct* %23, %struct.PointListStruct** %11, align 8
  br label %24

24:                                               ; preds = %27, %16
  %25 = load %struct.PointListStruct*, %struct.PointListStruct** %11, align 8
  %26 = icmp ne %struct.PointListStruct* %25, null
  br i1 %26, label %27, label %57

27:                                               ; preds = %24
  %28 = load %struct.PointListStruct*, %struct.PointListStruct** %11, align 8
  %29 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %28, i32 0, i32 0
  %30 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %29, align 8
  call void @TPointToHPoint(%struct.HPointStruct* sret %12, %struct.ObjPointStruct* byval(%struct.ObjPointStruct) align 8 %30)
  %31 = bitcast %struct.HPointStruct* %10 to i8*
  %32 = bitcast %struct.HPointStruct* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 32, i1 false)
  %33 = load [4 x [4 x double]]*, [4 x [4 x double]]** %9, align 8
  call void @MultMatrixHPoint(%struct.HPointStruct* sret %13, [4 x [4 x double]]* %33, %struct.HPointStruct* byval(%struct.HPointStruct) align 8 %10)
  %34 = bitcast %struct.HPointStruct* %10 to i8*
  %35 = bitcast %struct.HPointStruct* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 32, i1 false)
  %36 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %10, i32 0, i32 0
  %37 = load double, double* %36, align 8
  %38 = load %struct.PointListStruct*, %struct.PointListStruct** %11, align 8
  %39 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %38, i32 0, i32 0
  %40 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %39, align 8
  %41 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %40, i32 0, i32 3
  store double %37, double* %41, align 8
  %42 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %10, i32 0, i32 1
  %43 = load double, double* %42, align 8
  %44 = load %struct.PointListStruct*, %struct.PointListStruct** %11, align 8
  %45 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %44, i32 0, i32 0
  %46 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %45, align 8
  %47 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %46, i32 0, i32 4
  store double %43, double* %47, align 8
  %48 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %10, i32 0, i32 2
  %49 = load double, double* %48, align 8
  %50 = load %struct.PointListStruct*, %struct.PointListStruct** %11, align 8
  %51 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %50, i32 0, i32 0
  %52 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %51, align 8
  %53 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %52, i32 0, i32 5
  store double %49, double* %53, align 8
  %54 = load %struct.PointListStruct*, %struct.PointListStruct** %11, align 8
  %55 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %54, i32 0, i32 1
  %56 = load %struct.PointListStruct*, %struct.PointListStruct** %55, align 8
  store %struct.PointListStruct* %56, %struct.PointListStruct** %11, align 8
  br label %24

57:                                               ; preds = %24
  br label %61

58:                                               ; preds = %4
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %57
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @TranslateObjectAdd(%struct.ObjectStruct* %0, double %1, double %2, double %3) #0 {
  %5 = alloca %struct.ObjectStruct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca [4 x [4 x double]]*, align 8
  %10 = alloca %struct.HPointStruct, align 8
  %11 = alloca %struct.PointListStruct*, align 8
  %12 = alloca %struct.HPointStruct, align 8
  %13 = alloca %struct.HPointStruct, align 8
  store %struct.ObjectStruct* %0, %struct.ObjectStruct** %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  store [4 x [4 x double]]* null, [4 x [4 x double]]** %9, align 8
  store %struct.PointListStruct* null, %struct.PointListStruct** %11, align 8
  %14 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %15 = icmp ne %struct.ObjectStruct* %14, null
  br i1 %15, label %16, label %58

16:                                               ; preds = %4
  %17 = load double, double* %6, align 8
  %18 = load double, double* %7, align 8
  %19 = load double, double* %8, align 8
  %20 = call [4 x [4 x double]]* @TranslateMatrix(double %17, double %18, double %19)
  store [4 x [4 x double]]* %20, [4 x [4 x double]]** %9, align 8
  %21 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %22 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %21, i32 0, i32 1
  %23 = load %struct.PointListStruct*, %struct.PointListStruct** %22, align 8
  store %struct.PointListStruct* %23, %struct.PointListStruct** %11, align 8
  br label %24

24:                                               ; preds = %27, %16
  %25 = load %struct.PointListStruct*, %struct.PointListStruct** %11, align 8
  %26 = icmp ne %struct.PointListStruct* %25, null
  br i1 %26, label %27, label %57

27:                                               ; preds = %24
  %28 = load %struct.PointListStruct*, %struct.PointListStruct** %11, align 8
  %29 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %28, i32 0, i32 0
  %30 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %29, align 8
  call void @TPointToHPoint(%struct.HPointStruct* sret %12, %struct.ObjPointStruct* byval(%struct.ObjPointStruct) align 8 %30)
  %31 = bitcast %struct.HPointStruct* %10 to i8*
  %32 = bitcast %struct.HPointStruct* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 32, i1 false)
  %33 = load [4 x [4 x double]]*, [4 x [4 x double]]** %9, align 8
  call void @MultMatrixHPoint(%struct.HPointStruct* sret %13, [4 x [4 x double]]* %33, %struct.HPointStruct* byval(%struct.HPointStruct) align 8 %10)
  %34 = bitcast %struct.HPointStruct* %10 to i8*
  %35 = bitcast %struct.HPointStruct* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 32, i1 false)
  %36 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %10, i32 0, i32 0
  %37 = load double, double* %36, align 8
  %38 = load %struct.PointListStruct*, %struct.PointListStruct** %11, align 8
  %39 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %38, i32 0, i32 0
  %40 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %39, align 8
  %41 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %40, i32 0, i32 3
  store double %37, double* %41, align 8
  %42 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %10, i32 0, i32 1
  %43 = load double, double* %42, align 8
  %44 = load %struct.PointListStruct*, %struct.PointListStruct** %11, align 8
  %45 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %44, i32 0, i32 0
  %46 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %45, align 8
  %47 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %46, i32 0, i32 4
  store double %43, double* %47, align 8
  %48 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %10, i32 0, i32 2
  %49 = load double, double* %48, align 8
  %50 = load %struct.PointListStruct*, %struct.PointListStruct** %11, align 8
  %51 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %50, i32 0, i32 0
  %52 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %51, align 8
  %53 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %52, i32 0, i32 5
  store double %49, double* %53, align 8
  %54 = load %struct.PointListStruct*, %struct.PointListStruct** %11, align 8
  %55 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %54, i32 0, i32 1
  %56 = load %struct.PointListStruct*, %struct.PointListStruct** %55, align 8
  store %struct.PointListStruct* %56, %struct.PointListStruct** %11, align 8
  br label %24

57:                                               ; preds = %24
  br label %61

58:                                               ; preds = %4
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %57
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @CalcObject(%struct.ObjectStruct* %0) #0 {
  %2 = alloca %struct.ObjectStruct*, align 8
  %3 = alloca %struct.ObjectStruct*, align 8
  store %struct.ObjectStruct* %0, %struct.ObjectStruct** %2, align 8
  store %struct.ObjectStruct* null, %struct.ObjectStruct** %3, align 8
  %4 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %5 = icmp ne %struct.ObjectStruct* %4, null
  br i1 %5, label %6, label %95

6:                                                ; preds = %1
  %7 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %8 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %7, i32 0, i32 12
  %9 = load %struct.ObjectStruct*, %struct.ObjectStruct** %8, align 8
  store %struct.ObjectStruct* %9, %struct.ObjectStruct** %3, align 8
  br label %10

10:                                               ; preds = %13, %6
  %11 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  %12 = icmp ne %struct.ObjectStruct* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  call void @CalcObject(%struct.ObjectStruct* %14)
  %15 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  %16 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %15, i32 0, i32 21
  %17 = load %struct.ObjectStruct*, %struct.ObjectStruct** %16, align 8
  store %struct.ObjectStruct* %17, %struct.ObjectStruct** %3, align 8
  br label %10

18:                                               ; preds = %10
  %19 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %20 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %21 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %20, i32 0, i32 11
  %22 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %21, i32 0, i32 0
  %23 = load double, double* %22, align 8
  %24 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %25 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %24, i32 0, i32 11
  %26 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %25, i32 0, i32 1
  %27 = load double, double* %26, align 8
  %28 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %29 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %28, i32 0, i32 11
  %30 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %29, i32 0, i32 2
  %31 = load double, double* %30, align 8
  %32 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %33 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %32, i32 0, i32 10
  %34 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %33, i32 0, i32 0
  %35 = load double, double* %34, align 8
  %36 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %37 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %36, i32 0, i32 10
  %38 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %37, i32 0, i32 1
  %39 = load double, double* %38, align 8
  %40 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %41 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %40, i32 0, i32 10
  %42 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %41, i32 0, i32 2
  %43 = load double, double* %42, align 8
  %44 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %45 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %44, i32 0, i32 9
  %46 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %45, i32 0, i32 0
  %47 = load double, double* %46, align 8
  %48 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %49 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %48, i32 0, i32 9
  %50 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %49, i32 0, i32 1
  %51 = load double, double* %50, align 8
  %52 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %53 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %52, i32 0, i32 9
  %54 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %53, i32 0, i32 2
  %55 = load double, double* %54, align 8
  call void @CalcObjectChildren(%struct.ObjectStruct* %19, double %23, double %27, double %31, double %35, double %39, double %43, double %47, double %51, double %55)
  %56 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %57 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %58 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %57, i32 0, i32 11
  %59 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %58, i32 0, i32 0
  %60 = load double, double* %59, align 8
  %61 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %62 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %61, i32 0, i32 11
  %63 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %62, i32 0, i32 1
  %64 = load double, double* %63, align 8
  %65 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %66 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %65, i32 0, i32 11
  %67 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %66, i32 0, i32 2
  %68 = load double, double* %67, align 8
  call void @ScaleObjectOverwrite(%struct.ObjectStruct* %56, double %60, double %64, double %68)
  %69 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %70 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %71 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %70, i32 0, i32 10
  %72 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %71, i32 0, i32 0
  %73 = load double, double* %72, align 8
  %74 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %75 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %74, i32 0, i32 10
  %76 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %75, i32 0, i32 1
  %77 = load double, double* %76, align 8
  %78 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %79 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %78, i32 0, i32 10
  %80 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %79, i32 0, i32 2
  %81 = load double, double* %80, align 8
  call void @RotateObjectAdd(%struct.ObjectStruct* %69, double %73, double %77, double %81)
  %82 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %83 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %84 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %83, i32 0, i32 9
  %85 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %84, i32 0, i32 0
  %86 = load double, double* %85, align 8
  %87 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %88 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %87, i32 0, i32 9
  %89 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %88, i32 0, i32 1
  %90 = load double, double* %89, align 8
  %91 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %92 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %91, i32 0, i32 9
  %93 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %92, i32 0, i32 2
  %94 = load double, double* %93, align 8
  call void @TranslateObjectAdd(%struct.ObjectStruct* %82, double %86, double %90, double %94)
  br label %95

95:                                               ; preds = %18, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ScaleObjectOverwrite(%struct.ObjectStruct* %0, double %1, double %2, double %3) #0 {
  %5 = alloca %struct.ObjectStruct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca [4 x [4 x double]]*, align 8
  %10 = alloca %struct.HPointStruct, align 8
  %11 = alloca %struct.PointListStruct*, align 8
  %12 = alloca %struct.HPointStruct, align 8
  %13 = alloca %struct.HPointStruct, align 8
  store %struct.ObjectStruct* %0, %struct.ObjectStruct** %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  store [4 x [4 x double]]* null, [4 x [4 x double]]** %9, align 8
  store %struct.PointListStruct* null, %struct.PointListStruct** %11, align 8
  %14 = load double, double* %6, align 8
  %15 = load double, double* %7, align 8
  %16 = load double, double* %8, align 8
  %17 = call [4 x [4 x double]]* @ScaleMatrix(double %14, double %15, double %16)
  store [4 x [4 x double]]* %17, [4 x [4 x double]]** %9, align 8
  %18 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %19 = icmp ne %struct.ObjectStruct* %18, null
  br i1 %19, label %20, label %58

20:                                               ; preds = %4
  %21 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %22 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %21, i32 0, i32 1
  %23 = load %struct.PointListStruct*, %struct.PointListStruct** %22, align 8
  store %struct.PointListStruct* %23, %struct.PointListStruct** %11, align 8
  br label %24

24:                                               ; preds = %27, %20
  %25 = load %struct.PointListStruct*, %struct.PointListStruct** %11, align 8
  %26 = icmp ne %struct.PointListStruct* %25, null
  br i1 %26, label %27, label %57

27:                                               ; preds = %24
  %28 = load %struct.PointListStruct*, %struct.PointListStruct** %11, align 8
  %29 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %28, i32 0, i32 0
  %30 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %29, align 8
  call void @PointToHPoint(%struct.HPointStruct* sret %12, %struct.ObjPointStruct* byval(%struct.ObjPointStruct) align 8 %30)
  %31 = bitcast %struct.HPointStruct* %10 to i8*
  %32 = bitcast %struct.HPointStruct* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 32, i1 false)
  %33 = load [4 x [4 x double]]*, [4 x [4 x double]]** %9, align 8
  call void @MultMatrixHPoint(%struct.HPointStruct* sret %13, [4 x [4 x double]]* %33, %struct.HPointStruct* byval(%struct.HPointStruct) align 8 %10)
  %34 = bitcast %struct.HPointStruct* %10 to i8*
  %35 = bitcast %struct.HPointStruct* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 32, i1 false)
  %36 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %10, i32 0, i32 0
  %37 = load double, double* %36, align 8
  %38 = load %struct.PointListStruct*, %struct.PointListStruct** %11, align 8
  %39 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %38, i32 0, i32 0
  %40 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %39, align 8
  %41 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %40, i32 0, i32 3
  store double %37, double* %41, align 8
  %42 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %10, i32 0, i32 1
  %43 = load double, double* %42, align 8
  %44 = load %struct.PointListStruct*, %struct.PointListStruct** %11, align 8
  %45 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %44, i32 0, i32 0
  %46 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %45, align 8
  %47 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %46, i32 0, i32 4
  store double %43, double* %47, align 8
  %48 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %10, i32 0, i32 2
  %49 = load double, double* %48, align 8
  %50 = load %struct.PointListStruct*, %struct.PointListStruct** %11, align 8
  %51 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %50, i32 0, i32 0
  %52 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %51, align 8
  %53 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %52, i32 0, i32 5
  store double %49, double* %53, align 8
  %54 = load %struct.PointListStruct*, %struct.PointListStruct** %11, align 8
  %55 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %54, i32 0, i32 1
  %56 = load %struct.PointListStruct*, %struct.PointListStruct** %55, align 8
  store %struct.PointListStruct* %56, %struct.PointListStruct** %11, align 8
  br label %24

57:                                               ; preds = %24
  br label %61

58:                                               ; preds = %4
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %57
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @TranslateObjectOverwrite(%struct.ObjectStruct* %0, double %1, double %2, double %3) #0 {
  %5 = alloca %struct.ObjectStruct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca [4 x [4 x double]]*, align 8
  %10 = alloca %struct.HPointStruct, align 8
  %11 = alloca %struct.PointListStruct*, align 8
  %12 = alloca %struct.HPointStruct, align 8
  %13 = alloca %struct.HPointStruct, align 8
  store %struct.ObjectStruct* %0, %struct.ObjectStruct** %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  store [4 x [4 x double]]* null, [4 x [4 x double]]** %9, align 8
  store %struct.PointListStruct* null, %struct.PointListStruct** %11, align 8
  %14 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %15 = icmp ne %struct.ObjectStruct* %14, null
  br i1 %15, label %16, label %58

16:                                               ; preds = %4
  %17 = load double, double* %6, align 8
  %18 = load double, double* %7, align 8
  %19 = load double, double* %8, align 8
  %20 = call [4 x [4 x double]]* @TranslateMatrix(double %17, double %18, double %19)
  store [4 x [4 x double]]* %20, [4 x [4 x double]]** %9, align 8
  %21 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %22 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %21, i32 0, i32 1
  %23 = load %struct.PointListStruct*, %struct.PointListStruct** %22, align 8
  store %struct.PointListStruct* %23, %struct.PointListStruct** %11, align 8
  br label %24

24:                                               ; preds = %27, %16
  %25 = load %struct.PointListStruct*, %struct.PointListStruct** %11, align 8
  %26 = icmp ne %struct.PointListStruct* %25, null
  br i1 %26, label %27, label %57

27:                                               ; preds = %24
  %28 = load %struct.PointListStruct*, %struct.PointListStruct** %11, align 8
  %29 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %28, i32 0, i32 0
  %30 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %29, align 8
  call void @PointToHPoint(%struct.HPointStruct* sret %12, %struct.ObjPointStruct* byval(%struct.ObjPointStruct) align 8 %30)
  %31 = bitcast %struct.HPointStruct* %10 to i8*
  %32 = bitcast %struct.HPointStruct* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 32, i1 false)
  %33 = load [4 x [4 x double]]*, [4 x [4 x double]]** %9, align 8
  call void @MultMatrixHPoint(%struct.HPointStruct* sret %13, [4 x [4 x double]]* %33, %struct.HPointStruct* byval(%struct.HPointStruct) align 8 %10)
  %34 = bitcast %struct.HPointStruct* %10 to i8*
  %35 = bitcast %struct.HPointStruct* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 32, i1 false)
  %36 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %10, i32 0, i32 0
  %37 = load double, double* %36, align 8
  %38 = load %struct.PointListStruct*, %struct.PointListStruct** %11, align 8
  %39 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %38, i32 0, i32 0
  %40 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %39, align 8
  %41 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %40, i32 0, i32 3
  store double %37, double* %41, align 8
  %42 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %10, i32 0, i32 1
  %43 = load double, double* %42, align 8
  %44 = load %struct.PointListStruct*, %struct.PointListStruct** %11, align 8
  %45 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %44, i32 0, i32 0
  %46 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %45, align 8
  %47 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %46, i32 0, i32 4
  store double %43, double* %47, align 8
  %48 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %10, i32 0, i32 2
  %49 = load double, double* %48, align 8
  %50 = load %struct.PointListStruct*, %struct.PointListStruct** %11, align 8
  %51 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %50, i32 0, i32 0
  %52 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %51, align 8
  %53 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %52, i32 0, i32 5
  store double %49, double* %53, align 8
  %54 = load %struct.PointListStruct*, %struct.PointListStruct** %11, align 8
  %55 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %54, i32 0, i32 1
  %56 = load %struct.PointListStruct*, %struct.PointListStruct** %55, align 8
  store %struct.PointListStruct* %56, %struct.PointListStruct** %11, align 8
  br label %24

57:                                               ; preds = %24
  br label %61

58:                                               ; preds = %4
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %57
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @RotateObjectOverwrite(%struct.ObjectStruct* %0, double %1, double %2, double %3) #0 {
  %5 = alloca %struct.ObjectStruct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca [4 x [4 x double]]*, align 8
  %10 = alloca %struct.HPointStruct, align 8
  %11 = alloca %struct.PointListStruct*, align 8
  %12 = alloca %struct.HPointStruct, align 8
  %13 = alloca %struct.HPointStruct, align 8
  store %struct.ObjectStruct* %0, %struct.ObjectStruct** %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  store [4 x [4 x double]]* null, [4 x [4 x double]]** %9, align 8
  store %struct.PointListStruct* null, %struct.PointListStruct** %11, align 8
  %14 = load double, double* %6, align 8
  %15 = load double, double* %7, align 8
  %16 = load double, double* %8, align 8
  %17 = call [4 x [4 x double]]* @RotateMatrix(double %14, double %15, double %16)
  store [4 x [4 x double]]* %17, [4 x [4 x double]]** %9, align 8
  %18 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %19 = icmp ne %struct.ObjectStruct* %18, null
  br i1 %19, label %20, label %58

20:                                               ; preds = %4
  %21 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %22 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %21, i32 0, i32 1
  %23 = load %struct.PointListStruct*, %struct.PointListStruct** %22, align 8
  store %struct.PointListStruct* %23, %struct.PointListStruct** %11, align 8
  br label %24

24:                                               ; preds = %27, %20
  %25 = load %struct.PointListStruct*, %struct.PointListStruct** %11, align 8
  %26 = icmp ne %struct.PointListStruct* %25, null
  br i1 %26, label %27, label %57

27:                                               ; preds = %24
  %28 = load %struct.PointListStruct*, %struct.PointListStruct** %11, align 8
  %29 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %28, i32 0, i32 0
  %30 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %29, align 8
  call void @PointToHPoint(%struct.HPointStruct* sret %12, %struct.ObjPointStruct* byval(%struct.ObjPointStruct) align 8 %30)
  %31 = bitcast %struct.HPointStruct* %10 to i8*
  %32 = bitcast %struct.HPointStruct* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 32, i1 false)
  %33 = load [4 x [4 x double]]*, [4 x [4 x double]]** %9, align 8
  call void @MultMatrixHPoint(%struct.HPointStruct* sret %13, [4 x [4 x double]]* %33, %struct.HPointStruct* byval(%struct.HPointStruct) align 8 %10)
  %34 = bitcast %struct.HPointStruct* %10 to i8*
  %35 = bitcast %struct.HPointStruct* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 32, i1 false)
  %36 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %10, i32 0, i32 0
  %37 = load double, double* %36, align 8
  %38 = load %struct.PointListStruct*, %struct.PointListStruct** %11, align 8
  %39 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %38, i32 0, i32 0
  %40 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %39, align 8
  %41 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %40, i32 0, i32 3
  store double %37, double* %41, align 8
  %42 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %10, i32 0, i32 1
  %43 = load double, double* %42, align 8
  %44 = load %struct.PointListStruct*, %struct.PointListStruct** %11, align 8
  %45 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %44, i32 0, i32 0
  %46 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %45, align 8
  %47 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %46, i32 0, i32 4
  store double %43, double* %47, align 8
  %48 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %10, i32 0, i32 2
  %49 = load double, double* %48, align 8
  %50 = load %struct.PointListStruct*, %struct.PointListStruct** %11, align 8
  %51 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %50, i32 0, i32 0
  %52 = load %struct.ObjPointStruct*, %struct.ObjPointStruct** %51, align 8
  %53 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %52, i32 0, i32 5
  store double %49, double* %53, align 8
  %54 = load %struct.PointListStruct*, %struct.PointListStruct** %11, align 8
  %55 = getelementptr inbounds %struct.PointListStruct, %struct.PointListStruct* %54, i32 0, i32 1
  %56 = load %struct.PointListStruct*, %struct.PointListStruct** %55, align 8
  store %struct.PointListStruct* %56, %struct.PointListStruct** %11, align 8
  br label %24

57:                                               ; preds = %24
  br label %61

58:                                               ; preds = %4
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %57
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @SetObjectColor(%struct.ObjectStruct* %0, float %1, float %2, float %3) #0 {
  %5 = alloca %struct.ObjectStruct*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store %struct.ObjectStruct* %0, %struct.ObjectStruct** %5, align 8
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %9 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %10 = icmp ne %struct.ObjectStruct* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %4
  %12 = load float, float* %6, align 4
  %13 = fpext float %12 to double
  %14 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %15 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %14, i32 0, i32 6
  %16 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %15, i32 0, i32 0
  store double %13, double* %16, align 8
  br label %17

17:                                               ; preds = %11, %4
  %18 = load float, float* %7, align 4
  %19 = fpext float %18 to double
  %20 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %21 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %20, i32 0, i32 6
  %22 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %21, i32 0, i32 1
  store double %19, double* %22, align 8
  %23 = load float, float* %8, align 4
  %24 = fpext float %23 to double
  %25 = load %struct.ObjectStruct*, %struct.ObjectStruct** %5, align 8
  %26 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %25, i32 0, i32 6
  %27 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %26, i32 0, i32 2
  store double %24, double* %27, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Draw_Children(%struct.ObjectStruct* %0) #0 {
  %2 = alloca %struct.ObjectStruct*, align 8
  %3 = alloca %struct.ObjectStruct*, align 8
  store %struct.ObjectStruct* %0, %struct.ObjectStruct** %2, align 8
  store %struct.ObjectStruct* null, %struct.ObjectStruct** %3, align 8
  %4 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %5 = icmp ne %struct.ObjectStruct* %4, null
  br i1 %5, label %6, label %20

6:                                                ; preds = %1
  %7 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  call void @PrintObject(%struct.ObjectStruct* %7)
  %8 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %9 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %8, i32 0, i32 12
  %10 = load %struct.ObjectStruct*, %struct.ObjectStruct** %9, align 8
  store %struct.ObjectStruct* %10, %struct.ObjectStruct** %3, align 8
  br label %11

11:                                               ; preds = %14, %6
  %12 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  %13 = icmp ne %struct.ObjectStruct* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  call void @Draw_Children(%struct.ObjectStruct* %15)
  %16 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  %17 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %16, i32 0, i32 21
  %18 = load %struct.ObjectStruct*, %struct.ObjectStruct** %17, align 8
  store %struct.ObjectStruct* %18, %struct.ObjectStruct** %3, align 8
  br label %11

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %19, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Draw_Object(%struct.ObjectStruct* %0) #0 {
  %2 = alloca %struct.ObjectStruct*, align 8
  store %struct.ObjectStruct* %0, %struct.ObjectStruct** %2, align 8
  %3 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %4 = icmp ne %struct.ObjectStruct* %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  call void @PrintObject(%struct.ObjectStruct* %6)
  %7 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %8 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %7, i32 0, i32 12
  %9 = load %struct.ObjectStruct*, %struct.ObjectStruct** %8, align 8
  call void @Draw_Children(%struct.ObjectStruct* %9)
  br label %10

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Draw_All_Nexts(%struct.ObjectStruct* %0) #0 {
  %2 = alloca %struct.ObjectStruct*, align 8
  %3 = alloca %struct.ObjectStruct*, align 8
  store %struct.ObjectStruct* %0, %struct.ObjectStruct** %2, align 8
  store %struct.ObjectStruct* null, %struct.ObjectStruct** %3, align 8
  %4 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %5 = icmp ne %struct.ObjectStruct* %4, null
  br i1 %5, label %6, label %20

6:                                                ; preds = %1
  %7 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %8 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %7, i32 0, i32 21
  %9 = load %struct.ObjectStruct*, %struct.ObjectStruct** %8, align 8
  store %struct.ObjectStruct* %9, %struct.ObjectStruct** %3, align 8
  br label %10

10:                                               ; preds = %13, %6
  %11 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  %12 = icmp ne %struct.ObjectStruct* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  call void @CalcObject(%struct.ObjectStruct* %14)
  %15 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  call void @Draw_Object(%struct.ObjectStruct* %15)
  %16 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  %17 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %16, i32 0, i32 21
  %18 = load %struct.ObjectStruct*, %struct.ObjectStruct** %17, align 8
  store %struct.ObjectStruct* %18, %struct.ObjectStruct** %3, align 8
  br label %10

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %19, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Draw_All_Prevs(%struct.ObjectStruct* %0) #0 {
  %2 = alloca %struct.ObjectStruct*, align 8
  %3 = alloca %struct.ObjectStruct*, align 8
  store %struct.ObjectStruct* %0, %struct.ObjectStruct** %2, align 8
  store %struct.ObjectStruct* null, %struct.ObjectStruct** %3, align 8
  %4 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %5 = icmp ne %struct.ObjectStruct* %4, null
  br i1 %5, label %6, label %20

6:                                                ; preds = %1
  %7 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %8 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %7, i32 0, i32 22
  %9 = load %struct.ObjectStruct*, %struct.ObjectStruct** %8, align 8
  store %struct.ObjectStruct* %9, %struct.ObjectStruct** %3, align 8
  br label %10

10:                                               ; preds = %13, %6
  %11 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  %12 = icmp ne %struct.ObjectStruct* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  call void @CalcObject(%struct.ObjectStruct* %14)
  %15 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  call void @Draw_Object(%struct.ObjectStruct* %15)
  %16 = load %struct.ObjectStruct*, %struct.ObjectStruct** %3, align 8
  %17 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %16, i32 0, i32 22
  %18 = load %struct.ObjectStruct*, %struct.ObjectStruct** %17, align 8
  store %struct.ObjectStruct* %18, %struct.ObjectStruct** %3, align 8
  br label %10

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %19, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Draw_All(%struct.ObjectStruct* %0) #0 {
  %2 = alloca %struct.ObjectStruct*, align 8
  store %struct.ObjectStruct* %0, %struct.ObjectStruct** %2, align 8
  %3 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  %4 = icmp ne %struct.ObjectStruct* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  call void @CalcObject(%struct.ObjectStruct* %6)
  br label %7

7:                                                ; preds = %5, %1
  %8 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  call void @Draw_All_Prevs(%struct.ObjectStruct* %8)
  %9 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  call void @Draw_Object(%struct.ObjectStruct* %9)
  %10 = load %struct.ObjectStruct*, %struct.ObjectStruct** %2, align 8
  call void @Draw_All_Nexts(%struct.ObjectStruct* %10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @MultMatrixMatrix([4 x [4 x double]]* %0, [4 x [4 x double]]* %1, [4 x [4 x double]]* %2) #0 {
  %4 = alloca [4 x [4 x double]]*, align 8
  %5 = alloca [4 x [4 x double]]*, align 8
  %6 = alloca [4 x [4 x double]]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store [4 x [4 x double]]* %0, [4 x [4 x double]]** %4, align 8
  store [4 x [4 x double]]* %1, [4 x [4 x double]]** %5, align 8
  store [4 x [4 x double]]* %2, [4 x [4 x double]]** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %63, %3
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %66

13:                                               ; preds = %10
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %59, %13
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %62

17:                                               ; preds = %14
  %18 = load [4 x [4 x double]]*, [4 x [4 x double]]** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %18, i64 0, i64 %20
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x double], [4 x double]* %21, i64 0, i64 %23
  store double 0.000000e+00, double* %24, align 8
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %55, %17
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 4
  br i1 %27, label %28, label %58

28:                                               ; preds = %25
  %29 = load [4 x [4 x double]]*, [4 x [4 x double]]** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %29, i64 0, i64 %31
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x double], [4 x double]* %32, i64 0, i64 %34
  %36 = load double, double* %35, align 8
  %37 = load [4 x [4 x double]]*, [4 x [4 x double]]** %5, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %37, i64 0, i64 %39
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [4 x double], [4 x double]* %40, i64 0, i64 %42
  %44 = load double, double* %43, align 8
  %45 = fmul double %36, %44
  %46 = load [4 x [4 x double]]*, [4 x [4 x double]]** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %46, i64 0, i64 %48
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [4 x double], [4 x double]* %49, i64 0, i64 %51
  %53 = load double, double* %52, align 8
  %54 = fadd double %53, %45
  store double %54, double* %52, align 8
  br label %55

55:                                               ; preds = %28
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %25

58:                                               ; preds = %25
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %14

62:                                               ; preds = %14
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %10

66:                                               ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @MultMatrixHPoint(%struct.HPointStruct* noalias sret %0, [4 x [4 x double]]* %1, %struct.HPointStruct* byval(%struct.HPointStruct) align 8 %2) #0 {
  %4 = alloca [4 x [4 x double]]*, align 8
  store [4 x [4 x double]]* %1, [4 x [4 x double]]** %4, align 8
  %5 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i32 0, i32 0
  %6 = load double, double* %5, align 8
  %7 = load [4 x [4 x double]]*, [4 x [4 x double]]** %4, align 8
  %8 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 0
  %9 = getelementptr inbounds [4 x double], [4 x double]* %8, i64 0, i64 0
  %10 = load double, double* %9, align 8
  %11 = fmul double %6, %10
  %12 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i32 0, i32 1
  %13 = load double, double* %12, align 8
  %14 = load [4 x [4 x double]]*, [4 x [4 x double]]** %4, align 8
  %15 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %14, i64 0, i64 0
  %16 = getelementptr inbounds [4 x double], [4 x double]* %15, i64 0, i64 1
  %17 = load double, double* %16, align 8
  %18 = fmul double %13, %17
  %19 = fadd double %11, %18
  %20 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i32 0, i32 2
  %21 = load double, double* %20, align 8
  %22 = load [4 x [4 x double]]*, [4 x [4 x double]]** %4, align 8
  %23 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %22, i64 0, i64 0
  %24 = getelementptr inbounds [4 x double], [4 x double]* %23, i64 0, i64 2
  %25 = load double, double* %24, align 8
  %26 = fmul double %21, %25
  %27 = fadd double %19, %26
  %28 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i32 0, i32 3
  %29 = load double, double* %28, align 8
  %30 = load [4 x [4 x double]]*, [4 x [4 x double]]** %4, align 8
  %31 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %30, i64 0, i64 0
  %32 = getelementptr inbounds [4 x double], [4 x double]* %31, i64 0, i64 3
  %33 = load double, double* %32, align 8
  %34 = fmul double %29, %33
  %35 = fadd double %27, %34
  %36 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %0, i32 0, i32 0
  store double %35, double* %36, align 8
  %37 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i32 0, i32 0
  %38 = load double, double* %37, align 8
  %39 = load [4 x [4 x double]]*, [4 x [4 x double]]** %4, align 8
  %40 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %39, i64 0, i64 1
  %41 = getelementptr inbounds [4 x double], [4 x double]* %40, i64 0, i64 0
  %42 = load double, double* %41, align 8
  %43 = fmul double %38, %42
  %44 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i32 0, i32 1
  %45 = load double, double* %44, align 8
  %46 = load [4 x [4 x double]]*, [4 x [4 x double]]** %4, align 8
  %47 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %46, i64 0, i64 1
  %48 = getelementptr inbounds [4 x double], [4 x double]* %47, i64 0, i64 1
  %49 = load double, double* %48, align 8
  %50 = fmul double %45, %49
  %51 = fadd double %43, %50
  %52 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i32 0, i32 2
  %53 = load double, double* %52, align 8
  %54 = load [4 x [4 x double]]*, [4 x [4 x double]]** %4, align 8
  %55 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %54, i64 0, i64 1
  %56 = getelementptr inbounds [4 x double], [4 x double]* %55, i64 0, i64 2
  %57 = load double, double* %56, align 8
  %58 = fmul double %53, %57
  %59 = fadd double %51, %58
  %60 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i32 0, i32 3
  %61 = load double, double* %60, align 8
  %62 = load [4 x [4 x double]]*, [4 x [4 x double]]** %4, align 8
  %63 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %62, i64 0, i64 1
  %64 = getelementptr inbounds [4 x double], [4 x double]* %63, i64 0, i64 3
  %65 = load double, double* %64, align 8
  %66 = fmul double %61, %65
  %67 = fadd double %59, %66
  %68 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %0, i32 0, i32 1
  store double %67, double* %68, align 8
  %69 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i32 0, i32 0
  %70 = load double, double* %69, align 8
  %71 = load [4 x [4 x double]]*, [4 x [4 x double]]** %4, align 8
  %72 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %71, i64 0, i64 2
  %73 = getelementptr inbounds [4 x double], [4 x double]* %72, i64 0, i64 0
  %74 = load double, double* %73, align 8
  %75 = fmul double %70, %74
  %76 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i32 0, i32 1
  %77 = load double, double* %76, align 8
  %78 = load [4 x [4 x double]]*, [4 x [4 x double]]** %4, align 8
  %79 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %78, i64 0, i64 2
  %80 = getelementptr inbounds [4 x double], [4 x double]* %79, i64 0, i64 1
  %81 = load double, double* %80, align 8
  %82 = fmul double %77, %81
  %83 = fadd double %75, %82
  %84 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i32 0, i32 2
  %85 = load double, double* %84, align 8
  %86 = load [4 x [4 x double]]*, [4 x [4 x double]]** %4, align 8
  %87 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %86, i64 0, i64 2
  %88 = getelementptr inbounds [4 x double], [4 x double]* %87, i64 0, i64 2
  %89 = load double, double* %88, align 8
  %90 = fmul double %85, %89
  %91 = fadd double %83, %90
  %92 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i32 0, i32 3
  %93 = load double, double* %92, align 8
  %94 = load [4 x [4 x double]]*, [4 x [4 x double]]** %4, align 8
  %95 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %94, i64 0, i64 2
  %96 = getelementptr inbounds [4 x double], [4 x double]* %95, i64 0, i64 3
  %97 = load double, double* %96, align 8
  %98 = fmul double %93, %97
  %99 = fadd double %91, %98
  %100 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %0, i32 0, i32 2
  store double %99, double* %100, align 8
  %101 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i32 0, i32 0
  %102 = load double, double* %101, align 8
  %103 = load [4 x [4 x double]]*, [4 x [4 x double]]** %4, align 8
  %104 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %103, i64 0, i64 3
  %105 = getelementptr inbounds [4 x double], [4 x double]* %104, i64 0, i64 0
  %106 = load double, double* %105, align 8
  %107 = fmul double %102, %106
  %108 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i32 0, i32 1
  %109 = load double, double* %108, align 8
  %110 = load [4 x [4 x double]]*, [4 x [4 x double]]** %4, align 8
  %111 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %110, i64 0, i64 3
  %112 = getelementptr inbounds [4 x double], [4 x double]* %111, i64 0, i64 1
  %113 = load double, double* %112, align 8
  %114 = fmul double %109, %113
  %115 = fadd double %107, %114
  %116 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i32 0, i32 2
  %117 = load double, double* %116, align 8
  %118 = load [4 x [4 x double]]*, [4 x [4 x double]]** %4, align 8
  %119 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %118, i64 0, i64 3
  %120 = getelementptr inbounds [4 x double], [4 x double]* %119, i64 0, i64 2
  %121 = load double, double* %120, align 8
  %122 = fmul double %117, %121
  %123 = fadd double %115, %122
  %124 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i32 0, i32 3
  %125 = load double, double* %124, align 8
  %126 = load [4 x [4 x double]]*, [4 x [4 x double]]** %4, align 8
  %127 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %126, i64 0, i64 3
  %128 = getelementptr inbounds [4 x double], [4 x double]* %127, i64 0, i64 3
  %129 = load double, double* %128, align 8
  %130 = fmul double %125, %129
  %131 = fadd double %123, %130
  %132 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %0, i32 0, i32 3
  store double %131, double* %132, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local [4 x [4 x double]]* @CopyMatrix([4 x [4 x double]]* %0) #0 {
  %2 = alloca [4 x [4 x double]]*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [4 x [4 x double]]*, align 8
  store [4 x [4 x double]]* %0, [4 x [4 x double]]** %2, align 8
  store [4 x [4 x double]]* null, [4 x [4 x double]]** %5, align 8
  %6 = load [4 x [4 x double]]*, [4 x [4 x double]]** %2, align 8
  %7 = icmp ne [4 x [4 x double]]* %6, null
  br i1 %7, label %8, label %42

8:                                                ; preds = %1
  %9 = call noalias i8* @malloc(i64 128) #5
  %10 = bitcast i8* %9 to [4 x [4 x double]]*
  store [4 x [4 x double]]* %10, [4 x [4 x double]]** %5, align 8
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %38, %8
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %14, label %41

14:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %34, %14
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 4
  br i1 %17, label %18, label %37

18:                                               ; preds = %15
  %19 = load [4 x [4 x double]]*, [4 x [4 x double]]** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %19, i64 0, i64 %21
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x double], [4 x double]* %22, i64 0, i64 %24
  %26 = load double, double* %25, align 8
  %27 = load [4 x [4 x double]]*, [4 x [4 x double]]** %5, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %27, i64 0, i64 %29
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [4 x double], [4 x double]* %30, i64 0, i64 %32
  store double %26, double* %33, align 8
  br label %34

34:                                               ; preds = %18
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %15

37:                                               ; preds = %15
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %11

41:                                               ; preds = %11
  br label %42

42:                                               ; preds = %41, %1
  %43 = load [4 x [4 x double]]*, [4 x [4 x double]]** %5, align 8
  ret [4 x [4 x double]]* %43
}

; Function Attrs: noinline nounwind uwtable
define dso_local [4 x [4 x double]]* @IdentMatrix() #0 {
  %1 = alloca [4 x [4 x double]], align 16
  %2 = alloca [4 x [4 x double]]*, align 8
  %3 = bitcast [4 x [4 x double]]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 128, i1 false)
  %4 = bitcast i8* %3 to [4 x [4 x double]]*
  %5 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %4, i32 0, i32 0
  %6 = getelementptr inbounds [4 x double], [4 x double]* %5, i32 0, i32 0
  store double 1.000000e+00, double* %6, align 16
  %7 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %4, i32 0, i32 1
  %8 = getelementptr inbounds [4 x double], [4 x double]* %7, i32 0, i32 1
  store double 1.000000e+00, double* %8, align 8
  %9 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %4, i32 0, i32 2
  %10 = getelementptr inbounds [4 x double], [4 x double]* %9, i32 0, i32 2
  store double 1.000000e+00, double* %10, align 16
  %11 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %4, i32 0, i32 3
  %12 = getelementptr inbounds [4 x double], [4 x double]* %11, i32 0, i32 3
  store double 1.000000e+00, double* %12, align 8
  %13 = call noalias i8* @malloc(i64 128) #5
  %14 = bitcast i8* %13 to [4 x [4 x double]]*
  store [4 x [4 x double]]* %14, [4 x [4 x double]]** %2, align 8
  %15 = call [4 x [4 x double]]* @CopyMatrix([4 x [4 x double]]* %1)
  store [4 x [4 x double]]* %15, [4 x [4 x double]]** %2, align 8
  %16 = load [4 x [4 x double]]*, [4 x [4 x double]]** %2, align 8
  ret [4 x [4 x double]]* %16
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local [4 x [4 x double]]* @TranslateMatrix(double %0, double %1, double %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca [4 x [4 x double]]*, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %8 = call [4 x [4 x double]]* @IdentMatrix()
  store [4 x [4 x double]]* %8, [4 x [4 x double]]** %7, align 8
  %9 = load double, double* %4, align 8
  %10 = load [4 x [4 x double]]*, [4 x [4 x double]]** %7, align 8
  %11 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %10, i64 0, i64 0
  %12 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0, i64 3
  store double %9, double* %12, align 8
  %13 = load double, double* %5, align 8
  %14 = load [4 x [4 x double]]*, [4 x [4 x double]]** %7, align 8
  %15 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %14, i64 0, i64 1
  %16 = getelementptr inbounds [4 x double], [4 x double]* %15, i64 0, i64 3
  store double %13, double* %16, align 8
  %17 = load double, double* %6, align 8
  %18 = load [4 x [4 x double]]*, [4 x [4 x double]]** %7, align 8
  %19 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %18, i64 0, i64 2
  %20 = getelementptr inbounds [4 x double], [4 x double]* %19, i64 0, i64 3
  store double %17, double* %20, align 8
  %21 = load [4 x [4 x double]]*, [4 x [4 x double]]** %7, align 8
  ret [4 x [4 x double]]* %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local [4 x [4 x double]]* @RotateMatrix(double %0, double %1, double %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca [4 x [4 x double]]*, align 8
  %8 = alloca [4 x [4 x double]]*, align 8
  %9 = alloca [4 x [4 x double]]*, align 8
  %10 = alloca [4 x [4 x double]]*, align 8
  %11 = alloca [4 x [4 x double]]*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %18 = load double, double* %4, align 8
  %19 = fmul double 0x3F91DF46A2529E84, %18
  %20 = call double @cos(double %19) #5
  store double %20, double* %12, align 8
  %21 = load double, double* %4, align 8
  %22 = fmul double 0x3F91DF46A2529E84, %21
  %23 = call double @sin(double %22) #5
  store double %23, double* %13, align 8
  %24 = load double, double* %5, align 8
  %25 = fmul double 0x3F91DF46A2529E84, %24
  %26 = call double @cos(double %25) #5
  store double %26, double* %14, align 8
  %27 = load double, double* %5, align 8
  %28 = fmul double 0x3F91DF46A2529E84, %27
  %29 = call double @sin(double %28) #5
  store double %29, double* %15, align 8
  %30 = load double, double* %6, align 8
  %31 = fmul double 0x3F91DF46A2529E84, %30
  %32 = call double @cos(double %31) #5
  store double %32, double* %16, align 8
  %33 = load double, double* %6, align 8
  %34 = fmul double 0x3F91DF46A2529E84, %33
  %35 = call double @sin(double %34) #5
  store double %35, double* %17, align 8
  %36 = call [4 x [4 x double]]* @IdentMatrix()
  store [4 x [4 x double]]* %36, [4 x [4 x double]]** %7, align 8
  %37 = call [4 x [4 x double]]* @IdentMatrix()
  store [4 x [4 x double]]* %37, [4 x [4 x double]]** %8, align 8
  %38 = call [4 x [4 x double]]* @IdentMatrix()
  store [4 x [4 x double]]* %38, [4 x [4 x double]]** %9, align 8
  %39 = call [4 x [4 x double]]* @IdentMatrix()
  store [4 x [4 x double]]* %39, [4 x [4 x double]]** %10, align 8
  %40 = call [4 x [4 x double]]* @IdentMatrix()
  store [4 x [4 x double]]* %40, [4 x [4 x double]]** %11, align 8
  %41 = load double, double* %12, align 8
  %42 = load [4 x [4 x double]]*, [4 x [4 x double]]** %7, align 8
  %43 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %42, i64 0, i64 1
  %44 = getelementptr inbounds [4 x double], [4 x double]* %43, i64 0, i64 1
  store double %41, double* %44, align 8
  %45 = load double, double* %13, align 8
  %46 = fneg double %45
  %47 = load [4 x [4 x double]]*, [4 x [4 x double]]** %7, align 8
  %48 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %47, i64 0, i64 1
  %49 = getelementptr inbounds [4 x double], [4 x double]* %48, i64 0, i64 2
  store double %46, double* %49, align 8
  %50 = load double, double* %13, align 8
  %51 = load [4 x [4 x double]]*, [4 x [4 x double]]** %7, align 8
  %52 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %51, i64 0, i64 2
  %53 = getelementptr inbounds [4 x double], [4 x double]* %52, i64 0, i64 1
  store double %50, double* %53, align 8
  %54 = load double, double* %12, align 8
  %55 = load [4 x [4 x double]]*, [4 x [4 x double]]** %7, align 8
  %56 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %55, i64 0, i64 2
  %57 = getelementptr inbounds [4 x double], [4 x double]* %56, i64 0, i64 2
  store double %54, double* %57, align 8
  %58 = load double, double* %14, align 8
  %59 = load [4 x [4 x double]]*, [4 x [4 x double]]** %8, align 8
  %60 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %59, i64 0, i64 0
  %61 = getelementptr inbounds [4 x double], [4 x double]* %60, i64 0, i64 0
  store double %58, double* %61, align 8
  %62 = load double, double* %15, align 8
  %63 = load [4 x [4 x double]]*, [4 x [4 x double]]** %8, align 8
  %64 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %63, i64 0, i64 0
  %65 = getelementptr inbounds [4 x double], [4 x double]* %64, i64 0, i64 2
  store double %62, double* %65, align 8
  %66 = load double, double* %15, align 8
  %67 = fneg double %66
  %68 = load [4 x [4 x double]]*, [4 x [4 x double]]** %8, align 8
  %69 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %68, i64 0, i64 2
  %70 = getelementptr inbounds [4 x double], [4 x double]* %69, i64 0, i64 0
  store double %67, double* %70, align 8
  %71 = load double, double* %14, align 8
  %72 = load [4 x [4 x double]]*, [4 x [4 x double]]** %8, align 8
  %73 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %72, i64 0, i64 2
  %74 = getelementptr inbounds [4 x double], [4 x double]* %73, i64 0, i64 2
  store double %71, double* %74, align 8
  %75 = load double, double* %16, align 8
  %76 = load [4 x [4 x double]]*, [4 x [4 x double]]** %9, align 8
  %77 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %76, i64 0, i64 0
  %78 = getelementptr inbounds [4 x double], [4 x double]* %77, i64 0, i64 0
  store double %75, double* %78, align 8
  %79 = load double, double* %17, align 8
  %80 = fneg double %79
  %81 = load [4 x [4 x double]]*, [4 x [4 x double]]** %9, align 8
  %82 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %81, i64 0, i64 0
  %83 = getelementptr inbounds [4 x double], [4 x double]* %82, i64 0, i64 1
  store double %80, double* %83, align 8
  %84 = load double, double* %17, align 8
  %85 = load [4 x [4 x double]]*, [4 x [4 x double]]** %9, align 8
  %86 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %85, i64 0, i64 1
  %87 = getelementptr inbounds [4 x double], [4 x double]* %86, i64 0, i64 0
  store double %84, double* %87, align 8
  %88 = load double, double* %16, align 8
  %89 = load [4 x [4 x double]]*, [4 x [4 x double]]** %9, align 8
  %90 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %89, i64 0, i64 1
  %91 = getelementptr inbounds [4 x double], [4 x double]* %90, i64 0, i64 1
  store double %88, double* %91, align 8
  %92 = load [4 x [4 x double]]*, [4 x [4 x double]]** %7, align 8
  %93 = load [4 x [4 x double]]*, [4 x [4 x double]]** %8, align 8
  %94 = load [4 x [4 x double]]*, [4 x [4 x double]]** %10, align 8
  call void @MultMatrixMatrix([4 x [4 x double]]* %92, [4 x [4 x double]]* %93, [4 x [4 x double]]* %94)
  %95 = load [4 x [4 x double]]*, [4 x [4 x double]]** %10, align 8
  %96 = load [4 x [4 x double]]*, [4 x [4 x double]]** %9, align 8
  %97 = load [4 x [4 x double]]*, [4 x [4 x double]]** %11, align 8
  call void @MultMatrixMatrix([4 x [4 x double]]* %95, [4 x [4 x double]]* %96, [4 x [4 x double]]* %97)
  %98 = load [4 x [4 x double]]*, [4 x [4 x double]]** %11, align 8
  ret [4 x [4 x double]]* %98
}

; Function Attrs: noinline nounwind uwtable
define dso_local [4 x [4 x double]]* @ScaleMatrix(double %0, double %1, double %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca [4 x [4 x double]]*, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %8 = call [4 x [4 x double]]* @IdentMatrix()
  store [4 x [4 x double]]* %8, [4 x [4 x double]]** %7, align 8
  %9 = load double, double* %4, align 8
  %10 = load [4 x [4 x double]]*, [4 x [4 x double]]** %7, align 8
  %11 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %10, i64 0, i64 0
  %12 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0, i64 0
  store double %9, double* %12, align 8
  %13 = load double, double* %5, align 8
  %14 = load [4 x [4 x double]]*, [4 x [4 x double]]** %7, align 8
  %15 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %14, i64 0, i64 1
  %16 = getelementptr inbounds [4 x double], [4 x double]* %15, i64 0, i64 1
  store double %13, double* %16, align 8
  %17 = load double, double* %6, align 8
  %18 = load [4 x [4 x double]]*, [4 x [4 x double]]** %7, align 8
  %19 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %18, i64 0, i64 2
  %20 = getelementptr inbounds [4 x double], [4 x double]* %19, i64 0, i64 2
  store double %17, double* %20, align 8
  %21 = load [4 x [4 x double]]*, [4 x [4 x double]]** %7, align 8
  ret [4 x [4 x double]]* %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @RotatePoint(%struct.ObjPointStruct* noalias sret %0, %struct.ObjPointStruct* byval(%struct.ObjPointStruct) align 8 %1, double %2, double %3, double %4) #0 {
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca [4 x [4 x double]]*, align 8
  %10 = alloca %struct.HPointStruct, align 8
  %11 = alloca %struct.HPointStruct, align 8
  %12 = alloca %struct.HPointStruct, align 8
  store double %2, double* %6, align 8
  store double %3, double* %7, align 8
  store double %4, double* %8, align 8
  call void @PointToHPoint(%struct.HPointStruct* sret %11, %struct.ObjPointStruct* byval(%struct.ObjPointStruct) align 8 %1)
  %13 = bitcast %struct.HPointStruct* %10 to i8*
  %14 = bitcast %struct.HPointStruct* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 32, i1 false)
  %15 = load double, double* %6, align 8
  %16 = load double, double* %7, align 8
  %17 = load double, double* %8, align 8
  %18 = call [4 x [4 x double]]* @RotateMatrix(double %15, double %16, double %17)
  store [4 x [4 x double]]* %18, [4 x [4 x double]]** %9, align 8
  %19 = load [4 x [4 x double]]*, [4 x [4 x double]]** %9, align 8
  call void @MultMatrixHPoint(%struct.HPointStruct* sret %12, [4 x [4 x double]]* %19, %struct.HPointStruct* byval(%struct.HPointStruct) align 8 %10)
  %20 = bitcast %struct.HPointStruct* %10 to i8*
  %21 = bitcast %struct.HPointStruct* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 32, i1 false)
  %22 = bitcast %struct.ObjPointStruct* %0 to i8*
  %23 = bitcast %struct.ObjPointStruct* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 48, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @PrintMatrix([4 x double]* %0) #0 {
  %2 = alloca [4 x double]*, align 8
  store [4 x double]* %0, [4 x double]** %2, align 8
  %3 = load [4 x double]*, [4 x double]** %2, align 8
  %4 = getelementptr inbounds [4 x double], [4 x double]* %3, i64 0
  %5 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, i64 0
  %6 = load double, double* %5, align 8
  %7 = load [4 x double]*, [4 x double]** %2, align 8
  %8 = getelementptr inbounds [4 x double], [4 x double]* %7, i64 0
  %9 = getelementptr inbounds [4 x double], [4 x double]* %8, i64 0, i64 1
  %10 = load double, double* %9, align 8
  %11 = load [4 x double]*, [4 x double]** %2, align 8
  %12 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0
  %13 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 2
  %14 = load double, double* %13, align 8
  %15 = load [4 x double]*, [4 x double]** %2, align 8
  %16 = getelementptr inbounds [4 x double], [4 x double]* %15, i64 0
  %17 = getelementptr inbounds [4 x double], [4 x double]* %16, i64 0, i64 3
  %18 = load double, double* %17, align 8
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i64 0, i64 0), double %6, double %10, double %14, double %18)
  %20 = load [4 x double]*, [4 x double]** %2, align 8
  %21 = getelementptr inbounds [4 x double], [4 x double]* %20, i64 1
  %22 = getelementptr inbounds [4 x double], [4 x double]* %21, i64 0, i64 0
  %23 = load double, double* %22, align 8
  %24 = load [4 x double]*, [4 x double]** %2, align 8
  %25 = getelementptr inbounds [4 x double], [4 x double]* %24, i64 1
  %26 = getelementptr inbounds [4 x double], [4 x double]* %25, i64 0, i64 1
  %27 = load double, double* %26, align 8
  %28 = load [4 x double]*, [4 x double]** %2, align 8
  %29 = getelementptr inbounds [4 x double], [4 x double]* %28, i64 1
  %30 = getelementptr inbounds [4 x double], [4 x double]* %29, i64 0, i64 2
  %31 = load double, double* %30, align 8
  %32 = load [4 x double]*, [4 x double]** %2, align 8
  %33 = getelementptr inbounds [4 x double], [4 x double]* %32, i64 1
  %34 = getelementptr inbounds [4 x double], [4 x double]* %33, i64 0, i64 3
  %35 = load double, double* %34, align 8
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1.25, i64 0, i64 0), double %23, double %27, double %31, double %35)
  %37 = load [4 x double]*, [4 x double]** %2, align 8
  %38 = getelementptr inbounds [4 x double], [4 x double]* %37, i64 2
  %39 = getelementptr inbounds [4 x double], [4 x double]* %38, i64 0, i64 0
  %40 = load double, double* %39, align 8
  %41 = load [4 x double]*, [4 x double]** %2, align 8
  %42 = getelementptr inbounds [4 x double], [4 x double]* %41, i64 2
  %43 = getelementptr inbounds [4 x double], [4 x double]* %42, i64 0, i64 1
  %44 = load double, double* %43, align 8
  %45 = load [4 x double]*, [4 x double]** %2, align 8
  %46 = getelementptr inbounds [4 x double], [4 x double]* %45, i64 2
  %47 = getelementptr inbounds [4 x double], [4 x double]* %46, i64 0, i64 2
  %48 = load double, double* %47, align 8
  %49 = load [4 x double]*, [4 x double]** %2, align 8
  %50 = getelementptr inbounds [4 x double], [4 x double]* %49, i64 2
  %51 = getelementptr inbounds [4 x double], [4 x double]* %50, i64 0, i64 3
  %52 = load double, double* %51, align 8
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1.25, i64 0, i64 0), double %40, double %44, double %48, double %52)
  %54 = load [4 x double]*, [4 x double]** %2, align 8
  %55 = getelementptr inbounds [4 x double], [4 x double]* %54, i64 3
  %56 = getelementptr inbounds [4 x double], [4 x double]* %55, i64 0, i64 0
  %57 = load double, double* %56, align 8
  %58 = load [4 x double]*, [4 x double]** %2, align 8
  %59 = getelementptr inbounds [4 x double], [4 x double]* %58, i64 3
  %60 = getelementptr inbounds [4 x double], [4 x double]* %59, i64 0, i64 1
  %61 = load double, double* %60, align 8
  %62 = load [4 x double]*, [4 x double]** %2, align 8
  %63 = getelementptr inbounds [4 x double], [4 x double]* %62, i64 3
  %64 = getelementptr inbounds [4 x double], [4 x double]* %63, i64 0, i64 2
  %65 = load double, double* %64, align 8
  %66 = load [4 x double]*, [4 x double]** %2, align 8
  %67 = getelementptr inbounds [4 x double], [4 x double]* %66, i64 3
  %68 = getelementptr inbounds [4 x double], [4 x double]* %67, i64 0, i64 3
  %69 = load double, double* %68, align 8
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2.26, i64 0, i64 0), double %57, double %61, double %65, double %69)
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind }

!llvm.ident = !{!0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
