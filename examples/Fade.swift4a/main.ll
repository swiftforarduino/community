; ModuleID = 'main.ll'
source_filename = "main.ll"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9"

%Vs5UInt8 = type <{ i8 }>
%Vs5Int16 = type <{ i16 }>
%Sb = type <{ i1 }>

@Put0 = external global i8*, align 8
@_Tv4main3ledVs5UInt8 = hidden global %Vs5UInt8 zeroinitializer, align 1
@OUTPUT = external constant i8, align 1
@_Tv4main10brightnessVs5Int16 = hidden global %Vs5Int16 zeroinitializer, align 2
@_Tv4main10fadeAmountVs5Int16 = hidden global %Vs5Int16 zeroinitializer, align 2
@__swift_reflection_version = linkonce_odr hidden constant i16 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16* @__swift_reflection_version to i8*)], section "llvm.metadata", align 8

define i32 @main(i32, i8**) #0 {
entry:
  %2 = bitcast i8** %1 to i8*
  call void @_TF3AVR11SetupSerialFT8baudRateVs5Int16_T_(i16 9600)
  %3 = load i64, i64* bitcast (i8** @Put0 to i64*), align 8
  call void @_TF3AVR5printFT7messageGSqGSPVs4Int8___T_(i64 %3)
  store i8 9, i8* getelementptr inbounds (%Vs5UInt8, %Vs5UInt8* @_Tv4main3ledVs5UInt8, i32 0, i32 0), align 1
  %4 = load i8, i8* getelementptr inbounds (%Vs5UInt8, %Vs5UInt8* @_Tv4main3ledVs5UInt8, i32 0, i32 0), align 1
  %5 = load i1, i1* getelementptr inbounds (%Sb, %Sb* bitcast (i8* @OUTPUT to %Sb*), i32 0, i32 0), align 1
  call void @_TF3AVR7pinModeFT3pinVs5UInt84modeSb_T_(i8 %4, i1 %5)
  store i16 0, i16* getelementptr inbounds (%Vs5Int16, %Vs5Int16* @_Tv4main10brightnessVs5Int16, i32 0, i32 0), align 2
  store i16 5, i16* getelementptr inbounds (%Vs5Int16, %Vs5Int16* @_Tv4main10fadeAmountVs5Int16, i32 0, i32 0), align 2
  br label %6

; <label>:6:                                      ; preds = %33, %entry
  br label %7

; <label>:7:                                      ; preds = %6
  %8 = load i16, i16* getelementptr inbounds (%Vs5Int16, %Vs5Int16* @_Tv4main10brightnessVs5Int16, i32 0, i32 0), align 2
  %9 = trunc i16 %8 to i8
  %10 = load i8, i8* getelementptr inbounds (%Vs5UInt8, %Vs5UInt8* @_Tv4main3ledVs5UInt8, i32 0, i32 0), align 1
  call void @_TF3AVR11analogWriteFT3pinVs5UInt85valueS0__T_(i8 %10, i8 %9)
  %11 = load i16, i16* getelementptr inbounds (%Vs5Int16, %Vs5Int16* @_Tv4main10brightnessVs5Int16, i32 0, i32 0), align 2
  %12 = load i16, i16* getelementptr inbounds (%Vs5Int16, %Vs5Int16* @_Tv4main10fadeAmountVs5Int16, i32 0, i32 0), align 2
  %13 = call { i16, i1 } @llvm.sadd.with.overflow.i16(i16 %11, i16 %12)
  %14 = extractvalue { i16, i1 } %13, 0
  %15 = extractvalue { i16, i1 } %13, 1
  store i16 %14, i16* getelementptr inbounds (%Vs5Int16, %Vs5Int16* @_Tv4main10brightnessVs5Int16, i32 0, i32 0), align 2
  %16 = load i16, i16* getelementptr inbounds (%Vs5Int16, %Vs5Int16* @_Tv4main10brightnessVs5Int16, i32 0, i32 0), align 2
  %17 = icmp sle i16 %16, 0
  br i1 %17, label %18, label %21

; <label>:18:                                     ; preds = %7
  br label %19

; <label>:19:                                     ; preds = %18, %25
  %20 = phi i1 [ %24, %25 ], [ true, %18 ]
  br label %26

; <label>:21:                                     ; preds = %7
  br label %22

; <label>:22:                                     ; preds = %21
  %23 = load i16, i16* getelementptr inbounds (%Vs5Int16, %Vs5Int16* @_Tv4main10brightnessVs5Int16, i32 0, i32 0), align 2
  %24 = icmp sge i16 %23, 255
  br label %25

; <label>:25:                                     ; preds = %22
  br label %19

; <label>:26:                                     ; preds = %19
  br i1 %20, label %27, label %33

; <label>:27:                                     ; preds = %26
  %28 = load i16, i16* getelementptr inbounds (%Vs5Int16, %Vs5Int16* @_Tv4main10fadeAmountVs5Int16, i32 0, i32 0), align 2
  %29 = icmp sgt i16 %28, 0
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %27
  store i16 -5, i16* getelementptr inbounds (%Vs5Int16, %Vs5Int16* @_Tv4main10fadeAmountVs5Int16, i32 0, i32 0), align 2
  br label %32

; <label>:31:                                     ; preds = %27
  store i16 5, i16* getelementptr inbounds (%Vs5Int16, %Vs5Int16* @_Tv4main10fadeAmountVs5Int16, i32 0, i32 0), align 2
  br label %32

; <label>:32:                                     ; preds = %30, %31
  br label %33

; <label>:33:                                     ; preds = %32, %26
  call void @_TF3AVR5delayFT12millisecondsVs6UInt16_T_(i16 3000)
  br label %6
}

declare void @_TF3AVR11SetupSerialFT8baudRateVs5Int16_T_(i16) #0

declare void @_TF3AVR5printFT7messageGSqGSPVs4Int8___T_(i64) #0

declare void @_TF3AVR7pinModeFT3pinVs5UInt84modeSb_T_(i8, i1) #0

declare void @_TF3AVR11analogWriteFT3pinVs5UInt85valueS0__T_(i8, i8) #0

; Function Attrs: nounwind readnone
declare { i16, i1 } @llvm.sadd.with.overflow.i16(i16, i16) #1

declare void @_TF3AVR5delayFT12millisecondsVs6UInt16_T_(i16) #0

attributes #0 = { "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+fxsr,+mmx,+x87,+sse,+sse2,+sse3" }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !9, !10}

!0 = !{i32 1, !"Objective-C Version", i32 2}
!1 = !{i32 1, !"Objective-C Image Info Version", i32 0}
!2 = !{i32 1, !"Objective-C Image Info Section", !"__DATA, __objc_imageinfo, regular, no_dead_strip"}
!3 = !{i32 4, !"Objective-C Garbage Collection", i32 1024}
!4 = !{i32 1, !"Objective-C Class Properties", i32 64}
!5 = !{i32 6, !"Linker Options", !6}
!6 = !{!7, !8}
!7 = !{!"-lswiftCore"}
!8 = !{!"-lobjc"}
!9 = !{i32 1, !"PIC Level", i32 2}
!10 = !{i32 1, !"Swift Version", i32 4}
