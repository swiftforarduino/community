; ModuleID = 'main.ll'
source_filename = "main.ll"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9"

%Sb = type <{ i1 }>

@OUTPUT = external constant i8, align 1
@HIGH = external constant i8, align 1
@LOW = external constant i8, align 1
@__swift_reflection_version = linkonce_odr hidden constant i16 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16* @__swift_reflection_version to i8*)], section "llvm.metadata", align 8

define i32 @main(i32, i8**) #0 {
entry:
  %2 = bitcast i8** %1 to i8*
  %3 = load i1, i1* getelementptr inbounds (%Sb, %Sb* bitcast (i8* @OUTPUT to %Sb*), i32 0, i32 0), align 1
  call void @_TF3AVR7pinModeFT3pinVs5UInt84modeSb_T_(i8 13, i1 %3)
  br label %4

; <label>:4:                                      ; preds = %5, %entry
  br label %5

; <label>:5:                                      ; preds = %4
  %6 = load i1, i1* getelementptr inbounds (%Sb, %Sb* bitcast (i8* @HIGH to %Sb*), i32 0, i32 0), align 1
  call void @_TF3AVR12digitalWriteFT3pinVs5UInt85valueSb_T_(i8 13, i1 %6)
  call void @_TF3AVR5delayFT12millisecondsVs6UInt16_T_(i16 1000)
  %7 = load i1, i1* getelementptr inbounds (%Sb, %Sb* bitcast (i8* @LOW to %Sb*), i32 0, i32 0), align 1
  call void @_TF3AVR12digitalWriteFT3pinVs5UInt85valueSb_T_(i8 13, i1 %7)
  call void @_TF3AVR5delayFT12millisecondsVs6UInt16_T_(i16 1000)
  br label %4
}

declare void @_TF3AVR7pinModeFT3pinVs5UInt84modeSb_T_(i8, i1) #0

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
