; ModuleID = 'main.ll'
source_filename = "main.ll"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9"

%Vs5UInt8 = type <{ i8 }>
%Sb = type <{ i1 }>

@_Tv4main9sensorPinVs5UInt8 = hidden global %Vs5UInt8 zeroinitializer, align 1
@_Tv4main6ledPinVs5UInt8 = hidden global %Vs5UInt8 zeroinitializer, align 1
@HIGH = external constant i8, align 1
@LOW = external constant i8, align 1
@__swift_reflection_version = linkonce_odr hidden constant i16 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16* @__swift_reflection_version to i8*)], section "llvm.metadata", align 8

define i32 @main(i32, i8**) #0 {
entry:
  %2 = bitcast i8** %1 to i8*
  store i8 0, i8* getelementptr inbounds (%Vs5UInt8, %Vs5UInt8* @_Tv4main9sensorPinVs5UInt8, i32 0, i32 0), align 1
  store i8 13, i8* getelementptr inbounds (%Vs5UInt8, %Vs5UInt8* @_Tv4main6ledPinVs5UInt8, i32 0, i32 0), align 1
  br label %3

; <label>:3:                                      ; preds = %4, %entry
  br label %4

; <label>:4:                                      ; preds = %3
  %5 = load i8, i8* getelementptr inbounds (%Vs5UInt8, %Vs5UInt8* @_Tv4main9sensorPinVs5UInt8, i32 0, i32 0), align 1
  %6 = call i16 @_TF3AVR14slowAnalogReadFT3pinVs5UInt8_Vs6UInt16(i8 %5)
  %7 = load i8, i8* getelementptr inbounds (%Vs5UInt8, %Vs5UInt8* @_Tv4main6ledPinVs5UInt8, i32 0, i32 0), align 1
  %8 = load i1, i1* getelementptr inbounds (%Sb, %Sb* bitcast (i8* @HIGH to %Sb*), i32 0, i32 0), align 1
  call void @_TF3AVR12digitalWriteFT3pinVs5UInt85valueSb_T_(i8 %7, i1 %8)
  call void @_TF3AVR5delayFT12millisecondsVs6UInt16_T_(i16 %6)
  %9 = load i8, i8* getelementptr inbounds (%Vs5UInt8, %Vs5UInt8* @_Tv4main6ledPinVs5UInt8, i32 0, i32 0), align 1
  %10 = load i1, i1* getelementptr inbounds (%Sb, %Sb* bitcast (i8* @LOW to %Sb*), i32 0, i32 0), align 1
  call void @_TF3AVR12digitalWriteFT3pinVs5UInt85valueSb_T_(i8 %9, i1 %10)
  call void @_TF3AVR5delayFT12millisecondsVs6UInt16_T_(i16 %6)
  br label %3
}

declare i16 @_TF3AVR14slowAnalogReadFT3pinVs5UInt8_Vs6UInt16(i8) #0

declare void @_TF3AVR12digitalWriteFT3pinVs5UInt85valueSb_T_(i8, i1) #0

declare void @_TF3AVR5delayFT12millisecondsVs6UInt16_T_(i16) #0

attributes #0 = { "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+fxsr,+mmx,+x87,+sse,+sse2,+sse3" }

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
