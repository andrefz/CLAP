; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.root = type { %struct.demand, double, double, %struct.demand, double, double, [11 x %struct.lateral*] }
%struct.demand = type { double, double }
%struct.lateral = type { %struct.demand, double, double, double, double, %struct.lateral*, %struct.branch* }
%struct.branch = type { %struct.demand, double, double, double, double, %struct.branch*, [12 x %struct.leaf*] }
%struct.leaf = type { %struct.demand, double, double }

@P = internal global double 1.000000e+00, align 8
@Q = internal global double 1.000000e+00, align 8
@map_P = dso_local global [36 x double] [double 0x40C1181BEA684F5B, double 0x40C07F0DA7604E16, double 0x40BFABFD9D391847, double 0x40BE60310B0328D4, double 0x40BD1FEBA71E5A92, double 0x40BBEA9A288E9D1A, double 0x40BABFB582C7FDD2, double 0x40B99EBBF4CB7FAC, double 0x40B88736A038C964, double 0x40B778B3C360D71F, double 0x40B672C94328F04A, double 0x40B57514089E1EB9, double 0x40B47F34D23EEFB3, double 0x40B390D3FC5A7B6E, double 0x40B2A99DA6100E5A, double 0x40B1C9423C8414CD, double 0x40B0EF7852126044, double 0x40B01BF8B737F64D, double 0x40AE9D00FE3CB161, double 0x40AD0DA29EE5A2A0, double 0x40AB895E04336B67, double 0x40AA0FC0CE2E9912, double 0x40A8A06094DADCCA, double 0x40A73AD7C3FB86B8, double 0x40A5DEC3C0D24B44, double 0x40A48BC8FB588C9A, double 0x40A34190CF0E1AA0, double 0x40A1FFC72F2042DA, double 0x40A0C61BD86709CF, double 0x409F2887F539C232, double 0x409CD3F0FEE2D225, double 0x409A8DE67460B634, double 0x409855E56564BC4B, double 0x40962B71216B1250, double 0x40940E149C150531, double 0x4091FD5A1DC6F685], align 16
@map_Q = dso_local global [36 x double] [double 0x409BA362E889ECA8, double 0x409AA8EAFF70494F, double 0x40999503F74DEE8F, double 0x4098868CC01E4645, double 0x409781AD980668F2, double 0x409685E9623CE107, double 0x409592CD79EE94AF, double 0x4094A7EBF8969061, double 0x4093C4E03CDEBECE, double 0x4092E94A29AF0C2E, double 0x409214D02F7EFC3D, double 0x4091471EBFB3E82D, double 0x40907FE5AE0BD2AD, double 0x408F7DB67C259DFD, double 0x408E0771F56A7AC8, double 0x408C9C7843A661C3, double 0x408B3C4E3BE519B1, double 0x4089E67CAFB4857B, double 0x40889A93A84B632B, double 0x4087582AE34A4551, double 0x40861EDDF459365B, double 0x4084EE4D79ADE34A, double 0x4083C620BE304940, double 0x4082A6032A5B597E, double 0x40818DA2BF63B63B, double 0x40807CB35D7322B7, double 0x407EE5DA1130EEA4, double 0x407CE0140842DE66, double 0x407AE78F8D1D2340, double 0x4078FBD09B21F3B5, double 0x40771C616F19E935, double 0x407548CDF9E28D31, double 0x407380A9F7CF2EFD, double 0x4071C38E61319E33, double 0x4070111A83829227, double 0x406CD1DAA162D57C], align 16
@.str = private unnamed_addr constant [21 x i8] c"Past initialization\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Built tree\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"COMPUTED TREE\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"TR=%4.2f, TI=%4.2f, P0=%4.2f, Q0=%4.2f\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"D TR-%4.2f, TI=%4.2f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.root* @build_tree() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.root*, align 8
  %3 = alloca %struct.lateral*, align 8
  %4 = call i8* @malloc(i32 152)
  %5 = bitcast i8* %4 to %struct.root*
  store %struct.root* %5, %struct.root** %2, align 8
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %19, %0
  %7 = load i32, i32* %1, align 4
  %8 = icmp slt i32 %7, 11
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = load i32, i32* %1, align 4
  %11 = mul nsw i32 %10, 21
  %12 = call %struct.lateral* @build_lateral(i32 %11, i32 21)
  store %struct.lateral* %12, %struct.lateral** %3, align 8
  %13 = load %struct.lateral*, %struct.lateral** %3, align 8
  %14 = load %struct.root*, %struct.root** %2, align 8
  %15 = getelementptr inbounds %struct.root, %struct.root* %14, i32 0, i32 6
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [11 x %struct.lateral*], [11 x %struct.lateral*]* %15, i64 0, i64 %17
  store %struct.lateral* %13, %struct.lateral** %18, align 8
  br label %19

19:                                               ; preds = %9
  %20 = load i32, i32* %1, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %1, align 4
  br label %6

22:                                               ; preds = %6
  %23 = load %struct.root*, %struct.root** %2, align 8
  %24 = getelementptr inbounds %struct.root, %struct.root* %23, i32 0, i32 1
  store double 8.000000e-01, double* %24, align 8
  %25 = load %struct.root*, %struct.root** %2, align 8
  %26 = getelementptr inbounds %struct.root, %struct.root* %25, i32 0, i32 2
  store double 1.600000e-01, double* %26, align 8
  %27 = load %struct.root*, %struct.root** %2, align 8
  ret %struct.root* %27
}

declare dso_local i8* @malloc(i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.lateral* @build_lateral(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.lateral*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.lateral*, align 8
  %7 = alloca %struct.branch*, align 8
  %8 = alloca %struct.lateral*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.lateral* null, %struct.lateral** %3, align 8
  br label %40

12:                                               ; preds = %2
  %13 = call i8* @malloc(i32 64)
  %14 = bitcast i8* %13 to %struct.lateral*
  store %struct.lateral* %14, %struct.lateral** %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = sub nsw i32 %16, 1
  %18 = call %struct.lateral* @build_lateral(i32 %15, i32 %17)
  store %struct.lateral* %18, %struct.lateral** %8, align 8
  %19 = load i32, i32* %4, align 4
  %20 = mul nsw i32 %19, 6
  %21 = load i32, i32* %5, align 4
  %22 = sub nsw i32 %21, 1
  %23 = mul nsw i32 %22, 6
  %24 = call %struct.branch* @build_branch(i32 %20, i32 %23, i32 6)
  store %struct.branch* %24, %struct.branch** %7, align 8
  %25 = load %struct.lateral*, %struct.lateral** %8, align 8
  %26 = load %struct.lateral*, %struct.lateral** %6, align 8
  %27 = getelementptr inbounds %struct.lateral, %struct.lateral* %26, i32 0, i32 5
  store %struct.lateral* %25, %struct.lateral** %27, align 8
  %28 = load %struct.branch*, %struct.branch** %7, align 8
  %29 = load %struct.lateral*, %struct.lateral** %6, align 8
  %30 = getelementptr inbounds %struct.lateral, %struct.lateral* %29, i32 0, i32 6
  store %struct.branch* %28, %struct.branch** %30, align 8
  %31 = load %struct.lateral*, %struct.lateral** %6, align 8
  %32 = getelementptr inbounds %struct.lateral, %struct.lateral* %31, i32 0, i32 3
  store double 0x3ECBF647612F3696, double* %32, align 8
  %33 = load %struct.lateral*, %struct.lateral** %6, align 8
  %34 = getelementptr inbounds %struct.lateral, %struct.lateral* %33, i32 0, i32 4
  store double 0x3EB0C6F7A0B5ED8D, double* %34, align 8
  %35 = load %struct.lateral*, %struct.lateral** %6, align 8
  %36 = getelementptr inbounds %struct.lateral, %struct.lateral* %35, i32 0, i32 1
  store double 0.000000e+00, double* %36, align 8
  %37 = load %struct.lateral*, %struct.lateral** %6, align 8
  %38 = getelementptr inbounds %struct.lateral, %struct.lateral* %37, i32 0, i32 2
  store double 0.000000e+00, double* %38, align 8
  %39 = load %struct.lateral*, %struct.lateral** %6, align 8
  store %struct.lateral* %39, %struct.lateral** %3, align 8
  br label %40

40:                                               ; preds = %12, %11
  %41 = load %struct.lateral*, %struct.lateral** %3, align 8
  ret %struct.lateral* %41
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.branch* @build_branch(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.branch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.leaf*, align 8
  %9 = alloca %struct.branch*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store %struct.branch* null, %struct.branch** %4, align 8
  br label %47

13:                                               ; preds = %3
  %14 = call i8* @malloc(i32 152)
  %15 = bitcast i8* %14 to %struct.branch*
  store %struct.branch* %15, %struct.branch** %9, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = sub nsw i32 %18, 1
  %20 = call %struct.branch* @build_branch(i32 %16, i32 %17, i32 %19)
  %21 = load %struct.branch*, %struct.branch** %9, align 8
  %22 = getelementptr inbounds %struct.branch, %struct.branch* %21, i32 0, i32 5
  store %struct.branch* %20, %struct.branch** %22, align 8
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %34, %13
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 12
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = call %struct.leaf* @build_leaf()
  store %struct.leaf* %27, %struct.leaf** %8, align 8
  %28 = load %struct.leaf*, %struct.leaf** %8, align 8
  %29 = load %struct.branch*, %struct.branch** %9, align 8
  %30 = getelementptr inbounds %struct.branch, %struct.branch* %29, i32 0, i32 6
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [12 x %struct.leaf*], [12 x %struct.leaf*]* %30, i64 0, i64 %32
  store %struct.leaf* %28, %struct.leaf** %33, align 8
  br label %34

34:                                               ; preds = %26
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %23

37:                                               ; preds = %23
  %38 = load %struct.branch*, %struct.branch** %9, align 8
  %39 = getelementptr inbounds %struct.branch, %struct.branch* %38, i32 0, i32 3
  store double 1.000000e-04, double* %39, align 8
  %40 = load %struct.branch*, %struct.branch** %9, align 8
  %41 = getelementptr inbounds %struct.branch, %struct.branch* %40, i32 0, i32 4
  store double 2.000000e-05, double* %41, align 8
  %42 = load %struct.branch*, %struct.branch** %9, align 8
  %43 = getelementptr inbounds %struct.branch, %struct.branch* %42, i32 0, i32 1
  store double 0.000000e+00, double* %43, align 8
  %44 = load %struct.branch*, %struct.branch** %9, align 8
  %45 = getelementptr inbounds %struct.branch, %struct.branch* %44, i32 0, i32 2
  store double 0.000000e+00, double* %45, align 8
  %46 = load %struct.branch*, %struct.branch** %9, align 8
  store %struct.branch* %46, %struct.branch** %4, align 8
  br label %47

47:                                               ; preds = %37, %12
  %48 = load %struct.branch*, %struct.branch** %4, align 8
  ret %struct.branch* %48
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.leaf* @build_leaf() #0 {
  %1 = alloca %struct.leaf*, align 8
  %2 = call i8* @malloc(i32 32)
  %3 = bitcast i8* %2 to %struct.leaf*
  store %struct.leaf* %3, %struct.leaf** %1, align 8
  %4 = load %struct.leaf*, %struct.leaf** %1, align 8
  %5 = getelementptr inbounds %struct.leaf, %struct.leaf* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.demand, %struct.demand* %5, i32 0, i32 0
  store double 1.000000e+00, double* %6, align 8
  %7 = load %struct.leaf*, %struct.leaf** %1, align 8
  %8 = getelementptr inbounds %struct.leaf, %struct.leaf* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.demand, %struct.demand* %8, i32 0, i32 1
  store double 1.000000e+00, double* %9, align 8
  %10 = load %struct.leaf*, %struct.leaf** %1, align 8
  ret %struct.leaf* %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Compute_Tree(%struct.root* %0) #0 {
  %2 = alloca %struct.root*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.lateral*, align 8
  %5 = alloca %struct.demand, align 8
  %6 = alloca %struct.demand, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.demand, align 8
  store %struct.root* %0, %struct.root** %2, align 8
  %10 = getelementptr inbounds %struct.demand, %struct.demand* %6, i32 0, i32 0
  store double 0.000000e+00, double* %10, align 8
  %11 = getelementptr inbounds %struct.demand, %struct.demand* %6, i32 0, i32 1
  store double 0.000000e+00, double* %11, align 8
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %51, %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 11
  br i1 %14, label %15, label %54

15:                                               ; preds = %12
  %16 = load %struct.root*, %struct.root** %2, align 8
  %17 = getelementptr inbounds %struct.root, %struct.root* %16, i32 0, i32 6
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [11 x %struct.lateral*], [11 x %struct.lateral*]* %17, i64 0, i64 %19
  %21 = load %struct.lateral*, %struct.lateral** %20, align 8
  store %struct.lateral* %21, %struct.lateral** %4, align 8
  %22 = load %struct.root*, %struct.root** %2, align 8
  %23 = getelementptr inbounds %struct.root, %struct.root* %22, i32 0, i32 1
  %24 = load double, double* %23, align 8
  store double %24, double* %7, align 8
  %25 = load %struct.root*, %struct.root** %2, align 8
  %26 = getelementptr inbounds %struct.root, %struct.root* %25, i32 0, i32 2
  %27 = load double, double* %26, align 8
  store double %27, double* %8, align 8
  %28 = load %struct.lateral*, %struct.lateral** %4, align 8
  %29 = load double, double* %7, align 8
  %30 = load double, double* %8, align 8
  %31 = load double, double* %7, align 8
  %32 = load double, double* %8, align 8
  %33 = call { double, double } @Compute_Lateral(%struct.lateral* %28, double %29, double %30, double %31, double %32)
  %34 = bitcast %struct.demand* %9 to { double, double }*
  %35 = getelementptr inbounds { double, double }, { double, double }* %34, i32 0, i32 0
  %36 = extractvalue { double, double } %33, 0
  store double %36, double* %35, align 8
  %37 = getelementptr inbounds { double, double }, { double, double }* %34, i32 0, i32 1
  %38 = extractvalue { double, double } %33, 1
  store double %38, double* %37, align 8
  %39 = bitcast %struct.demand* %5 to i8*
  %40 = bitcast %struct.demand* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 16, i1 false)
  %41 = getelementptr inbounds %struct.demand, %struct.demand* %5, i32 0, i32 0
  %42 = load double, double* %41, align 8
  %43 = getelementptr inbounds %struct.demand, %struct.demand* %6, i32 0, i32 0
  %44 = load double, double* %43, align 8
  %45 = fadd double %44, %42
  store double %45, double* %43, align 8
  %46 = getelementptr inbounds %struct.demand, %struct.demand* %5, i32 0, i32 1
  %47 = load double, double* %46, align 8
  %48 = getelementptr inbounds %struct.demand, %struct.demand* %6, i32 0, i32 1
  %49 = load double, double* %48, align 8
  %50 = fadd double %49, %47
  store double %50, double* %48, align 8
  br label %51

51:                                               ; preds = %15
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %12

54:                                               ; preds = %12
  %55 = getelementptr inbounds %struct.demand, %struct.demand* %6, i32 0, i32 0
  %56 = load double, double* %55, align 8
  %57 = load %struct.root*, %struct.root** %2, align 8
  %58 = getelementptr inbounds %struct.root, %struct.root* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.demand, %struct.demand* %58, i32 0, i32 0
  store double %56, double* %59, align 8
  %60 = getelementptr inbounds %struct.demand, %struct.demand* %6, i32 0, i32 1
  %61 = load double, double* %60, align 8
  %62 = load %struct.root*, %struct.root** %2, align 8
  %63 = getelementptr inbounds %struct.root, %struct.root* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.demand, %struct.demand* %63, i32 0, i32 1
  store double %61, double* %64, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local { double, double } @Compute_Lateral(%struct.lateral* %0, double %1, double %2, double %3, double %4) #0 {
  %6 = alloca %struct.demand, align 8
  %7 = alloca %struct.lateral*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca %struct.demand, align 8
  %13 = alloca %struct.demand, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca %struct.lateral*, align 8
  %21 = alloca %struct.branch*, align 8
  %22 = alloca %struct.demand, align 8
  %23 = alloca %struct.demand, align 8
  store %struct.lateral* %0, %struct.lateral** %7, align 8
  store double %1, double* %8, align 8
  store double %2, double* %9, align 8
  store double %3, double* %10, align 8
  store double %4, double* %11, align 8
  %24 = load double, double* %10, align 8
  %25 = load %struct.lateral*, %struct.lateral** %7, align 8
  %26 = getelementptr inbounds %struct.lateral, %struct.lateral* %25, i32 0, i32 1
  %27 = load double, double* %26, align 8
  %28 = load double, double* %8, align 8
  %29 = load double, double* %9, align 8
  %30 = load %struct.lateral*, %struct.lateral** %7, align 8
  %31 = getelementptr inbounds %struct.lateral, %struct.lateral* %30, i32 0, i32 4
  %32 = load double, double* %31, align 8
  %33 = fmul double %29, %32
  %34 = load %struct.lateral*, %struct.lateral** %7, align 8
  %35 = getelementptr inbounds %struct.lateral, %struct.lateral* %34, i32 0, i32 3
  %36 = load double, double* %35, align 8
  %37 = fdiv double %33, %36
  %38 = fadd double %28, %37
  %39 = fmul double %27, %38
  %40 = fadd double %24, %39
  store double %40, double* %14, align 8
  %41 = load double, double* %11, align 8
  %42 = load %struct.lateral*, %struct.lateral** %7, align 8
  %43 = getelementptr inbounds %struct.lateral, %struct.lateral* %42, i32 0, i32 2
  %44 = load double, double* %43, align 8
  %45 = load double, double* %9, align 8
  %46 = load double, double* %8, align 8
  %47 = load %struct.lateral*, %struct.lateral** %7, align 8
  %48 = getelementptr inbounds %struct.lateral, %struct.lateral* %47, i32 0, i32 3
  %49 = load double, double* %48, align 8
  %50 = fmul double %46, %49
  %51 = load %struct.lateral*, %struct.lateral** %7, align 8
  %52 = getelementptr inbounds %struct.lateral, %struct.lateral* %51, i32 0, i32 4
  %53 = load double, double* %52, align 8
  %54 = fdiv double %50, %53
  %55 = fadd double %45, %54
  %56 = fmul double %44, %55
  %57 = fadd double %41, %56
  store double %57, double* %15, align 8
  %58 = load %struct.lateral*, %struct.lateral** %7, align 8
  %59 = getelementptr inbounds %struct.lateral, %struct.lateral* %58, i32 0, i32 5
  %60 = load %struct.lateral*, %struct.lateral** %59, align 8
  store %struct.lateral* %60, %struct.lateral** %20, align 8
  %61 = load %struct.lateral*, %struct.lateral** %20, align 8
  %62 = icmp ne %struct.lateral* %61, null
  br i1 %62, label %63, label %77

63:                                               ; preds = %5
  %64 = load %struct.lateral*, %struct.lateral** %20, align 8
  %65 = load double, double* %8, align 8
  %66 = load double, double* %9, align 8
  %67 = load double, double* %14, align 8
  %68 = load double, double* %15, align 8
  %69 = call { double, double } @Compute_Lateral(%struct.lateral* %64, double %65, double %66, double %67, double %68)
  %70 = bitcast %struct.demand* %22 to { double, double }*
  %71 = getelementptr inbounds { double, double }, { double, double }* %70, i32 0, i32 0
  %72 = extractvalue { double, double } %69, 0
  store double %72, double* %71, align 8
  %73 = getelementptr inbounds { double, double }, { double, double }* %70, i32 0, i32 1
  %74 = extractvalue { double, double } %69, 1
  store double %74, double* %73, align 8
  %75 = bitcast %struct.demand* %12 to i8*
  %76 = bitcast %struct.demand* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %75, i8* align 8 %76, i64 16, i1 false)
  br label %77

77:                                               ; preds = %63, %5
  %78 = load %struct.lateral*, %struct.lateral** %7, align 8
  %79 = getelementptr inbounds %struct.lateral, %struct.lateral* %78, i32 0, i32 6
  %80 = load %struct.branch*, %struct.branch** %79, align 8
  store %struct.branch* %80, %struct.branch** %21, align 8
  %81 = load %struct.branch*, %struct.branch** %21, align 8
  %82 = load double, double* %8, align 8
  %83 = load double, double* %9, align 8
  %84 = load double, double* %14, align 8
  %85 = load double, double* %15, align 8
  %86 = call { double, double } @Compute_Branch(%struct.branch* %81, double %82, double %83, double %84, double %85)
  %87 = bitcast %struct.demand* %23 to { double, double }*
  %88 = getelementptr inbounds { double, double }, { double, double }* %87, i32 0, i32 0
  %89 = extractvalue { double, double } %86, 0
  store double %89, double* %88, align 8
  %90 = getelementptr inbounds { double, double }, { double, double }* %87, i32 0, i32 1
  %91 = extractvalue { double, double } %86, 1
  store double %91, double* %90, align 8
  %92 = bitcast %struct.demand* %13 to i8*
  %93 = bitcast %struct.demand* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %92, i8* align 8 %93, i64 16, i1 false)
  %94 = load %struct.lateral*, %struct.lateral** %20, align 8
  %95 = icmp ne %struct.lateral* %94, null
  br i1 %95, label %96, label %113

96:                                               ; preds = %77
  %97 = getelementptr inbounds %struct.demand, %struct.demand* %12, i32 0, i32 0
  %98 = load double, double* %97, align 8
  %99 = getelementptr inbounds %struct.demand, %struct.demand* %13, i32 0, i32 0
  %100 = load double, double* %99, align 8
  %101 = fadd double %98, %100
  %102 = load %struct.lateral*, %struct.lateral** %7, align 8
  %103 = getelementptr inbounds %struct.lateral, %struct.lateral* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.demand, %struct.demand* %103, i32 0, i32 0
  store double %101, double* %104, align 8
  %105 = getelementptr inbounds %struct.demand, %struct.demand* %12, i32 0, i32 1
  %106 = load double, double* %105, align 8
  %107 = getelementptr inbounds %struct.demand, %struct.demand* %13, i32 0, i32 1
  %108 = load double, double* %107, align 8
  %109 = fadd double %106, %108
  %110 = load %struct.lateral*, %struct.lateral** %7, align 8
  %111 = getelementptr inbounds %struct.lateral, %struct.lateral* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.demand, %struct.demand* %111, i32 0, i32 1
  store double %109, double* %112, align 8
  br label %124

113:                                              ; preds = %77
  %114 = getelementptr inbounds %struct.demand, %struct.demand* %13, i32 0, i32 0
  %115 = load double, double* %114, align 8
  %116 = load %struct.lateral*, %struct.lateral** %7, align 8
  %117 = getelementptr inbounds %struct.lateral, %struct.lateral* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.demand, %struct.demand* %117, i32 0, i32 0
  store double %115, double* %118, align 8
  %119 = getelementptr inbounds %struct.demand, %struct.demand* %13, i32 0, i32 1
  %120 = load double, double* %119, align 8
  %121 = load %struct.lateral*, %struct.lateral** %7, align 8
  %122 = getelementptr inbounds %struct.lateral, %struct.lateral* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.demand, %struct.demand* %122, i32 0, i32 1
  store double %120, double* %123, align 8
  br label %124

124:                                              ; preds = %113, %96
  %125 = load %struct.lateral*, %struct.lateral** %7, align 8
  %126 = getelementptr inbounds %struct.lateral, %struct.lateral* %125, i32 0, i32 3
  %127 = load double, double* %126, align 8
  %128 = load %struct.lateral*, %struct.lateral** %7, align 8
  %129 = getelementptr inbounds %struct.lateral, %struct.lateral* %128, i32 0, i32 3
  %130 = load double, double* %129, align 8
  %131 = fmul double %127, %130
  %132 = load %struct.lateral*, %struct.lateral** %7, align 8
  %133 = getelementptr inbounds %struct.lateral, %struct.lateral* %132, i32 0, i32 4
  %134 = load double, double* %133, align 8
  %135 = load %struct.lateral*, %struct.lateral** %7, align 8
  %136 = getelementptr inbounds %struct.lateral, %struct.lateral* %135, i32 0, i32 4
  %137 = load double, double* %136, align 8
  %138 = fmul double %134, %137
  %139 = fadd double %131, %138
  store double %139, double* %16, align 8
  %140 = load %struct.lateral*, %struct.lateral** %7, align 8
  %141 = getelementptr inbounds %struct.lateral, %struct.lateral* %140, i32 0, i32 3
  %142 = load double, double* %141, align 8
  %143 = fmul double 2.000000e+00, %142
  %144 = load %struct.lateral*, %struct.lateral** %7, align 8
  %145 = getelementptr inbounds %struct.lateral, %struct.lateral* %144, i32 0, i32 4
  %146 = load double, double* %145, align 8
  %147 = fmul double %143, %146
  %148 = load %struct.lateral*, %struct.lateral** %7, align 8
  %149 = getelementptr inbounds %struct.lateral, %struct.lateral* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.demand, %struct.demand* %149, i32 0, i32 1
  %151 = load double, double* %150, align 8
  %152 = fmul double %147, %151
  %153 = load %struct.lateral*, %struct.lateral** %7, align 8
  %154 = getelementptr inbounds %struct.lateral, %struct.lateral* %153, i32 0, i32 4
  %155 = load double, double* %154, align 8
  %156 = fmul double 2.000000e+00, %155
  %157 = load %struct.lateral*, %struct.lateral** %7, align 8
  %158 = getelementptr inbounds %struct.lateral, %struct.lateral* %157, i32 0, i32 4
  %159 = load double, double* %158, align 8
  %160 = fmul double %156, %159
  %161 = load %struct.lateral*, %struct.lateral** %7, align 8
  %162 = getelementptr inbounds %struct.lateral, %struct.lateral* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.demand, %struct.demand* %162, i32 0, i32 0
  %164 = load double, double* %163, align 8
  %165 = fmul double %160, %164
  %166 = fsub double %152, %165
  %167 = load %struct.lateral*, %struct.lateral** %7, align 8
  %168 = getelementptr inbounds %struct.lateral, %struct.lateral* %167, i32 0, i32 3
  %169 = load double, double* %168, align 8
  %170 = fsub double %166, %169
  store double %170, double* %17, align 8
  %171 = load %struct.lateral*, %struct.lateral** %7, align 8
  %172 = getelementptr inbounds %struct.lateral, %struct.lateral* %171, i32 0, i32 3
  %173 = load double, double* %172, align 8
  %174 = load %struct.lateral*, %struct.lateral** %7, align 8
  %175 = getelementptr inbounds %struct.lateral, %struct.lateral* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.demand, %struct.demand* %175, i32 0, i32 1
  %177 = load double, double* %176, align 8
  %178 = fmul double %173, %177
  %179 = load %struct.lateral*, %struct.lateral** %7, align 8
  %180 = getelementptr inbounds %struct.lateral, %struct.lateral* %179, i32 0, i32 4
  %181 = load double, double* %180, align 8
  %182 = load %struct.lateral*, %struct.lateral** %7, align 8
  %183 = getelementptr inbounds %struct.lateral, %struct.lateral* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.demand, %struct.demand* %183, i32 0, i32 0
  %185 = load double, double* %184, align 8
  %186 = fmul double %181, %185
  %187 = fsub double %178, %186
  store double %187, double* %18, align 8
  %188 = load double, double* %18, align 8
  %189 = load double, double* %18, align 8
  %190 = fmul double %188, %189
  %191 = load %struct.lateral*, %struct.lateral** %7, align 8
  %192 = getelementptr inbounds %struct.lateral, %struct.lateral* %191, i32 0, i32 3
  %193 = load double, double* %192, align 8
  %194 = load %struct.lateral*, %struct.lateral** %7, align 8
  %195 = getelementptr inbounds %struct.lateral, %struct.lateral* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.demand, %struct.demand* %195, i32 0, i32 0
  %197 = load double, double* %196, align 8
  %198 = fmul double %193, %197
  %199 = fadd double %190, %198
  store double %199, double* %18, align 8
  %200 = load double, double* %17, align 8
  %201 = fneg double %200
  %202 = load double, double* %17, align 8
  %203 = load double, double* %17, align 8
  %204 = fmul double %202, %203
  %205 = load double, double* %16, align 8
  %206 = fmul double 4.000000e+00, %205
  %207 = load double, double* %18, align 8
  %208 = fmul double %206, %207
  %209 = fsub double %204, %208
  %210 = call double @sqrt(double %209) #5
  %211 = fsub double %201, %210
  %212 = load double, double* %16, align 8
  %213 = fmul double 2.000000e+00, %212
  %214 = fdiv double %211, %213
  store double %214, double* %19, align 8
  %215 = load %struct.lateral*, %struct.lateral** %7, align 8
  %216 = getelementptr inbounds %struct.lateral, %struct.lateral* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.demand, %struct.demand* %216, i32 0, i32 1
  %218 = load double, double* %217, align 8
  %219 = load double, double* %19, align 8
  %220 = load %struct.lateral*, %struct.lateral** %7, align 8
  %221 = getelementptr inbounds %struct.lateral, %struct.lateral* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.demand, %struct.demand* %221, i32 0, i32 0
  %223 = load double, double* %222, align 8
  %224 = fsub double %219, %223
  %225 = load %struct.lateral*, %struct.lateral** %7, align 8
  %226 = getelementptr inbounds %struct.lateral, %struct.lateral* %225, i32 0, i32 4
  %227 = load double, double* %226, align 8
  %228 = fmul double %224, %227
  %229 = load %struct.lateral*, %struct.lateral** %7, align 8
  %230 = getelementptr inbounds %struct.lateral, %struct.lateral* %229, i32 0, i32 3
  %231 = load double, double* %230, align 8
  %232 = fdiv double %228, %231
  %233 = fadd double %218, %232
  %234 = load %struct.lateral*, %struct.lateral** %7, align 8
  %235 = getelementptr inbounds %struct.lateral, %struct.lateral* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.demand, %struct.demand* %235, i32 0, i32 1
  store double %233, double* %236, align 8
  %237 = load double, double* %19, align 8
  %238 = load %struct.lateral*, %struct.lateral** %7, align 8
  %239 = getelementptr inbounds %struct.lateral, %struct.lateral* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.demand, %struct.demand* %239, i32 0, i32 0
  store double %237, double* %240, align 8
  %241 = load %struct.lateral*, %struct.lateral** %7, align 8
  %242 = getelementptr inbounds %struct.lateral, %struct.lateral* %241, i32 0, i32 3
  %243 = load double, double* %242, align 8
  %244 = fmul double 2.000000e+00, %243
  %245 = load %struct.lateral*, %struct.lateral** %7, align 8
  %246 = getelementptr inbounds %struct.lateral, %struct.lateral* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.demand, %struct.demand* %246, i32 0, i32 0
  %248 = load double, double* %247, align 8
  %249 = fmul double %244, %248
  store double %249, double* %16, align 8
  %250 = load %struct.lateral*, %struct.lateral** %7, align 8
  %251 = getelementptr inbounds %struct.lateral, %struct.lateral* %250, i32 0, i32 4
  %252 = load double, double* %251, align 8
  %253 = fmul double 2.000000e+00, %252
  %254 = load %struct.lateral*, %struct.lateral** %7, align 8
  %255 = getelementptr inbounds %struct.lateral, %struct.lateral* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.demand, %struct.demand* %255, i32 0, i32 1
  %257 = load double, double* %256, align 8
  %258 = fmul double %253, %257
  store double %258, double* %17, align 8
  %259 = load double, double* %16, align 8
  %260 = load double, double* %16, align 8
  %261 = fsub double 1.000000e+00, %260
  %262 = load double, double* %17, align 8
  %263 = fsub double %261, %262
  %264 = fdiv double %259, %263
  %265 = load %struct.lateral*, %struct.lateral** %7, align 8
  %266 = getelementptr inbounds %struct.lateral, %struct.lateral* %265, i32 0, i32 1
  store double %264, double* %266, align 8
  %267 = load double, double* %17, align 8
  %268 = load double, double* %16, align 8
  %269 = fsub double 1.000000e+00, %268
  %270 = load double, double* %17, align 8
  %271 = fsub double %269, %270
  %272 = fdiv double %267, %271
  %273 = load %struct.lateral*, %struct.lateral** %7, align 8
  %274 = getelementptr inbounds %struct.lateral, %struct.lateral* %273, i32 0, i32 2
  store double %272, double* %274, align 8
  %275 = load %struct.lateral*, %struct.lateral** %7, align 8
  %276 = getelementptr inbounds %struct.lateral, %struct.lateral* %275, i32 0, i32 0
  %277 = bitcast %struct.demand* %6 to i8*
  %278 = bitcast %struct.demand* %276 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %277, i8* align 8 %278, i64 16, i1 false)
  %279 = bitcast %struct.demand* %6 to { double, double }*
  %280 = load { double, double }, { double, double }* %279, align 8
  ret { double, double } %280
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local { double, double } @Compute_Branch(%struct.branch* %0, double %1, double %2, double %3, double %4) #0 {
  %6 = alloca %struct.demand, align 8
  %7 = alloca %struct.branch*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca %struct.demand, align 8
  %13 = alloca %struct.demand, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca %struct.leaf*, align 8
  %21 = alloca %struct.branch*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.demand, align 8
  %24 = alloca %struct.demand, align 8
  %25 = alloca %struct.demand, align 8
  store %struct.branch* %0, %struct.branch** %7, align 8
  store double %1, double* %8, align 8
  store double %2, double* %9, align 8
  store double %3, double* %10, align 8
  store double %4, double* %11, align 8
  %26 = load double, double* %10, align 8
  %27 = load %struct.branch*, %struct.branch** %7, align 8
  %28 = getelementptr inbounds %struct.branch, %struct.branch* %27, i32 0, i32 1
  %29 = load double, double* %28, align 8
  %30 = load double, double* %8, align 8
  %31 = load double, double* %9, align 8
  %32 = load %struct.branch*, %struct.branch** %7, align 8
  %33 = getelementptr inbounds %struct.branch, %struct.branch* %32, i32 0, i32 4
  %34 = load double, double* %33, align 8
  %35 = fmul double %31, %34
  %36 = load %struct.branch*, %struct.branch** %7, align 8
  %37 = getelementptr inbounds %struct.branch, %struct.branch* %36, i32 0, i32 3
  %38 = load double, double* %37, align 8
  %39 = fdiv double %35, %38
  %40 = fadd double %30, %39
  %41 = fmul double %29, %40
  %42 = fadd double %26, %41
  store double %42, double* %14, align 8
  %43 = load double, double* %11, align 8
  %44 = load %struct.branch*, %struct.branch** %7, align 8
  %45 = getelementptr inbounds %struct.branch, %struct.branch* %44, i32 0, i32 2
  %46 = load double, double* %45, align 8
  %47 = load double, double* %9, align 8
  %48 = load double, double* %8, align 8
  %49 = load %struct.branch*, %struct.branch** %7, align 8
  %50 = getelementptr inbounds %struct.branch, %struct.branch* %49, i32 0, i32 3
  %51 = load double, double* %50, align 8
  %52 = fmul double %48, %51
  %53 = load %struct.branch*, %struct.branch** %7, align 8
  %54 = getelementptr inbounds %struct.branch, %struct.branch* %53, i32 0, i32 4
  %55 = load double, double* %54, align 8
  %56 = fdiv double %52, %55
  %57 = fadd double %47, %56
  %58 = fmul double %46, %57
  %59 = fadd double %43, %58
  store double %59, double* %15, align 8
  %60 = load %struct.branch*, %struct.branch** %7, align 8
  %61 = getelementptr inbounds %struct.branch, %struct.branch* %60, i32 0, i32 5
  %62 = load %struct.branch*, %struct.branch** %61, align 8
  store %struct.branch* %62, %struct.branch** %21, align 8
  %63 = load %struct.branch*, %struct.branch** %21, align 8
  %64 = icmp ne %struct.branch* %63, null
  br i1 %64, label %65, label %79

65:                                               ; preds = %5
  %66 = load %struct.branch*, %struct.branch** %21, align 8
  %67 = load double, double* %8, align 8
  %68 = load double, double* %9, align 8
  %69 = load double, double* %14, align 8
  %70 = load double, double* %15, align 8
  %71 = call { double, double } @Compute_Branch(%struct.branch* %66, double %67, double %68, double %69, double %70)
  %72 = bitcast %struct.demand* %24 to { double, double }*
  %73 = getelementptr inbounds { double, double }, { double, double }* %72, i32 0, i32 0
  %74 = extractvalue { double, double } %71, 0
  store double %74, double* %73, align 8
  %75 = getelementptr inbounds { double, double }, { double, double }* %72, i32 0, i32 1
  %76 = extractvalue { double, double } %71, 1
  store double %76, double* %75, align 8
  %77 = bitcast %struct.demand* %23 to i8*
  %78 = bitcast %struct.demand* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %77, i8* align 8 %78, i64 16, i1 false)
  br label %79

79:                                               ; preds = %65, %5
  %80 = getelementptr inbounds %struct.demand, %struct.demand* %13, i32 0, i32 0
  store double 0.000000e+00, double* %80, align 8
  %81 = getelementptr inbounds %struct.demand, %struct.demand* %13, i32 0, i32 1
  store double 0.000000e+00, double* %81, align 8
  store i32 0, i32* %22, align 4
  br label %82

82:                                               ; preds = %113, %79
  %83 = load i32, i32* %22, align 4
  %84 = icmp slt i32 %83, 12
  br i1 %84, label %85, label %116

85:                                               ; preds = %82
  %86 = load %struct.branch*, %struct.branch** %7, align 8
  %87 = getelementptr inbounds %struct.branch, %struct.branch* %86, i32 0, i32 6
  %88 = load i32, i32* %22, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [12 x %struct.leaf*], [12 x %struct.leaf*]* %87, i64 0, i64 %89
  %91 = load %struct.leaf*, %struct.leaf** %90, align 8
  store %struct.leaf* %91, %struct.leaf** %20, align 8
  %92 = load %struct.leaf*, %struct.leaf** %20, align 8
  %93 = load double, double* %14, align 8
  %94 = load double, double* %15, align 8
  %95 = call { double, double } @Compute_Leaf(%struct.leaf* %92, double %93, double %94)
  %96 = bitcast %struct.demand* %25 to { double, double }*
  %97 = getelementptr inbounds { double, double }, { double, double }* %96, i32 0, i32 0
  %98 = extractvalue { double, double } %95, 0
  store double %98, double* %97, align 8
  %99 = getelementptr inbounds { double, double }, { double, double }* %96, i32 0, i32 1
  %100 = extractvalue { double, double } %95, 1
  store double %100, double* %99, align 8
  %101 = bitcast %struct.demand* %12 to i8*
  %102 = bitcast %struct.demand* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %101, i8* align 8 %102, i64 16, i1 false)
  %103 = getelementptr inbounds %struct.demand, %struct.demand* %12, i32 0, i32 0
  %104 = load double, double* %103, align 8
  %105 = getelementptr inbounds %struct.demand, %struct.demand* %13, i32 0, i32 0
  %106 = load double, double* %105, align 8
  %107 = fadd double %106, %104
  store double %107, double* %105, align 8
  %108 = getelementptr inbounds %struct.demand, %struct.demand* %12, i32 0, i32 1
  %109 = load double, double* %108, align 8
  %110 = getelementptr inbounds %struct.demand, %struct.demand* %13, i32 0, i32 1
  %111 = load double, double* %110, align 8
  %112 = fadd double %111, %109
  store double %112, double* %110, align 8
  br label %113

113:                                              ; preds = %85
  %114 = load i32, i32* %22, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %22, align 4
  br label %82

116:                                              ; preds = %82
  %117 = load %struct.branch*, %struct.branch** %21, align 8
  %118 = icmp ne %struct.branch* %117, null
  br i1 %118, label %119, label %136

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.demand, %struct.demand* %23, i32 0, i32 0
  %121 = load double, double* %120, align 8
  %122 = getelementptr inbounds %struct.demand, %struct.demand* %13, i32 0, i32 0
  %123 = load double, double* %122, align 8
  %124 = fadd double %121, %123
  %125 = load %struct.branch*, %struct.branch** %7, align 8
  %126 = getelementptr inbounds %struct.branch, %struct.branch* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.demand, %struct.demand* %126, i32 0, i32 0
  store double %124, double* %127, align 8
  %128 = getelementptr inbounds %struct.demand, %struct.demand* %23, i32 0, i32 1
  %129 = load double, double* %128, align 8
  %130 = getelementptr inbounds %struct.demand, %struct.demand* %13, i32 0, i32 1
  %131 = load double, double* %130, align 8
  %132 = fadd double %129, %131
  %133 = load %struct.branch*, %struct.branch** %7, align 8
  %134 = getelementptr inbounds %struct.branch, %struct.branch* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.demand, %struct.demand* %134, i32 0, i32 1
  store double %132, double* %135, align 8
  br label %147

136:                                              ; preds = %116
  %137 = getelementptr inbounds %struct.demand, %struct.demand* %13, i32 0, i32 0
  %138 = load double, double* %137, align 8
  %139 = load %struct.branch*, %struct.branch** %7, align 8
  %140 = getelementptr inbounds %struct.branch, %struct.branch* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.demand, %struct.demand* %140, i32 0, i32 0
  store double %138, double* %141, align 8
  %142 = getelementptr inbounds %struct.demand, %struct.demand* %13, i32 0, i32 1
  %143 = load double, double* %142, align 8
  %144 = load %struct.branch*, %struct.branch** %7, align 8
  %145 = getelementptr inbounds %struct.branch, %struct.branch* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.demand, %struct.demand* %145, i32 0, i32 1
  store double %143, double* %146, align 8
  br label %147

147:                                              ; preds = %136, %119
  %148 = load %struct.branch*, %struct.branch** %7, align 8
  %149 = getelementptr inbounds %struct.branch, %struct.branch* %148, i32 0, i32 3
  %150 = load double, double* %149, align 8
  %151 = load %struct.branch*, %struct.branch** %7, align 8
  %152 = getelementptr inbounds %struct.branch, %struct.branch* %151, i32 0, i32 3
  %153 = load double, double* %152, align 8
  %154 = fmul double %150, %153
  %155 = load %struct.branch*, %struct.branch** %7, align 8
  %156 = getelementptr inbounds %struct.branch, %struct.branch* %155, i32 0, i32 4
  %157 = load double, double* %156, align 8
  %158 = load %struct.branch*, %struct.branch** %7, align 8
  %159 = getelementptr inbounds %struct.branch, %struct.branch* %158, i32 0, i32 4
  %160 = load double, double* %159, align 8
  %161 = fmul double %157, %160
  %162 = fadd double %154, %161
  store double %162, double* %16, align 8
  %163 = load %struct.branch*, %struct.branch** %7, align 8
  %164 = getelementptr inbounds %struct.branch, %struct.branch* %163, i32 0, i32 3
  %165 = load double, double* %164, align 8
  %166 = fmul double 2.000000e+00, %165
  %167 = load %struct.branch*, %struct.branch** %7, align 8
  %168 = getelementptr inbounds %struct.branch, %struct.branch* %167, i32 0, i32 4
  %169 = load double, double* %168, align 8
  %170 = fmul double %166, %169
  %171 = load %struct.branch*, %struct.branch** %7, align 8
  %172 = getelementptr inbounds %struct.branch, %struct.branch* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.demand, %struct.demand* %172, i32 0, i32 1
  %174 = load double, double* %173, align 8
  %175 = fmul double %170, %174
  %176 = load %struct.branch*, %struct.branch** %7, align 8
  %177 = getelementptr inbounds %struct.branch, %struct.branch* %176, i32 0, i32 4
  %178 = load double, double* %177, align 8
  %179 = fmul double 2.000000e+00, %178
  %180 = load %struct.branch*, %struct.branch** %7, align 8
  %181 = getelementptr inbounds %struct.branch, %struct.branch* %180, i32 0, i32 4
  %182 = load double, double* %181, align 8
  %183 = fmul double %179, %182
  %184 = load %struct.branch*, %struct.branch** %7, align 8
  %185 = getelementptr inbounds %struct.branch, %struct.branch* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.demand, %struct.demand* %185, i32 0, i32 0
  %187 = load double, double* %186, align 8
  %188 = fmul double %183, %187
  %189 = fsub double %175, %188
  %190 = load %struct.branch*, %struct.branch** %7, align 8
  %191 = getelementptr inbounds %struct.branch, %struct.branch* %190, i32 0, i32 3
  %192 = load double, double* %191, align 8
  %193 = fsub double %189, %192
  store double %193, double* %17, align 8
  %194 = load %struct.branch*, %struct.branch** %7, align 8
  %195 = getelementptr inbounds %struct.branch, %struct.branch* %194, i32 0, i32 3
  %196 = load double, double* %195, align 8
  %197 = load %struct.branch*, %struct.branch** %7, align 8
  %198 = getelementptr inbounds %struct.branch, %struct.branch* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.demand, %struct.demand* %198, i32 0, i32 1
  %200 = load double, double* %199, align 8
  %201 = fmul double %196, %200
  %202 = load %struct.branch*, %struct.branch** %7, align 8
  %203 = getelementptr inbounds %struct.branch, %struct.branch* %202, i32 0, i32 4
  %204 = load double, double* %203, align 8
  %205 = load %struct.branch*, %struct.branch** %7, align 8
  %206 = getelementptr inbounds %struct.branch, %struct.branch* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.demand, %struct.demand* %206, i32 0, i32 0
  %208 = load double, double* %207, align 8
  %209 = fmul double %204, %208
  %210 = fsub double %201, %209
  store double %210, double* %18, align 8
  %211 = load double, double* %18, align 8
  %212 = load double, double* %18, align 8
  %213 = fmul double %211, %212
  %214 = load %struct.branch*, %struct.branch** %7, align 8
  %215 = getelementptr inbounds %struct.branch, %struct.branch* %214, i32 0, i32 3
  %216 = load double, double* %215, align 8
  %217 = load %struct.branch*, %struct.branch** %7, align 8
  %218 = getelementptr inbounds %struct.branch, %struct.branch* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.demand, %struct.demand* %218, i32 0, i32 0
  %220 = load double, double* %219, align 8
  %221 = fmul double %216, %220
  %222 = fadd double %213, %221
  store double %222, double* %18, align 8
  %223 = load double, double* %17, align 8
  %224 = fneg double %223
  %225 = load double, double* %17, align 8
  %226 = load double, double* %17, align 8
  %227 = fmul double %225, %226
  %228 = load double, double* %16, align 8
  %229 = fmul double 4.000000e+00, %228
  %230 = load double, double* %18, align 8
  %231 = fmul double %229, %230
  %232 = fsub double %227, %231
  %233 = call double @sqrt(double %232) #5
  %234 = fsub double %224, %233
  %235 = load double, double* %16, align 8
  %236 = fmul double 2.000000e+00, %235
  %237 = fdiv double %234, %236
  store double %237, double* %19, align 8
  %238 = load %struct.branch*, %struct.branch** %7, align 8
  %239 = getelementptr inbounds %struct.branch, %struct.branch* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.demand, %struct.demand* %239, i32 0, i32 1
  %241 = load double, double* %240, align 8
  %242 = load double, double* %19, align 8
  %243 = load %struct.branch*, %struct.branch** %7, align 8
  %244 = getelementptr inbounds %struct.branch, %struct.branch* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.demand, %struct.demand* %244, i32 0, i32 0
  %246 = load double, double* %245, align 8
  %247 = fsub double %242, %246
  %248 = load %struct.branch*, %struct.branch** %7, align 8
  %249 = getelementptr inbounds %struct.branch, %struct.branch* %248, i32 0, i32 4
  %250 = load double, double* %249, align 8
  %251 = fmul double %247, %250
  %252 = load %struct.branch*, %struct.branch** %7, align 8
  %253 = getelementptr inbounds %struct.branch, %struct.branch* %252, i32 0, i32 3
  %254 = load double, double* %253, align 8
  %255 = fdiv double %251, %254
  %256 = fadd double %241, %255
  %257 = load %struct.branch*, %struct.branch** %7, align 8
  %258 = getelementptr inbounds %struct.branch, %struct.branch* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.demand, %struct.demand* %258, i32 0, i32 1
  store double %256, double* %259, align 8
  %260 = load double, double* %19, align 8
  %261 = load %struct.branch*, %struct.branch** %7, align 8
  %262 = getelementptr inbounds %struct.branch, %struct.branch* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.demand, %struct.demand* %262, i32 0, i32 0
  store double %260, double* %263, align 8
  %264 = load %struct.branch*, %struct.branch** %7, align 8
  %265 = getelementptr inbounds %struct.branch, %struct.branch* %264, i32 0, i32 3
  %266 = load double, double* %265, align 8
  %267 = fmul double 2.000000e+00, %266
  %268 = load %struct.branch*, %struct.branch** %7, align 8
  %269 = getelementptr inbounds %struct.branch, %struct.branch* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.demand, %struct.demand* %269, i32 0, i32 0
  %271 = load double, double* %270, align 8
  %272 = fmul double %267, %271
  store double %272, double* %16, align 8
  %273 = load %struct.branch*, %struct.branch** %7, align 8
  %274 = getelementptr inbounds %struct.branch, %struct.branch* %273, i32 0, i32 4
  %275 = load double, double* %274, align 8
  %276 = fmul double 2.000000e+00, %275
  %277 = load %struct.branch*, %struct.branch** %7, align 8
  %278 = getelementptr inbounds %struct.branch, %struct.branch* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.demand, %struct.demand* %278, i32 0, i32 1
  %280 = load double, double* %279, align 8
  %281 = fmul double %276, %280
  store double %281, double* %17, align 8
  %282 = load double, double* %16, align 8
  %283 = load double, double* %16, align 8
  %284 = fsub double 1.000000e+00, %283
  %285 = load double, double* %17, align 8
  %286 = fsub double %284, %285
  %287 = fdiv double %282, %286
  %288 = load %struct.branch*, %struct.branch** %7, align 8
  %289 = getelementptr inbounds %struct.branch, %struct.branch* %288, i32 0, i32 1
  store double %287, double* %289, align 8
  %290 = load double, double* %17, align 8
  %291 = load double, double* %16, align 8
  %292 = fsub double 1.000000e+00, %291
  %293 = load double, double* %17, align 8
  %294 = fsub double %292, %293
  %295 = fdiv double %290, %294
  %296 = load %struct.branch*, %struct.branch** %7, align 8
  %297 = getelementptr inbounds %struct.branch, %struct.branch* %296, i32 0, i32 2
  store double %295, double* %297, align 8
  %298 = load %struct.branch*, %struct.branch** %7, align 8
  %299 = getelementptr inbounds %struct.branch, %struct.branch* %298, i32 0, i32 0
  %300 = bitcast %struct.demand* %6 to i8*
  %301 = bitcast %struct.demand* %299 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %300, i8* align 8 %301, i64 16, i1 false)
  %302 = bitcast %struct.demand* %6 to { double, double }*
  %303 = load { double, double }, { double, double }* %302, align 8
  ret { double, double } %303
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #3

; Function Attrs: noinline nounwind uwtable
define dso_local { double, double } @Compute_Leaf(%struct.leaf* %0, double %1, double %2) #0 {
  %4 = alloca %struct.demand, align 8
  %5 = alloca %struct.leaf*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store %struct.leaf* %0, %struct.leaf** %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  %8 = load %struct.leaf*, %struct.leaf** %5, align 8
  %9 = getelementptr inbounds %struct.leaf, %struct.leaf* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.demand, %struct.demand* %9, i32 0, i32 0
  %11 = load double, double* %10, align 8
  store double %11, double* @P, align 8
  %12 = load %struct.leaf*, %struct.leaf** %5, align 8
  %13 = getelementptr inbounds %struct.leaf, %struct.leaf* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.demand, %struct.demand* %13, i32 0, i32 1
  %15 = load double, double* %14, align 8
  store double %15, double* @Q, align 8
  %16 = load double, double* %6, align 8
  %17 = load double, double* %7, align 8
  call void @optimize_node(double %16, double %17)
  %18 = load double, double* @P, align 8
  %19 = fcmp olt double %18, 0.000000e+00
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store double 0.000000e+00, double* @P, align 8
  store double 0.000000e+00, double* @Q, align 8
  br label %21

21:                                               ; preds = %20, %3
  %22 = load double, double* @P, align 8
  %23 = load %struct.leaf*, %struct.leaf** %5, align 8
  %24 = getelementptr inbounds %struct.leaf, %struct.leaf* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.demand, %struct.demand* %24, i32 0, i32 0
  store double %22, double* %25, align 8
  %26 = load double, double* @Q, align 8
  %27 = load %struct.leaf*, %struct.leaf** %5, align 8
  %28 = getelementptr inbounds %struct.leaf, %struct.leaf* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.demand, %struct.demand* %28, i32 0, i32 1
  store double %26, double* %29, align 8
  %30 = load %struct.leaf*, %struct.leaf** %5, align 8
  %31 = getelementptr inbounds %struct.leaf, %struct.leaf* %30, i32 0, i32 0
  %32 = bitcast %struct.demand* %4 to i8*
  %33 = bitcast %struct.demand* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 16, i1 false)
  %34 = bitcast %struct.demand* %4 to { double, double }*
  %35 = load { double, double }, { double, double }* %34, align 8
  ret { double, double } %35
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @optimize_node(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca [2 x double], align 16
  %8 = alloca [2 x double], align 16
  %9 = alloca [2 x double], align 16
  %10 = alloca [2 x double], align 16
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  br label %15

15:                                               ; preds = %187, %2
  %16 = call double @find_h()
  store double %16, double* %6, align 8
  %17 = load double, double* %6, align 8
  %18 = call double @llvm.fabs.f64(double %17)
  %19 = fcmp ogt double %18, 0x3EB0C6F7A0B5ED8D
  br i1 %19, label %20, label %38

20:                                               ; preds = %15
  %21 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  %22 = call double @find_gradient_h(double* %21)
  store double %22, double* %11, align 8
  %23 = load double, double* %6, align 8
  %24 = load double, double* %11, align 8
  %25 = fdiv double %23, %24
  store double %25, double* %13, align 8
  %26 = load double, double* %13, align 8
  %27 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  %28 = load double, double* %27, align 16
  %29 = fmul double %26, %28
  %30 = load double, double* @P, align 8
  %31 = fsub double %30, %29
  store double %31, double* @P, align 8
  %32 = load double, double* %13, align 8
  %33 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  %34 = load double, double* %33, align 8
  %35 = fmul double %32, %34
  %36 = load double, double* @Q, align 8
  %37 = fsub double %36, %35
  store double %37, double* @Q, align 8
  br label %38

38:                                               ; preds = %20, %15
  %39 = call double @find_g()
  store double %39, double* %5, align 8
  %40 = load double, double* %5, align 8
  %41 = fcmp ogt double %40, 0x3EB0C6F7A0B5ED8D
  br i1 %41, label %42, label %67

42:                                               ; preds = %38
  %43 = getelementptr inbounds [2 x double], [2 x double]* %8, i64 0, i64 0
  %44 = call double @find_gradient_g(double* %43)
  store double %44, double* %11, align 8
  %45 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  %46 = call double @find_gradient_h(double* %45)
  %47 = getelementptr inbounds [2 x double], [2 x double]* %8, i64 0, i64 0
  %48 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  %49 = call double @make_orthogonal(double* %47, double* %48)
  %50 = load double, double* %11, align 8
  %51 = fmul double %50, %49
  store double %51, double* %11, align 8
  %52 = load double, double* %5, align 8
  %53 = load double, double* %11, align 8
  %54 = fdiv double %52, %53
  store double %54, double* %13, align 8
  %55 = load double, double* %13, align 8
  %56 = getelementptr inbounds [2 x double], [2 x double]* %8, i64 0, i64 0
  %57 = load double, double* %56, align 16
  %58 = fmul double %55, %57
  %59 = load double, double* @P, align 8
  %60 = fsub double %59, %58
  store double %60, double* @P, align 8
  %61 = load double, double* %13, align 8
  %62 = getelementptr inbounds [2 x double], [2 x double]* %8, i64 0, i64 1
  %63 = load double, double* %62, align 8
  %64 = fmul double %61, %63
  %65 = load double, double* @Q, align 8
  %66 = fsub double %65, %64
  store double %66, double* @Q, align 8
  br label %67

67:                                               ; preds = %42, %38
  %68 = load double, double* %3, align 8
  %69 = load double, double* %4, align 8
  %70 = getelementptr inbounds [2 x double], [2 x double]* %7, i64 0, i64 0
  %71 = call double @find_gradient_f(double %68, double %69, double* %70)
  store double %71, double* %11, align 8
  %72 = load double, double* %3, align 8
  %73 = load double, double* %4, align 8
  %74 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 0
  call void @find_dd_grad_f(double %72, double %73, double* %74)
  store double 0.000000e+00, double* %13, align 8
  store i32 0, i32* %12, align 4
  br label %75

75:                                               ; preds = %90, %67
  %76 = load i32, i32* %12, align 4
  %77 = icmp slt i32 %76, 2
  br i1 %77, label %78, label %93

78:                                               ; preds = %75
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [2 x double], [2 x double]* %7, i64 0, i64 %80
  %82 = load double, double* %81, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 %84
  %86 = load double, double* %85, align 8
  %87 = fmul double %82, %86
  %88 = load double, double* %13, align 8
  %89 = fadd double %88, %87
  store double %89, double* %13, align 8
  br label %90

90:                                               ; preds = %78
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %12, align 4
  br label %75

93:                                               ; preds = %75
  %94 = load double, double* %13, align 8
  %95 = call double @llvm.fabs.f64(double %94)
  %96 = load double, double* %11, align 8
  %97 = fdiv double %96, %95
  store double %97, double* %11, align 8
  %98 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  %99 = call double @find_gradient_h(double* %98)
  %100 = getelementptr inbounds [2 x double], [2 x double]* %7, i64 0, i64 0
  %101 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  %102 = call double @make_orthogonal(double* %100, double* %101)
  %103 = load double, double* %11, align 8
  %104 = fmul double %103, %102
  store double %104, double* %11, align 8
  %105 = getelementptr inbounds [2 x double], [2 x double]* %8, i64 0, i64 0
  %106 = call double @find_gradient_g(double* %105)
  store double 0.000000e+00, double* %13, align 8
  store i32 0, i32* %12, align 4
  br label %107

107:                                              ; preds = %122, %93
  %108 = load i32, i32* %12, align 4
  %109 = icmp slt i32 %108, 2
  br i1 %109, label %110, label %125

110:                                              ; preds = %107
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [2 x double], [2 x double]* %7, i64 0, i64 %112
  %114 = load double, double* %113, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [2 x double], [2 x double]* %8, i64 0, i64 %116
  %118 = load double, double* %117, align 8
  %119 = fmul double %114, %118
  %120 = load double, double* %13, align 8
  %121 = fadd double %120, %119
  store double %121, double* %13, align 8
  br label %122

122:                                              ; preds = %110
  %123 = load i32, i32* %12, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %12, align 4
  br label %107

125:                                              ; preds = %107
  %126 = load double, double* %13, align 8
  %127 = fcmp ogt double %126, 0.000000e+00
  br i1 %127, label %128, label %139

128:                                              ; preds = %125
  %129 = call double @find_g()
  %130 = fneg double %129
  %131 = load double, double* %13, align 8
  %132 = fdiv double %130, %131
  store double %132, double* %14, align 8
  %133 = load double, double* %11, align 8
  %134 = load double, double* %14, align 8
  %135 = fcmp ogt double %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %128
  %137 = load double, double* %14, align 8
  store double %137, double* %11, align 8
  br label %138

138:                                              ; preds = %136, %128
  br label %139

139:                                              ; preds = %138, %125
  %140 = load double, double* %11, align 8
  %141 = getelementptr inbounds [2 x double], [2 x double]* %7, i64 0, i64 0
  %142 = load double, double* %141, align 16
  %143 = fmul double %140, %142
  %144 = load double, double* @P, align 8
  %145 = fadd double %144, %143
  store double %145, double* @P, align 8
  %146 = load double, double* %11, align 8
  %147 = getelementptr inbounds [2 x double], [2 x double]* %7, i64 0, i64 1
  %148 = load double, double* %147, align 8
  %149 = fmul double %146, %148
  %150 = load double, double* @Q, align 8
  %151 = fadd double %150, %149
  store double %151, double* @Q, align 8
  %152 = call double @find_h()
  store double %152, double* %6, align 8
  %153 = call double @find_g()
  store double %153, double* %5, align 8
  %154 = load double, double* %3, align 8
  %155 = load double, double* %4, align 8
  %156 = getelementptr inbounds [2 x double], [2 x double]* %7, i64 0, i64 0
  %157 = call double @find_gradient_f(double %154, double %155, double* %156)
  %158 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  %159 = call double @find_gradient_h(double* %158)
  br label %160

160:                                              ; preds = %139
  %161 = load double, double* %6, align 8
  %162 = call double @llvm.fabs.f64(double %161)
  %163 = fcmp ogt double %162, 0x3EB0C6F7A0B5ED8D
  br i1 %163, label %187, label %164

164:                                              ; preds = %160
  %165 = load double, double* %5, align 8
  %166 = fcmp ogt double %165, 0x3EB0C6F7A0B5ED8D
  br i1 %166, label %187, label %167

167:                                              ; preds = %164
  %168 = load double, double* %5, align 8
  %169 = call double @llvm.fabs.f64(double %168)
  %170 = fcmp ogt double %169, 0x3EB0C6F7A0B5ED8D
  br i1 %170, label %171, label %185

171:                                              ; preds = %167
  %172 = getelementptr inbounds [2 x double], [2 x double]* %7, i64 0, i64 0
  %173 = load double, double* %172, align 16
  %174 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  %175 = load double, double* %174, align 8
  %176 = fmul double %173, %175
  %177 = getelementptr inbounds [2 x double], [2 x double]* %7, i64 0, i64 1
  %178 = load double, double* %177, align 8
  %179 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  %180 = load double, double* %179, align 16
  %181 = fmul double %178, %180
  %182 = fsub double %176, %181
  %183 = call double @llvm.fabs.f64(double %182)
  %184 = fcmp ogt double %183, 0x3EB0C6F7A0B5ED8D
  br label %185

185:                                              ; preds = %171, %167
  %186 = phi i1 [ false, %167 ], [ %184, %171 ]
  br label %187

187:                                              ; preds = %185, %164, %160
  %188 = phi i1 [ true, %164 ], [ true, %160 ], [ %186, %185 ]
  br i1 %188, label %15, label %189

189:                                              ; preds = %187
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @find_h() #0 {
  %1 = load double, double* @P, align 8
  %2 = load double, double* @Q, align 8
  %3 = fmul double 5.000000e+00, %2
  %4 = fsub double %1, %3
  ret double %4
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #4

; Function Attrs: noinline nounwind uwtable
define dso_local double @find_gradient_h(double* %0) #0 {
  %2 = alloca double*, align 8
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  store double* %0, double** %2, align 8
  store double 0.000000e+00, double* %4, align 8
  %5 = load double*, double** %2, align 8
  %6 = getelementptr inbounds double, double* %5, i64 0
  store double 1.000000e+00, double* %6, align 8
  %7 = load double*, double** %2, align 8
  %8 = getelementptr inbounds double, double* %7, i64 1
  store double -5.000000e+00, double* %8, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %26, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %29

12:                                               ; preds = %9
  %13 = load double*, double** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds double, double* %13, i64 %15
  %17 = load double, double* %16, align 8
  %18 = load double*, double** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds double, double* %18, i64 %20
  %22 = load double, double* %21, align 8
  %23 = fmul double %17, %22
  %24 = load double, double* %4, align 8
  %25 = fadd double %24, %23
  store double %25, double* %4, align 8
  br label %26

26:                                               ; preds = %12
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %9

29:                                               ; preds = %9
  %30 = load double, double* %4, align 8
  %31 = call double @sqrt(double %30) #5
  store double %31, double* %4, align 8
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %43, %29
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %33, 2
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load double, double* %4, align 8
  %37 = load double*, double** %2, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds double, double* %37, i64 %39
  %41 = load double, double* %40, align 8
  %42 = fdiv double %41, %36
  store double %42, double* %40, align 8
  br label %43

43:                                               ; preds = %35
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %32

46:                                               ; preds = %32
  %47 = load double, double* %4, align 8
  ret double %47
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @find_g() #0 {
  %1 = load double, double* @P, align 8
  %2 = load double, double* @P, align 8
  %3 = fmul double %1, %2
  %4 = load double, double* @Q, align 8
  %5 = load double, double* @Q, align 8
  %6 = fmul double %4, %5
  %7 = fadd double %3, %6
  %8 = fsub double %7, 8.000000e-01
  ret double %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @find_gradient_g(double* %0) #0 {
  %2 = alloca double*, align 8
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  store double* %0, double** %2, align 8
  store double 0.000000e+00, double* %4, align 8
  %5 = load double, double* @P, align 8
  %6 = fmul double 2.000000e+00, %5
  %7 = load double*, double** %2, align 8
  %8 = getelementptr inbounds double, double* %7, i64 0
  store double %6, double* %8, align 8
  %9 = load double, double* @Q, align 8
  %10 = fmul double 2.000000e+00, %9
  %11 = load double*, double** %2, align 8
  %12 = getelementptr inbounds double, double* %11, i64 1
  store double %10, double* %12, align 8
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %30, %1
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %33

16:                                               ; preds = %13
  %17 = load double*, double** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds double, double* %17, i64 %19
  %21 = load double, double* %20, align 8
  %22 = load double*, double** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds double, double* %22, i64 %24
  %26 = load double, double* %25, align 8
  %27 = fmul double %21, %26
  %28 = load double, double* %4, align 8
  %29 = fadd double %28, %27
  store double %29, double* %4, align 8
  br label %30

30:                                               ; preds = %16
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %13

33:                                               ; preds = %13
  %34 = load double, double* %4, align 8
  %35 = call double @sqrt(double %34) #5
  store double %35, double* %4, align 8
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %47, %33
  %37 = load i32, i32* %3, align 4
  %38 = icmp slt i32 %37, 2
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load double, double* %4, align 8
  %41 = load double*, double** %2, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds double, double* %41, i64 %43
  %45 = load double, double* %44, align 8
  %46 = fdiv double %45, %40
  store double %46, double* %44, align 8
  br label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %36

50:                                               ; preds = %36
  %51 = load double, double* %4, align 8
  ret double %51
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @make_orthogonal(double* %0, double* %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  store double 0.000000e+00, double* %7, align 8
  store double 0.000000e+00, double* %8, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %26, %2
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %29

12:                                               ; preds = %9
  %13 = load double*, double** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds double, double* %13, i64 %15
  %17 = load double, double* %16, align 8
  %18 = load double*, double** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds double, double* %18, i64 %20
  %22 = load double, double* %21, align 8
  %23 = fmul double %17, %22
  %24 = load double, double* %7, align 8
  %25 = fadd double %24, %23
  store double %25, double* %7, align 8
  br label %26

26:                                               ; preds = %12
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %9

29:                                               ; preds = %9
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %60, %29
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 2
  br i1 %32, label %33, label %63

33:                                               ; preds = %30
  %34 = load double, double* %7, align 8
  %35 = load double*, double** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds double, double* %35, i64 %37
  %39 = load double, double* %38, align 8
  %40 = fmul double %34, %39
  %41 = load double*, double** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds double, double* %41, i64 %43
  %45 = load double, double* %44, align 8
  %46 = fsub double %45, %40
  store double %46, double* %44, align 8
  %47 = load double*, double** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds double, double* %47, i64 %49
  %51 = load double, double* %50, align 8
  %52 = load double*, double** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds double, double* %52, i64 %54
  %56 = load double, double* %55, align 8
  %57 = fmul double %51, %56
  %58 = load double, double* %8, align 8
  %59 = fadd double %58, %57
  store double %59, double* %8, align 8
  br label %60

60:                                               ; preds = %33
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %30

63:                                               ; preds = %30
  %64 = load double, double* %8, align 8
  %65 = call double @sqrt(double %64) #5
  store double %65, double* %8, align 8
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %77, %63
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %67, 2
  br i1 %68, label %69, label %80

69:                                               ; preds = %66
  %70 = load double, double* %8, align 8
  %71 = load double*, double** %4, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds double, double* %71, i64 %73
  %75 = load double, double* %74, align 8
  %76 = fdiv double %75, %70
  store double %76, double* %74, align 8
  br label %77

77:                                               ; preds = %69
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %66

80:                                               ; preds = %66
  %81 = load double, double* %7, align 8
  %82 = load double, double* %7, align 8
  %83 = fmul double %81, %82
  %84 = fsub double 1.000000e+00, %83
  %85 = fcmp olt double %84, 0.000000e+00
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  store double 0.000000e+00, double* %3, align 8
  br label %93

87:                                               ; preds = %80
  %88 = load double, double* %7, align 8
  %89 = load double, double* %7, align 8
  %90 = fmul double %88, %89
  %91 = fsub double 1.000000e+00, %90
  %92 = call double @sqrt(double %91) #5
  store double %92, double* %3, align 8
  br label %93

93:                                               ; preds = %87, %86
  %94 = load double, double* %3, align 8
  ret double %94
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @find_gradient_f(double %0, double %1, double* %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  store double* %2, double** %6, align 8
  store double 0.000000e+00, double* %8, align 8
  %9 = load double, double* @P, align 8
  %10 = fadd double 1.000000e+00, %9
  %11 = fdiv double 1.000000e+00, %10
  %12 = load double, double* %4, align 8
  %13 = fsub double %11, %12
  %14 = load double*, double** %6, align 8
  %15 = getelementptr inbounds double, double* %14, i64 0
  store double %13, double* %15, align 8
  %16 = load double, double* @Q, align 8
  %17 = fadd double 1.000000e+00, %16
  %18 = fdiv double 1.000000e+00, %17
  %19 = load double, double* %5, align 8
  %20 = fsub double %18, %19
  %21 = load double*, double** %6, align 8
  %22 = getelementptr inbounds double, double* %21, i64 1
  store double %20, double* %22, align 8
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %40, %3
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %43

26:                                               ; preds = %23
  %27 = load double*, double** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double, double* %27, i64 %29
  %31 = load double, double* %30, align 8
  %32 = load double*, double** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds double, double* %32, i64 %34
  %36 = load double, double* %35, align 8
  %37 = fmul double %31, %36
  %38 = load double, double* %8, align 8
  %39 = fadd double %38, %37
  store double %39, double* %8, align 8
  br label %40

40:                                               ; preds = %26
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %23

43:                                               ; preds = %23
  %44 = load double, double* %8, align 8
  %45 = call double @sqrt(double %44) #5
  store double %45, double* %8, align 8
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %57, %43
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 2
  br i1 %48, label %49, label %60

49:                                               ; preds = %46
  %50 = load double, double* %8, align 8
  %51 = load double*, double** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds double, double* %51, i64 %53
  %55 = load double, double* %54, align 8
  %56 = fdiv double %55, %50
  store double %56, double* %54, align 8
  br label %57

57:                                               ; preds = %49
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %46

60:                                               ; preds = %46
  %61 = load double, double* %8, align 8
  ret double %61
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @find_dd_grad_f(double %0, double %1, double* %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  store double* %2, double** %6, align 8
  %12 = load double, double* @P, align 8
  %13 = fadd double %12, 1.000000e+00
  %14 = fdiv double 1.000000e+00, %13
  store double %14, double* %7, align 8
  %15 = load double, double* @Q, align 8
  %16 = fadd double %15, 1.000000e+00
  %17 = fdiv double 1.000000e+00, %16
  store double %17, double* %8, align 8
  %18 = load double, double* %7, align 8
  %19 = load double, double* %4, align 8
  %20 = fsub double %18, %19
  store double %20, double* %9, align 8
  %21 = load double, double* %8, align 8
  %22 = load double, double* %5, align 8
  %23 = fsub double %21, %22
  store double %23, double* %10, align 8
  %24 = load double, double* %9, align 8
  %25 = load double, double* %9, align 8
  %26 = fmul double %24, %25
  %27 = load double, double* %10, align 8
  %28 = load double, double* %10, align 8
  %29 = fmul double %27, %28
  %30 = fadd double %26, %29
  %31 = call double @sqrt(double %30) #5
  store double %31, double* %11, align 8
  %32 = load double, double* %7, align 8
  %33 = fneg double %32
  %34 = load double, double* %7, align 8
  %35 = fmul double %33, %34
  %36 = load double, double* %9, align 8
  %37 = fmul double %35, %36
  %38 = load double, double* %11, align 8
  %39 = fdiv double %37, %38
  %40 = load double*, double** %6, align 8
  %41 = getelementptr inbounds double, double* %40, i64 0
  store double %39, double* %41, align 8
  %42 = load double, double* %8, align 8
  %43 = fneg double %42
  %44 = load double, double* %8, align 8
  %45 = fmul double %43, %44
  %46 = load double, double* %10, align 8
  %47 = fmul double %45, %46
  %48 = load double, double* %11, align 8
  %49 = fdiv double %47, %48
  %50 = load double*, double** %6, align 8
  %51 = getelementptr inbounds double, double* %50, i64 1
  store double %49, double* %51, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.root*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %12 = call %struct.root* @build_tree()
  store %struct.root* %12, %struct.root** %6, align 8
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %14 = load %struct.root*, %struct.root** %6, align 8
  call void @Compute_Tree(%struct.root* %14)
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %16 = load %struct.root*, %struct.root** %6, align 8
  %17 = getelementptr inbounds %struct.root, %struct.root* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.demand, %struct.demand* %17, i32 0, i32 0
  %19 = load double, double* %18, align 8
  %20 = load %struct.root*, %struct.root** %6, align 8
  %21 = getelementptr inbounds %struct.root, %struct.root* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.demand, %struct.demand* %21, i32 0, i32 0
  store double %19, double* %22, align 8
  %23 = load %struct.root*, %struct.root** %6, align 8
  %24 = getelementptr inbounds %struct.root, %struct.root* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.demand, %struct.demand* %24, i32 0, i32 1
  %26 = load double, double* %25, align 8
  %27 = load %struct.root*, %struct.root** %6, align 8
  %28 = getelementptr inbounds %struct.root, %struct.root* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.demand, %struct.demand* %28, i32 0, i32 1
  store double %26, double* %29, align 8
  %30 = load %struct.root*, %struct.root** %6, align 8
  %31 = getelementptr inbounds %struct.root, %struct.root* %30, i32 0, i32 1
  %32 = load double, double* %31, align 8
  %33 = load %struct.root*, %struct.root** %6, align 8
  %34 = getelementptr inbounds %struct.root, %struct.root* %33, i32 0, i32 4
  store double %32, double* %34, align 8
  %35 = load %struct.root*, %struct.root** %6, align 8
  %36 = getelementptr inbounds %struct.root, %struct.root* %35, i32 0, i32 2
  %37 = load double, double* %36, align 8
  %38 = load %struct.root*, %struct.root** %6, align 8
  %39 = getelementptr inbounds %struct.root, %struct.root* %38, i32 0, i32 5
  store double %37, double* %39, align 8
  %40 = load %struct.root*, %struct.root** %6, align 8
  %41 = getelementptr inbounds %struct.root, %struct.root* %40, i32 0, i32 1
  store double 0x3FE6666666666666, double* %41, align 8
  %42 = load %struct.root*, %struct.root** %6, align 8
  %43 = getelementptr inbounds %struct.root, %struct.root* %42, i32 0, i32 2
  store double 1.400000e-01, double* %43, align 8
  br label %44

44:                                               ; preds = %205, %2
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br i1 %47, label %48, label %206

48:                                               ; preds = %44
  %49 = load %struct.root*, %struct.root** %6, align 8
  call void @Compute_Tree(%struct.root* %49)
  %50 = load %struct.root*, %struct.root** %6, align 8
  %51 = getelementptr inbounds %struct.root, %struct.root* %50, i32 0, i32 1
  %52 = load double, double* %51, align 8
  %53 = load %struct.root*, %struct.root** %6, align 8
  %54 = getelementptr inbounds %struct.root, %struct.root* %53, i32 0, i32 2
  %55 = load double, double* %54, align 8
  %56 = load %struct.root*, %struct.root** %6, align 8
  %57 = getelementptr inbounds %struct.root, %struct.root* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.demand, %struct.demand* %57, i32 0, i32 0
  %59 = load double, double* %58, align 8
  %60 = load %struct.root*, %struct.root** %6, align 8
  %61 = getelementptr inbounds %struct.root, %struct.root* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.demand, %struct.demand* %61, i32 0, i32 1
  %63 = load double, double* %62, align 8
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), double %52, double %55, double %59, double %63)
  %65 = load %struct.root*, %struct.root** %6, align 8
  %66 = getelementptr inbounds %struct.root, %struct.root* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.demand, %struct.demand* %66, i32 0, i32 0
  %68 = load double, double* %67, align 8
  %69 = fdiv double %68, 1.000000e+04
  %70 = load %struct.root*, %struct.root** %6, align 8
  %71 = getelementptr inbounds %struct.root, %struct.root* %70, i32 0, i32 1
  %72 = load double, double* %71, align 8
  %73 = fsub double %69, %72
  %74 = call double @llvm.fabs.f64(double %73)
  %75 = fcmp olt double %74, 1.000000e-05
  br i1 %75, label %76, label %89

76:                                               ; preds = %48
  %77 = load %struct.root*, %struct.root** %6, align 8
  %78 = getelementptr inbounds %struct.root, %struct.root* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.demand, %struct.demand* %78, i32 0, i32 1
  %80 = load double, double* %79, align 8
  %81 = fdiv double %80, 1.000000e+04
  %82 = load %struct.root*, %struct.root** %6, align 8
  %83 = getelementptr inbounds %struct.root, %struct.root* %82, i32 0, i32 2
  %84 = load double, double* %83, align 8
  %85 = fsub double %81, %84
  %86 = call double @llvm.fabs.f64(double %85)
  %87 = fcmp olt double %86, 1.000000e-05
  br i1 %87, label %88, label %89

88:                                               ; preds = %76
  store i32 1, i32* %8, align 4
  br label %205

89:                                               ; preds = %76, %48
  %90 = load %struct.root*, %struct.root** %6, align 8
  %91 = getelementptr inbounds %struct.root, %struct.root* %90, i32 0, i32 1
  %92 = load double, double* %91, align 8
  %93 = fsub double %92, 6.500000e-01
  %94 = fdiv double %93, 1.000000e-02
  %95 = fptosi double %94 to i32
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %89
  store i32 0, i32* %7, align 4
  br label %99

99:                                               ; preds = %98, %89
  %100 = load i32, i32* %7, align 4
  %101 = icmp sgt i32 %100, 35
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  store i32 35, i32* %7, align 4
  br label %103

103:                                              ; preds = %102, %99
  %104 = load %struct.root*, %struct.root** %6, align 8
  %105 = getelementptr inbounds %struct.root, %struct.root* %104, i32 0, i32 1
  %106 = load double, double* %105, align 8
  %107 = load %struct.root*, %struct.root** %6, align 8
  %108 = getelementptr inbounds %struct.root, %struct.root* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.demand, %struct.demand* %108, i32 0, i32 0
  %110 = load double, double* %109, align 8
  %111 = fdiv double %110, 1.000000e+04
  %112 = fsub double %106, %111
  %113 = fneg double %112
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [36 x double], [36 x double]* @map_P, i64 0, i64 %116
  %118 = load double, double* %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [36 x double], [36 x double]* @map_P, i64 0, i64 %120
  %122 = load double, double* %121, align 8
  %123 = fsub double %118, %122
  %124 = fdiv double %123, 1.000000e+02
  %125 = fsub double 1.000000e+00, %124
  %126 = fdiv double %113, %125
  store double %126, double* %9, align 8
  %127 = load %struct.root*, %struct.root** %6, align 8
  %128 = getelementptr inbounds %struct.root, %struct.root* %127, i32 0, i32 2
  %129 = load double, double* %128, align 8
  %130 = fsub double %129, 1.300000e-01
  %131 = fdiv double %130, 2.000000e-03
  %132 = fptosi double %131 to i32
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %103
  store i32 0, i32* %7, align 4
  br label %136

136:                                              ; preds = %135, %103
  %137 = load i32, i32* %7, align 4
  %138 = icmp sgt i32 %137, 35
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  store i32 35, i32* %7, align 4
  br label %140

140:                                              ; preds = %139, %136
  %141 = load %struct.root*, %struct.root** %6, align 8
  %142 = getelementptr inbounds %struct.root, %struct.root* %141, i32 0, i32 2
  %143 = load double, double* %142, align 8
  %144 = load %struct.root*, %struct.root** %6, align 8
  %145 = getelementptr inbounds %struct.root, %struct.root* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.demand, %struct.demand* %145, i32 0, i32 1
  %147 = load double, double* %146, align 8
  %148 = fdiv double %147, 1.000000e+04
  %149 = fsub double %143, %148
  %150 = fneg double %149
  %151 = load i32, i32* %7, align 4
  %152 = add nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [36 x double], [36 x double]* @map_Q, i64 0, i64 %153
  %155 = load double, double* %154, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [36 x double], [36 x double]* @map_Q, i64 0, i64 %157
  %159 = load double, double* %158, align 8
  %160 = fsub double %155, %159
  %161 = fdiv double %160, 2.000000e+01
  %162 = fsub double 1.000000e+00, %161
  %163 = fdiv double %150, %162
  store double %163, double* %10, align 8
  %164 = load double, double* %9, align 8
  %165 = load double, double* %10, align 8
  %166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), double %164, double %165)
  %167 = load %struct.root*, %struct.root** %6, align 8
  %168 = getelementptr inbounds %struct.root, %struct.root* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.demand, %struct.demand* %168, i32 0, i32 0
  %170 = load double, double* %169, align 8
  %171 = load %struct.root*, %struct.root** %6, align 8
  %172 = getelementptr inbounds %struct.root, %struct.root* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.demand, %struct.demand* %172, i32 0, i32 0
  store double %170, double* %173, align 8
  %174 = load %struct.root*, %struct.root** %6, align 8
  %175 = getelementptr inbounds %struct.root, %struct.root* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.demand, %struct.demand* %175, i32 0, i32 1
  %177 = load double, double* %176, align 8
  %178 = load %struct.root*, %struct.root** %6, align 8
  %179 = getelementptr inbounds %struct.root, %struct.root* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.demand, %struct.demand* %179, i32 0, i32 1
  store double %177, double* %180, align 8
  %181 = load %struct.root*, %struct.root** %6, align 8
  %182 = getelementptr inbounds %struct.root, %struct.root* %181, i32 0, i32 1
  %183 = load double, double* %182, align 8
  %184 = load %struct.root*, %struct.root** %6, align 8
  %185 = getelementptr inbounds %struct.root, %struct.root* %184, i32 0, i32 4
  store double %183, double* %185, align 8
  %186 = load %struct.root*, %struct.root** %6, align 8
  %187 = getelementptr inbounds %struct.root, %struct.root* %186, i32 0, i32 2
  %188 = load double, double* %187, align 8
  %189 = load %struct.root*, %struct.root** %6, align 8
  %190 = getelementptr inbounds %struct.root, %struct.root* %189, i32 0, i32 5
  store double %188, double* %190, align 8
  %191 = load %struct.root*, %struct.root** %6, align 8
  %192 = getelementptr inbounds %struct.root, %struct.root* %191, i32 0, i32 1
  %193 = load double, double* %192, align 8
  %194 = load double, double* %9, align 8
  %195 = fadd double %193, %194
  %196 = load %struct.root*, %struct.root** %6, align 8
  %197 = getelementptr inbounds %struct.root, %struct.root* %196, i32 0, i32 1
  store double %195, double* %197, align 8
  %198 = load %struct.root*, %struct.root** %6, align 8
  %199 = getelementptr inbounds %struct.root, %struct.root* %198, i32 0, i32 2
  %200 = load double, double* %199, align 8
  %201 = load double, double* %10, align 8
  %202 = fadd double %200, %201
  %203 = load %struct.root*, %struct.root** %6, align 8
  %204 = getelementptr inbounds %struct.root, %struct.root* %203, i32 0, i32 2
  store double %202, double* %204, align 8
  br label %205

205:                                              ; preds = %140, %88
  br label %44

206:                                              ; preds = %44
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

!llvm.ident = !{!0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
