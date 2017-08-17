; ModuleID = 'main.ll'
source_filename = "main.ll"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9"

@__swift_reflection_version = linkonce_odr hidden constant i16 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16* @__swift_reflection_version to i8*)], section "llvm.metadata", align 8

define i32 @main(i32, i8**) #0 {
entry:
  %2 = bitcast i8** %1 to i8*
  call void @_TF3AVR11SetupSerialFT8baudRateVs5Int16_T_(i16 9600)
  br label %3

; <label>:3:                                      ; preds = %4, %entry
  br label %4

; <label>:4:                                      ; preds = %3
  %5 = call i16 @_TF3AVR14slowAnalogReadFT3pinVs5UInt8_Vs6UInt16(i8 0)
  %6 = uitofp i16 %5 to double
  %7 = fmul double %6, 0x3F74050140501405
  %8 = call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %5, i16 5)
  %9 = extractvalue { i16, i1 } %8, 0
  %10 = extractvalue { i16, i1 } %8, 1
  call void @_TF3AVR5printFT11unsignedIntVs6UInt16_T_(i16 %9)
  call void @_TF3AVR5delayFT12millisecondsVs6UInt16_T_(i16 1)
  br label %3
}

declare void @_TF3AVR11SetupSerialFT8baudRateVs5Int16_T_(i16) #0

declare i16 @_TF3AVR14slowAnalogReadFT3pinVs5UInt8_Vs6UInt16(i8) #0

; Function Attrs: nounwind readnone
declare { i16, i1 } @llvm.umul.with.overflow.i16(i16, i16) #1

declare void @_TF3AVR5printFT11unsignedIntVs6UInt16_T_(i16) #0

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
