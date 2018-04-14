
main.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
       0:	0c 94 b6 00 	jmp	0x16c	; 0x16c <__ctors_end>
       4:	0c 94 13 02 	jmp	0x426	; 0x426 <__vector_1>
       8:	0c 94 3c 02 	jmp	0x478	; 0x478 <__vector_2>
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
      40:	0c 94 1f 03 	jmp	0x63e	; 0x63e <__vector_16>
      44:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      48:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      4c:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      50:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      54:	0c 94 68 04 	jmp	0x8d0	; 0x8d0 <__vector_21>
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
     16a:	5d 08       	sbc	r5, r13

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
     17e:	e6 eb       	ldi	r30, 0xB6	; 182
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
     198:	ab 3b       	cpi	r26, 0xBB	; 187
     19a:	b2 07       	cpc	r27, r18
     19c:	e1 f7       	brne	.-8      	; 0x196 <.do_clear_bss_loop>

0000019e <__do_global_ctors>:
     19e:	10 e0       	ldi	r17, 0x00	; 0
     1a0:	c6 eb       	ldi	r28, 0xB6	; 182
     1a2:	d0 e0       	ldi	r29, 0x00	; 0
     1a4:	04 c0       	rjmp	.+8      	; 0x1ae <__do_global_ctors+0x10>
     1a6:	21 97       	sbiw	r28, 0x01	; 1
     1a8:	fe 01       	movw	r30, r28
     1aa:	0e 94 a7 08 	call	0x114e	; 0x114e <__tablejump2__>
     1ae:	c5 3b       	cpi	r28, 0xB5	; 181
     1b0:	d1 07       	cpc	r29, r17
     1b2:	c9 f7       	brne	.-14     	; 0x1a6 <__do_global_ctors+0x8>
     1b4:	0e 94 e0 00 	call	0x1c0	; 0x1c0 <main>
     1b8:	0c 94 59 0a 	jmp	0x14b2	; 0x14b2 <_exit>

000001bc <__bad_interrupt>:
     1bc:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000001c0 <main>:
     1c0:	ef 92       	push	r14
     1c2:	ff 92       	push	r15
     1c4:	0f 93       	push	r16
     1c6:	1f 93       	push	r17
     1c8:	60 91 0a 01 	lds	r22, 0x010A	; 0x80010a <OUTPUT>
     1cc:	8d e0       	ldi	r24, 0x0D	; 13
     1ce:	0e 94 40 01 	call	0x280	; 0x280 <_TF3AVR7pinModeFT3pinVs5UInt84modeSb_T_>
     1d2:	f0 90 0c 01 	lds	r15, 0x010C	; 0x80010c <HIGH>
     1d6:	08 ee       	ldi	r16, 0xE8	; 232
     1d8:	13 e0       	ldi	r17, 0x03	; 3
     1da:	e0 90 0b 01 	lds	r14, 0x010B	; 0x80010b <LOW>

000001de <LBB0_1>:
     1de:	8d e0       	ldi	r24, 0x0D	; 13
     1e0:	6f 2d       	mov	r22, r15
     1e2:	0e 94 25 01 	call	0x24a	; 0x24a <_TF3AVR12digitalWriteFT3pinVs5UInt85valueSb_T_>
     1e6:	c8 01       	movw	r24, r16
     1e8:	0e 94 fe 00 	call	0x1fc	; 0x1fc <_TF3AVR5delayFT12millisecondsVs6UInt16_T_>
     1ec:	8d e0       	ldi	r24, 0x0D	; 13
     1ee:	6e 2d       	mov	r22, r14
     1f0:	0e 94 25 01 	call	0x24a	; 0x24a <_TF3AVR12digitalWriteFT3pinVs5UInt85valueSb_T_>
     1f4:	c8 01       	movw	r24, r16
     1f6:	0e 94 fe 00 	call	0x1fc	; 0x1fc <_TF3AVR5delayFT12millisecondsVs6UInt16_T_>
     1fa:	f1 cf       	rjmp	.-30     	; 0x1de <LBB0_1>

000001fc <_TF3AVR5delayFT12millisecondsVs6UInt16_T_>:
     1fc:	0e 94 95 02 	call	0x52a	; 0x52a <_delayMs>
     200:	08 95       	ret

00000202 <_TF3AVR18stringAddCharacterFT4byteVs5UInt8_Sb>:
     202:	0e 94 a9 02 	call	0x552	; 0x552 <_stringAddCharacter>
     206:	08 95       	ret

00000208 <_TF3AVR14stringStartNewFT_T_>:
     208:	0e 94 c1 02 	call	0x582	; 0x582 <_stringStartNew>
     20c:	08 95       	ret

0000020e <_TF3AVR18stringCurrentValueFT_GSQGSPVs4Int8__>:
     20e:	0e 94 c6 02 	call	0x58c	; 0x58c <_stringCurrentValue>
     212:	40 e0       	ldi	r20, 0x00	; 0
     214:	50 e0       	ldi	r21, 0x00	; 0
     216:	9c 01       	movw	r18, r24
     218:	ba 01       	movw	r22, r20
     21a:	ca 01       	movw	r24, r20
     21c:	08 95       	ret

0000021e <_TF3AVR11intToStringFT6numberVs5Int32_GSQGSPVs4Int8__>:
     21e:	0e 94 c9 02 	call	0x592	; 0x592 <_intToString>
     222:	40 e0       	ldi	r20, 0x00	; 0
     224:	50 e0       	ldi	r21, 0x00	; 0
     226:	9c 01       	movw	r18, r24
     228:	ba 01       	movw	r22, r20
     22a:	ca 01       	movw	r24, r20
     22c:	08 95       	ret

0000022e <_TF3AVR13floatToStringFT6numberSf_GSQGSPVs4Int8__>:
     22e:	0e 94 e5 02 	call	0x5ca	; 0x5ca <_fltToString>
     232:	40 e0       	ldi	r20, 0x00	; 0
     234:	50 e0       	ldi	r21, 0x00	; 0
     236:	9c 01       	movw	r18, r24
     238:	ba 01       	movw	r22, r20
     23a:	ca 01       	movw	r24, r20
     23c:	08 95       	ret

0000023e <_TF3AVR5ticksFT_Vs6UInt16>:
     23e:	0e 94 a4 02 	call	0x548	; 0x548 <_ticks>
     242:	08 95       	ret

00000244 <_TF3AVR11digitalReadFT3pinVs5UInt8_Sb>:
     244:	0e 94 78 01 	call	0x2f0	; 0x2f0 <_digitalRead>
     248:	08 95       	ret

0000024a <_TF3AVR12digitalWriteFT3pinVs5UInt85valueSb_T_>:
     24a:	83 30       	cpi	r24, 0x03	; 3
     24c:	51 f0       	breq	.+20     	; 0x262 <LBB1_6>
     24e:	85 30       	cpi	r24, 0x05	; 5
     250:	41 f0       	breq	.+16     	; 0x262 <LBB1_6>
     252:	86 30       	cpi	r24, 0x06	; 6
     254:	31 f0       	breq	.+12     	; 0x262 <LBB1_6>
     256:	89 30       	cpi	r24, 0x09	; 9
     258:	21 f0       	breq	.+8      	; 0x262 <LBB1_6>
     25a:	8a 30       	cpi	r24, 0x0A	; 10
     25c:	11 f0       	breq	.+4      	; 0x262 <LBB1_6>
     25e:	8b 30       	cpi	r24, 0x0B	; 11
     260:	59 f4       	brne	.+22     	; 0x278 <LBB1_9>

00000262 <LBB1_6>:
     262:	61 70       	andi	r22, 0x01	; 1
     264:	60 30       	cpi	r22, 0x00	; 0
     266:	21 f0       	breq	.+8      	; 0x270 <LBB1_8>
     268:	6f ef       	ldi	r22, 0xFF	; 255
     26a:	0e 94 36 03 	call	0x66c	; 0x66c <_analogWrite>
     26e:	08 95       	ret

00000270 <LBB1_8>:
     270:	60 e0       	ldi	r22, 0x00	; 0
     272:	0e 94 36 03 	call	0x66c	; 0x66c <_analogWrite>
     276:	08 95       	ret

00000278 <LBB1_9>:
     278:	61 70       	andi	r22, 0x01	; 1
     27a:	0e 94 91 01 	call	0x322	; 0x322 <_digitalWrite>
     27e:	08 95       	ret

00000280 <_TF3AVR7pinModeFT3pinVs5UInt84modeSb_T_>:
     280:	61 70       	andi	r22, 0x01	; 1
     282:	0e 94 d2 01 	call	0x3a4	; 0x3a4 <_pinMode>
     286:	08 95       	ret

00000288 <_TF3AVR11analogWriteFT3pinVs5UInt85valueS0__T_>:
     288:	0e 94 36 03 	call	0x66c	; 0x66c <_analogWrite>
     28c:	08 95       	ret

0000028e <_TF3AVR14slowAnalogReadFT3pinVs5UInt8_Vs6UInt16>:
     28e:	0e 94 39 04 	call	0x872	; 0x872 <_slowAnalogRead>
     292:	08 95       	ret

00000294 <_TF3AVR15analogReadAsyncFT3pinVs5UInt88callbackcVs6UInt16T__T_>:
     294:	0e 94 a0 04 	call	0x940	; 0x940 <_analogReadAsync>
     298:	08 95       	ret

0000029a <_TF3AVR26setupPin2InterruptCallbackFT8edgeTypeVs5UInt88callbackcT_T__T_>:
     29a:	0e 94 65 02 	call	0x4ca	; 0x4ca <_setupPin2InterruptCallback>
     29e:	08 95       	ret

000002a0 <_TF3AVR26clearPin2InterruptCallbackFT_T_>:
     2a0:	0e 94 75 02 	call	0x4ea	; 0x4ea <_clearPin2InterruptCallback>
     2a4:	08 95       	ret

000002a6 <_TF3AVR26setupPin3InterruptCallbackFT8edgeTypeVs5UInt88callbackcT_T__T_>:
     2a6:	0e 94 7b 02 	call	0x4f6	; 0x4f6 <_setupPin3InterruptCallback>
     2aa:	08 95       	ret

000002ac <_TF3AVR26clearPin3InterruptCallbackFT_T_>:
     2ac:	0e 94 8f 02 	call	0x51e	; 0x51e <_clearPin3InterruptCallback>
     2b0:	08 95       	ret

000002b2 <pinMask>:
     2b2:	88 30       	cpi	r24, 0x08	; 8
     2b4:	a0 f0       	brcs	.+40     	; 0x2de <pinMask+0x2c>
     2b6:	8e 30       	cpi	r24, 0x0E	; 14
     2b8:	50 f0       	brcs	.+20     	; 0x2ce <pinMask+0x1c>
     2ba:	85 31       	cpi	r24, 0x15	; 21
     2bc:	b8 f4       	brcc	.+46     	; 0x2ec <pinMask+0x3a>
     2be:	92 ef       	ldi	r25, 0xF2	; 242
     2c0:	98 0f       	add	r25, r24
     2c2:	81 e0       	ldi	r24, 0x01	; 1
     2c4:	01 c0       	rjmp	.+2      	; 0x2c8 <pinMask+0x16>
     2c6:	88 0f       	add	r24, r24
     2c8:	9a 95       	dec	r25
     2ca:	ea f7       	brpl	.-6      	; 0x2c6 <pinMask+0x14>
     2cc:	08 95       	ret
     2ce:	98 ef       	ldi	r25, 0xF8	; 248
     2d0:	98 0f       	add	r25, r24
     2d2:	81 e0       	ldi	r24, 0x01	; 1
     2d4:	01 c0       	rjmp	.+2      	; 0x2d8 <pinMask+0x26>
     2d6:	88 0f       	add	r24, r24
     2d8:	9a 95       	dec	r25
     2da:	ea f7       	brpl	.-6      	; 0x2d6 <pinMask+0x24>
     2dc:	08 95       	ret
     2de:	91 e0       	ldi	r25, 0x01	; 1
     2e0:	01 c0       	rjmp	.+2      	; 0x2e4 <pinMask+0x32>
     2e2:	99 0f       	add	r25, r25
     2e4:	8a 95       	dec	r24
     2e6:	ea f7       	brpl	.-6      	; 0x2e2 <pinMask+0x30>
     2e8:	89 2f       	mov	r24, r25
     2ea:	08 95       	ret
     2ec:	80 e0       	ldi	r24, 0x00	; 0
     2ee:	08 95       	ret

000002f0 <_digitalRead>:
     2f0:	88 30       	cpi	r24, 0x08	; 8
     2f2:	58 f4       	brcc	.+22     	; 0x30a <_digitalRead+0x1a>
     2f4:	99 b1       	in	r25, 0x09	; 9
     2f6:	21 e0       	ldi	r18, 0x01	; 1
     2f8:	30 e0       	ldi	r19, 0x00	; 0
     2fa:	01 c0       	rjmp	.+2      	; 0x2fe <_digitalRead+0xe>
     2fc:	22 0f       	add	r18, r18
     2fe:	8a 95       	dec	r24
     300:	ea f7       	brpl	.-6      	; 0x2fc <_digitalRead+0xc>
     302:	92 23       	and	r25, r18
     304:	81 e0       	ldi	r24, 0x01	; 1
     306:	29 f0       	breq	.+10     	; 0x312 <_digitalRead+0x22>
     308:	08 95       	ret
     30a:	8e 30       	cpi	r24, 0x0E	; 14
     30c:	20 f0       	brcs	.+8      	; 0x316 <_digitalRead+0x26>
     30e:	85 31       	cpi	r24, 0x15	; 21
     310:	28 f0       	brcs	.+10     	; 0x31c <_digitalRead+0x2c>
     312:	80 e0       	ldi	r24, 0x00	; 0
     314:	08 95       	ret
     316:	93 b1       	in	r25, 0x03	; 3
     318:	88 50       	subi	r24, 0x08	; 8
     31a:	ed cf       	rjmp	.-38     	; 0x2f6 <_digitalRead+0x6>
     31c:	96 b1       	in	r25, 0x06	; 6
     31e:	8e 50       	subi	r24, 0x0E	; 14
     320:	ea cf       	rjmp	.-44     	; 0x2f6 <_digitalRead+0x6>

00000322 <_digitalWrite>:
     322:	88 30       	cpi	r24, 0x08	; 8
     324:	60 f4       	brcc	.+24     	; 0x33e <_digitalWrite+0x1c>
     326:	21 e0       	ldi	r18, 0x01	; 1
     328:	30 e0       	ldi	r19, 0x00	; 0
     32a:	01 c0       	rjmp	.+2      	; 0x32e <_digitalWrite+0xc>
     32c:	22 0f       	add	r18, r18
     32e:	8a 95       	dec	r24
     330:	ea f7       	brpl	.-6      	; 0x32c <_digitalWrite+0xa>
     332:	66 23       	and	r22, r22
     334:	49 f1       	breq	.+82     	; 0x388 <_digitalWrite+0x66>
     336:	8b b1       	in	r24, 0x0b	; 11
     338:	28 2b       	or	r18, r24
     33a:	2b b9       	out	0x0b, r18	; 11
     33c:	08 95       	ret
     33e:	8e 30       	cpi	r24, 0x0E	; 14
     340:	88 f4       	brcc	.+34     	; 0x364 <_digitalWrite+0x42>
     342:	88 50       	subi	r24, 0x08	; 8
     344:	21 e0       	ldi	r18, 0x01	; 1
     346:	30 e0       	ldi	r19, 0x00	; 0
     348:	a9 01       	movw	r20, r18
     34a:	02 c0       	rjmp	.+4      	; 0x350 <_digitalWrite+0x2e>
     34c:	44 0f       	add	r20, r20
     34e:	55 1f       	adc	r21, r21
     350:	8a 95       	dec	r24
     352:	e2 f7       	brpl	.-8      	; 0x34c <_digitalWrite+0x2a>
     354:	ca 01       	movw	r24, r20
     356:	61 11       	cpse	r22, r1
     358:	1c c0       	rjmp	.+56     	; 0x392 <_digitalWrite+0x70>
     35a:	95 b1       	in	r25, 0x05	; 5
     35c:	80 95       	com	r24
     35e:	89 23       	and	r24, r25
     360:	85 b9       	out	0x05, r24	; 5
     362:	08 95       	ret
     364:	85 31       	cpi	r24, 0x15	; 21
     366:	e8 f7       	brcc	.-6      	; 0x362 <_digitalWrite+0x40>
     368:	8e 50       	subi	r24, 0x0E	; 14
     36a:	21 e0       	ldi	r18, 0x01	; 1
     36c:	30 e0       	ldi	r19, 0x00	; 0
     36e:	a9 01       	movw	r20, r18
     370:	02 c0       	rjmp	.+4      	; 0x376 <_digitalWrite+0x54>
     372:	44 0f       	add	r20, r20
     374:	55 1f       	adc	r21, r21
     376:	8a 95       	dec	r24
     378:	e2 f7       	brpl	.-8      	; 0x372 <_digitalWrite+0x50>
     37a:	ca 01       	movw	r24, r20
     37c:	66 23       	and	r22, r22
     37e:	69 f0       	breq	.+26     	; 0x39a <_digitalWrite+0x78>
     380:	98 b1       	in	r25, 0x08	; 8
     382:	89 2b       	or	r24, r25
     384:	88 b9       	out	0x08, r24	; 8
     386:	08 95       	ret
     388:	8b b1       	in	r24, 0x0b	; 11
     38a:	20 95       	com	r18
     38c:	28 23       	and	r18, r24
     38e:	2b b9       	out	0x0b, r18	; 11
     390:	08 95       	ret
     392:	95 b1       	in	r25, 0x05	; 5
     394:	89 2b       	or	r24, r25
     396:	85 b9       	out	0x05, r24	; 5
     398:	08 95       	ret
     39a:	98 b1       	in	r25, 0x08	; 8
     39c:	80 95       	com	r24
     39e:	89 23       	and	r24, r25
     3a0:	88 b9       	out	0x08, r24	; 8
     3a2:	08 95       	ret

000003a4 <_pinMode>:
     3a4:	88 30       	cpi	r24, 0x08	; 8
     3a6:	60 f4       	brcc	.+24     	; 0x3c0 <_pinMode+0x1c>
     3a8:	21 e0       	ldi	r18, 0x01	; 1
     3aa:	30 e0       	ldi	r19, 0x00	; 0
     3ac:	01 c0       	rjmp	.+2      	; 0x3b0 <_pinMode+0xc>
     3ae:	22 0f       	add	r18, r18
     3b0:	8a 95       	dec	r24
     3b2:	ea f7       	brpl	.-6      	; 0x3ae <_pinMode+0xa>
     3b4:	66 23       	and	r22, r22
     3b6:	49 f1       	breq	.+82     	; 0x40a <__FUSE_REGION_LENGTH__+0xa>
     3b8:	8a b1       	in	r24, 0x0a	; 10
     3ba:	28 2b       	or	r18, r24
     3bc:	2a b9       	out	0x0a, r18	; 10
     3be:	08 95       	ret
     3c0:	8e 30       	cpi	r24, 0x0E	; 14
     3c2:	88 f4       	brcc	.+34     	; 0x3e6 <_pinMode+0x42>
     3c4:	88 50       	subi	r24, 0x08	; 8
     3c6:	21 e0       	ldi	r18, 0x01	; 1
     3c8:	30 e0       	ldi	r19, 0x00	; 0
     3ca:	a9 01       	movw	r20, r18
     3cc:	02 c0       	rjmp	.+4      	; 0x3d2 <_pinMode+0x2e>
     3ce:	44 0f       	add	r20, r20
     3d0:	55 1f       	adc	r21, r21
     3d2:	8a 95       	dec	r24
     3d4:	e2 f7       	brpl	.-8      	; 0x3ce <_pinMode+0x2a>
     3d6:	ca 01       	movw	r24, r20
     3d8:	61 11       	cpse	r22, r1
     3da:	1c c0       	rjmp	.+56     	; 0x414 <__FUSE_REGION_LENGTH__+0x14>
     3dc:	94 b1       	in	r25, 0x04	; 4
     3de:	80 95       	com	r24
     3e0:	89 23       	and	r24, r25
     3e2:	84 b9       	out	0x04, r24	; 4
     3e4:	08 95       	ret
     3e6:	85 31       	cpi	r24, 0x15	; 21
     3e8:	e8 f7       	brcc	.-6      	; 0x3e4 <_pinMode+0x40>
     3ea:	8e 50       	subi	r24, 0x0E	; 14
     3ec:	21 e0       	ldi	r18, 0x01	; 1
     3ee:	30 e0       	ldi	r19, 0x00	; 0
     3f0:	a9 01       	movw	r20, r18
     3f2:	02 c0       	rjmp	.+4      	; 0x3f8 <_pinMode+0x54>
     3f4:	44 0f       	add	r20, r20
     3f6:	55 1f       	adc	r21, r21
     3f8:	8a 95       	dec	r24
     3fa:	e2 f7       	brpl	.-8      	; 0x3f4 <_pinMode+0x50>
     3fc:	ca 01       	movw	r24, r20
     3fe:	66 23       	and	r22, r22
     400:	69 f0       	breq	.+26     	; 0x41c <__FUSE_REGION_LENGTH__+0x1c>
     402:	97 b1       	in	r25, 0x07	; 7
     404:	89 2b       	or	r24, r25
     406:	87 b9       	out	0x07, r24	; 7
     408:	08 95       	ret
     40a:	8a b1       	in	r24, 0x0a	; 10
     40c:	20 95       	com	r18
     40e:	28 23       	and	r18, r24
     410:	2a b9       	out	0x0a, r18	; 10
     412:	08 95       	ret
     414:	94 b1       	in	r25, 0x04	; 4
     416:	89 2b       	or	r24, r25
     418:	84 b9       	out	0x04, r24	; 4
     41a:	08 95       	ret
     41c:	97 b1       	in	r25, 0x07	; 7
     41e:	80 95       	com	r24
     420:	89 23       	and	r24, r25
     422:	87 b9       	out	0x07, r24	; 7
     424:	08 95       	ret

00000426 <__vector_1>:
     426:	1f 92       	push	r1
     428:	0f 92       	push	r0
     42a:	0f b6       	in	r0, 0x3f	; 63
     42c:	0f 92       	push	r0
     42e:	11 24       	eor	r1, r1
     430:	2f 93       	push	r18
     432:	3f 93       	push	r19
     434:	4f 93       	push	r20
     436:	5f 93       	push	r21
     438:	6f 93       	push	r22
     43a:	7f 93       	push	r23
     43c:	8f 93       	push	r24
     43e:	9f 93       	push	r25
     440:	af 93       	push	r26
     442:	bf 93       	push	r27
     444:	ef 93       	push	r30
     446:	ff 93       	push	r31
     448:	e0 91 22 01 	lds	r30, 0x0122	; 0x800122 <currentInt0Callback>
     44c:	f0 91 23 01 	lds	r31, 0x0123	; 0x800123 <currentInt0Callback+0x1>
     450:	30 97       	sbiw	r30, 0x00	; 0
     452:	09 f0       	breq	.+2      	; 0x456 <__vector_1+0x30>
     454:	09 95       	icall
     456:	ff 91       	pop	r31
     458:	ef 91       	pop	r30
     45a:	bf 91       	pop	r27
     45c:	af 91       	pop	r26
     45e:	9f 91       	pop	r25
     460:	8f 91       	pop	r24
     462:	7f 91       	pop	r23
     464:	6f 91       	pop	r22
     466:	5f 91       	pop	r21
     468:	4f 91       	pop	r20
     46a:	3f 91       	pop	r19
     46c:	2f 91       	pop	r18
     46e:	0f 90       	pop	r0
     470:	0f be       	out	0x3f, r0	; 63
     472:	0f 90       	pop	r0
     474:	1f 90       	pop	r1
     476:	18 95       	reti

00000478 <__vector_2>:
     478:	1f 92       	push	r1
     47a:	0f 92       	push	r0
     47c:	0f b6       	in	r0, 0x3f	; 63
     47e:	0f 92       	push	r0
     480:	11 24       	eor	r1, r1
     482:	2f 93       	push	r18
     484:	3f 93       	push	r19
     486:	4f 93       	push	r20
     488:	5f 93       	push	r21
     48a:	6f 93       	push	r22
     48c:	7f 93       	push	r23
     48e:	8f 93       	push	r24
     490:	9f 93       	push	r25
     492:	af 93       	push	r26
     494:	bf 93       	push	r27
     496:	ef 93       	push	r30
     498:	ff 93       	push	r31
     49a:	e0 91 20 01 	lds	r30, 0x0120	; 0x800120 <__data_end>
     49e:	f0 91 21 01 	lds	r31, 0x0121	; 0x800121 <__data_end+0x1>
     4a2:	30 97       	sbiw	r30, 0x00	; 0
     4a4:	09 f0       	breq	.+2      	; 0x4a8 <__vector_2+0x30>
     4a6:	09 95       	icall
     4a8:	ff 91       	pop	r31
     4aa:	ef 91       	pop	r30
     4ac:	bf 91       	pop	r27
     4ae:	af 91       	pop	r26
     4b0:	9f 91       	pop	r25
     4b2:	8f 91       	pop	r24
     4b4:	7f 91       	pop	r23
     4b6:	6f 91       	pop	r22
     4b8:	5f 91       	pop	r21
     4ba:	4f 91       	pop	r20
     4bc:	3f 91       	pop	r19
     4be:	2f 91       	pop	r18
     4c0:	0f 90       	pop	r0
     4c2:	0f be       	out	0x3f, r0	; 63
     4c4:	0f 90       	pop	r0
     4c6:	1f 90       	pop	r1
     4c8:	18 95       	reti

000004ca <_setupPin2InterruptCallback>:
     4ca:	70 93 23 01 	sts	0x0123, r23	; 0x800123 <currentInt0Callback+0x1>
     4ce:	60 93 22 01 	sts	0x0122, r22	; 0x800122 <currentInt0Callback>
     4d2:	e9 e6       	ldi	r30, 0x69	; 105
     4d4:	f0 e0       	ldi	r31, 0x00	; 0
     4d6:	90 81       	ld	r25, Z
     4d8:	9c 7f       	andi	r25, 0xFC	; 252
     4da:	90 83       	st	Z, r25
     4dc:	90 81       	ld	r25, Z
     4de:	83 70       	andi	r24, 0x03	; 3
     4e0:	89 2b       	or	r24, r25
     4e2:	80 83       	st	Z, r24
     4e4:	e8 9a       	sbi	0x1d, 0	; 29
     4e6:	78 94       	sei
     4e8:	08 95       	ret

000004ea <_clearPin2InterruptCallback>:
     4ea:	10 92 23 01 	sts	0x0123, r1	; 0x800123 <currentInt0Callback+0x1>
     4ee:	10 92 22 01 	sts	0x0122, r1	; 0x800122 <currentInt0Callback>
     4f2:	e8 98       	cbi	0x1d, 0	; 29
     4f4:	08 95       	ret

000004f6 <_setupPin3InterruptCallback>:
     4f6:	70 93 21 01 	sts	0x0121, r23	; 0x800121 <__data_end+0x1>
     4fa:	60 93 20 01 	sts	0x0120, r22	; 0x800120 <__data_end>
     4fe:	e9 e6       	ldi	r30, 0x69	; 105
     500:	f0 e0       	ldi	r31, 0x00	; 0
     502:	90 81       	ld	r25, Z
     504:	93 7f       	andi	r25, 0xF3	; 243
     506:	90 83       	st	Z, r25
     508:	20 81       	ld	r18, Z
     50a:	34 e0       	ldi	r19, 0x04	; 4
     50c:	83 9f       	mul	r24, r19
     50e:	c0 01       	movw	r24, r0
     510:	11 24       	eor	r1, r1
     512:	8c 70       	andi	r24, 0x0C	; 12
     514:	82 2b       	or	r24, r18
     516:	80 83       	st	Z, r24
     518:	e9 9a       	sbi	0x1d, 1	; 29
     51a:	78 94       	sei
     51c:	08 95       	ret

0000051e <_clearPin3InterruptCallback>:
     51e:	10 92 21 01 	sts	0x0121, r1	; 0x800121 <__data_end+0x1>
     522:	10 92 20 01 	sts	0x0120, r1	; 0x800120 <__data_end>
     526:	e9 98       	cbi	0x1d, 1	; 29
     528:	08 95       	ret

0000052a <_delayMs>:
     52a:	00 97       	sbiw	r24, 0x00	; 0
     52c:	61 f0       	breq	.+24     	; 0x546 <_delayMs+0x1c>
     52e:	20 e0       	ldi	r18, 0x00	; 0
     530:	30 e0       	ldi	r19, 0x00	; 0
     532:	40 ea       	ldi	r20, 0xA0	; 160
     534:	5f e0       	ldi	r21, 0x0F	; 15
     536:	fa 01       	movw	r30, r20
     538:	31 97       	sbiw	r30, 0x01	; 1
     53a:	f1 f7       	brne	.-4      	; 0x538 <_delayMs+0xe>
     53c:	2f 5f       	subi	r18, 0xFF	; 255
     53e:	3f 4f       	sbci	r19, 0xFF	; 255
     540:	82 17       	cp	r24, r18
     542:	93 07       	cpc	r25, r19
     544:	c1 f7       	brne	.-16     	; 0x536 <_delayMs+0xc>
     546:	08 95       	ret

00000548 <_ticks>:
     548:	80 91 24 01 	lds	r24, 0x0124	; 0x800124 <t0Overflow>
     54c:	90 91 25 01 	lds	r25, 0x0125	; 0x800125 <t0Overflow+0x1>
     550:	08 95       	ret

00000552 <_stringAddCharacter>:
     552:	e0 91 35 01 	lds	r30, 0x0135	; 0x800135 <stringBufferEnd>
     556:	ef 37       	cpi	r30, 0x7F	; 127
     558:	91 f0       	breq	.+36     	; 0x57e <_stringAddCharacter+0x2c>
     55a:	91 e0       	ldi	r25, 0x01	; 1
     55c:	9e 0f       	add	r25, r30
     55e:	90 93 35 01 	sts	0x0135, r25	; 0x800135 <stringBufferEnd>
     562:	0e 2e       	mov	r0, r30
     564:	00 0c       	add	r0, r0
     566:	ff 0b       	sbc	r31, r31
     568:	ea 5c       	subi	r30, 0xCA	; 202
     56a:	fe 4f       	sbci	r31, 0xFE	; 254
     56c:	80 83       	st	Z, r24
     56e:	e9 2f       	mov	r30, r25
     570:	99 0f       	add	r25, r25
     572:	ff 0b       	sbc	r31, r31
     574:	ea 5c       	subi	r30, 0xCA	; 202
     576:	fe 4f       	sbci	r31, 0xFE	; 254
     578:	10 82       	st	Z, r1
     57a:	81 e0       	ldi	r24, 0x01	; 1
     57c:	08 95       	ret
     57e:	80 e0       	ldi	r24, 0x00	; 0
     580:	08 95       	ret

00000582 <_stringStartNew>:
     582:	10 92 35 01 	sts	0x0135, r1	; 0x800135 <stringBufferEnd>
     586:	10 92 36 01 	sts	0x0136, r1	; 0x800136 <stringBuffer>
     58a:	08 95       	ret

0000058c <_stringCurrentValue>:
     58c:	86 e3       	ldi	r24, 0x36	; 54
     58e:	91 e0       	ldi	r25, 0x01	; 1
     590:	08 95       	ret

00000592 <_intToString>:
     592:	9f 93       	push	r25
     594:	8f 93       	push	r24
     596:	7f 93       	push	r23
     598:	6f 93       	push	r22
     59a:	81 e1       	ldi	r24, 0x11	; 17
     59c:	91 e0       	ldi	r25, 0x01	; 1
     59e:	9f 93       	push	r25
     5a0:	8f 93       	push	r24
     5a2:	1f 92       	push	r1
     5a4:	8f e0       	ldi	r24, 0x0F	; 15
     5a6:	8f 93       	push	r24
     5a8:	86 e2       	ldi	r24, 0x26	; 38
     5aa:	91 e0       	ldi	r25, 0x01	; 1
     5ac:	9f 93       	push	r25
     5ae:	8f 93       	push	r24
     5b0:	0e 94 cb 09 	call	0x1396	; 0x1396 <snprintf>
     5b4:	8d b7       	in	r24, 0x3d	; 61
     5b6:	9e b7       	in	r25, 0x3e	; 62
     5b8:	0a 96       	adiw	r24, 0x0a	; 10
     5ba:	0f b6       	in	r0, 0x3f	; 63
     5bc:	f8 94       	cli
     5be:	9e bf       	out	0x3e, r25	; 62
     5c0:	0f be       	out	0x3f, r0	; 63
     5c2:	8d bf       	out	0x3d, r24	; 61
     5c4:	86 e2       	ldi	r24, 0x26	; 38
     5c6:	91 e0       	ldi	r25, 0x01	; 1
     5c8:	08 95       	ret

000005ca <_fltToString>:
     5ca:	9f 93       	push	r25
     5cc:	8f 93       	push	r24
     5ce:	7f 93       	push	r23
     5d0:	6f 93       	push	r22
     5d2:	85 e1       	ldi	r24, 0x15	; 21
     5d4:	91 e0       	ldi	r25, 0x01	; 1
     5d6:	9f 93       	push	r25
     5d8:	8f 93       	push	r24
     5da:	1f 92       	push	r1
     5dc:	8f e0       	ldi	r24, 0x0F	; 15
     5de:	8f 93       	push	r24
     5e0:	86 e2       	ldi	r24, 0x26	; 38
     5e2:	91 e0       	ldi	r25, 0x01	; 1
     5e4:	9f 93       	push	r25
     5e6:	8f 93       	push	r24
     5e8:	0e 94 cb 09 	call	0x1396	; 0x1396 <snprintf>
     5ec:	8d b7       	in	r24, 0x3d	; 61
     5ee:	9e b7       	in	r25, 0x3e	; 62
     5f0:	0a 96       	adiw	r24, 0x0a	; 10
     5f2:	0f b6       	in	r0, 0x3f	; 63
     5f4:	f8 94       	cli
     5f6:	9e bf       	out	0x3e, r25	; 62
     5f8:	0f be       	out	0x3f, r0	; 63
     5fa:	8d bf       	out	0x3d, r24	; 61
     5fc:	86 e2       	ldi	r24, 0x26	; 38
     5fe:	91 e0       	ldi	r25, 0x01	; 1
     600:	08 95       	ret

00000602 <_fltToStringPrecision>:
     602:	9f 93       	push	r25
     604:	8f 93       	push	r24
     606:	7f 93       	push	r23
     608:	6f 93       	push	r22
     60a:	1f 92       	push	r1
     60c:	4f 93       	push	r20
     60e:	8a e1       	ldi	r24, 0x1A	; 26
     610:	91 e0       	ldi	r25, 0x01	; 1
     612:	9f 93       	push	r25
     614:	8f 93       	push	r24
     616:	1f 92       	push	r1
     618:	8f e0       	ldi	r24, 0x0F	; 15
     61a:	8f 93       	push	r24
     61c:	86 e2       	ldi	r24, 0x26	; 38
     61e:	91 e0       	ldi	r25, 0x01	; 1
     620:	9f 93       	push	r25
     622:	8f 93       	push	r24
     624:	0e 94 cb 09 	call	0x1396	; 0x1396 <snprintf>
     628:	8d b7       	in	r24, 0x3d	; 61
     62a:	9e b7       	in	r25, 0x3e	; 62
     62c:	0c 96       	adiw	r24, 0x0c	; 12
     62e:	0f b6       	in	r0, 0x3f	; 63
     630:	f8 94       	cli
     632:	9e bf       	out	0x3e, r25	; 62
     634:	0f be       	out	0x3f, r0	; 63
     636:	8d bf       	out	0x3d, r24	; 61
     638:	86 e2       	ldi	r24, 0x26	; 38
     63a:	91 e0       	ldi	r25, 0x01	; 1
     63c:	08 95       	ret

0000063e <__vector_16>:
     63e:	1f 92       	push	r1
     640:	0f 92       	push	r0
     642:	0f b6       	in	r0, 0x3f	; 63
     644:	0f 92       	push	r0
     646:	11 24       	eor	r1, r1
     648:	8f 93       	push	r24
     64a:	9f 93       	push	r25
     64c:	80 91 24 01 	lds	r24, 0x0124	; 0x800124 <t0Overflow>
     650:	90 91 25 01 	lds	r25, 0x0125	; 0x800125 <t0Overflow+0x1>
     654:	01 96       	adiw	r24, 0x01	; 1
     656:	90 93 25 01 	sts	0x0125, r25	; 0x800125 <t0Overflow+0x1>
     65a:	80 93 24 01 	sts	0x0124, r24	; 0x800124 <t0Overflow>
     65e:	9f 91       	pop	r25
     660:	8f 91       	pop	r24
     662:	0f 90       	pop	r0
     664:	0f be       	out	0x3f, r0	; 63
     666:	0f 90       	pop	r0
     668:	1f 90       	pop	r1
     66a:	18 95       	reti

0000066c <_analogWrite>:
     66c:	cf 93       	push	r28
     66e:	df 93       	push	r29
     670:	c8 2f       	mov	r28, r24
     672:	d6 2f       	mov	r29, r22
     674:	60 91 0e 01 	lds	r22, 0x010E	; 0x80010e <_OUTPUT>
     678:	0e 94 d2 01 	call	0x3a4	; 0x3a4 <_pinMode>
     67c:	c6 30       	cpi	r28, 0x06	; 6
     67e:	09 f4       	brne	.+2      	; 0x682 <_analogWrite+0x16>
     680:	5b c0       	rjmp	.+182    	; 0x738 <_analogWrite+0xcc>
     682:	50 f0       	brcs	.+20     	; 0x698 <_analogWrite+0x2c>
     684:	ca 30       	cpi	r28, 0x0A	; 10
     686:	b9 f0       	breq	.+46     	; 0x6b6 <_analogWrite+0x4a>
     688:	cb 30       	cpi	r28, 0x0B	; 11
     68a:	09 f4       	brne	.+2      	; 0x68e <_analogWrite+0x22>
     68c:	46 c0       	rjmp	.+140    	; 0x71a <_analogWrite+0xae>
     68e:	c9 30       	cpi	r28, 0x09	; 9
     690:	21 f1       	breq	.+72     	; 0x6da <_analogWrite+0x6e>
     692:	df 91       	pop	r29
     694:	cf 91       	pop	r28
     696:	08 95       	ret
     698:	c3 30       	cpi	r28, 0x03	; 3
     69a:	89 f1       	breq	.+98     	; 0x6fe <_analogWrite+0x92>
     69c:	c5 30       	cpi	r28, 0x05	; 5
     69e:	c9 f7       	brne	.-14     	; 0x692 <_analogWrite+0x26>
     6a0:	84 b5       	in	r24, 0x24	; 36
     6a2:	dd 23       	and	r29, r29
     6a4:	09 f4       	brne	.+2      	; 0x6a8 <_analogWrite+0x3c>
     6a6:	52 c0       	rjmp	.+164    	; 0x74c <_analogWrite+0xe0>
     6a8:	df 3f       	cpi	r29, 0xFF	; 255
     6aa:	09 f4       	brne	.+2      	; 0x6ae <_analogWrite+0x42>
     6ac:	9e c0       	rjmp	.+316    	; 0x7ea <_analogWrite+0x17e>
     6ae:	80 62       	ori	r24, 0x20	; 32
     6b0:	84 bd       	out	0x24, r24	; 36
     6b2:	d8 bd       	out	0x28, r29	; 40
     6b4:	ee cf       	rjmp	.-36     	; 0x692 <_analogWrite+0x26>
     6b6:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     6ba:	dd 23       	and	r29, r29
     6bc:	09 f4       	brne	.+2      	; 0x6c0 <_analogWrite+0x54>
     6be:	7b c0       	rjmp	.+246    	; 0x7b6 <_analogWrite+0x14a>
     6c0:	df 3f       	cpi	r29, 0xFF	; 255
     6c2:	09 f4       	brne	.+2      	; 0x6c6 <_analogWrite+0x5a>
     6c4:	85 c0       	rjmp	.+266    	; 0x7d0 <_analogWrite+0x164>
     6c6:	80 62       	ori	r24, 0x20	; 32
     6c8:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     6cc:	6d 2f       	mov	r22, r29
     6ce:	70 e0       	ldi	r23, 0x00	; 0
     6d0:	70 93 8b 00 	sts	0x008B, r23	; 0x80008b <__TEXT_REGION_LENGTH__+0x7e008b>
     6d4:	60 93 8a 00 	sts	0x008A, r22	; 0x80008a <__TEXT_REGION_LENGTH__+0x7e008a>
     6d8:	dc cf       	rjmp	.-72     	; 0x692 <_analogWrite+0x26>
     6da:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     6de:	dd 23       	and	r29, r29
     6e0:	09 f4       	brne	.+2      	; 0x6e4 <_analogWrite+0x78>
     6e2:	5c c0       	rjmp	.+184    	; 0x79c <_analogWrite+0x130>
     6e4:	df 3f       	cpi	r29, 0xFF	; 255
     6e6:	09 f4       	brne	.+2      	; 0x6ea <_analogWrite+0x7e>
     6e8:	94 c0       	rjmp	.+296    	; 0x812 <_analogWrite+0x1a6>
     6ea:	80 68       	ori	r24, 0x80	; 128
     6ec:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     6f0:	6d 2f       	mov	r22, r29
     6f2:	70 e0       	ldi	r23, 0x00	; 0
     6f4:	70 93 89 00 	sts	0x0089, r23	; 0x800089 <__TEXT_REGION_LENGTH__+0x7e0089>
     6f8:	60 93 88 00 	sts	0x0088, r22	; 0x800088 <__TEXT_REGION_LENGTH__+0x7e0088>
     6fc:	ca cf       	rjmp	.-108    	; 0x692 <_analogWrite+0x26>
     6fe:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     702:	dd 23       	and	r29, r29
     704:	09 f4       	brne	.+2      	; 0x708 <_analogWrite+0x9c>
     706:	3f c0       	rjmp	.+126    	; 0x786 <_analogWrite+0x11a>
     708:	df 3f       	cpi	r29, 0xFF	; 255
     70a:	09 f4       	brne	.+2      	; 0x70e <_analogWrite+0xa2>
     70c:	77 c0       	rjmp	.+238    	; 0x7fc <_analogWrite+0x190>
     70e:	80 62       	ori	r24, 0x20	; 32
     710:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     714:	d0 93 b4 00 	sts	0x00B4, r29	; 0x8000b4 <__TEXT_REGION_LENGTH__+0x7e00b4>
     718:	bc cf       	rjmp	.-136    	; 0x692 <_analogWrite+0x26>
     71a:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     71e:	dd 23       	and	r29, r29
     720:	39 f1       	breq	.+78     	; 0x770 <_analogWrite+0x104>
     722:	df 3f       	cpi	r29, 0xFF	; 255
     724:	09 f4       	brne	.+2      	; 0x728 <_analogWrite+0xbc>
     726:	8b c0       	rjmp	.+278    	; 0x83e <_analogWrite+0x1d2>
     728:	80 68       	ori	r24, 0x80	; 128
     72a:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     72e:	d0 93 b3 00 	sts	0x00B3, r29	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
     732:	df 91       	pop	r29
     734:	cf 91       	pop	r28
     736:	08 95       	ret
     738:	84 b5       	in	r24, 0x24	; 36
     73a:	dd 23       	and	r29, r29
     73c:	81 f0       	breq	.+32     	; 0x75e <_analogWrite+0xf2>
     73e:	df 3f       	cpi	r29, 0xFF	; 255
     740:	09 f4       	brne	.+2      	; 0x744 <_analogWrite+0xd8>
     742:	74 c0       	rjmp	.+232    	; 0x82c <_analogWrite+0x1c0>
     744:	80 68       	ori	r24, 0x80	; 128
     746:	84 bd       	out	0x24, r24	; 36
     748:	d7 bd       	out	0x27, r29	; 39
     74a:	a3 cf       	rjmp	.-186    	; 0x692 <_analogWrite+0x26>
     74c:	8f 7d       	andi	r24, 0xDF	; 223
     74e:	84 bd       	out	0x24, r24	; 36
     750:	60 91 0f 01 	lds	r22, 0x010F	; 0x80010f <_LOW>
     754:	85 e0       	ldi	r24, 0x05	; 5
     756:	0e 94 91 01 	call	0x322	; 0x322 <_digitalWrite>
     75a:	18 bc       	out	0x28, r1	; 40
     75c:	9a cf       	rjmp	.-204    	; 0x692 <_analogWrite+0x26>
     75e:	8f 77       	andi	r24, 0x7F	; 127
     760:	84 bd       	out	0x24, r24	; 36
     762:	60 91 0f 01 	lds	r22, 0x010F	; 0x80010f <_LOW>
     766:	86 e0       	ldi	r24, 0x06	; 6
     768:	0e 94 91 01 	call	0x322	; 0x322 <_digitalWrite>
     76c:	17 bc       	out	0x27, r1	; 39
     76e:	91 cf       	rjmp	.-222    	; 0x692 <_analogWrite+0x26>
     770:	8f 77       	andi	r24, 0x7F	; 127
     772:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     776:	60 91 0f 01 	lds	r22, 0x010F	; 0x80010f <_LOW>
     77a:	8b e0       	ldi	r24, 0x0B	; 11
     77c:	0e 94 91 01 	call	0x322	; 0x322 <_digitalWrite>
     780:	10 92 b3 00 	sts	0x00B3, r1	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
     784:	86 cf       	rjmp	.-244    	; 0x692 <_analogWrite+0x26>
     786:	8f 7d       	andi	r24, 0xDF	; 223
     788:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     78c:	60 91 0f 01 	lds	r22, 0x010F	; 0x80010f <_LOW>
     790:	83 e0       	ldi	r24, 0x03	; 3
     792:	0e 94 91 01 	call	0x322	; 0x322 <_digitalWrite>
     796:	10 92 b4 00 	sts	0x00B4, r1	; 0x8000b4 <__TEXT_REGION_LENGTH__+0x7e00b4>
     79a:	7b cf       	rjmp	.-266    	; 0x692 <_analogWrite+0x26>
     79c:	8f 77       	andi	r24, 0x7F	; 127
     79e:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     7a2:	60 91 0f 01 	lds	r22, 0x010F	; 0x80010f <_LOW>
     7a6:	89 e0       	ldi	r24, 0x09	; 9
     7a8:	0e 94 91 01 	call	0x322	; 0x322 <_digitalWrite>
     7ac:	10 92 89 00 	sts	0x0089, r1	; 0x800089 <__TEXT_REGION_LENGTH__+0x7e0089>
     7b0:	10 92 88 00 	sts	0x0088, r1	; 0x800088 <__TEXT_REGION_LENGTH__+0x7e0088>
     7b4:	6e cf       	rjmp	.-292    	; 0x692 <_analogWrite+0x26>
     7b6:	8f 7d       	andi	r24, 0xDF	; 223
     7b8:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     7bc:	60 91 0f 01 	lds	r22, 0x010F	; 0x80010f <_LOW>
     7c0:	8a e0       	ldi	r24, 0x0A	; 10
     7c2:	0e 94 91 01 	call	0x322	; 0x322 <_digitalWrite>
     7c6:	10 92 8b 00 	sts	0x008B, r1	; 0x80008b <__TEXT_REGION_LENGTH__+0x7e008b>
     7ca:	10 92 8a 00 	sts	0x008A, r1	; 0x80008a <__TEXT_REGION_LENGTH__+0x7e008a>
     7ce:	61 cf       	rjmp	.-318    	; 0x692 <_analogWrite+0x26>
     7d0:	8f 7d       	andi	r24, 0xDF	; 223
     7d2:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     7d6:	60 91 10 01 	lds	r22, 0x0110	; 0x800110 <_HIGH>
     7da:	8a e0       	ldi	r24, 0x0A	; 10
     7dc:	0e 94 91 01 	call	0x322	; 0x322 <_digitalWrite>
     7e0:	10 92 8b 00 	sts	0x008B, r1	; 0x80008b <__TEXT_REGION_LENGTH__+0x7e008b>
     7e4:	10 92 8a 00 	sts	0x008A, r1	; 0x80008a <__TEXT_REGION_LENGTH__+0x7e008a>
     7e8:	54 cf       	rjmp	.-344    	; 0x692 <_analogWrite+0x26>
     7ea:	8f 7d       	andi	r24, 0xDF	; 223
     7ec:	84 bd       	out	0x24, r24	; 36
     7ee:	60 91 10 01 	lds	r22, 0x0110	; 0x800110 <_HIGH>
     7f2:	85 e0       	ldi	r24, 0x05	; 5
     7f4:	0e 94 91 01 	call	0x322	; 0x322 <_digitalWrite>
     7f8:	18 bc       	out	0x28, r1	; 40
     7fa:	4b cf       	rjmp	.-362    	; 0x692 <_analogWrite+0x26>
     7fc:	8f 7d       	andi	r24, 0xDF	; 223
     7fe:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     802:	60 91 10 01 	lds	r22, 0x0110	; 0x800110 <_HIGH>
     806:	83 e0       	ldi	r24, 0x03	; 3
     808:	0e 94 91 01 	call	0x322	; 0x322 <_digitalWrite>
     80c:	10 92 b4 00 	sts	0x00B4, r1	; 0x8000b4 <__TEXT_REGION_LENGTH__+0x7e00b4>
     810:	40 cf       	rjmp	.-384    	; 0x692 <_analogWrite+0x26>
     812:	8f 77       	andi	r24, 0x7F	; 127
     814:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     818:	60 91 10 01 	lds	r22, 0x0110	; 0x800110 <_HIGH>
     81c:	89 e0       	ldi	r24, 0x09	; 9
     81e:	0e 94 91 01 	call	0x322	; 0x322 <_digitalWrite>
     822:	10 92 89 00 	sts	0x0089, r1	; 0x800089 <__TEXT_REGION_LENGTH__+0x7e0089>
     826:	10 92 88 00 	sts	0x0088, r1	; 0x800088 <__TEXT_REGION_LENGTH__+0x7e0088>
     82a:	33 cf       	rjmp	.-410    	; 0x692 <_analogWrite+0x26>
     82c:	8f 77       	andi	r24, 0x7F	; 127
     82e:	84 bd       	out	0x24, r24	; 36
     830:	60 91 10 01 	lds	r22, 0x0110	; 0x800110 <_HIGH>
     834:	86 e0       	ldi	r24, 0x06	; 6
     836:	0e 94 91 01 	call	0x322	; 0x322 <_digitalWrite>
     83a:	17 bc       	out	0x27, r1	; 39
     83c:	2a cf       	rjmp	.-428    	; 0x692 <_analogWrite+0x26>
     83e:	8f 77       	andi	r24, 0x7F	; 127
     840:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     844:	60 91 10 01 	lds	r22, 0x0110	; 0x800110 <_HIGH>
     848:	8b e0       	ldi	r24, 0x0B	; 11
     84a:	0e 94 91 01 	call	0x322	; 0x322 <_digitalWrite>
     84e:	10 92 b3 00 	sts	0x00B3, r1	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
     852:	1f cf       	rjmp	.-450    	; 0x692 <_analogWrite+0x26>

00000854 <_startupADC>:
     854:	87 e8       	ldi	r24, 0x87	; 135
     856:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     85a:	8a e0       	ldi	r24, 0x0A	; 10
     85c:	90 e0       	ldi	r25, 0x00	; 0
     85e:	0e 94 95 02 	call	0x52a	; 0x52a <_delayMs>
     862:	61 e0       	ldi	r22, 0x01	; 1
     864:	8d e0       	ldi	r24, 0x0D	; 13
     866:	0e 94 d2 01 	call	0x3a4	; 0x3a4 <_pinMode>
     86a:	60 e0       	ldi	r22, 0x00	; 0
     86c:	8d e0       	ldi	r24, 0x0D	; 13
     86e:	0c 94 91 01 	jmp	0x322	; 0x322 <_digitalWrite>

00000872 <_slowAnalogRead>:
     872:	cf 93       	push	r28
     874:	c8 2f       	mov	r28, r24
     876:	88 30       	cpi	r24, 0x08	; 8
     878:	38 f5       	brcc	.+78     	; 0x8c8 <_slowAnalogRead+0x56>
     87a:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     87e:	87 fd       	sbrc	r24, 7
     880:	0f c0       	rjmp	.+30     	; 0x8a0 <_slowAnalogRead+0x2e>
     882:	87 e8       	ldi	r24, 0x87	; 135
     884:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     888:	8a e0       	ldi	r24, 0x0A	; 10
     88a:	90 e0       	ldi	r25, 0x00	; 0
     88c:	0e 94 95 02 	call	0x52a	; 0x52a <_delayMs>
     890:	61 e0       	ldi	r22, 0x01	; 1
     892:	8d e0       	ldi	r24, 0x0D	; 13
     894:	0e 94 d2 01 	call	0x3a4	; 0x3a4 <_pinMode>
     898:	60 e0       	ldi	r22, 0x00	; 0
     89a:	8d e0       	ldi	r24, 0x0D	; 13
     89c:	0e 94 91 01 	call	0x322	; 0x322 <_digitalWrite>
     8a0:	c0 64       	ori	r28, 0x40	; 64
     8a2:	c0 93 7c 00 	sts	0x007C, r28	; 0x80007c <__TEXT_REGION_LENGTH__+0x7e007c>
     8a6:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     8aa:	80 64       	ori	r24, 0x40	; 64
     8ac:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     8b0:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     8b4:	86 fd       	sbrc	r24, 6
     8b6:	fc cf       	rjmp	.-8      	; 0x8b0 <_slowAnalogRead+0x3e>
     8b8:	80 91 78 00 	lds	r24, 0x0078	; 0x800078 <__TEXT_REGION_LENGTH__+0x7e0078>
     8bc:	20 91 79 00 	lds	r18, 0x0079	; 0x800079 <__TEXT_REGION_LENGTH__+0x7e0079>
     8c0:	90 e0       	ldi	r25, 0x00	; 0
     8c2:	92 2b       	or	r25, r18
     8c4:	cf 91       	pop	r28
     8c6:	08 95       	ret
     8c8:	80 e0       	ldi	r24, 0x00	; 0
     8ca:	90 e0       	ldi	r25, 0x00	; 0
     8cc:	cf 91       	pop	r28
     8ce:	08 95       	ret

000008d0 <__vector_21>:
     8d0:	1f 92       	push	r1
     8d2:	0f 92       	push	r0
     8d4:	0f b6       	in	r0, 0x3f	; 63
     8d6:	0f 92       	push	r0
     8d8:	11 24       	eor	r1, r1
     8da:	2f 93       	push	r18
     8dc:	3f 93       	push	r19
     8de:	4f 93       	push	r20
     8e0:	5f 93       	push	r21
     8e2:	6f 93       	push	r22
     8e4:	7f 93       	push	r23
     8e6:	8f 93       	push	r24
     8e8:	9f 93       	push	r25
     8ea:	af 93       	push	r26
     8ec:	bf 93       	push	r27
     8ee:	ef 93       	push	r30
     8f0:	ff 93       	push	r31
     8f2:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     8f6:	87 7f       	andi	r24, 0xF7	; 247
     8f8:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     8fc:	e0 91 b9 01 	lds	r30, 0x01B9	; 0x8001b9 <currentCallback>
     900:	f0 91 ba 01 	lds	r31, 0x01BA	; 0x8001ba <currentCallback+0x1>
     904:	30 97       	sbiw	r30, 0x00	; 0
     906:	59 f0       	breq	.+22     	; 0x91e <__stack+0x1f>
     908:	80 91 78 00 	lds	r24, 0x0078	; 0x800078 <__TEXT_REGION_LENGTH__+0x7e0078>
     90c:	20 91 79 00 	lds	r18, 0x0079	; 0x800079 <__TEXT_REGION_LENGTH__+0x7e0079>
     910:	90 e0       	ldi	r25, 0x00	; 0
     912:	92 2b       	or	r25, r18
     914:	09 95       	icall
     916:	10 92 ba 01 	sts	0x01BA, r1	; 0x8001ba <currentCallback+0x1>
     91a:	10 92 b9 01 	sts	0x01B9, r1	; 0x8001b9 <currentCallback>
     91e:	ff 91       	pop	r31
     920:	ef 91       	pop	r30
     922:	bf 91       	pop	r27
     924:	af 91       	pop	r26
     926:	9f 91       	pop	r25
     928:	8f 91       	pop	r24
     92a:	7f 91       	pop	r23
     92c:	6f 91       	pop	r22
     92e:	5f 91       	pop	r21
     930:	4f 91       	pop	r20
     932:	3f 91       	pop	r19
     934:	2f 91       	pop	r18
     936:	0f 90       	pop	r0
     938:	0f be       	out	0x3f, r0	; 63
     93a:	0f 90       	pop	r0
     93c:	1f 90       	pop	r1
     93e:	18 95       	reti

00000940 <_analogReadAsync>:
     940:	0f 93       	push	r16
     942:	1f 93       	push	r17
     944:	cf 93       	push	r28
     946:	c8 2f       	mov	r28, r24
     948:	8b 01       	movw	r16, r22
     94a:	88 30       	cpi	r24, 0x08	; 8
     94c:	e8 f4       	brcc	.+58     	; 0x988 <_analogReadAsync+0x48>
     94e:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     952:	87 fd       	sbrc	r24, 7
     954:	0f c0       	rjmp	.+30     	; 0x974 <_analogReadAsync+0x34>
     956:	87 e8       	ldi	r24, 0x87	; 135
     958:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     95c:	8a e0       	ldi	r24, 0x0A	; 10
     95e:	90 e0       	ldi	r25, 0x00	; 0
     960:	0e 94 95 02 	call	0x52a	; 0x52a <_delayMs>
     964:	61 e0       	ldi	r22, 0x01	; 1
     966:	8d e0       	ldi	r24, 0x0D	; 13
     968:	0e 94 d2 01 	call	0x3a4	; 0x3a4 <_pinMode>
     96c:	60 e0       	ldi	r22, 0x00	; 0
     96e:	8d e0       	ldi	r24, 0x0D	; 13
     970:	0e 94 91 01 	call	0x322	; 0x322 <_digitalWrite>
     974:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     978:	86 fd       	sbrc	r24, 6
     97a:	06 c0       	rjmp	.+12     	; 0x988 <_analogReadAsync+0x48>
     97c:	80 91 b9 01 	lds	r24, 0x01B9	; 0x8001b9 <currentCallback>
     980:	90 91 ba 01 	lds	r25, 0x01BA	; 0x8001ba <currentCallback+0x1>
     984:	89 2b       	or	r24, r25
     986:	29 f0       	breq	.+10     	; 0x992 <_analogReadAsync+0x52>
     988:	80 e0       	ldi	r24, 0x00	; 0
     98a:	cf 91       	pop	r28
     98c:	1f 91       	pop	r17
     98e:	0f 91       	pop	r16
     990:	08 95       	ret
     992:	10 93 ba 01 	sts	0x01BA, r17	; 0x8001ba <currentCallback+0x1>
     996:	00 93 b9 01 	sts	0x01B9, r16	; 0x8001b9 <currentCallback>
     99a:	c0 64       	ori	r28, 0x40	; 64
     99c:	c0 93 7c 00 	sts	0x007C, r28	; 0x80007c <__TEXT_REGION_LENGTH__+0x7e007c>
     9a0:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     9a4:	88 64       	ori	r24, 0x48	; 72
     9a6:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     9aa:	78 94       	sei
     9ac:	81 e0       	ldi	r24, 0x01	; 1
     9ae:	ed cf       	rjmp	.-38     	; 0x98a <_analogReadAsync+0x4a>

000009b0 <vfprintf>:
     9b0:	a0 e1       	ldi	r26, 0x10	; 16
     9b2:	b0 e0       	ldi	r27, 0x00	; 0
     9b4:	ee ed       	ldi	r30, 0xDE	; 222
     9b6:	f4 e0       	ldi	r31, 0x04	; 4
     9b8:	0c 94 70 08 	jmp	0x10e0	; 0x10e0 <__prologue_saves__>
     9bc:	7c 01       	movw	r14, r24
     9be:	1b 01       	movw	r2, r22
     9c0:	6a 01       	movw	r12, r20
     9c2:	fc 01       	movw	r30, r24
     9c4:	17 82       	std	Z+7, r1	; 0x07
     9c6:	16 82       	std	Z+6, r1	; 0x06
     9c8:	83 81       	ldd	r24, Z+3	; 0x03
     9ca:	81 ff       	sbrs	r24, 1
     9cc:	6d c3       	rjmp	.+1754   	; 0x10a8 <vfprintf+0x6f8>
     9ce:	9e 01       	movw	r18, r28
     9d0:	2f 5f       	subi	r18, 0xFF	; 255
     9d2:	3f 4f       	sbci	r19, 0xFF	; 255
     9d4:	59 01       	movw	r10, r18
     9d6:	f7 01       	movw	r30, r14
     9d8:	93 81       	ldd	r25, Z+3	; 0x03
     9da:	f1 01       	movw	r30, r2
     9dc:	93 fd       	sbrc	r25, 3
     9de:	85 91       	lpm	r24, Z+
     9e0:	93 ff       	sbrs	r25, 3
     9e2:	81 91       	ld	r24, Z+
     9e4:	1f 01       	movw	r2, r30
     9e6:	88 23       	and	r24, r24
     9e8:	09 f4       	brne	.+2      	; 0x9ec <vfprintf+0x3c>
     9ea:	cc c2       	rjmp	.+1432   	; 0xf84 <vfprintf+0x5d4>
     9ec:	85 32       	cpi	r24, 0x25	; 37
     9ee:	39 f4       	brne	.+14     	; 0x9fe <vfprintf+0x4e>
     9f0:	93 fd       	sbrc	r25, 3
     9f2:	85 91       	lpm	r24, Z+
     9f4:	93 ff       	sbrs	r25, 3
     9f6:	81 91       	ld	r24, Z+
     9f8:	1f 01       	movw	r2, r30
     9fa:	85 32       	cpi	r24, 0x25	; 37
     9fc:	39 f4       	brne	.+14     	; 0xa0c <vfprintf+0x5c>
     9fe:	b7 01       	movw	r22, r14
     a00:	90 e0       	ldi	r25, 0x00	; 0
     a02:	0e 94 9b 09 	call	0x1336	; 0x1336 <fputc>
     a06:	36 01       	movw	r6, r12
     a08:	63 01       	movw	r12, r6
     a0a:	e5 cf       	rjmp	.-54     	; 0x9d6 <vfprintf+0x26>
     a0c:	51 2c       	mov	r5, r1
     a0e:	91 2c       	mov	r9, r1
     a10:	00 e0       	ldi	r16, 0x00	; 0
     a12:	00 32       	cpi	r16, 0x20	; 32
     a14:	38 f4       	brcc	.+14     	; 0xa24 <vfprintf+0x74>
     a16:	8b 32       	cpi	r24, 0x2B	; 43
     a18:	09 f1       	breq	.+66     	; 0xa5c <vfprintf+0xac>
     a1a:	90 f4       	brcc	.+36     	; 0xa40 <vfprintf+0x90>
     a1c:	80 32       	cpi	r24, 0x20	; 32
     a1e:	f9 f0       	breq	.+62     	; 0xa5e <vfprintf+0xae>
     a20:	83 32       	cpi	r24, 0x23	; 35
     a22:	09 f1       	breq	.+66     	; 0xa66 <vfprintf+0xb6>
     a24:	07 fd       	sbrc	r16, 7
     a26:	34 c0       	rjmp	.+104    	; 0xa90 <vfprintf+0xe0>
     a28:	20 ed       	ldi	r18, 0xD0	; 208
     a2a:	28 0f       	add	r18, r24
     a2c:	2a 30       	cpi	r18, 0x0A	; 10
     a2e:	20 f5       	brcc	.+72     	; 0xa78 <vfprintf+0xc8>
     a30:	06 ff       	sbrs	r16, 6
     a32:	1b c0       	rjmp	.+54     	; 0xa6a <vfprintf+0xba>
     a34:	fa e0       	ldi	r31, 0x0A	; 10
     a36:	5f 9e       	mul	r5, r31
     a38:	20 0d       	add	r18, r0
     a3a:	11 24       	eor	r1, r1
     a3c:	52 2e       	mov	r5, r18
     a3e:	05 c0       	rjmp	.+10     	; 0xa4a <vfprintf+0x9a>
     a40:	8d 32       	cpi	r24, 0x2D	; 45
     a42:	79 f0       	breq	.+30     	; 0xa62 <vfprintf+0xb2>
     a44:	80 33       	cpi	r24, 0x30	; 48
     a46:	71 f7       	brne	.-36     	; 0xa24 <vfprintf+0x74>
     a48:	01 60       	ori	r16, 0x01	; 1
     a4a:	f1 01       	movw	r30, r2
     a4c:	93 fd       	sbrc	r25, 3
     a4e:	85 91       	lpm	r24, Z+
     a50:	93 ff       	sbrs	r25, 3
     a52:	81 91       	ld	r24, Z+
     a54:	1f 01       	movw	r2, r30
     a56:	81 11       	cpse	r24, r1
     a58:	dc cf       	rjmp	.-72     	; 0xa12 <vfprintf+0x62>
     a5a:	1a c0       	rjmp	.+52     	; 0xa90 <vfprintf+0xe0>
     a5c:	02 60       	ori	r16, 0x02	; 2
     a5e:	04 60       	ori	r16, 0x04	; 4
     a60:	f4 cf       	rjmp	.-24     	; 0xa4a <vfprintf+0x9a>
     a62:	08 60       	ori	r16, 0x08	; 8
     a64:	f2 cf       	rjmp	.-28     	; 0xa4a <vfprintf+0x9a>
     a66:	00 61       	ori	r16, 0x10	; 16
     a68:	f0 cf       	rjmp	.-32     	; 0xa4a <vfprintf+0x9a>
     a6a:	3a e0       	ldi	r19, 0x0A	; 10
     a6c:	93 9e       	mul	r9, r19
     a6e:	20 0d       	add	r18, r0
     a70:	11 24       	eor	r1, r1
     a72:	92 2e       	mov	r9, r18
     a74:	00 62       	ori	r16, 0x20	; 32
     a76:	e9 cf       	rjmp	.-46     	; 0xa4a <vfprintf+0x9a>
     a78:	8e 32       	cpi	r24, 0x2E	; 46
     a7a:	21 f4       	brne	.+8      	; 0xa84 <vfprintf+0xd4>
     a7c:	06 fd       	sbrc	r16, 6
     a7e:	82 c2       	rjmp	.+1284   	; 0xf84 <vfprintf+0x5d4>
     a80:	00 64       	ori	r16, 0x40	; 64
     a82:	e3 cf       	rjmp	.-58     	; 0xa4a <vfprintf+0x9a>
     a84:	8c 36       	cpi	r24, 0x6C	; 108
     a86:	11 f4       	brne	.+4      	; 0xa8c <vfprintf+0xdc>
     a88:	00 68       	ori	r16, 0x80	; 128
     a8a:	df cf       	rjmp	.-66     	; 0xa4a <vfprintf+0x9a>
     a8c:	88 36       	cpi	r24, 0x68	; 104
     a8e:	e9 f2       	breq	.-70     	; 0xa4a <vfprintf+0x9a>
     a90:	9b eb       	ldi	r25, 0xBB	; 187
     a92:	98 0f       	add	r25, r24
     a94:	93 30       	cpi	r25, 0x03	; 3
     a96:	d8 f5       	brcc	.+118    	; 0xb0e <vfprintf+0x15e>
     a98:	00 61       	ori	r16, 0x10	; 16
     a9a:	80 5e       	subi	r24, 0xE0	; 224
     a9c:	06 fd       	sbrc	r16, 6
     a9e:	02 c0       	rjmp	.+4      	; 0xaa4 <vfprintf+0xf4>
     aa0:	46 e0       	ldi	r20, 0x06	; 6
     aa2:	54 2e       	mov	r5, r20
     aa4:	10 2f       	mov	r17, r16
     aa6:	1f 73       	andi	r17, 0x3F	; 63
     aa8:	85 36       	cpi	r24, 0x65	; 101
     aaa:	c1 f5       	brne	.+112    	; 0xb1c <vfprintf+0x16c>
     aac:	10 64       	ori	r17, 0x40	; 64
     aae:	17 ff       	sbrs	r17, 7
     ab0:	3e c0       	rjmp	.+124    	; 0xb2e <vfprintf+0x17e>
     ab2:	8b e3       	ldi	r24, 0x3B	; 59
     ab4:	85 15       	cp	r24, r5
     ab6:	08 f4       	brcc	.+2      	; 0xaba <vfprintf+0x10a>
     ab8:	42 c0       	rjmp	.+132    	; 0xb3e <vfprintf+0x18e>
     aba:	91 e0       	ldi	r25, 0x01	; 1
     abc:	95 0d       	add	r25, r5
     abe:	9c 87       	std	Y+12, r25	; 0x0c
     ac0:	27 e0       	ldi	r18, 0x07	; 7
     ac2:	36 01       	movw	r6, r12
     ac4:	34 e0       	ldi	r19, 0x04	; 4
     ac6:	63 0e       	add	r6, r19
     ac8:	71 1c       	adc	r7, r1
     aca:	f6 01       	movw	r30, r12
     acc:	60 81       	ld	r22, Z
     ace:	71 81       	ldd	r23, Z+1	; 0x01
     ad0:	82 81       	ldd	r24, Z+2	; 0x02
     ad2:	93 81       	ldd	r25, Z+3	; 0x03
     ad4:	0c 85       	ldd	r16, Y+12	; 0x0c
     ad6:	a5 01       	movw	r20, r10
     ad8:	0e 94 ad 08 	call	0x115a	; 0x115a <__ftoa_engine>
     adc:	6c 01       	movw	r12, r24
     ade:	f9 81       	ldd	r31, Y+1	; 0x01
     ae0:	fe 87       	std	Y+14, r31	; 0x0e
     ae2:	f0 ff       	sbrs	r31, 0
     ae4:	02 c0       	rjmp	.+4      	; 0xaea <vfprintf+0x13a>
     ae6:	f3 ff       	sbrs	r31, 3
     ae8:	30 c0       	rjmp	.+96     	; 0xb4a <vfprintf+0x19a>
     aea:	11 fd       	sbrc	r17, 1
     aec:	30 c0       	rjmp	.+96     	; 0xb4e <vfprintf+0x19e>
     aee:	01 2f       	mov	r16, r17
     af0:	04 70       	andi	r16, 0x04	; 4
     af2:	12 fd       	sbrc	r17, 2
     af4:	00 e2       	ldi	r16, 0x20	; 32
     af6:	2e 85       	ldd	r18, Y+14	; 0x0e
     af8:	2c 70       	andi	r18, 0x0C	; 12
     afa:	42 2e       	mov	r4, r18
     afc:	09 f4       	brne	.+2      	; 0xb00 <vfprintf+0x150>
     afe:	64 c0       	rjmp	.+200    	; 0xbc8 <vfprintf+0x218>
     b00:	01 11       	cpse	r16, r1
     b02:	d5 c2       	rjmp	.+1450   	; 0x10ae <vfprintf+0x6fe>
     b04:	f3 e0       	ldi	r31, 0x03	; 3
     b06:	f9 15       	cp	r31, r9
     b08:	20 f1       	brcs	.+72     	; 0xb52 <vfprintf+0x1a2>
     b0a:	41 2c       	mov	r4, r1
     b0c:	36 c0       	rjmp	.+108    	; 0xb7a <vfprintf+0x1ca>
     b0e:	9b e9       	ldi	r25, 0x9B	; 155
     b10:	98 0f       	add	r25, r24
     b12:	93 30       	cpi	r25, 0x03	; 3
     b14:	08 f0       	brcs	.+2      	; 0xb18 <vfprintf+0x168>
     b16:	76 c1       	rjmp	.+748    	; 0xe04 <vfprintf+0x454>
     b18:	0f 7e       	andi	r16, 0xEF	; 239
     b1a:	c0 cf       	rjmp	.-128    	; 0xa9c <vfprintf+0xec>
     b1c:	86 36       	cpi	r24, 0x66	; 102
     b1e:	11 f4       	brne	.+4      	; 0xb24 <vfprintf+0x174>
     b20:	10 68       	ori	r17, 0x80	; 128
     b22:	c5 cf       	rjmp	.-118    	; 0xaae <vfprintf+0xfe>
     b24:	55 20       	and	r5, r5
     b26:	09 f4       	brne	.+2      	; 0xb2a <vfprintf+0x17a>
     b28:	c2 cf       	rjmp	.-124    	; 0xaae <vfprintf+0xfe>
     b2a:	5a 94       	dec	r5
     b2c:	c0 cf       	rjmp	.-128    	; 0xaae <vfprintf+0xfe>
     b2e:	e7 e0       	ldi	r30, 0x07	; 7
     b30:	e5 15       	cp	r30, r5
     b32:	48 f4       	brcc	.+18     	; 0xb46 <vfprintf+0x196>
     b34:	27 e0       	ldi	r18, 0x07	; 7
     b36:	37 e0       	ldi	r19, 0x07	; 7
     b38:	53 2e       	mov	r5, r19
     b3a:	1c 86       	std	Y+12, r1	; 0x0c
     b3c:	c2 cf       	rjmp	.-124    	; 0xac2 <vfprintf+0x112>
     b3e:	27 e0       	ldi	r18, 0x07	; 7
     b40:	fc e3       	ldi	r31, 0x3C	; 60
     b42:	fc 87       	std	Y+12, r31	; 0x0c
     b44:	be cf       	rjmp	.-132    	; 0xac2 <vfprintf+0x112>
     b46:	25 2d       	mov	r18, r5
     b48:	f8 cf       	rjmp	.-16     	; 0xb3a <vfprintf+0x18a>
     b4a:	0d e2       	ldi	r16, 0x2D	; 45
     b4c:	d4 cf       	rjmp	.-88     	; 0xaf6 <vfprintf+0x146>
     b4e:	0b e2       	ldi	r16, 0x2B	; 43
     b50:	d2 cf       	rjmp	.-92     	; 0xaf6 <vfprintf+0x146>
     b52:	83 e0       	ldi	r24, 0x03	; 3
     b54:	49 2c       	mov	r4, r9
     b56:	48 1a       	sub	r4, r24
     b58:	13 fd       	sbrc	r17, 3
     b5a:	08 c0       	rjmp	.+16     	; 0xb6c <vfprintf+0x1bc>
     b5c:	b7 01       	movw	r22, r14
     b5e:	80 e2       	ldi	r24, 0x20	; 32
     b60:	90 e0       	ldi	r25, 0x00	; 0
     b62:	0e 94 9b 09 	call	0x1336	; 0x1336 <fputc>
     b66:	4a 94       	dec	r4
     b68:	41 10       	cpse	r4, r1
     b6a:	f8 cf       	rjmp	.-16     	; 0xb5c <vfprintf+0x1ac>
     b6c:	00 23       	and	r16, r16
     b6e:	29 f0       	breq	.+10     	; 0xb7a <vfprintf+0x1ca>
     b70:	b7 01       	movw	r22, r14
     b72:	80 2f       	mov	r24, r16
     b74:	90 e0       	ldi	r25, 0x00	; 0
     b76:	0e 94 9b 09 	call	0x1336	; 0x1336 <fputc>
     b7a:	3e 85       	ldd	r19, Y+14	; 0x0e
     b7c:	33 ff       	sbrs	r19, 3
     b7e:	15 c0       	rjmp	.+42     	; 0xbaa <vfprintf+0x1fa>
     b80:	98 e6       	ldi	r25, 0x68	; 104
     b82:	c9 2e       	mov	r12, r25
     b84:	90 e0       	ldi	r25, 0x00	; 0
     b86:	d9 2e       	mov	r13, r25
     b88:	10 71       	andi	r17, 0x10	; 16
     b8a:	f6 01       	movw	r30, r12
     b8c:	84 91       	lpm	r24, Z
     b8e:	81 11       	cpse	r24, r1
     b90:	11 c0       	rjmp	.+34     	; 0xbb4 <vfprintf+0x204>
     b92:	44 20       	and	r4, r4
     b94:	09 f4       	brne	.+2      	; 0xb98 <vfprintf+0x1e8>
     b96:	38 cf       	rjmp	.-400    	; 0xa08 <vfprintf+0x58>
     b98:	b7 01       	movw	r22, r14
     b9a:	80 e2       	ldi	r24, 0x20	; 32
     b9c:	90 e0       	ldi	r25, 0x00	; 0
     b9e:	0e 94 9b 09 	call	0x1336	; 0x1336 <fputc>
     ba2:	4a 94       	dec	r4
     ba4:	f6 cf       	rjmp	.-20     	; 0xb92 <vfprintf+0x1e2>
     ba6:	84 e0       	ldi	r24, 0x04	; 4
     ba8:	d5 cf       	rjmp	.-86     	; 0xb54 <vfprintf+0x1a4>
     baa:	8c e6       	ldi	r24, 0x6C	; 108
     bac:	c8 2e       	mov	r12, r24
     bae:	80 e0       	ldi	r24, 0x00	; 0
     bb0:	d8 2e       	mov	r13, r24
     bb2:	ea cf       	rjmp	.-44     	; 0xb88 <vfprintf+0x1d8>
     bb4:	11 11       	cpse	r17, r1
     bb6:	80 52       	subi	r24, 0x20	; 32
     bb8:	b7 01       	movw	r22, r14
     bba:	90 e0       	ldi	r25, 0x00	; 0
     bbc:	0e 94 9b 09 	call	0x1336	; 0x1336 <fputc>
     bc0:	8f ef       	ldi	r24, 0xFF	; 255
     bc2:	c8 1a       	sub	r12, r24
     bc4:	d8 0a       	sbc	r13, r24
     bc6:	e1 cf       	rjmp	.-62     	; 0xb8a <vfprintf+0x1da>
     bc8:	17 ff       	sbrs	r17, 7
     bca:	7c c0       	rjmp	.+248    	; 0xcc4 <vfprintf+0x314>
     bcc:	8c 85       	ldd	r24, Y+12	; 0x0c
     bce:	8c 0d       	add	r24, r12
     bd0:	fe 85       	ldd	r31, Y+14	; 0x0e
     bd2:	f4 ff       	sbrs	r31, 4
     bd4:	04 c0       	rjmp	.+8      	; 0xbde <vfprintf+0x22e>
     bd6:	9a 81       	ldd	r25, Y+2	; 0x02
     bd8:	91 33       	cpi	r25, 0x31	; 49
     bda:	09 f4       	brne	.+2      	; 0xbde <vfprintf+0x22e>
     bdc:	81 50       	subi	r24, 0x01	; 1
     bde:	18 16       	cp	r1, r24
     be0:	0c f0       	brlt	.+2      	; 0xbe4 <vfprintf+0x234>
     be2:	93 c0       	rjmp	.+294    	; 0xd0a <vfprintf+0x35a>
     be4:	8c 87       	std	Y+12, r24	; 0x0c
     be6:	89 30       	cpi	r24, 0x09	; 9
     be8:	10 f0       	brcs	.+4      	; 0xbee <vfprintf+0x23e>
     bea:	28 e0       	ldi	r18, 0x08	; 8
     bec:	2c 87       	std	Y+12, r18	; 0x0c
     bee:	17 ff       	sbrs	r17, 7
     bf0:	91 c0       	rjmp	.+290    	; 0xd14 <vfprintf+0x364>
     bf2:	1c 14       	cp	r1, r12
     bf4:	1d 04       	cpc	r1, r13
     bf6:	0c f0       	brlt	.+2      	; 0xbfa <vfprintf+0x24a>
     bf8:	90 c0       	rjmp	.+288    	; 0xd1a <vfprintf+0x36a>
     bfa:	c6 01       	movw	r24, r12
     bfc:	01 96       	adiw	r24, 0x01	; 1
     bfe:	01 11       	cpse	r16, r1
     c00:	01 96       	adiw	r24, 0x01	; 1
     c02:	55 20       	and	r5, r5
     c04:	31 f0       	breq	.+12     	; 0xc12 <vfprintf+0x262>
     c06:	25 2d       	mov	r18, r5
     c08:	30 e0       	ldi	r19, 0x00	; 0
     c0a:	2f 5f       	subi	r18, 0xFF	; 255
     c0c:	3f 4f       	sbci	r19, 0xFF	; 255
     c0e:	82 0f       	add	r24, r18
     c10:	93 1f       	adc	r25, r19
     c12:	29 2d       	mov	r18, r9
     c14:	30 e0       	ldi	r19, 0x00	; 0
     c16:	82 17       	cp	r24, r18
     c18:	93 07       	cpc	r25, r19
     c1a:	14 f4       	brge	.+4      	; 0xc20 <vfprintf+0x270>
     c1c:	49 2c       	mov	r4, r9
     c1e:	48 1a       	sub	r4, r24
     c20:	81 2f       	mov	r24, r17
     c22:	89 70       	andi	r24, 0x09	; 9
     c24:	11 f4       	brne	.+4      	; 0xc2a <vfprintf+0x27a>
     c26:	41 10       	cpse	r4, r1
     c28:	7b c0       	rjmp	.+246    	; 0xd20 <vfprintf+0x370>
     c2a:	00 23       	and	r16, r16
     c2c:	29 f0       	breq	.+10     	; 0xc38 <vfprintf+0x288>
     c2e:	b7 01       	movw	r22, r14
     c30:	80 2f       	mov	r24, r16
     c32:	90 e0       	ldi	r25, 0x00	; 0
     c34:	0e 94 9b 09 	call	0x1336	; 0x1336 <fputc>
     c38:	13 fd       	sbrc	r17, 3
     c3a:	02 c0       	rjmp	.+4      	; 0xc40 <vfprintf+0x290>
     c3c:	41 10       	cpse	r4, r1
     c3e:	77 c0       	rjmp	.+238    	; 0xd2e <vfprintf+0x37e>
     c40:	17 ff       	sbrs	r17, 7
     c42:	90 c0       	rjmp	.+288    	; 0xd64 <vfprintf+0x3b4>
     c44:	46 01       	movw	r8, r12
     c46:	d7 fe       	sbrs	r13, 7
     c48:	02 c0       	rjmp	.+4      	; 0xc4e <vfprintf+0x29e>
     c4a:	81 2c       	mov	r8, r1
     c4c:	91 2c       	mov	r9, r1
     c4e:	c6 01       	movw	r24, r12
     c50:	88 19       	sub	r24, r8
     c52:	99 09       	sbc	r25, r9
     c54:	f5 01       	movw	r30, r10
     c56:	e8 0f       	add	r30, r24
     c58:	f9 1f       	adc	r31, r25
     c5a:	f8 8b       	std	Y+16, r31	; 0x10
     c5c:	ef 87       	std	Y+15, r30	; 0x0f
     c5e:	96 01       	movw	r18, r12
     c60:	8c 85       	ldd	r24, Y+12	; 0x0c
     c62:	28 1b       	sub	r18, r24
     c64:	31 09       	sbc	r19, r1
     c66:	3d 87       	std	Y+13, r19	; 0x0d
     c68:	2c 87       	std	Y+12, r18	; 0x0c
     c6a:	05 2d       	mov	r16, r5
     c6c:	10 e0       	ldi	r17, 0x00	; 0
     c6e:	11 95       	neg	r17
     c70:	01 95       	neg	r16
     c72:	11 09       	sbc	r17, r1
     c74:	9f ef       	ldi	r25, 0xFF	; 255
     c76:	89 16       	cp	r8, r25
     c78:	99 06       	cpc	r9, r25
     c7a:	29 f4       	brne	.+10     	; 0xc86 <vfprintf+0x2d6>
     c7c:	b7 01       	movw	r22, r14
     c7e:	8e e2       	ldi	r24, 0x2E	; 46
     c80:	90 e0       	ldi	r25, 0x00	; 0
     c82:	0e 94 9b 09 	call	0x1336	; 0x1336 <fputc>
     c86:	c8 14       	cp	r12, r8
     c88:	d9 04       	cpc	r13, r9
     c8a:	0c f4       	brge	.+2      	; 0xc8e <vfprintf+0x2de>
     c8c:	57 c0       	rjmp	.+174    	; 0xd3c <vfprintf+0x38c>
     c8e:	ec 85       	ldd	r30, Y+12	; 0x0c
     c90:	fd 85       	ldd	r31, Y+13	; 0x0d
     c92:	e8 15       	cp	r30, r8
     c94:	f9 05       	cpc	r31, r9
     c96:	0c f0       	brlt	.+2      	; 0xc9a <vfprintf+0x2ea>
     c98:	51 c0       	rjmp	.+162    	; 0xd3c <vfprintf+0x38c>
     c9a:	ef 85       	ldd	r30, Y+15	; 0x0f
     c9c:	f8 89       	ldd	r31, Y+16	; 0x10
     c9e:	81 81       	ldd	r24, Z+1	; 0x01
     ca0:	f1 e0       	ldi	r31, 0x01	; 1
     ca2:	8f 1a       	sub	r8, r31
     ca4:	91 08       	sbc	r9, r1
     ca6:	2f 85       	ldd	r18, Y+15	; 0x0f
     ca8:	38 89       	ldd	r19, Y+16	; 0x10
     caa:	2f 5f       	subi	r18, 0xFF	; 255
     cac:	3f 4f       	sbci	r19, 0xFF	; 255
     cae:	38 8b       	std	Y+16, r19	; 0x10
     cb0:	2f 87       	std	Y+15, r18	; 0x0f
     cb2:	80 16       	cp	r8, r16
     cb4:	91 06       	cpc	r9, r17
     cb6:	0c f4       	brge	.+2      	; 0xcba <vfprintf+0x30a>
     cb8:	43 c0       	rjmp	.+134    	; 0xd40 <vfprintf+0x390>
     cba:	b7 01       	movw	r22, r14
     cbc:	90 e0       	ldi	r25, 0x00	; 0
     cbe:	0e 94 9b 09 	call	0x1336	; 0x1336 <fputc>
     cc2:	d8 cf       	rjmp	.-80     	; 0xc74 <vfprintf+0x2c4>
     cc4:	16 fd       	sbrc	r17, 6
     cc6:	93 cf       	rjmp	.-218    	; 0xbee <vfprintf+0x23e>
     cc8:	e5 2d       	mov	r30, r5
     cca:	f0 e0       	ldi	r31, 0x00	; 0
     ccc:	ec 15       	cp	r30, r12
     cce:	fd 05       	cpc	r31, r13
     cd0:	34 f0       	brlt	.+12     	; 0xcde <vfprintf+0x32e>
     cd2:	3c ef       	ldi	r19, 0xFC	; 252
     cd4:	c3 16       	cp	r12, r19
     cd6:	3f ef       	ldi	r19, 0xFF	; 255
     cd8:	d3 06       	cpc	r13, r19
     cda:	0c f0       	brlt	.+2      	; 0xcde <vfprintf+0x32e>
     cdc:	10 68       	ori	r17, 0x80	; 128
     cde:	32 96       	adiw	r30, 0x02	; 2
     ce0:	ea 0d       	add	r30, r10
     ce2:	fb 1d       	adc	r31, r11
     ce4:	55 20       	and	r5, r5
     ce6:	19 f0       	breq	.+6      	; 0xcee <vfprintf+0x33e>
     ce8:	82 91       	ld	r24, -Z
     cea:	80 33       	cpi	r24, 0x30	; 48
     cec:	61 f0       	breq	.+24     	; 0xd06 <vfprintf+0x356>
     cee:	17 ff       	sbrs	r17, 7
     cf0:	7e cf       	rjmp	.-260    	; 0xbee <vfprintf+0x23e>
     cf2:	81 e0       	ldi	r24, 0x01	; 1
     cf4:	85 0d       	add	r24, r5
     cf6:	8c 87       	std	Y+12, r24	; 0x0c
     cf8:	85 2d       	mov	r24, r5
     cfa:	90 e0       	ldi	r25, 0x00	; 0
     cfc:	c8 16       	cp	r12, r24
     cfe:	d9 06       	cpc	r13, r25
     d00:	3c f4       	brge	.+14     	; 0xd10 <vfprintf+0x360>
     d02:	5c 18       	sub	r5, r12
     d04:	74 cf       	rjmp	.-280    	; 0xbee <vfprintf+0x23e>
     d06:	5a 94       	dec	r5
     d08:	ed cf       	rjmp	.-38     	; 0xce4 <vfprintf+0x334>
     d0a:	91 e0       	ldi	r25, 0x01	; 1
     d0c:	9c 87       	std	Y+12, r25	; 0x0c
     d0e:	6f cf       	rjmp	.-290    	; 0xbee <vfprintf+0x23e>
     d10:	51 2c       	mov	r5, r1
     d12:	6d cf       	rjmp	.-294    	; 0xbee <vfprintf+0x23e>
     d14:	85 e0       	ldi	r24, 0x05	; 5
     d16:	90 e0       	ldi	r25, 0x00	; 0
     d18:	72 cf       	rjmp	.-284    	; 0xbfe <vfprintf+0x24e>
     d1a:	81 e0       	ldi	r24, 0x01	; 1
     d1c:	90 e0       	ldi	r25, 0x00	; 0
     d1e:	6f cf       	rjmp	.-290    	; 0xbfe <vfprintf+0x24e>
     d20:	b7 01       	movw	r22, r14
     d22:	80 e2       	ldi	r24, 0x20	; 32
     d24:	90 e0       	ldi	r25, 0x00	; 0
     d26:	0e 94 9b 09 	call	0x1336	; 0x1336 <fputc>
     d2a:	4a 94       	dec	r4
     d2c:	7c cf       	rjmp	.-264    	; 0xc26 <vfprintf+0x276>
     d2e:	b7 01       	movw	r22, r14
     d30:	80 e3       	ldi	r24, 0x30	; 48
     d32:	90 e0       	ldi	r25, 0x00	; 0
     d34:	0e 94 9b 09 	call	0x1336	; 0x1336 <fputc>
     d38:	4a 94       	dec	r4
     d3a:	80 cf       	rjmp	.-256    	; 0xc3c <vfprintf+0x28c>
     d3c:	80 e3       	ldi	r24, 0x30	; 48
     d3e:	b0 cf       	rjmp	.-160    	; 0xca0 <vfprintf+0x2f0>
     d40:	c8 14       	cp	r12, r8
     d42:	d9 04       	cpc	r13, r9
     d44:	41 f4       	brne	.+16     	; 0xd56 <vfprintf+0x3a6>
     d46:	9a 81       	ldd	r25, Y+2	; 0x02
     d48:	96 33       	cpi	r25, 0x36	; 54
     d4a:	50 f4       	brcc	.+20     	; 0xd60 <vfprintf+0x3b0>
     d4c:	95 33       	cpi	r25, 0x35	; 53
     d4e:	19 f4       	brne	.+6      	; 0xd56 <vfprintf+0x3a6>
     d50:	3e 85       	ldd	r19, Y+14	; 0x0e
     d52:	34 ff       	sbrs	r19, 4
     d54:	05 c0       	rjmp	.+10     	; 0xd60 <vfprintf+0x3b0>
     d56:	b7 01       	movw	r22, r14
     d58:	90 e0       	ldi	r25, 0x00	; 0
     d5a:	0e 94 9b 09 	call	0x1336	; 0x1336 <fputc>
     d5e:	19 cf       	rjmp	.-462    	; 0xb92 <vfprintf+0x1e2>
     d60:	81 e3       	ldi	r24, 0x31	; 49
     d62:	f9 cf       	rjmp	.-14     	; 0xd56 <vfprintf+0x3a6>
     d64:	8a 81       	ldd	r24, Y+2	; 0x02
     d66:	81 33       	cpi	r24, 0x31	; 49
     d68:	19 f0       	breq	.+6      	; 0xd70 <vfprintf+0x3c0>
     d6a:	9e 85       	ldd	r25, Y+14	; 0x0e
     d6c:	9f 7e       	andi	r25, 0xEF	; 239
     d6e:	9e 87       	std	Y+14, r25	; 0x0e
     d70:	b7 01       	movw	r22, r14
     d72:	90 e0       	ldi	r25, 0x00	; 0
     d74:	0e 94 9b 09 	call	0x1336	; 0x1336 <fputc>
     d78:	51 10       	cpse	r5, r1
     d7a:	24 c0       	rjmp	.+72     	; 0xdc4 <vfprintf+0x414>
     d7c:	14 fd       	sbrc	r17, 4
     d7e:	38 c0       	rjmp	.+112    	; 0xdf0 <vfprintf+0x440>
     d80:	85 e6       	ldi	r24, 0x65	; 101
     d82:	90 e0       	ldi	r25, 0x00	; 0
     d84:	b7 01       	movw	r22, r14
     d86:	0e 94 9b 09 	call	0x1336	; 0x1336 <fputc>
     d8a:	d7 fc       	sbrc	r13, 7
     d8c:	06 c0       	rjmp	.+12     	; 0xd9a <vfprintf+0x3ea>
     d8e:	c1 14       	cp	r12, r1
     d90:	d1 04       	cpc	r13, r1
     d92:	89 f5       	brne	.+98     	; 0xdf6 <vfprintf+0x446>
     d94:	ee 85       	ldd	r30, Y+14	; 0x0e
     d96:	e4 ff       	sbrs	r30, 4
     d98:	2e c0       	rjmp	.+92     	; 0xdf6 <vfprintf+0x446>
     d9a:	d1 94       	neg	r13
     d9c:	c1 94       	neg	r12
     d9e:	d1 08       	sbc	r13, r1
     da0:	8d e2       	ldi	r24, 0x2D	; 45
     da2:	b7 01       	movw	r22, r14
     da4:	90 e0       	ldi	r25, 0x00	; 0
     da6:	0e 94 9b 09 	call	0x1336	; 0x1336 <fputc>
     daa:	80 e3       	ldi	r24, 0x30	; 48
     dac:	2a e0       	ldi	r18, 0x0A	; 10
     dae:	c2 16       	cp	r12, r18
     db0:	d1 04       	cpc	r13, r1
     db2:	1c f5       	brge	.+70     	; 0xdfa <vfprintf+0x44a>
     db4:	b7 01       	movw	r22, r14
     db6:	90 e0       	ldi	r25, 0x00	; 0
     db8:	0e 94 9b 09 	call	0x1336	; 0x1336 <fputc>
     dbc:	b7 01       	movw	r22, r14
     dbe:	c6 01       	movw	r24, r12
     dc0:	c0 96       	adiw	r24, 0x30	; 48
     dc2:	cb cf       	rjmp	.-106    	; 0xd5a <vfprintf+0x3aa>
     dc4:	b7 01       	movw	r22, r14
     dc6:	8e e2       	ldi	r24, 0x2E	; 46
     dc8:	90 e0       	ldi	r25, 0x00	; 0
     dca:	0e 94 9b 09 	call	0x1336	; 0x1336 <fputc>
     dce:	53 94       	inc	r5
     dd0:	53 94       	inc	r5
     dd2:	82 e0       	ldi	r24, 0x02	; 2
     dd4:	01 e0       	ldi	r16, 0x01	; 1
     dd6:	08 0f       	add	r16, r24
     dd8:	f5 01       	movw	r30, r10
     dda:	e8 0f       	add	r30, r24
     ddc:	f1 1d       	adc	r31, r1
     dde:	80 81       	ld	r24, Z
     de0:	b7 01       	movw	r22, r14
     de2:	90 e0       	ldi	r25, 0x00	; 0
     de4:	0e 94 9b 09 	call	0x1336	; 0x1336 <fputc>
     de8:	80 2f       	mov	r24, r16
     dea:	50 12       	cpse	r5, r16
     dec:	f3 cf       	rjmp	.-26     	; 0xdd4 <vfprintf+0x424>
     dee:	c6 cf       	rjmp	.-116    	; 0xd7c <vfprintf+0x3cc>
     df0:	85 e4       	ldi	r24, 0x45	; 69
     df2:	90 e0       	ldi	r25, 0x00	; 0
     df4:	c7 cf       	rjmp	.-114    	; 0xd84 <vfprintf+0x3d4>
     df6:	8b e2       	ldi	r24, 0x2B	; 43
     df8:	d4 cf       	rjmp	.-88     	; 0xda2 <vfprintf+0x3f2>
     dfa:	8f 5f       	subi	r24, 0xFF	; 255
     dfc:	fa e0       	ldi	r31, 0x0A	; 10
     dfe:	cf 1a       	sub	r12, r31
     e00:	d1 08       	sbc	r13, r1
     e02:	d4 cf       	rjmp	.-88     	; 0xdac <vfprintf+0x3fc>
     e04:	83 36       	cpi	r24, 0x63	; 99
     e06:	c1 f0       	breq	.+48     	; 0xe38 <vfprintf+0x488>
     e08:	83 37       	cpi	r24, 0x73	; 115
     e0a:	09 f4       	brne	.+2      	; 0xe0e <vfprintf+0x45e>
     e0c:	43 c0       	rjmp	.+134    	; 0xe94 <vfprintf+0x4e4>
     e0e:	83 35       	cpi	r24, 0x53	; 83
     e10:	09 f0       	breq	.+2      	; 0xe14 <vfprintf+0x464>
     e12:	5e c0       	rjmp	.+188    	; 0xed0 <vfprintf+0x520>
     e14:	36 01       	movw	r6, r12
     e16:	f2 e0       	ldi	r31, 0x02	; 2
     e18:	6f 0e       	add	r6, r31
     e1a:	71 1c       	adc	r7, r1
     e1c:	f6 01       	movw	r30, r12
     e1e:	c0 80       	ld	r12, Z
     e20:	d1 80       	ldd	r13, Z+1	; 0x01
     e22:	06 ff       	sbrs	r16, 6
     e24:	4b c0       	rjmp	.+150    	; 0xebc <vfprintf+0x50c>
     e26:	65 2d       	mov	r22, r5
     e28:	70 e0       	ldi	r23, 0x00	; 0
     e2a:	c6 01       	movw	r24, r12
     e2c:	0e 94 85 09 	call	0x130a	; 0x130a <strnlen_P>
     e30:	9d 87       	std	Y+13, r25	; 0x0d
     e32:	8c 87       	std	Y+12, r24	; 0x0c
     e34:	00 68       	ori	r16, 0x80	; 128
     e36:	0d c0       	rjmp	.+26     	; 0xe52 <vfprintf+0x4a2>
     e38:	36 01       	movw	r6, r12
     e3a:	32 e0       	ldi	r19, 0x02	; 2
     e3c:	63 0e       	add	r6, r19
     e3e:	71 1c       	adc	r7, r1
     e40:	f6 01       	movw	r30, r12
     e42:	80 81       	ld	r24, Z
     e44:	89 83       	std	Y+1, r24	; 0x01
     e46:	21 e0       	ldi	r18, 0x01	; 1
     e48:	30 e0       	ldi	r19, 0x00	; 0
     e4a:	3d 87       	std	Y+13, r19	; 0x0d
     e4c:	2c 87       	std	Y+12, r18	; 0x0c
     e4e:	65 01       	movw	r12, r10
     e50:	0f 77       	andi	r16, 0x7F	; 127
     e52:	03 fd       	sbrc	r16, 3
     e54:	07 c0       	rjmp	.+14     	; 0xe64 <vfprintf+0x4b4>
     e56:	89 2d       	mov	r24, r9
     e58:	90 e0       	ldi	r25, 0x00	; 0
     e5a:	2c 85       	ldd	r18, Y+12	; 0x0c
     e5c:	3d 85       	ldd	r19, Y+13	; 0x0d
     e5e:	28 17       	cp	r18, r24
     e60:	39 07       	cpc	r19, r25
     e62:	78 f1       	brcs	.+94     	; 0xec2 <vfprintf+0x512>
     e64:	49 2c       	mov	r4, r9
     e66:	ec 85       	ldd	r30, Y+12	; 0x0c
     e68:	fd 85       	ldd	r31, Y+13	; 0x0d
     e6a:	ef 2b       	or	r30, r31
     e6c:	09 f4       	brne	.+2      	; 0xe70 <vfprintf+0x4c0>
     e6e:	91 ce       	rjmp	.-734    	; 0xb92 <vfprintf+0x1e2>
     e70:	f6 01       	movw	r30, r12
     e72:	07 fd       	sbrc	r16, 7
     e74:	85 91       	lpm	r24, Z+
     e76:	07 ff       	sbrs	r16, 7
     e78:	81 91       	ld	r24, Z+
     e7a:	6f 01       	movw	r12, r30
     e7c:	b7 01       	movw	r22, r14
     e7e:	90 e0       	ldi	r25, 0x00	; 0
     e80:	0e 94 9b 09 	call	0x1336	; 0x1336 <fputc>
     e84:	41 10       	cpse	r4, r1
     e86:	4a 94       	dec	r4
     e88:	8c 85       	ldd	r24, Y+12	; 0x0c
     e8a:	9d 85       	ldd	r25, Y+13	; 0x0d
     e8c:	01 97       	sbiw	r24, 0x01	; 1
     e8e:	9d 87       	std	Y+13, r25	; 0x0d
     e90:	8c 87       	std	Y+12, r24	; 0x0c
     e92:	e9 cf       	rjmp	.-46     	; 0xe66 <vfprintf+0x4b6>
     e94:	36 01       	movw	r6, r12
     e96:	32 e0       	ldi	r19, 0x02	; 2
     e98:	63 0e       	add	r6, r19
     e9a:	71 1c       	adc	r7, r1
     e9c:	f6 01       	movw	r30, r12
     e9e:	c0 80       	ld	r12, Z
     ea0:	d1 80       	ldd	r13, Z+1	; 0x01
     ea2:	06 ff       	sbrs	r16, 6
     ea4:	08 c0       	rjmp	.+16     	; 0xeb6 <vfprintf+0x506>
     ea6:	65 2d       	mov	r22, r5
     ea8:	70 e0       	ldi	r23, 0x00	; 0
     eaa:	c6 01       	movw	r24, r12
     eac:	0e 94 90 09 	call	0x1320	; 0x1320 <strnlen>
     eb0:	9d 87       	std	Y+13, r25	; 0x0d
     eb2:	8c 87       	std	Y+12, r24	; 0x0c
     eb4:	cd cf       	rjmp	.-102    	; 0xe50 <vfprintf+0x4a0>
     eb6:	6f ef       	ldi	r22, 0xFF	; 255
     eb8:	7f ef       	ldi	r23, 0xFF	; 255
     eba:	f7 cf       	rjmp	.-18     	; 0xeaa <vfprintf+0x4fa>
     ebc:	6f ef       	ldi	r22, 0xFF	; 255
     ebe:	7f ef       	ldi	r23, 0xFF	; 255
     ec0:	b4 cf       	rjmp	.-152    	; 0xe2a <vfprintf+0x47a>
     ec2:	b7 01       	movw	r22, r14
     ec4:	80 e2       	ldi	r24, 0x20	; 32
     ec6:	90 e0       	ldi	r25, 0x00	; 0
     ec8:	0e 94 9b 09 	call	0x1336	; 0x1336 <fputc>
     ecc:	9a 94       	dec	r9
     ece:	c3 cf       	rjmp	.-122    	; 0xe56 <vfprintf+0x4a6>
     ed0:	84 36       	cpi	r24, 0x64	; 100
     ed2:	11 f0       	breq	.+4      	; 0xed8 <vfprintf+0x528>
     ed4:	89 36       	cpi	r24, 0x69	; 105
     ed6:	c1 f5       	brne	.+112    	; 0xf48 <vfprintf+0x598>
     ed8:	36 01       	movw	r6, r12
     eda:	07 ff       	sbrs	r16, 7
     edc:	2a c0       	rjmp	.+84     	; 0xf32 <vfprintf+0x582>
     ede:	f4 e0       	ldi	r31, 0x04	; 4
     ee0:	6f 0e       	add	r6, r31
     ee2:	71 1c       	adc	r7, r1
     ee4:	f6 01       	movw	r30, r12
     ee6:	60 81       	ld	r22, Z
     ee8:	71 81       	ldd	r23, Z+1	; 0x01
     eea:	82 81       	ldd	r24, Z+2	; 0x02
     eec:	93 81       	ldd	r25, Z+3	; 0x03
     eee:	10 2f       	mov	r17, r16
     ef0:	1f 76       	andi	r17, 0x6F	; 111
     ef2:	97 ff       	sbrs	r25, 7
     ef4:	08 c0       	rjmp	.+16     	; 0xf06 <vfprintf+0x556>
     ef6:	90 95       	com	r25
     ef8:	80 95       	com	r24
     efa:	70 95       	com	r23
     efc:	61 95       	neg	r22
     efe:	7f 4f       	sbci	r23, 0xFF	; 255
     f00:	8f 4f       	sbci	r24, 0xFF	; 255
     f02:	9f 4f       	sbci	r25, 0xFF	; 255
     f04:	10 68       	ori	r17, 0x80	; 128
     f06:	2a e0       	ldi	r18, 0x0A	; 10
     f08:	30 e0       	ldi	r19, 0x00	; 0
     f0a:	a5 01       	movw	r20, r10
     f0c:	0e 94 fb 09 	call	0x13f6	; 0x13f6 <__ultoa_invert>
     f10:	c8 2e       	mov	r12, r24
     f12:	ca 18       	sub	r12, r10
     f14:	16 ff       	sbrs	r17, 6
     f16:	59 c0       	rjmp	.+178    	; 0xfca <vfprintf+0x61a>
     f18:	01 2f       	mov	r16, r17
     f1a:	0e 7f       	andi	r16, 0xFE	; 254
     f1c:	c5 14       	cp	r12, r5
     f1e:	08 f0       	brcs	.+2      	; 0xf22 <vfprintf+0x572>
     f20:	90 c0       	rjmp	.+288    	; 0x1042 <vfprintf+0x692>
     f22:	14 ff       	sbrs	r17, 4
     f24:	04 c0       	rjmp	.+8      	; 0xf2e <vfprintf+0x57e>
     f26:	12 fd       	sbrc	r17, 2
     f28:	02 c0       	rjmp	.+4      	; 0xf2e <vfprintf+0x57e>
     f2a:	01 2f       	mov	r16, r17
     f2c:	0e 7e       	andi	r16, 0xEE	; 238
     f2e:	d5 2c       	mov	r13, r5
     f30:	4e c0       	rjmp	.+156    	; 0xfce <vfprintf+0x61e>
     f32:	f2 e0       	ldi	r31, 0x02	; 2
     f34:	6f 0e       	add	r6, r31
     f36:	71 1c       	adc	r7, r1
     f38:	f6 01       	movw	r30, r12
     f3a:	60 81       	ld	r22, Z
     f3c:	71 81       	ldd	r23, Z+1	; 0x01
     f3e:	07 2e       	mov	r0, r23
     f40:	00 0c       	add	r0, r0
     f42:	88 0b       	sbc	r24, r24
     f44:	99 0b       	sbc	r25, r25
     f46:	d3 cf       	rjmp	.-90     	; 0xeee <vfprintf+0x53e>
     f48:	10 2f       	mov	r17, r16
     f4a:	85 37       	cpi	r24, 0x75	; 117
     f4c:	a9 f4       	brne	.+42     	; 0xf78 <vfprintf+0x5c8>
     f4e:	1f 7e       	andi	r17, 0xEF	; 239
     f50:	2a e0       	ldi	r18, 0x0A	; 10
     f52:	30 e0       	ldi	r19, 0x00	; 0
     f54:	36 01       	movw	r6, r12
     f56:	17 ff       	sbrs	r17, 7
     f58:	2f c0       	rjmp	.+94     	; 0xfb8 <vfprintf+0x608>
     f5a:	f4 e0       	ldi	r31, 0x04	; 4
     f5c:	6f 0e       	add	r6, r31
     f5e:	71 1c       	adc	r7, r1
     f60:	f6 01       	movw	r30, r12
     f62:	60 81       	ld	r22, Z
     f64:	71 81       	ldd	r23, Z+1	; 0x01
     f66:	82 81       	ldd	r24, Z+2	; 0x02
     f68:	93 81       	ldd	r25, Z+3	; 0x03
     f6a:	a5 01       	movw	r20, r10
     f6c:	0e 94 fb 09 	call	0x13f6	; 0x13f6 <__ultoa_invert>
     f70:	c8 2e       	mov	r12, r24
     f72:	ca 18       	sub	r12, r10
     f74:	1f 77       	andi	r17, 0x7F	; 127
     f76:	ce cf       	rjmp	.-100    	; 0xf14 <vfprintf+0x564>
     f78:	19 7f       	andi	r17, 0xF9	; 249
     f7a:	8f 36       	cpi	r24, 0x6F	; 111
     f7c:	d1 f0       	breq	.+52     	; 0xfb2 <vfprintf+0x602>
     f7e:	48 f4       	brcc	.+18     	; 0xf92 <vfprintf+0x5e2>
     f80:	88 35       	cpi	r24, 0x58	; 88
     f82:	91 f0       	breq	.+36     	; 0xfa8 <vfprintf+0x5f8>
     f84:	f7 01       	movw	r30, r14
     f86:	86 81       	ldd	r24, Z+6	; 0x06
     f88:	97 81       	ldd	r25, Z+7	; 0x07
     f8a:	60 96       	adiw	r28, 0x10	; 16
     f8c:	e2 e1       	ldi	r30, 0x12	; 18
     f8e:	0c 94 8c 08 	jmp	0x1118	; 0x1118 <__epilogue_restores__>
     f92:	80 37       	cpi	r24, 0x70	; 112
     f94:	39 f0       	breq	.+14     	; 0xfa4 <vfprintf+0x5f4>
     f96:	88 37       	cpi	r24, 0x78	; 120
     f98:	a9 f7       	brne	.-22     	; 0xf84 <vfprintf+0x5d4>
     f9a:	14 fd       	sbrc	r17, 4
     f9c:	14 60       	ori	r17, 0x04	; 4
     f9e:	20 e1       	ldi	r18, 0x10	; 16
     fa0:	30 e0       	ldi	r19, 0x00	; 0
     fa2:	d8 cf       	rjmp	.-80     	; 0xf54 <vfprintf+0x5a4>
     fa4:	10 61       	ori	r17, 0x10	; 16
     fa6:	f9 cf       	rjmp	.-14     	; 0xf9a <vfprintf+0x5ea>
     fa8:	04 fd       	sbrc	r16, 4
     faa:	16 60       	ori	r17, 0x06	; 6
     fac:	20 e1       	ldi	r18, 0x10	; 16
     fae:	32 e0       	ldi	r19, 0x02	; 2
     fb0:	d1 cf       	rjmp	.-94     	; 0xf54 <vfprintf+0x5a4>
     fb2:	28 e0       	ldi	r18, 0x08	; 8
     fb4:	30 e0       	ldi	r19, 0x00	; 0
     fb6:	ce cf       	rjmp	.-100    	; 0xf54 <vfprintf+0x5a4>
     fb8:	f2 e0       	ldi	r31, 0x02	; 2
     fba:	6f 0e       	add	r6, r31
     fbc:	71 1c       	adc	r7, r1
     fbe:	f6 01       	movw	r30, r12
     fc0:	60 81       	ld	r22, Z
     fc2:	71 81       	ldd	r23, Z+1	; 0x01
     fc4:	80 e0       	ldi	r24, 0x00	; 0
     fc6:	90 e0       	ldi	r25, 0x00	; 0
     fc8:	d0 cf       	rjmp	.-96     	; 0xf6a <vfprintf+0x5ba>
     fca:	dc 2c       	mov	r13, r12
     fcc:	01 2f       	mov	r16, r17
     fce:	04 ff       	sbrs	r16, 4
     fd0:	41 c0       	rjmp	.+130    	; 0x1054 <vfprintf+0x6a4>
     fd2:	fe 01       	movw	r30, r28
     fd4:	ec 0d       	add	r30, r12
     fd6:	f1 1d       	adc	r31, r1
     fd8:	80 81       	ld	r24, Z
     fda:	80 33       	cpi	r24, 0x30	; 48
     fdc:	a1 f5       	brne	.+104    	; 0x1046 <vfprintf+0x696>
     fde:	09 7e       	andi	r16, 0xE9	; 233
     fe0:	f0 2f       	mov	r31, r16
     fe2:	f8 70       	andi	r31, 0x08	; 8
     fe4:	4f 2e       	mov	r4, r31
     fe6:	03 fd       	sbrc	r16, 3
     fe8:	43 c0       	rjmp	.+134    	; 0x1070 <vfprintf+0x6c0>
     fea:	00 ff       	sbrs	r16, 0
     fec:	3d c0       	rjmp	.+122    	; 0x1068 <vfprintf+0x6b8>
     fee:	5c 2c       	mov	r5, r12
     ff0:	d9 14       	cp	r13, r9
     ff2:	10 f4       	brcc	.+4      	; 0xff8 <vfprintf+0x648>
     ff4:	59 0c       	add	r5, r9
     ff6:	5d 18       	sub	r5, r13
     ff8:	04 ff       	sbrs	r16, 4
     ffa:	42 c0       	rjmp	.+132    	; 0x1080 <vfprintf+0x6d0>
     ffc:	b7 01       	movw	r22, r14
     ffe:	80 e3       	ldi	r24, 0x30	; 48
    1000:	90 e0       	ldi	r25, 0x00	; 0
    1002:	0e 94 9b 09 	call	0x1336	; 0x1336 <fputc>
    1006:	02 ff       	sbrs	r16, 2
    1008:	07 c0       	rjmp	.+14     	; 0x1018 <vfprintf+0x668>
    100a:	01 fd       	sbrc	r16, 1
    100c:	36 c0       	rjmp	.+108    	; 0x107a <vfprintf+0x6ca>
    100e:	88 e7       	ldi	r24, 0x78	; 120
    1010:	90 e0       	ldi	r25, 0x00	; 0
    1012:	b7 01       	movw	r22, r14
    1014:	0e 94 9b 09 	call	0x1336	; 0x1336 <fputc>
    1018:	c5 14       	cp	r12, r5
    101a:	08 f4       	brcc	.+2      	; 0x101e <vfprintf+0x66e>
    101c:	3e c0       	rjmp	.+124    	; 0x109a <vfprintf+0x6ea>
    101e:	ca 94       	dec	r12
    1020:	0c 2d       	mov	r16, r12
    1022:	10 e0       	ldi	r17, 0x00	; 0
    1024:	0f 5f       	subi	r16, 0xFF	; 255
    1026:	1f 4f       	sbci	r17, 0xFF	; 255
    1028:	0a 0d       	add	r16, r10
    102a:	1b 1d       	adc	r17, r11
    102c:	f8 01       	movw	r30, r16
    102e:	82 91       	ld	r24, -Z
    1030:	8f 01       	movw	r16, r30
    1032:	b7 01       	movw	r22, r14
    1034:	90 e0       	ldi	r25, 0x00	; 0
    1036:	0e 94 9b 09 	call	0x1336	; 0x1336 <fputc>
    103a:	0a 15       	cp	r16, r10
    103c:	1b 05       	cpc	r17, r11
    103e:	b1 f7       	brne	.-20     	; 0x102c <vfprintf+0x67c>
    1040:	a8 cd       	rjmp	.-1200   	; 0xb92 <vfprintf+0x1e2>
    1042:	dc 2c       	mov	r13, r12
    1044:	c4 cf       	rjmp	.-120    	; 0xfce <vfprintf+0x61e>
    1046:	02 fd       	sbrc	r16, 2
    1048:	02 c0       	rjmp	.+4      	; 0x104e <vfprintf+0x69e>
    104a:	d3 94       	inc	r13
    104c:	c9 cf       	rjmp	.-110    	; 0xfe0 <vfprintf+0x630>
    104e:	d3 94       	inc	r13
    1050:	d3 94       	inc	r13
    1052:	c6 cf       	rjmp	.-116    	; 0xfe0 <vfprintf+0x630>
    1054:	80 2f       	mov	r24, r16
    1056:	86 78       	andi	r24, 0x86	; 134
    1058:	19 f2       	breq	.-122    	; 0xfe0 <vfprintf+0x630>
    105a:	f7 cf       	rjmp	.-18     	; 0x104a <vfprintf+0x69a>
    105c:	b7 01       	movw	r22, r14
    105e:	80 e2       	ldi	r24, 0x20	; 32
    1060:	90 e0       	ldi	r25, 0x00	; 0
    1062:	0e 94 9b 09 	call	0x1336	; 0x1336 <fputc>
    1066:	d3 94       	inc	r13
    1068:	d9 14       	cp	r13, r9
    106a:	c0 f3       	brcs	.-16     	; 0x105c <vfprintf+0x6ac>
    106c:	41 2c       	mov	r4, r1
    106e:	c4 cf       	rjmp	.-120    	; 0xff8 <vfprintf+0x648>
    1070:	d9 14       	cp	r13, r9
    1072:	e0 f7       	brcc	.-8      	; 0x106c <vfprintf+0x6bc>
    1074:	49 2c       	mov	r4, r9
    1076:	4d 18       	sub	r4, r13
    1078:	bf cf       	rjmp	.-130    	; 0xff8 <vfprintf+0x648>
    107a:	88 e5       	ldi	r24, 0x58	; 88
    107c:	90 e0       	ldi	r25, 0x00	; 0
    107e:	c9 cf       	rjmp	.-110    	; 0x1012 <vfprintf+0x662>
    1080:	80 2f       	mov	r24, r16
    1082:	86 78       	andi	r24, 0x86	; 134
    1084:	49 f2       	breq	.-110    	; 0x1018 <vfprintf+0x668>
    1086:	01 ff       	sbrs	r16, 1
    1088:	06 c0       	rjmp	.+12     	; 0x1096 <vfprintf+0x6e6>
    108a:	8b e2       	ldi	r24, 0x2B	; 43
    108c:	07 fd       	sbrc	r16, 7
    108e:	8d e2       	ldi	r24, 0x2D	; 45
    1090:	b7 01       	movw	r22, r14
    1092:	90 e0       	ldi	r25, 0x00	; 0
    1094:	bf cf       	rjmp	.-130    	; 0x1014 <vfprintf+0x664>
    1096:	80 e2       	ldi	r24, 0x20	; 32
    1098:	f9 cf       	rjmp	.-14     	; 0x108c <vfprintf+0x6dc>
    109a:	b7 01       	movw	r22, r14
    109c:	80 e3       	ldi	r24, 0x30	; 48
    109e:	90 e0       	ldi	r25, 0x00	; 0
    10a0:	0e 94 9b 09 	call	0x1336	; 0x1336 <fputc>
    10a4:	5a 94       	dec	r5
    10a6:	b8 cf       	rjmp	.-144    	; 0x1018 <vfprintf+0x668>
    10a8:	8f ef       	ldi	r24, 0xFF	; 255
    10aa:	9f ef       	ldi	r25, 0xFF	; 255
    10ac:	6e cf       	rjmp	.-292    	; 0xf8a <vfprintf+0x5da>
    10ae:	24 e0       	ldi	r18, 0x04	; 4
    10b0:	29 15       	cp	r18, r9
    10b2:	08 f4       	brcc	.+2      	; 0x10b6 <vfprintf+0x706>
    10b4:	78 cd       	rjmp	.-1296   	; 0xba6 <vfprintf+0x1f6>
    10b6:	41 2c       	mov	r4, r1
    10b8:	5b cd       	rjmp	.-1354   	; 0xb70 <vfprintf+0x1c0>

000010ba <startTimers>:
    10ba:	83 e0       	ldi	r24, 0x03	; 3
    10bc:	84 bd       	out	0x24, r24	; 36
    10be:	85 bd       	out	0x25, r24	; 37
    10c0:	91 e0       	ldi	r25, 0x01	; 1
    10c2:	90 93 80 00 	sts	0x0080, r25	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
    10c6:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
    10ca:	90 93 b0 00 	sts	0x00B0, r25	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
    10ce:	84 e0       	ldi	r24, 0x04	; 4
    10d0:	80 93 b1 00 	sts	0x00B1, r24	; 0x8000b1 <__TEXT_REGION_LENGTH__+0x7e00b1>
    10d4:	ee e6       	ldi	r30, 0x6E	; 110
    10d6:	f0 e0       	ldi	r31, 0x00	; 0
    10d8:	80 81       	ld	r24, Z
    10da:	81 60       	ori	r24, 0x01	; 1
    10dc:	80 83       	st	Z, r24
    10de:	08 95       	ret

000010e0 <__prologue_saves__>:
    10e0:	2f 92       	push	r2
    10e2:	3f 92       	push	r3
    10e4:	4f 92       	push	r4
    10e6:	5f 92       	push	r5
    10e8:	6f 92       	push	r6
    10ea:	7f 92       	push	r7
    10ec:	8f 92       	push	r8
    10ee:	9f 92       	push	r9
    10f0:	af 92       	push	r10
    10f2:	bf 92       	push	r11
    10f4:	cf 92       	push	r12
    10f6:	df 92       	push	r13
    10f8:	ef 92       	push	r14
    10fa:	ff 92       	push	r15
    10fc:	0f 93       	push	r16
    10fe:	1f 93       	push	r17
    1100:	cf 93       	push	r28
    1102:	df 93       	push	r29
    1104:	cd b7       	in	r28, 0x3d	; 61
    1106:	de b7       	in	r29, 0x3e	; 62
    1108:	ca 1b       	sub	r28, r26
    110a:	db 0b       	sbc	r29, r27
    110c:	0f b6       	in	r0, 0x3f	; 63
    110e:	f8 94       	cli
    1110:	de bf       	out	0x3e, r29	; 62
    1112:	0f be       	out	0x3f, r0	; 63
    1114:	cd bf       	out	0x3d, r28	; 61
    1116:	09 94       	ijmp

00001118 <__epilogue_restores__>:
    1118:	2a 88       	ldd	r2, Y+18	; 0x12
    111a:	39 88       	ldd	r3, Y+17	; 0x11
    111c:	48 88       	ldd	r4, Y+16	; 0x10
    111e:	5f 84       	ldd	r5, Y+15	; 0x0f
    1120:	6e 84       	ldd	r6, Y+14	; 0x0e
    1122:	7d 84       	ldd	r7, Y+13	; 0x0d
    1124:	8c 84       	ldd	r8, Y+12	; 0x0c
    1126:	9b 84       	ldd	r9, Y+11	; 0x0b
    1128:	aa 84       	ldd	r10, Y+10	; 0x0a
    112a:	b9 84       	ldd	r11, Y+9	; 0x09
    112c:	c8 84       	ldd	r12, Y+8	; 0x08
    112e:	df 80       	ldd	r13, Y+7	; 0x07
    1130:	ee 80       	ldd	r14, Y+6	; 0x06
    1132:	fd 80       	ldd	r15, Y+5	; 0x05
    1134:	0c 81       	ldd	r16, Y+4	; 0x04
    1136:	1b 81       	ldd	r17, Y+3	; 0x03
    1138:	aa 81       	ldd	r26, Y+2	; 0x02
    113a:	b9 81       	ldd	r27, Y+1	; 0x01
    113c:	ce 0f       	add	r28, r30
    113e:	d1 1d       	adc	r29, r1
    1140:	0f b6       	in	r0, 0x3f	; 63
    1142:	f8 94       	cli
    1144:	de bf       	out	0x3e, r29	; 62
    1146:	0f be       	out	0x3f, r0	; 63
    1148:	cd bf       	out	0x3d, r28	; 61
    114a:	ed 01       	movw	r28, r26
    114c:	08 95       	ret

0000114e <__tablejump2__>:
    114e:	ee 0f       	add	r30, r30
    1150:	ff 1f       	adc	r31, r31
    1152:	05 90       	lpm	r0, Z+
    1154:	f4 91       	lpm	r31, Z
    1156:	e0 2d       	mov	r30, r0
    1158:	09 94       	ijmp

0000115a <__ftoa_engine>:
    115a:	28 30       	cpi	r18, 0x08	; 8
    115c:	08 f0       	brcs	.+2      	; 0x1160 <__ftoa_engine+0x6>
    115e:	27 e0       	ldi	r18, 0x07	; 7
    1160:	33 27       	eor	r19, r19
    1162:	da 01       	movw	r26, r20
    1164:	99 0f       	add	r25, r25
    1166:	31 1d       	adc	r19, r1
    1168:	87 fd       	sbrc	r24, 7
    116a:	91 60       	ori	r25, 0x01	; 1
    116c:	00 96       	adiw	r24, 0x00	; 0
    116e:	61 05       	cpc	r22, r1
    1170:	71 05       	cpc	r23, r1
    1172:	39 f4       	brne	.+14     	; 0x1182 <__ftoa_engine+0x28>
    1174:	32 60       	ori	r19, 0x02	; 2
    1176:	2e 5f       	subi	r18, 0xFE	; 254
    1178:	3d 93       	st	X+, r19
    117a:	30 e3       	ldi	r19, 0x30	; 48
    117c:	2a 95       	dec	r18
    117e:	e1 f7       	brne	.-8      	; 0x1178 <__ftoa_engine+0x1e>
    1180:	08 95       	ret
    1182:	9f 3f       	cpi	r25, 0xFF	; 255
    1184:	30 f0       	brcs	.+12     	; 0x1192 <__ftoa_engine+0x38>
    1186:	80 38       	cpi	r24, 0x80	; 128
    1188:	71 05       	cpc	r23, r1
    118a:	61 05       	cpc	r22, r1
    118c:	09 f0       	breq	.+2      	; 0x1190 <__ftoa_engine+0x36>
    118e:	3c 5f       	subi	r19, 0xFC	; 252
    1190:	3c 5f       	subi	r19, 0xFC	; 252
    1192:	3d 93       	st	X+, r19
    1194:	91 30       	cpi	r25, 0x01	; 1
    1196:	08 f0       	brcs	.+2      	; 0x119a <__ftoa_engine+0x40>
    1198:	80 68       	ori	r24, 0x80	; 128
    119a:	91 1d       	adc	r25, r1
    119c:	df 93       	push	r29
    119e:	cf 93       	push	r28
    11a0:	1f 93       	push	r17
    11a2:	0f 93       	push	r16
    11a4:	ff 92       	push	r15
    11a6:	ef 92       	push	r14
    11a8:	19 2f       	mov	r17, r25
    11aa:	98 7f       	andi	r25, 0xF8	; 248
    11ac:	96 95       	lsr	r25
    11ae:	e9 2f       	mov	r30, r25
    11b0:	96 95       	lsr	r25
    11b2:	96 95       	lsr	r25
    11b4:	e9 0f       	add	r30, r25
    11b6:	ff 27       	eor	r31, r31
    11b8:	e6 53       	subi	r30, 0x36	; 54
    11ba:	ff 4f       	sbci	r31, 0xFF	; 255
    11bc:	99 27       	eor	r25, r25
    11be:	33 27       	eor	r19, r19
    11c0:	ee 24       	eor	r14, r14
    11c2:	ff 24       	eor	r15, r15
    11c4:	a7 01       	movw	r20, r14
    11c6:	e7 01       	movw	r28, r14
    11c8:	05 90       	lpm	r0, Z+
    11ca:	08 94       	sec
    11cc:	07 94       	ror	r0
    11ce:	28 f4       	brcc	.+10     	; 0x11da <__ftoa_engine+0x80>
    11d0:	36 0f       	add	r19, r22
    11d2:	e7 1e       	adc	r14, r23
    11d4:	f8 1e       	adc	r15, r24
    11d6:	49 1f       	adc	r20, r25
    11d8:	51 1d       	adc	r21, r1
    11da:	66 0f       	add	r22, r22
    11dc:	77 1f       	adc	r23, r23
    11de:	88 1f       	adc	r24, r24
    11e0:	99 1f       	adc	r25, r25
    11e2:	06 94       	lsr	r0
    11e4:	a1 f7       	brne	.-24     	; 0x11ce <__ftoa_engine+0x74>
    11e6:	05 90       	lpm	r0, Z+
    11e8:	07 94       	ror	r0
    11ea:	28 f4       	brcc	.+10     	; 0x11f6 <__ftoa_engine+0x9c>
    11ec:	e7 0e       	add	r14, r23
    11ee:	f8 1e       	adc	r15, r24
    11f0:	49 1f       	adc	r20, r25
    11f2:	56 1f       	adc	r21, r22
    11f4:	c1 1d       	adc	r28, r1
    11f6:	77 0f       	add	r23, r23
    11f8:	88 1f       	adc	r24, r24
    11fa:	99 1f       	adc	r25, r25
    11fc:	66 1f       	adc	r22, r22
    11fe:	06 94       	lsr	r0
    1200:	a1 f7       	brne	.-24     	; 0x11ea <__ftoa_engine+0x90>
    1202:	05 90       	lpm	r0, Z+
    1204:	07 94       	ror	r0
    1206:	28 f4       	brcc	.+10     	; 0x1212 <__ftoa_engine+0xb8>
    1208:	f8 0e       	add	r15, r24
    120a:	49 1f       	adc	r20, r25
    120c:	56 1f       	adc	r21, r22
    120e:	c7 1f       	adc	r28, r23
    1210:	d1 1d       	adc	r29, r1
    1212:	88 0f       	add	r24, r24
    1214:	99 1f       	adc	r25, r25
    1216:	66 1f       	adc	r22, r22
    1218:	77 1f       	adc	r23, r23
    121a:	06 94       	lsr	r0
    121c:	a1 f7       	brne	.-24     	; 0x1206 <__ftoa_engine+0xac>
    121e:	05 90       	lpm	r0, Z+
    1220:	07 94       	ror	r0
    1222:	20 f4       	brcc	.+8      	; 0x122c <__ftoa_engine+0xd2>
    1224:	49 0f       	add	r20, r25
    1226:	56 1f       	adc	r21, r22
    1228:	c7 1f       	adc	r28, r23
    122a:	d8 1f       	adc	r29, r24
    122c:	99 0f       	add	r25, r25
    122e:	66 1f       	adc	r22, r22
    1230:	77 1f       	adc	r23, r23
    1232:	88 1f       	adc	r24, r24
    1234:	06 94       	lsr	r0
    1236:	a9 f7       	brne	.-22     	; 0x1222 <__ftoa_engine+0xc8>
    1238:	84 91       	lpm	r24, Z
    123a:	10 95       	com	r17
    123c:	17 70       	andi	r17, 0x07	; 7
    123e:	41 f0       	breq	.+16     	; 0x1250 <__ftoa_engine+0xf6>
    1240:	d6 95       	lsr	r29
    1242:	c7 95       	ror	r28
    1244:	57 95       	ror	r21
    1246:	47 95       	ror	r20
    1248:	f7 94       	ror	r15
    124a:	e7 94       	ror	r14
    124c:	1a 95       	dec	r17
    124e:	c1 f7       	brne	.-16     	; 0x1240 <__ftoa_engine+0xe6>
    1250:	e0 e7       	ldi	r30, 0x70	; 112
    1252:	f0 e0       	ldi	r31, 0x00	; 0
    1254:	68 94       	set
    1256:	15 90       	lpm	r1, Z+
    1258:	15 91       	lpm	r17, Z+
    125a:	35 91       	lpm	r19, Z+
    125c:	65 91       	lpm	r22, Z+
    125e:	95 91       	lpm	r25, Z+
    1260:	05 90       	lpm	r0, Z+
    1262:	7f e2       	ldi	r23, 0x2F	; 47
    1264:	73 95       	inc	r23
    1266:	e1 18       	sub	r14, r1
    1268:	f1 0a       	sbc	r15, r17
    126a:	43 0b       	sbc	r20, r19
    126c:	56 0b       	sbc	r21, r22
    126e:	c9 0b       	sbc	r28, r25
    1270:	d0 09       	sbc	r29, r0
    1272:	c0 f7       	brcc	.-16     	; 0x1264 <__ftoa_engine+0x10a>
    1274:	e1 0c       	add	r14, r1
    1276:	f1 1e       	adc	r15, r17
    1278:	43 1f       	adc	r20, r19
    127a:	56 1f       	adc	r21, r22
    127c:	c9 1f       	adc	r28, r25
    127e:	d0 1d       	adc	r29, r0
    1280:	7e f4       	brtc	.+30     	; 0x12a0 <__ftoa_engine+0x146>
    1282:	70 33       	cpi	r23, 0x30	; 48
    1284:	11 f4       	brne	.+4      	; 0x128a <__ftoa_engine+0x130>
    1286:	8a 95       	dec	r24
    1288:	e6 cf       	rjmp	.-52     	; 0x1256 <__ftoa_engine+0xfc>
    128a:	e8 94       	clt
    128c:	01 50       	subi	r16, 0x01	; 1
    128e:	30 f0       	brcs	.+12     	; 0x129c <__ftoa_engine+0x142>
    1290:	08 0f       	add	r16, r24
    1292:	0a f4       	brpl	.+2      	; 0x1296 <__ftoa_engine+0x13c>
    1294:	00 27       	eor	r16, r16
    1296:	02 17       	cp	r16, r18
    1298:	08 f4       	brcc	.+2      	; 0x129c <__ftoa_engine+0x142>
    129a:	20 2f       	mov	r18, r16
    129c:	23 95       	inc	r18
    129e:	02 2f       	mov	r16, r18
    12a0:	7a 33       	cpi	r23, 0x3A	; 58
    12a2:	28 f0       	brcs	.+10     	; 0x12ae <__ftoa_engine+0x154>
    12a4:	79 e3       	ldi	r23, 0x39	; 57
    12a6:	7d 93       	st	X+, r23
    12a8:	2a 95       	dec	r18
    12aa:	e9 f7       	brne	.-6      	; 0x12a6 <__ftoa_engine+0x14c>
    12ac:	10 c0       	rjmp	.+32     	; 0x12ce <__ftoa_engine+0x174>
    12ae:	7d 93       	st	X+, r23
    12b0:	2a 95       	dec	r18
    12b2:	89 f6       	brne	.-94     	; 0x1256 <__ftoa_engine+0xfc>
    12b4:	06 94       	lsr	r0
    12b6:	97 95       	ror	r25
    12b8:	67 95       	ror	r22
    12ba:	37 95       	ror	r19
    12bc:	17 95       	ror	r17
    12be:	17 94       	ror	r1
    12c0:	e1 18       	sub	r14, r1
    12c2:	f1 0a       	sbc	r15, r17
    12c4:	43 0b       	sbc	r20, r19
    12c6:	56 0b       	sbc	r21, r22
    12c8:	c9 0b       	sbc	r28, r25
    12ca:	d0 09       	sbc	r29, r0
    12cc:	98 f0       	brcs	.+38     	; 0x12f4 <__ftoa_engine+0x19a>
    12ce:	23 95       	inc	r18
    12d0:	7e 91       	ld	r23, -X
    12d2:	73 95       	inc	r23
    12d4:	7a 33       	cpi	r23, 0x3A	; 58
    12d6:	08 f0       	brcs	.+2      	; 0x12da <__ftoa_engine+0x180>
    12d8:	70 e3       	ldi	r23, 0x30	; 48
    12da:	7c 93       	st	X, r23
    12dc:	20 13       	cpse	r18, r16
    12de:	b8 f7       	brcc	.-18     	; 0x12ce <__ftoa_engine+0x174>
    12e0:	7e 91       	ld	r23, -X
    12e2:	70 61       	ori	r23, 0x10	; 16
    12e4:	7d 93       	st	X+, r23
    12e6:	30 f0       	brcs	.+12     	; 0x12f4 <__ftoa_engine+0x19a>
    12e8:	83 95       	inc	r24
    12ea:	71 e3       	ldi	r23, 0x31	; 49
    12ec:	7d 93       	st	X+, r23
    12ee:	70 e3       	ldi	r23, 0x30	; 48
    12f0:	2a 95       	dec	r18
    12f2:	e1 f7       	brne	.-8      	; 0x12ec <__ftoa_engine+0x192>
    12f4:	11 24       	eor	r1, r1
    12f6:	ef 90       	pop	r14
    12f8:	ff 90       	pop	r15
    12fa:	0f 91       	pop	r16
    12fc:	1f 91       	pop	r17
    12fe:	cf 91       	pop	r28
    1300:	df 91       	pop	r29
    1302:	99 27       	eor	r25, r25
    1304:	87 fd       	sbrc	r24, 7
    1306:	90 95       	com	r25
    1308:	08 95       	ret

0000130a <strnlen_P>:
    130a:	fc 01       	movw	r30, r24
    130c:	05 90       	lpm	r0, Z+
    130e:	61 50       	subi	r22, 0x01	; 1
    1310:	70 40       	sbci	r23, 0x00	; 0
    1312:	01 10       	cpse	r0, r1
    1314:	d8 f7       	brcc	.-10     	; 0x130c <strnlen_P+0x2>
    1316:	80 95       	com	r24
    1318:	90 95       	com	r25
    131a:	8e 0f       	add	r24, r30
    131c:	9f 1f       	adc	r25, r31
    131e:	08 95       	ret

00001320 <strnlen>:
    1320:	fc 01       	movw	r30, r24
    1322:	61 50       	subi	r22, 0x01	; 1
    1324:	70 40       	sbci	r23, 0x00	; 0
    1326:	01 90       	ld	r0, Z+
    1328:	01 10       	cpse	r0, r1
    132a:	d8 f7       	brcc	.-10     	; 0x1322 <strnlen+0x2>
    132c:	80 95       	com	r24
    132e:	90 95       	com	r25
    1330:	8e 0f       	add	r24, r30
    1332:	9f 1f       	adc	r25, r31
    1334:	08 95       	ret

00001336 <fputc>:
    1336:	0f 93       	push	r16
    1338:	1f 93       	push	r17
    133a:	cf 93       	push	r28
    133c:	df 93       	push	r29
    133e:	18 2f       	mov	r17, r24
    1340:	09 2f       	mov	r16, r25
    1342:	eb 01       	movw	r28, r22
    1344:	8b 81       	ldd	r24, Y+3	; 0x03
    1346:	81 fd       	sbrc	r24, 1
    1348:	09 c0       	rjmp	.+18     	; 0x135c <fputc+0x26>
    134a:	1f ef       	ldi	r17, 0xFF	; 255
    134c:	0f ef       	ldi	r16, 0xFF	; 255
    134e:	81 2f       	mov	r24, r17
    1350:	90 2f       	mov	r25, r16
    1352:	df 91       	pop	r29
    1354:	cf 91       	pop	r28
    1356:	1f 91       	pop	r17
    1358:	0f 91       	pop	r16
    135a:	08 95       	ret
    135c:	82 ff       	sbrs	r24, 2
    135e:	14 c0       	rjmp	.+40     	; 0x1388 <fputc+0x52>
    1360:	2e 81       	ldd	r18, Y+6	; 0x06
    1362:	3f 81       	ldd	r19, Y+7	; 0x07
    1364:	8c 81       	ldd	r24, Y+4	; 0x04
    1366:	9d 81       	ldd	r25, Y+5	; 0x05
    1368:	28 17       	cp	r18, r24
    136a:	39 07       	cpc	r19, r25
    136c:	3c f4       	brge	.+14     	; 0x137c <fputc+0x46>
    136e:	e8 81       	ld	r30, Y
    1370:	f9 81       	ldd	r31, Y+1	; 0x01
    1372:	cf 01       	movw	r24, r30
    1374:	01 96       	adiw	r24, 0x01	; 1
    1376:	99 83       	std	Y+1, r25	; 0x01
    1378:	88 83       	st	Y, r24
    137a:	10 83       	st	Z, r17
    137c:	8e 81       	ldd	r24, Y+6	; 0x06
    137e:	9f 81       	ldd	r25, Y+7	; 0x07
    1380:	01 96       	adiw	r24, 0x01	; 1
    1382:	9f 83       	std	Y+7, r25	; 0x07
    1384:	8e 83       	std	Y+6, r24	; 0x06
    1386:	e3 cf       	rjmp	.-58     	; 0x134e <fputc+0x18>
    1388:	e8 85       	ldd	r30, Y+8	; 0x08
    138a:	f9 85       	ldd	r31, Y+9	; 0x09
    138c:	81 2f       	mov	r24, r17
    138e:	09 95       	icall
    1390:	89 2b       	or	r24, r25
    1392:	a1 f3       	breq	.-24     	; 0x137c <fputc+0x46>
    1394:	da cf       	rjmp	.-76     	; 0x134a <fputc+0x14>

00001396 <snprintf>:
    1396:	ae e0       	ldi	r26, 0x0E	; 14
    1398:	b0 e0       	ldi	r27, 0x00	; 0
    139a:	e1 ed       	ldi	r30, 0xD1	; 209
    139c:	f9 e0       	ldi	r31, 0x09	; 9
    139e:	0c 94 7e 08 	jmp	0x10fc	; 0x10fc <__prologue_saves__+0x1c>
    13a2:	0d 89       	ldd	r16, Y+21	; 0x15
    13a4:	1e 89       	ldd	r17, Y+22	; 0x16
    13a6:	8f 89       	ldd	r24, Y+23	; 0x17
    13a8:	98 8d       	ldd	r25, Y+24	; 0x18
    13aa:	26 e0       	ldi	r18, 0x06	; 6
    13ac:	2c 83       	std	Y+4, r18	; 0x04
    13ae:	1a 83       	std	Y+2, r17	; 0x02
    13b0:	09 83       	std	Y+1, r16	; 0x01
    13b2:	97 ff       	sbrs	r25, 7
    13b4:	02 c0       	rjmp	.+4      	; 0x13ba <snprintf+0x24>
    13b6:	80 e0       	ldi	r24, 0x00	; 0
    13b8:	90 e8       	ldi	r25, 0x80	; 128
    13ba:	01 97       	sbiw	r24, 0x01	; 1
    13bc:	9e 83       	std	Y+6, r25	; 0x06
    13be:	8d 83       	std	Y+5, r24	; 0x05
    13c0:	ae 01       	movw	r20, r28
    13c2:	45 5e       	subi	r20, 0xE5	; 229
    13c4:	5f 4f       	sbci	r21, 0xFF	; 255
    13c6:	69 8d       	ldd	r22, Y+25	; 0x19
    13c8:	7a 8d       	ldd	r23, Y+26	; 0x1a
    13ca:	ce 01       	movw	r24, r28
    13cc:	01 96       	adiw	r24, 0x01	; 1
    13ce:	0e 94 d8 04 	call	0x9b0	; 0x9b0 <vfprintf>
    13d2:	4d 81       	ldd	r20, Y+5	; 0x05
    13d4:	5e 81       	ldd	r21, Y+6	; 0x06
    13d6:	57 fd       	sbrc	r21, 7
    13d8:	0a c0       	rjmp	.+20     	; 0x13ee <snprintf+0x58>
    13da:	2f 81       	ldd	r18, Y+7	; 0x07
    13dc:	38 85       	ldd	r19, Y+8	; 0x08
    13de:	42 17       	cp	r20, r18
    13e0:	53 07       	cpc	r21, r19
    13e2:	0c f4       	brge	.+2      	; 0x13e6 <snprintf+0x50>
    13e4:	9a 01       	movw	r18, r20
    13e6:	02 0f       	add	r16, r18
    13e8:	13 1f       	adc	r17, r19
    13ea:	f8 01       	movw	r30, r16
    13ec:	10 82       	st	Z, r1
    13ee:	2e 96       	adiw	r28, 0x0e	; 14
    13f0:	e4 e0       	ldi	r30, 0x04	; 4
    13f2:	0c 94 9a 08 	jmp	0x1134	; 0x1134 <__epilogue_restores__+0x1c>

000013f6 <__ultoa_invert>:
    13f6:	fa 01       	movw	r30, r20
    13f8:	aa 27       	eor	r26, r26
    13fa:	28 30       	cpi	r18, 0x08	; 8
    13fc:	51 f1       	breq	.+84     	; 0x1452 <__ultoa_invert+0x5c>
    13fe:	20 31       	cpi	r18, 0x10	; 16
    1400:	81 f1       	breq	.+96     	; 0x1462 <__ultoa_invert+0x6c>
    1402:	e8 94       	clt
    1404:	6f 93       	push	r22
    1406:	6e 7f       	andi	r22, 0xFE	; 254
    1408:	6e 5f       	subi	r22, 0xFE	; 254
    140a:	7f 4f       	sbci	r23, 0xFF	; 255
    140c:	8f 4f       	sbci	r24, 0xFF	; 255
    140e:	9f 4f       	sbci	r25, 0xFF	; 255
    1410:	af 4f       	sbci	r26, 0xFF	; 255
    1412:	b1 e0       	ldi	r27, 0x01	; 1
    1414:	3e d0       	rcall	.+124    	; 0x1492 <__ultoa_invert+0x9c>
    1416:	b4 e0       	ldi	r27, 0x04	; 4
    1418:	3c d0       	rcall	.+120    	; 0x1492 <__ultoa_invert+0x9c>
    141a:	67 0f       	add	r22, r23
    141c:	78 1f       	adc	r23, r24
    141e:	89 1f       	adc	r24, r25
    1420:	9a 1f       	adc	r25, r26
    1422:	a1 1d       	adc	r26, r1
    1424:	68 0f       	add	r22, r24
    1426:	79 1f       	adc	r23, r25
    1428:	8a 1f       	adc	r24, r26
    142a:	91 1d       	adc	r25, r1
    142c:	a1 1d       	adc	r26, r1
    142e:	6a 0f       	add	r22, r26
    1430:	71 1d       	adc	r23, r1
    1432:	81 1d       	adc	r24, r1
    1434:	91 1d       	adc	r25, r1
    1436:	a1 1d       	adc	r26, r1
    1438:	20 d0       	rcall	.+64     	; 0x147a <__ultoa_invert+0x84>
    143a:	09 f4       	brne	.+2      	; 0x143e <__ultoa_invert+0x48>
    143c:	68 94       	set
    143e:	3f 91       	pop	r19
    1440:	2a e0       	ldi	r18, 0x0A	; 10
    1442:	26 9f       	mul	r18, r22
    1444:	11 24       	eor	r1, r1
    1446:	30 19       	sub	r19, r0
    1448:	30 5d       	subi	r19, 0xD0	; 208
    144a:	31 93       	st	Z+, r19
    144c:	de f6       	brtc	.-74     	; 0x1404 <__ultoa_invert+0xe>
    144e:	cf 01       	movw	r24, r30
    1450:	08 95       	ret
    1452:	46 2f       	mov	r20, r22
    1454:	47 70       	andi	r20, 0x07	; 7
    1456:	40 5d       	subi	r20, 0xD0	; 208
    1458:	41 93       	st	Z+, r20
    145a:	b3 e0       	ldi	r27, 0x03	; 3
    145c:	0f d0       	rcall	.+30     	; 0x147c <__ultoa_invert+0x86>
    145e:	c9 f7       	brne	.-14     	; 0x1452 <__ultoa_invert+0x5c>
    1460:	f6 cf       	rjmp	.-20     	; 0x144e <__ultoa_invert+0x58>
    1462:	46 2f       	mov	r20, r22
    1464:	4f 70       	andi	r20, 0x0F	; 15
    1466:	40 5d       	subi	r20, 0xD0	; 208
    1468:	4a 33       	cpi	r20, 0x3A	; 58
    146a:	18 f0       	brcs	.+6      	; 0x1472 <__ultoa_invert+0x7c>
    146c:	49 5d       	subi	r20, 0xD9	; 217
    146e:	31 fd       	sbrc	r19, 1
    1470:	40 52       	subi	r20, 0x20	; 32
    1472:	41 93       	st	Z+, r20
    1474:	02 d0       	rcall	.+4      	; 0x147a <__ultoa_invert+0x84>
    1476:	a9 f7       	brne	.-22     	; 0x1462 <__ultoa_invert+0x6c>
    1478:	ea cf       	rjmp	.-44     	; 0x144e <__ultoa_invert+0x58>
    147a:	b4 e0       	ldi	r27, 0x04	; 4
    147c:	a6 95       	lsr	r26
    147e:	97 95       	ror	r25
    1480:	87 95       	ror	r24
    1482:	77 95       	ror	r23
    1484:	67 95       	ror	r22
    1486:	ba 95       	dec	r27
    1488:	c9 f7       	brne	.-14     	; 0x147c <__ultoa_invert+0x86>
    148a:	00 97       	sbiw	r24, 0x00	; 0
    148c:	61 05       	cpc	r22, r1
    148e:	71 05       	cpc	r23, r1
    1490:	08 95       	ret
    1492:	9b 01       	movw	r18, r22
    1494:	ac 01       	movw	r20, r24
    1496:	0a 2e       	mov	r0, r26
    1498:	06 94       	lsr	r0
    149a:	57 95       	ror	r21
    149c:	47 95       	ror	r20
    149e:	37 95       	ror	r19
    14a0:	27 95       	ror	r18
    14a2:	ba 95       	dec	r27
    14a4:	c9 f7       	brne	.-14     	; 0x1498 <__ultoa_invert+0xa2>
    14a6:	62 0f       	add	r22, r18
    14a8:	73 1f       	adc	r23, r19
    14aa:	84 1f       	adc	r24, r20
    14ac:	95 1f       	adc	r25, r21
    14ae:	a0 1d       	adc	r26, r0
    14b0:	08 95       	ret

000014b2 <_exit>:
    14b2:	f8 94       	cli

000014b4 <__stop_program>:
    14b4:	ff cf       	rjmp	.-2      	; 0x14b4 <__stop_program>
