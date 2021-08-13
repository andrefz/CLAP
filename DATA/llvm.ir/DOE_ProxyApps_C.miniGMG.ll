; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.box_type = type { double, %struct.anon, %struct.anon, %struct.anon, i32, i32, i32, i32, i32, [27 x i32], double**, i64*, [2 x double*], i8* }
%struct.anon = type { i32, i32, i32 }
%struct.subdomain_type = type { %struct.anon, %struct.anon, i32, i32, [27 x %struct.neighbor_type], %struct.box_type* }
%struct.neighbor_type = type { i32, i32 }
%struct.domain_type = type { %struct.anon.4, i32, i32, i32, i32, [27 x i32], [10 x %struct.bufferCopy_type*], i32, i32, i32, i32, i32, i32, %struct.anon, %struct.anon, %struct.anon, %struct.anon, %struct.anon, i32, i32, i32, i32, i32, [10 x double], [10 x double], %struct.subdomain_type* }
%struct.anon.4 = type { [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], i64, i64, i64 }
%struct.bufferCopy_type = type { i32, i32, i32, %struct.anon, %struct.anon.6, %struct.anon.6 }
%struct.anon.6 = type { i32, i32, i32, i32, i32, i32, double* }

@RandomPadding = dso_local global i32 -1, align 4
@.str = private unnamed_addr constant [26 x i8] c"creating domain...       \00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"#ghosts(%d)>bottom grid size(%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"subdomain_dim's must be equal\0A\00", align 1
@__const.create_domain.FacesEdgesCorners = private unnamed_addr constant [27 x i32] [i32 4, i32 10, i32 12, i32 14, i32 16, i32 22, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 0, i32 2, i32 6, i32 8, i32 18, i32 20, i32 24, i32 26, i32 13], align 16
@__const.create_domain.edges = private unnamed_addr constant [27 x i32] [i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0], align 16
@__const.create_domain.corners = private unnamed_addr constant [27 x i32] [i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1], align 16
@.str.3 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"  %d x %d x %d (per subdomain)\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"  %d x %d x %d (per process)\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"  %d x %d x %d (overall)\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"  %d-deep ghost zones\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"  allocated %llu MB\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"deallocating domain...   \00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"MGBuild...                      \00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"MGSolve...                      \00", align 1
@.str.12 = private unnamed_addr constant [88 x i8] c"usage: ./a.out [log2_subdomain_dim]   [subdomains per rank in i,j,k]  [ranks in i,j,k]\0A\00", align 1
@.str.1.13 = private unnamed_addr constant [71 x i8] c"error, ranks_in_i*ranks_in_j*ranks_in_k(%d*%d*%d=%d) != MPI_Tasks(%d)\0A\00", align 1
@.str.2.14 = private unnamed_addr constant [28 x i8] c"%d MPI Tasks of %d threads\0A\00", align 1
@.str.3.15 = private unnamed_addr constant [43 x i8] c"truncating the v-cycle at %d^3 subdomains\0A\00", align 1
@.str.4.16 = private unnamed_addr constant [58 x i8] c"initializing alpha, beta, RHS for the ``hard problem''...\00", align 1
@.str.5.17 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@.str.6.18 = private unnamed_addr constant [30 x i8] c"Error test: h = %e, max = %e\0A\00", align 1
@.str.7.19 = private unnamed_addr constant [30 x i8] c"Error test: h = %e, L2  = %e\0A\00", align 1
@__const.exchange_boundary.edges = private unnamed_addr constant [27 x i32] [i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0], align 16
@__const.exchange_boundary.corners = private unnamed_addr constant [27 x i32] [i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1], align 16
@.str.24 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1.25 = private unnamed_addr constant [35 x i8] c"  level=%2d, eigenvalue_max ~= %e\0A\00", align 1
@.str.2.50 = private unnamed_addr constant [33 x i8] c"\0A  average value of f = %20.12e\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @create_box(%struct.box_type* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.box_type*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca double*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.box_type* %0, %struct.box_type** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i64 0, i64* %19, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.box_type*, %struct.box_type** %10, align 8
  %29 = getelementptr inbounds %struct.box_type, %struct.box_type* %28, i32 0, i32 8
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.box_type*, %struct.box_type** %10, align 8
  %32 = getelementptr inbounds %struct.box_type, %struct.box_type* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.anon, %struct.anon* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load i32, i32* %13, align 4
  %35 = load %struct.box_type*, %struct.box_type** %10, align 8
  %36 = getelementptr inbounds %struct.box_type, %struct.box_type* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.anon, %struct.anon* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load %struct.box_type*, %struct.box_type** %10, align 8
  %40 = getelementptr inbounds %struct.box_type, %struct.box_type* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.anon, %struct.anon* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 8
  %42 = load i32, i32* %15, align 4
  %43 = load %struct.box_type*, %struct.box_type** %10, align 8
  %44 = getelementptr inbounds %struct.box_type, %struct.box_type* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.anon, %struct.anon* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* %16, align 4
  %47 = load %struct.box_type*, %struct.box_type** %10, align 8
  %48 = getelementptr inbounds %struct.box_type, %struct.box_type* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.anon, %struct.anon* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* %17, align 4
  %51 = load %struct.box_type*, %struct.box_type** %10, align 8
  %52 = getelementptr inbounds %struct.box_type, %struct.box_type* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.anon, %struct.anon* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %18, align 4
  %56 = mul nsw i32 2, %55
  %57 = add nsw i32 %54, %56
  %58 = load %struct.box_type*, %struct.box_type** %10, align 8
  %59 = getelementptr inbounds %struct.box_type, %struct.box_type* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.anon, %struct.anon* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* %18, align 4
  %63 = mul nsw i32 2, %62
  %64 = add nsw i32 %61, %63
  %65 = load %struct.box_type*, %struct.box_type** %10, align 8
  %66 = getelementptr inbounds %struct.box_type, %struct.box_type* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.anon, %struct.anon* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* %17, align 4
  %69 = load i32, i32* %18, align 4
  %70 = mul nsw i32 2, %69
  %71 = add nsw i32 %68, %70
  %72 = load %struct.box_type*, %struct.box_type** %10, align 8
  %73 = getelementptr inbounds %struct.box_type, %struct.box_type* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.anon, %struct.anon* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 8
  %75 = load i32, i32* %18, align 4
  %76 = load %struct.box_type*, %struct.box_type** %10, align 8
  %77 = getelementptr inbounds %struct.box_type, %struct.box_type* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %18, align 4
  %80 = mul nsw i32 2, %79
  %81 = add nsw i32 %78, %80
  %82 = load %struct.box_type*, %struct.box_type** %10, align 8
  %83 = getelementptr inbounds %struct.box_type, %struct.box_type* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* %18, align 4
  %86 = mul nsw i32 2, %85
  %87 = add nsw i32 %84, %86
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %18, align 4
  %90 = mul nsw i32 2, %89
  %91 = add nsw i32 %88, %90
  %92 = mul nsw i32 %87, %91
  %93 = load %struct.box_type*, %struct.box_type** %10, align 8
  %94 = getelementptr inbounds %struct.box_type, %struct.box_type* %93, i32 0, i32 6
  store i32 %92, i32* %94, align 4
  store i32 16, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %95 = load %struct.box_type*, %struct.box_type** %10, align 8
  %96 = getelementptr inbounds %struct.box_type, %struct.box_type* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  %99 = load i32, i32* %20, align 4
  %100 = sub nsw i32 %99, 1
  %101 = icmp slt i32 %98, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %9
  %103 = load i32, i32* %20, align 4
  %104 = sub nsw i32 %103, 1
  %105 = load %struct.box_type*, %struct.box_type** %10, align 8
  %106 = getelementptr inbounds %struct.box_type, %struct.box_type* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 1
  %109 = sub nsw i32 %104, %108
  store i32 %109, i32* %21, align 4
  br label %110

110:                                              ; preds = %102, %9
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* %18, align 4
  %113 = mul nsw i32 2, %112
  %114 = add nsw i32 %111, %113
  %115 = load %struct.box_type*, %struct.box_type** %10, align 8
  %116 = getelementptr inbounds %struct.box_type, %struct.box_type* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 8
  %118 = mul nsw i32 %114, %117
  %119 = load i32, i32* %21, align 4
  %120 = add nsw i32 %118, %119
  %121 = add nsw i32 %120, 7
  %122 = and i32 %121, -8
  %123 = load %struct.box_type*, %struct.box_type** %10, align 8
  %124 = getelementptr inbounds %struct.box_type, %struct.box_type* %123, i32 0, i32 6
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* %18, align 4
  %127 = mul nsw i32 2, %126
  %128 = add nsw i32 %125, %127
  %129 = load %struct.box_type*, %struct.box_type** %10, align 8
  %130 = getelementptr inbounds %struct.box_type, %struct.box_type* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 4
  %132 = mul nsw i32 %128, %131
  %133 = load %struct.box_type*, %struct.box_type** %10, align 8
  %134 = getelementptr inbounds %struct.box_type, %struct.box_type* %133, i32 0, i32 7
  store i32 %132, i32* %134, align 8
  %135 = load i32, i32* %15, align 4
  %136 = icmp sge i32 %135, 32
  br i1 %136, label %137, label %150

137:                                              ; preds = %110
  br label %138

138:                                              ; preds = %144, %137
  %139 = load %struct.box_type*, %struct.box_type** %10, align 8
  %140 = getelementptr inbounds %struct.box_type, %struct.box_type* %139, i32 0, i32 7
  %141 = load i32, i32* %140, align 8
  %142 = srem i32 %141, 512
  %143 = icmp ne i32 %142, 64
  br i1 %143, label %144, label %149

144:                                              ; preds = %138
  %145 = load %struct.box_type*, %struct.box_type** %10, align 8
  %146 = getelementptr inbounds %struct.box_type, %struct.box_type* %145, i32 0, i32 7
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %147, 8
  store i32 %148, i32* %146, align 8
  br label %138

149:                                              ; preds = %138
  br label %150

150:                                              ; preds = %149, %110
  %151 = load %struct.box_type*, %struct.box_type** %10, align 8
  %152 = getelementptr inbounds %struct.box_type, %struct.box_type* %151, i32 0, i32 10
  %153 = bitcast double*** %152 to i8**
  %154 = load %struct.box_type*, %struct.box_type** %10, align 8
  %155 = getelementptr inbounds %struct.box_type, %struct.box_type* %154, i32 0, i32 8
  %156 = load i32, i32* %155, align 4
  %157 = sext i32 %156 to i64
  %158 = mul i64 %157, 8
  %159 = call i32 @posix_memalign(i8** %153, i64 64, i64 %158) #8
  %160 = load %struct.box_type*, %struct.box_type** %10, align 8
  %161 = getelementptr inbounds %struct.box_type, %struct.box_type* %160, i32 0, i32 8
  %162 = load i32, i32* %161, align 4
  %163 = sext i32 %162 to i64
  %164 = mul i64 %163, 8
  %165 = load i64, i64* %19, align 8
  %166 = add i64 %165, %164
  store i64 %166, i64* %19, align 8
  %167 = bitcast double** %22 to i8**
  %168 = load %struct.box_type*, %struct.box_type** %10, align 8
  %169 = getelementptr inbounds %struct.box_type, %struct.box_type* %168, i32 0, i32 7
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.box_type*, %struct.box_type** %10, align 8
  %172 = getelementptr inbounds %struct.box_type, %struct.box_type* %171, i32 0, i32 8
  %173 = load i32, i32* %172, align 4
  %174 = mul nsw i32 %170, %173
  %175 = sext i32 %174 to i64
  %176 = mul i64 %175, 8
  %177 = call i32 @posix_memalign(i8** %167, i64 64, i64 %176) #8
  %178 = load double*, double** %22, align 8
  %179 = bitcast double* %178 to i8*
  %180 = load %struct.box_type*, %struct.box_type** %10, align 8
  %181 = getelementptr inbounds %struct.box_type, %struct.box_type* %180, i32 0, i32 7
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.box_type*, %struct.box_type** %10, align 8
  %184 = getelementptr inbounds %struct.box_type, %struct.box_type* %183, i32 0, i32 8
  %185 = load i32, i32* %184, align 4
  %186 = mul nsw i32 %182, %185
  %187 = sext i32 %186 to i64
  %188 = mul i64 %187, 8
  call void @llvm.memset.p0i8.i64(i8* align 8 %179, i8 0, i64 %188, i1 false)
  %189 = load %struct.box_type*, %struct.box_type** %10, align 8
  %190 = getelementptr inbounds %struct.box_type, %struct.box_type* %189, i32 0, i32 7
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.box_type*, %struct.box_type** %10, align 8
  %193 = getelementptr inbounds %struct.box_type, %struct.box_type* %192, i32 0, i32 8
  %194 = load i32, i32* %193, align 4
  %195 = mul nsw i32 %191, %194
  %196 = sext i32 %195 to i64
  %197 = mul i64 %196, 8
  %198 = load i64, i64* %19, align 8
  %199 = add i64 %198, %197
  store i64 %199, i64* %19, align 8
  store i32 0, i32* %23, align 4
  br label %200

200:                                              ; preds = %221, %150
  %201 = load i32, i32* %23, align 4
  %202 = load %struct.box_type*, %struct.box_type** %10, align 8
  %203 = getelementptr inbounds %struct.box_type, %struct.box_type* %202, i32 0, i32 8
  %204 = load i32, i32* %203, align 4
  %205 = icmp slt i32 %201, %204
  br i1 %205, label %206, label %224

206:                                              ; preds = %200
  %207 = load double*, double** %22, align 8
  %208 = load i32, i32* %23, align 4
  %209 = load %struct.box_type*, %struct.box_type** %10, align 8
  %210 = getelementptr inbounds %struct.box_type, %struct.box_type* %209, i32 0, i32 7
  %211 = load i32, i32* %210, align 8
  %212 = mul nsw i32 %208, %211
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds double, double* %207, i64 %213
  %215 = load %struct.box_type*, %struct.box_type** %10, align 8
  %216 = getelementptr inbounds %struct.box_type, %struct.box_type* %215, i32 0, i32 10
  %217 = load double**, double*** %216, align 8
  %218 = load i32, i32* %23, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds double*, double** %217, i64 %219
  store double* %214, double** %220, align 8
  br label %221

221:                                              ; preds = %206
  %222 = load i32, i32* %23, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %23, align 4
  br label %200

224:                                              ; preds = %200
  %225 = load %struct.box_type*, %struct.box_type** %10, align 8
  %226 = getelementptr inbounds %struct.box_type, %struct.box_type* %225, i32 0, i32 11
  %227 = bitcast i64** %226 to i8**
  %228 = load %struct.box_type*, %struct.box_type** %10, align 8
  %229 = getelementptr inbounds %struct.box_type, %struct.box_type* %228, i32 0, i32 6
  %230 = load i32, i32* %229, align 4
  %231 = sext i32 %230 to i64
  %232 = mul i64 %231, 8
  %233 = call i32 @posix_memalign(i8** %227, i64 64, i64 %232) #8
  %234 = load %struct.box_type*, %struct.box_type** %10, align 8
  %235 = getelementptr inbounds %struct.box_type, %struct.box_type* %234, i32 0, i32 11
  %236 = load i64*, i64** %235, align 8
  %237 = bitcast i64* %236 to i8*
  %238 = load %struct.box_type*, %struct.box_type** %10, align 8
  %239 = getelementptr inbounds %struct.box_type, %struct.box_type* %238, i32 0, i32 6
  %240 = load i32, i32* %239, align 4
  %241 = sext i32 %240 to i64
  %242 = mul i64 %241, 8
  call void @llvm.memset.p0i8.i64(i8* align 8 %237, i8 0, i64 %242, i1 false)
  %243 = load %struct.box_type*, %struct.box_type** %10, align 8
  %244 = getelementptr inbounds %struct.box_type, %struct.box_type* %243, i32 0, i32 6
  %245 = load i32, i32* %244, align 4
  %246 = sext i32 %245 to i64
  %247 = mul i64 %246, 8
  %248 = load i64, i64* %19, align 8
  %249 = add i64 %248, %247
  store i64 %249, i64* %19, align 8
  %250 = load %struct.box_type*, %struct.box_type** %10, align 8
  %251 = getelementptr inbounds %struct.box_type, %struct.box_type* %250, i32 0, i32 12
  %252 = getelementptr inbounds [2 x double*], [2 x double*]* %251, i64 0, i64 0
  %253 = bitcast double** %252 to i8**
  %254 = load %struct.box_type*, %struct.box_type** %10, align 8
  %255 = getelementptr inbounds %struct.box_type, %struct.box_type* %254, i32 0, i32 6
  %256 = load i32, i32* %255, align 4
  %257 = sext i32 %256 to i64
  %258 = mul i64 %257, 8
  %259 = call i32 @posix_memalign(i8** %253, i64 64, i64 %258) #8
  %260 = load %struct.box_type*, %struct.box_type** %10, align 8
  %261 = getelementptr inbounds %struct.box_type, %struct.box_type* %260, i32 0, i32 12
  %262 = getelementptr inbounds [2 x double*], [2 x double*]* %261, i64 0, i64 0
  %263 = load double*, double** %262, align 8
  %264 = bitcast double* %263 to i8*
  %265 = load %struct.box_type*, %struct.box_type** %10, align 8
  %266 = getelementptr inbounds %struct.box_type, %struct.box_type* %265, i32 0, i32 6
  %267 = load i32, i32* %266, align 4
  %268 = sext i32 %267 to i64
  %269 = mul i64 %268, 8
  call void @llvm.memset.p0i8.i64(i8* align 8 %264, i8 0, i64 %269, i1 false)
  %270 = load %struct.box_type*, %struct.box_type** %10, align 8
  %271 = getelementptr inbounds %struct.box_type, %struct.box_type* %270, i32 0, i32 6
  %272 = load i32, i32* %271, align 4
  %273 = sext i32 %272 to i64
  %274 = mul i64 %273, 8
  %275 = load i64, i64* %19, align 8
  %276 = add i64 %275, %274
  store i64 %276, i64* %19, align 8
  %277 = load %struct.box_type*, %struct.box_type** %10, align 8
  %278 = getelementptr inbounds %struct.box_type, %struct.box_type* %277, i32 0, i32 12
  %279 = getelementptr inbounds [2 x double*], [2 x double*]* %278, i64 0, i64 1
  %280 = bitcast double** %279 to i8**
  %281 = load %struct.box_type*, %struct.box_type** %10, align 8
  %282 = getelementptr inbounds %struct.box_type, %struct.box_type* %281, i32 0, i32 6
  %283 = load i32, i32* %282, align 4
  %284 = sext i32 %283 to i64
  %285 = mul i64 %284, 8
  %286 = call i32 @posix_memalign(i8** %280, i64 64, i64 %285) #8
  %287 = load %struct.box_type*, %struct.box_type** %10, align 8
  %288 = getelementptr inbounds %struct.box_type, %struct.box_type* %287, i32 0, i32 12
  %289 = getelementptr inbounds [2 x double*], [2 x double*]* %288, i64 0, i64 1
  %290 = load double*, double** %289, align 8
  %291 = bitcast double* %290 to i8*
  %292 = load %struct.box_type*, %struct.box_type** %10, align 8
  %293 = getelementptr inbounds %struct.box_type, %struct.box_type* %292, i32 0, i32 6
  %294 = load i32, i32* %293, align 4
  %295 = sext i32 %294 to i64
  %296 = mul i64 %295, 8
  call void @llvm.memset.p0i8.i64(i8* align 8 %291, i8 0, i64 %296, i1 false)
  %297 = load %struct.box_type*, %struct.box_type** %10, align 8
  %298 = getelementptr inbounds %struct.box_type, %struct.box_type* %297, i32 0, i32 6
  %299 = load i32, i32* %298, align 4
  %300 = sext i32 %299 to i64
  %301 = mul i64 %300, 8
  %302 = load i64, i64* %19, align 8
  %303 = add i64 %302, %301
  store i64 %303, i64* %19, align 8
  %304 = load i32, i32* %18, align 4
  %305 = sub nsw i32 0, %304
  store i32 %305, i32* %25, align 4
  br label %306

306:                                              ; preds = %407, %224
  %307 = load i32, i32* %25, align 4
  %308 = load %struct.box_type*, %struct.box_type** %10, align 8
  %309 = getelementptr inbounds %struct.box_type, %struct.box_type* %308, i32 0, i32 2
  %310 = getelementptr inbounds %struct.anon, %struct.anon* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* %18, align 4
  %313 = add nsw i32 %311, %312
  %314 = icmp slt i32 %307, %313
  br i1 %314, label %315, label %410

315:                                              ; preds = %306
  %316 = load i32, i32* %18, align 4
  %317 = sub nsw i32 0, %316
  store i32 %317, i32* %24, align 4
  br label %318

318:                                              ; preds = %403, %315
  %319 = load i32, i32* %24, align 4
  %320 = load %struct.box_type*, %struct.box_type** %10, align 8
  %321 = getelementptr inbounds %struct.box_type, %struct.box_type* %320, i32 0, i32 2
  %322 = getelementptr inbounds %struct.anon, %struct.anon* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* %18, align 4
  %325 = add nsw i32 %323, %324
  %326 = icmp slt i32 %319, %325
  br i1 %326, label %327, label %406

327:                                              ; preds = %318
  %328 = load i32, i32* %24, align 4
  %329 = load i32, i32* %18, align 4
  %330 = add nsw i32 %328, %329
  %331 = load i32, i32* %25, align 4
  %332 = load i32, i32* %18, align 4
  %333 = add nsw i32 %331, %332
  %334 = load %struct.box_type*, %struct.box_type** %10, align 8
  %335 = getelementptr inbounds %struct.box_type, %struct.box_type* %334, i32 0, i32 5
  %336 = load i32, i32* %335, align 8
  %337 = mul nsw i32 %333, %336
  %338 = add nsw i32 %330, %337
  store i32 %338, i32* %26, align 4
  %339 = load i32, i32* %24, align 4
  %340 = load i32, i32* %25, align 4
  %341 = xor i32 %339, %340
  %342 = and i32 %341, 1
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %351

344:                                              ; preds = %327
  %345 = load %struct.box_type*, %struct.box_type** %10, align 8
  %346 = getelementptr inbounds %struct.box_type, %struct.box_type* %345, i32 0, i32 11
  %347 = load i64*, i64** %346, align 8
  %348 = load i32, i32* %26, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i64, i64* %347, i64 %349
  store i64 -1, i64* %350, align 8
  br label %358

351:                                              ; preds = %327
  %352 = load %struct.box_type*, %struct.box_type** %10, align 8
  %353 = getelementptr inbounds %struct.box_type, %struct.box_type* %352, i32 0, i32 11
  %354 = load i64*, i64** %353, align 8
  %355 = load i32, i32* %26, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i64, i64* %354, i64 %356
  store i64 0, i64* %357, align 8
  br label %358

358:                                              ; preds = %351, %344
  %359 = load i32, i32* %24, align 4
  %360 = load i32, i32* %25, align 4
  %361 = xor i32 %359, %360
  %362 = and i32 %361, 1
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %372

364:                                              ; preds = %358
  %365 = load %struct.box_type*, %struct.box_type** %10, align 8
  %366 = getelementptr inbounds %struct.box_type, %struct.box_type* %365, i32 0, i32 12
  %367 = getelementptr inbounds [2 x double*], [2 x double*]* %366, i64 0, i64 0
  %368 = load double*, double** %367, align 8
  %369 = load i32, i32* %26, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds double, double* %368, i64 %370
  store double 1.000000e+00, double* %371, align 8
  br label %380

372:                                              ; preds = %358
  %373 = load %struct.box_type*, %struct.box_type** %10, align 8
  %374 = getelementptr inbounds %struct.box_type, %struct.box_type* %373, i32 0, i32 12
  %375 = getelementptr inbounds [2 x double*], [2 x double*]* %374, i64 0, i64 0
  %376 = load double*, double** %375, align 8
  %377 = load i32, i32* %26, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds double, double* %376, i64 %378
  store double 0.000000e+00, double* %379, align 8
  br label %380

380:                                              ; preds = %372, %364
  %381 = load i32, i32* %24, align 4
  %382 = load i32, i32* %25, align 4
  %383 = xor i32 %381, %382
  %384 = and i32 %383, 1
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %394

386:                                              ; preds = %380
  %387 = load %struct.box_type*, %struct.box_type** %10, align 8
  %388 = getelementptr inbounds %struct.box_type, %struct.box_type* %387, i32 0, i32 12
  %389 = getelementptr inbounds [2 x double*], [2 x double*]* %388, i64 0, i64 1
  %390 = load double*, double** %389, align 8
  %391 = load i32, i32* %26, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds double, double* %390, i64 %392
  store double 0.000000e+00, double* %393, align 8
  br label %402

394:                                              ; preds = %380
  %395 = load %struct.box_type*, %struct.box_type** %10, align 8
  %396 = getelementptr inbounds %struct.box_type, %struct.box_type* %395, i32 0, i32 12
  %397 = getelementptr inbounds [2 x double*], [2 x double*]* %396, i64 0, i64 1
  %398 = load double*, double** %397, align 8
  %399 = load i32, i32* %26, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds double, double* %398, i64 %400
  store double 1.000000e+00, double* %401, align 8
  br label %402

402:                                              ; preds = %394, %386
  br label %403

403:                                              ; preds = %402
  %404 = load i32, i32* %24, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %24, align 4
  br label %318

406:                                              ; preds = %318
  br label %407

407:                                              ; preds = %406
  %408 = load i32, i32* %25, align 4
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %25, align 4
  br label %306

410:                                              ; preds = %306
  %411 = load i64, i64* %19, align 8
  %412 = trunc i64 %411 to i32
  ret i32 %412
}

; Function Attrs: nounwind
declare dso_local i32 @posix_memalign(i8**, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @destroy_box(%struct.box_type* %0) #0 {
  %2 = alloca %struct.box_type*, align 8
  store %struct.box_type* %0, %struct.box_type** %2, align 8
  %3 = load %struct.box_type*, %struct.box_type** %2, align 8
  %4 = getelementptr inbounds %struct.box_type, %struct.box_type* %3, i32 0, i32 10
  %5 = load double**, double*** %4, align 8
  %6 = getelementptr inbounds double*, double** %5, i64 0
  %7 = load double*, double** %6, align 8
  %8 = bitcast double* %7 to i8*
  call void @free(i8* %8) #8
  %9 = load %struct.box_type*, %struct.box_type** %2, align 8
  %10 = getelementptr inbounds %struct.box_type, %struct.box_type* %9, i32 0, i32 10
  %11 = load double**, double*** %10, align 8
  %12 = bitcast double** %11 to i8*
  call void @free(i8* %12) #8
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @create_subdomain(%struct.subdomain_type* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.subdomain_type*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.subdomain_type* %0, %struct.subdomain_type** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  store i64 0, i64* %22, align 8
  %24 = load i32, i32* %20, align 4
  %25 = load %struct.subdomain_type*, %struct.subdomain_type** %11, align 8
  %26 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %19, align 4
  %28 = load %struct.subdomain_type*, %struct.subdomain_type** %11, align 8
  %29 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.subdomain_type*, %struct.subdomain_type** %11, align 8
  %32 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.anon, %struct.anon* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load i32, i32* %13, align 4
  %35 = load %struct.subdomain_type*, %struct.subdomain_type** %11, align 8
  %36 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.anon, %struct.anon* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load %struct.subdomain_type*, %struct.subdomain_type** %11, align 8
  %40 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.anon, %struct.anon* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 8
  %42 = load i32, i32* %15, align 4
  %43 = load %struct.subdomain_type*, %struct.subdomain_type** %11, align 8
  %44 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.anon, %struct.anon* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* %16, align 4
  %47 = load %struct.subdomain_type*, %struct.subdomain_type** %11, align 8
  %48 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.anon, %struct.anon* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* %17, align 4
  %51 = load %struct.subdomain_type*, %struct.subdomain_type** %11, align 8
  %52 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.anon, %struct.anon* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 4
  %54 = load %struct.subdomain_type*, %struct.subdomain_type** %11, align 8
  %55 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %54, i32 0, i32 5
  %56 = bitcast %struct.box_type** %55 to i8**
  %57 = load i32, i32* %20, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 216
  %60 = call i32 @posix_memalign(i8** %56, i64 64, i64 %59) #8
  %61 = load i32, i32* %20, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 216
  %64 = load i64, i64* %22, align 8
  %65 = add i64 %64, %63
  store i64 %65, i64* %22, align 8
  store i32 0, i32* %21, align 4
  br label %66

66:                                               ; preds = %111, %10
  %67 = load i32, i32* %21, align 4
  %68 = load i32, i32* %20, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %114

70:                                               ; preds = %66
  %71 = load i32, i32* %18, align 4
  store i32 %71, i32* %23, align 4
  %72 = load i32, i32* %21, align 4
  %73 = load i32, i32* %20, align 4
  %74 = sub nsw i32 %73, 1
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = call i32 (...) bitcast (i32 ()* @IterativeSolver_NumGrids to i32 (...)*)()
  %78 = load i32, i32* %23, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %23, align 4
  br label %80

80:                                               ; preds = %76, %70
  %81 = load %struct.subdomain_type*, %struct.subdomain_type** %11, align 8
  %82 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %81, i32 0, i32 5
  %83 = load %struct.box_type*, %struct.box_type** %82, align 8
  %84 = load i32, i32* %21, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.box_type, %struct.box_type* %83, i64 %85
  %87 = load i32, i32* %23, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %21, align 4
  %90 = ashr i32 %88, %89
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %21, align 4
  %93 = ashr i32 %91, %92
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %21, align 4
  %96 = ashr i32 %94, %95
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %21, align 4
  %99 = ashr i32 %97, %98
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* %21, align 4
  %102 = ashr i32 %100, %101
  %103 = load i32, i32* %17, align 4
  %104 = load i32, i32* %21, align 4
  %105 = ashr i32 %103, %104
  %106 = load i32, i32* %19, align 4
  %107 = call i32 @create_box(%struct.box_type* %86, i32 %87, i32 %90, i32 %93, i32 %96, i32 %99, i32 %102, i32 %105, i32 %106)
  %108 = sext i32 %107 to i64
  %109 = load i64, i64* %22, align 8
  %110 = add i64 %109, %108
  store i64 %110, i64* %22, align 8
  br label %111

111:                                              ; preds = %80
  %112 = load i32, i32* %21, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %21, align 4
  br label %66

114:                                              ; preds = %66
  %115 = load i64, i64* %22, align 8
  %116 = trunc i64 %115 to i32
  ret i32 %116
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @destroy_subdomain(%struct.subdomain_type* %0) #0 {
  %2 = alloca %struct.subdomain_type*, align 8
  %3 = alloca i32, align 4
  store %struct.subdomain_type* %0, %struct.subdomain_type** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %17, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.subdomain_type*, %struct.subdomain_type** %2, align 8
  %7 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %4
  %11 = load %struct.subdomain_type*, %struct.subdomain_type** %2, align 8
  %12 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %11, i32 0, i32 5
  %13 = load %struct.box_type*, %struct.box_type** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.box_type, %struct.box_type* %13, i64 %15
  call void @destroy_box(%struct.box_type* %16)
  br label %17

17:                                               ; preds = %10
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %4

20:                                               ; preds = %4
  %21 = load %struct.subdomain_type*, %struct.subdomain_type** %2, align 8
  %22 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %21, i32 0, i32 5
  %23 = load %struct.box_type*, %struct.box_type** %22, align 8
  %24 = bitcast %struct.box_type* %23 to i8*
  call void @free(i8* %24) #8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @calculate_neighboring_subdomain_index(%struct.domain_type* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.domain_type*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.domain_type* %0, %struct.domain_type** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %21 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %20, i32 0, i32 15
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %19, %23
  %25 = load i32, i32* %12, align 4
  %26 = add nsw i32 %24, %25
  %27 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %28 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %27, i32 0, i32 15
  %29 = getelementptr inbounds %struct.anon, %struct.anon* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = srem i32 %26, %30
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %34 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %33, i32 0, i32 15
  %35 = getelementptr inbounds %struct.anon, %struct.anon* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %32, %36
  %38 = load i32, i32* %13, align 4
  %39 = add nsw i32 %37, %38
  %40 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %41 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %40, i32 0, i32 15
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = srem i32 %39, %43
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %47 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %46, i32 0, i32 15
  %48 = getelementptr inbounds %struct.anon, %struct.anon* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %45, %49
  %51 = load i32, i32* %14, align 4
  %52 = add nsw i32 %50, %51
  %53 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %54 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %53, i32 0, i32 15
  %55 = getelementptr inbounds %struct.anon, %struct.anon* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = srem i32 %52, %56
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %16, align 4
  %60 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %61 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %60, i32 0, i32 15
  %62 = getelementptr inbounds %struct.anon, %struct.anon* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = mul nsw i32 %59, %63
  %65 = add nsw i32 %58, %64
  %66 = load i32, i32* %17, align 4
  %67 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %68 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %67, i32 0, i32 15
  %69 = getelementptr inbounds %struct.anon, %struct.anon* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = mul nsw i32 %66, %70
  %72 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %73 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %72, i32 0, i32 15
  %74 = getelementptr inbounds %struct.anon, %struct.anon* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 %71, %75
  %77 = add nsw i32 %65, %76
  store i32 %77, i32* %18, align 4
  %78 = load i32, i32* %18, align 4
  ret i32 %78
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @calculate_neighboring_subdomain_rank(%struct.domain_type* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.domain_type*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.domain_type* %0, %struct.domain_type** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  %23 = load %struct.domain_type*, %struct.domain_type** %12, align 8
  %24 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %23, i32 0, i32 17
  %25 = getelementptr inbounds %struct.anon, %struct.anon* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %59

28:                                               ; preds = %10
  %29 = load %struct.domain_type*, %struct.domain_type** %12, align 8
  %30 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %29, i32 0, i32 15
  %31 = getelementptr inbounds %struct.anon, %struct.anon* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %19, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32, i32* %13, align 4
  %36 = add nsw i32 %34, %35
  %37 = load i32, i32* %16, align 4
  %38 = add nsw i32 %36, %37
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  store i32 -1, i32* %11, align 4
  br label %248

41:                                               ; preds = %28
  %42 = load %struct.domain_type*, %struct.domain_type** %12, align 8
  %43 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %42, i32 0, i32 15
  %44 = getelementptr inbounds %struct.anon, %struct.anon* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %19, align 4
  %47 = mul nsw i32 %45, %46
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %47, %48
  %50 = load i32, i32* %16, align 4
  %51 = add nsw i32 %49, %50
  %52 = load %struct.domain_type*, %struct.domain_type** %12, align 8
  %53 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %52, i32 0, i32 16
  %54 = getelementptr inbounds %struct.anon, %struct.anon* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sge i32 %51, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %41
  store i32 -1, i32* %11, align 4
  br label %248

58:                                               ; preds = %41
  br label %59

59:                                               ; preds = %58, %10
  %60 = load %struct.domain_type*, %struct.domain_type** %12, align 8
  %61 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %60, i32 0, i32 17
  %62 = getelementptr inbounds %struct.anon, %struct.anon* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %96

65:                                               ; preds = %59
  %66 = load %struct.domain_type*, %struct.domain_type** %12, align 8
  %67 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %66, i32 0, i32 15
  %68 = getelementptr inbounds %struct.anon, %struct.anon* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %20, align 4
  %71 = mul nsw i32 %69, %70
  %72 = load i32, i32* %14, align 4
  %73 = add nsw i32 %71, %72
  %74 = load i32, i32* %17, align 4
  %75 = add nsw i32 %73, %74
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %65
  store i32 -1, i32* %11, align 4
  br label %248

78:                                               ; preds = %65
  %79 = load %struct.domain_type*, %struct.domain_type** %12, align 8
  %80 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %79, i32 0, i32 15
  %81 = getelementptr inbounds %struct.anon, %struct.anon* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %20, align 4
  %84 = mul nsw i32 %82, %83
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %84, %85
  %87 = load i32, i32* %17, align 4
  %88 = add nsw i32 %86, %87
  %89 = load %struct.domain_type*, %struct.domain_type** %12, align 8
  %90 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %89, i32 0, i32 16
  %91 = getelementptr inbounds %struct.anon, %struct.anon* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp sge i32 %88, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %78
  store i32 -1, i32* %11, align 4
  br label %248

95:                                               ; preds = %78
  br label %96

96:                                               ; preds = %95, %59
  %97 = load %struct.domain_type*, %struct.domain_type** %12, align 8
  %98 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %97, i32 0, i32 17
  %99 = getelementptr inbounds %struct.anon, %struct.anon* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %133

102:                                              ; preds = %96
  %103 = load %struct.domain_type*, %struct.domain_type** %12, align 8
  %104 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %103, i32 0, i32 15
  %105 = getelementptr inbounds %struct.anon, %struct.anon* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %21, align 4
  %108 = mul nsw i32 %106, %107
  %109 = load i32, i32* %15, align 4
  %110 = add nsw i32 %108, %109
  %111 = load i32, i32* %18, align 4
  %112 = add nsw i32 %110, %111
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %102
  store i32 -1, i32* %11, align 4
  br label %248

115:                                              ; preds = %102
  %116 = load %struct.domain_type*, %struct.domain_type** %12, align 8
  %117 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %116, i32 0, i32 15
  %118 = getelementptr inbounds %struct.anon, %struct.anon* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %21, align 4
  %121 = mul nsw i32 %119, %120
  %122 = load i32, i32* %15, align 4
  %123 = add nsw i32 %121, %122
  %124 = load i32, i32* %18, align 4
  %125 = add nsw i32 %123, %124
  %126 = load %struct.domain_type*, %struct.domain_type** %12, align 8
  %127 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %126, i32 0, i32 16
  %128 = getelementptr inbounds %struct.anon, %struct.anon* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = icmp sge i32 %125, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %115
  store i32 -1, i32* %11, align 4
  br label %248

132:                                              ; preds = %115
  br label %133

133:                                              ; preds = %132, %96
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %16, align 4
  %136 = add nsw i32 %134, %135
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load i32, i32* %19, align 4
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %19, align 4
  br label %141

141:                                              ; preds = %138, %133
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* %16, align 4
  %144 = add nsw i32 %142, %143
  %145 = load %struct.domain_type*, %struct.domain_type** %12, align 8
  %146 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %145, i32 0, i32 15
  %147 = getelementptr inbounds %struct.anon, %struct.anon* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp sge i32 %144, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %141
  %151 = load i32, i32* %19, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %19, align 4
  br label %153

153:                                              ; preds = %150, %141
  %154 = load i32, i32* %19, align 4
  %155 = load %struct.domain_type*, %struct.domain_type** %12, align 8
  %156 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %155, i32 0, i32 14
  %157 = getelementptr inbounds %struct.anon, %struct.anon* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %154, %158
  %160 = load %struct.domain_type*, %struct.domain_type** %12, align 8
  %161 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %160, i32 0, i32 14
  %162 = getelementptr inbounds %struct.anon, %struct.anon* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = srem i32 %159, %163
  store i32 %164, i32* %19, align 4
  %165 = load i32, i32* %14, align 4
  %166 = load i32, i32* %17, align 4
  %167 = add nsw i32 %165, %166
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %153
  %170 = load i32, i32* %20, align 4
  %171 = add nsw i32 %170, -1
  store i32 %171, i32* %20, align 4
  br label %172

172:                                              ; preds = %169, %153
  %173 = load i32, i32* %14, align 4
  %174 = load i32, i32* %17, align 4
  %175 = add nsw i32 %173, %174
  %176 = load %struct.domain_type*, %struct.domain_type** %12, align 8
  %177 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %176, i32 0, i32 15
  %178 = getelementptr inbounds %struct.anon, %struct.anon* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = icmp sge i32 %175, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %172
  %182 = load i32, i32* %20, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %20, align 4
  br label %184

184:                                              ; preds = %181, %172
  %185 = load i32, i32* %20, align 4
  %186 = load %struct.domain_type*, %struct.domain_type** %12, align 8
  %187 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %186, i32 0, i32 14
  %188 = getelementptr inbounds %struct.anon, %struct.anon* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %185, %189
  %191 = load %struct.domain_type*, %struct.domain_type** %12, align 8
  %192 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %191, i32 0, i32 14
  %193 = getelementptr inbounds %struct.anon, %struct.anon* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = srem i32 %190, %194
  store i32 %195, i32* %20, align 4
  %196 = load i32, i32* %15, align 4
  %197 = load i32, i32* %18, align 4
  %198 = add nsw i32 %196, %197
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %184
  %201 = load i32, i32* %21, align 4
  %202 = add nsw i32 %201, -1
  store i32 %202, i32* %21, align 4
  br label %203

203:                                              ; preds = %200, %184
  %204 = load i32, i32* %15, align 4
  %205 = load i32, i32* %18, align 4
  %206 = add nsw i32 %204, %205
  %207 = load %struct.domain_type*, %struct.domain_type** %12, align 8
  %208 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %207, i32 0, i32 15
  %209 = getelementptr inbounds %struct.anon, %struct.anon* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = icmp sge i32 %206, %210
  br i1 %211, label %212, label %215

212:                                              ; preds = %203
  %213 = load i32, i32* %21, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %21, align 4
  br label %215

215:                                              ; preds = %212, %203
  %216 = load i32, i32* %21, align 4
  %217 = load %struct.domain_type*, %struct.domain_type** %12, align 8
  %218 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %217, i32 0, i32 14
  %219 = getelementptr inbounds %struct.anon, %struct.anon* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = add nsw i32 %216, %220
  %222 = load %struct.domain_type*, %struct.domain_type** %12, align 8
  %223 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %222, i32 0, i32 14
  %224 = getelementptr inbounds %struct.anon, %struct.anon* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = srem i32 %221, %225
  store i32 %226, i32* %21, align 4
  %227 = load i32, i32* %19, align 4
  %228 = load i32, i32* %20, align 4
  %229 = load %struct.domain_type*, %struct.domain_type** %12, align 8
  %230 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %229, i32 0, i32 14
  %231 = getelementptr inbounds %struct.anon, %struct.anon* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = mul nsw i32 %228, %232
  %234 = add nsw i32 %227, %233
  %235 = load i32, i32* %21, align 4
  %236 = load %struct.domain_type*, %struct.domain_type** %12, align 8
  %237 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %236, i32 0, i32 14
  %238 = getelementptr inbounds %struct.anon, %struct.anon* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = mul nsw i32 %235, %239
  %241 = load %struct.domain_type*, %struct.domain_type** %12, align 8
  %242 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %241, i32 0, i32 14
  %243 = getelementptr inbounds %struct.anon, %struct.anon* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = mul nsw i32 %240, %244
  %246 = add nsw i32 %234, %245
  store i32 %246, i32* %22, align 4
  %247 = load i32, i32* %22, align 4
  store i32 %247, i32* %11, align 4
  br label %248

248:                                              ; preds = %215, %131, %114, %94, %77, %57, %40
  %249 = load i32, i32* %11, align 4
  ret i32 %249
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @create_domain(%struct.domain_type* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32* %11, i32 %12, i32 %13, i32 %14) #0 {
  %16 = alloca %struct.domain_type*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i64, align 8
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca [27 x i32], align 16
  %52 = alloca [27 x i32], align 16
  %53 = alloca [27 x i32], align 16
  %54 = alloca [27 x i32], align 16
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  %63 = alloca i32, align 4
  %64 = alloca i32, align 4
  %65 = alloca i32, align 4
  %66 = alloca i32, align 4
  %67 = alloca i32, align 4
  %68 = alloca i32, align 4
  %69 = alloca i32, align 4
  %70 = alloca i32, align 4
  %71 = alloca i32, align 4
  %72 = alloca i32, align 4
  %73 = alloca i32, align 4
  store %struct.domain_type* %0, %struct.domain_type** %16, align 8
  store i32 %1, i32* %17, align 4
  store i32 %2, i32* %18, align 4
  store i32 %3, i32* %19, align 4
  store i32 %4, i32* %20, align 4
  store i32 %5, i32* %21, align 4
  store i32 %6, i32* %22, align 4
  store i32 %7, i32* %23, align 4
  store i32 %8, i32* %24, align 4
  store i32 %9, i32* %25, align 4
  store i32 %10, i32* %26, align 4
  store i32* %11, i32** %27, align 8
  store i32 %12, i32* %28, align 4
  store i32 %13, i32* %29, align 4
  store i32 %14, i32* %30, align 4
  %74 = load i32, i32* %26, align 4
  %75 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %76 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %75, i32 0, i32 18
  store i32 %74, i32* %76, align 4
  %77 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %78 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %77, i32 0, i32 18
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %15
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %84 = call i32 @fflush(%struct._IO_FILE* %83)
  br label %85

85:                                               ; preds = %81, %15
  %86 = load i32, i32* %29, align 4
  %87 = load i32, i32* %17, align 4
  %88 = load i32, i32* %30, align 4
  %89 = sub nsw i32 %88, 1
  %90 = ashr i32 %87, %89
  %91 = icmp sgt i32 %86, %90
  br i1 %91, label %92, label %105

92:                                               ; preds = %85
  %93 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %94 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %93, i32 0, i32 18
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %92
  %98 = load i32, i32* %29, align 4
  %99 = load i32, i32* %17, align 4
  %100 = load i32, i32* %30, align 4
  %101 = sub nsw i32 %100, 1
  %102 = ashr i32 %99, %101
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %98, i32 %102)
  br label %104

104:                                              ; preds = %97, %92
  call void @exit(i32 0) #9
  unreachable

105:                                              ; preds = %85
  %106 = load i32, i32* %17, align 4
  %107 = load i32, i32* %18, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %117, label %109

109:                                              ; preds = %105
  %110 = load i32, i32* %18, align 4
  %111 = load i32, i32* %19, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = load i32, i32* %17, align 4
  %115 = load i32, i32* %19, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %113, %109, %105
  %118 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %119 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %118, i32 0, i32 18
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %117
  call void @exit(i32 0) #9
  unreachable

125:                                              ; preds = %113
  store i64 0, i64* %38, align 8
  %126 = load i32, i32* %26, align 4
  %127 = load i32, i32* %23, align 4
  %128 = load i32, i32* %24, align 4
  %129 = mul nsw i32 %127, %128
  %130 = sdiv i32 %126, %129
  store i32 %130, i32* %39, align 4
  %131 = load i32, i32* %26, align 4
  %132 = load i32, i32* %23, align 4
  %133 = load i32, i32* %24, align 4
  %134 = mul nsw i32 %132, %133
  %135 = load i32, i32* %39, align 4
  %136 = mul nsw i32 %134, %135
  %137 = sub nsw i32 %131, %136
  %138 = load i32, i32* %23, align 4
  %139 = sdiv i32 %137, %138
  store i32 %139, i32* %40, align 4
  %140 = load i32, i32* %26, align 4
  %141 = load i32, i32* %23, align 4
  %142 = load i32, i32* %24, align 4
  %143 = mul nsw i32 %141, %142
  %144 = load i32, i32* %39, align 4
  %145 = mul nsw i32 %143, %144
  %146 = sub nsw i32 %140, %145
  %147 = load i32, i32* %23, align 4
  %148 = load i32, i32* %40, align 4
  %149 = mul nsw i32 %147, %148
  %150 = sub nsw i32 %146, %149
  store i32 %150, i32* %41, align 4
  %151 = load i32, i32* %23, align 4
  %152 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %153 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %152, i32 0, i32 14
  %154 = getelementptr inbounds %struct.anon, %struct.anon* %153, i32 0, i32 0
  store i32 %151, i32* %154, align 4
  %155 = load i32, i32* %24, align 4
  %156 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %157 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %156, i32 0, i32 14
  %158 = getelementptr inbounds %struct.anon, %struct.anon* %157, i32 0, i32 1
  store i32 %155, i32* %158, align 4
  %159 = load i32, i32* %25, align 4
  %160 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %161 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %160, i32 0, i32 14
  %162 = getelementptr inbounds %struct.anon, %struct.anon* %161, i32 0, i32 2
  store i32 %159, i32* %162, align 4
  %163 = load i32, i32* %20, align 4
  %164 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %165 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %164, i32 0, i32 15
  %166 = getelementptr inbounds %struct.anon, %struct.anon* %165, i32 0, i32 0
  store i32 %163, i32* %166, align 8
  %167 = load i32, i32* %21, align 4
  %168 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %169 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %168, i32 0, i32 15
  %170 = getelementptr inbounds %struct.anon, %struct.anon* %169, i32 0, i32 1
  store i32 %167, i32* %170, align 4
  %171 = load i32, i32* %22, align 4
  %172 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %173 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %172, i32 0, i32 15
  %174 = getelementptr inbounds %struct.anon, %struct.anon* %173, i32 0, i32 2
  store i32 %171, i32* %174, align 8
  %175 = load i32, i32* %20, align 4
  %176 = load i32, i32* %23, align 4
  %177 = mul nsw i32 %175, %176
  %178 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %179 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %178, i32 0, i32 16
  %180 = getelementptr inbounds %struct.anon, %struct.anon* %179, i32 0, i32 0
  store i32 %177, i32* %180, align 4
  %181 = load i32, i32* %21, align 4
  %182 = load i32, i32* %24, align 4
  %183 = mul nsw i32 %181, %182
  %184 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %185 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %184, i32 0, i32 16
  %186 = getelementptr inbounds %struct.anon, %struct.anon* %185, i32 0, i32 1
  store i32 %183, i32* %186, align 4
  %187 = load i32, i32* %22, align 4
  %188 = load i32, i32* %25, align 4
  %189 = mul nsw i32 %187, %188
  %190 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %191 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %190, i32 0, i32 16
  %192 = getelementptr inbounds %struct.anon, %struct.anon* %191, i32 0, i32 2
  store i32 %189, i32* %192, align 4
  %193 = load i32, i32* %20, align 4
  %194 = load i32, i32* %21, align 4
  %195 = mul nsw i32 %193, %194
  %196 = load i32, i32* %22, align 4
  %197 = mul nsw i32 %195, %196
  %198 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %199 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %198, i32 0, i32 19
  store i32 %197, i32* %199, align 8
  %200 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %201 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %200, i32 0, i32 25
  %202 = bitcast %struct.subdomain_type** %201 to i8**
  %203 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %204 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %203, i32 0, i32 19
  %205 = load i32, i32* %204, align 8
  %206 = sext i32 %205 to i64
  %207 = mul i64 %206, 256
  %208 = call i32 @posix_memalign(i8** %202, i64 64, i64 %207) #8
  %209 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %210 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %209, i32 0, i32 19
  %211 = load i32, i32* %210, align 8
  %212 = sext i32 %211 to i64
  %213 = mul i64 %212, 256
  %214 = load i64, i64* %38, align 8
  %215 = add i64 %214, %213
  store i64 %215, i64* %38, align 8
  %216 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %217 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %216, i32 0, i32 16
  %218 = getelementptr inbounds %struct.anon, %struct.anon* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %17, align 4
  %221 = mul nsw i32 %219, %220
  %222 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %223 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %222, i32 0, i32 13
  %224 = getelementptr inbounds %struct.anon, %struct.anon* %223, i32 0, i32 0
  store i32 %221, i32* %224, align 8
  %225 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %226 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %225, i32 0, i32 16
  %227 = getelementptr inbounds %struct.anon, %struct.anon* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %18, align 4
  %230 = mul nsw i32 %228, %229
  %231 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %232 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %231, i32 0, i32 13
  %233 = getelementptr inbounds %struct.anon, %struct.anon* %232, i32 0, i32 1
  store i32 %230, i32* %233, align 4
  %234 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %235 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %234, i32 0, i32 16
  %236 = getelementptr inbounds %struct.anon, %struct.anon* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %19, align 4
  %239 = mul nsw i32 %237, %238
  %240 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %241 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %240, i32 0, i32 13
  %242 = getelementptr inbounds %struct.anon, %struct.anon* %241, i32 0, i32 2
  store i32 %239, i32* %242, align 8
  %243 = load i32*, i32** %27, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 0
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %247 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %246, i32 0, i32 17
  %248 = getelementptr inbounds %struct.anon, %struct.anon* %247, i32 0, i32 0
  store i32 %245, i32* %248, align 8
  %249 = load i32*, i32** %27, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 1
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %253 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %252, i32 0, i32 17
  %254 = getelementptr inbounds %struct.anon, %struct.anon* %253, i32 0, i32 1
  store i32 %251, i32* %254, align 4
  %255 = load i32*, i32** %27, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 2
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %259 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %258, i32 0, i32 17
  %260 = getelementptr inbounds %struct.anon, %struct.anon* %259, i32 0, i32 2
  store i32 %257, i32* %260, align 8
  %261 = load i32, i32* %30, align 4
  %262 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %263 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %262, i32 0, i32 20
  store i32 %261, i32* %263, align 4
  %264 = load i32, i32* %28, align 4
  %265 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %266 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %265, i32 0, i32 21
  store i32 %264, i32* %266, align 8
  %267 = load i32, i32* %29, align 4
  %268 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %269 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %268, i32 0, i32 22
  store i32 %267, i32* %269, align 4
  store i32 0, i32* %31, align 4
  br label %270

270:                                              ; preds = %287, %125
  %271 = load i32, i32* %31, align 4
  %272 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %273 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %272, i32 0, i32 20
  %274 = load i32, i32* %273, align 4
  %275 = icmp slt i32 %271, %274
  br i1 %275, label %276, label %290

276:                                              ; preds = %270
  %277 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %278 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %277, i32 0, i32 23
  %279 = load i32, i32* %31, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [10 x double], [10 x double]* %278, i64 0, i64 %280
  store double -1.000000e+00, double* %281, align 8
  %282 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %283 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %282, i32 0, i32 24
  %284 = load i32, i32* %31, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [10 x double], [10 x double]* %283, i64 0, i64 %285
  store double -1.000000e+00, double* %286, align 8
  br label %287

287:                                              ; preds = %276
  %288 = load i32, i32* %31, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %31, align 4
  br label %270

290:                                              ; preds = %270
  store i32 -1, i32* %37, align 4
  br label %291

291:                                              ; preds = %446, %290
  %292 = load i32, i32* %37, align 4
  %293 = icmp sle i32 %292, 1
  br i1 %293, label %294, label %449

294:                                              ; preds = %291
  store i32 -1, i32* %36, align 4
  br label %295

295:                                              ; preds = %442, %294
  %296 = load i32, i32* %36, align 4
  %297 = icmp sle i32 %296, 1
  br i1 %297, label %298, label %445

298:                                              ; preds = %295
  store i32 -1, i32* %35, align 4
  br label %299

299:                                              ; preds = %438, %298
  %300 = load i32, i32* %35, align 4
  %301 = icmp sle i32 %300, 1
  br i1 %301, label %302, label %441

302:                                              ; preds = %299
  %303 = load i32, i32* %35, align 4
  %304 = add nsw i32 13, %303
  %305 = load i32, i32* %36, align 4
  %306 = mul nsw i32 3, %305
  %307 = add nsw i32 %304, %306
  %308 = load i32, i32* %37, align 4
  %309 = mul nsw i32 9, %308
  %310 = add nsw i32 %307, %309
  store i32 %310, i32* %42, align 4
  %311 = load i32, i32* %41, align 4
  %312 = load i32, i32* %35, align 4
  %313 = add nsw i32 %311, %312
  %314 = load i32, i32* %23, align 4
  %315 = add nsw i32 %313, %314
  %316 = load i32, i32* %23, align 4
  %317 = srem i32 %315, %316
  store i32 %317, i32* %43, align 4
  %318 = load i32, i32* %40, align 4
  %319 = load i32, i32* %36, align 4
  %320 = add nsw i32 %318, %319
  %321 = load i32, i32* %24, align 4
  %322 = add nsw i32 %320, %321
  %323 = load i32, i32* %24, align 4
  %324 = srem i32 %322, %323
  store i32 %324, i32* %44, align 4
  %325 = load i32, i32* %39, align 4
  %326 = load i32, i32* %37, align 4
  %327 = add nsw i32 %325, %326
  %328 = load i32, i32* %25, align 4
  %329 = add nsw i32 %327, %328
  %330 = load i32, i32* %25, align 4
  %331 = srem i32 %329, %330
  store i32 %331, i32* %45, align 4
  %332 = load i32, i32* %43, align 4
  %333 = load i32, i32* %23, align 4
  %334 = load i32, i32* %44, align 4
  %335 = mul nsw i32 %333, %334
  %336 = add nsw i32 %332, %335
  %337 = load i32, i32* %23, align 4
  %338 = load i32, i32* %24, align 4
  %339 = mul nsw i32 %337, %338
  %340 = load i32, i32* %45, align 4
  %341 = mul nsw i32 %339, %340
  %342 = add nsw i32 %336, %341
  %343 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %344 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %343, i32 0, i32 5
  %345 = load i32, i32* %42, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds [27 x i32], [27 x i32]* %344, i64 0, i64 %346
  store i32 %342, i32* %347, align 4
  %348 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %349 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %348, i32 0, i32 17
  %350 = getelementptr inbounds %struct.anon, %struct.anon* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %377

353:                                              ; preds = %302
  %354 = load i32, i32* %41, align 4
  %355 = load i32, i32* %35, align 4
  %356 = add nsw i32 %354, %355
  %357 = icmp slt i32 %356, 0
  br i1 %357, label %358, label %364

358:                                              ; preds = %353
  %359 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %360 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %359, i32 0, i32 5
  %361 = load i32, i32* %42, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds [27 x i32], [27 x i32]* %360, i64 0, i64 %362
  store i32 -1, i32* %363, align 4
  br label %364

364:                                              ; preds = %358, %353
  %365 = load i32, i32* %41, align 4
  %366 = load i32, i32* %35, align 4
  %367 = add nsw i32 %365, %366
  %368 = load i32, i32* %23, align 4
  %369 = icmp sge i32 %367, %368
  br i1 %369, label %370, label %376

370:                                              ; preds = %364
  %371 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %372 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %371, i32 0, i32 5
  %373 = load i32, i32* %42, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds [27 x i32], [27 x i32]* %372, i64 0, i64 %374
  store i32 -1, i32* %375, align 4
  br label %376

376:                                              ; preds = %370, %364
  br label %377

377:                                              ; preds = %376, %302
  %378 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %379 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %378, i32 0, i32 17
  %380 = getelementptr inbounds %struct.anon, %struct.anon* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %407

383:                                              ; preds = %377
  %384 = load i32, i32* %40, align 4
  %385 = load i32, i32* %36, align 4
  %386 = add nsw i32 %384, %385
  %387 = icmp slt i32 %386, 0
  br i1 %387, label %388, label %394

388:                                              ; preds = %383
  %389 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %390 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %389, i32 0, i32 5
  %391 = load i32, i32* %42, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds [27 x i32], [27 x i32]* %390, i64 0, i64 %392
  store i32 -1, i32* %393, align 4
  br label %394

394:                                              ; preds = %388, %383
  %395 = load i32, i32* %40, align 4
  %396 = load i32, i32* %36, align 4
  %397 = add nsw i32 %395, %396
  %398 = load i32, i32* %24, align 4
  %399 = icmp sge i32 %397, %398
  br i1 %399, label %400, label %406

400:                                              ; preds = %394
  %401 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %402 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %401, i32 0, i32 5
  %403 = load i32, i32* %42, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds [27 x i32], [27 x i32]* %402, i64 0, i64 %404
  store i32 -1, i32* %405, align 4
  br label %406

406:                                              ; preds = %400, %394
  br label %407

407:                                              ; preds = %406, %377
  %408 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %409 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %408, i32 0, i32 17
  %410 = getelementptr inbounds %struct.anon, %struct.anon* %409, i32 0, i32 2
  %411 = load i32, i32* %410, align 8
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %437

413:                                              ; preds = %407
  %414 = load i32, i32* %39, align 4
  %415 = load i32, i32* %37, align 4
  %416 = add nsw i32 %414, %415
  %417 = icmp slt i32 %416, 0
  br i1 %417, label %418, label %424

418:                                              ; preds = %413
  %419 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %420 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %419, i32 0, i32 5
  %421 = load i32, i32* %42, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds [27 x i32], [27 x i32]* %420, i64 0, i64 %422
  store i32 -1, i32* %423, align 4
  br label %424

424:                                              ; preds = %418, %413
  %425 = load i32, i32* %39, align 4
  %426 = load i32, i32* %37, align 4
  %427 = add nsw i32 %425, %426
  %428 = load i32, i32* %25, align 4
  %429 = icmp sge i32 %427, %428
  br i1 %429, label %430, label %436

430:                                              ; preds = %424
  %431 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %432 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %431, i32 0, i32 5
  %433 = load i32, i32* %42, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds [27 x i32], [27 x i32]* %432, i64 0, i64 %434
  store i32 -1, i32* %435, align 4
  br label %436

436:                                              ; preds = %430, %424
  br label %437

437:                                              ; preds = %436, %407
  br label %438

438:                                              ; preds = %437
  %439 = load i32, i32* %35, align 4
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* %35, align 4
  br label %299

441:                                              ; preds = %299
  br label %442

442:                                              ; preds = %441
  %443 = load i32, i32* %36, align 4
  %444 = add nsw i32 %443, 1
  store i32 %444, i32* %36, align 4
  br label %295

445:                                              ; preds = %295
  br label %446

446:                                              ; preds = %445
  %447 = load i32, i32* %37, align 4
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* %37, align 4
  br label %291

449:                                              ; preds = %291
  store i32 0, i32* %34, align 4
  br label %450

450:                                              ; preds = %597, %449
  %451 = load i32, i32* %34, align 4
  %452 = load i32, i32* %22, align 4
  %453 = icmp slt i32 %451, %452
  br i1 %453, label %454, label %600

454:                                              ; preds = %450
  store i32 0, i32* %33, align 4
  br label %455

455:                                              ; preds = %593, %454
  %456 = load i32, i32* %33, align 4
  %457 = load i32, i32* %21, align 4
  %458 = icmp slt i32 %456, %457
  br i1 %458, label %459, label %596

459:                                              ; preds = %455
  store i32 0, i32* %32, align 4
  br label %460

460:                                              ; preds = %589, %459
  %461 = load i32, i32* %32, align 4
  %462 = load i32, i32* %20, align 4
  %463 = icmp slt i32 %461, %462
  br i1 %463, label %464, label %592

464:                                              ; preds = %460
  %465 = load i32, i32* %32, align 4
  %466 = load i32, i32* %33, align 4
  %467 = load i32, i32* %20, align 4
  %468 = mul nsw i32 %466, %467
  %469 = add nsw i32 %465, %468
  %470 = load i32, i32* %34, align 4
  %471 = load i32, i32* %20, align 4
  %472 = mul nsw i32 %470, %471
  %473 = load i32, i32* %21, align 4
  %474 = mul nsw i32 %472, %473
  %475 = add nsw i32 %469, %474
  store i32 %475, i32* %46, align 4
  %476 = load i32, i32* %17, align 4
  %477 = load i32, i32* %32, align 4
  %478 = load i32, i32* %20, align 4
  %479 = load i32, i32* %41, align 4
  %480 = mul nsw i32 %478, %479
  %481 = add nsw i32 %477, %480
  %482 = mul nsw i32 %476, %481
  store i32 %482, i32* %47, align 4
  %483 = load i32, i32* %18, align 4
  %484 = load i32, i32* %33, align 4
  %485 = load i32, i32* %21, align 4
  %486 = load i32, i32* %40, align 4
  %487 = mul nsw i32 %485, %486
  %488 = add nsw i32 %484, %487
  %489 = mul nsw i32 %483, %488
  store i32 %489, i32* %48, align 4
  %490 = load i32, i32* %19, align 4
  %491 = load i32, i32* %34, align 4
  %492 = load i32, i32* %22, align 4
  %493 = load i32, i32* %39, align 4
  %494 = mul nsw i32 %492, %493
  %495 = add nsw i32 %491, %494
  %496 = mul nsw i32 %490, %495
  store i32 %496, i32* %49, align 4
  %497 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %498 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %497, i32 0, i32 25
  %499 = load %struct.subdomain_type*, %struct.subdomain_type** %498, align 8
  %500 = load i32, i32* %46, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %499, i64 %501
  %503 = load i32, i32* %47, align 4
  %504 = load i32, i32* %48, align 4
  %505 = load i32, i32* %49, align 4
  %506 = load i32, i32* %17, align 4
  %507 = load i32, i32* %18, align 4
  %508 = load i32, i32* %19, align 4
  %509 = load i32, i32* %28, align 4
  %510 = load i32, i32* %29, align 4
  %511 = load i32, i32* %30, align 4
  %512 = call i32 @create_subdomain(%struct.subdomain_type* %502, i32 %503, i32 %504, i32 %505, i32 %506, i32 %507, i32 %508, i32 %509, i32 %510, i32 %511)
  %513 = sext i32 %512 to i64
  %514 = load i64, i64* %38, align 8
  %515 = add i64 %514, %513
  store i64 %515, i64* %38, align 8
  store i32 -1, i32* %37, align 4
  br label %516

516:                                              ; preds = %585, %464
  %517 = load i32, i32* %37, align 4
  %518 = icmp sle i32 %517, 1
  br i1 %518, label %519, label %588

519:                                              ; preds = %516
  store i32 -1, i32* %36, align 4
  br label %520

520:                                              ; preds = %581, %519
  %521 = load i32, i32* %36, align 4
  %522 = icmp sle i32 %521, 1
  br i1 %522, label %523, label %584

523:                                              ; preds = %520
  store i32 -1, i32* %35, align 4
  br label %524

524:                                              ; preds = %577, %523
  %525 = load i32, i32* %35, align 4
  %526 = icmp sle i32 %525, 1
  br i1 %526, label %527, label %580

527:                                              ; preds = %524
  %528 = load i32, i32* %35, align 4
  %529 = add nsw i32 13, %528
  %530 = load i32, i32* %36, align 4
  %531 = mul nsw i32 3, %530
  %532 = add nsw i32 %529, %531
  %533 = load i32, i32* %37, align 4
  %534 = mul nsw i32 9, %533
  %535 = add nsw i32 %532, %534
  store i32 %535, i32* %50, align 4
  %536 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %537 = load i32, i32* %32, align 4
  %538 = load i32, i32* %33, align 4
  %539 = load i32, i32* %34, align 4
  %540 = load i32, i32* %35, align 4
  %541 = load i32, i32* %36, align 4
  %542 = load i32, i32* %37, align 4
  %543 = load i32, i32* %41, align 4
  %544 = load i32, i32* %40, align 4
  %545 = load i32, i32* %39, align 4
  %546 = call i32 @calculate_neighboring_subdomain_rank(%struct.domain_type* %536, i32 %537, i32 %538, i32 %539, i32 %540, i32 %541, i32 %542, i32 %543, i32 %544, i32 %545)
  %547 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %548 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %547, i32 0, i32 25
  %549 = load %struct.subdomain_type*, %struct.subdomain_type** %548, align 8
  %550 = load i32, i32* %46, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %549, i64 %551
  %553 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %552, i32 0, i32 4
  %554 = load i32, i32* %50, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds [27 x %struct.neighbor_type], [27 x %struct.neighbor_type]* %553, i64 0, i64 %555
  %557 = getelementptr inbounds %struct.neighbor_type, %struct.neighbor_type* %556, i32 0, i32 0
  store i32 %546, i32* %557, align 8
  %558 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %559 = load i32, i32* %32, align 4
  %560 = load i32, i32* %33, align 4
  %561 = load i32, i32* %34, align 4
  %562 = load i32, i32* %35, align 4
  %563 = load i32, i32* %36, align 4
  %564 = load i32, i32* %37, align 4
  %565 = call i32 @calculate_neighboring_subdomain_index(%struct.domain_type* %558, i32 %559, i32 %560, i32 %561, i32 %562, i32 %563, i32 %564)
  %566 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %567 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %566, i32 0, i32 25
  %568 = load %struct.subdomain_type*, %struct.subdomain_type** %567, align 8
  %569 = load i32, i32* %46, align 4
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %568, i64 %570
  %572 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %571, i32 0, i32 4
  %573 = load i32, i32* %50, align 4
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds [27 x %struct.neighbor_type], [27 x %struct.neighbor_type]* %572, i64 0, i64 %574
  %576 = getelementptr inbounds %struct.neighbor_type, %struct.neighbor_type* %575, i32 0, i32 1
  store i32 %565, i32* %576, align 4
  br label %577

577:                                              ; preds = %527
  %578 = load i32, i32* %35, align 4
  %579 = add nsw i32 %578, 1
  store i32 %579, i32* %35, align 4
  br label %524

580:                                              ; preds = %524
  br label %581

581:                                              ; preds = %580
  %582 = load i32, i32* %36, align 4
  %583 = add nsw i32 %582, 1
  store i32 %583, i32* %36, align 4
  br label %520

584:                                              ; preds = %520
  br label %585

585:                                              ; preds = %584
  %586 = load i32, i32* %37, align 4
  %587 = add nsw i32 %586, 1
  store i32 %587, i32* %37, align 4
  br label %516

588:                                              ; preds = %516
  br label %589

589:                                              ; preds = %588
  %590 = load i32, i32* %32, align 4
  %591 = add nsw i32 %590, 1
  store i32 %591, i32* %32, align 4
  br label %460

592:                                              ; preds = %460
  br label %593

593:                                              ; preds = %592
  %594 = load i32, i32* %33, align 4
  %595 = add nsw i32 %594, 1
  store i32 %595, i32* %33, align 4
  br label %455

596:                                              ; preds = %455
  br label %597

597:                                              ; preds = %596
  %598 = load i32, i32* %34, align 4
  %599 = add nsw i32 %598, 1
  store i32 %599, i32* %34, align 4
  br label %450

600:                                              ; preds = %450
  %601 = bitcast [27 x i32]* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %601, i8* align 16 bitcast ([27 x i32]* @__const.create_domain.FacesEdgesCorners to i8*), i64 108, i1 false)
  %602 = bitcast [27 x i32]* %52 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %602, i8 0, i64 108, i1 false)
  %603 = bitcast i8* %602 to [27 x i32]*
  %604 = getelementptr inbounds [27 x i32], [27 x i32]* %603, i32 0, i32 4
  store i32 1, i32* %604, align 16
  %605 = getelementptr inbounds [27 x i32], [27 x i32]* %603, i32 0, i32 10
  store i32 1, i32* %605, align 8
  %606 = getelementptr inbounds [27 x i32], [27 x i32]* %603, i32 0, i32 12
  store i32 1, i32* %606, align 16
  %607 = getelementptr inbounds [27 x i32], [27 x i32]* %603, i32 0, i32 14
  store i32 1, i32* %607, align 8
  %608 = getelementptr inbounds [27 x i32], [27 x i32]* %603, i32 0, i32 16
  store i32 1, i32* %608, align 16
  %609 = getelementptr inbounds [27 x i32], [27 x i32]* %603, i32 0, i32 22
  store i32 1, i32* %609, align 8
  %610 = bitcast [27 x i32]* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %610, i8* align 16 bitcast ([27 x i32]* @__const.create_domain.edges to i8*), i64 108, i1 false)
  %611 = bitcast [27 x i32]* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %611, i8* align 16 bitcast ([27 x i32]* @__const.create_domain.corners to i8*), i64 108, i1 false)
  store i32 0, i32* %31, align 4
  br label %612

612:                                              ; preds = %1431, %600
  %613 = load i32, i32* %31, align 4
  %614 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %615 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %614, i32 0, i32 20
  %616 = load i32, i32* %615, align 4
  %617 = icmp slt i32 %613, %616
  br i1 %617, label %618, label %1434

618:                                              ; preds = %612
  store i32 0, i32* %55, align 4
  br label %619

619:                                              ; preds = %1427, %618
  %620 = load i32, i32* %55, align 4
  %621 = icmp slt i32 %620, 2
  br i1 %621, label %622, label %1430

622:                                              ; preds = %619
  store i32 0, i32* %56, align 4
  %623 = load i32, i32* %56, align 4
  %624 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %625 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %624, i32 0, i32 7
  store i32 %623, i32* %625, align 8
  %626 = load i32, i32* %56, align 4
  %627 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %628 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %627, i32 0, i32 8
  store i32 %626, i32* %628, align 4
  %629 = load i32, i32* %56, align 4
  %630 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %631 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %630, i32 0, i32 9
  store i32 %629, i32* %631, align 8
  store i32 0, i32* %57, align 4
  br label %632

632:                                              ; preds = %1395, %622
  %633 = load i32, i32* %57, align 4
  %634 = icmp slt i32 %633, 26
  br i1 %634, label %635, label %1398

635:                                              ; preds = %632
  %636 = load i32, i32* %57, align 4
  %637 = sext i32 %636 to i64
  %638 = getelementptr inbounds [27 x i32], [27 x i32]* %51, i64 0, i64 %637
  %639 = load i32, i32* %638, align 4
  store i32 %639, i32* %58, align 4
  %640 = load i32, i32* %58, align 4
  %641 = sdiv i32 %640, 1
  %642 = srem i32 %641, 3
  %643 = sub nsw i32 %642, 1
  store i32 %643, i32* %59, align 4
  %644 = load i32, i32* %58, align 4
  %645 = sdiv i32 %644, 3
  %646 = srem i32 %645, 3
  %647 = sub nsw i32 %646, 1
  store i32 %647, i32* %60, align 4
  %648 = load i32, i32* %58, align 4
  %649 = sdiv i32 %648, 9
  %650 = srem i32 %649, 3
  %651 = sub nsw i32 %650, 1
  store i32 %651, i32* %61, align 4
  store i32 0, i32* %34, align 4
  br label %652

652:                                              ; preds = %1391, %635
  %653 = load i32, i32* %34, align 4
  %654 = load i32, i32* %22, align 4
  %655 = icmp slt i32 %653, %654
  br i1 %655, label %656, label %1394

656:                                              ; preds = %652
  store i32 0, i32* %33, align 4
  br label %657

657:                                              ; preds = %1387, %656
  %658 = load i32, i32* %33, align 4
  %659 = load i32, i32* %21, align 4
  %660 = icmp slt i32 %658, %659
  br i1 %660, label %661, label %1390

661:                                              ; preds = %657
  store i32 0, i32* %32, align 4
  br label %662

662:                                              ; preds = %1383, %661
  %663 = load i32, i32* %32, align 4
  %664 = load i32, i32* %20, align 4
  %665 = icmp slt i32 %663, %664
  br i1 %665, label %666, label %1386

666:                                              ; preds = %662
  %667 = load i32, i32* %32, align 4
  %668 = load i32, i32* %33, align 4
  %669 = load i32, i32* %20, align 4
  %670 = mul nsw i32 %668, %669
  %671 = add nsw i32 %667, %670
  %672 = load i32, i32* %34, align 4
  %673 = load i32, i32* %20, align 4
  %674 = mul nsw i32 %672, %673
  %675 = load i32, i32* %21, align 4
  %676 = mul nsw i32 %674, %675
  %677 = add nsw i32 %671, %676
  store i32 %677, i32* %62, align 4
  store i32 1, i32* %63, align 4
  %678 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %679 = load i32, i32* %32, align 4
  %680 = load i32, i32* %33, align 4
  %681 = load i32, i32* %34, align 4
  %682 = load i32, i32* %59, align 4
  %683 = load i32, i32* %60, align 4
  %684 = load i32, i32* %61, align 4
  %685 = load i32, i32* %41, align 4
  %686 = load i32, i32* %40, align 4
  %687 = load i32, i32* %39, align 4
  %688 = call i32 @calculate_neighboring_subdomain_rank(%struct.domain_type* %678, i32 %679, i32 %680, i32 %681, i32 %682, i32 %683, i32 %684, i32 %685, i32 %686, i32 %687)
  %689 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %690 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %689, i32 0, i32 18
  %691 = load i32, i32* %690, align 4
  %692 = icmp ne i32 %688, %691
  br i1 %692, label %693, label %694

693:                                              ; preds = %666
  store i32 0, i32* %63, align 4
  br label %694

694:                                              ; preds = %693, %666
  %695 = load i32, i32* %63, align 4
  %696 = icmp ne i32 %695, 0
  br i1 %696, label %697, label %1382

697:                                              ; preds = %694
  %698 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %699 = load i32, i32* %32, align 4
  %700 = load i32, i32* %33, align 4
  %701 = load i32, i32* %34, align 4
  %702 = load i32, i32* %59, align 4
  %703 = load i32, i32* %60, align 4
  %704 = load i32, i32* %61, align 4
  %705 = call i32 @calculate_neighboring_subdomain_index(%struct.domain_type* %698, i32 %699, i32 %700, i32 %701, i32 %702, i32 %703, i32 %704)
  store i32 %705, i32* %64, align 4
  %706 = load i32, i32* %59, align 4
  switch i32 %706, label %831 [
    i32 -1, label %707
    i32 0, label %762
    i32 1, label %803
  ]

707:                                              ; preds = %697
  %708 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %709 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %708, i32 0, i32 25
  %710 = load %struct.subdomain_type*, %struct.subdomain_type** %709, align 8
  %711 = load i32, i32* %62, align 4
  %712 = sext i32 %711 to i64
  %713 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %710, i64 %712
  %714 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %713, i32 0, i32 5
  %715 = load %struct.box_type*, %struct.box_type** %714, align 8
  %716 = load i32, i32* %31, align 4
  %717 = sext i32 %716 to i64
  %718 = getelementptr inbounds %struct.box_type, %struct.box_type* %715, i64 %717
  %719 = getelementptr inbounds %struct.box_type, %struct.box_type* %718, i32 0, i32 4
  %720 = load i32, i32* %719, align 4
  store i32 %720, i32* %65, align 4
  %721 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %722 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %721, i32 0, i32 25
  %723 = load %struct.subdomain_type*, %struct.subdomain_type** %722, align 8
  %724 = load i32, i32* %62, align 4
  %725 = sext i32 %724 to i64
  %726 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %723, i64 %725
  %727 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %726, i32 0, i32 5
  %728 = load %struct.box_type*, %struct.box_type** %727, align 8
  %729 = load i32, i32* %31, align 4
  %730 = sext i32 %729 to i64
  %731 = getelementptr inbounds %struct.box_type, %struct.box_type* %728, i64 %730
  %732 = getelementptr inbounds %struct.box_type, %struct.box_type* %731, i32 0, i32 4
  %733 = load i32, i32* %732, align 4
  store i32 %733, i32* %71, align 4
  %734 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %735 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %734, i32 0, i32 25
  %736 = load %struct.subdomain_type*, %struct.subdomain_type** %735, align 8
  %737 = load i32, i32* %64, align 4
  %738 = sext i32 %737 to i64
  %739 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %736, i64 %738
  %740 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %739, i32 0, i32 5
  %741 = load %struct.box_type*, %struct.box_type** %740, align 8
  %742 = load i32, i32* %31, align 4
  %743 = sext i32 %742 to i64
  %744 = getelementptr inbounds %struct.box_type, %struct.box_type* %741, i64 %743
  %745 = getelementptr inbounds %struct.box_type, %struct.box_type* %744, i32 0, i32 4
  %746 = load i32, i32* %745, align 4
  %747 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %748 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %747, i32 0, i32 25
  %749 = load %struct.subdomain_type*, %struct.subdomain_type** %748, align 8
  %750 = load i32, i32* %64, align 4
  %751 = sext i32 %750 to i64
  %752 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %749, i64 %751
  %753 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %752, i32 0, i32 5
  %754 = load %struct.box_type*, %struct.box_type** %753, align 8
  %755 = load i32, i32* %31, align 4
  %756 = sext i32 %755 to i64
  %757 = getelementptr inbounds %struct.box_type, %struct.box_type* %754, i64 %756
  %758 = getelementptr inbounds %struct.box_type, %struct.box_type* %757, i32 0, i32 2
  %759 = getelementptr inbounds %struct.anon, %struct.anon* %758, i32 0, i32 0
  %760 = load i32, i32* %759, align 4
  %761 = add nsw i32 %746, %760
  store i32 %761, i32* %68, align 4
  br label %831

762:                                              ; preds = %697
  %763 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %764 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %763, i32 0, i32 25
  %765 = load %struct.subdomain_type*, %struct.subdomain_type** %764, align 8
  %766 = load i32, i32* %62, align 4
  %767 = sext i32 %766 to i64
  %768 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %765, i64 %767
  %769 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %768, i32 0, i32 5
  %770 = load %struct.box_type*, %struct.box_type** %769, align 8
  %771 = load i32, i32* %31, align 4
  %772 = sext i32 %771 to i64
  %773 = getelementptr inbounds %struct.box_type, %struct.box_type* %770, i64 %772
  %774 = getelementptr inbounds %struct.box_type, %struct.box_type* %773, i32 0, i32 4
  %775 = load i32, i32* %774, align 4
  store i32 %775, i32* %65, align 4
  %776 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %777 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %776, i32 0, i32 25
  %778 = load %struct.subdomain_type*, %struct.subdomain_type** %777, align 8
  %779 = load i32, i32* %62, align 4
  %780 = sext i32 %779 to i64
  %781 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %778, i64 %780
  %782 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %781, i32 0, i32 5
  %783 = load %struct.box_type*, %struct.box_type** %782, align 8
  %784 = load i32, i32* %31, align 4
  %785 = sext i32 %784 to i64
  %786 = getelementptr inbounds %struct.box_type, %struct.box_type* %783, i64 %785
  %787 = getelementptr inbounds %struct.box_type, %struct.box_type* %786, i32 0, i32 2
  %788 = getelementptr inbounds %struct.anon, %struct.anon* %787, i32 0, i32 0
  %789 = load i32, i32* %788, align 4
  store i32 %789, i32* %71, align 4
  %790 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %791 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %790, i32 0, i32 25
  %792 = load %struct.subdomain_type*, %struct.subdomain_type** %791, align 8
  %793 = load i32, i32* %64, align 4
  %794 = sext i32 %793 to i64
  %795 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %792, i64 %794
  %796 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %795, i32 0, i32 5
  %797 = load %struct.box_type*, %struct.box_type** %796, align 8
  %798 = load i32, i32* %31, align 4
  %799 = sext i32 %798 to i64
  %800 = getelementptr inbounds %struct.box_type, %struct.box_type* %797, i64 %799
  %801 = getelementptr inbounds %struct.box_type, %struct.box_type* %800, i32 0, i32 4
  %802 = load i32, i32* %801, align 4
  store i32 %802, i32* %68, align 4
  br label %831

803:                                              ; preds = %697
  %804 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %805 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %804, i32 0, i32 25
  %806 = load %struct.subdomain_type*, %struct.subdomain_type** %805, align 8
  %807 = load i32, i32* %62, align 4
  %808 = sext i32 %807 to i64
  %809 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %806, i64 %808
  %810 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %809, i32 0, i32 5
  %811 = load %struct.box_type*, %struct.box_type** %810, align 8
  %812 = load i32, i32* %31, align 4
  %813 = sext i32 %812 to i64
  %814 = getelementptr inbounds %struct.box_type, %struct.box_type* %811, i64 %813
  %815 = getelementptr inbounds %struct.box_type, %struct.box_type* %814, i32 0, i32 2
  %816 = getelementptr inbounds %struct.anon, %struct.anon* %815, i32 0, i32 0
  %817 = load i32, i32* %816, align 4
  store i32 %817, i32* %65, align 4
  %818 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %819 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %818, i32 0, i32 25
  %820 = load %struct.subdomain_type*, %struct.subdomain_type** %819, align 8
  %821 = load i32, i32* %62, align 4
  %822 = sext i32 %821 to i64
  %823 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %820, i64 %822
  %824 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %823, i32 0, i32 5
  %825 = load %struct.box_type*, %struct.box_type** %824, align 8
  %826 = load i32, i32* %31, align 4
  %827 = sext i32 %826 to i64
  %828 = getelementptr inbounds %struct.box_type, %struct.box_type* %825, i64 %827
  %829 = getelementptr inbounds %struct.box_type, %struct.box_type* %828, i32 0, i32 4
  %830 = load i32, i32* %829, align 4
  store i32 %830, i32* %71, align 4
  store i32 0, i32* %68, align 4
  br label %831

831:                                              ; preds = %803, %762, %707, %697
  %832 = load i32, i32* %60, align 4
  switch i32 %832, label %957 [
    i32 -1, label %833
    i32 0, label %888
    i32 1, label %929
  ]

833:                                              ; preds = %831
  %834 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %835 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %834, i32 0, i32 25
  %836 = load %struct.subdomain_type*, %struct.subdomain_type** %835, align 8
  %837 = load i32, i32* %62, align 4
  %838 = sext i32 %837 to i64
  %839 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %836, i64 %838
  %840 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %839, i32 0, i32 5
  %841 = load %struct.box_type*, %struct.box_type** %840, align 8
  %842 = load i32, i32* %31, align 4
  %843 = sext i32 %842 to i64
  %844 = getelementptr inbounds %struct.box_type, %struct.box_type* %841, i64 %843
  %845 = getelementptr inbounds %struct.box_type, %struct.box_type* %844, i32 0, i32 4
  %846 = load i32, i32* %845, align 4
  store i32 %846, i32* %66, align 4
  %847 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %848 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %847, i32 0, i32 25
  %849 = load %struct.subdomain_type*, %struct.subdomain_type** %848, align 8
  %850 = load i32, i32* %62, align 4
  %851 = sext i32 %850 to i64
  %852 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %849, i64 %851
  %853 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %852, i32 0, i32 5
  %854 = load %struct.box_type*, %struct.box_type** %853, align 8
  %855 = load i32, i32* %31, align 4
  %856 = sext i32 %855 to i64
  %857 = getelementptr inbounds %struct.box_type, %struct.box_type* %854, i64 %856
  %858 = getelementptr inbounds %struct.box_type, %struct.box_type* %857, i32 0, i32 4
  %859 = load i32, i32* %858, align 4
  store i32 %859, i32* %72, align 4
  %860 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %861 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %860, i32 0, i32 25
  %862 = load %struct.subdomain_type*, %struct.subdomain_type** %861, align 8
  %863 = load i32, i32* %64, align 4
  %864 = sext i32 %863 to i64
  %865 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %862, i64 %864
  %866 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %865, i32 0, i32 5
  %867 = load %struct.box_type*, %struct.box_type** %866, align 8
  %868 = load i32, i32* %31, align 4
  %869 = sext i32 %868 to i64
  %870 = getelementptr inbounds %struct.box_type, %struct.box_type* %867, i64 %869
  %871 = getelementptr inbounds %struct.box_type, %struct.box_type* %870, i32 0, i32 4
  %872 = load i32, i32* %871, align 4
  %873 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %874 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %873, i32 0, i32 25
  %875 = load %struct.subdomain_type*, %struct.subdomain_type** %874, align 8
  %876 = load i32, i32* %64, align 4
  %877 = sext i32 %876 to i64
  %878 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %875, i64 %877
  %879 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %878, i32 0, i32 5
  %880 = load %struct.box_type*, %struct.box_type** %879, align 8
  %881 = load i32, i32* %31, align 4
  %882 = sext i32 %881 to i64
  %883 = getelementptr inbounds %struct.box_type, %struct.box_type* %880, i64 %882
  %884 = getelementptr inbounds %struct.box_type, %struct.box_type* %883, i32 0, i32 2
  %885 = getelementptr inbounds %struct.anon, %struct.anon* %884, i32 0, i32 1
  %886 = load i32, i32* %885, align 4
  %887 = add nsw i32 %872, %886
  store i32 %887, i32* %69, align 4
  br label %957

888:                                              ; preds = %831
  %889 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %890 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %889, i32 0, i32 25
  %891 = load %struct.subdomain_type*, %struct.subdomain_type** %890, align 8
  %892 = load i32, i32* %62, align 4
  %893 = sext i32 %892 to i64
  %894 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %891, i64 %893
  %895 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %894, i32 0, i32 5
  %896 = load %struct.box_type*, %struct.box_type** %895, align 8
  %897 = load i32, i32* %31, align 4
  %898 = sext i32 %897 to i64
  %899 = getelementptr inbounds %struct.box_type, %struct.box_type* %896, i64 %898
  %900 = getelementptr inbounds %struct.box_type, %struct.box_type* %899, i32 0, i32 4
  %901 = load i32, i32* %900, align 4
  store i32 %901, i32* %66, align 4
  %902 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %903 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %902, i32 0, i32 25
  %904 = load %struct.subdomain_type*, %struct.subdomain_type** %903, align 8
  %905 = load i32, i32* %62, align 4
  %906 = sext i32 %905 to i64
  %907 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %904, i64 %906
  %908 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %907, i32 0, i32 5
  %909 = load %struct.box_type*, %struct.box_type** %908, align 8
  %910 = load i32, i32* %31, align 4
  %911 = sext i32 %910 to i64
  %912 = getelementptr inbounds %struct.box_type, %struct.box_type* %909, i64 %911
  %913 = getelementptr inbounds %struct.box_type, %struct.box_type* %912, i32 0, i32 2
  %914 = getelementptr inbounds %struct.anon, %struct.anon* %913, i32 0, i32 1
  %915 = load i32, i32* %914, align 4
  store i32 %915, i32* %72, align 4
  %916 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %917 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %916, i32 0, i32 25
  %918 = load %struct.subdomain_type*, %struct.subdomain_type** %917, align 8
  %919 = load i32, i32* %64, align 4
  %920 = sext i32 %919 to i64
  %921 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %918, i64 %920
  %922 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %921, i32 0, i32 5
  %923 = load %struct.box_type*, %struct.box_type** %922, align 8
  %924 = load i32, i32* %31, align 4
  %925 = sext i32 %924 to i64
  %926 = getelementptr inbounds %struct.box_type, %struct.box_type* %923, i64 %925
  %927 = getelementptr inbounds %struct.box_type, %struct.box_type* %926, i32 0, i32 4
  %928 = load i32, i32* %927, align 4
  store i32 %928, i32* %69, align 4
  br label %957

929:                                              ; preds = %831
  %930 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %931 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %930, i32 0, i32 25
  %932 = load %struct.subdomain_type*, %struct.subdomain_type** %931, align 8
  %933 = load i32, i32* %62, align 4
  %934 = sext i32 %933 to i64
  %935 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %932, i64 %934
  %936 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %935, i32 0, i32 5
  %937 = load %struct.box_type*, %struct.box_type** %936, align 8
  %938 = load i32, i32* %31, align 4
  %939 = sext i32 %938 to i64
  %940 = getelementptr inbounds %struct.box_type, %struct.box_type* %937, i64 %939
  %941 = getelementptr inbounds %struct.box_type, %struct.box_type* %940, i32 0, i32 2
  %942 = getelementptr inbounds %struct.anon, %struct.anon* %941, i32 0, i32 1
  %943 = load i32, i32* %942, align 4
  store i32 %943, i32* %66, align 4
  %944 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %945 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %944, i32 0, i32 25
  %946 = load %struct.subdomain_type*, %struct.subdomain_type** %945, align 8
  %947 = load i32, i32* %62, align 4
  %948 = sext i32 %947 to i64
  %949 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %946, i64 %948
  %950 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %949, i32 0, i32 5
  %951 = load %struct.box_type*, %struct.box_type** %950, align 8
  %952 = load i32, i32* %31, align 4
  %953 = sext i32 %952 to i64
  %954 = getelementptr inbounds %struct.box_type, %struct.box_type* %951, i64 %953
  %955 = getelementptr inbounds %struct.box_type, %struct.box_type* %954, i32 0, i32 4
  %956 = load i32, i32* %955, align 4
  store i32 %956, i32* %72, align 4
  store i32 0, i32* %69, align 4
  br label %957

957:                                              ; preds = %929, %888, %833, %831
  %958 = load i32, i32* %61, align 4
  switch i32 %958, label %1083 [
    i32 -1, label %959
    i32 0, label %1014
    i32 1, label %1055
  ]

959:                                              ; preds = %957
  %960 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %961 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %960, i32 0, i32 25
  %962 = load %struct.subdomain_type*, %struct.subdomain_type** %961, align 8
  %963 = load i32, i32* %62, align 4
  %964 = sext i32 %963 to i64
  %965 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %962, i64 %964
  %966 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %965, i32 0, i32 5
  %967 = load %struct.box_type*, %struct.box_type** %966, align 8
  %968 = load i32, i32* %31, align 4
  %969 = sext i32 %968 to i64
  %970 = getelementptr inbounds %struct.box_type, %struct.box_type* %967, i64 %969
  %971 = getelementptr inbounds %struct.box_type, %struct.box_type* %970, i32 0, i32 4
  %972 = load i32, i32* %971, align 4
  store i32 %972, i32* %67, align 4
  %973 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %974 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %973, i32 0, i32 25
  %975 = load %struct.subdomain_type*, %struct.subdomain_type** %974, align 8
  %976 = load i32, i32* %62, align 4
  %977 = sext i32 %976 to i64
  %978 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %975, i64 %977
  %979 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %978, i32 0, i32 5
  %980 = load %struct.box_type*, %struct.box_type** %979, align 8
  %981 = load i32, i32* %31, align 4
  %982 = sext i32 %981 to i64
  %983 = getelementptr inbounds %struct.box_type, %struct.box_type* %980, i64 %982
  %984 = getelementptr inbounds %struct.box_type, %struct.box_type* %983, i32 0, i32 4
  %985 = load i32, i32* %984, align 4
  store i32 %985, i32* %73, align 4
  %986 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %987 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %986, i32 0, i32 25
  %988 = load %struct.subdomain_type*, %struct.subdomain_type** %987, align 8
  %989 = load i32, i32* %64, align 4
  %990 = sext i32 %989 to i64
  %991 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %988, i64 %990
  %992 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %991, i32 0, i32 5
  %993 = load %struct.box_type*, %struct.box_type** %992, align 8
  %994 = load i32, i32* %31, align 4
  %995 = sext i32 %994 to i64
  %996 = getelementptr inbounds %struct.box_type, %struct.box_type* %993, i64 %995
  %997 = getelementptr inbounds %struct.box_type, %struct.box_type* %996, i32 0, i32 4
  %998 = load i32, i32* %997, align 4
  %999 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %1000 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %999, i32 0, i32 25
  %1001 = load %struct.subdomain_type*, %struct.subdomain_type** %1000, align 8
  %1002 = load i32, i32* %64, align 4
  %1003 = sext i32 %1002 to i64
  %1004 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %1001, i64 %1003
  %1005 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %1004, i32 0, i32 5
  %1006 = load %struct.box_type*, %struct.box_type** %1005, align 8
  %1007 = load i32, i32* %31, align 4
  %1008 = sext i32 %1007 to i64
  %1009 = getelementptr inbounds %struct.box_type, %struct.box_type* %1006, i64 %1008
  %1010 = getelementptr inbounds %struct.box_type, %struct.box_type* %1009, i32 0, i32 2
  %1011 = getelementptr inbounds %struct.anon, %struct.anon* %1010, i32 0, i32 2
  %1012 = load i32, i32* %1011, align 4
  %1013 = add nsw i32 %998, %1012
  store i32 %1013, i32* %70, align 4
  br label %1083

1014:                                             ; preds = %957
  %1015 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %1016 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %1015, i32 0, i32 25
  %1017 = load %struct.subdomain_type*, %struct.subdomain_type** %1016, align 8
  %1018 = load i32, i32* %62, align 4
  %1019 = sext i32 %1018 to i64
  %1020 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %1017, i64 %1019
  %1021 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %1020, i32 0, i32 5
  %1022 = load %struct.box_type*, %struct.box_type** %1021, align 8
  %1023 = load i32, i32* %31, align 4
  %1024 = sext i32 %1023 to i64
  %1025 = getelementptr inbounds %struct.box_type, %struct.box_type* %1022, i64 %1024
  %1026 = getelementptr inbounds %struct.box_type, %struct.box_type* %1025, i32 0, i32 4
  %1027 = load i32, i32* %1026, align 4
  store i32 %1027, i32* %67, align 4
  %1028 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %1029 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %1028, i32 0, i32 25
  %1030 = load %struct.subdomain_type*, %struct.subdomain_type** %1029, align 8
  %1031 = load i32, i32* %62, align 4
  %1032 = sext i32 %1031 to i64
  %1033 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %1030, i64 %1032
  %1034 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %1033, i32 0, i32 5
  %1035 = load %struct.box_type*, %struct.box_type** %1034, align 8
  %1036 = load i32, i32* %31, align 4
  %1037 = sext i32 %1036 to i64
  %1038 = getelementptr inbounds %struct.box_type, %struct.box_type* %1035, i64 %1037
  %1039 = getelementptr inbounds %struct.box_type, %struct.box_type* %1038, i32 0, i32 2
  %1040 = getelementptr inbounds %struct.anon, %struct.anon* %1039, i32 0, i32 2
  %1041 = load i32, i32* %1040, align 4
  store i32 %1041, i32* %73, align 4
  %1042 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %1043 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %1042, i32 0, i32 25
  %1044 = load %struct.subdomain_type*, %struct.subdomain_type** %1043, align 8
  %1045 = load i32, i32* %64, align 4
  %1046 = sext i32 %1045 to i64
  %1047 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %1044, i64 %1046
  %1048 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %1047, i32 0, i32 5
  %1049 = load %struct.box_type*, %struct.box_type** %1048, align 8
  %1050 = load i32, i32* %31, align 4
  %1051 = sext i32 %1050 to i64
  %1052 = getelementptr inbounds %struct.box_type, %struct.box_type* %1049, i64 %1051
  %1053 = getelementptr inbounds %struct.box_type, %struct.box_type* %1052, i32 0, i32 4
  %1054 = load i32, i32* %1053, align 4
  store i32 %1054, i32* %70, align 4
  br label %1083

1055:                                             ; preds = %957
  %1056 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %1057 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %1056, i32 0, i32 25
  %1058 = load %struct.subdomain_type*, %struct.subdomain_type** %1057, align 8
  %1059 = load i32, i32* %62, align 4
  %1060 = sext i32 %1059 to i64
  %1061 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %1058, i64 %1060
  %1062 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %1061, i32 0, i32 5
  %1063 = load %struct.box_type*, %struct.box_type** %1062, align 8
  %1064 = load i32, i32* %31, align 4
  %1065 = sext i32 %1064 to i64
  %1066 = getelementptr inbounds %struct.box_type, %struct.box_type* %1063, i64 %1065
  %1067 = getelementptr inbounds %struct.box_type, %struct.box_type* %1066, i32 0, i32 2
  %1068 = getelementptr inbounds %struct.anon, %struct.anon* %1067, i32 0, i32 2
  %1069 = load i32, i32* %1068, align 4
  store i32 %1069, i32* %67, align 4
  %1070 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %1071 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %1070, i32 0, i32 25
  %1072 = load %struct.subdomain_type*, %struct.subdomain_type** %1071, align 8
  %1073 = load i32, i32* %62, align 4
  %1074 = sext i32 %1073 to i64
  %1075 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %1072, i64 %1074
  %1076 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %1075, i32 0, i32 5
  %1077 = load %struct.box_type*, %struct.box_type** %1076, align 8
  %1078 = load i32, i32* %31, align 4
  %1079 = sext i32 %1078 to i64
  %1080 = getelementptr inbounds %struct.box_type, %struct.box_type* %1077, i64 %1079
  %1081 = getelementptr inbounds %struct.box_type, %struct.box_type* %1080, i32 0, i32 4
  %1082 = load i32, i32* %1081, align 4
  store i32 %1082, i32* %73, align 4
  store i32 0, i32* %70, align 4
  br label %1083

1083:                                             ; preds = %1055, %1014, %959, %957
  %1084 = load i32, i32* %55, align 4
  %1085 = icmp eq i32 %1084, 1
  br i1 %1085, label %1086, label %1379

1086:                                             ; preds = %1083
  %1087 = load i32, i32* %71, align 4
  %1088 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %1089 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %1088, i32 0, i32 6
  %1090 = load i32, i32* %31, align 4
  %1091 = sext i32 %1090 to i64
  %1092 = getelementptr inbounds [10 x %struct.bufferCopy_type*], [10 x %struct.bufferCopy_type*]* %1089, i64 0, i64 %1091
  %1093 = load %struct.bufferCopy_type*, %struct.bufferCopy_type** %1092, align 8
  %1094 = load i32, i32* %56, align 4
  %1095 = sext i32 %1094 to i64
  %1096 = getelementptr inbounds %struct.bufferCopy_type, %struct.bufferCopy_type* %1093, i64 %1095
  %1097 = getelementptr inbounds %struct.bufferCopy_type, %struct.bufferCopy_type* %1096, i32 0, i32 3
  %1098 = getelementptr inbounds %struct.anon, %struct.anon* %1097, i32 0, i32 0
  store i32 %1087, i32* %1098, align 4
  %1099 = load i32, i32* %72, align 4
  %1100 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %1101 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %1100, i32 0, i32 6
  %1102 = load i32, i32* %31, align 4
  %1103 = sext i32 %1102 to i64
  %1104 = getelementptr inbounds [10 x %struct.bufferCopy_type*], [10 x %struct.bufferCopy_type*]* %1101, i64 0, i64 %1103
  %1105 = load %struct.bufferCopy_type*, %struct.bufferCopy_type** %1104, align 8
  %1106 = load i32, i32* %56, align 4
  %1107 = sext i32 %1106 to i64
  %1108 = getelementptr inbounds %struct.bufferCopy_type, %struct.bufferCopy_type* %1105, i64 %1107
  %1109 = getelementptr inbounds %struct.bufferCopy_type, %struct.bufferCopy_type* %1108, i32 0, i32 3
  %1110 = getelementptr inbounds %struct.anon, %struct.anon* %1109, i32 0, i32 1
  store i32 %1099, i32* %1110, align 4
  %1111 = load i32, i32* %73, align 4
  %1112 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %1113 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %1112, i32 0, i32 6
  %1114 = load i32, i32* %31, align 4
  %1115 = sext i32 %1114 to i64
  %1116 = getelementptr inbounds [10 x %struct.bufferCopy_type*], [10 x %struct.bufferCopy_type*]* %1113, i64 0, i64 %1115
  %1117 = load %struct.bufferCopy_type*, %struct.bufferCopy_type** %1116, align 8
  %1118 = load i32, i32* %56, align 4
  %1119 = sext i32 %1118 to i64
  %1120 = getelementptr inbounds %struct.bufferCopy_type, %struct.bufferCopy_type* %1117, i64 %1119
  %1121 = getelementptr inbounds %struct.bufferCopy_type, %struct.bufferCopy_type* %1120, i32 0, i32 3
  %1122 = getelementptr inbounds %struct.anon, %struct.anon* %1121, i32 0, i32 2
  store i32 %1111, i32* %1122, align 4
  %1123 = load i32, i32* %62, align 4
  %1124 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %1125 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %1124, i32 0, i32 6
  %1126 = load i32, i32* %31, align 4
  %1127 = sext i32 %1126 to i64
  %1128 = getelementptr inbounds [10 x %struct.bufferCopy_type*], [10 x %struct.bufferCopy_type*]* %1125, i64 0, i64 %1127
  %1129 = load %struct.bufferCopy_type*, %struct.bufferCopy_type** %1128, align 8
  %1130 = load i32, i32* %56, align 4
  %1131 = sext i32 %1130 to i64
  %1132 = getelementptr inbounds %struct.bufferCopy_type, %struct.bufferCopy_type* %1129, i64 %1131
  %1133 = getelementptr inbounds %struct.bufferCopy_type, %struct.bufferCopy_type* %1132, i32 0, i32 4
  %1134 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1133, i32 0, i32 0
  store i32 %1123, i32* %1134, align 8
  %1135 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %1136 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %1135, i32 0, i32 6
  %1137 = load i32, i32* %31, align 4
  %1138 = sext i32 %1137 to i64
  %1139 = getelementptr inbounds [10 x %struct.bufferCopy_type*], [10 x %struct.bufferCopy_type*]* %1136, i64 0, i64 %1138
  %1140 = load %struct.bufferCopy_type*, %struct.bufferCopy_type** %1139, align 8
  %1141 = load i32, i32* %56, align 4
  %1142 = sext i32 %1141 to i64
  %1143 = getelementptr inbounds %struct.bufferCopy_type, %struct.bufferCopy_type* %1140, i64 %1142
  %1144 = getelementptr inbounds %struct.bufferCopy_type, %struct.bufferCopy_type* %1143, i32 0, i32 4
  %1145 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1144, i32 0, i32 6
  store double* null, double** %1145, align 8
  %1146 = load i32, i32* %65, align 4
  %1147 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %1148 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %1147, i32 0, i32 6
  %1149 = load i32, i32* %31, align 4
  %1150 = sext i32 %1149 to i64
  %1151 = getelementptr inbounds [10 x %struct.bufferCopy_type*], [10 x %struct.bufferCopy_type*]* %1148, i64 0, i64 %1150
  %1152 = load %struct.bufferCopy_type*, %struct.bufferCopy_type** %1151, align 8
  %1153 = load i32, i32* %56, align 4
  %1154 = sext i32 %1153 to i64
  %1155 = getelementptr inbounds %struct.bufferCopy_type, %struct.bufferCopy_type* %1152, i64 %1154
  %1156 = getelementptr inbounds %struct.bufferCopy_type, %struct.bufferCopy_type* %1155, i32 0, i32 4
  %1157 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1156, i32 0, i32 1
  store i32 %1146, i32* %1157, align 4
  %1158 = load i32, i32* %66, align 4
  %1159 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %1160 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %1159, i32 0, i32 6
  %1161 = load i32, i32* %31, align 4
  %1162 = sext i32 %1161 to i64
  %1163 = getelementptr inbounds [10 x %struct.bufferCopy_type*], [10 x %struct.bufferCopy_type*]* %1160, i64 0, i64 %1162
  %1164 = load %struct.bufferCopy_type*, %struct.bufferCopy_type** %1163, align 8
  %1165 = load i32, i32* %56, align 4
  %1166 = sext i32 %1165 to i64
  %1167 = getelementptr inbounds %struct.bufferCopy_type, %struct.bufferCopy_type* %1164, i64 %1166
  %1168 = getelementptr inbounds %struct.bufferCopy_type, %struct.bufferCopy_type* %1167, i32 0, i32 4
  %1169 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1168, i32 0, i32 2
  store i32 %1158, i32* %1169, align 8
  %1170 = load i32, i32* %67, align 4
  %1171 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %1172 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %1171, i32 0, i32 6
  %1173 = load i32, i32* %31, align 4
  %1174 = sext i32 %1173 to i64
  %1175 = getelementptr inbounds [10 x %struct.bufferCopy_type*], [10 x %struct.bufferCopy_type*]* %1172, i64 0, i64 %1174
  %1176 = load %struct.bufferCopy_type*, %struct.bufferCopy_type** %1175, align 8
  %1177 = load i32, i32* %56, align 4
  %1178 = sext i32 %1177 to i64
  %1179 = getelementptr inbounds %struct.bufferCopy_type, %struct.bufferCopy_type* %1176, i64 %1178
  %1180 = getelementptr inbounds %struct.bufferCopy_type, %struct.bufferCopy_type* %1179, i32 0, i32 4
  %1181 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1180, i32 0, i32 3
  store i32 %1170, i32* %1181, align 4
  %1182 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %1183 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %1182, i32 0, i32 25
  %1184 = load %struct.subdomain_type*, %struct.subdomain_type** %1183, align 8
  %1185 = load i32, i32* %62, align 4
  %1186 = sext i32 %1185 to i64
  %1187 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %1184, i64 %1186
  %1188 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %1187, i32 0, i32 5
  %1189 = load %struct.box_type*, %struct.box_type** %1188, align 8
  %1190 = load i32, i32* %31, align 4
  %1191 = sext i32 %1190 to i64
  %1192 = getelementptr inbounds %struct.box_type, %struct.box_type* %1189, i64 %1191
  %1193 = getelementptr inbounds %struct.box_type, %struct.box_type* %1192, i32 0, i32 5
  %1194 = load i32, i32* %1193, align 8
  %1195 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %1196 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %1195, i32 0, i32 6
  %1197 = load i32, i32* %31, align 4
  %1198 = sext i32 %1197 to i64
  %1199 = getelementptr inbounds [10 x %struct.bufferCopy_type*], [10 x %struct.bufferCopy_type*]* %1196, i64 0, i64 %1198
  %1200 = load %struct.bufferCopy_type*, %struct.bufferCopy_type** %1199, align 8
  %1201 = load i32, i32* %56, align 4
  %1202 = sext i32 %1201 to i64
  %1203 = getelementptr inbounds %struct.bufferCopy_type, %struct.bufferCopy_type* %1200, i64 %1202
  %1204 = getelementptr inbounds %struct.bufferCopy_type, %struct.bufferCopy_type* %1203, i32 0, i32 4
  %1205 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1204, i32 0, i32 4
  store i32 %1194, i32* %1205, align 8
  %1206 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %1207 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %1206, i32 0, i32 25
  %1208 = load %struct.subdomain_type*, %struct.subdomain_type** %1207, align 8
  %1209 = load i32, i32* %62, align 4
  %1210 = sext i32 %1209 to i64
  %1211 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %1208, i64 %1210
  %1212 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %1211, i32 0, i32 5
  %1213 = load %struct.box_type*, %struct.box_type** %1212, align 8
  %1214 = load i32, i32* %31, align 4
  %1215 = sext i32 %1214 to i64
  %1216 = getelementptr inbounds %struct.box_type, %struct.box_type* %1213, i64 %1215
  %1217 = getelementptr inbounds %struct.box_type, %struct.box_type* %1216, i32 0, i32 6
  %1218 = load i32, i32* %1217, align 4
  %1219 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %1220 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %1219, i32 0, i32 6
  %1221 = load i32, i32* %31, align 4
  %1222 = sext i32 %1221 to i64
  %1223 = getelementptr inbounds [10 x %struct.bufferCopy_type*], [10 x %struct.bufferCopy_type*]* %1220, i64 0, i64 %1222
  %1224 = load %struct.bufferCopy_type*, %struct.bufferCopy_type** %1223, align 8
  %1225 = load i32, i32* %56, align 4
  %1226 = sext i32 %1225 to i64
  %1227 = getelementptr inbounds %struct.bufferCopy_type, %struct.bufferCopy_type* %1224, i64 %1226
  %1228 = getelementptr inbounds %struct.bufferCopy_type, %struct.bufferCopy_type* %1227, i32 0, i32 4
  %1229 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1228, i32 0, i32 5
  store i32 %1218, i32* %1229, align 4
  %1230 = load i32, i32* %64, align 4
  %1231 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %1232 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %1231, i32 0, i32 6
  %1233 = load i32, i32* %31, align 4
  %1234 = sext i32 %1233 to i64
  %1235 = getelementptr inbounds [10 x %struct.bufferCopy_type*], [10 x %struct.bufferCopy_type*]* %1232, i64 0, i64 %1234
  %1236 = load %struct.bufferCopy_type*, %struct.bufferCopy_type** %1235, align 8
  %1237 = load i32, i32* %56, align 4
  %1238 = sext i32 %1237 to i64
  %1239 = getelementptr inbounds %struct.bufferCopy_type, %struct.bufferCopy_type* %1236, i64 %1238
  %1240 = getelementptr inbounds %struct.bufferCopy_type, %struct.bufferCopy_type* %1239, i32 0, i32 5
  %1241 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1240, i32 0, i32 0
  store i32 %1230, i32* %1241, align 8
  %1242 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %1243 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %1242, i32 0, i32 6
  %1244 = load i32, i32* %31, align 4
  %1245 = sext i32 %1244 to i64
  %1246 = getelementptr inbounds [10 x %struct.bufferCopy_type*], [10 x %struct.bufferCopy_type*]* %1243, i64 0, i64 %1245
  %1247 = load %struct.bufferCopy_type*, %struct.bufferCopy_type** %1246, align 8
  %1248 = load i32, i32* %56, align 4
  %1249 = sext i32 %1248 to i64
  %1250 = getelementptr inbounds %struct.bufferCopy_type, %struct.bufferCopy_type* %1247, i64 %1249
  %1251 = getelementptr inbounds %struct.bufferCopy_type, %struct.bufferCopy_type* %1250, i32 0, i32 5
  %1252 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1251, i32 0, i32 6
  store double* null, double** %1252, align 8
  %1253 = load i32, i32* %68, align 4
  %1254 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %1255 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %1254, i32 0, i32 6
  %1256 = load i32, i32* %31, align 4
  %1257 = sext i32 %1256 to i64
  %1258 = getelementptr inbounds [10 x %struct.bufferCopy_type*], [10 x %struct.bufferCopy_type*]* %1255, i64 0, i64 %1257
  %1259 = load %struct.bufferCopy_type*, %struct.bufferCopy_type** %1258, align 8
  %1260 = load i32, i32* %56, align 4
  %1261 = sext i32 %1260 to i64
  %1262 = getelementptr inbounds %struct.bufferCopy_type, %struct.bufferCopy_type* %1259, i64 %1261
  %1263 = getelementptr inbounds %struct.bufferCopy_type, %struct.bufferCopy_type* %1262, i32 0, i32 5
  %1264 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1263, i32 0, i32 1
  store i32 %1253, i32* %1264, align 4
  %1265 = load i32, i32* %69, align 4
  %1266 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %1267 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %1266, i32 0, i32 6
  %1268 = load i32, i32* %31, align 4
  %1269 = sext i32 %1268 to i64
  %1270 = getelementptr inbounds [10 x %struct.bufferCopy_type*], [10 x %struct.bufferCopy_type*]* %1267, i64 0, i64 %1269
  %1271 = load %struct.bufferCopy_type*, %struct.bufferCopy_type** %1270, align 8
  %1272 = load i32, i32* %56, align 4
  %1273 = sext i32 %1272 to i64
  %1274 = getelementptr inbounds %struct.bufferCopy_type, %struct.bufferCopy_type* %1271, i64 %1273
  %1275 = getelementptr inbounds %struct.bufferCopy_type, %struct.bufferCopy_type* %1274, i32 0, i32 5
  %1276 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1275, i32 0, i32 2
  store i32 %1265, i32* %1276, align 8
  %1277 = load i32, i32* %70, align 4
  %1278 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %1279 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %1278, i32 0, i32 6
  %1280 = load i32, i32* %31, align 4
  %1281 = sext i32 %1280 to i64
  %1282 = getelementptr inbounds [10 x %struct.bufferCopy_type*], [10 x %struct.bufferCopy_type*]* %1279, i64 0, i64 %1281
  %1283 = load %struct.bufferCopy_type*, %struct.bufferCopy_type** %1282, align 8
  %1284 = load i32, i32* %56, align 4
  %1285 = sext i32 %1284 to i64
  %1286 = getelementptr inbounds %struct.bufferCopy_type, %struct.bufferCopy_type* %1283, i64 %1285
  %1287 = getelementptr inbounds %struct.bufferCopy_type, %struct.bufferCopy_type* %1286, i32 0, i32 5
  %1288 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1287, i32 0, i32 3
  store i32 %1277, i32* %1288, align 4
  %1289 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %1290 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %1289, i32 0, i32 25
  %1291 = load %struct.subdomain_type*, %struct.subdomain_type** %1290, align 8
  %1292 = load i32, i32* %64, align 4
  %1293 = sext i32 %1292 to i64
  %1294 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %1291, i64 %1293
  %1295 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %1294, i32 0, i32 5
  %1296 = load %struct.box_type*, %struct.box_type** %1295, align 8
  %1297 = load i32, i32* %31, align 4
  %1298 = sext i32 %1297 to i64
  %1299 = getelementptr inbounds %struct.box_type, %struct.box_type* %1296, i64 %1298
  %1300 = getelementptr inbounds %struct.box_type, %struct.box_type* %1299, i32 0, i32 5
  %1301 = load i32, i32* %1300, align 8
  %1302 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %1303 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %1302, i32 0, i32 6
  %1304 = load i32, i32* %31, align 4
  %1305 = sext i32 %1304 to i64
  %1306 = getelementptr inbounds [10 x %struct.bufferCopy_type*], [10 x %struct.bufferCopy_type*]* %1303, i64 0, i64 %1305
  %1307 = load %struct.bufferCopy_type*, %struct.bufferCopy_type** %1306, align 8
  %1308 = load i32, i32* %56, align 4
  %1309 = sext i32 %1308 to i64
  %1310 = getelementptr inbounds %struct.bufferCopy_type, %struct.bufferCopy_type* %1307, i64 %1309
  %1311 = getelementptr inbounds %struct.bufferCopy_type, %struct.bufferCopy_type* %1310, i32 0, i32 5
  %1312 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1311, i32 0, i32 4
  store i32 %1301, i32* %1312, align 8
  %1313 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %1314 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %1313, i32 0, i32 25
  %1315 = load %struct.subdomain_type*, %struct.subdomain_type** %1314, align 8
  %1316 = load i32, i32* %64, align 4
  %1317 = sext i32 %1316 to i64
  %1318 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %1315, i64 %1317
  %1319 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %1318, i32 0, i32 5
  %1320 = load %struct.box_type*, %struct.box_type** %1319, align 8
  %1321 = load i32, i32* %31, align 4
  %1322 = sext i32 %1321 to i64
  %1323 = getelementptr inbounds %struct.box_type, %struct.box_type* %1320, i64 %1322
  %1324 = getelementptr inbounds %struct.box_type, %struct.box_type* %1323, i32 0, i32 6
  %1325 = load i32, i32* %1324, align 4
  %1326 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %1327 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %1326, i32 0, i32 6
  %1328 = load i32, i32* %31, align 4
  %1329 = sext i32 %1328 to i64
  %1330 = getelementptr inbounds [10 x %struct.bufferCopy_type*], [10 x %struct.bufferCopy_type*]* %1327, i64 0, i64 %1329
  %1331 = load %struct.bufferCopy_type*, %struct.bufferCopy_type** %1330, align 8
  %1332 = load i32, i32* %56, align 4
  %1333 = sext i32 %1332 to i64
  %1334 = getelementptr inbounds %struct.bufferCopy_type, %struct.bufferCopy_type* %1331, i64 %1333
  %1335 = getelementptr inbounds %struct.bufferCopy_type, %struct.bufferCopy_type* %1334, i32 0, i32 5
  %1336 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1335, i32 0, i32 5
  store i32 %1325, i32* %1336, align 4
  %1337 = load i32, i32* %58, align 4
  %1338 = sext i32 %1337 to i64
  %1339 = getelementptr inbounds [27 x i32], [27 x i32]* %52, i64 0, i64 %1338
  %1340 = load i32, i32* %1339, align 4
  %1341 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %1342 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %1341, i32 0, i32 6
  %1343 = load i32, i32* %31, align 4
  %1344 = sext i32 %1343 to i64
  %1345 = getelementptr inbounds [10 x %struct.bufferCopy_type*], [10 x %struct.bufferCopy_type*]* %1342, i64 0, i64 %1344
  %1346 = load %struct.bufferCopy_type*, %struct.bufferCopy_type** %1345, align 8
  %1347 = load i32, i32* %56, align 4
  %1348 = sext i32 %1347 to i64
  %1349 = getelementptr inbounds %struct.bufferCopy_type, %struct.bufferCopy_type* %1346, i64 %1348
  %1350 = getelementptr inbounds %struct.bufferCopy_type, %struct.bufferCopy_type* %1349, i32 0, i32 0
  store i32 %1340, i32* %1350, align 8
  %1351 = load i32, i32* %58, align 4
  %1352 = sext i32 %1351 to i64
  %1353 = getelementptr inbounds [27 x i32], [27 x i32]* %53, i64 0, i64 %1352
  %1354 = load i32, i32* %1353, align 4
  %1355 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %1356 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %1355, i32 0, i32 6
  %1357 = load i32, i32* %31, align 4
  %1358 = sext i32 %1357 to i64
  %1359 = getelementptr inbounds [10 x %struct.bufferCopy_type*], [10 x %struct.bufferCopy_type*]* %1356, i64 0, i64 %1358
  %1360 = load %struct.bufferCopy_type*, %struct.bufferCopy_type** %1359, align 8
  %1361 = load i32, i32* %56, align 4
  %1362 = sext i32 %1361 to i64
  %1363 = getelementptr inbounds %struct.bufferCopy_type, %struct.bufferCopy_type* %1360, i64 %1362
  %1364 = getelementptr inbounds %struct.bufferCopy_type, %struct.bufferCopy_type* %1363, i32 0, i32 1
  store i32 %1354, i32* %1364, align 4
  %1365 = load i32, i32* %58, align 4
  %1366 = sext i32 %1365 to i64
  %1367 = getelementptr inbounds [27 x i32], [27 x i32]* %54, i64 0, i64 %1366
  %1368 = load i32, i32* %1367, align 4
  %1369 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %1370 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %1369, i32 0, i32 6
  %1371 = load i32, i32* %31, align 4
  %1372 = sext i32 %1371 to i64
  %1373 = getelementptr inbounds [10 x %struct.bufferCopy_type*], [10 x %struct.bufferCopy_type*]* %1370, i64 0, i64 %1372
  %1374 = load %struct.bufferCopy_type*, %struct.bufferCopy_type** %1373, align 8
  %1375 = load i32, i32* %56, align 4
  %1376 = sext i32 %1375 to i64
  %1377 = getelementptr inbounds %struct.bufferCopy_type, %struct.bufferCopy_type* %1374, i64 %1376
  %1378 = getelementptr inbounds %struct.bufferCopy_type, %struct.bufferCopy_type* %1377, i32 0, i32 2
  store i32 %1368, i32* %1378, align 8
  br label %1379

1379:                                             ; preds = %1086, %1083
  %1380 = load i32, i32* %56, align 4
  %1381 = add nsw i32 %1380, 1
  store i32 %1381, i32* %56, align 4
  br label %1382

1382:                                             ; preds = %1379, %694
  br label %1383

1383:                                             ; preds = %1382
  %1384 = load i32, i32* %32, align 4
  %1385 = add nsw i32 %1384, 1
  store i32 %1385, i32* %32, align 4
  br label %662

1386:                                             ; preds = %662
  br label %1387

1387:                                             ; preds = %1386
  %1388 = load i32, i32* %33, align 4
  %1389 = add nsw i32 %1388, 1
  store i32 %1389, i32* %33, align 4
  br label %657

1390:                                             ; preds = %657
  br label %1391

1391:                                             ; preds = %1390
  %1392 = load i32, i32* %34, align 4
  %1393 = add nsw i32 %1392, 1
  store i32 %1393, i32* %34, align 4
  br label %652

1394:                                             ; preds = %652
  br label %1395

1395:                                             ; preds = %1394
  %1396 = load i32, i32* %57, align 4
  %1397 = add nsw i32 %1396, 1
  store i32 %1397, i32* %57, align 4
  br label %632

1398:                                             ; preds = %632
  %1399 = load i32, i32* %56, align 4
  %1400 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %1401 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %1400, i32 0, i32 10
  store i32 %1399, i32* %1401, align 4
  %1402 = load i32, i32* %56, align 4
  %1403 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %1404 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %1403, i32 0, i32 11
  store i32 %1402, i32* %1404, align 8
  %1405 = load i32, i32* %56, align 4
  %1406 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %1407 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %1406, i32 0, i32 12
  store i32 %1405, i32* %1407, align 4
  %1408 = load i32, i32* %55, align 4
  %1409 = icmp eq i32 %1408, 0
  br i1 %1409, label %1410, label %1426

1410:                                             ; preds = %1398
  %1411 = load i32, i32* %56, align 4
  %1412 = sext i32 %1411 to i64
  %1413 = mul i64 %1412, 88
  %1414 = call noalias i8* @malloc(i64 %1413) #8
  %1415 = bitcast i8* %1414 to %struct.bufferCopy_type*
  %1416 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %1417 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %1416, i32 0, i32 6
  %1418 = load i32, i32* %31, align 4
  %1419 = sext i32 %1418 to i64
  %1420 = getelementptr inbounds [10 x %struct.bufferCopy_type*], [10 x %struct.bufferCopy_type*]* %1417, i64 0, i64 %1419
  store %struct.bufferCopy_type* %1415, %struct.bufferCopy_type** %1420, align 8
  %1421 = load i32, i32* %56, align 4
  %1422 = sext i32 %1421 to i64
  %1423 = mul i64 %1422, 88
  %1424 = load i64, i64* %38, align 8
  %1425 = add i64 %1424, %1423
  store i64 %1425, i64* %38, align 8
  br label %1426

1426:                                             ; preds = %1410, %1398
  br label %1427

1427:                                             ; preds = %1426
  %1428 = load i32, i32* %55, align 4
  %1429 = add nsw i32 %1428, 1
  store i32 %1429, i32* %55, align 4
  br label %619

1430:                                             ; preds = %619
  br label %1431

1431:                                             ; preds = %1430
  %1432 = load i32, i32* %31, align 4
  %1433 = add nsw i32 %1432, 1
  store i32 %1433, i32* %31, align 4
  br label %612

1434:                                             ; preds = %612
  %1435 = load %struct.domain_type*, %struct.domain_type** %16, align 8
  %1436 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %1435, i32 0, i32 18
  %1437 = load i32, i32* %1436, align 4
  %1438 = icmp eq i32 %1437, 0
  br i1 %1438, label %1439, label %1480

1439:                                             ; preds = %1434
  %1440 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %1441 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1442 = call i32 @fflush(%struct._IO_FILE* %1441)
  %1443 = load i32, i32* %17, align 4
  %1444 = load i32, i32* %18, align 4
  %1445 = load i32, i32* %19, align 4
  %1446 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %1443, i32 %1444, i32 %1445)
  %1447 = load i32, i32* %20, align 4
  %1448 = load i32, i32* %17, align 4
  %1449 = mul nsw i32 %1447, %1448
  %1450 = load i32, i32* %21, align 4
  %1451 = load i32, i32* %18, align 4
  %1452 = mul nsw i32 %1450, %1451
  %1453 = load i32, i32* %22, align 4
  %1454 = load i32, i32* %19, align 4
  %1455 = mul nsw i32 %1453, %1454
  %1456 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %1449, i32 %1452, i32 %1455)
  %1457 = load i32, i32* %23, align 4
  %1458 = load i32, i32* %20, align 4
  %1459 = mul nsw i32 %1457, %1458
  %1460 = load i32, i32* %17, align 4
  %1461 = mul nsw i32 %1459, %1460
  %1462 = load i32, i32* %24, align 4
  %1463 = load i32, i32* %21, align 4
  %1464 = mul nsw i32 %1462, %1463
  %1465 = load i32, i32* %18, align 4
  %1466 = mul nsw i32 %1464, %1465
  %1467 = load i32, i32* %25, align 4
  %1468 = load i32, i32* %22, align 4
  %1469 = mul nsw i32 %1467, %1468
  %1470 = load i32, i32* %19, align 4
  %1471 = mul nsw i32 %1469, %1470
  %1472 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %1461, i32 %1466, i32 %1471)
  %1473 = load i32, i32* %29, align 4
  %1474 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %1473)
  %1475 = load i64, i64* %38, align 8
  %1476 = lshr i64 %1475, 20
  %1477 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i64 %1476)
  %1478 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1479 = call i32 @fflush(%struct._IO_FILE* %1478)
  br label %1480

1480:                                             ; preds = %1439, %1434
  %1481 = load i64, i64* %38, align 8
  %1482 = trunc i64 %1481 to i32
  ret i32 %1482
}

declare dso_local i32 @printf(i8*, ...) #3

declare dso_local i32 @fflush(%struct._IO_FILE*) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @destroy_domain(%struct.domain_type* %0) #0 {
  %2 = alloca %struct.domain_type*, align 8
  %3 = alloca i32, align 4
  store %struct.domain_type* %0, %struct.domain_type** %2, align 8
  %4 = load %struct.domain_type*, %struct.domain_type** %2, align 8
  %5 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %4, i32 0, i32 18
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %11 = call i32 @fflush(%struct._IO_FILE* %10)
  br label %12

12:                                               ; preds = %8, %1
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %26, %12
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.domain_type*, %struct.domain_type** %2, align 8
  %16 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %15, i32 0, i32 19
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %13
  %20 = load %struct.domain_type*, %struct.domain_type** %2, align 8
  %21 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %20, i32 0, i32 25
  %22 = load %struct.subdomain_type*, %struct.subdomain_type** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %22, i64 %24
  call void @destroy_subdomain(%struct.subdomain_type* %25)
  br label %26

26:                                               ; preds = %19
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %13

29:                                               ; preds = %13
  %30 = load %struct.domain_type*, %struct.domain_type** %2, align 8
  %31 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %30, i32 0, i32 25
  %32 = load %struct.subdomain_type*, %struct.subdomain_type** %31, align 8
  %33 = bitcast %struct.subdomain_type* %32 to i8*
  call void @free(i8* %33) #8
  %34 = load %struct.domain_type*, %struct.domain_type** %2, align 8
  %35 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %34, i32 0, i32 18
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %41 = call i32 @fflush(%struct._IO_FILE* %40)
  br label %42

42:                                               ; preds = %38, %29
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_timing(%struct.domain_type* %0) #0 {
  %2 = alloca %struct.domain_type*, align 8
  store %struct.domain_type* %0, %struct.domain_type** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @MGResetTimers(%struct.domain_type* %0) #0 {
  %2 = alloca %struct.domain_type*, align 8
  %3 = alloca i32, align 4
  store %struct.domain_type* %0, %struct.domain_type** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %104, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 10
  br i1 %6, label %7, label %107

7:                                                ; preds = %4
  %8 = load %struct.domain_type*, %struct.domain_type** %2, align 8
  %9 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %9, i32 0, i32 0
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [10 x i64], [10 x i64]* %10, i64 0, i64 %12
  store i64 0, i64* %13, align 8
  %14 = load %struct.domain_type*, %struct.domain_type** %2, align 8
  %15 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %15, i32 0, i32 1
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [10 x i64], [10 x i64]* %16, i64 0, i64 %18
  store i64 0, i64* %19, align 8
  %20 = load %struct.domain_type*, %struct.domain_type** %2, align 8
  %21 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %21, i32 0, i32 2
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [10 x i64], [10 x i64]* %22, i64 0, i64 %24
  store i64 0, i64* %25, align 8
  %26 = load %struct.domain_type*, %struct.domain_type** %2, align 8
  %27 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %27, i32 0, i32 5
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [10 x i64], [10 x i64]* %28, i64 0, i64 %30
  store i64 0, i64* %31, align 8
  %32 = load %struct.domain_type*, %struct.domain_type** %2, align 8
  %33 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %33, i32 0, i32 3
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [10 x i64], [10 x i64]* %34, i64 0, i64 %36
  store i64 0, i64* %37, align 8
  %38 = load %struct.domain_type*, %struct.domain_type** %2, align 8
  %39 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %39, i32 0, i32 4
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [10 x i64], [10 x i64]* %40, i64 0, i64 %42
  store i64 0, i64* %43, align 8
  %44 = load %struct.domain_type*, %struct.domain_type** %2, align 8
  %45 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %45, i32 0, i32 12
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [10 x i64], [10 x i64]* %46, i64 0, i64 %48
  store i64 0, i64* %49, align 8
  %50 = load %struct.domain_type*, %struct.domain_type** %2, align 8
  %51 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %51, i32 0, i32 13
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [10 x i64], [10 x i64]* %52, i64 0, i64 %54
  store i64 0, i64* %55, align 8
  %56 = load %struct.domain_type*, %struct.domain_type** %2, align 8
  %57 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %57, i32 0, i32 6
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [10 x i64], [10 x i64]* %58, i64 0, i64 %60
  store i64 0, i64* %61, align 8
  %62 = load %struct.domain_type*, %struct.domain_type** %2, align 8
  %63 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %63, i32 0, i32 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [10 x i64], [10 x i64]* %64, i64 0, i64 %66
  store i64 0, i64* %67, align 8
  %68 = load %struct.domain_type*, %struct.domain_type** %2, align 8
  %69 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %69, i32 0, i32 7
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [10 x i64], [10 x i64]* %70, i64 0, i64 %72
  store i64 0, i64* %73, align 8
  %74 = load %struct.domain_type*, %struct.domain_type** %2, align 8
  %75 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %75, i32 0, i32 9
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [10 x i64], [10 x i64]* %76, i64 0, i64 %78
  store i64 0, i64* %79, align 8
  %80 = load %struct.domain_type*, %struct.domain_type** %2, align 8
  %81 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %81, i32 0, i32 10
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [10 x i64], [10 x i64]* %82, i64 0, i64 %84
  store i64 0, i64* %85, align 8
  %86 = load %struct.domain_type*, %struct.domain_type** %2, align 8
  %87 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %87, i32 0, i32 11
  %89 = load i32, i32* %3, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [10 x i64], [10 x i64]* %88, i64 0, i64 %90
  store i64 0, i64* %91, align 8
  %92 = load %struct.domain_type*, %struct.domain_type** %2, align 8
  %93 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %93, i32 0, i32 14
  %95 = load i32, i32* %3, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [10 x i64], [10 x i64]* %94, i64 0, i64 %96
  store i64 0, i64* %97, align 8
  %98 = load %struct.domain_type*, %struct.domain_type** %2, align 8
  %99 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %99, i32 0, i32 15
  %101 = load i32, i32* %3, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [10 x i64], [10 x i64]* %100, i64 0, i64 %102
  store i64 0, i64* %103, align 8
  br label %104

104:                                              ; preds = %7
  %105 = load i32, i32* %3, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %3, align 4
  br label %4

107:                                              ; preds = %4
  %108 = load %struct.domain_type*, %struct.domain_type** %2, align 8
  %109 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %109, i32 0, i32 17
  store i64 0, i64* %110, align 8
  %111 = load %struct.domain_type*, %struct.domain_type** %2, align 8
  %112 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %112, i32 0, i32 18
  store i64 0, i64* %113, align 8
  %114 = load %struct.domain_type*, %struct.domain_type** %2, align 8
  %115 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %114, i32 0, i32 1
  store i32 0, i32* %115, align 8
  %116 = load %struct.domain_type*, %struct.domain_type** %2, align 8
  %117 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %116, i32 0, i32 2
  store i32 0, i32* %117, align 4
  %118 = load %struct.domain_type*, %struct.domain_type** %2, align 8
  %119 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %118, i32 0, i32 3
  store i32 0, i32* %119, align 8
  %120 = load %struct.domain_type*, %struct.domain_type** %2, align 8
  %121 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %120, i32 0, i32 4
  store i32 0, i32* %121, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @MGBuild(%struct.domain_type* %0, double %1, double %2, double %3) #0 {
  %5 = alloca %struct.domain_type*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca double, align 8
  %14 = alloca i64, align 8
  store %struct.domain_type* %0, %struct.domain_type** %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  %15 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %16 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %15, i32 0, i32 20
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  %18 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %19 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %18, i32 0, i32 18
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %25 = call i32 @fflush(%struct._IO_FILE* %24)
  br label %26

26:                                               ; preds = %22, %4
  %27 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  call void @MGResetTimers(%struct.domain_type* %27)
  %28 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %29 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %29, i32 0, i32 16
  store i64 0, i64* %30, align 8
  %31 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  store i64 %31, i64* %12, align 8
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %72, %26
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %75

36:                                               ; preds = %32
  %37 = load double, double* %8, align 8
  %38 = load i32, i32* %10, align 4
  %39 = shl i32 1, %38
  %40 = sitofp i32 %39 to double
  %41 = fmul double %37, %40
  store double %41, double* %13, align 8
  %42 = load double, double* %13, align 8
  %43 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %44 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %43, i32 0, i32 23
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [10 x double], [10 x double]* %44, i64 0, i64 %46
  store double %42, double* %47, align 8
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %68, %36
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %51 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %50, i32 0, i32 19
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %48
  %55 = load double, double* %13, align 8
  %56 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %57 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %56, i32 0, i32 25
  %58 = load %struct.subdomain_type*, %struct.subdomain_type** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %58, i64 %60
  %62 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %61, i32 0, i32 5
  %63 = load %struct.box_type*, %struct.box_type** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.box_type, %struct.box_type* %63, i64 %65
  %67 = getelementptr inbounds %struct.box_type, %struct.box_type* %66, i32 0, i32 0
  store double %55, double* %67, align 8
  br label %68

68:                                               ; preds = %54
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %48

71:                                               ; preds = %48
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %32

75:                                               ; preds = %32
  store i32 0, i32* %10, align 4
  br label %76

76:                                               ; preds = %165, %75
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %168

80:                                               ; preds = %76
  store i32 1, i32* %9, align 4
  br label %81

81:                                               ; preds = %161, %80
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %84 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %83, i32 0, i32 19
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %164

87:                                               ; preds = %81
  %88 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %89 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %88, i32 0, i32 25
  %90 = load %struct.subdomain_type*, %struct.subdomain_type** %89, align 8
  %91 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %90, i64 0
  %92 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %91, i32 0, i32 5
  %93 = load %struct.box_type*, %struct.box_type** %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.box_type, %struct.box_type* %93, i64 %95
  %97 = getelementptr inbounds %struct.box_type, %struct.box_type* %96, i32 0, i32 11
  %98 = load i64*, i64** %97, align 8
  %99 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %100 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %99, i32 0, i32 25
  %101 = load %struct.subdomain_type*, %struct.subdomain_type** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %101, i64 %103
  %105 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %104, i32 0, i32 5
  %106 = load %struct.box_type*, %struct.box_type** %105, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.box_type, %struct.box_type* %106, i64 %108
  %110 = getelementptr inbounds %struct.box_type, %struct.box_type* %109, i32 0, i32 11
  store i64* %98, i64** %110, align 8
  %111 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %112 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %111, i32 0, i32 25
  %113 = load %struct.subdomain_type*, %struct.subdomain_type** %112, align 8
  %114 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %113, i64 0
  %115 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %114, i32 0, i32 5
  %116 = load %struct.box_type*, %struct.box_type** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.box_type, %struct.box_type* %116, i64 %118
  %120 = getelementptr inbounds %struct.box_type, %struct.box_type* %119, i32 0, i32 12
  %121 = getelementptr inbounds [2 x double*], [2 x double*]* %120, i64 0, i64 0
  %122 = load double*, double** %121, align 8
  %123 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %124 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %123, i32 0, i32 25
  %125 = load %struct.subdomain_type*, %struct.subdomain_type** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %125, i64 %127
  %129 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %128, i32 0, i32 5
  %130 = load %struct.box_type*, %struct.box_type** %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.box_type, %struct.box_type* %130, i64 %132
  %134 = getelementptr inbounds %struct.box_type, %struct.box_type* %133, i32 0, i32 12
  %135 = getelementptr inbounds [2 x double*], [2 x double*]* %134, i64 0, i64 0
  store double* %122, double** %135, align 8
  %136 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %137 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %136, i32 0, i32 25
  %138 = load %struct.subdomain_type*, %struct.subdomain_type** %137, align 8
  %139 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %138, i64 0
  %140 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %139, i32 0, i32 5
  %141 = load %struct.box_type*, %struct.box_type** %140, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.box_type, %struct.box_type* %141, i64 %143
  %145 = getelementptr inbounds %struct.box_type, %struct.box_type* %144, i32 0, i32 12
  %146 = getelementptr inbounds [2 x double*], [2 x double*]* %145, i64 0, i64 1
  %147 = load double*, double** %146, align 8
  %148 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %149 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %148, i32 0, i32 25
  %150 = load %struct.subdomain_type*, %struct.subdomain_type** %149, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %150, i64 %152
  %154 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %153, i32 0, i32 5
  %155 = load %struct.box_type*, %struct.box_type** %154, align 8
  %156 = load i32, i32* %10, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.box_type, %struct.box_type* %155, i64 %157
  %159 = getelementptr inbounds %struct.box_type, %struct.box_type* %158, i32 0, i32 12
  %160 = getelementptr inbounds [2 x double*], [2 x double*]* %159, i64 0, i64 1
  store double* %147, double** %160, align 8
  br label %161

161:                                              ; preds = %87
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %9, align 4
  br label %81

164:                                              ; preds = %81
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %10, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %10, align 4
  br label %76

168:                                              ; preds = %76
  store i32 0, i32* %10, align 4
  br label %169

169:                                              ; preds = %177, %168
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* %11, align 4
  %172 = sub nsw i32 %171, 1
  %173 = icmp slt i32 %170, %172
  br i1 %173, label %174, label %180

174:                                              ; preds = %169
  %175 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %176 = load i32, i32* %10, align 4
  call void @restriction(%struct.domain_type* %175, i32 %176, i32 2, i32 2)
  br label %177

177:                                              ; preds = %174
  %178 = load i32, i32* %10, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %10, align 4
  br label %169

180:                                              ; preds = %169
  store i32 0, i32* %10, align 4
  br label %181

181:                                              ; preds = %188, %180
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* %11, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %191

185:                                              ; preds = %181
  %186 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %187 = load i32, i32* %10, align 4
  call void @exchange_boundary(%struct.domain_type* %186, i32 %187, i32 2, i32 1, i32 1, i32 1)
  br label %188

188:                                              ; preds = %185
  %189 = load i32, i32* %10, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %10, align 4
  br label %181

191:                                              ; preds = %181
  %192 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  call void @exchange_boundary(%struct.domain_type* %192, i32 0, i32 3, i32 1, i32 1, i32 1)
  %193 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  call void @project_cell_to_face(%struct.domain_type* %193, i32 0, i32 3, i32 5, i32 0)
  %194 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  call void @project_cell_to_face(%struct.domain_type* %194, i32 0, i32 3, i32 6, i32 1)
  %195 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  call void @project_cell_to_face(%struct.domain_type* %195, i32 0, i32 3, i32 7, i32 2)
  store i32 0, i32* %10, align 4
  br label %196

196:                                              ; preds = %217, %191
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* %11, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %220

200:                                              ; preds = %196
  %201 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %202 = load i32, i32* %10, align 4
  call void @exchange_boundary(%struct.domain_type* %201, i32 %202, i32 5, i32 1, i32 1, i32 1)
  %203 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %204 = load i32, i32* %10, align 4
  call void @exchange_boundary(%struct.domain_type* %203, i32 %204, i32 6, i32 1, i32 1, i32 1)
  %205 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %206 = load i32, i32* %10, align 4
  call void @exchange_boundary(%struct.domain_type* %205, i32 %206, i32 7, i32 1, i32 1, i32 1)
  %207 = load i32, i32* %10, align 4
  %208 = load i32, i32* %11, align 4
  %209 = sub nsw i32 %208, 1
  %210 = icmp slt i32 %207, %209
  br i1 %210, label %211, label %216

211:                                              ; preds = %200
  %212 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %213 = load i32, i32* %10, align 4
  %214 = load i32, i32* %10, align 4
  %215 = add nsw i32 %214, 1
  call void @restriction_betas(%struct.domain_type* %212, i32 %213, i32 %215)
  br label %216

216:                                              ; preds = %211, %200
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %10, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %10, align 4
  br label %196

220:                                              ; preds = %196
  store i32 0, i32* %10, align 4
  br label %221

221:                                              ; preds = %230, %220
  %222 = load i32, i32* %10, align 4
  %223 = load i32, i32* %11, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %233

225:                                              ; preds = %221
  %226 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %227 = load i32, i32* %10, align 4
  %228 = load double, double* %6, align 8
  %229 = load double, double* %7, align 8
  call void @rebuild_lambda(%struct.domain_type* %226, i32 %227, double %228, double %229)
  br label %230

230:                                              ; preds = %225
  %231 = load i32, i32* %10, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %10, align 4
  br label %221

233:                                              ; preds = %221
  store i32 0, i32* %10, align 4
  br label %234

234:                                              ; preds = %241, %233
  %235 = load i32, i32* %10, align 4
  %236 = load i32, i32* %11, align 4
  %237 = icmp slt i32 %235, %236
  br i1 %237, label %238, label %244

238:                                              ; preds = %234
  %239 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %240 = load i32, i32* %10, align 4
  call void @exchange_boundary(%struct.domain_type* %239, i32 %240, i32 4, i32 1, i32 1, i32 1)
  br label %241

241:                                              ; preds = %238
  %242 = load i32, i32* %10, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %10, align 4
  br label %234

244:                                              ; preds = %234
  %245 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  %246 = load i64, i64* %12, align 8
  %247 = sub i64 %245, %246
  store i64 %247, i64* %14, align 8
  %248 = load i64, i64* %14, align 8
  %249 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %250 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %250, i32 0, i32 16
  %252 = load i64, i64* %251, align 8
  %253 = add i64 %252, %248
  store i64 %253, i64* %251, align 8
  %254 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %255 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %254, i32 0, i32 18
  %256 = load i32, i32* %255, align 4
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %262

258:                                              ; preds = %244
  %259 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %260 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %261 = call i32 @fflush(%struct._IO_FILE* %260)
  br label %262

262:                                              ; preds = %258, %244
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @MGSolve(%struct.domain_type* %0, i32 %1, i32 %2, double %3, double %4, double %5) #0 {
  %7 = alloca %struct.domain_type*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store %struct.domain_type* %0, %struct.domain_type** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store double %3, double* %10, align 8
  store double %4, double* %11, align 8
  store double %5, double* %12, align 8
  %25 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %26 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  store i32 0, i32* %14, align 4
  store i32 9, i32* %15, align 4
  %29 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %30 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %29, i32 0, i32 20
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %18, align 4
  store i32 10, i32* %19, align 4
  %32 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %33 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %32, i32 0, i32 18
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %6
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %39 = call i32 @fflush(%struct._IO_FILE* %38)
  br label %40

40:                                               ; preds = %36, %6
  %41 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  store i64 %41, i64* %20, align 8
  %42 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %43 = load i32, i32* %14, align 4
  call void @zero_grid(%struct.domain_type* %42, i32 0, i32 %43)
  %44 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %9, align 4
  call void @scale_grid(%struct.domain_type* %44, i32 0, i32 %45, double 1.000000e+00, i32 %46)
  %47 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  store i64 %47, i64* %21, align 8
  store i32 0, i32* %17, align 4
  br label %48

48:                                               ; preds = %156, %40
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* %19, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %159

52:                                               ; preds = %48
  %53 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %54 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  store i32 0, i32* %13, align 4
  br label %57

57:                                               ; preds = %96, %52
  %58 = load i32, i32* %13, align 4
  %59 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %60 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %59, i32 0, i32 20
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %61, 1
  %63 = icmp slt i32 %58, %62
  br i1 %63, label %64, label %99

64:                                               ; preds = %57
  %65 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  store i64 %65, i64* %22, align 8
  %66 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %15, align 4
  %70 = load double, double* %10, align 8
  %71 = load double, double* %11, align 8
  call void @smooth(%struct.domain_type* %66, i32 %67, i32 %68, i32 %69, double %70, double %71)
  %72 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load double, double* %10, align 8
  %77 = load double, double* %11, align 8
  call void @residual(%struct.domain_type* %72, i32 %73, i32 10, i32 %74, i32 %75, double %76, double %77)
  %78 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %15, align 4
  call void @restriction(%struct.domain_type* %78, i32 %79, i32 %80, i32 10)
  %81 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, 1
  %84 = load i32, i32* %14, align 4
  call void @zero_grid(%struct.domain_type* %81, i32 %83, i32 %84)
  %85 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  %86 = load i64, i64* %22, align 8
  %87 = sub i64 %85, %86
  %88 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %89 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %89, i32 0, i32 15
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [10 x i64], [10 x i64]* %90, i64 0, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = add i64 %94, %87
  store i64 %95, i64* %93, align 8
  br label %96

96:                                               ; preds = %64
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %13, align 4
  br label %57

99:                                               ; preds = %57
  %100 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  store i64 %100, i64* %23, align 8
  %101 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %102 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %101, i32 0, i32 20
  %103 = load i32, i32* %102, align 4
  %104 = sub nsw i32 %103, 1
  store i32 %104, i32* %13, align 4
  %105 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %15, align 4
  %109 = load double, double* %10, align 8
  %110 = load double, double* %11, align 8
  call void @IterativeSolver(%struct.domain_type* %105, i32 %106, i32 %107, i32 %108, double %109, double %110, double 1.000000e-03)
  %111 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  %112 = load i64, i64* %23, align 8
  %113 = sub i64 %111, %112
  %114 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %115 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %115, i32 0, i32 15
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [10 x i64], [10 x i64]* %116, i64 0, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = add i64 %120, %113
  store i64 %121, i64* %119, align 8
  %122 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %123 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %122, i32 0, i32 20
  %124 = load i32, i32* %123, align 4
  %125 = sub nsw i32 %124, 2
  store i32 %125, i32* %13, align 4
  br label %126

126:                                              ; preds = %152, %99
  %127 = load i32, i32* %13, align 4
  %128 = icmp sge i32 %127, 0
  br i1 %128, label %129, label %155

129:                                              ; preds = %126
  %130 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  store i64 %130, i64* %24, align 8
  %131 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* %14, align 4
  %134 = load i32, i32* %14, align 4
  call void @interpolation_constant(%struct.domain_type* %131, i32 %132, double 1.000000e+00, i32 %133, i32 %134)
  %135 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* %15, align 4
  %139 = load double, double* %10, align 8
  %140 = load double, double* %11, align 8
  call void @smooth(%struct.domain_type* %135, i32 %136, i32 %137, i32 %138, double %139, double %140)
  %141 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  %142 = load i64, i64* %24, align 8
  %143 = sub i64 %141, %142
  %144 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %145 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %145, i32 0, i32 15
  %147 = load i32, i32* %13, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [10 x i64], [10 x i64]* %146, i64 0, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = add i64 %150, %143
  store i64 %151, i64* %149, align 8
  br label %152

152:                                              ; preds = %129
  %153 = load i32, i32* %13, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %13, align 4
  br label %126

155:                                              ; preds = %126
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %17, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %17, align 4
  br label %48

159:                                              ; preds = %48
  %160 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  %161 = load i64, i64* %21, align 8
  %162 = sub i64 %160, %161
  %163 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %164 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %164, i32 0, i32 17
  %166 = load i64, i64* %165, align 8
  %167 = add i64 %166, %162
  store i64 %167, i64* %165, align 8
  %168 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  %169 = load i64, i64* %20, align 8
  %170 = sub i64 %168, %169
  %171 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %172 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %172, i32 0, i32 18
  %174 = load i64, i64* %173, align 8
  %175 = add i64 %174, %170
  store i64 %175, i64* %173, align 8
  %176 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %177 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %176, i32 0, i32 18
  %178 = load i32, i32* %177, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %159
  %181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %183 = call i32 @fflush(%struct._IO_FILE* %182)
  br label %184

184:                                              ; preds = %180, %159
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.domain_type, align 8
  %23 = alloca [3 x i32], align 4
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 6, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = shl i32 1, %32
  %34 = sdiv i32 256, %33
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %9, align 4
  %36 = shl i32 1, %35
  %37 = sdiv i32 256, %36
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %9, align 4
  %39 = shl i32 1, %38
  %40 = sdiv i32 256, %39
  store i32 %40, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i32 1, i32* %14, align 4
  store i32 1, i32* %15, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %57

43:                                               ; preds = %2
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @atoi(i8* %46) #10
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = shl i32 1, %48
  %50 = sdiv i32 256, %49
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %9, align 4
  %52 = shl i32 1, %51
  %53 = sdiv i32 256, %52
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %9, align 4
  %55 = shl i32 1, %54
  %56 = sdiv i32 256, %55
  store i32 %56, i32* %12, align 4
  br label %121

57:                                               ; preds = %2
  %58 = load i32, i32* %4, align 4
  %59 = icmp eq i32 %58, 5
  br i1 %59, label %60, label %77

60:                                               ; preds = %57
  %61 = load i8**, i8*** %5, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @atoi(i8* %63) #10
  store i32 %64, i32* %9, align 4
  %65 = load i8**, i8*** %5, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 2
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @atoi(i8* %67) #10
  store i32 %68, i32* %10, align 4
  %69 = load i8**, i8*** %5, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 3
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @atoi(i8* %71) #10
  store i32 %72, i32* %11, align 4
  %73 = load i8**, i8*** %5, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 4
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @atoi(i8* %75) #10
  store i32 %76, i32* %12, align 4
  br label %120

77:                                               ; preds = %57
  %78 = load i32, i32* %4, align 4
  %79 = icmp eq i32 %78, 8
  br i1 %79, label %80, label %109

80:                                               ; preds = %77
  %81 = load i8**, i8*** %5, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 1
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @atoi(i8* %83) #10
  store i32 %84, i32* %9, align 4
  %85 = load i8**, i8*** %5, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 2
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @atoi(i8* %87) #10
  store i32 %88, i32* %10, align 4
  %89 = load i8**, i8*** %5, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 3
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @atoi(i8* %91) #10
  store i32 %92, i32* %11, align 4
  %93 = load i8**, i8*** %5, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 4
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @atoi(i8* %95) #10
  store i32 %96, i32* %12, align 4
  %97 = load i8**, i8*** %5, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 5
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @atoi(i8* %99) #10
  store i32 %100, i32* %13, align 4
  %101 = load i8**, i8*** %5, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 6
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @atoi(i8* %103) #10
  store i32 %104, i32* %14, align 4
  %105 = load i8**, i8*** %5, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 7
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @atoi(i8* %107) #10
  store i32 %108, i32* %15, align 4
  br label %119

109:                                              ; preds = %77
  %110 = load i32, i32* %4, align 4
  %111 = icmp ne i32 %110, 1
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load i32, i32* %6, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.12, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %112
  call void @exit(i32 0) #9
  unreachable

118:                                              ; preds = %109
  br label %119

119:                                              ; preds = %118, %80
  br label %120

120:                                              ; preds = %119, %60
  br label %121

121:                                              ; preds = %120, %43
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* %14, align 4
  %124 = mul nsw i32 %122, %123
  %125 = load i32, i32* %15, align 4
  %126 = mul nsw i32 %124, %125
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %144

129:                                              ; preds = %121
  %130 = load i32, i32* %6, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %129
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* %14, align 4
  %138 = mul nsw i32 %136, %137
  %139 = load i32, i32* %15, align 4
  %140 = mul nsw i32 %138, %139
  %141 = load i32, i32* %7, align 4
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1.13, i64 0, i64 0), i32 %133, i32 %134, i32 %135, i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %132, %129
  call void @exit(i32 0) #9
  unreachable

144:                                              ; preds = %121
  %145 = load i32, i32* %6, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %144
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* %8, align 4
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2.14, i64 0, i64 0), i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %147, %144
  %152 = load i32, i32* %9, align 4
  %153 = shl i32 1, %152
  store i32 %153, i32* %16, align 4
  %154 = load i32, i32* %9, align 4
  %155 = shl i32 1, %154
  store i32 %155, i32* %17, align 4
  %156 = load i32, i32* %9, align 4
  %157 = shl i32 1, %156
  store i32 %157, i32* %18, align 4
  store i32 1, i32* %19, align 4
  %158 = load i32, i32* %9, align 4
  %159 = add nsw i32 1, %158
  %160 = load i32, i32* %19, align 4
  %161 = sub nsw i32 %159, %160
  store i32 %161, i32* %20, align 4
  %162 = load i32, i32* %6, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %151
  %165 = load i32, i32* %19, align 4
  %166 = shl i32 1, %165
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3.15, i64 0, i64 0), i32 %166)
  %168 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %169 = call i32 @fflush(%struct._IO_FILE* %168)
  br label %170

170:                                              ; preds = %164, %151
  %171 = bitcast [3 x i32]* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %171, i8 0, i64 12, i1 false)
  %172 = load i32, i32* %16, align 4
  %173 = load i32, i32* %17, align 4
  %174 = load i32, i32* %18, align 4
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* %13, align 4
  %179 = load i32, i32* %14, align 4
  %180 = load i32, i32* %15, align 4
  %181 = load i32, i32* %6, align 4
  %182 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %183 = load i32, i32* %20, align 4
  %184 = call i32 @create_domain(%struct.domain_type* %22, i32 %172, i32 %173, i32 %174, i32 %175, i32 %176, i32 %177, i32 %178, i32 %179, i32 %180, i32 %181, i32* %182, i32 12, i32 1, i32 %183)
  %185 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %22, i32 0, i32 13
  %186 = getelementptr inbounds %struct.anon, %struct.anon* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = sitofp i32 %187 to double
  %189 = fdiv double 1.000000e+00, %188
  store double %189, double* %24, align 8
  %190 = load i32, i32* %6, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %170
  %193 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4.16, i64 0, i64 0))
  %194 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %195 = call i32 @fflush(%struct._IO_FILE* %194)
  br label %196

196:                                              ; preds = %192, %170
  store double 9.000000e-01, double* %25, align 8
  store double 9.000000e-01, double* %26, align 8
  %197 = load double, double* %24, align 8
  %198 = load double, double* %25, align 8
  %199 = load double, double* %26, align 8
  call void @initialize_problem(%struct.domain_type* %22, i32 0, double %197, double %198, double %199)
  %200 = load i32, i32* %6, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %196
  %203 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5.17, i64 0, i64 0))
  %204 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %205 = call i32 @fflush(%struct._IO_FILE* %204)
  br label %206

206:                                              ; preds = %202, %196
  %207 = load double, double* %25, align 8
  %208 = load double, double* %26, align 8
  %209 = load double, double* %24, align 8
  call void @MGBuild(%struct.domain_type* %22, double %207, double %208, double %209)
  store i32 2, i32* %28, align 4
  call void @MGResetTimers(%struct.domain_type* %22)
  store i32 0, i32* %27, align 4
  br label %210

210:                                              ; preds = %217, %206
  %211 = load i32, i32* %27, align 4
  %212 = load i32, i32* %28, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %220

214:                                              ; preds = %210
  call void @zero_grid(%struct.domain_type* %22, i32 0, i32 0)
  %215 = load double, double* %25, align 8
  %216 = load double, double* %26, align 8
  call void @MGSolve(%struct.domain_type* %22, i32 0, i32 1, double %215, double %216, double 1.000000e-15)
  br label %217

217:                                              ; preds = %214
  %218 = load i32, i32* %27, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %27, align 4
  br label %210

220:                                              ; preds = %210
  call void @print_timing(%struct.domain_type* %22)
  %221 = load double, double* %24, align 8
  %222 = load double, double* %24, align 8
  %223 = fmul double %221, %222
  %224 = load double, double* %24, align 8
  %225 = fmul double %223, %224
  store double %225, double* %29, align 8
  call void @add_grids(%struct.domain_type* %22, i32 0, i32 10, double 1.000000e+00, i32 11, double -1.000000e+00, i32 0)
  %226 = call double @norm(%struct.domain_type* %22, i32 0, i32 10)
  store double %226, double* %30, align 8
  %227 = call double @dot(%struct.domain_type* %22, i32 0, i32 10, i32 10)
  %228 = load double, double* %29, align 8
  %229 = fmul double %227, %228
  %230 = call double @sqrt(double %229) #8
  store double %230, double* %31, align 8
  %231 = load i32, i32* %6, align 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %220
  %234 = load double, double* %24, align 8
  %235 = load double, double* %30, align 8
  %236 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6.18, i64 0, i64 0), double %234, double %235)
  br label %237

237:                                              ; preds = %233, %220
  %238 = load i32, i32* %6, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %237
  %241 = load double, double* %24, align 8
  %242 = load double, double* %31, align 8
  %243 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7.19, i64 0, i64 0), double %241, double %242)
  br label %244

244:                                              ; preds = %240, %237
  call void @destroy_domain(%struct.domain_type* %22)
  ret i32 0
}

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #5

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @exchange_boundary(%struct.domain_type* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.domain_type*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [27 x i32], align 16
  %21 = alloca [27 x i32], align 16
  %22 = alloca [27 x i32], align 16
  %23 = alloca [27 x i32], align 16
  store %struct.domain_type* %0, %struct.domain_type** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %24 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  store i64 %24, i64* %13, align 8
  store i32 0, i32* %16, align 4
  %25 = bitcast [27 x i32]* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %25, i8 0, i64 108, i1 false)
  %26 = bitcast i8* %25 to [27 x i32]*
  %27 = getelementptr inbounds [27 x i32], [27 x i32]* %26, i32 0, i32 4
  store i32 1, i32* %27, align 16
  %28 = getelementptr inbounds [27 x i32], [27 x i32]* %26, i32 0, i32 10
  store i32 1, i32* %28, align 8
  %29 = getelementptr inbounds [27 x i32], [27 x i32]* %26, i32 0, i32 12
  store i32 1, i32* %29, align 16
  %30 = getelementptr inbounds [27 x i32], [27 x i32]* %26, i32 0, i32 14
  store i32 1, i32* %30, align 8
  %31 = getelementptr inbounds [27 x i32], [27 x i32]* %26, i32 0, i32 16
  store i32 1, i32* %31, align 16
  %32 = getelementptr inbounds [27 x i32], [27 x i32]* %26, i32 0, i32 22
  store i32 1, i32* %32, align 8
  %33 = bitcast [27 x i32]* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %33, i8* align 16 bitcast ([27 x i32]* @__const.exchange_boundary.edges to i8*), i64 108, i1 false)
  %34 = bitcast [27 x i32]* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %34, i8* align 16 bitcast ([27 x i32]* @__const.exchange_boundary.corners to i8*), i64 108, i1 false)
  %35 = bitcast [27 x i32]* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %35, i8 0, i64 108, i1 false)
  store i32 0, i32* %19, align 4
  br label %36

36:                                               ; preds = %79, %6
  %37 = load i32, i32* %19, align 4
  %38 = icmp slt i32 %37, 27
  br i1 %38, label %39, label %82

39:                                               ; preds = %36
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load i32, i32* %19, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [27 x i32], [27 x i32]* %20, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %19, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [27 x i32], [27 x i32]* %23, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %46
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %42, %39
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load i32, i32* %19, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [27 x i32], [27 x i32]* %21, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %19, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [27 x i32], [27 x i32]* %23, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %59
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %55, %52
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %65
  %69 = load i32, i32* %19, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [27 x i32], [27 x i32]* %22, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %19, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [27 x i32], [27 x i32]* %23, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %72
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %68, %65
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %19, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %19, align 4
  br label %36

82:                                               ; preds = %36
  %83 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  %84 = load i64, i64* %13, align 8
  %85 = sub i64 %83, %84
  %86 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %87 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %87, i32 0, i32 5
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [10 x i64], [10 x i64]* %88, i64 0, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %92, %85
  store i64 %93, i64* %91, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @rebuild_lambda(%struct.domain_type* %0, i32 %1, double %2, double %3) #0 {
  %5 = alloca %struct.domain_type*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca double, align 8
  %25 = alloca double*, align 8
  %26 = alloca double*, align 8
  %27 = alloca double*, align 8
  %28 = alloca double*, align 8
  %29 = alloca double*, align 8
  %30 = alloca double, align 8
  %31 = alloca i32, align 4
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  store %struct.domain_type* %0, %struct.domain_type** %5, align 8
  store i32 %1, i32* %6, align 4
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  %35 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  store i64 %35, i64* %9, align 8
  store i32 100000, i32* %10, align 4
  %36 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %37 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %36, i32 0, i32 25
  %38 = load %struct.subdomain_type*, %struct.subdomain_type** %37, align 8
  %39 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %38, i64 0
  %40 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %39, i32 0, i32 5
  %41 = load %struct.box_type*, %struct.box_type** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.box_type, %struct.box_type* %41, i64 %43
  %45 = getelementptr inbounds %struct.box_type, %struct.box_type* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.anon, %struct.anon* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %47, %48
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %11, align 4
  %51 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %52 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %51, i32 0, i32 25
  %53 = load %struct.subdomain_type*, %struct.subdomain_type** %52, align 8
  %54 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %53, i64 0
  %55 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %54, i32 0, i32 5
  %56 = load %struct.box_type*, %struct.box_type** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.box_type, %struct.box_type* %56, i64 %58
  %60 = getelementptr inbounds %struct.box_type, %struct.box_type* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.anon, %struct.anon* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp sge i32 %62, %63
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %12, align 4
  store double -1.000000e+00, double* %14, align 8
  store i32 0, i32* %13, align 4
  br label %66

66:                                               ; preds = %465, %4
  %67 = load i32, i32* %13, align 4
  %68 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %69 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %68, i32 0, i32 19
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %468

72:                                               ; preds = %66
  %73 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %74 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %73, i32 0, i32 25
  %75 = load %struct.subdomain_type*, %struct.subdomain_type** %74, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %75, i64 %77
  %79 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %78, i32 0, i32 5
  %80 = load %struct.box_type*, %struct.box_type** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.box_type, %struct.box_type* %80, i64 %82
  %84 = getelementptr inbounds %struct.box_type, %struct.box_type* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %18, align 4
  %86 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %87 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %86, i32 0, i32 25
  %88 = load %struct.subdomain_type*, %struct.subdomain_type** %87, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %88, i64 %90
  %92 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %91, i32 0, i32 5
  %93 = load %struct.box_type*, %struct.box_type** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.box_type, %struct.box_type* %93, i64 %95
  %97 = getelementptr inbounds %struct.box_type, %struct.box_type* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %19, align 4
  %99 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %100 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %99, i32 0, i32 25
  %101 = load %struct.subdomain_type*, %struct.subdomain_type** %100, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %101, i64 %103
  %105 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %104, i32 0, i32 5
  %106 = load %struct.box_type*, %struct.box_type** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.box_type, %struct.box_type* %106, i64 %108
  %110 = getelementptr inbounds %struct.box_type, %struct.box_type* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %20, align 4
  %112 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %113 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %112, i32 0, i32 25
  %114 = load %struct.subdomain_type*, %struct.subdomain_type** %113, align 8
  %115 = load i32, i32* %13, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %114, i64 %116
  %118 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %117, i32 0, i32 5
  %119 = load %struct.box_type*, %struct.box_type** %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.box_type, %struct.box_type* %119, i64 %121
  %123 = getelementptr inbounds %struct.box_type, %struct.box_type* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.anon, %struct.anon* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %21, align 4
  %126 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %127 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %126, i32 0, i32 25
  %128 = load %struct.subdomain_type*, %struct.subdomain_type** %127, align 8
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %128, i64 %130
  %132 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %131, i32 0, i32 5
  %133 = load %struct.box_type*, %struct.box_type** %132, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.box_type, %struct.box_type* %133, i64 %135
  %137 = getelementptr inbounds %struct.box_type, %struct.box_type* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.anon, %struct.anon* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %22, align 4
  %140 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %141 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %140, i32 0, i32 25
  %142 = load %struct.subdomain_type*, %struct.subdomain_type** %141, align 8
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %142, i64 %144
  %146 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %145, i32 0, i32 5
  %147 = load %struct.box_type*, %struct.box_type** %146, align 8
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.box_type, %struct.box_type* %147, i64 %149
  %151 = getelementptr inbounds %struct.box_type, %struct.box_type* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.anon, %struct.anon* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %23, align 4
  %154 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %155 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %154, i32 0, i32 23
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [10 x double], [10 x double]* %155, i64 0, i64 %157
  %159 = load double, double* %158, align 8
  %160 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %161 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %160, i32 0, i32 23
  %162 = load i32, i32* %6, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [10 x double], [10 x double]* %161, i64 0, i64 %163
  %165 = load double, double* %164, align 8
  %166 = fmul double %159, %165
  %167 = fdiv double 1.000000e+00, %166
  store double %167, double* %24, align 8
  %168 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %169 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %168, i32 0, i32 25
  %170 = load %struct.subdomain_type*, %struct.subdomain_type** %169, align 8
  %171 = load i32, i32* %13, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %170, i64 %172
  %174 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %173, i32 0, i32 5
  %175 = load %struct.box_type*, %struct.box_type** %174, align 8
  %176 = load i32, i32* %6, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.box_type, %struct.box_type* %175, i64 %177
  %179 = getelementptr inbounds %struct.box_type, %struct.box_type* %178, i32 0, i32 10
  %180 = load double**, double*** %179, align 8
  %181 = getelementptr inbounds double*, double** %180, i64 2
  %182 = load double*, double** %181, align 8
  %183 = load i32, i32* %20, align 4
  %184 = load i32, i32* %18, align 4
  %185 = add nsw i32 1, %184
  %186 = load i32, i32* %19, align 4
  %187 = add nsw i32 %185, %186
  %188 = mul nsw i32 %183, %187
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds double, double* %182, i64 %189
  store double* %190, double** %25, align 8
  %191 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %192 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %191, i32 0, i32 25
  %193 = load %struct.subdomain_type*, %struct.subdomain_type** %192, align 8
  %194 = load i32, i32* %13, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %193, i64 %195
  %197 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %196, i32 0, i32 5
  %198 = load %struct.box_type*, %struct.box_type** %197, align 8
  %199 = load i32, i32* %6, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.box_type, %struct.box_type* %198, i64 %200
  %202 = getelementptr inbounds %struct.box_type, %struct.box_type* %201, i32 0, i32 10
  %203 = load double**, double*** %202, align 8
  %204 = getelementptr inbounds double*, double** %203, i64 5
  %205 = load double*, double** %204, align 8
  %206 = load i32, i32* %20, align 4
  %207 = load i32, i32* %18, align 4
  %208 = add nsw i32 1, %207
  %209 = load i32, i32* %19, align 4
  %210 = add nsw i32 %208, %209
  %211 = mul nsw i32 %206, %210
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds double, double* %205, i64 %212
  store double* %213, double** %26, align 8
  %214 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %215 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %214, i32 0, i32 25
  %216 = load %struct.subdomain_type*, %struct.subdomain_type** %215, align 8
  %217 = load i32, i32* %13, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %216, i64 %218
  %220 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %219, i32 0, i32 5
  %221 = load %struct.box_type*, %struct.box_type** %220, align 8
  %222 = load i32, i32* %6, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.box_type, %struct.box_type* %221, i64 %223
  %225 = getelementptr inbounds %struct.box_type, %struct.box_type* %224, i32 0, i32 10
  %226 = load double**, double*** %225, align 8
  %227 = getelementptr inbounds double*, double** %226, i64 6
  %228 = load double*, double** %227, align 8
  %229 = load i32, i32* %20, align 4
  %230 = load i32, i32* %18, align 4
  %231 = add nsw i32 1, %230
  %232 = load i32, i32* %19, align 4
  %233 = add nsw i32 %231, %232
  %234 = mul nsw i32 %229, %233
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds double, double* %228, i64 %235
  store double* %236, double** %27, align 8
  %237 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %238 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %237, i32 0, i32 25
  %239 = load %struct.subdomain_type*, %struct.subdomain_type** %238, align 8
  %240 = load i32, i32* %13, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %239, i64 %241
  %243 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %242, i32 0, i32 5
  %244 = load %struct.box_type*, %struct.box_type** %243, align 8
  %245 = load i32, i32* %6, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.box_type, %struct.box_type* %244, i64 %246
  %248 = getelementptr inbounds %struct.box_type, %struct.box_type* %247, i32 0, i32 10
  %249 = load double**, double*** %248, align 8
  %250 = getelementptr inbounds double*, double** %249, i64 7
  %251 = load double*, double** %250, align 8
  %252 = load i32, i32* %20, align 4
  %253 = load i32, i32* %18, align 4
  %254 = add nsw i32 1, %253
  %255 = load i32, i32* %19, align 4
  %256 = add nsw i32 %254, %255
  %257 = mul nsw i32 %252, %256
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds double, double* %251, i64 %258
  store double* %259, double** %28, align 8
  %260 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %261 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %260, i32 0, i32 25
  %262 = load %struct.subdomain_type*, %struct.subdomain_type** %261, align 8
  %263 = load i32, i32* %13, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %262, i64 %264
  %266 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %265, i32 0, i32 5
  %267 = load %struct.box_type*, %struct.box_type** %266, align 8
  %268 = load i32, i32* %6, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.box_type, %struct.box_type* %267, i64 %269
  %271 = getelementptr inbounds %struct.box_type, %struct.box_type* %270, i32 0, i32 10
  %272 = load double**, double*** %271, align 8
  %273 = getelementptr inbounds double*, double** %272, i64 4
  %274 = load double*, double** %273, align 8
  %275 = load i32, i32* %20, align 4
  %276 = load i32, i32* %18, align 4
  %277 = add nsw i32 1, %276
  %278 = load i32, i32* %19, align 4
  %279 = add nsw i32 %277, %278
  %280 = mul nsw i32 %275, %279
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds double, double* %274, i64 %281
  store double* %282, double** %29, align 8
  store double -1.000000e+00, double* %30, align 8
  store i32 0, i32* %17, align 4
  br label %283

283:                                              ; preds = %455, %72
  %284 = load i32, i32* %17, align 4
  %285 = load i32, i32* %21, align 4
  %286 = icmp slt i32 %284, %285
  br i1 %286, label %287, label %458

287:                                              ; preds = %283
  store i32 0, i32* %16, align 4
  br label %288

288:                                              ; preds = %451, %287
  %289 = load i32, i32* %16, align 4
  %290 = load i32, i32* %22, align 4
  %291 = icmp slt i32 %289, %290
  br i1 %291, label %292, label %454

292:                                              ; preds = %288
  store i32 0, i32* %15, align 4
  br label %293

293:                                              ; preds = %447, %292
  %294 = load i32, i32* %15, align 4
  %295 = load i32, i32* %23, align 4
  %296 = icmp slt i32 %294, %295
  br i1 %296, label %297, label %450

297:                                              ; preds = %293
  %298 = load i32, i32* %15, align 4
  %299 = load i32, i32* %16, align 4
  %300 = load i32, i32* %18, align 4
  %301 = mul nsw i32 %299, %300
  %302 = add nsw i32 %298, %301
  %303 = load i32, i32* %17, align 4
  %304 = load i32, i32* %19, align 4
  %305 = mul nsw i32 %303, %304
  %306 = add nsw i32 %302, %305
  store i32 %306, i32* %31, align 4
  %307 = load double, double* %8, align 8
  %308 = load double, double* %24, align 8
  %309 = fmul double %307, %308
  %310 = load double*, double** %26, align 8
  %311 = load i32, i32* %31, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds double, double* %310, i64 %312
  %314 = load double, double* %313, align 8
  %315 = fmul double %309, %314
  %316 = call double @llvm.fabs.f64(double %315)
  %317 = load double, double* %8, align 8
  %318 = load double, double* %24, align 8
  %319 = fmul double %317, %318
  %320 = load double*, double** %26, align 8
  %321 = load i32, i32* %31, align 4
  %322 = add nsw i32 %321, 1
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds double, double* %320, i64 %323
  %325 = load double, double* %324, align 8
  %326 = fmul double %319, %325
  %327 = call double @llvm.fabs.f64(double %326)
  %328 = fadd double %316, %327
  %329 = load double, double* %8, align 8
  %330 = load double, double* %24, align 8
  %331 = fmul double %329, %330
  %332 = load double*, double** %27, align 8
  %333 = load i32, i32* %31, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds double, double* %332, i64 %334
  %336 = load double, double* %335, align 8
  %337 = fmul double %331, %336
  %338 = call double @llvm.fabs.f64(double %337)
  %339 = fadd double %328, %338
  %340 = load double, double* %8, align 8
  %341 = load double, double* %24, align 8
  %342 = fmul double %340, %341
  %343 = load double*, double** %27, align 8
  %344 = load i32, i32* %31, align 4
  %345 = load i32, i32* %18, align 4
  %346 = add nsw i32 %344, %345
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds double, double* %343, i64 %347
  %349 = load double, double* %348, align 8
  %350 = fmul double %342, %349
  %351 = call double @llvm.fabs.f64(double %350)
  %352 = fadd double %339, %351
  %353 = load double, double* %8, align 8
  %354 = load double, double* %24, align 8
  %355 = fmul double %353, %354
  %356 = load double*, double** %28, align 8
  %357 = load i32, i32* %31, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds double, double* %356, i64 %358
  %360 = load double, double* %359, align 8
  %361 = fmul double %355, %360
  %362 = call double @llvm.fabs.f64(double %361)
  %363 = fadd double %352, %362
  %364 = load double, double* %8, align 8
  %365 = load double, double* %24, align 8
  %366 = fmul double %364, %365
  %367 = load double*, double** %28, align 8
  %368 = load i32, i32* %31, align 4
  %369 = load i32, i32* %19, align 4
  %370 = add nsw i32 %368, %369
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds double, double* %367, i64 %371
  %373 = load double, double* %372, align 8
  %374 = fmul double %366, %373
  %375 = call double @llvm.fabs.f64(double %374)
  %376 = fadd double %363, %375
  store double %376, double* %32, align 8
  %377 = load double, double* %7, align 8
  %378 = load double*, double** %25, align 8
  %379 = load i32, i32* %31, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds double, double* %378, i64 %380
  %382 = load double, double* %381, align 8
  %383 = fmul double %377, %382
  %384 = load double, double* %8, align 8
  %385 = load double, double* %24, align 8
  %386 = fmul double %384, %385
  %387 = load double*, double** %26, align 8
  %388 = load i32, i32* %31, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds double, double* %387, i64 %389
  %391 = load double, double* %390, align 8
  %392 = fneg double %391
  %393 = load double*, double** %26, align 8
  %394 = load i32, i32* %31, align 4
  %395 = add nsw i32 %394, 1
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds double, double* %393, i64 %396
  %398 = load double, double* %397, align 8
  %399 = fsub double %392, %398
  %400 = load double*, double** %27, align 8
  %401 = load i32, i32* %31, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds double, double* %400, i64 %402
  %404 = load double, double* %403, align 8
  %405 = fsub double %399, %404
  %406 = load double*, double** %27, align 8
  %407 = load i32, i32* %31, align 4
  %408 = load i32, i32* %18, align 4
  %409 = add nsw i32 %407, %408
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds double, double* %406, i64 %410
  %412 = load double, double* %411, align 8
  %413 = fsub double %405, %412
  %414 = load double*, double** %28, align 8
  %415 = load i32, i32* %31, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds double, double* %414, i64 %416
  %418 = load double, double* %417, align 8
  %419 = fsub double %413, %418
  %420 = load double*, double** %28, align 8
  %421 = load i32, i32* %31, align 4
  %422 = load i32, i32* %19, align 4
  %423 = add nsw i32 %421, %422
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds double, double* %420, i64 %424
  %426 = load double, double* %425, align 8
  %427 = fsub double %419, %426
  %428 = fmul double %386, %427
  %429 = fsub double %383, %428
  store double %429, double* %33, align 8
  %430 = load double, double* %33, align 8
  %431 = fdiv double 1.000000e+00, %430
  %432 = load double*, double** %29, align 8
  %433 = load i32, i32* %31, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds double, double* %432, i64 %434
  store double %431, double* %435, align 8
  %436 = load double, double* %33, align 8
  %437 = load double, double* %32, align 8
  %438 = fadd double %436, %437
  %439 = load double, double* %33, align 8
  %440 = fdiv double %438, %439
  store double %440, double* %34, align 8
  %441 = load double, double* %34, align 8
  %442 = load double, double* %30, align 8
  %443 = fcmp ogt double %441, %442
  br i1 %443, label %444, label %446

444:                                              ; preds = %297
  %445 = load double, double* %34, align 8
  store double %445, double* %30, align 8
  br label %446

446:                                              ; preds = %444, %297
  br label %447

447:                                              ; preds = %446
  %448 = load i32, i32* %15, align 4
  %449 = add nsw i32 %448, 1
  store i32 %449, i32* %15, align 4
  br label %293

450:                                              ; preds = %293
  br label %451

451:                                              ; preds = %450
  %452 = load i32, i32* %16, align 4
  %453 = add nsw i32 %452, 1
  store i32 %453, i32* %16, align 4
  br label %288

454:                                              ; preds = %288
  br label %455

455:                                              ; preds = %454
  %456 = load i32, i32* %17, align 4
  %457 = add nsw i32 %456, 1
  store i32 %457, i32* %17, align 4
  br label %283

458:                                              ; preds = %283
  %459 = load double, double* %30, align 8
  %460 = load double, double* %14, align 8
  %461 = fcmp ogt double %459, %460
  br i1 %461, label %462, label %464

462:                                              ; preds = %458
  %463 = load double, double* %30, align 8
  store double %463, double* %14, align 8
  br label %464

464:                                              ; preds = %462, %458
  br label %465

465:                                              ; preds = %464
  %466 = load i32, i32* %13, align 4
  %467 = add nsw i32 %466, 1
  store i32 %467, i32* %13, align 4
  br label %66

468:                                              ; preds = %66
  %469 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  %470 = load i64, i64* %9, align 8
  %471 = sub i64 %469, %470
  %472 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %473 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %472, i32 0, i32 0
  %474 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %473, i32 0, i32 12
  %475 = load i32, i32* %6, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds [10 x i64], [10 x i64]* %474, i64 0, i64 %476
  %478 = load i64, i64* %477, align 8
  %479 = add i64 %478, %471
  store i64 %479, i64* %477, align 8
  %480 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %481 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %480, i32 0, i32 18
  %482 = load i32, i32* %481, align 4
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %484, label %495

484:                                              ; preds = %468
  %485 = load i32, i32* %6, align 4
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %487, label %489

487:                                              ; preds = %484
  %488 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  br label %489

489:                                              ; preds = %487, %484
  %490 = load i32, i32* %6, align 4
  %491 = load double, double* %14, align 8
  %492 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1.25, i64 0, i64 0), i32 %490, double %491)
  %493 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %494 = call i32 @fflush(%struct._IO_FILE* %493)
  br label %495

495:                                              ; preds = %489, %468
  %496 = load double, double* %14, align 8
  %497 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %498 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %497, i32 0, i32 24
  %499 = load i32, i32* %6, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds [10 x double], [10 x double]* %498, i64 0, i64 %500
  store double %496, double* %501, align 8
  ret void
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #6

; Function Attrs: noinline nounwind uwtable
define dso_local void @smooth(%struct.domain_type* %0, i32 %1, i32 %2, i32 %3, double %4, double %5) #0 {
  %7 = alloca %struct.domain_type*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca double, align 8
  %32 = alloca double*, align 8
  %33 = alloca double*, align 8
  %34 = alloca double*, align 8
  %35 = alloca double*, align 8
  %36 = alloca double*, align 8
  %37 = alloca double*, align 8
  %38 = alloca i32, align 4
  %39 = alloca double*, align 8
  %40 = alloca double*, align 8
  %41 = alloca i32, align 4
  %42 = alloca double, align 8
  store %struct.domain_type* %0, %struct.domain_type** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store double %4, double* %11, align 8
  store double %5, double* %12, align 8
  store i32 100000, i32* %13, align 4
  %43 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %44 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %43, i32 0, i32 25
  %45 = load %struct.subdomain_type*, %struct.subdomain_type** %44, align 8
  %46 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %45, i64 0
  %47 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %46, i32 0, i32 5
  %48 = load %struct.box_type*, %struct.box_type** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.box_type, %struct.box_type* %48, i64 %50
  %52 = getelementptr inbounds %struct.box_type, %struct.box_type* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.anon, %struct.anon* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp slt i32 %54, %55
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %14, align 4
  %58 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %59 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %58, i32 0, i32 25
  %60 = load %struct.subdomain_type*, %struct.subdomain_type** %59, align 8
  %61 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %60, i64 0
  %62 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %61, i32 0, i32 5
  %63 = load %struct.box_type*, %struct.box_type** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.box_type, %struct.box_type* %63, i64 %65
  %67 = getelementptr inbounds %struct.box_type, %struct.box_type* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.anon, %struct.anon* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp sge i32 %69, %70
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %15, align 4
  %73 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %74 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %73, i32 0, i32 22
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %18, align 4
  store double 0x3FE5555555555555, double* %19, align 8
  %76 = load i32, i32* %18, align 4
  %77 = icmp sgt i32 %76, 1
  br i1 %77, label %78, label %82

78:                                               ; preds = %6
  %79 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %10, align 4
  call void @exchange_boundary(%struct.domain_type* %79, i32 %80, i32 %81, i32 1, i32 1, i32 1)
  br label %82

82:                                               ; preds = %78, %6
  store i32 0, i32* %17, align 4
  br label %83

83:                                               ; preds = %699, %82
  %84 = load i32, i32* %17, align 4
  %85 = icmp slt i32 %84, 4
  br i1 %85, label %86, label %703

86:                                               ; preds = %83
  %87 = load i32, i32* %17, align 4
  %88 = and i32 %87, 1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %86
  %91 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %18, align 4
  %95 = icmp sgt i32 %94, 1
  %96 = zext i1 %95 to i32
  %97 = load i32, i32* %18, align 4
  %98 = icmp sgt i32 %97, 1
  %99 = zext i1 %98 to i32
  call void @exchange_boundary(%struct.domain_type* %91, i32 %92, i32 %93, i32 1, i32 %96, i32 %99)
  br label %109

100:                                              ; preds = %86
  %101 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %18, align 4
  %104 = icmp sgt i32 %103, 1
  %105 = zext i1 %104 to i32
  %106 = load i32, i32* %18, align 4
  %107 = icmp sgt i32 %106, 1
  %108 = zext i1 %107 to i32
  call void @exchange_boundary(%struct.domain_type* %101, i32 %102, i32 10, i32 1, i32 %105, i32 %108)
  br label %109

109:                                              ; preds = %100, %90
  %110 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  store i64 %110, i64* %20, align 8
  store i32 0, i32* %16, align 4
  br label %111

111:                                              ; preds = %684, %109
  %112 = load i32, i32* %16, align 4
  %113 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %114 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %113, i32 0, i32 19
  %115 = load i32, i32* %114, align 8
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %687

117:                                              ; preds = %111
  %118 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %119 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %118, i32 0, i32 25
  %120 = load %struct.subdomain_type*, %struct.subdomain_type** %119, align 8
  %121 = load i32, i32* %16, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %120, i64 %122
  %124 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %123, i32 0, i32 5
  %125 = load %struct.box_type*, %struct.box_type** %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.box_type, %struct.box_type* %125, i64 %127
  %129 = getelementptr inbounds %struct.box_type, %struct.box_type* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  store i32 %130, i32* %25, align 4
  %131 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %132 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %131, i32 0, i32 25
  %133 = load %struct.subdomain_type*, %struct.subdomain_type** %132, align 8
  %134 = load i32, i32* %16, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %133, i64 %135
  %137 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %136, i32 0, i32 5
  %138 = load %struct.box_type*, %struct.box_type** %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.box_type, %struct.box_type* %138, i64 %140
  %142 = getelementptr inbounds %struct.box_type, %struct.box_type* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %26, align 4
  %144 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %145 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %144, i32 0, i32 25
  %146 = load %struct.subdomain_type*, %struct.subdomain_type** %145, align 8
  %147 = load i32, i32* %16, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %146, i64 %148
  %150 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %149, i32 0, i32 5
  %151 = load %struct.box_type*, %struct.box_type** %150, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.box_type, %struct.box_type* %151, i64 %153
  %155 = getelementptr inbounds %struct.box_type, %struct.box_type* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %27, align 4
  %157 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %158 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %157, i32 0, i32 25
  %159 = load %struct.subdomain_type*, %struct.subdomain_type** %158, align 8
  %160 = load i32, i32* %16, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %159, i64 %161
  %163 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %162, i32 0, i32 5
  %164 = load %struct.box_type*, %struct.box_type** %163, align 8
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.box_type, %struct.box_type* %164, i64 %166
  %168 = getelementptr inbounds %struct.box_type, %struct.box_type* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.anon, %struct.anon* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  store i32 %170, i32* %28, align 4
  %171 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %172 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %171, i32 0, i32 25
  %173 = load %struct.subdomain_type*, %struct.subdomain_type** %172, align 8
  %174 = load i32, i32* %16, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %173, i64 %175
  %177 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %176, i32 0, i32 5
  %178 = load %struct.box_type*, %struct.box_type** %177, align 8
  %179 = load i32, i32* %8, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.box_type, %struct.box_type* %178, i64 %180
  %182 = getelementptr inbounds %struct.box_type, %struct.box_type* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.anon, %struct.anon* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %29, align 4
  %185 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %186 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %185, i32 0, i32 25
  %187 = load %struct.subdomain_type*, %struct.subdomain_type** %186, align 8
  %188 = load i32, i32* %16, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %187, i64 %189
  %191 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %190, i32 0, i32 5
  %192 = load %struct.box_type*, %struct.box_type** %191, align 8
  %193 = load i32, i32* %8, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.box_type, %struct.box_type* %192, i64 %194
  %196 = getelementptr inbounds %struct.box_type, %struct.box_type* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.anon, %struct.anon* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  store i32 %198, i32* %30, align 4
  %199 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %200 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %199, i32 0, i32 23
  %201 = load i32, i32* %8, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [10 x double], [10 x double]* %200, i64 0, i64 %202
  %204 = load double, double* %203, align 8
  %205 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %206 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %205, i32 0, i32 23
  %207 = load i32, i32* %8, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [10 x double], [10 x double]* %206, i64 0, i64 %208
  %210 = load double, double* %209, align 8
  %211 = fmul double %204, %210
  %212 = fdiv double 1.000000e+00, %211
  store double %212, double* %31, align 8
  %213 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %214 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %213, i32 0, i32 25
  %215 = load %struct.subdomain_type*, %struct.subdomain_type** %214, align 8
  %216 = load i32, i32* %16, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %215, i64 %217
  %219 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %218, i32 0, i32 5
  %220 = load %struct.box_type*, %struct.box_type** %219, align 8
  %221 = load i32, i32* %8, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.box_type, %struct.box_type* %220, i64 %222
  %224 = getelementptr inbounds %struct.box_type, %struct.box_type* %223, i32 0, i32 10
  %225 = load double**, double*** %224, align 8
  %226 = load i32, i32* %10, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds double*, double** %225, i64 %227
  %229 = load double*, double** %228, align 8
  %230 = load i32, i32* %27, align 4
  %231 = load i32, i32* %25, align 4
  %232 = add nsw i32 1, %231
  %233 = load i32, i32* %26, align 4
  %234 = add nsw i32 %232, %233
  %235 = mul nsw i32 %230, %234
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds double, double* %229, i64 %236
  store double* %237, double** %32, align 8
  %238 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %239 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %238, i32 0, i32 25
  %240 = load %struct.subdomain_type*, %struct.subdomain_type** %239, align 8
  %241 = load i32, i32* %16, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %240, i64 %242
  %244 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %243, i32 0, i32 5
  %245 = load %struct.box_type*, %struct.box_type** %244, align 8
  %246 = load i32, i32* %8, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.box_type, %struct.box_type* %245, i64 %247
  %249 = getelementptr inbounds %struct.box_type, %struct.box_type* %248, i32 0, i32 10
  %250 = load double**, double*** %249, align 8
  %251 = getelementptr inbounds double*, double** %250, i64 2
  %252 = load double*, double** %251, align 8
  %253 = load i32, i32* %27, align 4
  %254 = load i32, i32* %25, align 4
  %255 = add nsw i32 1, %254
  %256 = load i32, i32* %26, align 4
  %257 = add nsw i32 %255, %256
  %258 = mul nsw i32 %253, %257
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds double, double* %252, i64 %259
  store double* %260, double** %33, align 8
  %261 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %262 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %261, i32 0, i32 25
  %263 = load %struct.subdomain_type*, %struct.subdomain_type** %262, align 8
  %264 = load i32, i32* %16, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %263, i64 %265
  %267 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %266, i32 0, i32 5
  %268 = load %struct.box_type*, %struct.box_type** %267, align 8
  %269 = load i32, i32* %8, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.box_type, %struct.box_type* %268, i64 %270
  %272 = getelementptr inbounds %struct.box_type, %struct.box_type* %271, i32 0, i32 10
  %273 = load double**, double*** %272, align 8
  %274 = getelementptr inbounds double*, double** %273, i64 5
  %275 = load double*, double** %274, align 8
  %276 = load i32, i32* %27, align 4
  %277 = load i32, i32* %25, align 4
  %278 = add nsw i32 1, %277
  %279 = load i32, i32* %26, align 4
  %280 = add nsw i32 %278, %279
  %281 = mul nsw i32 %276, %280
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds double, double* %275, i64 %282
  store double* %283, double** %34, align 8
  %284 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %285 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %284, i32 0, i32 25
  %286 = load %struct.subdomain_type*, %struct.subdomain_type** %285, align 8
  %287 = load i32, i32* %16, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %286, i64 %288
  %290 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %289, i32 0, i32 5
  %291 = load %struct.box_type*, %struct.box_type** %290, align 8
  %292 = load i32, i32* %8, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.box_type, %struct.box_type* %291, i64 %293
  %295 = getelementptr inbounds %struct.box_type, %struct.box_type* %294, i32 0, i32 10
  %296 = load double**, double*** %295, align 8
  %297 = getelementptr inbounds double*, double** %296, i64 6
  %298 = load double*, double** %297, align 8
  %299 = load i32, i32* %27, align 4
  %300 = load i32, i32* %25, align 4
  %301 = add nsw i32 1, %300
  %302 = load i32, i32* %26, align 4
  %303 = add nsw i32 %301, %302
  %304 = mul nsw i32 %299, %303
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds double, double* %298, i64 %305
  store double* %306, double** %35, align 8
  %307 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %308 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %307, i32 0, i32 25
  %309 = load %struct.subdomain_type*, %struct.subdomain_type** %308, align 8
  %310 = load i32, i32* %16, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %309, i64 %311
  %313 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %312, i32 0, i32 5
  %314 = load %struct.box_type*, %struct.box_type** %313, align 8
  %315 = load i32, i32* %8, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.box_type, %struct.box_type* %314, i64 %316
  %318 = getelementptr inbounds %struct.box_type, %struct.box_type* %317, i32 0, i32 10
  %319 = load double**, double*** %318, align 8
  %320 = getelementptr inbounds double*, double** %319, i64 7
  %321 = load double*, double** %320, align 8
  %322 = load i32, i32* %27, align 4
  %323 = load i32, i32* %25, align 4
  %324 = add nsw i32 1, %323
  %325 = load i32, i32* %26, align 4
  %326 = add nsw i32 %324, %325
  %327 = mul nsw i32 %322, %326
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds double, double* %321, i64 %328
  store double* %329, double** %36, align 8
  %330 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %331 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %330, i32 0, i32 25
  %332 = load %struct.subdomain_type*, %struct.subdomain_type** %331, align 8
  %333 = load i32, i32* %16, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %332, i64 %334
  %336 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %335, i32 0, i32 5
  %337 = load %struct.box_type*, %struct.box_type** %336, align 8
  %338 = load i32, i32* %8, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.box_type, %struct.box_type* %337, i64 %339
  %341 = getelementptr inbounds %struct.box_type, %struct.box_type* %340, i32 0, i32 10
  %342 = load double**, double*** %341, align 8
  %343 = getelementptr inbounds double*, double** %342, i64 4
  %344 = load double*, double** %343, align 8
  %345 = load i32, i32* %27, align 4
  %346 = load i32, i32* %25, align 4
  %347 = add nsw i32 1, %346
  %348 = load i32, i32* %26, align 4
  %349 = add nsw i32 %347, %348
  %350 = mul nsw i32 %345, %349
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds double, double* %344, i64 %351
  store double* %352, double** %37, align 8
  %353 = load i32, i32* %27, align 4
  %354 = sub nsw i32 %353, 1
  store i32 %354, i32* %38, align 4
  %355 = load i32, i32* %17, align 4
  store i32 %355, i32* %24, align 4
  br label %356

356:                                              ; preds = %678, %117
  %357 = load i32, i32* %24, align 4
  %358 = load i32, i32* %17, align 4
  %359 = load i32, i32* %27, align 4
  %360 = add nsw i32 %358, %359
  %361 = icmp slt i32 %357, %360
  br i1 %361, label %362, label %683

362:                                              ; preds = %356
  %363 = load i32, i32* %24, align 4
  %364 = and i32 %363, 1
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %415

366:                                              ; preds = %362
  %367 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %368 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %367, i32 0, i32 25
  %369 = load %struct.subdomain_type*, %struct.subdomain_type** %368, align 8
  %370 = load i32, i32* %16, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %369, i64 %371
  %373 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %372, i32 0, i32 5
  %374 = load %struct.box_type*, %struct.box_type** %373, align 8
  %375 = load i32, i32* %8, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.box_type, %struct.box_type* %374, i64 %376
  %378 = getelementptr inbounds %struct.box_type, %struct.box_type* %377, i32 0, i32 10
  %379 = load double**, double*** %378, align 8
  %380 = load i32, i32* %9, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds double*, double** %379, i64 %381
  %383 = load double*, double** %382, align 8
  %384 = load i32, i32* %27, align 4
  %385 = load i32, i32* %25, align 4
  %386 = add nsw i32 1, %385
  %387 = load i32, i32* %26, align 4
  %388 = add nsw i32 %386, %387
  %389 = mul nsw i32 %384, %388
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds double, double* %383, i64 %390
  store double* %391, double** %39, align 8
  %392 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %393 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %392, i32 0, i32 25
  %394 = load %struct.subdomain_type*, %struct.subdomain_type** %393, align 8
  %395 = load i32, i32* %16, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %394, i64 %396
  %398 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %397, i32 0, i32 5
  %399 = load %struct.box_type*, %struct.box_type** %398, align 8
  %400 = load i32, i32* %8, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds %struct.box_type, %struct.box_type* %399, i64 %401
  %403 = getelementptr inbounds %struct.box_type, %struct.box_type* %402, i32 0, i32 10
  %404 = load double**, double*** %403, align 8
  %405 = getelementptr inbounds double*, double** %404, i64 10
  %406 = load double*, double** %405, align 8
  %407 = load i32, i32* %27, align 4
  %408 = load i32, i32* %25, align 4
  %409 = add nsw i32 1, %408
  %410 = load i32, i32* %26, align 4
  %411 = add nsw i32 %409, %410
  %412 = mul nsw i32 %407, %411
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds double, double* %406, i64 %413
  store double* %414, double** %40, align 8
  br label %464

415:                                              ; preds = %362
  %416 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %417 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %416, i32 0, i32 25
  %418 = load %struct.subdomain_type*, %struct.subdomain_type** %417, align 8
  %419 = load i32, i32* %16, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %418, i64 %420
  %422 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %421, i32 0, i32 5
  %423 = load %struct.box_type*, %struct.box_type** %422, align 8
  %424 = load i32, i32* %8, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.box_type, %struct.box_type* %423, i64 %425
  %427 = getelementptr inbounds %struct.box_type, %struct.box_type* %426, i32 0, i32 10
  %428 = load double**, double*** %427, align 8
  %429 = getelementptr inbounds double*, double** %428, i64 10
  %430 = load double*, double** %429, align 8
  %431 = load i32, i32* %27, align 4
  %432 = load i32, i32* %25, align 4
  %433 = add nsw i32 1, %432
  %434 = load i32, i32* %26, align 4
  %435 = add nsw i32 %433, %434
  %436 = mul nsw i32 %431, %435
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds double, double* %430, i64 %437
  store double* %438, double** %39, align 8
  %439 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %440 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %439, i32 0, i32 25
  %441 = load %struct.subdomain_type*, %struct.subdomain_type** %440, align 8
  %442 = load i32, i32* %16, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %441, i64 %443
  %445 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %444, i32 0, i32 5
  %446 = load %struct.box_type*, %struct.box_type** %445, align 8
  %447 = load i32, i32* %8, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds %struct.box_type, %struct.box_type* %446, i64 %448
  %450 = getelementptr inbounds %struct.box_type, %struct.box_type* %449, i32 0, i32 10
  %451 = load double**, double*** %450, align 8
  %452 = load i32, i32* %9, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds double*, double** %451, i64 %453
  %455 = load double*, double** %454, align 8
  %456 = load i32, i32* %27, align 4
  %457 = load i32, i32* %25, align 4
  %458 = add nsw i32 1, %457
  %459 = load i32, i32* %26, align 4
  %460 = add nsw i32 %458, %459
  %461 = mul nsw i32 %456, %460
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds double, double* %455, i64 %462
  store double* %463, double** %40, align 8
  br label %464

464:                                              ; preds = %415, %366
  %465 = load i32, i32* %38, align 4
  %466 = sub nsw i32 0, %465
  store i32 %466, i32* %23, align 4
  br label %467

467:                                              ; preds = %674, %464
  %468 = load i32, i32* %23, align 4
  %469 = load i32, i32* %28, align 4
  %470 = load i32, i32* %38, align 4
  %471 = add nsw i32 %469, %470
  %472 = icmp slt i32 %468, %471
  br i1 %472, label %473, label %677

473:                                              ; preds = %467
  %474 = load i32, i32* %38, align 4
  %475 = sub nsw i32 0, %474
  store i32 %475, i32* %22, align 4
  br label %476

476:                                              ; preds = %670, %473
  %477 = load i32, i32* %22, align 4
  %478 = load i32, i32* %29, align 4
  %479 = load i32, i32* %38, align 4
  %480 = add nsw i32 %478, %479
  %481 = icmp slt i32 %477, %480
  br i1 %481, label %482, label %673

482:                                              ; preds = %476
  %483 = load i32, i32* %38, align 4
  %484 = sub nsw i32 0, %483
  store i32 %484, i32* %21, align 4
  br label %485

485:                                              ; preds = %666, %482
  %486 = load i32, i32* %21, align 4
  %487 = load i32, i32* %30, align 4
  %488 = load i32, i32* %38, align 4
  %489 = add nsw i32 %487, %488
  %490 = icmp slt i32 %486, %489
  br i1 %490, label %491, label %669

491:                                              ; preds = %485
  %492 = load i32, i32* %21, align 4
  %493 = load i32, i32* %22, align 4
  %494 = load i32, i32* %25, align 4
  %495 = mul nsw i32 %493, %494
  %496 = add nsw i32 %492, %495
  %497 = load i32, i32* %23, align 4
  %498 = load i32, i32* %26, align 4
  %499 = mul nsw i32 %497, %498
  %500 = add nsw i32 %496, %499
  store i32 %500, i32* %41, align 4
  %501 = load double, double* %11, align 8
  %502 = load double*, double** %33, align 8
  %503 = load i32, i32* %41, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds double, double* %502, i64 %504
  %506 = load double, double* %505, align 8
  %507 = fmul double %501, %506
  %508 = load double*, double** %39, align 8
  %509 = load i32, i32* %41, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds double, double* %508, i64 %510
  %512 = load double, double* %511, align 8
  %513 = fmul double %507, %512
  %514 = load double, double* %12, align 8
  %515 = load double, double* %31, align 8
  %516 = fmul double %514, %515
  %517 = load double*, double** %34, align 8
  %518 = load i32, i32* %41, align 4
  %519 = add nsw i32 %518, 1
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds double, double* %517, i64 %520
  %522 = load double, double* %521, align 8
  %523 = load double*, double** %39, align 8
  %524 = load i32, i32* %41, align 4
  %525 = add nsw i32 %524, 1
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds double, double* %523, i64 %526
  %528 = load double, double* %527, align 8
  %529 = load double*, double** %39, align 8
  %530 = load i32, i32* %41, align 4
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds double, double* %529, i64 %531
  %533 = load double, double* %532, align 8
  %534 = fsub double %528, %533
  %535 = fmul double %522, %534
  %536 = load double*, double** %34, align 8
  %537 = load i32, i32* %41, align 4
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds double, double* %536, i64 %538
  %540 = load double, double* %539, align 8
  %541 = load double*, double** %39, align 8
  %542 = load i32, i32* %41, align 4
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds double, double* %541, i64 %543
  %545 = load double, double* %544, align 8
  %546 = load double*, double** %39, align 8
  %547 = load i32, i32* %41, align 4
  %548 = sub nsw i32 %547, 1
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds double, double* %546, i64 %549
  %551 = load double, double* %550, align 8
  %552 = fsub double %545, %551
  %553 = fmul double %540, %552
  %554 = fsub double %535, %553
  %555 = load double*, double** %35, align 8
  %556 = load i32, i32* %41, align 4
  %557 = load i32, i32* %25, align 4
  %558 = add nsw i32 %556, %557
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds double, double* %555, i64 %559
  %561 = load double, double* %560, align 8
  %562 = load double*, double** %39, align 8
  %563 = load i32, i32* %41, align 4
  %564 = load i32, i32* %25, align 4
  %565 = add nsw i32 %563, %564
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds double, double* %562, i64 %566
  %568 = load double, double* %567, align 8
  %569 = load double*, double** %39, align 8
  %570 = load i32, i32* %41, align 4
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds double, double* %569, i64 %571
  %573 = load double, double* %572, align 8
  %574 = fsub double %568, %573
  %575 = fmul double %561, %574
  %576 = fadd double %554, %575
  %577 = load double*, double** %35, align 8
  %578 = load i32, i32* %41, align 4
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds double, double* %577, i64 %579
  %581 = load double, double* %580, align 8
  %582 = load double*, double** %39, align 8
  %583 = load i32, i32* %41, align 4
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds double, double* %582, i64 %584
  %586 = load double, double* %585, align 8
  %587 = load double*, double** %39, align 8
  %588 = load i32, i32* %41, align 4
  %589 = load i32, i32* %25, align 4
  %590 = sub nsw i32 %588, %589
  %591 = sext i32 %590 to i64
  %592 = getelementptr inbounds double, double* %587, i64 %591
  %593 = load double, double* %592, align 8
  %594 = fsub double %586, %593
  %595 = fmul double %581, %594
  %596 = fsub double %576, %595
  %597 = load double*, double** %36, align 8
  %598 = load i32, i32* %41, align 4
  %599 = load i32, i32* %26, align 4
  %600 = add nsw i32 %598, %599
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds double, double* %597, i64 %601
  %603 = load double, double* %602, align 8
  %604 = load double*, double** %39, align 8
  %605 = load i32, i32* %41, align 4
  %606 = load i32, i32* %26, align 4
  %607 = add nsw i32 %605, %606
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds double, double* %604, i64 %608
  %610 = load double, double* %609, align 8
  %611 = load double*, double** %39, align 8
  %612 = load i32, i32* %41, align 4
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds double, double* %611, i64 %613
  %615 = load double, double* %614, align 8
  %616 = fsub double %610, %615
  %617 = fmul double %603, %616
  %618 = fadd double %596, %617
  %619 = load double*, double** %36, align 8
  %620 = load i32, i32* %41, align 4
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds double, double* %619, i64 %621
  %623 = load double, double* %622, align 8
  %624 = load double*, double** %39, align 8
  %625 = load i32, i32* %41, align 4
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds double, double* %624, i64 %626
  %628 = load double, double* %627, align 8
  %629 = load double*, double** %39, align 8
  %630 = load i32, i32* %41, align 4
  %631 = load i32, i32* %26, align 4
  %632 = sub nsw i32 %630, %631
  %633 = sext i32 %632 to i64
  %634 = getelementptr inbounds double, double* %629, i64 %633
  %635 = load double, double* %634, align 8
  %636 = fsub double %628, %635
  %637 = fmul double %623, %636
  %638 = fsub double %618, %637
  %639 = fmul double %516, %638
  %640 = fsub double %513, %639
  store double %640, double* %42, align 8
  %641 = load double*, double** %39, align 8
  %642 = load i32, i32* %41, align 4
  %643 = sext i32 %642 to i64
  %644 = getelementptr inbounds double, double* %641, i64 %643
  %645 = load double, double* %644, align 8
  %646 = load double, double* %19, align 8
  %647 = load double*, double** %37, align 8
  %648 = load i32, i32* %41, align 4
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds double, double* %647, i64 %649
  %651 = load double, double* %650, align 8
  %652 = fmul double %646, %651
  %653 = load double, double* %42, align 8
  %654 = load double*, double** %32, align 8
  %655 = load i32, i32* %41, align 4
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds double, double* %654, i64 %656
  %658 = load double, double* %657, align 8
  %659 = fsub double %653, %658
  %660 = fmul double %652, %659
  %661 = fsub double %645, %660
  %662 = load double*, double** %40, align 8
  %663 = load i32, i32* %41, align 4
  %664 = sext i32 %663 to i64
  %665 = getelementptr inbounds double, double* %662, i64 %664
  store double %661, double* %665, align 8
  br label %666

666:                                              ; preds = %491
  %667 = load i32, i32* %21, align 4
  %668 = add nsw i32 %667, 1
  store i32 %668, i32* %21, align 4
  br label %485

669:                                              ; preds = %485
  br label %670

670:                                              ; preds = %669
  %671 = load i32, i32* %22, align 4
  %672 = add nsw i32 %671, 1
  store i32 %672, i32* %22, align 4
  br label %476

673:                                              ; preds = %476
  br label %674

674:                                              ; preds = %673
  %675 = load i32, i32* %23, align 4
  %676 = add nsw i32 %675, 1
  store i32 %676, i32* %23, align 4
  br label %467

677:                                              ; preds = %467
  br label %678

678:                                              ; preds = %677
  %679 = load i32, i32* %24, align 4
  %680 = add nsw i32 %679, 1
  store i32 %680, i32* %24, align 4
  %681 = load i32, i32* %38, align 4
  %682 = add nsw i32 %681, -1
  store i32 %682, i32* %38, align 4
  br label %356

683:                                              ; preds = %356
  br label %684

684:                                              ; preds = %683
  %685 = load i32, i32* %16, align 4
  %686 = add nsw i32 %685, 1
  store i32 %686, i32* %16, align 4
  br label %111

687:                                              ; preds = %111
  %688 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  %689 = load i64, i64* %20, align 8
  %690 = sub i64 %688, %689
  %691 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %692 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %691, i32 0, i32 0
  %693 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %692, i32 0, i32 0
  %694 = load i32, i32* %8, align 4
  %695 = sext i32 %694 to i64
  %696 = getelementptr inbounds [10 x i64], [10 x i64]* %693, i64 0, i64 %695
  %697 = load i64, i64* %696, align 8
  %698 = add i64 %697, %690
  store i64 %698, i64* %696, align 8
  br label %699

699:                                              ; preds = %687
  %700 = load i32, i32* %18, align 4
  %701 = load i32, i32* %17, align 4
  %702 = add nsw i32 %701, %700
  store i32 %702, i32* %17, align 4
  br label %83

703:                                              ; preds = %83
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @apply_op(%struct.domain_type* %0, i32 %1, i32 %2, i32 %3, double %4, double %5) #0 {
  %7 = alloca %struct.domain_type*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.domain_type* %0, %struct.domain_type** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store double %4, double* %11, align 8
  store double %5, double* %12, align 8
  %18 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %10, align 4
  call void @exchange_boundary(%struct.domain_type* %18, i32 %19, i32 %20, i32 1, i32 0, i32 0)
  %21 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  store i64 %21, i64* %13, align 8
  store i32 100000, i32* %14, align 4
  %22 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %23 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %22, i32 0, i32 25
  %24 = load %struct.subdomain_type*, %struct.subdomain_type** %23, align 8
  %25 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %24, i64 0
  %26 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %25, i32 0, i32 5
  %27 = load %struct.box_type*, %struct.box_type** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.box_type, %struct.box_type* %27, i64 %29
  %31 = getelementptr inbounds %struct.box_type, %struct.box_type* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.anon, %struct.anon* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp slt i32 %33, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %15, align 4
  %37 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %38 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %37, i32 0, i32 25
  %39 = load %struct.subdomain_type*, %struct.subdomain_type** %38, align 8
  %40 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %39, i64 0
  %41 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %40, i32 0, i32 5
  %42 = load %struct.box_type*, %struct.box_type** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.box_type, %struct.box_type* %42, i64 %44
  %46 = getelementptr inbounds %struct.box_type, %struct.box_type* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.anon, %struct.anon* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp sge i32 %48, %49
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %16, align 4
  %52 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  %53 = load i64, i64* %13, align 8
  %54 = sub i64 %52, %53
  %55 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %56 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %56, i32 0, i32 1
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [10 x i64], [10 x i64]* %57, i64 0, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, %54
  store i64 %62, i64* %60, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @residual(%struct.domain_type* %0, i32 %1, i32 %2, i32 %3, i32 %4, double %5, double %6) #0 {
  %8 = alloca %struct.domain_type*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.domain_type* %0, %struct.domain_type** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store double %5, double* %13, align 8
  store double %6, double* %14, align 8
  %20 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %11, align 4
  call void @exchange_boundary(%struct.domain_type* %20, i32 %21, i32 %22, i32 1, i32 0, i32 0)
  %23 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  store i64 %23, i64* %15, align 8
  store i32 100000, i32* %16, align 4
  %24 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %25 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %24, i32 0, i32 25
  %26 = load %struct.subdomain_type*, %struct.subdomain_type** %25, align 8
  %27 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %26, i64 0
  %28 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %27, i32 0, i32 5
  %29 = load %struct.box_type*, %struct.box_type** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.box_type, %struct.box_type* %29, i64 %31
  %33 = getelementptr inbounds %struct.box_type, %struct.box_type* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.anon, %struct.anon* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %16, align 4
  %37 = icmp slt i32 %35, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %17, align 4
  %39 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %40 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %39, i32 0, i32 25
  %41 = load %struct.subdomain_type*, %struct.subdomain_type** %40, align 8
  %42 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %41, i64 0
  %43 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %42, i32 0, i32 5
  %44 = load %struct.box_type*, %struct.box_type** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.box_type, %struct.box_type* %44, i64 %46
  %48 = getelementptr inbounds %struct.box_type, %struct.box_type* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.anon, %struct.anon* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %16, align 4
  %52 = icmp sge i32 %50, %51
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %18, align 4
  %54 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  %55 = load i64, i64* %15, align 8
  %56 = sub i64 %54, %55
  %57 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %58 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %58, i32 0, i32 2
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [10 x i64], [10 x i64]* %59, i64 0, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, %56
  store i64 %64, i64* %62, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @residual_and_restriction(%struct.domain_type* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, double %6, double %7) #0 {
  %9 = alloca %struct.domain_type*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.domain_type* %0, %struct.domain_type** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store double %6, double* %15, align 8
  store double %7, double* %16, align 8
  %22 = load %struct.domain_type*, %struct.domain_type** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  call void @exchange_boundary(%struct.domain_type* %22, i32 %23, i32 %24, i32 1, i32 0, i32 0)
  %25 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  store i64 %25, i64* %17, align 8
  store i32 100000, i32* %18, align 4
  %26 = load %struct.domain_type*, %struct.domain_type** %9, align 8
  %27 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %26, i32 0, i32 25
  %28 = load %struct.subdomain_type*, %struct.subdomain_type** %27, align 8
  %29 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %28, i64 0
  %30 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %29, i32 0, i32 5
  %31 = load %struct.box_type*, %struct.box_type** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.box_type, %struct.box_type* %31, i64 %33
  %35 = getelementptr inbounds %struct.box_type, %struct.box_type* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.anon, %struct.anon* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %18, align 4
  %39 = icmp slt i32 %37, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %19, align 4
  %41 = load %struct.domain_type*, %struct.domain_type** %9, align 8
  %42 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %41, i32 0, i32 25
  %43 = load %struct.subdomain_type*, %struct.subdomain_type** %42, align 8
  %44 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %43, i64 0
  %45 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %44, i32 0, i32 5
  %46 = load %struct.box_type*, %struct.box_type** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.box_type, %struct.box_type* %46, i64 %48
  %50 = getelementptr inbounds %struct.box_type, %struct.box_type* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.anon, %struct.anon* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %18, align 4
  %54 = icmp sge i32 %52, %53
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %20, align 4
  %56 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  %57 = load i64, i64* %17, align 8
  %58 = sub i64 %56, %57
  %59 = load %struct.domain_type*, %struct.domain_type** %9, align 8
  %60 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %60, i32 0, i32 2
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [10 x i64], [10 x i64]* %61, i64 0, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, %58
  store i64 %66, i64* %64, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @restriction(%struct.domain_type* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.domain_type*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.domain_type* %0, %struct.domain_type** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %9, align 4
  %17 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  store i64 %17, i64* %10, align 8
  store i32 100000, i32* %11, align 4
  %18 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %19 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %18, i32 0, i32 25
  %20 = load %struct.subdomain_type*, %struct.subdomain_type** %19, align 8
  %21 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %20, i64 0
  %22 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %21, i32 0, i32 5
  %23 = load %struct.box_type*, %struct.box_type** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.box_type, %struct.box_type* %23, i64 %25
  %27 = getelementptr inbounds %struct.box_type, %struct.box_type* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.anon, %struct.anon* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %29, %30
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %12, align 4
  %33 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %34 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %33, i32 0, i32 25
  %35 = load %struct.subdomain_type*, %struct.subdomain_type** %34, align 8
  %36 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %35, i64 0
  %37 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %36, i32 0, i32 5
  %38 = load %struct.box_type*, %struct.box_type** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.box_type, %struct.box_type* %38, i64 %40
  %42 = getelementptr inbounds %struct.box_type, %struct.box_type* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.anon, %struct.anon* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp sge i32 %44, %45
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %13, align 4
  %48 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  %49 = load i64, i64* %10, align 8
  %50 = sub i64 %48, %49
  %51 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %52 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %52, i32 0, i32 3
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [10 x i64], [10 x i64]* %53, i64 0, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %57, %50
  store i64 %58, i64* %56, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @restriction_betas(%struct.domain_type* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.domain_type*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.domain_type* %0, %struct.domain_type** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  store i64 %12, i64* %7, align 8
  store i32 100000, i32* %8, align 4
  %13 = load %struct.domain_type*, %struct.domain_type** %4, align 8
  %14 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %13, i32 0, i32 25
  %15 = load %struct.subdomain_type*, %struct.subdomain_type** %14, align 8
  %16 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %15, i64 0
  %17 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %16, i32 0, i32 5
  %18 = load %struct.box_type*, %struct.box_type** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.box_type, %struct.box_type* %18, i64 %20
  %22 = getelementptr inbounds %struct.box_type, %struct.box_type* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %24, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %9, align 4
  %28 = load %struct.domain_type*, %struct.domain_type** %4, align 8
  %29 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %28, i32 0, i32 25
  %30 = load %struct.subdomain_type*, %struct.subdomain_type** %29, align 8
  %31 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %30, i64 0
  %32 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %31, i32 0, i32 5
  %33 = load %struct.box_type*, %struct.box_type** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.box_type, %struct.box_type* %33, i64 %35
  %37 = getelementptr inbounds %struct.box_type, %struct.box_type* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.anon, %struct.anon* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp sge i32 %39, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %10, align 4
  %43 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  %44 = load i64, i64* %7, align 8
  %45 = sub i64 %43, %44
  %46 = load %struct.domain_type*, %struct.domain_type** %4, align 8
  %47 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %47, i32 0, i32 3
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [10 x i64], [10 x i64]* %48, i64 0, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, %45
  store i64 %53, i64* %51, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @interpolation_constant(%struct.domain_type* %0, i32 %1, double %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.domain_type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca double*, align 8
  %30 = alloca double*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.domain_type* %0, %struct.domain_type** %6, align 8
  store i32 %1, i32* %7, align 4
  store double %2, double* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %11, align 4
  %35 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  store i64 %35, i64* %12, align 8
  store i32 100000, i32* %13, align 4
  %36 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %37 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %36, i32 0, i32 25
  %38 = load %struct.subdomain_type*, %struct.subdomain_type** %37, align 8
  %39 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %38, i64 0
  %40 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %39, i32 0, i32 5
  %41 = load %struct.box_type*, %struct.box_type** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.box_type, %struct.box_type* %41, i64 %43
  %45 = getelementptr inbounds %struct.box_type, %struct.box_type* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.anon, %struct.anon* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp slt i32 %47, %48
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %14, align 4
  %51 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %52 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %51, i32 0, i32 25
  %53 = load %struct.subdomain_type*, %struct.subdomain_type** %52, align 8
  %54 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %53, i64 0
  %55 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %54, i32 0, i32 5
  %56 = load %struct.box_type*, %struct.box_type** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.box_type, %struct.box_type* %56, i64 %58
  %60 = getelementptr inbounds %struct.box_type, %struct.box_type* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.anon, %struct.anon* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp sge i32 %62, %63
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %66

66:                                               ; preds = %308, %5
  %67 = load i32, i32* %16, align 4
  %68 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %69 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %68, i32 0, i32 19
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %311

72:                                               ; preds = %66
  %73 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %74 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %73, i32 0, i32 25
  %75 = load %struct.subdomain_type*, %struct.subdomain_type** %74, align 8
  %76 = load i32, i32* %16, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %75, i64 %77
  %79 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %78, i32 0, i32 5
  %80 = load %struct.box_type*, %struct.box_type** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.box_type, %struct.box_type* %80, i64 %82
  %84 = getelementptr inbounds %struct.box_type, %struct.box_type* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %20, align 4
  %86 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %87 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %86, i32 0, i32 25
  %88 = load %struct.subdomain_type*, %struct.subdomain_type** %87, align 8
  %89 = load i32, i32* %16, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %88, i64 %90
  %92 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %91, i32 0, i32 5
  %93 = load %struct.box_type*, %struct.box_type** %92, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.box_type, %struct.box_type* %93, i64 %95
  %97 = getelementptr inbounds %struct.box_type, %struct.box_type* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %21, align 4
  %99 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %100 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %99, i32 0, i32 25
  %101 = load %struct.subdomain_type*, %struct.subdomain_type** %100, align 8
  %102 = load i32, i32* %16, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %101, i64 %103
  %105 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %104, i32 0, i32 5
  %106 = load %struct.box_type*, %struct.box_type** %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.box_type, %struct.box_type* %106, i64 %108
  %110 = getelementptr inbounds %struct.box_type, %struct.box_type* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %22, align 4
  %112 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %113 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %112, i32 0, i32 25
  %114 = load %struct.subdomain_type*, %struct.subdomain_type** %113, align 8
  %115 = load i32, i32* %16, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %114, i64 %116
  %118 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %117, i32 0, i32 5
  %119 = load %struct.box_type*, %struct.box_type** %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.box_type, %struct.box_type* %119, i64 %121
  %123 = getelementptr inbounds %struct.box_type, %struct.box_type* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %23, align 4
  %125 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %126 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %125, i32 0, i32 25
  %127 = load %struct.subdomain_type*, %struct.subdomain_type** %126, align 8
  %128 = load i32, i32* %16, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %127, i64 %129
  %131 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %130, i32 0, i32 5
  %132 = load %struct.box_type*, %struct.box_type** %131, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.box_type, %struct.box_type* %132, i64 %134
  %136 = getelementptr inbounds %struct.box_type, %struct.box_type* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 8
  store i32 %137, i32* %24, align 4
  %138 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %139 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %138, i32 0, i32 25
  %140 = load %struct.subdomain_type*, %struct.subdomain_type** %139, align 8
  %141 = load i32, i32* %16, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %140, i64 %142
  %144 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %143, i32 0, i32 5
  %145 = load %struct.box_type*, %struct.box_type** %144, align 8
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.box_type, %struct.box_type* %145, i64 %147
  %149 = getelementptr inbounds %struct.box_type, %struct.box_type* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %25, align 4
  %151 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %152 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %151, i32 0, i32 25
  %153 = load %struct.subdomain_type*, %struct.subdomain_type** %152, align 8
  %154 = load i32, i32* %16, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %153, i64 %155
  %157 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %156, i32 0, i32 5
  %158 = load %struct.box_type*, %struct.box_type** %157, align 8
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.box_type, %struct.box_type* %158, i64 %160
  %162 = getelementptr inbounds %struct.box_type, %struct.box_type* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.anon, %struct.anon* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* %26, align 4
  %165 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %166 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %165, i32 0, i32 25
  %167 = load %struct.subdomain_type*, %struct.subdomain_type** %166, align 8
  %168 = load i32, i32* %16, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %167, i64 %169
  %171 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %170, i32 0, i32 5
  %172 = load %struct.box_type*, %struct.box_type** %171, align 8
  %173 = load i32, i32* %7, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.box_type, %struct.box_type* %172, i64 %174
  %176 = getelementptr inbounds %struct.box_type, %struct.box_type* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.anon, %struct.anon* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %27, align 4
  %179 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %180 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %179, i32 0, i32 25
  %181 = load %struct.subdomain_type*, %struct.subdomain_type** %180, align 8
  %182 = load i32, i32* %16, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %181, i64 %183
  %185 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %184, i32 0, i32 5
  %186 = load %struct.box_type*, %struct.box_type** %185, align 8
  %187 = load i32, i32* %7, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.box_type, %struct.box_type* %186, i64 %188
  %190 = getelementptr inbounds %struct.box_type, %struct.box_type* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.anon, %struct.anon* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  store i32 %192, i32* %28, align 4
  %193 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %194 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %193, i32 0, i32 25
  %195 = load %struct.subdomain_type*, %struct.subdomain_type** %194, align 8
  %196 = load i32, i32* %16, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %195, i64 %197
  %199 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %198, i32 0, i32 5
  %200 = load %struct.box_type*, %struct.box_type** %199, align 8
  %201 = load i32, i32* %7, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.box_type, %struct.box_type* %200, i64 %202
  %204 = getelementptr inbounds %struct.box_type, %struct.box_type* %203, i32 0, i32 10
  %205 = load double**, double*** %204, align 8
  %206 = load i32, i32* %9, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds double*, double** %205, i64 %207
  %209 = load double*, double** %208, align 8
  %210 = load i32, i32* %23, align 4
  %211 = load i32, i32* %24, align 4
  %212 = add nsw i32 1, %211
  %213 = load i32, i32* %25, align 4
  %214 = add nsw i32 %212, %213
  %215 = mul nsw i32 %210, %214
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds double, double* %209, i64 %216
  store double* %217, double** %29, align 8
  %218 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %219 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %218, i32 0, i32 25
  %220 = load %struct.subdomain_type*, %struct.subdomain_type** %219, align 8
  %221 = load i32, i32* %16, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %220, i64 %222
  %224 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %223, i32 0, i32 5
  %225 = load %struct.box_type*, %struct.box_type** %224, align 8
  %226 = load i32, i32* %11, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.box_type, %struct.box_type* %225, i64 %227
  %229 = getelementptr inbounds %struct.box_type, %struct.box_type* %228, i32 0, i32 10
  %230 = load double**, double*** %229, align 8
  %231 = load i32, i32* %10, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds double*, double** %230, i64 %232
  %234 = load double*, double** %233, align 8
  %235 = load i32, i32* %20, align 4
  %236 = load i32, i32* %21, align 4
  %237 = add nsw i32 1, %236
  %238 = load i32, i32* %22, align 4
  %239 = add nsw i32 %237, %238
  %240 = mul nsw i32 %235, %239
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds double, double* %234, i64 %241
  store double* %242, double** %30, align 8
  store i32 0, i32* %19, align 4
  br label %243

243:                                              ; preds = %304, %72
  %244 = load i32, i32* %19, align 4
  %245 = load i32, i32* %28, align 4
  %246 = icmp slt i32 %244, %245
  br i1 %246, label %247, label %307

247:                                              ; preds = %243
  store i32 0, i32* %18, align 4
  br label %248

248:                                              ; preds = %300, %247
  %249 = load i32, i32* %18, align 4
  %250 = load i32, i32* %27, align 4
  %251 = icmp slt i32 %249, %250
  br i1 %251, label %252, label %303

252:                                              ; preds = %248
  store i32 0, i32* %17, align 4
  br label %253

253:                                              ; preds = %296, %252
  %254 = load i32, i32* %17, align 4
  %255 = load i32, i32* %26, align 4
  %256 = icmp slt i32 %254, %255
  br i1 %256, label %257, label %299

257:                                              ; preds = %253
  %258 = load i32, i32* %17, align 4
  %259 = load i32, i32* %18, align 4
  %260 = load i32, i32* %24, align 4
  %261 = mul nsw i32 %259, %260
  %262 = add nsw i32 %258, %261
  %263 = load i32, i32* %19, align 4
  %264 = load i32, i32* %25, align 4
  %265 = mul nsw i32 %263, %264
  %266 = add nsw i32 %262, %265
  store i32 %266, i32* %31, align 4
  %267 = load i32, i32* %17, align 4
  %268 = ashr i32 %267, 1
  %269 = load i32, i32* %18, align 4
  %270 = ashr i32 %269, 1
  %271 = load i32, i32* %21, align 4
  %272 = mul nsw i32 %270, %271
  %273 = add nsw i32 %268, %272
  %274 = load i32, i32* %19, align 4
  %275 = ashr i32 %274, 1
  %276 = load i32, i32* %22, align 4
  %277 = mul nsw i32 %275, %276
  %278 = add nsw i32 %273, %277
  store i32 %278, i32* %32, align 4
  %279 = load double, double* %8, align 8
  %280 = load double*, double** %29, align 8
  %281 = load i32, i32* %31, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds double, double* %280, i64 %282
  %284 = load double, double* %283, align 8
  %285 = fmul double %279, %284
  %286 = load double*, double** %30, align 8
  %287 = load i32, i32* %32, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds double, double* %286, i64 %288
  %290 = load double, double* %289, align 8
  %291 = fadd double %285, %290
  %292 = load double*, double** %29, align 8
  %293 = load i32, i32* %31, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds double, double* %292, i64 %294
  store double %291, double* %295, align 8
  br label %296

296:                                              ; preds = %257
  %297 = load i32, i32* %17, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %17, align 4
  br label %253

299:                                              ; preds = %253
  br label %300

300:                                              ; preds = %299
  %301 = load i32, i32* %18, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %18, align 4
  br label %248

303:                                              ; preds = %248
  br label %304

304:                                              ; preds = %303
  %305 = load i32, i32* %19, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %19, align 4
  br label %243

307:                                              ; preds = %243
  br label %308

308:                                              ; preds = %307
  %309 = load i32, i32* %16, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %16, align 4
  br label %66

311:                                              ; preds = %66
  %312 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  %313 = load i64, i64* %12, align 8
  %314 = sub i64 %312, %313
  %315 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %316 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %316, i32 0, i32 4
  %318 = load i32, i32* %7, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [10 x i64], [10 x i64]* %317, i64 0, i64 %319
  %321 = load i64, i64* %320, align 8
  %322 = add i64 %321, %314
  store i64 %322, i64* %320, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @interpolation_linear(%struct.domain_type* %0, i32 %1, double %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.domain_type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca double*, align 8
  %33 = alloca double*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca double, align 8
  %37 = alloca double, align 8
  %38 = alloca double, align 8
  %39 = alloca double, align 8
  %40 = alloca double, align 8
  %41 = alloca double, align 8
  %42 = alloca double, align 8
  %43 = alloca double, align 8
  %44 = alloca double, align 8
  store %struct.domain_type* %0, %struct.domain_type** %6, align 8
  store i32 %1, i32* %7, align 4
  store double %2, double* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  %47 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %10, align 4
  call void @exchange_boundary(%struct.domain_type* %47, i32 %48, i32 %49, i32 1, i32 1, i32 1)
  %50 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  store i64 %50, i64* %12, align 8
  store i32 100000, i32* %13, align 4
  %51 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %52 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %51, i32 0, i32 25
  %53 = load %struct.subdomain_type*, %struct.subdomain_type** %52, align 8
  %54 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %53, i64 0
  %55 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %54, i32 0, i32 5
  %56 = load %struct.box_type*, %struct.box_type** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.box_type, %struct.box_type* %56, i64 %58
  %60 = getelementptr inbounds %struct.box_type, %struct.box_type* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.anon, %struct.anon* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp slt i32 %62, %63
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %14, align 4
  %66 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %67 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %66, i32 0, i32 25
  %68 = load %struct.subdomain_type*, %struct.subdomain_type** %67, align 8
  %69 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %68, i64 0
  %70 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %69, i32 0, i32 5
  %71 = load %struct.box_type*, %struct.box_type** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.box_type, %struct.box_type* %71, i64 %73
  %75 = getelementptr inbounds %struct.box_type, %struct.box_type* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.anon, %struct.anon* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp sge i32 %77, %78
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %81

81:                                               ; preds = %788, %5
  %82 = load i32, i32* %16, align 4
  %83 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %84 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %83, i32 0, i32 19
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %791

87:                                               ; preds = %81
  %88 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %89 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %88, i32 0, i32 25
  %90 = load %struct.subdomain_type*, %struct.subdomain_type** %89, align 8
  %91 = load i32, i32* %16, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %90, i64 %92
  %94 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %93, i32 0, i32 5
  %95 = load %struct.box_type*, %struct.box_type** %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.box_type, %struct.box_type* %95, i64 %97
  %99 = getelementptr inbounds %struct.box_type, %struct.box_type* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %20, align 4
  %101 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %102 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %101, i32 0, i32 25
  %103 = load %struct.subdomain_type*, %struct.subdomain_type** %102, align 8
  %104 = load i32, i32* %16, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %103, i64 %105
  %107 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %106, i32 0, i32 5
  %108 = load %struct.box_type*, %struct.box_type** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.box_type, %struct.box_type* %108, i64 %110
  %112 = getelementptr inbounds %struct.box_type, %struct.box_type* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  store i32 %113, i32* %21, align 4
  %114 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %115 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %114, i32 0, i32 25
  %116 = load %struct.subdomain_type*, %struct.subdomain_type** %115, align 8
  %117 = load i32, i32* %16, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %116, i64 %118
  %120 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %119, i32 0, i32 5
  %121 = load %struct.box_type*, %struct.box_type** %120, align 8
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.box_type, %struct.box_type* %121, i64 %123
  %125 = getelementptr inbounds %struct.box_type, %struct.box_type* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %22, align 4
  %127 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %128 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %127, i32 0, i32 25
  %129 = load %struct.subdomain_type*, %struct.subdomain_type** %128, align 8
  %130 = load i32, i32* %16, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %129, i64 %131
  %133 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %132, i32 0, i32 5
  %134 = load %struct.box_type*, %struct.box_type** %133, align 8
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.box_type, %struct.box_type* %134, i64 %136
  %138 = getelementptr inbounds %struct.box_type, %struct.box_type* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.anon, %struct.anon* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %23, align 4
  %141 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %142 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %141, i32 0, i32 25
  %143 = load %struct.subdomain_type*, %struct.subdomain_type** %142, align 8
  %144 = load i32, i32* %16, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %143, i64 %145
  %147 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %146, i32 0, i32 5
  %148 = load %struct.box_type*, %struct.box_type** %147, align 8
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.box_type, %struct.box_type* %148, i64 %150
  %152 = getelementptr inbounds %struct.box_type, %struct.box_type* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.anon, %struct.anon* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %24, align 4
  %155 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %156 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %155, i32 0, i32 25
  %157 = load %struct.subdomain_type*, %struct.subdomain_type** %156, align 8
  %158 = load i32, i32* %16, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %157, i64 %159
  %161 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %160, i32 0, i32 5
  %162 = load %struct.box_type*, %struct.box_type** %161, align 8
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.box_type, %struct.box_type* %162, i64 %164
  %166 = getelementptr inbounds %struct.box_type, %struct.box_type* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.anon, %struct.anon* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %25, align 4
  %169 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %170 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %169, i32 0, i32 25
  %171 = load %struct.subdomain_type*, %struct.subdomain_type** %170, align 8
  %172 = load i32, i32* %16, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %171, i64 %173
  %175 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %174, i32 0, i32 5
  %176 = load %struct.box_type*, %struct.box_type** %175, align 8
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.box_type, %struct.box_type* %176, i64 %178
  %180 = getelementptr inbounds %struct.box_type, %struct.box_type* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 4
  store i32 %181, i32* %26, align 4
  %182 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %183 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %182, i32 0, i32 25
  %184 = load %struct.subdomain_type*, %struct.subdomain_type** %183, align 8
  %185 = load i32, i32* %16, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %184, i64 %186
  %188 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %187, i32 0, i32 5
  %189 = load %struct.box_type*, %struct.box_type** %188, align 8
  %190 = load i32, i32* %7, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.box_type, %struct.box_type* %189, i64 %191
  %193 = getelementptr inbounds %struct.box_type, %struct.box_type* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 8
  store i32 %194, i32* %27, align 4
  %195 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %196 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %195, i32 0, i32 25
  %197 = load %struct.subdomain_type*, %struct.subdomain_type** %196, align 8
  %198 = load i32, i32* %16, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %197, i64 %199
  %201 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %200, i32 0, i32 5
  %202 = load %struct.box_type*, %struct.box_type** %201, align 8
  %203 = load i32, i32* %7, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.box_type, %struct.box_type* %202, i64 %204
  %206 = getelementptr inbounds %struct.box_type, %struct.box_type* %205, i32 0, i32 6
  %207 = load i32, i32* %206, align 4
  store i32 %207, i32* %28, align 4
  %208 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %209 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %208, i32 0, i32 25
  %210 = load %struct.subdomain_type*, %struct.subdomain_type** %209, align 8
  %211 = load i32, i32* %16, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %210, i64 %212
  %214 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %213, i32 0, i32 5
  %215 = load %struct.box_type*, %struct.box_type** %214, align 8
  %216 = load i32, i32* %7, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.box_type, %struct.box_type* %215, i64 %217
  %219 = getelementptr inbounds %struct.box_type, %struct.box_type* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.anon, %struct.anon* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  store i32 %221, i32* %29, align 4
  %222 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %223 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %222, i32 0, i32 25
  %224 = load %struct.subdomain_type*, %struct.subdomain_type** %223, align 8
  %225 = load i32, i32* %16, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %224, i64 %226
  %228 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %227, i32 0, i32 5
  %229 = load %struct.box_type*, %struct.box_type** %228, align 8
  %230 = load i32, i32* %7, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.box_type, %struct.box_type* %229, i64 %231
  %233 = getelementptr inbounds %struct.box_type, %struct.box_type* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.anon, %struct.anon* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  store i32 %235, i32* %30, align 4
  %236 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %237 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %236, i32 0, i32 25
  %238 = load %struct.subdomain_type*, %struct.subdomain_type** %237, align 8
  %239 = load i32, i32* %16, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %238, i64 %240
  %242 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %241, i32 0, i32 5
  %243 = load %struct.box_type*, %struct.box_type** %242, align 8
  %244 = load i32, i32* %7, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.box_type, %struct.box_type* %243, i64 %245
  %247 = getelementptr inbounds %struct.box_type, %struct.box_type* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.anon, %struct.anon* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  store i32 %249, i32* %31, align 4
  %250 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %251 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %250, i32 0, i32 25
  %252 = load %struct.subdomain_type*, %struct.subdomain_type** %251, align 8
  %253 = load i32, i32* %16, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %252, i64 %254
  %256 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %255, i32 0, i32 5
  %257 = load %struct.box_type*, %struct.box_type** %256, align 8
  %258 = load i32, i32* %7, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.box_type, %struct.box_type* %257, i64 %259
  %261 = getelementptr inbounds %struct.box_type, %struct.box_type* %260, i32 0, i32 10
  %262 = load double**, double*** %261, align 8
  %263 = load i32, i32* %9, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds double*, double** %262, i64 %264
  %266 = load double*, double** %265, align 8
  %267 = load i32, i32* %26, align 4
  %268 = load i32, i32* %27, align 4
  %269 = add nsw i32 1, %268
  %270 = load i32, i32* %28, align 4
  %271 = add nsw i32 %269, %270
  %272 = mul nsw i32 %267, %271
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds double, double* %266, i64 %273
  store double* %274, double** %32, align 8
  %275 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %276 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %275, i32 0, i32 25
  %277 = load %struct.subdomain_type*, %struct.subdomain_type** %276, align 8
  %278 = load i32, i32* %16, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %277, i64 %279
  %281 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %280, i32 0, i32 5
  %282 = load %struct.box_type*, %struct.box_type** %281, align 8
  %283 = load i32, i32* %11, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.box_type, %struct.box_type* %282, i64 %284
  %286 = getelementptr inbounds %struct.box_type, %struct.box_type* %285, i32 0, i32 10
  %287 = load double**, double*** %286, align 8
  %288 = load i32, i32* %10, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds double*, double** %287, i64 %289
  %291 = load double*, double** %290, align 8
  %292 = load i32, i32* %20, align 4
  %293 = load i32, i32* %21, align 4
  %294 = add nsw i32 1, %293
  %295 = load i32, i32* %22, align 4
  %296 = add nsw i32 %294, %295
  %297 = mul nsw i32 %292, %296
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds double, double* %291, i64 %298
  store double* %299, double** %33, align 8
  store i32 0, i32* %19, align 4
  br label %300

300:                                              ; preds = %784, %87
  %301 = load i32, i32* %19, align 4
  %302 = load i32, i32* %31, align 4
  %303 = icmp slt i32 %301, %302
  br i1 %303, label %304, label %787

304:                                              ; preds = %300
  store i32 0, i32* %18, align 4
  br label %305

305:                                              ; preds = %780, %304
  %306 = load i32, i32* %18, align 4
  %307 = load i32, i32* %30, align 4
  %308 = icmp slt i32 %306, %307
  br i1 %308, label %309, label %783

309:                                              ; preds = %305
  store i32 0, i32* %17, align 4
  br label %310

310:                                              ; preds = %776, %309
  %311 = load i32, i32* %17, align 4
  %312 = load i32, i32* %29, align 4
  %313 = icmp slt i32 %311, %312
  br i1 %313, label %314, label %779

314:                                              ; preds = %310
  %315 = load i32, i32* %17, align 4
  %316 = load i32, i32* %18, align 4
  %317 = load i32, i32* %27, align 4
  %318 = mul nsw i32 %316, %317
  %319 = add nsw i32 %315, %318
  %320 = load i32, i32* %19, align 4
  %321 = load i32, i32* %28, align 4
  %322 = mul nsw i32 %320, %321
  %323 = add nsw i32 %319, %322
  store i32 %323, i32* %34, align 4
  %324 = load i32, i32* %17, align 4
  %325 = ashr i32 %324, 1
  %326 = load i32, i32* %18, align 4
  %327 = ashr i32 %326, 1
  %328 = load i32, i32* %21, align 4
  %329 = mul nsw i32 %327, %328
  %330 = add nsw i32 %325, %329
  %331 = load i32, i32* %19, align 4
  %332 = ashr i32 %331, 1
  %333 = load i32, i32* %22, align 4
  %334 = mul nsw i32 %332, %333
  %335 = add nsw i32 %330, %334
  store i32 %335, i32* %35, align 4
  store double 1.562500e-01, double* %36, align 8
  store double 9.375000e-01, double* %37, align 8
  store double -9.375000e-02, double* %38, align 8
  store double 1.562500e-01, double* %39, align 8
  store double 9.375000e-01, double* %40, align 8
  store double -9.375000e-02, double* %41, align 8
  store double 1.562500e-01, double* %42, align 8
  store double 9.375000e-01, double* %43, align 8
  store double -9.375000e-02, double* %44, align 8
  %336 = load i32, i32* %17, align 4
  %337 = and i32 %336, 1
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %314
  store double -9.375000e-02, double* %36, align 8
  store double 9.375000e-01, double* %37, align 8
  store double 1.562500e-01, double* %38, align 8
  br label %340

340:                                              ; preds = %339, %314
  %341 = load i32, i32* %18, align 4
  %342 = and i32 %341, 1
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %345

344:                                              ; preds = %340
  store double -9.375000e-02, double* %39, align 8
  store double 9.375000e-01, double* %40, align 8
  store double 1.562500e-01, double* %41, align 8
  br label %345

345:                                              ; preds = %344, %340
  %346 = load i32, i32* %19, align 4
  %347 = and i32 %346, 1
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %350

349:                                              ; preds = %345
  store double -9.375000e-02, double* %42, align 8
  store double 9.375000e-01, double* %43, align 8
  store double 1.562500e-01, double* %44, align 8
  br label %350

350:                                              ; preds = %349, %345
  %351 = load double, double* %8, align 8
  %352 = load double*, double** %32, align 8
  %353 = load i32, i32* %34, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds double, double* %352, i64 %354
  %356 = load double, double* %355, align 8
  %357 = fmul double %351, %356
  %358 = load double, double* %42, align 8
  %359 = load double, double* %39, align 8
  %360 = fmul double %358, %359
  %361 = load double, double* %36, align 8
  %362 = fmul double %360, %361
  %363 = load double*, double** %33, align 8
  %364 = load i32, i32* %35, align 4
  %365 = sub nsw i32 %364, 1
  %366 = load i32, i32* %21, align 4
  %367 = sub nsw i32 %365, %366
  %368 = load i32, i32* %22, align 4
  %369 = sub nsw i32 %367, %368
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds double, double* %363, i64 %370
  %372 = load double, double* %371, align 8
  %373 = fmul double %362, %372
  %374 = fadd double %357, %373
  %375 = load double, double* %42, align 8
  %376 = load double, double* %39, align 8
  %377 = fmul double %375, %376
  %378 = load double, double* %37, align 8
  %379 = fmul double %377, %378
  %380 = load double*, double** %33, align 8
  %381 = load i32, i32* %35, align 4
  %382 = load i32, i32* %21, align 4
  %383 = sub nsw i32 %381, %382
  %384 = load i32, i32* %22, align 4
  %385 = sub nsw i32 %383, %384
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds double, double* %380, i64 %386
  %388 = load double, double* %387, align 8
  %389 = fmul double %379, %388
  %390 = fadd double %374, %389
  %391 = load double, double* %42, align 8
  %392 = load double, double* %39, align 8
  %393 = fmul double %391, %392
  %394 = load double, double* %38, align 8
  %395 = fmul double %393, %394
  %396 = load double*, double** %33, align 8
  %397 = load i32, i32* %35, align 4
  %398 = add nsw i32 %397, 1
  %399 = load i32, i32* %21, align 4
  %400 = sub nsw i32 %398, %399
  %401 = load i32, i32* %22, align 4
  %402 = sub nsw i32 %400, %401
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds double, double* %396, i64 %403
  %405 = load double, double* %404, align 8
  %406 = fmul double %395, %405
  %407 = fadd double %390, %406
  %408 = load double, double* %42, align 8
  %409 = load double, double* %40, align 8
  %410 = fmul double %408, %409
  %411 = load double, double* %36, align 8
  %412 = fmul double %410, %411
  %413 = load double*, double** %33, align 8
  %414 = load i32, i32* %35, align 4
  %415 = sub nsw i32 %414, 1
  %416 = load i32, i32* %22, align 4
  %417 = sub nsw i32 %415, %416
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds double, double* %413, i64 %418
  %420 = load double, double* %419, align 8
  %421 = fmul double %412, %420
  %422 = fadd double %407, %421
  %423 = load double, double* %42, align 8
  %424 = load double, double* %40, align 8
  %425 = fmul double %423, %424
  %426 = load double, double* %37, align 8
  %427 = fmul double %425, %426
  %428 = load double*, double** %33, align 8
  %429 = load i32, i32* %35, align 4
  %430 = load i32, i32* %22, align 4
  %431 = sub nsw i32 %429, %430
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds double, double* %428, i64 %432
  %434 = load double, double* %433, align 8
  %435 = fmul double %427, %434
  %436 = fadd double %422, %435
  %437 = load double, double* %42, align 8
  %438 = load double, double* %40, align 8
  %439 = fmul double %437, %438
  %440 = load double, double* %38, align 8
  %441 = fmul double %439, %440
  %442 = load double*, double** %33, align 8
  %443 = load i32, i32* %35, align 4
  %444 = add nsw i32 %443, 1
  %445 = load i32, i32* %22, align 4
  %446 = sub nsw i32 %444, %445
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds double, double* %442, i64 %447
  %449 = load double, double* %448, align 8
  %450 = fmul double %441, %449
  %451 = fadd double %436, %450
  %452 = load double, double* %42, align 8
  %453 = load double, double* %41, align 8
  %454 = fmul double %452, %453
  %455 = load double, double* %36, align 8
  %456 = fmul double %454, %455
  %457 = load double*, double** %33, align 8
  %458 = load i32, i32* %35, align 4
  %459 = sub nsw i32 %458, 1
  %460 = load i32, i32* %21, align 4
  %461 = add nsw i32 %459, %460
  %462 = load i32, i32* %22, align 4
  %463 = sub nsw i32 %461, %462
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds double, double* %457, i64 %464
  %466 = load double, double* %465, align 8
  %467 = fmul double %456, %466
  %468 = fadd double %451, %467
  %469 = load double, double* %42, align 8
  %470 = load double, double* %41, align 8
  %471 = fmul double %469, %470
  %472 = load double, double* %37, align 8
  %473 = fmul double %471, %472
  %474 = load double*, double** %33, align 8
  %475 = load i32, i32* %35, align 4
  %476 = load i32, i32* %21, align 4
  %477 = add nsw i32 %475, %476
  %478 = load i32, i32* %22, align 4
  %479 = sub nsw i32 %477, %478
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds double, double* %474, i64 %480
  %482 = load double, double* %481, align 8
  %483 = fmul double %473, %482
  %484 = fadd double %468, %483
  %485 = load double, double* %42, align 8
  %486 = load double, double* %41, align 8
  %487 = fmul double %485, %486
  %488 = load double, double* %38, align 8
  %489 = fmul double %487, %488
  %490 = load double*, double** %33, align 8
  %491 = load i32, i32* %35, align 4
  %492 = add nsw i32 %491, 1
  %493 = load i32, i32* %21, align 4
  %494 = add nsw i32 %492, %493
  %495 = load i32, i32* %22, align 4
  %496 = sub nsw i32 %494, %495
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds double, double* %490, i64 %497
  %499 = load double, double* %498, align 8
  %500 = fmul double %489, %499
  %501 = fadd double %484, %500
  %502 = load double, double* %43, align 8
  %503 = load double, double* %39, align 8
  %504 = fmul double %502, %503
  %505 = load double, double* %36, align 8
  %506 = fmul double %504, %505
  %507 = load double*, double** %33, align 8
  %508 = load i32, i32* %35, align 4
  %509 = sub nsw i32 %508, 1
  %510 = load i32, i32* %21, align 4
  %511 = sub nsw i32 %509, %510
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds double, double* %507, i64 %512
  %514 = load double, double* %513, align 8
  %515 = fmul double %506, %514
  %516 = fadd double %501, %515
  %517 = load double, double* %43, align 8
  %518 = load double, double* %39, align 8
  %519 = fmul double %517, %518
  %520 = load double, double* %37, align 8
  %521 = fmul double %519, %520
  %522 = load double*, double** %33, align 8
  %523 = load i32, i32* %35, align 4
  %524 = load i32, i32* %21, align 4
  %525 = sub nsw i32 %523, %524
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds double, double* %522, i64 %526
  %528 = load double, double* %527, align 8
  %529 = fmul double %521, %528
  %530 = fadd double %516, %529
  %531 = load double, double* %43, align 8
  %532 = load double, double* %39, align 8
  %533 = fmul double %531, %532
  %534 = load double, double* %38, align 8
  %535 = fmul double %533, %534
  %536 = load double*, double** %33, align 8
  %537 = load i32, i32* %35, align 4
  %538 = add nsw i32 %537, 1
  %539 = load i32, i32* %21, align 4
  %540 = sub nsw i32 %538, %539
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds double, double* %536, i64 %541
  %543 = load double, double* %542, align 8
  %544 = fmul double %535, %543
  %545 = fadd double %530, %544
  %546 = load double, double* %43, align 8
  %547 = load double, double* %40, align 8
  %548 = fmul double %546, %547
  %549 = load double, double* %36, align 8
  %550 = fmul double %548, %549
  %551 = load double*, double** %33, align 8
  %552 = load i32, i32* %35, align 4
  %553 = sub nsw i32 %552, 1
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds double, double* %551, i64 %554
  %556 = load double, double* %555, align 8
  %557 = fmul double %550, %556
  %558 = fadd double %545, %557
  %559 = load double, double* %43, align 8
  %560 = load double, double* %40, align 8
  %561 = fmul double %559, %560
  %562 = load double, double* %37, align 8
  %563 = fmul double %561, %562
  %564 = load double*, double** %33, align 8
  %565 = load i32, i32* %35, align 4
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds double, double* %564, i64 %566
  %568 = load double, double* %567, align 8
  %569 = fmul double %563, %568
  %570 = fadd double %558, %569
  %571 = load double, double* %43, align 8
  %572 = load double, double* %40, align 8
  %573 = fmul double %571, %572
  %574 = load double, double* %38, align 8
  %575 = fmul double %573, %574
  %576 = load double*, double** %33, align 8
  %577 = load i32, i32* %35, align 4
  %578 = add nsw i32 %577, 1
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds double, double* %576, i64 %579
  %581 = load double, double* %580, align 8
  %582 = fmul double %575, %581
  %583 = fadd double %570, %582
  %584 = load double, double* %43, align 8
  %585 = load double, double* %41, align 8
  %586 = fmul double %584, %585
  %587 = load double, double* %36, align 8
  %588 = fmul double %586, %587
  %589 = load double*, double** %33, align 8
  %590 = load i32, i32* %35, align 4
  %591 = sub nsw i32 %590, 1
  %592 = load i32, i32* %21, align 4
  %593 = add nsw i32 %591, %592
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds double, double* %589, i64 %594
  %596 = load double, double* %595, align 8
  %597 = fmul double %588, %596
  %598 = fadd double %583, %597
  %599 = load double, double* %43, align 8
  %600 = load double, double* %41, align 8
  %601 = fmul double %599, %600
  %602 = load double, double* %37, align 8
  %603 = fmul double %601, %602
  %604 = load double*, double** %33, align 8
  %605 = load i32, i32* %35, align 4
  %606 = load i32, i32* %21, align 4
  %607 = add nsw i32 %605, %606
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds double, double* %604, i64 %608
  %610 = load double, double* %609, align 8
  %611 = fmul double %603, %610
  %612 = fadd double %598, %611
  %613 = load double, double* %43, align 8
  %614 = load double, double* %41, align 8
  %615 = fmul double %613, %614
  %616 = load double, double* %38, align 8
  %617 = fmul double %615, %616
  %618 = load double*, double** %33, align 8
  %619 = load i32, i32* %35, align 4
  %620 = add nsw i32 %619, 1
  %621 = load i32, i32* %21, align 4
  %622 = add nsw i32 %620, %621
  %623 = sext i32 %622 to i64
  %624 = getelementptr inbounds double, double* %618, i64 %623
  %625 = load double, double* %624, align 8
  %626 = fmul double %617, %625
  %627 = fadd double %612, %626
  %628 = load double, double* %44, align 8
  %629 = load double, double* %39, align 8
  %630 = fmul double %628, %629
  %631 = load double, double* %36, align 8
  %632 = fmul double %630, %631
  %633 = load double*, double** %33, align 8
  %634 = load i32, i32* %35, align 4
  %635 = sub nsw i32 %634, 1
  %636 = load i32, i32* %21, align 4
  %637 = sub nsw i32 %635, %636
  %638 = load i32, i32* %22, align 4
  %639 = add nsw i32 %637, %638
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds double, double* %633, i64 %640
  %642 = load double, double* %641, align 8
  %643 = fmul double %632, %642
  %644 = fadd double %627, %643
  %645 = load double, double* %44, align 8
  %646 = load double, double* %39, align 8
  %647 = fmul double %645, %646
  %648 = load double, double* %37, align 8
  %649 = fmul double %647, %648
  %650 = load double*, double** %33, align 8
  %651 = load i32, i32* %35, align 4
  %652 = load i32, i32* %21, align 4
  %653 = sub nsw i32 %651, %652
  %654 = load i32, i32* %22, align 4
  %655 = add nsw i32 %653, %654
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds double, double* %650, i64 %656
  %658 = load double, double* %657, align 8
  %659 = fmul double %649, %658
  %660 = fadd double %644, %659
  %661 = load double, double* %44, align 8
  %662 = load double, double* %39, align 8
  %663 = fmul double %661, %662
  %664 = load double, double* %38, align 8
  %665 = fmul double %663, %664
  %666 = load double*, double** %33, align 8
  %667 = load i32, i32* %35, align 4
  %668 = add nsw i32 %667, 1
  %669 = load i32, i32* %21, align 4
  %670 = sub nsw i32 %668, %669
  %671 = load i32, i32* %22, align 4
  %672 = add nsw i32 %670, %671
  %673 = sext i32 %672 to i64
  %674 = getelementptr inbounds double, double* %666, i64 %673
  %675 = load double, double* %674, align 8
  %676 = fmul double %665, %675
  %677 = fadd double %660, %676
  %678 = load double, double* %44, align 8
  %679 = load double, double* %40, align 8
  %680 = fmul double %678, %679
  %681 = load double, double* %36, align 8
  %682 = fmul double %680, %681
  %683 = load double*, double** %33, align 8
  %684 = load i32, i32* %35, align 4
  %685 = sub nsw i32 %684, 1
  %686 = load i32, i32* %22, align 4
  %687 = add nsw i32 %685, %686
  %688 = sext i32 %687 to i64
  %689 = getelementptr inbounds double, double* %683, i64 %688
  %690 = load double, double* %689, align 8
  %691 = fmul double %682, %690
  %692 = fadd double %677, %691
  %693 = load double, double* %44, align 8
  %694 = load double, double* %40, align 8
  %695 = fmul double %693, %694
  %696 = load double, double* %37, align 8
  %697 = fmul double %695, %696
  %698 = load double*, double** %33, align 8
  %699 = load i32, i32* %35, align 4
  %700 = load i32, i32* %22, align 4
  %701 = add nsw i32 %699, %700
  %702 = sext i32 %701 to i64
  %703 = getelementptr inbounds double, double* %698, i64 %702
  %704 = load double, double* %703, align 8
  %705 = fmul double %697, %704
  %706 = fadd double %692, %705
  %707 = load double, double* %44, align 8
  %708 = load double, double* %40, align 8
  %709 = fmul double %707, %708
  %710 = load double, double* %38, align 8
  %711 = fmul double %709, %710
  %712 = load double*, double** %33, align 8
  %713 = load i32, i32* %35, align 4
  %714 = add nsw i32 %713, 1
  %715 = load i32, i32* %22, align 4
  %716 = add nsw i32 %714, %715
  %717 = sext i32 %716 to i64
  %718 = getelementptr inbounds double, double* %712, i64 %717
  %719 = load double, double* %718, align 8
  %720 = fmul double %711, %719
  %721 = fadd double %706, %720
  %722 = load double, double* %44, align 8
  %723 = load double, double* %41, align 8
  %724 = fmul double %722, %723
  %725 = load double, double* %36, align 8
  %726 = fmul double %724, %725
  %727 = load double*, double** %33, align 8
  %728 = load i32, i32* %35, align 4
  %729 = sub nsw i32 %728, 1
  %730 = load i32, i32* %21, align 4
  %731 = add nsw i32 %729, %730
  %732 = load i32, i32* %22, align 4
  %733 = add nsw i32 %731, %732
  %734 = sext i32 %733 to i64
  %735 = getelementptr inbounds double, double* %727, i64 %734
  %736 = load double, double* %735, align 8
  %737 = fmul double %726, %736
  %738 = fadd double %721, %737
  %739 = load double, double* %44, align 8
  %740 = load double, double* %41, align 8
  %741 = fmul double %739, %740
  %742 = load double, double* %37, align 8
  %743 = fmul double %741, %742
  %744 = load double*, double** %33, align 8
  %745 = load i32, i32* %35, align 4
  %746 = load i32, i32* %21, align 4
  %747 = add nsw i32 %745, %746
  %748 = load i32, i32* %22, align 4
  %749 = add nsw i32 %747, %748
  %750 = sext i32 %749 to i64
  %751 = getelementptr inbounds double, double* %744, i64 %750
  %752 = load double, double* %751, align 8
  %753 = fmul double %743, %752
  %754 = fadd double %738, %753
  %755 = load double, double* %44, align 8
  %756 = load double, double* %41, align 8
  %757 = fmul double %755, %756
  %758 = load double, double* %38, align 8
  %759 = fmul double %757, %758
  %760 = load double*, double** %33, align 8
  %761 = load i32, i32* %35, align 4
  %762 = add nsw i32 %761, 1
  %763 = load i32, i32* %21, align 4
  %764 = add nsw i32 %762, %763
  %765 = load i32, i32* %22, align 4
  %766 = add nsw i32 %764, %765
  %767 = sext i32 %766 to i64
  %768 = getelementptr inbounds double, double* %760, i64 %767
  %769 = load double, double* %768, align 8
  %770 = fmul double %759, %769
  %771 = fadd double %754, %770
  %772 = load double*, double** %32, align 8
  %773 = load i32, i32* %34, align 4
  %774 = sext i32 %773 to i64
  %775 = getelementptr inbounds double, double* %772, i64 %774
  store double %771, double* %775, align 8
  br label %776

776:                                              ; preds = %350
  %777 = load i32, i32* %17, align 4
  %778 = add nsw i32 %777, 1
  store i32 %778, i32* %17, align 4
  br label %310

779:                                              ; preds = %310
  br label %780

780:                                              ; preds = %779
  %781 = load i32, i32* %18, align 4
  %782 = add nsw i32 %781, 1
  store i32 %782, i32* %18, align 4
  br label %305

783:                                              ; preds = %305
  br label %784

784:                                              ; preds = %783
  %785 = load i32, i32* %19, align 4
  %786 = add nsw i32 %785, 1
  store i32 %786, i32* %19, align 4
  br label %300

787:                                              ; preds = %300
  br label %788

788:                                              ; preds = %787
  %789 = load i32, i32* %16, align 4
  %790 = add nsw i32 %789, 1
  store i32 %790, i32* %16, align 4
  br label %81

791:                                              ; preds = %81
  %792 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  %793 = load i64, i64* %12, align 8
  %794 = sub i64 %792, %793
  %795 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %796 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %795, i32 0, i32 0
  %797 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %796, i32 0, i32 4
  %798 = load i32, i32* %7, align 4
  %799 = sext i32 %798 to i64
  %800 = getelementptr inbounds [10 x i64], [10 x i64]* %797, i64 0, i64 %799
  %801 = load i64, i64* %800, align 8
  %802 = add i64 %801, %794
  store i64 %802, i64* %800, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @zero_grid(%struct.domain_type* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.domain_type*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.domain_type* %0, %struct.domain_type** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  store i64 %12, i64* %7, align 8
  store i32 100000, i32* %8, align 4
  %13 = load %struct.domain_type*, %struct.domain_type** %4, align 8
  %14 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %13, i32 0, i32 25
  %15 = load %struct.subdomain_type*, %struct.subdomain_type** %14, align 8
  %16 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %15, i64 0
  %17 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %16, i32 0, i32 5
  %18 = load %struct.box_type*, %struct.box_type** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.box_type, %struct.box_type* %18, i64 %20
  %22 = getelementptr inbounds %struct.box_type, %struct.box_type* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %24, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %9, align 4
  %28 = load %struct.domain_type*, %struct.domain_type** %4, align 8
  %29 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %28, i32 0, i32 25
  %30 = load %struct.subdomain_type*, %struct.subdomain_type** %29, align 8
  %31 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %30, i64 0
  %32 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %31, i32 0, i32 5
  %33 = load %struct.box_type*, %struct.box_type** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.box_type, %struct.box_type* %33, i64 %35
  %37 = getelementptr inbounds %struct.box_type, %struct.box_type* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.anon, %struct.anon* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp sge i32 %39, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %10, align 4
  %43 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  %44 = load i64, i64* %7, align 8
  %45 = sub i64 %43, %44
  %46 = load %struct.domain_type*, %struct.domain_type** %4, align 8
  %47 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %47, i32 0, i32 12
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [10 x i64], [10 x i64]* %48, i64 0, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, %45
  store i64 %53, i64* %51, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initialize_grid_to_scalar(%struct.domain_type* %0, i32 %1, i32 %2, double %3) #0 {
  %5 = alloca %struct.domain_type*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.domain_type* %0, %struct.domain_type** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store double %3, double* %8, align 8
  %14 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  store i64 %14, i64* %9, align 8
  store i32 100000, i32* %10, align 4
  %15 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %16 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %15, i32 0, i32 25
  %17 = load %struct.subdomain_type*, %struct.subdomain_type** %16, align 8
  %18 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %17, i64 0
  %19 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %18, i32 0, i32 5
  %20 = load %struct.box_type*, %struct.box_type** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.box_type, %struct.box_type* %20, i64 %22
  %24 = getelementptr inbounds %struct.box_type, %struct.box_type* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.anon, %struct.anon* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %26, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %11, align 4
  %30 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %31 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %30, i32 0, i32 25
  %32 = load %struct.subdomain_type*, %struct.subdomain_type** %31, align 8
  %33 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %32, i64 0
  %34 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %33, i32 0, i32 5
  %35 = load %struct.box_type*, %struct.box_type** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.box_type, %struct.box_type* %35, i64 %37
  %39 = getelementptr inbounds %struct.box_type, %struct.box_type* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.anon, %struct.anon* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp sge i32 %41, %42
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %12, align 4
  %45 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  %46 = load i64, i64* %9, align 8
  %47 = sub i64 %45, %46
  %48 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %49 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %49, i32 0, i32 12
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [10 x i64], [10 x i64]* %50, i64 0, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, %47
  store i64 %55, i64* %53, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @add_grids(%struct.domain_type* %0, i32 %1, i32 %2, double %3, i32 %4, double %5, i32 %6) #0 {
  %8 = alloca %struct.domain_type*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.domain_type* %0, %struct.domain_type** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store double %3, double* %11, align 8
  store i32 %4, i32* %12, align 4
  store double %5, double* %13, align 8
  store i32 %6, i32* %14, align 4
  %20 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  store i64 %20, i64* %15, align 8
  store i32 100000, i32* %16, align 4
  %21 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %22 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %21, i32 0, i32 25
  %23 = load %struct.subdomain_type*, %struct.subdomain_type** %22, align 8
  %24 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %23, i64 0
  %25 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %24, i32 0, i32 5
  %26 = load %struct.box_type*, %struct.box_type** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.box_type, %struct.box_type* %26, i64 %28
  %30 = getelementptr inbounds %struct.box_type, %struct.box_type* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.anon, %struct.anon* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %16, align 4
  %34 = icmp slt i32 %32, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %17, align 4
  %36 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %37 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %36, i32 0, i32 25
  %38 = load %struct.subdomain_type*, %struct.subdomain_type** %37, align 8
  %39 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %38, i64 0
  %40 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %39, i32 0, i32 5
  %41 = load %struct.box_type*, %struct.box_type** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.box_type, %struct.box_type* %41, i64 %43
  %45 = getelementptr inbounds %struct.box_type, %struct.box_type* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.anon, %struct.anon* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %16, align 4
  %49 = icmp sge i32 %47, %48
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %18, align 4
  %51 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  %52 = load i64, i64* %15, align 8
  %53 = sub i64 %51, %52
  %54 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %55 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %55, i32 0, i32 12
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [10 x i64], [10 x i64]* %56, i64 0, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, %53
  store i64 %61, i64* %59, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mul_grids(%struct.domain_type* %0, i32 %1, i32 %2, double %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.domain_type*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.domain_type* %0, %struct.domain_type** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store double %3, double* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  store i64 %18, i64* %13, align 8
  store i32 100000, i32* %14, align 4
  %19 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %20 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %19, i32 0, i32 25
  %21 = load %struct.subdomain_type*, %struct.subdomain_type** %20, align 8
  %22 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %21, i64 0
  %23 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %22, i32 0, i32 5
  %24 = load %struct.box_type*, %struct.box_type** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.box_type, %struct.box_type* %24, i64 %26
  %28 = getelementptr inbounds %struct.box_type, %struct.box_type* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.anon, %struct.anon* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp slt i32 %30, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %15, align 4
  %34 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %35 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %34, i32 0, i32 25
  %36 = load %struct.subdomain_type*, %struct.subdomain_type** %35, align 8
  %37 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %36, i64 0
  %38 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %37, i32 0, i32 5
  %39 = load %struct.box_type*, %struct.box_type** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.box_type, %struct.box_type* %39, i64 %41
  %43 = getelementptr inbounds %struct.box_type, %struct.box_type* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.anon, %struct.anon* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp sge i32 %45, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %16, align 4
  %49 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  %50 = load i64, i64* %13, align 8
  %51 = sub i64 %49, %50
  %52 = load %struct.domain_type*, %struct.domain_type** %7, align 8
  %53 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %53, i32 0, i32 12
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [10 x i64], [10 x i64]* %54, i64 0, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, %51
  store i64 %59, i64* %57, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_grid(%struct.domain_type* %0, i32 %1, i32 %2, double %3, i32 %4) #0 {
  %6 = alloca %struct.domain_type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.domain_type* %0, %struct.domain_type** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store double %3, double* %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  store i64 %16, i64* %11, align 8
  store i32 100000, i32* %12, align 4
  %17 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %18 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %17, i32 0, i32 25
  %19 = load %struct.subdomain_type*, %struct.subdomain_type** %18, align 8
  %20 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %19, i64 0
  %21 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %20, i32 0, i32 5
  %22 = load %struct.box_type*, %struct.box_type** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.box_type, %struct.box_type* %22, i64 %24
  %26 = getelementptr inbounds %struct.box_type, %struct.box_type* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.anon, %struct.anon* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %28, %29
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %13, align 4
  %32 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %33 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %32, i32 0, i32 25
  %34 = load %struct.subdomain_type*, %struct.subdomain_type** %33, align 8
  %35 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %34, i64 0
  %36 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %35, i32 0, i32 5
  %37 = load %struct.box_type*, %struct.box_type** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.box_type, %struct.box_type* %37, i64 %39
  %41 = getelementptr inbounds %struct.box_type, %struct.box_type* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp sge i32 %43, %44
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %14, align 4
  %47 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  %48 = load i64, i64* %11, align 8
  %49 = sub i64 %47, %48
  %50 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %51 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %51, i32 0, i32 12
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [10 x i64], [10 x i64]* %52, i64 0, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %56, %49
  store i64 %57, i64* %55, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @dot(%struct.domain_type* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.domain_type*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  store %struct.domain_type* %0, %struct.domain_type** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  store i64 %15, i64* %9, align 8
  store i32 100000, i32* %10, align 4
  %16 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %17 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %16, i32 0, i32 25
  %18 = load %struct.subdomain_type*, %struct.subdomain_type** %17, align 8
  %19 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %18, i64 0
  %20 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %19, i32 0, i32 5
  %21 = load %struct.box_type*, %struct.box_type** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.box_type, %struct.box_type* %21, i64 %23
  %25 = getelementptr inbounds %struct.box_type, %struct.box_type* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %27, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %11, align 4
  %31 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %32 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %31, i32 0, i32 25
  %33 = load %struct.subdomain_type*, %struct.subdomain_type** %32, align 8
  %34 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %33, i64 0
  %35 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %34, i32 0, i32 5
  %36 = load %struct.box_type*, %struct.box_type** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.box_type, %struct.box_type* %36, i64 %38
  %40 = getelementptr inbounds %struct.box_type, %struct.box_type* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.anon, %struct.anon* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp sge i32 %42, %43
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %12, align 4
  store double 0.000000e+00, double* %14, align 8
  %46 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  %47 = load i64, i64* %9, align 8
  %48 = sub i64 %46, %47
  %49 = load %struct.domain_type*, %struct.domain_type** %5, align 8
  %50 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %50, i32 0, i32 12
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [10 x i64], [10 x i64]* %51, i64 0, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, %48
  store i64 %56, i64* %54, align 8
  %57 = load double, double* %14, align 8
  ret double %57
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @norm(%struct.domain_type* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.domain_type*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  store %struct.domain_type* %0, %struct.domain_type** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  store i64 %13, i64* %7, align 8
  store i32 100000, i32* %8, align 4
  %14 = load %struct.domain_type*, %struct.domain_type** %4, align 8
  %15 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %14, i32 0, i32 25
  %16 = load %struct.subdomain_type*, %struct.subdomain_type** %15, align 8
  %17 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %16, i64 0
  %18 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %17, i32 0, i32 5
  %19 = load %struct.box_type*, %struct.box_type** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.box_type, %struct.box_type* %19, i64 %21
  %23 = getelementptr inbounds %struct.box_type, %struct.box_type* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %25, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load %struct.domain_type*, %struct.domain_type** %4, align 8
  %30 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %29, i32 0, i32 25
  %31 = load %struct.subdomain_type*, %struct.subdomain_type** %30, align 8
  %32 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %31, i64 0
  %33 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %32, i32 0, i32 5
  %34 = load %struct.box_type*, %struct.box_type** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.box_type, %struct.box_type* %34, i64 %36
  %38 = getelementptr inbounds %struct.box_type, %struct.box_type* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.anon, %struct.anon* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp sge i32 %40, %41
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %10, align 4
  store double 0.000000e+00, double* %12, align 8
  %44 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  %45 = load i64, i64* %7, align 8
  %46 = sub i64 %44, %45
  %47 = load %struct.domain_type*, %struct.domain_type** %4, align 8
  %48 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %48, i32 0, i32 12
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [10 x i64], [10 x i64]* %49, i64 0, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, %46
  store i64 %54, i64* %52, align 8
  %55 = load double, double* %12, align 8
  ret double %55
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @mean(%struct.domain_type* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.domain_type*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store %struct.domain_type* %0, %struct.domain_type** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  store i64 %15, i64* %7, align 8
  store i32 100000, i32* %8, align 4
  %16 = load %struct.domain_type*, %struct.domain_type** %4, align 8
  %17 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %16, i32 0, i32 25
  %18 = load %struct.subdomain_type*, %struct.subdomain_type** %17, align 8
  %19 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %18, i64 0
  %20 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %19, i32 0, i32 5
  %21 = load %struct.box_type*, %struct.box_type** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.box_type, %struct.box_type* %21, i64 %23
  %25 = getelementptr inbounds %struct.box_type, %struct.box_type* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %27, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %9, align 4
  %31 = load %struct.domain_type*, %struct.domain_type** %4, align 8
  %32 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %31, i32 0, i32 25
  %33 = load %struct.subdomain_type*, %struct.subdomain_type** %32, align 8
  %34 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %33, i64 0
  %35 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %34, i32 0, i32 5
  %36 = load %struct.box_type*, %struct.box_type** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.box_type, %struct.box_type* %36, i64 %38
  %40 = getelementptr inbounds %struct.box_type, %struct.box_type* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.anon, %struct.anon* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp sge i32 %42, %43
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %10, align 4
  store double 0.000000e+00, double* %12, align 8
  %46 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  %47 = load i64, i64* %7, align 8
  %48 = sub i64 %46, %47
  %49 = load %struct.domain_type*, %struct.domain_type** %4, align 8
  %50 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %50, i32 0, i32 12
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [10 x i64], [10 x i64]* %51, i64 0, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, %48
  store i64 %56, i64* %54, align 8
  %57 = load %struct.domain_type*, %struct.domain_type** %4, align 8
  %58 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %57, i32 0, i32 13
  %59 = getelementptr inbounds %struct.anon, %struct.anon* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sitofp i32 %60 to double
  %62 = load %struct.domain_type*, %struct.domain_type** %4, align 8
  %63 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %62, i32 0, i32 13
  %64 = getelementptr inbounds %struct.anon, %struct.anon* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sitofp i32 %65 to double
  %67 = fmul double %61, %66
  %68 = load %struct.domain_type*, %struct.domain_type** %4, align 8
  %69 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %68, i32 0, i32 13
  %70 = getelementptr inbounds %struct.anon, %struct.anon* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = sitofp i32 %71 to double
  %73 = fmul double %67, %72
  store double %73, double* %13, align 8
  %74 = load double, double* %12, align 8
  %75 = load double, double* %13, align 8
  %76 = fdiv double %74, %75
  store double %76, double* %14, align 8
  %77 = load double, double* %14, align 8
  ret double %77
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @shift_grid(%struct.domain_type* %0, i32 %1, i32 %2, i32 %3, double %4) #0 {
  %6 = alloca %struct.domain_type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.domain_type* %0, %struct.domain_type** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store double %4, double* %10, align 8
  %16 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  store i64 %16, i64* %11, align 8
  store i32 100000, i32* %12, align 4
  %17 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %18 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %17, i32 0, i32 25
  %19 = load %struct.subdomain_type*, %struct.subdomain_type** %18, align 8
  %20 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %19, i64 0
  %21 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %20, i32 0, i32 5
  %22 = load %struct.box_type*, %struct.box_type** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.box_type, %struct.box_type* %22, i64 %24
  %26 = getelementptr inbounds %struct.box_type, %struct.box_type* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.anon, %struct.anon* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %28, %29
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %13, align 4
  %32 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %33 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %32, i32 0, i32 25
  %34 = load %struct.subdomain_type*, %struct.subdomain_type** %33, align 8
  %35 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %34, i64 0
  %36 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %35, i32 0, i32 5
  %37 = load %struct.box_type*, %struct.box_type** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.box_type, %struct.box_type* %37, i64 %39
  %41 = getelementptr inbounds %struct.box_type, %struct.box_type* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp sge i32 %43, %44
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %14, align 4
  %47 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  %48 = load i64, i64* %11, align 8
  %49 = sub i64 %47, %48
  %50 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %51 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %51, i32 0, i32 12
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [10 x i64], [10 x i64]* %52, i64 0, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %56, %49
  store i64 %57, i64* %55, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @project_cell_to_face(%struct.domain_type* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.domain_type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.domain_type* %0, %struct.domain_type** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  store i64 %16, i64* %11, align 8
  store i32 100000, i32* %12, align 4
  %17 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %18 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %17, i32 0, i32 25
  %19 = load %struct.subdomain_type*, %struct.subdomain_type** %18, align 8
  %20 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %19, i64 0
  %21 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %20, i32 0, i32 5
  %22 = load %struct.box_type*, %struct.box_type** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.box_type, %struct.box_type* %22, i64 %24
  %26 = getelementptr inbounds %struct.box_type, %struct.box_type* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.anon, %struct.anon* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %28, %29
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %13, align 4
  %32 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %33 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %32, i32 0, i32 25
  %34 = load %struct.subdomain_type*, %struct.subdomain_type** %33, align 8
  %35 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %34, i64 0
  %36 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %35, i32 0, i32 5
  %37 = load %struct.box_type*, %struct.box_type** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.box_type, %struct.box_type* %37, i64 %39
  %41 = getelementptr inbounds %struct.box_type, %struct.box_type* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp sge i32 %43, %44
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %14, align 4
  %47 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  %48 = load i64, i64* %11, align 8
  %49 = sub i64 %47, %48
  %50 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %51 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %51, i32 0, i32 12
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [10 x i64], [10 x i64]* %52, i64 0, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %56, %49
  store i64 %57, i64* %55, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @matmul_grids(%struct.domain_type* %0, i32 %1, double* %2, i32* %3, i32* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.domain_type*, align 8
  %10 = alloca i32, align 4
  %11 = alloca double*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca double, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca double*, align 8
  %34 = alloca double*, align 8
  %35 = alloca double, align 8
  %36 = alloca i32, align 4
  store %struct.domain_type* %0, %struct.domain_type** %9, align 8
  store i32 %1, i32* %10, align 4
  store double* %2, double** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 1, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %37 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  store i64 %37, i64* %21, align 8
  store i32 0, i32* %19, align 4
  br label %38

38:                                               ; preds = %286, %8
  %39 = load i32, i32* %19, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %289

42:                                               ; preds = %38
  store i32 0, i32* %20, align 4
  br label %43

43:                                               ; preds = %282, %42
  %44 = load i32, i32* %20, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %285

47:                                               ; preds = %43
  %48 = load i32, i32* %20, align 4
  %49 = load i32, i32* %19, align 4
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %51, label %281

51:                                               ; preds = %47
  store double 0.000000e+00, double* %23, align 8
  store i32 0, i32* %22, align 4
  br label %52

52:                                               ; preds = %250, %51
  %53 = load i32, i32* %22, align 4
  %54 = load %struct.domain_type*, %struct.domain_type** %9, align 8
  %55 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %54, i32 0, i32 19
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %253

58:                                               ; preds = %52
  %59 = load %struct.domain_type*, %struct.domain_type** %9, align 8
  %60 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %59, i32 0, i32 25
  %61 = load %struct.subdomain_type*, %struct.subdomain_type** %60, align 8
  %62 = load i32, i32* %22, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %61, i64 %63
  %65 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %64, i32 0, i32 5
  %66 = load %struct.box_type*, %struct.box_type** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.box_type, %struct.box_type* %66, i64 %68
  %70 = getelementptr inbounds %struct.box_type, %struct.box_type* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %27, align 4
  %72 = load %struct.domain_type*, %struct.domain_type** %9, align 8
  %73 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %72, i32 0, i32 25
  %74 = load %struct.subdomain_type*, %struct.subdomain_type** %73, align 8
  %75 = load i32, i32* %22, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %74, i64 %76
  %78 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %77, i32 0, i32 5
  %79 = load %struct.box_type*, %struct.box_type** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.box_type, %struct.box_type* %79, i64 %81
  %83 = getelementptr inbounds %struct.box_type, %struct.box_type* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %28, align 4
  %85 = load %struct.domain_type*, %struct.domain_type** %9, align 8
  %86 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %85, i32 0, i32 25
  %87 = load %struct.subdomain_type*, %struct.subdomain_type** %86, align 8
  %88 = load i32, i32* %22, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %87, i64 %89
  %91 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %90, i32 0, i32 5
  %92 = load %struct.box_type*, %struct.box_type** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.box_type, %struct.box_type* %92, i64 %94
  %96 = getelementptr inbounds %struct.box_type, %struct.box_type* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %29, align 4
  %98 = load %struct.domain_type*, %struct.domain_type** %9, align 8
  %99 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %98, i32 0, i32 25
  %100 = load %struct.subdomain_type*, %struct.subdomain_type** %99, align 8
  %101 = load i32, i32* %22, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %100, i64 %102
  %104 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %103, i32 0, i32 5
  %105 = load %struct.box_type*, %struct.box_type** %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.box_type, %struct.box_type* %105, i64 %107
  %109 = getelementptr inbounds %struct.box_type, %struct.box_type* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.anon, %struct.anon* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %30, align 4
  %112 = load %struct.domain_type*, %struct.domain_type** %9, align 8
  %113 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %112, i32 0, i32 25
  %114 = load %struct.subdomain_type*, %struct.subdomain_type** %113, align 8
  %115 = load i32, i32* %22, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %114, i64 %116
  %118 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %117, i32 0, i32 5
  %119 = load %struct.box_type*, %struct.box_type** %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.box_type, %struct.box_type* %119, i64 %121
  %123 = getelementptr inbounds %struct.box_type, %struct.box_type* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.anon, %struct.anon* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %31, align 4
  %126 = load %struct.domain_type*, %struct.domain_type** %9, align 8
  %127 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %126, i32 0, i32 25
  %128 = load %struct.subdomain_type*, %struct.subdomain_type** %127, align 8
  %129 = load i32, i32* %22, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %128, i64 %130
  %132 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %131, i32 0, i32 5
  %133 = load %struct.box_type*, %struct.box_type** %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.box_type, %struct.box_type* %133, i64 %135
  %137 = getelementptr inbounds %struct.box_type, %struct.box_type* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.anon, %struct.anon* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %32, align 4
  %140 = load %struct.domain_type*, %struct.domain_type** %9, align 8
  %141 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %140, i32 0, i32 25
  %142 = load %struct.subdomain_type*, %struct.subdomain_type** %141, align 8
  %143 = load i32, i32* %22, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %142, i64 %144
  %146 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %145, i32 0, i32 5
  %147 = load %struct.box_type*, %struct.box_type** %146, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.box_type, %struct.box_type* %147, i64 %149
  %151 = getelementptr inbounds %struct.box_type, %struct.box_type* %150, i32 0, i32 10
  %152 = load double**, double*** %151, align 8
  %153 = load i32*, i32** %12, align 8
  %154 = load i32, i32* %19, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds double*, double** %152, i64 %158
  %160 = load double*, double** %159, align 8
  %161 = load i32, i32* %29, align 4
  %162 = load i32, i32* %27, align 4
  %163 = add nsw i32 1, %162
  %164 = load i32, i32* %28, align 4
  %165 = add nsw i32 %163, %164
  %166 = mul nsw i32 %161, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds double, double* %160, i64 %167
  store double* %168, double** %33, align 8
  %169 = load %struct.domain_type*, %struct.domain_type** %9, align 8
  %170 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %169, i32 0, i32 25
  %171 = load %struct.subdomain_type*, %struct.subdomain_type** %170, align 8
  %172 = load i32, i32* %22, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %171, i64 %173
  %175 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %174, i32 0, i32 5
  %176 = load %struct.box_type*, %struct.box_type** %175, align 8
  %177 = load i32, i32* %10, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.box_type, %struct.box_type* %176, i64 %178
  %180 = getelementptr inbounds %struct.box_type, %struct.box_type* %179, i32 0, i32 10
  %181 = load double**, double*** %180, align 8
  %182 = load i32*, i32** %13, align 8
  %183 = load i32, i32* %20, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds double*, double** %181, i64 %187
  %189 = load double*, double** %188, align 8
  %190 = load i32, i32* %29, align 4
  %191 = load i32, i32* %27, align 4
  %192 = add nsw i32 1, %191
  %193 = load i32, i32* %28, align 4
  %194 = add nsw i32 %192, %193
  %195 = mul nsw i32 %190, %194
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds double, double* %189, i64 %196
  store double* %197, double** %34, align 8
  store double 0.000000e+00, double* %35, align 8
  store i32 0, i32* %26, align 4
  br label %198

198:                                              ; preds = %243, %58
  %199 = load i32, i32* %26, align 4
  %200 = load i32, i32* %30, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %246

202:                                              ; preds = %198
  store i32 0, i32* %25, align 4
  br label %203

203:                                              ; preds = %239, %202
  %204 = load i32, i32* %25, align 4
  %205 = load i32, i32* %31, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %242

207:                                              ; preds = %203
  store i32 0, i32* %24, align 4
  br label %208

208:                                              ; preds = %235, %207
  %209 = load i32, i32* %24, align 4
  %210 = load i32, i32* %32, align 4
  %211 = icmp slt i32 %209, %210
  br i1 %211, label %212, label %238

212:                                              ; preds = %208
  %213 = load i32, i32* %24, align 4
  %214 = load i32, i32* %25, align 4
  %215 = load i32, i32* %27, align 4
  %216 = mul nsw i32 %214, %215
  %217 = add nsw i32 %213, %216
  %218 = load i32, i32* %26, align 4
  %219 = load i32, i32* %28, align 4
  %220 = mul nsw i32 %218, %219
  %221 = add nsw i32 %217, %220
  store i32 %221, i32* %36, align 4
  %222 = load double*, double** %33, align 8
  %223 = load i32, i32* %36, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds double, double* %222, i64 %224
  %226 = load double, double* %225, align 8
  %227 = load double*, double** %34, align 8
  %228 = load i32, i32* %36, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds double, double* %227, i64 %229
  %231 = load double, double* %230, align 8
  %232 = fmul double %226, %231
  %233 = load double, double* %35, align 8
  %234 = fadd double %233, %232
  store double %234, double* %35, align 8
  br label %235

235:                                              ; preds = %212
  %236 = load i32, i32* %24, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %24, align 4
  br label %208

238:                                              ; preds = %208
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %25, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %25, align 4
  br label %203

242:                                              ; preds = %203
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %26, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %26, align 4
  br label %198

246:                                              ; preds = %198
  %247 = load double, double* %35, align 8
  %248 = load double, double* %23, align 8
  %249 = fadd double %248, %247
  store double %249, double* %23, align 8
  br label %250

250:                                              ; preds = %246
  %251 = load i32, i32* %22, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %22, align 4
  br label %52

253:                                              ; preds = %52
  %254 = load double, double* %23, align 8
  %255 = load double*, double** %11, align 8
  %256 = load i32, i32* %19, align 4
  %257 = load i32, i32* %15, align 4
  %258 = mul nsw i32 %256, %257
  %259 = load i32, i32* %20, align 4
  %260 = add nsw i32 %258, %259
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds double, double* %255, i64 %261
  store double %254, double* %262, align 8
  %263 = load i32, i32* %19, align 4
  %264 = load i32, i32* %15, align 4
  %265 = icmp slt i32 %263, %264
  br i1 %265, label %266, label %280

266:                                              ; preds = %253
  %267 = load i32, i32* %20, align 4
  %268 = load i32, i32* %14, align 4
  %269 = icmp slt i32 %267, %268
  br i1 %269, label %270, label %280

270:                                              ; preds = %266
  %271 = load double, double* %23, align 8
  %272 = load double*, double** %11, align 8
  %273 = load i32, i32* %20, align 4
  %274 = load i32, i32* %15, align 4
  %275 = mul nsw i32 %273, %274
  %276 = load i32, i32* %19, align 4
  %277 = add nsw i32 %275, %276
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds double, double* %272, i64 %278
  store double %271, double* %279, align 8
  br label %280

280:                                              ; preds = %270, %266, %253
  br label %281

281:                                              ; preds = %280, %47
  br label %282

282:                                              ; preds = %281
  %283 = load i32, i32* %20, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %20, align 4
  br label %43

285:                                              ; preds = %43
  br label %286

286:                                              ; preds = %285
  %287 = load i32, i32* %19, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %19, align 4
  br label %38

289:                                              ; preds = %38
  %290 = call i64 (...) bitcast (i64 ()* @CycleTime to i64 (...)*)()
  %291 = load i64, i64* %21, align 8
  %292 = sub i64 %290, %291
  %293 = load %struct.domain_type*, %struct.domain_type** %9, align 8
  %294 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %294, i32 0, i32 13
  %296 = load i32, i32* %10, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [10 x i64], [10 x i64]* %295, i64 0, i64 %297
  %299 = load i64, i64* %298, align 8
  %300 = add i64 %299, %292
  store i64 %300, i64* %298, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initialize_problem(%struct.domain_type* %0, i32 %1, double %2, double %3, double %4) #0 {
  %6 = alloca %struct.domain_type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca i32, align 4
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  %37 = alloca double, align 8
  %38 = alloca double, align 8
  %39 = alloca double, align 8
  %40 = alloca double, align 8
  %41 = alloca double, align 8
  %42 = alloca double, align 8
  %43 = alloca double, align 8
  %44 = alloca double, align 8
  %45 = alloca double, align 8
  %46 = alloca double, align 8
  %47 = alloca double, align 8
  %48 = alloca double, align 8
  %49 = alloca double, align 8
  %50 = alloca double, align 8
  %51 = alloca double, align 8
  %52 = alloca double, align 8
  %53 = alloca double, align 8
  store %struct.domain_type* %0, %struct.domain_type** %6, align 8
  store i32 %1, i32* %7, align 4
  store double %2, double* %8, align 8
  store double %3, double* %9, align 8
  store double %4, double* %10, align 8
  store double 0x401921FB54442D18, double* %11, align 8
  store double 1.000000e+00, double* %12, align 8
  store double 1.000000e+01, double* %13, align 8
  %54 = load double, double* %13, align 8
  %55 = load double, double* %12, align 8
  %56 = fsub double %54, %55
  %57 = fdiv double %56, 2.000000e+00
  store double %57, double* %14, align 8
  %58 = load double, double* %13, align 8
  %59 = load double, double* %12, align 8
  %60 = fadd double %58, %59
  %61 = fdiv double %60, 2.000000e+00
  store double %61, double* %15, align 8
  store double 1.000000e+01, double* %16, align 8
  store double -2.000000e+01, double* %17, align 8
  store i32 0, i32* %18, align 4
  br label %62

62:                                               ; preds = %842, %5
  %63 = load i32, i32* %18, align 4
  %64 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %65 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %64, i32 0, i32 19
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %845

68:                                               ; preds = %62
  %69 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %70 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %69, i32 0, i32 25
  %71 = load %struct.subdomain_type*, %struct.subdomain_type** %70, align 8
  %72 = load i32, i32* %18, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %71, i64 %73
  %75 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %74, i32 0, i32 5
  %76 = load %struct.box_type*, %struct.box_type** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.box_type, %struct.box_type* %76, i64 %78
  %80 = getelementptr inbounds %struct.box_type, %struct.box_type* %79, i32 0, i32 10
  %81 = load double**, double*** %80, align 8
  %82 = getelementptr inbounds double*, double** %81, i64 11
  %83 = load double*, double** %82, align 8
  %84 = bitcast double* %83 to i8*
  %85 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %86 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %85, i32 0, i32 25
  %87 = load %struct.subdomain_type*, %struct.subdomain_type** %86, align 8
  %88 = load i32, i32* %18, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %87, i64 %89
  %91 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %90, i32 0, i32 5
  %92 = load %struct.box_type*, %struct.box_type** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.box_type, %struct.box_type* %92, i64 %94
  %96 = getelementptr inbounds %struct.box_type, %struct.box_type* %95, i32 0, i32 7
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = mul i64 %98, 8
  call void @llvm.memset.p0i8.i64(i8* align 8 %84, i8 0, i64 %99, i1 false)
  %100 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %101 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %100, i32 0, i32 25
  %102 = load %struct.subdomain_type*, %struct.subdomain_type** %101, align 8
  %103 = load i32, i32* %18, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %102, i64 %104
  %106 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %105, i32 0, i32 5
  %107 = load %struct.box_type*, %struct.box_type** %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.box_type, %struct.box_type* %107, i64 %109
  %111 = getelementptr inbounds %struct.box_type, %struct.box_type* %110, i32 0, i32 10
  %112 = load double**, double*** %111, align 8
  %113 = getelementptr inbounds double*, double** %112, i64 1
  %114 = load double*, double** %113, align 8
  %115 = bitcast double* %114 to i8*
  %116 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %117 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %116, i32 0, i32 25
  %118 = load %struct.subdomain_type*, %struct.subdomain_type** %117, align 8
  %119 = load i32, i32* %18, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %118, i64 %120
  %122 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %121, i32 0, i32 5
  %123 = load %struct.box_type*, %struct.box_type** %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.box_type, %struct.box_type* %123, i64 %125
  %127 = getelementptr inbounds %struct.box_type, %struct.box_type* %126, i32 0, i32 7
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = mul i64 %129, 8
  call void @llvm.memset.p0i8.i64(i8* align 8 %115, i8 0, i64 %130, i1 false)
  store i32 0, i32* %21, align 4
  br label %131

131:                                              ; preds = %838, %68
  %132 = load i32, i32* %21, align 4
  %133 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %134 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %133, i32 0, i32 25
  %135 = load %struct.subdomain_type*, %struct.subdomain_type** %134, align 8
  %136 = load i32, i32* %18, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %135, i64 %137
  %139 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %138, i32 0, i32 5
  %140 = load %struct.box_type*, %struct.box_type** %139, align 8
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.box_type, %struct.box_type* %140, i64 %142
  %144 = getelementptr inbounds %struct.box_type, %struct.box_type* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.anon, %struct.anon* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = icmp slt i32 %132, %146
  br i1 %147, label %148, label %841

148:                                              ; preds = %131
  store i32 0, i32* %20, align 4
  br label %149

149:                                              ; preds = %834, %148
  %150 = load i32, i32* %20, align 4
  %151 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %152 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %151, i32 0, i32 25
  %153 = load %struct.subdomain_type*, %struct.subdomain_type** %152, align 8
  %154 = load i32, i32* %18, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %153, i64 %155
  %157 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %156, i32 0, i32 5
  %158 = load %struct.box_type*, %struct.box_type** %157, align 8
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.box_type, %struct.box_type* %158, i64 %160
  %162 = getelementptr inbounds %struct.box_type, %struct.box_type* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.anon, %struct.anon* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = icmp slt i32 %150, %164
  br i1 %165, label %166, label %837

166:                                              ; preds = %149
  store i32 0, i32* %19, align 4
  br label %167

167:                                              ; preds = %830, %166
  %168 = load i32, i32* %19, align 4
  %169 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %170 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %169, i32 0, i32 25
  %171 = load %struct.subdomain_type*, %struct.subdomain_type** %170, align 8
  %172 = load i32, i32* %18, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %171, i64 %173
  %175 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %174, i32 0, i32 5
  %176 = load %struct.box_type*, %struct.box_type** %175, align 8
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.box_type, %struct.box_type* %176, i64 %178
  %180 = getelementptr inbounds %struct.box_type, %struct.box_type* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.anon, %struct.anon* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = icmp slt i32 %168, %182
  br i1 %183, label %184, label %833

184:                                              ; preds = %167
  %185 = load double, double* %8, align 8
  %186 = load i32, i32* %19, align 4
  %187 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %188 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %187, i32 0, i32 25
  %189 = load %struct.subdomain_type*, %struct.subdomain_type** %188, align 8
  %190 = load i32, i32* %18, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %189, i64 %191
  %193 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %192, i32 0, i32 5
  %194 = load %struct.box_type*, %struct.box_type** %193, align 8
  %195 = load i32, i32* %7, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.box_type, %struct.box_type* %194, i64 %196
  %198 = getelementptr inbounds %struct.box_type, %struct.box_type* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.anon, %struct.anon* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = add nsw i32 %186, %200
  %202 = sitofp i32 %201 to double
  %203 = fadd double %202, 5.000000e-01
  %204 = fmul double %185, %203
  store double %204, double* %22, align 8
  %205 = load double, double* %8, align 8
  %206 = load i32, i32* %20, align 4
  %207 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %208 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %207, i32 0, i32 25
  %209 = load %struct.subdomain_type*, %struct.subdomain_type** %208, align 8
  %210 = load i32, i32* %18, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %209, i64 %211
  %213 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %212, i32 0, i32 5
  %214 = load %struct.box_type*, %struct.box_type** %213, align 8
  %215 = load i32, i32* %7, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.box_type, %struct.box_type* %214, i64 %216
  %218 = getelementptr inbounds %struct.box_type, %struct.box_type* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.anon, %struct.anon* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = add nsw i32 %206, %220
  %222 = sitofp i32 %221 to double
  %223 = fadd double %222, 5.000000e-01
  %224 = fmul double %205, %223
  store double %224, double* %23, align 8
  %225 = load double, double* %8, align 8
  %226 = load i32, i32* %21, align 4
  %227 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %228 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %227, i32 0, i32 25
  %229 = load %struct.subdomain_type*, %struct.subdomain_type** %228, align 8
  %230 = load i32, i32* %18, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %229, i64 %231
  %233 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %232, i32 0, i32 5
  %234 = load %struct.box_type*, %struct.box_type** %233, align 8
  %235 = load i32, i32* %7, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.box_type, %struct.box_type* %234, i64 %236
  %238 = getelementptr inbounds %struct.box_type, %struct.box_type* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.anon, %struct.anon* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = add nsw i32 %226, %240
  %242 = sitofp i32 %241 to double
  %243 = fadd double %242, 5.000000e-01
  %244 = fmul double %225, %243
  store double %244, double* %24, align 8
  %245 = load i32, i32* %19, align 4
  %246 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %247 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %246, i32 0, i32 25
  %248 = load %struct.subdomain_type*, %struct.subdomain_type** %247, align 8
  %249 = load i32, i32* %18, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %248, i64 %250
  %252 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %251, i32 0, i32 5
  %253 = load %struct.box_type*, %struct.box_type** %252, align 8
  %254 = load i32, i32* %7, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.box_type, %struct.box_type* %253, i64 %255
  %257 = getelementptr inbounds %struct.box_type, %struct.box_type* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 4
  %259 = add nsw i32 %245, %258
  %260 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %261 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %260, i32 0, i32 25
  %262 = load %struct.subdomain_type*, %struct.subdomain_type** %261, align 8
  %263 = load i32, i32* %18, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %262, i64 %264
  %266 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %265, i32 0, i32 5
  %267 = load %struct.box_type*, %struct.box_type** %266, align 8
  %268 = load i32, i32* %7, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.box_type, %struct.box_type* %267, i64 %269
  %271 = getelementptr inbounds %struct.box_type, %struct.box_type* %270, i32 0, i32 5
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* %20, align 4
  %274 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %275 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %274, i32 0, i32 25
  %276 = load %struct.subdomain_type*, %struct.subdomain_type** %275, align 8
  %277 = load i32, i32* %18, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %276, i64 %278
  %280 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %279, i32 0, i32 5
  %281 = load %struct.box_type*, %struct.box_type** %280, align 8
  %282 = load i32, i32* %7, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.box_type, %struct.box_type* %281, i64 %283
  %285 = getelementptr inbounds %struct.box_type, %struct.box_type* %284, i32 0, i32 4
  %286 = load i32, i32* %285, align 4
  %287 = add nsw i32 %273, %286
  %288 = mul nsw i32 %272, %287
  %289 = add nsw i32 %259, %288
  %290 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %291 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %290, i32 0, i32 25
  %292 = load %struct.subdomain_type*, %struct.subdomain_type** %291, align 8
  %293 = load i32, i32* %18, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %292, i64 %294
  %296 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %295, i32 0, i32 5
  %297 = load %struct.box_type*, %struct.box_type** %296, align 8
  %298 = load i32, i32* %7, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.box_type, %struct.box_type* %297, i64 %299
  %301 = getelementptr inbounds %struct.box_type, %struct.box_type* %300, i32 0, i32 6
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* %21, align 4
  %304 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %305 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %304, i32 0, i32 25
  %306 = load %struct.subdomain_type*, %struct.subdomain_type** %305, align 8
  %307 = load i32, i32* %18, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %306, i64 %308
  %310 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %309, i32 0, i32 5
  %311 = load %struct.box_type*, %struct.box_type** %310, align 8
  %312 = load i32, i32* %7, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.box_type, %struct.box_type* %311, i64 %313
  %315 = getelementptr inbounds %struct.box_type, %struct.box_type* %314, i32 0, i32 4
  %316 = load i32, i32* %315, align 4
  %317 = add nsw i32 %303, %316
  %318 = mul nsw i32 %302, %317
  %319 = add nsw i32 %289, %318
  store i32 %319, i32* %25, align 4
  %320 = load double, double* %22, align 8
  %321 = fsub double %320, 5.000000e-01
  %322 = call double @pow(double %321, double 2.000000e+00) #8
  %323 = load double, double* %23, align 8
  %324 = fsub double %323, 5.000000e-01
  %325 = call double @pow(double %324, double 2.000000e+00) #8
  %326 = fadd double %322, %325
  %327 = load double, double* %24, align 8
  %328 = fsub double %327, 5.000000e-01
  %329 = call double @pow(double %328, double 2.000000e+00) #8
  %330 = fadd double %326, %329
  store double %330, double* %26, align 8
  %331 = load double, double* %22, align 8
  %332 = fsub double %331, 5.000000e-01
  %333 = fmul double 2.000000e+00, %332
  store double %333, double* %27, align 8
  %334 = load double, double* %23, align 8
  %335 = fsub double %334, 5.000000e-01
  %336 = fmul double 2.000000e+00, %335
  store double %336, double* %28, align 8
  %337 = load double, double* %24, align 8
  %338 = fsub double %337, 5.000000e-01
  %339 = fmul double 2.000000e+00, %338
  store double %339, double* %29, align 8
  store double 2.000000e+00, double* %30, align 8
  store double 2.000000e+00, double* %31, align 8
  store double 2.000000e+00, double* %32, align 8
  %340 = load double, double* %26, align 8
  %341 = call double @pow(double %340, double 5.000000e-01) #8
  store double %341, double* %33, align 8
  %342 = load double, double* %27, align 8
  %343 = fmul double 5.000000e-01, %342
  %344 = load double, double* %26, align 8
  %345 = call double @pow(double %344, double -5.000000e-01) #8
  %346 = fmul double %343, %345
  store double %346, double* %34, align 8
  %347 = load double, double* %28, align 8
  %348 = fmul double 5.000000e-01, %347
  %349 = load double, double* %26, align 8
  %350 = call double @pow(double %349, double -5.000000e-01) #8
  %351 = fmul double %348, %350
  store double %351, double* %35, align 8
  %352 = load double, double* %29, align 8
  %353 = fmul double 5.000000e-01, %352
  %354 = load double, double* %26, align 8
  %355 = call double @pow(double %354, double -5.000000e-01) #8
  %356 = fmul double %353, %355
  store double %356, double* %36, align 8
  %357 = load double, double* %30, align 8
  %358 = fmul double 5.000000e-01, %357
  %359 = load double, double* %26, align 8
  %360 = call double @pow(double %359, double -5.000000e-01) #8
  %361 = fmul double %358, %360
  %362 = load double, double* %27, align 8
  %363 = fmul double 2.500000e-01, %362
  %364 = load double, double* %27, align 8
  %365 = fmul double %363, %364
  %366 = load double, double* %26, align 8
  %367 = call double @pow(double %366, double -1.500000e+00) #8
  %368 = fmul double %365, %367
  %369 = fsub double %361, %368
  store double %369, double* %37, align 8
  %370 = load double, double* %31, align 8
  %371 = fmul double 5.000000e-01, %370
  %372 = load double, double* %26, align 8
  %373 = call double @pow(double %372, double -5.000000e-01) #8
  %374 = fmul double %371, %373
  %375 = load double, double* %28, align 8
  %376 = fmul double 2.500000e-01, %375
  %377 = load double, double* %28, align 8
  %378 = fmul double %376, %377
  %379 = load double, double* %26, align 8
  %380 = call double @pow(double %379, double -1.500000e+00) #8
  %381 = fmul double %378, %380
  %382 = fsub double %374, %381
  store double %382, double* %38, align 8
  %383 = load double, double* %32, align 8
  %384 = fmul double 5.000000e-01, %383
  %385 = load double, double* %26, align 8
  %386 = call double @pow(double %385, double -5.000000e-01) #8
  %387 = fmul double %384, %386
  %388 = load double, double* %29, align 8
  %389 = fmul double 2.500000e-01, %388
  %390 = load double, double* %29, align 8
  %391 = fmul double %389, %390
  %392 = load double, double* %26, align 8
  %393 = call double @pow(double %392, double -1.500000e+00) #8
  %394 = fmul double %391, %393
  %395 = fsub double %387, %394
  store double %395, double* %39, align 8
  store double 1.000000e+00, double* %40, align 8
  %396 = load double, double* %15, align 8
  %397 = load double, double* %14, align 8
  %398 = load double, double* %16, align 8
  %399 = load double, double* %33, align 8
  %400 = fsub double %399, 2.500000e-01
  %401 = fmul double %398, %400
  %402 = call double @tanh(double %401) #8
  %403 = fmul double %397, %402
  %404 = fadd double %396, %403
  store double %404, double* %41, align 8
  %405 = load double, double* %14, align 8
  %406 = load double, double* %16, align 8
  %407 = fmul double %405, %406
  %408 = load double, double* %34, align 8
  %409 = fmul double %407, %408
  %410 = load double, double* %16, align 8
  %411 = load double, double* %33, align 8
  %412 = fsub double %411, 2.500000e-01
  %413 = fmul double %410, %412
  %414 = call double @tanh(double %413) #8
  %415 = call double @pow(double %414, double 2.000000e+00) #8
  %416 = fsub double 1.000000e+00, %415
  %417 = fmul double %409, %416
  store double %417, double* %42, align 8
  %418 = load double, double* %14, align 8
  %419 = load double, double* %16, align 8
  %420 = fmul double %418, %419
  %421 = load double, double* %35, align 8
  %422 = fmul double %420, %421
  %423 = load double, double* %16, align 8
  %424 = load double, double* %33, align 8
  %425 = fsub double %424, 2.500000e-01
  %426 = fmul double %423, %425
  %427 = call double @tanh(double %426) #8
  %428 = call double @pow(double %427, double 2.000000e+00) #8
  %429 = fsub double 1.000000e+00, %428
  %430 = fmul double %422, %429
  store double %430, double* %43, align 8
  %431 = load double, double* %14, align 8
  %432 = load double, double* %16, align 8
  %433 = fmul double %431, %432
  %434 = load double, double* %36, align 8
  %435 = fmul double %433, %434
  %436 = load double, double* %16, align 8
  %437 = load double, double* %33, align 8
  %438 = fsub double %437, 2.500000e-01
  %439 = fmul double %436, %438
  %440 = call double @tanh(double %439) #8
  %441 = call double @pow(double %440, double 2.000000e+00) #8
  %442 = fsub double 1.000000e+00, %441
  %443 = fmul double %435, %442
  store double %443, double* %44, align 8
  %444 = load double, double* %17, align 8
  %445 = load double, double* %26, align 8
  %446 = fmul double %444, %445
  %447 = call double @exp(double %446) #8
  %448 = load double, double* %11, align 8
  %449 = load double, double* %22, align 8
  %450 = fmul double %448, %449
  %451 = call double @sin(double %450) #8
  %452 = fmul double %447, %451
  %453 = load double, double* %11, align 8
  %454 = load double, double* %23, align 8
  %455 = fmul double %453, %454
  %456 = call double @sin(double %455) #8
  %457 = fmul double %452, %456
  %458 = load double, double* %11, align 8
  %459 = load double, double* %24, align 8
  %460 = fmul double %458, %459
  %461 = call double @sin(double %460) #8
  %462 = fmul double %457, %461
  store double %462, double* %45, align 8
  %463 = load double, double* %17, align 8
  %464 = load double, double* %27, align 8
  %465 = fmul double %463, %464
  %466 = load double, double* %45, align 8
  %467 = fmul double %465, %466
  %468 = load double, double* %11, align 8
  %469 = load double, double* %17, align 8
  %470 = load double, double* %26, align 8
  %471 = fmul double %469, %470
  %472 = call double @exp(double %471) #8
  %473 = fmul double %468, %472
  %474 = load double, double* %11, align 8
  %475 = load double, double* %22, align 8
  %476 = fmul double %474, %475
  %477 = call double @cos(double %476) #8
  %478 = fmul double %473, %477
  %479 = load double, double* %11, align 8
  %480 = load double, double* %23, align 8
  %481 = fmul double %479, %480
  %482 = call double @sin(double %481) #8
  %483 = fmul double %478, %482
  %484 = load double, double* %11, align 8
  %485 = load double, double* %24, align 8
  %486 = fmul double %484, %485
  %487 = call double @sin(double %486) #8
  %488 = fmul double %483, %487
  %489 = fadd double %467, %488
  store double %489, double* %46, align 8
  %490 = load double, double* %17, align 8
  %491 = load double, double* %28, align 8
  %492 = fmul double %490, %491
  %493 = load double, double* %45, align 8
  %494 = fmul double %492, %493
  %495 = load double, double* %11, align 8
  %496 = load double, double* %17, align 8
  %497 = load double, double* %26, align 8
  %498 = fmul double %496, %497
  %499 = call double @exp(double %498) #8
  %500 = fmul double %495, %499
  %501 = load double, double* %11, align 8
  %502 = load double, double* %22, align 8
  %503 = fmul double %501, %502
  %504 = call double @sin(double %503) #8
  %505 = fmul double %500, %504
  %506 = load double, double* %11, align 8
  %507 = load double, double* %23, align 8
  %508 = fmul double %506, %507
  %509 = call double @cos(double %508) #8
  %510 = fmul double %505, %509
  %511 = load double, double* %11, align 8
  %512 = load double, double* %24, align 8
  %513 = fmul double %511, %512
  %514 = call double @sin(double %513) #8
  %515 = fmul double %510, %514
  %516 = fadd double %494, %515
  store double %516, double* %47, align 8
  %517 = load double, double* %17, align 8
  %518 = load double, double* %29, align 8
  %519 = fmul double %517, %518
  %520 = load double, double* %45, align 8
  %521 = fmul double %519, %520
  %522 = load double, double* %11, align 8
  %523 = load double, double* %17, align 8
  %524 = load double, double* %26, align 8
  %525 = fmul double %523, %524
  %526 = call double @exp(double %525) #8
  %527 = fmul double %522, %526
  %528 = load double, double* %11, align 8
  %529 = load double, double* %22, align 8
  %530 = fmul double %528, %529
  %531 = call double @sin(double %530) #8
  %532 = fmul double %527, %531
  %533 = load double, double* %11, align 8
  %534 = load double, double* %23, align 8
  %535 = fmul double %533, %534
  %536 = call double @sin(double %535) #8
  %537 = fmul double %532, %536
  %538 = load double, double* %11, align 8
  %539 = load double, double* %24, align 8
  %540 = fmul double %538, %539
  %541 = call double @cos(double %540) #8
  %542 = fmul double %537, %541
  %543 = fadd double %521, %542
  store double %543, double* %48, align 8
  %544 = load double, double* %17, align 8
  %545 = load double, double* %30, align 8
  %546 = fmul double %544, %545
  %547 = load double, double* %45, align 8
  %548 = fmul double %546, %547
  %549 = load double, double* %17, align 8
  %550 = load double, double* %27, align 8
  %551 = fmul double %549, %550
  %552 = load double, double* %46, align 8
  %553 = fmul double %551, %552
  %554 = fadd double %548, %553
  %555 = load double, double* %17, align 8
  %556 = load double, double* %27, align 8
  %557 = fmul double %555, %556
  %558 = load double, double* %11, align 8
  %559 = fmul double %557, %558
  %560 = load double, double* %17, align 8
  %561 = load double, double* %26, align 8
  %562 = fmul double %560, %561
  %563 = call double @exp(double %562) #8
  %564 = fmul double %559, %563
  %565 = load double, double* %11, align 8
  %566 = load double, double* %22, align 8
  %567 = fmul double %565, %566
  %568 = call double @cos(double %567) #8
  %569 = fmul double %564, %568
  %570 = load double, double* %11, align 8
  %571 = load double, double* %23, align 8
  %572 = fmul double %570, %571
  %573 = call double @sin(double %572) #8
  %574 = fmul double %569, %573
  %575 = load double, double* %11, align 8
  %576 = load double, double* %24, align 8
  %577 = fmul double %575, %576
  %578 = call double @sin(double %577) #8
  %579 = fmul double %574, %578
  %580 = fadd double %554, %579
  %581 = load double, double* %11, align 8
  %582 = load double, double* %11, align 8
  %583 = fmul double %581, %582
  %584 = load double, double* %17, align 8
  %585 = load double, double* %26, align 8
  %586 = fmul double %584, %585
  %587 = call double @exp(double %586) #8
  %588 = fmul double %583, %587
  %589 = load double, double* %11, align 8
  %590 = load double, double* %22, align 8
  %591 = fmul double %589, %590
  %592 = call double @sin(double %591) #8
  %593 = fmul double %588, %592
  %594 = load double, double* %11, align 8
  %595 = load double, double* %23, align 8
  %596 = fmul double %594, %595
  %597 = call double @sin(double %596) #8
  %598 = fmul double %593, %597
  %599 = load double, double* %11, align 8
  %600 = load double, double* %24, align 8
  %601 = fmul double %599, %600
  %602 = call double @sin(double %601) #8
  %603 = fmul double %598, %602
  %604 = fsub double %580, %603
  store double %604, double* %49, align 8
  %605 = load double, double* %17, align 8
  %606 = load double, double* %31, align 8
  %607 = fmul double %605, %606
  %608 = load double, double* %45, align 8
  %609 = fmul double %607, %608
  %610 = load double, double* %17, align 8
  %611 = load double, double* %28, align 8
  %612 = fmul double %610, %611
  %613 = load double, double* %47, align 8
  %614 = fmul double %612, %613
  %615 = fadd double %609, %614
  %616 = load double, double* %17, align 8
  %617 = load double, double* %28, align 8
  %618 = fmul double %616, %617
  %619 = load double, double* %11, align 8
  %620 = fmul double %618, %619
  %621 = load double, double* %17, align 8
  %622 = load double, double* %26, align 8
  %623 = fmul double %621, %622
  %624 = call double @exp(double %623) #8
  %625 = fmul double %620, %624
  %626 = load double, double* %11, align 8
  %627 = load double, double* %22, align 8
  %628 = fmul double %626, %627
  %629 = call double @sin(double %628) #8
  %630 = fmul double %625, %629
  %631 = load double, double* %11, align 8
  %632 = load double, double* %23, align 8
  %633 = fmul double %631, %632
  %634 = call double @cos(double %633) #8
  %635 = fmul double %630, %634
  %636 = load double, double* %11, align 8
  %637 = load double, double* %24, align 8
  %638 = fmul double %636, %637
  %639 = call double @sin(double %638) #8
  %640 = fmul double %635, %639
  %641 = fadd double %615, %640
  %642 = load double, double* %11, align 8
  %643 = load double, double* %11, align 8
  %644 = fmul double %642, %643
  %645 = load double, double* %17, align 8
  %646 = load double, double* %26, align 8
  %647 = fmul double %645, %646
  %648 = call double @exp(double %647) #8
  %649 = fmul double %644, %648
  %650 = load double, double* %11, align 8
  %651 = load double, double* %22, align 8
  %652 = fmul double %650, %651
  %653 = call double @sin(double %652) #8
  %654 = fmul double %649, %653
  %655 = load double, double* %11, align 8
  %656 = load double, double* %23, align 8
  %657 = fmul double %655, %656
  %658 = call double @sin(double %657) #8
  %659 = fmul double %654, %658
  %660 = load double, double* %11, align 8
  %661 = load double, double* %24, align 8
  %662 = fmul double %660, %661
  %663 = call double @sin(double %662) #8
  %664 = fmul double %659, %663
  %665 = fsub double %641, %664
  store double %665, double* %50, align 8
  %666 = load double, double* %17, align 8
  %667 = load double, double* %32, align 8
  %668 = fmul double %666, %667
  %669 = load double, double* %45, align 8
  %670 = fmul double %668, %669
  %671 = load double, double* %17, align 8
  %672 = load double, double* %29, align 8
  %673 = fmul double %671, %672
  %674 = load double, double* %48, align 8
  %675 = fmul double %673, %674
  %676 = fadd double %670, %675
  %677 = load double, double* %17, align 8
  %678 = load double, double* %29, align 8
  %679 = fmul double %677, %678
  %680 = load double, double* %11, align 8
  %681 = fmul double %679, %680
  %682 = load double, double* %17, align 8
  %683 = load double, double* %26, align 8
  %684 = fmul double %682, %683
  %685 = call double @exp(double %684) #8
  %686 = fmul double %681, %685
  %687 = load double, double* %11, align 8
  %688 = load double, double* %22, align 8
  %689 = fmul double %687, %688
  %690 = call double @sin(double %689) #8
  %691 = fmul double %686, %690
  %692 = load double, double* %11, align 8
  %693 = load double, double* %23, align 8
  %694 = fmul double %692, %693
  %695 = call double @sin(double %694) #8
  %696 = fmul double %691, %695
  %697 = load double, double* %11, align 8
  %698 = load double, double* %24, align 8
  %699 = fmul double %697, %698
  %700 = call double @cos(double %699) #8
  %701 = fmul double %696, %700
  %702 = fadd double %676, %701
  %703 = load double, double* %11, align 8
  %704 = load double, double* %11, align 8
  %705 = fmul double %703, %704
  %706 = load double, double* %17, align 8
  %707 = load double, double* %26, align 8
  %708 = fmul double %706, %707
  %709 = call double @exp(double %708) #8
  %710 = fmul double %705, %709
  %711 = load double, double* %11, align 8
  %712 = load double, double* %22, align 8
  %713 = fmul double %711, %712
  %714 = call double @sin(double %713) #8
  %715 = fmul double %710, %714
  %716 = load double, double* %11, align 8
  %717 = load double, double* %23, align 8
  %718 = fmul double %716, %717
  %719 = call double @sin(double %718) #8
  %720 = fmul double %715, %719
  %721 = load double, double* %11, align 8
  %722 = load double, double* %24, align 8
  %723 = fmul double %721, %722
  %724 = call double @sin(double %723) #8
  %725 = fmul double %720, %724
  %726 = fsub double %702, %725
  store double %726, double* %51, align 8
  %727 = load double, double* %9, align 8
  %728 = load double, double* %40, align 8
  %729 = fmul double %727, %728
  %730 = load double, double* %45, align 8
  %731 = fmul double %729, %730
  %732 = load double, double* %10, align 8
  %733 = load double, double* %42, align 8
  %734 = load double, double* %46, align 8
  %735 = fmul double %733, %734
  %736 = load double, double* %43, align 8
  %737 = load double, double* %47, align 8
  %738 = fmul double %736, %737
  %739 = fadd double %735, %738
  %740 = load double, double* %44, align 8
  %741 = load double, double* %48, align 8
  %742 = fmul double %740, %741
  %743 = fadd double %739, %742
  %744 = load double, double* %41, align 8
  %745 = load double, double* %49, align 8
  %746 = load double, double* %50, align 8
  %747 = fadd double %745, %746
  %748 = load double, double* %51, align 8
  %749 = fadd double %747, %748
  %750 = fmul double %744, %749
  %751 = fadd double %743, %750
  %752 = fmul double %732, %751
  %753 = fsub double %731, %752
  store double %753, double* %52, align 8
  %754 = load double, double* %40, align 8
  %755 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %756 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %755, i32 0, i32 25
  %757 = load %struct.subdomain_type*, %struct.subdomain_type** %756, align 8
  %758 = load i32, i32* %18, align 4
  %759 = sext i32 %758 to i64
  %760 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %757, i64 %759
  %761 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %760, i32 0, i32 5
  %762 = load %struct.box_type*, %struct.box_type** %761, align 8
  %763 = load i32, i32* %7, align 4
  %764 = sext i32 %763 to i64
  %765 = getelementptr inbounds %struct.box_type, %struct.box_type* %762, i64 %764
  %766 = getelementptr inbounds %struct.box_type, %struct.box_type* %765, i32 0, i32 10
  %767 = load double**, double*** %766, align 8
  %768 = getelementptr inbounds double*, double** %767, i64 2
  %769 = load double*, double** %768, align 8
  %770 = load i32, i32* %25, align 4
  %771 = sext i32 %770 to i64
  %772 = getelementptr inbounds double, double* %769, i64 %771
  store double %754, double* %772, align 8
  %773 = load double, double* %41, align 8
  %774 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %775 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %774, i32 0, i32 25
  %776 = load %struct.subdomain_type*, %struct.subdomain_type** %775, align 8
  %777 = load i32, i32* %18, align 4
  %778 = sext i32 %777 to i64
  %779 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %776, i64 %778
  %780 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %779, i32 0, i32 5
  %781 = load %struct.box_type*, %struct.box_type** %780, align 8
  %782 = load i32, i32* %7, align 4
  %783 = sext i32 %782 to i64
  %784 = getelementptr inbounds %struct.box_type, %struct.box_type* %781, i64 %783
  %785 = getelementptr inbounds %struct.box_type, %struct.box_type* %784, i32 0, i32 10
  %786 = load double**, double*** %785, align 8
  %787 = getelementptr inbounds double*, double** %786, i64 3
  %788 = load double*, double** %787, align 8
  %789 = load i32, i32* %25, align 4
  %790 = sext i32 %789 to i64
  %791 = getelementptr inbounds double, double* %788, i64 %790
  store double %773, double* %791, align 8
  %792 = load double, double* %45, align 8
  %793 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %794 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %793, i32 0, i32 25
  %795 = load %struct.subdomain_type*, %struct.subdomain_type** %794, align 8
  %796 = load i32, i32* %18, align 4
  %797 = sext i32 %796 to i64
  %798 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %795, i64 %797
  %799 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %798, i32 0, i32 5
  %800 = load %struct.box_type*, %struct.box_type** %799, align 8
  %801 = load i32, i32* %7, align 4
  %802 = sext i32 %801 to i64
  %803 = getelementptr inbounds %struct.box_type, %struct.box_type* %800, i64 %802
  %804 = getelementptr inbounds %struct.box_type, %struct.box_type* %803, i32 0, i32 10
  %805 = load double**, double*** %804, align 8
  %806 = getelementptr inbounds double*, double** %805, i64 11
  %807 = load double*, double** %806, align 8
  %808 = load i32, i32* %25, align 4
  %809 = sext i32 %808 to i64
  %810 = getelementptr inbounds double, double* %807, i64 %809
  store double %792, double* %810, align 8
  %811 = load double, double* %52, align 8
  %812 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %813 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %812, i32 0, i32 25
  %814 = load %struct.subdomain_type*, %struct.subdomain_type** %813, align 8
  %815 = load i32, i32* %18, align 4
  %816 = sext i32 %815 to i64
  %817 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %814, i64 %816
  %818 = getelementptr inbounds %struct.subdomain_type, %struct.subdomain_type* %817, i32 0, i32 5
  %819 = load %struct.box_type*, %struct.box_type** %818, align 8
  %820 = load i32, i32* %7, align 4
  %821 = sext i32 %820 to i64
  %822 = getelementptr inbounds %struct.box_type, %struct.box_type* %819, i64 %821
  %823 = getelementptr inbounds %struct.box_type, %struct.box_type* %822, i32 0, i32 10
  %824 = load double**, double*** %823, align 8
  %825 = getelementptr inbounds double*, double** %824, i64 1
  %826 = load double*, double** %825, align 8
  %827 = load i32, i32* %25, align 4
  %828 = sext i32 %827 to i64
  %829 = getelementptr inbounds double, double* %826, i64 %828
  store double %811, double* %829, align 8
  br label %830

830:                                              ; preds = %184
  %831 = load i32, i32* %19, align 4
  %832 = add nsw i32 %831, 1
  store i32 %832, i32* %19, align 4
  br label %167

833:                                              ; preds = %167
  br label %834

834:                                              ; preds = %833
  %835 = load i32, i32* %20, align 4
  %836 = add nsw i32 %835, 1
  store i32 %836, i32* %20, align 4
  br label %149

837:                                              ; preds = %149
  br label %838

838:                                              ; preds = %837
  %839 = load i32, i32* %21, align 4
  %840 = add nsw i32 %839, 1
  store i32 %840, i32* %21, align 4
  br label %131

841:                                              ; preds = %131
  br label %842

842:                                              ; preds = %841
  %843 = load i32, i32* %18, align 4
  %844 = add nsw i32 %843, 1
  store i32 %844, i32* %18, align 4
  br label %62

845:                                              ; preds = %62
  %846 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %847 = load i32, i32* %7, align 4
  %848 = call double @mean(%struct.domain_type* %846, i32 %847, i32 1)
  store double %848, double* %53, align 8
  %849 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %850 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %849, i32 0, i32 18
  %851 = load i32, i32* %850, align 4
  %852 = icmp eq i32 %851, 0
  br i1 %852, label %853, label %858

853:                                              ; preds = %845
  %854 = load double, double* %53, align 8
  %855 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.50, i64 0, i64 0), double %854)
  %856 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %857 = call i32 @fflush(%struct._IO_FILE* %856)
  br label %858

858:                                              ; preds = %853, %845
  %859 = load double, double* %9, align 8
  %860 = fcmp une double %859, 0.000000e+00
  br i1 %860, label %861, label %872

861:                                              ; preds = %858
  %862 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %863 = load i32, i32* %7, align 4
  %864 = load double, double* %53, align 8
  %865 = fneg double %864
  call void @shift_grid(%struct.domain_type* %862, i32 %863, i32 1, i32 1, double %865)
  %866 = load %struct.domain_type*, %struct.domain_type** %6, align 8
  %867 = load i32, i32* %7, align 4
  %868 = load double, double* %53, align 8
  %869 = fneg double %868
  %870 = load double, double* %9, align 8
  %871 = fdiv double %869, %870
  call void @shift_grid(%struct.domain_type* %866, i32 %867, i32 11, i32 11, double %871)
  br label %872

872:                                              ; preds = %861, %858
  ret void
}

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #1

; Function Attrs: nounwind
declare dso_local double @tanh(double) #1

; Function Attrs: nounwind
declare dso_local double @exp(double) #1

; Function Attrs: nounwind
declare dso_local double @sin(double) #1

; Function Attrs: nounwind
declare dso_local double @cos(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @TelescopingCABiCGStab(%struct.domain_type* %0, i32 %1, i32 %2, i32 %3, double %4, double %5, double %6) #0 {
  %8 = alloca %struct.domain_type*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca [17 x double], align 16
  %16 = alloca [17 x double], align 16
  %17 = alloca [17 x double], align 16
  %18 = alloca [17 x [17 x double]], align 16
  %19 = alloca [17 x [17 x double]], align 16
  %20 = alloca [17 x double], align 16
  %21 = alloca [17 x double], align 16
  %22 = alloca [17 x double], align 16
  %23 = alloca [17 x double], align 16
  %24 = alloca [17 x double], align 16
  %25 = alloca [17 x double], align 16
  %26 = alloca [17 x [17 x double]], align 16
  %27 = alloca [17 x double], align 16
  %28 = alloca [306 x double], align 16
  %29 = alloca [18 x i32], align 16
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca double, align 8
  %39 = alloca double, align 8
  %40 = alloca double, align 8
  %41 = alloca double, align 8
  %42 = alloca double, align 8
  %43 = alloca double, align 8
  %44 = alloca double, align 8
  %45 = alloca double, align 8
  %46 = alloca double, align 8
  %47 = alloca double, align 8
  %48 = alloca double, align 8
  %49 = alloca double, align 8
  %50 = alloca double, align 8
  %51 = alloca i32, align 4
  %52 = alloca i32*, align 8
  %53 = alloca i32*, align 8
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca double, align 8
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca double, align 8
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca double, align 8
  %63 = alloca i32, align 4
  %64 = alloca i32, align 4
  %65 = alloca double, align 8
  %66 = alloca i32, align 4
  %67 = alloca i32, align 4
  %68 = alloca double, align 8
  %69 = alloca i32, align 4
  %70 = alloca i32, align 4
  %71 = alloca double, align 8
  store %struct.domain_type* %0, %struct.domain_type** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store double %4, double* %12, align 8
  store double %5, double* %13, align 8
  store double %6, double* %14, align 8
  store i32 200, i32* %30, align 4
  store i32 0, i32* %31, align 4
  store i32 0, i32* %36, align 4
  store i32 0, i32* %37, align 4
  %72 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load double, double* %12, align 8
  %77 = load double, double* %13, align 8
  call void @residual(%struct.domain_type* %72, i32 %73, i32 12, i32 %74, i32 %75, double %76, double %77)
  %78 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %79 = load i32, i32* %9, align 4
  call void @scale_grid(%struct.domain_type* %78, i32 %79, i32 13, double 1.000000e+00, i32 12)
  %80 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %81 = load i32, i32* %9, align 4
  call void @scale_grid(%struct.domain_type* %80, i32 %81, i32 14, double 1.000000e+00, i32 12)
  %82 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call double @norm(%struct.domain_type* %82, i32 %83, i32 12)
  store double %84, double* %50, align 8
  %85 = load double, double* %50, align 8
  %86 = fcmp oeq double %85, 0.000000e+00
  br i1 %86, label %87, label %88

87:                                               ; preds = %7
  store i32 1, i32* %37, align 4
  br label %88

88:                                               ; preds = %87, %7
  %89 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call double @dot(%struct.domain_type* %89, i32 %90, i32 13, i32 12)
  store double %91, double* %43, align 8
  %92 = load double, double* %43, align 8
  %93 = fcmp oeq double %92, 0.000000e+00
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  store i32 1, i32* %37, align 4
  br label %95

95:                                               ; preds = %94, %88
  %96 = load double, double* %43, align 8
  %97 = call double @sqrt(double %96) #8
  store double %97, double* %46, align 8
  store i32 1, i32* %51, align 4
  br label %98

98:                                               ; preds = %1120, %95
  %99 = load i32, i32* %31, align 4
  %100 = load i32, i32* %30, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %98
  %103 = load i32, i32* %36, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %37, align 4
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  br label %109

109:                                              ; preds = %105, %102, %98
  %110 = phi i1 [ false, %102 ], [ false, %98 ], [ %108, %105 ]
  br i1 %110, label %111, label %1121

111:                                              ; preds = %109
  %112 = getelementptr inbounds [17 x double], [17 x double]* %20, i64 0, i64 0
  %113 = load i32, i32* %51, align 4
  %114 = mul nsw i32 4, %113
  %115 = add nsw i32 %114, 1
  call void @__zero(double* %112, i32 %115)
  %116 = getelementptr inbounds [17 x double], [17 x double]* %21, i64 0, i64 0
  %117 = load i32, i32* %51, align 4
  %118 = mul nsw i32 4, %117
  %119 = add nsw i32 %118, 1
  call void @__zero(double* %116, i32 %119)
  %120 = getelementptr inbounds [17 x double], [17 x double]* %22, i64 0, i64 0
  %121 = load i32, i32* %51, align 4
  %122 = mul nsw i32 4, %121
  %123 = add nsw i32 %122, 1
  call void @__zero(double* %120, i32 %123)
  %124 = getelementptr inbounds [17 x double], [17 x double]* %23, i64 0, i64 0
  %125 = load i32, i32* %51, align 4
  %126 = mul nsw i32 4, %125
  %127 = add nsw i32 %126, 1
  call void @__zero(double* %124, i32 %127)
  %128 = getelementptr inbounds [17 x double], [17 x double]* %24, i64 0, i64 0
  %129 = load i32, i32* %51, align 4
  %130 = mul nsw i32 4, %129
  %131 = add nsw i32 %130, 1
  call void @__zero(double* %128, i32 %131)
  %132 = getelementptr inbounds [17 x double], [17 x double]* %25, i64 0, i64 0
  %133 = load i32, i32* %51, align 4
  %134 = mul nsw i32 4, %133
  %135 = add nsw i32 %134, 1
  call void @__zero(double* %132, i32 %135)
  %136 = getelementptr inbounds [17 x double], [17 x double]* %15, i64 0, i64 0
  %137 = load i32, i32* %51, align 4
  %138 = mul nsw i32 4, %137
  %139 = add nsw i32 %138, 1
  call void @__zero(double* %136, i32 %139)
  %140 = getelementptr inbounds [17 x double], [17 x double]* %16, i64 0, i64 0
  %141 = load i32, i32* %51, align 4
  %142 = mul nsw i32 4, %141
  %143 = add nsw i32 %142, 1
  call void @__zero(double* %140, i32 %143)
  %144 = getelementptr inbounds [17 x double], [17 x double]* %17, i64 0, i64 0
  %145 = load i32, i32* %51, align 4
  %146 = mul nsw i32 4, %145
  %147 = add nsw i32 %146, 1
  call void @__zero(double* %144, i32 %147)
  store i32 0, i32* %33, align 4
  br label %148

148:                                              ; preds = %172, %111
  %149 = load i32, i32* %33, align 4
  %150 = load i32, i32* %51, align 4
  %151 = mul nsw i32 4, %150
  %152 = add nsw i32 %151, 1
  %153 = icmp slt i32 %149, %152
  br i1 %153, label %154, label %175

154:                                              ; preds = %148
  store i32 0, i32* %34, align 4
  br label %155

155:                                              ; preds = %168, %154
  %156 = load i32, i32* %34, align 4
  %157 = load i32, i32* %51, align 4
  %158 = mul nsw i32 4, %157
  %159 = add nsw i32 %158, 1
  %160 = icmp slt i32 %156, %159
  br i1 %160, label %161, label %171

161:                                              ; preds = %155
  %162 = load i32, i32* %33, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [17 x [17 x double]], [17 x [17 x double]]* %18, i64 0, i64 %163
  %165 = load i32, i32* %34, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [17 x double], [17 x double]* %164, i64 0, i64 %166
  store double 0.000000e+00, double* %167, align 8
  br label %168

168:                                              ; preds = %161
  %169 = load i32, i32* %34, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %34, align 4
  br label %155

171:                                              ; preds = %155
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %33, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %33, align 4
  br label %148

175:                                              ; preds = %148
  store i32 0, i32* %33, align 4
  br label %176

176:                                              ; preds = %200, %175
  %177 = load i32, i32* %33, align 4
  %178 = load i32, i32* %51, align 4
  %179 = mul nsw i32 4, %178
  %180 = add nsw i32 %179, 1
  %181 = icmp slt i32 %177, %180
  br i1 %181, label %182, label %203

182:                                              ; preds = %176
  store i32 0, i32* %34, align 4
  br label %183

183:                                              ; preds = %196, %182
  %184 = load i32, i32* %34, align 4
  %185 = load i32, i32* %51, align 4
  %186 = mul nsw i32 4, %185
  %187 = add nsw i32 %186, 1
  %188 = icmp slt i32 %184, %187
  br i1 %188, label %189, label %199

189:                                              ; preds = %183
  %190 = load i32, i32* %33, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [17 x [17 x double]], [17 x [17 x double]]* %19, i64 0, i64 %191
  %193 = load i32, i32* %34, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [17 x double], [17 x double]* %192, i64 0, i64 %194
  store double 0.000000e+00, double* %195, align 8
  br label %196

196:                                              ; preds = %189
  %197 = load i32, i32* %34, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %34, align 4
  br label %183

199:                                              ; preds = %183
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %33, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %33, align 4
  br label %176

203:                                              ; preds = %176
  store i32 0, i32* %33, align 4
  br label %204

204:                                              ; preds = %217, %203
  %205 = load i32, i32* %33, align 4
  %206 = load i32, i32* %51, align 4
  %207 = mul nsw i32 2, %206
  %208 = icmp slt i32 %205, %207
  br i1 %208, label %209, label %220

209:                                              ; preds = %204
  %210 = load i32, i32* %33, align 4
  %211 = add nsw i32 %210, 1
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [17 x [17 x double]], [17 x [17 x double]]* %18, i64 0, i64 %212
  %214 = load i32, i32* %33, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [17 x double], [17 x double]* %213, i64 0, i64 %215
  store double 1.000000e+00, double* %216, align 8
  br label %217

217:                                              ; preds = %209
  %218 = load i32, i32* %33, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %33, align 4
  br label %204

220:                                              ; preds = %204
  %221 = load i32, i32* %51, align 4
  %222 = mul nsw i32 2, %221
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %33, align 4
  br label %224

224:                                              ; preds = %237, %220
  %225 = load i32, i32* %33, align 4
  %226 = load i32, i32* %51, align 4
  %227 = mul nsw i32 4, %226
  %228 = icmp slt i32 %225, %227
  br i1 %228, label %229, label %240

229:                                              ; preds = %224
  %230 = load i32, i32* %33, align 4
  %231 = add nsw i32 %230, 1
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [17 x [17 x double]], [17 x [17 x double]]* %18, i64 0, i64 %232
  %234 = load i32, i32* %33, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [17 x double], [17 x double]* %233, i64 0, i64 %235
  store double 1.000000e+00, double* %236, align 8
  br label %237

237:                                              ; preds = %229
  %238 = load i32, i32* %33, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %33, align 4
  br label %224

240:                                              ; preds = %224
  store i32 0, i32* %33, align 4
  br label %241

241:                                              ; preds = %255, %240
  %242 = load i32, i32* %33, align 4
  %243 = load i32, i32* %51, align 4
  %244 = mul nsw i32 2, %243
  %245 = sub nsw i32 %244, 1
  %246 = icmp slt i32 %242, %245
  br i1 %246, label %247, label %258

247:                                              ; preds = %241
  %248 = load i32, i32* %33, align 4
  %249 = add nsw i32 %248, 2
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [17 x [17 x double]], [17 x [17 x double]]* %19, i64 0, i64 %250
  %252 = load i32, i32* %33, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [17 x double], [17 x double]* %251, i64 0, i64 %253
  store double 1.000000e+00, double* %254, align 8
  br label %255

255:                                              ; preds = %247
  %256 = load i32, i32* %33, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %33, align 4
  br label %241

258:                                              ; preds = %241
  %259 = load i32, i32* %51, align 4
  %260 = mul nsw i32 2, %259
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %33, align 4
  br label %262

262:                                              ; preds = %276, %258
  %263 = load i32, i32* %33, align 4
  %264 = load i32, i32* %51, align 4
  %265 = mul nsw i32 4, %264
  %266 = sub nsw i32 %265, 1
  %267 = icmp slt i32 %263, %266
  br i1 %267, label %268, label %279

268:                                              ; preds = %262
  %269 = load i32, i32* %33, align 4
  %270 = add nsw i32 %269, 2
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [17 x [17 x double]], [17 x [17 x double]]* %19, i64 0, i64 %271
  %273 = load i32, i32* %33, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [17 x double], [17 x double]* %272, i64 0, i64 %274
  store double 1.000000e+00, double* %275, align 8
  br label %276

276:                                              ; preds = %268
  %277 = load i32, i32* %33, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %33, align 4
  br label %262

279:                                              ; preds = %262
  store i32 0, i32* %33, align 4
  br label %280

280:                                              ; preds = %292, %279
  %281 = load i32, i32* %33, align 4
  %282 = load i32, i32* %51, align 4
  %283 = mul nsw i32 4, %282
  %284 = add nsw i32 %283, 1
  %285 = icmp slt i32 %281, %284
  br i1 %285, label %286, label %295

286:                                              ; preds = %280
  %287 = load i32, i32* %33, align 4
  %288 = add nsw i32 15, %287
  %289 = load i32, i32* %33, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [18 x i32], [18 x i32]* %29, i64 0, i64 %290
  store i32 %288, i32* %291, align 4
  br label %292

292:                                              ; preds = %286
  %293 = load i32, i32* %33, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %33, align 4
  br label %280

295:                                              ; preds = %280
  %296 = load i32, i32* %51, align 4
  %297 = mul nsw i32 4, %296
  %298 = add nsw i32 %297, 1
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [18 x i32], [18 x i32]* %29, i64 0, i64 %299
  store i32 12, i32* %300, align 4
  %301 = getelementptr inbounds [18 x i32], [18 x i32]* %29, i64 0, i64 0
  %302 = getelementptr inbounds i32, i32* %301, i64 0
  store i32* %302, i32** %52, align 8
  %303 = getelementptr inbounds [18 x i32], [18 x i32]* %29, i64 0, i64 0
  %304 = load i32, i32* %51, align 4
  %305 = mul nsw i32 2, %304
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %303, i64 %306
  %308 = getelementptr inbounds i32, i32* %307, i64 1
  store i32* %308, i32** %53, align 8
  %309 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %310 = load i32, i32* %9, align 4
  %311 = load i32*, i32** %52, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 0
  %313 = load i32, i32* %312, align 4
  call void @scale_grid(%struct.domain_type* %309, i32 %310, i32 %313, double 1.000000e+00, i32 14)
  store i32 1, i32* %32, align 4
  br label %314

314:                                              ; preds = %338, %295
  %315 = load i32, i32* %32, align 4
  %316 = load i32, i32* %51, align 4
  %317 = mul nsw i32 2, %316
  %318 = add nsw i32 %317, 1
  %319 = icmp slt i32 %315, %318
  br i1 %319, label %320, label %341

320:                                              ; preds = %314
  %321 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %322 = load i32, i32* %9, align 4
  %323 = load i32*, i32** %52, align 8
  %324 = load i32, i32* %32, align 4
  %325 = sub nsw i32 %324, 1
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %323, i64 %326
  %328 = load i32, i32* %327, align 4
  call void @mul_grids(%struct.domain_type* %321, i32 %322, i32 10, double 1.000000e+00, i32 4, i32 %328)
  %329 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %330 = load i32, i32* %9, align 4
  %331 = load i32*, i32** %52, align 8
  %332 = load i32, i32* %32, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  %335 = load i32, i32* %334, align 4
  %336 = load double, double* %12, align 8
  %337 = load double, double* %13, align 8
  call void @apply_op(%struct.domain_type* %329, i32 %330, i32 %335, i32 10, double %336, double %337)
  br label %338

338:                                              ; preds = %320
  %339 = load i32, i32* %32, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %32, align 4
  br label %314

341:                                              ; preds = %314
  %342 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %343 = load i32, i32* %9, align 4
  %344 = load i32*, i32** %53, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 0
  %346 = load i32, i32* %345, align 4
  call void @scale_grid(%struct.domain_type* %342, i32 %343, i32 %346, double 1.000000e+00, i32 13)
  store i32 1, i32* %32, align 4
  br label %347

347:                                              ; preds = %370, %341
  %348 = load i32, i32* %32, align 4
  %349 = load i32, i32* %51, align 4
  %350 = mul nsw i32 2, %349
  %351 = icmp slt i32 %348, %350
  br i1 %351, label %352, label %373

352:                                              ; preds = %347
  %353 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %354 = load i32, i32* %9, align 4
  %355 = load i32*, i32** %53, align 8
  %356 = load i32, i32* %32, align 4
  %357 = sub nsw i32 %356, 1
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32, i32* %355, i64 %358
  %360 = load i32, i32* %359, align 4
  call void @mul_grids(%struct.domain_type* %353, i32 %354, i32 10, double 1.000000e+00, i32 4, i32 %360)
  %361 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %362 = load i32, i32* %9, align 4
  %363 = load i32*, i32** %53, align 8
  %364 = load i32, i32* %32, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %363, i64 %365
  %367 = load i32, i32* %366, align 4
  %368 = load double, double* %12, align 8
  %369 = load double, double* %13, align 8
  call void @apply_op(%struct.domain_type* %361, i32 %362, i32 %367, i32 10, double %368, double %369)
  br label %370

370:                                              ; preds = %352
  %371 = load i32, i32* %32, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %32, align 4
  br label %347

373:                                              ; preds = %347
  %374 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %375 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %374, i32 0, i32 4
  %376 = load i32, i32* %375, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %375, align 4
  %378 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %379 = load i32, i32* %9, align 4
  %380 = getelementptr inbounds [306 x double], [306 x double]* %28, i64 0, i64 0
  %381 = getelementptr inbounds [18 x i32], [18 x i32]* %29, i64 0, i64 0
  %382 = getelementptr inbounds [18 x i32], [18 x i32]* %29, i64 0, i64 0
  %383 = load i32, i32* %51, align 4
  %384 = mul nsw i32 4, %383
  %385 = add nsw i32 %384, 1
  %386 = load i32, i32* %51, align 4
  %387 = mul nsw i32 4, %386
  %388 = add nsw i32 %387, 2
  call void @matmul_grids(%struct.domain_type* %378, i32 %379, double* %380, i32* %381, i32* %382, i32 %385, i32 %388, i32 1)
  store i32 0, i32* %33, align 4
  store i32 0, i32* %35, align 4
  br label %389

389:                                              ; preds = %426, %373
  %390 = load i32, i32* %33, align 4
  %391 = load i32, i32* %51, align 4
  %392 = mul nsw i32 4, %391
  %393 = add nsw i32 %392, 1
  %394 = icmp slt i32 %390, %393
  br i1 %394, label %395, label %429

395:                                              ; preds = %389
  store i32 0, i32* %34, align 4
  br label %396

396:                                              ; preds = %414, %395
  %397 = load i32, i32* %34, align 4
  %398 = load i32, i32* %51, align 4
  %399 = mul nsw i32 4, %398
  %400 = add nsw i32 %399, 1
  %401 = icmp slt i32 %397, %400
  br i1 %401, label %402, label %417

402:                                              ; preds = %396
  %403 = load i32, i32* %35, align 4
  %404 = add nsw i32 %403, 1
  store i32 %404, i32* %35, align 4
  %405 = sext i32 %403 to i64
  %406 = getelementptr inbounds [306 x double], [306 x double]* %28, i64 0, i64 %405
  %407 = load double, double* %406, align 8
  %408 = load i32, i32* %33, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds [17 x [17 x double]], [17 x [17 x double]]* %26, i64 0, i64 %409
  %411 = load i32, i32* %34, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds [17 x double], [17 x double]* %410, i64 0, i64 %412
  store double %407, double* %413, align 8
  br label %414

414:                                              ; preds = %402
  %415 = load i32, i32* %34, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %34, align 4
  br label %396

417:                                              ; preds = %396
  %418 = load i32, i32* %35, align 4
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %35, align 4
  %420 = sext i32 %418 to i64
  %421 = getelementptr inbounds [306 x double], [306 x double]* %28, i64 0, i64 %420
  %422 = load double, double* %421, align 8
  %423 = load i32, i32* %33, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds [17 x double], [17 x double]* %27, i64 0, i64 %424
  store double %422, double* %425, align 8
  br label %426

426:                                              ; preds = %417
  %427 = load i32, i32* %33, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %33, align 4
  br label %389

429:                                              ; preds = %389
  store i32 0, i32* %33, align 4
  br label %430

430:                                              ; preds = %440, %429
  %431 = load i32, i32* %33, align 4
  %432 = load i32, i32* %51, align 4
  %433 = mul nsw i32 4, %432
  %434 = add nsw i32 %433, 1
  %435 = icmp slt i32 %431, %434
  br i1 %435, label %436, label %443

436:                                              ; preds = %430
  %437 = load i32, i32* %33, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds [17 x double], [17 x double]* %20, i64 0, i64 %438
  store double 0.000000e+00, double* %439, align 8
  br label %440

440:                                              ; preds = %436
  %441 = load i32, i32* %33, align 4
  %442 = add nsw i32 %441, 1
  store i32 %442, i32* %33, align 4
  br label %430

443:                                              ; preds = %430
  %444 = getelementptr inbounds [17 x double], [17 x double]* %20, i64 0, i64 0
  store double 1.000000e+00, double* %444, align 16
  store i32 0, i32* %33, align 4
  br label %445

445:                                              ; preds = %455, %443
  %446 = load i32, i32* %33, align 4
  %447 = load i32, i32* %51, align 4
  %448 = mul nsw i32 4, %447
  %449 = add nsw i32 %448, 1
  %450 = icmp slt i32 %446, %449
  br i1 %450, label %451, label %458

451:                                              ; preds = %445
  %452 = load i32, i32* %33, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds [17 x double], [17 x double]* %21, i64 0, i64 %453
  store double 0.000000e+00, double* %454, align 8
  br label %455

455:                                              ; preds = %451
  %456 = load i32, i32* %33, align 4
  %457 = add nsw i32 %456, 1
  store i32 %457, i32* %33, align 4
  br label %445

458:                                              ; preds = %445
  %459 = load i32, i32* %51, align 4
  %460 = mul nsw i32 2, %459
  %461 = add nsw i32 %460, 1
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds [17 x double], [17 x double]* %21, i64 0, i64 %462
  store double 1.000000e+00, double* %463, align 8
  store i32 0, i32* %33, align 4
  br label %464

464:                                              ; preds = %474, %458
  %465 = load i32, i32* %33, align 4
  %466 = load i32, i32* %51, align 4
  %467 = mul nsw i32 4, %466
  %468 = add nsw i32 %467, 1
  %469 = icmp slt i32 %465, %468
  br i1 %469, label %470, label %477

470:                                              ; preds = %464
  %471 = load i32, i32* %33, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds [17 x double], [17 x double]* %22, i64 0, i64 %472
  store double 0.000000e+00, double* %473, align 8
  br label %474

474:                                              ; preds = %470
  %475 = load i32, i32* %33, align 4
  %476 = add nsw i32 %475, 1
  store i32 %476, i32* %33, align 4
  br label %464

477:                                              ; preds = %464
  store i32 0, i32* %32, align 4
  br label %478

478:                                              ; preds = %1024, %477
  %479 = load i32, i32* %32, align 4
  %480 = load i32, i32* %51, align 4
  %481 = icmp slt i32 %479, %480
  br i1 %481, label %482, label %1027

482:                                              ; preds = %478
  %483 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %484 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %483, i32 0, i32 3
  %485 = load i32, i32* %484, align 8
  %486 = add nsw i32 %485, 1
  store i32 %486, i32* %484, align 8
  store i32 0, i32* %54, align 4
  br label %487

487:                                              ; preds = %530, %482
  %488 = load i32, i32* %54, align 4
  %489 = load i32, i32* %51, align 4
  %490 = mul nsw i32 4, %489
  %491 = add nsw i32 %490, 1
  %492 = icmp slt i32 %488, %491
  br i1 %492, label %493, label %533

493:                                              ; preds = %487
  store double 0.000000e+00, double* %56, align 8
  store i32 0, i32* %55, align 4
  br label %494

494:                                              ; preds = %515, %493
  %495 = load i32, i32* %55, align 4
  %496 = load i32, i32* %51, align 4
  %497 = mul nsw i32 4, %496
  %498 = add nsw i32 %497, 1
  %499 = icmp slt i32 %495, %498
  br i1 %499, label %500, label %518

500:                                              ; preds = %494
  %501 = load i32, i32* %54, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds [17 x [17 x double]], [17 x [17 x double]]* %18, i64 0, i64 %502
  %504 = load i32, i32* %55, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds [17 x double], [17 x double]* %503, i64 0, i64 %505
  %507 = load double, double* %506, align 8
  %508 = load i32, i32* %55, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds [17 x double], [17 x double]* %20, i64 0, i64 %509
  %511 = load double, double* %510, align 8
  %512 = fmul double %507, %511
  %513 = load double, double* %56, align 8
  %514 = fadd double %513, %512
  store double %514, double* %56, align 8
  br label %515

515:                                              ; preds = %500
  %516 = load i32, i32* %55, align 4
  %517 = add nsw i32 %516, 1
  store i32 %517, i32* %55, align 4
  br label %494

518:                                              ; preds = %494
  %519 = load double, double* %56, align 8
  %520 = fmul double 1.000000e+00, %519
  %521 = load i32, i32* %54, align 4
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds [17 x double], [17 x double]* %23, i64 0, i64 %522
  %524 = load double, double* %523, align 8
  %525 = fmul double 0.000000e+00, %524
  %526 = fadd double %520, %525
  %527 = load i32, i32* %54, align 4
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds [17 x double], [17 x double]* %23, i64 0, i64 %528
  store double %526, double* %529, align 8
  br label %530

530:                                              ; preds = %518
  %531 = load i32, i32* %54, align 4
  %532 = add nsw i32 %531, 1
  store i32 %532, i32* %54, align 4
  br label %487

533:                                              ; preds = %487
  store i32 0, i32* %57, align 4
  br label %534

534:                                              ; preds = %577, %533
  %535 = load i32, i32* %57, align 4
  %536 = load i32, i32* %51, align 4
  %537 = mul nsw i32 4, %536
  %538 = add nsw i32 %537, 1
  %539 = icmp slt i32 %535, %538
  br i1 %539, label %540, label %580

540:                                              ; preds = %534
  store double 0.000000e+00, double* %59, align 8
  store i32 0, i32* %58, align 4
  br label %541

541:                                              ; preds = %562, %540
  %542 = load i32, i32* %58, align 4
  %543 = load i32, i32* %51, align 4
  %544 = mul nsw i32 4, %543
  %545 = add nsw i32 %544, 1
  %546 = icmp slt i32 %542, %545
  br i1 %546, label %547, label %565

547:                                              ; preds = %541
  %548 = load i32, i32* %57, align 4
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds [17 x [17 x double]], [17 x [17 x double]]* %18, i64 0, i64 %549
  %551 = load i32, i32* %58, align 4
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds [17 x double], [17 x double]* %550, i64 0, i64 %552
  %554 = load double, double* %553, align 8
  %555 = load i32, i32* %58, align 4
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds [17 x double], [17 x double]* %21, i64 0, i64 %556
  %558 = load double, double* %557, align 8
  %559 = fmul double %554, %558
  %560 = load double, double* %59, align 8
  %561 = fadd double %560, %559
  store double %561, double* %59, align 8
  br label %562

562:                                              ; preds = %547
  %563 = load i32, i32* %58, align 4
  %564 = add nsw i32 %563, 1
  store i32 %564, i32* %58, align 4
  br label %541

565:                                              ; preds = %541
  %566 = load double, double* %59, align 8
  %567 = fmul double 1.000000e+00, %566
  %568 = load i32, i32* %57, align 4
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds [17 x double], [17 x double]* %24, i64 0, i64 %569
  %571 = load double, double* %570, align 8
  %572 = fmul double 0.000000e+00, %571
  %573 = fadd double %567, %572
  %574 = load i32, i32* %57, align 4
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds [17 x double], [17 x double]* %24, i64 0, i64 %575
  store double %573, double* %576, align 8
  br label %577

577:                                              ; preds = %565
  %578 = load i32, i32* %57, align 4
  %579 = add nsw i32 %578, 1
  store i32 %579, i32* %57, align 4
  br label %534

580:                                              ; preds = %534
  store i32 0, i32* %60, align 4
  br label %581

581:                                              ; preds = %624, %580
  %582 = load i32, i32* %60, align 4
  %583 = load i32, i32* %51, align 4
  %584 = mul nsw i32 4, %583
  %585 = add nsw i32 %584, 1
  %586 = icmp slt i32 %582, %585
  br i1 %586, label %587, label %627

587:                                              ; preds = %581
  store double 0.000000e+00, double* %62, align 8
  store i32 0, i32* %61, align 4
  br label %588

588:                                              ; preds = %609, %587
  %589 = load i32, i32* %61, align 4
  %590 = load i32, i32* %51, align 4
  %591 = mul nsw i32 4, %590
  %592 = add nsw i32 %591, 1
  %593 = icmp slt i32 %589, %592
  br i1 %593, label %594, label %612

594:                                              ; preds = %588
  %595 = load i32, i32* %60, align 4
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds [17 x [17 x double]], [17 x [17 x double]]* %19, i64 0, i64 %596
  %598 = load i32, i32* %61, align 4
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds [17 x double], [17 x double]* %597, i64 0, i64 %599
  %601 = load double, double* %600, align 8
  %602 = load i32, i32* %61, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds [17 x double], [17 x double]* %20, i64 0, i64 %603
  %605 = load double, double* %604, align 8
  %606 = fmul double %601, %605
  %607 = load double, double* %62, align 8
  %608 = fadd double %607, %606
  store double %608, double* %62, align 8
  br label %609

609:                                              ; preds = %594
  %610 = load i32, i32* %61, align 4
  %611 = add nsw i32 %610, 1
  store i32 %611, i32* %61, align 4
  br label %588

612:                                              ; preds = %588
  %613 = load double, double* %62, align 8
  %614 = fmul double 1.000000e+00, %613
  %615 = load i32, i32* %60, align 4
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds [17 x double], [17 x double]* %25, i64 0, i64 %616
  %618 = load double, double* %617, align 8
  %619 = fmul double 0.000000e+00, %618
  %620 = fadd double %614, %619
  %621 = load i32, i32* %60, align 4
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds [17 x double], [17 x double]* %25, i64 0, i64 %622
  store double %620, double* %623, align 8
  br label %624

624:                                              ; preds = %612
  %625 = load i32, i32* %60, align 4
  %626 = add nsw i32 %625, 1
  store i32 %626, i32* %60, align 4
  br label %581

627:                                              ; preds = %581
  %628 = getelementptr inbounds [17 x double], [17 x double]* %27, i64 0, i64 0
  %629 = getelementptr inbounds [17 x double], [17 x double]* %23, i64 0, i64 0
  %630 = load i32, i32* %51, align 4
  %631 = mul nsw i32 4, %630
  %632 = add nsw i32 %631, 1
  %633 = call double @__dot(double* %628, double* %629, i32 %632)
  store double %633, double* %38, align 8
  %634 = load double, double* %38, align 8
  %635 = fcmp oeq double %634, 0.000000e+00
  br i1 %635, label %636, label %637

636:                                              ; preds = %627
  store i32 1, i32* %36, align 4
  br label %1027

637:                                              ; preds = %627
  %638 = load double, double* %43, align 8
  %639 = load double, double* %38, align 8
  %640 = fdiv double %638, %639
  store double %640, double* %39, align 8
  br i1 false, label %641, label %646

641:                                              ; preds = %637
  %642 = load double, double* %39, align 8
  %643 = fptrunc double %642 to float
  %644 = call i32 @__isinff(float %643) #11
  %645 = icmp ne i32 %644, 0
  br i1 %645, label %656, label %657

646:                                              ; preds = %637
  br i1 true, label %647, label %651

647:                                              ; preds = %646
  %648 = load double, double* %39, align 8
  %649 = call i32 @__isinf(double %648) #11
  %650 = icmp ne i32 %649, 0
  br i1 %650, label %656, label %657

651:                                              ; preds = %646
  %652 = load double, double* %39, align 8
  %653 = fpext double %652 to x86_fp80
  %654 = call i32 @__isinfl(x86_fp80 %653) #11
  %655 = icmp ne i32 %654, 0
  br i1 %655, label %656, label %657

656:                                              ; preds = %651, %647, %641
  store i32 1, i32* %36, align 4
  br label %1027

657:                                              ; preds = %651, %647, %641
  %658 = getelementptr inbounds [17 x double], [17 x double]* %15, i64 0, i64 0
  %659 = getelementptr inbounds [17 x double], [17 x double]* %24, i64 0, i64 0
  %660 = load double, double* %39, align 8
  %661 = fneg double %660
  %662 = getelementptr inbounds [17 x double], [17 x double]* %25, i64 0, i64 0
  %663 = load i32, i32* %51, align 4
  %664 = mul nsw i32 4, %663
  %665 = add nsw i32 %664, 1
  call void @__axpy(double* %658, double 1.000000e+00, double* %659, double %661, double* %662, i32 %665)
  store i32 0, i32* %63, align 4
  br label %666

666:                                              ; preds = %709, %657
  %667 = load i32, i32* %63, align 4
  %668 = load i32, i32* %51, align 4
  %669 = mul nsw i32 4, %668
  %670 = add nsw i32 %669, 1
  %671 = icmp slt i32 %667, %670
  br i1 %671, label %672, label %712

672:                                              ; preds = %666
  store double 0.000000e+00, double* %65, align 8
  store i32 0, i32* %64, align 4
  br label %673

673:                                              ; preds = %694, %672
  %674 = load i32, i32* %64, align 4
  %675 = load i32, i32* %51, align 4
  %676 = mul nsw i32 4, %675
  %677 = add nsw i32 %676, 1
  %678 = icmp slt i32 %674, %677
  br i1 %678, label %679, label %697

679:                                              ; preds = %673
  %680 = load i32, i32* %63, align 4
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds [17 x [17 x double]], [17 x [17 x double]]* %26, i64 0, i64 %681
  %683 = load i32, i32* %64, align 4
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds [17 x double], [17 x double]* %682, i64 0, i64 %684
  %686 = load double, double* %685, align 8
  %687 = load i32, i32* %64, align 4
  %688 = sext i32 %687 to i64
  %689 = getelementptr inbounds [17 x double], [17 x double]* %15, i64 0, i64 %688
  %690 = load double, double* %689, align 8
  %691 = fmul double %686, %690
  %692 = load double, double* %65, align 8
  %693 = fadd double %692, %691
  store double %693, double* %65, align 8
  br label %694

694:                                              ; preds = %679
  %695 = load i32, i32* %64, align 4
  %696 = add nsw i32 %695, 1
  store i32 %696, i32* %64, align 4
  br label %673

697:                                              ; preds = %673
  %698 = load double, double* %65, align 8
  %699 = fmul double 1.000000e+00, %698
  %700 = load i32, i32* %63, align 4
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds [17 x double], [17 x double]* %16, i64 0, i64 %701
  %703 = load double, double* %702, align 8
  %704 = fmul double 0.000000e+00, %703
  %705 = fadd double %699, %704
  %706 = load i32, i32* %63, align 4
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds [17 x double], [17 x double]* %16, i64 0, i64 %707
  store double %705, double* %708, align 8
  br label %709

709:                                              ; preds = %697
  %710 = load i32, i32* %63, align 4
  %711 = add nsw i32 %710, 1
  store i32 %711, i32* %63, align 4
  br label %666

712:                                              ; preds = %666
  %713 = getelementptr inbounds [17 x double], [17 x double]* %17, i64 0, i64 0
  %714 = getelementptr inbounds [17 x double], [17 x double]* %21, i64 0, i64 0
  %715 = load double, double* %39, align 8
  %716 = fneg double %715
  %717 = getelementptr inbounds [17 x double], [17 x double]* %23, i64 0, i64 0
  %718 = load i32, i32* %51, align 4
  %719 = mul nsw i32 4, %718
  %720 = add nsw i32 %719, 1
  call void @__axpy(double* %713, double 1.000000e+00, double* %714, double %716, double* %717, i32 %720)
  %721 = getelementptr inbounds [17 x double], [17 x double]* %17, i64 0, i64 0
  %722 = getelementptr inbounds [17 x double], [17 x double]* %16, i64 0, i64 0
  %723 = load i32, i32* %51, align 4
  %724 = mul nsw i32 4, %723
  %725 = add nsw i32 %724, 1
  %726 = call double @__dot(double* %721, double* %722, i32 %725)
  store double %726, double* %40, align 8
  %727 = getelementptr inbounds [17 x double], [17 x double]* %15, i64 0, i64 0
  %728 = getelementptr inbounds [17 x double], [17 x double]* %16, i64 0, i64 0
  %729 = load i32, i32* %51, align 4
  %730 = mul nsw i32 4, %729
  %731 = add nsw i32 %730, 1
  %732 = call double @__dot(double* %727, double* %728, i32 %731)
  store double %732, double* %41, align 8
  %733 = getelementptr inbounds [17 x double], [17 x double]* %22, i64 0, i64 0
  %734 = getelementptr inbounds [17 x double], [17 x double]* %22, i64 0, i64 0
  %735 = load double, double* %39, align 8
  %736 = getelementptr inbounds [17 x double], [17 x double]* %20, i64 0, i64 0
  %737 = load i32, i32* %51, align 4
  %738 = mul nsw i32 4, %737
  %739 = add nsw i32 %738, 1
  call void @__axpy(double* %733, double 1.000000e+00, double* %734, double %735, double* %736, i32 %739)
  %740 = getelementptr inbounds [17 x double], [17 x double]* %15, i64 0, i64 0
  %741 = getelementptr inbounds [17 x double], [17 x double]* %21, i64 0, i64 0
  %742 = load double, double* %39, align 8
  %743 = fneg double %742
  %744 = getelementptr inbounds [17 x double], [17 x double]* %23, i64 0, i64 0
  %745 = load i32, i32* %51, align 4
  %746 = mul nsw i32 4, %745
  %747 = add nsw i32 %746, 1
  call void @__axpy(double* %740, double 1.000000e+00, double* %741, double %743, double* %744, i32 %747)
  store i32 0, i32* %66, align 4
  br label %748

748:                                              ; preds = %791, %712
  %749 = load i32, i32* %66, align 4
  %750 = load i32, i32* %51, align 4
  %751 = mul nsw i32 4, %750
  %752 = add nsw i32 %751, 1
  %753 = icmp slt i32 %749, %752
  br i1 %753, label %754, label %794

754:                                              ; preds = %748
  store double 0.000000e+00, double* %68, align 8
  store i32 0, i32* %67, align 4
  br label %755

755:                                              ; preds = %776, %754
  %756 = load i32, i32* %67, align 4
  %757 = load i32, i32* %51, align 4
  %758 = mul nsw i32 4, %757
  %759 = add nsw i32 %758, 1
  %760 = icmp slt i32 %756, %759
  br i1 %760, label %761, label %779

761:                                              ; preds = %755
  %762 = load i32, i32* %66, align 4
  %763 = sext i32 %762 to i64
  %764 = getelementptr inbounds [17 x [17 x double]], [17 x [17 x double]]* %26, i64 0, i64 %763
  %765 = load i32, i32* %67, align 4
  %766 = sext i32 %765 to i64
  %767 = getelementptr inbounds [17 x double], [17 x double]* %764, i64 0, i64 %766
  %768 = load double, double* %767, align 8
  %769 = load i32, i32* %67, align 4
  %770 = sext i32 %769 to i64
  %771 = getelementptr inbounds [17 x double], [17 x double]* %15, i64 0, i64 %770
  %772 = load double, double* %771, align 8
  %773 = fmul double %768, %772
  %774 = load double, double* %68, align 8
  %775 = fadd double %774, %773
  store double %775, double* %68, align 8
  br label %776

776:                                              ; preds = %761
  %777 = load i32, i32* %67, align 4
  %778 = add nsw i32 %777, 1
  store i32 %778, i32* %67, align 4
  br label %755

779:                                              ; preds = %755
  %780 = load double, double* %68, align 8
  %781 = fmul double 1.000000e+00, %780
  %782 = load i32, i32* %66, align 4
  %783 = sext i32 %782 to i64
  %784 = getelementptr inbounds [17 x double], [17 x double]* %16, i64 0, i64 %783
  %785 = load double, double* %784, align 8
  %786 = fmul double 0.000000e+00, %785
  %787 = fadd double %781, %786
  %788 = load i32, i32* %66, align 4
  %789 = sext i32 %788 to i64
  %790 = getelementptr inbounds [17 x double], [17 x double]* %16, i64 0, i64 %789
  store double %787, double* %790, align 8
  br label %791

791:                                              ; preds = %779
  %792 = load i32, i32* %66, align 4
  %793 = add nsw i32 %792, 1
  store i32 %793, i32* %66, align 4
  br label %748

794:                                              ; preds = %748
  %795 = getelementptr inbounds [17 x double], [17 x double]* %15, i64 0, i64 0
  %796 = getelementptr inbounds [17 x double], [17 x double]* %16, i64 0, i64 0
  %797 = load i32, i32* %51, align 4
  %798 = mul nsw i32 4, %797
  %799 = add nsw i32 %798, 1
  %800 = call double @__dot(double* %795, double* %796, i32 %799)
  store double %800, double* %49, align 8
  %801 = load double, double* %49, align 8
  %802 = fcmp olt double %801, 0.000000e+00
  br i1 %802, label %803, label %804

803:                                              ; preds = %794
  store double 0.000000e+00, double* %49, align 8
  br label %807

804:                                              ; preds = %794
  %805 = load double, double* %49, align 8
  %806 = call double @sqrt(double %805) #8
  store double %806, double* %49, align 8
  br label %807

807:                                              ; preds = %804, %803
  %808 = load double, double* %49, align 8
  %809 = load double, double* %14, align 8
  %810 = load double, double* %46, align 8
  %811 = fmul double %809, %810
  %812 = fcmp olt double %808, %811
  br i1 %812, label %813, label %814

813:                                              ; preds = %807
  store i32 1, i32* %37, align 4
  br label %1027

814:                                              ; preds = %807
  %815 = load double, double* %41, align 8
  %816 = fcmp oeq double %815, 0.000000e+00
  br i1 %816, label %817, label %818

817:                                              ; preds = %814
  store i32 1, i32* %36, align 4
  br label %1027

818:                                              ; preds = %814
  %819 = load double, double* %40, align 8
  %820 = load double, double* %41, align 8
  %821 = fdiv double %819, %820
  store double %821, double* %42, align 8
  br i1 false, label %822, label %827

822:                                              ; preds = %818
  %823 = load double, double* %42, align 8
  %824 = fptrunc double %823 to float
  %825 = call i32 @__isinff(float %824) #11
  %826 = icmp ne i32 %825, 0
  br i1 %826, label %837, label %838

827:                                              ; preds = %818
  br i1 true, label %828, label %832

828:                                              ; preds = %827
  %829 = load double, double* %42, align 8
  %830 = call i32 @__isinf(double %829) #11
  %831 = icmp ne i32 %830, 0
  br i1 %831, label %837, label %838

832:                                              ; preds = %827
  %833 = load double, double* %42, align 8
  %834 = fpext double %833 to x86_fp80
  %835 = call i32 @__isinfl(x86_fp80 %834) #11
  %836 = icmp ne i32 %835, 0
  br i1 %836, label %837, label %838

837:                                              ; preds = %832, %828, %822
  store i32 1, i32* %36, align 4
  br label %1027

838:                                              ; preds = %832, %828, %822
  %839 = getelementptr inbounds [17 x double], [17 x double]* %22, i64 0, i64 0
  %840 = getelementptr inbounds [17 x double], [17 x double]* %22, i64 0, i64 0
  %841 = load double, double* %42, align 8
  %842 = getelementptr inbounds [17 x double], [17 x double]* %21, i64 0, i64 0
  %843 = load i32, i32* %51, align 4
  %844 = mul nsw i32 4, %843
  %845 = add nsw i32 %844, 1
  call void @__axpy(double* %839, double 1.000000e+00, double* %840, double %841, double* %842, i32 %845)
  %846 = getelementptr inbounds [17 x double], [17 x double]* %22, i64 0, i64 0
  %847 = getelementptr inbounds [17 x double], [17 x double]* %22, i64 0, i64 0
  %848 = load double, double* %42, align 8
  %849 = fneg double %848
  %850 = load double, double* %39, align 8
  %851 = fmul double %849, %850
  %852 = getelementptr inbounds [17 x double], [17 x double]* %23, i64 0, i64 0
  %853 = load i32, i32* %51, align 4
  %854 = mul nsw i32 4, %853
  %855 = add nsw i32 %854, 1
  call void @__axpy(double* %846, double 1.000000e+00, double* %847, double %851, double* %852, i32 %855)
  %856 = getelementptr inbounds [17 x double], [17 x double]* %21, i64 0, i64 0
  %857 = getelementptr inbounds [17 x double], [17 x double]* %21, i64 0, i64 0
  %858 = load double, double* %42, align 8
  %859 = fneg double %858
  %860 = getelementptr inbounds [17 x double], [17 x double]* %24, i64 0, i64 0
  %861 = load i32, i32* %51, align 4
  %862 = mul nsw i32 4, %861
  %863 = add nsw i32 %862, 1
  call void @__axpy(double* %856, double 1.000000e+00, double* %857, double %859, double* %860, i32 %863)
  %864 = getelementptr inbounds [17 x double], [17 x double]* %21, i64 0, i64 0
  %865 = getelementptr inbounds [17 x double], [17 x double]* %21, i64 0, i64 0
  %866 = load double, double* %39, align 8
  %867 = fneg double %866
  %868 = getelementptr inbounds [17 x double], [17 x double]* %23, i64 0, i64 0
  %869 = load i32, i32* %51, align 4
  %870 = mul nsw i32 4, %869
  %871 = add nsw i32 %870, 1
  call void @__axpy(double* %864, double 1.000000e+00, double* %865, double %867, double* %868, i32 %871)
  %872 = getelementptr inbounds [17 x double], [17 x double]* %21, i64 0, i64 0
  %873 = getelementptr inbounds [17 x double], [17 x double]* %21, i64 0, i64 0
  %874 = load double, double* %42, align 8
  %875 = load double, double* %39, align 8
  %876 = fmul double %874, %875
  %877 = getelementptr inbounds [17 x double], [17 x double]* %25, i64 0, i64 0
  %878 = load i32, i32* %51, align 4
  %879 = mul nsw i32 4, %878
  %880 = add nsw i32 %879, 1
  call void @__axpy(double* %872, double 1.000000e+00, double* %873, double %876, double* %877, i32 %880)
  store i32 0, i32* %69, align 4
  br label %881

881:                                              ; preds = %924, %838
  %882 = load i32, i32* %69, align 4
  %883 = load i32, i32* %51, align 4
  %884 = mul nsw i32 4, %883
  %885 = add nsw i32 %884, 1
  %886 = icmp slt i32 %882, %885
  br i1 %886, label %887, label %927

887:                                              ; preds = %881
  store double 0.000000e+00, double* %71, align 8
  store i32 0, i32* %70, align 4
  br label %888

888:                                              ; preds = %909, %887
  %889 = load i32, i32* %70, align 4
  %890 = load i32, i32* %51, align 4
  %891 = mul nsw i32 4, %890
  %892 = add nsw i32 %891, 1
  %893 = icmp slt i32 %889, %892
  br i1 %893, label %894, label %912

894:                                              ; preds = %888
  %895 = load i32, i32* %69, align 4
  %896 = sext i32 %895 to i64
  %897 = getelementptr inbounds [17 x [17 x double]], [17 x [17 x double]]* %26, i64 0, i64 %896
  %898 = load i32, i32* %70, align 4
  %899 = sext i32 %898 to i64
  %900 = getelementptr inbounds [17 x double], [17 x double]* %897, i64 0, i64 %899
  %901 = load double, double* %900, align 8
  %902 = load i32, i32* %70, align 4
  %903 = sext i32 %902 to i64
  %904 = getelementptr inbounds [17 x double], [17 x double]* %21, i64 0, i64 %903
  %905 = load double, double* %904, align 8
  %906 = fmul double %901, %905
  %907 = load double, double* %71, align 8
  %908 = fadd double %907, %906
  store double %908, double* %71, align 8
  br label %909

909:                                              ; preds = %894
  %910 = load i32, i32* %70, align 4
  %911 = add nsw i32 %910, 1
  store i32 %911, i32* %70, align 4
  br label %888

912:                                              ; preds = %888
  %913 = load double, double* %71, align 8
  %914 = fmul double 1.000000e+00, %913
  %915 = load i32, i32* %69, align 4
  %916 = sext i32 %915 to i64
  %917 = getelementptr inbounds [17 x double], [17 x double]* %15, i64 0, i64 %916
  %918 = load double, double* %917, align 8
  %919 = fmul double 0.000000e+00, %918
  %920 = fadd double %914, %919
  %921 = load i32, i32* %69, align 4
  %922 = sext i32 %921 to i64
  %923 = getelementptr inbounds [17 x double], [17 x double]* %15, i64 0, i64 %922
  store double %920, double* %923, align 8
  br label %924

924:                                              ; preds = %912
  %925 = load i32, i32* %69, align 4
  %926 = add nsw i32 %925, 1
  store i32 %926, i32* %69, align 4
  br label %881

927:                                              ; preds = %881
  %928 = getelementptr inbounds [17 x double], [17 x double]* %21, i64 0, i64 0
  %929 = getelementptr inbounds [17 x double], [17 x double]* %15, i64 0, i64 0
  %930 = load i32, i32* %51, align 4
  %931 = mul nsw i32 4, %930
  %932 = add nsw i32 %931, 1
  %933 = call double @__dot(double* %928, double* %929, i32 %932)
  store double %933, double* %48, align 8
  store double 0.000000e+00, double* %47, align 8
  %934 = load double, double* %48, align 8
  %935 = fcmp ogt double %934, 0.000000e+00
  br i1 %935, label %936, label %939

936:                                              ; preds = %927
  %937 = load double, double* %48, align 8
  %938 = call double @sqrt(double %937) #8
  store double %938, double* %47, align 8
  br label %939

939:                                              ; preds = %936, %927
  %940 = load double, double* %47, align 8
  %941 = load double, double* %14, align 8
  %942 = load double, double* %46, align 8
  %943 = fmul double %941, %942
  %944 = fcmp olt double %940, %943
  br i1 %944, label %945, label %946

945:                                              ; preds = %939
  store i32 1, i32* %37, align 4
  br label %1027

946:                                              ; preds = %939
  %947 = getelementptr inbounds [17 x double], [17 x double]* %27, i64 0, i64 0
  %948 = getelementptr inbounds [17 x double], [17 x double]* %21, i64 0, i64 0
  %949 = load i32, i32* %51, align 4
  %950 = mul nsw i32 4, %949
  %951 = add nsw i32 %950, 1
  %952 = call double @__dot(double* %947, double* %948, i32 %951)
  store double %952, double* %44, align 8
  br i1 false, label %953, label %958

953:                                              ; preds = %946
  %954 = load double, double* %44, align 8
  %955 = fptrunc double %954 to float
  %956 = call i32 @__isinff(float %955) #11
  %957 = icmp ne i32 %956, 0
  br i1 %957, label %968, label %969

958:                                              ; preds = %946
  br i1 true, label %959, label %963

959:                                              ; preds = %958
  %960 = load double, double* %44, align 8
  %961 = call i32 @__isinf(double %960) #11
  %962 = icmp ne i32 %961, 0
  br i1 %962, label %968, label %969

963:                                              ; preds = %958
  %964 = load double, double* %44, align 8
  %965 = fpext double %964 to x86_fp80
  %966 = call i32 @__isinfl(x86_fp80 %965) #11
  %967 = icmp ne i32 %966, 0
  br i1 %967, label %968, label %969

968:                                              ; preds = %963, %959, %953
  store i32 1, i32* %36, align 4
  br label %1027

969:                                              ; preds = %963, %959, %953
  %970 = load double, double* %44, align 8
  %971 = fcmp oeq double %970, 0.000000e+00
  br i1 %971, label %972, label %973

972:                                              ; preds = %969
  store i32 1, i32* %36, align 4
  br label %1027

973:                                              ; preds = %969
  %974 = load double, double* %42, align 8
  %975 = fcmp oeq double %974, 0.000000e+00
  br i1 %975, label %976, label %977

976:                                              ; preds = %973
  store i32 1, i32* %36, align 4
  br label %1027

977:                                              ; preds = %973
  %978 = load double, double* %44, align 8
  %979 = load double, double* %43, align 8
  %980 = fdiv double %978, %979
  %981 = load double, double* %39, align 8
  %982 = load double, double* %42, align 8
  %983 = fdiv double %981, %982
  %984 = fmul double %980, %983
  store double %984, double* %45, align 8
  br i1 false, label %985, label %990

985:                                              ; preds = %977
  %986 = load double, double* %45, align 8
  %987 = fptrunc double %986 to float
  %988 = call i32 @__isinff(float %987) #11
  %989 = icmp ne i32 %988, 0
  br i1 %989, label %1000, label %1001

990:                                              ; preds = %977
  br i1 true, label %991, label %995

991:                                              ; preds = %990
  %992 = load double, double* %45, align 8
  %993 = call i32 @__isinf(double %992) #11
  %994 = icmp ne i32 %993, 0
  br i1 %994, label %1000, label %1001

995:                                              ; preds = %990
  %996 = load double, double* %45, align 8
  %997 = fpext double %996 to x86_fp80
  %998 = call i32 @__isinfl(x86_fp80 %997) #11
  %999 = icmp ne i32 %998, 0
  br i1 %999, label %1000, label %1001

1000:                                             ; preds = %995, %991, %985
  store i32 1, i32* %36, align 4
  br label %1027

1001:                                             ; preds = %995, %991, %985
  %1002 = load double, double* %45, align 8
  %1003 = fcmp oeq double %1002, 0.000000e+00
  br i1 %1003, label %1004, label %1005

1004:                                             ; preds = %1001
  store i32 1, i32* %36, align 4
  br label %1027

1005:                                             ; preds = %1001
  %1006 = getelementptr inbounds [17 x double], [17 x double]* %20, i64 0, i64 0
  %1007 = getelementptr inbounds [17 x double], [17 x double]* %21, i64 0, i64 0
  %1008 = load double, double* %45, align 8
  %1009 = getelementptr inbounds [17 x double], [17 x double]* %20, i64 0, i64 0
  %1010 = load i32, i32* %51, align 4
  %1011 = mul nsw i32 4, %1010
  %1012 = add nsw i32 %1011, 1
  call void @__axpy(double* %1006, double 1.000000e+00, double* %1007, double %1008, double* %1009, i32 %1012)
  %1013 = getelementptr inbounds [17 x double], [17 x double]* %20, i64 0, i64 0
  %1014 = getelementptr inbounds [17 x double], [17 x double]* %20, i64 0, i64 0
  %1015 = load double, double* %42, align 8
  %1016 = fneg double %1015
  %1017 = load double, double* %45, align 8
  %1018 = fmul double %1016, %1017
  %1019 = getelementptr inbounds [17 x double], [17 x double]* %23, i64 0, i64 0
  %1020 = load i32, i32* %51, align 4
  %1021 = mul nsw i32 4, %1020
  %1022 = add nsw i32 %1021, 1
  call void @__axpy(double* %1013, double 1.000000e+00, double* %1014, double %1018, double* %1019, i32 %1022)
  %1023 = load double, double* %44, align 8
  store double %1023, double* %43, align 8
  br label %1024

1024:                                             ; preds = %1005
  %1025 = load i32, i32* %32, align 4
  %1026 = add nsw i32 %1025, 1
  store i32 %1026, i32* %32, align 4
  br label %478

1027:                                             ; preds = %1004, %1000, %976, %972, %968, %945, %837, %817, %813, %656, %636, %478
  store i32 0, i32* %33, align 4
  br label %1028

1028:                                             ; preds = %1047, %1027
  %1029 = load i32, i32* %33, align 4
  %1030 = load i32, i32* %51, align 4
  %1031 = mul nsw i32 4, %1030
  %1032 = add nsw i32 %1031, 1
  %1033 = icmp slt i32 %1029, %1032
  br i1 %1033, label %1034, label %1050

1034:                                             ; preds = %1028
  %1035 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %1036 = load i32, i32* %9, align 4
  %1037 = load i32, i32* %10, align 4
  %1038 = load i32, i32* %10, align 4
  %1039 = load i32, i32* %33, align 4
  %1040 = sext i32 %1039 to i64
  %1041 = getelementptr inbounds [17 x double], [17 x double]* %22, i64 0, i64 %1040
  %1042 = load double, double* %1041, align 8
  %1043 = load i32, i32* %33, align 4
  %1044 = sext i32 %1043 to i64
  %1045 = getelementptr inbounds [18 x i32], [18 x i32]* %29, i64 0, i64 %1044
  %1046 = load i32, i32* %1045, align 4
  call void @add_grids(%struct.domain_type* %1035, i32 %1036, i32 %1037, double 1.000000e+00, i32 %1038, double %1042, i32 %1046)
  br label %1047

1047:                                             ; preds = %1034
  %1048 = load i32, i32* %33, align 4
  %1049 = add nsw i32 %1048, 1
  store i32 %1049, i32* %33, align 4
  br label %1028

1050:                                             ; preds = %1028
  %1051 = load i32, i32* %36, align 4
  %1052 = icmp ne i32 %1051, 0
  br i1 %1052, label %1111, label %1053

1053:                                             ; preds = %1050
  %1054 = load i32, i32* %37, align 4
  %1055 = icmp ne i32 %1054, 0
  br i1 %1055, label %1111, label %1056

1056:                                             ; preds = %1053
  %1057 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %1058 = load i32, i32* %9, align 4
  %1059 = getelementptr inbounds [17 x double], [17 x double]* %20, i64 0, i64 0
  %1060 = load double, double* %1059, align 16
  %1061 = getelementptr inbounds [18 x i32], [18 x i32]* %29, i64 0, i64 0
  %1062 = load i32, i32* %1061, align 16
  call void @add_grids(%struct.domain_type* %1057, i32 %1058, i32 14, double 0.000000e+00, i32 14, double %1060, i32 %1062)
  store i32 1, i32* %33, align 4
  br label %1063

1063:                                             ; preds = %1080, %1056
  %1064 = load i32, i32* %33, align 4
  %1065 = load i32, i32* %51, align 4
  %1066 = mul nsw i32 4, %1065
  %1067 = add nsw i32 %1066, 1
  %1068 = icmp slt i32 %1064, %1067
  br i1 %1068, label %1069, label %1083

1069:                                             ; preds = %1063
  %1070 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %1071 = load i32, i32* %9, align 4
  %1072 = load i32, i32* %33, align 4
  %1073 = sext i32 %1072 to i64
  %1074 = getelementptr inbounds [17 x double], [17 x double]* %20, i64 0, i64 %1073
  %1075 = load double, double* %1074, align 8
  %1076 = load i32, i32* %33, align 4
  %1077 = sext i32 %1076 to i64
  %1078 = getelementptr inbounds [18 x i32], [18 x i32]* %29, i64 0, i64 %1077
  %1079 = load i32, i32* %1078, align 4
  call void @add_grids(%struct.domain_type* %1070, i32 %1071, i32 14, double 1.000000e+00, i32 14, double %1075, i32 %1079)
  br label %1080

1080:                                             ; preds = %1069
  %1081 = load i32, i32* %33, align 4
  %1082 = add nsw i32 %1081, 1
  store i32 %1082, i32* %33, align 4
  br label %1063

1083:                                             ; preds = %1063
  %1084 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %1085 = load i32, i32* %9, align 4
  %1086 = getelementptr inbounds [17 x double], [17 x double]* %21, i64 0, i64 0
  %1087 = load double, double* %1086, align 16
  %1088 = getelementptr inbounds [18 x i32], [18 x i32]* %29, i64 0, i64 0
  %1089 = load i32, i32* %1088, align 16
  call void @add_grids(%struct.domain_type* %1084, i32 %1085, i32 13, double 0.000000e+00, i32 13, double %1087, i32 %1089)
  store i32 1, i32* %33, align 4
  br label %1090

1090:                                             ; preds = %1107, %1083
  %1091 = load i32, i32* %33, align 4
  %1092 = load i32, i32* %51, align 4
  %1093 = mul nsw i32 4, %1092
  %1094 = add nsw i32 %1093, 1
  %1095 = icmp slt i32 %1091, %1094
  br i1 %1095, label %1096, label %1110

1096:                                             ; preds = %1090
  %1097 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %1098 = load i32, i32* %9, align 4
  %1099 = load i32, i32* %33, align 4
  %1100 = sext i32 %1099 to i64
  %1101 = getelementptr inbounds [17 x double], [17 x double]* %21, i64 0, i64 %1100
  %1102 = load double, double* %1101, align 8
  %1103 = load i32, i32* %33, align 4
  %1104 = sext i32 %1103 to i64
  %1105 = getelementptr inbounds [18 x i32], [18 x i32]* %29, i64 0, i64 %1104
  %1106 = load i32, i32* %1105, align 4
  call void @add_grids(%struct.domain_type* %1097, i32 %1098, i32 13, double 1.000000e+00, i32 13, double %1102, i32 %1106)
  br label %1107

1107:                                             ; preds = %1096
  %1108 = load i32, i32* %33, align 4
  %1109 = add nsw i32 %1108, 1
  store i32 %1109, i32* %33, align 4
  br label %1090

1110:                                             ; preds = %1090
  br label %1111

1111:                                             ; preds = %1110, %1053, %1050
  %1112 = load i32, i32* %51, align 4
  %1113 = load i32, i32* %31, align 4
  %1114 = add nsw i32 %1113, %1112
  store i32 %1114, i32* %31, align 4
  %1115 = load i32, i32* %51, align 4
  %1116 = mul nsw i32 %1115, 2
  store i32 %1116, i32* %51, align 4
  %1117 = load i32, i32* %51, align 4
  %1118 = icmp sgt i32 %1117, 4
  br i1 %1118, label %1119, label %1120

1119:                                             ; preds = %1111
  store i32 4, i32* %51, align 4
  br label %1120

1120:                                             ; preds = %1119, %1111
  br label %98

1121:                                             ; preds = %109
  %1122 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %1123 = load i32, i32* %9, align 4
  %1124 = load i32, i32* %10, align 4
  %1125 = load i32, i32* %10, align 4
  call void @mul_grids(%struct.domain_type* %1122, i32 %1123, i32 %1124, double 1.000000e+00, i32 4, i32 %1125)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @__zero(double* %0, i32 %1) #0 {
  %3 = alloca double*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store double* %0, double** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %15, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = load double*, double** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds double, double* %11, i64 %13
  store double 0.000000e+00, double* %14, align 8
  br label %15

15:                                               ; preds = %10
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %5, align 4
  br label %6

18:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal double @__dot(double* %0, double* %1, i32 %2) #0 {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  store i32 %2, i32* %6, align 4
  store double 0.000000e+00, double* %8, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %27, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %9
  %14 = load double*, double** %4, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds double, double* %14, i64 %16
  %18 = load double, double* %17, align 8
  %19 = load double*, double** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds double, double* %19, i64 %21
  %23 = load double, double* %22, align 8
  %24 = fmul double %18, %23
  %25 = load double, double* %8, align 8
  %26 = fadd double %25, %24
  store double %26, double* %8, align 8
  br label %27

27:                                               ; preds = %13
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %9

30:                                               ; preds = %9
  %31 = load double, double* %8, align 8
  ret double %31
}

; Function Attrs: nounwind readnone
declare dso_local i32 @__isinff(float) #7

; Function Attrs: nounwind readnone
declare dso_local i32 @__isinf(double) #7

; Function Attrs: nounwind readnone
declare dso_local i32 @__isinfl(x86_fp80) #7

; Function Attrs: noinline nounwind uwtable
define internal void @__axpy(double* %0, double %1, double* %2, double %3, double* %4, i32 %5) #0 {
  %7 = alloca double*, align 8
  %8 = alloca double, align 8
  %9 = alloca double*, align 8
  %10 = alloca double, align 8
  %11 = alloca double*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store double* %0, double** %7, align 8
  store double %1, double* %8, align 8
  store double* %2, double** %9, align 8
  store double %3, double* %10, align 8
  store double* %4, double** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %38, %6
  %15 = load i32, i32* %13, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %41

18:                                               ; preds = %14
  %19 = load double, double* %8, align 8
  %20 = load double*, double** %9, align 8
  %21 = load i32, i32* %13, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds double, double* %20, i64 %22
  %24 = load double, double* %23, align 8
  %25 = fmul double %19, %24
  %26 = load double, double* %10, align 8
  %27 = load double*, double** %11, align 8
  %28 = load i32, i32* %13, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double, double* %27, i64 %29
  %31 = load double, double* %30, align 8
  %32 = fmul double %26, %31
  %33 = fadd double %25, %32
  %34 = load double*, double** %7, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, double* %34, i64 %36
  store double %33, double* %37, align 8
  br label %38

38:                                               ; preds = %18
  %39 = load i32, i32* %13, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %13, align 4
  br label %14

41:                                               ; preds = %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @CABiCGStab(%struct.domain_type* %0, i32 %1, i32 %2, i32 %3, double %4, double %5, double %6) #0 {
  %8 = alloca %struct.domain_type*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca [17 x double], align 16
  %16 = alloca [17 x double], align 16
  %17 = alloca [17 x double], align 16
  %18 = alloca [17 x [17 x double]], align 16
  %19 = alloca [17 x [17 x double]], align 16
  %20 = alloca [17 x double], align 16
  %21 = alloca [17 x double], align 16
  %22 = alloca [17 x double], align 16
  %23 = alloca [17 x double], align 16
  %24 = alloca [17 x double], align 16
  %25 = alloca [17 x double], align 16
  %26 = alloca [17 x [17 x double]], align 16
  %27 = alloca [17 x double], align 16
  %28 = alloca [306 x double], align 16
  %29 = alloca [18 x i32], align 16
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca double, align 8
  %41 = alloca double, align 8
  %42 = alloca double, align 8
  %43 = alloca double, align 8
  %44 = alloca double, align 8
  %45 = alloca double, align 8
  %46 = alloca double, align 8
  %47 = alloca double, align 8
  %48 = alloca double, align 8
  %49 = alloca double, align 8
  %50 = alloca double, align 8
  %51 = alloca double, align 8
  %52 = alloca double, align 8
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca double, align 8
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca double, align 8
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca double, align 8
  %63 = alloca i32, align 4
  %64 = alloca i32, align 4
  %65 = alloca double, align 8
  %66 = alloca i32, align 4
  %67 = alloca i32, align 4
  %68 = alloca double, align 8
  %69 = alloca i32, align 4
  %70 = alloca i32, align 4
  %71 = alloca double, align 8
  store %struct.domain_type* %0, %struct.domain_type** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store double %4, double* %12, align 8
  store double %5, double* %13, align 8
  store double %6, double* %14, align 8
  %72 = getelementptr inbounds [18 x i32], [18 x i32]* %29, i64 0, i64 0
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32* %73, i32** %30, align 8
  %74 = getelementptr inbounds [18 x i32], [18 x i32]* %29, i64 0, i64 0
  %75 = getelementptr inbounds i32, i32* %74, i64 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  store i32* %76, i32** %31, align 8
  store i32 200, i32* %32, align 4
  store i32 0, i32* %33, align 4
  store i32 0, i32* %38, align 4
  store i32 0, i32* %39, align 4
  %77 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load double, double* %12, align 8
  %82 = load double, double* %13, align 8
  call void @residual(%struct.domain_type* %77, i32 %78, i32 12, i32 %79, i32 %80, double %81, double %82)
  %83 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %84 = load i32, i32* %9, align 4
  call void @scale_grid(%struct.domain_type* %83, i32 %84, i32 13, double 1.000000e+00, i32 12)
  %85 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %86 = load i32, i32* %9, align 4
  call void @scale_grid(%struct.domain_type* %85, i32 %86, i32 14, double 1.000000e+00, i32 12)
  %87 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call double @norm(%struct.domain_type* %87, i32 %88, i32 12)
  store double %89, double* %52, align 8
  %90 = load double, double* %52, align 8
  %91 = fcmp oeq double %90, 0.000000e+00
  br i1 %91, label %92, label %93

92:                                               ; preds = %7
  store i32 1, i32* %39, align 4
  br label %93

93:                                               ; preds = %92, %7
  %94 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call double @dot(%struct.domain_type* %94, i32 %95, i32 13, i32 12)
  store double %96, double* %45, align 8
  %97 = load double, double* %45, align 8
  %98 = fcmp oeq double %97, 0.000000e+00
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  store i32 1, i32* %39, align 4
  br label %100

100:                                              ; preds = %99, %93
  %101 = load double, double* %45, align 8
  %102 = call double @sqrt(double %101) #8
  store double %102, double* %48, align 8
  store i32 4, i32* %53, align 4
  store i32 0, i32* %35, align 4
  br label %103

103:                                              ; preds = %127, %100
  %104 = load i32, i32* %35, align 4
  %105 = load i32, i32* %53, align 4
  %106 = mul nsw i32 4, %105
  %107 = add nsw i32 %106, 1
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %130

109:                                              ; preds = %103
  store i32 0, i32* %36, align 4
  br label %110

110:                                              ; preds = %123, %109
  %111 = load i32, i32* %36, align 4
  %112 = load i32, i32* %53, align 4
  %113 = mul nsw i32 4, %112
  %114 = add nsw i32 %113, 1
  %115 = icmp slt i32 %111, %114
  br i1 %115, label %116, label %126

116:                                              ; preds = %110
  %117 = load i32, i32* %35, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [17 x [17 x double]], [17 x [17 x double]]* %18, i64 0, i64 %118
  %120 = load i32, i32* %36, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [17 x double], [17 x double]* %119, i64 0, i64 %121
  store double 0.000000e+00, double* %122, align 8
  br label %123

123:                                              ; preds = %116
  %124 = load i32, i32* %36, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %36, align 4
  br label %110

126:                                              ; preds = %110
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %35, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %35, align 4
  br label %103

130:                                              ; preds = %103
  store i32 0, i32* %35, align 4
  br label %131

131:                                              ; preds = %155, %130
  %132 = load i32, i32* %35, align 4
  %133 = load i32, i32* %53, align 4
  %134 = mul nsw i32 4, %133
  %135 = add nsw i32 %134, 1
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %158

137:                                              ; preds = %131
  store i32 0, i32* %36, align 4
  br label %138

138:                                              ; preds = %151, %137
  %139 = load i32, i32* %36, align 4
  %140 = load i32, i32* %53, align 4
  %141 = mul nsw i32 4, %140
  %142 = add nsw i32 %141, 1
  %143 = icmp slt i32 %139, %142
  br i1 %143, label %144, label %154

144:                                              ; preds = %138
  %145 = load i32, i32* %35, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [17 x [17 x double]], [17 x [17 x double]]* %19, i64 0, i64 %146
  %148 = load i32, i32* %36, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [17 x double], [17 x double]* %147, i64 0, i64 %149
  store double 0.000000e+00, double* %150, align 8
  br label %151

151:                                              ; preds = %144
  %152 = load i32, i32* %36, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %36, align 4
  br label %138

154:                                              ; preds = %138
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %35, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %35, align 4
  br label %131

158:                                              ; preds = %131
  store i32 0, i32* %35, align 4
  br label %159

159:                                              ; preds = %172, %158
  %160 = load i32, i32* %35, align 4
  %161 = load i32, i32* %53, align 4
  %162 = mul nsw i32 2, %161
  %163 = icmp slt i32 %160, %162
  br i1 %163, label %164, label %175

164:                                              ; preds = %159
  %165 = load i32, i32* %35, align 4
  %166 = add nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [17 x [17 x double]], [17 x [17 x double]]* %18, i64 0, i64 %167
  %169 = load i32, i32* %35, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [17 x double], [17 x double]* %168, i64 0, i64 %170
  store double 1.000000e+00, double* %171, align 8
  br label %172

172:                                              ; preds = %164
  %173 = load i32, i32* %35, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %35, align 4
  br label %159

175:                                              ; preds = %159
  %176 = load i32, i32* %53, align 4
  %177 = mul nsw i32 2, %176
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %35, align 4
  br label %179

179:                                              ; preds = %192, %175
  %180 = load i32, i32* %35, align 4
  %181 = load i32, i32* %53, align 4
  %182 = mul nsw i32 4, %181
  %183 = icmp slt i32 %180, %182
  br i1 %183, label %184, label %195

184:                                              ; preds = %179
  %185 = load i32, i32* %35, align 4
  %186 = add nsw i32 %185, 1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [17 x [17 x double]], [17 x [17 x double]]* %18, i64 0, i64 %187
  %189 = load i32, i32* %35, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [17 x double], [17 x double]* %188, i64 0, i64 %190
  store double 1.000000e+00, double* %191, align 8
  br label %192

192:                                              ; preds = %184
  %193 = load i32, i32* %35, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %35, align 4
  br label %179

195:                                              ; preds = %179
  store i32 0, i32* %35, align 4
  br label %196

196:                                              ; preds = %210, %195
  %197 = load i32, i32* %35, align 4
  %198 = load i32, i32* %53, align 4
  %199 = mul nsw i32 2, %198
  %200 = sub nsw i32 %199, 1
  %201 = icmp slt i32 %197, %200
  br i1 %201, label %202, label %213

202:                                              ; preds = %196
  %203 = load i32, i32* %35, align 4
  %204 = add nsw i32 %203, 2
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [17 x [17 x double]], [17 x [17 x double]]* %19, i64 0, i64 %205
  %207 = load i32, i32* %35, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [17 x double], [17 x double]* %206, i64 0, i64 %208
  store double 1.000000e+00, double* %209, align 8
  br label %210

210:                                              ; preds = %202
  %211 = load i32, i32* %35, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %35, align 4
  br label %196

213:                                              ; preds = %196
  %214 = load i32, i32* %53, align 4
  %215 = mul nsw i32 2, %214
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %35, align 4
  br label %217

217:                                              ; preds = %231, %213
  %218 = load i32, i32* %35, align 4
  %219 = load i32, i32* %53, align 4
  %220 = mul nsw i32 4, %219
  %221 = sub nsw i32 %220, 1
  %222 = icmp slt i32 %218, %221
  br i1 %222, label %223, label %234

223:                                              ; preds = %217
  %224 = load i32, i32* %35, align 4
  %225 = add nsw i32 %224, 2
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [17 x [17 x double]], [17 x [17 x double]]* %19, i64 0, i64 %226
  %228 = load i32, i32* %35, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [17 x double], [17 x double]* %227, i64 0, i64 %229
  store double 1.000000e+00, double* %230, align 8
  br label %231

231:                                              ; preds = %223
  %232 = load i32, i32* %35, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %35, align 4
  br label %217

234:                                              ; preds = %217
  store i32 0, i32* %35, align 4
  br label %235

235:                                              ; preds = %247, %234
  %236 = load i32, i32* %35, align 4
  %237 = load i32, i32* %53, align 4
  %238 = mul nsw i32 4, %237
  %239 = add nsw i32 %238, 1
  %240 = icmp slt i32 %236, %239
  br i1 %240, label %241, label %250

241:                                              ; preds = %235
  %242 = load i32, i32* %35, align 4
  %243 = add nsw i32 15, %242
  %244 = load i32, i32* %35, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [18 x i32], [18 x i32]* %29, i64 0, i64 %245
  store i32 %243, i32* %246, align 4
  br label %247

247:                                              ; preds = %241
  %248 = load i32, i32* %35, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %35, align 4
  br label %235

250:                                              ; preds = %235
  %251 = load i32, i32* %53, align 4
  %252 = mul nsw i32 4, %251
  %253 = add nsw i32 %252, 1
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [18 x i32], [18 x i32]* %29, i64 0, i64 %254
  store i32 12, i32* %255, align 4
  br label %256

256:                                              ; preds = %1108, %250
  %257 = load i32, i32* %33, align 4
  %258 = load i32, i32* %32, align 4
  %259 = icmp slt i32 %257, %258
  br i1 %259, label %260, label %267

260:                                              ; preds = %256
  %261 = load i32, i32* %38, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %267, label %263

263:                                              ; preds = %260
  %264 = load i32, i32* %39, align 4
  %265 = icmp ne i32 %264, 0
  %266 = xor i1 %265, true
  br label %267

267:                                              ; preds = %263, %260, %256
  %268 = phi i1 [ false, %260 ], [ false, %256 ], [ %266, %263 ]
  br i1 %268, label %269, label %1112

269:                                              ; preds = %267
  %270 = getelementptr inbounds [17 x double], [17 x double]* %20, i64 0, i64 0
  %271 = load i32, i32* %53, align 4
  %272 = mul nsw i32 4, %271
  %273 = add nsw i32 %272, 1
  call void @__zero(double* %270, i32 %273)
  %274 = getelementptr inbounds [17 x double], [17 x double]* %21, i64 0, i64 0
  %275 = load i32, i32* %53, align 4
  %276 = mul nsw i32 4, %275
  %277 = add nsw i32 %276, 1
  call void @__zero(double* %274, i32 %277)
  %278 = getelementptr inbounds [17 x double], [17 x double]* %22, i64 0, i64 0
  %279 = load i32, i32* %53, align 4
  %280 = mul nsw i32 4, %279
  %281 = add nsw i32 %280, 1
  call void @__zero(double* %278, i32 %281)
  %282 = getelementptr inbounds [17 x double], [17 x double]* %23, i64 0, i64 0
  %283 = load i32, i32* %53, align 4
  %284 = mul nsw i32 4, %283
  %285 = add nsw i32 %284, 1
  call void @__zero(double* %282, i32 %285)
  %286 = getelementptr inbounds [17 x double], [17 x double]* %24, i64 0, i64 0
  %287 = load i32, i32* %53, align 4
  %288 = mul nsw i32 4, %287
  %289 = add nsw i32 %288, 1
  call void @__zero(double* %286, i32 %289)
  %290 = getelementptr inbounds [17 x double], [17 x double]* %25, i64 0, i64 0
  %291 = load i32, i32* %53, align 4
  %292 = mul nsw i32 4, %291
  %293 = add nsw i32 %292, 1
  call void @__zero(double* %290, i32 %293)
  %294 = getelementptr inbounds [17 x double], [17 x double]* %15, i64 0, i64 0
  %295 = load i32, i32* %53, align 4
  %296 = mul nsw i32 4, %295
  %297 = add nsw i32 %296, 1
  call void @__zero(double* %294, i32 %297)
  %298 = getelementptr inbounds [17 x double], [17 x double]* %16, i64 0, i64 0
  %299 = load i32, i32* %53, align 4
  %300 = mul nsw i32 4, %299
  %301 = add nsw i32 %300, 1
  call void @__zero(double* %298, i32 %301)
  %302 = getelementptr inbounds [17 x double], [17 x double]* %17, i64 0, i64 0
  %303 = load i32, i32* %53, align 4
  %304 = mul nsw i32 4, %303
  %305 = add nsw i32 %304, 1
  call void @__zero(double* %302, i32 %305)
  %306 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %307 = load i32, i32* %9, align 4
  %308 = load i32*, i32** %30, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 0
  %310 = load i32, i32* %309, align 4
  call void @scale_grid(%struct.domain_type* %306, i32 %307, i32 %310, double 1.000000e+00, i32 14)
  store i32 1, i32* %34, align 4
  br label %311

311:                                              ; preds = %335, %269
  %312 = load i32, i32* %34, align 4
  %313 = load i32, i32* %53, align 4
  %314 = mul nsw i32 2, %313
  %315 = add nsw i32 %314, 1
  %316 = icmp slt i32 %312, %315
  br i1 %316, label %317, label %338

317:                                              ; preds = %311
  %318 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %319 = load i32, i32* %9, align 4
  %320 = load i32*, i32** %30, align 8
  %321 = load i32, i32* %34, align 4
  %322 = sub nsw i32 %321, 1
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %320, i64 %323
  %325 = load i32, i32* %324, align 4
  call void @mul_grids(%struct.domain_type* %318, i32 %319, i32 10, double 1.000000e+00, i32 4, i32 %325)
  %326 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %327 = load i32, i32* %9, align 4
  %328 = load i32*, i32** %30, align 8
  %329 = load i32, i32* %34, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %328, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = load double, double* %12, align 8
  %334 = load double, double* %13, align 8
  call void @apply_op(%struct.domain_type* %326, i32 %327, i32 %332, i32 10, double %333, double %334)
  br label %335

335:                                              ; preds = %317
  %336 = load i32, i32* %34, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %34, align 4
  br label %311

338:                                              ; preds = %311
  %339 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %340 = load i32, i32* %9, align 4
  %341 = load i32*, i32** %31, align 8
  %342 = getelementptr inbounds i32, i32* %341, i64 0
  %343 = load i32, i32* %342, align 4
  call void @scale_grid(%struct.domain_type* %339, i32 %340, i32 %343, double 1.000000e+00, i32 13)
  store i32 1, i32* %34, align 4
  br label %344

344:                                              ; preds = %367, %338
  %345 = load i32, i32* %34, align 4
  %346 = load i32, i32* %53, align 4
  %347 = mul nsw i32 2, %346
  %348 = icmp slt i32 %345, %347
  br i1 %348, label %349, label %370

349:                                              ; preds = %344
  %350 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %351 = load i32, i32* %9, align 4
  %352 = load i32*, i32** %31, align 8
  %353 = load i32, i32* %34, align 4
  %354 = sub nsw i32 %353, 1
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32, i32* %352, i64 %355
  %357 = load i32, i32* %356, align 4
  call void @mul_grids(%struct.domain_type* %350, i32 %351, i32 10, double 1.000000e+00, i32 4, i32 %357)
  %358 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %359 = load i32, i32* %9, align 4
  %360 = load i32*, i32** %31, align 8
  %361 = load i32, i32* %34, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i32, i32* %360, i64 %362
  %364 = load i32, i32* %363, align 4
  %365 = load double, double* %12, align 8
  %366 = load double, double* %13, align 8
  call void @apply_op(%struct.domain_type* %358, i32 %359, i32 %364, i32 10, double %365, double %366)
  br label %367

367:                                              ; preds = %349
  %368 = load i32, i32* %34, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %34, align 4
  br label %344

370:                                              ; preds = %344
  %371 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %372 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %371, i32 0, i32 4
  %373 = load i32, i32* %372, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %372, align 4
  %375 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %376 = load i32, i32* %9, align 4
  %377 = getelementptr inbounds [306 x double], [306 x double]* %28, i64 0, i64 0
  %378 = getelementptr inbounds [18 x i32], [18 x i32]* %29, i64 0, i64 0
  %379 = getelementptr inbounds [18 x i32], [18 x i32]* %29, i64 0, i64 0
  %380 = load i32, i32* %53, align 4
  %381 = mul nsw i32 4, %380
  %382 = add nsw i32 %381, 1
  %383 = load i32, i32* %53, align 4
  %384 = mul nsw i32 4, %383
  %385 = add nsw i32 %384, 2
  call void @matmul_grids(%struct.domain_type* %375, i32 %376, double* %377, i32* %378, i32* %379, i32 %382, i32 %385, i32 1)
  store i32 0, i32* %35, align 4
  store i32 0, i32* %37, align 4
  br label %386

386:                                              ; preds = %423, %370
  %387 = load i32, i32* %35, align 4
  %388 = load i32, i32* %53, align 4
  %389 = mul nsw i32 4, %388
  %390 = add nsw i32 %389, 1
  %391 = icmp slt i32 %387, %390
  br i1 %391, label %392, label %426

392:                                              ; preds = %386
  store i32 0, i32* %36, align 4
  br label %393

393:                                              ; preds = %411, %392
  %394 = load i32, i32* %36, align 4
  %395 = load i32, i32* %53, align 4
  %396 = mul nsw i32 4, %395
  %397 = add nsw i32 %396, 1
  %398 = icmp slt i32 %394, %397
  br i1 %398, label %399, label %414

399:                                              ; preds = %393
  %400 = load i32, i32* %37, align 4
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %37, align 4
  %402 = sext i32 %400 to i64
  %403 = getelementptr inbounds [306 x double], [306 x double]* %28, i64 0, i64 %402
  %404 = load double, double* %403, align 8
  %405 = load i32, i32* %35, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds [17 x [17 x double]], [17 x [17 x double]]* %26, i64 0, i64 %406
  %408 = load i32, i32* %36, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds [17 x double], [17 x double]* %407, i64 0, i64 %409
  store double %404, double* %410, align 8
  br label %411

411:                                              ; preds = %399
  %412 = load i32, i32* %36, align 4
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* %36, align 4
  br label %393

414:                                              ; preds = %393
  %415 = load i32, i32* %37, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %37, align 4
  %417 = sext i32 %415 to i64
  %418 = getelementptr inbounds [306 x double], [306 x double]* %28, i64 0, i64 %417
  %419 = load double, double* %418, align 8
  %420 = load i32, i32* %35, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds [17 x double], [17 x double]* %27, i64 0, i64 %421
  store double %419, double* %422, align 8
  br label %423

423:                                              ; preds = %414
  %424 = load i32, i32* %35, align 4
  %425 = add nsw i32 %424, 1
  store i32 %425, i32* %35, align 4
  br label %386

426:                                              ; preds = %386
  store i32 0, i32* %35, align 4
  br label %427

427:                                              ; preds = %437, %426
  %428 = load i32, i32* %35, align 4
  %429 = load i32, i32* %53, align 4
  %430 = mul nsw i32 4, %429
  %431 = add nsw i32 %430, 1
  %432 = icmp slt i32 %428, %431
  br i1 %432, label %433, label %440

433:                                              ; preds = %427
  %434 = load i32, i32* %35, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds [17 x double], [17 x double]* %20, i64 0, i64 %435
  store double 0.000000e+00, double* %436, align 8
  br label %437

437:                                              ; preds = %433
  %438 = load i32, i32* %35, align 4
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %35, align 4
  br label %427

440:                                              ; preds = %427
  %441 = getelementptr inbounds [17 x double], [17 x double]* %20, i64 0, i64 0
  store double 1.000000e+00, double* %441, align 16
  store i32 0, i32* %35, align 4
  br label %442

442:                                              ; preds = %452, %440
  %443 = load i32, i32* %35, align 4
  %444 = load i32, i32* %53, align 4
  %445 = mul nsw i32 4, %444
  %446 = add nsw i32 %445, 1
  %447 = icmp slt i32 %443, %446
  br i1 %447, label %448, label %455

448:                                              ; preds = %442
  %449 = load i32, i32* %35, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds [17 x double], [17 x double]* %21, i64 0, i64 %450
  store double 0.000000e+00, double* %451, align 8
  br label %452

452:                                              ; preds = %448
  %453 = load i32, i32* %35, align 4
  %454 = add nsw i32 %453, 1
  store i32 %454, i32* %35, align 4
  br label %442

455:                                              ; preds = %442
  %456 = load i32, i32* %53, align 4
  %457 = mul nsw i32 2, %456
  %458 = add nsw i32 %457, 1
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds [17 x double], [17 x double]* %21, i64 0, i64 %459
  store double 1.000000e+00, double* %460, align 8
  store i32 0, i32* %35, align 4
  br label %461

461:                                              ; preds = %471, %455
  %462 = load i32, i32* %35, align 4
  %463 = load i32, i32* %53, align 4
  %464 = mul nsw i32 4, %463
  %465 = add nsw i32 %464, 1
  %466 = icmp slt i32 %462, %465
  br i1 %466, label %467, label %474

467:                                              ; preds = %461
  %468 = load i32, i32* %35, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds [17 x double], [17 x double]* %22, i64 0, i64 %469
  store double 0.000000e+00, double* %470, align 8
  br label %471

471:                                              ; preds = %467
  %472 = load i32, i32* %35, align 4
  %473 = add nsw i32 %472, 1
  store i32 %473, i32* %35, align 4
  br label %461

474:                                              ; preds = %461
  store i32 0, i32* %34, align 4
  br label %475

475:                                              ; preds = %1021, %474
  %476 = load i32, i32* %34, align 4
  %477 = load i32, i32* %53, align 4
  %478 = icmp slt i32 %476, %477
  br i1 %478, label %479, label %1024

479:                                              ; preds = %475
  %480 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %481 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %480, i32 0, i32 3
  %482 = load i32, i32* %481, align 8
  %483 = add nsw i32 %482, 1
  store i32 %483, i32* %481, align 8
  store i32 0, i32* %54, align 4
  br label %484

484:                                              ; preds = %527, %479
  %485 = load i32, i32* %54, align 4
  %486 = load i32, i32* %53, align 4
  %487 = mul nsw i32 4, %486
  %488 = add nsw i32 %487, 1
  %489 = icmp slt i32 %485, %488
  br i1 %489, label %490, label %530

490:                                              ; preds = %484
  store double 0.000000e+00, double* %56, align 8
  store i32 0, i32* %55, align 4
  br label %491

491:                                              ; preds = %512, %490
  %492 = load i32, i32* %55, align 4
  %493 = load i32, i32* %53, align 4
  %494 = mul nsw i32 4, %493
  %495 = add nsw i32 %494, 1
  %496 = icmp slt i32 %492, %495
  br i1 %496, label %497, label %515

497:                                              ; preds = %491
  %498 = load i32, i32* %54, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds [17 x [17 x double]], [17 x [17 x double]]* %18, i64 0, i64 %499
  %501 = load i32, i32* %55, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds [17 x double], [17 x double]* %500, i64 0, i64 %502
  %504 = load double, double* %503, align 8
  %505 = load i32, i32* %55, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds [17 x double], [17 x double]* %20, i64 0, i64 %506
  %508 = load double, double* %507, align 8
  %509 = fmul double %504, %508
  %510 = load double, double* %56, align 8
  %511 = fadd double %510, %509
  store double %511, double* %56, align 8
  br label %512

512:                                              ; preds = %497
  %513 = load i32, i32* %55, align 4
  %514 = add nsw i32 %513, 1
  store i32 %514, i32* %55, align 4
  br label %491

515:                                              ; preds = %491
  %516 = load double, double* %56, align 8
  %517 = fmul double 1.000000e+00, %516
  %518 = load i32, i32* %54, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds [17 x double], [17 x double]* %23, i64 0, i64 %519
  %521 = load double, double* %520, align 8
  %522 = fmul double 0.000000e+00, %521
  %523 = fadd double %517, %522
  %524 = load i32, i32* %54, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds [17 x double], [17 x double]* %23, i64 0, i64 %525
  store double %523, double* %526, align 8
  br label %527

527:                                              ; preds = %515
  %528 = load i32, i32* %54, align 4
  %529 = add nsw i32 %528, 1
  store i32 %529, i32* %54, align 4
  br label %484

530:                                              ; preds = %484
  store i32 0, i32* %57, align 4
  br label %531

531:                                              ; preds = %574, %530
  %532 = load i32, i32* %57, align 4
  %533 = load i32, i32* %53, align 4
  %534 = mul nsw i32 4, %533
  %535 = add nsw i32 %534, 1
  %536 = icmp slt i32 %532, %535
  br i1 %536, label %537, label %577

537:                                              ; preds = %531
  store double 0.000000e+00, double* %59, align 8
  store i32 0, i32* %58, align 4
  br label %538

538:                                              ; preds = %559, %537
  %539 = load i32, i32* %58, align 4
  %540 = load i32, i32* %53, align 4
  %541 = mul nsw i32 4, %540
  %542 = add nsw i32 %541, 1
  %543 = icmp slt i32 %539, %542
  br i1 %543, label %544, label %562

544:                                              ; preds = %538
  %545 = load i32, i32* %57, align 4
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds [17 x [17 x double]], [17 x [17 x double]]* %18, i64 0, i64 %546
  %548 = load i32, i32* %58, align 4
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds [17 x double], [17 x double]* %547, i64 0, i64 %549
  %551 = load double, double* %550, align 8
  %552 = load i32, i32* %58, align 4
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds [17 x double], [17 x double]* %21, i64 0, i64 %553
  %555 = load double, double* %554, align 8
  %556 = fmul double %551, %555
  %557 = load double, double* %59, align 8
  %558 = fadd double %557, %556
  store double %558, double* %59, align 8
  br label %559

559:                                              ; preds = %544
  %560 = load i32, i32* %58, align 4
  %561 = add nsw i32 %560, 1
  store i32 %561, i32* %58, align 4
  br label %538

562:                                              ; preds = %538
  %563 = load double, double* %59, align 8
  %564 = fmul double 1.000000e+00, %563
  %565 = load i32, i32* %57, align 4
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds [17 x double], [17 x double]* %24, i64 0, i64 %566
  %568 = load double, double* %567, align 8
  %569 = fmul double 0.000000e+00, %568
  %570 = fadd double %564, %569
  %571 = load i32, i32* %57, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds [17 x double], [17 x double]* %24, i64 0, i64 %572
  store double %570, double* %573, align 8
  br label %574

574:                                              ; preds = %562
  %575 = load i32, i32* %57, align 4
  %576 = add nsw i32 %575, 1
  store i32 %576, i32* %57, align 4
  br label %531

577:                                              ; preds = %531
  store i32 0, i32* %60, align 4
  br label %578

578:                                              ; preds = %621, %577
  %579 = load i32, i32* %60, align 4
  %580 = load i32, i32* %53, align 4
  %581 = mul nsw i32 4, %580
  %582 = add nsw i32 %581, 1
  %583 = icmp slt i32 %579, %582
  br i1 %583, label %584, label %624

584:                                              ; preds = %578
  store double 0.000000e+00, double* %62, align 8
  store i32 0, i32* %61, align 4
  br label %585

585:                                              ; preds = %606, %584
  %586 = load i32, i32* %61, align 4
  %587 = load i32, i32* %53, align 4
  %588 = mul nsw i32 4, %587
  %589 = add nsw i32 %588, 1
  %590 = icmp slt i32 %586, %589
  br i1 %590, label %591, label %609

591:                                              ; preds = %585
  %592 = load i32, i32* %60, align 4
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds [17 x [17 x double]], [17 x [17 x double]]* %19, i64 0, i64 %593
  %595 = load i32, i32* %61, align 4
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds [17 x double], [17 x double]* %594, i64 0, i64 %596
  %598 = load double, double* %597, align 8
  %599 = load i32, i32* %61, align 4
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds [17 x double], [17 x double]* %20, i64 0, i64 %600
  %602 = load double, double* %601, align 8
  %603 = fmul double %598, %602
  %604 = load double, double* %62, align 8
  %605 = fadd double %604, %603
  store double %605, double* %62, align 8
  br label %606

606:                                              ; preds = %591
  %607 = load i32, i32* %61, align 4
  %608 = add nsw i32 %607, 1
  store i32 %608, i32* %61, align 4
  br label %585

609:                                              ; preds = %585
  %610 = load double, double* %62, align 8
  %611 = fmul double 1.000000e+00, %610
  %612 = load i32, i32* %60, align 4
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds [17 x double], [17 x double]* %25, i64 0, i64 %613
  %615 = load double, double* %614, align 8
  %616 = fmul double 0.000000e+00, %615
  %617 = fadd double %611, %616
  %618 = load i32, i32* %60, align 4
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds [17 x double], [17 x double]* %25, i64 0, i64 %619
  store double %617, double* %620, align 8
  br label %621

621:                                              ; preds = %609
  %622 = load i32, i32* %60, align 4
  %623 = add nsw i32 %622, 1
  store i32 %623, i32* %60, align 4
  br label %578

624:                                              ; preds = %578
  %625 = getelementptr inbounds [17 x double], [17 x double]* %27, i64 0, i64 0
  %626 = getelementptr inbounds [17 x double], [17 x double]* %23, i64 0, i64 0
  %627 = load i32, i32* %53, align 4
  %628 = mul nsw i32 4, %627
  %629 = add nsw i32 %628, 1
  %630 = call double @__dot(double* %625, double* %626, i32 %629)
  store double %630, double* %40, align 8
  %631 = load double, double* %40, align 8
  %632 = fcmp oeq double %631, 0.000000e+00
  br i1 %632, label %633, label %634

633:                                              ; preds = %624
  store i32 1, i32* %38, align 4
  br label %1024

634:                                              ; preds = %624
  %635 = load double, double* %45, align 8
  %636 = load double, double* %40, align 8
  %637 = fdiv double %635, %636
  store double %637, double* %41, align 8
  br i1 false, label %638, label %643

638:                                              ; preds = %634
  %639 = load double, double* %41, align 8
  %640 = fptrunc double %639 to float
  %641 = call i32 @__isinff(float %640) #11
  %642 = icmp ne i32 %641, 0
  br i1 %642, label %653, label %654

643:                                              ; preds = %634
  br i1 true, label %644, label %648

644:                                              ; preds = %643
  %645 = load double, double* %41, align 8
  %646 = call i32 @__isinf(double %645) #11
  %647 = icmp ne i32 %646, 0
  br i1 %647, label %653, label %654

648:                                              ; preds = %643
  %649 = load double, double* %41, align 8
  %650 = fpext double %649 to x86_fp80
  %651 = call i32 @__isinfl(x86_fp80 %650) #11
  %652 = icmp ne i32 %651, 0
  br i1 %652, label %653, label %654

653:                                              ; preds = %648, %644, %638
  store i32 1, i32* %38, align 4
  br label %1024

654:                                              ; preds = %648, %644, %638
  %655 = getelementptr inbounds [17 x double], [17 x double]* %15, i64 0, i64 0
  %656 = getelementptr inbounds [17 x double], [17 x double]* %24, i64 0, i64 0
  %657 = load double, double* %41, align 8
  %658 = fneg double %657
  %659 = getelementptr inbounds [17 x double], [17 x double]* %25, i64 0, i64 0
  %660 = load i32, i32* %53, align 4
  %661 = mul nsw i32 4, %660
  %662 = add nsw i32 %661, 1
  call void @__axpy(double* %655, double 1.000000e+00, double* %656, double %658, double* %659, i32 %662)
  store i32 0, i32* %63, align 4
  br label %663

663:                                              ; preds = %706, %654
  %664 = load i32, i32* %63, align 4
  %665 = load i32, i32* %53, align 4
  %666 = mul nsw i32 4, %665
  %667 = add nsw i32 %666, 1
  %668 = icmp slt i32 %664, %667
  br i1 %668, label %669, label %709

669:                                              ; preds = %663
  store double 0.000000e+00, double* %65, align 8
  store i32 0, i32* %64, align 4
  br label %670

670:                                              ; preds = %691, %669
  %671 = load i32, i32* %64, align 4
  %672 = load i32, i32* %53, align 4
  %673 = mul nsw i32 4, %672
  %674 = add nsw i32 %673, 1
  %675 = icmp slt i32 %671, %674
  br i1 %675, label %676, label %694

676:                                              ; preds = %670
  %677 = load i32, i32* %63, align 4
  %678 = sext i32 %677 to i64
  %679 = getelementptr inbounds [17 x [17 x double]], [17 x [17 x double]]* %26, i64 0, i64 %678
  %680 = load i32, i32* %64, align 4
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds [17 x double], [17 x double]* %679, i64 0, i64 %681
  %683 = load double, double* %682, align 8
  %684 = load i32, i32* %64, align 4
  %685 = sext i32 %684 to i64
  %686 = getelementptr inbounds [17 x double], [17 x double]* %15, i64 0, i64 %685
  %687 = load double, double* %686, align 8
  %688 = fmul double %683, %687
  %689 = load double, double* %65, align 8
  %690 = fadd double %689, %688
  store double %690, double* %65, align 8
  br label %691

691:                                              ; preds = %676
  %692 = load i32, i32* %64, align 4
  %693 = add nsw i32 %692, 1
  store i32 %693, i32* %64, align 4
  br label %670

694:                                              ; preds = %670
  %695 = load double, double* %65, align 8
  %696 = fmul double 1.000000e+00, %695
  %697 = load i32, i32* %63, align 4
  %698 = sext i32 %697 to i64
  %699 = getelementptr inbounds [17 x double], [17 x double]* %16, i64 0, i64 %698
  %700 = load double, double* %699, align 8
  %701 = fmul double 0.000000e+00, %700
  %702 = fadd double %696, %701
  %703 = load i32, i32* %63, align 4
  %704 = sext i32 %703 to i64
  %705 = getelementptr inbounds [17 x double], [17 x double]* %16, i64 0, i64 %704
  store double %702, double* %705, align 8
  br label %706

706:                                              ; preds = %694
  %707 = load i32, i32* %63, align 4
  %708 = add nsw i32 %707, 1
  store i32 %708, i32* %63, align 4
  br label %663

709:                                              ; preds = %663
  %710 = getelementptr inbounds [17 x double], [17 x double]* %17, i64 0, i64 0
  %711 = getelementptr inbounds [17 x double], [17 x double]* %21, i64 0, i64 0
  %712 = load double, double* %41, align 8
  %713 = fneg double %712
  %714 = getelementptr inbounds [17 x double], [17 x double]* %23, i64 0, i64 0
  %715 = load i32, i32* %53, align 4
  %716 = mul nsw i32 4, %715
  %717 = add nsw i32 %716, 1
  call void @__axpy(double* %710, double 1.000000e+00, double* %711, double %713, double* %714, i32 %717)
  %718 = getelementptr inbounds [17 x double], [17 x double]* %17, i64 0, i64 0
  %719 = getelementptr inbounds [17 x double], [17 x double]* %16, i64 0, i64 0
  %720 = load i32, i32* %53, align 4
  %721 = mul nsw i32 4, %720
  %722 = add nsw i32 %721, 1
  %723 = call double @__dot(double* %718, double* %719, i32 %722)
  store double %723, double* %42, align 8
  %724 = getelementptr inbounds [17 x double], [17 x double]* %15, i64 0, i64 0
  %725 = getelementptr inbounds [17 x double], [17 x double]* %16, i64 0, i64 0
  %726 = load i32, i32* %53, align 4
  %727 = mul nsw i32 4, %726
  %728 = add nsw i32 %727, 1
  %729 = call double @__dot(double* %724, double* %725, i32 %728)
  store double %729, double* %43, align 8
  %730 = getelementptr inbounds [17 x double], [17 x double]* %22, i64 0, i64 0
  %731 = getelementptr inbounds [17 x double], [17 x double]* %22, i64 0, i64 0
  %732 = load double, double* %41, align 8
  %733 = getelementptr inbounds [17 x double], [17 x double]* %20, i64 0, i64 0
  %734 = load i32, i32* %53, align 4
  %735 = mul nsw i32 4, %734
  %736 = add nsw i32 %735, 1
  call void @__axpy(double* %730, double 1.000000e+00, double* %731, double %732, double* %733, i32 %736)
  %737 = getelementptr inbounds [17 x double], [17 x double]* %15, i64 0, i64 0
  %738 = getelementptr inbounds [17 x double], [17 x double]* %21, i64 0, i64 0
  %739 = load double, double* %41, align 8
  %740 = fneg double %739
  %741 = getelementptr inbounds [17 x double], [17 x double]* %23, i64 0, i64 0
  %742 = load i32, i32* %53, align 4
  %743 = mul nsw i32 4, %742
  %744 = add nsw i32 %743, 1
  call void @__axpy(double* %737, double 1.000000e+00, double* %738, double %740, double* %741, i32 %744)
  store i32 0, i32* %66, align 4
  br label %745

745:                                              ; preds = %788, %709
  %746 = load i32, i32* %66, align 4
  %747 = load i32, i32* %53, align 4
  %748 = mul nsw i32 4, %747
  %749 = add nsw i32 %748, 1
  %750 = icmp slt i32 %746, %749
  br i1 %750, label %751, label %791

751:                                              ; preds = %745
  store double 0.000000e+00, double* %68, align 8
  store i32 0, i32* %67, align 4
  br label %752

752:                                              ; preds = %773, %751
  %753 = load i32, i32* %67, align 4
  %754 = load i32, i32* %53, align 4
  %755 = mul nsw i32 4, %754
  %756 = add nsw i32 %755, 1
  %757 = icmp slt i32 %753, %756
  br i1 %757, label %758, label %776

758:                                              ; preds = %752
  %759 = load i32, i32* %66, align 4
  %760 = sext i32 %759 to i64
  %761 = getelementptr inbounds [17 x [17 x double]], [17 x [17 x double]]* %26, i64 0, i64 %760
  %762 = load i32, i32* %67, align 4
  %763 = sext i32 %762 to i64
  %764 = getelementptr inbounds [17 x double], [17 x double]* %761, i64 0, i64 %763
  %765 = load double, double* %764, align 8
  %766 = load i32, i32* %67, align 4
  %767 = sext i32 %766 to i64
  %768 = getelementptr inbounds [17 x double], [17 x double]* %15, i64 0, i64 %767
  %769 = load double, double* %768, align 8
  %770 = fmul double %765, %769
  %771 = load double, double* %68, align 8
  %772 = fadd double %771, %770
  store double %772, double* %68, align 8
  br label %773

773:                                              ; preds = %758
  %774 = load i32, i32* %67, align 4
  %775 = add nsw i32 %774, 1
  store i32 %775, i32* %67, align 4
  br label %752

776:                                              ; preds = %752
  %777 = load double, double* %68, align 8
  %778 = fmul double 1.000000e+00, %777
  %779 = load i32, i32* %66, align 4
  %780 = sext i32 %779 to i64
  %781 = getelementptr inbounds [17 x double], [17 x double]* %16, i64 0, i64 %780
  %782 = load double, double* %781, align 8
  %783 = fmul double 0.000000e+00, %782
  %784 = fadd double %778, %783
  %785 = load i32, i32* %66, align 4
  %786 = sext i32 %785 to i64
  %787 = getelementptr inbounds [17 x double], [17 x double]* %16, i64 0, i64 %786
  store double %784, double* %787, align 8
  br label %788

788:                                              ; preds = %776
  %789 = load i32, i32* %66, align 4
  %790 = add nsw i32 %789, 1
  store i32 %790, i32* %66, align 4
  br label %745

791:                                              ; preds = %745
  %792 = getelementptr inbounds [17 x double], [17 x double]* %15, i64 0, i64 0
  %793 = getelementptr inbounds [17 x double], [17 x double]* %16, i64 0, i64 0
  %794 = load i32, i32* %53, align 4
  %795 = mul nsw i32 4, %794
  %796 = add nsw i32 %795, 1
  %797 = call double @__dot(double* %792, double* %793, i32 %796)
  store double %797, double* %51, align 8
  %798 = load double, double* %51, align 8
  %799 = fcmp olt double %798, 0.000000e+00
  br i1 %799, label %800, label %801

800:                                              ; preds = %791
  store double 0.000000e+00, double* %51, align 8
  br label %804

801:                                              ; preds = %791
  %802 = load double, double* %51, align 8
  %803 = call double @sqrt(double %802) #8
  store double %803, double* %51, align 8
  br label %804

804:                                              ; preds = %801, %800
  %805 = load double, double* %51, align 8
  %806 = load double, double* %14, align 8
  %807 = load double, double* %48, align 8
  %808 = fmul double %806, %807
  %809 = fcmp olt double %805, %808
  br i1 %809, label %810, label %811

810:                                              ; preds = %804
  store i32 1, i32* %39, align 4
  br label %1024

811:                                              ; preds = %804
  %812 = load double, double* %43, align 8
  %813 = fcmp oeq double %812, 0.000000e+00
  br i1 %813, label %814, label %815

814:                                              ; preds = %811
  store i32 1, i32* %38, align 4
  br label %1024

815:                                              ; preds = %811
  %816 = load double, double* %42, align 8
  %817 = load double, double* %43, align 8
  %818 = fdiv double %816, %817
  store double %818, double* %44, align 8
  br i1 false, label %819, label %824

819:                                              ; preds = %815
  %820 = load double, double* %44, align 8
  %821 = fptrunc double %820 to float
  %822 = call i32 @__isinff(float %821) #11
  %823 = icmp ne i32 %822, 0
  br i1 %823, label %834, label %835

824:                                              ; preds = %815
  br i1 true, label %825, label %829

825:                                              ; preds = %824
  %826 = load double, double* %44, align 8
  %827 = call i32 @__isinf(double %826) #11
  %828 = icmp ne i32 %827, 0
  br i1 %828, label %834, label %835

829:                                              ; preds = %824
  %830 = load double, double* %44, align 8
  %831 = fpext double %830 to x86_fp80
  %832 = call i32 @__isinfl(x86_fp80 %831) #11
  %833 = icmp ne i32 %832, 0
  br i1 %833, label %834, label %835

834:                                              ; preds = %829, %825, %819
  store i32 1, i32* %38, align 4
  br label %1024

835:                                              ; preds = %829, %825, %819
  %836 = getelementptr inbounds [17 x double], [17 x double]* %22, i64 0, i64 0
  %837 = getelementptr inbounds [17 x double], [17 x double]* %22, i64 0, i64 0
  %838 = load double, double* %44, align 8
  %839 = getelementptr inbounds [17 x double], [17 x double]* %21, i64 0, i64 0
  %840 = load i32, i32* %53, align 4
  %841 = mul nsw i32 4, %840
  %842 = add nsw i32 %841, 1
  call void @__axpy(double* %836, double 1.000000e+00, double* %837, double %838, double* %839, i32 %842)
  %843 = getelementptr inbounds [17 x double], [17 x double]* %22, i64 0, i64 0
  %844 = getelementptr inbounds [17 x double], [17 x double]* %22, i64 0, i64 0
  %845 = load double, double* %44, align 8
  %846 = fneg double %845
  %847 = load double, double* %41, align 8
  %848 = fmul double %846, %847
  %849 = getelementptr inbounds [17 x double], [17 x double]* %23, i64 0, i64 0
  %850 = load i32, i32* %53, align 4
  %851 = mul nsw i32 4, %850
  %852 = add nsw i32 %851, 1
  call void @__axpy(double* %843, double 1.000000e+00, double* %844, double %848, double* %849, i32 %852)
  %853 = getelementptr inbounds [17 x double], [17 x double]* %21, i64 0, i64 0
  %854 = getelementptr inbounds [17 x double], [17 x double]* %21, i64 0, i64 0
  %855 = load double, double* %44, align 8
  %856 = fneg double %855
  %857 = getelementptr inbounds [17 x double], [17 x double]* %24, i64 0, i64 0
  %858 = load i32, i32* %53, align 4
  %859 = mul nsw i32 4, %858
  %860 = add nsw i32 %859, 1
  call void @__axpy(double* %853, double 1.000000e+00, double* %854, double %856, double* %857, i32 %860)
  %861 = getelementptr inbounds [17 x double], [17 x double]* %21, i64 0, i64 0
  %862 = getelementptr inbounds [17 x double], [17 x double]* %21, i64 0, i64 0
  %863 = load double, double* %41, align 8
  %864 = fneg double %863
  %865 = getelementptr inbounds [17 x double], [17 x double]* %23, i64 0, i64 0
  %866 = load i32, i32* %53, align 4
  %867 = mul nsw i32 4, %866
  %868 = add nsw i32 %867, 1
  call void @__axpy(double* %861, double 1.000000e+00, double* %862, double %864, double* %865, i32 %868)
  %869 = getelementptr inbounds [17 x double], [17 x double]* %21, i64 0, i64 0
  %870 = getelementptr inbounds [17 x double], [17 x double]* %21, i64 0, i64 0
  %871 = load double, double* %44, align 8
  %872 = load double, double* %41, align 8
  %873 = fmul double %871, %872
  %874 = getelementptr inbounds [17 x double], [17 x double]* %25, i64 0, i64 0
  %875 = load i32, i32* %53, align 4
  %876 = mul nsw i32 4, %875
  %877 = add nsw i32 %876, 1
  call void @__axpy(double* %869, double 1.000000e+00, double* %870, double %873, double* %874, i32 %877)
  store i32 0, i32* %69, align 4
  br label %878

878:                                              ; preds = %921, %835
  %879 = load i32, i32* %69, align 4
  %880 = load i32, i32* %53, align 4
  %881 = mul nsw i32 4, %880
  %882 = add nsw i32 %881, 1
  %883 = icmp slt i32 %879, %882
  br i1 %883, label %884, label %924

884:                                              ; preds = %878
  store double 0.000000e+00, double* %71, align 8
  store i32 0, i32* %70, align 4
  br label %885

885:                                              ; preds = %906, %884
  %886 = load i32, i32* %70, align 4
  %887 = load i32, i32* %53, align 4
  %888 = mul nsw i32 4, %887
  %889 = add nsw i32 %888, 1
  %890 = icmp slt i32 %886, %889
  br i1 %890, label %891, label %909

891:                                              ; preds = %885
  %892 = load i32, i32* %69, align 4
  %893 = sext i32 %892 to i64
  %894 = getelementptr inbounds [17 x [17 x double]], [17 x [17 x double]]* %26, i64 0, i64 %893
  %895 = load i32, i32* %70, align 4
  %896 = sext i32 %895 to i64
  %897 = getelementptr inbounds [17 x double], [17 x double]* %894, i64 0, i64 %896
  %898 = load double, double* %897, align 8
  %899 = load i32, i32* %70, align 4
  %900 = sext i32 %899 to i64
  %901 = getelementptr inbounds [17 x double], [17 x double]* %21, i64 0, i64 %900
  %902 = load double, double* %901, align 8
  %903 = fmul double %898, %902
  %904 = load double, double* %71, align 8
  %905 = fadd double %904, %903
  store double %905, double* %71, align 8
  br label %906

906:                                              ; preds = %891
  %907 = load i32, i32* %70, align 4
  %908 = add nsw i32 %907, 1
  store i32 %908, i32* %70, align 4
  br label %885

909:                                              ; preds = %885
  %910 = load double, double* %71, align 8
  %911 = fmul double 1.000000e+00, %910
  %912 = load i32, i32* %69, align 4
  %913 = sext i32 %912 to i64
  %914 = getelementptr inbounds [17 x double], [17 x double]* %15, i64 0, i64 %913
  %915 = load double, double* %914, align 8
  %916 = fmul double 0.000000e+00, %915
  %917 = fadd double %911, %916
  %918 = load i32, i32* %69, align 4
  %919 = sext i32 %918 to i64
  %920 = getelementptr inbounds [17 x double], [17 x double]* %15, i64 0, i64 %919
  store double %917, double* %920, align 8
  br label %921

921:                                              ; preds = %909
  %922 = load i32, i32* %69, align 4
  %923 = add nsw i32 %922, 1
  store i32 %923, i32* %69, align 4
  br label %878

924:                                              ; preds = %878
  %925 = getelementptr inbounds [17 x double], [17 x double]* %21, i64 0, i64 0
  %926 = getelementptr inbounds [17 x double], [17 x double]* %15, i64 0, i64 0
  %927 = load i32, i32* %53, align 4
  %928 = mul nsw i32 4, %927
  %929 = add nsw i32 %928, 1
  %930 = call double @__dot(double* %925, double* %926, i32 %929)
  store double %930, double* %50, align 8
  store double 0.000000e+00, double* %49, align 8
  %931 = load double, double* %50, align 8
  %932 = fcmp ogt double %931, 0.000000e+00
  br i1 %932, label %933, label %936

933:                                              ; preds = %924
  %934 = load double, double* %50, align 8
  %935 = call double @sqrt(double %934) #8
  store double %935, double* %49, align 8
  br label %936

936:                                              ; preds = %933, %924
  %937 = load double, double* %49, align 8
  %938 = load double, double* %14, align 8
  %939 = load double, double* %48, align 8
  %940 = fmul double %938, %939
  %941 = fcmp olt double %937, %940
  br i1 %941, label %942, label %943

942:                                              ; preds = %936
  store i32 1, i32* %39, align 4
  br label %1024

943:                                              ; preds = %936
  %944 = getelementptr inbounds [17 x double], [17 x double]* %27, i64 0, i64 0
  %945 = getelementptr inbounds [17 x double], [17 x double]* %21, i64 0, i64 0
  %946 = load i32, i32* %53, align 4
  %947 = mul nsw i32 4, %946
  %948 = add nsw i32 %947, 1
  %949 = call double @__dot(double* %944, double* %945, i32 %948)
  store double %949, double* %46, align 8
  br i1 false, label %950, label %955

950:                                              ; preds = %943
  %951 = load double, double* %46, align 8
  %952 = fptrunc double %951 to float
  %953 = call i32 @__isinff(float %952) #11
  %954 = icmp ne i32 %953, 0
  br i1 %954, label %965, label %966

955:                                              ; preds = %943
  br i1 true, label %956, label %960

956:                                              ; preds = %955
  %957 = load double, double* %46, align 8
  %958 = call i32 @__isinf(double %957) #11
  %959 = icmp ne i32 %958, 0
  br i1 %959, label %965, label %966

960:                                              ; preds = %955
  %961 = load double, double* %46, align 8
  %962 = fpext double %961 to x86_fp80
  %963 = call i32 @__isinfl(x86_fp80 %962) #11
  %964 = icmp ne i32 %963, 0
  br i1 %964, label %965, label %966

965:                                              ; preds = %960, %956, %950
  store i32 1, i32* %38, align 4
  br label %1024

966:                                              ; preds = %960, %956, %950
  %967 = load double, double* %46, align 8
  %968 = fcmp oeq double %967, 0.000000e+00
  br i1 %968, label %969, label %970

969:                                              ; preds = %966
  store i32 1, i32* %38, align 4
  br label %1024

970:                                              ; preds = %966
  %971 = load double, double* %44, align 8
  %972 = fcmp oeq double %971, 0.000000e+00
  br i1 %972, label %973, label %974

973:                                              ; preds = %970
  store i32 1, i32* %38, align 4
  br label %1024

974:                                              ; preds = %970
  %975 = load double, double* %46, align 8
  %976 = load double, double* %45, align 8
  %977 = fdiv double %975, %976
  %978 = load double, double* %41, align 8
  %979 = load double, double* %44, align 8
  %980 = fdiv double %978, %979
  %981 = fmul double %977, %980
  store double %981, double* %47, align 8
  br i1 false, label %982, label %987

982:                                              ; preds = %974
  %983 = load double, double* %47, align 8
  %984 = fptrunc double %983 to float
  %985 = call i32 @__isinff(float %984) #11
  %986 = icmp ne i32 %985, 0
  br i1 %986, label %997, label %998

987:                                              ; preds = %974
  br i1 true, label %988, label %992

988:                                              ; preds = %987
  %989 = load double, double* %47, align 8
  %990 = call i32 @__isinf(double %989) #11
  %991 = icmp ne i32 %990, 0
  br i1 %991, label %997, label %998

992:                                              ; preds = %987
  %993 = load double, double* %47, align 8
  %994 = fpext double %993 to x86_fp80
  %995 = call i32 @__isinfl(x86_fp80 %994) #11
  %996 = icmp ne i32 %995, 0
  br i1 %996, label %997, label %998

997:                                              ; preds = %992, %988, %982
  store i32 1, i32* %38, align 4
  br label %1024

998:                                              ; preds = %992, %988, %982
  %999 = load double, double* %47, align 8
  %1000 = fcmp oeq double %999, 0.000000e+00
  br i1 %1000, label %1001, label %1002

1001:                                             ; preds = %998
  store i32 1, i32* %38, align 4
  br label %1024

1002:                                             ; preds = %998
  %1003 = getelementptr inbounds [17 x double], [17 x double]* %20, i64 0, i64 0
  %1004 = getelementptr inbounds [17 x double], [17 x double]* %21, i64 0, i64 0
  %1005 = load double, double* %47, align 8
  %1006 = getelementptr inbounds [17 x double], [17 x double]* %20, i64 0, i64 0
  %1007 = load i32, i32* %53, align 4
  %1008 = mul nsw i32 4, %1007
  %1009 = add nsw i32 %1008, 1
  call void @__axpy(double* %1003, double 1.000000e+00, double* %1004, double %1005, double* %1006, i32 %1009)
  %1010 = getelementptr inbounds [17 x double], [17 x double]* %20, i64 0, i64 0
  %1011 = getelementptr inbounds [17 x double], [17 x double]* %20, i64 0, i64 0
  %1012 = load double, double* %44, align 8
  %1013 = fneg double %1012
  %1014 = load double, double* %47, align 8
  %1015 = fmul double %1013, %1014
  %1016 = getelementptr inbounds [17 x double], [17 x double]* %23, i64 0, i64 0
  %1017 = load i32, i32* %53, align 4
  %1018 = mul nsw i32 4, %1017
  %1019 = add nsw i32 %1018, 1
  call void @__axpy(double* %1010, double 1.000000e+00, double* %1011, double %1015, double* %1016, i32 %1019)
  %1020 = load double, double* %46, align 8
  store double %1020, double* %45, align 8
  br label %1021

1021:                                             ; preds = %1002
  %1022 = load i32, i32* %34, align 4
  %1023 = add nsw i32 %1022, 1
  store i32 %1023, i32* %34, align 4
  br label %475

1024:                                             ; preds = %1001, %997, %973, %969, %965, %942, %834, %814, %810, %653, %633, %475
  store i32 0, i32* %35, align 4
  br label %1025

1025:                                             ; preds = %1044, %1024
  %1026 = load i32, i32* %35, align 4
  %1027 = load i32, i32* %53, align 4
  %1028 = mul nsw i32 4, %1027
  %1029 = add nsw i32 %1028, 1
  %1030 = icmp slt i32 %1026, %1029
  br i1 %1030, label %1031, label %1047

1031:                                             ; preds = %1025
  %1032 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %1033 = load i32, i32* %9, align 4
  %1034 = load i32, i32* %10, align 4
  %1035 = load i32, i32* %10, align 4
  %1036 = load i32, i32* %35, align 4
  %1037 = sext i32 %1036 to i64
  %1038 = getelementptr inbounds [17 x double], [17 x double]* %22, i64 0, i64 %1037
  %1039 = load double, double* %1038, align 8
  %1040 = load i32, i32* %35, align 4
  %1041 = sext i32 %1040 to i64
  %1042 = getelementptr inbounds [18 x i32], [18 x i32]* %29, i64 0, i64 %1041
  %1043 = load i32, i32* %1042, align 4
  call void @add_grids(%struct.domain_type* %1032, i32 %1033, i32 %1034, double 1.000000e+00, i32 %1035, double %1039, i32 %1043)
  br label %1044

1044:                                             ; preds = %1031
  %1045 = load i32, i32* %35, align 4
  %1046 = add nsw i32 %1045, 1
  store i32 %1046, i32* %35, align 4
  br label %1025

1047:                                             ; preds = %1025
  %1048 = load i32, i32* %38, align 4
  %1049 = icmp ne i32 %1048, 0
  br i1 %1049, label %1108, label %1050

1050:                                             ; preds = %1047
  %1051 = load i32, i32* %39, align 4
  %1052 = icmp ne i32 %1051, 0
  br i1 %1052, label %1108, label %1053

1053:                                             ; preds = %1050
  %1054 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %1055 = load i32, i32* %9, align 4
  %1056 = getelementptr inbounds [17 x double], [17 x double]* %20, i64 0, i64 0
  %1057 = load double, double* %1056, align 16
  %1058 = getelementptr inbounds [18 x i32], [18 x i32]* %29, i64 0, i64 0
  %1059 = load i32, i32* %1058, align 16
  call void @add_grids(%struct.domain_type* %1054, i32 %1055, i32 14, double 0.000000e+00, i32 14, double %1057, i32 %1059)
  store i32 1, i32* %35, align 4
  br label %1060

1060:                                             ; preds = %1077, %1053
  %1061 = load i32, i32* %35, align 4
  %1062 = load i32, i32* %53, align 4
  %1063 = mul nsw i32 4, %1062
  %1064 = add nsw i32 %1063, 1
  %1065 = icmp slt i32 %1061, %1064
  br i1 %1065, label %1066, label %1080

1066:                                             ; preds = %1060
  %1067 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %1068 = load i32, i32* %9, align 4
  %1069 = load i32, i32* %35, align 4
  %1070 = sext i32 %1069 to i64
  %1071 = getelementptr inbounds [17 x double], [17 x double]* %20, i64 0, i64 %1070
  %1072 = load double, double* %1071, align 8
  %1073 = load i32, i32* %35, align 4
  %1074 = sext i32 %1073 to i64
  %1075 = getelementptr inbounds [18 x i32], [18 x i32]* %29, i64 0, i64 %1074
  %1076 = load i32, i32* %1075, align 4
  call void @add_grids(%struct.domain_type* %1067, i32 %1068, i32 14, double 1.000000e+00, i32 14, double %1072, i32 %1076)
  br label %1077

1077:                                             ; preds = %1066
  %1078 = load i32, i32* %35, align 4
  %1079 = add nsw i32 %1078, 1
  store i32 %1079, i32* %35, align 4
  br label %1060

1080:                                             ; preds = %1060
  %1081 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %1082 = load i32, i32* %9, align 4
  %1083 = getelementptr inbounds [17 x double], [17 x double]* %21, i64 0, i64 0
  %1084 = load double, double* %1083, align 16
  %1085 = getelementptr inbounds [18 x i32], [18 x i32]* %29, i64 0, i64 0
  %1086 = load i32, i32* %1085, align 16
  call void @add_grids(%struct.domain_type* %1081, i32 %1082, i32 13, double 0.000000e+00, i32 13, double %1084, i32 %1086)
  store i32 1, i32* %35, align 4
  br label %1087

1087:                                             ; preds = %1104, %1080
  %1088 = load i32, i32* %35, align 4
  %1089 = load i32, i32* %53, align 4
  %1090 = mul nsw i32 4, %1089
  %1091 = add nsw i32 %1090, 1
  %1092 = icmp slt i32 %1088, %1091
  br i1 %1092, label %1093, label %1107

1093:                                             ; preds = %1087
  %1094 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %1095 = load i32, i32* %9, align 4
  %1096 = load i32, i32* %35, align 4
  %1097 = sext i32 %1096 to i64
  %1098 = getelementptr inbounds [17 x double], [17 x double]* %21, i64 0, i64 %1097
  %1099 = load double, double* %1098, align 8
  %1100 = load i32, i32* %35, align 4
  %1101 = sext i32 %1100 to i64
  %1102 = getelementptr inbounds [18 x i32], [18 x i32]* %29, i64 0, i64 %1101
  %1103 = load i32, i32* %1102, align 4
  call void @add_grids(%struct.domain_type* %1094, i32 %1095, i32 13, double 1.000000e+00, i32 13, double %1099, i32 %1103)
  br label %1104

1104:                                             ; preds = %1093
  %1105 = load i32, i32* %35, align 4
  %1106 = add nsw i32 %1105, 1
  store i32 %1106, i32* %35, align 4
  br label %1087

1107:                                             ; preds = %1087
  br label %1108

1108:                                             ; preds = %1107, %1050, %1047
  %1109 = load i32, i32* %53, align 4
  %1110 = load i32, i32* %33, align 4
  %1111 = add nsw i32 %1110, %1109
  store i32 %1111, i32* %33, align 4
  br label %256

1112:                                             ; preds = %267
  %1113 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %1114 = load i32, i32* %9, align 4
  %1115 = load i32, i32* %10, align 4
  %1116 = load i32, i32* %10, align 4
  call void @mul_grids(%struct.domain_type* %1113, i32 %1114, i32 %1115, double 1.000000e+00, i32 4, i32 %1116)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @BiCGStab(%struct.domain_type* %0, i32 %1, i32 %2, i32 %3, double %4, double %5, double %6) #0 {
  %8 = alloca %struct.domain_type*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  store %struct.domain_type* %0, %struct.domain_type** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store double %4, double* %12, align 8
  store double %5, double* %13, align 8
  store double %6, double* %14, align 8
  store i32 200, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %30 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load double, double* %12, align 8
  %35 = load double, double* %13, align 8
  call void @residual(%struct.domain_type* %30, i32 %31, i32 12, i32 %32, i32 %33, double %34, double %35)
  %36 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %37 = load i32, i32* %9, align 4
  call void @scale_grid(%struct.domain_type* %36, i32 %37, i32 13, double 1.000000e+00, i32 12)
  %38 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %39 = load i32, i32* %9, align 4
  call void @scale_grid(%struct.domain_type* %38, i32 %39, i32 14, double 1.000000e+00, i32 12)
  %40 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call double @dot(%struct.domain_type* %40, i32 %41, i32 13, i32 12)
  store double %42, double* %19, align 8
  %43 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call double @norm(%struct.domain_type* %43, i32 %44, i32 13)
  store double %45, double* %20, align 8
  %46 = load double, double* %19, align 8
  %47 = fcmp oeq double %46, 0.000000e+00
  br i1 %47, label %48, label %49

48:                                               ; preds = %7
  store i32 1, i32* %18, align 4
  br label %49

49:                                               ; preds = %48, %7
  %50 = load double, double* %20, align 8
  %51 = fcmp oeq double %50, 0.000000e+00
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 1, i32* %18, align 4
  br label %53

53:                                               ; preds = %52, %49
  br label %54

54:                                               ; preds = %223, %53
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %15, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = load i32, i32* %17, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %18, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  br label %65

65:                                               ; preds = %61, %58, %54
  %66 = phi i1 [ false, %58 ], [ false, %54 ], [ %64, %61 ]
  br i1 %66, label %67, label %232

67:                                               ; preds = %65
  %68 = load i32, i32* %16, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %16, align 4
  %70 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %71 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  %74 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %75 = load i32, i32* %9, align 4
  call void @mul_grids(%struct.domain_type* %74, i32 %75, i32 10, double 1.000000e+00, i32 4, i32 14)
  %76 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load double, double* %12, align 8
  %79 = load double, double* %13, align 8
  call void @apply_op(%struct.domain_type* %76, i32 %77, i32 16, i32 10, double %78, double %79)
  %80 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call double @dot(%struct.domain_type* %80, i32 %81, i32 16, i32 12)
  store double %82, double* %21, align 8
  %83 = load double, double* %21, align 8
  %84 = fcmp oeq double %83, 0.000000e+00
  br i1 %84, label %85, label %86

85:                                               ; preds = %67
  store i32 1, i32* %17, align 4
  br label %232

86:                                               ; preds = %67
  %87 = load double, double* %19, align 8
  %88 = load double, double* %21, align 8
  %89 = fdiv double %87, %88
  store double %89, double* %22, align 8
  br i1 false, label %90, label %95

90:                                               ; preds = %86
  %91 = load double, double* %22, align 8
  %92 = fptrunc double %91 to float
  %93 = call i32 @__isinff(float %92) #11
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %105, label %106

95:                                               ; preds = %86
  br i1 true, label %96, label %100

96:                                               ; preds = %95
  %97 = load double, double* %22, align 8
  %98 = call i32 @__isinf(double %97) #11
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %105, label %106

100:                                              ; preds = %95
  %101 = load double, double* %22, align 8
  %102 = fpext double %101 to x86_fp80
  %103 = call i32 @__isinfl(x86_fp80 %102) #11
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100, %96, %90
  store i32 1, i32* %17, align 4
  br label %232

106:                                              ; preds = %100, %96, %90
  %107 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load double, double* %22, align 8
  call void @add_grids(%struct.domain_type* %107, i32 %108, i32 %109, double 1.000000e+00, i32 %110, double %111, i32 14)
  %112 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %113 = load i32, i32* %9, align 4
  %114 = load double, double* %22, align 8
  %115 = fneg double %114
  call void @add_grids(%struct.domain_type* %112, i32 %113, i32 15, double 1.000000e+00, i32 13, double %115, i32 16)
  %116 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %117 = load i32, i32* %9, align 4
  %118 = call double @norm(%struct.domain_type* %116, i32 %117, i32 15)
  store double %118, double* %23, align 8
  %119 = load double, double* %23, align 8
  %120 = fcmp oeq double %119, 0.000000e+00
  br i1 %120, label %121, label %122

121:                                              ; preds = %106
  store i32 1, i32* %18, align 4
  br label %232

122:                                              ; preds = %106
  %123 = load double, double* %23, align 8
  %124 = load double, double* %14, align 8
  %125 = load double, double* %20, align 8
  %126 = fmul double %124, %125
  %127 = fcmp olt double %123, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  store i32 1, i32* %18, align 4
  br label %232

129:                                              ; preds = %122
  %130 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %131 = load i32, i32* %9, align 4
  call void @mul_grids(%struct.domain_type* %130, i32 %131, i32 10, double 1.000000e+00, i32 4, i32 15)
  %132 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %133 = load i32, i32* %9, align 4
  %134 = load double, double* %12, align 8
  %135 = load double, double* %13, align 8
  call void @apply_op(%struct.domain_type* %132, i32 %133, i32 17, i32 10, double %134, double %135)
  %136 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %137 = load i32, i32* %9, align 4
  %138 = call double @dot(%struct.domain_type* %136, i32 %137, i32 17, i32 17)
  store double %138, double* %24, align 8
  %139 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %140 = load i32, i32* %9, align 4
  %141 = call double @dot(%struct.domain_type* %139, i32 %140, i32 17, i32 15)
  store double %141, double* %25, align 8
  %142 = load double, double* %24, align 8
  %143 = fcmp oeq double %142, 0.000000e+00
  br i1 %143, label %144, label %145

144:                                              ; preds = %129
  store i32 1, i32* %18, align 4
  br label %232

145:                                              ; preds = %129
  %146 = load double, double* %25, align 8
  %147 = load double, double* %24, align 8
  %148 = fdiv double %146, %147
  store double %148, double* %26, align 8
  %149 = load double, double* %26, align 8
  %150 = fcmp oeq double %149, 0.000000e+00
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  store i32 1, i32* %17, align 4
  br label %232

152:                                              ; preds = %145
  br i1 false, label %153, label %158

153:                                              ; preds = %152
  %154 = load double, double* %26, align 8
  %155 = fptrunc double %154 to float
  %156 = call i32 @__isinff(float %155) #11
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %168, label %169

158:                                              ; preds = %152
  br i1 true, label %159, label %163

159:                                              ; preds = %158
  %160 = load double, double* %26, align 8
  %161 = call i32 @__isinf(double %160) #11
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %168, label %169

163:                                              ; preds = %158
  %164 = load double, double* %26, align 8
  %165 = fpext double %164 to x86_fp80
  %166 = call i32 @__isinfl(x86_fp80 %165) #11
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %163, %159, %153
  store i32 1, i32* %17, align 4
  br label %232

169:                                              ; preds = %163, %159, %153
  %170 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* %10, align 4
  %174 = load double, double* %26, align 8
  call void @add_grids(%struct.domain_type* %170, i32 %171, i32 %172, double 1.000000e+00, i32 %173, double %174, i32 15)
  %175 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %176 = load i32, i32* %9, align 4
  %177 = load double, double* %26, align 8
  %178 = fneg double %177
  call void @add_grids(%struct.domain_type* %175, i32 %176, i32 13, double 1.000000e+00, i32 15, double %178, i32 17)
  %179 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %180 = load i32, i32* %9, align 4
  %181 = call double @norm(%struct.domain_type* %179, i32 %180, i32 13)
  store double %181, double* %27, align 8
  %182 = load double, double* %27, align 8
  %183 = fcmp oeq double %182, 0.000000e+00
  br i1 %183, label %184, label %185

184:                                              ; preds = %169
  store i32 1, i32* %18, align 4
  br label %232

185:                                              ; preds = %169
  %186 = load double, double* %27, align 8
  %187 = load double, double* %14, align 8
  %188 = load double, double* %20, align 8
  %189 = fmul double %187, %188
  %190 = fcmp olt double %186, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %185
  store i32 1, i32* %18, align 4
  br label %232

192:                                              ; preds = %185
  %193 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %194 = load i32, i32* %9, align 4
  %195 = call double @dot(%struct.domain_type* %193, i32 %194, i32 13, i32 12)
  store double %195, double* %28, align 8
  %196 = load double, double* %28, align 8
  %197 = fcmp oeq double %196, 0.000000e+00
  br i1 %197, label %198, label %199

198:                                              ; preds = %192
  store i32 1, i32* %17, align 4
  br label %232

199:                                              ; preds = %192
  %200 = load double, double* %28, align 8
  %201 = load double, double* %19, align 8
  %202 = fdiv double %200, %201
  %203 = load double, double* %22, align 8
  %204 = load double, double* %26, align 8
  %205 = fdiv double %203, %204
  %206 = fmul double %202, %205
  store double %206, double* %29, align 8
  br i1 false, label %207, label %212

207:                                              ; preds = %199
  %208 = load double, double* %29, align 8
  %209 = fptrunc double %208 to float
  %210 = call i32 @__isinff(float %209) #11
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %222, label %223

212:                                              ; preds = %199
  br i1 true, label %213, label %217

213:                                              ; preds = %212
  %214 = load double, double* %29, align 8
  %215 = call i32 @__isinf(double %214) #11
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %222, label %223

217:                                              ; preds = %212
  %218 = load double, double* %29, align 8
  %219 = fpext double %218 to x86_fp80
  %220 = call i32 @__isinfl(x86_fp80 %219) #11
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %217, %213, %207
  store i32 1, i32* %17, align 4
  br label %232

223:                                              ; preds = %217, %213, %207
  %224 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %225 = load i32, i32* %9, align 4
  %226 = load double, double* %26, align 8
  %227 = fneg double %226
  call void @add_grids(%struct.domain_type* %224, i32 %225, i32 10, double 1.000000e+00, i32 14, double %227, i32 16)
  %228 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %229 = load i32, i32* %9, align 4
  %230 = load double, double* %29, align 8
  call void @add_grids(%struct.domain_type* %228, i32 %229, i32 14, double 1.000000e+00, i32 13, double %230, i32 10)
  %231 = load double, double* %28, align 8
  store double %231, double* %19, align 8
  br label %54

232:                                              ; preds = %222, %198, %191, %184, %168, %151, %144, %128, %121, %105, %85, %65
  %233 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %234 = load i32, i32* %9, align 4
  %235 = load i32, i32* %10, align 4
  %236 = load i32, i32* %10, align 4
  call void @mul_grids(%struct.domain_type* %233, i32 %234, i32 %235, double 1.000000e+00, i32 4, i32 %236)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @CACG(%struct.domain_type* %0, i32 %1, i32 %2, i32 %3, double %4, double %5, double %6) #0 {
  %8 = alloca %struct.domain_type*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca [9 x double], align 16
  %16 = alloca [9 x double], align 16
  %17 = alloca [9 x double], align 16
  %18 = alloca [9 x double], align 16
  %19 = alloca [9 x double], align 16
  %20 = alloca [9 x double], align 16
  %21 = alloca [9 x double], align 16
  %22 = alloca [9 x [9 x double]], align 16
  %23 = alloca [9 x [9 x double]], align 16
  %24 = alloca [81 x double], align 16
  %25 = alloca [9 x i32], align 16
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca double, align 8
  %37 = alloca double, align 8
  %38 = alloca double, align 8
  %39 = alloca double, align 8
  %40 = alloca double, align 8
  %41 = alloca double, align 8
  %42 = alloca double, align 8
  %43 = alloca double, align 8
  %44 = alloca double, align 8
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca double, align 8
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca double, align 8
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca double, align 8
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca double, align 8
  store %struct.domain_type* %0, %struct.domain_type** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store double %4, double* %12, align 8
  store double %5, double* %13, align 8
  store double %6, double* %14, align 8
  %57 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 0
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32* %58, i32** %26, align 8
  %59 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 0
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  store i32* %61, i32** %27, align 8
  store i32 200, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %34, align 4
  store i32 0, i32* %35, align 4
  %62 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load double, double* %12, align 8
  %67 = load double, double* %13, align 8
  call void @residual(%struct.domain_type* %62, i32 %63, i32 12, i32 %64, i32 %65, double %66, double %67)
  %68 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %69 = load i32, i32* %9, align 4
  call void @scale_grid(%struct.domain_type* %68, i32 %69, i32 13, double 1.000000e+00, i32 12)
  %70 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %71 = load i32, i32* %9, align 4
  call void @scale_grid(%struct.domain_type* %70, i32 %71, i32 14, double 1.000000e+00, i32 12)
  %72 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call double @norm(%struct.domain_type* %72, i32 %73, i32 12)
  store double %74, double* %44, align 8
  %75 = load double, double* %44, align 8
  %76 = fcmp oeq double %75, 0.000000e+00
  br i1 %76, label %77, label %78

77:                                               ; preds = %7
  store i32 1, i32* %35, align 4
  br label %78

78:                                               ; preds = %77, %7
  %79 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call double @dot(%struct.domain_type* %79, i32 %80, i32 13, i32 12)
  store double %81, double* %43, align 8
  %82 = load double, double* %43, align 8
  %83 = fcmp oeq double %82, 0.000000e+00
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store i32 1, i32* %35, align 4
  br label %85

85:                                               ; preds = %84, %78
  %86 = load double, double* %43, align 8
  %87 = call double @sqrt(double %86) #8
  store double %87, double* %41, align 8
  store i32 0, i32* %31, align 4
  br label %88

88:                                               ; preds = %106, %85
  %89 = load i32, i32* %31, align 4
  %90 = icmp slt i32 %89, 9
  br i1 %90, label %91, label %109

91:                                               ; preds = %88
  store i32 0, i32* %32, align 4
  br label %92

92:                                               ; preds = %102, %91
  %93 = load i32, i32* %32, align 4
  %94 = icmp slt i32 %93, 9
  br i1 %94, label %95, label %105

95:                                               ; preds = %92
  %96 = load i32, i32* %31, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [9 x [9 x double]], [9 x [9 x double]]* %22, i64 0, i64 %97
  %99 = load i32, i32* %32, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [9 x double], [9 x double]* %98, i64 0, i64 %100
  store double 0.000000e+00, double* %101, align 8
  br label %102

102:                                              ; preds = %95
  %103 = load i32, i32* %32, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %32, align 4
  br label %92

105:                                              ; preds = %92
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %31, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %31, align 4
  br label %88

109:                                              ; preds = %88
  store i32 0, i32* %31, align 4
  br label %110

110:                                              ; preds = %121, %109
  %111 = load i32, i32* %31, align 4
  %112 = icmp slt i32 %111, 4
  br i1 %112, label %113, label %124

113:                                              ; preds = %110
  %114 = load i32, i32* %31, align 4
  %115 = add nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [9 x [9 x double]], [9 x [9 x double]]* %22, i64 0, i64 %116
  %118 = load i32, i32* %31, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [9 x double], [9 x double]* %117, i64 0, i64 %119
  store double 1.000000e+00, double* %120, align 8
  br label %121

121:                                              ; preds = %113
  %122 = load i32, i32* %31, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %31, align 4
  br label %110

124:                                              ; preds = %110
  store i32 5, i32* %31, align 4
  br label %125

125:                                              ; preds = %136, %124
  %126 = load i32, i32* %31, align 4
  %127 = icmp slt i32 %126, 8
  br i1 %127, label %128, label %139

128:                                              ; preds = %125
  %129 = load i32, i32* %31, align 4
  %130 = add nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [9 x [9 x double]], [9 x [9 x double]]* %22, i64 0, i64 %131
  %133 = load i32, i32* %31, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [9 x double], [9 x double]* %132, i64 0, i64 %134
  store double 1.000000e+00, double* %135, align 8
  br label %136

136:                                              ; preds = %128
  %137 = load i32, i32* %31, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %31, align 4
  br label %125

139:                                              ; preds = %125
  store i32 0, i32* %31, align 4
  br label %140

140:                                              ; preds = %149, %139
  %141 = load i32, i32* %31, align 4
  %142 = icmp slt i32 %141, 9
  br i1 %142, label %143, label %152

143:                                              ; preds = %140
  %144 = load i32, i32* %31, align 4
  %145 = add nsw i32 15, %144
  %146 = load i32, i32* %31, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 %147
  store i32 %145, i32* %148, align 4
  br label %149

149:                                              ; preds = %143
  %150 = load i32, i32* %31, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %31, align 4
  br label %140

152:                                              ; preds = %140
  br label %153

153:                                              ; preds = %638, %152
  %154 = load i32, i32* %29, align 4
  %155 = load i32, i32* %28, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %153
  %158 = load i32, i32* %34, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %157
  %161 = load i32, i32* %35, align 4
  %162 = icmp ne i32 %161, 0
  %163 = xor i1 %162, true
  br label %164

164:                                              ; preds = %160, %157, %153
  %165 = phi i1 [ false, %157 ], [ false, %153 ], [ %163, %160 ]
  br i1 %165, label %166, label %641

166:                                              ; preds = %164
  %167 = getelementptr inbounds [9 x double], [9 x double]* %18, i64 0, i64 0
  call void @__zero(double* %167, i32 9)
  %168 = getelementptr inbounds [9 x double], [9 x double]* %19, i64 0, i64 0
  call void @__zero(double* %168, i32 9)
  %169 = getelementptr inbounds [9 x double], [9 x double]* %20, i64 0, i64 0
  call void @__zero(double* %169, i32 9)
  %170 = getelementptr inbounds [9 x double], [9 x double]* %21, i64 0, i64 0
  call void @__zero(double* %170, i32 9)
  %171 = getelementptr inbounds [9 x double], [9 x double]* %15, i64 0, i64 0
  call void @__zero(double* %171, i32 9)
  %172 = getelementptr inbounds [9 x double], [9 x double]* %16, i64 0, i64 0
  call void @__zero(double* %172, i32 9)
  %173 = getelementptr inbounds [9 x double], [9 x double]* %17, i64 0, i64 0
  call void @__zero(double* %173, i32 9)
  %174 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %175 = load i32, i32* %9, align 4
  %176 = load i32*, i32** %26, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load i32, i32* %177, align 4
  call void @scale_grid(%struct.domain_type* %174, i32 %175, i32 %178, double 1.000000e+00, i32 14)
  store i32 1, i32* %30, align 4
  br label %179

179:                                              ; preds = %198, %166
  %180 = load i32, i32* %30, align 4
  %181 = icmp slt i32 %180, 5
  br i1 %181, label %182, label %201

182:                                              ; preds = %179
  %183 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %184 = load i32, i32* %9, align 4
  %185 = load i32*, i32** %26, align 8
  %186 = load i32, i32* %30, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load i32*, i32** %26, align 8
  %191 = load i32, i32* %30, align 4
  %192 = sub nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load double, double* %12, align 8
  %197 = load double, double* %13, align 8
  call void @apply_op(%struct.domain_type* %183, i32 %184, i32 %189, i32 %195, double %196, double %197)
  br label %198

198:                                              ; preds = %182
  %199 = load i32, i32* %30, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %30, align 4
  br label %179

201:                                              ; preds = %179
  %202 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %203 = load i32, i32* %9, align 4
  %204 = load i32*, i32** %27, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 0
  %206 = load i32, i32* %205, align 4
  call void @scale_grid(%struct.domain_type* %202, i32 %203, i32 %206, double 1.000000e+00, i32 13)
  store i32 1, i32* %30, align 4
  br label %207

207:                                              ; preds = %226, %201
  %208 = load i32, i32* %30, align 4
  %209 = icmp slt i32 %208, 4
  br i1 %209, label %210, label %229

210:                                              ; preds = %207
  %211 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %212 = load i32, i32* %9, align 4
  %213 = load i32*, i32** %27, align 8
  %214 = load i32, i32* %30, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = load i32*, i32** %27, align 8
  %219 = load i32, i32* %30, align 4
  %220 = sub nsw i32 %219, 1
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %218, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = load double, double* %12, align 8
  %225 = load double, double* %13, align 8
  call void @apply_op(%struct.domain_type* %211, i32 %212, i32 %217, i32 %223, double %224, double %225)
  br label %226

226:                                              ; preds = %210
  %227 = load i32, i32* %30, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %30, align 4
  br label %207

229:                                              ; preds = %207
  %230 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %231 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %231, align 4
  %234 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %235 = load i32, i32* %9, align 4
  %236 = getelementptr inbounds [81 x double], [81 x double]* %24, i64 0, i64 0
  %237 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 0
  %238 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 0
  call void @matmul_grids(%struct.domain_type* %234, i32 %235, double* %236, i32* %237, i32* %238, i32 9, i32 9, i32 1)
  store i32 0, i32* %31, align 4
  store i32 0, i32* %33, align 4
  br label %239

239:                                              ; preds = %262, %229
  %240 = load i32, i32* %31, align 4
  %241 = icmp slt i32 %240, 9
  br i1 %241, label %242, label %265

242:                                              ; preds = %239
  store i32 0, i32* %32, align 4
  br label %243

243:                                              ; preds = %258, %242
  %244 = load i32, i32* %32, align 4
  %245 = icmp slt i32 %244, 9
  br i1 %245, label %246, label %261

246:                                              ; preds = %243
  %247 = load i32, i32* %33, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %33, align 4
  %249 = sext i32 %247 to i64
  %250 = getelementptr inbounds [81 x double], [81 x double]* %24, i64 0, i64 %249
  %251 = load double, double* %250, align 8
  %252 = load i32, i32* %31, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [9 x [9 x double]], [9 x [9 x double]]* %23, i64 0, i64 %253
  %255 = load i32, i32* %32, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [9 x double], [9 x double]* %254, i64 0, i64 %256
  store double %251, double* %257, align 8
  br label %258

258:                                              ; preds = %246
  %259 = load i32, i32* %32, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %32, align 4
  br label %243

261:                                              ; preds = %243
  br label %262

262:                                              ; preds = %261
  %263 = load i32, i32* %31, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %31, align 4
  br label %239

265:                                              ; preds = %239
  store i32 0, i32* %31, align 4
  br label %266

266:                                              ; preds = %273, %265
  %267 = load i32, i32* %31, align 4
  %268 = icmp slt i32 %267, 9
  br i1 %268, label %269, label %276

269:                                              ; preds = %266
  %270 = load i32, i32* %31, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [9 x double], [9 x double]* %18, i64 0, i64 %271
  store double 0.000000e+00, double* %272, align 8
  br label %273

273:                                              ; preds = %269
  %274 = load i32, i32* %31, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %31, align 4
  br label %266

276:                                              ; preds = %266
  %277 = getelementptr inbounds [9 x double], [9 x double]* %18, i64 0, i64 0
  store double 1.000000e+00, double* %277, align 16
  store i32 0, i32* %31, align 4
  br label %278

278:                                              ; preds = %285, %276
  %279 = load i32, i32* %31, align 4
  %280 = icmp slt i32 %279, 9
  br i1 %280, label %281, label %288

281:                                              ; preds = %278
  %282 = load i32, i32* %31, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [9 x double], [9 x double]* %19, i64 0, i64 %283
  store double 0.000000e+00, double* %284, align 8
  br label %285

285:                                              ; preds = %281
  %286 = load i32, i32* %31, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %31, align 4
  br label %278

288:                                              ; preds = %278
  %289 = getelementptr inbounds [9 x double], [9 x double]* %19, i64 0, i64 5
  store double 1.000000e+00, double* %289, align 8
  store i32 0, i32* %31, align 4
  br label %290

290:                                              ; preds = %297, %288
  %291 = load i32, i32* %31, align 4
  %292 = icmp slt i32 %291, 9
  br i1 %292, label %293, label %300

293:                                              ; preds = %290
  %294 = load i32, i32* %31, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [9 x double], [9 x double]* %20, i64 0, i64 %295
  store double 0.000000e+00, double* %296, align 8
  br label %297

297:                                              ; preds = %293
  %298 = load i32, i32* %31, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %31, align 4
  br label %290

300:                                              ; preds = %290
  store i32 0, i32* %30, align 4
  br label %301

301:                                              ; preds = %560, %300
  %302 = load i32, i32* %30, align 4
  %303 = icmp slt i32 %302, 4
  br i1 %303, label %304, label %563

304:                                              ; preds = %301
  %305 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %306 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %305, i32 0, i32 3
  %307 = load i32, i32* %306, align 8
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %306, align 8
  store i32 0, i32* %45, align 4
  br label %309

309:                                              ; preds = %346, %304
  %310 = load i32, i32* %45, align 4
  %311 = icmp slt i32 %310, 9
  br i1 %311, label %312, label %349

312:                                              ; preds = %309
  store double 0.000000e+00, double* %47, align 8
  store i32 0, i32* %46, align 4
  br label %313

313:                                              ; preds = %331, %312
  %314 = load i32, i32* %46, align 4
  %315 = icmp slt i32 %314, 9
  br i1 %315, label %316, label %334

316:                                              ; preds = %313
  %317 = load i32, i32* %45, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds [9 x [9 x double]], [9 x [9 x double]]* %22, i64 0, i64 %318
  %320 = load i32, i32* %46, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [9 x double], [9 x double]* %319, i64 0, i64 %321
  %323 = load double, double* %322, align 8
  %324 = load i32, i32* %46, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [9 x double], [9 x double]* %18, i64 0, i64 %325
  %327 = load double, double* %326, align 8
  %328 = fmul double %323, %327
  %329 = load double, double* %47, align 8
  %330 = fadd double %329, %328
  store double %330, double* %47, align 8
  br label %331

331:                                              ; preds = %316
  %332 = load i32, i32* %46, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %46, align 4
  br label %313

334:                                              ; preds = %313
  %335 = load double, double* %47, align 8
  %336 = fmul double 1.000000e+00, %335
  %337 = load i32, i32* %45, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds [9 x double], [9 x double]* %21, i64 0, i64 %338
  %340 = load double, double* %339, align 8
  %341 = fmul double 0.000000e+00, %340
  %342 = fadd double %336, %341
  %343 = load i32, i32* %45, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds [9 x double], [9 x double]* %21, i64 0, i64 %344
  store double %342, double* %345, align 8
  br label %346

346:                                              ; preds = %334
  %347 = load i32, i32* %45, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %45, align 4
  br label %309

349:                                              ; preds = %309
  store i32 0, i32* %48, align 4
  br label %350

350:                                              ; preds = %387, %349
  %351 = load i32, i32* %48, align 4
  %352 = icmp slt i32 %351, 9
  br i1 %352, label %353, label %390

353:                                              ; preds = %350
  store double 0.000000e+00, double* %50, align 8
  store i32 0, i32* %49, align 4
  br label %354

354:                                              ; preds = %372, %353
  %355 = load i32, i32* %49, align 4
  %356 = icmp slt i32 %355, 9
  br i1 %356, label %357, label %375

357:                                              ; preds = %354
  %358 = load i32, i32* %48, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds [9 x [9 x double]], [9 x [9 x double]]* %23, i64 0, i64 %359
  %361 = load i32, i32* %49, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds [9 x double], [9 x double]* %360, i64 0, i64 %362
  %364 = load double, double* %363, align 8
  %365 = load i32, i32* %49, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds [9 x double], [9 x double]* %21, i64 0, i64 %366
  %368 = load double, double* %367, align 8
  %369 = fmul double %364, %368
  %370 = load double, double* %50, align 8
  %371 = fadd double %370, %369
  store double %371, double* %50, align 8
  br label %372

372:                                              ; preds = %357
  %373 = load i32, i32* %49, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %49, align 4
  br label %354

375:                                              ; preds = %354
  %376 = load double, double* %50, align 8
  %377 = fmul double 1.000000e+00, %376
  %378 = load i32, i32* %48, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds [9 x double], [9 x double]* %15, i64 0, i64 %379
  %381 = load double, double* %380, align 8
  %382 = fmul double 0.000000e+00, %381
  %383 = fadd double %377, %382
  %384 = load i32, i32* %48, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds [9 x double], [9 x double]* %15, i64 0, i64 %385
  store double %383, double* %386, align 8
  br label %387

387:                                              ; preds = %375
  %388 = load i32, i32* %48, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %48, align 4
  br label %350

390:                                              ; preds = %350
  store i32 0, i32* %51, align 4
  br label %391

391:                                              ; preds = %428, %390
  %392 = load i32, i32* %51, align 4
  %393 = icmp slt i32 %392, 9
  br i1 %393, label %394, label %431

394:                                              ; preds = %391
  store double 0.000000e+00, double* %53, align 8
  store i32 0, i32* %52, align 4
  br label %395

395:                                              ; preds = %413, %394
  %396 = load i32, i32* %52, align 4
  %397 = icmp slt i32 %396, 9
  br i1 %397, label %398, label %416

398:                                              ; preds = %395
  %399 = load i32, i32* %51, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds [9 x [9 x double]], [9 x [9 x double]]* %23, i64 0, i64 %400
  %402 = load i32, i32* %52, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds [9 x double], [9 x double]* %401, i64 0, i64 %403
  %405 = load double, double* %404, align 8
  %406 = load i32, i32* %52, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds [9 x double], [9 x double]* %19, i64 0, i64 %407
  %409 = load double, double* %408, align 8
  %410 = fmul double %405, %409
  %411 = load double, double* %53, align 8
  %412 = fadd double %411, %410
  store double %412, double* %53, align 8
  br label %413

413:                                              ; preds = %398
  %414 = load i32, i32* %52, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %52, align 4
  br label %395

416:                                              ; preds = %395
  %417 = load double, double* %53, align 8
  %418 = fmul double 1.000000e+00, %417
  %419 = load i32, i32* %51, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds [9 x double], [9 x double]* %16, i64 0, i64 %420
  %422 = load double, double* %421, align 8
  %423 = fmul double 0.000000e+00, %422
  %424 = fadd double %418, %423
  %425 = load i32, i32* %51, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds [9 x double], [9 x double]* %16, i64 0, i64 %426
  store double %424, double* %427, align 8
  br label %428

428:                                              ; preds = %416
  %429 = load i32, i32* %51, align 4
  %430 = add nsw i32 %429, 1
  store i32 %430, i32* %51, align 4
  br label %391

431:                                              ; preds = %391
  %432 = getelementptr inbounds [9 x double], [9 x double]* %18, i64 0, i64 0
  %433 = getelementptr inbounds [9 x double], [9 x double]* %15, i64 0, i64 0
  %434 = call double @__dot(double* %432, double* %433, i32 9)
  store double %434, double* %36, align 8
  %435 = getelementptr inbounds [9 x double], [9 x double]* %19, i64 0, i64 0
  %436 = getelementptr inbounds [9 x double], [9 x double]* %16, i64 0, i64 0
  %437 = call double @__dot(double* %435, double* %436, i32 9)
  store double %437, double* %37, align 8
  %438 = load double, double* %36, align 8
  %439 = fcmp oeq double %438, 0.000000e+00
  br i1 %439, label %440, label %441

440:                                              ; preds = %431
  store i32 1, i32* %34, align 4
  br label %563

441:                                              ; preds = %431
  %442 = load double, double* %37, align 8
  %443 = load double, double* %36, align 8
  %444 = fdiv double %442, %443
  store double %444, double* %38, align 8
  br i1 false, label %445, label %450

445:                                              ; preds = %441
  %446 = load double, double* %38, align 8
  %447 = fptrunc double %446 to float
  %448 = call i32 @__isinff(float %447) #11
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %460, label %461

450:                                              ; preds = %441
  br i1 true, label %451, label %455

451:                                              ; preds = %450
  %452 = load double, double* %38, align 8
  %453 = call i32 @__isinf(double %452) #11
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %460, label %461

455:                                              ; preds = %450
  %456 = load double, double* %38, align 8
  %457 = fpext double %456 to x86_fp80
  %458 = call i32 @__isinfl(x86_fp80 %457) #11
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %460, label %461

460:                                              ; preds = %455, %451, %445
  store i32 1, i32* %34, align 4
  br label %563

461:                                              ; preds = %455, %451, %445
  %462 = getelementptr inbounds [9 x double], [9 x double]* %20, i64 0, i64 0
  %463 = getelementptr inbounds [9 x double], [9 x double]* %20, i64 0, i64 0
  %464 = load double, double* %38, align 8
  %465 = getelementptr inbounds [9 x double], [9 x double]* %18, i64 0, i64 0
  call void @__axpy(double* %462, double 1.000000e+00, double* %463, double %464, double* %465, i32 9)
  %466 = getelementptr inbounds [9 x double], [9 x double]* %19, i64 0, i64 0
  %467 = getelementptr inbounds [9 x double], [9 x double]* %19, i64 0, i64 0
  %468 = load double, double* %38, align 8
  %469 = fneg double %468
  %470 = getelementptr inbounds [9 x double], [9 x double]* %21, i64 0, i64 0
  call void @__axpy(double* %466, double 1.000000e+00, double* %467, double %469, double* %470, i32 9)
  store i32 0, i32* %54, align 4
  br label %471

471:                                              ; preds = %508, %461
  %472 = load i32, i32* %54, align 4
  %473 = icmp slt i32 %472, 9
  br i1 %473, label %474, label %511

474:                                              ; preds = %471
  store double 0.000000e+00, double* %56, align 8
  store i32 0, i32* %55, align 4
  br label %475

475:                                              ; preds = %493, %474
  %476 = load i32, i32* %55, align 4
  %477 = icmp slt i32 %476, 9
  br i1 %477, label %478, label %496

478:                                              ; preds = %475
  %479 = load i32, i32* %54, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds [9 x [9 x double]], [9 x [9 x double]]* %23, i64 0, i64 %480
  %482 = load i32, i32* %55, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds [9 x double], [9 x double]* %481, i64 0, i64 %483
  %485 = load double, double* %484, align 8
  %486 = load i32, i32* %55, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds [9 x double], [9 x double]* %19, i64 0, i64 %487
  %489 = load double, double* %488, align 8
  %490 = fmul double %485, %489
  %491 = load double, double* %56, align 8
  %492 = fadd double %491, %490
  store double %492, double* %56, align 8
  br label %493

493:                                              ; preds = %478
  %494 = load i32, i32* %55, align 4
  %495 = add nsw i32 %494, 1
  store i32 %495, i32* %55, align 4
  br label %475

496:                                              ; preds = %475
  %497 = load double, double* %56, align 8
  %498 = fmul double 1.000000e+00, %497
  %499 = load i32, i32* %54, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds [9 x double], [9 x double]* %16, i64 0, i64 %500
  %502 = load double, double* %501, align 8
  %503 = fmul double 0.000000e+00, %502
  %504 = fadd double %498, %503
  %505 = load i32, i32* %54, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds [9 x double], [9 x double]* %16, i64 0, i64 %506
  store double %504, double* %507, align 8
  br label %508

508:                                              ; preds = %496
  %509 = load i32, i32* %54, align 4
  %510 = add nsw i32 %509, 1
  store i32 %510, i32* %54, align 4
  br label %471

511:                                              ; preds = %471
  %512 = getelementptr inbounds [9 x double], [9 x double]* %19, i64 0, i64 0
  %513 = getelementptr inbounds [9 x double], [9 x double]* %16, i64 0, i64 0
  %514 = call double @__dot(double* %512, double* %513, i32 9)
  store double %514, double* %39, align 8
  store double 0.000000e+00, double* %42, align 8
  %515 = load double, double* %39, align 8
  %516 = fcmp ogt double %515, 0.000000e+00
  br i1 %516, label %517, label %520

517:                                              ; preds = %511
  %518 = load double, double* %39, align 8
  %519 = call double @sqrt(double %518) #8
  store double %519, double* %42, align 8
  br label %520

520:                                              ; preds = %517, %511
  %521 = load double, double* %42, align 8
  %522 = load double, double* %14, align 8
  %523 = load double, double* %41, align 8
  %524 = fmul double %522, %523
  %525 = fcmp olt double %521, %524
  br i1 %525, label %526, label %527

526:                                              ; preds = %520
  store i32 1, i32* %35, align 4
  br label %563

527:                                              ; preds = %520
  %528 = load double, double* %39, align 8
  %529 = fcmp oeq double %528, 0.000000e+00
  br i1 %529, label %530, label %531

530:                                              ; preds = %527
  store i32 1, i32* %34, align 4
  br label %563

531:                                              ; preds = %527
  %532 = load double, double* %39, align 8
  %533 = load double, double* %37, align 8
  %534 = fdiv double %532, %533
  store double %534, double* %40, align 8
  br i1 false, label %535, label %540

535:                                              ; preds = %531
  %536 = load double, double* %40, align 8
  %537 = fptrunc double %536 to float
  %538 = call i32 @__isinff(float %537) #11
  %539 = icmp ne i32 %538, 0
  br i1 %539, label %550, label %551

540:                                              ; preds = %531
  br i1 true, label %541, label %545

541:                                              ; preds = %540
  %542 = load double, double* %40, align 8
  %543 = call i32 @__isinf(double %542) #11
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %550, label %551

545:                                              ; preds = %540
  %546 = load double, double* %40, align 8
  %547 = fpext double %546 to x86_fp80
  %548 = call i32 @__isinfl(x86_fp80 %547) #11
  %549 = icmp ne i32 %548, 0
  br i1 %549, label %550, label %551

550:                                              ; preds = %545, %541, %535
  store i32 1, i32* %34, align 4
  br label %563

551:                                              ; preds = %545, %541, %535
  %552 = load double, double* %40, align 8
  %553 = fcmp oeq double %552, 0.000000e+00
  br i1 %553, label %554, label %555

554:                                              ; preds = %551
  store i32 1, i32* %34, align 4
  br label %563

555:                                              ; preds = %551
  %556 = getelementptr inbounds [9 x double], [9 x double]* %18, i64 0, i64 0
  %557 = getelementptr inbounds [9 x double], [9 x double]* %19, i64 0, i64 0
  %558 = load double, double* %40, align 8
  %559 = getelementptr inbounds [9 x double], [9 x double]* %18, i64 0, i64 0
  call void @__axpy(double* %556, double 1.000000e+00, double* %557, double %558, double* %559, i32 9)
  br label %560

560:                                              ; preds = %555
  %561 = load i32, i32* %30, align 4
  %562 = add nsw i32 %561, 1
  store i32 %562, i32* %30, align 4
  br label %301

563:                                              ; preds = %554, %550, %530, %526, %460, %440, %301
  store i32 0, i32* %31, align 4
  br label %564

564:                                              ; preds = %580, %563
  %565 = load i32, i32* %31, align 4
  %566 = icmp slt i32 %565, 9
  br i1 %566, label %567, label %583

567:                                              ; preds = %564
  %568 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %569 = load i32, i32* %9, align 4
  %570 = load i32, i32* %10, align 4
  %571 = load i32, i32* %10, align 4
  %572 = load i32, i32* %31, align 4
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds [9 x double], [9 x double]* %20, i64 0, i64 %573
  %575 = load double, double* %574, align 8
  %576 = load i32, i32* %31, align 4
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 %577
  %579 = load i32, i32* %578, align 4
  call void @add_grids(%struct.domain_type* %568, i32 %569, i32 %570, double 1.000000e+00, i32 %571, double %575, i32 %579)
  br label %580

580:                                              ; preds = %567
  %581 = load i32, i32* %31, align 4
  %582 = add nsw i32 %581, 1
  store i32 %582, i32* %31, align 4
  br label %564

583:                                              ; preds = %564
  %584 = load i32, i32* %34, align 4
  %585 = icmp ne i32 %584, 0
  br i1 %585, label %638, label %586

586:                                              ; preds = %583
  %587 = load i32, i32* %35, align 4
  %588 = icmp ne i32 %587, 0
  br i1 %588, label %638, label %589

589:                                              ; preds = %586
  %590 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %591 = load i32, i32* %9, align 4
  %592 = getelementptr inbounds [9 x double], [9 x double]* %18, i64 0, i64 0
  %593 = load double, double* %592, align 16
  %594 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 0
  %595 = load i32, i32* %594, align 16
  call void @add_grids(%struct.domain_type* %590, i32 %591, i32 14, double 0.000000e+00, i32 14, double %593, i32 %595)
  store i32 1, i32* %31, align 4
  br label %596

596:                                              ; preds = %610, %589
  %597 = load i32, i32* %31, align 4
  %598 = icmp slt i32 %597, 9
  br i1 %598, label %599, label %613

599:                                              ; preds = %596
  %600 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %601 = load i32, i32* %9, align 4
  %602 = load i32, i32* %31, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds [9 x double], [9 x double]* %18, i64 0, i64 %603
  %605 = load double, double* %604, align 8
  %606 = load i32, i32* %31, align 4
  %607 = sext i32 %606 to i64
  %608 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 %607
  %609 = load i32, i32* %608, align 4
  call void @add_grids(%struct.domain_type* %600, i32 %601, i32 14, double 1.000000e+00, i32 14, double %605, i32 %609)
  br label %610

610:                                              ; preds = %599
  %611 = load i32, i32* %31, align 4
  %612 = add nsw i32 %611, 1
  store i32 %612, i32* %31, align 4
  br label %596

613:                                              ; preds = %596
  %614 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %615 = load i32, i32* %9, align 4
  %616 = getelementptr inbounds [9 x double], [9 x double]* %19, i64 0, i64 0
  %617 = load double, double* %616, align 16
  %618 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 0
  %619 = load i32, i32* %618, align 16
  call void @add_grids(%struct.domain_type* %614, i32 %615, i32 13, double 0.000000e+00, i32 13, double %617, i32 %619)
  store i32 1, i32* %31, align 4
  br label %620

620:                                              ; preds = %634, %613
  %621 = load i32, i32* %31, align 4
  %622 = icmp slt i32 %621, 9
  br i1 %622, label %623, label %637

623:                                              ; preds = %620
  %624 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %625 = load i32, i32* %9, align 4
  %626 = load i32, i32* %31, align 4
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds [9 x double], [9 x double]* %19, i64 0, i64 %627
  %629 = load double, double* %628, align 8
  %630 = load i32, i32* %31, align 4
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 %631
  %633 = load i32, i32* %632, align 4
  call void @add_grids(%struct.domain_type* %624, i32 %625, i32 13, double 1.000000e+00, i32 13, double %629, i32 %633)
  br label %634

634:                                              ; preds = %623
  %635 = load i32, i32* %31, align 4
  %636 = add nsw i32 %635, 1
  store i32 %636, i32* %31, align 4
  br label %620

637:                                              ; preds = %620
  br label %638

638:                                              ; preds = %637, %586, %583
  %639 = load i32, i32* %29, align 4
  %640 = add nsw i32 %639, 4
  store i32 %640, i32* %29, align 4
  br label %153

641:                                              ; preds = %164
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @CG(%struct.domain_type* %0, i32 %1, i32 %2, i32 %3, double %4, double %5, double %6) #0 {
  %8 = alloca %struct.domain_type*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  store %struct.domain_type* %0, %struct.domain_type** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store double %4, double* %12, align 8
  store double %5, double* %13, align 8
  store double %6, double* %14, align 8
  store i32 200, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %26 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load double, double* %12, align 8
  %31 = load double, double* %13, align 8
  call void @residual(%struct.domain_type* %26, i32 %27, i32 12, i32 %28, i32 %29, double %30, double %31)
  %32 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %33 = load i32, i32* %9, align 4
  call void @scale_grid(%struct.domain_type* %32, i32 %33, i32 13, double 1.000000e+00, i32 12)
  %34 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %35 = load i32, i32* %9, align 4
  call void @scale_grid(%struct.domain_type* %34, i32 %35, i32 14, double 1.000000e+00, i32 12)
  %36 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call double @norm(%struct.domain_type* %36, i32 %37, i32 13)
  store double %38, double* %19, align 8
  %39 = load double, double* %19, align 8
  %40 = fcmp oeq double %39, 0.000000e+00
  br i1 %40, label %41, label %42

41:                                               ; preds = %7
  store i32 1, i32* %18, align 4
  br label %42

42:                                               ; preds = %41, %7
  %43 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call double @dot(%struct.domain_type* %43, i32 %44, i32 13, i32 13)
  store double %45, double* %20, align 8
  br label %46

46:                                               ; preds = %146, %42
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load i32, i32* %17, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %18, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %53, %50, %46
  %58 = phi i1 [ false, %50 ], [ false, %46 ], [ %56, %53 ]
  br i1 %58, label %59, label %151

59:                                               ; preds = %57
  %60 = load i32, i32* %16, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %16, align 4
  %62 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %63 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 8
  %66 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load double, double* %12, align 8
  %69 = load double, double* %13, align 8
  call void @apply_op(%struct.domain_type* %66, i32 %67, i32 16, i32 14, double %68, double %69)
  %70 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call double @dot(%struct.domain_type* %70, i32 %71, i32 16, i32 14)
  store double %72, double* %21, align 8
  %73 = load double, double* %21, align 8
  %74 = fcmp oeq double %73, 0.000000e+00
  br i1 %74, label %75, label %76

75:                                               ; preds = %59
  store i32 1, i32* %17, align 4
  br label %151

76:                                               ; preds = %59
  %77 = load double, double* %20, align 8
  %78 = load double, double* %21, align 8
  %79 = fdiv double %77, %78
  store double %79, double* %22, align 8
  br i1 false, label %80, label %85

80:                                               ; preds = %76
  %81 = load double, double* %22, align 8
  %82 = fptrunc double %81 to float
  %83 = call i32 @__isinff(float %82) #11
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %95, label %96

85:                                               ; preds = %76
  br i1 true, label %86, label %90

86:                                               ; preds = %85
  %87 = load double, double* %22, align 8
  %88 = call i32 @__isinf(double %87) #11
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %95, label %96

90:                                               ; preds = %85
  %91 = load double, double* %22, align 8
  %92 = fpext double %91 to x86_fp80
  %93 = call i32 @__isinfl(x86_fp80 %92) #11
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90, %86, %80
  store i32 1, i32* %17, align 4
  br label %151

96:                                               ; preds = %90, %86, %80
  %97 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load double, double* %22, align 8
  call void @add_grids(%struct.domain_type* %97, i32 %98, i32 %99, double 1.000000e+00, i32 %100, double %101, i32 14)
  %102 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load double, double* %22, align 8
  %105 = fneg double %104
  call void @add_grids(%struct.domain_type* %102, i32 %103, i32 13, double 1.000000e+00, i32 13, double %105, i32 16)
  %106 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %107 = load i32, i32* %9, align 4
  %108 = call double @norm(%struct.domain_type* %106, i32 %107, i32 13)
  store double %108, double* %23, align 8
  %109 = load double, double* %23, align 8
  %110 = fcmp oeq double %109, 0.000000e+00
  br i1 %110, label %111, label %112

111:                                              ; preds = %96
  store i32 1, i32* %18, align 4
  br label %151

112:                                              ; preds = %96
  %113 = load double, double* %23, align 8
  %114 = load double, double* %14, align 8
  %115 = load double, double* %19, align 8
  %116 = fmul double %114, %115
  %117 = fcmp olt double %113, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  store i32 1, i32* %18, align 4
  br label %151

119:                                              ; preds = %112
  %120 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %121 = load i32, i32* %9, align 4
  %122 = call double @dot(%struct.domain_type* %120, i32 %121, i32 13, i32 13)
  store double %122, double* %24, align 8
  %123 = load double, double* %24, align 8
  %124 = fcmp oeq double %123, 0.000000e+00
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  store i32 1, i32* %17, align 4
  br label %151

126:                                              ; preds = %119
  %127 = load double, double* %24, align 8
  %128 = load double, double* %20, align 8
  %129 = fdiv double %127, %128
  store double %129, double* %25, align 8
  br i1 false, label %130, label %135

130:                                              ; preds = %126
  %131 = load double, double* %25, align 8
  %132 = fptrunc double %131 to float
  %133 = call i32 @__isinff(float %132) #11
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %145, label %146

135:                                              ; preds = %126
  br i1 true, label %136, label %140

136:                                              ; preds = %135
  %137 = load double, double* %25, align 8
  %138 = call i32 @__isinf(double %137) #11
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %145, label %146

140:                                              ; preds = %135
  %141 = load double, double* %25, align 8
  %142 = fpext double %141 to x86_fp80
  %143 = call i32 @__isinfl(x86_fp80 %142) #11
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %140, %136, %130
  store i32 1, i32* %17, align 4
  br label %151

146:                                              ; preds = %140, %136, %130
  %147 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %148 = load i32, i32* %9, align 4
  %149 = load double, double* %25, align 8
  call void @add_grids(%struct.domain_type* %147, i32 %148, i32 14, double 1.000000e+00, i32 13, double %149, i32 14)
  %150 = load double, double* %24, align 8
  store double %150, double* %20, align 8
  br label %46

151:                                              ; preds = %145, %125, %118, %111, %95, %75, %57
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @IterativeSolver(%struct.domain_type* %0, i32 %1, i32 %2, i32 %3, double %4, double %5, double %6) #0 {
  %8 = alloca %struct.domain_type*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.domain_type* %0, %struct.domain_type** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store double %4, double* %12, align 8
  store double %5, double* %13, align 8
  store double %6, double* %14, align 8
  store i32 48, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %17

17:                                               ; preds = %28, %7
  %18 = load i32, i32* %15, align 4
  %19 = load i32, i32* %16, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = load %struct.domain_type*, %struct.domain_type** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load double, double* %12, align 8
  %27 = load double, double* %13, align 8
  call void @smooth(%struct.domain_type* %22, i32 %23, i32 %24, i32 %25, double %26, double %27)
  br label %28

28:                                               ; preds = %21
  %29 = load i32, i32* %15, align 4
  %30 = add nsw i32 %29, 4
  store i32 %30, i32* %15, align 4
  br label %17

31:                                               ; preds = %17
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @IterativeSolver_NumGrids() #0 {
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @CycleTime() #0 {
  ret i64 0
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind readnone }

!llvm.ident = !{!0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
