
main.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
       0:	0c 94 b6 00 	jmp	0x16c	; 0x16c <__ctors_end>
       4:	0c 94 2c 03 	jmp	0x658	; 0x658 <__vector_1>
       8:	0c 94 55 03 	jmp	0x6aa	; 0x6aa <__vector_2>
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
      40:	0c 94 38 04 	jmp	0x870	; 0x870 <__vector_16>
      44:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      48:	0c 94 4f 04 	jmp	0x89e	; 0x89e <__vector_18>
      4c:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      50:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      54:	0c 94 ec 07 	jmp	0xfd8	; 0xfd8 <__vector_21>
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
     16a:	e1 0b       	sbc	r30, r17

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
     17e:	e8 ef       	ldi	r30, 0xF8	; 248
     180:	fd e1       	ldi	r31, 0x1D	; 29
     182:	02 c0       	rjmp	.+4      	; 0x188 <__do_copy_data+0x10>
     184:	05 90       	lpm	r0, Z+
     186:	0d 92       	st	X+, r0
     188:	ae 31       	cpi	r26, 0x1E	; 30
     18a:	b1 07       	cpc	r27, r17
     18c:	d9 f7       	brne	.-10     	; 0x184 <__do_copy_data+0xc>

0000018e <__do_clear_bss>:
     18e:	22 e0       	ldi	r18, 0x02	; 2
     190:	ae e1       	ldi	r26, 0x1E	; 30
     192:	b1 e0       	ldi	r27, 0x01	; 1
     194:	01 c0       	rjmp	.+2      	; 0x198 <.do_clear_bss_start>

00000196 <.do_clear_bss_loop>:
     196:	1d 92       	st	X+, r1

00000198 <.do_clear_bss_start>:
     198:	ac 35       	cpi	r26, 0x5C	; 92
     19a:	b2 07       	cpc	r27, r18
     19c:	e1 f7       	brne	.-8      	; 0x196 <.do_clear_bss_loop>

0000019e <__do_global_ctors>:
     19e:	10 e0       	ldi	r17, 0x00	; 0
     1a0:	c6 eb       	ldi	r28, 0xB6	; 182
     1a2:	d0 e0       	ldi	r29, 0x00	; 0
     1a4:	04 c0       	rjmp	.+8      	; 0x1ae <__do_global_ctors+0x10>
     1a6:	21 97       	sbiw	r28, 0x01	; 1
     1a8:	fe 01       	movw	r30, r28
     1aa:	0e 94 4d 0c 	call	0x189a	; 0x189a <__tablejump2__>
     1ae:	c5 3b       	cpi	r28, 0xB5	; 181
     1b0:	d1 07       	cpc	r29, r17
     1b2:	c9 f7       	brne	.-14     	; 0x1a6 <__do_global_ctors+0x8>
     1b4:	0e 94 e0 00 	call	0x1c0	; 0x1c0 <main>
     1b8:	0c 94 fa 0e 	jmp	0x1df4	; 0x1df4 <_exit>

000001bc <__bad_interrupt>:
     1bc:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000001c0 <main>:
     1c0:	6f 92       	push	r6
     1c2:	7f 92       	push	r7
     1c4:	8f 92       	push	r8
     1c6:	9f 92       	push	r9
     1c8:	af 92       	push	r10
     1ca:	bf 92       	push	r11
     1cc:	cf 92       	push	r12
     1ce:	df 92       	push	r13
     1d0:	ef 92       	push	r14
     1d2:	ff 92       	push	r15
     1d4:	0f 93       	push	r16
     1d6:	1f 93       	push	r17
     1d8:	80 e8       	ldi	r24, 0x80	; 128
     1da:	95 e2       	ldi	r25, 0x25	; 37
     1dc:	0e 94 78 01 	call	0x2f0	; 0x2f0 <_TF3AVR11SetupSerialFT8baudRateVs5Int16_T_>
     1e0:	80 e0       	ldi	r24, 0x00	; 0
     1e2:	90 e0       	ldi	r25, 0x00	; 0
     1e4:	5c 01       	movw	r10, r24
     1e6:	8a e0       	ldi	r24, 0x0A	; 10
     1e8:	98 e2       	ldi	r25, 0x28	; 40
     1ea:	4c 01       	movw	r8, r24
     1ec:	80 ea       	ldi	r24, 0xA0	; 160
     1ee:	9b e3       	ldi	r25, 0x3B	; 59
     1f0:	3c 01       	movw	r6, r24
     1f2:	0c e2       	ldi	r16, 0x2C	; 44
     1f4:	11 e0       	ldi	r17, 0x01	; 1

000001f6 <LBB0_1>:
     1f6:	80 e0       	ldi	r24, 0x00	; 0
     1f8:	0e 94 65 01 	call	0x2ca	; 0x2ca <_TF3AVR14slowAnalogReadFT3pinVs5UInt8_Vs6UInt16>
     1fc:	7c 01       	movw	r14, r24
     1fe:	0e 94 fd 01 	call	0x3fa	; 0x3fa <_TIF3AVR5printFT11unsignedIntVs6UInt1610addNewlineSb_T_A0_>
     202:	28 2f       	mov	r18, r24
     204:	c7 01       	movw	r24, r14
     206:	62 2f       	mov	r22, r18
     208:	0e 94 ff 01 	call	0x3fe	; 0x3fe <_TF3AVR5printFT11unsignedIntVs6UInt1610addNewlineSb_T_>
     20c:	b7 01       	movw	r22, r14
     20e:	c5 01       	movw	r24, r10
     210:	0e 94 53 0c 	call	0x18a6	; 0x18a6 <__floatunsisf>
     214:	94 01       	movw	r18, r8
     216:	a3 01       	movw	r20, r6
     218:	0e 94 90 0c 	call	0x1920	; 0x1920 <__mulsf3>
     21c:	7b 01       	movw	r14, r22
     21e:	6c 01       	movw	r12, r24
     220:	0e 94 13 02 	call	0x426	; 0x426 <_TIF3AVR5printFT5floatSf10addNewlineSb_T_A0_>
     224:	28 2f       	mov	r18, r24
     226:	b7 01       	movw	r22, r14
     228:	c6 01       	movw	r24, r12
     22a:	42 2f       	mov	r20, r18
     22c:	0e 94 15 02 	call	0x42a	; 0x42a <_TF3AVR5printFT5floatSf10addNewlineSb_T_>
     230:	c8 01       	movw	r24, r16
     232:	0e 94 1c 01 	call	0x238	; 0x238 <_TF3AVR5delayFT12millisecondsVs6UInt16_T_>
     236:	df cf       	rjmp	.-66     	; 0x1f6 <LBB0_1>

00000238 <_TF3AVR5delayFT12millisecondsVs6UInt16_T_>:
     238:	0e 94 ae 03 	call	0x75c	; 0x75c <_delayMs>
     23c:	08 95       	ret

0000023e <_TF3AVR18stringAddCharacterFT4byteVs5UInt8_Sb>:
     23e:	0e 94 c2 03 	call	0x784	; 0x784 <_stringAddCharacter>
     242:	08 95       	ret

00000244 <_TF3AVR14stringStartNewFT_T_>:
     244:	0e 94 da 03 	call	0x7b4	; 0x7b4 <_stringStartNew>
     248:	08 95       	ret

0000024a <_TF3AVR18stringCurrentValueFT_GSQGSPVs4Int8__>:
     24a:	0e 94 df 03 	call	0x7be	; 0x7be <_stringCurrentValue>
     24e:	40 e0       	ldi	r20, 0x00	; 0
     250:	50 e0       	ldi	r21, 0x00	; 0
     252:	9c 01       	movw	r18, r24
     254:	ba 01       	movw	r22, r20
     256:	ca 01       	movw	r24, r20
     258:	08 95       	ret

0000025a <_TF3AVR11intToStringFT6numberVs5Int32_GSQGSPVs4Int8__>:
     25a:	0e 94 e2 03 	call	0x7c4	; 0x7c4 <_intToString>
     25e:	40 e0       	ldi	r20, 0x00	; 0
     260:	50 e0       	ldi	r21, 0x00	; 0
     262:	9c 01       	movw	r18, r24
     264:	ba 01       	movw	r22, r20
     266:	ca 01       	movw	r24, r20
     268:	08 95       	ret

0000026a <_TF3AVR13floatToStringFT6numberSf_GSQGSPVs4Int8__>:
     26a:	0e 94 fe 03 	call	0x7fc	; 0x7fc <_fltToString>
     26e:	40 e0       	ldi	r20, 0x00	; 0
     270:	50 e0       	ldi	r21, 0x00	; 0
     272:	9c 01       	movw	r18, r24
     274:	ba 01       	movw	r22, r20
     276:	ca 01       	movw	r24, r20
     278:	08 95       	ret

0000027a <_TF3AVR5ticksFT_Vs6UInt16>:
     27a:	0e 94 bd 03 	call	0x77a	; 0x77a <_ticks>
     27e:	08 95       	ret

00000280 <_TF3AVR11digitalReadFT3pinVs5UInt8_Sb>:
     280:	0e 94 91 02 	call	0x522	; 0x522 <_digitalRead>
     284:	08 95       	ret

00000286 <_TF3AVR12digitalWriteFT3pinVs5UInt85valueSb_T_>:
     286:	83 30       	cpi	r24, 0x03	; 3
     288:	51 f0       	breq	.+20     	; 0x29e <LBB1_6>
     28a:	85 30       	cpi	r24, 0x05	; 5
     28c:	41 f0       	breq	.+16     	; 0x29e <LBB1_6>
     28e:	86 30       	cpi	r24, 0x06	; 6
     290:	31 f0       	breq	.+12     	; 0x29e <LBB1_6>
     292:	89 30       	cpi	r24, 0x09	; 9
     294:	21 f0       	breq	.+8      	; 0x29e <LBB1_6>
     296:	8a 30       	cpi	r24, 0x0A	; 10
     298:	11 f0       	breq	.+4      	; 0x29e <LBB1_6>
     29a:	8b 30       	cpi	r24, 0x0B	; 11
     29c:	59 f4       	brne	.+22     	; 0x2b4 <LBB1_9>

0000029e <LBB1_6>:
     29e:	61 70       	andi	r22, 0x01	; 1
     2a0:	60 30       	cpi	r22, 0x00	; 0
     2a2:	21 f0       	breq	.+8      	; 0x2ac <LBB1_8>
     2a4:	6f ef       	ldi	r22, 0xFF	; 255
     2a6:	0e 94 ba 06 	call	0xd74	; 0xd74 <_analogWrite>
     2aa:	08 95       	ret

000002ac <LBB1_8>:
     2ac:	60 e0       	ldi	r22, 0x00	; 0
     2ae:	0e 94 ba 06 	call	0xd74	; 0xd74 <_analogWrite>
     2b2:	08 95       	ret

000002b4 <LBB1_9>:
     2b4:	61 70       	andi	r22, 0x01	; 1
     2b6:	0e 94 aa 02 	call	0x554	; 0x554 <_digitalWrite>
     2ba:	08 95       	ret

000002bc <_TF3AVR7pinModeFT3pinVs5UInt84modeSb_T_>:
     2bc:	61 70       	andi	r22, 0x01	; 1
     2be:	0e 94 eb 02 	call	0x5d6	; 0x5d6 <_pinMode>
     2c2:	08 95       	ret

000002c4 <_TF3AVR11analogWriteFT3pinVs5UInt85valueS0__T_>:
     2c4:	0e 94 ba 06 	call	0xd74	; 0xd74 <_analogWrite>
     2c8:	08 95       	ret

000002ca <_TF3AVR14slowAnalogReadFT3pinVs5UInt8_Vs6UInt16>:
     2ca:	0e 94 bd 07 	call	0xf7a	; 0xf7a <_slowAnalogRead>
     2ce:	08 95       	ret

000002d0 <_TF3AVR15analogReadAsyncFT3pinVs5UInt88callbackcVs6UInt16T__T_>:
     2d0:	0e 94 24 08 	call	0x1048	; 0x1048 <_analogReadAsync>
     2d4:	08 95       	ret

000002d6 <_TF3AVR26setupPin2InterruptCallbackFT8edgeTypeVs5UInt88callbackcT_T__T_>:
     2d6:	0e 94 7e 03 	call	0x6fc	; 0x6fc <_setupPin2InterruptCallback>
     2da:	08 95       	ret

000002dc <_TF3AVR26clearPin2InterruptCallbackFT_T_>:
     2dc:	0e 94 8e 03 	call	0x71c	; 0x71c <_clearPin2InterruptCallback>
     2e0:	08 95       	ret

000002e2 <_TF3AVR26setupPin3InterruptCallbackFT8edgeTypeVs5UInt88callbackcT_T__T_>:
     2e2:	0e 94 94 03 	call	0x728	; 0x728 <_setupPin3InterruptCallback>
     2e6:	08 95       	ret

000002e8 <_TF3AVR26clearPin3InterruptCallbackFT_T_>:
     2e8:	0e 94 a8 03 	call	0x750	; 0x750 <_clearPin3InterruptCallback>
     2ec:	08 95       	ret
	...

000002f0 <_TF3AVR11SetupSerialFT8baudRateVs5Int16_T_>:
     2f0:	0e 94 91 04 	call	0x922	; 0x922 <_setupSerial>
     2f4:	08 95       	ret

000002f6 <_TIF3AVR5printFT7messageGSqGSPVs4Int8__10addNewlineSb_T_A0_>:
     2f6:	81 e0       	ldi	r24, 0x01	; 1
     2f8:	08 95       	ret

000002fa <_TF3AVR5printFT7messageGSqGSPVs4Int8__10addNewlineSb_T_>:
     2fa:	0f 93       	push	r16
     2fc:	01 70       	andi	r16, 0x01	; 1
     2fe:	88 ee       	ldi	r24, 0xE8	; 232
     300:	93 e0       	ldi	r25, 0x03	; 3
     302:	b9 01       	movw	r22, r18
     304:	40 2f       	mov	r20, r16
     306:	0e 94 ce 04 	call	0x99c	; 0x99c <_sendString>
     30a:	0f 91       	pop	r16
     30c:	08 95       	ret

0000030e <_TF3AVR5printFT4byteVs5UInt8_T_>:
     30e:	0e 94 c7 04 	call	0x98e	; 0x98e <_sendByte>
     312:	08 95       	ret

00000314 <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberSf10addNewlineSb_T_>:
     314:	1f 93       	push	r17
     316:	14 2f       	mov	r17, r20
     318:	0e 94 fe 03 	call	0x7fc	; 0x7fc <_fltToString>
     31c:	9c 01       	movw	r18, r24
     31e:	11 70       	andi	r17, 0x01	; 1
     320:	88 ee       	ldi	r24, 0xE8	; 232
     322:	93 e0       	ldi	r25, 0x03	; 3
     324:	b9 01       	movw	r22, r18
     326:	41 2f       	mov	r20, r17
     328:	0e 94 ef 04 	call	0x9de	; 0x9de <_sendBuffer>
     32c:	1f 91       	pop	r17
     32e:	08 95       	ret

00000330 <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberVs5Int3210addNewlineSb_T_>:
     330:	1f 93       	push	r17
     332:	14 2f       	mov	r17, r20
     334:	0e 94 e2 03 	call	0x7c4	; 0x7c4 <_intToString>
     338:	9c 01       	movw	r18, r24
     33a:	11 70       	andi	r17, 0x01	; 1
     33c:	88 ee       	ldi	r24, 0xE8	; 232
     33e:	93 e0       	ldi	r25, 0x03	; 3
     340:	b9 01       	movw	r22, r18
     342:	41 2f       	mov	r20, r17
     344:	0e 94 ef 04 	call	0x9de	; 0x9de <_sendBuffer>
     348:	1f 91       	pop	r17
     34a:	08 95       	ret

0000034c <_TIF3AVR5printFT7longIntVs5Int3210addNewlineSb_T_A0_>:
     34c:	81 e0       	ldi	r24, 0x01	; 1
     34e:	08 95       	ret

00000350 <_TF3AVR5printFT7longIntVs5Int3210addNewlineSb_T_>:
     350:	0e 94 98 01 	call	0x330	; 0x330 <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberVs5Int3210addNewlineSb_T_>
     354:	08 95       	ret

00000356 <_TIF3AVR5printFT3intVs5Int1610addNewlineSb_T_A0_>:
     356:	81 e0       	ldi	r24, 0x01	; 1
     358:	08 95       	ret

0000035a <_TF3AVR5printFT3intVs5Int1610addNewlineSb_T_>:
     35a:	26 2f       	mov	r18, r22
     35c:	ac 01       	movw	r20, r24
     35e:	55 95       	asr	r21
     360:	47 95       	ror	r20
     362:	55 95       	asr	r21
     364:	47 95       	ror	r20
     366:	55 95       	asr	r21
     368:	47 95       	ror	r20
     36a:	55 95       	asr	r21
     36c:	47 95       	ror	r20
     36e:	55 95       	asr	r21
     370:	47 95       	ror	r20
     372:	55 95       	asr	r21
     374:	47 95       	ror	r20
     376:	55 95       	asr	r21
     378:	47 95       	ror	r20
     37a:	55 95       	asr	r21
     37c:	47 95       	ror	r20
     37e:	55 95       	asr	r21
     380:	47 95       	ror	r20
     382:	55 95       	asr	r21
     384:	47 95       	ror	r20
     386:	55 95       	asr	r21
     388:	47 95       	ror	r20
     38a:	55 95       	asr	r21
     38c:	47 95       	ror	r20
     38e:	55 95       	asr	r21
     390:	47 95       	ror	r20
     392:	55 95       	asr	r21
     394:	47 95       	ror	r20
     396:	55 95       	asr	r21
     398:	47 95       	ror	r20
     39a:	bc 01       	movw	r22, r24
     39c:	ca 01       	movw	r24, r20
     39e:	42 2f       	mov	r20, r18
     3a0:	0e 94 98 01 	call	0x330	; 0x330 <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberVs5Int3210addNewlineSb_T_>
     3a4:	08 95       	ret

000003a6 <_TIF3AVR5printFT7tinyIntVs4Int810addNewlineSb_T_A0_>:
     3a6:	81 e0       	ldi	r24, 0x01	; 1
     3a8:	08 95       	ret

000003aa <_TF3AVR5printFT7tinyIntVs4Int810addNewlineSb_T_>:
     3aa:	26 2f       	mov	r18, r22
     3ac:	68 2f       	mov	r22, r24
     3ae:	78 2f       	mov	r23, r24
     3b0:	77 0f       	add	r23, r23
     3b2:	77 0b       	sbc	r23, r23
     3b4:	cb 01       	movw	r24, r22
     3b6:	95 95       	asr	r25
     3b8:	87 95       	ror	r24
     3ba:	95 95       	asr	r25
     3bc:	87 95       	ror	r24
     3be:	95 95       	asr	r25
     3c0:	87 95       	ror	r24
     3c2:	95 95       	asr	r25
     3c4:	87 95       	ror	r24
     3c6:	95 95       	asr	r25
     3c8:	87 95       	ror	r24
     3ca:	95 95       	asr	r25
     3cc:	87 95       	ror	r24
     3ce:	95 95       	asr	r25
     3d0:	87 95       	ror	r24
     3d2:	95 95       	asr	r25
     3d4:	87 95       	ror	r24
     3d6:	95 95       	asr	r25
     3d8:	87 95       	ror	r24
     3da:	95 95       	asr	r25
     3dc:	87 95       	ror	r24
     3de:	95 95       	asr	r25
     3e0:	87 95       	ror	r24
     3e2:	95 95       	asr	r25
     3e4:	87 95       	ror	r24
     3e6:	95 95       	asr	r25
     3e8:	87 95       	ror	r24
     3ea:	95 95       	asr	r25
     3ec:	87 95       	ror	r24
     3ee:	95 95       	asr	r25
     3f0:	87 95       	ror	r24
     3f2:	42 2f       	mov	r20, r18
     3f4:	0e 94 98 01 	call	0x330	; 0x330 <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberVs5Int3210addNewlineSb_T_>
     3f8:	08 95       	ret

000003fa <_TIF3AVR5printFT11unsignedIntVs6UInt1610addNewlineSb_T_A0_>:
     3fa:	81 e0       	ldi	r24, 0x01	; 1
     3fc:	08 95       	ret

000003fe <_TF3AVR5printFT11unsignedIntVs6UInt1610addNewlineSb_T_>:
     3fe:	26 2f       	mov	r18, r22
     400:	40 e0       	ldi	r20, 0x00	; 0
     402:	50 e0       	ldi	r21, 0x00	; 0
     404:	bc 01       	movw	r22, r24
     406:	ca 01       	movw	r24, r20
     408:	42 2f       	mov	r20, r18
     40a:	0e 94 98 01 	call	0x330	; 0x330 <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberVs5Int3210addNewlineSb_T_>
     40e:	08 95       	ret

00000410 <_TIF3AVR5printFT15unsignedTinyIntVs5UInt810addNewlineSb_T_A0_>:
     410:	81 e0       	ldi	r24, 0x01	; 1
     412:	08 95       	ret

00000414 <_TF3AVR5printFT15unsignedTinyIntVs5UInt810addNewlineSb_T_>:
     414:	26 2f       	mov	r18, r22
     416:	68 2f       	mov	r22, r24
     418:	77 27       	eor	r23, r23
     41a:	80 e0       	ldi	r24, 0x00	; 0
     41c:	90 e0       	ldi	r25, 0x00	; 0
     41e:	42 2f       	mov	r20, r18
     420:	0e 94 98 01 	call	0x330	; 0x330 <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberVs5Int3210addNewlineSb_T_>
     424:	08 95       	ret

00000426 <_TIF3AVR5printFT5floatSf10addNewlineSb_T_A0_>:
     426:	81 e0       	ldi	r24, 0x01	; 1
     428:	08 95       	ret

0000042a <_TF3AVR5printFT5floatSf10addNewlineSb_T_>:
     42a:	0e 94 8a 01 	call	0x314	; 0x314 <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberSf10addNewlineSb_T_>
     42e:	08 95       	ret

00000430 <_TF3AVR9availableFT_Sb>:
     430:	0e 94 0f 05 	call	0xa1e	; 0xa1e <_available>
     434:	08 95       	ret

00000436 <_TF3AVR4readFT_Vs5UInt8>:
     436:	0e 94 1a 05 	call	0xa34	; 0xa34 <_receiveByte>
     43a:	08 95       	ret

0000043c <_TF3AVR8SetupSPIFT5speedVs5UInt84modeS0_3lsbSb_T_>:
     43c:	41 70       	andi	r20, 0x01	; 1
     43e:	0e 94 37 05 	call	0xa6e	; 0xa6e <_setupSPIAsMaster>
     442:	08 95       	ret

00000444 <_TF3AVR11DoubleSpeedFT_T_>:
     444:	81 e0       	ldi	r24, 0x01	; 1
     446:	0e 94 59 05 	call	0xab2	; 0xab2 <_setupSPIDoubleSpeed>
     44a:	08 95       	ret

0000044c <_TF3AVR17CancelDoubleSpeedFT_T_>:
     44c:	80 e0       	ldi	r24, 0x00	; 0
     44e:	0e 94 59 05 	call	0xab2	; 0xab2 <_setupSPIDoubleSpeed>
     452:	08 95       	ret

00000454 <_TF3AVR11sendSPISlowFT4byteVs5UInt8_S0_>:
     454:	0e 94 63 05 	call	0xac6	; 0xac6 <_sendSPIByteBlocking>
     458:	08 95       	ret

0000045a <_TIF3AVR14receiveSPISlowFT6lengthVs6UInt168isStringSb_GSQGSPVs4Int8__A0_>:
     45a:	81 e0       	ldi	r24, 0x01	; 1
     45c:	08 95       	ret

0000045e <_TF3AVR14receiveSPISlowFT6lengthVs6UInt168isStringSb_GSQGSPVs4Int8__>:
     45e:	61 70       	andi	r22, 0x01	; 1
     460:	0e 94 69 05 	call	0xad2	; 0xad2 <_receiveSPIBufferBlocking>
     464:	40 e0       	ldi	r20, 0x00	; 0
     466:	50 e0       	ldi	r21, 0x00	; 0
     468:	9c 01       	movw	r18, r24
     46a:	ba 01       	movw	r22, r20
     46c:	ca 01       	movw	r24, r20
     46e:	08 95       	ret

00000470 <_TIF3AVR11sendSPISlowFT7messageGSQGSPVs4Int8__13sendingStringSb15receivingStringSb_GSQGSPS0___A0_>:
     470:	81 e0       	ldi	r24, 0x01	; 1
     472:	08 95       	ret

00000474 <_TIF3AVR11sendSPISlowFT7messageGSQGSPVs4Int8__13sendingStringSb15receivingStringSb_GSQGSPS0___A1_>:
     474:	81 e0       	ldi	r24, 0x01	; 1
     476:	08 95       	ret

00000478 <_TF3AVR11sendSPISlowFT7messageGSQGSPVs4Int8__13sendingStringSb15receivingStringSb_GSQGSPS0___>:
     478:	0f 93       	push	r16
     47a:	5e 2d       	mov	r21, r14
     47c:	01 70       	andi	r16, 0x01	; 1
     47e:	51 70       	andi	r21, 0x01	; 1
     480:	88 ee       	ldi	r24, 0xE8	; 232
     482:	93 e0       	ldi	r25, 0x03	; 3
     484:	b9 01       	movw	r22, r18
     486:	41 e0       	ldi	r20, 0x01	; 1
     488:	20 2f       	mov	r18, r16
     48a:	05 2f       	mov	r16, r21
     48c:	0e 94 94 05 	call	0xb28	; 0xb28 <_sendReceiveSPIBufferBlocking>
     490:	40 e0       	ldi	r20, 0x00	; 0
     492:	50 e0       	ldi	r21, 0x00	; 0
     494:	9c 01       	movw	r18, r24
     496:	ba 01       	movw	r22, r20
     498:	ca 01       	movw	r24, r20
     49a:	0f 91       	pop	r16
     49c:	08 95       	ret

0000049e <_TF3AVR8setupI2CFT5speedVs5UInt813premultiplierS0__T_>:
     49e:	0e 94 d6 05 	call	0xbac	; 0xbac <_i2cinit>
     4a2:	08 95       	ret

000004a4 <_TF3AVR8i2cstartFT_T_>:
     4a4:	0e 94 df 05 	call	0xbbe	; 0xbbe <_i2cstart>
     4a8:	08 95       	ret

000004aa <_TF3AVR7i2cstopFT_T_>:
     4aa:	0e 94 e7 05 	call	0xbce	; 0xbce <_i2cstop>
     4ae:	08 95       	ret

000004b0 <_TF3AVR10i2cGetByteFT12slaveAddressVs5UInt8_S0_>:
     4b0:	0e 94 03 06 	call	0xc06	; 0xc06 <_i2cReadSingleByte>
     4b4:	08 95       	ret

000004b6 <_TF3AVR12i2cGetBufferFT12slaveAddressVs5UInt810bufferSizeS0__GSQGSPVs4Int8__>:
     4b6:	0e 94 14 06 	call	0xc28	; 0xc28 <_i2cReadBuffer>
     4ba:	40 e0       	ldi	r20, 0x00	; 0
     4bc:	50 e0       	ldi	r21, 0x00	; 0
     4be:	9c 01       	movw	r18, r24
     4c0:	ba 01       	movw	r22, r20
     4c2:	ca 01       	movw	r24, r20
     4c4:	08 95       	ret

000004c6 <_TF3AVR12i2cWriteByteFT12slaveAddressVs5UInt84byteS0__T_>:
     4c6:	0e 94 3e 06 	call	0xc7c	; 0xc7c <_i2cWriteByte>
     4ca:	08 95       	ret

000004cc <_TF3AVR14i2cWriteBufferFT12slaveAddressVs5UInt810bufferSizeVs6UInt166bufferGSQGSPVs4Int8___T_>:
     4cc:	a7 01       	movw	r20, r14
     4ce:	0e 94 54 06 	call	0xca8	; 0xca8 <_i2cWriteBuffer>
     4d2:	08 95       	ret

000004d4 <_TIF3AVR8i2cPrintFT12slaveAddressVs5UInt87messageGSqGSPVs4Int8__10addNewlineSb_T_A1_>:
     4d4:	81 e0       	ldi	r24, 0x01	; 1
     4d6:	08 95       	ret

000004d8 <_TF3AVR8i2cPrintFT12slaveAddressVs5UInt87messageGSqGSPVs4Int8__10addNewlineSb_T_>:
     4d8:	4e 2d       	mov	r20, r14
     4da:	41 70       	andi	r20, 0x01	; 1
     4dc:	b8 01       	movw	r22, r16
     4de:	0e 94 7a 06 	call	0xcf4	; 0xcf4 <_i2cWritePGMString>
     4e2:	08 95       	ret

000004e4 <pinMask>:
     4e4:	88 30       	cpi	r24, 0x08	; 8
     4e6:	a0 f0       	brcs	.+40     	; 0x510 <pinMask+0x2c>
     4e8:	8e 30       	cpi	r24, 0x0E	; 14
     4ea:	50 f0       	brcs	.+20     	; 0x500 <pinMask+0x1c>
     4ec:	85 31       	cpi	r24, 0x15	; 21
     4ee:	b8 f4       	brcc	.+46     	; 0x51e <pinMask+0x3a>
     4f0:	92 ef       	ldi	r25, 0xF2	; 242
     4f2:	98 0f       	add	r25, r24
     4f4:	81 e0       	ldi	r24, 0x01	; 1
     4f6:	01 c0       	rjmp	.+2      	; 0x4fa <pinMask+0x16>
     4f8:	88 0f       	add	r24, r24
     4fa:	9a 95       	dec	r25
     4fc:	ea f7       	brpl	.-6      	; 0x4f8 <pinMask+0x14>
     4fe:	08 95       	ret
     500:	98 ef       	ldi	r25, 0xF8	; 248
     502:	98 0f       	add	r25, r24
     504:	81 e0       	ldi	r24, 0x01	; 1
     506:	01 c0       	rjmp	.+2      	; 0x50a <pinMask+0x26>
     508:	88 0f       	add	r24, r24
     50a:	9a 95       	dec	r25
     50c:	ea f7       	brpl	.-6      	; 0x508 <pinMask+0x24>
     50e:	08 95       	ret
     510:	91 e0       	ldi	r25, 0x01	; 1
     512:	01 c0       	rjmp	.+2      	; 0x516 <pinMask+0x32>
     514:	99 0f       	add	r25, r25
     516:	8a 95       	dec	r24
     518:	ea f7       	brpl	.-6      	; 0x514 <pinMask+0x30>
     51a:	89 2f       	mov	r24, r25
     51c:	08 95       	ret
     51e:	80 e0       	ldi	r24, 0x00	; 0
     520:	08 95       	ret

00000522 <_digitalRead>:
     522:	88 30       	cpi	r24, 0x08	; 8
     524:	58 f4       	brcc	.+22     	; 0x53c <_digitalRead+0x1a>
     526:	99 b1       	in	r25, 0x09	; 9
     528:	21 e0       	ldi	r18, 0x01	; 1
     52a:	30 e0       	ldi	r19, 0x00	; 0
     52c:	01 c0       	rjmp	.+2      	; 0x530 <_digitalRead+0xe>
     52e:	22 0f       	add	r18, r18
     530:	8a 95       	dec	r24
     532:	ea f7       	brpl	.-6      	; 0x52e <_digitalRead+0xc>
     534:	92 23       	and	r25, r18
     536:	81 e0       	ldi	r24, 0x01	; 1
     538:	29 f0       	breq	.+10     	; 0x544 <_digitalRead+0x22>
     53a:	08 95       	ret
     53c:	8e 30       	cpi	r24, 0x0E	; 14
     53e:	20 f0       	brcs	.+8      	; 0x548 <_digitalRead+0x26>
     540:	85 31       	cpi	r24, 0x15	; 21
     542:	28 f0       	brcs	.+10     	; 0x54e <_digitalRead+0x2c>
     544:	80 e0       	ldi	r24, 0x00	; 0
     546:	08 95       	ret
     548:	93 b1       	in	r25, 0x03	; 3
     54a:	88 50       	subi	r24, 0x08	; 8
     54c:	ed cf       	rjmp	.-38     	; 0x528 <_digitalRead+0x6>
     54e:	96 b1       	in	r25, 0x06	; 6
     550:	8e 50       	subi	r24, 0x0E	; 14
     552:	ea cf       	rjmp	.-44     	; 0x528 <_digitalRead+0x6>

00000554 <_digitalWrite>:
     554:	88 30       	cpi	r24, 0x08	; 8
     556:	60 f4       	brcc	.+24     	; 0x570 <_digitalWrite+0x1c>
     558:	21 e0       	ldi	r18, 0x01	; 1
     55a:	30 e0       	ldi	r19, 0x00	; 0
     55c:	01 c0       	rjmp	.+2      	; 0x560 <_digitalWrite+0xc>
     55e:	22 0f       	add	r18, r18
     560:	8a 95       	dec	r24
     562:	ea f7       	brpl	.-6      	; 0x55e <_digitalWrite+0xa>
     564:	66 23       	and	r22, r22
     566:	49 f1       	breq	.+82     	; 0x5ba <_digitalWrite+0x66>
     568:	8b b1       	in	r24, 0x0b	; 11
     56a:	28 2b       	or	r18, r24
     56c:	2b b9       	out	0x0b, r18	; 11
     56e:	08 95       	ret
     570:	8e 30       	cpi	r24, 0x0E	; 14
     572:	88 f4       	brcc	.+34     	; 0x596 <_digitalWrite+0x42>
     574:	88 50       	subi	r24, 0x08	; 8
     576:	21 e0       	ldi	r18, 0x01	; 1
     578:	30 e0       	ldi	r19, 0x00	; 0
     57a:	a9 01       	movw	r20, r18
     57c:	02 c0       	rjmp	.+4      	; 0x582 <_digitalWrite+0x2e>
     57e:	44 0f       	add	r20, r20
     580:	55 1f       	adc	r21, r21
     582:	8a 95       	dec	r24
     584:	e2 f7       	brpl	.-8      	; 0x57e <_digitalWrite+0x2a>
     586:	ca 01       	movw	r24, r20
     588:	61 11       	cpse	r22, r1
     58a:	1c c0       	rjmp	.+56     	; 0x5c4 <_digitalWrite+0x70>
     58c:	95 b1       	in	r25, 0x05	; 5
     58e:	80 95       	com	r24
     590:	89 23       	and	r24, r25
     592:	85 b9       	out	0x05, r24	; 5
     594:	08 95       	ret
     596:	85 31       	cpi	r24, 0x15	; 21
     598:	e8 f7       	brcc	.-6      	; 0x594 <_digitalWrite+0x40>
     59a:	8e 50       	subi	r24, 0x0E	; 14
     59c:	21 e0       	ldi	r18, 0x01	; 1
     59e:	30 e0       	ldi	r19, 0x00	; 0
     5a0:	a9 01       	movw	r20, r18
     5a2:	02 c0       	rjmp	.+4      	; 0x5a8 <_digitalWrite+0x54>
     5a4:	44 0f       	add	r20, r20
     5a6:	55 1f       	adc	r21, r21
     5a8:	8a 95       	dec	r24
     5aa:	e2 f7       	brpl	.-8      	; 0x5a4 <_digitalWrite+0x50>
     5ac:	ca 01       	movw	r24, r20
     5ae:	66 23       	and	r22, r22
     5b0:	69 f0       	breq	.+26     	; 0x5cc <_digitalWrite+0x78>
     5b2:	98 b1       	in	r25, 0x08	; 8
     5b4:	89 2b       	or	r24, r25
     5b6:	88 b9       	out	0x08, r24	; 8
     5b8:	08 95       	ret
     5ba:	8b b1       	in	r24, 0x0b	; 11
     5bc:	20 95       	com	r18
     5be:	28 23       	and	r18, r24
     5c0:	2b b9       	out	0x0b, r18	; 11
     5c2:	08 95       	ret
     5c4:	95 b1       	in	r25, 0x05	; 5
     5c6:	89 2b       	or	r24, r25
     5c8:	85 b9       	out	0x05, r24	; 5
     5ca:	08 95       	ret
     5cc:	98 b1       	in	r25, 0x08	; 8
     5ce:	80 95       	com	r24
     5d0:	89 23       	and	r24, r25
     5d2:	88 b9       	out	0x08, r24	; 8
     5d4:	08 95       	ret

000005d6 <_pinMode>:
     5d6:	88 30       	cpi	r24, 0x08	; 8
     5d8:	60 f4       	brcc	.+24     	; 0x5f2 <_pinMode+0x1c>
     5da:	21 e0       	ldi	r18, 0x01	; 1
     5dc:	30 e0       	ldi	r19, 0x00	; 0
     5de:	01 c0       	rjmp	.+2      	; 0x5e2 <_pinMode+0xc>
     5e0:	22 0f       	add	r18, r18
     5e2:	8a 95       	dec	r24
     5e4:	ea f7       	brpl	.-6      	; 0x5e0 <_pinMode+0xa>
     5e6:	66 23       	and	r22, r22
     5e8:	49 f1       	breq	.+82     	; 0x63c <_pinMode+0x66>
     5ea:	8a b1       	in	r24, 0x0a	; 10
     5ec:	28 2b       	or	r18, r24
     5ee:	2a b9       	out	0x0a, r18	; 10
     5f0:	08 95       	ret
     5f2:	8e 30       	cpi	r24, 0x0E	; 14
     5f4:	88 f4       	brcc	.+34     	; 0x618 <_pinMode+0x42>
     5f6:	88 50       	subi	r24, 0x08	; 8
     5f8:	21 e0       	ldi	r18, 0x01	; 1
     5fa:	30 e0       	ldi	r19, 0x00	; 0
     5fc:	a9 01       	movw	r20, r18
     5fe:	02 c0       	rjmp	.+4      	; 0x604 <_pinMode+0x2e>
     600:	44 0f       	add	r20, r20
     602:	55 1f       	adc	r21, r21
     604:	8a 95       	dec	r24
     606:	e2 f7       	brpl	.-8      	; 0x600 <_pinMode+0x2a>
     608:	ca 01       	movw	r24, r20
     60a:	61 11       	cpse	r22, r1
     60c:	1c c0       	rjmp	.+56     	; 0x646 <_pinMode+0x70>
     60e:	94 b1       	in	r25, 0x04	; 4
     610:	80 95       	com	r24
     612:	89 23       	and	r24, r25
     614:	84 b9       	out	0x04, r24	; 4
     616:	08 95       	ret
     618:	85 31       	cpi	r24, 0x15	; 21
     61a:	e8 f7       	brcc	.-6      	; 0x616 <_pinMode+0x40>
     61c:	8e 50       	subi	r24, 0x0E	; 14
     61e:	21 e0       	ldi	r18, 0x01	; 1
     620:	30 e0       	ldi	r19, 0x00	; 0
     622:	a9 01       	movw	r20, r18
     624:	02 c0       	rjmp	.+4      	; 0x62a <_pinMode+0x54>
     626:	44 0f       	add	r20, r20
     628:	55 1f       	adc	r21, r21
     62a:	8a 95       	dec	r24
     62c:	e2 f7       	brpl	.-8      	; 0x626 <_pinMode+0x50>
     62e:	ca 01       	movw	r24, r20
     630:	66 23       	and	r22, r22
     632:	69 f0       	breq	.+26     	; 0x64e <_pinMode+0x78>
     634:	97 b1       	in	r25, 0x07	; 7
     636:	89 2b       	or	r24, r25
     638:	87 b9       	out	0x07, r24	; 7
     63a:	08 95       	ret
     63c:	8a b1       	in	r24, 0x0a	; 10
     63e:	20 95       	com	r18
     640:	28 23       	and	r18, r24
     642:	2a b9       	out	0x0a, r18	; 10
     644:	08 95       	ret
     646:	94 b1       	in	r25, 0x04	; 4
     648:	89 2b       	or	r24, r25
     64a:	84 b9       	out	0x04, r24	; 4
     64c:	08 95       	ret
     64e:	97 b1       	in	r25, 0x07	; 7
     650:	80 95       	com	r24
     652:	89 23       	and	r24, r25
     654:	87 b9       	out	0x07, r24	; 7
     656:	08 95       	ret

00000658 <__vector_1>:
     658:	1f 92       	push	r1
     65a:	0f 92       	push	r0
     65c:	0f b6       	in	r0, 0x3f	; 63
     65e:	0f 92       	push	r0
     660:	11 24       	eor	r1, r1
     662:	2f 93       	push	r18
     664:	3f 93       	push	r19
     666:	4f 93       	push	r20
     668:	5f 93       	push	r21
     66a:	6f 93       	push	r22
     66c:	7f 93       	push	r23
     66e:	8f 93       	push	r24
     670:	9f 93       	push	r25
     672:	af 93       	push	r26
     674:	bf 93       	push	r27
     676:	ef 93       	push	r30
     678:	ff 93       	push	r31
     67a:	e0 91 20 01 	lds	r30, 0x0120	; 0x800120 <currentInt0Callback>
     67e:	f0 91 21 01 	lds	r31, 0x0121	; 0x800121 <currentInt0Callback+0x1>
     682:	30 97       	sbiw	r30, 0x00	; 0
     684:	09 f0       	breq	.+2      	; 0x688 <__vector_1+0x30>
     686:	09 95       	icall
     688:	ff 91       	pop	r31
     68a:	ef 91       	pop	r30
     68c:	bf 91       	pop	r27
     68e:	af 91       	pop	r26
     690:	9f 91       	pop	r25
     692:	8f 91       	pop	r24
     694:	7f 91       	pop	r23
     696:	6f 91       	pop	r22
     698:	5f 91       	pop	r21
     69a:	4f 91       	pop	r20
     69c:	3f 91       	pop	r19
     69e:	2f 91       	pop	r18
     6a0:	0f 90       	pop	r0
     6a2:	0f be       	out	0x3f, r0	; 63
     6a4:	0f 90       	pop	r0
     6a6:	1f 90       	pop	r1
     6a8:	18 95       	reti

000006aa <__vector_2>:
     6aa:	1f 92       	push	r1
     6ac:	0f 92       	push	r0
     6ae:	0f b6       	in	r0, 0x3f	; 63
     6b0:	0f 92       	push	r0
     6b2:	11 24       	eor	r1, r1
     6b4:	2f 93       	push	r18
     6b6:	3f 93       	push	r19
     6b8:	4f 93       	push	r20
     6ba:	5f 93       	push	r21
     6bc:	6f 93       	push	r22
     6be:	7f 93       	push	r23
     6c0:	8f 93       	push	r24
     6c2:	9f 93       	push	r25
     6c4:	af 93       	push	r26
     6c6:	bf 93       	push	r27
     6c8:	ef 93       	push	r30
     6ca:	ff 93       	push	r31
     6cc:	e0 91 1e 01 	lds	r30, 0x011E	; 0x80011e <__data_end>
     6d0:	f0 91 1f 01 	lds	r31, 0x011F	; 0x80011f <__data_end+0x1>
     6d4:	30 97       	sbiw	r30, 0x00	; 0
     6d6:	09 f0       	breq	.+2      	; 0x6da <__vector_2+0x30>
     6d8:	09 95       	icall
     6da:	ff 91       	pop	r31
     6dc:	ef 91       	pop	r30
     6de:	bf 91       	pop	r27
     6e0:	af 91       	pop	r26
     6e2:	9f 91       	pop	r25
     6e4:	8f 91       	pop	r24
     6e6:	7f 91       	pop	r23
     6e8:	6f 91       	pop	r22
     6ea:	5f 91       	pop	r21
     6ec:	4f 91       	pop	r20
     6ee:	3f 91       	pop	r19
     6f0:	2f 91       	pop	r18
     6f2:	0f 90       	pop	r0
     6f4:	0f be       	out	0x3f, r0	; 63
     6f6:	0f 90       	pop	r0
     6f8:	1f 90       	pop	r1
     6fa:	18 95       	reti

000006fc <_setupPin2InterruptCallback>:
     6fc:	70 93 21 01 	sts	0x0121, r23	; 0x800121 <currentInt0Callback+0x1>
     700:	60 93 20 01 	sts	0x0120, r22	; 0x800120 <currentInt0Callback>
     704:	e9 e6       	ldi	r30, 0x69	; 105
     706:	f0 e0       	ldi	r31, 0x00	; 0
     708:	90 81       	ld	r25, Z
     70a:	9c 7f       	andi	r25, 0xFC	; 252
     70c:	90 83       	st	Z, r25
     70e:	90 81       	ld	r25, Z
     710:	83 70       	andi	r24, 0x03	; 3
     712:	89 2b       	or	r24, r25
     714:	80 83       	st	Z, r24
     716:	e8 9a       	sbi	0x1d, 0	; 29
     718:	78 94       	sei
     71a:	08 95       	ret

0000071c <_clearPin2InterruptCallback>:
     71c:	10 92 21 01 	sts	0x0121, r1	; 0x800121 <currentInt0Callback+0x1>
     720:	10 92 20 01 	sts	0x0120, r1	; 0x800120 <currentInt0Callback>
     724:	e8 98       	cbi	0x1d, 0	; 29
     726:	08 95       	ret

00000728 <_setupPin3InterruptCallback>:
     728:	70 93 1f 01 	sts	0x011F, r23	; 0x80011f <__data_end+0x1>
     72c:	60 93 1e 01 	sts	0x011E, r22	; 0x80011e <__data_end>
     730:	e9 e6       	ldi	r30, 0x69	; 105
     732:	f0 e0       	ldi	r31, 0x00	; 0
     734:	90 81       	ld	r25, Z
     736:	93 7f       	andi	r25, 0xF3	; 243
     738:	90 83       	st	Z, r25
     73a:	20 81       	ld	r18, Z
     73c:	34 e0       	ldi	r19, 0x04	; 4
     73e:	83 9f       	mul	r24, r19
     740:	c0 01       	movw	r24, r0
     742:	11 24       	eor	r1, r1
     744:	8c 70       	andi	r24, 0x0C	; 12
     746:	82 2b       	or	r24, r18
     748:	80 83       	st	Z, r24
     74a:	e9 9a       	sbi	0x1d, 1	; 29
     74c:	78 94       	sei
     74e:	08 95       	ret

00000750 <_clearPin3InterruptCallback>:
     750:	10 92 1f 01 	sts	0x011F, r1	; 0x80011f <__data_end+0x1>
     754:	10 92 1e 01 	sts	0x011E, r1	; 0x80011e <__data_end>
     758:	e9 98       	cbi	0x1d, 1	; 29
     75a:	08 95       	ret

0000075c <_delayMs>:
     75c:	00 97       	sbiw	r24, 0x00	; 0
     75e:	61 f0       	breq	.+24     	; 0x778 <_delayMs+0x1c>
     760:	20 e0       	ldi	r18, 0x00	; 0
     762:	30 e0       	ldi	r19, 0x00	; 0
     764:	40 ea       	ldi	r20, 0xA0	; 160
     766:	5f e0       	ldi	r21, 0x0F	; 15
     768:	fa 01       	movw	r30, r20
     76a:	31 97       	sbiw	r30, 0x01	; 1
     76c:	f1 f7       	brne	.-4      	; 0x76a <_delayMs+0xe>
     76e:	2f 5f       	subi	r18, 0xFF	; 255
     770:	3f 4f       	sbci	r19, 0xFF	; 255
     772:	82 17       	cp	r24, r18
     774:	93 07       	cpc	r25, r19
     776:	c1 f7       	brne	.-16     	; 0x768 <_delayMs+0xc>
     778:	08 95       	ret

0000077a <_ticks>:
     77a:	80 91 22 01 	lds	r24, 0x0122	; 0x800122 <t0Overflow>
     77e:	90 91 23 01 	lds	r25, 0x0123	; 0x800123 <t0Overflow+0x1>
     782:	08 95       	ret

00000784 <_stringAddCharacter>:
     784:	e0 91 33 01 	lds	r30, 0x0133	; 0x800133 <stringBufferEnd>
     788:	ef 37       	cpi	r30, 0x7F	; 127
     78a:	91 f0       	breq	.+36     	; 0x7b0 <_stringAddCharacter+0x2c>
     78c:	91 e0       	ldi	r25, 0x01	; 1
     78e:	9e 0f       	add	r25, r30
     790:	90 93 33 01 	sts	0x0133, r25	; 0x800133 <stringBufferEnd>
     794:	0e 2e       	mov	r0, r30
     796:	00 0c       	add	r0, r0
     798:	ff 0b       	sbc	r31, r31
     79a:	ec 5c       	subi	r30, 0xCC	; 204
     79c:	fe 4f       	sbci	r31, 0xFE	; 254
     79e:	80 83       	st	Z, r24
     7a0:	e9 2f       	mov	r30, r25
     7a2:	99 0f       	add	r25, r25
     7a4:	ff 0b       	sbc	r31, r31
     7a6:	ec 5c       	subi	r30, 0xCC	; 204
     7a8:	fe 4f       	sbci	r31, 0xFE	; 254
     7aa:	10 82       	st	Z, r1
     7ac:	81 e0       	ldi	r24, 0x01	; 1
     7ae:	08 95       	ret
     7b0:	80 e0       	ldi	r24, 0x00	; 0
     7b2:	08 95       	ret

000007b4 <_stringStartNew>:
     7b4:	10 92 33 01 	sts	0x0133, r1	; 0x800133 <stringBufferEnd>
     7b8:	10 92 34 01 	sts	0x0134, r1	; 0x800134 <stringBuffer>
     7bc:	08 95       	ret

000007be <_stringCurrentValue>:
     7be:	84 e3       	ldi	r24, 0x34	; 52
     7c0:	91 e0       	ldi	r25, 0x01	; 1
     7c2:	08 95       	ret

000007c4 <_intToString>:
     7c4:	9f 93       	push	r25
     7c6:	8f 93       	push	r24
     7c8:	7f 93       	push	r23
     7ca:	6f 93       	push	r22
     7cc:	8f e0       	ldi	r24, 0x0F	; 15
     7ce:	91 e0       	ldi	r25, 0x01	; 1
     7d0:	9f 93       	push	r25
     7d2:	8f 93       	push	r24
     7d4:	1f 92       	push	r1
     7d6:	8f e0       	ldi	r24, 0x0F	; 15
     7d8:	8f 93       	push	r24
     7da:	84 e2       	ldi	r24, 0x24	; 36
     7dc:	91 e0       	ldi	r25, 0x01	; 1
     7de:	9f 93       	push	r25
     7e0:	8f 93       	push	r24
     7e2:	0e 94 6c 0e 	call	0x1cd8	; 0x1cd8 <snprintf>
     7e6:	8d b7       	in	r24, 0x3d	; 61
     7e8:	9e b7       	in	r25, 0x3e	; 62
     7ea:	0a 96       	adiw	r24, 0x0a	; 10
     7ec:	0f b6       	in	r0, 0x3f	; 63
     7ee:	f8 94       	cli
     7f0:	9e bf       	out	0x3e, r25	; 62
     7f2:	0f be       	out	0x3f, r0	; 63
     7f4:	8d bf       	out	0x3d, r24	; 61
     7f6:	84 e2       	ldi	r24, 0x24	; 36
     7f8:	91 e0       	ldi	r25, 0x01	; 1
     7fa:	08 95       	ret

000007fc <_fltToString>:
     7fc:	9f 93       	push	r25
     7fe:	8f 93       	push	r24
     800:	7f 93       	push	r23
     802:	6f 93       	push	r22
     804:	83 e1       	ldi	r24, 0x13	; 19
     806:	91 e0       	ldi	r25, 0x01	; 1
     808:	9f 93       	push	r25
     80a:	8f 93       	push	r24
     80c:	1f 92       	push	r1
     80e:	8f e0       	ldi	r24, 0x0F	; 15
     810:	8f 93       	push	r24
     812:	84 e2       	ldi	r24, 0x24	; 36
     814:	91 e0       	ldi	r25, 0x01	; 1
     816:	9f 93       	push	r25
     818:	8f 93       	push	r24
     81a:	0e 94 6c 0e 	call	0x1cd8	; 0x1cd8 <snprintf>
     81e:	8d b7       	in	r24, 0x3d	; 61
     820:	9e b7       	in	r25, 0x3e	; 62
     822:	0a 96       	adiw	r24, 0x0a	; 10
     824:	0f b6       	in	r0, 0x3f	; 63
     826:	f8 94       	cli
     828:	9e bf       	out	0x3e, r25	; 62
     82a:	0f be       	out	0x3f, r0	; 63
     82c:	8d bf       	out	0x3d, r24	; 61
     82e:	84 e2       	ldi	r24, 0x24	; 36
     830:	91 e0       	ldi	r25, 0x01	; 1
     832:	08 95       	ret

00000834 <_fltToStringPrecision>:
     834:	9f 93       	push	r25
     836:	8f 93       	push	r24
     838:	7f 93       	push	r23
     83a:	6f 93       	push	r22
     83c:	1f 92       	push	r1
     83e:	4f 93       	push	r20
     840:	88 e1       	ldi	r24, 0x18	; 24
     842:	91 e0       	ldi	r25, 0x01	; 1
     844:	9f 93       	push	r25
     846:	8f 93       	push	r24
     848:	1f 92       	push	r1
     84a:	8f e0       	ldi	r24, 0x0F	; 15
     84c:	8f 93       	push	r24
     84e:	84 e2       	ldi	r24, 0x24	; 36
     850:	91 e0       	ldi	r25, 0x01	; 1
     852:	9f 93       	push	r25
     854:	8f 93       	push	r24
     856:	0e 94 6c 0e 	call	0x1cd8	; 0x1cd8 <snprintf>
     85a:	8d b7       	in	r24, 0x3d	; 61
     85c:	9e b7       	in	r25, 0x3e	; 62
     85e:	0c 96       	adiw	r24, 0x0c	; 12
     860:	0f b6       	in	r0, 0x3f	; 63
     862:	f8 94       	cli
     864:	9e bf       	out	0x3e, r25	; 62
     866:	0f be       	out	0x3f, r0	; 63
     868:	8d bf       	out	0x3d, r24	; 61
     86a:	84 e2       	ldi	r24, 0x24	; 36
     86c:	91 e0       	ldi	r25, 0x01	; 1
     86e:	08 95       	ret

00000870 <__vector_16>:
     870:	1f 92       	push	r1
     872:	0f 92       	push	r0
     874:	0f b6       	in	r0, 0x3f	; 63
     876:	0f 92       	push	r0
     878:	11 24       	eor	r1, r1
     87a:	8f 93       	push	r24
     87c:	9f 93       	push	r25
     87e:	80 91 22 01 	lds	r24, 0x0122	; 0x800122 <t0Overflow>
     882:	90 91 23 01 	lds	r25, 0x0123	; 0x800123 <t0Overflow+0x1>
     886:	01 96       	adiw	r24, 0x01	; 1
     888:	90 93 23 01 	sts	0x0123, r25	; 0x800123 <t0Overflow+0x1>
     88c:	80 93 22 01 	sts	0x0122, r24	; 0x800122 <t0Overflow>
     890:	9f 91       	pop	r25
     892:	8f 91       	pop	r24
     894:	0f 90       	pop	r0
     896:	0f be       	out	0x3f, r0	; 63
     898:	0f 90       	pop	r0
     89a:	1f 90       	pop	r1
     89c:	18 95       	reti

0000089e <__vector_18>:
     89e:	1f 92       	push	r1
     8a0:	0f 92       	push	r0
     8a2:	0f b6       	in	r0, 0x3f	; 63
     8a4:	0f 92       	push	r0
     8a6:	11 24       	eor	r1, r1
     8a8:	2f 93       	push	r18
     8aa:	8f 93       	push	r24
     8ac:	9f 93       	push	r25
     8ae:	ef 93       	push	r30
     8b0:	ff 93       	push	r31
     8b2:	80 91 b4 01 	lds	r24, 0x01B4	; 0x8001b4 <bufferFull>
     8b6:	81 11       	cpse	r24, r1
     8b8:	1e c0       	rjmp	.+60     	; 0x8f6 <__vector_18+0x58>
     8ba:	e0 91 b5 01 	lds	r30, 0x01B5	; 0x8001b5 <ringBufferEnd>
     8be:	81 e0       	ldi	r24, 0x01	; 1
     8c0:	8e 0f       	add	r24, r30
     8c2:	80 93 b5 01 	sts	0x01B5, r24	; 0x8001b5 <ringBufferEnd>
     8c6:	90 91 c6 00 	lds	r25, 0x00C6	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
     8ca:	0e 2e       	mov	r0, r30
     8cc:	00 0c       	add	r0, r0
     8ce:	ff 0b       	sbc	r31, r31
     8d0:	e9 54       	subi	r30, 0x49	; 73
     8d2:	fe 4f       	sbci	r31, 0xFE	; 254
     8d4:	90 83       	st	Z, r25
     8d6:	08 2e       	mov	r0, r24
     8d8:	00 0c       	add	r0, r0
     8da:	99 0b       	sbc	r25, r25
     8dc:	8f 77       	andi	r24, 0x7F	; 127
     8de:	90 78       	andi	r25, 0x80	; 128
     8e0:	97 fd       	sbrc	r25, 7
     8e2:	13 c0       	rjmp	.+38     	; 0x90a <__stack+0xb>
     8e4:	80 93 b5 01 	sts	0x01B5, r24	; 0x8001b5 <ringBufferEnd>
     8e8:	91 e0       	ldi	r25, 0x01	; 1
     8ea:	20 91 b6 01 	lds	r18, 0x01B6	; 0x8001b6 <ringBufferStart>
     8ee:	28 13       	cpse	r18, r24
     8f0:	90 e0       	ldi	r25, 0x00	; 0
     8f2:	90 93 b4 01 	sts	0x01B4, r25	; 0x8001b4 <bufferFull>
     8f6:	ff 91       	pop	r31
     8f8:	ef 91       	pop	r30
     8fa:	9f 91       	pop	r25
     8fc:	8f 91       	pop	r24
     8fe:	2f 91       	pop	r18
     900:	0f 90       	pop	r0
     902:	0f be       	out	0x3f, r0	; 63
     904:	0f 90       	pop	r0
     906:	1f 90       	pop	r1
     908:	18 95       	reti
     90a:	01 97       	sbiw	r24, 0x01	; 1
     90c:	80 68       	ori	r24, 0x80	; 128
     90e:	9f 6f       	ori	r25, 0xFF	; 255
     910:	01 96       	adiw	r24, 0x01	; 1
     912:	80 93 b5 01 	sts	0x01B5, r24	; 0x8001b5 <ringBufferEnd>
     916:	91 e0       	ldi	r25, 0x01	; 1
     918:	20 91 b6 01 	lds	r18, 0x01B6	; 0x8001b6 <ringBufferStart>
     91c:	28 13       	cpse	r18, r24
     91e:	e8 cf       	rjmp	.-48     	; 0x8f0 <__vector_18+0x52>
     920:	e8 cf       	rjmp	.-48     	; 0x8f2 <__vector_18+0x54>

00000922 <_setupSerial>:
     922:	9c 01       	movw	r18, r24
     924:	99 0f       	add	r25, r25
     926:	44 0b       	sbc	r20, r20
     928:	55 0b       	sbc	r21, r21
     92a:	22 0f       	add	r18, r18
     92c:	33 1f       	adc	r19, r19
     92e:	44 1f       	adc	r20, r20
     930:	55 1f       	adc	r21, r21
     932:	22 0f       	add	r18, r18
     934:	33 1f       	adc	r19, r19
     936:	44 1f       	adc	r20, r20
     938:	55 1f       	adc	r21, r21
     93a:	22 0f       	add	r18, r18
     93c:	33 1f       	adc	r19, r19
     93e:	44 1f       	adc	r20, r20
     940:	55 1f       	adc	r21, r21
     942:	22 0f       	add	r18, r18
     944:	33 1f       	adc	r19, r19
     946:	44 1f       	adc	r20, r20
     948:	55 1f       	adc	r21, r21
     94a:	60 e0       	ldi	r22, 0x00	; 0
     94c:	74 e2       	ldi	r23, 0x24	; 36
     94e:	84 ef       	ldi	r24, 0xF4	; 244
     950:	90 e0       	ldi	r25, 0x00	; 0
     952:	0e 94 f4 0b 	call	0x17e8	; 0x17e8 <__udivmodsi4>
     956:	ba 01       	movw	r22, r20
     958:	a9 01       	movw	r20, r18
     95a:	41 50       	subi	r20, 0x01	; 1
     95c:	51 09       	sbc	r21, r1
     95e:	61 09       	sbc	r22, r1
     960:	71 09       	sbc	r23, r1
     962:	bb 27       	eor	r27, r27
     964:	77 fd       	sbrc	r23, 7
     966:	ba 95       	dec	r27
     968:	a7 2f       	mov	r26, r23
     96a:	96 2f       	mov	r25, r22
     96c:	85 2f       	mov	r24, r21
     96e:	80 93 c5 00 	sts	0x00C5, r24	; 0x8000c5 <__TEXT_REGION_LENGTH__+0x7e00c5>
     972:	40 93 c4 00 	sts	0x00C4, r20	; 0x8000c4 <__TEXT_REGION_LENGTH__+0x7e00c4>
     976:	e2 ec       	ldi	r30, 0xC2	; 194
     978:	f0 e0       	ldi	r31, 0x00	; 0
     97a:	80 81       	ld	r24, Z
     97c:	86 60       	ori	r24, 0x06	; 6
     97e:	80 83       	st	Z, r24
     980:	e1 ec       	ldi	r30, 0xC1	; 193
     982:	f0 e0       	ldi	r31, 0x00	; 0
     984:	80 81       	ld	r24, Z
     986:	88 69       	ori	r24, 0x98	; 152
     988:	80 83       	st	Z, r24
     98a:	78 94       	sei
     98c:	08 95       	ret

0000098e <_sendByte>:
     98e:	90 91 c0 00 	lds	r25, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
     992:	95 ff       	sbrs	r25, 5
     994:	fc cf       	rjmp	.-8      	; 0x98e <_sendByte>
     996:	80 93 c6 00 	sts	0x00C6, r24	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
     99a:	08 95       	ret

0000099c <_sendString>:
     99c:	00 97       	sbiw	r24, 0x00	; 0
     99e:	a1 f0       	breq	.+40     	; 0x9c8 <_sendString+0x2c>
     9a0:	fb 01       	movw	r30, r22
     9a2:	24 91       	lpm	r18, Z
     9a4:	22 23       	and	r18, r18
     9a6:	81 f0       	breq	.+32     	; 0x9c8 <_sendString+0x2c>
     9a8:	31 96       	adiw	r30, 0x01	; 1
     9aa:	68 0f       	add	r22, r24
     9ac:	79 1f       	adc	r23, r25
     9ae:	90 91 c0 00 	lds	r25, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
     9b2:	95 ff       	sbrs	r25, 5
     9b4:	fc cf       	rjmp	.-8      	; 0x9ae <_sendString+0x12>
     9b6:	20 93 c6 00 	sts	0x00C6, r18	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
     9ba:	6e 17       	cp	r22, r30
     9bc:	7f 07       	cpc	r23, r31
     9be:	21 f0       	breq	.+8      	; 0x9c8 <_sendString+0x2c>
     9c0:	24 91       	lpm	r18, Z
     9c2:	31 96       	adiw	r30, 0x01	; 1
     9c4:	21 11       	cpse	r18, r1
     9c6:	f3 cf       	rjmp	.-26     	; 0x9ae <_sendString+0x12>
     9c8:	44 23       	and	r20, r20
     9ca:	41 f0       	breq	.+16     	; 0x9dc <_sendString+0x40>
     9cc:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
     9d0:	85 ff       	sbrs	r24, 5
     9d2:	fc cf       	rjmp	.-8      	; 0x9cc <_sendString+0x30>
     9d4:	8a e0       	ldi	r24, 0x0A	; 10
     9d6:	80 93 c6 00 	sts	0x00C6, r24	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
     9da:	08 95       	ret
     9dc:	08 95       	ret

000009de <_sendBuffer>:
     9de:	00 97       	sbiw	r24, 0x00	; 0
     9e0:	99 f0       	breq	.+38     	; 0xa08 <_sendBuffer+0x2a>
     9e2:	fb 01       	movw	r30, r22
     9e4:	20 81       	ld	r18, Z
     9e6:	22 23       	and	r18, r18
     9e8:	79 f0       	breq	.+30     	; 0xa08 <_sendBuffer+0x2a>
     9ea:	31 96       	adiw	r30, 0x01	; 1
     9ec:	68 0f       	add	r22, r24
     9ee:	79 1f       	adc	r23, r25
     9f0:	90 91 c0 00 	lds	r25, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
     9f4:	95 ff       	sbrs	r25, 5
     9f6:	fc cf       	rjmp	.-8      	; 0x9f0 <_sendBuffer+0x12>
     9f8:	20 93 c6 00 	sts	0x00C6, r18	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
     9fc:	e6 17       	cp	r30, r22
     9fe:	f7 07       	cpc	r31, r23
     a00:	19 f0       	breq	.+6      	; 0xa08 <_sendBuffer+0x2a>
     a02:	21 91       	ld	r18, Z+
     a04:	21 11       	cpse	r18, r1
     a06:	f4 cf       	rjmp	.-24     	; 0x9f0 <_sendBuffer+0x12>
     a08:	44 23       	and	r20, r20
     a0a:	41 f0       	breq	.+16     	; 0xa1c <_sendBuffer+0x3e>
     a0c:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
     a10:	85 ff       	sbrs	r24, 5
     a12:	fc cf       	rjmp	.-8      	; 0xa0c <_sendBuffer+0x2e>
     a14:	8a e0       	ldi	r24, 0x0A	; 10
     a16:	80 93 c6 00 	sts	0x00C6, r24	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
     a1a:	08 95       	ret
     a1c:	08 95       	ret

00000a1e <_available>:
     a1e:	90 91 b6 01 	lds	r25, 0x01B6	; 0x8001b6 <ringBufferStart>
     a22:	80 91 b5 01 	lds	r24, 0x01B5	; 0x8001b5 <ringBufferEnd>
     a26:	98 17       	cp	r25, r24
     a28:	11 f0       	breq	.+4      	; 0xa2e <_available+0x10>
     a2a:	81 e0       	ldi	r24, 0x01	; 1
     a2c:	08 95       	ret
     a2e:	80 91 b4 01 	lds	r24, 0x01B4	; 0x8001b4 <bufferFull>
     a32:	08 95       	ret

00000a34 <_receiveByte>:
     a34:	20 91 b4 01 	lds	r18, 0x01B4	; 0x8001b4 <bufferFull>
     a38:	90 91 b6 01 	lds	r25, 0x01B6	; 0x8001b6 <ringBufferStart>
     a3c:	80 91 b5 01 	lds	r24, 0x01B5	; 0x8001b5 <ringBufferEnd>
     a40:	98 17       	cp	r25, r24
     a42:	91 f0       	breq	.+36     	; 0xa68 <_receiveByte+0x34>
     a44:	9f b7       	in	r25, 0x3f	; 63
     a46:	f8 94       	cli
     a48:	e0 91 b6 01 	lds	r30, 0x01B6	; 0x8001b6 <ringBufferStart>
     a4c:	81 e0       	ldi	r24, 0x01	; 1
     a4e:	8e 0f       	add	r24, r30
     a50:	80 93 b6 01 	sts	0x01B6, r24	; 0x8001b6 <ringBufferStart>
     a54:	0e 2e       	mov	r0, r30
     a56:	00 0c       	add	r0, r0
     a58:	ff 0b       	sbc	r31, r31
     a5a:	e9 54       	subi	r30, 0x49	; 73
     a5c:	fe 4f       	sbci	r31, 0xFE	; 254
     a5e:	80 81       	ld	r24, Z
     a60:	10 92 b4 01 	sts	0x01B4, r1	; 0x8001b4 <bufferFull>
     a64:	9f bf       	out	0x3f, r25	; 63
     a66:	08 95       	ret
     a68:	21 11       	cpse	r18, r1
     a6a:	ec cf       	rjmp	.-40     	; 0xa44 <_receiveByte+0x10>
     a6c:	ff cf       	rjmp	.-2      	; 0xa6c <_receiveByte+0x38>

00000a6e <_setupSPIAsMaster>:
     a6e:	0f 93       	push	r16
     a70:	1f 93       	push	r17
     a72:	cf 93       	push	r28
     a74:	df 93       	push	r29
     a76:	c8 2f       	mov	r28, r24
     a78:	d6 2f       	mov	r29, r22
     a7a:	14 2f       	mov	r17, r20
     a7c:	00 91 0c 01 	lds	r16, 0x010C	; 0x80010c <_OUTPUT>
     a80:	60 2f       	mov	r22, r16
     a82:	8b e0       	ldi	r24, 0x0B	; 11
     a84:	0e 94 eb 02 	call	0x5d6	; 0x5d6 <_pinMode>
     a88:	60 2f       	mov	r22, r16
     a8a:	8d e0       	ldi	r24, 0x0D	; 13
     a8c:	0e 94 eb 02 	call	0x5d6	; 0x5d6 <_pinMode>
     a90:	c3 70       	andi	r28, 0x03	; 3
     a92:	c0 65       	ori	r28, 0x50	; 80
     a94:	80 e2       	ldi	r24, 0x20	; 32
     a96:	18 9f       	mul	r17, r24
     a98:	a0 01       	movw	r20, r0
     a9a:	11 24       	eor	r1, r1
     a9c:	c4 2b       	or	r28, r20
     a9e:	dd 0f       	add	r29, r29
     aa0:	dd 0f       	add	r29, r29
     aa2:	dc 70       	andi	r29, 0x0C	; 12
     aa4:	cd 2b       	or	r28, r29
     aa6:	cc bd       	out	0x2c, r28	; 44
     aa8:	df 91       	pop	r29
     aaa:	cf 91       	pop	r28
     aac:	1f 91       	pop	r17
     aae:	0f 91       	pop	r16
     ab0:	08 95       	ret

00000ab2 <_setupSPIDoubleSpeed>:
     ab2:	81 11       	cpse	r24, r1
     ab4:	04 c0       	rjmp	.+8      	; 0xabe <_setupSPIDoubleSpeed+0xc>
     ab6:	8d b5       	in	r24, 0x2d	; 45
     ab8:	8e 7f       	andi	r24, 0xFE	; 254
     aba:	8d bd       	out	0x2d, r24	; 45
     abc:	08 95       	ret
     abe:	8d b5       	in	r24, 0x2d	; 45
     ac0:	81 60       	ori	r24, 0x01	; 1
     ac2:	8d bd       	out	0x2d, r24	; 45
     ac4:	08 95       	ret

00000ac6 <_sendSPIByteBlocking>:
     ac6:	8e bd       	out	0x2e, r24	; 46
     ac8:	0d b4       	in	r0, 0x2d	; 45
     aca:	07 fe       	sbrs	r0, 7
     acc:	fd cf       	rjmp	.-6      	; 0xac8 <_sendSPIByteBlocking+0x2>
     ace:	8e b5       	in	r24, 0x2e	; 46
     ad0:	08 95       	ret

00000ad2 <_receiveSPIBufferBlocking>:
     ad2:	00 97       	sbiw	r24, 0x00	; 0
     ad4:	21 f1       	breq	.+72     	; 0xb1e <_receiveSPIBufferBlocking+0x4c>
     ad6:	ec e3       	ldi	r30, 0x3C	; 60
     ad8:	f2 e0       	ldi	r31, 0x02	; 2
     ada:	20 e0       	ldi	r18, 0x00	; 0
     adc:	30 e0       	ldi	r19, 0x00	; 0
     ade:	1e bc       	out	0x2e, r1	; 46
     ae0:	0d b4       	in	r0, 0x2d	; 45
     ae2:	07 fe       	sbrs	r0, 7
     ae4:	fd cf       	rjmp	.-6      	; 0xae0 <_receiveSPIBufferBlocking+0xe>
     ae6:	4e b5       	in	r20, 0x2e	; 46
     ae8:	20 32       	cpi	r18, 0x20	; 32
     aea:	31 05       	cpc	r19, r1
     aec:	dc f0       	brlt	.+54     	; 0xb24 <_receiveSPIBufferBlocking+0x52>
     aee:	2f 5f       	subi	r18, 0xFF	; 255
     af0:	3f 4f       	sbci	r19, 0xFF	; 255
     af2:	31 96       	adiw	r30, 0x01	; 1
     af4:	82 17       	cp	r24, r18
     af6:	93 07       	cpc	r25, r19
     af8:	91 f7       	brne	.-28     	; 0xade <_receiveSPIBufferBlocking+0xc>
     afa:	01 97       	sbiw	r24, 0x01	; 1
     afc:	66 23       	and	r22, r22
     afe:	29 f0       	breq	.+10     	; 0xb0a <_receiveSPIBufferBlocking+0x38>
     b00:	8f 31       	cpi	r24, 0x1F	; 31
     b02:	91 05       	cpc	r25, r1
     b04:	28 f0       	brcs	.+10     	; 0xb10 <_receiveSPIBufferBlocking+0x3e>
     b06:	10 92 5b 02 	sts	0x025B, r1	; 0x80025b <_receiveBuffer+0x1f>
     b0a:	8c e3       	ldi	r24, 0x3C	; 60
     b0c:	92 e0       	ldi	r25, 0x02	; 2
     b0e:	08 95       	ret
     b10:	84 5c       	subi	r24, 0xC4	; 196
     b12:	9d 4f       	sbci	r25, 0xFD	; 253
     b14:	fc 01       	movw	r30, r24
     b16:	10 82       	st	Z, r1
     b18:	8c e3       	ldi	r24, 0x3C	; 60
     b1a:	92 e0       	ldi	r25, 0x02	; 2
     b1c:	08 95       	ret
     b1e:	61 11       	cpse	r22, r1
     b20:	f2 cf       	rjmp	.-28     	; 0xb06 <_receiveSPIBufferBlocking+0x34>
     b22:	f3 cf       	rjmp	.-26     	; 0xb0a <_receiveSPIBufferBlocking+0x38>
     b24:	40 83       	st	Z, r20
     b26:	e3 cf       	rjmp	.-58     	; 0xaee <_receiveSPIBufferBlocking+0x1c>

00000b28 <_sendReceiveSPIBufferBlocking>:
     b28:	0f 93       	push	r16
     b2a:	cf 93       	push	r28
     b2c:	df 93       	push	r29
     b2e:	ec 01       	movw	r28, r24
     b30:	89 2b       	or	r24, r25
     b32:	b9 f1       	breq	.+110    	; 0xba2 <_sendReceiveSPIBufferBlocking+0x7a>
     b34:	ac e3       	ldi	r26, 0x3C	; 60
     b36:	b2 e0       	ldi	r27, 0x02	; 2
     b38:	fb 01       	movw	r30, r22
     b3a:	30 e0       	ldi	r19, 0x00	; 0
     b3c:	60 e0       	ldi	r22, 0x00	; 0
     b3e:	70 e0       	ldi	r23, 0x00	; 0
     b40:	44 23       	and	r20, r20
     b42:	19 f1       	breq	.+70     	; 0xb8a <_sendReceiveSPIBufferBlocking+0x62>
     b44:	30 81       	ld	r19, Z
     b46:	31 11       	cpse	r19, r1
     b48:	20 c0       	rjmp	.+64     	; 0xb8a <_sendReceiveSPIBufferBlocking+0x62>
     b4a:	21 11       	cpse	r18, r1
     b4c:	10 c0       	rjmp	.+32     	; 0xb6e <_sendReceiveSPIBufferBlocking+0x46>
     b4e:	90 e0       	ldi	r25, 0x00	; 0
     b50:	9e bd       	out	0x2e, r25	; 46
     b52:	0d b4       	in	r0, 0x2d	; 45
     b54:	07 fe       	sbrs	r0, 7
     b56:	fd cf       	rjmp	.-6      	; 0xb52 <_sendReceiveSPIBufferBlocking+0x2a>
     b58:	8e b5       	in	r24, 0x2e	; 46
     b5a:	60 32       	cpi	r22, 0x20	; 32
     b5c:	71 05       	cpc	r23, r1
     b5e:	24 f1       	brlt	.+72     	; 0xba8 <_sendReceiveSPIBufferBlocking+0x80>
     b60:	6f 5f       	subi	r22, 0xFF	; 255
     b62:	7f 4f       	sbci	r23, 0xFF	; 255
     b64:	11 96       	adiw	r26, 0x01	; 1
     b66:	31 96       	adiw	r30, 0x01	; 1
     b68:	6c 17       	cp	r22, r28
     b6a:	7d 07       	cpc	r23, r29
     b6c:	49 f7       	brne	.-46     	; 0xb40 <_sendReceiveSPIBufferBlocking+0x18>
     b6e:	00 23       	and	r16, r16
     b70:	31 f0       	breq	.+12     	; 0xb7e <_sendReceiveSPIBufferBlocking+0x56>
     b72:	cb 01       	movw	r24, r22
     b74:	01 97       	sbiw	r24, 0x01	; 1
     b76:	4f 97       	sbiw	r24, 0x1f	; 31
     b78:	50 f0       	brcs	.+20     	; 0xb8e <_sendReceiveSPIBufferBlocking+0x66>
     b7a:	10 92 5b 02 	sts	0x025B, r1	; 0x80025b <_receiveBuffer+0x1f>
     b7e:	8c e3       	ldi	r24, 0x3C	; 60
     b80:	92 e0       	ldi	r25, 0x02	; 2
     b82:	df 91       	pop	r29
     b84:	cf 91       	pop	r28
     b86:	0f 91       	pop	r16
     b88:	08 95       	ret
     b8a:	93 2f       	mov	r25, r19
     b8c:	e1 cf       	rjmp	.-62     	; 0xb50 <_sendReceiveSPIBufferBlocking+0x28>
     b8e:	65 5c       	subi	r22, 0xC5	; 197
     b90:	7d 4f       	sbci	r23, 0xFD	; 253
     b92:	fb 01       	movw	r30, r22
     b94:	10 82       	st	Z, r1
     b96:	8c e3       	ldi	r24, 0x3C	; 60
     b98:	92 e0       	ldi	r25, 0x02	; 2
     b9a:	df 91       	pop	r29
     b9c:	cf 91       	pop	r28
     b9e:	0f 91       	pop	r16
     ba0:	08 95       	ret
     ba2:	01 11       	cpse	r16, r1
     ba4:	ea cf       	rjmp	.-44     	; 0xb7a <_sendReceiveSPIBufferBlocking+0x52>
     ba6:	eb cf       	rjmp	.-42     	; 0xb7e <_sendReceiveSPIBufferBlocking+0x56>
     ba8:	8c 93       	st	X, r24
     baa:	da cf       	rjmp	.-76     	; 0xb60 <_sendReceiveSPIBufferBlocking+0x38>

00000bac <_i2cinit>:
     bac:	63 70       	andi	r22, 0x03	; 3
     bae:	60 93 b9 00 	sts	0x00B9, r22	; 0x8000b9 <__TEXT_REGION_LENGTH__+0x7e00b9>
     bb2:	80 93 b8 00 	sts	0x00B8, r24	; 0x8000b8 <__TEXT_REGION_LENGTH__+0x7e00b8>
     bb6:	84 e0       	ldi	r24, 0x04	; 4
     bb8:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     bbc:	08 95       	ret

00000bbe <_i2cstart>:
     bbe:	84 ea       	ldi	r24, 0xA4	; 164
     bc0:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     bc4:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     bc8:	87 ff       	sbrs	r24, 7
     bca:	fc cf       	rjmp	.-8      	; 0xbc4 <_i2cstart+0x6>
     bcc:	08 95       	ret

00000bce <_i2cstop>:
     bce:	84 e9       	ldi	r24, 0x94	; 148
     bd0:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     bd4:	08 95       	ret

00000bd6 <_i2cwrite>:
     bd6:	80 93 bb 00 	sts	0x00BB, r24	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7e00bb>
     bda:	84 e8       	ldi	r24, 0x84	; 132
     bdc:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     be0:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     be4:	87 ff       	sbrs	r24, 7
     be6:	fc cf       	rjmp	.-8      	; 0xbe0 <_i2cwrite+0xa>
     be8:	08 95       	ret

00000bea <_i2cread>:
     bea:	81 11       	cpse	r24, r1
     bec:	06 c0       	rjmp	.+12     	; 0xbfa <_i2cread+0x10>
     bee:	84 ec       	ldi	r24, 0xC4	; 196
     bf0:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     bf4:	80 91 bb 00 	lds	r24, 0x00BB	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7e00bb>
     bf8:	08 95       	ret
     bfa:	84 e8       	ldi	r24, 0x84	; 132
     bfc:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     c00:	80 91 bb 00 	lds	r24, 0x00BB	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7e00bb>
     c04:	08 95       	ret

00000c06 <_i2cReadSingleByte>:
     c06:	88 0f       	add	r24, r24
     c08:	88 0f       	add	r24, r24
     c0a:	80 93 bb 00 	sts	0x00BB, r24	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7e00bb>
     c0e:	84 e8       	ldi	r24, 0x84	; 132
     c10:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     c14:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     c18:	87 ff       	sbrs	r24, 7
     c1a:	fc cf       	rjmp	.-8      	; 0xc14 <_i2cReadSingleByte+0xe>
     c1c:	84 ec       	ldi	r24, 0xC4	; 196
     c1e:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     c22:	80 91 bb 00 	lds	r24, 0x00BB	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7e00bb>
     c26:	08 95       	ret

00000c28 <_i2cReadBuffer>:
     c28:	88 0f       	add	r24, r24
     c2a:	88 0f       	add	r24, r24
     c2c:	80 93 bb 00 	sts	0x00BB, r24	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7e00bb>
     c30:	84 e8       	ldi	r24, 0x84	; 132
     c32:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     c36:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     c3a:	87 ff       	sbrs	r24, 7
     c3c:	fc cf       	rjmp	.-8      	; 0xc36 <_i2cReadBuffer+0xe>
     c3e:	70 e0       	ldi	r23, 0x00	; 0
     c40:	61 15       	cp	r22, r1
     c42:	71 05       	cpc	r23, r1
     c44:	91 f0       	breq	.+36     	; 0xc6a <_i2cReadBuffer+0x42>
     c46:	ec e3       	ldi	r30, 0x3C	; 60
     c48:	f2 e0       	ldi	r31, 0x02	; 2
     c4a:	80 e0       	ldi	r24, 0x00	; 0
     c4c:	90 e0       	ldi	r25, 0x00	; 0
     c4e:	34 e8       	ldi	r19, 0x84	; 132
     c50:	01 96       	adiw	r24, 0x01	; 1
     c52:	86 17       	cp	r24, r22
     c54:	97 07       	cpc	r25, r23
     c56:	1c f4       	brge	.+6      	; 0xc5e <_i2cReadBuffer+0x36>
     c58:	80 32       	cpi	r24, 0x20	; 32
     c5a:	91 05       	cpc	r25, r1
     c5c:	49 f4       	brne	.+18     	; 0xc70 <_i2cReadBuffer+0x48>
     c5e:	84 ec       	ldi	r24, 0xC4	; 196
     c60:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     c64:	80 91 bb 00 	lds	r24, 0x00BB	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7e00bb>
     c68:	80 83       	st	Z, r24
     c6a:	8c e3       	ldi	r24, 0x3C	; 60
     c6c:	92 e0       	ldi	r25, 0x02	; 2
     c6e:	08 95       	ret
     c70:	30 93 bc 00 	sts	0x00BC, r19	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     c74:	20 91 bb 00 	lds	r18, 0x00BB	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7e00bb>
     c78:	21 93       	st	Z+, r18
     c7a:	ea cf       	rjmp	.-44     	; 0xc50 <_i2cReadBuffer+0x28>

00000c7c <_i2cWriteByte>:
     c7c:	90 e0       	ldi	r25, 0x00	; 0
     c7e:	88 0f       	add	r24, r24
     c80:	99 1f       	adc	r25, r25
     c82:	80 93 bb 00 	sts	0x00BB, r24	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7e00bb>
     c86:	84 e8       	ldi	r24, 0x84	; 132
     c88:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     c8c:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     c90:	87 ff       	sbrs	r24, 7
     c92:	fc cf       	rjmp	.-8      	; 0xc8c <_i2cWriteByte+0x10>
     c94:	60 93 bb 00 	sts	0x00BB, r22	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7e00bb>
     c98:	84 e8       	ldi	r24, 0x84	; 132
     c9a:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     c9e:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     ca2:	87 ff       	sbrs	r24, 7
     ca4:	fc cf       	rjmp	.-8      	; 0xc9e <_i2cWriteByte+0x22>
     ca6:	08 95       	ret

00000ca8 <_i2cWriteBuffer>:
     ca8:	90 e0       	ldi	r25, 0x00	; 0
     caa:	88 0f       	add	r24, r24
     cac:	99 1f       	adc	r25, r25
     cae:	80 93 bb 00 	sts	0x00BB, r24	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7e00bb>
     cb2:	84 e8       	ldi	r24, 0x84	; 132
     cb4:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     cb8:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     cbc:	87 ff       	sbrs	r24, 7
     cbe:	fc cf       	rjmp	.-8      	; 0xcb8 <_i2cWriteBuffer+0x10>
     cc0:	61 15       	cp	r22, r1
     cc2:	71 05       	cpc	r23, r1
     cc4:	b1 f0       	breq	.+44     	; 0xcf2 <_i2cWriteBuffer+0x4a>
     cc6:	fa 01       	movw	r30, r20
     cc8:	80 81       	ld	r24, Z
     cca:	88 23       	and	r24, r24
     ccc:	91 f0       	breq	.+36     	; 0xcf2 <_i2cWriteBuffer+0x4a>
     cce:	31 96       	adiw	r30, 0x01	; 1
     cd0:	64 0f       	add	r22, r20
     cd2:	75 1f       	adc	r23, r21
     cd4:	94 e8       	ldi	r25, 0x84	; 132
     cd6:	80 93 bb 00 	sts	0x00BB, r24	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7e00bb>
     cda:	90 93 bc 00 	sts	0x00BC, r25	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     cde:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     ce2:	87 ff       	sbrs	r24, 7
     ce4:	fc cf       	rjmp	.-8      	; 0xcde <_i2cWriteBuffer+0x36>
     ce6:	6e 17       	cp	r22, r30
     ce8:	7f 07       	cpc	r23, r31
     cea:	19 f0       	breq	.+6      	; 0xcf2 <_i2cWriteBuffer+0x4a>
     cec:	81 91       	ld	r24, Z+
     cee:	81 11       	cpse	r24, r1
     cf0:	f2 cf       	rjmp	.-28     	; 0xcd6 <_i2cWriteBuffer+0x2e>
     cf2:	08 95       	ret

00000cf4 <_i2cWritePGMString>:
     cf4:	1f 93       	push	r17
     cf6:	cf 93       	push	r28
     cf8:	df 93       	push	r29
     cfa:	eb 01       	movw	r28, r22
     cfc:	14 2f       	mov	r17, r20
     cfe:	90 e0       	ldi	r25, 0x00	; 0
     d00:	88 0f       	add	r24, r24
     d02:	99 1f       	adc	r25, r25
     d04:	80 93 bb 00 	sts	0x00BB, r24	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7e00bb>
     d08:	84 e8       	ldi	r24, 0x84	; 132
     d0a:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     d0e:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     d12:	87 ff       	sbrs	r24, 7
     d14:	fc cf       	rjmp	.-8      	; 0xd0e <_i2cWritePGMString+0x1a>
     d16:	68 ee       	ldi	r22, 0xE8	; 232
     d18:	73 e0       	ldi	r23, 0x03	; 3
     d1a:	ce 01       	movw	r24, r28
     d1c:	0e 94 31 0e 	call	0x1c62	; 0x1c62 <strnlen>
     d20:	bc 01       	movw	r22, r24
     d22:	89 2b       	or	r24, r25
     d24:	b9 f0       	breq	.+46     	; 0xd54 <_i2cWritePGMString+0x60>
     d26:	fe 01       	movw	r30, r28
     d28:	94 91       	lpm	r25, Z
     d2a:	99 23       	and	r25, r25
     d2c:	99 f0       	breq	.+38     	; 0xd54 <_i2cWritePGMString+0x60>
     d2e:	31 96       	adiw	r30, 0x01	; 1
     d30:	6c 0f       	add	r22, r28
     d32:	7d 1f       	adc	r23, r29
     d34:	84 e8       	ldi	r24, 0x84	; 132
     d36:	90 93 bb 00 	sts	0x00BB, r25	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7e00bb>
     d3a:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     d3e:	90 91 bc 00 	lds	r25, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     d42:	97 ff       	sbrs	r25, 7
     d44:	fc cf       	rjmp	.-8      	; 0xd3e <_i2cWritePGMString+0x4a>
     d46:	e6 17       	cp	r30, r22
     d48:	f7 07       	cpc	r31, r23
     d4a:	21 f0       	breq	.+8      	; 0xd54 <_i2cWritePGMString+0x60>
     d4c:	94 91       	lpm	r25, Z
     d4e:	31 96       	adiw	r30, 0x01	; 1
     d50:	91 11       	cpse	r25, r1
     d52:	f1 cf       	rjmp	.-30     	; 0xd36 <_i2cWritePGMString+0x42>
     d54:	11 23       	and	r17, r17
     d56:	51 f0       	breq	.+20     	; 0xd6c <_i2cWritePGMString+0x78>
     d58:	8a e0       	ldi	r24, 0x0A	; 10
     d5a:	80 93 bb 00 	sts	0x00BB, r24	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7e00bb>
     d5e:	84 e8       	ldi	r24, 0x84	; 132
     d60:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     d64:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     d68:	87 ff       	sbrs	r24, 7
     d6a:	fc cf       	rjmp	.-8      	; 0xd64 <_i2cWritePGMString+0x70>
     d6c:	df 91       	pop	r29
     d6e:	cf 91       	pop	r28
     d70:	1f 91       	pop	r17
     d72:	08 95       	ret

00000d74 <_analogWrite>:
     d74:	cf 93       	push	r28
     d76:	df 93       	push	r29
     d78:	c8 2f       	mov	r28, r24
     d7a:	d6 2f       	mov	r29, r22
     d7c:	60 91 0c 01 	lds	r22, 0x010C	; 0x80010c <_OUTPUT>
     d80:	0e 94 eb 02 	call	0x5d6	; 0x5d6 <_pinMode>
     d84:	c6 30       	cpi	r28, 0x06	; 6
     d86:	09 f4       	brne	.+2      	; 0xd8a <_analogWrite+0x16>
     d88:	5b c0       	rjmp	.+182    	; 0xe40 <_analogWrite+0xcc>
     d8a:	50 f0       	brcs	.+20     	; 0xda0 <_analogWrite+0x2c>
     d8c:	ca 30       	cpi	r28, 0x0A	; 10
     d8e:	b9 f0       	breq	.+46     	; 0xdbe <_analogWrite+0x4a>
     d90:	cb 30       	cpi	r28, 0x0B	; 11
     d92:	09 f4       	brne	.+2      	; 0xd96 <_analogWrite+0x22>
     d94:	46 c0       	rjmp	.+140    	; 0xe22 <_analogWrite+0xae>
     d96:	c9 30       	cpi	r28, 0x09	; 9
     d98:	21 f1       	breq	.+72     	; 0xde2 <_analogWrite+0x6e>
     d9a:	df 91       	pop	r29
     d9c:	cf 91       	pop	r28
     d9e:	08 95       	ret
     da0:	c3 30       	cpi	r28, 0x03	; 3
     da2:	89 f1       	breq	.+98     	; 0xe06 <_analogWrite+0x92>
     da4:	c5 30       	cpi	r28, 0x05	; 5
     da6:	c9 f7       	brne	.-14     	; 0xd9a <_analogWrite+0x26>
     da8:	84 b5       	in	r24, 0x24	; 36
     daa:	dd 23       	and	r29, r29
     dac:	09 f4       	brne	.+2      	; 0xdb0 <_analogWrite+0x3c>
     dae:	52 c0       	rjmp	.+164    	; 0xe54 <_analogWrite+0xe0>
     db0:	df 3f       	cpi	r29, 0xFF	; 255
     db2:	09 f4       	brne	.+2      	; 0xdb6 <_analogWrite+0x42>
     db4:	9e c0       	rjmp	.+316    	; 0xef2 <_analogWrite+0x17e>
     db6:	80 62       	ori	r24, 0x20	; 32
     db8:	84 bd       	out	0x24, r24	; 36
     dba:	d8 bd       	out	0x28, r29	; 40
     dbc:	ee cf       	rjmp	.-36     	; 0xd9a <_analogWrite+0x26>
     dbe:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     dc2:	dd 23       	and	r29, r29
     dc4:	09 f4       	brne	.+2      	; 0xdc8 <_analogWrite+0x54>
     dc6:	7b c0       	rjmp	.+246    	; 0xebe <_analogWrite+0x14a>
     dc8:	df 3f       	cpi	r29, 0xFF	; 255
     dca:	09 f4       	brne	.+2      	; 0xdce <_analogWrite+0x5a>
     dcc:	85 c0       	rjmp	.+266    	; 0xed8 <_analogWrite+0x164>
     dce:	80 62       	ori	r24, 0x20	; 32
     dd0:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     dd4:	6d 2f       	mov	r22, r29
     dd6:	70 e0       	ldi	r23, 0x00	; 0
     dd8:	70 93 8b 00 	sts	0x008B, r23	; 0x80008b <__TEXT_REGION_LENGTH__+0x7e008b>
     ddc:	60 93 8a 00 	sts	0x008A, r22	; 0x80008a <__TEXT_REGION_LENGTH__+0x7e008a>
     de0:	dc cf       	rjmp	.-72     	; 0xd9a <_analogWrite+0x26>
     de2:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     de6:	dd 23       	and	r29, r29
     de8:	09 f4       	brne	.+2      	; 0xdec <_analogWrite+0x78>
     dea:	5c c0       	rjmp	.+184    	; 0xea4 <_analogWrite+0x130>
     dec:	df 3f       	cpi	r29, 0xFF	; 255
     dee:	09 f4       	brne	.+2      	; 0xdf2 <_analogWrite+0x7e>
     df0:	94 c0       	rjmp	.+296    	; 0xf1a <_analogWrite+0x1a6>
     df2:	80 68       	ori	r24, 0x80	; 128
     df4:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     df8:	6d 2f       	mov	r22, r29
     dfa:	70 e0       	ldi	r23, 0x00	; 0
     dfc:	70 93 89 00 	sts	0x0089, r23	; 0x800089 <__TEXT_REGION_LENGTH__+0x7e0089>
     e00:	60 93 88 00 	sts	0x0088, r22	; 0x800088 <__TEXT_REGION_LENGTH__+0x7e0088>
     e04:	ca cf       	rjmp	.-108    	; 0xd9a <_analogWrite+0x26>
     e06:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     e0a:	dd 23       	and	r29, r29
     e0c:	09 f4       	brne	.+2      	; 0xe10 <_analogWrite+0x9c>
     e0e:	3f c0       	rjmp	.+126    	; 0xe8e <_analogWrite+0x11a>
     e10:	df 3f       	cpi	r29, 0xFF	; 255
     e12:	09 f4       	brne	.+2      	; 0xe16 <_analogWrite+0xa2>
     e14:	77 c0       	rjmp	.+238    	; 0xf04 <_analogWrite+0x190>
     e16:	80 62       	ori	r24, 0x20	; 32
     e18:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     e1c:	d0 93 b4 00 	sts	0x00B4, r29	; 0x8000b4 <__TEXT_REGION_LENGTH__+0x7e00b4>
     e20:	bc cf       	rjmp	.-136    	; 0xd9a <_analogWrite+0x26>
     e22:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     e26:	dd 23       	and	r29, r29
     e28:	39 f1       	breq	.+78     	; 0xe78 <_analogWrite+0x104>
     e2a:	df 3f       	cpi	r29, 0xFF	; 255
     e2c:	09 f4       	brne	.+2      	; 0xe30 <_analogWrite+0xbc>
     e2e:	8b c0       	rjmp	.+278    	; 0xf46 <_analogWrite+0x1d2>
     e30:	80 68       	ori	r24, 0x80	; 128
     e32:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     e36:	d0 93 b3 00 	sts	0x00B3, r29	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
     e3a:	df 91       	pop	r29
     e3c:	cf 91       	pop	r28
     e3e:	08 95       	ret
     e40:	84 b5       	in	r24, 0x24	; 36
     e42:	dd 23       	and	r29, r29
     e44:	81 f0       	breq	.+32     	; 0xe66 <_analogWrite+0xf2>
     e46:	df 3f       	cpi	r29, 0xFF	; 255
     e48:	09 f4       	brne	.+2      	; 0xe4c <_analogWrite+0xd8>
     e4a:	74 c0       	rjmp	.+232    	; 0xf34 <_analogWrite+0x1c0>
     e4c:	80 68       	ori	r24, 0x80	; 128
     e4e:	84 bd       	out	0x24, r24	; 36
     e50:	d7 bd       	out	0x27, r29	; 39
     e52:	a3 cf       	rjmp	.-186    	; 0xd9a <_analogWrite+0x26>
     e54:	8f 7d       	andi	r24, 0xDF	; 223
     e56:	84 bd       	out	0x24, r24	; 36
     e58:	60 91 0d 01 	lds	r22, 0x010D	; 0x80010d <_LOW>
     e5c:	85 e0       	ldi	r24, 0x05	; 5
     e5e:	0e 94 aa 02 	call	0x554	; 0x554 <_digitalWrite>
     e62:	18 bc       	out	0x28, r1	; 40
     e64:	9a cf       	rjmp	.-204    	; 0xd9a <_analogWrite+0x26>
     e66:	8f 77       	andi	r24, 0x7F	; 127
     e68:	84 bd       	out	0x24, r24	; 36
     e6a:	60 91 0d 01 	lds	r22, 0x010D	; 0x80010d <_LOW>
     e6e:	86 e0       	ldi	r24, 0x06	; 6
     e70:	0e 94 aa 02 	call	0x554	; 0x554 <_digitalWrite>
     e74:	17 bc       	out	0x27, r1	; 39
     e76:	91 cf       	rjmp	.-222    	; 0xd9a <_analogWrite+0x26>
     e78:	8f 77       	andi	r24, 0x7F	; 127
     e7a:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     e7e:	60 91 0d 01 	lds	r22, 0x010D	; 0x80010d <_LOW>
     e82:	8b e0       	ldi	r24, 0x0B	; 11
     e84:	0e 94 aa 02 	call	0x554	; 0x554 <_digitalWrite>
     e88:	10 92 b3 00 	sts	0x00B3, r1	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
     e8c:	86 cf       	rjmp	.-244    	; 0xd9a <_analogWrite+0x26>
     e8e:	8f 7d       	andi	r24, 0xDF	; 223
     e90:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     e94:	60 91 0d 01 	lds	r22, 0x010D	; 0x80010d <_LOW>
     e98:	83 e0       	ldi	r24, 0x03	; 3
     e9a:	0e 94 aa 02 	call	0x554	; 0x554 <_digitalWrite>
     e9e:	10 92 b4 00 	sts	0x00B4, r1	; 0x8000b4 <__TEXT_REGION_LENGTH__+0x7e00b4>
     ea2:	7b cf       	rjmp	.-266    	; 0xd9a <_analogWrite+0x26>
     ea4:	8f 77       	andi	r24, 0x7F	; 127
     ea6:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     eaa:	60 91 0d 01 	lds	r22, 0x010D	; 0x80010d <_LOW>
     eae:	89 e0       	ldi	r24, 0x09	; 9
     eb0:	0e 94 aa 02 	call	0x554	; 0x554 <_digitalWrite>
     eb4:	10 92 89 00 	sts	0x0089, r1	; 0x800089 <__TEXT_REGION_LENGTH__+0x7e0089>
     eb8:	10 92 88 00 	sts	0x0088, r1	; 0x800088 <__TEXT_REGION_LENGTH__+0x7e0088>
     ebc:	6e cf       	rjmp	.-292    	; 0xd9a <_analogWrite+0x26>
     ebe:	8f 7d       	andi	r24, 0xDF	; 223
     ec0:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     ec4:	60 91 0d 01 	lds	r22, 0x010D	; 0x80010d <_LOW>
     ec8:	8a e0       	ldi	r24, 0x0A	; 10
     eca:	0e 94 aa 02 	call	0x554	; 0x554 <_digitalWrite>
     ece:	10 92 8b 00 	sts	0x008B, r1	; 0x80008b <__TEXT_REGION_LENGTH__+0x7e008b>
     ed2:	10 92 8a 00 	sts	0x008A, r1	; 0x80008a <__TEXT_REGION_LENGTH__+0x7e008a>
     ed6:	61 cf       	rjmp	.-318    	; 0xd9a <_analogWrite+0x26>
     ed8:	8f 7d       	andi	r24, 0xDF	; 223
     eda:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     ede:	60 91 0e 01 	lds	r22, 0x010E	; 0x80010e <_HIGH>
     ee2:	8a e0       	ldi	r24, 0x0A	; 10
     ee4:	0e 94 aa 02 	call	0x554	; 0x554 <_digitalWrite>
     ee8:	10 92 8b 00 	sts	0x008B, r1	; 0x80008b <__TEXT_REGION_LENGTH__+0x7e008b>
     eec:	10 92 8a 00 	sts	0x008A, r1	; 0x80008a <__TEXT_REGION_LENGTH__+0x7e008a>
     ef0:	54 cf       	rjmp	.-344    	; 0xd9a <_analogWrite+0x26>
     ef2:	8f 7d       	andi	r24, 0xDF	; 223
     ef4:	84 bd       	out	0x24, r24	; 36
     ef6:	60 91 0e 01 	lds	r22, 0x010E	; 0x80010e <_HIGH>
     efa:	85 e0       	ldi	r24, 0x05	; 5
     efc:	0e 94 aa 02 	call	0x554	; 0x554 <_digitalWrite>
     f00:	18 bc       	out	0x28, r1	; 40
     f02:	4b cf       	rjmp	.-362    	; 0xd9a <_analogWrite+0x26>
     f04:	8f 7d       	andi	r24, 0xDF	; 223
     f06:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     f0a:	60 91 0e 01 	lds	r22, 0x010E	; 0x80010e <_HIGH>
     f0e:	83 e0       	ldi	r24, 0x03	; 3
     f10:	0e 94 aa 02 	call	0x554	; 0x554 <_digitalWrite>
     f14:	10 92 b4 00 	sts	0x00B4, r1	; 0x8000b4 <__TEXT_REGION_LENGTH__+0x7e00b4>
     f18:	40 cf       	rjmp	.-384    	; 0xd9a <_analogWrite+0x26>
     f1a:	8f 77       	andi	r24, 0x7F	; 127
     f1c:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     f20:	60 91 0e 01 	lds	r22, 0x010E	; 0x80010e <_HIGH>
     f24:	89 e0       	ldi	r24, 0x09	; 9
     f26:	0e 94 aa 02 	call	0x554	; 0x554 <_digitalWrite>
     f2a:	10 92 89 00 	sts	0x0089, r1	; 0x800089 <__TEXT_REGION_LENGTH__+0x7e0089>
     f2e:	10 92 88 00 	sts	0x0088, r1	; 0x800088 <__TEXT_REGION_LENGTH__+0x7e0088>
     f32:	33 cf       	rjmp	.-410    	; 0xd9a <_analogWrite+0x26>
     f34:	8f 77       	andi	r24, 0x7F	; 127
     f36:	84 bd       	out	0x24, r24	; 36
     f38:	60 91 0e 01 	lds	r22, 0x010E	; 0x80010e <_HIGH>
     f3c:	86 e0       	ldi	r24, 0x06	; 6
     f3e:	0e 94 aa 02 	call	0x554	; 0x554 <_digitalWrite>
     f42:	17 bc       	out	0x27, r1	; 39
     f44:	2a cf       	rjmp	.-428    	; 0xd9a <_analogWrite+0x26>
     f46:	8f 77       	andi	r24, 0x7F	; 127
     f48:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     f4c:	60 91 0e 01 	lds	r22, 0x010E	; 0x80010e <_HIGH>
     f50:	8b e0       	ldi	r24, 0x0B	; 11
     f52:	0e 94 aa 02 	call	0x554	; 0x554 <_digitalWrite>
     f56:	10 92 b3 00 	sts	0x00B3, r1	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
     f5a:	1f cf       	rjmp	.-450    	; 0xd9a <_analogWrite+0x26>

00000f5c <_startupADC>:
     f5c:	87 e8       	ldi	r24, 0x87	; 135
     f5e:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     f62:	8a e0       	ldi	r24, 0x0A	; 10
     f64:	90 e0       	ldi	r25, 0x00	; 0
     f66:	0e 94 ae 03 	call	0x75c	; 0x75c <_delayMs>
     f6a:	61 e0       	ldi	r22, 0x01	; 1
     f6c:	8d e0       	ldi	r24, 0x0D	; 13
     f6e:	0e 94 eb 02 	call	0x5d6	; 0x5d6 <_pinMode>
     f72:	60 e0       	ldi	r22, 0x00	; 0
     f74:	8d e0       	ldi	r24, 0x0D	; 13
     f76:	0c 94 aa 02 	jmp	0x554	; 0x554 <_digitalWrite>

00000f7a <_slowAnalogRead>:
     f7a:	cf 93       	push	r28
     f7c:	c8 2f       	mov	r28, r24
     f7e:	88 30       	cpi	r24, 0x08	; 8
     f80:	38 f5       	brcc	.+78     	; 0xfd0 <_slowAnalogRead+0x56>
     f82:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     f86:	87 fd       	sbrc	r24, 7
     f88:	0f c0       	rjmp	.+30     	; 0xfa8 <_slowAnalogRead+0x2e>
     f8a:	87 e8       	ldi	r24, 0x87	; 135
     f8c:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     f90:	8a e0       	ldi	r24, 0x0A	; 10
     f92:	90 e0       	ldi	r25, 0x00	; 0
     f94:	0e 94 ae 03 	call	0x75c	; 0x75c <_delayMs>
     f98:	61 e0       	ldi	r22, 0x01	; 1
     f9a:	8d e0       	ldi	r24, 0x0D	; 13
     f9c:	0e 94 eb 02 	call	0x5d6	; 0x5d6 <_pinMode>
     fa0:	60 e0       	ldi	r22, 0x00	; 0
     fa2:	8d e0       	ldi	r24, 0x0D	; 13
     fa4:	0e 94 aa 02 	call	0x554	; 0x554 <_digitalWrite>
     fa8:	c0 64       	ori	r28, 0x40	; 64
     faa:	c0 93 7c 00 	sts	0x007C, r28	; 0x80007c <__TEXT_REGION_LENGTH__+0x7e007c>
     fae:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     fb2:	80 64       	ori	r24, 0x40	; 64
     fb4:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     fb8:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     fbc:	86 fd       	sbrc	r24, 6
     fbe:	fc cf       	rjmp	.-8      	; 0xfb8 <_slowAnalogRead+0x3e>
     fc0:	80 91 78 00 	lds	r24, 0x0078	; 0x800078 <__TEXT_REGION_LENGTH__+0x7e0078>
     fc4:	20 91 79 00 	lds	r18, 0x0079	; 0x800079 <__TEXT_REGION_LENGTH__+0x7e0079>
     fc8:	90 e0       	ldi	r25, 0x00	; 0
     fca:	92 2b       	or	r25, r18
     fcc:	cf 91       	pop	r28
     fce:	08 95       	ret
     fd0:	80 e0       	ldi	r24, 0x00	; 0
     fd2:	90 e0       	ldi	r25, 0x00	; 0
     fd4:	cf 91       	pop	r28
     fd6:	08 95       	ret

00000fd8 <__vector_21>:
     fd8:	1f 92       	push	r1
     fda:	0f 92       	push	r0
     fdc:	0f b6       	in	r0, 0x3f	; 63
     fde:	0f 92       	push	r0
     fe0:	11 24       	eor	r1, r1
     fe2:	2f 93       	push	r18
     fe4:	3f 93       	push	r19
     fe6:	4f 93       	push	r20
     fe8:	5f 93       	push	r21
     fea:	6f 93       	push	r22
     fec:	7f 93       	push	r23
     fee:	8f 93       	push	r24
     ff0:	9f 93       	push	r25
     ff2:	af 93       	push	r26
     ff4:	bf 93       	push	r27
     ff6:	ef 93       	push	r30
     ff8:	ff 93       	push	r31
     ffa:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     ffe:	87 7f       	andi	r24, 0xF7	; 247
    1000:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
    1004:	e0 91 3a 02 	lds	r30, 0x023A	; 0x80023a <currentCallback>
    1008:	f0 91 3b 02 	lds	r31, 0x023B	; 0x80023b <currentCallback+0x1>
    100c:	30 97       	sbiw	r30, 0x00	; 0
    100e:	59 f0       	breq	.+22     	; 0x1026 <__vector_21+0x4e>
    1010:	80 91 78 00 	lds	r24, 0x0078	; 0x800078 <__TEXT_REGION_LENGTH__+0x7e0078>
    1014:	20 91 79 00 	lds	r18, 0x0079	; 0x800079 <__TEXT_REGION_LENGTH__+0x7e0079>
    1018:	90 e0       	ldi	r25, 0x00	; 0
    101a:	92 2b       	or	r25, r18
    101c:	09 95       	icall
    101e:	10 92 3b 02 	sts	0x023B, r1	; 0x80023b <currentCallback+0x1>
    1022:	10 92 3a 02 	sts	0x023A, r1	; 0x80023a <currentCallback>
    1026:	ff 91       	pop	r31
    1028:	ef 91       	pop	r30
    102a:	bf 91       	pop	r27
    102c:	af 91       	pop	r26
    102e:	9f 91       	pop	r25
    1030:	8f 91       	pop	r24
    1032:	7f 91       	pop	r23
    1034:	6f 91       	pop	r22
    1036:	5f 91       	pop	r21
    1038:	4f 91       	pop	r20
    103a:	3f 91       	pop	r19
    103c:	2f 91       	pop	r18
    103e:	0f 90       	pop	r0
    1040:	0f be       	out	0x3f, r0	; 63
    1042:	0f 90       	pop	r0
    1044:	1f 90       	pop	r1
    1046:	18 95       	reti

00001048 <_analogReadAsync>:
    1048:	0f 93       	push	r16
    104a:	1f 93       	push	r17
    104c:	cf 93       	push	r28
    104e:	c8 2f       	mov	r28, r24
    1050:	8b 01       	movw	r16, r22
    1052:	88 30       	cpi	r24, 0x08	; 8
    1054:	e8 f4       	brcc	.+58     	; 0x1090 <_analogReadAsync+0x48>
    1056:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
    105a:	87 fd       	sbrc	r24, 7
    105c:	0f c0       	rjmp	.+30     	; 0x107c <_analogReadAsync+0x34>
    105e:	87 e8       	ldi	r24, 0x87	; 135
    1060:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
    1064:	8a e0       	ldi	r24, 0x0A	; 10
    1066:	90 e0       	ldi	r25, 0x00	; 0
    1068:	0e 94 ae 03 	call	0x75c	; 0x75c <_delayMs>
    106c:	61 e0       	ldi	r22, 0x01	; 1
    106e:	8d e0       	ldi	r24, 0x0D	; 13
    1070:	0e 94 eb 02 	call	0x5d6	; 0x5d6 <_pinMode>
    1074:	60 e0       	ldi	r22, 0x00	; 0
    1076:	8d e0       	ldi	r24, 0x0D	; 13
    1078:	0e 94 aa 02 	call	0x554	; 0x554 <_digitalWrite>
    107c:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
    1080:	86 fd       	sbrc	r24, 6
    1082:	06 c0       	rjmp	.+12     	; 0x1090 <_analogReadAsync+0x48>
    1084:	80 91 3a 02 	lds	r24, 0x023A	; 0x80023a <currentCallback>
    1088:	90 91 3b 02 	lds	r25, 0x023B	; 0x80023b <currentCallback+0x1>
    108c:	89 2b       	or	r24, r25
    108e:	29 f0       	breq	.+10     	; 0x109a <_analogReadAsync+0x52>
    1090:	80 e0       	ldi	r24, 0x00	; 0
    1092:	cf 91       	pop	r28
    1094:	1f 91       	pop	r17
    1096:	0f 91       	pop	r16
    1098:	08 95       	ret
    109a:	10 93 3b 02 	sts	0x023B, r17	; 0x80023b <currentCallback+0x1>
    109e:	00 93 3a 02 	sts	0x023A, r16	; 0x80023a <currentCallback>
    10a2:	c0 64       	ori	r28, 0x40	; 64
    10a4:	c0 93 7c 00 	sts	0x007C, r28	; 0x80007c <__TEXT_REGION_LENGTH__+0x7e007c>
    10a8:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
    10ac:	88 64       	ori	r24, 0x48	; 72
    10ae:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
    10b2:	78 94       	sei
    10b4:	81 e0       	ldi	r24, 0x01	; 1
    10b6:	ed cf       	rjmp	.-38     	; 0x1092 <_analogReadAsync+0x4a>

000010b8 <vfprintf>:
    10b8:	a0 e1       	ldi	r26, 0x10	; 16
    10ba:	b0 e0       	ldi	r27, 0x00	; 0
    10bc:	e2 e6       	ldi	r30, 0x62	; 98
    10be:	f8 e0       	ldi	r31, 0x08	; 8
    10c0:	0c 94 16 0c 	jmp	0x182c	; 0x182c <__prologue_saves__>
    10c4:	7c 01       	movw	r14, r24
    10c6:	1b 01       	movw	r2, r22
    10c8:	6a 01       	movw	r12, r20
    10ca:	fc 01       	movw	r30, r24
    10cc:	17 82       	std	Z+7, r1	; 0x07
    10ce:	16 82       	std	Z+6, r1	; 0x06
    10d0:	83 81       	ldd	r24, Z+3	; 0x03
    10d2:	81 ff       	sbrs	r24, 1
    10d4:	6d c3       	rjmp	.+1754   	; 0x17b0 <vfprintf+0x6f8>
    10d6:	9e 01       	movw	r18, r28
    10d8:	2f 5f       	subi	r18, 0xFF	; 255
    10da:	3f 4f       	sbci	r19, 0xFF	; 255
    10dc:	59 01       	movw	r10, r18
    10de:	f7 01       	movw	r30, r14
    10e0:	93 81       	ldd	r25, Z+3	; 0x03
    10e2:	f1 01       	movw	r30, r2
    10e4:	93 fd       	sbrc	r25, 3
    10e6:	85 91       	lpm	r24, Z+
    10e8:	93 ff       	sbrs	r25, 3
    10ea:	81 91       	ld	r24, Z+
    10ec:	1f 01       	movw	r2, r30
    10ee:	88 23       	and	r24, r24
    10f0:	09 f4       	brne	.+2      	; 0x10f4 <vfprintf+0x3c>
    10f2:	cc c2       	rjmp	.+1432   	; 0x168c <vfprintf+0x5d4>
    10f4:	85 32       	cpi	r24, 0x25	; 37
    10f6:	39 f4       	brne	.+14     	; 0x1106 <vfprintf+0x4e>
    10f8:	93 fd       	sbrc	r25, 3
    10fa:	85 91       	lpm	r24, Z+
    10fc:	93 ff       	sbrs	r25, 3
    10fe:	81 91       	ld	r24, Z+
    1100:	1f 01       	movw	r2, r30
    1102:	85 32       	cpi	r24, 0x25	; 37
    1104:	39 f4       	brne	.+14     	; 0x1114 <vfprintf+0x5c>
    1106:	b7 01       	movw	r22, r14
    1108:	90 e0       	ldi	r25, 0x00	; 0
    110a:	0e 94 3c 0e 	call	0x1c78	; 0x1c78 <fputc>
    110e:	36 01       	movw	r6, r12
    1110:	63 01       	movw	r12, r6
    1112:	e5 cf       	rjmp	.-54     	; 0x10de <vfprintf+0x26>
    1114:	51 2c       	mov	r5, r1
    1116:	91 2c       	mov	r9, r1
    1118:	00 e0       	ldi	r16, 0x00	; 0
    111a:	00 32       	cpi	r16, 0x20	; 32
    111c:	38 f4       	brcc	.+14     	; 0x112c <vfprintf+0x74>
    111e:	8b 32       	cpi	r24, 0x2B	; 43
    1120:	09 f1       	breq	.+66     	; 0x1164 <vfprintf+0xac>
    1122:	90 f4       	brcc	.+36     	; 0x1148 <vfprintf+0x90>
    1124:	80 32       	cpi	r24, 0x20	; 32
    1126:	f9 f0       	breq	.+62     	; 0x1166 <vfprintf+0xae>
    1128:	83 32       	cpi	r24, 0x23	; 35
    112a:	09 f1       	breq	.+66     	; 0x116e <vfprintf+0xb6>
    112c:	07 fd       	sbrc	r16, 7
    112e:	34 c0       	rjmp	.+104    	; 0x1198 <vfprintf+0xe0>
    1130:	20 ed       	ldi	r18, 0xD0	; 208
    1132:	28 0f       	add	r18, r24
    1134:	2a 30       	cpi	r18, 0x0A	; 10
    1136:	20 f5       	brcc	.+72     	; 0x1180 <vfprintf+0xc8>
    1138:	06 ff       	sbrs	r16, 6
    113a:	1b c0       	rjmp	.+54     	; 0x1172 <vfprintf+0xba>
    113c:	fa e0       	ldi	r31, 0x0A	; 10
    113e:	5f 9e       	mul	r5, r31
    1140:	20 0d       	add	r18, r0
    1142:	11 24       	eor	r1, r1
    1144:	52 2e       	mov	r5, r18
    1146:	05 c0       	rjmp	.+10     	; 0x1152 <vfprintf+0x9a>
    1148:	8d 32       	cpi	r24, 0x2D	; 45
    114a:	79 f0       	breq	.+30     	; 0x116a <vfprintf+0xb2>
    114c:	80 33       	cpi	r24, 0x30	; 48
    114e:	71 f7       	brne	.-36     	; 0x112c <vfprintf+0x74>
    1150:	01 60       	ori	r16, 0x01	; 1
    1152:	f1 01       	movw	r30, r2
    1154:	93 fd       	sbrc	r25, 3
    1156:	85 91       	lpm	r24, Z+
    1158:	93 ff       	sbrs	r25, 3
    115a:	81 91       	ld	r24, Z+
    115c:	1f 01       	movw	r2, r30
    115e:	81 11       	cpse	r24, r1
    1160:	dc cf       	rjmp	.-72     	; 0x111a <vfprintf+0x62>
    1162:	1a c0       	rjmp	.+52     	; 0x1198 <vfprintf+0xe0>
    1164:	02 60       	ori	r16, 0x02	; 2
    1166:	04 60       	ori	r16, 0x04	; 4
    1168:	f4 cf       	rjmp	.-24     	; 0x1152 <vfprintf+0x9a>
    116a:	08 60       	ori	r16, 0x08	; 8
    116c:	f2 cf       	rjmp	.-28     	; 0x1152 <vfprintf+0x9a>
    116e:	00 61       	ori	r16, 0x10	; 16
    1170:	f0 cf       	rjmp	.-32     	; 0x1152 <vfprintf+0x9a>
    1172:	3a e0       	ldi	r19, 0x0A	; 10
    1174:	93 9e       	mul	r9, r19
    1176:	20 0d       	add	r18, r0
    1178:	11 24       	eor	r1, r1
    117a:	92 2e       	mov	r9, r18
    117c:	00 62       	ori	r16, 0x20	; 32
    117e:	e9 cf       	rjmp	.-46     	; 0x1152 <vfprintf+0x9a>
    1180:	8e 32       	cpi	r24, 0x2E	; 46
    1182:	21 f4       	brne	.+8      	; 0x118c <vfprintf+0xd4>
    1184:	06 fd       	sbrc	r16, 6
    1186:	82 c2       	rjmp	.+1284   	; 0x168c <vfprintf+0x5d4>
    1188:	00 64       	ori	r16, 0x40	; 64
    118a:	e3 cf       	rjmp	.-58     	; 0x1152 <vfprintf+0x9a>
    118c:	8c 36       	cpi	r24, 0x6C	; 108
    118e:	11 f4       	brne	.+4      	; 0x1194 <vfprintf+0xdc>
    1190:	00 68       	ori	r16, 0x80	; 128
    1192:	df cf       	rjmp	.-66     	; 0x1152 <vfprintf+0x9a>
    1194:	88 36       	cpi	r24, 0x68	; 104
    1196:	e9 f2       	breq	.-70     	; 0x1152 <vfprintf+0x9a>
    1198:	9b eb       	ldi	r25, 0xBB	; 187
    119a:	98 0f       	add	r25, r24
    119c:	93 30       	cpi	r25, 0x03	; 3
    119e:	d8 f5       	brcc	.+118    	; 0x1216 <vfprintf+0x15e>
    11a0:	00 61       	ori	r16, 0x10	; 16
    11a2:	80 5e       	subi	r24, 0xE0	; 224
    11a4:	06 fd       	sbrc	r16, 6
    11a6:	02 c0       	rjmp	.+4      	; 0x11ac <vfprintf+0xf4>
    11a8:	46 e0       	ldi	r20, 0x06	; 6
    11aa:	54 2e       	mov	r5, r20
    11ac:	10 2f       	mov	r17, r16
    11ae:	1f 73       	andi	r17, 0x3F	; 63
    11b0:	85 36       	cpi	r24, 0x65	; 101
    11b2:	c1 f5       	brne	.+112    	; 0x1224 <vfprintf+0x16c>
    11b4:	10 64       	ori	r17, 0x40	; 64
    11b6:	17 ff       	sbrs	r17, 7
    11b8:	3e c0       	rjmp	.+124    	; 0x1236 <vfprintf+0x17e>
    11ba:	8b e3       	ldi	r24, 0x3B	; 59
    11bc:	85 15       	cp	r24, r5
    11be:	08 f4       	brcc	.+2      	; 0x11c2 <vfprintf+0x10a>
    11c0:	42 c0       	rjmp	.+132    	; 0x1246 <vfprintf+0x18e>
    11c2:	91 e0       	ldi	r25, 0x01	; 1
    11c4:	95 0d       	add	r25, r5
    11c6:	9c 87       	std	Y+12, r25	; 0x0c
    11c8:	27 e0       	ldi	r18, 0x07	; 7
    11ca:	36 01       	movw	r6, r12
    11cc:	34 e0       	ldi	r19, 0x04	; 4
    11ce:	63 0e       	add	r6, r19
    11d0:	71 1c       	adc	r7, r1
    11d2:	f6 01       	movw	r30, r12
    11d4:	60 81       	ld	r22, Z
    11d6:	71 81       	ldd	r23, Z+1	; 0x01
    11d8:	82 81       	ldd	r24, Z+2	; 0x02
    11da:	93 81       	ldd	r25, Z+3	; 0x03
    11dc:	0c 85       	ldd	r16, Y+12	; 0x0c
    11de:	a5 01       	movw	r20, r10
    11e0:	0e 94 4e 0d 	call	0x1a9c	; 0x1a9c <__ftoa_engine>
    11e4:	6c 01       	movw	r12, r24
    11e6:	f9 81       	ldd	r31, Y+1	; 0x01
    11e8:	fe 87       	std	Y+14, r31	; 0x0e
    11ea:	f0 ff       	sbrs	r31, 0
    11ec:	02 c0       	rjmp	.+4      	; 0x11f2 <vfprintf+0x13a>
    11ee:	f3 ff       	sbrs	r31, 3
    11f0:	30 c0       	rjmp	.+96     	; 0x1252 <vfprintf+0x19a>
    11f2:	11 fd       	sbrc	r17, 1
    11f4:	30 c0       	rjmp	.+96     	; 0x1256 <vfprintf+0x19e>
    11f6:	01 2f       	mov	r16, r17
    11f8:	04 70       	andi	r16, 0x04	; 4
    11fa:	12 fd       	sbrc	r17, 2
    11fc:	00 e2       	ldi	r16, 0x20	; 32
    11fe:	2e 85       	ldd	r18, Y+14	; 0x0e
    1200:	2c 70       	andi	r18, 0x0C	; 12
    1202:	42 2e       	mov	r4, r18
    1204:	09 f4       	brne	.+2      	; 0x1208 <vfprintf+0x150>
    1206:	64 c0       	rjmp	.+200    	; 0x12d0 <vfprintf+0x218>
    1208:	01 11       	cpse	r16, r1
    120a:	d5 c2       	rjmp	.+1450   	; 0x17b6 <vfprintf+0x6fe>
    120c:	f3 e0       	ldi	r31, 0x03	; 3
    120e:	f9 15       	cp	r31, r9
    1210:	20 f1       	brcs	.+72     	; 0x125a <vfprintf+0x1a2>
    1212:	41 2c       	mov	r4, r1
    1214:	36 c0       	rjmp	.+108    	; 0x1282 <vfprintf+0x1ca>
    1216:	9b e9       	ldi	r25, 0x9B	; 155
    1218:	98 0f       	add	r25, r24
    121a:	93 30       	cpi	r25, 0x03	; 3
    121c:	08 f0       	brcs	.+2      	; 0x1220 <vfprintf+0x168>
    121e:	76 c1       	rjmp	.+748    	; 0x150c <vfprintf+0x454>
    1220:	0f 7e       	andi	r16, 0xEF	; 239
    1222:	c0 cf       	rjmp	.-128    	; 0x11a4 <vfprintf+0xec>
    1224:	86 36       	cpi	r24, 0x66	; 102
    1226:	11 f4       	brne	.+4      	; 0x122c <vfprintf+0x174>
    1228:	10 68       	ori	r17, 0x80	; 128
    122a:	c5 cf       	rjmp	.-118    	; 0x11b6 <vfprintf+0xfe>
    122c:	55 20       	and	r5, r5
    122e:	09 f4       	brne	.+2      	; 0x1232 <vfprintf+0x17a>
    1230:	c2 cf       	rjmp	.-124    	; 0x11b6 <vfprintf+0xfe>
    1232:	5a 94       	dec	r5
    1234:	c0 cf       	rjmp	.-128    	; 0x11b6 <vfprintf+0xfe>
    1236:	e7 e0       	ldi	r30, 0x07	; 7
    1238:	e5 15       	cp	r30, r5
    123a:	48 f4       	brcc	.+18     	; 0x124e <vfprintf+0x196>
    123c:	27 e0       	ldi	r18, 0x07	; 7
    123e:	37 e0       	ldi	r19, 0x07	; 7
    1240:	53 2e       	mov	r5, r19
    1242:	1c 86       	std	Y+12, r1	; 0x0c
    1244:	c2 cf       	rjmp	.-124    	; 0x11ca <vfprintf+0x112>
    1246:	27 e0       	ldi	r18, 0x07	; 7
    1248:	fc e3       	ldi	r31, 0x3C	; 60
    124a:	fc 87       	std	Y+12, r31	; 0x0c
    124c:	be cf       	rjmp	.-132    	; 0x11ca <vfprintf+0x112>
    124e:	25 2d       	mov	r18, r5
    1250:	f8 cf       	rjmp	.-16     	; 0x1242 <vfprintf+0x18a>
    1252:	0d e2       	ldi	r16, 0x2D	; 45
    1254:	d4 cf       	rjmp	.-88     	; 0x11fe <vfprintf+0x146>
    1256:	0b e2       	ldi	r16, 0x2B	; 43
    1258:	d2 cf       	rjmp	.-92     	; 0x11fe <vfprintf+0x146>
    125a:	83 e0       	ldi	r24, 0x03	; 3
    125c:	49 2c       	mov	r4, r9
    125e:	48 1a       	sub	r4, r24
    1260:	13 fd       	sbrc	r17, 3
    1262:	08 c0       	rjmp	.+16     	; 0x1274 <vfprintf+0x1bc>
    1264:	b7 01       	movw	r22, r14
    1266:	80 e2       	ldi	r24, 0x20	; 32
    1268:	90 e0       	ldi	r25, 0x00	; 0
    126a:	0e 94 3c 0e 	call	0x1c78	; 0x1c78 <fputc>
    126e:	4a 94       	dec	r4
    1270:	41 10       	cpse	r4, r1
    1272:	f8 cf       	rjmp	.-16     	; 0x1264 <vfprintf+0x1ac>
    1274:	00 23       	and	r16, r16
    1276:	29 f0       	breq	.+10     	; 0x1282 <vfprintf+0x1ca>
    1278:	b7 01       	movw	r22, r14
    127a:	80 2f       	mov	r24, r16
    127c:	90 e0       	ldi	r25, 0x00	; 0
    127e:	0e 94 3c 0e 	call	0x1c78	; 0x1c78 <fputc>
    1282:	3e 85       	ldd	r19, Y+14	; 0x0e
    1284:	33 ff       	sbrs	r19, 3
    1286:	15 c0       	rjmp	.+42     	; 0x12b2 <vfprintf+0x1fa>
    1288:	98 e6       	ldi	r25, 0x68	; 104
    128a:	c9 2e       	mov	r12, r25
    128c:	90 e0       	ldi	r25, 0x00	; 0
    128e:	d9 2e       	mov	r13, r25
    1290:	10 71       	andi	r17, 0x10	; 16
    1292:	f6 01       	movw	r30, r12
    1294:	84 91       	lpm	r24, Z
    1296:	81 11       	cpse	r24, r1
    1298:	11 c0       	rjmp	.+34     	; 0x12bc <vfprintf+0x204>
    129a:	44 20       	and	r4, r4
    129c:	09 f4       	brne	.+2      	; 0x12a0 <vfprintf+0x1e8>
    129e:	38 cf       	rjmp	.-400    	; 0x1110 <vfprintf+0x58>
    12a0:	b7 01       	movw	r22, r14
    12a2:	80 e2       	ldi	r24, 0x20	; 32
    12a4:	90 e0       	ldi	r25, 0x00	; 0
    12a6:	0e 94 3c 0e 	call	0x1c78	; 0x1c78 <fputc>
    12aa:	4a 94       	dec	r4
    12ac:	f6 cf       	rjmp	.-20     	; 0x129a <vfprintf+0x1e2>
    12ae:	84 e0       	ldi	r24, 0x04	; 4
    12b0:	d5 cf       	rjmp	.-86     	; 0x125c <vfprintf+0x1a4>
    12b2:	8c e6       	ldi	r24, 0x6C	; 108
    12b4:	c8 2e       	mov	r12, r24
    12b6:	80 e0       	ldi	r24, 0x00	; 0
    12b8:	d8 2e       	mov	r13, r24
    12ba:	ea cf       	rjmp	.-44     	; 0x1290 <vfprintf+0x1d8>
    12bc:	11 11       	cpse	r17, r1
    12be:	80 52       	subi	r24, 0x20	; 32
    12c0:	b7 01       	movw	r22, r14
    12c2:	90 e0       	ldi	r25, 0x00	; 0
    12c4:	0e 94 3c 0e 	call	0x1c78	; 0x1c78 <fputc>
    12c8:	8f ef       	ldi	r24, 0xFF	; 255
    12ca:	c8 1a       	sub	r12, r24
    12cc:	d8 0a       	sbc	r13, r24
    12ce:	e1 cf       	rjmp	.-62     	; 0x1292 <vfprintf+0x1da>
    12d0:	17 ff       	sbrs	r17, 7
    12d2:	7c c0       	rjmp	.+248    	; 0x13cc <vfprintf+0x314>
    12d4:	8c 85       	ldd	r24, Y+12	; 0x0c
    12d6:	8c 0d       	add	r24, r12
    12d8:	fe 85       	ldd	r31, Y+14	; 0x0e
    12da:	f4 ff       	sbrs	r31, 4
    12dc:	04 c0       	rjmp	.+8      	; 0x12e6 <vfprintf+0x22e>
    12de:	9a 81       	ldd	r25, Y+2	; 0x02
    12e0:	91 33       	cpi	r25, 0x31	; 49
    12e2:	09 f4       	brne	.+2      	; 0x12e6 <vfprintf+0x22e>
    12e4:	81 50       	subi	r24, 0x01	; 1
    12e6:	18 16       	cp	r1, r24
    12e8:	0c f0       	brlt	.+2      	; 0x12ec <vfprintf+0x234>
    12ea:	93 c0       	rjmp	.+294    	; 0x1412 <vfprintf+0x35a>
    12ec:	8c 87       	std	Y+12, r24	; 0x0c
    12ee:	89 30       	cpi	r24, 0x09	; 9
    12f0:	10 f0       	brcs	.+4      	; 0x12f6 <vfprintf+0x23e>
    12f2:	28 e0       	ldi	r18, 0x08	; 8
    12f4:	2c 87       	std	Y+12, r18	; 0x0c
    12f6:	17 ff       	sbrs	r17, 7
    12f8:	91 c0       	rjmp	.+290    	; 0x141c <vfprintf+0x364>
    12fa:	1c 14       	cp	r1, r12
    12fc:	1d 04       	cpc	r1, r13
    12fe:	0c f0       	brlt	.+2      	; 0x1302 <vfprintf+0x24a>
    1300:	90 c0       	rjmp	.+288    	; 0x1422 <vfprintf+0x36a>
    1302:	c6 01       	movw	r24, r12
    1304:	01 96       	adiw	r24, 0x01	; 1
    1306:	01 11       	cpse	r16, r1
    1308:	01 96       	adiw	r24, 0x01	; 1
    130a:	55 20       	and	r5, r5
    130c:	31 f0       	breq	.+12     	; 0x131a <vfprintf+0x262>
    130e:	25 2d       	mov	r18, r5
    1310:	30 e0       	ldi	r19, 0x00	; 0
    1312:	2f 5f       	subi	r18, 0xFF	; 255
    1314:	3f 4f       	sbci	r19, 0xFF	; 255
    1316:	82 0f       	add	r24, r18
    1318:	93 1f       	adc	r25, r19
    131a:	29 2d       	mov	r18, r9
    131c:	30 e0       	ldi	r19, 0x00	; 0
    131e:	82 17       	cp	r24, r18
    1320:	93 07       	cpc	r25, r19
    1322:	14 f4       	brge	.+4      	; 0x1328 <vfprintf+0x270>
    1324:	49 2c       	mov	r4, r9
    1326:	48 1a       	sub	r4, r24
    1328:	81 2f       	mov	r24, r17
    132a:	89 70       	andi	r24, 0x09	; 9
    132c:	11 f4       	brne	.+4      	; 0x1332 <vfprintf+0x27a>
    132e:	41 10       	cpse	r4, r1
    1330:	7b c0       	rjmp	.+246    	; 0x1428 <vfprintf+0x370>
    1332:	00 23       	and	r16, r16
    1334:	29 f0       	breq	.+10     	; 0x1340 <vfprintf+0x288>
    1336:	b7 01       	movw	r22, r14
    1338:	80 2f       	mov	r24, r16
    133a:	90 e0       	ldi	r25, 0x00	; 0
    133c:	0e 94 3c 0e 	call	0x1c78	; 0x1c78 <fputc>
    1340:	13 fd       	sbrc	r17, 3
    1342:	02 c0       	rjmp	.+4      	; 0x1348 <vfprintf+0x290>
    1344:	41 10       	cpse	r4, r1
    1346:	77 c0       	rjmp	.+238    	; 0x1436 <vfprintf+0x37e>
    1348:	17 ff       	sbrs	r17, 7
    134a:	90 c0       	rjmp	.+288    	; 0x146c <vfprintf+0x3b4>
    134c:	46 01       	movw	r8, r12
    134e:	d7 fe       	sbrs	r13, 7
    1350:	02 c0       	rjmp	.+4      	; 0x1356 <vfprintf+0x29e>
    1352:	81 2c       	mov	r8, r1
    1354:	91 2c       	mov	r9, r1
    1356:	c6 01       	movw	r24, r12
    1358:	88 19       	sub	r24, r8
    135a:	99 09       	sbc	r25, r9
    135c:	f5 01       	movw	r30, r10
    135e:	e8 0f       	add	r30, r24
    1360:	f9 1f       	adc	r31, r25
    1362:	f8 8b       	std	Y+16, r31	; 0x10
    1364:	ef 87       	std	Y+15, r30	; 0x0f
    1366:	96 01       	movw	r18, r12
    1368:	8c 85       	ldd	r24, Y+12	; 0x0c
    136a:	28 1b       	sub	r18, r24
    136c:	31 09       	sbc	r19, r1
    136e:	3d 87       	std	Y+13, r19	; 0x0d
    1370:	2c 87       	std	Y+12, r18	; 0x0c
    1372:	05 2d       	mov	r16, r5
    1374:	10 e0       	ldi	r17, 0x00	; 0
    1376:	11 95       	neg	r17
    1378:	01 95       	neg	r16
    137a:	11 09       	sbc	r17, r1
    137c:	9f ef       	ldi	r25, 0xFF	; 255
    137e:	89 16       	cp	r8, r25
    1380:	99 06       	cpc	r9, r25
    1382:	29 f4       	brne	.+10     	; 0x138e <vfprintf+0x2d6>
    1384:	b7 01       	movw	r22, r14
    1386:	8e e2       	ldi	r24, 0x2E	; 46
    1388:	90 e0       	ldi	r25, 0x00	; 0
    138a:	0e 94 3c 0e 	call	0x1c78	; 0x1c78 <fputc>
    138e:	c8 14       	cp	r12, r8
    1390:	d9 04       	cpc	r13, r9
    1392:	0c f4       	brge	.+2      	; 0x1396 <vfprintf+0x2de>
    1394:	57 c0       	rjmp	.+174    	; 0x1444 <vfprintf+0x38c>
    1396:	ec 85       	ldd	r30, Y+12	; 0x0c
    1398:	fd 85       	ldd	r31, Y+13	; 0x0d
    139a:	e8 15       	cp	r30, r8
    139c:	f9 05       	cpc	r31, r9
    139e:	0c f0       	brlt	.+2      	; 0x13a2 <vfprintf+0x2ea>
    13a0:	51 c0       	rjmp	.+162    	; 0x1444 <vfprintf+0x38c>
    13a2:	ef 85       	ldd	r30, Y+15	; 0x0f
    13a4:	f8 89       	ldd	r31, Y+16	; 0x10
    13a6:	81 81       	ldd	r24, Z+1	; 0x01
    13a8:	f1 e0       	ldi	r31, 0x01	; 1
    13aa:	8f 1a       	sub	r8, r31
    13ac:	91 08       	sbc	r9, r1
    13ae:	2f 85       	ldd	r18, Y+15	; 0x0f
    13b0:	38 89       	ldd	r19, Y+16	; 0x10
    13b2:	2f 5f       	subi	r18, 0xFF	; 255
    13b4:	3f 4f       	sbci	r19, 0xFF	; 255
    13b6:	38 8b       	std	Y+16, r19	; 0x10
    13b8:	2f 87       	std	Y+15, r18	; 0x0f
    13ba:	80 16       	cp	r8, r16
    13bc:	91 06       	cpc	r9, r17
    13be:	0c f4       	brge	.+2      	; 0x13c2 <vfprintf+0x30a>
    13c0:	43 c0       	rjmp	.+134    	; 0x1448 <vfprintf+0x390>
    13c2:	b7 01       	movw	r22, r14
    13c4:	90 e0       	ldi	r25, 0x00	; 0
    13c6:	0e 94 3c 0e 	call	0x1c78	; 0x1c78 <fputc>
    13ca:	d8 cf       	rjmp	.-80     	; 0x137c <vfprintf+0x2c4>
    13cc:	16 fd       	sbrc	r17, 6
    13ce:	93 cf       	rjmp	.-218    	; 0x12f6 <vfprintf+0x23e>
    13d0:	e5 2d       	mov	r30, r5
    13d2:	f0 e0       	ldi	r31, 0x00	; 0
    13d4:	ec 15       	cp	r30, r12
    13d6:	fd 05       	cpc	r31, r13
    13d8:	34 f0       	brlt	.+12     	; 0x13e6 <vfprintf+0x32e>
    13da:	3c ef       	ldi	r19, 0xFC	; 252
    13dc:	c3 16       	cp	r12, r19
    13de:	3f ef       	ldi	r19, 0xFF	; 255
    13e0:	d3 06       	cpc	r13, r19
    13e2:	0c f0       	brlt	.+2      	; 0x13e6 <vfprintf+0x32e>
    13e4:	10 68       	ori	r17, 0x80	; 128
    13e6:	32 96       	adiw	r30, 0x02	; 2
    13e8:	ea 0d       	add	r30, r10
    13ea:	fb 1d       	adc	r31, r11
    13ec:	55 20       	and	r5, r5
    13ee:	19 f0       	breq	.+6      	; 0x13f6 <vfprintf+0x33e>
    13f0:	82 91       	ld	r24, -Z
    13f2:	80 33       	cpi	r24, 0x30	; 48
    13f4:	61 f0       	breq	.+24     	; 0x140e <vfprintf+0x356>
    13f6:	17 ff       	sbrs	r17, 7
    13f8:	7e cf       	rjmp	.-260    	; 0x12f6 <vfprintf+0x23e>
    13fa:	81 e0       	ldi	r24, 0x01	; 1
    13fc:	85 0d       	add	r24, r5
    13fe:	8c 87       	std	Y+12, r24	; 0x0c
    1400:	85 2d       	mov	r24, r5
    1402:	90 e0       	ldi	r25, 0x00	; 0
    1404:	c8 16       	cp	r12, r24
    1406:	d9 06       	cpc	r13, r25
    1408:	3c f4       	brge	.+14     	; 0x1418 <vfprintf+0x360>
    140a:	5c 18       	sub	r5, r12
    140c:	74 cf       	rjmp	.-280    	; 0x12f6 <vfprintf+0x23e>
    140e:	5a 94       	dec	r5
    1410:	ed cf       	rjmp	.-38     	; 0x13ec <vfprintf+0x334>
    1412:	91 e0       	ldi	r25, 0x01	; 1
    1414:	9c 87       	std	Y+12, r25	; 0x0c
    1416:	6f cf       	rjmp	.-290    	; 0x12f6 <vfprintf+0x23e>
    1418:	51 2c       	mov	r5, r1
    141a:	6d cf       	rjmp	.-294    	; 0x12f6 <vfprintf+0x23e>
    141c:	85 e0       	ldi	r24, 0x05	; 5
    141e:	90 e0       	ldi	r25, 0x00	; 0
    1420:	72 cf       	rjmp	.-284    	; 0x1306 <vfprintf+0x24e>
    1422:	81 e0       	ldi	r24, 0x01	; 1
    1424:	90 e0       	ldi	r25, 0x00	; 0
    1426:	6f cf       	rjmp	.-290    	; 0x1306 <vfprintf+0x24e>
    1428:	b7 01       	movw	r22, r14
    142a:	80 e2       	ldi	r24, 0x20	; 32
    142c:	90 e0       	ldi	r25, 0x00	; 0
    142e:	0e 94 3c 0e 	call	0x1c78	; 0x1c78 <fputc>
    1432:	4a 94       	dec	r4
    1434:	7c cf       	rjmp	.-264    	; 0x132e <vfprintf+0x276>
    1436:	b7 01       	movw	r22, r14
    1438:	80 e3       	ldi	r24, 0x30	; 48
    143a:	90 e0       	ldi	r25, 0x00	; 0
    143c:	0e 94 3c 0e 	call	0x1c78	; 0x1c78 <fputc>
    1440:	4a 94       	dec	r4
    1442:	80 cf       	rjmp	.-256    	; 0x1344 <vfprintf+0x28c>
    1444:	80 e3       	ldi	r24, 0x30	; 48
    1446:	b0 cf       	rjmp	.-160    	; 0x13a8 <vfprintf+0x2f0>
    1448:	c8 14       	cp	r12, r8
    144a:	d9 04       	cpc	r13, r9
    144c:	41 f4       	brne	.+16     	; 0x145e <vfprintf+0x3a6>
    144e:	9a 81       	ldd	r25, Y+2	; 0x02
    1450:	96 33       	cpi	r25, 0x36	; 54
    1452:	50 f4       	brcc	.+20     	; 0x1468 <vfprintf+0x3b0>
    1454:	95 33       	cpi	r25, 0x35	; 53
    1456:	19 f4       	brne	.+6      	; 0x145e <vfprintf+0x3a6>
    1458:	3e 85       	ldd	r19, Y+14	; 0x0e
    145a:	34 ff       	sbrs	r19, 4
    145c:	05 c0       	rjmp	.+10     	; 0x1468 <vfprintf+0x3b0>
    145e:	b7 01       	movw	r22, r14
    1460:	90 e0       	ldi	r25, 0x00	; 0
    1462:	0e 94 3c 0e 	call	0x1c78	; 0x1c78 <fputc>
    1466:	19 cf       	rjmp	.-462    	; 0x129a <vfprintf+0x1e2>
    1468:	81 e3       	ldi	r24, 0x31	; 49
    146a:	f9 cf       	rjmp	.-14     	; 0x145e <vfprintf+0x3a6>
    146c:	8a 81       	ldd	r24, Y+2	; 0x02
    146e:	81 33       	cpi	r24, 0x31	; 49
    1470:	19 f0       	breq	.+6      	; 0x1478 <vfprintf+0x3c0>
    1472:	9e 85       	ldd	r25, Y+14	; 0x0e
    1474:	9f 7e       	andi	r25, 0xEF	; 239
    1476:	9e 87       	std	Y+14, r25	; 0x0e
    1478:	b7 01       	movw	r22, r14
    147a:	90 e0       	ldi	r25, 0x00	; 0
    147c:	0e 94 3c 0e 	call	0x1c78	; 0x1c78 <fputc>
    1480:	51 10       	cpse	r5, r1
    1482:	24 c0       	rjmp	.+72     	; 0x14cc <vfprintf+0x414>
    1484:	14 fd       	sbrc	r17, 4
    1486:	38 c0       	rjmp	.+112    	; 0x14f8 <vfprintf+0x440>
    1488:	85 e6       	ldi	r24, 0x65	; 101
    148a:	90 e0       	ldi	r25, 0x00	; 0
    148c:	b7 01       	movw	r22, r14
    148e:	0e 94 3c 0e 	call	0x1c78	; 0x1c78 <fputc>
    1492:	d7 fc       	sbrc	r13, 7
    1494:	06 c0       	rjmp	.+12     	; 0x14a2 <vfprintf+0x3ea>
    1496:	c1 14       	cp	r12, r1
    1498:	d1 04       	cpc	r13, r1
    149a:	89 f5       	brne	.+98     	; 0x14fe <vfprintf+0x446>
    149c:	ee 85       	ldd	r30, Y+14	; 0x0e
    149e:	e4 ff       	sbrs	r30, 4
    14a0:	2e c0       	rjmp	.+92     	; 0x14fe <vfprintf+0x446>
    14a2:	d1 94       	neg	r13
    14a4:	c1 94       	neg	r12
    14a6:	d1 08       	sbc	r13, r1
    14a8:	8d e2       	ldi	r24, 0x2D	; 45
    14aa:	b7 01       	movw	r22, r14
    14ac:	90 e0       	ldi	r25, 0x00	; 0
    14ae:	0e 94 3c 0e 	call	0x1c78	; 0x1c78 <fputc>
    14b2:	80 e3       	ldi	r24, 0x30	; 48
    14b4:	2a e0       	ldi	r18, 0x0A	; 10
    14b6:	c2 16       	cp	r12, r18
    14b8:	d1 04       	cpc	r13, r1
    14ba:	1c f5       	brge	.+70     	; 0x1502 <vfprintf+0x44a>
    14bc:	b7 01       	movw	r22, r14
    14be:	90 e0       	ldi	r25, 0x00	; 0
    14c0:	0e 94 3c 0e 	call	0x1c78	; 0x1c78 <fputc>
    14c4:	b7 01       	movw	r22, r14
    14c6:	c6 01       	movw	r24, r12
    14c8:	c0 96       	adiw	r24, 0x30	; 48
    14ca:	cb cf       	rjmp	.-106    	; 0x1462 <vfprintf+0x3aa>
    14cc:	b7 01       	movw	r22, r14
    14ce:	8e e2       	ldi	r24, 0x2E	; 46
    14d0:	90 e0       	ldi	r25, 0x00	; 0
    14d2:	0e 94 3c 0e 	call	0x1c78	; 0x1c78 <fputc>
    14d6:	53 94       	inc	r5
    14d8:	53 94       	inc	r5
    14da:	82 e0       	ldi	r24, 0x02	; 2
    14dc:	01 e0       	ldi	r16, 0x01	; 1
    14de:	08 0f       	add	r16, r24
    14e0:	f5 01       	movw	r30, r10
    14e2:	e8 0f       	add	r30, r24
    14e4:	f1 1d       	adc	r31, r1
    14e6:	80 81       	ld	r24, Z
    14e8:	b7 01       	movw	r22, r14
    14ea:	90 e0       	ldi	r25, 0x00	; 0
    14ec:	0e 94 3c 0e 	call	0x1c78	; 0x1c78 <fputc>
    14f0:	80 2f       	mov	r24, r16
    14f2:	50 12       	cpse	r5, r16
    14f4:	f3 cf       	rjmp	.-26     	; 0x14dc <vfprintf+0x424>
    14f6:	c6 cf       	rjmp	.-116    	; 0x1484 <vfprintf+0x3cc>
    14f8:	85 e4       	ldi	r24, 0x45	; 69
    14fa:	90 e0       	ldi	r25, 0x00	; 0
    14fc:	c7 cf       	rjmp	.-114    	; 0x148c <vfprintf+0x3d4>
    14fe:	8b e2       	ldi	r24, 0x2B	; 43
    1500:	d4 cf       	rjmp	.-88     	; 0x14aa <vfprintf+0x3f2>
    1502:	8f 5f       	subi	r24, 0xFF	; 255
    1504:	fa e0       	ldi	r31, 0x0A	; 10
    1506:	cf 1a       	sub	r12, r31
    1508:	d1 08       	sbc	r13, r1
    150a:	d4 cf       	rjmp	.-88     	; 0x14b4 <vfprintf+0x3fc>
    150c:	83 36       	cpi	r24, 0x63	; 99
    150e:	c1 f0       	breq	.+48     	; 0x1540 <vfprintf+0x488>
    1510:	83 37       	cpi	r24, 0x73	; 115
    1512:	09 f4       	brne	.+2      	; 0x1516 <vfprintf+0x45e>
    1514:	43 c0       	rjmp	.+134    	; 0x159c <vfprintf+0x4e4>
    1516:	83 35       	cpi	r24, 0x53	; 83
    1518:	09 f0       	breq	.+2      	; 0x151c <vfprintf+0x464>
    151a:	5e c0       	rjmp	.+188    	; 0x15d8 <vfprintf+0x520>
    151c:	36 01       	movw	r6, r12
    151e:	f2 e0       	ldi	r31, 0x02	; 2
    1520:	6f 0e       	add	r6, r31
    1522:	71 1c       	adc	r7, r1
    1524:	f6 01       	movw	r30, r12
    1526:	c0 80       	ld	r12, Z
    1528:	d1 80       	ldd	r13, Z+1	; 0x01
    152a:	06 ff       	sbrs	r16, 6
    152c:	4b c0       	rjmp	.+150    	; 0x15c4 <vfprintf+0x50c>
    152e:	65 2d       	mov	r22, r5
    1530:	70 e0       	ldi	r23, 0x00	; 0
    1532:	c6 01       	movw	r24, r12
    1534:	0e 94 26 0e 	call	0x1c4c	; 0x1c4c <strnlen_P>
    1538:	9d 87       	std	Y+13, r25	; 0x0d
    153a:	8c 87       	std	Y+12, r24	; 0x0c
    153c:	00 68       	ori	r16, 0x80	; 128
    153e:	0d c0       	rjmp	.+26     	; 0x155a <vfprintf+0x4a2>
    1540:	36 01       	movw	r6, r12
    1542:	32 e0       	ldi	r19, 0x02	; 2
    1544:	63 0e       	add	r6, r19
    1546:	71 1c       	adc	r7, r1
    1548:	f6 01       	movw	r30, r12
    154a:	80 81       	ld	r24, Z
    154c:	89 83       	std	Y+1, r24	; 0x01
    154e:	21 e0       	ldi	r18, 0x01	; 1
    1550:	30 e0       	ldi	r19, 0x00	; 0
    1552:	3d 87       	std	Y+13, r19	; 0x0d
    1554:	2c 87       	std	Y+12, r18	; 0x0c
    1556:	65 01       	movw	r12, r10
    1558:	0f 77       	andi	r16, 0x7F	; 127
    155a:	03 fd       	sbrc	r16, 3
    155c:	07 c0       	rjmp	.+14     	; 0x156c <vfprintf+0x4b4>
    155e:	89 2d       	mov	r24, r9
    1560:	90 e0       	ldi	r25, 0x00	; 0
    1562:	2c 85       	ldd	r18, Y+12	; 0x0c
    1564:	3d 85       	ldd	r19, Y+13	; 0x0d
    1566:	28 17       	cp	r18, r24
    1568:	39 07       	cpc	r19, r25
    156a:	78 f1       	brcs	.+94     	; 0x15ca <vfprintf+0x512>
    156c:	49 2c       	mov	r4, r9
    156e:	ec 85       	ldd	r30, Y+12	; 0x0c
    1570:	fd 85       	ldd	r31, Y+13	; 0x0d
    1572:	ef 2b       	or	r30, r31
    1574:	09 f4       	brne	.+2      	; 0x1578 <vfprintf+0x4c0>
    1576:	91 ce       	rjmp	.-734    	; 0x129a <vfprintf+0x1e2>
    1578:	f6 01       	movw	r30, r12
    157a:	07 fd       	sbrc	r16, 7
    157c:	85 91       	lpm	r24, Z+
    157e:	07 ff       	sbrs	r16, 7
    1580:	81 91       	ld	r24, Z+
    1582:	6f 01       	movw	r12, r30
    1584:	b7 01       	movw	r22, r14
    1586:	90 e0       	ldi	r25, 0x00	; 0
    1588:	0e 94 3c 0e 	call	0x1c78	; 0x1c78 <fputc>
    158c:	41 10       	cpse	r4, r1
    158e:	4a 94       	dec	r4
    1590:	8c 85       	ldd	r24, Y+12	; 0x0c
    1592:	9d 85       	ldd	r25, Y+13	; 0x0d
    1594:	01 97       	sbiw	r24, 0x01	; 1
    1596:	9d 87       	std	Y+13, r25	; 0x0d
    1598:	8c 87       	std	Y+12, r24	; 0x0c
    159a:	e9 cf       	rjmp	.-46     	; 0x156e <vfprintf+0x4b6>
    159c:	36 01       	movw	r6, r12
    159e:	32 e0       	ldi	r19, 0x02	; 2
    15a0:	63 0e       	add	r6, r19
    15a2:	71 1c       	adc	r7, r1
    15a4:	f6 01       	movw	r30, r12
    15a6:	c0 80       	ld	r12, Z
    15a8:	d1 80       	ldd	r13, Z+1	; 0x01
    15aa:	06 ff       	sbrs	r16, 6
    15ac:	08 c0       	rjmp	.+16     	; 0x15be <vfprintf+0x506>
    15ae:	65 2d       	mov	r22, r5
    15b0:	70 e0       	ldi	r23, 0x00	; 0
    15b2:	c6 01       	movw	r24, r12
    15b4:	0e 94 31 0e 	call	0x1c62	; 0x1c62 <strnlen>
    15b8:	9d 87       	std	Y+13, r25	; 0x0d
    15ba:	8c 87       	std	Y+12, r24	; 0x0c
    15bc:	cd cf       	rjmp	.-102    	; 0x1558 <vfprintf+0x4a0>
    15be:	6f ef       	ldi	r22, 0xFF	; 255
    15c0:	7f ef       	ldi	r23, 0xFF	; 255
    15c2:	f7 cf       	rjmp	.-18     	; 0x15b2 <vfprintf+0x4fa>
    15c4:	6f ef       	ldi	r22, 0xFF	; 255
    15c6:	7f ef       	ldi	r23, 0xFF	; 255
    15c8:	b4 cf       	rjmp	.-152    	; 0x1532 <vfprintf+0x47a>
    15ca:	b7 01       	movw	r22, r14
    15cc:	80 e2       	ldi	r24, 0x20	; 32
    15ce:	90 e0       	ldi	r25, 0x00	; 0
    15d0:	0e 94 3c 0e 	call	0x1c78	; 0x1c78 <fputc>
    15d4:	9a 94       	dec	r9
    15d6:	c3 cf       	rjmp	.-122    	; 0x155e <vfprintf+0x4a6>
    15d8:	84 36       	cpi	r24, 0x64	; 100
    15da:	11 f0       	breq	.+4      	; 0x15e0 <vfprintf+0x528>
    15dc:	89 36       	cpi	r24, 0x69	; 105
    15de:	c1 f5       	brne	.+112    	; 0x1650 <vfprintf+0x598>
    15e0:	36 01       	movw	r6, r12
    15e2:	07 ff       	sbrs	r16, 7
    15e4:	2a c0       	rjmp	.+84     	; 0x163a <vfprintf+0x582>
    15e6:	f4 e0       	ldi	r31, 0x04	; 4
    15e8:	6f 0e       	add	r6, r31
    15ea:	71 1c       	adc	r7, r1
    15ec:	f6 01       	movw	r30, r12
    15ee:	60 81       	ld	r22, Z
    15f0:	71 81       	ldd	r23, Z+1	; 0x01
    15f2:	82 81       	ldd	r24, Z+2	; 0x02
    15f4:	93 81       	ldd	r25, Z+3	; 0x03
    15f6:	10 2f       	mov	r17, r16
    15f8:	1f 76       	andi	r17, 0x6F	; 111
    15fa:	97 ff       	sbrs	r25, 7
    15fc:	08 c0       	rjmp	.+16     	; 0x160e <vfprintf+0x556>
    15fe:	90 95       	com	r25
    1600:	80 95       	com	r24
    1602:	70 95       	com	r23
    1604:	61 95       	neg	r22
    1606:	7f 4f       	sbci	r23, 0xFF	; 255
    1608:	8f 4f       	sbci	r24, 0xFF	; 255
    160a:	9f 4f       	sbci	r25, 0xFF	; 255
    160c:	10 68       	ori	r17, 0x80	; 128
    160e:	2a e0       	ldi	r18, 0x0A	; 10
    1610:	30 e0       	ldi	r19, 0x00	; 0
    1612:	a5 01       	movw	r20, r10
    1614:	0e 94 9c 0e 	call	0x1d38	; 0x1d38 <__ultoa_invert>
    1618:	c8 2e       	mov	r12, r24
    161a:	ca 18       	sub	r12, r10
    161c:	16 ff       	sbrs	r17, 6
    161e:	59 c0       	rjmp	.+178    	; 0x16d2 <vfprintf+0x61a>
    1620:	01 2f       	mov	r16, r17
    1622:	0e 7f       	andi	r16, 0xFE	; 254
    1624:	c5 14       	cp	r12, r5
    1626:	08 f0       	brcs	.+2      	; 0x162a <vfprintf+0x572>
    1628:	90 c0       	rjmp	.+288    	; 0x174a <vfprintf+0x692>
    162a:	14 ff       	sbrs	r17, 4
    162c:	04 c0       	rjmp	.+8      	; 0x1636 <vfprintf+0x57e>
    162e:	12 fd       	sbrc	r17, 2
    1630:	02 c0       	rjmp	.+4      	; 0x1636 <vfprintf+0x57e>
    1632:	01 2f       	mov	r16, r17
    1634:	0e 7e       	andi	r16, 0xEE	; 238
    1636:	d5 2c       	mov	r13, r5
    1638:	4e c0       	rjmp	.+156    	; 0x16d6 <vfprintf+0x61e>
    163a:	f2 e0       	ldi	r31, 0x02	; 2
    163c:	6f 0e       	add	r6, r31
    163e:	71 1c       	adc	r7, r1
    1640:	f6 01       	movw	r30, r12
    1642:	60 81       	ld	r22, Z
    1644:	71 81       	ldd	r23, Z+1	; 0x01
    1646:	07 2e       	mov	r0, r23
    1648:	00 0c       	add	r0, r0
    164a:	88 0b       	sbc	r24, r24
    164c:	99 0b       	sbc	r25, r25
    164e:	d3 cf       	rjmp	.-90     	; 0x15f6 <vfprintf+0x53e>
    1650:	10 2f       	mov	r17, r16
    1652:	85 37       	cpi	r24, 0x75	; 117
    1654:	a9 f4       	brne	.+42     	; 0x1680 <vfprintf+0x5c8>
    1656:	1f 7e       	andi	r17, 0xEF	; 239
    1658:	2a e0       	ldi	r18, 0x0A	; 10
    165a:	30 e0       	ldi	r19, 0x00	; 0
    165c:	36 01       	movw	r6, r12
    165e:	17 ff       	sbrs	r17, 7
    1660:	2f c0       	rjmp	.+94     	; 0x16c0 <vfprintf+0x608>
    1662:	f4 e0       	ldi	r31, 0x04	; 4
    1664:	6f 0e       	add	r6, r31
    1666:	71 1c       	adc	r7, r1
    1668:	f6 01       	movw	r30, r12
    166a:	60 81       	ld	r22, Z
    166c:	71 81       	ldd	r23, Z+1	; 0x01
    166e:	82 81       	ldd	r24, Z+2	; 0x02
    1670:	93 81       	ldd	r25, Z+3	; 0x03
    1672:	a5 01       	movw	r20, r10
    1674:	0e 94 9c 0e 	call	0x1d38	; 0x1d38 <__ultoa_invert>
    1678:	c8 2e       	mov	r12, r24
    167a:	ca 18       	sub	r12, r10
    167c:	1f 77       	andi	r17, 0x7F	; 127
    167e:	ce cf       	rjmp	.-100    	; 0x161c <vfprintf+0x564>
    1680:	19 7f       	andi	r17, 0xF9	; 249
    1682:	8f 36       	cpi	r24, 0x6F	; 111
    1684:	d1 f0       	breq	.+52     	; 0x16ba <vfprintf+0x602>
    1686:	48 f4       	brcc	.+18     	; 0x169a <vfprintf+0x5e2>
    1688:	88 35       	cpi	r24, 0x58	; 88
    168a:	91 f0       	breq	.+36     	; 0x16b0 <vfprintf+0x5f8>
    168c:	f7 01       	movw	r30, r14
    168e:	86 81       	ldd	r24, Z+6	; 0x06
    1690:	97 81       	ldd	r25, Z+7	; 0x07
    1692:	60 96       	adiw	r28, 0x10	; 16
    1694:	e2 e1       	ldi	r30, 0x12	; 18
    1696:	0c 94 32 0c 	jmp	0x1864	; 0x1864 <__epilogue_restores__>
    169a:	80 37       	cpi	r24, 0x70	; 112
    169c:	39 f0       	breq	.+14     	; 0x16ac <vfprintf+0x5f4>
    169e:	88 37       	cpi	r24, 0x78	; 120
    16a0:	a9 f7       	brne	.-22     	; 0x168c <vfprintf+0x5d4>
    16a2:	14 fd       	sbrc	r17, 4
    16a4:	14 60       	ori	r17, 0x04	; 4
    16a6:	20 e1       	ldi	r18, 0x10	; 16
    16a8:	30 e0       	ldi	r19, 0x00	; 0
    16aa:	d8 cf       	rjmp	.-80     	; 0x165c <vfprintf+0x5a4>
    16ac:	10 61       	ori	r17, 0x10	; 16
    16ae:	f9 cf       	rjmp	.-14     	; 0x16a2 <vfprintf+0x5ea>
    16b0:	04 fd       	sbrc	r16, 4
    16b2:	16 60       	ori	r17, 0x06	; 6
    16b4:	20 e1       	ldi	r18, 0x10	; 16
    16b6:	32 e0       	ldi	r19, 0x02	; 2
    16b8:	d1 cf       	rjmp	.-94     	; 0x165c <vfprintf+0x5a4>
    16ba:	28 e0       	ldi	r18, 0x08	; 8
    16bc:	30 e0       	ldi	r19, 0x00	; 0
    16be:	ce cf       	rjmp	.-100    	; 0x165c <vfprintf+0x5a4>
    16c0:	f2 e0       	ldi	r31, 0x02	; 2
    16c2:	6f 0e       	add	r6, r31
    16c4:	71 1c       	adc	r7, r1
    16c6:	f6 01       	movw	r30, r12
    16c8:	60 81       	ld	r22, Z
    16ca:	71 81       	ldd	r23, Z+1	; 0x01
    16cc:	80 e0       	ldi	r24, 0x00	; 0
    16ce:	90 e0       	ldi	r25, 0x00	; 0
    16d0:	d0 cf       	rjmp	.-96     	; 0x1672 <vfprintf+0x5ba>
    16d2:	dc 2c       	mov	r13, r12
    16d4:	01 2f       	mov	r16, r17
    16d6:	04 ff       	sbrs	r16, 4
    16d8:	41 c0       	rjmp	.+130    	; 0x175c <vfprintf+0x6a4>
    16da:	fe 01       	movw	r30, r28
    16dc:	ec 0d       	add	r30, r12
    16de:	f1 1d       	adc	r31, r1
    16e0:	80 81       	ld	r24, Z
    16e2:	80 33       	cpi	r24, 0x30	; 48
    16e4:	a1 f5       	brne	.+104    	; 0x174e <vfprintf+0x696>
    16e6:	09 7e       	andi	r16, 0xE9	; 233
    16e8:	f0 2f       	mov	r31, r16
    16ea:	f8 70       	andi	r31, 0x08	; 8
    16ec:	4f 2e       	mov	r4, r31
    16ee:	03 fd       	sbrc	r16, 3
    16f0:	43 c0       	rjmp	.+134    	; 0x1778 <vfprintf+0x6c0>
    16f2:	00 ff       	sbrs	r16, 0
    16f4:	3d c0       	rjmp	.+122    	; 0x1770 <vfprintf+0x6b8>
    16f6:	5c 2c       	mov	r5, r12
    16f8:	d9 14       	cp	r13, r9
    16fa:	10 f4       	brcc	.+4      	; 0x1700 <vfprintf+0x648>
    16fc:	59 0c       	add	r5, r9
    16fe:	5d 18       	sub	r5, r13
    1700:	04 ff       	sbrs	r16, 4
    1702:	42 c0       	rjmp	.+132    	; 0x1788 <vfprintf+0x6d0>
    1704:	b7 01       	movw	r22, r14
    1706:	80 e3       	ldi	r24, 0x30	; 48
    1708:	90 e0       	ldi	r25, 0x00	; 0
    170a:	0e 94 3c 0e 	call	0x1c78	; 0x1c78 <fputc>
    170e:	02 ff       	sbrs	r16, 2
    1710:	07 c0       	rjmp	.+14     	; 0x1720 <vfprintf+0x668>
    1712:	01 fd       	sbrc	r16, 1
    1714:	36 c0       	rjmp	.+108    	; 0x1782 <vfprintf+0x6ca>
    1716:	88 e7       	ldi	r24, 0x78	; 120
    1718:	90 e0       	ldi	r25, 0x00	; 0
    171a:	b7 01       	movw	r22, r14
    171c:	0e 94 3c 0e 	call	0x1c78	; 0x1c78 <fputc>
    1720:	c5 14       	cp	r12, r5
    1722:	08 f4       	brcc	.+2      	; 0x1726 <vfprintf+0x66e>
    1724:	3e c0       	rjmp	.+124    	; 0x17a2 <vfprintf+0x6ea>
    1726:	ca 94       	dec	r12
    1728:	0c 2d       	mov	r16, r12
    172a:	10 e0       	ldi	r17, 0x00	; 0
    172c:	0f 5f       	subi	r16, 0xFF	; 255
    172e:	1f 4f       	sbci	r17, 0xFF	; 255
    1730:	0a 0d       	add	r16, r10
    1732:	1b 1d       	adc	r17, r11
    1734:	f8 01       	movw	r30, r16
    1736:	82 91       	ld	r24, -Z
    1738:	8f 01       	movw	r16, r30
    173a:	b7 01       	movw	r22, r14
    173c:	90 e0       	ldi	r25, 0x00	; 0
    173e:	0e 94 3c 0e 	call	0x1c78	; 0x1c78 <fputc>
    1742:	0a 15       	cp	r16, r10
    1744:	1b 05       	cpc	r17, r11
    1746:	b1 f7       	brne	.-20     	; 0x1734 <vfprintf+0x67c>
    1748:	a8 cd       	rjmp	.-1200   	; 0x129a <vfprintf+0x1e2>
    174a:	dc 2c       	mov	r13, r12
    174c:	c4 cf       	rjmp	.-120    	; 0x16d6 <vfprintf+0x61e>
    174e:	02 fd       	sbrc	r16, 2
    1750:	02 c0       	rjmp	.+4      	; 0x1756 <vfprintf+0x69e>
    1752:	d3 94       	inc	r13
    1754:	c9 cf       	rjmp	.-110    	; 0x16e8 <vfprintf+0x630>
    1756:	d3 94       	inc	r13
    1758:	d3 94       	inc	r13
    175a:	c6 cf       	rjmp	.-116    	; 0x16e8 <vfprintf+0x630>
    175c:	80 2f       	mov	r24, r16
    175e:	86 78       	andi	r24, 0x86	; 134
    1760:	19 f2       	breq	.-122    	; 0x16e8 <vfprintf+0x630>
    1762:	f7 cf       	rjmp	.-18     	; 0x1752 <vfprintf+0x69a>
    1764:	b7 01       	movw	r22, r14
    1766:	80 e2       	ldi	r24, 0x20	; 32
    1768:	90 e0       	ldi	r25, 0x00	; 0
    176a:	0e 94 3c 0e 	call	0x1c78	; 0x1c78 <fputc>
    176e:	d3 94       	inc	r13
    1770:	d9 14       	cp	r13, r9
    1772:	c0 f3       	brcs	.-16     	; 0x1764 <vfprintf+0x6ac>
    1774:	41 2c       	mov	r4, r1
    1776:	c4 cf       	rjmp	.-120    	; 0x1700 <vfprintf+0x648>
    1778:	d9 14       	cp	r13, r9
    177a:	e0 f7       	brcc	.-8      	; 0x1774 <vfprintf+0x6bc>
    177c:	49 2c       	mov	r4, r9
    177e:	4d 18       	sub	r4, r13
    1780:	bf cf       	rjmp	.-130    	; 0x1700 <vfprintf+0x648>
    1782:	88 e5       	ldi	r24, 0x58	; 88
    1784:	90 e0       	ldi	r25, 0x00	; 0
    1786:	c9 cf       	rjmp	.-110    	; 0x171a <vfprintf+0x662>
    1788:	80 2f       	mov	r24, r16
    178a:	86 78       	andi	r24, 0x86	; 134
    178c:	49 f2       	breq	.-110    	; 0x1720 <vfprintf+0x668>
    178e:	01 ff       	sbrs	r16, 1
    1790:	06 c0       	rjmp	.+12     	; 0x179e <vfprintf+0x6e6>
    1792:	8b e2       	ldi	r24, 0x2B	; 43
    1794:	07 fd       	sbrc	r16, 7
    1796:	8d e2       	ldi	r24, 0x2D	; 45
    1798:	b7 01       	movw	r22, r14
    179a:	90 e0       	ldi	r25, 0x00	; 0
    179c:	bf cf       	rjmp	.-130    	; 0x171c <vfprintf+0x664>
    179e:	80 e2       	ldi	r24, 0x20	; 32
    17a0:	f9 cf       	rjmp	.-14     	; 0x1794 <vfprintf+0x6dc>
    17a2:	b7 01       	movw	r22, r14
    17a4:	80 e3       	ldi	r24, 0x30	; 48
    17a6:	90 e0       	ldi	r25, 0x00	; 0
    17a8:	0e 94 3c 0e 	call	0x1c78	; 0x1c78 <fputc>
    17ac:	5a 94       	dec	r5
    17ae:	b8 cf       	rjmp	.-144    	; 0x1720 <vfprintf+0x668>
    17b0:	8f ef       	ldi	r24, 0xFF	; 255
    17b2:	9f ef       	ldi	r25, 0xFF	; 255
    17b4:	6e cf       	rjmp	.-292    	; 0x1692 <vfprintf+0x5da>
    17b6:	24 e0       	ldi	r18, 0x04	; 4
    17b8:	29 15       	cp	r18, r9
    17ba:	08 f4       	brcc	.+2      	; 0x17be <vfprintf+0x706>
    17bc:	78 cd       	rjmp	.-1296   	; 0x12ae <vfprintf+0x1f6>
    17be:	41 2c       	mov	r4, r1
    17c0:	5b cd       	rjmp	.-1354   	; 0x1278 <vfprintf+0x1c0>

000017c2 <startTimers>:
    17c2:	83 e0       	ldi	r24, 0x03	; 3
    17c4:	84 bd       	out	0x24, r24	; 36
    17c6:	85 bd       	out	0x25, r24	; 37
    17c8:	91 e0       	ldi	r25, 0x01	; 1
    17ca:	90 93 80 00 	sts	0x0080, r25	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
    17ce:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
    17d2:	90 93 b0 00 	sts	0x00B0, r25	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
    17d6:	84 e0       	ldi	r24, 0x04	; 4
    17d8:	80 93 b1 00 	sts	0x00B1, r24	; 0x8000b1 <__TEXT_REGION_LENGTH__+0x7e00b1>
    17dc:	ee e6       	ldi	r30, 0x6E	; 110
    17de:	f0 e0       	ldi	r31, 0x00	; 0
    17e0:	80 81       	ld	r24, Z
    17e2:	81 60       	ori	r24, 0x01	; 1
    17e4:	80 83       	st	Z, r24
    17e6:	08 95       	ret

000017e8 <__udivmodsi4>:
    17e8:	a1 e2       	ldi	r26, 0x21	; 33
    17ea:	1a 2e       	mov	r1, r26
    17ec:	aa 1b       	sub	r26, r26
    17ee:	bb 1b       	sub	r27, r27
    17f0:	fd 01       	movw	r30, r26
    17f2:	0d c0       	rjmp	.+26     	; 0x180e <__udivmodsi4_ep>

000017f4 <__udivmodsi4_loop>:
    17f4:	aa 1f       	adc	r26, r26
    17f6:	bb 1f       	adc	r27, r27
    17f8:	ee 1f       	adc	r30, r30
    17fa:	ff 1f       	adc	r31, r31
    17fc:	a2 17       	cp	r26, r18
    17fe:	b3 07       	cpc	r27, r19
    1800:	e4 07       	cpc	r30, r20
    1802:	f5 07       	cpc	r31, r21
    1804:	20 f0       	brcs	.+8      	; 0x180e <__udivmodsi4_ep>
    1806:	a2 1b       	sub	r26, r18
    1808:	b3 0b       	sbc	r27, r19
    180a:	e4 0b       	sbc	r30, r20
    180c:	f5 0b       	sbc	r31, r21

0000180e <__udivmodsi4_ep>:
    180e:	66 1f       	adc	r22, r22
    1810:	77 1f       	adc	r23, r23
    1812:	88 1f       	adc	r24, r24
    1814:	99 1f       	adc	r25, r25
    1816:	1a 94       	dec	r1
    1818:	69 f7       	brne	.-38     	; 0x17f4 <__udivmodsi4_loop>
    181a:	60 95       	com	r22
    181c:	70 95       	com	r23
    181e:	80 95       	com	r24
    1820:	90 95       	com	r25
    1822:	9b 01       	movw	r18, r22
    1824:	ac 01       	movw	r20, r24
    1826:	bd 01       	movw	r22, r26
    1828:	cf 01       	movw	r24, r30
    182a:	08 95       	ret

0000182c <__prologue_saves__>:
    182c:	2f 92       	push	r2
    182e:	3f 92       	push	r3
    1830:	4f 92       	push	r4
    1832:	5f 92       	push	r5
    1834:	6f 92       	push	r6
    1836:	7f 92       	push	r7
    1838:	8f 92       	push	r8
    183a:	9f 92       	push	r9
    183c:	af 92       	push	r10
    183e:	bf 92       	push	r11
    1840:	cf 92       	push	r12
    1842:	df 92       	push	r13
    1844:	ef 92       	push	r14
    1846:	ff 92       	push	r15
    1848:	0f 93       	push	r16
    184a:	1f 93       	push	r17
    184c:	cf 93       	push	r28
    184e:	df 93       	push	r29
    1850:	cd b7       	in	r28, 0x3d	; 61
    1852:	de b7       	in	r29, 0x3e	; 62
    1854:	ca 1b       	sub	r28, r26
    1856:	db 0b       	sbc	r29, r27
    1858:	0f b6       	in	r0, 0x3f	; 63
    185a:	f8 94       	cli
    185c:	de bf       	out	0x3e, r29	; 62
    185e:	0f be       	out	0x3f, r0	; 63
    1860:	cd bf       	out	0x3d, r28	; 61
    1862:	09 94       	ijmp

00001864 <__epilogue_restores__>:
    1864:	2a 88       	ldd	r2, Y+18	; 0x12
    1866:	39 88       	ldd	r3, Y+17	; 0x11
    1868:	48 88       	ldd	r4, Y+16	; 0x10
    186a:	5f 84       	ldd	r5, Y+15	; 0x0f
    186c:	6e 84       	ldd	r6, Y+14	; 0x0e
    186e:	7d 84       	ldd	r7, Y+13	; 0x0d
    1870:	8c 84       	ldd	r8, Y+12	; 0x0c
    1872:	9b 84       	ldd	r9, Y+11	; 0x0b
    1874:	aa 84       	ldd	r10, Y+10	; 0x0a
    1876:	b9 84       	ldd	r11, Y+9	; 0x09
    1878:	c8 84       	ldd	r12, Y+8	; 0x08
    187a:	df 80       	ldd	r13, Y+7	; 0x07
    187c:	ee 80       	ldd	r14, Y+6	; 0x06
    187e:	fd 80       	ldd	r15, Y+5	; 0x05
    1880:	0c 81       	ldd	r16, Y+4	; 0x04
    1882:	1b 81       	ldd	r17, Y+3	; 0x03
    1884:	aa 81       	ldd	r26, Y+2	; 0x02
    1886:	b9 81       	ldd	r27, Y+1	; 0x01
    1888:	ce 0f       	add	r28, r30
    188a:	d1 1d       	adc	r29, r1
    188c:	0f b6       	in	r0, 0x3f	; 63
    188e:	f8 94       	cli
    1890:	de bf       	out	0x3e, r29	; 62
    1892:	0f be       	out	0x3f, r0	; 63
    1894:	cd bf       	out	0x3d, r28	; 61
    1896:	ed 01       	movw	r28, r26
    1898:	08 95       	ret

0000189a <__tablejump2__>:
    189a:	ee 0f       	add	r30, r30
    189c:	ff 1f       	adc	r31, r31
    189e:	05 90       	lpm	r0, Z+
    18a0:	f4 91       	lpm	r31, Z
    18a2:	e0 2d       	mov	r30, r0
    18a4:	09 94       	ijmp

000018a6 <__floatunsisf>:
    18a6:	e8 94       	clt
    18a8:	09 c0       	rjmp	.+18     	; 0x18bc <__floatsisf+0x12>

000018aa <__floatsisf>:
    18aa:	97 fb       	bst	r25, 7
    18ac:	3e f4       	brtc	.+14     	; 0x18bc <__floatsisf+0x12>
    18ae:	90 95       	com	r25
    18b0:	80 95       	com	r24
    18b2:	70 95       	com	r23
    18b4:	61 95       	neg	r22
    18b6:	7f 4f       	sbci	r23, 0xFF	; 255
    18b8:	8f 4f       	sbci	r24, 0xFF	; 255
    18ba:	9f 4f       	sbci	r25, 0xFF	; 255
    18bc:	99 23       	and	r25, r25
    18be:	a9 f0       	breq	.+42     	; 0x18ea <__floatsisf+0x40>
    18c0:	f9 2f       	mov	r31, r25
    18c2:	96 e9       	ldi	r25, 0x96	; 150
    18c4:	bb 27       	eor	r27, r27
    18c6:	93 95       	inc	r25
    18c8:	f6 95       	lsr	r31
    18ca:	87 95       	ror	r24
    18cc:	77 95       	ror	r23
    18ce:	67 95       	ror	r22
    18d0:	b7 95       	ror	r27
    18d2:	f1 11       	cpse	r31, r1
    18d4:	f8 cf       	rjmp	.-16     	; 0x18c6 <__floatsisf+0x1c>
    18d6:	fa f4       	brpl	.+62     	; 0x1916 <__floatsisf+0x6c>
    18d8:	bb 0f       	add	r27, r27
    18da:	11 f4       	brne	.+4      	; 0x18e0 <__floatsisf+0x36>
    18dc:	60 ff       	sbrs	r22, 0
    18de:	1b c0       	rjmp	.+54     	; 0x1916 <__floatsisf+0x6c>
    18e0:	6f 5f       	subi	r22, 0xFF	; 255
    18e2:	7f 4f       	sbci	r23, 0xFF	; 255
    18e4:	8f 4f       	sbci	r24, 0xFF	; 255
    18e6:	9f 4f       	sbci	r25, 0xFF	; 255
    18e8:	16 c0       	rjmp	.+44     	; 0x1916 <__floatsisf+0x6c>
    18ea:	88 23       	and	r24, r24
    18ec:	11 f0       	breq	.+4      	; 0x18f2 <__floatsisf+0x48>
    18ee:	96 e9       	ldi	r25, 0x96	; 150
    18f0:	11 c0       	rjmp	.+34     	; 0x1914 <__floatsisf+0x6a>
    18f2:	77 23       	and	r23, r23
    18f4:	21 f0       	breq	.+8      	; 0x18fe <__floatsisf+0x54>
    18f6:	9e e8       	ldi	r25, 0x8E	; 142
    18f8:	87 2f       	mov	r24, r23
    18fa:	76 2f       	mov	r23, r22
    18fc:	05 c0       	rjmp	.+10     	; 0x1908 <__floatsisf+0x5e>
    18fe:	66 23       	and	r22, r22
    1900:	71 f0       	breq	.+28     	; 0x191e <__floatsisf+0x74>
    1902:	96 e8       	ldi	r25, 0x86	; 134
    1904:	86 2f       	mov	r24, r22
    1906:	70 e0       	ldi	r23, 0x00	; 0
    1908:	60 e0       	ldi	r22, 0x00	; 0
    190a:	2a f0       	brmi	.+10     	; 0x1916 <__floatsisf+0x6c>
    190c:	9a 95       	dec	r25
    190e:	66 0f       	add	r22, r22
    1910:	77 1f       	adc	r23, r23
    1912:	88 1f       	adc	r24, r24
    1914:	da f7       	brpl	.-10     	; 0x190c <__floatsisf+0x62>
    1916:	88 0f       	add	r24, r24
    1918:	96 95       	lsr	r25
    191a:	87 95       	ror	r24
    191c:	97 f9       	bld	r25, 7
    191e:	08 95       	ret

00001920 <__mulsf3>:
    1920:	0e 94 a3 0c 	call	0x1946	; 0x1946 <__mulsf3x>
    1924:	0c 94 14 0d 	jmp	0x1a28	; 0x1a28 <__fp_round>
    1928:	0e 94 06 0d 	call	0x1a0c	; 0x1a0c <__fp_pscA>
    192c:	38 f0       	brcs	.+14     	; 0x193c <__mulsf3+0x1c>
    192e:	0e 94 0d 0d 	call	0x1a1a	; 0x1a1a <__fp_pscB>
    1932:	20 f0       	brcs	.+8      	; 0x193c <__mulsf3+0x1c>
    1934:	95 23       	and	r25, r21
    1936:	11 f0       	breq	.+4      	; 0x193c <__mulsf3+0x1c>
    1938:	0c 94 fd 0c 	jmp	0x19fa	; 0x19fa <__fp_inf>
    193c:	0c 94 03 0d 	jmp	0x1a06	; 0x1a06 <__fp_nan>
    1940:	11 24       	eor	r1, r1
    1942:	0c 94 48 0d 	jmp	0x1a90	; 0x1a90 <__fp_szero>

00001946 <__mulsf3x>:
    1946:	0e 94 25 0d 	call	0x1a4a	; 0x1a4a <__fp_split3>
    194a:	70 f3       	brcs	.-36     	; 0x1928 <__mulsf3+0x8>

0000194c <__mulsf3_pse>:
    194c:	95 9f       	mul	r25, r21
    194e:	c1 f3       	breq	.-16     	; 0x1940 <__mulsf3+0x20>
    1950:	95 0f       	add	r25, r21
    1952:	50 e0       	ldi	r21, 0x00	; 0
    1954:	55 1f       	adc	r21, r21
    1956:	62 9f       	mul	r22, r18
    1958:	f0 01       	movw	r30, r0
    195a:	72 9f       	mul	r23, r18
    195c:	bb 27       	eor	r27, r27
    195e:	f0 0d       	add	r31, r0
    1960:	b1 1d       	adc	r27, r1
    1962:	63 9f       	mul	r22, r19
    1964:	aa 27       	eor	r26, r26
    1966:	f0 0d       	add	r31, r0
    1968:	b1 1d       	adc	r27, r1
    196a:	aa 1f       	adc	r26, r26
    196c:	64 9f       	mul	r22, r20
    196e:	66 27       	eor	r22, r22
    1970:	b0 0d       	add	r27, r0
    1972:	a1 1d       	adc	r26, r1
    1974:	66 1f       	adc	r22, r22
    1976:	82 9f       	mul	r24, r18
    1978:	22 27       	eor	r18, r18
    197a:	b0 0d       	add	r27, r0
    197c:	a1 1d       	adc	r26, r1
    197e:	62 1f       	adc	r22, r18
    1980:	73 9f       	mul	r23, r19
    1982:	b0 0d       	add	r27, r0
    1984:	a1 1d       	adc	r26, r1
    1986:	62 1f       	adc	r22, r18
    1988:	83 9f       	mul	r24, r19
    198a:	a0 0d       	add	r26, r0
    198c:	61 1d       	adc	r22, r1
    198e:	22 1f       	adc	r18, r18
    1990:	74 9f       	mul	r23, r20
    1992:	33 27       	eor	r19, r19
    1994:	a0 0d       	add	r26, r0
    1996:	61 1d       	adc	r22, r1
    1998:	23 1f       	adc	r18, r19
    199a:	84 9f       	mul	r24, r20
    199c:	60 0d       	add	r22, r0
    199e:	21 1d       	adc	r18, r1
    19a0:	82 2f       	mov	r24, r18
    19a2:	76 2f       	mov	r23, r22
    19a4:	6a 2f       	mov	r22, r26
    19a6:	11 24       	eor	r1, r1
    19a8:	9f 57       	subi	r25, 0x7F	; 127
    19aa:	50 40       	sbci	r21, 0x00	; 0
    19ac:	9a f0       	brmi	.+38     	; 0x19d4 <__mulsf3_pse+0x88>
    19ae:	f1 f0       	breq	.+60     	; 0x19ec <__mulsf3_pse+0xa0>
    19b0:	88 23       	and	r24, r24
    19b2:	4a f0       	brmi	.+18     	; 0x19c6 <__mulsf3_pse+0x7a>
    19b4:	ee 0f       	add	r30, r30
    19b6:	ff 1f       	adc	r31, r31
    19b8:	bb 1f       	adc	r27, r27
    19ba:	66 1f       	adc	r22, r22
    19bc:	77 1f       	adc	r23, r23
    19be:	88 1f       	adc	r24, r24
    19c0:	91 50       	subi	r25, 0x01	; 1
    19c2:	50 40       	sbci	r21, 0x00	; 0
    19c4:	a9 f7       	brne	.-22     	; 0x19b0 <__mulsf3_pse+0x64>
    19c6:	9e 3f       	cpi	r25, 0xFE	; 254
    19c8:	51 05       	cpc	r21, r1
    19ca:	80 f0       	brcs	.+32     	; 0x19ec <__mulsf3_pse+0xa0>
    19cc:	0c 94 fd 0c 	jmp	0x19fa	; 0x19fa <__fp_inf>
    19d0:	0c 94 48 0d 	jmp	0x1a90	; 0x1a90 <__fp_szero>
    19d4:	5f 3f       	cpi	r21, 0xFF	; 255
    19d6:	e4 f3       	brlt	.-8      	; 0x19d0 <__mulsf3_pse+0x84>
    19d8:	98 3e       	cpi	r25, 0xE8	; 232
    19da:	d4 f3       	brlt	.-12     	; 0x19d0 <__mulsf3_pse+0x84>
    19dc:	86 95       	lsr	r24
    19de:	77 95       	ror	r23
    19e0:	67 95       	ror	r22
    19e2:	b7 95       	ror	r27
    19e4:	f7 95       	ror	r31
    19e6:	e7 95       	ror	r30
    19e8:	9f 5f       	subi	r25, 0xFF	; 255
    19ea:	c1 f7       	brne	.-16     	; 0x19dc <__mulsf3_pse+0x90>
    19ec:	fe 2b       	or	r31, r30
    19ee:	88 0f       	add	r24, r24
    19f0:	91 1d       	adc	r25, r1
    19f2:	96 95       	lsr	r25
    19f4:	87 95       	ror	r24
    19f6:	97 f9       	bld	r25, 7
    19f8:	08 95       	ret

000019fa <__fp_inf>:
    19fa:	97 f9       	bld	r25, 7
    19fc:	9f 67       	ori	r25, 0x7F	; 127
    19fe:	80 e8       	ldi	r24, 0x80	; 128
    1a00:	70 e0       	ldi	r23, 0x00	; 0
    1a02:	60 e0       	ldi	r22, 0x00	; 0
    1a04:	08 95       	ret

00001a06 <__fp_nan>:
    1a06:	9f ef       	ldi	r25, 0xFF	; 255
    1a08:	80 ec       	ldi	r24, 0xC0	; 192
    1a0a:	08 95       	ret

00001a0c <__fp_pscA>:
    1a0c:	00 24       	eor	r0, r0
    1a0e:	0a 94       	dec	r0
    1a10:	16 16       	cp	r1, r22
    1a12:	17 06       	cpc	r1, r23
    1a14:	18 06       	cpc	r1, r24
    1a16:	09 06       	cpc	r0, r25
    1a18:	08 95       	ret

00001a1a <__fp_pscB>:
    1a1a:	00 24       	eor	r0, r0
    1a1c:	0a 94       	dec	r0
    1a1e:	12 16       	cp	r1, r18
    1a20:	13 06       	cpc	r1, r19
    1a22:	14 06       	cpc	r1, r20
    1a24:	05 06       	cpc	r0, r21
    1a26:	08 95       	ret

00001a28 <__fp_round>:
    1a28:	09 2e       	mov	r0, r25
    1a2a:	03 94       	inc	r0
    1a2c:	00 0c       	add	r0, r0
    1a2e:	11 f4       	brne	.+4      	; 0x1a34 <__fp_round+0xc>
    1a30:	88 23       	and	r24, r24
    1a32:	52 f0       	brmi	.+20     	; 0x1a48 <__fp_round+0x20>
    1a34:	bb 0f       	add	r27, r27
    1a36:	40 f4       	brcc	.+16     	; 0x1a48 <__fp_round+0x20>
    1a38:	bf 2b       	or	r27, r31
    1a3a:	11 f4       	brne	.+4      	; 0x1a40 <__fp_round+0x18>
    1a3c:	60 ff       	sbrs	r22, 0
    1a3e:	04 c0       	rjmp	.+8      	; 0x1a48 <__fp_round+0x20>
    1a40:	6f 5f       	subi	r22, 0xFF	; 255
    1a42:	7f 4f       	sbci	r23, 0xFF	; 255
    1a44:	8f 4f       	sbci	r24, 0xFF	; 255
    1a46:	9f 4f       	sbci	r25, 0xFF	; 255
    1a48:	08 95       	ret

00001a4a <__fp_split3>:
    1a4a:	57 fd       	sbrc	r21, 7
    1a4c:	90 58       	subi	r25, 0x80	; 128
    1a4e:	44 0f       	add	r20, r20
    1a50:	55 1f       	adc	r21, r21
    1a52:	59 f0       	breq	.+22     	; 0x1a6a <__fp_splitA+0x10>
    1a54:	5f 3f       	cpi	r21, 0xFF	; 255
    1a56:	71 f0       	breq	.+28     	; 0x1a74 <__fp_splitA+0x1a>
    1a58:	47 95       	ror	r20

00001a5a <__fp_splitA>:
    1a5a:	88 0f       	add	r24, r24
    1a5c:	97 fb       	bst	r25, 7
    1a5e:	99 1f       	adc	r25, r25
    1a60:	61 f0       	breq	.+24     	; 0x1a7a <__fp_splitA+0x20>
    1a62:	9f 3f       	cpi	r25, 0xFF	; 255
    1a64:	79 f0       	breq	.+30     	; 0x1a84 <__fp_splitA+0x2a>
    1a66:	87 95       	ror	r24
    1a68:	08 95       	ret
    1a6a:	12 16       	cp	r1, r18
    1a6c:	13 06       	cpc	r1, r19
    1a6e:	14 06       	cpc	r1, r20
    1a70:	55 1f       	adc	r21, r21
    1a72:	f2 cf       	rjmp	.-28     	; 0x1a58 <__fp_split3+0xe>
    1a74:	46 95       	lsr	r20
    1a76:	f1 df       	rcall	.-30     	; 0x1a5a <__fp_splitA>
    1a78:	08 c0       	rjmp	.+16     	; 0x1a8a <__fp_splitA+0x30>
    1a7a:	16 16       	cp	r1, r22
    1a7c:	17 06       	cpc	r1, r23
    1a7e:	18 06       	cpc	r1, r24
    1a80:	99 1f       	adc	r25, r25
    1a82:	f1 cf       	rjmp	.-30     	; 0x1a66 <__fp_splitA+0xc>
    1a84:	86 95       	lsr	r24
    1a86:	71 05       	cpc	r23, r1
    1a88:	61 05       	cpc	r22, r1
    1a8a:	08 94       	sec
    1a8c:	08 95       	ret

00001a8e <__fp_zero>:
    1a8e:	e8 94       	clt

00001a90 <__fp_szero>:
    1a90:	bb 27       	eor	r27, r27
    1a92:	66 27       	eor	r22, r22
    1a94:	77 27       	eor	r23, r23
    1a96:	cb 01       	movw	r24, r22
    1a98:	97 f9       	bld	r25, 7
    1a9a:	08 95       	ret

00001a9c <__ftoa_engine>:
    1a9c:	28 30       	cpi	r18, 0x08	; 8
    1a9e:	08 f0       	brcs	.+2      	; 0x1aa2 <__ftoa_engine+0x6>
    1aa0:	27 e0       	ldi	r18, 0x07	; 7
    1aa2:	33 27       	eor	r19, r19
    1aa4:	da 01       	movw	r26, r20
    1aa6:	99 0f       	add	r25, r25
    1aa8:	31 1d       	adc	r19, r1
    1aaa:	87 fd       	sbrc	r24, 7
    1aac:	91 60       	ori	r25, 0x01	; 1
    1aae:	00 96       	adiw	r24, 0x00	; 0
    1ab0:	61 05       	cpc	r22, r1
    1ab2:	71 05       	cpc	r23, r1
    1ab4:	39 f4       	brne	.+14     	; 0x1ac4 <__ftoa_engine+0x28>
    1ab6:	32 60       	ori	r19, 0x02	; 2
    1ab8:	2e 5f       	subi	r18, 0xFE	; 254
    1aba:	3d 93       	st	X+, r19
    1abc:	30 e3       	ldi	r19, 0x30	; 48
    1abe:	2a 95       	dec	r18
    1ac0:	e1 f7       	brne	.-8      	; 0x1aba <__ftoa_engine+0x1e>
    1ac2:	08 95       	ret
    1ac4:	9f 3f       	cpi	r25, 0xFF	; 255
    1ac6:	30 f0       	brcs	.+12     	; 0x1ad4 <__ftoa_engine+0x38>
    1ac8:	80 38       	cpi	r24, 0x80	; 128
    1aca:	71 05       	cpc	r23, r1
    1acc:	61 05       	cpc	r22, r1
    1ace:	09 f0       	breq	.+2      	; 0x1ad2 <__ftoa_engine+0x36>
    1ad0:	3c 5f       	subi	r19, 0xFC	; 252
    1ad2:	3c 5f       	subi	r19, 0xFC	; 252
    1ad4:	3d 93       	st	X+, r19
    1ad6:	91 30       	cpi	r25, 0x01	; 1
    1ad8:	08 f0       	brcs	.+2      	; 0x1adc <__ftoa_engine+0x40>
    1ada:	80 68       	ori	r24, 0x80	; 128
    1adc:	91 1d       	adc	r25, r1
    1ade:	df 93       	push	r29
    1ae0:	cf 93       	push	r28
    1ae2:	1f 93       	push	r17
    1ae4:	0f 93       	push	r16
    1ae6:	ff 92       	push	r15
    1ae8:	ef 92       	push	r14
    1aea:	19 2f       	mov	r17, r25
    1aec:	98 7f       	andi	r25, 0xF8	; 248
    1aee:	96 95       	lsr	r25
    1af0:	e9 2f       	mov	r30, r25
    1af2:	96 95       	lsr	r25
    1af4:	96 95       	lsr	r25
    1af6:	e9 0f       	add	r30, r25
    1af8:	ff 27       	eor	r31, r31
    1afa:	e6 53       	subi	r30, 0x36	; 54
    1afc:	ff 4f       	sbci	r31, 0xFF	; 255
    1afe:	99 27       	eor	r25, r25
    1b00:	33 27       	eor	r19, r19
    1b02:	ee 24       	eor	r14, r14
    1b04:	ff 24       	eor	r15, r15
    1b06:	a7 01       	movw	r20, r14
    1b08:	e7 01       	movw	r28, r14
    1b0a:	05 90       	lpm	r0, Z+
    1b0c:	08 94       	sec
    1b0e:	07 94       	ror	r0
    1b10:	28 f4       	brcc	.+10     	; 0x1b1c <__ftoa_engine+0x80>
    1b12:	36 0f       	add	r19, r22
    1b14:	e7 1e       	adc	r14, r23
    1b16:	f8 1e       	adc	r15, r24
    1b18:	49 1f       	adc	r20, r25
    1b1a:	51 1d       	adc	r21, r1
    1b1c:	66 0f       	add	r22, r22
    1b1e:	77 1f       	adc	r23, r23
    1b20:	88 1f       	adc	r24, r24
    1b22:	99 1f       	adc	r25, r25
    1b24:	06 94       	lsr	r0
    1b26:	a1 f7       	brne	.-24     	; 0x1b10 <__ftoa_engine+0x74>
    1b28:	05 90       	lpm	r0, Z+
    1b2a:	07 94       	ror	r0
    1b2c:	28 f4       	brcc	.+10     	; 0x1b38 <__ftoa_engine+0x9c>
    1b2e:	e7 0e       	add	r14, r23
    1b30:	f8 1e       	adc	r15, r24
    1b32:	49 1f       	adc	r20, r25
    1b34:	56 1f       	adc	r21, r22
    1b36:	c1 1d       	adc	r28, r1
    1b38:	77 0f       	add	r23, r23
    1b3a:	88 1f       	adc	r24, r24
    1b3c:	99 1f       	adc	r25, r25
    1b3e:	66 1f       	adc	r22, r22
    1b40:	06 94       	lsr	r0
    1b42:	a1 f7       	brne	.-24     	; 0x1b2c <__ftoa_engine+0x90>
    1b44:	05 90       	lpm	r0, Z+
    1b46:	07 94       	ror	r0
    1b48:	28 f4       	brcc	.+10     	; 0x1b54 <__ftoa_engine+0xb8>
    1b4a:	f8 0e       	add	r15, r24
    1b4c:	49 1f       	adc	r20, r25
    1b4e:	56 1f       	adc	r21, r22
    1b50:	c7 1f       	adc	r28, r23
    1b52:	d1 1d       	adc	r29, r1
    1b54:	88 0f       	add	r24, r24
    1b56:	99 1f       	adc	r25, r25
    1b58:	66 1f       	adc	r22, r22
    1b5a:	77 1f       	adc	r23, r23
    1b5c:	06 94       	lsr	r0
    1b5e:	a1 f7       	brne	.-24     	; 0x1b48 <__ftoa_engine+0xac>
    1b60:	05 90       	lpm	r0, Z+
    1b62:	07 94       	ror	r0
    1b64:	20 f4       	brcc	.+8      	; 0x1b6e <__ftoa_engine+0xd2>
    1b66:	49 0f       	add	r20, r25
    1b68:	56 1f       	adc	r21, r22
    1b6a:	c7 1f       	adc	r28, r23
    1b6c:	d8 1f       	adc	r29, r24
    1b6e:	99 0f       	add	r25, r25
    1b70:	66 1f       	adc	r22, r22
    1b72:	77 1f       	adc	r23, r23
    1b74:	88 1f       	adc	r24, r24
    1b76:	06 94       	lsr	r0
    1b78:	a9 f7       	brne	.-22     	; 0x1b64 <__ftoa_engine+0xc8>
    1b7a:	84 91       	lpm	r24, Z
    1b7c:	10 95       	com	r17
    1b7e:	17 70       	andi	r17, 0x07	; 7
    1b80:	41 f0       	breq	.+16     	; 0x1b92 <__ftoa_engine+0xf6>
    1b82:	d6 95       	lsr	r29
    1b84:	c7 95       	ror	r28
    1b86:	57 95       	ror	r21
    1b88:	47 95       	ror	r20
    1b8a:	f7 94       	ror	r15
    1b8c:	e7 94       	ror	r14
    1b8e:	1a 95       	dec	r17
    1b90:	c1 f7       	brne	.-16     	; 0x1b82 <__ftoa_engine+0xe6>
    1b92:	e0 e7       	ldi	r30, 0x70	; 112
    1b94:	f0 e0       	ldi	r31, 0x00	; 0
    1b96:	68 94       	set
    1b98:	15 90       	lpm	r1, Z+
    1b9a:	15 91       	lpm	r17, Z+
    1b9c:	35 91       	lpm	r19, Z+
    1b9e:	65 91       	lpm	r22, Z+
    1ba0:	95 91       	lpm	r25, Z+
    1ba2:	05 90       	lpm	r0, Z+
    1ba4:	7f e2       	ldi	r23, 0x2F	; 47
    1ba6:	73 95       	inc	r23
    1ba8:	e1 18       	sub	r14, r1
    1baa:	f1 0a       	sbc	r15, r17
    1bac:	43 0b       	sbc	r20, r19
    1bae:	56 0b       	sbc	r21, r22
    1bb0:	c9 0b       	sbc	r28, r25
    1bb2:	d0 09       	sbc	r29, r0
    1bb4:	c0 f7       	brcc	.-16     	; 0x1ba6 <__ftoa_engine+0x10a>
    1bb6:	e1 0c       	add	r14, r1
    1bb8:	f1 1e       	adc	r15, r17
    1bba:	43 1f       	adc	r20, r19
    1bbc:	56 1f       	adc	r21, r22
    1bbe:	c9 1f       	adc	r28, r25
    1bc0:	d0 1d       	adc	r29, r0
    1bc2:	7e f4       	brtc	.+30     	; 0x1be2 <__ftoa_engine+0x146>
    1bc4:	70 33       	cpi	r23, 0x30	; 48
    1bc6:	11 f4       	brne	.+4      	; 0x1bcc <__ftoa_engine+0x130>
    1bc8:	8a 95       	dec	r24
    1bca:	e6 cf       	rjmp	.-52     	; 0x1b98 <__ftoa_engine+0xfc>
    1bcc:	e8 94       	clt
    1bce:	01 50       	subi	r16, 0x01	; 1
    1bd0:	30 f0       	brcs	.+12     	; 0x1bde <__ftoa_engine+0x142>
    1bd2:	08 0f       	add	r16, r24
    1bd4:	0a f4       	brpl	.+2      	; 0x1bd8 <__ftoa_engine+0x13c>
    1bd6:	00 27       	eor	r16, r16
    1bd8:	02 17       	cp	r16, r18
    1bda:	08 f4       	brcc	.+2      	; 0x1bde <__ftoa_engine+0x142>
    1bdc:	20 2f       	mov	r18, r16
    1bde:	23 95       	inc	r18
    1be0:	02 2f       	mov	r16, r18
    1be2:	7a 33       	cpi	r23, 0x3A	; 58
    1be4:	28 f0       	brcs	.+10     	; 0x1bf0 <__ftoa_engine+0x154>
    1be6:	79 e3       	ldi	r23, 0x39	; 57
    1be8:	7d 93       	st	X+, r23
    1bea:	2a 95       	dec	r18
    1bec:	e9 f7       	brne	.-6      	; 0x1be8 <__ftoa_engine+0x14c>
    1bee:	10 c0       	rjmp	.+32     	; 0x1c10 <__ftoa_engine+0x174>
    1bf0:	7d 93       	st	X+, r23
    1bf2:	2a 95       	dec	r18
    1bf4:	89 f6       	brne	.-94     	; 0x1b98 <__ftoa_engine+0xfc>
    1bf6:	06 94       	lsr	r0
    1bf8:	97 95       	ror	r25
    1bfa:	67 95       	ror	r22
    1bfc:	37 95       	ror	r19
    1bfe:	17 95       	ror	r17
    1c00:	17 94       	ror	r1
    1c02:	e1 18       	sub	r14, r1
    1c04:	f1 0a       	sbc	r15, r17
    1c06:	43 0b       	sbc	r20, r19
    1c08:	56 0b       	sbc	r21, r22
    1c0a:	c9 0b       	sbc	r28, r25
    1c0c:	d0 09       	sbc	r29, r0
    1c0e:	98 f0       	brcs	.+38     	; 0x1c36 <__ftoa_engine+0x19a>
    1c10:	23 95       	inc	r18
    1c12:	7e 91       	ld	r23, -X
    1c14:	73 95       	inc	r23
    1c16:	7a 33       	cpi	r23, 0x3A	; 58
    1c18:	08 f0       	brcs	.+2      	; 0x1c1c <__ftoa_engine+0x180>
    1c1a:	70 e3       	ldi	r23, 0x30	; 48
    1c1c:	7c 93       	st	X, r23
    1c1e:	20 13       	cpse	r18, r16
    1c20:	b8 f7       	brcc	.-18     	; 0x1c10 <__ftoa_engine+0x174>
    1c22:	7e 91       	ld	r23, -X
    1c24:	70 61       	ori	r23, 0x10	; 16
    1c26:	7d 93       	st	X+, r23
    1c28:	30 f0       	brcs	.+12     	; 0x1c36 <__ftoa_engine+0x19a>
    1c2a:	83 95       	inc	r24
    1c2c:	71 e3       	ldi	r23, 0x31	; 49
    1c2e:	7d 93       	st	X+, r23
    1c30:	70 e3       	ldi	r23, 0x30	; 48
    1c32:	2a 95       	dec	r18
    1c34:	e1 f7       	brne	.-8      	; 0x1c2e <__ftoa_engine+0x192>
    1c36:	11 24       	eor	r1, r1
    1c38:	ef 90       	pop	r14
    1c3a:	ff 90       	pop	r15
    1c3c:	0f 91       	pop	r16
    1c3e:	1f 91       	pop	r17
    1c40:	cf 91       	pop	r28
    1c42:	df 91       	pop	r29
    1c44:	99 27       	eor	r25, r25
    1c46:	87 fd       	sbrc	r24, 7
    1c48:	90 95       	com	r25
    1c4a:	08 95       	ret

00001c4c <strnlen_P>:
    1c4c:	fc 01       	movw	r30, r24
    1c4e:	05 90       	lpm	r0, Z+
    1c50:	61 50       	subi	r22, 0x01	; 1
    1c52:	70 40       	sbci	r23, 0x00	; 0
    1c54:	01 10       	cpse	r0, r1
    1c56:	d8 f7       	brcc	.-10     	; 0x1c4e <strnlen_P+0x2>
    1c58:	80 95       	com	r24
    1c5a:	90 95       	com	r25
    1c5c:	8e 0f       	add	r24, r30
    1c5e:	9f 1f       	adc	r25, r31
    1c60:	08 95       	ret

00001c62 <strnlen>:
    1c62:	fc 01       	movw	r30, r24
    1c64:	61 50       	subi	r22, 0x01	; 1
    1c66:	70 40       	sbci	r23, 0x00	; 0
    1c68:	01 90       	ld	r0, Z+
    1c6a:	01 10       	cpse	r0, r1
    1c6c:	d8 f7       	brcc	.-10     	; 0x1c64 <strnlen+0x2>
    1c6e:	80 95       	com	r24
    1c70:	90 95       	com	r25
    1c72:	8e 0f       	add	r24, r30
    1c74:	9f 1f       	adc	r25, r31
    1c76:	08 95       	ret

00001c78 <fputc>:
    1c78:	0f 93       	push	r16
    1c7a:	1f 93       	push	r17
    1c7c:	cf 93       	push	r28
    1c7e:	df 93       	push	r29
    1c80:	18 2f       	mov	r17, r24
    1c82:	09 2f       	mov	r16, r25
    1c84:	eb 01       	movw	r28, r22
    1c86:	8b 81       	ldd	r24, Y+3	; 0x03
    1c88:	81 fd       	sbrc	r24, 1
    1c8a:	09 c0       	rjmp	.+18     	; 0x1c9e <fputc+0x26>
    1c8c:	1f ef       	ldi	r17, 0xFF	; 255
    1c8e:	0f ef       	ldi	r16, 0xFF	; 255
    1c90:	81 2f       	mov	r24, r17
    1c92:	90 2f       	mov	r25, r16
    1c94:	df 91       	pop	r29
    1c96:	cf 91       	pop	r28
    1c98:	1f 91       	pop	r17
    1c9a:	0f 91       	pop	r16
    1c9c:	08 95       	ret
    1c9e:	82 ff       	sbrs	r24, 2
    1ca0:	14 c0       	rjmp	.+40     	; 0x1cca <fputc+0x52>
    1ca2:	2e 81       	ldd	r18, Y+6	; 0x06
    1ca4:	3f 81       	ldd	r19, Y+7	; 0x07
    1ca6:	8c 81       	ldd	r24, Y+4	; 0x04
    1ca8:	9d 81       	ldd	r25, Y+5	; 0x05
    1caa:	28 17       	cp	r18, r24
    1cac:	39 07       	cpc	r19, r25
    1cae:	3c f4       	brge	.+14     	; 0x1cbe <fputc+0x46>
    1cb0:	e8 81       	ld	r30, Y
    1cb2:	f9 81       	ldd	r31, Y+1	; 0x01
    1cb4:	cf 01       	movw	r24, r30
    1cb6:	01 96       	adiw	r24, 0x01	; 1
    1cb8:	99 83       	std	Y+1, r25	; 0x01
    1cba:	88 83       	st	Y, r24
    1cbc:	10 83       	st	Z, r17
    1cbe:	8e 81       	ldd	r24, Y+6	; 0x06
    1cc0:	9f 81       	ldd	r25, Y+7	; 0x07
    1cc2:	01 96       	adiw	r24, 0x01	; 1
    1cc4:	9f 83       	std	Y+7, r25	; 0x07
    1cc6:	8e 83       	std	Y+6, r24	; 0x06
    1cc8:	e3 cf       	rjmp	.-58     	; 0x1c90 <fputc+0x18>
    1cca:	e8 85       	ldd	r30, Y+8	; 0x08
    1ccc:	f9 85       	ldd	r31, Y+9	; 0x09
    1cce:	81 2f       	mov	r24, r17
    1cd0:	09 95       	icall
    1cd2:	89 2b       	or	r24, r25
    1cd4:	a1 f3       	breq	.-24     	; 0x1cbe <fputc+0x46>
    1cd6:	da cf       	rjmp	.-76     	; 0x1c8c <fputc+0x14>

00001cd8 <snprintf>:
    1cd8:	ae e0       	ldi	r26, 0x0E	; 14
    1cda:	b0 e0       	ldi	r27, 0x00	; 0
    1cdc:	e2 e7       	ldi	r30, 0x72	; 114
    1cde:	fe e0       	ldi	r31, 0x0E	; 14
    1ce0:	0c 94 24 0c 	jmp	0x1848	; 0x1848 <__prologue_saves__+0x1c>
    1ce4:	0d 89       	ldd	r16, Y+21	; 0x15
    1ce6:	1e 89       	ldd	r17, Y+22	; 0x16
    1ce8:	8f 89       	ldd	r24, Y+23	; 0x17
    1cea:	98 8d       	ldd	r25, Y+24	; 0x18
    1cec:	26 e0       	ldi	r18, 0x06	; 6
    1cee:	2c 83       	std	Y+4, r18	; 0x04
    1cf0:	1a 83       	std	Y+2, r17	; 0x02
    1cf2:	09 83       	std	Y+1, r16	; 0x01
    1cf4:	97 ff       	sbrs	r25, 7
    1cf6:	02 c0       	rjmp	.+4      	; 0x1cfc <snprintf+0x24>
    1cf8:	80 e0       	ldi	r24, 0x00	; 0
    1cfa:	90 e8       	ldi	r25, 0x80	; 128
    1cfc:	01 97       	sbiw	r24, 0x01	; 1
    1cfe:	9e 83       	std	Y+6, r25	; 0x06
    1d00:	8d 83       	std	Y+5, r24	; 0x05
    1d02:	ae 01       	movw	r20, r28
    1d04:	45 5e       	subi	r20, 0xE5	; 229
    1d06:	5f 4f       	sbci	r21, 0xFF	; 255
    1d08:	69 8d       	ldd	r22, Y+25	; 0x19
    1d0a:	7a 8d       	ldd	r23, Y+26	; 0x1a
    1d0c:	ce 01       	movw	r24, r28
    1d0e:	01 96       	adiw	r24, 0x01	; 1
    1d10:	0e 94 5c 08 	call	0x10b8	; 0x10b8 <vfprintf>
    1d14:	4d 81       	ldd	r20, Y+5	; 0x05
    1d16:	5e 81       	ldd	r21, Y+6	; 0x06
    1d18:	57 fd       	sbrc	r21, 7
    1d1a:	0a c0       	rjmp	.+20     	; 0x1d30 <snprintf+0x58>
    1d1c:	2f 81       	ldd	r18, Y+7	; 0x07
    1d1e:	38 85       	ldd	r19, Y+8	; 0x08
    1d20:	42 17       	cp	r20, r18
    1d22:	53 07       	cpc	r21, r19
    1d24:	0c f4       	brge	.+2      	; 0x1d28 <snprintf+0x50>
    1d26:	9a 01       	movw	r18, r20
    1d28:	02 0f       	add	r16, r18
    1d2a:	13 1f       	adc	r17, r19
    1d2c:	f8 01       	movw	r30, r16
    1d2e:	10 82       	st	Z, r1
    1d30:	2e 96       	adiw	r28, 0x0e	; 14
    1d32:	e4 e0       	ldi	r30, 0x04	; 4
    1d34:	0c 94 40 0c 	jmp	0x1880	; 0x1880 <__epilogue_restores__+0x1c>

00001d38 <__ultoa_invert>:
    1d38:	fa 01       	movw	r30, r20
    1d3a:	aa 27       	eor	r26, r26
    1d3c:	28 30       	cpi	r18, 0x08	; 8
    1d3e:	51 f1       	breq	.+84     	; 0x1d94 <__ultoa_invert+0x5c>
    1d40:	20 31       	cpi	r18, 0x10	; 16
    1d42:	81 f1       	breq	.+96     	; 0x1da4 <__ultoa_invert+0x6c>
    1d44:	e8 94       	clt
    1d46:	6f 93       	push	r22
    1d48:	6e 7f       	andi	r22, 0xFE	; 254
    1d4a:	6e 5f       	subi	r22, 0xFE	; 254
    1d4c:	7f 4f       	sbci	r23, 0xFF	; 255
    1d4e:	8f 4f       	sbci	r24, 0xFF	; 255
    1d50:	9f 4f       	sbci	r25, 0xFF	; 255
    1d52:	af 4f       	sbci	r26, 0xFF	; 255
    1d54:	b1 e0       	ldi	r27, 0x01	; 1
    1d56:	3e d0       	rcall	.+124    	; 0x1dd4 <__ultoa_invert+0x9c>
    1d58:	b4 e0       	ldi	r27, 0x04	; 4
    1d5a:	3c d0       	rcall	.+120    	; 0x1dd4 <__ultoa_invert+0x9c>
    1d5c:	67 0f       	add	r22, r23
    1d5e:	78 1f       	adc	r23, r24
    1d60:	89 1f       	adc	r24, r25
    1d62:	9a 1f       	adc	r25, r26
    1d64:	a1 1d       	adc	r26, r1
    1d66:	68 0f       	add	r22, r24
    1d68:	79 1f       	adc	r23, r25
    1d6a:	8a 1f       	adc	r24, r26
    1d6c:	91 1d       	adc	r25, r1
    1d6e:	a1 1d       	adc	r26, r1
    1d70:	6a 0f       	add	r22, r26
    1d72:	71 1d       	adc	r23, r1
    1d74:	81 1d       	adc	r24, r1
    1d76:	91 1d       	adc	r25, r1
    1d78:	a1 1d       	adc	r26, r1
    1d7a:	20 d0       	rcall	.+64     	; 0x1dbc <__ultoa_invert+0x84>
    1d7c:	09 f4       	brne	.+2      	; 0x1d80 <__ultoa_invert+0x48>
    1d7e:	68 94       	set
    1d80:	3f 91       	pop	r19
    1d82:	2a e0       	ldi	r18, 0x0A	; 10
    1d84:	26 9f       	mul	r18, r22
    1d86:	11 24       	eor	r1, r1
    1d88:	30 19       	sub	r19, r0
    1d8a:	30 5d       	subi	r19, 0xD0	; 208
    1d8c:	31 93       	st	Z+, r19
    1d8e:	de f6       	brtc	.-74     	; 0x1d46 <__ultoa_invert+0xe>
    1d90:	cf 01       	movw	r24, r30
    1d92:	08 95       	ret
    1d94:	46 2f       	mov	r20, r22
    1d96:	47 70       	andi	r20, 0x07	; 7
    1d98:	40 5d       	subi	r20, 0xD0	; 208
    1d9a:	41 93       	st	Z+, r20
    1d9c:	b3 e0       	ldi	r27, 0x03	; 3
    1d9e:	0f d0       	rcall	.+30     	; 0x1dbe <__ultoa_invert+0x86>
    1da0:	c9 f7       	brne	.-14     	; 0x1d94 <__ultoa_invert+0x5c>
    1da2:	f6 cf       	rjmp	.-20     	; 0x1d90 <__ultoa_invert+0x58>
    1da4:	46 2f       	mov	r20, r22
    1da6:	4f 70       	andi	r20, 0x0F	; 15
    1da8:	40 5d       	subi	r20, 0xD0	; 208
    1daa:	4a 33       	cpi	r20, 0x3A	; 58
    1dac:	18 f0       	brcs	.+6      	; 0x1db4 <__ultoa_invert+0x7c>
    1dae:	49 5d       	subi	r20, 0xD9	; 217
    1db0:	31 fd       	sbrc	r19, 1
    1db2:	40 52       	subi	r20, 0x20	; 32
    1db4:	41 93       	st	Z+, r20
    1db6:	02 d0       	rcall	.+4      	; 0x1dbc <__ultoa_invert+0x84>
    1db8:	a9 f7       	brne	.-22     	; 0x1da4 <__ultoa_invert+0x6c>
    1dba:	ea cf       	rjmp	.-44     	; 0x1d90 <__ultoa_invert+0x58>
    1dbc:	b4 e0       	ldi	r27, 0x04	; 4
    1dbe:	a6 95       	lsr	r26
    1dc0:	97 95       	ror	r25
    1dc2:	87 95       	ror	r24
    1dc4:	77 95       	ror	r23
    1dc6:	67 95       	ror	r22
    1dc8:	ba 95       	dec	r27
    1dca:	c9 f7       	brne	.-14     	; 0x1dbe <__ultoa_invert+0x86>
    1dcc:	00 97       	sbiw	r24, 0x00	; 0
    1dce:	61 05       	cpc	r22, r1
    1dd0:	71 05       	cpc	r23, r1
    1dd2:	08 95       	ret
    1dd4:	9b 01       	movw	r18, r22
    1dd6:	ac 01       	movw	r20, r24
    1dd8:	0a 2e       	mov	r0, r26
    1dda:	06 94       	lsr	r0
    1ddc:	57 95       	ror	r21
    1dde:	47 95       	ror	r20
    1de0:	37 95       	ror	r19
    1de2:	27 95       	ror	r18
    1de4:	ba 95       	dec	r27
    1de6:	c9 f7       	brne	.-14     	; 0x1dda <__ultoa_invert+0xa2>
    1de8:	62 0f       	add	r22, r18
    1dea:	73 1f       	adc	r23, r19
    1dec:	84 1f       	adc	r24, r20
    1dee:	95 1f       	adc	r25, r21
    1df0:	a0 1d       	adc	r26, r0
    1df2:	08 95       	ret

00001df4 <_exit>:
    1df4:	f8 94       	cli

00001df6 <__stop_program>:
    1df6:	ff cf       	rjmp	.-2      	; 0x1df6 <__stop_program>
