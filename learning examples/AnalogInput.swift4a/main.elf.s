
main.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
       0:	0c 94 b6 00 	jmp	0x16c	; 0x16c <__ctors_end>
       4:	0c 94 19 02 	jmp	0x432	; 0x432 <__vector_1>
       8:	0c 94 42 02 	jmp	0x484	; 0x484 <__vector_2>
       c:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      10:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      14:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      18:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      1c:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      20:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      24:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      28:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      2c:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      30:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      34:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      38:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      3c:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      40:	0c 94 25 03 	jmp	0x64a	; 0x64a <__vector_16>
      44:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      48:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      4c:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      50:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      54:	0c 94 6e 04 	jmp	0x8dc	; 0x8dc <__vector_21>
      58:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      5c:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      60:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      64:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>

00000068 <__trampolines_end>:
      68:	6e 61       	ori	r22, 0x1E	; 30
      6a:	6e 00       	.word	0x006e	; ????

0000006c <__c.2257>:
      6c:	69 6e 66 00 00 40 7a 10 f3 5a 00 a0 72 4e 18 09     inf..@z..Z..rN..
      7c:	00 10 a5 d4 e8 00 00 e8 76 48 17 00 00 e4 0b 54     ........vH.....T
      8c:	02 00 00 ca 9a 3b 00 00 00 e1 f5 05 00 00 80 96     .....;..........
      9c:	98 00 00 00 40 42 0f 00 00 00 a0 86 01 00 00 00     ....@B..........
      ac:	10 27 00 00 00 00 e8 03 00 00 00 00 64 00 00 00     .'..........d...
      bc:	00 00 0a 00 00 00 00 00 01 00 00 00 00 00 2c 76     ..............,v
      cc:	d8 88 dc 67 4f 08 23 df c1 df ae 59 e1 b1 b7 96     ...gO.#....Y....
      dc:	e5 e3 e4 53 c6 3a e6 51 99 76 96 e8 e6 c2 84 26     ...S.:.Q.v.....&
      ec:	eb 89 8c 9b 62 ed 40 7c 6f fc ef bc 9c 9f 40 f2     ....b.@|o.....@.
      fc:	ba a5 6f a5 f4 90 05 5a 2a f7 5c 93 6b 6c f9 67     ..o....Z*.\.kl.g
     10c:	6d c1 1b fc e0 e4 0d 47 fe f5 20 e6 b5 00 d0 ed     m......G.. .....
     11c:	90 2e 03 00 94 35 77 05 00 80 84 1e 08 00 00 20     .....5w........ 
     12c:	4e 0a 00 00 00 c8 0c 33 33 33 33 0f 98 6e 12 83     N......3333..n..
     13c:	11 41 ef 8d 21 14 89 3b e6 55 16 cf fe e6 db 18     .A..!..;.U......
     14c:	d1 84 4b 38 1b f7 7c 1d 90 1d a4 bb e4 24 20 32     ..K8..|......$ 2
     15c:	84 72 5e 22 81 00 c9 f1 24 ec a1 e5 3d 27           .r^"....$...='

0000016a <__ctors_start>:
     16a:	63 08       	sbc	r6, r3

0000016c <__ctors_end>:
     16c:	11 24       	eor	r1, r1
     16e:	1f be       	out	0x3f, r1	; 63
     170:	cf ef       	ldi	r28, 0xFF	; 255
     172:	d8 e0       	ldi	r29, 0x08	; 8
     174:	de bf       	out	0x3e, r29	; 62
     176:	cd bf       	out	0x3d, r28	; 61

00000178 <__do_copy_data>:
     178:	11 e0       	ldi	r17, 0x01	; 1
     17a:	a0 e0       	ldi	r26, 0x00	; 0
     17c:	b1 e0       	ldi	r27, 0x01	; 1
     17e:	e2 ec       	ldi	r30, 0xC2	; 194
     180:	f4 e1       	ldi	r31, 0x14	; 20
     182:	02 c0       	rjmp	.+4      	; 0x188 <__do_copy_data+0x10>
     184:	05 90       	lpm	r0, Z+
     186:	0d 92       	st	X+, r0
     188:	a0 32       	cpi	r26, 0x20	; 32
     18a:	b1 07       	cpc	r27, r17
     18c:	d9 f7       	brne	.-10     	; 0x184 <__do_copy_data+0xc>

0000018e <__do_clear_bss>:
     18e:	21 e0       	ldi	r18, 0x01	; 1
     190:	a0 e2       	ldi	r26, 0x20	; 32
     192:	b1 e0       	ldi	r27, 0x01	; 1
     194:	01 c0       	rjmp	.+2      	; 0x198 <.do_clear_bss_start>

00000196 <.do_clear_bss_loop>:
     196:	1d 92       	st	X+, r1

00000198 <.do_clear_bss_start>:
     198:	ad 3b       	cpi	r26, 0xBD	; 189
     19a:	b2 07       	cpc	r27, r18
     19c:	e1 f7       	brne	.-8      	; 0x196 <.do_clear_bss_loop>

0000019e <__do_global_ctors>:
     19e:	10 e0       	ldi	r17, 0x00	; 0
     1a0:	c6 eb       	ldi	r28, 0xB6	; 182
     1a2:	d0 e0       	ldi	r29, 0x00	; 0
     1a4:	04 c0       	rjmp	.+8      	; 0x1ae <__do_global_ctors+0x10>
     1a6:	21 97       	sbiw	r28, 0x01	; 1
     1a8:	fe 01       	movw	r30, r28
     1aa:	0e 94 ad 08 	call	0x115a	; 0x115a <__tablejump2__>
     1ae:	c5 3b       	cpi	r28, 0xB5	; 181
     1b0:	d1 07       	cpc	r29, r17
     1b2:	c9 f7       	brne	.-14     	; 0x1a6 <__do_global_ctors+0x8>
     1b4:	0e 94 e0 00 	call	0x1c0	; 0x1c0 <main>
     1b8:	0c 94 5f 0a 	jmp	0x14be	; 0x14be <_exit>

000001bc <__bad_interrupt>:
     1bc:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000001c0 <main>:
     1c0:	ef 92       	push	r14
     1c2:	ff 92       	push	r15
     1c4:	0f 93       	push	r16
     1c6:	1f 93       	push	r17
     1c8:	80 e0       	ldi	r24, 0x00	; 0
     1ca:	80 93 20 01 	sts	0x0120, r24	; 0x800120 <__data_end>
     1ce:	8d e0       	ldi	r24, 0x0D	; 13
     1d0:	80 93 21 01 	sts	0x0121, r24	; 0x800121 <_Tv4main6ledPinVs5UInt8>
     1d4:	10 91 0c 01 	lds	r17, 0x010C	; 0x80010c <HIGH>
     1d8:	00 91 0b 01 	lds	r16, 0x010B	; 0x80010b <LOW>

000001dc <LBB0_1>:
     1dc:	80 91 20 01 	lds	r24, 0x0120	; 0x800120 <__data_end>
     1e0:	0e 94 4d 01 	call	0x29a	; 0x29a <_TF3AVR14slowAnalogReadFT3pinVs5UInt8_Vs6UInt16>
     1e4:	7c 01       	movw	r14, r24
     1e6:	80 91 21 01 	lds	r24, 0x0121	; 0x800121 <_Tv4main6ledPinVs5UInt8>
     1ea:	61 2f       	mov	r22, r17
     1ec:	0e 94 2b 01 	call	0x256	; 0x256 <_TF3AVR12digitalWriteFT3pinVs5UInt85valueSb_T_>
     1f0:	c7 01       	movw	r24, r14
     1f2:	0e 94 04 01 	call	0x208	; 0x208 <_TF3AVR5delayFT12millisecondsVs6UInt16_T_>
     1f6:	80 91 21 01 	lds	r24, 0x0121	; 0x800121 <_Tv4main6ledPinVs5UInt8>
     1fa:	60 2f       	mov	r22, r16
     1fc:	0e 94 2b 01 	call	0x256	; 0x256 <_TF3AVR12digitalWriteFT3pinVs5UInt85valueSb_T_>
     200:	c7 01       	movw	r24, r14
     202:	0e 94 04 01 	call	0x208	; 0x208 <_TF3AVR5delayFT12millisecondsVs6UInt16_T_>
     206:	ea cf       	rjmp	.-44     	; 0x1dc <LBB0_1>

00000208 <_TF3AVR5delayFT12millisecondsVs6UInt16_T_>:
     208:	0e 94 9b 02 	call	0x536	; 0x536 <_delayMs>
     20c:	08 95       	ret

0000020e <_TF3AVR18stringAddCharacterFT4byteVs5UInt8_Sb>:
     20e:	0e 94 af 02 	call	0x55e	; 0x55e <_stringAddCharacter>
     212:	08 95       	ret

00000214 <_TF3AVR14stringStartNewFT_T_>:
     214:	0e 94 c7 02 	call	0x58e	; 0x58e <_stringStartNew>
     218:	08 95       	ret

0000021a <_TF3AVR18stringCurrentValueFT_GSQGSPVs4Int8__>:
     21a:	0e 94 cc 02 	call	0x598	; 0x598 <_stringCurrentValue>
     21e:	40 e0       	ldi	r20, 0x00	; 0
     220:	50 e0       	ldi	r21, 0x00	; 0
     222:	9c 01       	movw	r18, r24
     224:	ba 01       	movw	r22, r20
     226:	ca 01       	movw	r24, r20
     228:	08 95       	ret

0000022a <_TF3AVR11intToStringFT6numberVs5Int32_GSQGSPVs4Int8__>:
     22a:	0e 94 cf 02 	call	0x59e	; 0x59e <_intToString>
     22e:	40 e0       	ldi	r20, 0x00	; 0
     230:	50 e0       	ldi	r21, 0x00	; 0
     232:	9c 01       	movw	r18, r24
     234:	ba 01       	movw	r22, r20
     236:	ca 01       	movw	r24, r20
     238:	08 95       	ret

0000023a <_TF3AVR13floatToStringFT6numberSf_GSQGSPVs4Int8__>:
     23a:	0e 94 eb 02 	call	0x5d6	; 0x5d6 <_fltToString>
     23e:	40 e0       	ldi	r20, 0x00	; 0
     240:	50 e0       	ldi	r21, 0x00	; 0
     242:	9c 01       	movw	r18, r24
     244:	ba 01       	movw	r22, r20
     246:	ca 01       	movw	r24, r20
     248:	08 95       	ret

0000024a <_TF3AVR5ticksFT_Vs6UInt16>:
     24a:	0e 94 aa 02 	call	0x554	; 0x554 <_ticks>
     24e:	08 95       	ret

00000250 <_TF3AVR11digitalReadFT3pinVs5UInt8_Sb>:
     250:	0e 94 7e 01 	call	0x2fc	; 0x2fc <_digitalRead>
     254:	08 95       	ret

00000256 <_TF3AVR12digitalWriteFT3pinVs5UInt85valueSb_T_>:
     256:	83 30       	cpi	r24, 0x03	; 3
     258:	51 f0       	breq	.+20     	; 0x26e <LBB1_6>
     25a:	85 30       	cpi	r24, 0x05	; 5
     25c:	41 f0       	breq	.+16     	; 0x26e <LBB1_6>
     25e:	86 30       	cpi	r24, 0x06	; 6
     260:	31 f0       	breq	.+12     	; 0x26e <LBB1_6>
     262:	89 30       	cpi	r24, 0x09	; 9
     264:	21 f0       	breq	.+8      	; 0x26e <LBB1_6>
     266:	8a 30       	cpi	r24, 0x0A	; 10
     268:	11 f0       	breq	.+4      	; 0x26e <LBB1_6>
     26a:	8b 30       	cpi	r24, 0x0B	; 11
     26c:	59 f4       	brne	.+22     	; 0x284 <LBB1_9>

0000026e <LBB1_6>:
     26e:	61 70       	andi	r22, 0x01	; 1
     270:	60 30       	cpi	r22, 0x00	; 0
     272:	21 f0       	breq	.+8      	; 0x27c <LBB1_8>
     274:	6f ef       	ldi	r22, 0xFF	; 255
     276:	0e 94 3c 03 	call	0x678	; 0x678 <_analogWrite>
     27a:	08 95       	ret

0000027c <LBB1_8>:
     27c:	60 e0       	ldi	r22, 0x00	; 0
     27e:	0e 94 3c 03 	call	0x678	; 0x678 <_analogWrite>
     282:	08 95       	ret

00000284 <LBB1_9>:
     284:	61 70       	andi	r22, 0x01	; 1
     286:	0e 94 97 01 	call	0x32e	; 0x32e <_digitalWrite>
     28a:	08 95       	ret

0000028c <_TF3AVR7pinModeFT3pinVs5UInt84modeSb_T_>:
     28c:	61 70       	andi	r22, 0x01	; 1
     28e:	0e 94 d8 01 	call	0x3b0	; 0x3b0 <_pinMode>
     292:	08 95       	ret

00000294 <_TF3AVR11analogWriteFT3pinVs5UInt85valueS0__T_>:
     294:	0e 94 3c 03 	call	0x678	; 0x678 <_analogWrite>
     298:	08 95       	ret

0000029a <_TF3AVR14slowAnalogReadFT3pinVs5UInt8_Vs6UInt16>:
     29a:	0e 94 3f 04 	call	0x87e	; 0x87e <_slowAnalogRead>
     29e:	08 95       	ret

000002a0 <_TF3AVR15analogReadAsyncFT3pinVs5UInt88callbackcVs6UInt16T__T_>:
     2a0:	0e 94 a6 04 	call	0x94c	; 0x94c <_analogReadAsync>
     2a4:	08 95       	ret

000002a6 <_TF3AVR26setupPin2InterruptCallbackFT8edgeTypeVs5UInt88callbackcT_T__T_>:
     2a6:	0e 94 6b 02 	call	0x4d6	; 0x4d6 <_setupPin2InterruptCallback>
     2aa:	08 95       	ret

000002ac <_TF3AVR26clearPin2InterruptCallbackFT_T_>:
     2ac:	0e 94 7b 02 	call	0x4f6	; 0x4f6 <_clearPin2InterruptCallback>
     2b0:	08 95       	ret

000002b2 <_TF3AVR26setupPin3InterruptCallbackFT8edgeTypeVs5UInt88callbackcT_T__T_>:
     2b2:	0e 94 81 02 	call	0x502	; 0x502 <_setupPin3InterruptCallback>
     2b6:	08 95       	ret

000002b8 <_TF3AVR26clearPin3InterruptCallbackFT_T_>:
     2b8:	0e 94 95 02 	call	0x52a	; 0x52a <_clearPin3InterruptCallback>
     2bc:	08 95       	ret

000002be <pinMask>:
     2be:	88 30       	cpi	r24, 0x08	; 8
     2c0:	a0 f0       	brcs	.+40     	; 0x2ea <pinMask+0x2c>
     2c2:	8e 30       	cpi	r24, 0x0E	; 14
     2c4:	50 f0       	brcs	.+20     	; 0x2da <pinMask+0x1c>
     2c6:	85 31       	cpi	r24, 0x15	; 21
     2c8:	b8 f4       	brcc	.+46     	; 0x2f8 <pinMask+0x3a>
     2ca:	92 ef       	ldi	r25, 0xF2	; 242
     2cc:	98 0f       	add	r25, r24
     2ce:	81 e0       	ldi	r24, 0x01	; 1
     2d0:	01 c0       	rjmp	.+2      	; 0x2d4 <pinMask+0x16>
     2d2:	88 0f       	add	r24, r24
     2d4:	9a 95       	dec	r25
     2d6:	ea f7       	brpl	.-6      	; 0x2d2 <pinMask+0x14>
     2d8:	08 95       	ret
     2da:	98 ef       	ldi	r25, 0xF8	; 248
     2dc:	98 0f       	add	r25, r24
     2de:	81 e0       	ldi	r24, 0x01	; 1
     2e0:	01 c0       	rjmp	.+2      	; 0x2e4 <pinMask+0x26>
     2e2:	88 0f       	add	r24, r24
     2e4:	9a 95       	dec	r25
     2e6:	ea f7       	brpl	.-6      	; 0x2e2 <pinMask+0x24>
     2e8:	08 95       	ret
     2ea:	91 e0       	ldi	r25, 0x01	; 1
     2ec:	01 c0       	rjmp	.+2      	; 0x2f0 <pinMask+0x32>
     2ee:	99 0f       	add	r25, r25
     2f0:	8a 95       	dec	r24
     2f2:	ea f7       	brpl	.-6      	; 0x2ee <pinMask+0x30>
     2f4:	89 2f       	mov	r24, r25
     2f6:	08 95       	ret
     2f8:	80 e0       	ldi	r24, 0x00	; 0
     2fa:	08 95       	ret

000002fc <_digitalRead>:
     2fc:	88 30       	cpi	r24, 0x08	; 8
     2fe:	58 f4       	brcc	.+22     	; 0x316 <_digitalRead+0x1a>
     300:	99 b1       	in	r25, 0x09	; 9
     302:	21 e0       	ldi	r18, 0x01	; 1
     304:	30 e0       	ldi	r19, 0x00	; 0
     306:	01 c0       	rjmp	.+2      	; 0x30a <_digitalRead+0xe>
     308:	22 0f       	add	r18, r18
     30a:	8a 95       	dec	r24
     30c:	ea f7       	brpl	.-6      	; 0x308 <_digitalRead+0xc>
     30e:	92 23       	and	r25, r18
     310:	81 e0       	ldi	r24, 0x01	; 1
     312:	29 f0       	breq	.+10     	; 0x31e <_digitalRead+0x22>
     314:	08 95       	ret
     316:	8e 30       	cpi	r24, 0x0E	; 14
     318:	20 f0       	brcs	.+8      	; 0x322 <_digitalRead+0x26>
     31a:	85 31       	cpi	r24, 0x15	; 21
     31c:	28 f0       	brcs	.+10     	; 0x328 <_digitalRead+0x2c>
     31e:	80 e0       	ldi	r24, 0x00	; 0
     320:	08 95       	ret
     322:	93 b1       	in	r25, 0x03	; 3
     324:	88 50       	subi	r24, 0x08	; 8
     326:	ed cf       	rjmp	.-38     	; 0x302 <_digitalRead+0x6>
     328:	96 b1       	in	r25, 0x06	; 6
     32a:	8e 50       	subi	r24, 0x0E	; 14
     32c:	ea cf       	rjmp	.-44     	; 0x302 <_digitalRead+0x6>

0000032e <_digitalWrite>:
     32e:	88 30       	cpi	r24, 0x08	; 8
     330:	60 f4       	brcc	.+24     	; 0x34a <_digitalWrite+0x1c>
     332:	21 e0       	ldi	r18, 0x01	; 1
     334:	30 e0       	ldi	r19, 0x00	; 0
     336:	01 c0       	rjmp	.+2      	; 0x33a <_digitalWrite+0xc>
     338:	22 0f       	add	r18, r18
     33a:	8a 95       	dec	r24
     33c:	ea f7       	brpl	.-6      	; 0x338 <_digitalWrite+0xa>
     33e:	66 23       	and	r22, r22
     340:	49 f1       	breq	.+82     	; 0x394 <_digitalWrite+0x66>
     342:	8b b1       	in	r24, 0x0b	; 11
     344:	28 2b       	or	r18, r24
     346:	2b b9       	out	0x0b, r18	; 11
     348:	08 95       	ret
     34a:	8e 30       	cpi	r24, 0x0E	; 14
     34c:	88 f4       	brcc	.+34     	; 0x370 <_digitalWrite+0x42>
     34e:	88 50       	subi	r24, 0x08	; 8
     350:	21 e0       	ldi	r18, 0x01	; 1
     352:	30 e0       	ldi	r19, 0x00	; 0
     354:	a9 01       	movw	r20, r18
     356:	02 c0       	rjmp	.+4      	; 0x35c <_digitalWrite+0x2e>
     358:	44 0f       	add	r20, r20
     35a:	55 1f       	adc	r21, r21
     35c:	8a 95       	dec	r24
     35e:	e2 f7       	brpl	.-8      	; 0x358 <_digitalWrite+0x2a>
     360:	ca 01       	movw	r24, r20
     362:	61 11       	cpse	r22, r1
     364:	1c c0       	rjmp	.+56     	; 0x39e <_digitalWrite+0x70>
     366:	95 b1       	in	r25, 0x05	; 5
     368:	80 95       	com	r24
     36a:	89 23       	and	r24, r25
     36c:	85 b9       	out	0x05, r24	; 5
     36e:	08 95       	ret
     370:	85 31       	cpi	r24, 0x15	; 21
     372:	e8 f7       	brcc	.-6      	; 0x36e <_digitalWrite+0x40>
     374:	8e 50       	subi	r24, 0x0E	; 14
     376:	21 e0       	ldi	r18, 0x01	; 1
     378:	30 e0       	ldi	r19, 0x00	; 0
     37a:	a9 01       	movw	r20, r18
     37c:	02 c0       	rjmp	.+4      	; 0x382 <_digitalWrite+0x54>
     37e:	44 0f       	add	r20, r20
     380:	55 1f       	adc	r21, r21
     382:	8a 95       	dec	r24
     384:	e2 f7       	brpl	.-8      	; 0x37e <_digitalWrite+0x50>
     386:	ca 01       	movw	r24, r20
     388:	66 23       	and	r22, r22
     38a:	69 f0       	breq	.+26     	; 0x3a6 <_digitalWrite+0x78>
     38c:	98 b1       	in	r25, 0x08	; 8
     38e:	89 2b       	or	r24, r25
     390:	88 b9       	out	0x08, r24	; 8
     392:	08 95       	ret
     394:	8b b1       	in	r24, 0x0b	; 11
     396:	20 95       	com	r18
     398:	28 23       	and	r18, r24
     39a:	2b b9       	out	0x0b, r18	; 11
     39c:	08 95       	ret
     39e:	95 b1       	in	r25, 0x05	; 5
     3a0:	89 2b       	or	r24, r25
     3a2:	85 b9       	out	0x05, r24	; 5
     3a4:	08 95       	ret
     3a6:	98 b1       	in	r25, 0x08	; 8
     3a8:	80 95       	com	r24
     3aa:	89 23       	and	r24, r25
     3ac:	88 b9       	out	0x08, r24	; 8
     3ae:	08 95       	ret

000003b0 <_pinMode>:
     3b0:	88 30       	cpi	r24, 0x08	; 8
     3b2:	60 f4       	brcc	.+24     	; 0x3cc <_pinMode+0x1c>
     3b4:	21 e0       	ldi	r18, 0x01	; 1
     3b6:	30 e0       	ldi	r19, 0x00	; 0
     3b8:	01 c0       	rjmp	.+2      	; 0x3bc <_pinMode+0xc>
     3ba:	22 0f       	add	r18, r18
     3bc:	8a 95       	dec	r24
     3be:	ea f7       	brpl	.-6      	; 0x3ba <_pinMode+0xa>
     3c0:	66 23       	and	r22, r22
     3c2:	49 f1       	breq	.+82     	; 0x416 <__FUSE_REGION_LENGTH__+0x16>
     3c4:	8a b1       	in	r24, 0x0a	; 10
     3c6:	28 2b       	or	r18, r24
     3c8:	2a b9       	out	0x0a, r18	; 10
     3ca:	08 95       	ret
     3cc:	8e 30       	cpi	r24, 0x0E	; 14
     3ce:	88 f4       	brcc	.+34     	; 0x3f2 <_pinMode+0x42>
     3d0:	88 50       	subi	r24, 0x08	; 8
     3d2:	21 e0       	ldi	r18, 0x01	; 1
     3d4:	30 e0       	ldi	r19, 0x00	; 0
     3d6:	a9 01       	movw	r20, r18
     3d8:	02 c0       	rjmp	.+4      	; 0x3de <_pinMode+0x2e>
     3da:	44 0f       	add	r20, r20
     3dc:	55 1f       	adc	r21, r21
     3de:	8a 95       	dec	r24
     3e0:	e2 f7       	brpl	.-8      	; 0x3da <_pinMode+0x2a>
     3e2:	ca 01       	movw	r24, r20
     3e4:	61 11       	cpse	r22, r1
     3e6:	1c c0       	rjmp	.+56     	; 0x420 <__FUSE_REGION_LENGTH__+0x20>
     3e8:	94 b1       	in	r25, 0x04	; 4
     3ea:	80 95       	com	r24
     3ec:	89 23       	and	r24, r25
     3ee:	84 b9       	out	0x04, r24	; 4
     3f0:	08 95       	ret
     3f2:	85 31       	cpi	r24, 0x15	; 21
     3f4:	e8 f7       	brcc	.-6      	; 0x3f0 <_pinMode+0x40>
     3f6:	8e 50       	subi	r24, 0x0E	; 14
     3f8:	21 e0       	ldi	r18, 0x01	; 1
     3fa:	30 e0       	ldi	r19, 0x00	; 0
     3fc:	a9 01       	movw	r20, r18
     3fe:	02 c0       	rjmp	.+4      	; 0x404 <__FUSE_REGION_LENGTH__+0x4>
     400:	44 0f       	add	r20, r20
     402:	55 1f       	adc	r21, r21
     404:	8a 95       	dec	r24
     406:	e2 f7       	brpl	.-8      	; 0x400 <__FUSE_REGION_LENGTH__>
     408:	ca 01       	movw	r24, r20
     40a:	66 23       	and	r22, r22
     40c:	69 f0       	breq	.+26     	; 0x428 <__FUSE_REGION_LENGTH__+0x28>
     40e:	97 b1       	in	r25, 0x07	; 7
     410:	89 2b       	or	r24, r25
     412:	87 b9       	out	0x07, r24	; 7
     414:	08 95       	ret
     416:	8a b1       	in	r24, 0x0a	; 10
     418:	20 95       	com	r18
     41a:	28 23       	and	r18, r24
     41c:	2a b9       	out	0x0a, r18	; 10
     41e:	08 95       	ret
     420:	94 b1       	in	r25, 0x04	; 4
     422:	89 2b       	or	r24, r25
     424:	84 b9       	out	0x04, r24	; 4
     426:	08 95       	ret
     428:	97 b1       	in	r25, 0x07	; 7
     42a:	80 95       	com	r24
     42c:	89 23       	and	r24, r25
     42e:	87 b9       	out	0x07, r24	; 7
     430:	08 95       	ret

00000432 <__vector_1>:
     432:	1f 92       	push	r1
     434:	0f 92       	push	r0
     436:	0f b6       	in	r0, 0x3f	; 63
     438:	0f 92       	push	r0
     43a:	11 24       	eor	r1, r1
     43c:	2f 93       	push	r18
     43e:	3f 93       	push	r19
     440:	4f 93       	push	r20
     442:	5f 93       	push	r21
     444:	6f 93       	push	r22
     446:	7f 93       	push	r23
     448:	8f 93       	push	r24
     44a:	9f 93       	push	r25
     44c:	af 93       	push	r26
     44e:	bf 93       	push	r27
     450:	ef 93       	push	r30
     452:	ff 93       	push	r31
     454:	e0 91 24 01 	lds	r30, 0x0124	; 0x800124 <currentInt0Callback>
     458:	f0 91 25 01 	lds	r31, 0x0125	; 0x800125 <currentInt0Callback+0x1>
     45c:	30 97       	sbiw	r30, 0x00	; 0
     45e:	09 f0       	breq	.+2      	; 0x462 <__vector_1+0x30>
     460:	09 95       	icall
     462:	ff 91       	pop	r31
     464:	ef 91       	pop	r30
     466:	bf 91       	pop	r27
     468:	af 91       	pop	r26
     46a:	9f 91       	pop	r25
     46c:	8f 91       	pop	r24
     46e:	7f 91       	pop	r23
     470:	6f 91       	pop	r22
     472:	5f 91       	pop	r21
     474:	4f 91       	pop	r20
     476:	3f 91       	pop	r19
     478:	2f 91       	pop	r18
     47a:	0f 90       	pop	r0
     47c:	0f be       	out	0x3f, r0	; 63
     47e:	0f 90       	pop	r0
     480:	1f 90       	pop	r1
     482:	18 95       	reti

00000484 <__vector_2>:
     484:	1f 92       	push	r1
     486:	0f 92       	push	r0
     488:	0f b6       	in	r0, 0x3f	; 63
     48a:	0f 92       	push	r0
     48c:	11 24       	eor	r1, r1
     48e:	2f 93       	push	r18
     490:	3f 93       	push	r19
     492:	4f 93       	push	r20
     494:	5f 93       	push	r21
     496:	6f 93       	push	r22
     498:	7f 93       	push	r23
     49a:	8f 93       	push	r24
     49c:	9f 93       	push	r25
     49e:	af 93       	push	r26
     4a0:	bf 93       	push	r27
     4a2:	ef 93       	push	r30
     4a4:	ff 93       	push	r31
     4a6:	e0 91 22 01 	lds	r30, 0x0122	; 0x800122 <currentInt1Callback>
     4aa:	f0 91 23 01 	lds	r31, 0x0123	; 0x800123 <currentInt1Callback+0x1>
     4ae:	30 97       	sbiw	r30, 0x00	; 0
     4b0:	09 f0       	breq	.+2      	; 0x4b4 <__vector_2+0x30>
     4b2:	09 95       	icall
     4b4:	ff 91       	pop	r31
     4b6:	ef 91       	pop	r30
     4b8:	bf 91       	pop	r27
     4ba:	af 91       	pop	r26
     4bc:	9f 91       	pop	r25
     4be:	8f 91       	pop	r24
     4c0:	7f 91       	pop	r23
     4c2:	6f 91       	pop	r22
     4c4:	5f 91       	pop	r21
     4c6:	4f 91       	pop	r20
     4c8:	3f 91       	pop	r19
     4ca:	2f 91       	pop	r18
     4cc:	0f 90       	pop	r0
     4ce:	0f be       	out	0x3f, r0	; 63
     4d0:	0f 90       	pop	r0
     4d2:	1f 90       	pop	r1
     4d4:	18 95       	reti

000004d6 <_setupPin2InterruptCallback>:
     4d6:	70 93 25 01 	sts	0x0125, r23	; 0x800125 <currentInt0Callback+0x1>
     4da:	60 93 24 01 	sts	0x0124, r22	; 0x800124 <currentInt0Callback>
     4de:	e9 e6       	ldi	r30, 0x69	; 105
     4e0:	f0 e0       	ldi	r31, 0x00	; 0
     4e2:	90 81       	ld	r25, Z
     4e4:	9c 7f       	andi	r25, 0xFC	; 252
     4e6:	90 83       	st	Z, r25
     4e8:	90 81       	ld	r25, Z
     4ea:	83 70       	andi	r24, 0x03	; 3
     4ec:	89 2b       	or	r24, r25
     4ee:	80 83       	st	Z, r24
     4f0:	e8 9a       	sbi	0x1d, 0	; 29
     4f2:	78 94       	sei
     4f4:	08 95       	ret

000004f6 <_clearPin2InterruptCallback>:
     4f6:	10 92 25 01 	sts	0x0125, r1	; 0x800125 <currentInt0Callback+0x1>
     4fa:	10 92 24 01 	sts	0x0124, r1	; 0x800124 <currentInt0Callback>
     4fe:	e8 98       	cbi	0x1d, 0	; 29
     500:	08 95       	ret

00000502 <_setupPin3InterruptCallback>:
     502:	70 93 23 01 	sts	0x0123, r23	; 0x800123 <currentInt1Callback+0x1>
     506:	60 93 22 01 	sts	0x0122, r22	; 0x800122 <currentInt1Callback>
     50a:	e9 e6       	ldi	r30, 0x69	; 105
     50c:	f0 e0       	ldi	r31, 0x00	; 0
     50e:	90 81       	ld	r25, Z
     510:	93 7f       	andi	r25, 0xF3	; 243
     512:	90 83       	st	Z, r25
     514:	20 81       	ld	r18, Z
     516:	34 e0       	ldi	r19, 0x04	; 4
     518:	83 9f       	mul	r24, r19
     51a:	c0 01       	movw	r24, r0
     51c:	11 24       	eor	r1, r1
     51e:	8c 70       	andi	r24, 0x0C	; 12
     520:	82 2b       	or	r24, r18
     522:	80 83       	st	Z, r24
     524:	e9 9a       	sbi	0x1d, 1	; 29
     526:	78 94       	sei
     528:	08 95       	ret

0000052a <_clearPin3InterruptCallback>:
     52a:	10 92 23 01 	sts	0x0123, r1	; 0x800123 <currentInt1Callback+0x1>
     52e:	10 92 22 01 	sts	0x0122, r1	; 0x800122 <currentInt1Callback>
     532:	e9 98       	cbi	0x1d, 1	; 29
     534:	08 95       	ret

00000536 <_delayMs>:
     536:	00 97       	sbiw	r24, 0x00	; 0
     538:	61 f0       	breq	.+24     	; 0x552 <_delayMs+0x1c>
     53a:	20 e0       	ldi	r18, 0x00	; 0
     53c:	30 e0       	ldi	r19, 0x00	; 0
     53e:	40 ea       	ldi	r20, 0xA0	; 160
     540:	5f e0       	ldi	r21, 0x0F	; 15
     542:	fa 01       	movw	r30, r20
     544:	31 97       	sbiw	r30, 0x01	; 1
     546:	f1 f7       	brne	.-4      	; 0x544 <_delayMs+0xe>
     548:	2f 5f       	subi	r18, 0xFF	; 255
     54a:	3f 4f       	sbci	r19, 0xFF	; 255
     54c:	82 17       	cp	r24, r18
     54e:	93 07       	cpc	r25, r19
     550:	c1 f7       	brne	.-16     	; 0x542 <_delayMs+0xc>
     552:	08 95       	ret

00000554 <_ticks>:
     554:	80 91 26 01 	lds	r24, 0x0126	; 0x800126 <t0Overflow>
     558:	90 91 27 01 	lds	r25, 0x0127	; 0x800127 <t0Overflow+0x1>
     55c:	08 95       	ret

0000055e <_stringAddCharacter>:
     55e:	e0 91 37 01 	lds	r30, 0x0137	; 0x800137 <stringBufferEnd>
     562:	ef 37       	cpi	r30, 0x7F	; 127
     564:	91 f0       	breq	.+36     	; 0x58a <_stringAddCharacter+0x2c>
     566:	91 e0       	ldi	r25, 0x01	; 1
     568:	9e 0f       	add	r25, r30
     56a:	90 93 37 01 	sts	0x0137, r25	; 0x800137 <stringBufferEnd>
     56e:	0e 2e       	mov	r0, r30
     570:	00 0c       	add	r0, r0
     572:	ff 0b       	sbc	r31, r31
     574:	e8 5c       	subi	r30, 0xC8	; 200
     576:	fe 4f       	sbci	r31, 0xFE	; 254
     578:	80 83       	st	Z, r24
     57a:	e9 2f       	mov	r30, r25
     57c:	99 0f       	add	r25, r25
     57e:	ff 0b       	sbc	r31, r31
     580:	e8 5c       	subi	r30, 0xC8	; 200
     582:	fe 4f       	sbci	r31, 0xFE	; 254
     584:	10 82       	st	Z, r1
     586:	81 e0       	ldi	r24, 0x01	; 1
     588:	08 95       	ret
     58a:	80 e0       	ldi	r24, 0x00	; 0
     58c:	08 95       	ret

0000058e <_stringStartNew>:
     58e:	10 92 37 01 	sts	0x0137, r1	; 0x800137 <stringBufferEnd>
     592:	10 92 38 01 	sts	0x0138, r1	; 0x800138 <stringBuffer>
     596:	08 95       	ret

00000598 <_stringCurrentValue>:
     598:	88 e3       	ldi	r24, 0x38	; 56
     59a:	91 e0       	ldi	r25, 0x01	; 1
     59c:	08 95       	ret

0000059e <_intToString>:
     59e:	9f 93       	push	r25
     5a0:	8f 93       	push	r24
     5a2:	7f 93       	push	r23
     5a4:	6f 93       	push	r22
     5a6:	81 e1       	ldi	r24, 0x11	; 17
     5a8:	91 e0       	ldi	r25, 0x01	; 1
     5aa:	9f 93       	push	r25
     5ac:	8f 93       	push	r24
     5ae:	1f 92       	push	r1
     5b0:	8f e0       	ldi	r24, 0x0F	; 15
     5b2:	8f 93       	push	r24
     5b4:	88 e2       	ldi	r24, 0x28	; 40
     5b6:	91 e0       	ldi	r25, 0x01	; 1
     5b8:	9f 93       	push	r25
     5ba:	8f 93       	push	r24
     5bc:	0e 94 d1 09 	call	0x13a2	; 0x13a2 <snprintf>
     5c0:	8d b7       	in	r24, 0x3d	; 61
     5c2:	9e b7       	in	r25, 0x3e	; 62
     5c4:	0a 96       	adiw	r24, 0x0a	; 10
     5c6:	0f b6       	in	r0, 0x3f	; 63
     5c8:	f8 94       	cli
     5ca:	9e bf       	out	0x3e, r25	; 62
     5cc:	0f be       	out	0x3f, r0	; 63
     5ce:	8d bf       	out	0x3d, r24	; 61
     5d0:	88 e2       	ldi	r24, 0x28	; 40
     5d2:	91 e0       	ldi	r25, 0x01	; 1
     5d4:	08 95       	ret

000005d6 <_fltToString>:
     5d6:	9f 93       	push	r25
     5d8:	8f 93       	push	r24
     5da:	7f 93       	push	r23
     5dc:	6f 93       	push	r22
     5de:	85 e1       	ldi	r24, 0x15	; 21
     5e0:	91 e0       	ldi	r25, 0x01	; 1
     5e2:	9f 93       	push	r25
     5e4:	8f 93       	push	r24
     5e6:	1f 92       	push	r1
     5e8:	8f e0       	ldi	r24, 0x0F	; 15
     5ea:	8f 93       	push	r24
     5ec:	88 e2       	ldi	r24, 0x28	; 40
     5ee:	91 e0       	ldi	r25, 0x01	; 1
     5f0:	9f 93       	push	r25
     5f2:	8f 93       	push	r24
     5f4:	0e 94 d1 09 	call	0x13a2	; 0x13a2 <snprintf>
     5f8:	8d b7       	in	r24, 0x3d	; 61
     5fa:	9e b7       	in	r25, 0x3e	; 62
     5fc:	0a 96       	adiw	r24, 0x0a	; 10
     5fe:	0f b6       	in	r0, 0x3f	; 63
     600:	f8 94       	cli
     602:	9e bf       	out	0x3e, r25	; 62
     604:	0f be       	out	0x3f, r0	; 63
     606:	8d bf       	out	0x3d, r24	; 61
     608:	88 e2       	ldi	r24, 0x28	; 40
     60a:	91 e0       	ldi	r25, 0x01	; 1
     60c:	08 95       	ret

0000060e <_fltToStringPrecision>:
     60e:	9f 93       	push	r25
     610:	8f 93       	push	r24
     612:	7f 93       	push	r23
     614:	6f 93       	push	r22
     616:	1f 92       	push	r1
     618:	4f 93       	push	r20
     61a:	8a e1       	ldi	r24, 0x1A	; 26
     61c:	91 e0       	ldi	r25, 0x01	; 1
     61e:	9f 93       	push	r25
     620:	8f 93       	push	r24
     622:	1f 92       	push	r1
     624:	8f e0       	ldi	r24, 0x0F	; 15
     626:	8f 93       	push	r24
     628:	88 e2       	ldi	r24, 0x28	; 40
     62a:	91 e0       	ldi	r25, 0x01	; 1
     62c:	9f 93       	push	r25
     62e:	8f 93       	push	r24
     630:	0e 94 d1 09 	call	0x13a2	; 0x13a2 <snprintf>
     634:	8d b7       	in	r24, 0x3d	; 61
     636:	9e b7       	in	r25, 0x3e	; 62
     638:	0c 96       	adiw	r24, 0x0c	; 12
     63a:	0f b6       	in	r0, 0x3f	; 63
     63c:	f8 94       	cli
     63e:	9e bf       	out	0x3e, r25	; 62
     640:	0f be       	out	0x3f, r0	; 63
     642:	8d bf       	out	0x3d, r24	; 61
     644:	88 e2       	ldi	r24, 0x28	; 40
     646:	91 e0       	ldi	r25, 0x01	; 1
     648:	08 95       	ret

0000064a <__vector_16>:
     64a:	1f 92       	push	r1
     64c:	0f 92       	push	r0
     64e:	0f b6       	in	r0, 0x3f	; 63
     650:	0f 92       	push	r0
     652:	11 24       	eor	r1, r1
     654:	8f 93       	push	r24
     656:	9f 93       	push	r25
     658:	80 91 26 01 	lds	r24, 0x0126	; 0x800126 <t0Overflow>
     65c:	90 91 27 01 	lds	r25, 0x0127	; 0x800127 <t0Overflow+0x1>
     660:	01 96       	adiw	r24, 0x01	; 1
     662:	90 93 27 01 	sts	0x0127, r25	; 0x800127 <t0Overflow+0x1>
     666:	80 93 26 01 	sts	0x0126, r24	; 0x800126 <t0Overflow>
     66a:	9f 91       	pop	r25
     66c:	8f 91       	pop	r24
     66e:	0f 90       	pop	r0
     670:	0f be       	out	0x3f, r0	; 63
     672:	0f 90       	pop	r0
     674:	1f 90       	pop	r1
     676:	18 95       	reti

00000678 <_analogWrite>:
     678:	cf 93       	push	r28
     67a:	df 93       	push	r29
     67c:	c8 2f       	mov	r28, r24
     67e:	d6 2f       	mov	r29, r22
     680:	60 91 0e 01 	lds	r22, 0x010E	; 0x80010e <_OUTPUT>
     684:	0e 94 d8 01 	call	0x3b0	; 0x3b0 <_pinMode>
     688:	c6 30       	cpi	r28, 0x06	; 6
     68a:	09 f4       	brne	.+2      	; 0x68e <_analogWrite+0x16>
     68c:	5b c0       	rjmp	.+182    	; 0x744 <_analogWrite+0xcc>
     68e:	50 f0       	brcs	.+20     	; 0x6a4 <_analogWrite+0x2c>
     690:	ca 30       	cpi	r28, 0x0A	; 10
     692:	b9 f0       	breq	.+46     	; 0x6c2 <_analogWrite+0x4a>
     694:	cb 30       	cpi	r28, 0x0B	; 11
     696:	09 f4       	brne	.+2      	; 0x69a <_analogWrite+0x22>
     698:	46 c0       	rjmp	.+140    	; 0x726 <_analogWrite+0xae>
     69a:	c9 30       	cpi	r28, 0x09	; 9
     69c:	21 f1       	breq	.+72     	; 0x6e6 <_analogWrite+0x6e>
     69e:	df 91       	pop	r29
     6a0:	cf 91       	pop	r28
     6a2:	08 95       	ret
     6a4:	c3 30       	cpi	r28, 0x03	; 3
     6a6:	89 f1       	breq	.+98     	; 0x70a <_analogWrite+0x92>
     6a8:	c5 30       	cpi	r28, 0x05	; 5
     6aa:	c9 f7       	brne	.-14     	; 0x69e <_analogWrite+0x26>
     6ac:	84 b5       	in	r24, 0x24	; 36
     6ae:	dd 23       	and	r29, r29
     6b0:	09 f4       	brne	.+2      	; 0x6b4 <_analogWrite+0x3c>
     6b2:	52 c0       	rjmp	.+164    	; 0x758 <_analogWrite+0xe0>
     6b4:	df 3f       	cpi	r29, 0xFF	; 255
     6b6:	09 f4       	brne	.+2      	; 0x6ba <_analogWrite+0x42>
     6b8:	9e c0       	rjmp	.+316    	; 0x7f6 <_analogWrite+0x17e>
     6ba:	80 62       	ori	r24, 0x20	; 32
     6bc:	84 bd       	out	0x24, r24	; 36
     6be:	d8 bd       	out	0x28, r29	; 40
     6c0:	ee cf       	rjmp	.-36     	; 0x69e <_analogWrite+0x26>
     6c2:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     6c6:	dd 23       	and	r29, r29
     6c8:	09 f4       	brne	.+2      	; 0x6cc <_analogWrite+0x54>
     6ca:	7b c0       	rjmp	.+246    	; 0x7c2 <_analogWrite+0x14a>
     6cc:	df 3f       	cpi	r29, 0xFF	; 255
     6ce:	09 f4       	brne	.+2      	; 0x6d2 <_analogWrite+0x5a>
     6d0:	85 c0       	rjmp	.+266    	; 0x7dc <_analogWrite+0x164>
     6d2:	80 62       	ori	r24, 0x20	; 32
     6d4:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     6d8:	6d 2f       	mov	r22, r29
     6da:	70 e0       	ldi	r23, 0x00	; 0
     6dc:	70 93 8b 00 	sts	0x008B, r23	; 0x80008b <__TEXT_REGION_LENGTH__+0x7e008b>
     6e0:	60 93 8a 00 	sts	0x008A, r22	; 0x80008a <__TEXT_REGION_LENGTH__+0x7e008a>
     6e4:	dc cf       	rjmp	.-72     	; 0x69e <_analogWrite+0x26>
     6e6:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     6ea:	dd 23       	and	r29, r29
     6ec:	09 f4       	brne	.+2      	; 0x6f0 <_analogWrite+0x78>
     6ee:	5c c0       	rjmp	.+184    	; 0x7a8 <_analogWrite+0x130>
     6f0:	df 3f       	cpi	r29, 0xFF	; 255
     6f2:	09 f4       	brne	.+2      	; 0x6f6 <_analogWrite+0x7e>
     6f4:	94 c0       	rjmp	.+296    	; 0x81e <_analogWrite+0x1a6>
     6f6:	80 68       	ori	r24, 0x80	; 128
     6f8:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     6fc:	6d 2f       	mov	r22, r29
     6fe:	70 e0       	ldi	r23, 0x00	; 0
     700:	70 93 89 00 	sts	0x0089, r23	; 0x800089 <__TEXT_REGION_LENGTH__+0x7e0089>
     704:	60 93 88 00 	sts	0x0088, r22	; 0x800088 <__TEXT_REGION_LENGTH__+0x7e0088>
     708:	ca cf       	rjmp	.-108    	; 0x69e <_analogWrite+0x26>
     70a:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     70e:	dd 23       	and	r29, r29
     710:	09 f4       	brne	.+2      	; 0x714 <_analogWrite+0x9c>
     712:	3f c0       	rjmp	.+126    	; 0x792 <_analogWrite+0x11a>
     714:	df 3f       	cpi	r29, 0xFF	; 255
     716:	09 f4       	brne	.+2      	; 0x71a <_analogWrite+0xa2>
     718:	77 c0       	rjmp	.+238    	; 0x808 <_analogWrite+0x190>
     71a:	80 62       	ori	r24, 0x20	; 32
     71c:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     720:	d0 93 b4 00 	sts	0x00B4, r29	; 0x8000b4 <__TEXT_REGION_LENGTH__+0x7e00b4>
     724:	bc cf       	rjmp	.-136    	; 0x69e <_analogWrite+0x26>
     726:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     72a:	dd 23       	and	r29, r29
     72c:	39 f1       	breq	.+78     	; 0x77c <_analogWrite+0x104>
     72e:	df 3f       	cpi	r29, 0xFF	; 255
     730:	09 f4       	brne	.+2      	; 0x734 <_analogWrite+0xbc>
     732:	8b c0       	rjmp	.+278    	; 0x84a <_analogWrite+0x1d2>
     734:	80 68       	ori	r24, 0x80	; 128
     736:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     73a:	d0 93 b3 00 	sts	0x00B3, r29	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
     73e:	df 91       	pop	r29
     740:	cf 91       	pop	r28
     742:	08 95       	ret
     744:	84 b5       	in	r24, 0x24	; 36
     746:	dd 23       	and	r29, r29
     748:	81 f0       	breq	.+32     	; 0x76a <_analogWrite+0xf2>
     74a:	df 3f       	cpi	r29, 0xFF	; 255
     74c:	09 f4       	brne	.+2      	; 0x750 <_analogWrite+0xd8>
     74e:	74 c0       	rjmp	.+232    	; 0x838 <_analogWrite+0x1c0>
     750:	80 68       	ori	r24, 0x80	; 128
     752:	84 bd       	out	0x24, r24	; 36
     754:	d7 bd       	out	0x27, r29	; 39
     756:	a3 cf       	rjmp	.-186    	; 0x69e <_analogWrite+0x26>
     758:	8f 7d       	andi	r24, 0xDF	; 223
     75a:	84 bd       	out	0x24, r24	; 36
     75c:	60 91 0f 01 	lds	r22, 0x010F	; 0x80010f <_LOW>
     760:	85 e0       	ldi	r24, 0x05	; 5
     762:	0e 94 97 01 	call	0x32e	; 0x32e <_digitalWrite>
     766:	18 bc       	out	0x28, r1	; 40
     768:	9a cf       	rjmp	.-204    	; 0x69e <_analogWrite+0x26>
     76a:	8f 77       	andi	r24, 0x7F	; 127
     76c:	84 bd       	out	0x24, r24	; 36
     76e:	60 91 0f 01 	lds	r22, 0x010F	; 0x80010f <_LOW>
     772:	86 e0       	ldi	r24, 0x06	; 6
     774:	0e 94 97 01 	call	0x32e	; 0x32e <_digitalWrite>
     778:	17 bc       	out	0x27, r1	; 39
     77a:	91 cf       	rjmp	.-222    	; 0x69e <_analogWrite+0x26>
     77c:	8f 77       	andi	r24, 0x7F	; 127
     77e:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     782:	60 91 0f 01 	lds	r22, 0x010F	; 0x80010f <_LOW>
     786:	8b e0       	ldi	r24, 0x0B	; 11
     788:	0e 94 97 01 	call	0x32e	; 0x32e <_digitalWrite>
     78c:	10 92 b3 00 	sts	0x00B3, r1	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
     790:	86 cf       	rjmp	.-244    	; 0x69e <_analogWrite+0x26>
     792:	8f 7d       	andi	r24, 0xDF	; 223
     794:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     798:	60 91 0f 01 	lds	r22, 0x010F	; 0x80010f <_LOW>
     79c:	83 e0       	ldi	r24, 0x03	; 3
     79e:	0e 94 97 01 	call	0x32e	; 0x32e <_digitalWrite>
     7a2:	10 92 b4 00 	sts	0x00B4, r1	; 0x8000b4 <__TEXT_REGION_LENGTH__+0x7e00b4>
     7a6:	7b cf       	rjmp	.-266    	; 0x69e <_analogWrite+0x26>
     7a8:	8f 77       	andi	r24, 0x7F	; 127
     7aa:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     7ae:	60 91 0f 01 	lds	r22, 0x010F	; 0x80010f <_LOW>
     7b2:	89 e0       	ldi	r24, 0x09	; 9
     7b4:	0e 94 97 01 	call	0x32e	; 0x32e <_digitalWrite>
     7b8:	10 92 89 00 	sts	0x0089, r1	; 0x800089 <__TEXT_REGION_LENGTH__+0x7e0089>
     7bc:	10 92 88 00 	sts	0x0088, r1	; 0x800088 <__TEXT_REGION_LENGTH__+0x7e0088>
     7c0:	6e cf       	rjmp	.-292    	; 0x69e <_analogWrite+0x26>
     7c2:	8f 7d       	andi	r24, 0xDF	; 223
     7c4:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     7c8:	60 91 0f 01 	lds	r22, 0x010F	; 0x80010f <_LOW>
     7cc:	8a e0       	ldi	r24, 0x0A	; 10
     7ce:	0e 94 97 01 	call	0x32e	; 0x32e <_digitalWrite>
     7d2:	10 92 8b 00 	sts	0x008B, r1	; 0x80008b <__TEXT_REGION_LENGTH__+0x7e008b>
     7d6:	10 92 8a 00 	sts	0x008A, r1	; 0x80008a <__TEXT_REGION_LENGTH__+0x7e008a>
     7da:	61 cf       	rjmp	.-318    	; 0x69e <_analogWrite+0x26>
     7dc:	8f 7d       	andi	r24, 0xDF	; 223
     7de:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     7e2:	60 91 10 01 	lds	r22, 0x0110	; 0x800110 <_HIGH>
     7e6:	8a e0       	ldi	r24, 0x0A	; 10
     7e8:	0e 94 97 01 	call	0x32e	; 0x32e <_digitalWrite>
     7ec:	10 92 8b 00 	sts	0x008B, r1	; 0x80008b <__TEXT_REGION_LENGTH__+0x7e008b>
     7f0:	10 92 8a 00 	sts	0x008A, r1	; 0x80008a <__TEXT_REGION_LENGTH__+0x7e008a>
     7f4:	54 cf       	rjmp	.-344    	; 0x69e <_analogWrite+0x26>
     7f6:	8f 7d       	andi	r24, 0xDF	; 223
     7f8:	84 bd       	out	0x24, r24	; 36
     7fa:	60 91 10 01 	lds	r22, 0x0110	; 0x800110 <_HIGH>
     7fe:	85 e0       	ldi	r24, 0x05	; 5
     800:	0e 94 97 01 	call	0x32e	; 0x32e <_digitalWrite>
     804:	18 bc       	out	0x28, r1	; 40
     806:	4b cf       	rjmp	.-362    	; 0x69e <_analogWrite+0x26>
     808:	8f 7d       	andi	r24, 0xDF	; 223
     80a:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     80e:	60 91 10 01 	lds	r22, 0x0110	; 0x800110 <_HIGH>
     812:	83 e0       	ldi	r24, 0x03	; 3
     814:	0e 94 97 01 	call	0x32e	; 0x32e <_digitalWrite>
     818:	10 92 b4 00 	sts	0x00B4, r1	; 0x8000b4 <__TEXT_REGION_LENGTH__+0x7e00b4>
     81c:	40 cf       	rjmp	.-384    	; 0x69e <_analogWrite+0x26>
     81e:	8f 77       	andi	r24, 0x7F	; 127
     820:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     824:	60 91 10 01 	lds	r22, 0x0110	; 0x800110 <_HIGH>
     828:	89 e0       	ldi	r24, 0x09	; 9
     82a:	0e 94 97 01 	call	0x32e	; 0x32e <_digitalWrite>
     82e:	10 92 89 00 	sts	0x0089, r1	; 0x800089 <__TEXT_REGION_LENGTH__+0x7e0089>
     832:	10 92 88 00 	sts	0x0088, r1	; 0x800088 <__TEXT_REGION_LENGTH__+0x7e0088>
     836:	33 cf       	rjmp	.-410    	; 0x69e <_analogWrite+0x26>
     838:	8f 77       	andi	r24, 0x7F	; 127
     83a:	84 bd       	out	0x24, r24	; 36
     83c:	60 91 10 01 	lds	r22, 0x0110	; 0x800110 <_HIGH>
     840:	86 e0       	ldi	r24, 0x06	; 6
     842:	0e 94 97 01 	call	0x32e	; 0x32e <_digitalWrite>
     846:	17 bc       	out	0x27, r1	; 39
     848:	2a cf       	rjmp	.-428    	; 0x69e <_analogWrite+0x26>
     84a:	8f 77       	andi	r24, 0x7F	; 127
     84c:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     850:	60 91 10 01 	lds	r22, 0x0110	; 0x800110 <_HIGH>
     854:	8b e0       	ldi	r24, 0x0B	; 11
     856:	0e 94 97 01 	call	0x32e	; 0x32e <_digitalWrite>
     85a:	10 92 b3 00 	sts	0x00B3, r1	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
     85e:	1f cf       	rjmp	.-450    	; 0x69e <_analogWrite+0x26>

00000860 <_startupADC>:
     860:	87 e8       	ldi	r24, 0x87	; 135
     862:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     866:	8a e0       	ldi	r24, 0x0A	; 10
     868:	90 e0       	ldi	r25, 0x00	; 0
     86a:	0e 94 9b 02 	call	0x536	; 0x536 <_delayMs>
     86e:	61 e0       	ldi	r22, 0x01	; 1
     870:	8d e0       	ldi	r24, 0x0D	; 13
     872:	0e 94 d8 01 	call	0x3b0	; 0x3b0 <_pinMode>
     876:	60 e0       	ldi	r22, 0x00	; 0
     878:	8d e0       	ldi	r24, 0x0D	; 13
     87a:	0c 94 97 01 	jmp	0x32e	; 0x32e <_digitalWrite>

0000087e <_slowAnalogRead>:
     87e:	cf 93       	push	r28
     880:	c8 2f       	mov	r28, r24
     882:	88 30       	cpi	r24, 0x08	; 8
     884:	38 f5       	brcc	.+78     	; 0x8d4 <_slowAnalogRead+0x56>
     886:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     88a:	87 fd       	sbrc	r24, 7
     88c:	0f c0       	rjmp	.+30     	; 0x8ac <_slowAnalogRead+0x2e>
     88e:	87 e8       	ldi	r24, 0x87	; 135
     890:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     894:	8a e0       	ldi	r24, 0x0A	; 10
     896:	90 e0       	ldi	r25, 0x00	; 0
     898:	0e 94 9b 02 	call	0x536	; 0x536 <_delayMs>
     89c:	61 e0       	ldi	r22, 0x01	; 1
     89e:	8d e0       	ldi	r24, 0x0D	; 13
     8a0:	0e 94 d8 01 	call	0x3b0	; 0x3b0 <_pinMode>
     8a4:	60 e0       	ldi	r22, 0x00	; 0
     8a6:	8d e0       	ldi	r24, 0x0D	; 13
     8a8:	0e 94 97 01 	call	0x32e	; 0x32e <_digitalWrite>
     8ac:	c0 64       	ori	r28, 0x40	; 64
     8ae:	c0 93 7c 00 	sts	0x007C, r28	; 0x80007c <__TEXT_REGION_LENGTH__+0x7e007c>
     8b2:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     8b6:	80 64       	ori	r24, 0x40	; 64
     8b8:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     8bc:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     8c0:	86 fd       	sbrc	r24, 6
     8c2:	fc cf       	rjmp	.-8      	; 0x8bc <_slowAnalogRead+0x3e>
     8c4:	80 91 78 00 	lds	r24, 0x0078	; 0x800078 <__TEXT_REGION_LENGTH__+0x7e0078>
     8c8:	20 91 79 00 	lds	r18, 0x0079	; 0x800079 <__TEXT_REGION_LENGTH__+0x7e0079>
     8cc:	90 e0       	ldi	r25, 0x00	; 0
     8ce:	92 2b       	or	r25, r18
     8d0:	cf 91       	pop	r28
     8d2:	08 95       	ret
     8d4:	80 e0       	ldi	r24, 0x00	; 0
     8d6:	90 e0       	ldi	r25, 0x00	; 0
     8d8:	cf 91       	pop	r28
     8da:	08 95       	ret

000008dc <__vector_21>:
     8dc:	1f 92       	push	r1
     8de:	0f 92       	push	r0
     8e0:	0f b6       	in	r0, 0x3f	; 63
     8e2:	0f 92       	push	r0
     8e4:	11 24       	eor	r1, r1
     8e6:	2f 93       	push	r18
     8e8:	3f 93       	push	r19
     8ea:	4f 93       	push	r20
     8ec:	5f 93       	push	r21
     8ee:	6f 93       	push	r22
     8f0:	7f 93       	push	r23
     8f2:	8f 93       	push	r24
     8f4:	9f 93       	push	r25
     8f6:	af 93       	push	r26
     8f8:	bf 93       	push	r27
     8fa:	ef 93       	push	r30
     8fc:	ff 93       	push	r31
     8fe:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     902:	87 7f       	andi	r24, 0xF7	; 247
     904:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     908:	e0 91 bb 01 	lds	r30, 0x01BB	; 0x8001bb <currentCallback>
     90c:	f0 91 bc 01 	lds	r31, 0x01BC	; 0x8001bc <currentCallback+0x1>
     910:	30 97       	sbiw	r30, 0x00	; 0
     912:	59 f0       	breq	.+22     	; 0x92a <__stack+0x2b>
     914:	80 91 78 00 	lds	r24, 0x0078	; 0x800078 <__TEXT_REGION_LENGTH__+0x7e0078>
     918:	20 91 79 00 	lds	r18, 0x0079	; 0x800079 <__TEXT_REGION_LENGTH__+0x7e0079>
     91c:	90 e0       	ldi	r25, 0x00	; 0
     91e:	92 2b       	or	r25, r18
     920:	09 95       	icall
     922:	10 92 bc 01 	sts	0x01BC, r1	; 0x8001bc <currentCallback+0x1>
     926:	10 92 bb 01 	sts	0x01BB, r1	; 0x8001bb <currentCallback>
     92a:	ff 91       	pop	r31
     92c:	ef 91       	pop	r30
     92e:	bf 91       	pop	r27
     930:	af 91       	pop	r26
     932:	9f 91       	pop	r25
     934:	8f 91       	pop	r24
     936:	7f 91       	pop	r23
     938:	6f 91       	pop	r22
     93a:	5f 91       	pop	r21
     93c:	4f 91       	pop	r20
     93e:	3f 91       	pop	r19
     940:	2f 91       	pop	r18
     942:	0f 90       	pop	r0
     944:	0f be       	out	0x3f, r0	; 63
     946:	0f 90       	pop	r0
     948:	1f 90       	pop	r1
     94a:	18 95       	reti

0000094c <_analogReadAsync>:
     94c:	0f 93       	push	r16
     94e:	1f 93       	push	r17
     950:	cf 93       	push	r28
     952:	c8 2f       	mov	r28, r24
     954:	8b 01       	movw	r16, r22
     956:	88 30       	cpi	r24, 0x08	; 8
     958:	e8 f4       	brcc	.+58     	; 0x994 <_analogReadAsync+0x48>
     95a:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     95e:	87 fd       	sbrc	r24, 7
     960:	0f c0       	rjmp	.+30     	; 0x980 <_analogReadAsync+0x34>
     962:	87 e8       	ldi	r24, 0x87	; 135
     964:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     968:	8a e0       	ldi	r24, 0x0A	; 10
     96a:	90 e0       	ldi	r25, 0x00	; 0
     96c:	0e 94 9b 02 	call	0x536	; 0x536 <_delayMs>
     970:	61 e0       	ldi	r22, 0x01	; 1
     972:	8d e0       	ldi	r24, 0x0D	; 13
     974:	0e 94 d8 01 	call	0x3b0	; 0x3b0 <_pinMode>
     978:	60 e0       	ldi	r22, 0x00	; 0
     97a:	8d e0       	ldi	r24, 0x0D	; 13
     97c:	0e 94 97 01 	call	0x32e	; 0x32e <_digitalWrite>
     980:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     984:	86 fd       	sbrc	r24, 6
     986:	06 c0       	rjmp	.+12     	; 0x994 <_analogReadAsync+0x48>
     988:	80 91 bb 01 	lds	r24, 0x01BB	; 0x8001bb <currentCallback>
     98c:	90 91 bc 01 	lds	r25, 0x01BC	; 0x8001bc <currentCallback+0x1>
     990:	89 2b       	or	r24, r25
     992:	29 f0       	breq	.+10     	; 0x99e <_analogReadAsync+0x52>
     994:	80 e0       	ldi	r24, 0x00	; 0
     996:	cf 91       	pop	r28
     998:	1f 91       	pop	r17
     99a:	0f 91       	pop	r16
     99c:	08 95       	ret
     99e:	10 93 bc 01 	sts	0x01BC, r17	; 0x8001bc <currentCallback+0x1>
     9a2:	00 93 bb 01 	sts	0x01BB, r16	; 0x8001bb <currentCallback>
     9a6:	c0 64       	ori	r28, 0x40	; 64
     9a8:	c0 93 7c 00 	sts	0x007C, r28	; 0x80007c <__TEXT_REGION_LENGTH__+0x7e007c>
     9ac:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     9b0:	88 64       	ori	r24, 0x48	; 72
     9b2:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     9b6:	78 94       	sei
     9b8:	81 e0       	ldi	r24, 0x01	; 1
     9ba:	ed cf       	rjmp	.-38     	; 0x996 <_analogReadAsync+0x4a>

000009bc <vfprintf>:
     9bc:	a0 e1       	ldi	r26, 0x10	; 16
     9be:	b0 e0       	ldi	r27, 0x00	; 0
     9c0:	e4 ee       	ldi	r30, 0xE4	; 228
     9c2:	f4 e0       	ldi	r31, 0x04	; 4
     9c4:	0c 94 76 08 	jmp	0x10ec	; 0x10ec <__prologue_saves__>
     9c8:	7c 01       	movw	r14, r24
     9ca:	1b 01       	movw	r2, r22
     9cc:	6a 01       	movw	r12, r20
     9ce:	fc 01       	movw	r30, r24
     9d0:	17 82       	std	Z+7, r1	; 0x07
     9d2:	16 82       	std	Z+6, r1	; 0x06
     9d4:	83 81       	ldd	r24, Z+3	; 0x03
     9d6:	81 ff       	sbrs	r24, 1
     9d8:	6d c3       	rjmp	.+1754   	; 0x10b4 <vfprintf+0x6f8>
     9da:	9e 01       	movw	r18, r28
     9dc:	2f 5f       	subi	r18, 0xFF	; 255
     9de:	3f 4f       	sbci	r19, 0xFF	; 255
     9e0:	59 01       	movw	r10, r18
     9e2:	f7 01       	movw	r30, r14
     9e4:	93 81       	ldd	r25, Z+3	; 0x03
     9e6:	f1 01       	movw	r30, r2
     9e8:	93 fd       	sbrc	r25, 3
     9ea:	85 91       	lpm	r24, Z+
     9ec:	93 ff       	sbrs	r25, 3
     9ee:	81 91       	ld	r24, Z+
     9f0:	1f 01       	movw	r2, r30
     9f2:	88 23       	and	r24, r24
     9f4:	09 f4       	brne	.+2      	; 0x9f8 <vfprintf+0x3c>
     9f6:	cc c2       	rjmp	.+1432   	; 0xf90 <vfprintf+0x5d4>
     9f8:	85 32       	cpi	r24, 0x25	; 37
     9fa:	39 f4       	brne	.+14     	; 0xa0a <vfprintf+0x4e>
     9fc:	93 fd       	sbrc	r25, 3
     9fe:	85 91       	lpm	r24, Z+
     a00:	93 ff       	sbrs	r25, 3
     a02:	81 91       	ld	r24, Z+
     a04:	1f 01       	movw	r2, r30
     a06:	85 32       	cpi	r24, 0x25	; 37
     a08:	39 f4       	brne	.+14     	; 0xa18 <vfprintf+0x5c>
     a0a:	b7 01       	movw	r22, r14
     a0c:	90 e0       	ldi	r25, 0x00	; 0
     a0e:	0e 94 a1 09 	call	0x1342	; 0x1342 <fputc>
     a12:	36 01       	movw	r6, r12
     a14:	63 01       	movw	r12, r6
     a16:	e5 cf       	rjmp	.-54     	; 0x9e2 <vfprintf+0x26>
     a18:	51 2c       	mov	r5, r1
     a1a:	91 2c       	mov	r9, r1
     a1c:	00 e0       	ldi	r16, 0x00	; 0
     a1e:	00 32       	cpi	r16, 0x20	; 32
     a20:	38 f4       	brcc	.+14     	; 0xa30 <vfprintf+0x74>
     a22:	8b 32       	cpi	r24, 0x2B	; 43
     a24:	09 f1       	breq	.+66     	; 0xa68 <vfprintf+0xac>
     a26:	90 f4       	brcc	.+36     	; 0xa4c <vfprintf+0x90>
     a28:	80 32       	cpi	r24, 0x20	; 32
     a2a:	f9 f0       	breq	.+62     	; 0xa6a <vfprintf+0xae>
     a2c:	83 32       	cpi	r24, 0x23	; 35
     a2e:	09 f1       	breq	.+66     	; 0xa72 <vfprintf+0xb6>
     a30:	07 fd       	sbrc	r16, 7
     a32:	34 c0       	rjmp	.+104    	; 0xa9c <vfprintf+0xe0>
     a34:	20 ed       	ldi	r18, 0xD0	; 208
     a36:	28 0f       	add	r18, r24
     a38:	2a 30       	cpi	r18, 0x0A	; 10
     a3a:	20 f5       	brcc	.+72     	; 0xa84 <vfprintf+0xc8>
     a3c:	06 ff       	sbrs	r16, 6
     a3e:	1b c0       	rjmp	.+54     	; 0xa76 <vfprintf+0xba>
     a40:	fa e0       	ldi	r31, 0x0A	; 10
     a42:	5f 9e       	mul	r5, r31
     a44:	20 0d       	add	r18, r0
     a46:	11 24       	eor	r1, r1
     a48:	52 2e       	mov	r5, r18
     a4a:	05 c0       	rjmp	.+10     	; 0xa56 <vfprintf+0x9a>
     a4c:	8d 32       	cpi	r24, 0x2D	; 45
     a4e:	79 f0       	breq	.+30     	; 0xa6e <vfprintf+0xb2>
     a50:	80 33       	cpi	r24, 0x30	; 48
     a52:	71 f7       	brne	.-36     	; 0xa30 <vfprintf+0x74>
     a54:	01 60       	ori	r16, 0x01	; 1
     a56:	f1 01       	movw	r30, r2
     a58:	93 fd       	sbrc	r25, 3
     a5a:	85 91       	lpm	r24, Z+
     a5c:	93 ff       	sbrs	r25, 3
     a5e:	81 91       	ld	r24, Z+
     a60:	1f 01       	movw	r2, r30
     a62:	81 11       	cpse	r24, r1
     a64:	dc cf       	rjmp	.-72     	; 0xa1e <vfprintf+0x62>
     a66:	1a c0       	rjmp	.+52     	; 0xa9c <vfprintf+0xe0>
     a68:	02 60       	ori	r16, 0x02	; 2
     a6a:	04 60       	ori	r16, 0x04	; 4
     a6c:	f4 cf       	rjmp	.-24     	; 0xa56 <vfprintf+0x9a>
     a6e:	08 60       	ori	r16, 0x08	; 8
     a70:	f2 cf       	rjmp	.-28     	; 0xa56 <vfprintf+0x9a>
     a72:	00 61       	ori	r16, 0x10	; 16
     a74:	f0 cf       	rjmp	.-32     	; 0xa56 <vfprintf+0x9a>
     a76:	3a e0       	ldi	r19, 0x0A	; 10
     a78:	93 9e       	mul	r9, r19
     a7a:	20 0d       	add	r18, r0
     a7c:	11 24       	eor	r1, r1
     a7e:	92 2e       	mov	r9, r18
     a80:	00 62       	ori	r16, 0x20	; 32
     a82:	e9 cf       	rjmp	.-46     	; 0xa56 <vfprintf+0x9a>
     a84:	8e 32       	cpi	r24, 0x2E	; 46
     a86:	21 f4       	brne	.+8      	; 0xa90 <vfprintf+0xd4>
     a88:	06 fd       	sbrc	r16, 6
     a8a:	82 c2       	rjmp	.+1284   	; 0xf90 <vfprintf+0x5d4>
     a8c:	00 64       	ori	r16, 0x40	; 64
     a8e:	e3 cf       	rjmp	.-58     	; 0xa56 <vfprintf+0x9a>
     a90:	8c 36       	cpi	r24, 0x6C	; 108
     a92:	11 f4       	brne	.+4      	; 0xa98 <vfprintf+0xdc>
     a94:	00 68       	ori	r16, 0x80	; 128
     a96:	df cf       	rjmp	.-66     	; 0xa56 <vfprintf+0x9a>
     a98:	88 36       	cpi	r24, 0x68	; 104
     a9a:	e9 f2       	breq	.-70     	; 0xa56 <vfprintf+0x9a>
     a9c:	9b eb       	ldi	r25, 0xBB	; 187
     a9e:	98 0f       	add	r25, r24
     aa0:	93 30       	cpi	r25, 0x03	; 3
     aa2:	d8 f5       	brcc	.+118    	; 0xb1a <vfprintf+0x15e>
     aa4:	00 61       	ori	r16, 0x10	; 16
     aa6:	80 5e       	subi	r24, 0xE0	; 224
     aa8:	06 fd       	sbrc	r16, 6
     aaa:	02 c0       	rjmp	.+4      	; 0xab0 <vfprintf+0xf4>
     aac:	46 e0       	ldi	r20, 0x06	; 6
     aae:	54 2e       	mov	r5, r20
     ab0:	10 2f       	mov	r17, r16
     ab2:	1f 73       	andi	r17, 0x3F	; 63
     ab4:	85 36       	cpi	r24, 0x65	; 101
     ab6:	c1 f5       	brne	.+112    	; 0xb28 <vfprintf+0x16c>
     ab8:	10 64       	ori	r17, 0x40	; 64
     aba:	17 ff       	sbrs	r17, 7
     abc:	3e c0       	rjmp	.+124    	; 0xb3a <vfprintf+0x17e>
     abe:	8b e3       	ldi	r24, 0x3B	; 59
     ac0:	85 15       	cp	r24, r5
     ac2:	08 f4       	brcc	.+2      	; 0xac6 <vfprintf+0x10a>
     ac4:	42 c0       	rjmp	.+132    	; 0xb4a <vfprintf+0x18e>
     ac6:	91 e0       	ldi	r25, 0x01	; 1
     ac8:	95 0d       	add	r25, r5
     aca:	9c 87       	std	Y+12, r25	; 0x0c
     acc:	27 e0       	ldi	r18, 0x07	; 7
     ace:	36 01       	movw	r6, r12
     ad0:	34 e0       	ldi	r19, 0x04	; 4
     ad2:	63 0e       	add	r6, r19
     ad4:	71 1c       	adc	r7, r1
     ad6:	f6 01       	movw	r30, r12
     ad8:	60 81       	ld	r22, Z
     ada:	71 81       	ldd	r23, Z+1	; 0x01
     adc:	82 81       	ldd	r24, Z+2	; 0x02
     ade:	93 81       	ldd	r25, Z+3	; 0x03
     ae0:	0c 85       	ldd	r16, Y+12	; 0x0c
     ae2:	a5 01       	movw	r20, r10
     ae4:	0e 94 b3 08 	call	0x1166	; 0x1166 <__ftoa_engine>
     ae8:	6c 01       	movw	r12, r24
     aea:	f9 81       	ldd	r31, Y+1	; 0x01
     aec:	fe 87       	std	Y+14, r31	; 0x0e
     aee:	f0 ff       	sbrs	r31, 0
     af0:	02 c0       	rjmp	.+4      	; 0xaf6 <vfprintf+0x13a>
     af2:	f3 ff       	sbrs	r31, 3
     af4:	30 c0       	rjmp	.+96     	; 0xb56 <vfprintf+0x19a>
     af6:	11 fd       	sbrc	r17, 1
     af8:	30 c0       	rjmp	.+96     	; 0xb5a <vfprintf+0x19e>
     afa:	01 2f       	mov	r16, r17
     afc:	04 70       	andi	r16, 0x04	; 4
     afe:	12 fd       	sbrc	r17, 2
     b00:	00 e2       	ldi	r16, 0x20	; 32
     b02:	2e 85       	ldd	r18, Y+14	; 0x0e
     b04:	2c 70       	andi	r18, 0x0C	; 12
     b06:	42 2e       	mov	r4, r18
     b08:	09 f4       	brne	.+2      	; 0xb0c <vfprintf+0x150>
     b0a:	64 c0       	rjmp	.+200    	; 0xbd4 <vfprintf+0x218>
     b0c:	01 11       	cpse	r16, r1
     b0e:	d5 c2       	rjmp	.+1450   	; 0x10ba <vfprintf+0x6fe>
     b10:	f3 e0       	ldi	r31, 0x03	; 3
     b12:	f9 15       	cp	r31, r9
     b14:	20 f1       	brcs	.+72     	; 0xb5e <vfprintf+0x1a2>
     b16:	41 2c       	mov	r4, r1
     b18:	36 c0       	rjmp	.+108    	; 0xb86 <vfprintf+0x1ca>
     b1a:	9b e9       	ldi	r25, 0x9B	; 155
     b1c:	98 0f       	add	r25, r24
     b1e:	93 30       	cpi	r25, 0x03	; 3
     b20:	08 f0       	brcs	.+2      	; 0xb24 <vfprintf+0x168>
     b22:	76 c1       	rjmp	.+748    	; 0xe10 <vfprintf+0x454>
     b24:	0f 7e       	andi	r16, 0xEF	; 239
     b26:	c0 cf       	rjmp	.-128    	; 0xaa8 <vfprintf+0xec>
     b28:	86 36       	cpi	r24, 0x66	; 102
     b2a:	11 f4       	brne	.+4      	; 0xb30 <vfprintf+0x174>
     b2c:	10 68       	ori	r17, 0x80	; 128
     b2e:	c5 cf       	rjmp	.-118    	; 0xaba <vfprintf+0xfe>
     b30:	55 20       	and	r5, r5
     b32:	09 f4       	brne	.+2      	; 0xb36 <vfprintf+0x17a>
     b34:	c2 cf       	rjmp	.-124    	; 0xaba <vfprintf+0xfe>
     b36:	5a 94       	dec	r5
     b38:	c0 cf       	rjmp	.-128    	; 0xaba <vfprintf+0xfe>
     b3a:	e7 e0       	ldi	r30, 0x07	; 7
     b3c:	e5 15       	cp	r30, r5
     b3e:	48 f4       	brcc	.+18     	; 0xb52 <vfprintf+0x196>
     b40:	27 e0       	ldi	r18, 0x07	; 7
     b42:	37 e0       	ldi	r19, 0x07	; 7
     b44:	53 2e       	mov	r5, r19
     b46:	1c 86       	std	Y+12, r1	; 0x0c
     b48:	c2 cf       	rjmp	.-124    	; 0xace <vfprintf+0x112>
     b4a:	27 e0       	ldi	r18, 0x07	; 7
     b4c:	fc e3       	ldi	r31, 0x3C	; 60
     b4e:	fc 87       	std	Y+12, r31	; 0x0c
     b50:	be cf       	rjmp	.-132    	; 0xace <vfprintf+0x112>
     b52:	25 2d       	mov	r18, r5
     b54:	f8 cf       	rjmp	.-16     	; 0xb46 <vfprintf+0x18a>
     b56:	0d e2       	ldi	r16, 0x2D	; 45
     b58:	d4 cf       	rjmp	.-88     	; 0xb02 <vfprintf+0x146>
     b5a:	0b e2       	ldi	r16, 0x2B	; 43
     b5c:	d2 cf       	rjmp	.-92     	; 0xb02 <vfprintf+0x146>
     b5e:	83 e0       	ldi	r24, 0x03	; 3
     b60:	49 2c       	mov	r4, r9
     b62:	48 1a       	sub	r4, r24
     b64:	13 fd       	sbrc	r17, 3
     b66:	08 c0       	rjmp	.+16     	; 0xb78 <vfprintf+0x1bc>
     b68:	b7 01       	movw	r22, r14
     b6a:	80 e2       	ldi	r24, 0x20	; 32
     b6c:	90 e0       	ldi	r25, 0x00	; 0
     b6e:	0e 94 a1 09 	call	0x1342	; 0x1342 <fputc>
     b72:	4a 94       	dec	r4
     b74:	41 10       	cpse	r4, r1
     b76:	f8 cf       	rjmp	.-16     	; 0xb68 <vfprintf+0x1ac>
     b78:	00 23       	and	r16, r16
     b7a:	29 f0       	breq	.+10     	; 0xb86 <vfprintf+0x1ca>
     b7c:	b7 01       	movw	r22, r14
     b7e:	80 2f       	mov	r24, r16
     b80:	90 e0       	ldi	r25, 0x00	; 0
     b82:	0e 94 a1 09 	call	0x1342	; 0x1342 <fputc>
     b86:	3e 85       	ldd	r19, Y+14	; 0x0e
     b88:	33 ff       	sbrs	r19, 3
     b8a:	15 c0       	rjmp	.+42     	; 0xbb6 <vfprintf+0x1fa>
     b8c:	98 e6       	ldi	r25, 0x68	; 104
     b8e:	c9 2e       	mov	r12, r25
     b90:	90 e0       	ldi	r25, 0x00	; 0
     b92:	d9 2e       	mov	r13, r25
     b94:	10 71       	andi	r17, 0x10	; 16
     b96:	f6 01       	movw	r30, r12
     b98:	84 91       	lpm	r24, Z
     b9a:	81 11       	cpse	r24, r1
     b9c:	11 c0       	rjmp	.+34     	; 0xbc0 <vfprintf+0x204>
     b9e:	44 20       	and	r4, r4
     ba0:	09 f4       	brne	.+2      	; 0xba4 <vfprintf+0x1e8>
     ba2:	38 cf       	rjmp	.-400    	; 0xa14 <vfprintf+0x58>
     ba4:	b7 01       	movw	r22, r14
     ba6:	80 e2       	ldi	r24, 0x20	; 32
     ba8:	90 e0       	ldi	r25, 0x00	; 0
     baa:	0e 94 a1 09 	call	0x1342	; 0x1342 <fputc>
     bae:	4a 94       	dec	r4
     bb0:	f6 cf       	rjmp	.-20     	; 0xb9e <vfprintf+0x1e2>
     bb2:	84 e0       	ldi	r24, 0x04	; 4
     bb4:	d5 cf       	rjmp	.-86     	; 0xb60 <vfprintf+0x1a4>
     bb6:	8c e6       	ldi	r24, 0x6C	; 108
     bb8:	c8 2e       	mov	r12, r24
     bba:	80 e0       	ldi	r24, 0x00	; 0
     bbc:	d8 2e       	mov	r13, r24
     bbe:	ea cf       	rjmp	.-44     	; 0xb94 <vfprintf+0x1d8>
     bc0:	11 11       	cpse	r17, r1
     bc2:	80 52       	subi	r24, 0x20	; 32
     bc4:	b7 01       	movw	r22, r14
     bc6:	90 e0       	ldi	r25, 0x00	; 0
     bc8:	0e 94 a1 09 	call	0x1342	; 0x1342 <fputc>
     bcc:	8f ef       	ldi	r24, 0xFF	; 255
     bce:	c8 1a       	sub	r12, r24
     bd0:	d8 0a       	sbc	r13, r24
     bd2:	e1 cf       	rjmp	.-62     	; 0xb96 <vfprintf+0x1da>
     bd4:	17 ff       	sbrs	r17, 7
     bd6:	7c c0       	rjmp	.+248    	; 0xcd0 <vfprintf+0x314>
     bd8:	8c 85       	ldd	r24, Y+12	; 0x0c
     bda:	8c 0d       	add	r24, r12
     bdc:	fe 85       	ldd	r31, Y+14	; 0x0e
     bde:	f4 ff       	sbrs	r31, 4
     be0:	04 c0       	rjmp	.+8      	; 0xbea <vfprintf+0x22e>
     be2:	9a 81       	ldd	r25, Y+2	; 0x02
     be4:	91 33       	cpi	r25, 0x31	; 49
     be6:	09 f4       	brne	.+2      	; 0xbea <vfprintf+0x22e>
     be8:	81 50       	subi	r24, 0x01	; 1
     bea:	18 16       	cp	r1, r24
     bec:	0c f0       	brlt	.+2      	; 0xbf0 <vfprintf+0x234>
     bee:	93 c0       	rjmp	.+294    	; 0xd16 <vfprintf+0x35a>
     bf0:	8c 87       	std	Y+12, r24	; 0x0c
     bf2:	89 30       	cpi	r24, 0x09	; 9
     bf4:	10 f0       	brcs	.+4      	; 0xbfa <vfprintf+0x23e>
     bf6:	28 e0       	ldi	r18, 0x08	; 8
     bf8:	2c 87       	std	Y+12, r18	; 0x0c
     bfa:	17 ff       	sbrs	r17, 7
     bfc:	91 c0       	rjmp	.+290    	; 0xd20 <vfprintf+0x364>
     bfe:	1c 14       	cp	r1, r12
     c00:	1d 04       	cpc	r1, r13
     c02:	0c f0       	brlt	.+2      	; 0xc06 <vfprintf+0x24a>
     c04:	90 c0       	rjmp	.+288    	; 0xd26 <vfprintf+0x36a>
     c06:	c6 01       	movw	r24, r12
     c08:	01 96       	adiw	r24, 0x01	; 1
     c0a:	01 11       	cpse	r16, r1
     c0c:	01 96       	adiw	r24, 0x01	; 1
     c0e:	55 20       	and	r5, r5
     c10:	31 f0       	breq	.+12     	; 0xc1e <vfprintf+0x262>
     c12:	25 2d       	mov	r18, r5
     c14:	30 e0       	ldi	r19, 0x00	; 0
     c16:	2f 5f       	subi	r18, 0xFF	; 255
     c18:	3f 4f       	sbci	r19, 0xFF	; 255
     c1a:	82 0f       	add	r24, r18
     c1c:	93 1f       	adc	r25, r19
     c1e:	29 2d       	mov	r18, r9
     c20:	30 e0       	ldi	r19, 0x00	; 0
     c22:	82 17       	cp	r24, r18
     c24:	93 07       	cpc	r25, r19
     c26:	14 f4       	brge	.+4      	; 0xc2c <vfprintf+0x270>
     c28:	49 2c       	mov	r4, r9
     c2a:	48 1a       	sub	r4, r24
     c2c:	81 2f       	mov	r24, r17
     c2e:	89 70       	andi	r24, 0x09	; 9
     c30:	11 f4       	brne	.+4      	; 0xc36 <vfprintf+0x27a>
     c32:	41 10       	cpse	r4, r1
     c34:	7b c0       	rjmp	.+246    	; 0xd2c <vfprintf+0x370>
     c36:	00 23       	and	r16, r16
     c38:	29 f0       	breq	.+10     	; 0xc44 <vfprintf+0x288>
     c3a:	b7 01       	movw	r22, r14
     c3c:	80 2f       	mov	r24, r16
     c3e:	90 e0       	ldi	r25, 0x00	; 0
     c40:	0e 94 a1 09 	call	0x1342	; 0x1342 <fputc>
     c44:	13 fd       	sbrc	r17, 3
     c46:	02 c0       	rjmp	.+4      	; 0xc4c <vfprintf+0x290>
     c48:	41 10       	cpse	r4, r1
     c4a:	77 c0       	rjmp	.+238    	; 0xd3a <vfprintf+0x37e>
     c4c:	17 ff       	sbrs	r17, 7
     c4e:	90 c0       	rjmp	.+288    	; 0xd70 <vfprintf+0x3b4>
     c50:	46 01       	movw	r8, r12
     c52:	d7 fe       	sbrs	r13, 7
     c54:	02 c0       	rjmp	.+4      	; 0xc5a <vfprintf+0x29e>
     c56:	81 2c       	mov	r8, r1
     c58:	91 2c       	mov	r9, r1
     c5a:	c6 01       	movw	r24, r12
     c5c:	88 19       	sub	r24, r8
     c5e:	99 09       	sbc	r25, r9
     c60:	f5 01       	movw	r30, r10
     c62:	e8 0f       	add	r30, r24
     c64:	f9 1f       	adc	r31, r25
     c66:	f8 8b       	std	Y+16, r31	; 0x10
     c68:	ef 87       	std	Y+15, r30	; 0x0f
     c6a:	96 01       	movw	r18, r12
     c6c:	8c 85       	ldd	r24, Y+12	; 0x0c
     c6e:	28 1b       	sub	r18, r24
     c70:	31 09       	sbc	r19, r1
     c72:	3d 87       	std	Y+13, r19	; 0x0d
     c74:	2c 87       	std	Y+12, r18	; 0x0c
     c76:	05 2d       	mov	r16, r5
     c78:	10 e0       	ldi	r17, 0x00	; 0
     c7a:	11 95       	neg	r17
     c7c:	01 95       	neg	r16
     c7e:	11 09       	sbc	r17, r1
     c80:	9f ef       	ldi	r25, 0xFF	; 255
     c82:	89 16       	cp	r8, r25
     c84:	99 06       	cpc	r9, r25
     c86:	29 f4       	brne	.+10     	; 0xc92 <vfprintf+0x2d6>
     c88:	b7 01       	movw	r22, r14
     c8a:	8e e2       	ldi	r24, 0x2E	; 46
     c8c:	90 e0       	ldi	r25, 0x00	; 0
     c8e:	0e 94 a1 09 	call	0x1342	; 0x1342 <fputc>
     c92:	c8 14       	cp	r12, r8
     c94:	d9 04       	cpc	r13, r9
     c96:	0c f4       	brge	.+2      	; 0xc9a <vfprintf+0x2de>
     c98:	57 c0       	rjmp	.+174    	; 0xd48 <vfprintf+0x38c>
     c9a:	ec 85       	ldd	r30, Y+12	; 0x0c
     c9c:	fd 85       	ldd	r31, Y+13	; 0x0d
     c9e:	e8 15       	cp	r30, r8
     ca0:	f9 05       	cpc	r31, r9
     ca2:	0c f0       	brlt	.+2      	; 0xca6 <vfprintf+0x2ea>
     ca4:	51 c0       	rjmp	.+162    	; 0xd48 <vfprintf+0x38c>
     ca6:	ef 85       	ldd	r30, Y+15	; 0x0f
     ca8:	f8 89       	ldd	r31, Y+16	; 0x10
     caa:	81 81       	ldd	r24, Z+1	; 0x01
     cac:	f1 e0       	ldi	r31, 0x01	; 1
     cae:	8f 1a       	sub	r8, r31
     cb0:	91 08       	sbc	r9, r1
     cb2:	2f 85       	ldd	r18, Y+15	; 0x0f
     cb4:	38 89       	ldd	r19, Y+16	; 0x10
     cb6:	2f 5f       	subi	r18, 0xFF	; 255
     cb8:	3f 4f       	sbci	r19, 0xFF	; 255
     cba:	38 8b       	std	Y+16, r19	; 0x10
     cbc:	2f 87       	std	Y+15, r18	; 0x0f
     cbe:	80 16       	cp	r8, r16
     cc0:	91 06       	cpc	r9, r17
     cc2:	0c f4       	brge	.+2      	; 0xcc6 <vfprintf+0x30a>
     cc4:	43 c0       	rjmp	.+134    	; 0xd4c <vfprintf+0x390>
     cc6:	b7 01       	movw	r22, r14
     cc8:	90 e0       	ldi	r25, 0x00	; 0
     cca:	0e 94 a1 09 	call	0x1342	; 0x1342 <fputc>
     cce:	d8 cf       	rjmp	.-80     	; 0xc80 <vfprintf+0x2c4>
     cd0:	16 fd       	sbrc	r17, 6
     cd2:	93 cf       	rjmp	.-218    	; 0xbfa <vfprintf+0x23e>
     cd4:	e5 2d       	mov	r30, r5
     cd6:	f0 e0       	ldi	r31, 0x00	; 0
     cd8:	ec 15       	cp	r30, r12
     cda:	fd 05       	cpc	r31, r13
     cdc:	34 f0       	brlt	.+12     	; 0xcea <vfprintf+0x32e>
     cde:	3c ef       	ldi	r19, 0xFC	; 252
     ce0:	c3 16       	cp	r12, r19
     ce2:	3f ef       	ldi	r19, 0xFF	; 255
     ce4:	d3 06       	cpc	r13, r19
     ce6:	0c f0       	brlt	.+2      	; 0xcea <vfprintf+0x32e>
     ce8:	10 68       	ori	r17, 0x80	; 128
     cea:	32 96       	adiw	r30, 0x02	; 2
     cec:	ea 0d       	add	r30, r10
     cee:	fb 1d       	adc	r31, r11
     cf0:	55 20       	and	r5, r5
     cf2:	19 f0       	breq	.+6      	; 0xcfa <vfprintf+0x33e>
     cf4:	82 91       	ld	r24, -Z
     cf6:	80 33       	cpi	r24, 0x30	; 48
     cf8:	61 f0       	breq	.+24     	; 0xd12 <vfprintf+0x356>
     cfa:	17 ff       	sbrs	r17, 7
     cfc:	7e cf       	rjmp	.-260    	; 0xbfa <vfprintf+0x23e>
     cfe:	81 e0       	ldi	r24, 0x01	; 1
     d00:	85 0d       	add	r24, r5
     d02:	8c 87       	std	Y+12, r24	; 0x0c
     d04:	85 2d       	mov	r24, r5
     d06:	90 e0       	ldi	r25, 0x00	; 0
     d08:	c8 16       	cp	r12, r24
     d0a:	d9 06       	cpc	r13, r25
     d0c:	3c f4       	brge	.+14     	; 0xd1c <vfprintf+0x360>
     d0e:	5c 18       	sub	r5, r12
     d10:	74 cf       	rjmp	.-280    	; 0xbfa <vfprintf+0x23e>
     d12:	5a 94       	dec	r5
     d14:	ed cf       	rjmp	.-38     	; 0xcf0 <vfprintf+0x334>
     d16:	91 e0       	ldi	r25, 0x01	; 1
     d18:	9c 87       	std	Y+12, r25	; 0x0c
     d1a:	6f cf       	rjmp	.-290    	; 0xbfa <vfprintf+0x23e>
     d1c:	51 2c       	mov	r5, r1
     d1e:	6d cf       	rjmp	.-294    	; 0xbfa <vfprintf+0x23e>
     d20:	85 e0       	ldi	r24, 0x05	; 5
     d22:	90 e0       	ldi	r25, 0x00	; 0
     d24:	72 cf       	rjmp	.-284    	; 0xc0a <vfprintf+0x24e>
     d26:	81 e0       	ldi	r24, 0x01	; 1
     d28:	90 e0       	ldi	r25, 0x00	; 0
     d2a:	6f cf       	rjmp	.-290    	; 0xc0a <vfprintf+0x24e>
     d2c:	b7 01       	movw	r22, r14
     d2e:	80 e2       	ldi	r24, 0x20	; 32
     d30:	90 e0       	ldi	r25, 0x00	; 0
     d32:	0e 94 a1 09 	call	0x1342	; 0x1342 <fputc>
     d36:	4a 94       	dec	r4
     d38:	7c cf       	rjmp	.-264    	; 0xc32 <vfprintf+0x276>
     d3a:	b7 01       	movw	r22, r14
     d3c:	80 e3       	ldi	r24, 0x30	; 48
     d3e:	90 e0       	ldi	r25, 0x00	; 0
     d40:	0e 94 a1 09 	call	0x1342	; 0x1342 <fputc>
     d44:	4a 94       	dec	r4
     d46:	80 cf       	rjmp	.-256    	; 0xc48 <vfprintf+0x28c>
     d48:	80 e3       	ldi	r24, 0x30	; 48
     d4a:	b0 cf       	rjmp	.-160    	; 0xcac <vfprintf+0x2f0>
     d4c:	c8 14       	cp	r12, r8
     d4e:	d9 04       	cpc	r13, r9
     d50:	41 f4       	brne	.+16     	; 0xd62 <vfprintf+0x3a6>
     d52:	9a 81       	ldd	r25, Y+2	; 0x02
     d54:	96 33       	cpi	r25, 0x36	; 54
     d56:	50 f4       	brcc	.+20     	; 0xd6c <vfprintf+0x3b0>
     d58:	95 33       	cpi	r25, 0x35	; 53
     d5a:	19 f4       	brne	.+6      	; 0xd62 <vfprintf+0x3a6>
     d5c:	3e 85       	ldd	r19, Y+14	; 0x0e
     d5e:	34 ff       	sbrs	r19, 4
     d60:	05 c0       	rjmp	.+10     	; 0xd6c <vfprintf+0x3b0>
     d62:	b7 01       	movw	r22, r14
     d64:	90 e0       	ldi	r25, 0x00	; 0
     d66:	0e 94 a1 09 	call	0x1342	; 0x1342 <fputc>
     d6a:	19 cf       	rjmp	.-462    	; 0xb9e <vfprintf+0x1e2>
     d6c:	81 e3       	ldi	r24, 0x31	; 49
     d6e:	f9 cf       	rjmp	.-14     	; 0xd62 <vfprintf+0x3a6>
     d70:	8a 81       	ldd	r24, Y+2	; 0x02
     d72:	81 33       	cpi	r24, 0x31	; 49
     d74:	19 f0       	breq	.+6      	; 0xd7c <vfprintf+0x3c0>
     d76:	9e 85       	ldd	r25, Y+14	; 0x0e
     d78:	9f 7e       	andi	r25, 0xEF	; 239
     d7a:	9e 87       	std	Y+14, r25	; 0x0e
     d7c:	b7 01       	movw	r22, r14
     d7e:	90 e0       	ldi	r25, 0x00	; 0
     d80:	0e 94 a1 09 	call	0x1342	; 0x1342 <fputc>
     d84:	51 10       	cpse	r5, r1
     d86:	24 c0       	rjmp	.+72     	; 0xdd0 <vfprintf+0x414>
     d88:	14 fd       	sbrc	r17, 4
     d8a:	38 c0       	rjmp	.+112    	; 0xdfc <vfprintf+0x440>
     d8c:	85 e6       	ldi	r24, 0x65	; 101
     d8e:	90 e0       	ldi	r25, 0x00	; 0
     d90:	b7 01       	movw	r22, r14
     d92:	0e 94 a1 09 	call	0x1342	; 0x1342 <fputc>
     d96:	d7 fc       	sbrc	r13, 7
     d98:	06 c0       	rjmp	.+12     	; 0xda6 <vfprintf+0x3ea>
     d9a:	c1 14       	cp	r12, r1
     d9c:	d1 04       	cpc	r13, r1
     d9e:	89 f5       	brne	.+98     	; 0xe02 <vfprintf+0x446>
     da0:	ee 85       	ldd	r30, Y+14	; 0x0e
     da2:	e4 ff       	sbrs	r30, 4
     da4:	2e c0       	rjmp	.+92     	; 0xe02 <vfprintf+0x446>
     da6:	d1 94       	neg	r13
     da8:	c1 94       	neg	r12
     daa:	d1 08       	sbc	r13, r1
     dac:	8d e2       	ldi	r24, 0x2D	; 45
     dae:	b7 01       	movw	r22, r14
     db0:	90 e0       	ldi	r25, 0x00	; 0
     db2:	0e 94 a1 09 	call	0x1342	; 0x1342 <fputc>
     db6:	80 e3       	ldi	r24, 0x30	; 48
     db8:	2a e0       	ldi	r18, 0x0A	; 10
     dba:	c2 16       	cp	r12, r18
     dbc:	d1 04       	cpc	r13, r1
     dbe:	1c f5       	brge	.+70     	; 0xe06 <vfprintf+0x44a>
     dc0:	b7 01       	movw	r22, r14
     dc2:	90 e0       	ldi	r25, 0x00	; 0
     dc4:	0e 94 a1 09 	call	0x1342	; 0x1342 <fputc>
     dc8:	b7 01       	movw	r22, r14
     dca:	c6 01       	movw	r24, r12
     dcc:	c0 96       	adiw	r24, 0x30	; 48
     dce:	cb cf       	rjmp	.-106    	; 0xd66 <vfprintf+0x3aa>
     dd0:	b7 01       	movw	r22, r14
     dd2:	8e e2       	ldi	r24, 0x2E	; 46
     dd4:	90 e0       	ldi	r25, 0x00	; 0
     dd6:	0e 94 a1 09 	call	0x1342	; 0x1342 <fputc>
     dda:	53 94       	inc	r5
     ddc:	53 94       	inc	r5
     dde:	82 e0       	ldi	r24, 0x02	; 2
     de0:	01 e0       	ldi	r16, 0x01	; 1
     de2:	08 0f       	add	r16, r24
     de4:	f5 01       	movw	r30, r10
     de6:	e8 0f       	add	r30, r24
     de8:	f1 1d       	adc	r31, r1
     dea:	80 81       	ld	r24, Z
     dec:	b7 01       	movw	r22, r14
     dee:	90 e0       	ldi	r25, 0x00	; 0
     df0:	0e 94 a1 09 	call	0x1342	; 0x1342 <fputc>
     df4:	80 2f       	mov	r24, r16
     df6:	50 12       	cpse	r5, r16
     df8:	f3 cf       	rjmp	.-26     	; 0xde0 <vfprintf+0x424>
     dfa:	c6 cf       	rjmp	.-116    	; 0xd88 <vfprintf+0x3cc>
     dfc:	85 e4       	ldi	r24, 0x45	; 69
     dfe:	90 e0       	ldi	r25, 0x00	; 0
     e00:	c7 cf       	rjmp	.-114    	; 0xd90 <vfprintf+0x3d4>
     e02:	8b e2       	ldi	r24, 0x2B	; 43
     e04:	d4 cf       	rjmp	.-88     	; 0xdae <vfprintf+0x3f2>
     e06:	8f 5f       	subi	r24, 0xFF	; 255
     e08:	fa e0       	ldi	r31, 0x0A	; 10
     e0a:	cf 1a       	sub	r12, r31
     e0c:	d1 08       	sbc	r13, r1
     e0e:	d4 cf       	rjmp	.-88     	; 0xdb8 <vfprintf+0x3fc>
     e10:	83 36       	cpi	r24, 0x63	; 99
     e12:	c1 f0       	breq	.+48     	; 0xe44 <vfprintf+0x488>
     e14:	83 37       	cpi	r24, 0x73	; 115
     e16:	09 f4       	brne	.+2      	; 0xe1a <vfprintf+0x45e>
     e18:	43 c0       	rjmp	.+134    	; 0xea0 <vfprintf+0x4e4>
     e1a:	83 35       	cpi	r24, 0x53	; 83
     e1c:	09 f0       	breq	.+2      	; 0xe20 <vfprintf+0x464>
     e1e:	5e c0       	rjmp	.+188    	; 0xedc <vfprintf+0x520>
     e20:	36 01       	movw	r6, r12
     e22:	f2 e0       	ldi	r31, 0x02	; 2
     e24:	6f 0e       	add	r6, r31
     e26:	71 1c       	adc	r7, r1
     e28:	f6 01       	movw	r30, r12
     e2a:	c0 80       	ld	r12, Z
     e2c:	d1 80       	ldd	r13, Z+1	; 0x01
     e2e:	06 ff       	sbrs	r16, 6
     e30:	4b c0       	rjmp	.+150    	; 0xec8 <vfprintf+0x50c>
     e32:	65 2d       	mov	r22, r5
     e34:	70 e0       	ldi	r23, 0x00	; 0
     e36:	c6 01       	movw	r24, r12
     e38:	0e 94 8b 09 	call	0x1316	; 0x1316 <strnlen_P>
     e3c:	9d 87       	std	Y+13, r25	; 0x0d
     e3e:	8c 87       	std	Y+12, r24	; 0x0c
     e40:	00 68       	ori	r16, 0x80	; 128
     e42:	0d c0       	rjmp	.+26     	; 0xe5e <vfprintf+0x4a2>
     e44:	36 01       	movw	r6, r12
     e46:	32 e0       	ldi	r19, 0x02	; 2
     e48:	63 0e       	add	r6, r19
     e4a:	71 1c       	adc	r7, r1
     e4c:	f6 01       	movw	r30, r12
     e4e:	80 81       	ld	r24, Z
     e50:	89 83       	std	Y+1, r24	; 0x01
     e52:	21 e0       	ldi	r18, 0x01	; 1
     e54:	30 e0       	ldi	r19, 0x00	; 0
     e56:	3d 87       	std	Y+13, r19	; 0x0d
     e58:	2c 87       	std	Y+12, r18	; 0x0c
     e5a:	65 01       	movw	r12, r10
     e5c:	0f 77       	andi	r16, 0x7F	; 127
     e5e:	03 fd       	sbrc	r16, 3
     e60:	07 c0       	rjmp	.+14     	; 0xe70 <vfprintf+0x4b4>
     e62:	89 2d       	mov	r24, r9
     e64:	90 e0       	ldi	r25, 0x00	; 0
     e66:	2c 85       	ldd	r18, Y+12	; 0x0c
     e68:	3d 85       	ldd	r19, Y+13	; 0x0d
     e6a:	28 17       	cp	r18, r24
     e6c:	39 07       	cpc	r19, r25
     e6e:	78 f1       	brcs	.+94     	; 0xece <vfprintf+0x512>
     e70:	49 2c       	mov	r4, r9
     e72:	ec 85       	ldd	r30, Y+12	; 0x0c
     e74:	fd 85       	ldd	r31, Y+13	; 0x0d
     e76:	ef 2b       	or	r30, r31
     e78:	09 f4       	brne	.+2      	; 0xe7c <vfprintf+0x4c0>
     e7a:	91 ce       	rjmp	.-734    	; 0xb9e <vfprintf+0x1e2>
     e7c:	f6 01       	movw	r30, r12
     e7e:	07 fd       	sbrc	r16, 7
     e80:	85 91       	lpm	r24, Z+
     e82:	07 ff       	sbrs	r16, 7
     e84:	81 91       	ld	r24, Z+
     e86:	6f 01       	movw	r12, r30
     e88:	b7 01       	movw	r22, r14
     e8a:	90 e0       	ldi	r25, 0x00	; 0
     e8c:	0e 94 a1 09 	call	0x1342	; 0x1342 <fputc>
     e90:	41 10       	cpse	r4, r1
     e92:	4a 94       	dec	r4
     e94:	8c 85       	ldd	r24, Y+12	; 0x0c
     e96:	9d 85       	ldd	r25, Y+13	; 0x0d
     e98:	01 97       	sbiw	r24, 0x01	; 1
     e9a:	9d 87       	std	Y+13, r25	; 0x0d
     e9c:	8c 87       	std	Y+12, r24	; 0x0c
     e9e:	e9 cf       	rjmp	.-46     	; 0xe72 <vfprintf+0x4b6>
     ea0:	36 01       	movw	r6, r12
     ea2:	32 e0       	ldi	r19, 0x02	; 2
     ea4:	63 0e       	add	r6, r19
     ea6:	71 1c       	adc	r7, r1
     ea8:	f6 01       	movw	r30, r12
     eaa:	c0 80       	ld	r12, Z
     eac:	d1 80       	ldd	r13, Z+1	; 0x01
     eae:	06 ff       	sbrs	r16, 6
     eb0:	08 c0       	rjmp	.+16     	; 0xec2 <vfprintf+0x506>
     eb2:	65 2d       	mov	r22, r5
     eb4:	70 e0       	ldi	r23, 0x00	; 0
     eb6:	c6 01       	movw	r24, r12
     eb8:	0e 94 96 09 	call	0x132c	; 0x132c <strnlen>
     ebc:	9d 87       	std	Y+13, r25	; 0x0d
     ebe:	8c 87       	std	Y+12, r24	; 0x0c
     ec0:	cd cf       	rjmp	.-102    	; 0xe5c <vfprintf+0x4a0>
     ec2:	6f ef       	ldi	r22, 0xFF	; 255
     ec4:	7f ef       	ldi	r23, 0xFF	; 255
     ec6:	f7 cf       	rjmp	.-18     	; 0xeb6 <vfprintf+0x4fa>
     ec8:	6f ef       	ldi	r22, 0xFF	; 255
     eca:	7f ef       	ldi	r23, 0xFF	; 255
     ecc:	b4 cf       	rjmp	.-152    	; 0xe36 <vfprintf+0x47a>
     ece:	b7 01       	movw	r22, r14
     ed0:	80 e2       	ldi	r24, 0x20	; 32
     ed2:	90 e0       	ldi	r25, 0x00	; 0
     ed4:	0e 94 a1 09 	call	0x1342	; 0x1342 <fputc>
     ed8:	9a 94       	dec	r9
     eda:	c3 cf       	rjmp	.-122    	; 0xe62 <vfprintf+0x4a6>
     edc:	84 36       	cpi	r24, 0x64	; 100
     ede:	11 f0       	breq	.+4      	; 0xee4 <vfprintf+0x528>
     ee0:	89 36       	cpi	r24, 0x69	; 105
     ee2:	c1 f5       	brne	.+112    	; 0xf54 <vfprintf+0x598>
     ee4:	36 01       	movw	r6, r12
     ee6:	07 ff       	sbrs	r16, 7
     ee8:	2a c0       	rjmp	.+84     	; 0xf3e <vfprintf+0x582>
     eea:	f4 e0       	ldi	r31, 0x04	; 4
     eec:	6f 0e       	add	r6, r31
     eee:	71 1c       	adc	r7, r1
     ef0:	f6 01       	movw	r30, r12
     ef2:	60 81       	ld	r22, Z
     ef4:	71 81       	ldd	r23, Z+1	; 0x01
     ef6:	82 81       	ldd	r24, Z+2	; 0x02
     ef8:	93 81       	ldd	r25, Z+3	; 0x03
     efa:	10 2f       	mov	r17, r16
     efc:	1f 76       	andi	r17, 0x6F	; 111
     efe:	97 ff       	sbrs	r25, 7
     f00:	08 c0       	rjmp	.+16     	; 0xf12 <vfprintf+0x556>
     f02:	90 95       	com	r25
     f04:	80 95       	com	r24
     f06:	70 95       	com	r23
     f08:	61 95       	neg	r22
     f0a:	7f 4f       	sbci	r23, 0xFF	; 255
     f0c:	8f 4f       	sbci	r24, 0xFF	; 255
     f0e:	9f 4f       	sbci	r25, 0xFF	; 255
     f10:	10 68       	ori	r17, 0x80	; 128
     f12:	2a e0       	ldi	r18, 0x0A	; 10
     f14:	30 e0       	ldi	r19, 0x00	; 0
     f16:	a5 01       	movw	r20, r10
     f18:	0e 94 01 0a 	call	0x1402	; 0x1402 <__ultoa_invert>
     f1c:	c8 2e       	mov	r12, r24
     f1e:	ca 18       	sub	r12, r10
     f20:	16 ff       	sbrs	r17, 6
     f22:	59 c0       	rjmp	.+178    	; 0xfd6 <vfprintf+0x61a>
     f24:	01 2f       	mov	r16, r17
     f26:	0e 7f       	andi	r16, 0xFE	; 254
     f28:	c5 14       	cp	r12, r5
     f2a:	08 f0       	brcs	.+2      	; 0xf2e <vfprintf+0x572>
     f2c:	90 c0       	rjmp	.+288    	; 0x104e <vfprintf+0x692>
     f2e:	14 ff       	sbrs	r17, 4
     f30:	04 c0       	rjmp	.+8      	; 0xf3a <vfprintf+0x57e>
     f32:	12 fd       	sbrc	r17, 2
     f34:	02 c0       	rjmp	.+4      	; 0xf3a <vfprintf+0x57e>
     f36:	01 2f       	mov	r16, r17
     f38:	0e 7e       	andi	r16, 0xEE	; 238
     f3a:	d5 2c       	mov	r13, r5
     f3c:	4e c0       	rjmp	.+156    	; 0xfda <vfprintf+0x61e>
     f3e:	f2 e0       	ldi	r31, 0x02	; 2
     f40:	6f 0e       	add	r6, r31
     f42:	71 1c       	adc	r7, r1
     f44:	f6 01       	movw	r30, r12
     f46:	60 81       	ld	r22, Z
     f48:	71 81       	ldd	r23, Z+1	; 0x01
     f4a:	07 2e       	mov	r0, r23
     f4c:	00 0c       	add	r0, r0
     f4e:	88 0b       	sbc	r24, r24
     f50:	99 0b       	sbc	r25, r25
     f52:	d3 cf       	rjmp	.-90     	; 0xefa <vfprintf+0x53e>
     f54:	10 2f       	mov	r17, r16
     f56:	85 37       	cpi	r24, 0x75	; 117
     f58:	a9 f4       	brne	.+42     	; 0xf84 <vfprintf+0x5c8>
     f5a:	1f 7e       	andi	r17, 0xEF	; 239
     f5c:	2a e0       	ldi	r18, 0x0A	; 10
     f5e:	30 e0       	ldi	r19, 0x00	; 0
     f60:	36 01       	movw	r6, r12
     f62:	17 ff       	sbrs	r17, 7
     f64:	2f c0       	rjmp	.+94     	; 0xfc4 <vfprintf+0x608>
     f66:	f4 e0       	ldi	r31, 0x04	; 4
     f68:	6f 0e       	add	r6, r31
     f6a:	71 1c       	adc	r7, r1
     f6c:	f6 01       	movw	r30, r12
     f6e:	60 81       	ld	r22, Z
     f70:	71 81       	ldd	r23, Z+1	; 0x01
     f72:	82 81       	ldd	r24, Z+2	; 0x02
     f74:	93 81       	ldd	r25, Z+3	; 0x03
     f76:	a5 01       	movw	r20, r10
     f78:	0e 94 01 0a 	call	0x1402	; 0x1402 <__ultoa_invert>
     f7c:	c8 2e       	mov	r12, r24
     f7e:	ca 18       	sub	r12, r10
     f80:	1f 77       	andi	r17, 0x7F	; 127
     f82:	ce cf       	rjmp	.-100    	; 0xf20 <vfprintf+0x564>
     f84:	19 7f       	andi	r17, 0xF9	; 249
     f86:	8f 36       	cpi	r24, 0x6F	; 111
     f88:	d1 f0       	breq	.+52     	; 0xfbe <vfprintf+0x602>
     f8a:	48 f4       	brcc	.+18     	; 0xf9e <vfprintf+0x5e2>
     f8c:	88 35       	cpi	r24, 0x58	; 88
     f8e:	91 f0       	breq	.+36     	; 0xfb4 <vfprintf+0x5f8>
     f90:	f7 01       	movw	r30, r14
     f92:	86 81       	ldd	r24, Z+6	; 0x06
     f94:	97 81       	ldd	r25, Z+7	; 0x07
     f96:	60 96       	adiw	r28, 0x10	; 16
     f98:	e2 e1       	ldi	r30, 0x12	; 18
     f9a:	0c 94 92 08 	jmp	0x1124	; 0x1124 <__epilogue_restores__>
     f9e:	80 37       	cpi	r24, 0x70	; 112
     fa0:	39 f0       	breq	.+14     	; 0xfb0 <vfprintf+0x5f4>
     fa2:	88 37       	cpi	r24, 0x78	; 120
     fa4:	a9 f7       	brne	.-22     	; 0xf90 <vfprintf+0x5d4>
     fa6:	14 fd       	sbrc	r17, 4
     fa8:	14 60       	ori	r17, 0x04	; 4
     faa:	20 e1       	ldi	r18, 0x10	; 16
     fac:	30 e0       	ldi	r19, 0x00	; 0
     fae:	d8 cf       	rjmp	.-80     	; 0xf60 <vfprintf+0x5a4>
     fb0:	10 61       	ori	r17, 0x10	; 16
     fb2:	f9 cf       	rjmp	.-14     	; 0xfa6 <vfprintf+0x5ea>
     fb4:	04 fd       	sbrc	r16, 4
     fb6:	16 60       	ori	r17, 0x06	; 6
     fb8:	20 e1       	ldi	r18, 0x10	; 16
     fba:	32 e0       	ldi	r19, 0x02	; 2
     fbc:	d1 cf       	rjmp	.-94     	; 0xf60 <vfprintf+0x5a4>
     fbe:	28 e0       	ldi	r18, 0x08	; 8
     fc0:	30 e0       	ldi	r19, 0x00	; 0
     fc2:	ce cf       	rjmp	.-100    	; 0xf60 <vfprintf+0x5a4>
     fc4:	f2 e0       	ldi	r31, 0x02	; 2
     fc6:	6f 0e       	add	r6, r31
     fc8:	71 1c       	adc	r7, r1
     fca:	f6 01       	movw	r30, r12
     fcc:	60 81       	ld	r22, Z
     fce:	71 81       	ldd	r23, Z+1	; 0x01
     fd0:	80 e0       	ldi	r24, 0x00	; 0
     fd2:	90 e0       	ldi	r25, 0x00	; 0
     fd4:	d0 cf       	rjmp	.-96     	; 0xf76 <vfprintf+0x5ba>
     fd6:	dc 2c       	mov	r13, r12
     fd8:	01 2f       	mov	r16, r17
     fda:	04 ff       	sbrs	r16, 4
     fdc:	41 c0       	rjmp	.+130    	; 0x1060 <vfprintf+0x6a4>
     fde:	fe 01       	movw	r30, r28
     fe0:	ec 0d       	add	r30, r12
     fe2:	f1 1d       	adc	r31, r1
     fe4:	80 81       	ld	r24, Z
     fe6:	80 33       	cpi	r24, 0x30	; 48
     fe8:	a1 f5       	brne	.+104    	; 0x1052 <vfprintf+0x696>
     fea:	09 7e       	andi	r16, 0xE9	; 233
     fec:	f0 2f       	mov	r31, r16
     fee:	f8 70       	andi	r31, 0x08	; 8
     ff0:	4f 2e       	mov	r4, r31
     ff2:	03 fd       	sbrc	r16, 3
     ff4:	43 c0       	rjmp	.+134    	; 0x107c <vfprintf+0x6c0>
     ff6:	00 ff       	sbrs	r16, 0
     ff8:	3d c0       	rjmp	.+122    	; 0x1074 <vfprintf+0x6b8>
     ffa:	5c 2c       	mov	r5, r12
     ffc:	d9 14       	cp	r13, r9
     ffe:	10 f4       	brcc	.+4      	; 0x1004 <vfprintf+0x648>
    1000:	59 0c       	add	r5, r9
    1002:	5d 18       	sub	r5, r13
    1004:	04 ff       	sbrs	r16, 4
    1006:	42 c0       	rjmp	.+132    	; 0x108c <vfprintf+0x6d0>
    1008:	b7 01       	movw	r22, r14
    100a:	80 e3       	ldi	r24, 0x30	; 48
    100c:	90 e0       	ldi	r25, 0x00	; 0
    100e:	0e 94 a1 09 	call	0x1342	; 0x1342 <fputc>
    1012:	02 ff       	sbrs	r16, 2
    1014:	07 c0       	rjmp	.+14     	; 0x1024 <vfprintf+0x668>
    1016:	01 fd       	sbrc	r16, 1
    1018:	36 c0       	rjmp	.+108    	; 0x1086 <vfprintf+0x6ca>
    101a:	88 e7       	ldi	r24, 0x78	; 120
    101c:	90 e0       	ldi	r25, 0x00	; 0
    101e:	b7 01       	movw	r22, r14
    1020:	0e 94 a1 09 	call	0x1342	; 0x1342 <fputc>
    1024:	c5 14       	cp	r12, r5
    1026:	08 f4       	brcc	.+2      	; 0x102a <vfprintf+0x66e>
    1028:	3e c0       	rjmp	.+124    	; 0x10a6 <vfprintf+0x6ea>
    102a:	ca 94       	dec	r12
    102c:	0c 2d       	mov	r16, r12
    102e:	10 e0       	ldi	r17, 0x00	; 0
    1030:	0f 5f       	subi	r16, 0xFF	; 255
    1032:	1f 4f       	sbci	r17, 0xFF	; 255
    1034:	0a 0d       	add	r16, r10
    1036:	1b 1d       	adc	r17, r11
    1038:	f8 01       	movw	r30, r16
    103a:	82 91       	ld	r24, -Z
    103c:	8f 01       	movw	r16, r30
    103e:	b7 01       	movw	r22, r14
    1040:	90 e0       	ldi	r25, 0x00	; 0
    1042:	0e 94 a1 09 	call	0x1342	; 0x1342 <fputc>
    1046:	0a 15       	cp	r16, r10
    1048:	1b 05       	cpc	r17, r11
    104a:	b1 f7       	brne	.-20     	; 0x1038 <vfprintf+0x67c>
    104c:	a8 cd       	rjmp	.-1200   	; 0xb9e <vfprintf+0x1e2>
    104e:	dc 2c       	mov	r13, r12
    1050:	c4 cf       	rjmp	.-120    	; 0xfda <vfprintf+0x61e>
    1052:	02 fd       	sbrc	r16, 2
    1054:	02 c0       	rjmp	.+4      	; 0x105a <vfprintf+0x69e>
    1056:	d3 94       	inc	r13
    1058:	c9 cf       	rjmp	.-110    	; 0xfec <vfprintf+0x630>
    105a:	d3 94       	inc	r13
    105c:	d3 94       	inc	r13
    105e:	c6 cf       	rjmp	.-116    	; 0xfec <vfprintf+0x630>
    1060:	80 2f       	mov	r24, r16
    1062:	86 78       	andi	r24, 0x86	; 134
    1064:	19 f2       	breq	.-122    	; 0xfec <vfprintf+0x630>
    1066:	f7 cf       	rjmp	.-18     	; 0x1056 <vfprintf+0x69a>
    1068:	b7 01       	movw	r22, r14
    106a:	80 e2       	ldi	r24, 0x20	; 32
    106c:	90 e0       	ldi	r25, 0x00	; 0
    106e:	0e 94 a1 09 	call	0x1342	; 0x1342 <fputc>
    1072:	d3 94       	inc	r13
    1074:	d9 14       	cp	r13, r9
    1076:	c0 f3       	brcs	.-16     	; 0x1068 <vfprintf+0x6ac>
    1078:	41 2c       	mov	r4, r1
    107a:	c4 cf       	rjmp	.-120    	; 0x1004 <vfprintf+0x648>
    107c:	d9 14       	cp	r13, r9
    107e:	e0 f7       	brcc	.-8      	; 0x1078 <vfprintf+0x6bc>
    1080:	49 2c       	mov	r4, r9
    1082:	4d 18       	sub	r4, r13
    1084:	bf cf       	rjmp	.-130    	; 0x1004 <vfprintf+0x648>
    1086:	88 e5       	ldi	r24, 0x58	; 88
    1088:	90 e0       	ldi	r25, 0x00	; 0
    108a:	c9 cf       	rjmp	.-110    	; 0x101e <vfprintf+0x662>
    108c:	80 2f       	mov	r24, r16
    108e:	86 78       	andi	r24, 0x86	; 134
    1090:	49 f2       	breq	.-110    	; 0x1024 <vfprintf+0x668>
    1092:	01 ff       	sbrs	r16, 1
    1094:	06 c0       	rjmp	.+12     	; 0x10a2 <vfprintf+0x6e6>
    1096:	8b e2       	ldi	r24, 0x2B	; 43
    1098:	07 fd       	sbrc	r16, 7
    109a:	8d e2       	ldi	r24, 0x2D	; 45
    109c:	b7 01       	movw	r22, r14
    109e:	90 e0       	ldi	r25, 0x00	; 0
    10a0:	bf cf       	rjmp	.-130    	; 0x1020 <vfprintf+0x664>
    10a2:	80 e2       	ldi	r24, 0x20	; 32
    10a4:	f9 cf       	rjmp	.-14     	; 0x1098 <vfprintf+0x6dc>
    10a6:	b7 01       	movw	r22, r14
    10a8:	80 e3       	ldi	r24, 0x30	; 48
    10aa:	90 e0       	ldi	r25, 0x00	; 0
    10ac:	0e 94 a1 09 	call	0x1342	; 0x1342 <fputc>
    10b0:	5a 94       	dec	r5
    10b2:	b8 cf       	rjmp	.-144    	; 0x1024 <vfprintf+0x668>
    10b4:	8f ef       	ldi	r24, 0xFF	; 255
    10b6:	9f ef       	ldi	r25, 0xFF	; 255
    10b8:	6e cf       	rjmp	.-292    	; 0xf96 <vfprintf+0x5da>
    10ba:	24 e0       	ldi	r18, 0x04	; 4
    10bc:	29 15       	cp	r18, r9
    10be:	08 f4       	brcc	.+2      	; 0x10c2 <vfprintf+0x706>
    10c0:	78 cd       	rjmp	.-1296   	; 0xbb2 <vfprintf+0x1f6>
    10c2:	41 2c       	mov	r4, r1
    10c4:	5b cd       	rjmp	.-1354   	; 0xb7c <vfprintf+0x1c0>

000010c6 <startTimers>:
    10c6:	83 e0       	ldi	r24, 0x03	; 3
    10c8:	84 bd       	out	0x24, r24	; 36
    10ca:	85 bd       	out	0x25, r24	; 37
    10cc:	91 e0       	ldi	r25, 0x01	; 1
    10ce:	90 93 80 00 	sts	0x0080, r25	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
    10d2:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
    10d6:	90 93 b0 00 	sts	0x00B0, r25	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
    10da:	84 e0       	ldi	r24, 0x04	; 4
    10dc:	80 93 b1 00 	sts	0x00B1, r24	; 0x8000b1 <__TEXT_REGION_LENGTH__+0x7e00b1>
    10e0:	ee e6       	ldi	r30, 0x6E	; 110
    10e2:	f0 e0       	ldi	r31, 0x00	; 0
    10e4:	80 81       	ld	r24, Z
    10e6:	81 60       	ori	r24, 0x01	; 1
    10e8:	80 83       	st	Z, r24
    10ea:	08 95       	ret

000010ec <__prologue_saves__>:
    10ec:	2f 92       	push	r2
    10ee:	3f 92       	push	r3
    10f0:	4f 92       	push	r4
    10f2:	5f 92       	push	r5
    10f4:	6f 92       	push	r6
    10f6:	7f 92       	push	r7
    10f8:	8f 92       	push	r8
    10fa:	9f 92       	push	r9
    10fc:	af 92       	push	r10
    10fe:	bf 92       	push	r11
    1100:	cf 92       	push	r12
    1102:	df 92       	push	r13
    1104:	ef 92       	push	r14
    1106:	ff 92       	push	r15
    1108:	0f 93       	push	r16
    110a:	1f 93       	push	r17
    110c:	cf 93       	push	r28
    110e:	df 93       	push	r29
    1110:	cd b7       	in	r28, 0x3d	; 61
    1112:	de b7       	in	r29, 0x3e	; 62
    1114:	ca 1b       	sub	r28, r26
    1116:	db 0b       	sbc	r29, r27
    1118:	0f b6       	in	r0, 0x3f	; 63
    111a:	f8 94       	cli
    111c:	de bf       	out	0x3e, r29	; 62
    111e:	0f be       	out	0x3f, r0	; 63
    1120:	cd bf       	out	0x3d, r28	; 61
    1122:	09 94       	ijmp

00001124 <__epilogue_restores__>:
    1124:	2a 88       	ldd	r2, Y+18	; 0x12
    1126:	39 88       	ldd	r3, Y+17	; 0x11
    1128:	48 88       	ldd	r4, Y+16	; 0x10
    112a:	5f 84       	ldd	r5, Y+15	; 0x0f
    112c:	6e 84       	ldd	r6, Y+14	; 0x0e
    112e:	7d 84       	ldd	r7, Y+13	; 0x0d
    1130:	8c 84       	ldd	r8, Y+12	; 0x0c
    1132:	9b 84       	ldd	r9, Y+11	; 0x0b
    1134:	aa 84       	ldd	r10, Y+10	; 0x0a
    1136:	b9 84       	ldd	r11, Y+9	; 0x09
    1138:	c8 84       	ldd	r12, Y+8	; 0x08
    113a:	df 80       	ldd	r13, Y+7	; 0x07
    113c:	ee 80       	ldd	r14, Y+6	; 0x06
    113e:	fd 80       	ldd	r15, Y+5	; 0x05
    1140:	0c 81       	ldd	r16, Y+4	; 0x04
    1142:	1b 81       	ldd	r17, Y+3	; 0x03
    1144:	aa 81       	ldd	r26, Y+2	; 0x02
    1146:	b9 81       	ldd	r27, Y+1	; 0x01
    1148:	ce 0f       	add	r28, r30
    114a:	d1 1d       	adc	r29, r1
    114c:	0f b6       	in	r0, 0x3f	; 63
    114e:	f8 94       	cli
    1150:	de bf       	out	0x3e, r29	; 62
    1152:	0f be       	out	0x3f, r0	; 63
    1154:	cd bf       	out	0x3d, r28	; 61
    1156:	ed 01       	movw	r28, r26
    1158:	08 95       	ret

0000115a <__tablejump2__>:
    115a:	ee 0f       	add	r30, r30
    115c:	ff 1f       	adc	r31, r31
    115e:	05 90       	lpm	r0, Z+
    1160:	f4 91       	lpm	r31, Z
    1162:	e0 2d       	mov	r30, r0
    1164:	09 94       	ijmp

00001166 <__ftoa_engine>:
    1166:	28 30       	cpi	r18, 0x08	; 8
    1168:	08 f0       	brcs	.+2      	; 0x116c <__ftoa_engine+0x6>
    116a:	27 e0       	ldi	r18, 0x07	; 7
    116c:	33 27       	eor	r19, r19
    116e:	da 01       	movw	r26, r20
    1170:	99 0f       	add	r25, r25
    1172:	31 1d       	adc	r19, r1
    1174:	87 fd       	sbrc	r24, 7
    1176:	91 60       	ori	r25, 0x01	; 1
    1178:	00 96       	adiw	r24, 0x00	; 0
    117a:	61 05       	cpc	r22, r1
    117c:	71 05       	cpc	r23, r1
    117e:	39 f4       	brne	.+14     	; 0x118e <__ftoa_engine+0x28>
    1180:	32 60       	ori	r19, 0x02	; 2
    1182:	2e 5f       	subi	r18, 0xFE	; 254
    1184:	3d 93       	st	X+, r19
    1186:	30 e3       	ldi	r19, 0x30	; 48
    1188:	2a 95       	dec	r18
    118a:	e1 f7       	brne	.-8      	; 0x1184 <__ftoa_engine+0x1e>
    118c:	08 95       	ret
    118e:	9f 3f       	cpi	r25, 0xFF	; 255
    1190:	30 f0       	brcs	.+12     	; 0x119e <__ftoa_engine+0x38>
    1192:	80 38       	cpi	r24, 0x80	; 128
    1194:	71 05       	cpc	r23, r1
    1196:	61 05       	cpc	r22, r1
    1198:	09 f0       	breq	.+2      	; 0x119c <__ftoa_engine+0x36>
    119a:	3c 5f       	subi	r19, 0xFC	; 252
    119c:	3c 5f       	subi	r19, 0xFC	; 252
    119e:	3d 93       	st	X+, r19
    11a0:	91 30       	cpi	r25, 0x01	; 1
    11a2:	08 f0       	brcs	.+2      	; 0x11a6 <__ftoa_engine+0x40>
    11a4:	80 68       	ori	r24, 0x80	; 128
    11a6:	91 1d       	adc	r25, r1
    11a8:	df 93       	push	r29
    11aa:	cf 93       	push	r28
    11ac:	1f 93       	push	r17
    11ae:	0f 93       	push	r16
    11b0:	ff 92       	push	r15
    11b2:	ef 92       	push	r14
    11b4:	19 2f       	mov	r17, r25
    11b6:	98 7f       	andi	r25, 0xF8	; 248
    11b8:	96 95       	lsr	r25
    11ba:	e9 2f       	mov	r30, r25
    11bc:	96 95       	lsr	r25
    11be:	96 95       	lsr	r25
    11c0:	e9 0f       	add	r30, r25
    11c2:	ff 27       	eor	r31, r31
    11c4:	e6 53       	subi	r30, 0x36	; 54
    11c6:	ff 4f       	sbci	r31, 0xFF	; 255
    11c8:	99 27       	eor	r25, r25
    11ca:	33 27       	eor	r19, r19
    11cc:	ee 24       	eor	r14, r14
    11ce:	ff 24       	eor	r15, r15
    11d0:	a7 01       	movw	r20, r14
    11d2:	e7 01       	movw	r28, r14
    11d4:	05 90       	lpm	r0, Z+
    11d6:	08 94       	sec
    11d8:	07 94       	ror	r0
    11da:	28 f4       	brcc	.+10     	; 0x11e6 <__ftoa_engine+0x80>
    11dc:	36 0f       	add	r19, r22
    11de:	e7 1e       	adc	r14, r23
    11e0:	f8 1e       	adc	r15, r24
    11e2:	49 1f       	adc	r20, r25
    11e4:	51 1d       	adc	r21, r1
    11e6:	66 0f       	add	r22, r22
    11e8:	77 1f       	adc	r23, r23
    11ea:	88 1f       	adc	r24, r24
    11ec:	99 1f       	adc	r25, r25
    11ee:	06 94       	lsr	r0
    11f0:	a1 f7       	brne	.-24     	; 0x11da <__ftoa_engine+0x74>
    11f2:	05 90       	lpm	r0, Z+
    11f4:	07 94       	ror	r0
    11f6:	28 f4       	brcc	.+10     	; 0x1202 <__ftoa_engine+0x9c>
    11f8:	e7 0e       	add	r14, r23
    11fa:	f8 1e       	adc	r15, r24
    11fc:	49 1f       	adc	r20, r25
    11fe:	56 1f       	adc	r21, r22
    1200:	c1 1d       	adc	r28, r1
    1202:	77 0f       	add	r23, r23
    1204:	88 1f       	adc	r24, r24
    1206:	99 1f       	adc	r25, r25
    1208:	66 1f       	adc	r22, r22
    120a:	06 94       	lsr	r0
    120c:	a1 f7       	brne	.-24     	; 0x11f6 <__ftoa_engine+0x90>
    120e:	05 90       	lpm	r0, Z+
    1210:	07 94       	ror	r0
    1212:	28 f4       	brcc	.+10     	; 0x121e <__ftoa_engine+0xb8>
    1214:	f8 0e       	add	r15, r24
    1216:	49 1f       	adc	r20, r25
    1218:	56 1f       	adc	r21, r22
    121a:	c7 1f       	adc	r28, r23
    121c:	d1 1d       	adc	r29, r1
    121e:	88 0f       	add	r24, r24
    1220:	99 1f       	adc	r25, r25
    1222:	66 1f       	adc	r22, r22
    1224:	77 1f       	adc	r23, r23
    1226:	06 94       	lsr	r0
    1228:	a1 f7       	brne	.-24     	; 0x1212 <__ftoa_engine+0xac>
    122a:	05 90       	lpm	r0, Z+
    122c:	07 94       	ror	r0
    122e:	20 f4       	brcc	.+8      	; 0x1238 <__ftoa_engine+0xd2>
    1230:	49 0f       	add	r20, r25
    1232:	56 1f       	adc	r21, r22
    1234:	c7 1f       	adc	r28, r23
    1236:	d8 1f       	adc	r29, r24
    1238:	99 0f       	add	r25, r25
    123a:	66 1f       	adc	r22, r22
    123c:	77 1f       	adc	r23, r23
    123e:	88 1f       	adc	r24, r24
    1240:	06 94       	lsr	r0
    1242:	a9 f7       	brne	.-22     	; 0x122e <__ftoa_engine+0xc8>
    1244:	84 91       	lpm	r24, Z
    1246:	10 95       	com	r17
    1248:	17 70       	andi	r17, 0x07	; 7
    124a:	41 f0       	breq	.+16     	; 0x125c <__ftoa_engine+0xf6>
    124c:	d6 95       	lsr	r29
    124e:	c7 95       	ror	r28
    1250:	57 95       	ror	r21
    1252:	47 95       	ror	r20
    1254:	f7 94       	ror	r15
    1256:	e7 94       	ror	r14
    1258:	1a 95       	dec	r17
    125a:	c1 f7       	brne	.-16     	; 0x124c <__ftoa_engine+0xe6>
    125c:	e0 e7       	ldi	r30, 0x70	; 112
    125e:	f0 e0       	ldi	r31, 0x00	; 0
    1260:	68 94       	set
    1262:	15 90       	lpm	r1, Z+
    1264:	15 91       	lpm	r17, Z+
    1266:	35 91       	lpm	r19, Z+
    1268:	65 91       	lpm	r22, Z+
    126a:	95 91       	lpm	r25, Z+
    126c:	05 90       	lpm	r0, Z+
    126e:	7f e2       	ldi	r23, 0x2F	; 47
    1270:	73 95       	inc	r23
    1272:	e1 18       	sub	r14, r1
    1274:	f1 0a       	sbc	r15, r17
    1276:	43 0b       	sbc	r20, r19
    1278:	56 0b       	sbc	r21, r22
    127a:	c9 0b       	sbc	r28, r25
    127c:	d0 09       	sbc	r29, r0
    127e:	c0 f7       	brcc	.-16     	; 0x1270 <__ftoa_engine+0x10a>
    1280:	e1 0c       	add	r14, r1
    1282:	f1 1e       	adc	r15, r17
    1284:	43 1f       	adc	r20, r19
    1286:	56 1f       	adc	r21, r22
    1288:	c9 1f       	adc	r28, r25
    128a:	d0 1d       	adc	r29, r0
    128c:	7e f4       	brtc	.+30     	; 0x12ac <__ftoa_engine+0x146>
    128e:	70 33       	cpi	r23, 0x30	; 48
    1290:	11 f4       	brne	.+4      	; 0x1296 <__ftoa_engine+0x130>
    1292:	8a 95       	dec	r24
    1294:	e6 cf       	rjmp	.-52     	; 0x1262 <__ftoa_engine+0xfc>
    1296:	e8 94       	clt
    1298:	01 50       	subi	r16, 0x01	; 1
    129a:	30 f0       	brcs	.+12     	; 0x12a8 <__ftoa_engine+0x142>
    129c:	08 0f       	add	r16, r24
    129e:	0a f4       	brpl	.+2      	; 0x12a2 <__ftoa_engine+0x13c>
    12a0:	00 27       	eor	r16, r16
    12a2:	02 17       	cp	r16, r18
    12a4:	08 f4       	brcc	.+2      	; 0x12a8 <__ftoa_engine+0x142>
    12a6:	20 2f       	mov	r18, r16
    12a8:	23 95       	inc	r18
    12aa:	02 2f       	mov	r16, r18
    12ac:	7a 33       	cpi	r23, 0x3A	; 58
    12ae:	28 f0       	brcs	.+10     	; 0x12ba <__ftoa_engine+0x154>
    12b0:	79 e3       	ldi	r23, 0x39	; 57
    12b2:	7d 93       	st	X+, r23
    12b4:	2a 95       	dec	r18
    12b6:	e9 f7       	brne	.-6      	; 0x12b2 <__ftoa_engine+0x14c>
    12b8:	10 c0       	rjmp	.+32     	; 0x12da <__ftoa_engine+0x174>
    12ba:	7d 93       	st	X+, r23
    12bc:	2a 95       	dec	r18
    12be:	89 f6       	brne	.-94     	; 0x1262 <__ftoa_engine+0xfc>
    12c0:	06 94       	lsr	r0
    12c2:	97 95       	ror	r25
    12c4:	67 95       	ror	r22
    12c6:	37 95       	ror	r19
    12c8:	17 95       	ror	r17
    12ca:	17 94       	ror	r1
    12cc:	e1 18       	sub	r14, r1
    12ce:	f1 0a       	sbc	r15, r17
    12d0:	43 0b       	sbc	r20, r19
    12d2:	56 0b       	sbc	r21, r22
    12d4:	c9 0b       	sbc	r28, r25
    12d6:	d0 09       	sbc	r29, r0
    12d8:	98 f0       	brcs	.+38     	; 0x1300 <__ftoa_engine+0x19a>
    12da:	23 95       	inc	r18
    12dc:	7e 91       	ld	r23, -X
    12de:	73 95       	inc	r23
    12e0:	7a 33       	cpi	r23, 0x3A	; 58
    12e2:	08 f0       	brcs	.+2      	; 0x12e6 <__ftoa_engine+0x180>
    12e4:	70 e3       	ldi	r23, 0x30	; 48
    12e6:	7c 93       	st	X, r23
    12e8:	20 13       	cpse	r18, r16
    12ea:	b8 f7       	brcc	.-18     	; 0x12da <__ftoa_engine+0x174>
    12ec:	7e 91       	ld	r23, -X
    12ee:	70 61       	ori	r23, 0x10	; 16
    12f0:	7d 93       	st	X+, r23
    12f2:	30 f0       	brcs	.+12     	; 0x1300 <__ftoa_engine+0x19a>
    12f4:	83 95       	inc	r24
    12f6:	71 e3       	ldi	r23, 0x31	; 49
    12f8:	7d 93       	st	X+, r23
    12fa:	70 e3       	ldi	r23, 0x30	; 48
    12fc:	2a 95       	dec	r18
    12fe:	e1 f7       	brne	.-8      	; 0x12f8 <__ftoa_engine+0x192>
    1300:	11 24       	eor	r1, r1
    1302:	ef 90       	pop	r14
    1304:	ff 90       	pop	r15
    1306:	0f 91       	pop	r16
    1308:	1f 91       	pop	r17
    130a:	cf 91       	pop	r28
    130c:	df 91       	pop	r29
    130e:	99 27       	eor	r25, r25
    1310:	87 fd       	sbrc	r24, 7
    1312:	90 95       	com	r25
    1314:	08 95       	ret

00001316 <strnlen_P>:
    1316:	fc 01       	movw	r30, r24
    1318:	05 90       	lpm	r0, Z+
    131a:	61 50       	subi	r22, 0x01	; 1
    131c:	70 40       	sbci	r23, 0x00	; 0
    131e:	01 10       	cpse	r0, r1
    1320:	d8 f7       	brcc	.-10     	; 0x1318 <strnlen_P+0x2>
    1322:	80 95       	com	r24
    1324:	90 95       	com	r25
    1326:	8e 0f       	add	r24, r30
    1328:	9f 1f       	adc	r25, r31
    132a:	08 95       	ret

0000132c <strnlen>:
    132c:	fc 01       	movw	r30, r24
    132e:	61 50       	subi	r22, 0x01	; 1
    1330:	70 40       	sbci	r23, 0x00	; 0
    1332:	01 90       	ld	r0, Z+
    1334:	01 10       	cpse	r0, r1
    1336:	d8 f7       	brcc	.-10     	; 0x132e <strnlen+0x2>
    1338:	80 95       	com	r24
    133a:	90 95       	com	r25
    133c:	8e 0f       	add	r24, r30
    133e:	9f 1f       	adc	r25, r31
    1340:	08 95       	ret

00001342 <fputc>:
    1342:	0f 93       	push	r16
    1344:	1f 93       	push	r17
    1346:	cf 93       	push	r28
    1348:	df 93       	push	r29
    134a:	18 2f       	mov	r17, r24
    134c:	09 2f       	mov	r16, r25
    134e:	eb 01       	movw	r28, r22
    1350:	8b 81       	ldd	r24, Y+3	; 0x03
    1352:	81 fd       	sbrc	r24, 1
    1354:	09 c0       	rjmp	.+18     	; 0x1368 <fputc+0x26>
    1356:	1f ef       	ldi	r17, 0xFF	; 255
    1358:	0f ef       	ldi	r16, 0xFF	; 255
    135a:	81 2f       	mov	r24, r17
    135c:	90 2f       	mov	r25, r16
    135e:	df 91       	pop	r29
    1360:	cf 91       	pop	r28
    1362:	1f 91       	pop	r17
    1364:	0f 91       	pop	r16
    1366:	08 95       	ret
    1368:	82 ff       	sbrs	r24, 2
    136a:	14 c0       	rjmp	.+40     	; 0x1394 <fputc+0x52>
    136c:	2e 81       	ldd	r18, Y+6	; 0x06
    136e:	3f 81       	ldd	r19, Y+7	; 0x07
    1370:	8c 81       	ldd	r24, Y+4	; 0x04
    1372:	9d 81       	ldd	r25, Y+5	; 0x05
    1374:	28 17       	cp	r18, r24
    1376:	39 07       	cpc	r19, r25
    1378:	3c f4       	brge	.+14     	; 0x1388 <fputc+0x46>
    137a:	e8 81       	ld	r30, Y
    137c:	f9 81       	ldd	r31, Y+1	; 0x01
    137e:	cf 01       	movw	r24, r30
    1380:	01 96       	adiw	r24, 0x01	; 1
    1382:	99 83       	std	Y+1, r25	; 0x01
    1384:	88 83       	st	Y, r24
    1386:	10 83       	st	Z, r17
    1388:	8e 81       	ldd	r24, Y+6	; 0x06
    138a:	9f 81       	ldd	r25, Y+7	; 0x07
    138c:	01 96       	adiw	r24, 0x01	; 1
    138e:	9f 83       	std	Y+7, r25	; 0x07
    1390:	8e 83       	std	Y+6, r24	; 0x06
    1392:	e3 cf       	rjmp	.-58     	; 0x135a <fputc+0x18>
    1394:	e8 85       	ldd	r30, Y+8	; 0x08
    1396:	f9 85       	ldd	r31, Y+9	; 0x09
    1398:	81 2f       	mov	r24, r17
    139a:	09 95       	icall
    139c:	89 2b       	or	r24, r25
    139e:	a1 f3       	breq	.-24     	; 0x1388 <fputc+0x46>
    13a0:	da cf       	rjmp	.-76     	; 0x1356 <fputc+0x14>

000013a2 <snprintf>:
    13a2:	ae e0       	ldi	r26, 0x0E	; 14
    13a4:	b0 e0       	ldi	r27, 0x00	; 0
    13a6:	e7 ed       	ldi	r30, 0xD7	; 215
    13a8:	f9 e0       	ldi	r31, 0x09	; 9
    13aa:	0c 94 84 08 	jmp	0x1108	; 0x1108 <__prologue_saves__+0x1c>
    13ae:	0d 89       	ldd	r16, Y+21	; 0x15
    13b0:	1e 89       	ldd	r17, Y+22	; 0x16
    13b2:	8f 89       	ldd	r24, Y+23	; 0x17
    13b4:	98 8d       	ldd	r25, Y+24	; 0x18
    13b6:	26 e0       	ldi	r18, 0x06	; 6
    13b8:	2c 83       	std	Y+4, r18	; 0x04
    13ba:	1a 83       	std	Y+2, r17	; 0x02
    13bc:	09 83       	std	Y+1, r16	; 0x01
    13be:	97 ff       	sbrs	r25, 7
    13c0:	02 c0       	rjmp	.+4      	; 0x13c6 <snprintf+0x24>
    13c2:	80 e0       	ldi	r24, 0x00	; 0
    13c4:	90 e8       	ldi	r25, 0x80	; 128
    13c6:	01 97       	sbiw	r24, 0x01	; 1
    13c8:	9e 83       	std	Y+6, r25	; 0x06
    13ca:	8d 83       	std	Y+5, r24	; 0x05
    13cc:	ae 01       	movw	r20, r28
    13ce:	45 5e       	subi	r20, 0xE5	; 229
    13d0:	5f 4f       	sbci	r21, 0xFF	; 255
    13d2:	69 8d       	ldd	r22, Y+25	; 0x19
    13d4:	7a 8d       	ldd	r23, Y+26	; 0x1a
    13d6:	ce 01       	movw	r24, r28
    13d8:	01 96       	adiw	r24, 0x01	; 1
    13da:	0e 94 de 04 	call	0x9bc	; 0x9bc <vfprintf>
    13de:	4d 81       	ldd	r20, Y+5	; 0x05
    13e0:	5e 81       	ldd	r21, Y+6	; 0x06
    13e2:	57 fd       	sbrc	r21, 7
    13e4:	0a c0       	rjmp	.+20     	; 0x13fa <snprintf+0x58>
    13e6:	2f 81       	ldd	r18, Y+7	; 0x07
    13e8:	38 85       	ldd	r19, Y+8	; 0x08
    13ea:	42 17       	cp	r20, r18
    13ec:	53 07       	cpc	r21, r19
    13ee:	0c f4       	brge	.+2      	; 0x13f2 <snprintf+0x50>
    13f0:	9a 01       	movw	r18, r20
    13f2:	02 0f       	add	r16, r18
    13f4:	13 1f       	adc	r17, r19
    13f6:	f8 01       	movw	r30, r16
    13f8:	10 82       	st	Z, r1
    13fa:	2e 96       	adiw	r28, 0x0e	; 14
    13fc:	e4 e0       	ldi	r30, 0x04	; 4
    13fe:	0c 94 a0 08 	jmp	0x1140	; 0x1140 <__epilogue_restores__+0x1c>

00001402 <__ultoa_invert>:
    1402:	fa 01       	movw	r30, r20
    1404:	aa 27       	eor	r26, r26
    1406:	28 30       	cpi	r18, 0x08	; 8
    1408:	51 f1       	breq	.+84     	; 0x145e <__ultoa_invert+0x5c>
    140a:	20 31       	cpi	r18, 0x10	; 16
    140c:	81 f1       	breq	.+96     	; 0x146e <__ultoa_invert+0x6c>
    140e:	e8 94       	clt
    1410:	6f 93       	push	r22
    1412:	6e 7f       	andi	r22, 0xFE	; 254
    1414:	6e 5f       	subi	r22, 0xFE	; 254
    1416:	7f 4f       	sbci	r23, 0xFF	; 255
    1418:	8f 4f       	sbci	r24, 0xFF	; 255
    141a:	9f 4f       	sbci	r25, 0xFF	; 255
    141c:	af 4f       	sbci	r26, 0xFF	; 255
    141e:	b1 e0       	ldi	r27, 0x01	; 1
    1420:	3e d0       	rcall	.+124    	; 0x149e <__ultoa_invert+0x9c>
    1422:	b4 e0       	ldi	r27, 0x04	; 4
    1424:	3c d0       	rcall	.+120    	; 0x149e <__ultoa_invert+0x9c>
    1426:	67 0f       	add	r22, r23
    1428:	78 1f       	adc	r23, r24
    142a:	89 1f       	adc	r24, r25
    142c:	9a 1f       	adc	r25, r26
    142e:	a1 1d       	adc	r26, r1
    1430:	68 0f       	add	r22, r24
    1432:	79 1f       	adc	r23, r25
    1434:	8a 1f       	adc	r24, r26
    1436:	91 1d       	adc	r25, r1
    1438:	a1 1d       	adc	r26, r1
    143a:	6a 0f       	add	r22, r26
    143c:	71 1d       	adc	r23, r1
    143e:	81 1d       	adc	r24, r1
    1440:	91 1d       	adc	r25, r1
    1442:	a1 1d       	adc	r26, r1
    1444:	20 d0       	rcall	.+64     	; 0x1486 <__ultoa_invert+0x84>
    1446:	09 f4       	brne	.+2      	; 0x144a <__ultoa_invert+0x48>
    1448:	68 94       	set
    144a:	3f 91       	pop	r19
    144c:	2a e0       	ldi	r18, 0x0A	; 10
    144e:	26 9f       	mul	r18, r22
    1450:	11 24       	eor	r1, r1
    1452:	30 19       	sub	r19, r0
    1454:	30 5d       	subi	r19, 0xD0	; 208
    1456:	31 93       	st	Z+, r19
    1458:	de f6       	brtc	.-74     	; 0x1410 <__ultoa_invert+0xe>
    145a:	cf 01       	movw	r24, r30
    145c:	08 95       	ret
    145e:	46 2f       	mov	r20, r22
    1460:	47 70       	andi	r20, 0x07	; 7
    1462:	40 5d       	subi	r20, 0xD0	; 208
    1464:	41 93       	st	Z+, r20
    1466:	b3 e0       	ldi	r27, 0x03	; 3
    1468:	0f d0       	rcall	.+30     	; 0x1488 <__ultoa_invert+0x86>
    146a:	c9 f7       	brne	.-14     	; 0x145e <__ultoa_invert+0x5c>
    146c:	f6 cf       	rjmp	.-20     	; 0x145a <__ultoa_invert+0x58>
    146e:	46 2f       	mov	r20, r22
    1470:	4f 70       	andi	r20, 0x0F	; 15
    1472:	40 5d       	subi	r20, 0xD0	; 208
    1474:	4a 33       	cpi	r20, 0x3A	; 58
    1476:	18 f0       	brcs	.+6      	; 0x147e <__ultoa_invert+0x7c>
    1478:	49 5d       	subi	r20, 0xD9	; 217
    147a:	31 fd       	sbrc	r19, 1
    147c:	40 52       	subi	r20, 0x20	; 32
    147e:	41 93       	st	Z+, r20
    1480:	02 d0       	rcall	.+4      	; 0x1486 <__ultoa_invert+0x84>
    1482:	a9 f7       	brne	.-22     	; 0x146e <__ultoa_invert+0x6c>
    1484:	ea cf       	rjmp	.-44     	; 0x145a <__ultoa_invert+0x58>
    1486:	b4 e0       	ldi	r27, 0x04	; 4
    1488:	a6 95       	lsr	r26
    148a:	97 95       	ror	r25
    148c:	87 95       	ror	r24
    148e:	77 95       	ror	r23
    1490:	67 95       	ror	r22
    1492:	ba 95       	dec	r27
    1494:	c9 f7       	brne	.-14     	; 0x1488 <__ultoa_invert+0x86>
    1496:	00 97       	sbiw	r24, 0x00	; 0
    1498:	61 05       	cpc	r22, r1
    149a:	71 05       	cpc	r23, r1
    149c:	08 95       	ret
    149e:	9b 01       	movw	r18, r22
    14a0:	ac 01       	movw	r20, r24
    14a2:	0a 2e       	mov	r0, r26
    14a4:	06 94       	lsr	r0
    14a6:	57 95       	ror	r21
    14a8:	47 95       	ror	r20
    14aa:	37 95       	ror	r19
    14ac:	27 95       	ror	r18
    14ae:	ba 95       	dec	r27
    14b0:	c9 f7       	brne	.-14     	; 0x14a4 <__ultoa_invert+0xa2>
    14b2:	62 0f       	add	r22, r18
    14b4:	73 1f       	adc	r23, r19
    14b6:	84 1f       	adc	r24, r20
    14b8:	95 1f       	adc	r25, r21
    14ba:	a0 1d       	adc	r26, r0
    14bc:	08 95       	ret

000014be <_exit>:
    14be:	f8 94       	cli

000014c0 <__stop_program>:
    14c0:	ff cf       	rjmp	.-2      	; 0x14c0 <__stop_program>
