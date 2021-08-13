; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_put"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"struct.std::complex" = type { { double, double } }
%class.polynomial = type { i32 (...)**, double*, i64 }
%class.polynomial.0 = type { i32 (...)**, %"struct.std::complex"*, i64 }
%"class.std::overflow_error" = type { %"class.std::runtime_error" }
%"class.std::runtime_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"class.std::exception" = type { i32 (...)** }
%"struct.std::__cow_string" = type { %union.anon }
%union.anon = type { i8* }

$_ZN10polynomialIdEC2Em = comdat any

$_ZN10polynomialIdEixEm = comdat any

$_ZNK10polynomialIdEmlERKS0_ = comdat any

$_ZN10polynomialIdEaSERKS0_ = comdat any

$_ZN10polynomialIdED2Ev = comdat any

$_ZN10polynomialIdE7releaseEv = comdat any

$__clang_call_terminate = comdat any

$_ZN10polynomialIdED0Ev = comdat any

$_ZN10polynomialIdE7acquireEv = comdat any

$_ZN10polynomialIdE9deep_copyEPKd = comdat any

$_ZN10polynomialIdEC2ERKS0_ = comdat any

$_ZNK10polynomialIdE6degreeEv = comdat any

$_ZN10polynomialIdE11stretch_fftEv = comdat any

$_ZN10polynomialIdE7stretchEm = comdat any

$_ZN10polynomialIdE3fftERKS0_ = comdat any

$_ZN10polynomialISt7complexIdEEixEm = comdat any

$_ZNSt7complexIdEmLIdEERS0_RKS_IT_E = comdat any

$_ZN10polynomialIdE11inverse_fftERKS_ISt7complexIdEE = comdat any

$_ZN10polynomialISt7complexIdEEaSERKS2_ = comdat any

$_ZN10polynomialISt7complexIdEED2Ev = comdat any

$_ZNKSt7complexIdE4realB5cxx11Ev = comdat any

$_ZN10polynomialISt7complexIdEE7releaseEv = comdat any

$_ZN10polynomialISt7complexIdEED0Ev = comdat any

$_ZN10polynomialISt7complexIdEE7acquireEv = comdat any

$_ZN10polynomialISt7complexIdEE9deep_copyEPKS1_ = comdat any

$_ZNSt7complexIdEC2Edd = comdat any

$_ZNK10polynomialISt7complexIdEE6degreeEv = comdat any

$_ZN10polynomialIdE4log2Em = comdat any

$_ZN10polynomialIdE11bit_reverseERKS_ISt7complexIdEE = comdat any

$_ZStngIdESt7complexIT_ERKS2_ = comdat any

$_ZStdvIdESt7complexIT_ERKS2_S4_ = comdat any

$_ZSt3expIdESt7complexIT_ERKS2_ = comdat any

$_ZNSt7complexIdEaSEd = comdat any

$_ZStmlIdESt7complexIT_ERKS2_S4_ = comdat any

$_ZStplIdESt7complexIT_ERKS2_S4_ = comdat any

$_ZStmiIdESt7complexIT_ERKS2_S4_ = comdat any

$_ZNSt7complexIdEdVEd = comdat any

$_ZNSt7complexIdEmIIdEERS0_RKS_IT_E = comdat any

$_ZNKSt7complexIdE4imagB5cxx11Ev = comdat any

$_ZNSt7complexIdEpLIdEERS0_RKS_IT_E = comdat any

$_ZNKSt7complexIdE5__repEv = comdat any

$_ZSt13__complex_expCd = comdat any

$_ZNSt7complexIdEC2ECd = comdat any

$_ZNSt7complexIdEdVIdEERS0_RKS_IT_E = comdat any

$_ZN10polynomialISt7complexIdEEC2Em = comdat any

$_ZNK10polynomialISt7complexIdEE3getEm = comdat any

$_ZN10polynomialIdE9flip_bitsEmm = comdat any

$_ZN10polynomialIdE11bit_reverseERKS0_ = comdat any

$_ZNK10polynomialIdE3getEm = comdat any

$_ZTV10polynomialIdE = comdat any

$_ZTI10polynomialIdE = comdat any

$_ZTS10polynomialIdE = comdat any

$_ZTV10polynomialISt7complexIdEE = comdat any

$_ZTI10polynomialISt7complexIdEE = comdat any

$_ZTS10polynomialISt7complexIdEE = comdat any

$_ZN10polynomialIdE4PI2IE = comdat any

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_fftbench.cpp, i8* null }]
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [4 x i8] c"-ga\00", align 1
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"\0Afftbench (Std. C++) run time: \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@_ZTV10polynomialIdE = linkonce_odr dso_local unnamed_addr constant { [4 x i8*] } { [4 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI10polynomialIdE to i8*), i8* bitcast (void (%class.polynomial*)* @_ZN10polynomialIdED2Ev to i8*), i8* bitcast (void (%class.polynomial*)* @_ZN10polynomialIdED0Ev to i8*)] }, comdat, align 8
@_ZTI10polynomialIdE = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @_ZTS10polynomialIdE, i32 0, i32 0) }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external dso_local global i8*
@_ZTS10polynomialIdE = linkonce_odr dso_local constant [16 x i8] c"10polynomialIdE\00", comdat, align 1
@_ZTV10polynomialISt7complexIdEE = linkonce_odr dso_local unnamed_addr constant { [4 x i8*] } { [4 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI10polynomialISt7complexIdEE to i8*), i8* bitcast (void (%class.polynomial.0*)* @_ZN10polynomialISt7complexIdEED2Ev to i8*), i8* bitcast (void (%class.polynomial.0*)* @_ZN10polynomialISt7complexIdEED0Ev to i8*)] }, comdat, align 8
@_ZTI10polynomialISt7complexIdEE = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @_ZTS10polynomialISt7complexIdEE, i32 0, i32 0) }, comdat, align 8
@_ZTS10polynomialISt7complexIdEE = linkonce_odr dso_local constant [28 x i8] c"10polynomialISt7complexIdEE\00", comdat, align 1
@_ZN10polynomialIdE4PI2IE = linkonce_odr dso_local constant %"struct.std::complex" { { double, double } { double 0.000000e+00, double 0x401921FB54442D18 } }, comdat, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"overflow in fft polynomial stretch\00", align 1
@_ZTISt14overflow_error = external dso_local constant i8*
@_ZZL13random_doublevE4seed = internal global i64 1325, align 8

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_fftbench.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main(i32 %0, i8** %1) #4 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca %class.polynomial, align 8
  %9 = alloca %class.polynomial, align 8
  %10 = alloca i8*
  %11 = alloca i32
  %12 = alloca %class.polynomial, align 8
  %13 = alloca i32, align 4
  %14 = alloca %class.polynomial, align 8
  %15 = alloca double, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8 0, i8* %6, align 1
  %16 = load i32, i32* %4, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %35

18:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %19

19:                                               ; preds = %31, %18
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #12
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  store i8 1, i8* %6, align 1
  br label %34

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %19

34:                                               ; preds = %29, %19
  br label %35

35:                                               ; preds = %34, %2
  call void @_ZN10polynomialIdEC2Em(%class.polynomial* %8, i64 524288)
  invoke void @_ZN10polynomialIdEC2Em(%class.polynomial* %9, i64 524288)
          to label %36 unwind label %57

36:                                               ; preds = %35
  invoke void @_ZN10polynomialIdEC2Em(%class.polynomial* %12, i64 1048575)
          to label %37 unwind label %61

37:                                               ; preds = %36
  store i32 0, i32* %13, align 4
  br label %38

38:                                               ; preds = %54, %37
  %39 = load i32, i32* %13, align 4
  %40 = icmp slt i32 %39, 524288
  br i1 %40, label %41, label %69

41:                                               ; preds = %38
  %42 = invoke double @_ZL13random_doublev()
          to label %43 unwind label %65

43:                                               ; preds = %41
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = invoke dereferenceable(8) double* @_ZN10polynomialIdEixEm(%class.polynomial* %8, i64 %45)
          to label %47 unwind label %65

47:                                               ; preds = %43
  store double %42, double* %46, align 8
  %48 = invoke double @_ZL13random_doublev()
          to label %49 unwind label %65

49:                                               ; preds = %47
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = invoke dereferenceable(8) double* @_ZN10polynomialIdEixEm(%class.polynomial* %9, i64 %51)
          to label %53 unwind label %65

53:                                               ; preds = %49
  store double %48, double* %52, align 8
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %13, align 4
  br label %38

57:                                               ; preds = %35
  %58 = landingpad { i8*, i32 }
          cleanup
  %59 = extractvalue { i8*, i32 } %58, 0
  store i8* %59, i8** %10, align 8
  %60 = extractvalue { i8*, i32 } %58, 1
  store i32 %60, i32* %11, align 4
  br label %97

61:                                               ; preds = %36
  %62 = landingpad { i8*, i32 }
          cleanup
  %63 = extractvalue { i8*, i32 } %62, 0
  store i8* %63, i8** %10, align 8
  %64 = extractvalue { i8*, i32 } %62, 1
  store i32 %64, i32* %11, align 4
  br label %96

65:                                               ; preds = %91, %88, %85, %83, %75, %69, %49, %47, %43, %41
  %66 = landingpad { i8*, i32 }
          cleanup
  %67 = extractvalue { i8*, i32 } %66, 0
  store i8* %67, i8** %10, align 8
  %68 = extractvalue { i8*, i32 } %66, 1
  store i32 %68, i32* %11, align 4
  br label %95

69:                                               ; preds = %38
  invoke void @_ZNK10polynomialIdEmlERKS0_(%class.polynomial* sret %14, %class.polynomial* %8, %class.polynomial* dereferenceable(24) %9)
          to label %70 unwind label %65

70:                                               ; preds = %69
  %71 = invoke dereferenceable(24) %class.polynomial* @_ZN10polynomialIdEaSERKS0_(%class.polynomial* %12, %class.polynomial* dereferenceable(24) %14)
          to label %72 unwind label %79

72:                                               ; preds = %70
  call void @_ZN10polynomialIdED2Ev(%class.polynomial* %14) #3
  store double 0.000000e+00, double* %15, align 8
  %73 = load i8, i8* %6, align 1
  %74 = trunc i8 %73 to i1
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load double, double* %15, align 8
  %77 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* @_ZSt4cout, double %76)
          to label %78 unwind label %65

78:                                               ; preds = %75
  br label %91

79:                                               ; preds = %70
  %80 = landingpad { i8*, i32 }
          cleanup
  %81 = extractvalue { i8*, i32 } %80, 0
  store i8* %81, i8** %10, align 8
  %82 = extractvalue { i8*, i32 } %80, 1
  store i32 %82, i32* %11, align 4
  call void @_ZN10polynomialIdED2Ev(%class.polynomial* %14) #3
  br label %95

83:                                               ; preds = %72
  %84 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
          to label %85 unwind label %65

85:                                               ; preds = %83
  %86 = load double, double* %15, align 8
  %87 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %84, double %86)
          to label %88 unwind label %65

88:                                               ; preds = %85
  %89 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
          to label %90 unwind label %65

90:                                               ; preds = %88
  br label %91

91:                                               ; preds = %90, %78
  %92 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* @_ZSt4cout)
          to label %93 unwind label %65

93:                                               ; preds = %91
  store i32 0, i32* %3, align 4
  call void @_ZN10polynomialIdED2Ev(%class.polynomial* %12) #3
  call void @_ZN10polynomialIdED2Ev(%class.polynomial* %9) #3
  call void @_ZN10polynomialIdED2Ev(%class.polynomial* %8) #3
  %94 = load i32, i32* %3, align 4
  ret i32 %94

95:                                               ; preds = %79, %65
  call void @_ZN10polynomialIdED2Ev(%class.polynomial* %12) #3
  br label %96

96:                                               ; preds = %95, %61
  call void @_ZN10polynomialIdED2Ev(%class.polynomial* %9) #3
  br label %97

97:                                               ; preds = %96, %57
  call void @_ZN10polynomialIdED2Ev(%class.polynomial* %8) #3
  br label %98

98:                                               ; preds = %97
  %99 = load i8*, i8** %10, align 8
  %100 = load i32, i32* %11, align 4
  %101 = insertvalue { i8*, i32 } undef, i8* %99, 0
  %102 = insertvalue { i8*, i32 } %101, i32 %100, 1
  resume { i8*, i32 } %102
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #5

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZN10polynomialIdEC2Em(%class.polynomial* %0, i64 %1) unnamed_addr #0 comdat align 2 {
  %3 = alloca %class.polynomial*, align 8
  %4 = alloca i64, align 8
  store %class.polynomial* %0, %class.polynomial** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %class.polynomial*, %class.polynomial** %3, align 8
  %6 = bitcast %class.polynomial* %5 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTV10polynomialIdE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %6, align 8
  %7 = getelementptr inbounds %class.polynomial, %class.polynomial* %5, i32 0, i32 1
  store double* null, double** %7, align 8
  %8 = getelementptr inbounds %class.polynomial, %class.polynomial* %5, i32 0, i32 2
  %9 = load i64, i64* %4, align 8
  store i64 %9, i64* %8, align 8
  call void @_ZN10polynomialIdE7acquireEv(%class.polynomial* %5)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal double @_ZL13random_doublev() #6 {
  %1 = alloca i64, align 8
  %2 = alloca double, align 8
  %3 = load i64, i64* @_ZZL13random_doublevE4seed, align 8
  %4 = xor i64 %3, 123459876
  store i64 %4, i64* @_ZZL13random_doublevE4seed, align 8
  %5 = load i64, i64* @_ZZL13random_doublevE4seed, align 8
  %6 = sdiv i64 %5, 127773
  store i64 %6, i64* %1, align 8
  %7 = load i64, i64* @_ZZL13random_doublevE4seed, align 8
  %8 = load i64, i64* %1, align 8
  %9 = mul nsw i64 %8, 127773
  %10 = sub nsw i64 %7, %9
  %11 = mul nsw i64 16807, %10
  %12 = load i64, i64* %1, align 8
  %13 = mul nsw i64 2836, %12
  %14 = sub nsw i64 %11, %13
  store i64 %14, i64* @_ZZL13random_doublevE4seed, align 8
  %15 = load i64, i64* @_ZZL13random_doublevE4seed, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %0
  %18 = load i64, i64* @_ZZL13random_doublevE4seed, align 8
  %19 = add nsw i64 %18, 2147483647
  store i64 %19, i64* @_ZZL13random_doublevE4seed, align 8
  br label %20

20:                                               ; preds = %17, %0
  %21 = load i64, i64* @_ZZL13random_doublevE4seed, align 8
  %22 = sitofp i64 %21 to double
  %23 = fmul double 0x3E340000002813D9, %22
  store double %23, double* %2, align 8
  %24 = load i64, i64* @_ZZL13random_doublevE4seed, align 8
  %25 = xor i64 %24, 123459876
  store i64 %25, i64* @_ZZL13random_doublevE4seed, align 8
  %26 = load double, double* %2, align 8
  ret double %26
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(8) double* @_ZN10polynomialIdEixEm(%class.polynomial* %0, i64 %1) #6 comdat align 2 {
  %3 = alloca %class.polynomial*, align 8
  %4 = alloca i64, align 8
  store %class.polynomial* %0, %class.polynomial** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %class.polynomial*, %class.polynomial** %3, align 8
  %6 = getelementptr inbounds %class.polynomial, %class.polynomial* %5, i32 0, i32 1
  %7 = load double*, double** %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = getelementptr inbounds double, double* %7, i64 %8
  ret double* %9
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNK10polynomialIdEmlERKS0_(%class.polynomial* noalias sret %0, %class.polynomial* %1, %class.polynomial* dereferenceable(24) %2) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca i8*, align 8
  %5 = alloca %class.polynomial*, align 8
  %6 = alloca %class.polynomial*, align 8
  %7 = alloca %class.polynomial, align 8
  %8 = alloca %class.polynomial, align 8
  %9 = alloca i8*
  %10 = alloca i32
  %11 = alloca %class.polynomial.0, align 8
  %12 = alloca %class.polynomial.0, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %class.polynomial.0, align 8
  %16 = alloca i1, align 1
  %17 = alloca i64, align 8
  %18 = bitcast %class.polynomial* %0 to i8*
  store i8* %18, i8** %4, align 8
  store %class.polynomial* %1, %class.polynomial** %5, align 8
  store %class.polynomial* %2, %class.polynomial** %6, align 8
  %19 = load %class.polynomial*, %class.polynomial** %5, align 8
  call void @_ZN10polynomialIdEC2ERKS0_(%class.polynomial* %7, %class.polynomial* dereferenceable(24) %19)
  %20 = load %class.polynomial*, %class.polynomial** %6, align 8
  invoke void @_ZN10polynomialIdEC2ERKS0_(%class.polynomial* %8, %class.polynomial* dereferenceable(24) %20)
          to label %21 unwind label %32

21:                                               ; preds = %3
  %22 = invoke i64 @_ZNK10polynomialIdE6degreeEv(%class.polynomial* %7)
          to label %23 unwind label %36

23:                                               ; preds = %21
  %24 = invoke i64 @_ZNK10polynomialIdE6degreeEv(%class.polynomial* %8)
          to label %25 unwind label %36

25:                                               ; preds = %23
  %26 = icmp ugt i64 %22, %24
  br i1 %26, label %27, label %40

27:                                               ; preds = %25
  %28 = invoke i64 @_ZN10polynomialIdE11stretch_fftEv(%class.polynomial* %7)
          to label %29 unwind label %36

29:                                               ; preds = %27
  %30 = invoke dereferenceable(24) %class.polynomial* @_ZN10polynomialIdE7stretchEm(%class.polynomial* %8, i64 %28)
          to label %31 unwind label %36

31:                                               ; preds = %29
  br label %45

32:                                               ; preds = %3
  %33 = landingpad { i8*, i32 }
          cleanup
  %34 = extractvalue { i8*, i32 } %33, 0
  store i8* %34, i8** %9, align 8
  %35 = extractvalue { i8*, i32 } %33, 1
  store i32 %35, i32* %10, align 4
  br label %113

36:                                               ; preds = %45, %42, %40, %29, %27, %23, %21
  %37 = landingpad { i8*, i32 }
          cleanup
  %38 = extractvalue { i8*, i32 } %37, 0
  store i8* %38, i8** %9, align 8
  %39 = extractvalue { i8*, i32 } %37, 1
  store i32 %39, i32* %10, align 4
  br label %112

40:                                               ; preds = %25
  %41 = invoke i64 @_ZN10polynomialIdE11stretch_fftEv(%class.polynomial* %8)
          to label %42 unwind label %36

42:                                               ; preds = %40
  %43 = invoke dereferenceable(24) %class.polynomial* @_ZN10polynomialIdE7stretchEm(%class.polynomial* %7, i64 %41)
          to label %44 unwind label %36

44:                                               ; preds = %42
  br label %45

45:                                               ; preds = %44, %31
  invoke void @_ZN10polynomialIdE3fftERKS0_(%class.polynomial.0* sret %11, %class.polynomial* dereferenceable(24) %7)
          to label %46 unwind label %36

46:                                               ; preds = %45
  invoke void @_ZN10polynomialIdE3fftERKS0_(%class.polynomial.0* sret %12, %class.polynomial* dereferenceable(24) %8)
          to label %47 unwind label %66

47:                                               ; preds = %46
  %48 = invoke i64 @_ZNK10polynomialIdE6degreeEv(%class.polynomial* %7)
          to label %49 unwind label %70

49:                                               ; preds = %47
  store i64 %48, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %50

50:                                               ; preds = %63, %49
  %51 = load i64, i64* %14, align 8
  %52 = load i64, i64* %13, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %50
  %55 = load i64, i64* %14, align 8
  %56 = invoke dereferenceable(16) %"struct.std::complex"* @_ZN10polynomialISt7complexIdEEixEm(%class.polynomial.0* %12, i64 %55)
          to label %57 unwind label %70

57:                                               ; preds = %54
  %58 = load i64, i64* %14, align 8
  %59 = invoke dereferenceable(16) %"struct.std::complex"* @_ZN10polynomialISt7complexIdEEixEm(%class.polynomial.0* %11, i64 %58)
          to label %60 unwind label %70

60:                                               ; preds = %57
  %61 = invoke dereferenceable(16) %"struct.std::complex"* @_ZNSt7complexIdEmLIdEERS0_RKS_IT_E(%"struct.std::complex"* %59, %"struct.std::complex"* dereferenceable(16) %56)
          to label %62 unwind label %70

62:                                               ; preds = %60
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %14, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %14, align 8
  br label %50

66:                                               ; preds = %46
  %67 = landingpad { i8*, i32 }
          cleanup
  %68 = extractvalue { i8*, i32 } %67, 0
  store i8* %68, i8** %9, align 8
  %69 = extractvalue { i8*, i32 } %67, 1
  store i32 %69, i32* %10, align 4
  br label %111

70:                                               ; preds = %77, %74, %60, %57, %54, %47
  %71 = landingpad { i8*, i32 }
          cleanup
  %72 = extractvalue { i8*, i32 } %71, 0
  store i8* %72, i8** %9, align 8
  %73 = extractvalue { i8*, i32 } %71, 1
  store i32 %73, i32* %10, align 4
  br label %110

74:                                               ; preds = %50
  invoke void @_ZN10polynomialIdE11inverse_fftERKS_ISt7complexIdEE(%class.polynomial.0* sret %15, %class.polynomial.0* dereferenceable(24) %11)
          to label %75 unwind label %70

75:                                               ; preds = %74
  %76 = invoke dereferenceable(24) %class.polynomial.0* @_ZN10polynomialISt7complexIdEEaSERKS2_(%class.polynomial.0* %12, %class.polynomial.0* dereferenceable(24) %15)
          to label %77 unwind label %98

77:                                               ; preds = %75
  call void @_ZN10polynomialISt7complexIdEED2Ev(%class.polynomial.0* %15) #3
  %78 = load i64, i64* %13, align 8
  %79 = add i64 %78, -1
  store i64 %79, i64* %13, align 8
  store i1 false, i1* %16, align 1
  %80 = load i64, i64* %13, align 8
  invoke void @_ZN10polynomialIdEC2Em(%class.polynomial* %0, i64 %80)
          to label %81 unwind label %70

81:                                               ; preds = %77
  store i64 0, i64* %17, align 8
  br label %82

82:                                               ; preds = %95, %81
  %83 = load i64, i64* %17, align 8
  %84 = load i64, i64* %13, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %86, label %106

86:                                               ; preds = %82
  %87 = load i64, i64* %17, align 8
  %88 = invoke dereferenceable(16) %"struct.std::complex"* @_ZN10polynomialISt7complexIdEEixEm(%class.polynomial.0* %12, i64 %87)
          to label %89 unwind label %102

89:                                               ; preds = %86
  %90 = invoke double @_ZNKSt7complexIdE4realB5cxx11Ev(%"struct.std::complex"* %88)
          to label %91 unwind label %102

91:                                               ; preds = %89
  %92 = load i64, i64* %17, align 8
  %93 = invoke dereferenceable(8) double* @_ZN10polynomialIdEixEm(%class.polynomial* %0, i64 %92)
          to label %94 unwind label %102

94:                                               ; preds = %91
  store double %90, double* %93, align 8
  br label %95

95:                                               ; preds = %94
  %96 = load i64, i64* %17, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %17, align 8
  br label %82

98:                                               ; preds = %75
  %99 = landingpad { i8*, i32 }
          cleanup
  %100 = extractvalue { i8*, i32 } %99, 0
  store i8* %100, i8** %9, align 8
  %101 = extractvalue { i8*, i32 } %99, 1
  store i32 %101, i32* %10, align 4
  call void @_ZN10polynomialISt7complexIdEED2Ev(%class.polynomial.0* %15) #3
  br label %110

102:                                              ; preds = %91, %89, %86
  %103 = landingpad { i8*, i32 }
          cleanup
  %104 = extractvalue { i8*, i32 } %103, 0
  store i8* %104, i8** %9, align 8
  %105 = extractvalue { i8*, i32 } %103, 1
  store i32 %105, i32* %10, align 4
  call void @_ZN10polynomialIdED2Ev(%class.polynomial* %0) #3
  br label %110

106:                                              ; preds = %82
  store i1 true, i1* %16, align 1
  %107 = load i1, i1* %16, align 1
  br i1 %107, label %109, label %108

108:                                              ; preds = %106
  call void @_ZN10polynomialIdED2Ev(%class.polynomial* %0) #3
  br label %109

109:                                              ; preds = %108, %106
  call void @_ZN10polynomialISt7complexIdEED2Ev(%class.polynomial.0* %12) #3
  call void @_ZN10polynomialISt7complexIdEED2Ev(%class.polynomial.0* %11) #3
  call void @_ZN10polynomialIdED2Ev(%class.polynomial* %8) #3
  call void @_ZN10polynomialIdED2Ev(%class.polynomial* %7) #3
  ret void

110:                                              ; preds = %102, %98, %70
  call void @_ZN10polynomialISt7complexIdEED2Ev(%class.polynomial.0* %12) #3
  br label %111

111:                                              ; preds = %110, %66
  call void @_ZN10polynomialISt7complexIdEED2Ev(%class.polynomial.0* %11) #3
  br label %112

112:                                              ; preds = %111, %36
  call void @_ZN10polynomialIdED2Ev(%class.polynomial* %8) #3
  br label %113

113:                                              ; preds = %112, %32
  call void @_ZN10polynomialIdED2Ev(%class.polynomial* %7) #3
  br label %114

114:                                              ; preds = %113
  %115 = load i8*, i8** %9, align 8
  %116 = load i32, i32* %10, align 4
  %117 = insertvalue { i8*, i32 } undef, i8* %115, 0
  %118 = insertvalue { i8*, i32 } %117, i32 %116, 1
  resume { i8*, i32 } %118
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local dereferenceable(24) %class.polynomial* @_ZN10polynomialIdEaSERKS0_(%class.polynomial* %0, %class.polynomial* dereferenceable(24) %1) #0 comdat align 2 {
  %3 = alloca %class.polynomial*, align 8
  %4 = alloca %class.polynomial*, align 8
  store %class.polynomial* %0, %class.polynomial** %3, align 8
  store %class.polynomial* %1, %class.polynomial** %4, align 8
  %5 = load %class.polynomial*, %class.polynomial** %3, align 8
  %6 = getelementptr inbounds %class.polynomial, %class.polynomial* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = load %class.polynomial*, %class.polynomial** %4, align 8
  %9 = getelementptr inbounds %class.polynomial, %class.polynomial* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %7, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  call void @_ZN10polynomialIdE7releaseEv(%class.polynomial* %5)
  %13 = load %class.polynomial*, %class.polynomial** %4, align 8
  %14 = getelementptr inbounds %class.polynomial, %class.polynomial* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %class.polynomial, %class.polynomial* %5, i32 0, i32 2
  store i64 %15, i64* %16, align 8
  call void @_ZN10polynomialIdE7acquireEv(%class.polynomial* %5)
  br label %17

17:                                               ; preds = %12, %2
  %18 = load %class.polynomial*, %class.polynomial** %4, align 8
  %19 = getelementptr inbounds %class.polynomial, %class.polynomial* %18, i32 0, i32 1
  %20 = load double*, double** %19, align 8
  call void @_ZN10polynomialIdE9deep_copyEPKd(%class.polynomial* %5, double* %20)
  ret %class.polynomial* %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN10polynomialIdED2Ev(%class.polynomial* %0) unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %class.polynomial*, align 8
  store %class.polynomial* %0, %class.polynomial** %2, align 8
  %3 = load %class.polynomial*, %class.polynomial** %2, align 8
  %4 = bitcast %class.polynomial* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTV10polynomialIdE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %4, align 8
  invoke void @_ZN10polynomialIdE7releaseEv(%class.polynomial* %3)
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret void

6:                                                ; preds = %1
  %7 = landingpad { i8*, i32 }
          catch i8* null
  %8 = extractvalue { i8*, i32 } %7, 0
  call void @__clang_call_terminate(i8* %8) #13
  unreachable
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"*, double) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"*) #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN10polynomialIdE7releaseEv(%class.polynomial* %0) #6 comdat align 2 {
  %2 = alloca %class.polynomial*, align 8
  store %class.polynomial* %0, %class.polynomial** %2, align 8
  %3 = load %class.polynomial*, %class.polynomial** %2, align 8
  %4 = getelementptr inbounds %class.polynomial, %class.polynomial* %3, i32 0, i32 1
  %5 = load double*, double** %4, align 8
  %6 = icmp eq double* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = bitcast double* %5 to i8*
  call void @_ZdaPv(i8* %8) #14
  br label %9

9:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #7 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #3
  call void @_ZSt9terminatev() #13
  unreachable
}

declare dso_local i8* @__cxa_begin_catch(i8*)

declare dso_local void @_ZSt9terminatev()

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdaPv(i8*) #8

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN10polynomialIdED0Ev(%class.polynomial* %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %class.polynomial*, align 8
  store %class.polynomial* %0, %class.polynomial** %2, align 8
  %3 = load %class.polynomial*, %class.polynomial** %2, align 8
  call void @_ZN10polynomialIdED2Ev(%class.polynomial* %3) #3
  %4 = bitcast %class.polynomial* %3 to i8*
  call void @_ZdlPv(i8* %4) #14
  ret void
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) #8

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZN10polynomialIdE7acquireEv(%class.polynomial* %0) #0 comdat align 2 {
  %2 = alloca %class.polynomial*, align 8
  store %class.polynomial* %0, %class.polynomial** %2, align 8
  %3 = load %class.polynomial*, %class.polynomial** %2, align 8
  %4 = getelementptr inbounds %class.polynomial, %class.polynomial* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %5, i64 8)
  %7 = extractvalue { i64, i1 } %6, 1
  %8 = extractvalue { i64, i1 } %6, 0
  %9 = select i1 %7, i64 -1, i64 %8
  %10 = call i8* @_Znam(i64 %9) #15
  %11 = bitcast i8* %10 to double*
  %12 = getelementptr inbounds %class.polynomial, %class.polynomial* %3, i32 0, i32 1
  store double* %11, double** %12, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN10polynomialIdE9deep_copyEPKd(%class.polynomial* %0, double* %1) #6 comdat align 2 {
  %3 = alloca %class.polynomial*, align 8
  %4 = alloca double*, align 8
  %5 = alloca i64, align 8
  store %class.polynomial* %0, %class.polynomial** %3, align 8
  store double* %1, double** %4, align 8
  %6 = load %class.polynomial*, %class.polynomial** %3, align 8
  store i64 0, i64* %5, align 8
  br label %7

7:                                                ; preds = %21, %2
  %8 = load i64, i64* %5, align 8
  %9 = getelementptr inbounds %class.polynomial, %class.polynomial* %6, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %8, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %7
  %13 = load double*, double** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds double, double* %13, i64 %14
  %16 = load double, double* %15, align 8
  %17 = getelementptr inbounds %class.polynomial, %class.polynomial* %6, i32 0, i32 1
  %18 = load double*, double** %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds double, double* %18, i64 %19
  store double %16, double* %20, align 8
  br label %21

21:                                               ; preds = %12
  %22 = load i64, i64* %5, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %5, align 8
  br label %7

24:                                               ; preds = %7
  ret void
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #9

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znam(i64) #10

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZN10polynomialIdEC2ERKS0_(%class.polynomial* %0, %class.polynomial* dereferenceable(24) %1) unnamed_addr #0 comdat align 2 {
  %3 = alloca %class.polynomial*, align 8
  %4 = alloca %class.polynomial*, align 8
  store %class.polynomial* %0, %class.polynomial** %3, align 8
  store %class.polynomial* %1, %class.polynomial** %4, align 8
  %5 = load %class.polynomial*, %class.polynomial** %3, align 8
  %6 = bitcast %class.polynomial* %5 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTV10polynomialIdE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %6, align 8
  %7 = getelementptr inbounds %class.polynomial, %class.polynomial* %5, i32 0, i32 1
  store double* null, double** %7, align 8
  %8 = getelementptr inbounds %class.polynomial, %class.polynomial* %5, i32 0, i32 2
  %9 = load %class.polynomial*, %class.polynomial** %4, align 8
  %10 = getelementptr inbounds %class.polynomial, %class.polynomial* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %8, align 8
  call void @_ZN10polynomialIdE7acquireEv(%class.polynomial* %5)
  %12 = load %class.polynomial*, %class.polynomial** %4, align 8
  %13 = getelementptr inbounds %class.polynomial, %class.polynomial* %12, i32 0, i32 1
  %14 = load double*, double** %13, align 8
  call void @_ZN10polynomialIdE9deep_copyEPKd(%class.polynomial* %5, double* %14)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i64 @_ZNK10polynomialIdE6degreeEv(%class.polynomial* %0) #6 comdat align 2 {
  %2 = alloca %class.polynomial*, align 8
  store %class.polynomial* %0, %class.polynomial** %2, align 8
  %3 = load %class.polynomial*, %class.polynomial** %2, align 8
  %4 = getelementptr inbounds %class.polynomial, %class.polynomial* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i64 @_ZN10polynomialIdE11stretch_fftEv(%class.polynomial* %0) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %class.polynomial*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*
  %5 = alloca i32
  store %class.polynomial* %0, %class.polynomial** %2, align 8
  %6 = load %class.polynomial*, %class.polynomial** %2, align 8
  store i64 1, i64* %3, align 8
  br label %7

7:                                                ; preds = %26, %1
  %8 = getelementptr inbounds %class.polynomial, %class.polynomial* %6, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp ule i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %27

13:                                               ; preds = %7
  %14 = load i64, i64* %3, align 8
  %15 = shl i64 %14, 1
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = call i8* @__cxa_allocate_exception(i64 16) #3
  %20 = bitcast i8* %19 to %"class.std::overflow_error"*
  invoke void @_ZNSt14overflow_errorC1EPKc(%"class.std::overflow_error"* %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
          to label %21 unwind label %22

21:                                               ; preds = %18
  call void @__cxa_throw(i8* %19, i8* bitcast (i8** @_ZTISt14overflow_error to i8*), i8* bitcast (void (%"class.std::overflow_error"*)* @_ZNSt14overflow_errorD1Ev to i8*)) #16
  unreachable

22:                                               ; preds = %18
  %23 = landingpad { i8*, i32 }
          cleanup
  %24 = extractvalue { i8*, i32 } %23, 0
  store i8* %24, i8** %4, align 8
  %25 = extractvalue { i8*, i32 } %23, 1
  store i32 %25, i32* %5, align 4
  call void @__cxa_free_exception(i8* %19) #3
  br label %41

26:                                               ; preds = %13
  br label %7

27:                                               ; preds = %12
  %28 = load i64, i64* %3, align 8
  %29 = shl i64 %28, 1
  store i64 %29, i64* %3, align 8
  %30 = getelementptr inbounds %class.polynomial, %class.polynomial* %6, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %3, align 8
  %33 = sub i64 %32, %31
  store i64 %33, i64* %3, align 8
  %34 = load i64, i64* %3, align 8
  %35 = icmp ugt i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i64, i64* %3, align 8
  %38 = call dereferenceable(24) %class.polynomial* @_ZN10polynomialIdE7stretchEm(%class.polynomial* %6, i64 %37)
  br label %39

39:                                               ; preds = %36, %27
  %40 = load i64, i64* %3, align 8
  ret i64 %40

41:                                               ; preds = %22
  %42 = load i8*, i8** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = insertvalue { i8*, i32 } undef, i8* %42, 0
  %45 = insertvalue { i8*, i32 } %44, i32 %43, 1
  resume { i8*, i32 } %45
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local dereferenceable(24) %class.polynomial* @_ZN10polynomialIdE7stretchEm(%class.polynomial* %0, i64 %1) #0 comdat align 2 {
  %3 = alloca %class.polynomial*, align 8
  %4 = alloca i64, align 8
  %5 = alloca double*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %class.polynomial* %0, %class.polynomial** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %class.polynomial*, %class.polynomial** %3, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %51

11:                                               ; preds = %2
  %12 = getelementptr inbounds %class.polynomial, %class.polynomial* %8, i32 0, i32 1
  %13 = load double*, double** %12, align 8
  store double* %13, double** %5, align 8
  %14 = getelementptr inbounds %class.polynomial, %class.polynomial* %8, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds %class.polynomial, %class.polynomial* %8, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = add i64 %18, %16
  store i64 %19, i64* %17, align 8
  call void @_ZN10polynomialIdE7acquireEv(%class.polynomial* %8)
  store i64 0, i64* %7, align 8
  br label %20

20:                                               ; preds = %33, %11
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load double*, double** %5, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds double, double* %25, i64 %26
  %28 = load double, double* %27, align 8
  %29 = getelementptr inbounds %class.polynomial, %class.polynomial* %8, i32 0, i32 1
  %30 = load double*, double** %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds double, double* %30, i64 %31
  store double %28, double* %32, align 8
  br label %33

33:                                               ; preds = %24
  %34 = load i64, i64* %7, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %7, align 8
  br label %20

36:                                               ; preds = %20
  br label %37

37:                                               ; preds = %47, %36
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds %class.polynomial, %class.polynomial* %8, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = getelementptr inbounds %class.polynomial, %class.polynomial* %8, i32 0, i32 1
  %44 = load double*, double** %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds double, double* %44, i64 %45
  store double 0.000000e+00, double* %46, align 8
  br label %47

47:                                               ; preds = %42
  %48 = load i64, i64* %7, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %7, align 8
  br label %37

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %50, %2
  ret %class.polynomial* %8
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZN10polynomialIdE3fftERKS0_(%class.polynomial.0* noalias sret %0, %class.polynomial* dereferenceable(24) %1) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca i8*, align 8
  %4 = alloca %class.polynomial*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %"struct.std::complex", align 8
  %12 = alloca %"struct.std::complex", align 8
  %13 = alloca %"struct.std::complex", align 8
  %14 = alloca %"struct.std::complex", align 8
  %15 = alloca i1, align 1
  %16 = alloca %"struct.std::complex", align 8
  %17 = alloca %"struct.std::complex", align 8
  %18 = alloca %"struct.std::complex", align 8
  %19 = alloca i8*
  %20 = alloca i32
  %21 = alloca %"struct.std::complex", align 8
  %22 = alloca %"struct.std::complex", align 8
  %23 = alloca %"struct.std::complex", align 8
  %24 = bitcast %class.polynomial.0* %0 to i8*
  store i8* %24, i8** %3, align 8
  store %class.polynomial* %1, %class.polynomial** %4, align 8
  %25 = load %class.polynomial*, %class.polynomial** %4, align 8
  %26 = call i64 @_ZNK10polynomialIdE6degreeEv(%class.polynomial* %25)
  %27 = call i64 @_ZN10polynomialIdE4log2Em(i64 %26)
  store i64 %27, i64* %5, align 8
  call void @_ZNSt7complexIdEC2Edd(%"struct.std::complex"* %11, double 0.000000e+00, double 0.000000e+00)
  call void @_ZNSt7complexIdEC2Edd(%"struct.std::complex"* %12, double 0.000000e+00, double 0.000000e+00)
  call void @_ZNSt7complexIdEC2Edd(%"struct.std::complex"* %13, double 0.000000e+00, double 0.000000e+00)
  call void @_ZNSt7complexIdEC2Edd(%"struct.std::complex"* %14, double 0.000000e+00, double 0.000000e+00)
  store i1 false, i1* %15, align 1
  %28 = load %class.polynomial*, %class.polynomial** %4, align 8
  call void @_ZN10polynomialIdE11bit_reverseERKS0_(%class.polynomial.0* sret %0, %class.polynomial* dereferenceable(24) %28)
  store i64 2, i64* %8, align 8
  store i64 1, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %29

29:                                               ; preds = %134, %2
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %137

33:                                               ; preds = %29
  %34 = load i64, i64* %8, align 8
  %35 = uitofp i64 %34 to double
  invoke void @_ZNSt7complexIdEC2Edd(%"struct.std::complex"* %18, double %35, double 0.000000e+00)
          to label %36 unwind label %119

36:                                               ; preds = %33
  %37 = invoke { double, double } @_ZStdvIdESt7complexIT_ERKS2_S4_(%"struct.std::complex"* dereferenceable(16) @_ZN10polynomialIdE4PI2IE, %"struct.std::complex"* dereferenceable(16) %18)
          to label %38 unwind label %119

38:                                               ; preds = %36
  %39 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %17, i32 0, i32 0
  %40 = getelementptr inbounds { double, double }, { double, double }* %39, i32 0, i32 0
  %41 = extractvalue { double, double } %37, 0
  store double %41, double* %40, align 8
  %42 = getelementptr inbounds { double, double }, { double, double }* %39, i32 0, i32 1
  %43 = extractvalue { double, double } %37, 1
  store double %43, double* %42, align 8
  %44 = invoke { double, double } @_ZSt3expIdESt7complexIT_ERKS2_(%"struct.std::complex"* dereferenceable(16) %17)
          to label %45 unwind label %119

45:                                               ; preds = %38
  %46 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %16, i32 0, i32 0
  %47 = getelementptr inbounds { double, double }, { double, double }* %46, i32 0, i32 0
  %48 = extractvalue { double, double } %44, 0
  store double %48, double* %47, align 8
  %49 = getelementptr inbounds { double, double }, { double, double }* %46, i32 0, i32 1
  %50 = extractvalue { double, double } %44, 1
  store double %50, double* %49, align 8
  %51 = bitcast %"struct.std::complex"* %11 to i8*
  %52 = bitcast %"struct.std::complex"* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 16, i1 false)
  %53 = invoke dereferenceable(16) %"struct.std::complex"* @_ZNSt7complexIdEaSEd(%"struct.std::complex"* %12, double 1.000000e+00)
          to label %54 unwind label %119

54:                                               ; preds = %45
  store i64 0, i64* %6, align 8
  br label %55

55:                                               ; preds = %126, %54
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* %9, align 8
  %58 = sub i64 %57, 1
  %59 = icmp ule i64 %56, %58
  br i1 %59, label %60, label %129

60:                                               ; preds = %55
  %61 = load i64, i64* %6, align 8
  store i64 %61, i64* %7, align 8
  br label %62

62:                                               ; preds = %115, %60
  %63 = load i64, i64* %7, align 8
  %64 = load %class.polynomial*, %class.polynomial** %4, align 8
  %65 = invoke i64 @_ZNK10polynomialIdE6degreeEv(%class.polynomial* %64)
          to label %66 unwind label %119

66:                                               ; preds = %62
  %67 = sub i64 %65, 1
  %68 = icmp ule i64 %63, %67
  br i1 %68, label %69, label %123

69:                                               ; preds = %66
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* %9, align 8
  %72 = add i64 %70, %71
  %73 = invoke dereferenceable(16) %"struct.std::complex"* @_ZN10polynomialISt7complexIdEEixEm(%class.polynomial.0* %0, i64 %72)
          to label %74 unwind label %119

74:                                               ; preds = %69
  %75 = invoke { double, double } @_ZStmlIdESt7complexIT_ERKS2_S4_(%"struct.std::complex"* dereferenceable(16) %12, %"struct.std::complex"* dereferenceable(16) %73)
          to label %76 unwind label %119

76:                                               ; preds = %74
  %77 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %21, i32 0, i32 0
  %78 = getelementptr inbounds { double, double }, { double, double }* %77, i32 0, i32 0
  %79 = extractvalue { double, double } %75, 0
  store double %79, double* %78, align 8
  %80 = getelementptr inbounds { double, double }, { double, double }* %77, i32 0, i32 1
  %81 = extractvalue { double, double } %75, 1
  store double %81, double* %80, align 8
  %82 = bitcast %"struct.std::complex"* %13 to i8*
  %83 = bitcast %"struct.std::complex"* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %82, i8* align 8 %83, i64 16, i1 false)
  %84 = load i64, i64* %7, align 8
  %85 = invoke dereferenceable(16) %"struct.std::complex"* @_ZN10polynomialISt7complexIdEEixEm(%class.polynomial.0* %0, i64 %84)
          to label %86 unwind label %119

86:                                               ; preds = %76
  %87 = bitcast %"struct.std::complex"* %14 to i8*
  %88 = bitcast %"struct.std::complex"* %85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %87, i8* align 8 %88, i64 16, i1 false)
  %89 = invoke { double, double } @_ZStplIdESt7complexIT_ERKS2_S4_(%"struct.std::complex"* dereferenceable(16) %14, %"struct.std::complex"* dereferenceable(16) %13)
          to label %90 unwind label %119

90:                                               ; preds = %86
  %91 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %22, i32 0, i32 0
  %92 = getelementptr inbounds { double, double }, { double, double }* %91, i32 0, i32 0
  %93 = extractvalue { double, double } %89, 0
  store double %93, double* %92, align 8
  %94 = getelementptr inbounds { double, double }, { double, double }* %91, i32 0, i32 1
  %95 = extractvalue { double, double } %89, 1
  store double %95, double* %94, align 8
  %96 = load i64, i64* %7, align 8
  %97 = invoke dereferenceable(16) %"struct.std::complex"* @_ZN10polynomialISt7complexIdEEixEm(%class.polynomial.0* %0, i64 %96)
          to label %98 unwind label %119

98:                                               ; preds = %90
  %99 = bitcast %"struct.std::complex"* %97 to i8*
  %100 = bitcast %"struct.std::complex"* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %99, i8* align 8 %100, i64 16, i1 false)
  %101 = invoke { double, double } @_ZStmiIdESt7complexIT_ERKS2_S4_(%"struct.std::complex"* dereferenceable(16) %14, %"struct.std::complex"* dereferenceable(16) %13)
          to label %102 unwind label %119

102:                                              ; preds = %98
  %103 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %23, i32 0, i32 0
  %104 = getelementptr inbounds { double, double }, { double, double }* %103, i32 0, i32 0
  %105 = extractvalue { double, double } %101, 0
  store double %105, double* %104, align 8
  %106 = getelementptr inbounds { double, double }, { double, double }* %103, i32 0, i32 1
  %107 = extractvalue { double, double } %101, 1
  store double %107, double* %106, align 8
  %108 = load i64, i64* %7, align 8
  %109 = load i64, i64* %9, align 8
  %110 = add i64 %108, %109
  %111 = invoke dereferenceable(16) %"struct.std::complex"* @_ZN10polynomialISt7complexIdEEixEm(%class.polynomial.0* %0, i64 %110)
          to label %112 unwind label %119

112:                                              ; preds = %102
  %113 = bitcast %"struct.std::complex"* %111 to i8*
  %114 = bitcast %"struct.std::complex"* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %113, i8* align 8 %114, i64 16, i1 false)
  br label %115

115:                                              ; preds = %112
  %116 = load i64, i64* %8, align 8
  %117 = load i64, i64* %7, align 8
  %118 = add i64 %117, %116
  store i64 %118, i64* %7, align 8
  br label %62

119:                                              ; preds = %123, %102, %98, %90, %86, %76, %74, %69, %62, %45, %38, %36, %33
  %120 = landingpad { i8*, i32 }
          cleanup
  %121 = extractvalue { i8*, i32 } %120, 0
  store i8* %121, i8** %19, align 8
  %122 = extractvalue { i8*, i32 } %120, 1
  store i32 %122, i32* %20, align 4
  call void @_ZN10polynomialISt7complexIdEED2Ev(%class.polynomial.0* %0) #3
  br label %141

123:                                              ; preds = %66
  %124 = invoke dereferenceable(16) %"struct.std::complex"* @_ZNSt7complexIdEmLIdEERS0_RKS_IT_E(%"struct.std::complex"* %12, %"struct.std::complex"* dereferenceable(16) %11)
          to label %125 unwind label %119

125:                                              ; preds = %123
  br label %126

126:                                              ; preds = %125
  %127 = load i64, i64* %6, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %6, align 8
  br label %55

129:                                              ; preds = %55
  %130 = load i64, i64* %8, align 8
  %131 = shl i64 %130, 1
  store i64 %131, i64* %8, align 8
  %132 = load i64, i64* %9, align 8
  %133 = shl i64 %132, 1
  store i64 %133, i64* %9, align 8
  br label %134

134:                                              ; preds = %129
  %135 = load i64, i64* %10, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %10, align 8
  br label %29

137:                                              ; preds = %29
  store i1 true, i1* %15, align 1
  %138 = load i1, i1* %15, align 1
  br i1 %138, label %140, label %139

139:                                              ; preds = %137
  call void @_ZN10polynomialISt7complexIdEED2Ev(%class.polynomial.0* %0) #3
  br label %140

140:                                              ; preds = %139, %137
  ret void

141:                                              ; preds = %119
  %142 = load i8*, i8** %19, align 8
  %143 = load i32, i32* %20, align 4
  %144 = insertvalue { i8*, i32 } undef, i8* %142, 0
  %145 = insertvalue { i8*, i32 } %144, i32 %143, 1
  resume { i8*, i32 } %145
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(16) %"struct.std::complex"* @_ZN10polynomialISt7complexIdEEixEm(%class.polynomial.0* %0, i64 %1) #6 comdat align 2 {
  %3 = alloca %class.polynomial.0*, align 8
  %4 = alloca i64, align 8
  store %class.polynomial.0* %0, %class.polynomial.0** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %class.polynomial.0*, %class.polynomial.0** %3, align 8
  %6 = getelementptr inbounds %class.polynomial.0, %class.polynomial.0* %5, i32 0, i32 1
  %7 = load %"struct.std::complex"*, %"struct.std::complex"** %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %7, i64 %8
  ret %"struct.std::complex"* %9
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local dereferenceable(16) %"struct.std::complex"* @_ZNSt7complexIdEmLIdEERS0_RKS_IT_E(%"struct.std::complex"* %0, %"struct.std::complex"* dereferenceable(16) %1) #0 comdat align 2 {
  %3 = alloca %"struct.std::complex"*, align 8
  %4 = alloca %"struct.std::complex"*, align 8
  %5 = alloca { double, double }, align 8
  store %"struct.std::complex"* %0, %"struct.std::complex"** %3, align 8
  store %"struct.std::complex"* %1, %"struct.std::complex"** %4, align 8
  %6 = load %"struct.std::complex"*, %"struct.std::complex"** %3, align 8
  %7 = load %"struct.std::complex"*, %"struct.std::complex"** %4, align 8
  %8 = call double @_ZNKSt7complexIdE4realB5cxx11Ev(%"struct.std::complex"* %7)
  %9 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 0
  store double %8, double* %9, align 8
  %10 = load %"struct.std::complex"*, %"struct.std::complex"** %4, align 8
  %11 = call double @_ZNKSt7complexIdE4imagB5cxx11Ev(%"struct.std::complex"* %10)
  %12 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 1
  store double %11, double* %12, align 8
  %13 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 0
  %14 = load double, double* %13, align 8
  %15 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 1
  %16 = load double, double* %15, align 8
  %17 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %6, i32 0, i32 0
  %18 = getelementptr inbounds { double, double }, { double, double }* %17, i32 0, i32 0
  %19 = load double, double* %18, align 8
  %20 = getelementptr inbounds { double, double }, { double, double }* %17, i32 0, i32 1
  %21 = load double, double* %20, align 8
  %22 = fmul double %19, %14
  %23 = fmul double %21, %16
  %24 = fmul double %19, %16
  %25 = fmul double %21, %14
  %26 = fsub double %22, %23
  %27 = fadd double %24, %25
  %28 = fcmp uno double %26, %26
  br i1 %28, label %29, label %35, !prof !2

29:                                               ; preds = %2
  %30 = fcmp uno double %27, %27
  br i1 %30, label %31, label %35, !prof !2

31:                                               ; preds = %29
  %32 = call { double, double } @__muldc3(double %19, double %21, double %14, double %16) #3
  %33 = extractvalue { double, double } %32, 0
  %34 = extractvalue { double, double } %32, 1
  br label %35

35:                                               ; preds = %31, %29, %2
  %36 = phi double [ %26, %2 ], [ %26, %29 ], [ %33, %31 ]
  %37 = phi double [ %27, %2 ], [ %27, %29 ], [ %34, %31 ]
  %38 = getelementptr inbounds { double, double }, { double, double }* %17, i32 0, i32 0
  %39 = getelementptr inbounds { double, double }, { double, double }* %17, i32 0, i32 1
  store double %36, double* %38, align 8
  store double %37, double* %39, align 8
  ret %"struct.std::complex"* %6
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZN10polynomialIdE11inverse_fftERKS_ISt7complexIdEE(%class.polynomial.0* noalias sret %0, %class.polynomial.0* dereferenceable(24) %1) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca i8*, align 8
  %4 = alloca %class.polynomial.0*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %"struct.std::complex", align 8
  %12 = alloca %"struct.std::complex", align 8
  %13 = alloca %"struct.std::complex", align 8
  %14 = alloca %"struct.std::complex", align 8
  %15 = alloca i1, align 1
  %16 = alloca %"struct.std::complex", align 8
  %17 = alloca %"struct.std::complex", align 8
  %18 = alloca %"struct.std::complex", align 8
  %19 = alloca i8*
  %20 = alloca i32
  %21 = alloca %"struct.std::complex", align 8
  %22 = alloca %"struct.std::complex", align 8
  %23 = alloca %"struct.std::complex", align 8
  %24 = alloca %"struct.std::complex", align 8
  %25 = bitcast %class.polynomial.0* %0 to i8*
  store i8* %25, i8** %3, align 8
  store %class.polynomial.0* %1, %class.polynomial.0** %4, align 8
  %26 = load %class.polynomial.0*, %class.polynomial.0** %4, align 8
  %27 = call i64 @_ZNK10polynomialISt7complexIdEE6degreeEv(%class.polynomial.0* %26)
  %28 = call i64 @_ZN10polynomialIdE4log2Em(i64 %27)
  store i64 %28, i64* %5, align 8
  call void @_ZNSt7complexIdEC2Edd(%"struct.std::complex"* %11, double 0.000000e+00, double 0.000000e+00)
  call void @_ZNSt7complexIdEC2Edd(%"struct.std::complex"* %12, double 0.000000e+00, double 0.000000e+00)
  call void @_ZNSt7complexIdEC2Edd(%"struct.std::complex"* %13, double 0.000000e+00, double 0.000000e+00)
  call void @_ZNSt7complexIdEC2Edd(%"struct.std::complex"* %14, double 0.000000e+00, double 0.000000e+00)
  store i1 false, i1* %15, align 1
  %29 = load %class.polynomial.0*, %class.polynomial.0** %4, align 8
  call void @_ZN10polynomialIdE11bit_reverseERKS_ISt7complexIdEE(%class.polynomial.0* sret %0, %class.polynomial.0* dereferenceable(24) %29)
  store i64 2, i64* %8, align 8
  store i64 1, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %30

30:                                               ; preds = %142, %2
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %145

34:                                               ; preds = %30
  %35 = invoke { double, double } @_ZStngIdESt7complexIT_ERKS2_(%"struct.std::complex"* dereferenceable(16) @_ZN10polynomialIdE4PI2IE)
          to label %36 unwind label %127

36:                                               ; preds = %34
  %37 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %18, i32 0, i32 0
  %38 = getelementptr inbounds { double, double }, { double, double }* %37, i32 0, i32 0
  %39 = extractvalue { double, double } %35, 0
  store double %39, double* %38, align 8
  %40 = getelementptr inbounds { double, double }, { double, double }* %37, i32 0, i32 1
  %41 = extractvalue { double, double } %35, 1
  store double %41, double* %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = uitofp i64 %42 to double
  invoke void @_ZNSt7complexIdEC2Edd(%"struct.std::complex"* %21, double %43, double 0.000000e+00)
          to label %44 unwind label %127

44:                                               ; preds = %36
  %45 = invoke { double, double } @_ZStdvIdESt7complexIT_ERKS2_S4_(%"struct.std::complex"* dereferenceable(16) %18, %"struct.std::complex"* dereferenceable(16) %21)
          to label %46 unwind label %127

46:                                               ; preds = %44
  %47 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %17, i32 0, i32 0
  %48 = getelementptr inbounds { double, double }, { double, double }* %47, i32 0, i32 0
  %49 = extractvalue { double, double } %45, 0
  store double %49, double* %48, align 8
  %50 = getelementptr inbounds { double, double }, { double, double }* %47, i32 0, i32 1
  %51 = extractvalue { double, double } %45, 1
  store double %51, double* %50, align 8
  %52 = invoke { double, double } @_ZSt3expIdESt7complexIT_ERKS2_(%"struct.std::complex"* dereferenceable(16) %17)
          to label %53 unwind label %127

53:                                               ; preds = %46
  %54 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %16, i32 0, i32 0
  %55 = getelementptr inbounds { double, double }, { double, double }* %54, i32 0, i32 0
  %56 = extractvalue { double, double } %52, 0
  store double %56, double* %55, align 8
  %57 = getelementptr inbounds { double, double }, { double, double }* %54, i32 0, i32 1
  %58 = extractvalue { double, double } %52, 1
  store double %58, double* %57, align 8
  %59 = bitcast %"struct.std::complex"* %11 to i8*
  %60 = bitcast %"struct.std::complex"* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 16, i1 false)
  %61 = invoke dereferenceable(16) %"struct.std::complex"* @_ZNSt7complexIdEaSEd(%"struct.std::complex"* %12, double 1.000000e+00)
          to label %62 unwind label %127

62:                                               ; preds = %53
  store i64 0, i64* %6, align 8
  br label %63

63:                                               ; preds = %134, %62
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* %9, align 8
  %66 = sub i64 %65, 1
  %67 = icmp ule i64 %64, %66
  br i1 %67, label %68, label %137

68:                                               ; preds = %63
  %69 = load i64, i64* %6, align 8
  store i64 %69, i64* %7, align 8
  br label %70

70:                                               ; preds = %123, %68
  %71 = load i64, i64* %7, align 8
  %72 = load %class.polynomial.0*, %class.polynomial.0** %4, align 8
  %73 = invoke i64 @_ZNK10polynomialISt7complexIdEE6degreeEv(%class.polynomial.0* %72)
          to label %74 unwind label %127

74:                                               ; preds = %70
  %75 = sub i64 %73, 1
  %76 = icmp ule i64 %71, %75
  br i1 %76, label %77, label %131

77:                                               ; preds = %74
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* %9, align 8
  %80 = add i64 %78, %79
  %81 = invoke dereferenceable(16) %"struct.std::complex"* @_ZN10polynomialISt7complexIdEEixEm(%class.polynomial.0* %0, i64 %80)
          to label %82 unwind label %127

82:                                               ; preds = %77
  %83 = invoke { double, double } @_ZStmlIdESt7complexIT_ERKS2_S4_(%"struct.std::complex"* dereferenceable(16) %12, %"struct.std::complex"* dereferenceable(16) %81)
          to label %84 unwind label %127

84:                                               ; preds = %82
  %85 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %22, i32 0, i32 0
  %86 = getelementptr inbounds { double, double }, { double, double }* %85, i32 0, i32 0
  %87 = extractvalue { double, double } %83, 0
  store double %87, double* %86, align 8
  %88 = getelementptr inbounds { double, double }, { double, double }* %85, i32 0, i32 1
  %89 = extractvalue { double, double } %83, 1
  store double %89, double* %88, align 8
  %90 = bitcast %"struct.std::complex"* %13 to i8*
  %91 = bitcast %"struct.std::complex"* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %90, i8* align 8 %91, i64 16, i1 false)
  %92 = load i64, i64* %7, align 8
  %93 = invoke dereferenceable(16) %"struct.std::complex"* @_ZN10polynomialISt7complexIdEEixEm(%class.polynomial.0* %0, i64 %92)
          to label %94 unwind label %127

94:                                               ; preds = %84
  %95 = bitcast %"struct.std::complex"* %14 to i8*
  %96 = bitcast %"struct.std::complex"* %93 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %95, i8* align 8 %96, i64 16, i1 false)
  %97 = invoke { double, double } @_ZStplIdESt7complexIT_ERKS2_S4_(%"struct.std::complex"* dereferenceable(16) %14, %"struct.std::complex"* dereferenceable(16) %13)
          to label %98 unwind label %127

98:                                               ; preds = %94
  %99 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %23, i32 0, i32 0
  %100 = getelementptr inbounds { double, double }, { double, double }* %99, i32 0, i32 0
  %101 = extractvalue { double, double } %97, 0
  store double %101, double* %100, align 8
  %102 = getelementptr inbounds { double, double }, { double, double }* %99, i32 0, i32 1
  %103 = extractvalue { double, double } %97, 1
  store double %103, double* %102, align 8
  %104 = load i64, i64* %7, align 8
  %105 = invoke dereferenceable(16) %"struct.std::complex"* @_ZN10polynomialISt7complexIdEEixEm(%class.polynomial.0* %0, i64 %104)
          to label %106 unwind label %127

106:                                              ; preds = %98
  %107 = bitcast %"struct.std::complex"* %105 to i8*
  %108 = bitcast %"struct.std::complex"* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %107, i8* align 8 %108, i64 16, i1 false)
  %109 = invoke { double, double } @_ZStmiIdESt7complexIT_ERKS2_S4_(%"struct.std::complex"* dereferenceable(16) %14, %"struct.std::complex"* dereferenceable(16) %13)
          to label %110 unwind label %127

110:                                              ; preds = %106
  %111 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %24, i32 0, i32 0
  %112 = getelementptr inbounds { double, double }, { double, double }* %111, i32 0, i32 0
  %113 = extractvalue { double, double } %109, 0
  store double %113, double* %112, align 8
  %114 = getelementptr inbounds { double, double }, { double, double }* %111, i32 0, i32 1
  %115 = extractvalue { double, double } %109, 1
  store double %115, double* %114, align 8
  %116 = load i64, i64* %7, align 8
  %117 = load i64, i64* %9, align 8
  %118 = add i64 %116, %117
  %119 = invoke dereferenceable(16) %"struct.std::complex"* @_ZN10polynomialISt7complexIdEEixEm(%class.polynomial.0* %0, i64 %118)
          to label %120 unwind label %127

120:                                              ; preds = %110
  %121 = bitcast %"struct.std::complex"* %119 to i8*
  %122 = bitcast %"struct.std::complex"* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %121, i8* align 8 %122, i64 16, i1 false)
  br label %123

123:                                              ; preds = %120
  %124 = load i64, i64* %8, align 8
  %125 = load i64, i64* %7, align 8
  %126 = add i64 %125, %124
  store i64 %126, i64* %7, align 8
  br label %70

127:                                              ; preds = %159, %155, %152, %146, %131, %110, %106, %98, %94, %84, %82, %77, %70, %53, %46, %44, %36, %34
  %128 = landingpad { i8*, i32 }
          cleanup
  %129 = extractvalue { i8*, i32 } %128, 0
  store i8* %129, i8** %19, align 8
  %130 = extractvalue { i8*, i32 } %128, 1
  store i32 %130, i32* %20, align 4
  call void @_ZN10polynomialISt7complexIdEED2Ev(%class.polynomial.0* %0) #3
  br label %169

131:                                              ; preds = %74
  %132 = invoke dereferenceable(16) %"struct.std::complex"* @_ZNSt7complexIdEmLIdEERS0_RKS_IT_E(%"struct.std::complex"* %12, %"struct.std::complex"* dereferenceable(16) %11)
          to label %133 unwind label %127

133:                                              ; preds = %131
  br label %134

134:                                              ; preds = %133
  %135 = load i64, i64* %6, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %6, align 8
  br label %63

137:                                              ; preds = %63
  %138 = load i64, i64* %8, align 8
  %139 = shl i64 %138, 1
  store i64 %139, i64* %8, align 8
  %140 = load i64, i64* %9, align 8
  %141 = shl i64 %140, 1
  store i64 %141, i64* %9, align 8
  br label %142

142:                                              ; preds = %137
  %143 = load i64, i64* %10, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %10, align 8
  br label %30

145:                                              ; preds = %30
  store i64 0, i64* %6, align 8
  br label %146

146:                                              ; preds = %162, %145
  %147 = load i64, i64* %6, align 8
  %148 = load %class.polynomial.0*, %class.polynomial.0** %4, align 8
  %149 = invoke i64 @_ZNK10polynomialISt7complexIdEE6degreeEv(%class.polynomial.0* %148)
          to label %150 unwind label %127

150:                                              ; preds = %146
  %151 = icmp ult i64 %147, %149
  br i1 %151, label %152, label %165

152:                                              ; preds = %150
  %153 = load %class.polynomial.0*, %class.polynomial.0** %4, align 8
  %154 = invoke i64 @_ZNK10polynomialISt7complexIdEE6degreeEv(%class.polynomial.0* %153)
          to label %155 unwind label %127

155:                                              ; preds = %152
  %156 = uitofp i64 %154 to double
  %157 = load i64, i64* %6, align 8
  %158 = invoke dereferenceable(16) %"struct.std::complex"* @_ZN10polynomialISt7complexIdEEixEm(%class.polynomial.0* %0, i64 %157)
          to label %159 unwind label %127

159:                                              ; preds = %155
  %160 = invoke dereferenceable(16) %"struct.std::complex"* @_ZNSt7complexIdEdVEd(%"struct.std::complex"* %158, double %156)
          to label %161 unwind label %127

161:                                              ; preds = %159
  br label %162

162:                                              ; preds = %161
  %163 = load i64, i64* %6, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* %6, align 8
  br label %146

165:                                              ; preds = %150
  store i1 true, i1* %15, align 1
  %166 = load i1, i1* %15, align 1
  br i1 %166, label %168, label %167

167:                                              ; preds = %165
  call void @_ZN10polynomialISt7complexIdEED2Ev(%class.polynomial.0* %0) #3
  br label %168

168:                                              ; preds = %167, %165
  ret void

169:                                              ; preds = %127
  %170 = load i8*, i8** %19, align 8
  %171 = load i32, i32* %20, align 4
  %172 = insertvalue { i8*, i32 } undef, i8* %170, 0
  %173 = insertvalue { i8*, i32 } %172, i32 %171, 1
  resume { i8*, i32 } %173
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local dereferenceable(24) %class.polynomial.0* @_ZN10polynomialISt7complexIdEEaSERKS2_(%class.polynomial.0* %0, %class.polynomial.0* dereferenceable(24) %1) #0 comdat align 2 {
  %3 = alloca %class.polynomial.0*, align 8
  %4 = alloca %class.polynomial.0*, align 8
  store %class.polynomial.0* %0, %class.polynomial.0** %3, align 8
  store %class.polynomial.0* %1, %class.polynomial.0** %4, align 8
  %5 = load %class.polynomial.0*, %class.polynomial.0** %3, align 8
  %6 = getelementptr inbounds %class.polynomial.0, %class.polynomial.0* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = load %class.polynomial.0*, %class.polynomial.0** %4, align 8
  %9 = getelementptr inbounds %class.polynomial.0, %class.polynomial.0* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %7, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  call void @_ZN10polynomialISt7complexIdEE7releaseEv(%class.polynomial.0* %5)
  %13 = load %class.polynomial.0*, %class.polynomial.0** %4, align 8
  %14 = getelementptr inbounds %class.polynomial.0, %class.polynomial.0* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %class.polynomial.0, %class.polynomial.0* %5, i32 0, i32 2
  store i64 %15, i64* %16, align 8
  call void @_ZN10polynomialISt7complexIdEE7acquireEv(%class.polynomial.0* %5)
  br label %17

17:                                               ; preds = %12, %2
  %18 = load %class.polynomial.0*, %class.polynomial.0** %4, align 8
  %19 = getelementptr inbounds %class.polynomial.0, %class.polynomial.0* %18, i32 0, i32 1
  %20 = load %"struct.std::complex"*, %"struct.std::complex"** %19, align 8
  call void @_ZN10polynomialISt7complexIdEE9deep_copyEPKS1_(%class.polynomial.0* %5, %"struct.std::complex"* %20)
  ret %class.polynomial.0* %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN10polynomialISt7complexIdEED2Ev(%class.polynomial.0* %0) unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %class.polynomial.0*, align 8
  store %class.polynomial.0* %0, %class.polynomial.0** %2, align 8
  %3 = load %class.polynomial.0*, %class.polynomial.0** %2, align 8
  %4 = bitcast %class.polynomial.0* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTV10polynomialISt7complexIdEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %4, align 8
  invoke void @_ZN10polynomialISt7complexIdEE7releaseEv(%class.polynomial.0* %3)
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret void

6:                                                ; preds = %1
  %7 = landingpad { i8*, i32 }
          catch i8* null
  %8 = extractvalue { i8*, i32 } %7, 0
  call void @__clang_call_terminate(i8* %8) #13
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local double @_ZNKSt7complexIdE4realB5cxx11Ev(%"struct.std::complex"* %0) #6 comdat align 2 {
  %2 = alloca %"struct.std::complex"*, align 8
  store %"struct.std::complex"* %0, %"struct.std::complex"** %2, align 8
  %3 = load %"struct.std::complex"*, %"struct.std::complex"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %3, i32 0, i32 0
  %5 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %6 = load double, double* %5, align 8
  ret double %6
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN10polynomialISt7complexIdEE7releaseEv(%class.polynomial.0* %0) #6 comdat align 2 {
  %2 = alloca %class.polynomial.0*, align 8
  store %class.polynomial.0* %0, %class.polynomial.0** %2, align 8
  %3 = load %class.polynomial.0*, %class.polynomial.0** %2, align 8
  %4 = getelementptr inbounds %class.polynomial.0, %class.polynomial.0* %3, i32 0, i32 1
  %5 = load %"struct.std::complex"*, %"struct.std::complex"** %4, align 8
  %6 = icmp eq %"struct.std::complex"* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = bitcast %"struct.std::complex"* %5 to i8*
  call void @_ZdaPv(i8* %8) #14
  br label %9

9:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN10polynomialISt7complexIdEED0Ev(%class.polynomial.0* %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %class.polynomial.0*, align 8
  store %class.polynomial.0* %0, %class.polynomial.0** %2, align 8
  %3 = load %class.polynomial.0*, %class.polynomial.0** %2, align 8
  call void @_ZN10polynomialISt7complexIdEED2Ev(%class.polynomial.0* %3) #3
  %4 = bitcast %class.polynomial.0* %3 to i8*
  call void @_ZdlPv(i8* %4) #14
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZN10polynomialISt7complexIdEE7acquireEv(%class.polynomial.0* %0) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %class.polynomial.0*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store %class.polynomial.0* %0, %class.polynomial.0** %2, align 8
  %5 = load %class.polynomial.0*, %class.polynomial.0** %2, align 8
  %6 = getelementptr inbounds %class.polynomial.0, %class.polynomial.0* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %7, i64 16)
  %9 = extractvalue { i64, i1 } %8, 1
  %10 = extractvalue { i64, i1 } %8, 0
  %11 = select i1 %9, i64 -1, i64 %10
  %12 = call i8* @_Znam(i64 %11) #15
  %13 = bitcast i8* %12 to %"struct.std::complex"*
  %14 = icmp eq i64 %7, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %13, i64 %7
  br label %17

17:                                               ; preds = %19, %15
  %18 = phi %"struct.std::complex"* [ %13, %15 ], [ %20, %19 ]
  invoke void @_ZNSt7complexIdEC2Edd(%"struct.std::complex"* %18, double 0.000000e+00, double 0.000000e+00)
          to label %19 unwind label %24

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %18, i64 1
  %21 = icmp eq %"struct.std::complex"* %20, %16
  br i1 %21, label %22, label %17

22:                                               ; preds = %19, %1
  %23 = getelementptr inbounds %class.polynomial.0, %class.polynomial.0* %5, i32 0, i32 1
  store %"struct.std::complex"* %13, %"struct.std::complex"** %23, align 8
  ret void

24:                                               ; preds = %17
  %25 = landingpad { i8*, i32 }
          cleanup
  %26 = extractvalue { i8*, i32 } %25, 0
  store i8* %26, i8** %3, align 8
  %27 = extractvalue { i8*, i32 } %25, 1
  store i32 %27, i32* %4, align 4
  call void @_ZdaPv(i8* %12) #14
  br label %28

28:                                               ; preds = %24
  %29 = load i8*, i8** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = insertvalue { i8*, i32 } undef, i8* %29, 0
  %32 = insertvalue { i8*, i32 } %31, i32 %30, 1
  resume { i8*, i32 } %32
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN10polynomialISt7complexIdEE9deep_copyEPKS1_(%class.polynomial.0* %0, %"struct.std::complex"* %1) #6 comdat align 2 {
  %3 = alloca %class.polynomial.0*, align 8
  %4 = alloca %"struct.std::complex"*, align 8
  %5 = alloca i64, align 8
  store %class.polynomial.0* %0, %class.polynomial.0** %3, align 8
  store %"struct.std::complex"* %1, %"struct.std::complex"** %4, align 8
  %6 = load %class.polynomial.0*, %class.polynomial.0** %3, align 8
  store i64 0, i64* %5, align 8
  br label %7

7:                                                ; preds = %22, %2
  %8 = load i64, i64* %5, align 8
  %9 = getelementptr inbounds %class.polynomial.0, %class.polynomial.0* %6, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %8, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %7
  %13 = load %"struct.std::complex"*, %"struct.std::complex"** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %13, i64 %14
  %16 = getelementptr inbounds %class.polynomial.0, %class.polynomial.0* %6, i32 0, i32 1
  %17 = load %"struct.std::complex"*, %"struct.std::complex"** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %17, i64 %18
  %20 = bitcast %"struct.std::complex"* %19 to i8*
  %21 = bitcast %"struct.std::complex"* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 16, i1 false)
  br label %22

22:                                               ; preds = %12
  %23 = load i64, i64* %5, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %5, align 8
  br label %7

25:                                               ; preds = %7
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7complexIdEC2Edd(%"struct.std::complex"* %0, double %1, double %2) unnamed_addr #6 comdat align 2 {
  %4 = alloca %"struct.std::complex"*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store %"struct.std::complex"* %0, %"struct.std::complex"** %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %7 = load %"struct.std::complex"*, %"struct.std::complex"** %4, align 8
  %8 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %7, i32 0, i32 0
  %9 = load double, double* %5, align 8
  %10 = load double, double* %6, align 8
  %11 = getelementptr inbounds { double, double }, { double, double }* %8, i32 0, i32 0
  %12 = getelementptr inbounds { double, double }, { double, double }* %8, i32 0, i32 1
  store double %9, double* %11, align 8
  store double %10, double* %12, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i64 @_ZNK10polynomialISt7complexIdEE6degreeEv(%class.polynomial.0* %0) #6 comdat align 2 {
  %2 = alloca %class.polynomial.0*, align 8
  store %class.polynomial.0* %0, %class.polynomial.0** %2, align 8
  %3 = load %class.polynomial.0*, %class.polynomial.0** %2, align 8
  %4 = getelementptr inbounds %class.polynomial.0, %class.polynomial.0* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i64 @_ZN10polynomialIdE4log2Em(i64 %0) #6 comdat align 2 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i64 1, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %17, %1
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* %2, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = load i64, i64* %4, align 8
  %11 = add i64 %10, 1
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %3, align 8
  %13 = shl i64 %12, 1
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  br label %18

17:                                               ; preds = %9
  br label %5

18:                                               ; preds = %16, %5
  %19 = load i64, i64* %4, align 8
  ret i64 %19
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZN10polynomialIdE11bit_reverseERKS_ISt7complexIdEE(%class.polynomial.0* noalias sret %0, %class.polynomial.0* dereferenceable(24) %1) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca i8*, align 8
  %4 = alloca %class.polynomial.0*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i1, align 1
  %7 = alloca i64, align 8
  %8 = alloca i8*
  %9 = alloca i32
  %10 = alloca %"struct.std::complex", align 8
  %11 = bitcast %class.polynomial.0* %0 to i8*
  store i8* %11, i8** %3, align 8
  store %class.polynomial.0* %1, %class.polynomial.0** %4, align 8
  %12 = load %class.polynomial.0*, %class.polynomial.0** %4, align 8
  %13 = call i64 @_ZNK10polynomialISt7complexIdEE6degreeEv(%class.polynomial.0* %12)
  %14 = call i64 @_ZN10polynomialIdE4log2Em(i64 %13)
  store i64 %14, i64* %5, align 8
  store i1 false, i1* %6, align 1
  %15 = load %class.polynomial.0*, %class.polynomial.0** %4, align 8
  %16 = call i64 @_ZNK10polynomialISt7complexIdEE6degreeEv(%class.polynomial.0* %15)
  call void @_ZN10polynomialISt7complexIdEEC2Em(%class.polynomial.0* %0, i64 %16)
  store i64 0, i64* %7, align 8
  br label %17

17:                                               ; preds = %41, %2
  %18 = load i64, i64* %7, align 8
  %19 = load %class.polynomial.0*, %class.polynomial.0** %4, align 8
  %20 = invoke i64 @_ZNK10polynomialISt7complexIdEE6degreeEv(%class.polynomial.0* %19)
          to label %21 unwind label %44

21:                                               ; preds = %17
  %22 = icmp ult i64 %18, %20
  br i1 %22, label %23, label %48

23:                                               ; preds = %21
  %24 = load %class.polynomial.0*, %class.polynomial.0** %4, align 8
  %25 = load i64, i64* %7, align 8
  %26 = invoke { double, double } @_ZNK10polynomialISt7complexIdEE3getEm(%class.polynomial.0* %24, i64 %25)
          to label %27 unwind label %44

27:                                               ; preds = %23
  %28 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %10, i32 0, i32 0
  %29 = getelementptr inbounds { double, double }, { double, double }* %28, i32 0, i32 0
  %30 = extractvalue { double, double } %26, 0
  store double %30, double* %29, align 8
  %31 = getelementptr inbounds { double, double }, { double, double }* %28, i32 0, i32 1
  %32 = extractvalue { double, double } %26, 1
  store double %32, double* %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %5, align 8
  %35 = invoke i64 @_ZN10polynomialIdE9flip_bitsEmm(i64 %33, i64 %34)
          to label %36 unwind label %44

36:                                               ; preds = %27
  %37 = invoke dereferenceable(16) %"struct.std::complex"* @_ZN10polynomialISt7complexIdEEixEm(%class.polynomial.0* %0, i64 %35)
          to label %38 unwind label %44

38:                                               ; preds = %36
  %39 = bitcast %"struct.std::complex"* %37 to i8*
  %40 = bitcast %"struct.std::complex"* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 16, i1 false)
  br label %41

41:                                               ; preds = %38
  %42 = load i64, i64* %7, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %7, align 8
  br label %17

44:                                               ; preds = %36, %27, %23, %17
  %45 = landingpad { i8*, i32 }
          cleanup
  %46 = extractvalue { i8*, i32 } %45, 0
  store i8* %46, i8** %8, align 8
  %47 = extractvalue { i8*, i32 } %45, 1
  store i32 %47, i32* %9, align 4
  call void @_ZN10polynomialISt7complexIdEED2Ev(%class.polynomial.0* %0) #3
  br label %52

48:                                               ; preds = %21
  store i1 true, i1* %6, align 1
  %49 = load i1, i1* %6, align 1
  br i1 %49, label %51, label %50

50:                                               ; preds = %48
  call void @_ZN10polynomialISt7complexIdEED2Ev(%class.polynomial.0* %0) #3
  br label %51

51:                                               ; preds = %50, %48
  ret void

52:                                               ; preds = %44
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = insertvalue { i8*, i32 } undef, i8* %53, 0
  %56 = insertvalue { i8*, i32 } %55, i32 %54, 1
  resume { i8*, i32 } %56
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local { double, double } @_ZStngIdESt7complexIT_ERKS2_(%"struct.std::complex"* dereferenceable(16) %0) #0 comdat {
  %2 = alloca %"struct.std::complex", align 8
  %3 = alloca %"struct.std::complex"*, align 8
  store %"struct.std::complex"* %0, %"struct.std::complex"** %3, align 8
  %4 = load %"struct.std::complex"*, %"struct.std::complex"** %3, align 8
  %5 = call double @_ZNKSt7complexIdE4realB5cxx11Ev(%"struct.std::complex"* %4)
  %6 = fneg double %5
  %7 = load %"struct.std::complex"*, %"struct.std::complex"** %3, align 8
  %8 = call double @_ZNKSt7complexIdE4imagB5cxx11Ev(%"struct.std::complex"* %7)
  %9 = fneg double %8
  call void @_ZNSt7complexIdEC2Edd(%"struct.std::complex"* %2, double %6, double %9)
  %10 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %2, i32 0, i32 0
  %11 = load { double, double }, { double, double }* %10, align 8
  ret { double, double } %11
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local { double, double } @_ZStdvIdESt7complexIT_ERKS2_S4_(%"struct.std::complex"* dereferenceable(16) %0, %"struct.std::complex"* dereferenceable(16) %1) #0 comdat {
  %3 = alloca %"struct.std::complex", align 8
  %4 = alloca %"struct.std::complex"*, align 8
  %5 = alloca %"struct.std::complex"*, align 8
  store %"struct.std::complex"* %0, %"struct.std::complex"** %4, align 8
  store %"struct.std::complex"* %1, %"struct.std::complex"** %5, align 8
  %6 = load %"struct.std::complex"*, %"struct.std::complex"** %4, align 8
  %7 = bitcast %"struct.std::complex"* %3 to i8*
  %8 = bitcast %"struct.std::complex"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 16, i1 false)
  %9 = load %"struct.std::complex"*, %"struct.std::complex"** %5, align 8
  %10 = call dereferenceable(16) %"struct.std::complex"* @_ZNSt7complexIdEdVIdEERS0_RKS_IT_E(%"struct.std::complex"* %3, %"struct.std::complex"* dereferenceable(16) %9)
  %11 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %3, i32 0, i32 0
  %12 = load { double, double }, { double, double }* %11, align 8
  ret { double, double } %12
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local { double, double } @_ZSt3expIdESt7complexIT_ERKS2_(%"struct.std::complex"* dereferenceable(16) %0) #0 comdat {
  %2 = alloca %"struct.std::complex", align 8
  %3 = alloca %"struct.std::complex"*, align 8
  %4 = alloca { double, double }, align 8
  %5 = alloca { double, double }, align 8
  store %"struct.std::complex"* %0, %"struct.std::complex"** %3, align 8
  %6 = load %"struct.std::complex"*, %"struct.std::complex"** %3, align 8
  %7 = call { double, double } @_ZNKSt7complexIdE5__repEv(%"struct.std::complex"* %6)
  %8 = extractvalue { double, double } %7, 0
  %9 = extractvalue { double, double } %7, 1
  %10 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %11 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  store double %8, double* %10, align 8
  store double %9, double* %11, align 8
  %12 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %13 = load double, double* %12, align 8
  %14 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  %15 = load double, double* %14, align 8
  %16 = call { double, double } @_ZSt13__complex_expCd(double %13, double %15)
  %17 = extractvalue { double, double } %16, 0
  %18 = extractvalue { double, double } %16, 1
  %19 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 0
  %20 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 1
  store double %17, double* %19, align 8
  store double %18, double* %20, align 8
  %21 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 0
  %22 = load double, double* %21, align 8
  %23 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 1
  %24 = load double, double* %23, align 8
  call void @_ZNSt7complexIdEC2ECd(%"struct.std::complex"* %2, double %22, double %24)
  %25 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %2, i32 0, i32 0
  %26 = load { double, double }, { double, double }* %25, align 8
  ret { double, double } %26
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(16) %"struct.std::complex"* @_ZNSt7complexIdEaSEd(%"struct.std::complex"* %0, double %1) #6 comdat align 2 {
  %3 = alloca %"struct.std::complex"*, align 8
  %4 = alloca double, align 8
  store %"struct.std::complex"* %0, %"struct.std::complex"** %3, align 8
  store double %1, double* %4, align 8
  %5 = load %"struct.std::complex"*, %"struct.std::complex"** %3, align 8
  %6 = load double, double* %4, align 8
  %7 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %5, i32 0, i32 0
  %8 = getelementptr inbounds { double, double }, { double, double }* %7, i32 0, i32 0
  %9 = getelementptr inbounds { double, double }, { double, double }* %7, i32 0, i32 1
  store double %6, double* %8, align 8
  store double 0.000000e+00, double* %9, align 8
  ret %"struct.std::complex"* %5
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local { double, double } @_ZStmlIdESt7complexIT_ERKS2_S4_(%"struct.std::complex"* dereferenceable(16) %0, %"struct.std::complex"* dereferenceable(16) %1) #0 comdat {
  %3 = alloca %"struct.std::complex", align 8
  %4 = alloca %"struct.std::complex"*, align 8
  %5 = alloca %"struct.std::complex"*, align 8
  store %"struct.std::complex"* %0, %"struct.std::complex"** %4, align 8
  store %"struct.std::complex"* %1, %"struct.std::complex"** %5, align 8
  %6 = load %"struct.std::complex"*, %"struct.std::complex"** %4, align 8
  %7 = bitcast %"struct.std::complex"* %3 to i8*
  %8 = bitcast %"struct.std::complex"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 16, i1 false)
  %9 = load %"struct.std::complex"*, %"struct.std::complex"** %5, align 8
  %10 = call dereferenceable(16) %"struct.std::complex"* @_ZNSt7complexIdEmLIdEERS0_RKS_IT_E(%"struct.std::complex"* %3, %"struct.std::complex"* dereferenceable(16) %9)
  %11 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %3, i32 0, i32 0
  %12 = load { double, double }, { double, double }* %11, align 8
  ret { double, double } %12
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local { double, double } @_ZStplIdESt7complexIT_ERKS2_S4_(%"struct.std::complex"* dereferenceable(16) %0, %"struct.std::complex"* dereferenceable(16) %1) #0 comdat {
  %3 = alloca %"struct.std::complex", align 8
  %4 = alloca %"struct.std::complex"*, align 8
  %5 = alloca %"struct.std::complex"*, align 8
  store %"struct.std::complex"* %0, %"struct.std::complex"** %4, align 8
  store %"struct.std::complex"* %1, %"struct.std::complex"** %5, align 8
  %6 = load %"struct.std::complex"*, %"struct.std::complex"** %4, align 8
  %7 = bitcast %"struct.std::complex"* %3 to i8*
  %8 = bitcast %"struct.std::complex"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 16, i1 false)
  %9 = load %"struct.std::complex"*, %"struct.std::complex"** %5, align 8
  %10 = call dereferenceable(16) %"struct.std::complex"* @_ZNSt7complexIdEpLIdEERS0_RKS_IT_E(%"struct.std::complex"* %3, %"struct.std::complex"* dereferenceable(16) %9)
  %11 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %3, i32 0, i32 0
  %12 = load { double, double }, { double, double }* %11, align 8
  ret { double, double } %12
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local { double, double } @_ZStmiIdESt7complexIT_ERKS2_S4_(%"struct.std::complex"* dereferenceable(16) %0, %"struct.std::complex"* dereferenceable(16) %1) #0 comdat {
  %3 = alloca %"struct.std::complex", align 8
  %4 = alloca %"struct.std::complex"*, align 8
  %5 = alloca %"struct.std::complex"*, align 8
  store %"struct.std::complex"* %0, %"struct.std::complex"** %4, align 8
  store %"struct.std::complex"* %1, %"struct.std::complex"** %5, align 8
  %6 = load %"struct.std::complex"*, %"struct.std::complex"** %4, align 8
  %7 = bitcast %"struct.std::complex"* %3 to i8*
  %8 = bitcast %"struct.std::complex"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 16, i1 false)
  %9 = load %"struct.std::complex"*, %"struct.std::complex"** %5, align 8
  %10 = call dereferenceable(16) %"struct.std::complex"* @_ZNSt7complexIdEmIIdEERS0_RKS_IT_E(%"struct.std::complex"* %3, %"struct.std::complex"* dereferenceable(16) %9)
  %11 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %3, i32 0, i32 0
  %12 = load { double, double }, { double, double }* %11, align 8
  ret { double, double } %12
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(16) %"struct.std::complex"* @_ZNSt7complexIdEdVEd(%"struct.std::complex"* %0, double %1) #6 comdat align 2 {
  %3 = alloca %"struct.std::complex"*, align 8
  %4 = alloca double, align 8
  store %"struct.std::complex"* %0, %"struct.std::complex"** %3, align 8
  store double %1, double* %4, align 8
  %5 = load %"struct.std::complex"*, %"struct.std::complex"** %3, align 8
  %6 = load double, double* %4, align 8
  %7 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %5, i32 0, i32 0
  %8 = getelementptr inbounds { double, double }, { double, double }* %7, i32 0, i32 0
  %9 = load double, double* %8, align 8
  %10 = getelementptr inbounds { double, double }, { double, double }* %7, i32 0, i32 1
  %11 = load double, double* %10, align 8
  %12 = fdiv double %9, %6
  %13 = fdiv double %11, %6
  %14 = getelementptr inbounds { double, double }, { double, double }* %7, i32 0, i32 0
  %15 = getelementptr inbounds { double, double }, { double, double }* %7, i32 0, i32 1
  store double %12, double* %14, align 8
  store double %13, double* %15, align 8
  ret %"struct.std::complex"* %5
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local dereferenceable(16) %"struct.std::complex"* @_ZNSt7complexIdEmIIdEERS0_RKS_IT_E(%"struct.std::complex"* %0, %"struct.std::complex"* dereferenceable(16) %1) #0 comdat align 2 {
  %3 = alloca %"struct.std::complex"*, align 8
  %4 = alloca %"struct.std::complex"*, align 8
  store %"struct.std::complex"* %0, %"struct.std::complex"** %3, align 8
  store %"struct.std::complex"* %1, %"struct.std::complex"** %4, align 8
  %5 = load %"struct.std::complex"*, %"struct.std::complex"** %3, align 8
  %6 = load %"struct.std::complex"*, %"struct.std::complex"** %4, align 8
  %7 = call double @_ZNKSt7complexIdE4realB5cxx11Ev(%"struct.std::complex"* %6)
  %8 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %5, i32 0, i32 0
  %9 = getelementptr inbounds { double, double }, { double, double }* %8, i32 0, i32 0
  %10 = load double, double* %9, align 8
  %11 = fsub double %10, %7
  store double %11, double* %9, align 8
  %12 = load %"struct.std::complex"*, %"struct.std::complex"** %4, align 8
  %13 = call double @_ZNKSt7complexIdE4imagB5cxx11Ev(%"struct.std::complex"* %12)
  %14 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %5, i32 0, i32 0
  %15 = getelementptr inbounds { double, double }, { double, double }* %14, i32 0, i32 1
  %16 = load double, double* %15, align 8
  %17 = fsub double %16, %13
  store double %17, double* %15, align 8
  ret %"struct.std::complex"* %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local double @_ZNKSt7complexIdE4imagB5cxx11Ev(%"struct.std::complex"* %0) #6 comdat align 2 {
  %2 = alloca %"struct.std::complex"*, align 8
  store %"struct.std::complex"* %0, %"struct.std::complex"** %2, align 8
  %3 = load %"struct.std::complex"*, %"struct.std::complex"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %3, i32 0, i32 0
  %5 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  %6 = load double, double* %5, align 8
  ret double %6
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local dereferenceable(16) %"struct.std::complex"* @_ZNSt7complexIdEpLIdEERS0_RKS_IT_E(%"struct.std::complex"* %0, %"struct.std::complex"* dereferenceable(16) %1) #0 comdat align 2 {
  %3 = alloca %"struct.std::complex"*, align 8
  %4 = alloca %"struct.std::complex"*, align 8
  store %"struct.std::complex"* %0, %"struct.std::complex"** %3, align 8
  store %"struct.std::complex"* %1, %"struct.std::complex"** %4, align 8
  %5 = load %"struct.std::complex"*, %"struct.std::complex"** %3, align 8
  %6 = load %"struct.std::complex"*, %"struct.std::complex"** %4, align 8
  %7 = call double @_ZNKSt7complexIdE4realB5cxx11Ev(%"struct.std::complex"* %6)
  %8 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %5, i32 0, i32 0
  %9 = getelementptr inbounds { double, double }, { double, double }* %8, i32 0, i32 0
  %10 = load double, double* %9, align 8
  %11 = fadd double %10, %7
  store double %11, double* %9, align 8
  %12 = load %"struct.std::complex"*, %"struct.std::complex"** %4, align 8
  %13 = call double @_ZNKSt7complexIdE4imagB5cxx11Ev(%"struct.std::complex"* %12)
  %14 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %5, i32 0, i32 0
  %15 = getelementptr inbounds { double, double }, { double, double }* %14, i32 0, i32 1
  %16 = load double, double* %15, align 8
  %17 = fadd double %16, %13
  store double %17, double* %15, align 8
  ret %"struct.std::complex"* %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local { double, double } @_ZNKSt7complexIdE5__repEv(%"struct.std::complex"* %0) #6 comdat align 2 {
  %2 = alloca { double, double }, align 8
  %3 = alloca %"struct.std::complex"*, align 8
  store %"struct.std::complex"* %0, %"struct.std::complex"** %3, align 8
  %4 = load %"struct.std::complex"*, %"struct.std::complex"** %3, align 8
  %5 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %4, i32 0, i32 0
  %6 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 0
  %7 = load double, double* %6, align 8
  %8 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 1
  %9 = load double, double* %8, align 8
  %10 = getelementptr inbounds { double, double }, { double, double }* %2, i32 0, i32 0
  %11 = getelementptr inbounds { double, double }, { double, double }* %2, i32 0, i32 1
  store double %7, double* %10, align 8
  store double %9, double* %11, align 8
  %12 = load { double, double }, { double, double }* %2, align 8
  ret { double, double } %12
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local { double, double } @_ZSt13__complex_expCd(double %0, double %1) #6 comdat {
  %3 = alloca { double, double }, align 8
  %4 = alloca { double, double }, align 8
  %5 = alloca { double, double }, align 8
  %6 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  store double %0, double* %6, align 8
  %7 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  store double %1, double* %7, align 8
  %8 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %9 = load double, double* %8, align 8
  %10 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  %11 = load double, double* %10, align 8
  %12 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 0
  %13 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 1
  store double %9, double* %12, align 8
  store double %11, double* %13, align 8
  %14 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 0
  %15 = load double, double* %14, align 8
  %16 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 1
  %17 = load double, double* %16, align 8
  %18 = call { double, double } @cexp(double %15, double %17) #3
  %19 = extractvalue { double, double } %18, 0
  %20 = extractvalue { double, double } %18, 1
  %21 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 0
  %22 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 1
  store double %19, double* %21, align 8
  store double %20, double* %22, align 8
  %23 = load { double, double }, { double, double }* %3, align 8
  ret { double, double } %23
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7complexIdEC2ECd(%"struct.std::complex"* %0, double %1, double %2) unnamed_addr #6 comdat align 2 {
  %4 = alloca { double, double }, align 8
  %5 = alloca %"struct.std::complex"*, align 8
  %6 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  store double %1, double* %6, align 8
  %7 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  store double %2, double* %7, align 8
  store %"struct.std::complex"* %0, %"struct.std::complex"** %5, align 8
  %8 = load %"struct.std::complex"*, %"struct.std::complex"** %5, align 8
  %9 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %8, i32 0, i32 0
  %10 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %11 = load double, double* %10, align 8
  %12 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  %13 = load double, double* %12, align 8
  %14 = getelementptr inbounds { double, double }, { double, double }* %9, i32 0, i32 0
  %15 = getelementptr inbounds { double, double }, { double, double }* %9, i32 0, i32 1
  store double %11, double* %14, align 8
  store double %13, double* %15, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local { double, double } @cexp(double, double) #2

; Function Attrs: noinline uwtable
define linkonce_odr dso_local dereferenceable(16) %"struct.std::complex"* @_ZNSt7complexIdEdVIdEERS0_RKS_IT_E(%"struct.std::complex"* %0, %"struct.std::complex"* dereferenceable(16) %1) #0 comdat align 2 {
  %3 = alloca %"struct.std::complex"*, align 8
  %4 = alloca %"struct.std::complex"*, align 8
  %5 = alloca { double, double }, align 8
  store %"struct.std::complex"* %0, %"struct.std::complex"** %3, align 8
  store %"struct.std::complex"* %1, %"struct.std::complex"** %4, align 8
  %6 = load %"struct.std::complex"*, %"struct.std::complex"** %3, align 8
  %7 = load %"struct.std::complex"*, %"struct.std::complex"** %4, align 8
  %8 = call double @_ZNKSt7complexIdE4realB5cxx11Ev(%"struct.std::complex"* %7)
  %9 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 0
  store double %8, double* %9, align 8
  %10 = load %"struct.std::complex"*, %"struct.std::complex"** %4, align 8
  %11 = call double @_ZNKSt7complexIdE4imagB5cxx11Ev(%"struct.std::complex"* %10)
  %12 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 1
  store double %11, double* %12, align 8
  %13 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 0
  %14 = load double, double* %13, align 8
  %15 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 1
  %16 = load double, double* %15, align 8
  %17 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %6, i32 0, i32 0
  %18 = getelementptr inbounds { double, double }, { double, double }* %17, i32 0, i32 0
  %19 = load double, double* %18, align 8
  %20 = getelementptr inbounds { double, double }, { double, double }* %17, i32 0, i32 1
  %21 = load double, double* %20, align 8
  %22 = call { double, double } @__divdc3(double %19, double %21, double %14, double %16) #3
  %23 = extractvalue { double, double } %22, 0
  %24 = extractvalue { double, double } %22, 1
  %25 = getelementptr inbounds { double, double }, { double, double }* %17, i32 0, i32 0
  %26 = getelementptr inbounds { double, double }, { double, double }* %17, i32 0, i32 1
  store double %23, double* %25, align 8
  store double %24, double* %26, align 8
  ret %"struct.std::complex"* %6
}

declare dso_local { double, double } @__divdc3(double, double, double, double)

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZN10polynomialISt7complexIdEEC2Em(%class.polynomial.0* %0, i64 %1) unnamed_addr #0 comdat align 2 {
  %3 = alloca %class.polynomial.0*, align 8
  %4 = alloca i64, align 8
  store %class.polynomial.0* %0, %class.polynomial.0** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %class.polynomial.0*, %class.polynomial.0** %3, align 8
  %6 = bitcast %class.polynomial.0* %5 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTV10polynomialISt7complexIdEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %6, align 8
  %7 = getelementptr inbounds %class.polynomial.0, %class.polynomial.0* %5, i32 0, i32 1
  store %"struct.std::complex"* null, %"struct.std::complex"** %7, align 8
  %8 = getelementptr inbounds %class.polynomial.0, %class.polynomial.0* %5, i32 0, i32 2
  %9 = load i64, i64* %4, align 8
  store i64 %9, i64* %8, align 8
  call void @_ZN10polynomialISt7complexIdEE7acquireEv(%class.polynomial.0* %5)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local { double, double } @_ZNK10polynomialISt7complexIdEE3getEm(%class.polynomial.0* %0, i64 %1) #6 comdat align 2 {
  %3 = alloca %"struct.std::complex", align 8
  %4 = alloca %class.polynomial.0*, align 8
  %5 = alloca i64, align 8
  store %class.polynomial.0* %0, %class.polynomial.0** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %class.polynomial.0*, %class.polynomial.0** %4, align 8
  %7 = getelementptr inbounds %class.polynomial.0, %class.polynomial.0* %6, i32 0, i32 1
  %8 = load %"struct.std::complex"*, %"struct.std::complex"** %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %8, i64 %9
  %11 = bitcast %"struct.std::complex"* %3 to i8*
  %12 = bitcast %"struct.std::complex"* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 16, i1 false)
  %13 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %3, i32 0, i32 0
  %14 = load { double, double }, { double, double }* %13, align 8
  ret { double, double } %14
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i64 @_ZN10polynomialIdE9flip_bitsEmm(i64 %0, i64 %1) #6 comdat align 2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = sub i64 %8, 1
  %10 = trunc i64 %9 to i32
  %11 = shl i32 1, %10
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %5, align 8
  store i64 1, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %13

13:                                               ; preds = %25, %2
  %14 = load i64, i64* %5, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* %6, align 8
  %19 = and i64 %17, %18
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %7, align 8
  %24 = or i64 %23, %22
  store i64 %24, i64* %7, align 8
  br label %25

25:                                               ; preds = %21, %16
  %26 = load i64, i64* %5, align 8
  %27 = lshr i64 %26, 1
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = shl i64 %28, 1
  store i64 %29, i64* %6, align 8
  br label %13

30:                                               ; preds = %13
  %31 = load i64, i64* %7, align 8
  ret i64 %31
}

declare dso_local { double, double } @__muldc3(double, double, double, double)

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZN10polynomialIdE11bit_reverseERKS0_(%class.polynomial.0* noalias sret %0, %class.polynomial* dereferenceable(24) %1) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca i8*, align 8
  %4 = alloca %class.polynomial*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i1, align 1
  %7 = alloca i64, align 8
  %8 = alloca i8*
  %9 = alloca i32
  %10 = bitcast %class.polynomial.0* %0 to i8*
  store i8* %10, i8** %3, align 8
  store %class.polynomial* %1, %class.polynomial** %4, align 8
  %11 = load %class.polynomial*, %class.polynomial** %4, align 8
  %12 = call i64 @_ZNK10polynomialIdE6degreeEv(%class.polynomial* %11)
  %13 = call i64 @_ZN10polynomialIdE4log2Em(i64 %12)
  store i64 %13, i64* %5, align 8
  store i1 false, i1* %6, align 1
  %14 = load %class.polynomial*, %class.polynomial** %4, align 8
  %15 = call i64 @_ZNK10polynomialIdE6degreeEv(%class.polynomial* %14)
  call void @_ZN10polynomialISt7complexIdEEC2Em(%class.polynomial.0* %0, i64 %15)
  store i64 0, i64* %7, align 8
  br label %16

16:                                               ; preds = %35, %2
  %17 = load i64, i64* %7, align 8
  %18 = load %class.polynomial*, %class.polynomial** %4, align 8
  %19 = invoke i64 @_ZNK10polynomialIdE6degreeEv(%class.polynomial* %18)
          to label %20 unwind label %38

20:                                               ; preds = %16
  %21 = icmp ult i64 %17, %19
  br i1 %21, label %22, label %42

22:                                               ; preds = %20
  %23 = load %class.polynomial*, %class.polynomial** %4, align 8
  %24 = load i64, i64* %7, align 8
  %25 = invoke double @_ZNK10polynomialIdE3getEm(%class.polynomial* %23, i64 %24)
          to label %26 unwind label %38

26:                                               ; preds = %22
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %5, align 8
  %29 = invoke i64 @_ZN10polynomialIdE9flip_bitsEmm(i64 %27, i64 %28)
          to label %30 unwind label %38

30:                                               ; preds = %26
  %31 = invoke dereferenceable(16) %"struct.std::complex"* @_ZN10polynomialISt7complexIdEEixEm(%class.polynomial.0* %0, i64 %29)
          to label %32 unwind label %38

32:                                               ; preds = %30
  %33 = invoke dereferenceable(16) %"struct.std::complex"* @_ZNSt7complexIdEaSEd(%"struct.std::complex"* %31, double %25)
          to label %34 unwind label %38

34:                                               ; preds = %32
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %7, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %7, align 8
  br label %16

38:                                               ; preds = %32, %30, %26, %22, %16
  %39 = landingpad { i8*, i32 }
          cleanup
  %40 = extractvalue { i8*, i32 } %39, 0
  store i8* %40, i8** %8, align 8
  %41 = extractvalue { i8*, i32 } %39, 1
  store i32 %41, i32* %9, align 4
  call void @_ZN10polynomialISt7complexIdEED2Ev(%class.polynomial.0* %0) #3
  br label %46

42:                                               ; preds = %20
  store i1 true, i1* %6, align 1
  %43 = load i1, i1* %6, align 1
  br i1 %43, label %45, label %44

44:                                               ; preds = %42
  call void @_ZN10polynomialISt7complexIdEED2Ev(%class.polynomial.0* %0) #3
  br label %45

45:                                               ; preds = %44, %42
  ret void

46:                                               ; preds = %38
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = insertvalue { i8*, i32 } undef, i8* %47, 0
  %50 = insertvalue { i8*, i32 } %49, i32 %48, 1
  resume { i8*, i32 } %50
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local double @_ZNK10polynomialIdE3getEm(%class.polynomial* %0, i64 %1) #6 comdat align 2 {
  %3 = alloca %class.polynomial*, align 8
  %4 = alloca i64, align 8
  store %class.polynomial* %0, %class.polynomial** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %class.polynomial*, %class.polynomial** %3, align 8
  %6 = getelementptr inbounds %class.polynomial, %class.polynomial* %5, i32 0, i32 1
  %7 = load double*, double** %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = getelementptr inbounds double, double* %7, i64 %8
  %10 = load double, double* %9, align 8
  ret double %10
}

declare dso_local i8* @__cxa_allocate_exception(i64)

declare dso_local void @_ZNSt14overflow_errorC1EPKc(%"class.std::overflow_error"*, i8*) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt14overflow_errorD1Ev(%"class.std::overflow_error"*) unnamed_addr #2

declare dso_local void @__cxa_throw(i8*, i8*, i8*)

declare dso_local void @__cxa_free_exception(i8*)

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline noreturn nounwind }
attributes #8 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone speculatable willreturn }
attributes #10 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { argmemonly nounwind willreturn }
attributes #12 = { nounwind readonly }
attributes #13 = { noreturn nounwind }
attributes #14 = { builtin nounwind }
attributes #15 = { builtin }
attributes #16 = { noreturn }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!"branch_weights", i32 1, i32 1048575}
