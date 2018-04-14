
main.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
       0:	0c 94 b6 00 	jmp	0x16c	; 0x16c <__ctors_end>
       4:	0c 94 22 03 	jmp	0x644	; 0x644 <__vector_1>
       8:	0c 94 4b 03 	jmp	0x696	; 0x696 <__vector_2>
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
      40:	0c 94 2e 04 	jmp	0x85c	; 0x85c <__vector_16>
      44:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      48:	0c 94 45 04 	jmp	0x88a	; 0x88a <__vector_18>
      4c:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      50:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      54:	0c 94 e2 07 	jmp	0xfc4	; 0xfc4 <__vector_21>
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
     16a:	d7 0b       	sbc	r29, r23

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
     17e:	ee ee       	ldi	r30, 0xEE	; 238
     180:	fb e1       	ldi	r31, 0x1B	; 27
     182:	02 c0       	rjmp	.+4      	; 0x188 <__do_copy_data+0x10>
     184:	05 90       	lpm	r0, Z+
     186:	0d 92       	st	X+, r0
     188:	a2 32       	cpi	r26, 0x22	; 34
     18a:	b1 07       	cpc	r27, r17
     18c:	d9 f7       	brne	.-10     	; 0x184 <__do_copy_data+0xc>

0000018e <__do_clear_bss>:
     18e:	22 e0       	ldi	r18, 0x02	; 2
     190:	a2 e2       	ldi	r26, 0x22	; 34
     192:	b1 e0       	ldi	r27, 0x01	; 1
     194:	01 c0       	rjmp	.+2      	; 0x198 <.do_clear_bss_start>

00000196 <.do_clear_bss_loop>:
     196:	1d 92       	st	X+, r1

00000198 <.do_clear_bss_start>:
     198:	a1 36       	cpi	r26, 0x61	; 97
     19a:	b2 07       	cpc	r27, r18
     19c:	e1 f7       	brne	.-8      	; 0x196 <.do_clear_bss_loop>

0000019e <__do_global_ctors>:
     19e:	10 e0       	ldi	r17, 0x00	; 0
     1a0:	c6 eb       	ldi	r28, 0xB6	; 182
     1a2:	d0 e0       	ldi	r29, 0x00	; 0
     1a4:	04 c0       	rjmp	.+8      	; 0x1ae <__do_global_ctors+0x10>
     1a6:	21 97       	sbiw	r28, 0x01	; 1
     1a8:	fe 01       	movw	r30, r28
     1aa:	0e 94 43 0c 	call	0x1886	; 0x1886 <__tablejump2__>
     1ae:	c5 3b       	cpi	r28, 0xB5	; 181
     1b0:	d1 07       	cpc	r29, r17
     1b2:	c9 f7       	brne	.-14     	; 0x1a6 <__do_global_ctors+0x8>
     1b4:	0e 94 e0 00 	call	0x1c0	; 0x1c0 <main>
     1b8:	0c 94 f5 0d 	jmp	0x1bea	; 0x1bea <_exit>

000001bc <__bad_interrupt>:
     1bc:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000001c0 <main>:
     1c0:	af 92       	push	r10
     1c2:	bf 92       	push	r11
     1c4:	cf 92       	push	r12
     1c6:	df 92       	push	r13
     1c8:	ef 92       	push	r14
     1ca:	ff 92       	push	r15
     1cc:	0f 93       	push	r16
     1ce:	1f 93       	push	r17
     1d0:	82 e0       	ldi	r24, 0x02	; 2
     1d2:	80 93 22 01 	sts	0x0122, r24	; 0x800122 <__data_end>
     1d6:	80 e8       	ldi	r24, 0x80	; 128
     1d8:	95 e2       	ldi	r25, 0x25	; 37
     1da:	0e 94 6e 01 	call	0x2dc	; 0x2dc <_TF3AVR11SetupSerialFT8baudRateVs5Int16_T_>
     1de:	80 91 22 01 	lds	r24, 0x0122	; 0x800122 <__data_end>
     1e2:	60 91 0b 01 	lds	r22, 0x010B	; 0x80010b <INPUT>
     1e6:	0e 94 54 01 	call	0x2a8	; 0x2a8 <_TF3AVR7pinModeFT3pinVs5UInt84modeSb_T_>
     1ea:	81 e0       	ldi	r24, 0x01	; 1
     1ec:	90 e0       	ldi	r25, 0x00	; 0
     1ee:	6c 01       	movw	r12, r24
     1f0:	04 ef       	ldi	r16, 0xF4	; 244
     1f2:	11 e0       	ldi	r17, 0x01	; 1
     1f4:	80 e0       	ldi	r24, 0x00	; 0
     1f6:	90 e0       	ldi	r25, 0x00	; 0
     1f8:	5c 01       	movw	r10, r24
     1fa:	0a c0       	rjmp	.+20     	; 0x210 <LBB0_2>

000001fc <LBB0_1>:
     1fc:	0e 94 f3 01 	call	0x3e6	; 0x3e6 <_TIF3AVR5printFT11unsignedIntVs6UInt1610addNewlineSb_T_A0_>
     200:	28 2f       	mov	r18, r24
     202:	c7 01       	movw	r24, r14
     204:	62 2f       	mov	r22, r18
     206:	0e 94 f5 01 	call	0x3ea	; 0x3ea <_TF3AVR5printFT11unsignedIntVs6UInt1610addNewlineSb_T_>
     20a:	c8 01       	movw	r24, r16
     20c:	0e 94 12 01 	call	0x224	; 0x224 <_TF3AVR5delayFT12millisecondsVs6UInt16_T_>

00000210 <LBB0_2>:
     210:	87 e0       	ldi	r24, 0x07	; 7
     212:	0e 94 36 01 	call	0x26c	; 0x26c <_TF3AVR11digitalReadFT3pinVs5UInt8_Sb>
     216:	81 70       	andi	r24, 0x01	; 1
     218:	80 30       	cpi	r24, 0x00	; 0
     21a:	76 01       	movw	r14, r12
     21c:	79 f7       	brne	.-34     	; 0x1fc <LBB0_1>
     21e:	75 01       	movw	r14, r10
     220:	ed cf       	rjmp	.-38     	; 0x1fc <LBB0_1>
	...

00000224 <_TF3AVR5delayFT12millisecondsVs6UInt16_T_>:
     224:	0e 94 a4 03 	call	0x748	; 0x748 <_delayMs>
     228:	08 95       	ret

0000022a <_TF3AVR18stringAddCharacterFT4byteVs5UInt8_Sb>:
     22a:	0e 94 b8 03 	call	0x770	; 0x770 <_stringAddCharacter>
     22e:	08 95       	ret

00000230 <_TF3AVR14stringStartNewFT_T_>:
     230:	0e 94 d0 03 	call	0x7a0	; 0x7a0 <_stringStartNew>
     234:	08 95       	ret

00000236 <_TF3AVR18stringCurrentValueFT_GSQGSPVs4Int8__>:
     236:	0e 94 d5 03 	call	0x7aa	; 0x7aa <_stringCurrentValue>
     23a:	40 e0       	ldi	r20, 0x00	; 0
     23c:	50 e0       	ldi	r21, 0x00	; 0
     23e:	9c 01       	movw	r18, r24
     240:	ba 01       	movw	r22, r20
     242:	ca 01       	movw	r24, r20
     244:	08 95       	ret

00000246 <_TF3AVR11intToStringFT6numberVs5Int32_GSQGSPVs4Int8__>:
     246:	0e 94 d8 03 	call	0x7b0	; 0x7b0 <_intToString>
     24a:	40 e0       	ldi	r20, 0x00	; 0
     24c:	50 e0       	ldi	r21, 0x00	; 0
     24e:	9c 01       	movw	r18, r24
     250:	ba 01       	movw	r22, r20
     252:	ca 01       	movw	r24, r20
     254:	08 95       	ret

00000256 <_TF3AVR13floatToStringFT6numberSf_GSQGSPVs4Int8__>:
     256:	0e 94 f4 03 	call	0x7e8	; 0x7e8 <_fltToString>
     25a:	40 e0       	ldi	r20, 0x00	; 0
     25c:	50 e0       	ldi	r21, 0x00	; 0
     25e:	9c 01       	movw	r18, r24
     260:	ba 01       	movw	r22, r20
     262:	ca 01       	movw	r24, r20
     264:	08 95       	ret

00000266 <_TF3AVR5ticksFT_Vs6UInt16>:
     266:	0e 94 b3 03 	call	0x766	; 0x766 <_ticks>
     26a:	08 95       	ret

0000026c <_TF3AVR11digitalReadFT3pinVs5UInt8_Sb>:
     26c:	0e 94 87 02 	call	0x50e	; 0x50e <_digitalRead>
     270:	08 95       	ret

00000272 <_TF3AVR12digitalWriteFT3pinVs5UInt85valueSb_T_>:
     272:	83 30       	cpi	r24, 0x03	; 3
     274:	51 f0       	breq	.+20     	; 0x28a <LBB1_6>
     276:	85 30       	cpi	r24, 0x05	; 5
     278:	41 f0       	breq	.+16     	; 0x28a <LBB1_6>
     27a:	86 30       	cpi	r24, 0x06	; 6
     27c:	31 f0       	breq	.+12     	; 0x28a <LBB1_6>
     27e:	89 30       	cpi	r24, 0x09	; 9
     280:	21 f0       	breq	.+8      	; 0x28a <LBB1_6>
     282:	8a 30       	cpi	r24, 0x0A	; 10
     284:	11 f0       	breq	.+4      	; 0x28a <LBB1_6>
     286:	8b 30       	cpi	r24, 0x0B	; 11
     288:	59 f4       	brne	.+22     	; 0x2a0 <LBB1_9>

0000028a <LBB1_6>:
     28a:	61 70       	andi	r22, 0x01	; 1
     28c:	60 30       	cpi	r22, 0x00	; 0
     28e:	21 f0       	breq	.+8      	; 0x298 <LBB1_8>
     290:	6f ef       	ldi	r22, 0xFF	; 255
     292:	0e 94 b0 06 	call	0xd60	; 0xd60 <_analogWrite>
     296:	08 95       	ret

00000298 <LBB1_8>:
     298:	60 e0       	ldi	r22, 0x00	; 0
     29a:	0e 94 b0 06 	call	0xd60	; 0xd60 <_analogWrite>
     29e:	08 95       	ret

000002a0 <LBB1_9>:
     2a0:	61 70       	andi	r22, 0x01	; 1
     2a2:	0e 94 a0 02 	call	0x540	; 0x540 <_digitalWrite>
     2a6:	08 95       	ret

000002a8 <_TF3AVR7pinModeFT3pinVs5UInt84modeSb_T_>:
     2a8:	61 70       	andi	r22, 0x01	; 1
     2aa:	0e 94 e1 02 	call	0x5c2	; 0x5c2 <_pinMode>
     2ae:	08 95       	ret

000002b0 <_TF3AVR11analogWriteFT3pinVs5UInt85valueS0__T_>:
     2b0:	0e 94 b0 06 	call	0xd60	; 0xd60 <_analogWrite>
     2b4:	08 95       	ret

000002b6 <_TF3AVR14slowAnalogReadFT3pinVs5UInt8_Vs6UInt16>:
     2b6:	0e 94 b3 07 	call	0xf66	; 0xf66 <_slowAnalogRead>
     2ba:	08 95       	ret

000002bc <_TF3AVR15analogReadAsyncFT3pinVs5UInt88callbackcVs6UInt16T__T_>:
     2bc:	0e 94 1a 08 	call	0x1034	; 0x1034 <_analogReadAsync>
     2c0:	08 95       	ret

000002c2 <_TF3AVR26setupPin2InterruptCallbackFT8edgeTypeVs5UInt88callbackcT_T__T_>:
     2c2:	0e 94 74 03 	call	0x6e8	; 0x6e8 <_setupPin2InterruptCallback>
     2c6:	08 95       	ret

000002c8 <_TF3AVR26clearPin2InterruptCallbackFT_T_>:
     2c8:	0e 94 84 03 	call	0x708	; 0x708 <_clearPin2InterruptCallback>
     2cc:	08 95       	ret

000002ce <_TF3AVR26setupPin3InterruptCallbackFT8edgeTypeVs5UInt88callbackcT_T__T_>:
     2ce:	0e 94 8a 03 	call	0x714	; 0x714 <_setupPin3InterruptCallback>
     2d2:	08 95       	ret

000002d4 <_TF3AVR26clearPin3InterruptCallbackFT_T_>:
     2d4:	0e 94 9e 03 	call	0x73c	; 0x73c <_clearPin3InterruptCallback>
     2d8:	08 95       	ret
	...

000002dc <_TF3AVR11SetupSerialFT8baudRateVs5Int16_T_>:
     2dc:	0e 94 87 04 	call	0x90e	; 0x90e <_setupSerial>
     2e0:	08 95       	ret

000002e2 <_TIF3AVR5printFT7messageGSqGSPVs4Int8__10addNewlineSb_T_A0_>:
     2e2:	81 e0       	ldi	r24, 0x01	; 1
     2e4:	08 95       	ret

000002e6 <_TF3AVR5printFT7messageGSqGSPVs4Int8__10addNewlineSb_T_>:
     2e6:	0f 93       	push	r16
     2e8:	01 70       	andi	r16, 0x01	; 1
     2ea:	88 ee       	ldi	r24, 0xE8	; 232
     2ec:	93 e0       	ldi	r25, 0x03	; 3
     2ee:	b9 01       	movw	r22, r18
     2f0:	40 2f       	mov	r20, r16
     2f2:	0e 94 c4 04 	call	0x988	; 0x988 <_sendString>
     2f6:	0f 91       	pop	r16
     2f8:	08 95       	ret

000002fa <_TF3AVR5printFT4byteVs5UInt8_T_>:
     2fa:	0e 94 bd 04 	call	0x97a	; 0x97a <_sendByte>
     2fe:	08 95       	ret

00000300 <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberSf10addNewlineSb_T_>:
     300:	1f 93       	push	r17
     302:	14 2f       	mov	r17, r20
     304:	0e 94 f4 03 	call	0x7e8	; 0x7e8 <_fltToString>
     308:	9c 01       	movw	r18, r24
     30a:	11 70       	andi	r17, 0x01	; 1
     30c:	88 ee       	ldi	r24, 0xE8	; 232
     30e:	93 e0       	ldi	r25, 0x03	; 3
     310:	b9 01       	movw	r22, r18
     312:	41 2f       	mov	r20, r17
     314:	0e 94 e5 04 	call	0x9ca	; 0x9ca <_sendBuffer>
     318:	1f 91       	pop	r17
     31a:	08 95       	ret

0000031c <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberVs5Int3210addNewlineSb_T_>:
     31c:	1f 93       	push	r17
     31e:	14 2f       	mov	r17, r20
     320:	0e 94 d8 03 	call	0x7b0	; 0x7b0 <_intToString>
     324:	9c 01       	movw	r18, r24
     326:	11 70       	andi	r17, 0x01	; 1
     328:	88 ee       	ldi	r24, 0xE8	; 232
     32a:	93 e0       	ldi	r25, 0x03	; 3
     32c:	b9 01       	movw	r22, r18
     32e:	41 2f       	mov	r20, r17
     330:	0e 94 e5 04 	call	0x9ca	; 0x9ca <_sendBuffer>
     334:	1f 91       	pop	r17
     336:	08 95       	ret

00000338 <_TIF3AVR5printFT7longIntVs5Int3210addNewlineSb_T_A0_>:
     338:	81 e0       	ldi	r24, 0x01	; 1
     33a:	08 95       	ret

0000033c <_TF3AVR5printFT7longIntVs5Int3210addNewlineSb_T_>:
     33c:	0e 94 8e 01 	call	0x31c	; 0x31c <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberVs5Int3210addNewlineSb_T_>
     340:	08 95       	ret

00000342 <_TIF3AVR5printFT3intVs5Int1610addNewlineSb_T_A0_>:
     342:	81 e0       	ldi	r24, 0x01	; 1
     344:	08 95       	ret

00000346 <_TF3AVR5printFT3intVs5Int1610addNewlineSb_T_>:
     346:	26 2f       	mov	r18, r22
     348:	ac 01       	movw	r20, r24
     34a:	55 95       	asr	r21
     34c:	47 95       	ror	r20
     34e:	55 95       	asr	r21
     350:	47 95       	ror	r20
     352:	55 95       	asr	r21
     354:	47 95       	ror	r20
     356:	55 95       	asr	r21
     358:	47 95       	ror	r20
     35a:	55 95       	asr	r21
     35c:	47 95       	ror	r20
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
     386:	bc 01       	movw	r22, r24
     388:	ca 01       	movw	r24, r20
     38a:	42 2f       	mov	r20, r18
     38c:	0e 94 8e 01 	call	0x31c	; 0x31c <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberVs5Int3210addNewlineSb_T_>
     390:	08 95       	ret

00000392 <_TIF3AVR5printFT7tinyIntVs4Int810addNewlineSb_T_A0_>:
     392:	81 e0       	ldi	r24, 0x01	; 1
     394:	08 95       	ret

00000396 <_TF3AVR5printFT7tinyIntVs4Int810addNewlineSb_T_>:
     396:	26 2f       	mov	r18, r22
     398:	68 2f       	mov	r22, r24
     39a:	78 2f       	mov	r23, r24
     39c:	77 0f       	add	r23, r23
     39e:	77 0b       	sbc	r23, r23
     3a0:	cb 01       	movw	r24, r22
     3a2:	95 95       	asr	r25
     3a4:	87 95       	ror	r24
     3a6:	95 95       	asr	r25
     3a8:	87 95       	ror	r24
     3aa:	95 95       	asr	r25
     3ac:	87 95       	ror	r24
     3ae:	95 95       	asr	r25
     3b0:	87 95       	ror	r24
     3b2:	95 95       	asr	r25
     3b4:	87 95       	ror	r24
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
     3de:	42 2f       	mov	r20, r18
     3e0:	0e 94 8e 01 	call	0x31c	; 0x31c <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberVs5Int3210addNewlineSb_T_>
     3e4:	08 95       	ret

000003e6 <_TIF3AVR5printFT11unsignedIntVs6UInt1610addNewlineSb_T_A0_>:
     3e6:	81 e0       	ldi	r24, 0x01	; 1
     3e8:	08 95       	ret

000003ea <_TF3AVR5printFT11unsignedIntVs6UInt1610addNewlineSb_T_>:
     3ea:	26 2f       	mov	r18, r22
     3ec:	40 e0       	ldi	r20, 0x00	; 0
     3ee:	50 e0       	ldi	r21, 0x00	; 0
     3f0:	bc 01       	movw	r22, r24
     3f2:	ca 01       	movw	r24, r20
     3f4:	42 2f       	mov	r20, r18
     3f6:	0e 94 8e 01 	call	0x31c	; 0x31c <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberVs5Int3210addNewlineSb_T_>
     3fa:	08 95       	ret

000003fc <_TIF3AVR5printFT15unsignedTinyIntVs5UInt810addNewlineSb_T_A0_>:
     3fc:	81 e0       	ldi	r24, 0x01	; 1
     3fe:	08 95       	ret

00000400 <_TF3AVR5printFT15unsignedTinyIntVs5UInt810addNewlineSb_T_>:
     400:	26 2f       	mov	r18, r22
     402:	68 2f       	mov	r22, r24
     404:	77 27       	eor	r23, r23
     406:	80 e0       	ldi	r24, 0x00	; 0
     408:	90 e0       	ldi	r25, 0x00	; 0
     40a:	42 2f       	mov	r20, r18
     40c:	0e 94 8e 01 	call	0x31c	; 0x31c <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberVs5Int3210addNewlineSb_T_>
     410:	08 95       	ret

00000412 <_TIF3AVR5printFT5floatSf10addNewlineSb_T_A0_>:
     412:	81 e0       	ldi	r24, 0x01	; 1
     414:	08 95       	ret

00000416 <_TF3AVR5printFT5floatSf10addNewlineSb_T_>:
     416:	0e 94 80 01 	call	0x300	; 0x300 <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberSf10addNewlineSb_T_>
     41a:	08 95       	ret

0000041c <_TF3AVR9availableFT_Sb>:
     41c:	0e 94 05 05 	call	0xa0a	; 0xa0a <_available>
     420:	08 95       	ret

00000422 <_TF3AVR4readFT_Vs5UInt8>:
     422:	0e 94 10 05 	call	0xa20	; 0xa20 <_receiveByte>
     426:	08 95       	ret

00000428 <_TF3AVR8SetupSPIFT5speedVs5UInt84modeS0_3lsbSb_T_>:
     428:	41 70       	andi	r20, 0x01	; 1
     42a:	0e 94 2d 05 	call	0xa5a	; 0xa5a <_setupSPIAsMaster>
     42e:	08 95       	ret

00000430 <_TF3AVR11DoubleSpeedFT_T_>:
     430:	81 e0       	ldi	r24, 0x01	; 1
     432:	0e 94 4f 05 	call	0xa9e	; 0xa9e <_setupSPIDoubleSpeed>
     436:	08 95       	ret

00000438 <_TF3AVR17CancelDoubleSpeedFT_T_>:
     438:	80 e0       	ldi	r24, 0x00	; 0
     43a:	0e 94 4f 05 	call	0xa9e	; 0xa9e <_setupSPIDoubleSpeed>
     43e:	08 95       	ret

00000440 <_TF3AVR11sendSPISlowFT4byteVs5UInt8_S0_>:
     440:	0e 94 59 05 	call	0xab2	; 0xab2 <_sendSPIByteBlocking>
     444:	08 95       	ret

00000446 <_TIF3AVR14receiveSPISlowFT6lengthVs6UInt168isStringSb_GSQGSPVs4Int8__A0_>:
     446:	81 e0       	ldi	r24, 0x01	; 1
     448:	08 95       	ret

0000044a <_TF3AVR14receiveSPISlowFT6lengthVs6UInt168isStringSb_GSQGSPVs4Int8__>:
     44a:	61 70       	andi	r22, 0x01	; 1
     44c:	0e 94 5f 05 	call	0xabe	; 0xabe <_receiveSPIBufferBlocking>
     450:	40 e0       	ldi	r20, 0x00	; 0
     452:	50 e0       	ldi	r21, 0x00	; 0
     454:	9c 01       	movw	r18, r24
     456:	ba 01       	movw	r22, r20
     458:	ca 01       	movw	r24, r20
     45a:	08 95       	ret

0000045c <_TIF3AVR11sendSPISlowFT7messageGSQGSPVs4Int8__13sendingStringSb15receivingStringSb_GSQGSPS0___A0_>:
     45c:	81 e0       	ldi	r24, 0x01	; 1
     45e:	08 95       	ret

00000460 <_TIF3AVR11sendSPISlowFT7messageGSQGSPVs4Int8__13sendingStringSb15receivingStringSb_GSQGSPS0___A1_>:
     460:	81 e0       	ldi	r24, 0x01	; 1
     462:	08 95       	ret

00000464 <_TF3AVR11sendSPISlowFT7messageGSQGSPVs4Int8__13sendingStringSb15receivingStringSb_GSQGSPS0___>:
     464:	0f 93       	push	r16
     466:	5e 2d       	mov	r21, r14
     468:	01 70       	andi	r16, 0x01	; 1
     46a:	51 70       	andi	r21, 0x01	; 1
     46c:	88 ee       	ldi	r24, 0xE8	; 232
     46e:	93 e0       	ldi	r25, 0x03	; 3
     470:	b9 01       	movw	r22, r18
     472:	41 e0       	ldi	r20, 0x01	; 1
     474:	20 2f       	mov	r18, r16
     476:	05 2f       	mov	r16, r21
     478:	0e 94 8a 05 	call	0xb14	; 0xb14 <_sendReceiveSPIBufferBlocking>
     47c:	40 e0       	ldi	r20, 0x00	; 0
     47e:	50 e0       	ldi	r21, 0x00	; 0
     480:	9c 01       	movw	r18, r24
     482:	ba 01       	movw	r22, r20
     484:	ca 01       	movw	r24, r20
     486:	0f 91       	pop	r16
     488:	08 95       	ret

0000048a <_TF3AVR8setupI2CFT5speedVs5UInt813premultiplierS0__T_>:
     48a:	0e 94 cc 05 	call	0xb98	; 0xb98 <_i2cinit>
     48e:	08 95       	ret

00000490 <_TF3AVR8i2cstartFT_T_>:
     490:	0e 94 d5 05 	call	0xbaa	; 0xbaa <_i2cstart>
     494:	08 95       	ret

00000496 <_TF3AVR7i2cstopFT_T_>:
     496:	0e 94 dd 05 	call	0xbba	; 0xbba <_i2cstop>
     49a:	08 95       	ret

0000049c <_TF3AVR10i2cGetByteFT12slaveAddressVs5UInt8_S0_>:
     49c:	0e 94 f9 05 	call	0xbf2	; 0xbf2 <_i2cReadSingleByte>
     4a0:	08 95       	ret

000004a2 <_TF3AVR12i2cGetBufferFT12slaveAddressVs5UInt810bufferSizeS0__GSQGSPVs4Int8__>:
     4a2:	0e 94 0a 06 	call	0xc14	; 0xc14 <_i2cReadBuffer>
     4a6:	40 e0       	ldi	r20, 0x00	; 0
     4a8:	50 e0       	ldi	r21, 0x00	; 0
     4aa:	9c 01       	movw	r18, r24
     4ac:	ba 01       	movw	r22, r20
     4ae:	ca 01       	movw	r24, r20
     4b0:	08 95       	ret

000004b2 <_TF3AVR12i2cWriteByteFT12slaveAddressVs5UInt84byteS0__T_>:
     4b2:	0e 94 34 06 	call	0xc68	; 0xc68 <_i2cWriteByte>
     4b6:	08 95       	ret

000004b8 <_TF3AVR14i2cWriteBufferFT12slaveAddressVs5UInt810bufferSizeVs6UInt166bufferGSQGSPVs4Int8___T_>:
     4b8:	a7 01       	movw	r20, r14
     4ba:	0e 94 4a 06 	call	0xc94	; 0xc94 <_i2cWriteBuffer>
     4be:	08 95       	ret

000004c0 <_TIF3AVR8i2cPrintFT12slaveAddressVs5UInt87messageGSqGSPVs4Int8__10addNewlineSb_T_A1_>:
     4c0:	81 e0       	ldi	r24, 0x01	; 1
     4c2:	08 95       	ret

000004c4 <_TF3AVR8i2cPrintFT12slaveAddressVs5UInt87messageGSqGSPVs4Int8__10addNewlineSb_T_>:
     4c4:	4e 2d       	mov	r20, r14
     4c6:	41 70       	andi	r20, 0x01	; 1
     4c8:	b8 01       	movw	r22, r16
     4ca:	0e 94 70 06 	call	0xce0	; 0xce0 <_i2cWritePGMString>
     4ce:	08 95       	ret

000004d0 <pinMask>:
     4d0:	88 30       	cpi	r24, 0x08	; 8
     4d2:	a0 f0       	brcs	.+40     	; 0x4fc <pinMask+0x2c>
     4d4:	8e 30       	cpi	r24, 0x0E	; 14
     4d6:	50 f0       	brcs	.+20     	; 0x4ec <pinMask+0x1c>
     4d8:	85 31       	cpi	r24, 0x15	; 21
     4da:	b8 f4       	brcc	.+46     	; 0x50a <pinMask+0x3a>
     4dc:	92 ef       	ldi	r25, 0xF2	; 242
     4de:	98 0f       	add	r25, r24
     4e0:	81 e0       	ldi	r24, 0x01	; 1
     4e2:	01 c0       	rjmp	.+2      	; 0x4e6 <pinMask+0x16>
     4e4:	88 0f       	add	r24, r24
     4e6:	9a 95       	dec	r25
     4e8:	ea f7       	brpl	.-6      	; 0x4e4 <pinMask+0x14>
     4ea:	08 95       	ret
     4ec:	98 ef       	ldi	r25, 0xF8	; 248
     4ee:	98 0f       	add	r25, r24
     4f0:	81 e0       	ldi	r24, 0x01	; 1
     4f2:	01 c0       	rjmp	.+2      	; 0x4f6 <pinMask+0x26>
     4f4:	88 0f       	add	r24, r24
     4f6:	9a 95       	dec	r25
     4f8:	ea f7       	brpl	.-6      	; 0x4f4 <pinMask+0x24>
     4fa:	08 95       	ret
     4fc:	91 e0       	ldi	r25, 0x01	; 1
     4fe:	01 c0       	rjmp	.+2      	; 0x502 <pinMask+0x32>
     500:	99 0f       	add	r25, r25
     502:	8a 95       	dec	r24
     504:	ea f7       	brpl	.-6      	; 0x500 <pinMask+0x30>
     506:	89 2f       	mov	r24, r25
     508:	08 95       	ret
     50a:	80 e0       	ldi	r24, 0x00	; 0
     50c:	08 95       	ret

0000050e <_digitalRead>:
     50e:	88 30       	cpi	r24, 0x08	; 8
     510:	58 f4       	brcc	.+22     	; 0x528 <_digitalRead+0x1a>
     512:	99 b1       	in	r25, 0x09	; 9
     514:	21 e0       	ldi	r18, 0x01	; 1
     516:	30 e0       	ldi	r19, 0x00	; 0
     518:	01 c0       	rjmp	.+2      	; 0x51c <_digitalRead+0xe>
     51a:	22 0f       	add	r18, r18
     51c:	8a 95       	dec	r24
     51e:	ea f7       	brpl	.-6      	; 0x51a <_digitalRead+0xc>
     520:	92 23       	and	r25, r18
     522:	81 e0       	ldi	r24, 0x01	; 1
     524:	29 f0       	breq	.+10     	; 0x530 <_digitalRead+0x22>
     526:	08 95       	ret
     528:	8e 30       	cpi	r24, 0x0E	; 14
     52a:	20 f0       	brcs	.+8      	; 0x534 <_digitalRead+0x26>
     52c:	85 31       	cpi	r24, 0x15	; 21
     52e:	28 f0       	brcs	.+10     	; 0x53a <_digitalRead+0x2c>
     530:	80 e0       	ldi	r24, 0x00	; 0
     532:	08 95       	ret
     534:	93 b1       	in	r25, 0x03	; 3
     536:	88 50       	subi	r24, 0x08	; 8
     538:	ed cf       	rjmp	.-38     	; 0x514 <_digitalRead+0x6>
     53a:	96 b1       	in	r25, 0x06	; 6
     53c:	8e 50       	subi	r24, 0x0E	; 14
     53e:	ea cf       	rjmp	.-44     	; 0x514 <_digitalRead+0x6>

00000540 <_digitalWrite>:
     540:	88 30       	cpi	r24, 0x08	; 8
     542:	60 f4       	brcc	.+24     	; 0x55c <_digitalWrite+0x1c>
     544:	21 e0       	ldi	r18, 0x01	; 1
     546:	30 e0       	ldi	r19, 0x00	; 0
     548:	01 c0       	rjmp	.+2      	; 0x54c <_digitalWrite+0xc>
     54a:	22 0f       	add	r18, r18
     54c:	8a 95       	dec	r24
     54e:	ea f7       	brpl	.-6      	; 0x54a <_digitalWrite+0xa>
     550:	66 23       	and	r22, r22
     552:	49 f1       	breq	.+82     	; 0x5a6 <_digitalWrite+0x66>
     554:	8b b1       	in	r24, 0x0b	; 11
     556:	28 2b       	or	r18, r24
     558:	2b b9       	out	0x0b, r18	; 11
     55a:	08 95       	ret
     55c:	8e 30       	cpi	r24, 0x0E	; 14
     55e:	88 f4       	brcc	.+34     	; 0x582 <_digitalWrite+0x42>
     560:	88 50       	subi	r24, 0x08	; 8
     562:	21 e0       	ldi	r18, 0x01	; 1
     564:	30 e0       	ldi	r19, 0x00	; 0
     566:	a9 01       	movw	r20, r18
     568:	02 c0       	rjmp	.+4      	; 0x56e <_digitalWrite+0x2e>
     56a:	44 0f       	add	r20, r20
     56c:	55 1f       	adc	r21, r21
     56e:	8a 95       	dec	r24
     570:	e2 f7       	brpl	.-8      	; 0x56a <_digitalWrite+0x2a>
     572:	ca 01       	movw	r24, r20
     574:	61 11       	cpse	r22, r1
     576:	1c c0       	rjmp	.+56     	; 0x5b0 <_digitalWrite+0x70>
     578:	95 b1       	in	r25, 0x05	; 5
     57a:	80 95       	com	r24
     57c:	89 23       	and	r24, r25
     57e:	85 b9       	out	0x05, r24	; 5
     580:	08 95       	ret
     582:	85 31       	cpi	r24, 0x15	; 21
     584:	e8 f7       	brcc	.-6      	; 0x580 <_digitalWrite+0x40>
     586:	8e 50       	subi	r24, 0x0E	; 14
     588:	21 e0       	ldi	r18, 0x01	; 1
     58a:	30 e0       	ldi	r19, 0x00	; 0
     58c:	a9 01       	movw	r20, r18
     58e:	02 c0       	rjmp	.+4      	; 0x594 <_digitalWrite+0x54>
     590:	44 0f       	add	r20, r20
     592:	55 1f       	adc	r21, r21
     594:	8a 95       	dec	r24
     596:	e2 f7       	brpl	.-8      	; 0x590 <_digitalWrite+0x50>
     598:	ca 01       	movw	r24, r20
     59a:	66 23       	and	r22, r22
     59c:	69 f0       	breq	.+26     	; 0x5b8 <_digitalWrite+0x78>
     59e:	98 b1       	in	r25, 0x08	; 8
     5a0:	89 2b       	or	r24, r25
     5a2:	88 b9       	out	0x08, r24	; 8
     5a4:	08 95       	ret
     5a6:	8b b1       	in	r24, 0x0b	; 11
     5a8:	20 95       	com	r18
     5aa:	28 23       	and	r18, r24
     5ac:	2b b9       	out	0x0b, r18	; 11
     5ae:	08 95       	ret
     5b0:	95 b1       	in	r25, 0x05	; 5
     5b2:	89 2b       	or	r24, r25
     5b4:	85 b9       	out	0x05, r24	; 5
     5b6:	08 95       	ret
     5b8:	98 b1       	in	r25, 0x08	; 8
     5ba:	80 95       	com	r24
     5bc:	89 23       	and	r24, r25
     5be:	88 b9       	out	0x08, r24	; 8
     5c0:	08 95       	ret

000005c2 <_pinMode>:
     5c2:	88 30       	cpi	r24, 0x08	; 8
     5c4:	60 f4       	brcc	.+24     	; 0x5de <_pinMode+0x1c>
     5c6:	21 e0       	ldi	r18, 0x01	; 1
     5c8:	30 e0       	ldi	r19, 0x00	; 0
     5ca:	01 c0       	rjmp	.+2      	; 0x5ce <_pinMode+0xc>
     5cc:	22 0f       	add	r18, r18
     5ce:	8a 95       	dec	r24
     5d0:	ea f7       	brpl	.-6      	; 0x5cc <_pinMode+0xa>
     5d2:	66 23       	and	r22, r22
     5d4:	49 f1       	breq	.+82     	; 0x628 <_pinMode+0x66>
     5d6:	8a b1       	in	r24, 0x0a	; 10
     5d8:	28 2b       	or	r18, r24
     5da:	2a b9       	out	0x0a, r18	; 10
     5dc:	08 95       	ret
     5de:	8e 30       	cpi	r24, 0x0E	; 14
     5e0:	88 f4       	brcc	.+34     	; 0x604 <_pinMode+0x42>
     5e2:	88 50       	subi	r24, 0x08	; 8
     5e4:	21 e0       	ldi	r18, 0x01	; 1
     5e6:	30 e0       	ldi	r19, 0x00	; 0
     5e8:	a9 01       	movw	r20, r18
     5ea:	02 c0       	rjmp	.+4      	; 0x5f0 <_pinMode+0x2e>
     5ec:	44 0f       	add	r20, r20
     5ee:	55 1f       	adc	r21, r21
     5f0:	8a 95       	dec	r24
     5f2:	e2 f7       	brpl	.-8      	; 0x5ec <_pinMode+0x2a>
     5f4:	ca 01       	movw	r24, r20
     5f6:	61 11       	cpse	r22, r1
     5f8:	1c c0       	rjmp	.+56     	; 0x632 <_pinMode+0x70>
     5fa:	94 b1       	in	r25, 0x04	; 4
     5fc:	80 95       	com	r24
     5fe:	89 23       	and	r24, r25
     600:	84 b9       	out	0x04, r24	; 4
     602:	08 95       	ret
     604:	85 31       	cpi	r24, 0x15	; 21
     606:	e8 f7       	brcc	.-6      	; 0x602 <_pinMode+0x40>
     608:	8e 50       	subi	r24, 0x0E	; 14
     60a:	21 e0       	ldi	r18, 0x01	; 1
     60c:	30 e0       	ldi	r19, 0x00	; 0
     60e:	a9 01       	movw	r20, r18
     610:	02 c0       	rjmp	.+4      	; 0x616 <_pinMode+0x54>
     612:	44 0f       	add	r20, r20
     614:	55 1f       	adc	r21, r21
     616:	8a 95       	dec	r24
     618:	e2 f7       	brpl	.-8      	; 0x612 <_pinMode+0x50>
     61a:	ca 01       	movw	r24, r20
     61c:	66 23       	and	r22, r22
     61e:	69 f0       	breq	.+26     	; 0x63a <_pinMode+0x78>
     620:	97 b1       	in	r25, 0x07	; 7
     622:	89 2b       	or	r24, r25
     624:	87 b9       	out	0x07, r24	; 7
     626:	08 95       	ret
     628:	8a b1       	in	r24, 0x0a	; 10
     62a:	20 95       	com	r18
     62c:	28 23       	and	r18, r24
     62e:	2a b9       	out	0x0a, r18	; 10
     630:	08 95       	ret
     632:	94 b1       	in	r25, 0x04	; 4
     634:	89 2b       	or	r24, r25
     636:	84 b9       	out	0x04, r24	; 4
     638:	08 95       	ret
     63a:	97 b1       	in	r25, 0x07	; 7
     63c:	80 95       	com	r24
     63e:	89 23       	and	r24, r25
     640:	87 b9       	out	0x07, r24	; 7
     642:	08 95       	ret

00000644 <__vector_1>:
     644:	1f 92       	push	r1
     646:	0f 92       	push	r0
     648:	0f b6       	in	r0, 0x3f	; 63
     64a:	0f 92       	push	r0
     64c:	11 24       	eor	r1, r1
     64e:	2f 93       	push	r18
     650:	3f 93       	push	r19
     652:	4f 93       	push	r20
     654:	5f 93       	push	r21
     656:	6f 93       	push	r22
     658:	7f 93       	push	r23
     65a:	8f 93       	push	r24
     65c:	9f 93       	push	r25
     65e:	af 93       	push	r26
     660:	bf 93       	push	r27
     662:	ef 93       	push	r30
     664:	ff 93       	push	r31
     666:	e0 91 25 01 	lds	r30, 0x0125	; 0x800125 <currentInt0Callback>
     66a:	f0 91 26 01 	lds	r31, 0x0126	; 0x800126 <currentInt0Callback+0x1>
     66e:	30 97       	sbiw	r30, 0x00	; 0
     670:	09 f0       	breq	.+2      	; 0x674 <__vector_1+0x30>
     672:	09 95       	icall
     674:	ff 91       	pop	r31
     676:	ef 91       	pop	r30
     678:	bf 91       	pop	r27
     67a:	af 91       	pop	r26
     67c:	9f 91       	pop	r25
     67e:	8f 91       	pop	r24
     680:	7f 91       	pop	r23
     682:	6f 91       	pop	r22
     684:	5f 91       	pop	r21
     686:	4f 91       	pop	r20
     688:	3f 91       	pop	r19
     68a:	2f 91       	pop	r18
     68c:	0f 90       	pop	r0
     68e:	0f be       	out	0x3f, r0	; 63
     690:	0f 90       	pop	r0
     692:	1f 90       	pop	r1
     694:	18 95       	reti

00000696 <__vector_2>:
     696:	1f 92       	push	r1
     698:	0f 92       	push	r0
     69a:	0f b6       	in	r0, 0x3f	; 63
     69c:	0f 92       	push	r0
     69e:	11 24       	eor	r1, r1
     6a0:	2f 93       	push	r18
     6a2:	3f 93       	push	r19
     6a4:	4f 93       	push	r20
     6a6:	5f 93       	push	r21
     6a8:	6f 93       	push	r22
     6aa:	7f 93       	push	r23
     6ac:	8f 93       	push	r24
     6ae:	9f 93       	push	r25
     6b0:	af 93       	push	r26
     6b2:	bf 93       	push	r27
     6b4:	ef 93       	push	r30
     6b6:	ff 93       	push	r31
     6b8:	e0 91 23 01 	lds	r30, 0x0123	; 0x800123 <currentInt1Callback>
     6bc:	f0 91 24 01 	lds	r31, 0x0124	; 0x800124 <currentInt1Callback+0x1>
     6c0:	30 97       	sbiw	r30, 0x00	; 0
     6c2:	09 f0       	breq	.+2      	; 0x6c6 <__vector_2+0x30>
     6c4:	09 95       	icall
     6c6:	ff 91       	pop	r31
     6c8:	ef 91       	pop	r30
     6ca:	bf 91       	pop	r27
     6cc:	af 91       	pop	r26
     6ce:	9f 91       	pop	r25
     6d0:	8f 91       	pop	r24
     6d2:	7f 91       	pop	r23
     6d4:	6f 91       	pop	r22
     6d6:	5f 91       	pop	r21
     6d8:	4f 91       	pop	r20
     6da:	3f 91       	pop	r19
     6dc:	2f 91       	pop	r18
     6de:	0f 90       	pop	r0
     6e0:	0f be       	out	0x3f, r0	; 63
     6e2:	0f 90       	pop	r0
     6e4:	1f 90       	pop	r1
     6e6:	18 95       	reti

000006e8 <_setupPin2InterruptCallback>:
     6e8:	70 93 26 01 	sts	0x0126, r23	; 0x800126 <currentInt0Callback+0x1>
     6ec:	60 93 25 01 	sts	0x0125, r22	; 0x800125 <currentInt0Callback>
     6f0:	e9 e6       	ldi	r30, 0x69	; 105
     6f2:	f0 e0       	ldi	r31, 0x00	; 0
     6f4:	90 81       	ld	r25, Z
     6f6:	9c 7f       	andi	r25, 0xFC	; 252
     6f8:	90 83       	st	Z, r25
     6fa:	90 81       	ld	r25, Z
     6fc:	83 70       	andi	r24, 0x03	; 3
     6fe:	89 2b       	or	r24, r25
     700:	80 83       	st	Z, r24
     702:	e8 9a       	sbi	0x1d, 0	; 29
     704:	78 94       	sei
     706:	08 95       	ret

00000708 <_clearPin2InterruptCallback>:
     708:	10 92 26 01 	sts	0x0126, r1	; 0x800126 <currentInt0Callback+0x1>
     70c:	10 92 25 01 	sts	0x0125, r1	; 0x800125 <currentInt0Callback>
     710:	e8 98       	cbi	0x1d, 0	; 29
     712:	08 95       	ret

00000714 <_setupPin3InterruptCallback>:
     714:	70 93 24 01 	sts	0x0124, r23	; 0x800124 <currentInt1Callback+0x1>
     718:	60 93 23 01 	sts	0x0123, r22	; 0x800123 <currentInt1Callback>
     71c:	e9 e6       	ldi	r30, 0x69	; 105
     71e:	f0 e0       	ldi	r31, 0x00	; 0
     720:	90 81       	ld	r25, Z
     722:	93 7f       	andi	r25, 0xF3	; 243
     724:	90 83       	st	Z, r25
     726:	20 81       	ld	r18, Z
     728:	34 e0       	ldi	r19, 0x04	; 4
     72a:	83 9f       	mul	r24, r19
     72c:	c0 01       	movw	r24, r0
     72e:	11 24       	eor	r1, r1
     730:	8c 70       	andi	r24, 0x0C	; 12
     732:	82 2b       	or	r24, r18
     734:	80 83       	st	Z, r24
     736:	e9 9a       	sbi	0x1d, 1	; 29
     738:	78 94       	sei
     73a:	08 95       	ret

0000073c <_clearPin3InterruptCallback>:
     73c:	10 92 24 01 	sts	0x0124, r1	; 0x800124 <currentInt1Callback+0x1>
     740:	10 92 23 01 	sts	0x0123, r1	; 0x800123 <currentInt1Callback>
     744:	e9 98       	cbi	0x1d, 1	; 29
     746:	08 95       	ret

00000748 <_delayMs>:
     748:	00 97       	sbiw	r24, 0x00	; 0
     74a:	61 f0       	breq	.+24     	; 0x764 <_delayMs+0x1c>
     74c:	20 e0       	ldi	r18, 0x00	; 0
     74e:	30 e0       	ldi	r19, 0x00	; 0
     750:	40 ea       	ldi	r20, 0xA0	; 160
     752:	5f e0       	ldi	r21, 0x0F	; 15
     754:	fa 01       	movw	r30, r20
     756:	31 97       	sbiw	r30, 0x01	; 1
     758:	f1 f7       	brne	.-4      	; 0x756 <_delayMs+0xe>
     75a:	2f 5f       	subi	r18, 0xFF	; 255
     75c:	3f 4f       	sbci	r19, 0xFF	; 255
     75e:	82 17       	cp	r24, r18
     760:	93 07       	cpc	r25, r19
     762:	c1 f7       	brne	.-16     	; 0x754 <_delayMs+0xc>
     764:	08 95       	ret

00000766 <_ticks>:
     766:	80 91 27 01 	lds	r24, 0x0127	; 0x800127 <t0Overflow>
     76a:	90 91 28 01 	lds	r25, 0x0128	; 0x800128 <t0Overflow+0x1>
     76e:	08 95       	ret

00000770 <_stringAddCharacter>:
     770:	e0 91 38 01 	lds	r30, 0x0138	; 0x800138 <stringBufferEnd>
     774:	ef 37       	cpi	r30, 0x7F	; 127
     776:	91 f0       	breq	.+36     	; 0x79c <_stringAddCharacter+0x2c>
     778:	91 e0       	ldi	r25, 0x01	; 1
     77a:	9e 0f       	add	r25, r30
     77c:	90 93 38 01 	sts	0x0138, r25	; 0x800138 <stringBufferEnd>
     780:	0e 2e       	mov	r0, r30
     782:	00 0c       	add	r0, r0
     784:	ff 0b       	sbc	r31, r31
     786:	e7 5c       	subi	r30, 0xC7	; 199
     788:	fe 4f       	sbci	r31, 0xFE	; 254
     78a:	80 83       	st	Z, r24
     78c:	e9 2f       	mov	r30, r25
     78e:	99 0f       	add	r25, r25
     790:	ff 0b       	sbc	r31, r31
     792:	e7 5c       	subi	r30, 0xC7	; 199
     794:	fe 4f       	sbci	r31, 0xFE	; 254
     796:	10 82       	st	Z, r1
     798:	81 e0       	ldi	r24, 0x01	; 1
     79a:	08 95       	ret
     79c:	80 e0       	ldi	r24, 0x00	; 0
     79e:	08 95       	ret

000007a0 <_stringStartNew>:
     7a0:	10 92 38 01 	sts	0x0138, r1	; 0x800138 <stringBufferEnd>
     7a4:	10 92 39 01 	sts	0x0139, r1	; 0x800139 <stringBuffer>
     7a8:	08 95       	ret

000007aa <_stringCurrentValue>:
     7aa:	89 e3       	ldi	r24, 0x39	; 57
     7ac:	91 e0       	ldi	r25, 0x01	; 1
     7ae:	08 95       	ret

000007b0 <_intToString>:
     7b0:	9f 93       	push	r25
     7b2:	8f 93       	push	r24
     7b4:	7f 93       	push	r23
     7b6:	6f 93       	push	r22
     7b8:	83 e1       	ldi	r24, 0x13	; 19
     7ba:	91 e0       	ldi	r25, 0x01	; 1
     7bc:	9f 93       	push	r25
     7be:	8f 93       	push	r24
     7c0:	1f 92       	push	r1
     7c2:	8f e0       	ldi	r24, 0x0F	; 15
     7c4:	8f 93       	push	r24
     7c6:	89 e2       	ldi	r24, 0x29	; 41
     7c8:	91 e0       	ldi	r25, 0x01	; 1
     7ca:	9f 93       	push	r25
     7cc:	8f 93       	push	r24
     7ce:	0e 94 67 0d 	call	0x1ace	; 0x1ace <snprintf>
     7d2:	8d b7       	in	r24, 0x3d	; 61
     7d4:	9e b7       	in	r25, 0x3e	; 62
     7d6:	0a 96       	adiw	r24, 0x0a	; 10
     7d8:	0f b6       	in	r0, 0x3f	; 63
     7da:	f8 94       	cli
     7dc:	9e bf       	out	0x3e, r25	; 62
     7de:	0f be       	out	0x3f, r0	; 63
     7e0:	8d bf       	out	0x3d, r24	; 61
     7e2:	89 e2       	ldi	r24, 0x29	; 41
     7e4:	91 e0       	ldi	r25, 0x01	; 1
     7e6:	08 95       	ret

000007e8 <_fltToString>:
     7e8:	9f 93       	push	r25
     7ea:	8f 93       	push	r24
     7ec:	7f 93       	push	r23
     7ee:	6f 93       	push	r22
     7f0:	87 e1       	ldi	r24, 0x17	; 23
     7f2:	91 e0       	ldi	r25, 0x01	; 1
     7f4:	9f 93       	push	r25
     7f6:	8f 93       	push	r24
     7f8:	1f 92       	push	r1
     7fa:	8f e0       	ldi	r24, 0x0F	; 15
     7fc:	8f 93       	push	r24
     7fe:	89 e2       	ldi	r24, 0x29	; 41
     800:	91 e0       	ldi	r25, 0x01	; 1
     802:	9f 93       	push	r25
     804:	8f 93       	push	r24
     806:	0e 94 67 0d 	call	0x1ace	; 0x1ace <snprintf>
     80a:	8d b7       	in	r24, 0x3d	; 61
     80c:	9e b7       	in	r25, 0x3e	; 62
     80e:	0a 96       	adiw	r24, 0x0a	; 10
     810:	0f b6       	in	r0, 0x3f	; 63
     812:	f8 94       	cli
     814:	9e bf       	out	0x3e, r25	; 62
     816:	0f be       	out	0x3f, r0	; 63
     818:	8d bf       	out	0x3d, r24	; 61
     81a:	89 e2       	ldi	r24, 0x29	; 41
     81c:	91 e0       	ldi	r25, 0x01	; 1
     81e:	08 95       	ret

00000820 <_fltToStringPrecision>:
     820:	9f 93       	push	r25
     822:	8f 93       	push	r24
     824:	7f 93       	push	r23
     826:	6f 93       	push	r22
     828:	1f 92       	push	r1
     82a:	4f 93       	push	r20
     82c:	8c e1       	ldi	r24, 0x1C	; 28
     82e:	91 e0       	ldi	r25, 0x01	; 1
     830:	9f 93       	push	r25
     832:	8f 93       	push	r24
     834:	1f 92       	push	r1
     836:	8f e0       	ldi	r24, 0x0F	; 15
     838:	8f 93       	push	r24
     83a:	89 e2       	ldi	r24, 0x29	; 41
     83c:	91 e0       	ldi	r25, 0x01	; 1
     83e:	9f 93       	push	r25
     840:	8f 93       	push	r24
     842:	0e 94 67 0d 	call	0x1ace	; 0x1ace <snprintf>
     846:	8d b7       	in	r24, 0x3d	; 61
     848:	9e b7       	in	r25, 0x3e	; 62
     84a:	0c 96       	adiw	r24, 0x0c	; 12
     84c:	0f b6       	in	r0, 0x3f	; 63
     84e:	f8 94       	cli
     850:	9e bf       	out	0x3e, r25	; 62
     852:	0f be       	out	0x3f, r0	; 63
     854:	8d bf       	out	0x3d, r24	; 61
     856:	89 e2       	ldi	r24, 0x29	; 41
     858:	91 e0       	ldi	r25, 0x01	; 1
     85a:	08 95       	ret

0000085c <__vector_16>:
     85c:	1f 92       	push	r1
     85e:	0f 92       	push	r0
     860:	0f b6       	in	r0, 0x3f	; 63
     862:	0f 92       	push	r0
     864:	11 24       	eor	r1, r1
     866:	8f 93       	push	r24
     868:	9f 93       	push	r25
     86a:	80 91 27 01 	lds	r24, 0x0127	; 0x800127 <t0Overflow>
     86e:	90 91 28 01 	lds	r25, 0x0128	; 0x800128 <t0Overflow+0x1>
     872:	01 96       	adiw	r24, 0x01	; 1
     874:	90 93 28 01 	sts	0x0128, r25	; 0x800128 <t0Overflow+0x1>
     878:	80 93 27 01 	sts	0x0127, r24	; 0x800127 <t0Overflow>
     87c:	9f 91       	pop	r25
     87e:	8f 91       	pop	r24
     880:	0f 90       	pop	r0
     882:	0f be       	out	0x3f, r0	; 63
     884:	0f 90       	pop	r0
     886:	1f 90       	pop	r1
     888:	18 95       	reti

0000088a <__vector_18>:
     88a:	1f 92       	push	r1
     88c:	0f 92       	push	r0
     88e:	0f b6       	in	r0, 0x3f	; 63
     890:	0f 92       	push	r0
     892:	11 24       	eor	r1, r1
     894:	2f 93       	push	r18
     896:	8f 93       	push	r24
     898:	9f 93       	push	r25
     89a:	ef 93       	push	r30
     89c:	ff 93       	push	r31
     89e:	80 91 b9 01 	lds	r24, 0x01B9	; 0x8001b9 <bufferFull>
     8a2:	81 11       	cpse	r24, r1
     8a4:	1e c0       	rjmp	.+60     	; 0x8e2 <__vector_18+0x58>
     8a6:	e0 91 ba 01 	lds	r30, 0x01BA	; 0x8001ba <ringBufferEnd>
     8aa:	81 e0       	ldi	r24, 0x01	; 1
     8ac:	8e 0f       	add	r24, r30
     8ae:	80 93 ba 01 	sts	0x01BA, r24	; 0x8001ba <ringBufferEnd>
     8b2:	90 91 c6 00 	lds	r25, 0x00C6	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
     8b6:	0e 2e       	mov	r0, r30
     8b8:	00 0c       	add	r0, r0
     8ba:	ff 0b       	sbc	r31, r31
     8bc:	e4 54       	subi	r30, 0x44	; 68
     8be:	fe 4f       	sbci	r31, 0xFE	; 254
     8c0:	90 83       	st	Z, r25
     8c2:	08 2e       	mov	r0, r24
     8c4:	00 0c       	add	r0, r0
     8c6:	99 0b       	sbc	r25, r25
     8c8:	8f 77       	andi	r24, 0x7F	; 127
     8ca:	90 78       	andi	r25, 0x80	; 128
     8cc:	97 fd       	sbrc	r25, 7
     8ce:	13 c0       	rjmp	.+38     	; 0x8f6 <__vector_18+0x6c>
     8d0:	80 93 ba 01 	sts	0x01BA, r24	; 0x8001ba <ringBufferEnd>
     8d4:	91 e0       	ldi	r25, 0x01	; 1
     8d6:	20 91 bb 01 	lds	r18, 0x01BB	; 0x8001bb <ringBufferStart>
     8da:	28 13       	cpse	r18, r24
     8dc:	90 e0       	ldi	r25, 0x00	; 0
     8de:	90 93 b9 01 	sts	0x01B9, r25	; 0x8001b9 <bufferFull>
     8e2:	ff 91       	pop	r31
     8e4:	ef 91       	pop	r30
     8e6:	9f 91       	pop	r25
     8e8:	8f 91       	pop	r24
     8ea:	2f 91       	pop	r18
     8ec:	0f 90       	pop	r0
     8ee:	0f be       	out	0x3f, r0	; 63
     8f0:	0f 90       	pop	r0
     8f2:	1f 90       	pop	r1
     8f4:	18 95       	reti
     8f6:	01 97       	sbiw	r24, 0x01	; 1
     8f8:	80 68       	ori	r24, 0x80	; 128
     8fa:	9f 6f       	ori	r25, 0xFF	; 255
     8fc:	01 96       	adiw	r24, 0x01	; 1
     8fe:	80 93 ba 01 	sts	0x01BA, r24	; 0x8001ba <ringBufferEnd>
     902:	91 e0       	ldi	r25, 0x01	; 1
     904:	20 91 bb 01 	lds	r18, 0x01BB	; 0x8001bb <ringBufferStart>
     908:	28 13       	cpse	r18, r24
     90a:	e8 cf       	rjmp	.-48     	; 0x8dc <__vector_18+0x52>
     90c:	e8 cf       	rjmp	.-48     	; 0x8de <__vector_18+0x54>

0000090e <_setupSerial>:
     90e:	9c 01       	movw	r18, r24
     910:	99 0f       	add	r25, r25
     912:	44 0b       	sbc	r20, r20
     914:	55 0b       	sbc	r21, r21
     916:	22 0f       	add	r18, r18
     918:	33 1f       	adc	r19, r19
     91a:	44 1f       	adc	r20, r20
     91c:	55 1f       	adc	r21, r21
     91e:	22 0f       	add	r18, r18
     920:	33 1f       	adc	r19, r19
     922:	44 1f       	adc	r20, r20
     924:	55 1f       	adc	r21, r21
     926:	22 0f       	add	r18, r18
     928:	33 1f       	adc	r19, r19
     92a:	44 1f       	adc	r20, r20
     92c:	55 1f       	adc	r21, r21
     92e:	22 0f       	add	r18, r18
     930:	33 1f       	adc	r19, r19
     932:	44 1f       	adc	r20, r20
     934:	55 1f       	adc	r21, r21
     936:	60 e0       	ldi	r22, 0x00	; 0
     938:	74 e2       	ldi	r23, 0x24	; 36
     93a:	84 ef       	ldi	r24, 0xF4	; 244
     93c:	90 e0       	ldi	r25, 0x00	; 0
     93e:	0e 94 ea 0b 	call	0x17d4	; 0x17d4 <__udivmodsi4>
     942:	ba 01       	movw	r22, r20
     944:	a9 01       	movw	r20, r18
     946:	41 50       	subi	r20, 0x01	; 1
     948:	51 09       	sbc	r21, r1
     94a:	61 09       	sbc	r22, r1
     94c:	71 09       	sbc	r23, r1
     94e:	bb 27       	eor	r27, r27
     950:	77 fd       	sbrc	r23, 7
     952:	ba 95       	dec	r27
     954:	a7 2f       	mov	r26, r23
     956:	96 2f       	mov	r25, r22
     958:	85 2f       	mov	r24, r21
     95a:	80 93 c5 00 	sts	0x00C5, r24	; 0x8000c5 <__TEXT_REGION_LENGTH__+0x7e00c5>
     95e:	40 93 c4 00 	sts	0x00C4, r20	; 0x8000c4 <__TEXT_REGION_LENGTH__+0x7e00c4>
     962:	e2 ec       	ldi	r30, 0xC2	; 194
     964:	f0 e0       	ldi	r31, 0x00	; 0
     966:	80 81       	ld	r24, Z
     968:	86 60       	ori	r24, 0x06	; 6
     96a:	80 83       	st	Z, r24
     96c:	e1 ec       	ldi	r30, 0xC1	; 193
     96e:	f0 e0       	ldi	r31, 0x00	; 0
     970:	80 81       	ld	r24, Z
     972:	88 69       	ori	r24, 0x98	; 152
     974:	80 83       	st	Z, r24
     976:	78 94       	sei
     978:	08 95       	ret

0000097a <_sendByte>:
     97a:	90 91 c0 00 	lds	r25, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
     97e:	95 ff       	sbrs	r25, 5
     980:	fc cf       	rjmp	.-8      	; 0x97a <_sendByte>
     982:	80 93 c6 00 	sts	0x00C6, r24	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
     986:	08 95       	ret

00000988 <_sendString>:
     988:	00 97       	sbiw	r24, 0x00	; 0
     98a:	a1 f0       	breq	.+40     	; 0x9b4 <_sendString+0x2c>
     98c:	fb 01       	movw	r30, r22
     98e:	24 91       	lpm	r18, Z
     990:	22 23       	and	r18, r18
     992:	81 f0       	breq	.+32     	; 0x9b4 <_sendString+0x2c>
     994:	31 96       	adiw	r30, 0x01	; 1
     996:	68 0f       	add	r22, r24
     998:	79 1f       	adc	r23, r25
     99a:	90 91 c0 00 	lds	r25, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
     99e:	95 ff       	sbrs	r25, 5
     9a0:	fc cf       	rjmp	.-8      	; 0x99a <_sendString+0x12>
     9a2:	20 93 c6 00 	sts	0x00C6, r18	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
     9a6:	6e 17       	cp	r22, r30
     9a8:	7f 07       	cpc	r23, r31
     9aa:	21 f0       	breq	.+8      	; 0x9b4 <_sendString+0x2c>
     9ac:	24 91       	lpm	r18, Z
     9ae:	31 96       	adiw	r30, 0x01	; 1
     9b0:	21 11       	cpse	r18, r1
     9b2:	f3 cf       	rjmp	.-26     	; 0x99a <_sendString+0x12>
     9b4:	44 23       	and	r20, r20
     9b6:	41 f0       	breq	.+16     	; 0x9c8 <_sendString+0x40>
     9b8:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
     9bc:	85 ff       	sbrs	r24, 5
     9be:	fc cf       	rjmp	.-8      	; 0x9b8 <_sendString+0x30>
     9c0:	8a e0       	ldi	r24, 0x0A	; 10
     9c2:	80 93 c6 00 	sts	0x00C6, r24	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
     9c6:	08 95       	ret
     9c8:	08 95       	ret

000009ca <_sendBuffer>:
     9ca:	00 97       	sbiw	r24, 0x00	; 0
     9cc:	99 f0       	breq	.+38     	; 0x9f4 <_sendBuffer+0x2a>
     9ce:	fb 01       	movw	r30, r22
     9d0:	20 81       	ld	r18, Z
     9d2:	22 23       	and	r18, r18
     9d4:	79 f0       	breq	.+30     	; 0x9f4 <_sendBuffer+0x2a>
     9d6:	31 96       	adiw	r30, 0x01	; 1
     9d8:	68 0f       	add	r22, r24
     9da:	79 1f       	adc	r23, r25
     9dc:	90 91 c0 00 	lds	r25, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
     9e0:	95 ff       	sbrs	r25, 5
     9e2:	fc cf       	rjmp	.-8      	; 0x9dc <_sendBuffer+0x12>
     9e4:	20 93 c6 00 	sts	0x00C6, r18	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
     9e8:	e6 17       	cp	r30, r22
     9ea:	f7 07       	cpc	r31, r23
     9ec:	19 f0       	breq	.+6      	; 0x9f4 <_sendBuffer+0x2a>
     9ee:	21 91       	ld	r18, Z+
     9f0:	21 11       	cpse	r18, r1
     9f2:	f4 cf       	rjmp	.-24     	; 0x9dc <_sendBuffer+0x12>
     9f4:	44 23       	and	r20, r20
     9f6:	41 f0       	breq	.+16     	; 0xa08 <_sendBuffer+0x3e>
     9f8:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
     9fc:	85 ff       	sbrs	r24, 5
     9fe:	fc cf       	rjmp	.-8      	; 0x9f8 <_sendBuffer+0x2e>
     a00:	8a e0       	ldi	r24, 0x0A	; 10
     a02:	80 93 c6 00 	sts	0x00C6, r24	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
     a06:	08 95       	ret
     a08:	08 95       	ret

00000a0a <_available>:
     a0a:	90 91 bb 01 	lds	r25, 0x01BB	; 0x8001bb <ringBufferStart>
     a0e:	80 91 ba 01 	lds	r24, 0x01BA	; 0x8001ba <ringBufferEnd>
     a12:	98 17       	cp	r25, r24
     a14:	11 f0       	breq	.+4      	; 0xa1a <_available+0x10>
     a16:	81 e0       	ldi	r24, 0x01	; 1
     a18:	08 95       	ret
     a1a:	80 91 b9 01 	lds	r24, 0x01B9	; 0x8001b9 <bufferFull>
     a1e:	08 95       	ret

00000a20 <_receiveByte>:
     a20:	20 91 b9 01 	lds	r18, 0x01B9	; 0x8001b9 <bufferFull>
     a24:	90 91 bb 01 	lds	r25, 0x01BB	; 0x8001bb <ringBufferStart>
     a28:	80 91 ba 01 	lds	r24, 0x01BA	; 0x8001ba <ringBufferEnd>
     a2c:	98 17       	cp	r25, r24
     a2e:	91 f0       	breq	.+36     	; 0xa54 <_receiveByte+0x34>
     a30:	9f b7       	in	r25, 0x3f	; 63
     a32:	f8 94       	cli
     a34:	e0 91 bb 01 	lds	r30, 0x01BB	; 0x8001bb <ringBufferStart>
     a38:	81 e0       	ldi	r24, 0x01	; 1
     a3a:	8e 0f       	add	r24, r30
     a3c:	80 93 bb 01 	sts	0x01BB, r24	; 0x8001bb <ringBufferStart>
     a40:	0e 2e       	mov	r0, r30
     a42:	00 0c       	add	r0, r0
     a44:	ff 0b       	sbc	r31, r31
     a46:	e4 54       	subi	r30, 0x44	; 68
     a48:	fe 4f       	sbci	r31, 0xFE	; 254
     a4a:	80 81       	ld	r24, Z
     a4c:	10 92 b9 01 	sts	0x01B9, r1	; 0x8001b9 <bufferFull>
     a50:	9f bf       	out	0x3f, r25	; 63
     a52:	08 95       	ret
     a54:	21 11       	cpse	r18, r1
     a56:	ec cf       	rjmp	.-40     	; 0xa30 <_receiveByte+0x10>
     a58:	ff cf       	rjmp	.-2      	; 0xa58 <_receiveByte+0x38>

00000a5a <_setupSPIAsMaster>:
     a5a:	0f 93       	push	r16
     a5c:	1f 93       	push	r17
     a5e:	cf 93       	push	r28
     a60:	df 93       	push	r29
     a62:	c8 2f       	mov	r28, r24
     a64:	d6 2f       	mov	r29, r22
     a66:	14 2f       	mov	r17, r20
     a68:	00 91 10 01 	lds	r16, 0x0110	; 0x800110 <_OUTPUT>
     a6c:	60 2f       	mov	r22, r16
     a6e:	8b e0       	ldi	r24, 0x0B	; 11
     a70:	0e 94 e1 02 	call	0x5c2	; 0x5c2 <_pinMode>
     a74:	60 2f       	mov	r22, r16
     a76:	8d e0       	ldi	r24, 0x0D	; 13
     a78:	0e 94 e1 02 	call	0x5c2	; 0x5c2 <_pinMode>
     a7c:	c3 70       	andi	r28, 0x03	; 3
     a7e:	c0 65       	ori	r28, 0x50	; 80
     a80:	80 e2       	ldi	r24, 0x20	; 32
     a82:	18 9f       	mul	r17, r24
     a84:	a0 01       	movw	r20, r0
     a86:	11 24       	eor	r1, r1
     a88:	c4 2b       	or	r28, r20
     a8a:	dd 0f       	add	r29, r29
     a8c:	dd 0f       	add	r29, r29
     a8e:	dc 70       	andi	r29, 0x0C	; 12
     a90:	cd 2b       	or	r28, r29
     a92:	cc bd       	out	0x2c, r28	; 44
     a94:	df 91       	pop	r29
     a96:	cf 91       	pop	r28
     a98:	1f 91       	pop	r17
     a9a:	0f 91       	pop	r16
     a9c:	08 95       	ret

00000a9e <_setupSPIDoubleSpeed>:
     a9e:	81 11       	cpse	r24, r1
     aa0:	04 c0       	rjmp	.+8      	; 0xaaa <_setupSPIDoubleSpeed+0xc>
     aa2:	8d b5       	in	r24, 0x2d	; 45
     aa4:	8e 7f       	andi	r24, 0xFE	; 254
     aa6:	8d bd       	out	0x2d, r24	; 45
     aa8:	08 95       	ret
     aaa:	8d b5       	in	r24, 0x2d	; 45
     aac:	81 60       	ori	r24, 0x01	; 1
     aae:	8d bd       	out	0x2d, r24	; 45
     ab0:	08 95       	ret

00000ab2 <_sendSPIByteBlocking>:
     ab2:	8e bd       	out	0x2e, r24	; 46
     ab4:	0d b4       	in	r0, 0x2d	; 45
     ab6:	07 fe       	sbrs	r0, 7
     ab8:	fd cf       	rjmp	.-6      	; 0xab4 <_sendSPIByteBlocking+0x2>
     aba:	8e b5       	in	r24, 0x2e	; 46
     abc:	08 95       	ret

00000abe <_receiveSPIBufferBlocking>:
     abe:	00 97       	sbiw	r24, 0x00	; 0
     ac0:	21 f1       	breq	.+72     	; 0xb0a <_receiveSPIBufferBlocking+0x4c>
     ac2:	e1 e4       	ldi	r30, 0x41	; 65
     ac4:	f2 e0       	ldi	r31, 0x02	; 2
     ac6:	20 e0       	ldi	r18, 0x00	; 0
     ac8:	30 e0       	ldi	r19, 0x00	; 0
     aca:	1e bc       	out	0x2e, r1	; 46
     acc:	0d b4       	in	r0, 0x2d	; 45
     ace:	07 fe       	sbrs	r0, 7
     ad0:	fd cf       	rjmp	.-6      	; 0xacc <_receiveSPIBufferBlocking+0xe>
     ad2:	4e b5       	in	r20, 0x2e	; 46
     ad4:	20 32       	cpi	r18, 0x20	; 32
     ad6:	31 05       	cpc	r19, r1
     ad8:	dc f0       	brlt	.+54     	; 0xb10 <_receiveSPIBufferBlocking+0x52>
     ada:	2f 5f       	subi	r18, 0xFF	; 255
     adc:	3f 4f       	sbci	r19, 0xFF	; 255
     ade:	31 96       	adiw	r30, 0x01	; 1
     ae0:	82 17       	cp	r24, r18
     ae2:	93 07       	cpc	r25, r19
     ae4:	91 f7       	brne	.-28     	; 0xaca <_receiveSPIBufferBlocking+0xc>
     ae6:	01 97       	sbiw	r24, 0x01	; 1
     ae8:	66 23       	and	r22, r22
     aea:	29 f0       	breq	.+10     	; 0xaf6 <_receiveSPIBufferBlocking+0x38>
     aec:	8f 31       	cpi	r24, 0x1F	; 31
     aee:	91 05       	cpc	r25, r1
     af0:	28 f0       	brcs	.+10     	; 0xafc <_receiveSPIBufferBlocking+0x3e>
     af2:	10 92 60 02 	sts	0x0260, r1	; 0x800260 <_receiveBuffer+0x1f>
     af6:	81 e4       	ldi	r24, 0x41	; 65
     af8:	92 e0       	ldi	r25, 0x02	; 2
     afa:	08 95       	ret
     afc:	8f 5b       	subi	r24, 0xBF	; 191
     afe:	9d 4f       	sbci	r25, 0xFD	; 253
     b00:	fc 01       	movw	r30, r24
     b02:	10 82       	st	Z, r1
     b04:	81 e4       	ldi	r24, 0x41	; 65
     b06:	92 e0       	ldi	r25, 0x02	; 2
     b08:	08 95       	ret
     b0a:	61 11       	cpse	r22, r1
     b0c:	f2 cf       	rjmp	.-28     	; 0xaf2 <_receiveSPIBufferBlocking+0x34>
     b0e:	f3 cf       	rjmp	.-26     	; 0xaf6 <_receiveSPIBufferBlocking+0x38>
     b10:	40 83       	st	Z, r20
     b12:	e3 cf       	rjmp	.-58     	; 0xada <_receiveSPIBufferBlocking+0x1c>

00000b14 <_sendReceiveSPIBufferBlocking>:
     b14:	0f 93       	push	r16
     b16:	cf 93       	push	r28
     b18:	df 93       	push	r29
     b1a:	ec 01       	movw	r28, r24
     b1c:	89 2b       	or	r24, r25
     b1e:	b9 f1       	breq	.+110    	; 0xb8e <_sendReceiveSPIBufferBlocking+0x7a>
     b20:	a1 e4       	ldi	r26, 0x41	; 65
     b22:	b2 e0       	ldi	r27, 0x02	; 2
     b24:	fb 01       	movw	r30, r22
     b26:	30 e0       	ldi	r19, 0x00	; 0
     b28:	60 e0       	ldi	r22, 0x00	; 0
     b2a:	70 e0       	ldi	r23, 0x00	; 0
     b2c:	44 23       	and	r20, r20
     b2e:	19 f1       	breq	.+70     	; 0xb76 <_sendReceiveSPIBufferBlocking+0x62>
     b30:	30 81       	ld	r19, Z
     b32:	31 11       	cpse	r19, r1
     b34:	20 c0       	rjmp	.+64     	; 0xb76 <_sendReceiveSPIBufferBlocking+0x62>
     b36:	21 11       	cpse	r18, r1
     b38:	10 c0       	rjmp	.+32     	; 0xb5a <_sendReceiveSPIBufferBlocking+0x46>
     b3a:	90 e0       	ldi	r25, 0x00	; 0
     b3c:	9e bd       	out	0x2e, r25	; 46
     b3e:	0d b4       	in	r0, 0x2d	; 45
     b40:	07 fe       	sbrs	r0, 7
     b42:	fd cf       	rjmp	.-6      	; 0xb3e <_sendReceiveSPIBufferBlocking+0x2a>
     b44:	8e b5       	in	r24, 0x2e	; 46
     b46:	60 32       	cpi	r22, 0x20	; 32
     b48:	71 05       	cpc	r23, r1
     b4a:	24 f1       	brlt	.+72     	; 0xb94 <_sendReceiveSPIBufferBlocking+0x80>
     b4c:	6f 5f       	subi	r22, 0xFF	; 255
     b4e:	7f 4f       	sbci	r23, 0xFF	; 255
     b50:	11 96       	adiw	r26, 0x01	; 1
     b52:	31 96       	adiw	r30, 0x01	; 1
     b54:	6c 17       	cp	r22, r28
     b56:	7d 07       	cpc	r23, r29
     b58:	49 f7       	brne	.-46     	; 0xb2c <_sendReceiveSPIBufferBlocking+0x18>
     b5a:	00 23       	and	r16, r16
     b5c:	31 f0       	breq	.+12     	; 0xb6a <_sendReceiveSPIBufferBlocking+0x56>
     b5e:	cb 01       	movw	r24, r22
     b60:	01 97       	sbiw	r24, 0x01	; 1
     b62:	4f 97       	sbiw	r24, 0x1f	; 31
     b64:	50 f0       	brcs	.+20     	; 0xb7a <_sendReceiveSPIBufferBlocking+0x66>
     b66:	10 92 60 02 	sts	0x0260, r1	; 0x800260 <_receiveBuffer+0x1f>
     b6a:	81 e4       	ldi	r24, 0x41	; 65
     b6c:	92 e0       	ldi	r25, 0x02	; 2
     b6e:	df 91       	pop	r29
     b70:	cf 91       	pop	r28
     b72:	0f 91       	pop	r16
     b74:	08 95       	ret
     b76:	93 2f       	mov	r25, r19
     b78:	e1 cf       	rjmp	.-62     	; 0xb3c <_sendReceiveSPIBufferBlocking+0x28>
     b7a:	60 5c       	subi	r22, 0xC0	; 192
     b7c:	7d 4f       	sbci	r23, 0xFD	; 253
     b7e:	fb 01       	movw	r30, r22
     b80:	10 82       	st	Z, r1
     b82:	81 e4       	ldi	r24, 0x41	; 65
     b84:	92 e0       	ldi	r25, 0x02	; 2
     b86:	df 91       	pop	r29
     b88:	cf 91       	pop	r28
     b8a:	0f 91       	pop	r16
     b8c:	08 95       	ret
     b8e:	01 11       	cpse	r16, r1
     b90:	ea cf       	rjmp	.-44     	; 0xb66 <_sendReceiveSPIBufferBlocking+0x52>
     b92:	eb cf       	rjmp	.-42     	; 0xb6a <_sendReceiveSPIBufferBlocking+0x56>
     b94:	8c 93       	st	X, r24
     b96:	da cf       	rjmp	.-76     	; 0xb4c <_sendReceiveSPIBufferBlocking+0x38>

00000b98 <_i2cinit>:
     b98:	63 70       	andi	r22, 0x03	; 3
     b9a:	60 93 b9 00 	sts	0x00B9, r22	; 0x8000b9 <__TEXT_REGION_LENGTH__+0x7e00b9>
     b9e:	80 93 b8 00 	sts	0x00B8, r24	; 0x8000b8 <__TEXT_REGION_LENGTH__+0x7e00b8>
     ba2:	84 e0       	ldi	r24, 0x04	; 4
     ba4:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     ba8:	08 95       	ret

00000baa <_i2cstart>:
     baa:	84 ea       	ldi	r24, 0xA4	; 164
     bac:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     bb0:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     bb4:	87 ff       	sbrs	r24, 7
     bb6:	fc cf       	rjmp	.-8      	; 0xbb0 <_i2cstart+0x6>
     bb8:	08 95       	ret

00000bba <_i2cstop>:
     bba:	84 e9       	ldi	r24, 0x94	; 148
     bbc:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     bc0:	08 95       	ret

00000bc2 <_i2cwrite>:
     bc2:	80 93 bb 00 	sts	0x00BB, r24	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7e00bb>
     bc6:	84 e8       	ldi	r24, 0x84	; 132
     bc8:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     bcc:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     bd0:	87 ff       	sbrs	r24, 7
     bd2:	fc cf       	rjmp	.-8      	; 0xbcc <_i2cwrite+0xa>
     bd4:	08 95       	ret

00000bd6 <_i2cread>:
     bd6:	81 11       	cpse	r24, r1
     bd8:	06 c0       	rjmp	.+12     	; 0xbe6 <_i2cread+0x10>
     bda:	84 ec       	ldi	r24, 0xC4	; 196
     bdc:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     be0:	80 91 bb 00 	lds	r24, 0x00BB	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7e00bb>
     be4:	08 95       	ret
     be6:	84 e8       	ldi	r24, 0x84	; 132
     be8:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     bec:	80 91 bb 00 	lds	r24, 0x00BB	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7e00bb>
     bf0:	08 95       	ret

00000bf2 <_i2cReadSingleByte>:
     bf2:	88 0f       	add	r24, r24
     bf4:	88 0f       	add	r24, r24
     bf6:	80 93 bb 00 	sts	0x00BB, r24	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7e00bb>
     bfa:	84 e8       	ldi	r24, 0x84	; 132
     bfc:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     c00:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     c04:	87 ff       	sbrs	r24, 7
     c06:	fc cf       	rjmp	.-8      	; 0xc00 <_i2cReadSingleByte+0xe>
     c08:	84 ec       	ldi	r24, 0xC4	; 196
     c0a:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     c0e:	80 91 bb 00 	lds	r24, 0x00BB	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7e00bb>
     c12:	08 95       	ret

00000c14 <_i2cReadBuffer>:
     c14:	88 0f       	add	r24, r24
     c16:	88 0f       	add	r24, r24
     c18:	80 93 bb 00 	sts	0x00BB, r24	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7e00bb>
     c1c:	84 e8       	ldi	r24, 0x84	; 132
     c1e:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     c22:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     c26:	87 ff       	sbrs	r24, 7
     c28:	fc cf       	rjmp	.-8      	; 0xc22 <_i2cReadBuffer+0xe>
     c2a:	70 e0       	ldi	r23, 0x00	; 0
     c2c:	61 15       	cp	r22, r1
     c2e:	71 05       	cpc	r23, r1
     c30:	91 f0       	breq	.+36     	; 0xc56 <_i2cReadBuffer+0x42>
     c32:	e1 e4       	ldi	r30, 0x41	; 65
     c34:	f2 e0       	ldi	r31, 0x02	; 2
     c36:	80 e0       	ldi	r24, 0x00	; 0
     c38:	90 e0       	ldi	r25, 0x00	; 0
     c3a:	34 e8       	ldi	r19, 0x84	; 132
     c3c:	01 96       	adiw	r24, 0x01	; 1
     c3e:	86 17       	cp	r24, r22
     c40:	97 07       	cpc	r25, r23
     c42:	1c f4       	brge	.+6      	; 0xc4a <_i2cReadBuffer+0x36>
     c44:	80 32       	cpi	r24, 0x20	; 32
     c46:	91 05       	cpc	r25, r1
     c48:	49 f4       	brne	.+18     	; 0xc5c <_i2cReadBuffer+0x48>
     c4a:	84 ec       	ldi	r24, 0xC4	; 196
     c4c:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     c50:	80 91 bb 00 	lds	r24, 0x00BB	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7e00bb>
     c54:	80 83       	st	Z, r24
     c56:	81 e4       	ldi	r24, 0x41	; 65
     c58:	92 e0       	ldi	r25, 0x02	; 2
     c5a:	08 95       	ret
     c5c:	30 93 bc 00 	sts	0x00BC, r19	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     c60:	20 91 bb 00 	lds	r18, 0x00BB	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7e00bb>
     c64:	21 93       	st	Z+, r18
     c66:	ea cf       	rjmp	.-44     	; 0xc3c <_i2cReadBuffer+0x28>

00000c68 <_i2cWriteByte>:
     c68:	90 e0       	ldi	r25, 0x00	; 0
     c6a:	88 0f       	add	r24, r24
     c6c:	99 1f       	adc	r25, r25
     c6e:	80 93 bb 00 	sts	0x00BB, r24	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7e00bb>
     c72:	84 e8       	ldi	r24, 0x84	; 132
     c74:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     c78:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     c7c:	87 ff       	sbrs	r24, 7
     c7e:	fc cf       	rjmp	.-8      	; 0xc78 <_i2cWriteByte+0x10>
     c80:	60 93 bb 00 	sts	0x00BB, r22	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7e00bb>
     c84:	84 e8       	ldi	r24, 0x84	; 132
     c86:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     c8a:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     c8e:	87 ff       	sbrs	r24, 7
     c90:	fc cf       	rjmp	.-8      	; 0xc8a <_i2cWriteByte+0x22>
     c92:	08 95       	ret

00000c94 <_i2cWriteBuffer>:
     c94:	90 e0       	ldi	r25, 0x00	; 0
     c96:	88 0f       	add	r24, r24
     c98:	99 1f       	adc	r25, r25
     c9a:	80 93 bb 00 	sts	0x00BB, r24	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7e00bb>
     c9e:	84 e8       	ldi	r24, 0x84	; 132
     ca0:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     ca4:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     ca8:	87 ff       	sbrs	r24, 7
     caa:	fc cf       	rjmp	.-8      	; 0xca4 <_i2cWriteBuffer+0x10>
     cac:	61 15       	cp	r22, r1
     cae:	71 05       	cpc	r23, r1
     cb0:	b1 f0       	breq	.+44     	; 0xcde <_i2cWriteBuffer+0x4a>
     cb2:	fa 01       	movw	r30, r20
     cb4:	80 81       	ld	r24, Z
     cb6:	88 23       	and	r24, r24
     cb8:	91 f0       	breq	.+36     	; 0xcde <_i2cWriteBuffer+0x4a>
     cba:	31 96       	adiw	r30, 0x01	; 1
     cbc:	64 0f       	add	r22, r20
     cbe:	75 1f       	adc	r23, r21
     cc0:	94 e8       	ldi	r25, 0x84	; 132
     cc2:	80 93 bb 00 	sts	0x00BB, r24	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7e00bb>
     cc6:	90 93 bc 00 	sts	0x00BC, r25	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     cca:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     cce:	87 ff       	sbrs	r24, 7
     cd0:	fc cf       	rjmp	.-8      	; 0xcca <_i2cWriteBuffer+0x36>
     cd2:	6e 17       	cp	r22, r30
     cd4:	7f 07       	cpc	r23, r31
     cd6:	19 f0       	breq	.+6      	; 0xcde <_i2cWriteBuffer+0x4a>
     cd8:	81 91       	ld	r24, Z+
     cda:	81 11       	cpse	r24, r1
     cdc:	f2 cf       	rjmp	.-28     	; 0xcc2 <_i2cWriteBuffer+0x2e>
     cde:	08 95       	ret

00000ce0 <_i2cWritePGMString>:
     ce0:	1f 93       	push	r17
     ce2:	cf 93       	push	r28
     ce4:	df 93       	push	r29
     ce6:	eb 01       	movw	r28, r22
     ce8:	14 2f       	mov	r17, r20
     cea:	90 e0       	ldi	r25, 0x00	; 0
     cec:	88 0f       	add	r24, r24
     cee:	99 1f       	adc	r25, r25
     cf0:	80 93 bb 00 	sts	0x00BB, r24	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7e00bb>
     cf4:	84 e8       	ldi	r24, 0x84	; 132
     cf6:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     cfa:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     cfe:	87 ff       	sbrs	r24, 7
     d00:	fc cf       	rjmp	.-8      	; 0xcfa <_i2cWritePGMString+0x1a>
     d02:	68 ee       	ldi	r22, 0xE8	; 232
     d04:	73 e0       	ldi	r23, 0x03	; 3
     d06:	ce 01       	movw	r24, r28
     d08:	0e 94 2c 0d 	call	0x1a58	; 0x1a58 <strnlen>
     d0c:	bc 01       	movw	r22, r24
     d0e:	89 2b       	or	r24, r25
     d10:	b9 f0       	breq	.+46     	; 0xd40 <_i2cWritePGMString+0x60>
     d12:	fe 01       	movw	r30, r28
     d14:	94 91       	lpm	r25, Z
     d16:	99 23       	and	r25, r25
     d18:	99 f0       	breq	.+38     	; 0xd40 <_i2cWritePGMString+0x60>
     d1a:	31 96       	adiw	r30, 0x01	; 1
     d1c:	6c 0f       	add	r22, r28
     d1e:	7d 1f       	adc	r23, r29
     d20:	84 e8       	ldi	r24, 0x84	; 132
     d22:	90 93 bb 00 	sts	0x00BB, r25	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7e00bb>
     d26:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     d2a:	90 91 bc 00 	lds	r25, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     d2e:	97 ff       	sbrs	r25, 7
     d30:	fc cf       	rjmp	.-8      	; 0xd2a <_i2cWritePGMString+0x4a>
     d32:	e6 17       	cp	r30, r22
     d34:	f7 07       	cpc	r31, r23
     d36:	21 f0       	breq	.+8      	; 0xd40 <_i2cWritePGMString+0x60>
     d38:	94 91       	lpm	r25, Z
     d3a:	31 96       	adiw	r30, 0x01	; 1
     d3c:	91 11       	cpse	r25, r1
     d3e:	f1 cf       	rjmp	.-30     	; 0xd22 <_i2cWritePGMString+0x42>
     d40:	11 23       	and	r17, r17
     d42:	51 f0       	breq	.+20     	; 0xd58 <_i2cWritePGMString+0x78>
     d44:	8a e0       	ldi	r24, 0x0A	; 10
     d46:	80 93 bb 00 	sts	0x00BB, r24	; 0x8000bb <__TEXT_REGION_LENGTH__+0x7e00bb>
     d4a:	84 e8       	ldi	r24, 0x84	; 132
     d4c:	80 93 bc 00 	sts	0x00BC, r24	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     d50:	80 91 bc 00 	lds	r24, 0x00BC	; 0x8000bc <__TEXT_REGION_LENGTH__+0x7e00bc>
     d54:	87 ff       	sbrs	r24, 7
     d56:	fc cf       	rjmp	.-8      	; 0xd50 <_i2cWritePGMString+0x70>
     d58:	df 91       	pop	r29
     d5a:	cf 91       	pop	r28
     d5c:	1f 91       	pop	r17
     d5e:	08 95       	ret

00000d60 <_analogWrite>:
     d60:	cf 93       	push	r28
     d62:	df 93       	push	r29
     d64:	c8 2f       	mov	r28, r24
     d66:	d6 2f       	mov	r29, r22
     d68:	60 91 10 01 	lds	r22, 0x0110	; 0x800110 <_OUTPUT>
     d6c:	0e 94 e1 02 	call	0x5c2	; 0x5c2 <_pinMode>
     d70:	c6 30       	cpi	r28, 0x06	; 6
     d72:	09 f4       	brne	.+2      	; 0xd76 <_analogWrite+0x16>
     d74:	5b c0       	rjmp	.+182    	; 0xe2c <_analogWrite+0xcc>
     d76:	50 f0       	brcs	.+20     	; 0xd8c <_analogWrite+0x2c>
     d78:	ca 30       	cpi	r28, 0x0A	; 10
     d7a:	b9 f0       	breq	.+46     	; 0xdaa <_analogWrite+0x4a>
     d7c:	cb 30       	cpi	r28, 0x0B	; 11
     d7e:	09 f4       	brne	.+2      	; 0xd82 <_analogWrite+0x22>
     d80:	46 c0       	rjmp	.+140    	; 0xe0e <_analogWrite+0xae>
     d82:	c9 30       	cpi	r28, 0x09	; 9
     d84:	21 f1       	breq	.+72     	; 0xdce <_analogWrite+0x6e>
     d86:	df 91       	pop	r29
     d88:	cf 91       	pop	r28
     d8a:	08 95       	ret
     d8c:	c3 30       	cpi	r28, 0x03	; 3
     d8e:	89 f1       	breq	.+98     	; 0xdf2 <_analogWrite+0x92>
     d90:	c5 30       	cpi	r28, 0x05	; 5
     d92:	c9 f7       	brne	.-14     	; 0xd86 <_analogWrite+0x26>
     d94:	84 b5       	in	r24, 0x24	; 36
     d96:	dd 23       	and	r29, r29
     d98:	09 f4       	brne	.+2      	; 0xd9c <_analogWrite+0x3c>
     d9a:	52 c0       	rjmp	.+164    	; 0xe40 <_analogWrite+0xe0>
     d9c:	df 3f       	cpi	r29, 0xFF	; 255
     d9e:	09 f4       	brne	.+2      	; 0xda2 <_analogWrite+0x42>
     da0:	9e c0       	rjmp	.+316    	; 0xede <_analogWrite+0x17e>
     da2:	80 62       	ori	r24, 0x20	; 32
     da4:	84 bd       	out	0x24, r24	; 36
     da6:	d8 bd       	out	0x28, r29	; 40
     da8:	ee cf       	rjmp	.-36     	; 0xd86 <_analogWrite+0x26>
     daa:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     dae:	dd 23       	and	r29, r29
     db0:	09 f4       	brne	.+2      	; 0xdb4 <_analogWrite+0x54>
     db2:	7b c0       	rjmp	.+246    	; 0xeaa <_analogWrite+0x14a>
     db4:	df 3f       	cpi	r29, 0xFF	; 255
     db6:	09 f4       	brne	.+2      	; 0xdba <_analogWrite+0x5a>
     db8:	85 c0       	rjmp	.+266    	; 0xec4 <_analogWrite+0x164>
     dba:	80 62       	ori	r24, 0x20	; 32
     dbc:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     dc0:	6d 2f       	mov	r22, r29
     dc2:	70 e0       	ldi	r23, 0x00	; 0
     dc4:	70 93 8b 00 	sts	0x008B, r23	; 0x80008b <__TEXT_REGION_LENGTH__+0x7e008b>
     dc8:	60 93 8a 00 	sts	0x008A, r22	; 0x80008a <__TEXT_REGION_LENGTH__+0x7e008a>
     dcc:	dc cf       	rjmp	.-72     	; 0xd86 <_analogWrite+0x26>
     dce:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     dd2:	dd 23       	and	r29, r29
     dd4:	09 f4       	brne	.+2      	; 0xdd8 <_analogWrite+0x78>
     dd6:	5c c0       	rjmp	.+184    	; 0xe90 <_analogWrite+0x130>
     dd8:	df 3f       	cpi	r29, 0xFF	; 255
     dda:	09 f4       	brne	.+2      	; 0xdde <_analogWrite+0x7e>
     ddc:	94 c0       	rjmp	.+296    	; 0xf06 <_analogWrite+0x1a6>
     dde:	80 68       	ori	r24, 0x80	; 128
     de0:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     de4:	6d 2f       	mov	r22, r29
     de6:	70 e0       	ldi	r23, 0x00	; 0
     de8:	70 93 89 00 	sts	0x0089, r23	; 0x800089 <__TEXT_REGION_LENGTH__+0x7e0089>
     dec:	60 93 88 00 	sts	0x0088, r22	; 0x800088 <__TEXT_REGION_LENGTH__+0x7e0088>
     df0:	ca cf       	rjmp	.-108    	; 0xd86 <_analogWrite+0x26>
     df2:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     df6:	dd 23       	and	r29, r29
     df8:	09 f4       	brne	.+2      	; 0xdfc <_analogWrite+0x9c>
     dfa:	3f c0       	rjmp	.+126    	; 0xe7a <_analogWrite+0x11a>
     dfc:	df 3f       	cpi	r29, 0xFF	; 255
     dfe:	09 f4       	brne	.+2      	; 0xe02 <_analogWrite+0xa2>
     e00:	77 c0       	rjmp	.+238    	; 0xef0 <_analogWrite+0x190>
     e02:	80 62       	ori	r24, 0x20	; 32
     e04:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     e08:	d0 93 b4 00 	sts	0x00B4, r29	; 0x8000b4 <__TEXT_REGION_LENGTH__+0x7e00b4>
     e0c:	bc cf       	rjmp	.-136    	; 0xd86 <_analogWrite+0x26>
     e0e:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     e12:	dd 23       	and	r29, r29
     e14:	39 f1       	breq	.+78     	; 0xe64 <_analogWrite+0x104>
     e16:	df 3f       	cpi	r29, 0xFF	; 255
     e18:	09 f4       	brne	.+2      	; 0xe1c <_analogWrite+0xbc>
     e1a:	8b c0       	rjmp	.+278    	; 0xf32 <_analogWrite+0x1d2>
     e1c:	80 68       	ori	r24, 0x80	; 128
     e1e:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     e22:	d0 93 b3 00 	sts	0x00B3, r29	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
     e26:	df 91       	pop	r29
     e28:	cf 91       	pop	r28
     e2a:	08 95       	ret
     e2c:	84 b5       	in	r24, 0x24	; 36
     e2e:	dd 23       	and	r29, r29
     e30:	81 f0       	breq	.+32     	; 0xe52 <_analogWrite+0xf2>
     e32:	df 3f       	cpi	r29, 0xFF	; 255
     e34:	09 f4       	brne	.+2      	; 0xe38 <_analogWrite+0xd8>
     e36:	74 c0       	rjmp	.+232    	; 0xf20 <_analogWrite+0x1c0>
     e38:	80 68       	ori	r24, 0x80	; 128
     e3a:	84 bd       	out	0x24, r24	; 36
     e3c:	d7 bd       	out	0x27, r29	; 39
     e3e:	a3 cf       	rjmp	.-186    	; 0xd86 <_analogWrite+0x26>
     e40:	8f 7d       	andi	r24, 0xDF	; 223
     e42:	84 bd       	out	0x24, r24	; 36
     e44:	60 91 11 01 	lds	r22, 0x0111	; 0x800111 <_LOW>
     e48:	85 e0       	ldi	r24, 0x05	; 5
     e4a:	0e 94 a0 02 	call	0x540	; 0x540 <_digitalWrite>
     e4e:	18 bc       	out	0x28, r1	; 40
     e50:	9a cf       	rjmp	.-204    	; 0xd86 <_analogWrite+0x26>
     e52:	8f 77       	andi	r24, 0x7F	; 127
     e54:	84 bd       	out	0x24, r24	; 36
     e56:	60 91 11 01 	lds	r22, 0x0111	; 0x800111 <_LOW>
     e5a:	86 e0       	ldi	r24, 0x06	; 6
     e5c:	0e 94 a0 02 	call	0x540	; 0x540 <_digitalWrite>
     e60:	17 bc       	out	0x27, r1	; 39
     e62:	91 cf       	rjmp	.-222    	; 0xd86 <_analogWrite+0x26>
     e64:	8f 77       	andi	r24, 0x7F	; 127
     e66:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     e6a:	60 91 11 01 	lds	r22, 0x0111	; 0x800111 <_LOW>
     e6e:	8b e0       	ldi	r24, 0x0B	; 11
     e70:	0e 94 a0 02 	call	0x540	; 0x540 <_digitalWrite>
     e74:	10 92 b3 00 	sts	0x00B3, r1	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
     e78:	86 cf       	rjmp	.-244    	; 0xd86 <_analogWrite+0x26>
     e7a:	8f 7d       	andi	r24, 0xDF	; 223
     e7c:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     e80:	60 91 11 01 	lds	r22, 0x0111	; 0x800111 <_LOW>
     e84:	83 e0       	ldi	r24, 0x03	; 3
     e86:	0e 94 a0 02 	call	0x540	; 0x540 <_digitalWrite>
     e8a:	10 92 b4 00 	sts	0x00B4, r1	; 0x8000b4 <__TEXT_REGION_LENGTH__+0x7e00b4>
     e8e:	7b cf       	rjmp	.-266    	; 0xd86 <_analogWrite+0x26>
     e90:	8f 77       	andi	r24, 0x7F	; 127
     e92:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     e96:	60 91 11 01 	lds	r22, 0x0111	; 0x800111 <_LOW>
     e9a:	89 e0       	ldi	r24, 0x09	; 9
     e9c:	0e 94 a0 02 	call	0x540	; 0x540 <_digitalWrite>
     ea0:	10 92 89 00 	sts	0x0089, r1	; 0x800089 <__TEXT_REGION_LENGTH__+0x7e0089>
     ea4:	10 92 88 00 	sts	0x0088, r1	; 0x800088 <__TEXT_REGION_LENGTH__+0x7e0088>
     ea8:	6e cf       	rjmp	.-292    	; 0xd86 <_analogWrite+0x26>
     eaa:	8f 7d       	andi	r24, 0xDF	; 223
     eac:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     eb0:	60 91 11 01 	lds	r22, 0x0111	; 0x800111 <_LOW>
     eb4:	8a e0       	ldi	r24, 0x0A	; 10
     eb6:	0e 94 a0 02 	call	0x540	; 0x540 <_digitalWrite>
     eba:	10 92 8b 00 	sts	0x008B, r1	; 0x80008b <__TEXT_REGION_LENGTH__+0x7e008b>
     ebe:	10 92 8a 00 	sts	0x008A, r1	; 0x80008a <__TEXT_REGION_LENGTH__+0x7e008a>
     ec2:	61 cf       	rjmp	.-318    	; 0xd86 <_analogWrite+0x26>
     ec4:	8f 7d       	andi	r24, 0xDF	; 223
     ec6:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     eca:	60 91 12 01 	lds	r22, 0x0112	; 0x800112 <_HIGH>
     ece:	8a e0       	ldi	r24, 0x0A	; 10
     ed0:	0e 94 a0 02 	call	0x540	; 0x540 <_digitalWrite>
     ed4:	10 92 8b 00 	sts	0x008B, r1	; 0x80008b <__TEXT_REGION_LENGTH__+0x7e008b>
     ed8:	10 92 8a 00 	sts	0x008A, r1	; 0x80008a <__TEXT_REGION_LENGTH__+0x7e008a>
     edc:	54 cf       	rjmp	.-344    	; 0xd86 <_analogWrite+0x26>
     ede:	8f 7d       	andi	r24, 0xDF	; 223
     ee0:	84 bd       	out	0x24, r24	; 36
     ee2:	60 91 12 01 	lds	r22, 0x0112	; 0x800112 <_HIGH>
     ee6:	85 e0       	ldi	r24, 0x05	; 5
     ee8:	0e 94 a0 02 	call	0x540	; 0x540 <_digitalWrite>
     eec:	18 bc       	out	0x28, r1	; 40
     eee:	4b cf       	rjmp	.-362    	; 0xd86 <_analogWrite+0x26>
     ef0:	8f 7d       	andi	r24, 0xDF	; 223
     ef2:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     ef6:	60 91 12 01 	lds	r22, 0x0112	; 0x800112 <_HIGH>
     efa:	83 e0       	ldi	r24, 0x03	; 3
     efc:	0e 94 a0 02 	call	0x540	; 0x540 <_digitalWrite>
     f00:	10 92 b4 00 	sts	0x00B4, r1	; 0x8000b4 <__TEXT_REGION_LENGTH__+0x7e00b4>
     f04:	40 cf       	rjmp	.-384    	; 0xd86 <_analogWrite+0x26>
     f06:	8f 77       	andi	r24, 0x7F	; 127
     f08:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     f0c:	60 91 12 01 	lds	r22, 0x0112	; 0x800112 <_HIGH>
     f10:	89 e0       	ldi	r24, 0x09	; 9
     f12:	0e 94 a0 02 	call	0x540	; 0x540 <_digitalWrite>
     f16:	10 92 89 00 	sts	0x0089, r1	; 0x800089 <__TEXT_REGION_LENGTH__+0x7e0089>
     f1a:	10 92 88 00 	sts	0x0088, r1	; 0x800088 <__TEXT_REGION_LENGTH__+0x7e0088>
     f1e:	33 cf       	rjmp	.-410    	; 0xd86 <_analogWrite+0x26>
     f20:	8f 77       	andi	r24, 0x7F	; 127
     f22:	84 bd       	out	0x24, r24	; 36
     f24:	60 91 12 01 	lds	r22, 0x0112	; 0x800112 <_HIGH>
     f28:	86 e0       	ldi	r24, 0x06	; 6
     f2a:	0e 94 a0 02 	call	0x540	; 0x540 <_digitalWrite>
     f2e:	17 bc       	out	0x27, r1	; 39
     f30:	2a cf       	rjmp	.-428    	; 0xd86 <_analogWrite+0x26>
     f32:	8f 77       	andi	r24, 0x7F	; 127
     f34:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     f38:	60 91 12 01 	lds	r22, 0x0112	; 0x800112 <_HIGH>
     f3c:	8b e0       	ldi	r24, 0x0B	; 11
     f3e:	0e 94 a0 02 	call	0x540	; 0x540 <_digitalWrite>
     f42:	10 92 b3 00 	sts	0x00B3, r1	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
     f46:	1f cf       	rjmp	.-450    	; 0xd86 <_analogWrite+0x26>

00000f48 <_startupADC>:
     f48:	87 e8       	ldi	r24, 0x87	; 135
     f4a:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     f4e:	8a e0       	ldi	r24, 0x0A	; 10
     f50:	90 e0       	ldi	r25, 0x00	; 0
     f52:	0e 94 a4 03 	call	0x748	; 0x748 <_delayMs>
     f56:	61 e0       	ldi	r22, 0x01	; 1
     f58:	8d e0       	ldi	r24, 0x0D	; 13
     f5a:	0e 94 e1 02 	call	0x5c2	; 0x5c2 <_pinMode>
     f5e:	60 e0       	ldi	r22, 0x00	; 0
     f60:	8d e0       	ldi	r24, 0x0D	; 13
     f62:	0c 94 a0 02 	jmp	0x540	; 0x540 <_digitalWrite>

00000f66 <_slowAnalogRead>:
     f66:	cf 93       	push	r28
     f68:	c8 2f       	mov	r28, r24
     f6a:	88 30       	cpi	r24, 0x08	; 8
     f6c:	38 f5       	brcc	.+78     	; 0xfbc <_slowAnalogRead+0x56>
     f6e:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     f72:	87 fd       	sbrc	r24, 7
     f74:	0f c0       	rjmp	.+30     	; 0xf94 <_slowAnalogRead+0x2e>
     f76:	87 e8       	ldi	r24, 0x87	; 135
     f78:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     f7c:	8a e0       	ldi	r24, 0x0A	; 10
     f7e:	90 e0       	ldi	r25, 0x00	; 0
     f80:	0e 94 a4 03 	call	0x748	; 0x748 <_delayMs>
     f84:	61 e0       	ldi	r22, 0x01	; 1
     f86:	8d e0       	ldi	r24, 0x0D	; 13
     f88:	0e 94 e1 02 	call	0x5c2	; 0x5c2 <_pinMode>
     f8c:	60 e0       	ldi	r22, 0x00	; 0
     f8e:	8d e0       	ldi	r24, 0x0D	; 13
     f90:	0e 94 a0 02 	call	0x540	; 0x540 <_digitalWrite>
     f94:	c0 64       	ori	r28, 0x40	; 64
     f96:	c0 93 7c 00 	sts	0x007C, r28	; 0x80007c <__TEXT_REGION_LENGTH__+0x7e007c>
     f9a:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     f9e:	80 64       	ori	r24, 0x40	; 64
     fa0:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     fa4:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     fa8:	86 fd       	sbrc	r24, 6
     faa:	fc cf       	rjmp	.-8      	; 0xfa4 <_slowAnalogRead+0x3e>
     fac:	80 91 78 00 	lds	r24, 0x0078	; 0x800078 <__TEXT_REGION_LENGTH__+0x7e0078>
     fb0:	20 91 79 00 	lds	r18, 0x0079	; 0x800079 <__TEXT_REGION_LENGTH__+0x7e0079>
     fb4:	90 e0       	ldi	r25, 0x00	; 0
     fb6:	92 2b       	or	r25, r18
     fb8:	cf 91       	pop	r28
     fba:	08 95       	ret
     fbc:	80 e0       	ldi	r24, 0x00	; 0
     fbe:	90 e0       	ldi	r25, 0x00	; 0
     fc0:	cf 91       	pop	r28
     fc2:	08 95       	ret

00000fc4 <__vector_21>:
     fc4:	1f 92       	push	r1
     fc6:	0f 92       	push	r0
     fc8:	0f b6       	in	r0, 0x3f	; 63
     fca:	0f 92       	push	r0
     fcc:	11 24       	eor	r1, r1
     fce:	2f 93       	push	r18
     fd0:	3f 93       	push	r19
     fd2:	4f 93       	push	r20
     fd4:	5f 93       	push	r21
     fd6:	6f 93       	push	r22
     fd8:	7f 93       	push	r23
     fda:	8f 93       	push	r24
     fdc:	9f 93       	push	r25
     fde:	af 93       	push	r26
     fe0:	bf 93       	push	r27
     fe2:	ef 93       	push	r30
     fe4:	ff 93       	push	r31
     fe6:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     fea:	87 7f       	andi	r24, 0xF7	; 247
     fec:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     ff0:	e0 91 3f 02 	lds	r30, 0x023F	; 0x80023f <currentCallback>
     ff4:	f0 91 40 02 	lds	r31, 0x0240	; 0x800240 <currentCallback+0x1>
     ff8:	30 97       	sbiw	r30, 0x00	; 0
     ffa:	59 f0       	breq	.+22     	; 0x1012 <__vector_21+0x4e>
     ffc:	80 91 78 00 	lds	r24, 0x0078	; 0x800078 <__TEXT_REGION_LENGTH__+0x7e0078>
    1000:	20 91 79 00 	lds	r18, 0x0079	; 0x800079 <__TEXT_REGION_LENGTH__+0x7e0079>
    1004:	90 e0       	ldi	r25, 0x00	; 0
    1006:	92 2b       	or	r25, r18
    1008:	09 95       	icall
    100a:	10 92 40 02 	sts	0x0240, r1	; 0x800240 <currentCallback+0x1>
    100e:	10 92 3f 02 	sts	0x023F, r1	; 0x80023f <currentCallback>
    1012:	ff 91       	pop	r31
    1014:	ef 91       	pop	r30
    1016:	bf 91       	pop	r27
    1018:	af 91       	pop	r26
    101a:	9f 91       	pop	r25
    101c:	8f 91       	pop	r24
    101e:	7f 91       	pop	r23
    1020:	6f 91       	pop	r22
    1022:	5f 91       	pop	r21
    1024:	4f 91       	pop	r20
    1026:	3f 91       	pop	r19
    1028:	2f 91       	pop	r18
    102a:	0f 90       	pop	r0
    102c:	0f be       	out	0x3f, r0	; 63
    102e:	0f 90       	pop	r0
    1030:	1f 90       	pop	r1
    1032:	18 95       	reti

00001034 <_analogReadAsync>:
    1034:	0f 93       	push	r16
    1036:	1f 93       	push	r17
    1038:	cf 93       	push	r28
    103a:	c8 2f       	mov	r28, r24
    103c:	8b 01       	movw	r16, r22
    103e:	88 30       	cpi	r24, 0x08	; 8
    1040:	e8 f4       	brcc	.+58     	; 0x107c <_analogReadAsync+0x48>
    1042:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
    1046:	87 fd       	sbrc	r24, 7
    1048:	0f c0       	rjmp	.+30     	; 0x1068 <_analogReadAsync+0x34>
    104a:	87 e8       	ldi	r24, 0x87	; 135
    104c:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
    1050:	8a e0       	ldi	r24, 0x0A	; 10
    1052:	90 e0       	ldi	r25, 0x00	; 0
    1054:	0e 94 a4 03 	call	0x748	; 0x748 <_delayMs>
    1058:	61 e0       	ldi	r22, 0x01	; 1
    105a:	8d e0       	ldi	r24, 0x0D	; 13
    105c:	0e 94 e1 02 	call	0x5c2	; 0x5c2 <_pinMode>
    1060:	60 e0       	ldi	r22, 0x00	; 0
    1062:	8d e0       	ldi	r24, 0x0D	; 13
    1064:	0e 94 a0 02 	call	0x540	; 0x540 <_digitalWrite>
    1068:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
    106c:	86 fd       	sbrc	r24, 6
    106e:	06 c0       	rjmp	.+12     	; 0x107c <_analogReadAsync+0x48>
    1070:	80 91 3f 02 	lds	r24, 0x023F	; 0x80023f <currentCallback>
    1074:	90 91 40 02 	lds	r25, 0x0240	; 0x800240 <currentCallback+0x1>
    1078:	89 2b       	or	r24, r25
    107a:	29 f0       	breq	.+10     	; 0x1086 <_analogReadAsync+0x52>
    107c:	80 e0       	ldi	r24, 0x00	; 0
    107e:	cf 91       	pop	r28
    1080:	1f 91       	pop	r17
    1082:	0f 91       	pop	r16
    1084:	08 95       	ret
    1086:	10 93 40 02 	sts	0x0240, r17	; 0x800240 <currentCallback+0x1>
    108a:	00 93 3f 02 	sts	0x023F, r16	; 0x80023f <currentCallback>
    108e:	c0 64       	ori	r28, 0x40	; 64
    1090:	c0 93 7c 00 	sts	0x007C, r28	; 0x80007c <__TEXT_REGION_LENGTH__+0x7e007c>
    1094:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
    1098:	88 64       	ori	r24, 0x48	; 72
    109a:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
    109e:	78 94       	sei
    10a0:	81 e0       	ldi	r24, 0x01	; 1
    10a2:	ed cf       	rjmp	.-38     	; 0x107e <_analogReadAsync+0x4a>

000010a4 <vfprintf>:
    10a4:	a0 e1       	ldi	r26, 0x10	; 16
    10a6:	b0 e0       	ldi	r27, 0x00	; 0
    10a8:	e8 e5       	ldi	r30, 0x58	; 88
    10aa:	f8 e0       	ldi	r31, 0x08	; 8
    10ac:	0c 94 0c 0c 	jmp	0x1818	; 0x1818 <__prologue_saves__>
    10b0:	7c 01       	movw	r14, r24
    10b2:	1b 01       	movw	r2, r22
    10b4:	6a 01       	movw	r12, r20
    10b6:	fc 01       	movw	r30, r24
    10b8:	17 82       	std	Z+7, r1	; 0x07
    10ba:	16 82       	std	Z+6, r1	; 0x06
    10bc:	83 81       	ldd	r24, Z+3	; 0x03
    10be:	81 ff       	sbrs	r24, 1
    10c0:	6d c3       	rjmp	.+1754   	; 0x179c <vfprintf+0x6f8>
    10c2:	9e 01       	movw	r18, r28
    10c4:	2f 5f       	subi	r18, 0xFF	; 255
    10c6:	3f 4f       	sbci	r19, 0xFF	; 255
    10c8:	59 01       	movw	r10, r18
    10ca:	f7 01       	movw	r30, r14
    10cc:	93 81       	ldd	r25, Z+3	; 0x03
    10ce:	f1 01       	movw	r30, r2
    10d0:	93 fd       	sbrc	r25, 3
    10d2:	85 91       	lpm	r24, Z+
    10d4:	93 ff       	sbrs	r25, 3
    10d6:	81 91       	ld	r24, Z+
    10d8:	1f 01       	movw	r2, r30
    10da:	88 23       	and	r24, r24
    10dc:	09 f4       	brne	.+2      	; 0x10e0 <vfprintf+0x3c>
    10de:	cc c2       	rjmp	.+1432   	; 0x1678 <vfprintf+0x5d4>
    10e0:	85 32       	cpi	r24, 0x25	; 37
    10e2:	39 f4       	brne	.+14     	; 0x10f2 <vfprintf+0x4e>
    10e4:	93 fd       	sbrc	r25, 3
    10e6:	85 91       	lpm	r24, Z+
    10e8:	93 ff       	sbrs	r25, 3
    10ea:	81 91       	ld	r24, Z+
    10ec:	1f 01       	movw	r2, r30
    10ee:	85 32       	cpi	r24, 0x25	; 37
    10f0:	39 f4       	brne	.+14     	; 0x1100 <vfprintf+0x5c>
    10f2:	b7 01       	movw	r22, r14
    10f4:	90 e0       	ldi	r25, 0x00	; 0
    10f6:	0e 94 37 0d 	call	0x1a6e	; 0x1a6e <fputc>
    10fa:	36 01       	movw	r6, r12
    10fc:	63 01       	movw	r12, r6
    10fe:	e5 cf       	rjmp	.-54     	; 0x10ca <vfprintf+0x26>
    1100:	51 2c       	mov	r5, r1
    1102:	91 2c       	mov	r9, r1
    1104:	00 e0       	ldi	r16, 0x00	; 0
    1106:	00 32       	cpi	r16, 0x20	; 32
    1108:	38 f4       	brcc	.+14     	; 0x1118 <vfprintf+0x74>
    110a:	8b 32       	cpi	r24, 0x2B	; 43
    110c:	09 f1       	breq	.+66     	; 0x1150 <vfprintf+0xac>
    110e:	90 f4       	brcc	.+36     	; 0x1134 <vfprintf+0x90>
    1110:	80 32       	cpi	r24, 0x20	; 32
    1112:	f9 f0       	breq	.+62     	; 0x1152 <vfprintf+0xae>
    1114:	83 32       	cpi	r24, 0x23	; 35
    1116:	09 f1       	breq	.+66     	; 0x115a <vfprintf+0xb6>
    1118:	07 fd       	sbrc	r16, 7
    111a:	34 c0       	rjmp	.+104    	; 0x1184 <vfprintf+0xe0>
    111c:	20 ed       	ldi	r18, 0xD0	; 208
    111e:	28 0f       	add	r18, r24
    1120:	2a 30       	cpi	r18, 0x0A	; 10
    1122:	20 f5       	brcc	.+72     	; 0x116c <vfprintf+0xc8>
    1124:	06 ff       	sbrs	r16, 6
    1126:	1b c0       	rjmp	.+54     	; 0x115e <vfprintf+0xba>
    1128:	fa e0       	ldi	r31, 0x0A	; 10
    112a:	5f 9e       	mul	r5, r31
    112c:	20 0d       	add	r18, r0
    112e:	11 24       	eor	r1, r1
    1130:	52 2e       	mov	r5, r18
    1132:	05 c0       	rjmp	.+10     	; 0x113e <vfprintf+0x9a>
    1134:	8d 32       	cpi	r24, 0x2D	; 45
    1136:	79 f0       	breq	.+30     	; 0x1156 <vfprintf+0xb2>
    1138:	80 33       	cpi	r24, 0x30	; 48
    113a:	71 f7       	brne	.-36     	; 0x1118 <vfprintf+0x74>
    113c:	01 60       	ori	r16, 0x01	; 1
    113e:	f1 01       	movw	r30, r2
    1140:	93 fd       	sbrc	r25, 3
    1142:	85 91       	lpm	r24, Z+
    1144:	93 ff       	sbrs	r25, 3
    1146:	81 91       	ld	r24, Z+
    1148:	1f 01       	movw	r2, r30
    114a:	81 11       	cpse	r24, r1
    114c:	dc cf       	rjmp	.-72     	; 0x1106 <vfprintf+0x62>
    114e:	1a c0       	rjmp	.+52     	; 0x1184 <vfprintf+0xe0>
    1150:	02 60       	ori	r16, 0x02	; 2
    1152:	04 60       	ori	r16, 0x04	; 4
    1154:	f4 cf       	rjmp	.-24     	; 0x113e <vfprintf+0x9a>
    1156:	08 60       	ori	r16, 0x08	; 8
    1158:	f2 cf       	rjmp	.-28     	; 0x113e <vfprintf+0x9a>
    115a:	00 61       	ori	r16, 0x10	; 16
    115c:	f0 cf       	rjmp	.-32     	; 0x113e <vfprintf+0x9a>
    115e:	3a e0       	ldi	r19, 0x0A	; 10
    1160:	93 9e       	mul	r9, r19
    1162:	20 0d       	add	r18, r0
    1164:	11 24       	eor	r1, r1
    1166:	92 2e       	mov	r9, r18
    1168:	00 62       	ori	r16, 0x20	; 32
    116a:	e9 cf       	rjmp	.-46     	; 0x113e <vfprintf+0x9a>
    116c:	8e 32       	cpi	r24, 0x2E	; 46
    116e:	21 f4       	brne	.+8      	; 0x1178 <vfprintf+0xd4>
    1170:	06 fd       	sbrc	r16, 6
    1172:	82 c2       	rjmp	.+1284   	; 0x1678 <vfprintf+0x5d4>
    1174:	00 64       	ori	r16, 0x40	; 64
    1176:	e3 cf       	rjmp	.-58     	; 0x113e <vfprintf+0x9a>
    1178:	8c 36       	cpi	r24, 0x6C	; 108
    117a:	11 f4       	brne	.+4      	; 0x1180 <vfprintf+0xdc>
    117c:	00 68       	ori	r16, 0x80	; 128
    117e:	df cf       	rjmp	.-66     	; 0x113e <vfprintf+0x9a>
    1180:	88 36       	cpi	r24, 0x68	; 104
    1182:	e9 f2       	breq	.-70     	; 0x113e <vfprintf+0x9a>
    1184:	9b eb       	ldi	r25, 0xBB	; 187
    1186:	98 0f       	add	r25, r24
    1188:	93 30       	cpi	r25, 0x03	; 3
    118a:	d8 f5       	brcc	.+118    	; 0x1202 <vfprintf+0x15e>
    118c:	00 61       	ori	r16, 0x10	; 16
    118e:	80 5e       	subi	r24, 0xE0	; 224
    1190:	06 fd       	sbrc	r16, 6
    1192:	02 c0       	rjmp	.+4      	; 0x1198 <vfprintf+0xf4>
    1194:	46 e0       	ldi	r20, 0x06	; 6
    1196:	54 2e       	mov	r5, r20
    1198:	10 2f       	mov	r17, r16
    119a:	1f 73       	andi	r17, 0x3F	; 63
    119c:	85 36       	cpi	r24, 0x65	; 101
    119e:	c1 f5       	brne	.+112    	; 0x1210 <vfprintf+0x16c>
    11a0:	10 64       	ori	r17, 0x40	; 64
    11a2:	17 ff       	sbrs	r17, 7
    11a4:	3e c0       	rjmp	.+124    	; 0x1222 <vfprintf+0x17e>
    11a6:	8b e3       	ldi	r24, 0x3B	; 59
    11a8:	85 15       	cp	r24, r5
    11aa:	08 f4       	brcc	.+2      	; 0x11ae <vfprintf+0x10a>
    11ac:	42 c0       	rjmp	.+132    	; 0x1232 <vfprintf+0x18e>
    11ae:	91 e0       	ldi	r25, 0x01	; 1
    11b0:	95 0d       	add	r25, r5
    11b2:	9c 87       	std	Y+12, r25	; 0x0c
    11b4:	27 e0       	ldi	r18, 0x07	; 7
    11b6:	36 01       	movw	r6, r12
    11b8:	34 e0       	ldi	r19, 0x04	; 4
    11ba:	63 0e       	add	r6, r19
    11bc:	71 1c       	adc	r7, r1
    11be:	f6 01       	movw	r30, r12
    11c0:	60 81       	ld	r22, Z
    11c2:	71 81       	ldd	r23, Z+1	; 0x01
    11c4:	82 81       	ldd	r24, Z+2	; 0x02
    11c6:	93 81       	ldd	r25, Z+3	; 0x03
    11c8:	0c 85       	ldd	r16, Y+12	; 0x0c
    11ca:	a5 01       	movw	r20, r10
    11cc:	0e 94 49 0c 	call	0x1892	; 0x1892 <__ftoa_engine>
    11d0:	6c 01       	movw	r12, r24
    11d2:	f9 81       	ldd	r31, Y+1	; 0x01
    11d4:	fe 87       	std	Y+14, r31	; 0x0e
    11d6:	f0 ff       	sbrs	r31, 0
    11d8:	02 c0       	rjmp	.+4      	; 0x11de <vfprintf+0x13a>
    11da:	f3 ff       	sbrs	r31, 3
    11dc:	30 c0       	rjmp	.+96     	; 0x123e <vfprintf+0x19a>
    11de:	11 fd       	sbrc	r17, 1
    11e0:	30 c0       	rjmp	.+96     	; 0x1242 <vfprintf+0x19e>
    11e2:	01 2f       	mov	r16, r17
    11e4:	04 70       	andi	r16, 0x04	; 4
    11e6:	12 fd       	sbrc	r17, 2
    11e8:	00 e2       	ldi	r16, 0x20	; 32
    11ea:	2e 85       	ldd	r18, Y+14	; 0x0e
    11ec:	2c 70       	andi	r18, 0x0C	; 12
    11ee:	42 2e       	mov	r4, r18
    11f0:	09 f4       	brne	.+2      	; 0x11f4 <vfprintf+0x150>
    11f2:	64 c0       	rjmp	.+200    	; 0x12bc <vfprintf+0x218>
    11f4:	01 11       	cpse	r16, r1
    11f6:	d5 c2       	rjmp	.+1450   	; 0x17a2 <vfprintf+0x6fe>
    11f8:	f3 e0       	ldi	r31, 0x03	; 3
    11fa:	f9 15       	cp	r31, r9
    11fc:	20 f1       	brcs	.+72     	; 0x1246 <vfprintf+0x1a2>
    11fe:	41 2c       	mov	r4, r1
    1200:	36 c0       	rjmp	.+108    	; 0x126e <vfprintf+0x1ca>
    1202:	9b e9       	ldi	r25, 0x9B	; 155
    1204:	98 0f       	add	r25, r24
    1206:	93 30       	cpi	r25, 0x03	; 3
    1208:	08 f0       	brcs	.+2      	; 0x120c <vfprintf+0x168>
    120a:	76 c1       	rjmp	.+748    	; 0x14f8 <vfprintf+0x454>
    120c:	0f 7e       	andi	r16, 0xEF	; 239
    120e:	c0 cf       	rjmp	.-128    	; 0x1190 <vfprintf+0xec>
    1210:	86 36       	cpi	r24, 0x66	; 102
    1212:	11 f4       	brne	.+4      	; 0x1218 <vfprintf+0x174>
    1214:	10 68       	ori	r17, 0x80	; 128
    1216:	c5 cf       	rjmp	.-118    	; 0x11a2 <vfprintf+0xfe>
    1218:	55 20       	and	r5, r5
    121a:	09 f4       	brne	.+2      	; 0x121e <vfprintf+0x17a>
    121c:	c2 cf       	rjmp	.-124    	; 0x11a2 <vfprintf+0xfe>
    121e:	5a 94       	dec	r5
    1220:	c0 cf       	rjmp	.-128    	; 0x11a2 <vfprintf+0xfe>
    1222:	e7 e0       	ldi	r30, 0x07	; 7
    1224:	e5 15       	cp	r30, r5
    1226:	48 f4       	brcc	.+18     	; 0x123a <vfprintf+0x196>
    1228:	27 e0       	ldi	r18, 0x07	; 7
    122a:	37 e0       	ldi	r19, 0x07	; 7
    122c:	53 2e       	mov	r5, r19
    122e:	1c 86       	std	Y+12, r1	; 0x0c
    1230:	c2 cf       	rjmp	.-124    	; 0x11b6 <vfprintf+0x112>
    1232:	27 e0       	ldi	r18, 0x07	; 7
    1234:	fc e3       	ldi	r31, 0x3C	; 60
    1236:	fc 87       	std	Y+12, r31	; 0x0c
    1238:	be cf       	rjmp	.-132    	; 0x11b6 <vfprintf+0x112>
    123a:	25 2d       	mov	r18, r5
    123c:	f8 cf       	rjmp	.-16     	; 0x122e <vfprintf+0x18a>
    123e:	0d e2       	ldi	r16, 0x2D	; 45
    1240:	d4 cf       	rjmp	.-88     	; 0x11ea <vfprintf+0x146>
    1242:	0b e2       	ldi	r16, 0x2B	; 43
    1244:	d2 cf       	rjmp	.-92     	; 0x11ea <vfprintf+0x146>
    1246:	83 e0       	ldi	r24, 0x03	; 3
    1248:	49 2c       	mov	r4, r9
    124a:	48 1a       	sub	r4, r24
    124c:	13 fd       	sbrc	r17, 3
    124e:	08 c0       	rjmp	.+16     	; 0x1260 <vfprintf+0x1bc>
    1250:	b7 01       	movw	r22, r14
    1252:	80 e2       	ldi	r24, 0x20	; 32
    1254:	90 e0       	ldi	r25, 0x00	; 0
    1256:	0e 94 37 0d 	call	0x1a6e	; 0x1a6e <fputc>
    125a:	4a 94       	dec	r4
    125c:	41 10       	cpse	r4, r1
    125e:	f8 cf       	rjmp	.-16     	; 0x1250 <vfprintf+0x1ac>
    1260:	00 23       	and	r16, r16
    1262:	29 f0       	breq	.+10     	; 0x126e <vfprintf+0x1ca>
    1264:	b7 01       	movw	r22, r14
    1266:	80 2f       	mov	r24, r16
    1268:	90 e0       	ldi	r25, 0x00	; 0
    126a:	0e 94 37 0d 	call	0x1a6e	; 0x1a6e <fputc>
    126e:	3e 85       	ldd	r19, Y+14	; 0x0e
    1270:	33 ff       	sbrs	r19, 3
    1272:	15 c0       	rjmp	.+42     	; 0x129e <vfprintf+0x1fa>
    1274:	98 e6       	ldi	r25, 0x68	; 104
    1276:	c9 2e       	mov	r12, r25
    1278:	90 e0       	ldi	r25, 0x00	; 0
    127a:	d9 2e       	mov	r13, r25
    127c:	10 71       	andi	r17, 0x10	; 16
    127e:	f6 01       	movw	r30, r12
    1280:	84 91       	lpm	r24, Z
    1282:	81 11       	cpse	r24, r1
    1284:	11 c0       	rjmp	.+34     	; 0x12a8 <vfprintf+0x204>
    1286:	44 20       	and	r4, r4
    1288:	09 f4       	brne	.+2      	; 0x128c <vfprintf+0x1e8>
    128a:	38 cf       	rjmp	.-400    	; 0x10fc <vfprintf+0x58>
    128c:	b7 01       	movw	r22, r14
    128e:	80 e2       	ldi	r24, 0x20	; 32
    1290:	90 e0       	ldi	r25, 0x00	; 0
    1292:	0e 94 37 0d 	call	0x1a6e	; 0x1a6e <fputc>
    1296:	4a 94       	dec	r4
    1298:	f6 cf       	rjmp	.-20     	; 0x1286 <vfprintf+0x1e2>
    129a:	84 e0       	ldi	r24, 0x04	; 4
    129c:	d5 cf       	rjmp	.-86     	; 0x1248 <vfprintf+0x1a4>
    129e:	8c e6       	ldi	r24, 0x6C	; 108
    12a0:	c8 2e       	mov	r12, r24
    12a2:	80 e0       	ldi	r24, 0x00	; 0
    12a4:	d8 2e       	mov	r13, r24
    12a6:	ea cf       	rjmp	.-44     	; 0x127c <vfprintf+0x1d8>
    12a8:	11 11       	cpse	r17, r1
    12aa:	80 52       	subi	r24, 0x20	; 32
    12ac:	b7 01       	movw	r22, r14
    12ae:	90 e0       	ldi	r25, 0x00	; 0
    12b0:	0e 94 37 0d 	call	0x1a6e	; 0x1a6e <fputc>
    12b4:	8f ef       	ldi	r24, 0xFF	; 255
    12b6:	c8 1a       	sub	r12, r24
    12b8:	d8 0a       	sbc	r13, r24
    12ba:	e1 cf       	rjmp	.-62     	; 0x127e <vfprintf+0x1da>
    12bc:	17 ff       	sbrs	r17, 7
    12be:	7c c0       	rjmp	.+248    	; 0x13b8 <vfprintf+0x314>
    12c0:	8c 85       	ldd	r24, Y+12	; 0x0c
    12c2:	8c 0d       	add	r24, r12
    12c4:	fe 85       	ldd	r31, Y+14	; 0x0e
    12c6:	f4 ff       	sbrs	r31, 4
    12c8:	04 c0       	rjmp	.+8      	; 0x12d2 <vfprintf+0x22e>
    12ca:	9a 81       	ldd	r25, Y+2	; 0x02
    12cc:	91 33       	cpi	r25, 0x31	; 49
    12ce:	09 f4       	brne	.+2      	; 0x12d2 <vfprintf+0x22e>
    12d0:	81 50       	subi	r24, 0x01	; 1
    12d2:	18 16       	cp	r1, r24
    12d4:	0c f0       	brlt	.+2      	; 0x12d8 <vfprintf+0x234>
    12d6:	93 c0       	rjmp	.+294    	; 0x13fe <vfprintf+0x35a>
    12d8:	8c 87       	std	Y+12, r24	; 0x0c
    12da:	89 30       	cpi	r24, 0x09	; 9
    12dc:	10 f0       	brcs	.+4      	; 0x12e2 <vfprintf+0x23e>
    12de:	28 e0       	ldi	r18, 0x08	; 8
    12e0:	2c 87       	std	Y+12, r18	; 0x0c
    12e2:	17 ff       	sbrs	r17, 7
    12e4:	91 c0       	rjmp	.+290    	; 0x1408 <vfprintf+0x364>
    12e6:	1c 14       	cp	r1, r12
    12e8:	1d 04       	cpc	r1, r13
    12ea:	0c f0       	brlt	.+2      	; 0x12ee <vfprintf+0x24a>
    12ec:	90 c0       	rjmp	.+288    	; 0x140e <vfprintf+0x36a>
    12ee:	c6 01       	movw	r24, r12
    12f0:	01 96       	adiw	r24, 0x01	; 1
    12f2:	01 11       	cpse	r16, r1
    12f4:	01 96       	adiw	r24, 0x01	; 1
    12f6:	55 20       	and	r5, r5
    12f8:	31 f0       	breq	.+12     	; 0x1306 <vfprintf+0x262>
    12fa:	25 2d       	mov	r18, r5
    12fc:	30 e0       	ldi	r19, 0x00	; 0
    12fe:	2f 5f       	subi	r18, 0xFF	; 255
    1300:	3f 4f       	sbci	r19, 0xFF	; 255
    1302:	82 0f       	add	r24, r18
    1304:	93 1f       	adc	r25, r19
    1306:	29 2d       	mov	r18, r9
    1308:	30 e0       	ldi	r19, 0x00	; 0
    130a:	82 17       	cp	r24, r18
    130c:	93 07       	cpc	r25, r19
    130e:	14 f4       	brge	.+4      	; 0x1314 <vfprintf+0x270>
    1310:	49 2c       	mov	r4, r9
    1312:	48 1a       	sub	r4, r24
    1314:	81 2f       	mov	r24, r17
    1316:	89 70       	andi	r24, 0x09	; 9
    1318:	11 f4       	brne	.+4      	; 0x131e <vfprintf+0x27a>
    131a:	41 10       	cpse	r4, r1
    131c:	7b c0       	rjmp	.+246    	; 0x1414 <vfprintf+0x370>
    131e:	00 23       	and	r16, r16
    1320:	29 f0       	breq	.+10     	; 0x132c <vfprintf+0x288>
    1322:	b7 01       	movw	r22, r14
    1324:	80 2f       	mov	r24, r16
    1326:	90 e0       	ldi	r25, 0x00	; 0
    1328:	0e 94 37 0d 	call	0x1a6e	; 0x1a6e <fputc>
    132c:	13 fd       	sbrc	r17, 3
    132e:	02 c0       	rjmp	.+4      	; 0x1334 <vfprintf+0x290>
    1330:	41 10       	cpse	r4, r1
    1332:	77 c0       	rjmp	.+238    	; 0x1422 <vfprintf+0x37e>
    1334:	17 ff       	sbrs	r17, 7
    1336:	90 c0       	rjmp	.+288    	; 0x1458 <vfprintf+0x3b4>
    1338:	46 01       	movw	r8, r12
    133a:	d7 fe       	sbrs	r13, 7
    133c:	02 c0       	rjmp	.+4      	; 0x1342 <vfprintf+0x29e>
    133e:	81 2c       	mov	r8, r1
    1340:	91 2c       	mov	r9, r1
    1342:	c6 01       	movw	r24, r12
    1344:	88 19       	sub	r24, r8
    1346:	99 09       	sbc	r25, r9
    1348:	f5 01       	movw	r30, r10
    134a:	e8 0f       	add	r30, r24
    134c:	f9 1f       	adc	r31, r25
    134e:	f8 8b       	std	Y+16, r31	; 0x10
    1350:	ef 87       	std	Y+15, r30	; 0x0f
    1352:	96 01       	movw	r18, r12
    1354:	8c 85       	ldd	r24, Y+12	; 0x0c
    1356:	28 1b       	sub	r18, r24
    1358:	31 09       	sbc	r19, r1
    135a:	3d 87       	std	Y+13, r19	; 0x0d
    135c:	2c 87       	std	Y+12, r18	; 0x0c
    135e:	05 2d       	mov	r16, r5
    1360:	10 e0       	ldi	r17, 0x00	; 0
    1362:	11 95       	neg	r17
    1364:	01 95       	neg	r16
    1366:	11 09       	sbc	r17, r1
    1368:	9f ef       	ldi	r25, 0xFF	; 255
    136a:	89 16       	cp	r8, r25
    136c:	99 06       	cpc	r9, r25
    136e:	29 f4       	brne	.+10     	; 0x137a <vfprintf+0x2d6>
    1370:	b7 01       	movw	r22, r14
    1372:	8e e2       	ldi	r24, 0x2E	; 46
    1374:	90 e0       	ldi	r25, 0x00	; 0
    1376:	0e 94 37 0d 	call	0x1a6e	; 0x1a6e <fputc>
    137a:	c8 14       	cp	r12, r8
    137c:	d9 04       	cpc	r13, r9
    137e:	0c f4       	brge	.+2      	; 0x1382 <vfprintf+0x2de>
    1380:	57 c0       	rjmp	.+174    	; 0x1430 <vfprintf+0x38c>
    1382:	ec 85       	ldd	r30, Y+12	; 0x0c
    1384:	fd 85       	ldd	r31, Y+13	; 0x0d
    1386:	e8 15       	cp	r30, r8
    1388:	f9 05       	cpc	r31, r9
    138a:	0c f0       	brlt	.+2      	; 0x138e <vfprintf+0x2ea>
    138c:	51 c0       	rjmp	.+162    	; 0x1430 <vfprintf+0x38c>
    138e:	ef 85       	ldd	r30, Y+15	; 0x0f
    1390:	f8 89       	ldd	r31, Y+16	; 0x10
    1392:	81 81       	ldd	r24, Z+1	; 0x01
    1394:	f1 e0       	ldi	r31, 0x01	; 1
    1396:	8f 1a       	sub	r8, r31
    1398:	91 08       	sbc	r9, r1
    139a:	2f 85       	ldd	r18, Y+15	; 0x0f
    139c:	38 89       	ldd	r19, Y+16	; 0x10
    139e:	2f 5f       	subi	r18, 0xFF	; 255
    13a0:	3f 4f       	sbci	r19, 0xFF	; 255
    13a2:	38 8b       	std	Y+16, r19	; 0x10
    13a4:	2f 87       	std	Y+15, r18	; 0x0f
    13a6:	80 16       	cp	r8, r16
    13a8:	91 06       	cpc	r9, r17
    13aa:	0c f4       	brge	.+2      	; 0x13ae <vfprintf+0x30a>
    13ac:	43 c0       	rjmp	.+134    	; 0x1434 <vfprintf+0x390>
    13ae:	b7 01       	movw	r22, r14
    13b0:	90 e0       	ldi	r25, 0x00	; 0
    13b2:	0e 94 37 0d 	call	0x1a6e	; 0x1a6e <fputc>
    13b6:	d8 cf       	rjmp	.-80     	; 0x1368 <vfprintf+0x2c4>
    13b8:	16 fd       	sbrc	r17, 6
    13ba:	93 cf       	rjmp	.-218    	; 0x12e2 <vfprintf+0x23e>
    13bc:	e5 2d       	mov	r30, r5
    13be:	f0 e0       	ldi	r31, 0x00	; 0
    13c0:	ec 15       	cp	r30, r12
    13c2:	fd 05       	cpc	r31, r13
    13c4:	34 f0       	brlt	.+12     	; 0x13d2 <vfprintf+0x32e>
    13c6:	3c ef       	ldi	r19, 0xFC	; 252
    13c8:	c3 16       	cp	r12, r19
    13ca:	3f ef       	ldi	r19, 0xFF	; 255
    13cc:	d3 06       	cpc	r13, r19
    13ce:	0c f0       	brlt	.+2      	; 0x13d2 <vfprintf+0x32e>
    13d0:	10 68       	ori	r17, 0x80	; 128
    13d2:	32 96       	adiw	r30, 0x02	; 2
    13d4:	ea 0d       	add	r30, r10
    13d6:	fb 1d       	adc	r31, r11
    13d8:	55 20       	and	r5, r5
    13da:	19 f0       	breq	.+6      	; 0x13e2 <vfprintf+0x33e>
    13dc:	82 91       	ld	r24, -Z
    13de:	80 33       	cpi	r24, 0x30	; 48
    13e0:	61 f0       	breq	.+24     	; 0x13fa <vfprintf+0x356>
    13e2:	17 ff       	sbrs	r17, 7
    13e4:	7e cf       	rjmp	.-260    	; 0x12e2 <vfprintf+0x23e>
    13e6:	81 e0       	ldi	r24, 0x01	; 1
    13e8:	85 0d       	add	r24, r5
    13ea:	8c 87       	std	Y+12, r24	; 0x0c
    13ec:	85 2d       	mov	r24, r5
    13ee:	90 e0       	ldi	r25, 0x00	; 0
    13f0:	c8 16       	cp	r12, r24
    13f2:	d9 06       	cpc	r13, r25
    13f4:	3c f4       	brge	.+14     	; 0x1404 <vfprintf+0x360>
    13f6:	5c 18       	sub	r5, r12
    13f8:	74 cf       	rjmp	.-280    	; 0x12e2 <vfprintf+0x23e>
    13fa:	5a 94       	dec	r5
    13fc:	ed cf       	rjmp	.-38     	; 0x13d8 <vfprintf+0x334>
    13fe:	91 e0       	ldi	r25, 0x01	; 1
    1400:	9c 87       	std	Y+12, r25	; 0x0c
    1402:	6f cf       	rjmp	.-290    	; 0x12e2 <vfprintf+0x23e>
    1404:	51 2c       	mov	r5, r1
    1406:	6d cf       	rjmp	.-294    	; 0x12e2 <vfprintf+0x23e>
    1408:	85 e0       	ldi	r24, 0x05	; 5
    140a:	90 e0       	ldi	r25, 0x00	; 0
    140c:	72 cf       	rjmp	.-284    	; 0x12f2 <vfprintf+0x24e>
    140e:	81 e0       	ldi	r24, 0x01	; 1
    1410:	90 e0       	ldi	r25, 0x00	; 0
    1412:	6f cf       	rjmp	.-290    	; 0x12f2 <vfprintf+0x24e>
    1414:	b7 01       	movw	r22, r14
    1416:	80 e2       	ldi	r24, 0x20	; 32
    1418:	90 e0       	ldi	r25, 0x00	; 0
    141a:	0e 94 37 0d 	call	0x1a6e	; 0x1a6e <fputc>
    141e:	4a 94       	dec	r4
    1420:	7c cf       	rjmp	.-264    	; 0x131a <vfprintf+0x276>
    1422:	b7 01       	movw	r22, r14
    1424:	80 e3       	ldi	r24, 0x30	; 48
    1426:	90 e0       	ldi	r25, 0x00	; 0
    1428:	0e 94 37 0d 	call	0x1a6e	; 0x1a6e <fputc>
    142c:	4a 94       	dec	r4
    142e:	80 cf       	rjmp	.-256    	; 0x1330 <vfprintf+0x28c>
    1430:	80 e3       	ldi	r24, 0x30	; 48
    1432:	b0 cf       	rjmp	.-160    	; 0x1394 <vfprintf+0x2f0>
    1434:	c8 14       	cp	r12, r8
    1436:	d9 04       	cpc	r13, r9
    1438:	41 f4       	brne	.+16     	; 0x144a <vfprintf+0x3a6>
    143a:	9a 81       	ldd	r25, Y+2	; 0x02
    143c:	96 33       	cpi	r25, 0x36	; 54
    143e:	50 f4       	brcc	.+20     	; 0x1454 <vfprintf+0x3b0>
    1440:	95 33       	cpi	r25, 0x35	; 53
    1442:	19 f4       	brne	.+6      	; 0x144a <vfprintf+0x3a6>
    1444:	3e 85       	ldd	r19, Y+14	; 0x0e
    1446:	34 ff       	sbrs	r19, 4
    1448:	05 c0       	rjmp	.+10     	; 0x1454 <vfprintf+0x3b0>
    144a:	b7 01       	movw	r22, r14
    144c:	90 e0       	ldi	r25, 0x00	; 0
    144e:	0e 94 37 0d 	call	0x1a6e	; 0x1a6e <fputc>
    1452:	19 cf       	rjmp	.-462    	; 0x1286 <vfprintf+0x1e2>
    1454:	81 e3       	ldi	r24, 0x31	; 49
    1456:	f9 cf       	rjmp	.-14     	; 0x144a <vfprintf+0x3a6>
    1458:	8a 81       	ldd	r24, Y+2	; 0x02
    145a:	81 33       	cpi	r24, 0x31	; 49
    145c:	19 f0       	breq	.+6      	; 0x1464 <vfprintf+0x3c0>
    145e:	9e 85       	ldd	r25, Y+14	; 0x0e
    1460:	9f 7e       	andi	r25, 0xEF	; 239
    1462:	9e 87       	std	Y+14, r25	; 0x0e
    1464:	b7 01       	movw	r22, r14
    1466:	90 e0       	ldi	r25, 0x00	; 0
    1468:	0e 94 37 0d 	call	0x1a6e	; 0x1a6e <fputc>
    146c:	51 10       	cpse	r5, r1
    146e:	24 c0       	rjmp	.+72     	; 0x14b8 <vfprintf+0x414>
    1470:	14 fd       	sbrc	r17, 4
    1472:	38 c0       	rjmp	.+112    	; 0x14e4 <vfprintf+0x440>
    1474:	85 e6       	ldi	r24, 0x65	; 101
    1476:	90 e0       	ldi	r25, 0x00	; 0
    1478:	b7 01       	movw	r22, r14
    147a:	0e 94 37 0d 	call	0x1a6e	; 0x1a6e <fputc>
    147e:	d7 fc       	sbrc	r13, 7
    1480:	06 c0       	rjmp	.+12     	; 0x148e <vfprintf+0x3ea>
    1482:	c1 14       	cp	r12, r1
    1484:	d1 04       	cpc	r13, r1
    1486:	89 f5       	brne	.+98     	; 0x14ea <vfprintf+0x446>
    1488:	ee 85       	ldd	r30, Y+14	; 0x0e
    148a:	e4 ff       	sbrs	r30, 4
    148c:	2e c0       	rjmp	.+92     	; 0x14ea <vfprintf+0x446>
    148e:	d1 94       	neg	r13
    1490:	c1 94       	neg	r12
    1492:	d1 08       	sbc	r13, r1
    1494:	8d e2       	ldi	r24, 0x2D	; 45
    1496:	b7 01       	movw	r22, r14
    1498:	90 e0       	ldi	r25, 0x00	; 0
    149a:	0e 94 37 0d 	call	0x1a6e	; 0x1a6e <fputc>
    149e:	80 e3       	ldi	r24, 0x30	; 48
    14a0:	2a e0       	ldi	r18, 0x0A	; 10
    14a2:	c2 16       	cp	r12, r18
    14a4:	d1 04       	cpc	r13, r1
    14a6:	1c f5       	brge	.+70     	; 0x14ee <vfprintf+0x44a>
    14a8:	b7 01       	movw	r22, r14
    14aa:	90 e0       	ldi	r25, 0x00	; 0
    14ac:	0e 94 37 0d 	call	0x1a6e	; 0x1a6e <fputc>
    14b0:	b7 01       	movw	r22, r14
    14b2:	c6 01       	movw	r24, r12
    14b4:	c0 96       	adiw	r24, 0x30	; 48
    14b6:	cb cf       	rjmp	.-106    	; 0x144e <vfprintf+0x3aa>
    14b8:	b7 01       	movw	r22, r14
    14ba:	8e e2       	ldi	r24, 0x2E	; 46
    14bc:	90 e0       	ldi	r25, 0x00	; 0
    14be:	0e 94 37 0d 	call	0x1a6e	; 0x1a6e <fputc>
    14c2:	53 94       	inc	r5
    14c4:	53 94       	inc	r5
    14c6:	82 e0       	ldi	r24, 0x02	; 2
    14c8:	01 e0       	ldi	r16, 0x01	; 1
    14ca:	08 0f       	add	r16, r24
    14cc:	f5 01       	movw	r30, r10
    14ce:	e8 0f       	add	r30, r24
    14d0:	f1 1d       	adc	r31, r1
    14d2:	80 81       	ld	r24, Z
    14d4:	b7 01       	movw	r22, r14
    14d6:	90 e0       	ldi	r25, 0x00	; 0
    14d8:	0e 94 37 0d 	call	0x1a6e	; 0x1a6e <fputc>
    14dc:	80 2f       	mov	r24, r16
    14de:	50 12       	cpse	r5, r16
    14e0:	f3 cf       	rjmp	.-26     	; 0x14c8 <vfprintf+0x424>
    14e2:	c6 cf       	rjmp	.-116    	; 0x1470 <vfprintf+0x3cc>
    14e4:	85 e4       	ldi	r24, 0x45	; 69
    14e6:	90 e0       	ldi	r25, 0x00	; 0
    14e8:	c7 cf       	rjmp	.-114    	; 0x1478 <vfprintf+0x3d4>
    14ea:	8b e2       	ldi	r24, 0x2B	; 43
    14ec:	d4 cf       	rjmp	.-88     	; 0x1496 <vfprintf+0x3f2>
    14ee:	8f 5f       	subi	r24, 0xFF	; 255
    14f0:	fa e0       	ldi	r31, 0x0A	; 10
    14f2:	cf 1a       	sub	r12, r31
    14f4:	d1 08       	sbc	r13, r1
    14f6:	d4 cf       	rjmp	.-88     	; 0x14a0 <vfprintf+0x3fc>
    14f8:	83 36       	cpi	r24, 0x63	; 99
    14fa:	c1 f0       	breq	.+48     	; 0x152c <vfprintf+0x488>
    14fc:	83 37       	cpi	r24, 0x73	; 115
    14fe:	09 f4       	brne	.+2      	; 0x1502 <vfprintf+0x45e>
    1500:	43 c0       	rjmp	.+134    	; 0x1588 <vfprintf+0x4e4>
    1502:	83 35       	cpi	r24, 0x53	; 83
    1504:	09 f0       	breq	.+2      	; 0x1508 <vfprintf+0x464>
    1506:	5e c0       	rjmp	.+188    	; 0x15c4 <vfprintf+0x520>
    1508:	36 01       	movw	r6, r12
    150a:	f2 e0       	ldi	r31, 0x02	; 2
    150c:	6f 0e       	add	r6, r31
    150e:	71 1c       	adc	r7, r1
    1510:	f6 01       	movw	r30, r12
    1512:	c0 80       	ld	r12, Z
    1514:	d1 80       	ldd	r13, Z+1	; 0x01
    1516:	06 ff       	sbrs	r16, 6
    1518:	4b c0       	rjmp	.+150    	; 0x15b0 <vfprintf+0x50c>
    151a:	65 2d       	mov	r22, r5
    151c:	70 e0       	ldi	r23, 0x00	; 0
    151e:	c6 01       	movw	r24, r12
    1520:	0e 94 21 0d 	call	0x1a42	; 0x1a42 <strnlen_P>
    1524:	9d 87       	std	Y+13, r25	; 0x0d
    1526:	8c 87       	std	Y+12, r24	; 0x0c
    1528:	00 68       	ori	r16, 0x80	; 128
    152a:	0d c0       	rjmp	.+26     	; 0x1546 <vfprintf+0x4a2>
    152c:	36 01       	movw	r6, r12
    152e:	32 e0       	ldi	r19, 0x02	; 2
    1530:	63 0e       	add	r6, r19
    1532:	71 1c       	adc	r7, r1
    1534:	f6 01       	movw	r30, r12
    1536:	80 81       	ld	r24, Z
    1538:	89 83       	std	Y+1, r24	; 0x01
    153a:	21 e0       	ldi	r18, 0x01	; 1
    153c:	30 e0       	ldi	r19, 0x00	; 0
    153e:	3d 87       	std	Y+13, r19	; 0x0d
    1540:	2c 87       	std	Y+12, r18	; 0x0c
    1542:	65 01       	movw	r12, r10
    1544:	0f 77       	andi	r16, 0x7F	; 127
    1546:	03 fd       	sbrc	r16, 3
    1548:	07 c0       	rjmp	.+14     	; 0x1558 <vfprintf+0x4b4>
    154a:	89 2d       	mov	r24, r9
    154c:	90 e0       	ldi	r25, 0x00	; 0
    154e:	2c 85       	ldd	r18, Y+12	; 0x0c
    1550:	3d 85       	ldd	r19, Y+13	; 0x0d
    1552:	28 17       	cp	r18, r24
    1554:	39 07       	cpc	r19, r25
    1556:	78 f1       	brcs	.+94     	; 0x15b6 <vfprintf+0x512>
    1558:	49 2c       	mov	r4, r9
    155a:	ec 85       	ldd	r30, Y+12	; 0x0c
    155c:	fd 85       	ldd	r31, Y+13	; 0x0d
    155e:	ef 2b       	or	r30, r31
    1560:	09 f4       	brne	.+2      	; 0x1564 <vfprintf+0x4c0>
    1562:	91 ce       	rjmp	.-734    	; 0x1286 <vfprintf+0x1e2>
    1564:	f6 01       	movw	r30, r12
    1566:	07 fd       	sbrc	r16, 7
    1568:	85 91       	lpm	r24, Z+
    156a:	07 ff       	sbrs	r16, 7
    156c:	81 91       	ld	r24, Z+
    156e:	6f 01       	movw	r12, r30
    1570:	b7 01       	movw	r22, r14
    1572:	90 e0       	ldi	r25, 0x00	; 0
    1574:	0e 94 37 0d 	call	0x1a6e	; 0x1a6e <fputc>
    1578:	41 10       	cpse	r4, r1
    157a:	4a 94       	dec	r4
    157c:	8c 85       	ldd	r24, Y+12	; 0x0c
    157e:	9d 85       	ldd	r25, Y+13	; 0x0d
    1580:	01 97       	sbiw	r24, 0x01	; 1
    1582:	9d 87       	std	Y+13, r25	; 0x0d
    1584:	8c 87       	std	Y+12, r24	; 0x0c
    1586:	e9 cf       	rjmp	.-46     	; 0x155a <vfprintf+0x4b6>
    1588:	36 01       	movw	r6, r12
    158a:	32 e0       	ldi	r19, 0x02	; 2
    158c:	63 0e       	add	r6, r19
    158e:	71 1c       	adc	r7, r1
    1590:	f6 01       	movw	r30, r12
    1592:	c0 80       	ld	r12, Z
    1594:	d1 80       	ldd	r13, Z+1	; 0x01
    1596:	06 ff       	sbrs	r16, 6
    1598:	08 c0       	rjmp	.+16     	; 0x15aa <vfprintf+0x506>
    159a:	65 2d       	mov	r22, r5
    159c:	70 e0       	ldi	r23, 0x00	; 0
    159e:	c6 01       	movw	r24, r12
    15a0:	0e 94 2c 0d 	call	0x1a58	; 0x1a58 <strnlen>
    15a4:	9d 87       	std	Y+13, r25	; 0x0d
    15a6:	8c 87       	std	Y+12, r24	; 0x0c
    15a8:	cd cf       	rjmp	.-102    	; 0x1544 <vfprintf+0x4a0>
    15aa:	6f ef       	ldi	r22, 0xFF	; 255
    15ac:	7f ef       	ldi	r23, 0xFF	; 255
    15ae:	f7 cf       	rjmp	.-18     	; 0x159e <vfprintf+0x4fa>
    15b0:	6f ef       	ldi	r22, 0xFF	; 255
    15b2:	7f ef       	ldi	r23, 0xFF	; 255
    15b4:	b4 cf       	rjmp	.-152    	; 0x151e <vfprintf+0x47a>
    15b6:	b7 01       	movw	r22, r14
    15b8:	80 e2       	ldi	r24, 0x20	; 32
    15ba:	90 e0       	ldi	r25, 0x00	; 0
    15bc:	0e 94 37 0d 	call	0x1a6e	; 0x1a6e <fputc>
    15c0:	9a 94       	dec	r9
    15c2:	c3 cf       	rjmp	.-122    	; 0x154a <vfprintf+0x4a6>
    15c4:	84 36       	cpi	r24, 0x64	; 100
    15c6:	11 f0       	breq	.+4      	; 0x15cc <vfprintf+0x528>
    15c8:	89 36       	cpi	r24, 0x69	; 105
    15ca:	c1 f5       	brne	.+112    	; 0x163c <vfprintf+0x598>
    15cc:	36 01       	movw	r6, r12
    15ce:	07 ff       	sbrs	r16, 7
    15d0:	2a c0       	rjmp	.+84     	; 0x1626 <vfprintf+0x582>
    15d2:	f4 e0       	ldi	r31, 0x04	; 4
    15d4:	6f 0e       	add	r6, r31
    15d6:	71 1c       	adc	r7, r1
    15d8:	f6 01       	movw	r30, r12
    15da:	60 81       	ld	r22, Z
    15dc:	71 81       	ldd	r23, Z+1	; 0x01
    15de:	82 81       	ldd	r24, Z+2	; 0x02
    15e0:	93 81       	ldd	r25, Z+3	; 0x03
    15e2:	10 2f       	mov	r17, r16
    15e4:	1f 76       	andi	r17, 0x6F	; 111
    15e6:	97 ff       	sbrs	r25, 7
    15e8:	08 c0       	rjmp	.+16     	; 0x15fa <vfprintf+0x556>
    15ea:	90 95       	com	r25
    15ec:	80 95       	com	r24
    15ee:	70 95       	com	r23
    15f0:	61 95       	neg	r22
    15f2:	7f 4f       	sbci	r23, 0xFF	; 255
    15f4:	8f 4f       	sbci	r24, 0xFF	; 255
    15f6:	9f 4f       	sbci	r25, 0xFF	; 255
    15f8:	10 68       	ori	r17, 0x80	; 128
    15fa:	2a e0       	ldi	r18, 0x0A	; 10
    15fc:	30 e0       	ldi	r19, 0x00	; 0
    15fe:	a5 01       	movw	r20, r10
    1600:	0e 94 97 0d 	call	0x1b2e	; 0x1b2e <__ultoa_invert>
    1604:	c8 2e       	mov	r12, r24
    1606:	ca 18       	sub	r12, r10
    1608:	16 ff       	sbrs	r17, 6
    160a:	59 c0       	rjmp	.+178    	; 0x16be <vfprintf+0x61a>
    160c:	01 2f       	mov	r16, r17
    160e:	0e 7f       	andi	r16, 0xFE	; 254
    1610:	c5 14       	cp	r12, r5
    1612:	08 f0       	brcs	.+2      	; 0x1616 <vfprintf+0x572>
    1614:	90 c0       	rjmp	.+288    	; 0x1736 <vfprintf+0x692>
    1616:	14 ff       	sbrs	r17, 4
    1618:	04 c0       	rjmp	.+8      	; 0x1622 <vfprintf+0x57e>
    161a:	12 fd       	sbrc	r17, 2
    161c:	02 c0       	rjmp	.+4      	; 0x1622 <vfprintf+0x57e>
    161e:	01 2f       	mov	r16, r17
    1620:	0e 7e       	andi	r16, 0xEE	; 238
    1622:	d5 2c       	mov	r13, r5
    1624:	4e c0       	rjmp	.+156    	; 0x16c2 <vfprintf+0x61e>
    1626:	f2 e0       	ldi	r31, 0x02	; 2
    1628:	6f 0e       	add	r6, r31
    162a:	71 1c       	adc	r7, r1
    162c:	f6 01       	movw	r30, r12
    162e:	60 81       	ld	r22, Z
    1630:	71 81       	ldd	r23, Z+1	; 0x01
    1632:	07 2e       	mov	r0, r23
    1634:	00 0c       	add	r0, r0
    1636:	88 0b       	sbc	r24, r24
    1638:	99 0b       	sbc	r25, r25
    163a:	d3 cf       	rjmp	.-90     	; 0x15e2 <vfprintf+0x53e>
    163c:	10 2f       	mov	r17, r16
    163e:	85 37       	cpi	r24, 0x75	; 117
    1640:	a9 f4       	brne	.+42     	; 0x166c <vfprintf+0x5c8>
    1642:	1f 7e       	andi	r17, 0xEF	; 239
    1644:	2a e0       	ldi	r18, 0x0A	; 10
    1646:	30 e0       	ldi	r19, 0x00	; 0
    1648:	36 01       	movw	r6, r12
    164a:	17 ff       	sbrs	r17, 7
    164c:	2f c0       	rjmp	.+94     	; 0x16ac <vfprintf+0x608>
    164e:	f4 e0       	ldi	r31, 0x04	; 4
    1650:	6f 0e       	add	r6, r31
    1652:	71 1c       	adc	r7, r1
    1654:	f6 01       	movw	r30, r12
    1656:	60 81       	ld	r22, Z
    1658:	71 81       	ldd	r23, Z+1	; 0x01
    165a:	82 81       	ldd	r24, Z+2	; 0x02
    165c:	93 81       	ldd	r25, Z+3	; 0x03
    165e:	a5 01       	movw	r20, r10
    1660:	0e 94 97 0d 	call	0x1b2e	; 0x1b2e <__ultoa_invert>
    1664:	c8 2e       	mov	r12, r24
    1666:	ca 18       	sub	r12, r10
    1668:	1f 77       	andi	r17, 0x7F	; 127
    166a:	ce cf       	rjmp	.-100    	; 0x1608 <vfprintf+0x564>
    166c:	19 7f       	andi	r17, 0xF9	; 249
    166e:	8f 36       	cpi	r24, 0x6F	; 111
    1670:	d1 f0       	breq	.+52     	; 0x16a6 <vfprintf+0x602>
    1672:	48 f4       	brcc	.+18     	; 0x1686 <vfprintf+0x5e2>
    1674:	88 35       	cpi	r24, 0x58	; 88
    1676:	91 f0       	breq	.+36     	; 0x169c <vfprintf+0x5f8>
    1678:	f7 01       	movw	r30, r14
    167a:	86 81       	ldd	r24, Z+6	; 0x06
    167c:	97 81       	ldd	r25, Z+7	; 0x07
    167e:	60 96       	adiw	r28, 0x10	; 16
    1680:	e2 e1       	ldi	r30, 0x12	; 18
    1682:	0c 94 28 0c 	jmp	0x1850	; 0x1850 <__epilogue_restores__>
    1686:	80 37       	cpi	r24, 0x70	; 112
    1688:	39 f0       	breq	.+14     	; 0x1698 <vfprintf+0x5f4>
    168a:	88 37       	cpi	r24, 0x78	; 120
    168c:	a9 f7       	brne	.-22     	; 0x1678 <vfprintf+0x5d4>
    168e:	14 fd       	sbrc	r17, 4
    1690:	14 60       	ori	r17, 0x04	; 4
    1692:	20 e1       	ldi	r18, 0x10	; 16
    1694:	30 e0       	ldi	r19, 0x00	; 0
    1696:	d8 cf       	rjmp	.-80     	; 0x1648 <vfprintf+0x5a4>
    1698:	10 61       	ori	r17, 0x10	; 16
    169a:	f9 cf       	rjmp	.-14     	; 0x168e <vfprintf+0x5ea>
    169c:	04 fd       	sbrc	r16, 4
    169e:	16 60       	ori	r17, 0x06	; 6
    16a0:	20 e1       	ldi	r18, 0x10	; 16
    16a2:	32 e0       	ldi	r19, 0x02	; 2
    16a4:	d1 cf       	rjmp	.-94     	; 0x1648 <vfprintf+0x5a4>
    16a6:	28 e0       	ldi	r18, 0x08	; 8
    16a8:	30 e0       	ldi	r19, 0x00	; 0
    16aa:	ce cf       	rjmp	.-100    	; 0x1648 <vfprintf+0x5a4>
    16ac:	f2 e0       	ldi	r31, 0x02	; 2
    16ae:	6f 0e       	add	r6, r31
    16b0:	71 1c       	adc	r7, r1
    16b2:	f6 01       	movw	r30, r12
    16b4:	60 81       	ld	r22, Z
    16b6:	71 81       	ldd	r23, Z+1	; 0x01
    16b8:	80 e0       	ldi	r24, 0x00	; 0
    16ba:	90 e0       	ldi	r25, 0x00	; 0
    16bc:	d0 cf       	rjmp	.-96     	; 0x165e <vfprintf+0x5ba>
    16be:	dc 2c       	mov	r13, r12
    16c0:	01 2f       	mov	r16, r17
    16c2:	04 ff       	sbrs	r16, 4
    16c4:	41 c0       	rjmp	.+130    	; 0x1748 <vfprintf+0x6a4>
    16c6:	fe 01       	movw	r30, r28
    16c8:	ec 0d       	add	r30, r12
    16ca:	f1 1d       	adc	r31, r1
    16cc:	80 81       	ld	r24, Z
    16ce:	80 33       	cpi	r24, 0x30	; 48
    16d0:	a1 f5       	brne	.+104    	; 0x173a <vfprintf+0x696>
    16d2:	09 7e       	andi	r16, 0xE9	; 233
    16d4:	f0 2f       	mov	r31, r16
    16d6:	f8 70       	andi	r31, 0x08	; 8
    16d8:	4f 2e       	mov	r4, r31
    16da:	03 fd       	sbrc	r16, 3
    16dc:	43 c0       	rjmp	.+134    	; 0x1764 <vfprintf+0x6c0>
    16de:	00 ff       	sbrs	r16, 0
    16e0:	3d c0       	rjmp	.+122    	; 0x175c <vfprintf+0x6b8>
    16e2:	5c 2c       	mov	r5, r12
    16e4:	d9 14       	cp	r13, r9
    16e6:	10 f4       	brcc	.+4      	; 0x16ec <vfprintf+0x648>
    16e8:	59 0c       	add	r5, r9
    16ea:	5d 18       	sub	r5, r13
    16ec:	04 ff       	sbrs	r16, 4
    16ee:	42 c0       	rjmp	.+132    	; 0x1774 <vfprintf+0x6d0>
    16f0:	b7 01       	movw	r22, r14
    16f2:	80 e3       	ldi	r24, 0x30	; 48
    16f4:	90 e0       	ldi	r25, 0x00	; 0
    16f6:	0e 94 37 0d 	call	0x1a6e	; 0x1a6e <fputc>
    16fa:	02 ff       	sbrs	r16, 2
    16fc:	07 c0       	rjmp	.+14     	; 0x170c <vfprintf+0x668>
    16fe:	01 fd       	sbrc	r16, 1
    1700:	36 c0       	rjmp	.+108    	; 0x176e <vfprintf+0x6ca>
    1702:	88 e7       	ldi	r24, 0x78	; 120
    1704:	90 e0       	ldi	r25, 0x00	; 0
    1706:	b7 01       	movw	r22, r14
    1708:	0e 94 37 0d 	call	0x1a6e	; 0x1a6e <fputc>
    170c:	c5 14       	cp	r12, r5
    170e:	08 f4       	brcc	.+2      	; 0x1712 <vfprintf+0x66e>
    1710:	3e c0       	rjmp	.+124    	; 0x178e <vfprintf+0x6ea>
    1712:	ca 94       	dec	r12
    1714:	0c 2d       	mov	r16, r12
    1716:	10 e0       	ldi	r17, 0x00	; 0
    1718:	0f 5f       	subi	r16, 0xFF	; 255
    171a:	1f 4f       	sbci	r17, 0xFF	; 255
    171c:	0a 0d       	add	r16, r10
    171e:	1b 1d       	adc	r17, r11
    1720:	f8 01       	movw	r30, r16
    1722:	82 91       	ld	r24, -Z
    1724:	8f 01       	movw	r16, r30
    1726:	b7 01       	movw	r22, r14
    1728:	90 e0       	ldi	r25, 0x00	; 0
    172a:	0e 94 37 0d 	call	0x1a6e	; 0x1a6e <fputc>
    172e:	0a 15       	cp	r16, r10
    1730:	1b 05       	cpc	r17, r11
    1732:	b1 f7       	brne	.-20     	; 0x1720 <vfprintf+0x67c>
    1734:	a8 cd       	rjmp	.-1200   	; 0x1286 <vfprintf+0x1e2>
    1736:	dc 2c       	mov	r13, r12
    1738:	c4 cf       	rjmp	.-120    	; 0x16c2 <vfprintf+0x61e>
    173a:	02 fd       	sbrc	r16, 2
    173c:	02 c0       	rjmp	.+4      	; 0x1742 <vfprintf+0x69e>
    173e:	d3 94       	inc	r13
    1740:	c9 cf       	rjmp	.-110    	; 0x16d4 <vfprintf+0x630>
    1742:	d3 94       	inc	r13
    1744:	d3 94       	inc	r13
    1746:	c6 cf       	rjmp	.-116    	; 0x16d4 <vfprintf+0x630>
    1748:	80 2f       	mov	r24, r16
    174a:	86 78       	andi	r24, 0x86	; 134
    174c:	19 f2       	breq	.-122    	; 0x16d4 <vfprintf+0x630>
    174e:	f7 cf       	rjmp	.-18     	; 0x173e <vfprintf+0x69a>
    1750:	b7 01       	movw	r22, r14
    1752:	80 e2       	ldi	r24, 0x20	; 32
    1754:	90 e0       	ldi	r25, 0x00	; 0
    1756:	0e 94 37 0d 	call	0x1a6e	; 0x1a6e <fputc>
    175a:	d3 94       	inc	r13
    175c:	d9 14       	cp	r13, r9
    175e:	c0 f3       	brcs	.-16     	; 0x1750 <vfprintf+0x6ac>
    1760:	41 2c       	mov	r4, r1
    1762:	c4 cf       	rjmp	.-120    	; 0x16ec <vfprintf+0x648>
    1764:	d9 14       	cp	r13, r9
    1766:	e0 f7       	brcc	.-8      	; 0x1760 <vfprintf+0x6bc>
    1768:	49 2c       	mov	r4, r9
    176a:	4d 18       	sub	r4, r13
    176c:	bf cf       	rjmp	.-130    	; 0x16ec <vfprintf+0x648>
    176e:	88 e5       	ldi	r24, 0x58	; 88
    1770:	90 e0       	ldi	r25, 0x00	; 0
    1772:	c9 cf       	rjmp	.-110    	; 0x1706 <vfprintf+0x662>
    1774:	80 2f       	mov	r24, r16
    1776:	86 78       	andi	r24, 0x86	; 134
    1778:	49 f2       	breq	.-110    	; 0x170c <vfprintf+0x668>
    177a:	01 ff       	sbrs	r16, 1
    177c:	06 c0       	rjmp	.+12     	; 0x178a <vfprintf+0x6e6>
    177e:	8b e2       	ldi	r24, 0x2B	; 43
    1780:	07 fd       	sbrc	r16, 7
    1782:	8d e2       	ldi	r24, 0x2D	; 45
    1784:	b7 01       	movw	r22, r14
    1786:	90 e0       	ldi	r25, 0x00	; 0
    1788:	bf cf       	rjmp	.-130    	; 0x1708 <vfprintf+0x664>
    178a:	80 e2       	ldi	r24, 0x20	; 32
    178c:	f9 cf       	rjmp	.-14     	; 0x1780 <vfprintf+0x6dc>
    178e:	b7 01       	movw	r22, r14
    1790:	80 e3       	ldi	r24, 0x30	; 48
    1792:	90 e0       	ldi	r25, 0x00	; 0
    1794:	0e 94 37 0d 	call	0x1a6e	; 0x1a6e <fputc>
    1798:	5a 94       	dec	r5
    179a:	b8 cf       	rjmp	.-144    	; 0x170c <vfprintf+0x668>
    179c:	8f ef       	ldi	r24, 0xFF	; 255
    179e:	9f ef       	ldi	r25, 0xFF	; 255
    17a0:	6e cf       	rjmp	.-292    	; 0x167e <vfprintf+0x5da>
    17a2:	24 e0       	ldi	r18, 0x04	; 4
    17a4:	29 15       	cp	r18, r9
    17a6:	08 f4       	brcc	.+2      	; 0x17aa <vfprintf+0x706>
    17a8:	78 cd       	rjmp	.-1296   	; 0x129a <vfprintf+0x1f6>
    17aa:	41 2c       	mov	r4, r1
    17ac:	5b cd       	rjmp	.-1354   	; 0x1264 <vfprintf+0x1c0>

000017ae <startTimers>:
    17ae:	83 e0       	ldi	r24, 0x03	; 3
    17b0:	84 bd       	out	0x24, r24	; 36
    17b2:	85 bd       	out	0x25, r24	; 37
    17b4:	91 e0       	ldi	r25, 0x01	; 1
    17b6:	90 93 80 00 	sts	0x0080, r25	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
    17ba:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
    17be:	90 93 b0 00 	sts	0x00B0, r25	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
    17c2:	84 e0       	ldi	r24, 0x04	; 4
    17c4:	80 93 b1 00 	sts	0x00B1, r24	; 0x8000b1 <__TEXT_REGION_LENGTH__+0x7e00b1>
    17c8:	ee e6       	ldi	r30, 0x6E	; 110
    17ca:	f0 e0       	ldi	r31, 0x00	; 0
    17cc:	80 81       	ld	r24, Z
    17ce:	81 60       	ori	r24, 0x01	; 1
    17d0:	80 83       	st	Z, r24
    17d2:	08 95       	ret

000017d4 <__udivmodsi4>:
    17d4:	a1 e2       	ldi	r26, 0x21	; 33
    17d6:	1a 2e       	mov	r1, r26
    17d8:	aa 1b       	sub	r26, r26
    17da:	bb 1b       	sub	r27, r27
    17dc:	fd 01       	movw	r30, r26
    17de:	0d c0       	rjmp	.+26     	; 0x17fa <__udivmodsi4_ep>

000017e0 <__udivmodsi4_loop>:
    17e0:	aa 1f       	adc	r26, r26
    17e2:	bb 1f       	adc	r27, r27
    17e4:	ee 1f       	adc	r30, r30
    17e6:	ff 1f       	adc	r31, r31
    17e8:	a2 17       	cp	r26, r18
    17ea:	b3 07       	cpc	r27, r19
    17ec:	e4 07       	cpc	r30, r20
    17ee:	f5 07       	cpc	r31, r21
    17f0:	20 f0       	brcs	.+8      	; 0x17fa <__udivmodsi4_ep>
    17f2:	a2 1b       	sub	r26, r18
    17f4:	b3 0b       	sbc	r27, r19
    17f6:	e4 0b       	sbc	r30, r20
    17f8:	f5 0b       	sbc	r31, r21

000017fa <__udivmodsi4_ep>:
    17fa:	66 1f       	adc	r22, r22
    17fc:	77 1f       	adc	r23, r23
    17fe:	88 1f       	adc	r24, r24
    1800:	99 1f       	adc	r25, r25
    1802:	1a 94       	dec	r1
    1804:	69 f7       	brne	.-38     	; 0x17e0 <__udivmodsi4_loop>
    1806:	60 95       	com	r22
    1808:	70 95       	com	r23
    180a:	80 95       	com	r24
    180c:	90 95       	com	r25
    180e:	9b 01       	movw	r18, r22
    1810:	ac 01       	movw	r20, r24
    1812:	bd 01       	movw	r22, r26
    1814:	cf 01       	movw	r24, r30
    1816:	08 95       	ret

00001818 <__prologue_saves__>:
    1818:	2f 92       	push	r2
    181a:	3f 92       	push	r3
    181c:	4f 92       	push	r4
    181e:	5f 92       	push	r5
    1820:	6f 92       	push	r6
    1822:	7f 92       	push	r7
    1824:	8f 92       	push	r8
    1826:	9f 92       	push	r9
    1828:	af 92       	push	r10
    182a:	bf 92       	push	r11
    182c:	cf 92       	push	r12
    182e:	df 92       	push	r13
    1830:	ef 92       	push	r14
    1832:	ff 92       	push	r15
    1834:	0f 93       	push	r16
    1836:	1f 93       	push	r17
    1838:	cf 93       	push	r28
    183a:	df 93       	push	r29
    183c:	cd b7       	in	r28, 0x3d	; 61
    183e:	de b7       	in	r29, 0x3e	; 62
    1840:	ca 1b       	sub	r28, r26
    1842:	db 0b       	sbc	r29, r27
    1844:	0f b6       	in	r0, 0x3f	; 63
    1846:	f8 94       	cli
    1848:	de bf       	out	0x3e, r29	; 62
    184a:	0f be       	out	0x3f, r0	; 63
    184c:	cd bf       	out	0x3d, r28	; 61
    184e:	09 94       	ijmp

00001850 <__epilogue_restores__>:
    1850:	2a 88       	ldd	r2, Y+18	; 0x12
    1852:	39 88       	ldd	r3, Y+17	; 0x11
    1854:	48 88       	ldd	r4, Y+16	; 0x10
    1856:	5f 84       	ldd	r5, Y+15	; 0x0f
    1858:	6e 84       	ldd	r6, Y+14	; 0x0e
    185a:	7d 84       	ldd	r7, Y+13	; 0x0d
    185c:	8c 84       	ldd	r8, Y+12	; 0x0c
    185e:	9b 84       	ldd	r9, Y+11	; 0x0b
    1860:	aa 84       	ldd	r10, Y+10	; 0x0a
    1862:	b9 84       	ldd	r11, Y+9	; 0x09
    1864:	c8 84       	ldd	r12, Y+8	; 0x08
    1866:	df 80       	ldd	r13, Y+7	; 0x07
    1868:	ee 80       	ldd	r14, Y+6	; 0x06
    186a:	fd 80       	ldd	r15, Y+5	; 0x05
    186c:	0c 81       	ldd	r16, Y+4	; 0x04
    186e:	1b 81       	ldd	r17, Y+3	; 0x03
    1870:	aa 81       	ldd	r26, Y+2	; 0x02
    1872:	b9 81       	ldd	r27, Y+1	; 0x01
    1874:	ce 0f       	add	r28, r30
    1876:	d1 1d       	adc	r29, r1
    1878:	0f b6       	in	r0, 0x3f	; 63
    187a:	f8 94       	cli
    187c:	de bf       	out	0x3e, r29	; 62
    187e:	0f be       	out	0x3f, r0	; 63
    1880:	cd bf       	out	0x3d, r28	; 61
    1882:	ed 01       	movw	r28, r26
    1884:	08 95       	ret

00001886 <__tablejump2__>:
    1886:	ee 0f       	add	r30, r30
    1888:	ff 1f       	adc	r31, r31
    188a:	05 90       	lpm	r0, Z+
    188c:	f4 91       	lpm	r31, Z
    188e:	e0 2d       	mov	r30, r0
    1890:	09 94       	ijmp

00001892 <__ftoa_engine>:
    1892:	28 30       	cpi	r18, 0x08	; 8
    1894:	08 f0       	brcs	.+2      	; 0x1898 <__ftoa_engine+0x6>
    1896:	27 e0       	ldi	r18, 0x07	; 7
    1898:	33 27       	eor	r19, r19
    189a:	da 01       	movw	r26, r20
    189c:	99 0f       	add	r25, r25
    189e:	31 1d       	adc	r19, r1
    18a0:	87 fd       	sbrc	r24, 7
    18a2:	91 60       	ori	r25, 0x01	; 1
    18a4:	00 96       	adiw	r24, 0x00	; 0
    18a6:	61 05       	cpc	r22, r1
    18a8:	71 05       	cpc	r23, r1
    18aa:	39 f4       	brne	.+14     	; 0x18ba <__ftoa_engine+0x28>
    18ac:	32 60       	ori	r19, 0x02	; 2
    18ae:	2e 5f       	subi	r18, 0xFE	; 254
    18b0:	3d 93       	st	X+, r19
    18b2:	30 e3       	ldi	r19, 0x30	; 48
    18b4:	2a 95       	dec	r18
    18b6:	e1 f7       	brne	.-8      	; 0x18b0 <__ftoa_engine+0x1e>
    18b8:	08 95       	ret
    18ba:	9f 3f       	cpi	r25, 0xFF	; 255
    18bc:	30 f0       	brcs	.+12     	; 0x18ca <__ftoa_engine+0x38>
    18be:	80 38       	cpi	r24, 0x80	; 128
    18c0:	71 05       	cpc	r23, r1
    18c2:	61 05       	cpc	r22, r1
    18c4:	09 f0       	breq	.+2      	; 0x18c8 <__ftoa_engine+0x36>
    18c6:	3c 5f       	subi	r19, 0xFC	; 252
    18c8:	3c 5f       	subi	r19, 0xFC	; 252
    18ca:	3d 93       	st	X+, r19
    18cc:	91 30       	cpi	r25, 0x01	; 1
    18ce:	08 f0       	brcs	.+2      	; 0x18d2 <__ftoa_engine+0x40>
    18d0:	80 68       	ori	r24, 0x80	; 128
    18d2:	91 1d       	adc	r25, r1
    18d4:	df 93       	push	r29
    18d6:	cf 93       	push	r28
    18d8:	1f 93       	push	r17
    18da:	0f 93       	push	r16
    18dc:	ff 92       	push	r15
    18de:	ef 92       	push	r14
    18e0:	19 2f       	mov	r17, r25
    18e2:	98 7f       	andi	r25, 0xF8	; 248
    18e4:	96 95       	lsr	r25
    18e6:	e9 2f       	mov	r30, r25
    18e8:	96 95       	lsr	r25
    18ea:	96 95       	lsr	r25
    18ec:	e9 0f       	add	r30, r25
    18ee:	ff 27       	eor	r31, r31
    18f0:	e6 53       	subi	r30, 0x36	; 54
    18f2:	ff 4f       	sbci	r31, 0xFF	; 255
    18f4:	99 27       	eor	r25, r25
    18f6:	33 27       	eor	r19, r19
    18f8:	ee 24       	eor	r14, r14
    18fa:	ff 24       	eor	r15, r15
    18fc:	a7 01       	movw	r20, r14
    18fe:	e7 01       	movw	r28, r14
    1900:	05 90       	lpm	r0, Z+
    1902:	08 94       	sec
    1904:	07 94       	ror	r0
    1906:	28 f4       	brcc	.+10     	; 0x1912 <__ftoa_engine+0x80>
    1908:	36 0f       	add	r19, r22
    190a:	e7 1e       	adc	r14, r23
    190c:	f8 1e       	adc	r15, r24
    190e:	49 1f       	adc	r20, r25
    1910:	51 1d       	adc	r21, r1
    1912:	66 0f       	add	r22, r22
    1914:	77 1f       	adc	r23, r23
    1916:	88 1f       	adc	r24, r24
    1918:	99 1f       	adc	r25, r25
    191a:	06 94       	lsr	r0
    191c:	a1 f7       	brne	.-24     	; 0x1906 <__ftoa_engine+0x74>
    191e:	05 90       	lpm	r0, Z+
    1920:	07 94       	ror	r0
    1922:	28 f4       	brcc	.+10     	; 0x192e <__ftoa_engine+0x9c>
    1924:	e7 0e       	add	r14, r23
    1926:	f8 1e       	adc	r15, r24
    1928:	49 1f       	adc	r20, r25
    192a:	56 1f       	adc	r21, r22
    192c:	c1 1d       	adc	r28, r1
    192e:	77 0f       	add	r23, r23
    1930:	88 1f       	adc	r24, r24
    1932:	99 1f       	adc	r25, r25
    1934:	66 1f       	adc	r22, r22
    1936:	06 94       	lsr	r0
    1938:	a1 f7       	brne	.-24     	; 0x1922 <__ftoa_engine+0x90>
    193a:	05 90       	lpm	r0, Z+
    193c:	07 94       	ror	r0
    193e:	28 f4       	brcc	.+10     	; 0x194a <__ftoa_engine+0xb8>
    1940:	f8 0e       	add	r15, r24
    1942:	49 1f       	adc	r20, r25
    1944:	56 1f       	adc	r21, r22
    1946:	c7 1f       	adc	r28, r23
    1948:	d1 1d       	adc	r29, r1
    194a:	88 0f       	add	r24, r24
    194c:	99 1f       	adc	r25, r25
    194e:	66 1f       	adc	r22, r22
    1950:	77 1f       	adc	r23, r23
    1952:	06 94       	lsr	r0
    1954:	a1 f7       	brne	.-24     	; 0x193e <__ftoa_engine+0xac>
    1956:	05 90       	lpm	r0, Z+
    1958:	07 94       	ror	r0
    195a:	20 f4       	brcc	.+8      	; 0x1964 <__ftoa_engine+0xd2>
    195c:	49 0f       	add	r20, r25
    195e:	56 1f       	adc	r21, r22
    1960:	c7 1f       	adc	r28, r23
    1962:	d8 1f       	adc	r29, r24
    1964:	99 0f       	add	r25, r25
    1966:	66 1f       	adc	r22, r22
    1968:	77 1f       	adc	r23, r23
    196a:	88 1f       	adc	r24, r24
    196c:	06 94       	lsr	r0
    196e:	a9 f7       	brne	.-22     	; 0x195a <__ftoa_engine+0xc8>
    1970:	84 91       	lpm	r24, Z
    1972:	10 95       	com	r17
    1974:	17 70       	andi	r17, 0x07	; 7
    1976:	41 f0       	breq	.+16     	; 0x1988 <__ftoa_engine+0xf6>
    1978:	d6 95       	lsr	r29
    197a:	c7 95       	ror	r28
    197c:	57 95       	ror	r21
    197e:	47 95       	ror	r20
    1980:	f7 94       	ror	r15
    1982:	e7 94       	ror	r14
    1984:	1a 95       	dec	r17
    1986:	c1 f7       	brne	.-16     	; 0x1978 <__ftoa_engine+0xe6>
    1988:	e0 e7       	ldi	r30, 0x70	; 112
    198a:	f0 e0       	ldi	r31, 0x00	; 0
    198c:	68 94       	set
    198e:	15 90       	lpm	r1, Z+
    1990:	15 91       	lpm	r17, Z+
    1992:	35 91       	lpm	r19, Z+
    1994:	65 91       	lpm	r22, Z+
    1996:	95 91       	lpm	r25, Z+
    1998:	05 90       	lpm	r0, Z+
    199a:	7f e2       	ldi	r23, 0x2F	; 47
    199c:	73 95       	inc	r23
    199e:	e1 18       	sub	r14, r1
    19a0:	f1 0a       	sbc	r15, r17
    19a2:	43 0b       	sbc	r20, r19
    19a4:	56 0b       	sbc	r21, r22
    19a6:	c9 0b       	sbc	r28, r25
    19a8:	d0 09       	sbc	r29, r0
    19aa:	c0 f7       	brcc	.-16     	; 0x199c <__ftoa_engine+0x10a>
    19ac:	e1 0c       	add	r14, r1
    19ae:	f1 1e       	adc	r15, r17
    19b0:	43 1f       	adc	r20, r19
    19b2:	56 1f       	adc	r21, r22
    19b4:	c9 1f       	adc	r28, r25
    19b6:	d0 1d       	adc	r29, r0
    19b8:	7e f4       	brtc	.+30     	; 0x19d8 <__ftoa_engine+0x146>
    19ba:	70 33       	cpi	r23, 0x30	; 48
    19bc:	11 f4       	brne	.+4      	; 0x19c2 <__ftoa_engine+0x130>
    19be:	8a 95       	dec	r24
    19c0:	e6 cf       	rjmp	.-52     	; 0x198e <__ftoa_engine+0xfc>
    19c2:	e8 94       	clt
    19c4:	01 50       	subi	r16, 0x01	; 1
    19c6:	30 f0       	brcs	.+12     	; 0x19d4 <__ftoa_engine+0x142>
    19c8:	08 0f       	add	r16, r24
    19ca:	0a f4       	brpl	.+2      	; 0x19ce <__ftoa_engine+0x13c>
    19cc:	00 27       	eor	r16, r16
    19ce:	02 17       	cp	r16, r18
    19d0:	08 f4       	brcc	.+2      	; 0x19d4 <__ftoa_engine+0x142>
    19d2:	20 2f       	mov	r18, r16
    19d4:	23 95       	inc	r18
    19d6:	02 2f       	mov	r16, r18
    19d8:	7a 33       	cpi	r23, 0x3A	; 58
    19da:	28 f0       	brcs	.+10     	; 0x19e6 <__ftoa_engine+0x154>
    19dc:	79 e3       	ldi	r23, 0x39	; 57
    19de:	7d 93       	st	X+, r23
    19e0:	2a 95       	dec	r18
    19e2:	e9 f7       	brne	.-6      	; 0x19de <__ftoa_engine+0x14c>
    19e4:	10 c0       	rjmp	.+32     	; 0x1a06 <__ftoa_engine+0x174>
    19e6:	7d 93       	st	X+, r23
    19e8:	2a 95       	dec	r18
    19ea:	89 f6       	brne	.-94     	; 0x198e <__ftoa_engine+0xfc>
    19ec:	06 94       	lsr	r0
    19ee:	97 95       	ror	r25
    19f0:	67 95       	ror	r22
    19f2:	37 95       	ror	r19
    19f4:	17 95       	ror	r17
    19f6:	17 94       	ror	r1
    19f8:	e1 18       	sub	r14, r1
    19fa:	f1 0a       	sbc	r15, r17
    19fc:	43 0b       	sbc	r20, r19
    19fe:	56 0b       	sbc	r21, r22
    1a00:	c9 0b       	sbc	r28, r25
    1a02:	d0 09       	sbc	r29, r0
    1a04:	98 f0       	brcs	.+38     	; 0x1a2c <__ftoa_engine+0x19a>
    1a06:	23 95       	inc	r18
    1a08:	7e 91       	ld	r23, -X
    1a0a:	73 95       	inc	r23
    1a0c:	7a 33       	cpi	r23, 0x3A	; 58
    1a0e:	08 f0       	brcs	.+2      	; 0x1a12 <__ftoa_engine+0x180>
    1a10:	70 e3       	ldi	r23, 0x30	; 48
    1a12:	7c 93       	st	X, r23
    1a14:	20 13       	cpse	r18, r16
    1a16:	b8 f7       	brcc	.-18     	; 0x1a06 <__ftoa_engine+0x174>
    1a18:	7e 91       	ld	r23, -X
    1a1a:	70 61       	ori	r23, 0x10	; 16
    1a1c:	7d 93       	st	X+, r23
    1a1e:	30 f0       	brcs	.+12     	; 0x1a2c <__ftoa_engine+0x19a>
    1a20:	83 95       	inc	r24
    1a22:	71 e3       	ldi	r23, 0x31	; 49
    1a24:	7d 93       	st	X+, r23
    1a26:	70 e3       	ldi	r23, 0x30	; 48
    1a28:	2a 95       	dec	r18
    1a2a:	e1 f7       	brne	.-8      	; 0x1a24 <__ftoa_engine+0x192>
    1a2c:	11 24       	eor	r1, r1
    1a2e:	ef 90       	pop	r14
    1a30:	ff 90       	pop	r15
    1a32:	0f 91       	pop	r16
    1a34:	1f 91       	pop	r17
    1a36:	cf 91       	pop	r28
    1a38:	df 91       	pop	r29
    1a3a:	99 27       	eor	r25, r25
    1a3c:	87 fd       	sbrc	r24, 7
    1a3e:	90 95       	com	r25
    1a40:	08 95       	ret

00001a42 <strnlen_P>:
    1a42:	fc 01       	movw	r30, r24
    1a44:	05 90       	lpm	r0, Z+
    1a46:	61 50       	subi	r22, 0x01	; 1
    1a48:	70 40       	sbci	r23, 0x00	; 0
    1a4a:	01 10       	cpse	r0, r1
    1a4c:	d8 f7       	brcc	.-10     	; 0x1a44 <strnlen_P+0x2>
    1a4e:	80 95       	com	r24
    1a50:	90 95       	com	r25
    1a52:	8e 0f       	add	r24, r30
    1a54:	9f 1f       	adc	r25, r31
    1a56:	08 95       	ret

00001a58 <strnlen>:
    1a58:	fc 01       	movw	r30, r24
    1a5a:	61 50       	subi	r22, 0x01	; 1
    1a5c:	70 40       	sbci	r23, 0x00	; 0
    1a5e:	01 90       	ld	r0, Z+
    1a60:	01 10       	cpse	r0, r1
    1a62:	d8 f7       	brcc	.-10     	; 0x1a5a <strnlen+0x2>
    1a64:	80 95       	com	r24
    1a66:	90 95       	com	r25
    1a68:	8e 0f       	add	r24, r30
    1a6a:	9f 1f       	adc	r25, r31
    1a6c:	08 95       	ret

00001a6e <fputc>:
    1a6e:	0f 93       	push	r16
    1a70:	1f 93       	push	r17
    1a72:	cf 93       	push	r28
    1a74:	df 93       	push	r29
    1a76:	18 2f       	mov	r17, r24
    1a78:	09 2f       	mov	r16, r25
    1a7a:	eb 01       	movw	r28, r22
    1a7c:	8b 81       	ldd	r24, Y+3	; 0x03
    1a7e:	81 fd       	sbrc	r24, 1
    1a80:	09 c0       	rjmp	.+18     	; 0x1a94 <fputc+0x26>
    1a82:	1f ef       	ldi	r17, 0xFF	; 255
    1a84:	0f ef       	ldi	r16, 0xFF	; 255
    1a86:	81 2f       	mov	r24, r17
    1a88:	90 2f       	mov	r25, r16
    1a8a:	df 91       	pop	r29
    1a8c:	cf 91       	pop	r28
    1a8e:	1f 91       	pop	r17
    1a90:	0f 91       	pop	r16
    1a92:	08 95       	ret
    1a94:	82 ff       	sbrs	r24, 2
    1a96:	14 c0       	rjmp	.+40     	; 0x1ac0 <fputc+0x52>
    1a98:	2e 81       	ldd	r18, Y+6	; 0x06
    1a9a:	3f 81       	ldd	r19, Y+7	; 0x07
    1a9c:	8c 81       	ldd	r24, Y+4	; 0x04
    1a9e:	9d 81       	ldd	r25, Y+5	; 0x05
    1aa0:	28 17       	cp	r18, r24
    1aa2:	39 07       	cpc	r19, r25
    1aa4:	3c f4       	brge	.+14     	; 0x1ab4 <fputc+0x46>
    1aa6:	e8 81       	ld	r30, Y
    1aa8:	f9 81       	ldd	r31, Y+1	; 0x01
    1aaa:	cf 01       	movw	r24, r30
    1aac:	01 96       	adiw	r24, 0x01	; 1
    1aae:	99 83       	std	Y+1, r25	; 0x01
    1ab0:	88 83       	st	Y, r24
    1ab2:	10 83       	st	Z, r17
    1ab4:	8e 81       	ldd	r24, Y+6	; 0x06
    1ab6:	9f 81       	ldd	r25, Y+7	; 0x07
    1ab8:	01 96       	adiw	r24, 0x01	; 1
    1aba:	9f 83       	std	Y+7, r25	; 0x07
    1abc:	8e 83       	std	Y+6, r24	; 0x06
    1abe:	e3 cf       	rjmp	.-58     	; 0x1a86 <fputc+0x18>
    1ac0:	e8 85       	ldd	r30, Y+8	; 0x08
    1ac2:	f9 85       	ldd	r31, Y+9	; 0x09
    1ac4:	81 2f       	mov	r24, r17
    1ac6:	09 95       	icall
    1ac8:	89 2b       	or	r24, r25
    1aca:	a1 f3       	breq	.-24     	; 0x1ab4 <fputc+0x46>
    1acc:	da cf       	rjmp	.-76     	; 0x1a82 <fputc+0x14>

00001ace <snprintf>:
    1ace:	ae e0       	ldi	r26, 0x0E	; 14
    1ad0:	b0 e0       	ldi	r27, 0x00	; 0
    1ad2:	ed e6       	ldi	r30, 0x6D	; 109
    1ad4:	fd e0       	ldi	r31, 0x0D	; 13
    1ad6:	0c 94 1a 0c 	jmp	0x1834	; 0x1834 <__prologue_saves__+0x1c>
    1ada:	0d 89       	ldd	r16, Y+21	; 0x15
    1adc:	1e 89       	ldd	r17, Y+22	; 0x16
    1ade:	8f 89       	ldd	r24, Y+23	; 0x17
    1ae0:	98 8d       	ldd	r25, Y+24	; 0x18
    1ae2:	26 e0       	ldi	r18, 0x06	; 6
    1ae4:	2c 83       	std	Y+4, r18	; 0x04
    1ae6:	1a 83       	std	Y+2, r17	; 0x02
    1ae8:	09 83       	std	Y+1, r16	; 0x01
    1aea:	97 ff       	sbrs	r25, 7
    1aec:	02 c0       	rjmp	.+4      	; 0x1af2 <snprintf+0x24>
    1aee:	80 e0       	ldi	r24, 0x00	; 0
    1af0:	90 e8       	ldi	r25, 0x80	; 128
    1af2:	01 97       	sbiw	r24, 0x01	; 1
    1af4:	9e 83       	std	Y+6, r25	; 0x06
    1af6:	8d 83       	std	Y+5, r24	; 0x05
    1af8:	ae 01       	movw	r20, r28
    1afa:	45 5e       	subi	r20, 0xE5	; 229
    1afc:	5f 4f       	sbci	r21, 0xFF	; 255
    1afe:	69 8d       	ldd	r22, Y+25	; 0x19
    1b00:	7a 8d       	ldd	r23, Y+26	; 0x1a
    1b02:	ce 01       	movw	r24, r28
    1b04:	01 96       	adiw	r24, 0x01	; 1
    1b06:	0e 94 52 08 	call	0x10a4	; 0x10a4 <vfprintf>
    1b0a:	4d 81       	ldd	r20, Y+5	; 0x05
    1b0c:	5e 81       	ldd	r21, Y+6	; 0x06
    1b0e:	57 fd       	sbrc	r21, 7
    1b10:	0a c0       	rjmp	.+20     	; 0x1b26 <snprintf+0x58>
    1b12:	2f 81       	ldd	r18, Y+7	; 0x07
    1b14:	38 85       	ldd	r19, Y+8	; 0x08
    1b16:	42 17       	cp	r20, r18
    1b18:	53 07       	cpc	r21, r19
    1b1a:	0c f4       	brge	.+2      	; 0x1b1e <snprintf+0x50>
    1b1c:	9a 01       	movw	r18, r20
    1b1e:	02 0f       	add	r16, r18
    1b20:	13 1f       	adc	r17, r19
    1b22:	f8 01       	movw	r30, r16
    1b24:	10 82       	st	Z, r1
    1b26:	2e 96       	adiw	r28, 0x0e	; 14
    1b28:	e4 e0       	ldi	r30, 0x04	; 4
    1b2a:	0c 94 36 0c 	jmp	0x186c	; 0x186c <__epilogue_restores__+0x1c>

00001b2e <__ultoa_invert>:
    1b2e:	fa 01       	movw	r30, r20
    1b30:	aa 27       	eor	r26, r26
    1b32:	28 30       	cpi	r18, 0x08	; 8
    1b34:	51 f1       	breq	.+84     	; 0x1b8a <__ultoa_invert+0x5c>
    1b36:	20 31       	cpi	r18, 0x10	; 16
    1b38:	81 f1       	breq	.+96     	; 0x1b9a <__ultoa_invert+0x6c>
    1b3a:	e8 94       	clt
    1b3c:	6f 93       	push	r22
    1b3e:	6e 7f       	andi	r22, 0xFE	; 254
    1b40:	6e 5f       	subi	r22, 0xFE	; 254
    1b42:	7f 4f       	sbci	r23, 0xFF	; 255
    1b44:	8f 4f       	sbci	r24, 0xFF	; 255
    1b46:	9f 4f       	sbci	r25, 0xFF	; 255
    1b48:	af 4f       	sbci	r26, 0xFF	; 255
    1b4a:	b1 e0       	ldi	r27, 0x01	; 1
    1b4c:	3e d0       	rcall	.+124    	; 0x1bca <__ultoa_invert+0x9c>
    1b4e:	b4 e0       	ldi	r27, 0x04	; 4
    1b50:	3c d0       	rcall	.+120    	; 0x1bca <__ultoa_invert+0x9c>
    1b52:	67 0f       	add	r22, r23
    1b54:	78 1f       	adc	r23, r24
    1b56:	89 1f       	adc	r24, r25
    1b58:	9a 1f       	adc	r25, r26
    1b5a:	a1 1d       	adc	r26, r1
    1b5c:	68 0f       	add	r22, r24
    1b5e:	79 1f       	adc	r23, r25
    1b60:	8a 1f       	adc	r24, r26
    1b62:	91 1d       	adc	r25, r1
    1b64:	a1 1d       	adc	r26, r1
    1b66:	6a 0f       	add	r22, r26
    1b68:	71 1d       	adc	r23, r1
    1b6a:	81 1d       	adc	r24, r1
    1b6c:	91 1d       	adc	r25, r1
    1b6e:	a1 1d       	adc	r26, r1
    1b70:	20 d0       	rcall	.+64     	; 0x1bb2 <__ultoa_invert+0x84>
    1b72:	09 f4       	brne	.+2      	; 0x1b76 <__ultoa_invert+0x48>
    1b74:	68 94       	set
    1b76:	3f 91       	pop	r19
    1b78:	2a e0       	ldi	r18, 0x0A	; 10
    1b7a:	26 9f       	mul	r18, r22
    1b7c:	11 24       	eor	r1, r1
    1b7e:	30 19       	sub	r19, r0
    1b80:	30 5d       	subi	r19, 0xD0	; 208
    1b82:	31 93       	st	Z+, r19
    1b84:	de f6       	brtc	.-74     	; 0x1b3c <__ultoa_invert+0xe>
    1b86:	cf 01       	movw	r24, r30
    1b88:	08 95       	ret
    1b8a:	46 2f       	mov	r20, r22
    1b8c:	47 70       	andi	r20, 0x07	; 7
    1b8e:	40 5d       	subi	r20, 0xD0	; 208
    1b90:	41 93       	st	Z+, r20
    1b92:	b3 e0       	ldi	r27, 0x03	; 3
    1b94:	0f d0       	rcall	.+30     	; 0x1bb4 <__ultoa_invert+0x86>
    1b96:	c9 f7       	brne	.-14     	; 0x1b8a <__ultoa_invert+0x5c>
    1b98:	f6 cf       	rjmp	.-20     	; 0x1b86 <__ultoa_invert+0x58>
    1b9a:	46 2f       	mov	r20, r22
    1b9c:	4f 70       	andi	r20, 0x0F	; 15
    1b9e:	40 5d       	subi	r20, 0xD0	; 208
    1ba0:	4a 33       	cpi	r20, 0x3A	; 58
    1ba2:	18 f0       	brcs	.+6      	; 0x1baa <__ultoa_invert+0x7c>
    1ba4:	49 5d       	subi	r20, 0xD9	; 217
    1ba6:	31 fd       	sbrc	r19, 1
    1ba8:	40 52       	subi	r20, 0x20	; 32
    1baa:	41 93       	st	Z+, r20
    1bac:	02 d0       	rcall	.+4      	; 0x1bb2 <__ultoa_invert+0x84>
    1bae:	a9 f7       	brne	.-22     	; 0x1b9a <__ultoa_invert+0x6c>
    1bb0:	ea cf       	rjmp	.-44     	; 0x1b86 <__ultoa_invert+0x58>
    1bb2:	b4 e0       	ldi	r27, 0x04	; 4
    1bb4:	a6 95       	lsr	r26
    1bb6:	97 95       	ror	r25
    1bb8:	87 95       	ror	r24
    1bba:	77 95       	ror	r23
    1bbc:	67 95       	ror	r22
    1bbe:	ba 95       	dec	r27
    1bc0:	c9 f7       	brne	.-14     	; 0x1bb4 <__ultoa_invert+0x86>
    1bc2:	00 97       	sbiw	r24, 0x00	; 0
    1bc4:	61 05       	cpc	r22, r1
    1bc6:	71 05       	cpc	r23, r1
    1bc8:	08 95       	ret
    1bca:	9b 01       	movw	r18, r22
    1bcc:	ac 01       	movw	r20, r24
    1bce:	0a 2e       	mov	r0, r26
    1bd0:	06 94       	lsr	r0
    1bd2:	57 95       	ror	r21
    1bd4:	47 95       	ror	r20
    1bd6:	37 95       	ror	r19
    1bd8:	27 95       	ror	r18
    1bda:	ba 95       	dec	r27
    1bdc:	c9 f7       	brne	.-14     	; 0x1bd0 <__ultoa_invert+0xa2>
    1bde:	62 0f       	add	r22, r18
    1be0:	73 1f       	adc	r23, r19
    1be2:	84 1f       	adc	r24, r20
    1be4:	95 1f       	adc	r25, r21
    1be6:	a0 1d       	adc	r26, r0
    1be8:	08 95       	ret

00001bea <_exit>:
    1bea:	f8 94       	cli

00001bec <__stop_program>:
    1bec:	ff cf       	rjmp	.-2      	; 0x1bec <__stop_program>
