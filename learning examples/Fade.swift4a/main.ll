; ModuleID = 'main.ll'
source_filename = "main.ll"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9"

%Vs5Int16 = type <{ i16 }>

@_Tv4main10brightnessVs5Int16 = hidden global %Vs5Int16 zeroinitializer, align 2
@_Tv4main10fadeAmountVs5Int16 = hidden global %Vs5Int16 zeroinitializer, align 2
@__swift_reflection_version = linkonce_odr hidden constant i16 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16* @__swift_reflection_version to i8*)], section "llvm.metadata", align 8

define i32 @main(i32, i8**) #0 {
entry:
  %2 = bitcast i8** %1 to i8*
  store i16 0, i16* getelementptr inbounds (%Vs5Int16, %Vs5Int16* @_Tv4main10brightnessVs5Int16, i32 0, i32 0), align 2
  store i16 5, i16* getelementptr inbounds (%Vs5Int16, %Vs5Int16* @_Tv4main10fadeAmountVs5Int16, i32 0, i32 0), align 2
  br label %3

; <label>:3:                                      ; preds = %26, %entry
  br label %4

; <label>:4:                                      ; preds = %3
  %5 = load i16, i16* getelementptr inbounds (%Vs5Int16, %Vs5Int16* @_Tv4main10brightnessVs5Int16, i32 0, i32 0), align 2
  %6 = load i16, i16* getelementptr inbounds (%Vs5Int16, %Vs5Int16* @_Tv4main10fadeAmountVs5Int16, i32 0, i32 0), align 2
  %7 = call { i16, i1 } @llvm.sadd.with.overflow.i16(i16 %5, i16 %6)
  %8 = extractvalue { i16, i1 } %7, 0
  %9 = extractvalue { i16, i1 } %7, 1
  store i16 %8, i16* getelementptr inbounds (%Vs5Int16, %Vs5Int16* @_Tv4main10brightnessVs5Int16, i32 0, i32 0), align 2
  %10 = load i16, i16* getelementptr inbounds (%Vs5Int16, %Vs5Int16* @_Tv4main10brightnessVs5Int16, i32 0, i32 0), align 2
  %11 = icmp sle i16 %10, 0
  br i1 %11, label %12, label %15

; <label>:12:                                     ; preds = %4
  br label %13

; <label>:13:                                     ; preds = %12, %19
  %14 = phi i1 [ %18, %19 ], [ true, %12 ]
  br label %20

; <label>:15:                                     ; preds = %4
  br label %16

; <label>:16:                                     ; preds = %15
  %17 = load i16, i16* getelementptr inbounds (%Vs5Int16, %Vs5Int16* @_Tv4main10brightnessVs5Int16, i32 0, i32 0), align 2
  %18 = icmp sge i16 %17, 255
  br label %19

; <label>:19:                                     ; preds = %16
  br label %13

; <label>:20:                                     ; preds = %13
  br i1 %14, label %21, label %26

; <label>:21:                                     ; preds = %20
  %22 = load i16, i16* getelementptr inbounds (%Vs5Int16, %Vs5Int16* @_Tv4main10fadeAmountVs5Int16, i32 0, i32 0), align 2
  %23 = icmp sgt i16 %22, 0
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %21
  store i16 -5, i16* getelementptr inbounds (%Vs5Int16, %Vs5Int16* @_Tv4main10fadeAmountVs5Int16, i32 0, i32 0), align 2
  br label %25

; <label>:25:                                     ; preds = %24, %21
  br label %26

; <label>:26:                                     ; preds = %25, %20
  br label %3
}

; Function Attrs: nounwind readnone
declare { i16, i1 } @llvm.sadd.with.overflow.i16(i16, i16) #1

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