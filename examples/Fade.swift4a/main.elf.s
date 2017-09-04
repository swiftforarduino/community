
main.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
       0:	0c 94 44 00 	jmp	0x88	; 0x88 <__ctors_end>
       4:	0c 94 6d 00 	jmp	0xda	; 0xda <__bad_interrupt>
       8:	0c 94 6d 00 	jmp	0xda	; 0xda <__bad_interrupt>
       c:	0c 94 6d 00 	jmp	0xda	; 0xda <__bad_interrupt>
      10:	0c 94 6d 00 	jmp	0xda	; 0xda <__bad_interrupt>
      14:	0c 94 6d 00 	jmp	0xda	; 0xda <__bad_interrupt>
      18:	0c 94 6d 00 	jmp	0xda	; 0xda <__bad_interrupt>
      1c:	0c 94 6d 00 	jmp	0xda	; 0xda <__bad_interrupt>
      20:	0c 94 6d 00 	jmp	0xda	; 0xda <__bad_interrupt>
      24:	0c 94 6d 00 	jmp	0xda	; 0xda <__bad_interrupt>
      28:	0c 94 6d 00 	jmp	0xda	; 0xda <__bad_interrupt>
      2c:	0c 94 6d 00 	jmp	0xda	; 0xda <__bad_interrupt>
      30:	0c 94 6d 00 	jmp	0xda	; 0xda <__bad_interrupt>
      34:	0c 94 6d 00 	jmp	0xda	; 0xda <__bad_interrupt>
      38:	0c 94 6d 00 	jmp	0xda	; 0xda <__bad_interrupt>
      3c:	0c 94 6d 00 	jmp	0xda	; 0xda <__bad_interrupt>
      40:	0c 94 92 02 	jmp	0x524	; 0x524 <__vector_16>
      44:	0c 94 6d 00 	jmp	0xda	; 0xda <__bad_interrupt>
      48:	0c 94 a9 02 	jmp	0x552	; 0x552 <__vector_18>
      4c:	0c 94 6d 00 	jmp	0xda	; 0xda <__bad_interrupt>
      50:	0c 94 6d 00 	jmp	0xda	; 0xda <__bad_interrupt>
      54:	0c 94 a1 04 	jmp	0x942	; 0x942 <__vector_21>
      58:	0c 94 6d 00 	jmp	0xda	; 0xda <__bad_interrupt>
      5c:	0c 94 6d 00 	jmp	0xda	; 0xda <__bad_interrupt>
      60:	0c 94 6d 00 	jmp	0xda	; 0xda <__bad_interrupt>
      64:	0c 94 6d 00 	jmp	0xda	; 0xda <__bad_interrupt>

00000068 <Put0Mem>:
      68:	50 75 74 20 79 6f 75 72 20 63 6f 6e 73 74 61 6e     Put your constan
      78:	74 20 73 74 72 69 6e 67 20 68 65 72 65 00           t string here.

00000086 <__ctors_start>:
      86:	23 05       	cpc	r18, r3

00000088 <__ctors_end>:
      88:	11 24       	eor	r1, r1
      8a:	1f be       	out	0x3f, r1	; 63
      8c:	cf ef       	ldi	r28, 0xFF	; 255
      8e:	d8 e0       	ldi	r29, 0x08	; 8
      90:	de bf       	out	0x3e, r29	; 62
      92:	cd bf       	out	0x3d, r28	; 61

00000094 <__do_copy_data>:
      94:	11 e0       	ldi	r17, 0x01	; 1
      96:	a0 e0       	ldi	r26, 0x00	; 0
      98:	b1 e0       	ldi	r27, 0x01	; 1
      9a:	e8 e3       	ldi	r30, 0x38	; 56
      9c:	f1 e1       	ldi	r31, 0x11	; 17
      9e:	03 c0       	rjmp	.+6      	; 0xa6 <__do_copy_data+0x12>
      a0:	c8 95       	lpm
      a2:	31 96       	adiw	r30, 0x01	; 1
      a4:	0d 92       	st	X+, r0
      a6:	ac 31       	cpi	r26, 0x1C	; 28
      a8:	b1 07       	cpc	r27, r17
      aa:	d1 f7       	brne	.-12     	; 0xa0 <__do_copy_data+0xc>

000000ac <__do_clear_bss>:
      ac:	22 e0       	ldi	r18, 0x02	; 2
      ae:	ac e1       	ldi	r26, 0x1C	; 28
      b0:	b1 e0       	ldi	r27, 0x01	; 1
      b2:	01 c0       	rjmp	.+2      	; 0xb6 <.do_clear_bss_start>

000000b4 <.do_clear_bss_loop>:
      b4:	1d 92       	st	X+, r1

000000b6 <.do_clear_bss_start>:
      b6:	ac 33       	cpi	r26, 0x3C	; 60
      b8:	b2 07       	cpc	r27, r18
      ba:	e1 f7       	brne	.-8      	; 0xb4 <.do_clear_bss_loop>

000000bc <__do_global_ctors>:
      bc:	10 e0       	ldi	r17, 0x00	; 0
      be:	c4 e4       	ldi	r28, 0x44	; 68
      c0:	d0 e0       	ldi	r29, 0x00	; 0
      c2:	04 c0       	rjmp	.+8      	; 0xcc <__do_global_ctors+0x10>
      c4:	21 97       	sbiw	r28, 0x01	; 1
      c6:	fd 2f       	mov	r31, r29
      c8:	ec 2f       	mov	r30, r28
      ca:	f7 d4       	rcall	.+2542   	; 0xaba <__tablejump2__>
      cc:	c3 34       	cpi	r28, 0x43	; 67
      ce:	d1 07       	cpc	r29, r17
      d0:	c9 f7       	brne	.-14     	; 0xc4 <__do_global_ctors+0x8>
      d2:	0e 94 70 00 	call	0xe0	; 0xe0 <main>
      d6:	0c 94 9a 08 	jmp	0x1134	; 0x1134 <_exit>

000000da <__bad_interrupt>:
      da:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>
	...

000000e0 <main>:
      e0:	8f 92       	push	r8
      e2:	9f 92       	push	r9
      e4:	af 92       	push	r10
      e6:	bf 92       	push	r11
      e8:	cf 92       	push	r12
      ea:	df 92       	push	r13
      ec:	ef 92       	push	r14
      ee:	ff 92       	push	r15
      f0:	0f 93       	push	r16
      f2:	1f 93       	push	r17
      f4:	80 e8       	ldi	r24, 0x80	; 128
      f6:	95 e2       	ldi	r25, 0x25	; 37
      f8:	0e 94 2e 01 	call	0x25c	; 0x25c <_TF3AVR11SetupSerialFT8baudRateVs5Int16_T_>
      fc:	80 91 06 01 	lds	r24, 0x0106	; 0x800106 <__swift_reflection_version+0x1>
     100:	90 91 07 01 	lds	r25, 0x0107	; 0x800107 <__swift_reflection_version+0x2>
     104:	60 91 04 01 	lds	r22, 0x0104	; 0x800104 <maxAnalogPin>
     108:	70 91 05 01 	lds	r23, 0x0105	; 0x800105 <__swift_reflection_version>
     10c:	40 91 02 01 	lds	r20, 0x0102	; 0x800102 <maxAnalogValue>
     110:	50 91 03 01 	lds	r21, 0x0103	; 0x800103 <maxAnalogValue+0x1>
     114:	20 91 00 01 	lds	r18, 0x0100	; 0x800100 <Put0>
     118:	30 91 01 01 	lds	r19, 0x0101	; 0x800101 <Put0+0x1>
     11c:	0e 94 31 01 	call	0x262	; 0x262 <_TF3AVR5printFT7messageGSqGSPVs4Int8___T_>
     120:	89 e0       	ldi	r24, 0x09	; 9
     122:	80 93 1c 01 	sts	0x011C, r24	; 0x80011c <__data_end>
     126:	60 91 0e 01 	lds	r22, 0x010E	; 0x80010e <OUTPUT>
     12a:	89 e0       	ldi	r24, 0x09	; 9
     12c:	0e 94 20 01 	call	0x240	; 0x240 <_TF3AVR7pinModeFT3pinVs5UInt84modeSb_T_>
     130:	00 e0       	ldi	r16, 0x00	; 0
     132:	10 e0       	ldi	r17, 0x00	; 0
     134:	10 93 1f 01 	sts	0x011F, r17	; 0x80011f <_Tv4main10brightnessVs5Int16+0x1>
     138:	00 93 1e 01 	sts	0x011E, r16	; 0x80011e <_Tv4main10brightnessVs5Int16>
     13c:	85 e0       	ldi	r24, 0x05	; 5
     13e:	90 e0       	ldi	r25, 0x00	; 0
     140:	7c 01       	movw	r14, r24
     142:	90 93 21 01 	sts	0x0121, r25	; 0x800121 <_Tv4main10fadeAmountVs5Int16+0x1>
     146:	80 93 20 01 	sts	0x0120, r24	; 0x800120 <_Tv4main10fadeAmountVs5Int16>
     14a:	8b ef       	ldi	r24, 0xFB	; 251
     14c:	9f ef       	ldi	r25, 0xFF	; 255
     14e:	6c 01       	movw	r12, r24
     150:	88 eb       	ldi	r24, 0xB8	; 184
     152:	9b e0       	ldi	r25, 0x0B	; 11
     154:	5c 01       	movw	r10, r24
     156:	8f ef       	ldi	r24, 0xFF	; 255
     158:	90 e0       	ldi	r25, 0x00	; 0
     15a:	4c 01       	movw	r8, r24
     15c:	03 c0       	rjmp	.+6      	; 0x164 <LBB0_2>

0000015e <LBB0_1>:
     15e:	c5 01       	movw	r24, r10
     160:	0e 94 e6 00 	call	0x1cc	; 0x1cc <_TF3AVR5delayFT12millisecondsVs6UInt16_T_>

00000164 <LBB0_2>:
     164:	80 91 1c 01 	lds	r24, 0x011C	; 0x80011c <__data_end>
     168:	60 91 1e 01 	lds	r22, 0x011E	; 0x80011e <_Tv4main10brightnessVs5Int16>
     16c:	0e 94 24 01 	call	0x248	; 0x248 <_TF3AVR11analogWriteFT3pinVs5UInt85valueS0__T_>
     170:	80 91 20 01 	lds	r24, 0x0120	; 0x800120 <_Tv4main10fadeAmountVs5Int16>
     174:	90 91 21 01 	lds	r25, 0x0121	; 0x800121 <_Tv4main10fadeAmountVs5Int16+0x1>
     178:	20 91 1e 01 	lds	r18, 0x011E	; 0x80011e <_Tv4main10brightnessVs5Int16>
     17c:	30 91 1f 01 	lds	r19, 0x011F	; 0x80011f <_Tv4main10brightnessVs5Int16+0x1>
     180:	28 0f       	add	r18, r24
     182:	39 1f       	adc	r19, r25
     184:	30 93 1f 01 	sts	0x011F, r19	; 0x80011f <_Tv4main10brightnessVs5Int16+0x1>
     188:	20 93 1e 01 	sts	0x011E, r18	; 0x80011e <_Tv4main10brightnessVs5Int16>
     18c:	81 e0       	ldi	r24, 0x01	; 1
     18e:	02 17       	cp	r16, r18
     190:	13 07       	cpc	r17, r19
     192:	94 f0       	brlt	.+36     	; 0x1b8 <LBB0_8>
     194:	81 70       	andi	r24, 0x01	; 1
     196:	80 30       	cpi	r24, 0x00	; 0
     198:	11 f3       	breq	.-60     	; 0x15e <LBB0_1>
     19a:	80 91 20 01 	lds	r24, 0x0120	; 0x800120 <_Tv4main10fadeAmountVs5Int16>
     19e:	90 91 21 01 	lds	r25, 0x0121	; 0x800121 <_Tv4main10fadeAmountVs5Int16+0x1>
     1a2:	08 17       	cp	r16, r24
     1a4:	19 07       	cpc	r17, r25
     1a6:	14 f4       	brge	.+4      	; 0x1ac <LBB0_6>
     1a8:	c6 01       	movw	r24, r12
     1aa:	01 c0       	rjmp	.+2      	; 0x1ae <LBB0_7>

000001ac <LBB0_6>:
     1ac:	c7 01       	movw	r24, r14

000001ae <LBB0_7>:
     1ae:	90 93 21 01 	sts	0x0121, r25	; 0x800121 <_Tv4main10fadeAmountVs5Int16+0x1>
     1b2:	80 93 20 01 	sts	0x0120, r24	; 0x800120 <_Tv4main10fadeAmountVs5Int16>
     1b6:	d3 cf       	rjmp	.-90     	; 0x15e <LBB0_1>

000001b8 <LBB0_8>:
     1b8:	20 91 1e 01 	lds	r18, 0x011E	; 0x80011e <_Tv4main10brightnessVs5Int16>
     1bc:	30 91 1f 01 	lds	r19, 0x011F	; 0x80011f <_Tv4main10brightnessVs5Int16+0x1>
     1c0:	a4 01       	movw	r20, r8
     1c2:	24 17       	cp	r18, r20
     1c4:	35 07       	cpc	r19, r21
     1c6:	0c f4       	brge	.+2      	; 0x1ca <LBB0_10>
     1c8:	80 e0       	ldi	r24, 0x00	; 0

000001ca <LBB0_10>:
	...

000001cc <_TF3AVR5delayFT12millisecondsVs6UInt16_T_>:
     1cc:	0e 94 42 02 	call	0x484	; 0x484 <_delayMs>
     1d0:	08 95       	ret

000001d2 <_TF3AVR18stringAddCharacterFT4byteVs5UInt8_Sb>:
     1d2:	0e 94 56 02 	call	0x4ac	; 0x4ac <_stringAddCharacter>
     1d6:	08 95       	ret

000001d8 <_TF3AVR14stringStartNewFT_T_>:
     1d8:	0e 94 6e 02 	call	0x4dc	; 0x4dc <_stringStartNew>
     1dc:	08 95       	ret

000001de <_TF3AVR18stringCurrentValueFT_GSQGSPVs4Int8__>:
     1de:	0e 94 73 02 	call	0x4e6	; 0x4e6 <_stringCurrentValue>
     1e2:	40 e0       	ldi	r20, 0x00	; 0
     1e4:	50 e0       	ldi	r21, 0x00	; 0
     1e6:	9c 01       	movw	r18, r24
     1e8:	ba 01       	movw	r22, r20
     1ea:	ca 01       	movw	r24, r20
     1ec:	08 95       	ret

000001ee <_TF3AVR14numberToStringFT6numberVs5Int32_GSQGSPVs4Int8__>:
     1ee:	0e 94 76 02 	call	0x4ec	; 0x4ec <_numberToString>
     1f2:	40 e0       	ldi	r20, 0x00	; 0
     1f4:	50 e0       	ldi	r21, 0x00	; 0
     1f6:	9c 01       	movw	r18, r24
     1f8:	ba 01       	movw	r22, r20
     1fa:	ca 01       	movw	r24, r20
     1fc:	08 95       	ret

000001fe <_TF3AVR5ticksFT_Vs6UInt16>:
     1fe:	0e 94 51 02 	call	0x4a2	; 0x4a2 <_ticks>
     202:	08 95       	ret

00000204 <_TF3AVR11digitalReadFT3pinVs5UInt8_Sb>:
     204:	0e 94 b3 01 	call	0x366	; 0x366 <_digitalRead>
     208:	08 95       	ret

0000020a <_TF3AVR12digitalWriteFT3pinVs5UInt85valueSb_T_>:
     20a:	83 30       	cpi	r24, 0x03	; 3
     20c:	51 f0       	breq	.+20     	; 0x222 <LBB1_6>
     20e:	85 30       	cpi	r24, 0x05	; 5
     210:	41 f0       	breq	.+16     	; 0x222 <LBB1_6>
     212:	86 30       	cpi	r24, 0x06	; 6
     214:	31 f0       	breq	.+12     	; 0x222 <LBB1_6>
     216:	89 30       	cpi	r24, 0x09	; 9
     218:	21 f0       	breq	.+8      	; 0x222 <LBB1_6>
     21a:	8a 30       	cpi	r24, 0x0A	; 10
     21c:	11 f0       	breq	.+4      	; 0x222 <LBB1_6>
     21e:	8b 30       	cpi	r24, 0x0B	; 11
     220:	59 f4       	brne	.+22     	; 0x238 <LBB1_9>

00000222 <LBB1_6>:
     222:	61 70       	andi	r22, 0x01	; 1
     224:	60 30       	cpi	r22, 0x00	; 0
     226:	21 f0       	breq	.+8      	; 0x230 <LBB1_8>
     228:	6f ef       	ldi	r22, 0xFF	; 255
     22a:	0e 94 6f 03 	call	0x6de	; 0x6de <_analogWrite>
     22e:	08 95       	ret

00000230 <LBB1_8>:
     230:	60 e0       	ldi	r22, 0x00	; 0
     232:	0e 94 6f 03 	call	0x6de	; 0x6de <_analogWrite>
     236:	08 95       	ret

00000238 <LBB1_9>:
     238:	61 70       	andi	r22, 0x01	; 1
     23a:	0e 94 ea 01 	call	0x3d4	; 0x3d4 <_digitalWrite>
     23e:	08 95       	ret

00000240 <_TF3AVR7pinModeFT3pinVs5UInt84modeSb_T_>:
     240:	61 70       	andi	r22, 0x01	; 1
     242:	0e 94 1a 02 	call	0x434	; 0x434 <_pinMode>
     246:	08 95       	ret

00000248 <_TF3AVR11analogWriteFT3pinVs5UInt85valueS0__T_>:
     248:	0e 94 6f 03 	call	0x6de	; 0x6de <_analogWrite>
     24c:	08 95       	ret

0000024e <_TF3AVR14slowAnalogReadFT3pinVs5UInt8_Vs6UInt16>:
     24e:	0e 94 72 04 	call	0x8e4	; 0x8e4 <_slowAnalogRead>
     252:	08 95       	ret

00000254 <_TF3AVR15analogReadAsyncFT3pinVs5UInt88callbackcVs6UInt16T__T_>:
     254:	40 e0       	ldi	r20, 0x00	; 0
     256:	0e 94 d9 04 	call	0x9b2	; 0x9b2 <_analogReadAsync>
     25a:	08 95       	ret

0000025c <_TF3AVR11SetupSerialFT8baudRateVs5Int16_T_>:
     25c:	0e 94 eb 02 	call	0x5d6	; 0x5d6 <_setupSerial>
     260:	08 95       	ret

00000262 <_TF3AVR5printFT7messageGSqGSPVs4Int8___T_>:
     262:	c9 01       	movw	r24, r18
     264:	0e 94 28 03 	call	0x650	; 0x650 <_sendString>
     268:	08 95       	ret

0000026a <_TF3AVR5printFT4byteVs5UInt8_T_>:
     26a:	0e 94 21 03 	call	0x642	; 0x642 <_sendByte>
     26e:	08 95       	ret

00000270 <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberVs5Int32_T_>:
     270:	0e 94 76 02 	call	0x4ec	; 0x4ec <_numberToString>
     274:	0e 94 38 03 	call	0x670	; 0x670 <_sendBuffer>
     278:	08 95       	ret

0000027a <_TF3AVR5printFT7longIntVs5Int32_T_>:
     27a:	0e 94 38 01 	call	0x270	; 0x270 <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberVs5Int32_T_>
     27e:	08 95       	ret

00000280 <_TF3AVR5printFT3intVs5Int16_T_>:
     280:	9c 01       	movw	r18, r24
     282:	35 95       	asr	r19
     284:	27 95       	ror	r18
     286:	35 95       	asr	r19
     288:	27 95       	ror	r18
     28a:	35 95       	asr	r19
     28c:	27 95       	ror	r18
     28e:	35 95       	asr	r19
     290:	27 95       	ror	r18
     292:	35 95       	asr	r19
     294:	27 95       	ror	r18
     296:	35 95       	asr	r19
     298:	27 95       	ror	r18
     29a:	35 95       	asr	r19
     29c:	27 95       	ror	r18
     29e:	35 95       	asr	r19
     2a0:	27 95       	ror	r18
     2a2:	35 95       	asr	r19
     2a4:	27 95       	ror	r18
     2a6:	35 95       	asr	r19
     2a8:	27 95       	ror	r18
     2aa:	35 95       	asr	r19
     2ac:	27 95       	ror	r18
     2ae:	35 95       	asr	r19
     2b0:	27 95       	ror	r18
     2b2:	35 95       	asr	r19
     2b4:	27 95       	ror	r18
     2b6:	35 95       	asr	r19
     2b8:	27 95       	ror	r18
     2ba:	35 95       	asr	r19
     2bc:	27 95       	ror	r18
     2be:	bc 01       	movw	r22, r24
     2c0:	c9 01       	movw	r24, r18
     2c2:	0e 94 38 01 	call	0x270	; 0x270 <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberVs5Int32_T_>
     2c6:	08 95       	ret

000002c8 <_TF3AVR5printFT7tinyIntVs4Int8_T_>:
     2c8:	68 2f       	mov	r22, r24
     2ca:	78 2f       	mov	r23, r24
     2cc:	77 0f       	add	r23, r23
     2ce:	77 0b       	sbc	r23, r23
     2d0:	cb 01       	movw	r24, r22
     2d2:	95 95       	asr	r25
     2d4:	87 95       	ror	r24
     2d6:	95 95       	asr	r25
     2d8:	87 95       	ror	r24
     2da:	95 95       	asr	r25
     2dc:	87 95       	ror	r24
     2de:	95 95       	asr	r25
     2e0:	87 95       	ror	r24
     2e2:	95 95       	asr	r25
     2e4:	87 95       	ror	r24
     2e6:	95 95       	asr	r25
     2e8:	87 95       	ror	r24
     2ea:	95 95       	asr	r25
     2ec:	87 95       	ror	r24
     2ee:	95 95       	asr	r25
     2f0:	87 95       	ror	r24
     2f2:	95 95       	asr	r25
     2f4:	87 95       	ror	r24
     2f6:	95 95       	asr	r25
     2f8:	87 95       	ror	r24
     2fa:	95 95       	asr	r25
     2fc:	87 95       	ror	r24
     2fe:	95 95       	asr	r25
     300:	87 95       	ror	r24
     302:	95 95       	asr	r25
     304:	87 95       	ror	r24
     306:	95 95       	asr	r25
     308:	87 95       	ror	r24
     30a:	95 95       	asr	r25
     30c:	87 95       	ror	r24
     30e:	0e 94 38 01 	call	0x270	; 0x270 <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberVs5Int32_T_>
     312:	08 95       	ret

00000314 <_TF3AVR5printFT11unsignedIntVs6UInt16_T_>:
     314:	20 e0       	ldi	r18, 0x00	; 0
     316:	30 e0       	ldi	r19, 0x00	; 0
     318:	bc 01       	movw	r22, r24
     31a:	c9 01       	movw	r24, r18
     31c:	0e 94 38 01 	call	0x270	; 0x270 <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberVs5Int32_T_>
     320:	08 95       	ret

00000322 <_TF3AVR5printFT15unsignedTinyIntVs5UInt8_T_>:
     322:	68 2f       	mov	r22, r24
     324:	77 27       	eor	r23, r23
     326:	80 e0       	ldi	r24, 0x00	; 0
     328:	90 e0       	ldi	r25, 0x00	; 0
     32a:	0e 94 38 01 	call	0x270	; 0x270 <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberVs5Int32_T_>
     32e:	08 95       	ret

00000330 <_TF3AVR9availableFT_Sb>:
     330:	0e 94 47 03 	call	0x68e	; 0x68e <_available>
     334:	08 95       	ret

00000336 <_TF3AVR4readFT_Vs5UInt8>:
     336:	0e 94 52 03 	call	0x6a4	; 0x6a4 <_receiveByte>
     33a:	08 95       	ret

0000033c <pinMask>:
     33c:	88 30       	cpi	r24, 0x08	; 8
     33e:	60 f0       	brcs	.+24     	; 0x358 <pinMask+0x1c>
     340:	8e 30       	cpi	r24, 0x0E	; 14
     342:	40 f4       	brcc	.+16     	; 0x354 <pinMask+0x18>
     344:	98 ef       	ldi	r25, 0xF8	; 248
     346:	98 0f       	add	r25, r24
     348:	81 e0       	ldi	r24, 0x01	; 1
     34a:	01 c0       	rjmp	.+2      	; 0x34e <pinMask+0x12>
     34c:	88 0f       	add	r24, r24
     34e:	9a 95       	dec	r25
     350:	ea f7       	brpl	.-6      	; 0x34c <pinMask+0x10>
     352:	08 95       	ret
     354:	80 e0       	ldi	r24, 0x00	; 0
     356:	08 95       	ret
     358:	91 e0       	ldi	r25, 0x01	; 1
     35a:	01 c0       	rjmp	.+2      	; 0x35e <pinMask+0x22>
     35c:	99 0f       	add	r25, r25
     35e:	8a 95       	dec	r24
     360:	ea f7       	brpl	.-6      	; 0x35c <pinMask+0x20>
     362:	89 2f       	mov	r24, r25
     364:	08 95       	ret

00000366 <_digitalRead>:
     366:	cf 93       	push	r28
     368:	c8 2f       	mov	r28, r24
     36a:	0e 94 9e 01 	call	0x33c	; 0x33c <pinMask>
     36e:	88 23       	and	r24, r24
     370:	31 f0       	breq	.+12     	; 0x37e <_digitalRead+0x18>
     372:	c8 30       	cpi	r28, 0x08	; 8
     374:	38 f0       	brcs	.+14     	; 0x384 <_digitalRead+0x1e>
     376:	93 b1       	in	r25, 0x03	; 3
     378:	98 23       	and	r25, r24
     37a:	81 e0       	ldi	r24, 0x01	; 1
     37c:	09 f4       	brne	.+2      	; 0x380 <_digitalRead+0x1a>
     37e:	80 e0       	ldi	r24, 0x00	; 0
     380:	cf 91       	pop	r28
     382:	08 95       	ret
     384:	99 b1       	in	r25, 0x09	; 9
     386:	98 23       	and	r25, r24
     388:	81 e0       	ldi	r24, 0x01	; 1
     38a:	c9 f3       	breq	.-14     	; 0x37e <_digitalRead+0x18>
     38c:	cf 91       	pop	r28
     38e:	08 95       	ret

00000390 <resetPortD>:
     390:	0e 94 9e 01 	call	0x33c	; 0x33c <pinMask>
     394:	88 23       	and	r24, r24
     396:	21 f0       	breq	.+8      	; 0x3a0 <resetPortD+0x10>
     398:	9b b1       	in	r25, 0x0b	; 11
     39a:	80 95       	com	r24
     39c:	89 23       	and	r24, r25
     39e:	8b b9       	out	0x0b, r24	; 11
     3a0:	08 95       	ret

000003a2 <resetPortB>:
     3a2:	0e 94 9e 01 	call	0x33c	; 0x33c <pinMask>
     3a6:	88 23       	and	r24, r24
     3a8:	21 f0       	breq	.+8      	; 0x3b2 <resetPortB+0x10>
     3aa:	95 b1       	in	r25, 0x05	; 5
     3ac:	80 95       	com	r24
     3ae:	89 23       	and	r24, r25
     3b0:	85 b9       	out	0x05, r24	; 5
     3b2:	08 95       	ret

000003b4 <setPortD>:
     3b4:	0e 94 9e 01 	call	0x33c	; 0x33c <pinMask>
     3b8:	88 23       	and	r24, r24
     3ba:	19 f0       	breq	.+6      	; 0x3c2 <setPortD+0xe>
     3bc:	9b b1       	in	r25, 0x0b	; 11
     3be:	89 2b       	or	r24, r25
     3c0:	8b b9       	out	0x0b, r24	; 11
     3c2:	08 95       	ret

000003c4 <setPortB>:
     3c4:	0e 94 9e 01 	call	0x33c	; 0x33c <pinMask>
     3c8:	88 23       	and	r24, r24
     3ca:	19 f0       	breq	.+6      	; 0x3d2 <setPortB+0xe>
     3cc:	95 b1       	in	r25, 0x05	; 5
     3ce:	89 2b       	or	r24, r25
     3d0:	85 b9       	out	0x05, r24	; 5
     3d2:	08 95       	ret

000003d4 <_digitalWrite>:
     3d4:	66 23       	and	r22, r22
     3d6:	21 f0       	breq	.+8      	; 0x3e0 <_digitalWrite+0xc>
     3d8:	88 30       	cpi	r24, 0x08	; 8
     3da:	30 f4       	brcc	.+12     	; 0x3e8 <_digitalWrite+0x14>
     3dc:	0c 94 da 01 	jmp	0x3b4	; 0x3b4 <setPortD>
     3e0:	88 30       	cpi	r24, 0x08	; 8
     3e2:	20 f0       	brcs	.+8      	; 0x3ec <_digitalWrite+0x18>
     3e4:	0c 94 d1 01 	jmp	0x3a2	; 0x3a2 <resetPortB>
     3e8:	0c 94 e2 01 	jmp	0x3c4	; 0x3c4 <setPortB>
     3ec:	0c 94 c8 01 	jmp	0x390	; 0x390 <resetPortD>

000003f0 <enablePortDWrite>:
     3f0:	0e 94 9e 01 	call	0x33c	; 0x33c <pinMask>
     3f4:	88 23       	and	r24, r24
     3f6:	19 f0       	breq	.+6      	; 0x3fe <enablePortDWrite+0xe>
     3f8:	9a b1       	in	r25, 0x0a	; 10
     3fa:	89 2b       	or	r24, r25
     3fc:	8a b9       	out	0x0a, r24	; 10
     3fe:	08 95       	ret

00000400 <enablePortBWrite>:
     400:	0e 94 9e 01 	call	0x33c	; 0x33c <pinMask>
     404:	88 23       	and	r24, r24
     406:	19 f0       	breq	.+6      	; 0x40e <enablePortBWrite+0xe>
     408:	94 b1       	in	r25, 0x04	; 4
     40a:	89 2b       	or	r24, r25
     40c:	84 b9       	out	0x04, r24	; 4
     40e:	08 95       	ret

00000410 <disablePortDWrite>:
     410:	0e 94 9e 01 	call	0x33c	; 0x33c <pinMask>
     414:	88 23       	and	r24, r24
     416:	21 f0       	breq	.+8      	; 0x420 <disablePortDWrite+0x10>
     418:	9a b1       	in	r25, 0x0a	; 10
     41a:	80 95       	com	r24
     41c:	89 23       	and	r24, r25
     41e:	8a b9       	out	0x0a, r24	; 10
     420:	08 95       	ret

00000422 <disablePortBWrite>:
     422:	0e 94 9e 01 	call	0x33c	; 0x33c <pinMask>
     426:	88 23       	and	r24, r24
     428:	21 f0       	breq	.+8      	; 0x432 <disablePortBWrite+0x10>
     42a:	94 b1       	in	r25, 0x04	; 4
     42c:	80 95       	com	r24
     42e:	89 23       	and	r24, r25
     430:	84 b9       	out	0x04, r24	; 4
     432:	08 95       	ret

00000434 <_pinMode>:
     434:	66 23       	and	r22, r22
     436:	51 f0       	breq	.+20     	; 0x44c <_pinMode+0x18>
     438:	88 30       	cpi	r24, 0x08	; 8
     43a:	e0 f4       	brcc	.+56     	; 0x474 <_pinMode+0x40>
     43c:	0e 94 9e 01 	call	0x33c	; 0x33c <pinMask>
     440:	88 23       	and	r24, r24
     442:	b9 f0       	breq	.+46     	; 0x472 <_pinMode+0x3e>
     444:	9a b1       	in	r25, 0x0a	; 10
     446:	89 2b       	or	r24, r25
     448:	8a b9       	out	0x0a, r24	; 10
     44a:	08 95       	ret
     44c:	88 30       	cpi	r24, 0x08	; 8
     44e:	48 f4       	brcc	.+18     	; 0x462 <_pinMode+0x2e>
     450:	0e 94 9e 01 	call	0x33c	; 0x33c <pinMask>
     454:	88 23       	and	r24, r24
     456:	69 f0       	breq	.+26     	; 0x472 <_pinMode+0x3e>
     458:	9a b1       	in	r25, 0x0a	; 10
     45a:	80 95       	com	r24
     45c:	89 23       	and	r24, r25
     45e:	8a b9       	out	0x0a, r24	; 10
     460:	08 95       	ret
     462:	0e 94 9e 01 	call	0x33c	; 0x33c <pinMask>
     466:	88 23       	and	r24, r24
     468:	21 f0       	breq	.+8      	; 0x472 <_pinMode+0x3e>
     46a:	94 b1       	in	r25, 0x04	; 4
     46c:	80 95       	com	r24
     46e:	89 23       	and	r24, r25
     470:	84 b9       	out	0x04, r24	; 4
     472:	08 95       	ret
     474:	0e 94 9e 01 	call	0x33c	; 0x33c <pinMask>
     478:	88 23       	and	r24, r24
     47a:	d9 f3       	breq	.-10     	; 0x472 <_pinMode+0x3e>
     47c:	94 b1       	in	r25, 0x04	; 4
     47e:	89 2b       	or	r24, r25
     480:	84 b9       	out	0x04, r24	; 4
     482:	08 95       	ret

00000484 <_delayMs>:
     484:	00 97       	sbiw	r24, 0x00	; 0
     486:	61 f0       	breq	.+24     	; 0x4a0 <_delayMs+0x1c>
     488:	20 e0       	ldi	r18, 0x00	; 0
     48a:	30 e0       	ldi	r19, 0x00	; 0
     48c:	40 ea       	ldi	r20, 0xA0	; 160
     48e:	5f e0       	ldi	r21, 0x0F	; 15
     490:	fa 01       	movw	r30, r20
     492:	31 97       	sbiw	r30, 0x01	; 1
     494:	f1 f7       	brne	.-4      	; 0x492 <_delayMs+0xe>
     496:	2f 5f       	subi	r18, 0xFF	; 255
     498:	3f 4f       	sbci	r19, 0xFF	; 255
     49a:	82 17       	cp	r24, r18
     49c:	93 07       	cpc	r25, r19
     49e:	c1 f7       	brne	.-16     	; 0x490 <_delayMs+0xc>
     4a0:	08 95       	ret

000004a2 <_ticks>:
     4a2:	80 91 22 01 	lds	r24, 0x0122	; 0x800122 <t0Overflow>
     4a6:	90 91 23 01 	lds	r25, 0x0123	; 0x800123 <t0Overflow+0x1>
     4aa:	08 95       	ret

000004ac <_stringAddCharacter>:
     4ac:	e0 91 33 01 	lds	r30, 0x0133	; 0x800133 <stringBufferEnd>
     4b0:	ef 37       	cpi	r30, 0x7F	; 127
     4b2:	91 f0       	breq	.+36     	; 0x4d8 <_stringAddCharacter+0x2c>
     4b4:	91 e0       	ldi	r25, 0x01	; 1
     4b6:	9e 0f       	add	r25, r30
     4b8:	90 93 33 01 	sts	0x0133, r25	; 0x800133 <stringBufferEnd>
     4bc:	0e 2e       	mov	r0, r30
     4be:	00 0c       	add	r0, r0
     4c0:	ff 0b       	sbc	r31, r31
     4c2:	ec 5c       	subi	r30, 0xCC	; 204
     4c4:	fe 4f       	sbci	r31, 0xFE	; 254
     4c6:	80 83       	st	Z, r24
     4c8:	e9 2f       	mov	r30, r25
     4ca:	99 0f       	add	r25, r25
     4cc:	ff 0b       	sbc	r31, r31
     4ce:	ec 5c       	subi	r30, 0xCC	; 204
     4d0:	fe 4f       	sbci	r31, 0xFE	; 254
     4d2:	10 82       	st	Z, r1
     4d4:	81 e0       	ldi	r24, 0x01	; 1
     4d6:	08 95       	ret
     4d8:	80 e0       	ldi	r24, 0x00	; 0
     4da:	08 95       	ret

000004dc <_stringStartNew>:
     4dc:	10 92 33 01 	sts	0x0133, r1	; 0x800133 <stringBufferEnd>
     4e0:	10 92 34 01 	sts	0x0134, r1	; 0x800134 <stringBuffer>
     4e4:	08 95       	ret

000004e6 <_stringCurrentValue>:
     4e6:	84 e3       	ldi	r24, 0x34	; 52
     4e8:	91 e0       	ldi	r25, 0x01	; 1
     4ea:	08 95       	ret

000004ec <_numberToString>:
     4ec:	9f 93       	push	r25
     4ee:	8f 93       	push	r24
     4f0:	7f 93       	push	r23
     4f2:	6f 93       	push	r22
     4f4:	85 e1       	ldi	r24, 0x15	; 21
     4f6:	91 e0       	ldi	r25, 0x01	; 1
     4f8:	9f 93       	push	r25
     4fa:	8f 93       	push	r24
     4fc:	1f 92       	push	r1
     4fe:	8f e0       	ldi	r24, 0x0F	; 15
     500:	8f 93       	push	r24
     502:	84 e2       	ldi	r24, 0x24	; 36
     504:	91 e0       	ldi	r25, 0x01	; 1
     506:	9f 93       	push	r25
     508:	8f 93       	push	r24
     50a:	0e 94 65 05 	call	0xaca	; 0xaca <snprintf>
     50e:	8d b7       	in	r24, 0x3d	; 61
     510:	9e b7       	in	r25, 0x3e	; 62
     512:	0a 96       	adiw	r24, 0x0a	; 10
     514:	0f b6       	in	r0, 0x3f	; 63
     516:	f8 94       	cli
     518:	9e bf       	out	0x3e, r25	; 62
     51a:	0f be       	out	0x3f, r0	; 63
     51c:	8d bf       	out	0x3d, r24	; 61
     51e:	84 e2       	ldi	r24, 0x24	; 36
     520:	91 e0       	ldi	r25, 0x01	; 1
     522:	08 95       	ret

00000524 <__vector_16>:
     524:	1f 92       	push	r1
     526:	0f 92       	push	r0
     528:	0f b6       	in	r0, 0x3f	; 63
     52a:	0f 92       	push	r0
     52c:	11 24       	eor	r1, r1
     52e:	8f 93       	push	r24
     530:	9f 93       	push	r25
     532:	80 91 22 01 	lds	r24, 0x0122	; 0x800122 <t0Overflow>
     536:	90 91 23 01 	lds	r25, 0x0123	; 0x800123 <t0Overflow+0x1>
     53a:	01 96       	adiw	r24, 0x01	; 1
     53c:	90 93 23 01 	sts	0x0123, r25	; 0x800123 <t0Overflow+0x1>
     540:	80 93 22 01 	sts	0x0122, r24	; 0x800122 <t0Overflow>
     544:	9f 91       	pop	r25
     546:	8f 91       	pop	r24
     548:	0f 90       	pop	r0
     54a:	0f be       	out	0x3f, r0	; 63
     54c:	0f 90       	pop	r0
     54e:	1f 90       	pop	r1
     550:	18 95       	reti

00000552 <__vector_18>:
     552:	1f 92       	push	r1
     554:	0f 92       	push	r0
     556:	0f b6       	in	r0, 0x3f	; 63
     558:	0f 92       	push	r0
     55a:	11 24       	eor	r1, r1
     55c:	2f 93       	push	r18
     55e:	8f 93       	push	r24
     560:	9f 93       	push	r25
     562:	ef 93       	push	r30
     564:	ff 93       	push	r31
     566:	80 91 b4 01 	lds	r24, 0x01B4	; 0x8001b4 <bufferFull>
     56a:	81 11       	cpse	r24, r1
     56c:	1e c0       	rjmp	.+60     	; 0x5aa <__vector_18+0x58>
     56e:	e0 91 b5 01 	lds	r30, 0x01B5	; 0x8001b5 <ringBufferEnd>
     572:	81 e0       	ldi	r24, 0x01	; 1
     574:	8e 0f       	add	r24, r30
     576:	80 93 b5 01 	sts	0x01B5, r24	; 0x8001b5 <ringBufferEnd>
     57a:	90 91 c6 00 	lds	r25, 0x00C6	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
     57e:	0e 2e       	mov	r0, r30
     580:	00 0c       	add	r0, r0
     582:	ff 0b       	sbc	r31, r31
     584:	e9 54       	subi	r30, 0x49	; 73
     586:	fe 4f       	sbci	r31, 0xFE	; 254
     588:	90 83       	st	Z, r25
     58a:	08 2e       	mov	r0, r24
     58c:	00 0c       	add	r0, r0
     58e:	99 0b       	sbc	r25, r25
     590:	8f 77       	andi	r24, 0x7F	; 127
     592:	90 78       	andi	r25, 0x80	; 128
     594:	97 fd       	sbrc	r25, 7
     596:	13 c0       	rjmp	.+38     	; 0x5be <__vector_18+0x6c>
     598:	80 93 b5 01 	sts	0x01B5, r24	; 0x8001b5 <ringBufferEnd>
     59c:	91 e0       	ldi	r25, 0x01	; 1
     59e:	20 91 b6 01 	lds	r18, 0x01B6	; 0x8001b6 <ringBufferStart>
     5a2:	28 13       	cpse	r18, r24
     5a4:	90 e0       	ldi	r25, 0x00	; 0
     5a6:	90 93 b4 01 	sts	0x01B4, r25	; 0x8001b4 <bufferFull>
     5aa:	ff 91       	pop	r31
     5ac:	ef 91       	pop	r30
     5ae:	9f 91       	pop	r25
     5b0:	8f 91       	pop	r24
     5b2:	2f 91       	pop	r18
     5b4:	0f 90       	pop	r0
     5b6:	0f be       	out	0x3f, r0	; 63
     5b8:	0f 90       	pop	r0
     5ba:	1f 90       	pop	r1
     5bc:	18 95       	reti
     5be:	01 97       	sbiw	r24, 0x01	; 1
     5c0:	80 68       	ori	r24, 0x80	; 128
     5c2:	9f 6f       	ori	r25, 0xFF	; 255
     5c4:	01 96       	adiw	r24, 0x01	; 1
     5c6:	80 93 b5 01 	sts	0x01B5, r24	; 0x8001b5 <ringBufferEnd>
     5ca:	91 e0       	ldi	r25, 0x01	; 1
     5cc:	20 91 b6 01 	lds	r18, 0x01B6	; 0x8001b6 <ringBufferStart>
     5d0:	28 13       	cpse	r18, r24
     5d2:	e8 cf       	rjmp	.-48     	; 0x5a4 <__vector_18+0x52>
     5d4:	e8 cf       	rjmp	.-48     	; 0x5a6 <__vector_18+0x54>

000005d6 <_setupSerial>:
     5d6:	9c 01       	movw	r18, r24
     5d8:	99 0f       	add	r25, r25
     5da:	44 0b       	sbc	r20, r20
     5dc:	55 0b       	sbc	r21, r21
     5de:	22 0f       	add	r18, r18
     5e0:	33 1f       	adc	r19, r19
     5e2:	44 1f       	adc	r20, r20
     5e4:	55 1f       	adc	r21, r21
     5e6:	22 0f       	add	r18, r18
     5e8:	33 1f       	adc	r19, r19
     5ea:	44 1f       	adc	r20, r20
     5ec:	55 1f       	adc	r21, r21
     5ee:	22 0f       	add	r18, r18
     5f0:	33 1f       	adc	r19, r19
     5f2:	44 1f       	adc	r20, r20
     5f4:	55 1f       	adc	r21, r21
     5f6:	22 0f       	add	r18, r18
     5f8:	33 1f       	adc	r19, r19
     5fa:	44 1f       	adc	r20, r20
     5fc:	55 1f       	adc	r21, r21
     5fe:	60 e0       	ldi	r22, 0x00	; 0
     600:	74 e2       	ldi	r23, 0x24	; 36
     602:	84 ef       	ldi	r24, 0xF4	; 244
     604:	90 e0       	ldi	r25, 0x00	; 0
     606:	0e 94 36 05 	call	0xa6c	; 0xa6c <__udivmodsi4>
     60a:	ba 01       	movw	r22, r20
     60c:	a9 01       	movw	r20, r18
     60e:	41 50       	subi	r20, 0x01	; 1
     610:	51 09       	sbc	r21, r1
     612:	61 09       	sbc	r22, r1
     614:	71 09       	sbc	r23, r1
     616:	bb 27       	eor	r27, r27
     618:	77 fd       	sbrc	r23, 7
     61a:	ba 95       	dec	r27
     61c:	a7 2f       	mov	r26, r23
     61e:	96 2f       	mov	r25, r22
     620:	85 2f       	mov	r24, r21
     622:	80 93 c5 00 	sts	0x00C5, r24	; 0x8000c5 <__TEXT_REGION_LENGTH__+0x7e00c5>
     626:	40 93 c4 00 	sts	0x00C4, r20	; 0x8000c4 <__TEXT_REGION_LENGTH__+0x7e00c4>
     62a:	e2 ec       	ldi	r30, 0xC2	; 194
     62c:	f0 e0       	ldi	r31, 0x00	; 0
     62e:	80 81       	ld	r24, Z
     630:	86 60       	ori	r24, 0x06	; 6
     632:	80 83       	st	Z, r24
     634:	e1 ec       	ldi	r30, 0xC1	; 193
     636:	f0 e0       	ldi	r31, 0x00	; 0
     638:	80 81       	ld	r24, Z
     63a:	88 69       	ori	r24, 0x98	; 152
     63c:	80 83       	st	Z, r24
     63e:	78 94       	sei
     640:	08 95       	ret

00000642 <_sendByte>:
     642:	90 91 c0 00 	lds	r25, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
     646:	95 ff       	sbrs	r25, 5
     648:	fc cf       	rjmp	.-8      	; 0x642 <_sendByte>
     64a:	80 93 c6 00 	sts	0x00C6, r24	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
     64e:	08 95       	ret

00000650 <_sendString>:
     650:	fc 01       	movw	r30, r24
     652:	24 91       	lpm	r18, Z
     654:	22 23       	and	r18, r18
     656:	59 f0       	breq	.+22     	; 0x66e <_sendString+0x1e>
     658:	31 96       	adiw	r30, 0x01	; 1
     65a:	90 91 c0 00 	lds	r25, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
     65e:	95 ff       	sbrs	r25, 5
     660:	fc cf       	rjmp	.-8      	; 0x65a <_sendString+0xa>
     662:	20 93 c6 00 	sts	0x00C6, r18	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
     666:	24 91       	lpm	r18, Z
     668:	31 96       	adiw	r30, 0x01	; 1
     66a:	21 11       	cpse	r18, r1
     66c:	f6 cf       	rjmp	.-20     	; 0x65a <_sendString+0xa>
     66e:	08 95       	ret

00000670 <_sendBuffer>:
     670:	fc 01       	movw	r30, r24
     672:	20 81       	ld	r18, Z
     674:	22 23       	and	r18, r18
     676:	51 f0       	breq	.+20     	; 0x68c <_sendBuffer+0x1c>
     678:	31 96       	adiw	r30, 0x01	; 1
     67a:	90 91 c0 00 	lds	r25, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
     67e:	95 ff       	sbrs	r25, 5
     680:	fc cf       	rjmp	.-8      	; 0x67a <_sendBuffer+0xa>
     682:	20 93 c6 00 	sts	0x00C6, r18	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
     686:	21 91       	ld	r18, Z+
     688:	21 11       	cpse	r18, r1
     68a:	f7 cf       	rjmp	.-18     	; 0x67a <_sendBuffer+0xa>
     68c:	08 95       	ret

0000068e <_available>:
     68e:	90 91 b6 01 	lds	r25, 0x01B6	; 0x8001b6 <ringBufferStart>
     692:	80 91 b5 01 	lds	r24, 0x01B5	; 0x8001b5 <ringBufferEnd>
     696:	98 17       	cp	r25, r24
     698:	11 f0       	breq	.+4      	; 0x69e <_available+0x10>
     69a:	81 e0       	ldi	r24, 0x01	; 1
     69c:	08 95       	ret
     69e:	80 91 b4 01 	lds	r24, 0x01B4	; 0x8001b4 <bufferFull>
     6a2:	08 95       	ret

000006a4 <_receiveByte>:
     6a4:	20 91 b4 01 	lds	r18, 0x01B4	; 0x8001b4 <bufferFull>
     6a8:	90 91 b6 01 	lds	r25, 0x01B6	; 0x8001b6 <ringBufferStart>
     6ac:	80 91 b5 01 	lds	r24, 0x01B5	; 0x8001b5 <ringBufferEnd>
     6b0:	98 17       	cp	r25, r24
     6b2:	91 f0       	breq	.+36     	; 0x6d8 <_receiveByte+0x34>
     6b4:	9f b7       	in	r25, 0x3f	; 63
     6b6:	f8 94       	cli
     6b8:	e0 91 b6 01 	lds	r30, 0x01B6	; 0x8001b6 <ringBufferStart>
     6bc:	81 e0       	ldi	r24, 0x01	; 1
     6be:	8e 0f       	add	r24, r30
     6c0:	80 93 b6 01 	sts	0x01B6, r24	; 0x8001b6 <ringBufferStart>
     6c4:	0e 2e       	mov	r0, r30
     6c6:	00 0c       	add	r0, r0
     6c8:	ff 0b       	sbc	r31, r31
     6ca:	e9 54       	subi	r30, 0x49	; 73
     6cc:	fe 4f       	sbci	r31, 0xFE	; 254
     6ce:	80 81       	ld	r24, Z
     6d0:	10 92 b4 01 	sts	0x01B4, r1	; 0x8001b4 <bufferFull>
     6d4:	9f bf       	out	0x3f, r25	; 63
     6d6:	08 95       	ret
     6d8:	21 11       	cpse	r18, r1
     6da:	ec cf       	rjmp	.-40     	; 0x6b4 <_receiveByte+0x10>
     6dc:	ff cf       	rjmp	.-2      	; 0x6dc <_receiveByte+0x38>

000006de <_analogWrite>:
     6de:	cf 93       	push	r28
     6e0:	df 93       	push	r29
     6e2:	c8 2f       	mov	r28, r24
     6e4:	d6 2f       	mov	r29, r22
     6e6:	60 91 12 01 	lds	r22, 0x0112	; 0x800112 <_OUTPUT>
     6ea:	0e 94 1a 02 	call	0x434	; 0x434 <_pinMode>
     6ee:	c6 30       	cpi	r28, 0x06	; 6
     6f0:	09 f4       	brne	.+2      	; 0x6f4 <_analogWrite+0x16>
     6f2:	5b c0       	rjmp	.+182    	; 0x7aa <_analogWrite+0xcc>
     6f4:	50 f0       	brcs	.+20     	; 0x70a <_analogWrite+0x2c>
     6f6:	ca 30       	cpi	r28, 0x0A	; 10
     6f8:	b9 f0       	breq	.+46     	; 0x728 <_analogWrite+0x4a>
     6fa:	cb 30       	cpi	r28, 0x0B	; 11
     6fc:	09 f4       	brne	.+2      	; 0x700 <_analogWrite+0x22>
     6fe:	46 c0       	rjmp	.+140    	; 0x78c <_analogWrite+0xae>
     700:	c9 30       	cpi	r28, 0x09	; 9
     702:	21 f1       	breq	.+72     	; 0x74c <_analogWrite+0x6e>
     704:	df 91       	pop	r29
     706:	cf 91       	pop	r28
     708:	08 95       	ret
     70a:	c3 30       	cpi	r28, 0x03	; 3
     70c:	89 f1       	breq	.+98     	; 0x770 <_analogWrite+0x92>
     70e:	c5 30       	cpi	r28, 0x05	; 5
     710:	c9 f7       	brne	.-14     	; 0x704 <_analogWrite+0x26>
     712:	84 b5       	in	r24, 0x24	; 36
     714:	dd 23       	and	r29, r29
     716:	09 f4       	brne	.+2      	; 0x71a <_analogWrite+0x3c>
     718:	52 c0       	rjmp	.+164    	; 0x7be <_analogWrite+0xe0>
     71a:	df 3f       	cpi	r29, 0xFF	; 255
     71c:	09 f4       	brne	.+2      	; 0x720 <_analogWrite+0x42>
     71e:	9e c0       	rjmp	.+316    	; 0x85c <_analogWrite+0x17e>
     720:	80 62       	ori	r24, 0x20	; 32
     722:	84 bd       	out	0x24, r24	; 36
     724:	d8 bd       	out	0x28, r29	; 40
     726:	ee cf       	rjmp	.-36     	; 0x704 <_analogWrite+0x26>
     728:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     72c:	dd 23       	and	r29, r29
     72e:	09 f4       	brne	.+2      	; 0x732 <_analogWrite+0x54>
     730:	7b c0       	rjmp	.+246    	; 0x828 <_analogWrite+0x14a>
     732:	df 3f       	cpi	r29, 0xFF	; 255
     734:	09 f4       	brne	.+2      	; 0x738 <_analogWrite+0x5a>
     736:	85 c0       	rjmp	.+266    	; 0x842 <_analogWrite+0x164>
     738:	80 62       	ori	r24, 0x20	; 32
     73a:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     73e:	6d 2f       	mov	r22, r29
     740:	70 e0       	ldi	r23, 0x00	; 0
     742:	70 93 8b 00 	sts	0x008B, r23	; 0x80008b <__TEXT_REGION_LENGTH__+0x7e008b>
     746:	60 93 8a 00 	sts	0x008A, r22	; 0x80008a <__TEXT_REGION_LENGTH__+0x7e008a>
     74a:	dc cf       	rjmp	.-72     	; 0x704 <_analogWrite+0x26>
     74c:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     750:	dd 23       	and	r29, r29
     752:	09 f4       	brne	.+2      	; 0x756 <_analogWrite+0x78>
     754:	5c c0       	rjmp	.+184    	; 0x80e <_analogWrite+0x130>
     756:	df 3f       	cpi	r29, 0xFF	; 255
     758:	09 f4       	brne	.+2      	; 0x75c <_analogWrite+0x7e>
     75a:	94 c0       	rjmp	.+296    	; 0x884 <_analogWrite+0x1a6>
     75c:	80 68       	ori	r24, 0x80	; 128
     75e:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     762:	6d 2f       	mov	r22, r29
     764:	70 e0       	ldi	r23, 0x00	; 0
     766:	70 93 89 00 	sts	0x0089, r23	; 0x800089 <__TEXT_REGION_LENGTH__+0x7e0089>
     76a:	60 93 88 00 	sts	0x0088, r22	; 0x800088 <__TEXT_REGION_LENGTH__+0x7e0088>
     76e:	ca cf       	rjmp	.-108    	; 0x704 <_analogWrite+0x26>
     770:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     774:	dd 23       	and	r29, r29
     776:	09 f4       	brne	.+2      	; 0x77a <_analogWrite+0x9c>
     778:	3f c0       	rjmp	.+126    	; 0x7f8 <_analogWrite+0x11a>
     77a:	df 3f       	cpi	r29, 0xFF	; 255
     77c:	09 f4       	brne	.+2      	; 0x780 <_analogWrite+0xa2>
     77e:	77 c0       	rjmp	.+238    	; 0x86e <_analogWrite+0x190>
     780:	80 62       	ori	r24, 0x20	; 32
     782:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     786:	d0 93 b4 00 	sts	0x00B4, r29	; 0x8000b4 <__TEXT_REGION_LENGTH__+0x7e00b4>
     78a:	bc cf       	rjmp	.-136    	; 0x704 <_analogWrite+0x26>
     78c:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     790:	dd 23       	and	r29, r29
     792:	39 f1       	breq	.+78     	; 0x7e2 <_analogWrite+0x104>
     794:	df 3f       	cpi	r29, 0xFF	; 255
     796:	09 f4       	brne	.+2      	; 0x79a <_analogWrite+0xbc>
     798:	8b c0       	rjmp	.+278    	; 0x8b0 <_analogWrite+0x1d2>
     79a:	80 68       	ori	r24, 0x80	; 128
     79c:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     7a0:	d0 93 b3 00 	sts	0x00B3, r29	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
     7a4:	df 91       	pop	r29
     7a6:	cf 91       	pop	r28
     7a8:	08 95       	ret
     7aa:	84 b5       	in	r24, 0x24	; 36
     7ac:	dd 23       	and	r29, r29
     7ae:	81 f0       	breq	.+32     	; 0x7d0 <_analogWrite+0xf2>
     7b0:	df 3f       	cpi	r29, 0xFF	; 255
     7b2:	09 f4       	brne	.+2      	; 0x7b6 <_analogWrite+0xd8>
     7b4:	74 c0       	rjmp	.+232    	; 0x89e <_analogWrite+0x1c0>
     7b6:	80 68       	ori	r24, 0x80	; 128
     7b8:	84 bd       	out	0x24, r24	; 36
     7ba:	d7 bd       	out	0x27, r29	; 39
     7bc:	a3 cf       	rjmp	.-186    	; 0x704 <_analogWrite+0x26>
     7be:	8f 7d       	andi	r24, 0xDF	; 223
     7c0:	84 bd       	out	0x24, r24	; 36
     7c2:	60 91 13 01 	lds	r22, 0x0113	; 0x800113 <_LOW>
     7c6:	85 e0       	ldi	r24, 0x05	; 5
     7c8:	0e 94 ea 01 	call	0x3d4	; 0x3d4 <_digitalWrite>
     7cc:	18 bc       	out	0x28, r1	; 40
     7ce:	9a cf       	rjmp	.-204    	; 0x704 <_analogWrite+0x26>
     7d0:	8f 77       	andi	r24, 0x7F	; 127
     7d2:	84 bd       	out	0x24, r24	; 36
     7d4:	60 91 13 01 	lds	r22, 0x0113	; 0x800113 <_LOW>
     7d8:	86 e0       	ldi	r24, 0x06	; 6
     7da:	0e 94 ea 01 	call	0x3d4	; 0x3d4 <_digitalWrite>
     7de:	17 bc       	out	0x27, r1	; 39
     7e0:	91 cf       	rjmp	.-222    	; 0x704 <_analogWrite+0x26>
     7e2:	8f 77       	andi	r24, 0x7F	; 127
     7e4:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     7e8:	60 91 13 01 	lds	r22, 0x0113	; 0x800113 <_LOW>
     7ec:	8b e0       	ldi	r24, 0x0B	; 11
     7ee:	0e 94 ea 01 	call	0x3d4	; 0x3d4 <_digitalWrite>
     7f2:	10 92 b3 00 	sts	0x00B3, r1	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
     7f6:	86 cf       	rjmp	.-244    	; 0x704 <_analogWrite+0x26>
     7f8:	8f 7d       	andi	r24, 0xDF	; 223
     7fa:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     7fe:	60 91 13 01 	lds	r22, 0x0113	; 0x800113 <_LOW>
     802:	83 e0       	ldi	r24, 0x03	; 3
     804:	0e 94 ea 01 	call	0x3d4	; 0x3d4 <_digitalWrite>
     808:	10 92 b4 00 	sts	0x00B4, r1	; 0x8000b4 <__TEXT_REGION_LENGTH__+0x7e00b4>
     80c:	7b cf       	rjmp	.-266    	; 0x704 <_analogWrite+0x26>
     80e:	8f 77       	andi	r24, 0x7F	; 127
     810:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     814:	60 91 13 01 	lds	r22, 0x0113	; 0x800113 <_LOW>
     818:	89 e0       	ldi	r24, 0x09	; 9
     81a:	0e 94 ea 01 	call	0x3d4	; 0x3d4 <_digitalWrite>
     81e:	10 92 89 00 	sts	0x0089, r1	; 0x800089 <__TEXT_REGION_LENGTH__+0x7e0089>
     822:	10 92 88 00 	sts	0x0088, r1	; 0x800088 <__TEXT_REGION_LENGTH__+0x7e0088>
     826:	6e cf       	rjmp	.-292    	; 0x704 <_analogWrite+0x26>
     828:	8f 7d       	andi	r24, 0xDF	; 223
     82a:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     82e:	60 91 13 01 	lds	r22, 0x0113	; 0x800113 <_LOW>
     832:	8a e0       	ldi	r24, 0x0A	; 10
     834:	0e 94 ea 01 	call	0x3d4	; 0x3d4 <_digitalWrite>
     838:	10 92 8b 00 	sts	0x008B, r1	; 0x80008b <__TEXT_REGION_LENGTH__+0x7e008b>
     83c:	10 92 8a 00 	sts	0x008A, r1	; 0x80008a <__TEXT_REGION_LENGTH__+0x7e008a>
     840:	61 cf       	rjmp	.-318    	; 0x704 <_analogWrite+0x26>
     842:	8f 7d       	andi	r24, 0xDF	; 223
     844:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     848:	60 91 14 01 	lds	r22, 0x0114	; 0x800114 <_HIGH>
     84c:	8a e0       	ldi	r24, 0x0A	; 10
     84e:	0e 94 ea 01 	call	0x3d4	; 0x3d4 <_digitalWrite>
     852:	10 92 8b 00 	sts	0x008B, r1	; 0x80008b <__TEXT_REGION_LENGTH__+0x7e008b>
     856:	10 92 8a 00 	sts	0x008A, r1	; 0x80008a <__TEXT_REGION_LENGTH__+0x7e008a>
     85a:	54 cf       	rjmp	.-344    	; 0x704 <_analogWrite+0x26>
     85c:	8f 7d       	andi	r24, 0xDF	; 223
     85e:	84 bd       	out	0x24, r24	; 36
     860:	60 91 14 01 	lds	r22, 0x0114	; 0x800114 <_HIGH>
     864:	85 e0       	ldi	r24, 0x05	; 5
     866:	0e 94 ea 01 	call	0x3d4	; 0x3d4 <_digitalWrite>
     86a:	18 bc       	out	0x28, r1	; 40
     86c:	4b cf       	rjmp	.-362    	; 0x704 <_analogWrite+0x26>
     86e:	8f 7d       	andi	r24, 0xDF	; 223
     870:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     874:	60 91 14 01 	lds	r22, 0x0114	; 0x800114 <_HIGH>
     878:	83 e0       	ldi	r24, 0x03	; 3
     87a:	0e 94 ea 01 	call	0x3d4	; 0x3d4 <_digitalWrite>
     87e:	10 92 b4 00 	sts	0x00B4, r1	; 0x8000b4 <__TEXT_REGION_LENGTH__+0x7e00b4>
     882:	40 cf       	rjmp	.-384    	; 0x704 <_analogWrite+0x26>
     884:	8f 77       	andi	r24, 0x7F	; 127
     886:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     88a:	60 91 14 01 	lds	r22, 0x0114	; 0x800114 <_HIGH>
     88e:	89 e0       	ldi	r24, 0x09	; 9
     890:	0e 94 ea 01 	call	0x3d4	; 0x3d4 <_digitalWrite>
     894:	10 92 89 00 	sts	0x0089, r1	; 0x800089 <__TEXT_REGION_LENGTH__+0x7e0089>
     898:	10 92 88 00 	sts	0x0088, r1	; 0x800088 <__TEXT_REGION_LENGTH__+0x7e0088>
     89c:	33 cf       	rjmp	.-410    	; 0x704 <_analogWrite+0x26>
     89e:	8f 77       	andi	r24, 0x7F	; 127
     8a0:	84 bd       	out	0x24, r24	; 36
     8a2:	60 91 14 01 	lds	r22, 0x0114	; 0x800114 <_HIGH>
     8a6:	86 e0       	ldi	r24, 0x06	; 6
     8a8:	0e 94 ea 01 	call	0x3d4	; 0x3d4 <_digitalWrite>
     8ac:	17 bc       	out	0x27, r1	; 39
     8ae:	2a cf       	rjmp	.-428    	; 0x704 <_analogWrite+0x26>
     8b0:	8f 77       	andi	r24, 0x7F	; 127
     8b2:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     8b6:	60 91 14 01 	lds	r22, 0x0114	; 0x800114 <_HIGH>
     8ba:	8b e0       	ldi	r24, 0x0B	; 11
     8bc:	0e 94 ea 01 	call	0x3d4	; 0x3d4 <_digitalWrite>
     8c0:	10 92 b3 00 	sts	0x00B3, r1	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
     8c4:	1f cf       	rjmp	.-450    	; 0x704 <_analogWrite+0x26>

000008c6 <_startupADC>:
     8c6:	87 e8       	ldi	r24, 0x87	; 135
     8c8:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     8cc:	8a e0       	ldi	r24, 0x0A	; 10
     8ce:	90 e0       	ldi	r25, 0x00	; 0
     8d0:	0e 94 42 02 	call	0x484	; 0x484 <_delayMs>
     8d4:	61 e0       	ldi	r22, 0x01	; 1
     8d6:	8d e0       	ldi	r24, 0x0D	; 13
     8d8:	0e 94 1a 02 	call	0x434	; 0x434 <_pinMode>
     8dc:	60 e0       	ldi	r22, 0x00	; 0
     8de:	8d e0       	ldi	r24, 0x0D	; 13
     8e0:	0c 94 ea 01 	jmp	0x3d4	; 0x3d4 <_digitalWrite>

000008e4 <_slowAnalogRead>:
     8e4:	cf 93       	push	r28
     8e6:	c8 2f       	mov	r28, r24
     8e8:	88 30       	cpi	r24, 0x08	; 8
     8ea:	38 f5       	brcc	.+78     	; 0x93a <__stack+0x3b>
     8ec:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     8f0:	87 fd       	sbrc	r24, 7
     8f2:	0f c0       	rjmp	.+30     	; 0x912 <__stack+0x13>
     8f4:	87 e8       	ldi	r24, 0x87	; 135
     8f6:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     8fa:	8a e0       	ldi	r24, 0x0A	; 10
     8fc:	90 e0       	ldi	r25, 0x00	; 0
     8fe:	0e 94 42 02 	call	0x484	; 0x484 <_delayMs>
     902:	61 e0       	ldi	r22, 0x01	; 1
     904:	8d e0       	ldi	r24, 0x0D	; 13
     906:	0e 94 1a 02 	call	0x434	; 0x434 <_pinMode>
     90a:	60 e0       	ldi	r22, 0x00	; 0
     90c:	8d e0       	ldi	r24, 0x0D	; 13
     90e:	0e 94 ea 01 	call	0x3d4	; 0x3d4 <_digitalWrite>
     912:	c0 64       	ori	r28, 0x40	; 64
     914:	c0 93 7c 00 	sts	0x007C, r28	; 0x80007c <__TEXT_REGION_LENGTH__+0x7e007c>
     918:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     91c:	80 64       	ori	r24, 0x40	; 64
     91e:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     922:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     926:	86 fd       	sbrc	r24, 6
     928:	fc cf       	rjmp	.-8      	; 0x922 <__stack+0x23>
     92a:	80 91 78 00 	lds	r24, 0x0078	; 0x800078 <__TEXT_REGION_LENGTH__+0x7e0078>
     92e:	20 91 79 00 	lds	r18, 0x0079	; 0x800079 <__TEXT_REGION_LENGTH__+0x7e0079>
     932:	90 e0       	ldi	r25, 0x00	; 0
     934:	92 2b       	or	r25, r18
     936:	cf 91       	pop	r28
     938:	08 95       	ret
     93a:	80 e0       	ldi	r24, 0x00	; 0
     93c:	90 e0       	ldi	r25, 0x00	; 0
     93e:	cf 91       	pop	r28
     940:	08 95       	ret

00000942 <__vector_21>:
     942:	1f 92       	push	r1
     944:	0f 92       	push	r0
     946:	0f b6       	in	r0, 0x3f	; 63
     948:	0f 92       	push	r0
     94a:	11 24       	eor	r1, r1
     94c:	2f 93       	push	r18
     94e:	3f 93       	push	r19
     950:	4f 93       	push	r20
     952:	5f 93       	push	r21
     954:	6f 93       	push	r22
     956:	7f 93       	push	r23
     958:	8f 93       	push	r24
     95a:	9f 93       	push	r25
     95c:	af 93       	push	r26
     95e:	bf 93       	push	r27
     960:	ef 93       	push	r30
     962:	ff 93       	push	r31
     964:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     968:	87 7f       	andi	r24, 0xF7	; 247
     96a:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     96e:	e0 91 3a 02 	lds	r30, 0x023A	; 0x80023a <currentCallback>
     972:	f0 91 3b 02 	lds	r31, 0x023B	; 0x80023b <currentCallback+0x1>
     976:	30 97       	sbiw	r30, 0x00	; 0
     978:	59 f0       	breq	.+22     	; 0x990 <__vector_21+0x4e>
     97a:	80 91 78 00 	lds	r24, 0x0078	; 0x800078 <__TEXT_REGION_LENGTH__+0x7e0078>
     97e:	20 91 79 00 	lds	r18, 0x0079	; 0x800079 <__TEXT_REGION_LENGTH__+0x7e0079>
     982:	90 e0       	ldi	r25, 0x00	; 0
     984:	92 2b       	or	r25, r18
     986:	09 95       	icall
     988:	10 92 3b 02 	sts	0x023B, r1	; 0x80023b <currentCallback+0x1>
     98c:	10 92 3a 02 	sts	0x023A, r1	; 0x80023a <currentCallback>
     990:	ff 91       	pop	r31
     992:	ef 91       	pop	r30
     994:	bf 91       	pop	r27
     996:	af 91       	pop	r26
     998:	9f 91       	pop	r25
     99a:	8f 91       	pop	r24
     99c:	7f 91       	pop	r23
     99e:	6f 91       	pop	r22
     9a0:	5f 91       	pop	r21
     9a2:	4f 91       	pop	r20
     9a4:	3f 91       	pop	r19
     9a6:	2f 91       	pop	r18
     9a8:	0f 90       	pop	r0
     9aa:	0f be       	out	0x3f, r0	; 63
     9ac:	0f 90       	pop	r0
     9ae:	1f 90       	pop	r1
     9b0:	18 95       	reti

000009b2 <_analogReadAsync>:
     9b2:	0f 93       	push	r16
     9b4:	1f 93       	push	r17
     9b6:	cf 93       	push	r28
     9b8:	df 93       	push	r29
     9ba:	c8 2f       	mov	r28, r24
     9bc:	16 2f       	mov	r17, r22
     9be:	d7 2f       	mov	r29, r23
     9c0:	04 2f       	mov	r16, r20
     9c2:	88 30       	cpi	r24, 0x08	; 8
     9c4:	e8 f4       	brcc	.+58     	; 0xa00 <_analogReadAsync+0x4e>
     9c6:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     9ca:	87 fd       	sbrc	r24, 7
     9cc:	0f c0       	rjmp	.+30     	; 0x9ec <_analogReadAsync+0x3a>
     9ce:	87 e8       	ldi	r24, 0x87	; 135
     9d0:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     9d4:	8a e0       	ldi	r24, 0x0A	; 10
     9d6:	90 e0       	ldi	r25, 0x00	; 0
     9d8:	0e 94 42 02 	call	0x484	; 0x484 <_delayMs>
     9dc:	61 e0       	ldi	r22, 0x01	; 1
     9de:	8d e0       	ldi	r24, 0x0D	; 13
     9e0:	0e 94 1a 02 	call	0x434	; 0x434 <_pinMode>
     9e4:	60 e0       	ldi	r22, 0x00	; 0
     9e6:	8d e0       	ldi	r24, 0x0D	; 13
     9e8:	0e 94 ea 01 	call	0x3d4	; 0x3d4 <_digitalWrite>
     9ec:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     9f0:	86 fd       	sbrc	r24, 6
     9f2:	06 c0       	rjmp	.+12     	; 0xa00 <_analogReadAsync+0x4e>
     9f4:	80 91 3a 02 	lds	r24, 0x023A	; 0x80023a <currentCallback>
     9f8:	90 91 3b 02 	lds	r25, 0x023B	; 0x80023b <currentCallback+0x1>
     9fc:	89 2b       	or	r24, r25
     9fe:	31 f0       	breq	.+12     	; 0xa0c <_analogReadAsync+0x5a>
     a00:	80 e0       	ldi	r24, 0x00	; 0
     a02:	df 91       	pop	r29
     a04:	cf 91       	pop	r28
     a06:	1f 91       	pop	r17
     a08:	0f 91       	pop	r16
     a0a:	08 95       	ret
     a0c:	00 23       	and	r16, r16
     a0e:	59 f0       	breq	.+22     	; 0xa26 <_analogReadAsync+0x74>
     a10:	81 2f       	mov	r24, r17
     a12:	9d 2f       	mov	r25, r29
     a14:	97 fd       	sbrc	r25, 7
     a16:	15 c0       	rjmp	.+42     	; 0xa42 <_analogReadAsync+0x90>
     a18:	95 95       	asr	r25
     a1a:	87 95       	ror	r24
     a1c:	90 93 3b 02 	sts	0x023B, r25	; 0x80023b <currentCallback+0x1>
     a20:	80 93 3a 02 	sts	0x023A, r24	; 0x80023a <currentCallback>
     a24:	04 c0       	rjmp	.+8      	; 0xa2e <_analogReadAsync+0x7c>
     a26:	10 93 3a 02 	sts	0x023A, r17	; 0x80023a <currentCallback>
     a2a:	d0 93 3b 02 	sts	0x023B, r29	; 0x80023b <currentCallback+0x1>
     a2e:	c0 64       	ori	r28, 0x40	; 64
     a30:	c0 93 7c 00 	sts	0x007C, r28	; 0x80007c <__TEXT_REGION_LENGTH__+0x7e007c>
     a34:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     a38:	88 64       	ori	r24, 0x48	; 72
     a3a:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     a3e:	81 e0       	ldi	r24, 0x01	; 1
     a40:	e0 cf       	rjmp	.-64     	; 0xa02 <_analogReadAsync+0x50>
     a42:	01 96       	adiw	r24, 0x01	; 1
     a44:	e9 cf       	rjmp	.-46     	; 0xa18 <_analogReadAsync+0x66>

00000a46 <startTimers>:
     a46:	83 e0       	ldi	r24, 0x03	; 3
     a48:	84 bd       	out	0x24, r24	; 36
     a4a:	85 bd       	out	0x25, r24	; 37
     a4c:	91 e0       	ldi	r25, 0x01	; 1
     a4e:	90 93 80 00 	sts	0x0080, r25	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     a52:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
     a56:	90 93 b0 00 	sts	0x00B0, r25	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     a5a:	84 e0       	ldi	r24, 0x04	; 4
     a5c:	80 93 b1 00 	sts	0x00B1, r24	; 0x8000b1 <__TEXT_REGION_LENGTH__+0x7e00b1>
     a60:	ee e6       	ldi	r30, 0x6E	; 110
     a62:	f0 e0       	ldi	r31, 0x00	; 0
     a64:	80 81       	ld	r24, Z
     a66:	81 60       	ori	r24, 0x01	; 1
     a68:	80 83       	st	Z, r24
     a6a:	08 95       	ret

00000a6c <__udivmodsi4>:
     a6c:	a1 e2       	ldi	r26, 0x21	; 33
     a6e:	1a 2e       	mov	r1, r26
     a70:	aa 1b       	sub	r26, r26
     a72:	bb 1b       	sub	r27, r27
     a74:	ea 2f       	mov	r30, r26
     a76:	fb 2f       	mov	r31, r27
     a78:	0d c0       	rjmp	.+26     	; 0xa94 <__udivmodsi4_ep>

00000a7a <__udivmodsi4_loop>:
     a7a:	aa 1f       	adc	r26, r26
     a7c:	bb 1f       	adc	r27, r27
     a7e:	ee 1f       	adc	r30, r30
     a80:	ff 1f       	adc	r31, r31
     a82:	a2 17       	cp	r26, r18
     a84:	b3 07       	cpc	r27, r19
     a86:	e4 07       	cpc	r30, r20
     a88:	f5 07       	cpc	r31, r21
     a8a:	20 f0       	brcs	.+8      	; 0xa94 <__udivmodsi4_ep>
     a8c:	a2 1b       	sub	r26, r18
     a8e:	b3 0b       	sbc	r27, r19
     a90:	e4 0b       	sbc	r30, r20
     a92:	f5 0b       	sbc	r31, r21

00000a94 <__udivmodsi4_ep>:
     a94:	66 1f       	adc	r22, r22
     a96:	77 1f       	adc	r23, r23
     a98:	88 1f       	adc	r24, r24
     a9a:	99 1f       	adc	r25, r25
     a9c:	1a 94       	dec	r1
     a9e:	69 f7       	brne	.-38     	; 0xa7a <__udivmodsi4_loop>
     aa0:	60 95       	com	r22
     aa2:	70 95       	com	r23
     aa4:	80 95       	com	r24
     aa6:	90 95       	com	r25
     aa8:	26 2f       	mov	r18, r22
     aaa:	37 2f       	mov	r19, r23
     aac:	48 2f       	mov	r20, r24
     aae:	59 2f       	mov	r21, r25
     ab0:	6a 2f       	mov	r22, r26
     ab2:	7b 2f       	mov	r23, r27
     ab4:	8e 2f       	mov	r24, r30
     ab6:	9f 2f       	mov	r25, r31
     ab8:	08 95       	ret

00000aba <__tablejump2__>:
     aba:	ee 0f       	add	r30, r30
     abc:	ff 1f       	adc	r31, r31
     abe:	c8 95       	lpm
     ac0:	0f 92       	push	r0
     ac2:	31 96       	adiw	r30, 0x01	; 1
     ac4:	c8 95       	lpm
     ac6:	0f 92       	push	r0
     ac8:	08 95       	ret

00000aca <snprintf>:
     aca:	ae e0       	ldi	r26, 0x0E	; 14
     acc:	b0 e0       	ldi	r27, 0x00	; 0
     ace:	ea e6       	ldi	r30, 0x6A	; 106
     ad0:	f5 e0       	ldi	r31, 0x05	; 5
     ad2:	06 c3       	rjmp	.+1548   	; 0x10e0 <__prologue_saves__+0x1c>
     ad4:	0d 89       	ldd	r16, Y+21	; 0x15
     ad6:	1e 89       	ldd	r17, Y+22	; 0x16
     ad8:	8f 89       	ldd	r24, Y+23	; 0x17
     ada:	98 8d       	ldd	r25, Y+24	; 0x18
     adc:	26 e0       	ldi	r18, 0x06	; 6
     ade:	2c 83       	std	Y+4, r18	; 0x04
     ae0:	1a 83       	std	Y+2, r17	; 0x02
     ae2:	09 83       	std	Y+1, r16	; 0x01
     ae4:	97 ff       	sbrs	r25, 7
     ae6:	02 c0       	rjmp	.+4      	; 0xaec <snprintf+0x22>
     ae8:	80 e0       	ldi	r24, 0x00	; 0
     aea:	90 e8       	ldi	r25, 0x80	; 128
     aec:	01 97       	sbiw	r24, 0x01	; 1
     aee:	9e 83       	std	Y+6, r25	; 0x06
     af0:	8d 83       	std	Y+5, r24	; 0x05
     af2:	4c 2f       	mov	r20, r28
     af4:	5d 2f       	mov	r21, r29
     af6:	45 5e       	subi	r20, 0xE5	; 229
     af8:	5f 4f       	sbci	r21, 0xFF	; 255
     afa:	69 8d       	ldd	r22, Y+25	; 0x19
     afc:	7a 8d       	ldd	r23, Y+26	; 0x1a
     afe:	8c 2f       	mov	r24, r28
     b00:	9d 2f       	mov	r25, r29
     b02:	01 96       	adiw	r24, 0x01	; 1
     b04:	13 d0       	rcall	.+38     	; 0xb2c <vfprintf>
     b06:	4d 81       	ldd	r20, Y+5	; 0x05
     b08:	5e 81       	ldd	r21, Y+6	; 0x06
     b0a:	57 fd       	sbrc	r21, 7
     b0c:	0c c0       	rjmp	.+24     	; 0xb26 <snprintf+0x5c>
     b0e:	2f 81       	ldd	r18, Y+7	; 0x07
     b10:	38 85       	ldd	r19, Y+8	; 0x08
     b12:	42 17       	cp	r20, r18
     b14:	53 07       	cpc	r21, r19
     b16:	14 f4       	brge	.+4      	; 0xb1c <snprintf+0x52>
     b18:	24 2f       	mov	r18, r20
     b1a:	35 2f       	mov	r19, r21
     b1c:	02 0f       	add	r16, r18
     b1e:	13 1f       	adc	r17, r19
     b20:	e0 2f       	mov	r30, r16
     b22:	f1 2f       	mov	r31, r17
     b24:	10 82       	st	Z, r1
     b26:	2e 96       	adiw	r28, 0x0e	; 14
     b28:	e4 e0       	ldi	r30, 0x04	; 4
     b2a:	f6 c2       	rjmp	.+1516   	; 0x1118 <__epilogue_restores__+0x1c>

00000b2c <vfprintf>:
     b2c:	ab e0       	ldi	r26, 0x0B	; 11
     b2e:	b0 e0       	ldi	r27, 0x00	; 0
     b30:	eb e9       	ldi	r30, 0x9B	; 155
     b32:	f5 e0       	ldi	r31, 0x05	; 5
     b34:	c7 c2       	rjmp	.+1422   	; 0x10c4 <__prologue_saves__>
     b36:	e8 2e       	mov	r14, r24
     b38:	f9 2e       	mov	r15, r25
     b3a:	66 2e       	mov	r6, r22
     b3c:	77 2e       	mov	r7, r23
     b3e:	04 2f       	mov	r16, r20
     b40:	15 2f       	mov	r17, r21
     b42:	e8 2f       	mov	r30, r24
     b44:	f9 2f       	mov	r31, r25
     b46:	17 82       	std	Z+7, r1	; 0x07
     b48:	16 82       	std	Z+6, r1	; 0x06
     b4a:	83 81       	ldd	r24, Z+3	; 0x03
     b4c:	81 ff       	sbrs	r24, 1
     b4e:	ff c1       	rjmp	.+1022   	; 0xf4e <vfprintf+0x422>
     b50:	8c 2f       	mov	r24, r28
     b52:	9d 2f       	mov	r25, r29
     b54:	01 96       	adiw	r24, 0x01	; 1
     b56:	a8 2e       	mov	r10, r24
     b58:	b9 2e       	mov	r11, r25
     b5a:	ee 2d       	mov	r30, r14
     b5c:	ff 2d       	mov	r31, r15
     b5e:	93 81       	ldd	r25, Z+3	; 0x03
     b60:	e6 2d       	mov	r30, r6
     b62:	f7 2d       	mov	r31, r7
     b64:	93 fd       	sbrc	r25, 3
     b66:	c8 95       	lpm
     b68:	93 ff       	sbrs	r25, 3
     b6a:	00 80       	ld	r0, Z
     b6c:	31 96       	adiw	r30, 0x01	; 1
     b6e:	80 2d       	mov	r24, r0
     b70:	6e 2e       	mov	r6, r30
     b72:	7f 2e       	mov	r7, r31
     b74:	88 23       	and	r24, r24
     b76:	09 f4       	brne	.+2      	; 0xb7a <vfprintf+0x4e>
     b78:	48 c1       	rjmp	.+656    	; 0xe0a <vfprintf+0x2de>
     b7a:	85 32       	cpi	r24, 0x25	; 37
     b7c:	51 f4       	brne	.+20     	; 0xb92 <vfprintf+0x66>
     b7e:	93 fd       	sbrc	r25, 3
     b80:	c8 95       	lpm
     b82:	93 ff       	sbrs	r25, 3
     b84:	00 80       	ld	r0, Z
     b86:	31 96       	adiw	r30, 0x01	; 1
     b88:	80 2d       	mov	r24, r0
     b8a:	6e 2e       	mov	r6, r30
     b8c:	7f 2e       	mov	r7, r31
     b8e:	85 32       	cpi	r24, 0x25	; 37
     b90:	29 f4       	brne	.+10     	; 0xb9c <vfprintf+0x70>
     b92:	6e 2d       	mov	r22, r14
     b94:	7f 2d       	mov	r23, r15
     b96:	90 e0       	ldi	r25, 0x00	; 0
     b98:	f6 d1       	rcall	.+1004   	; 0xf86 <fputc>
     b9a:	df cf       	rjmp	.-66     	; 0xb5a <vfprintf+0x2e>
     b9c:	91 2c       	mov	r9, r1
     b9e:	21 2c       	mov	r2, r1
     ba0:	31 2c       	mov	r3, r1
     ba2:	ff e1       	ldi	r31, 0x1F	; 31
     ba4:	f3 15       	cp	r31, r3
     ba6:	38 f0       	brcs	.+14     	; 0xbb6 <vfprintf+0x8a>
     ba8:	8b 32       	cpi	r24, 0x2B	; 43
     baa:	39 f1       	breq	.+78     	; 0xbfa <vfprintf+0xce>
     bac:	90 f4       	brcc	.+36     	; 0xbd2 <vfprintf+0xa6>
     bae:	80 32       	cpi	r24, 0x20	; 32
     bb0:	39 f1       	breq	.+78     	; 0xc00 <vfprintf+0xd4>
     bb2:	83 32       	cpi	r24, 0x23	; 35
     bb4:	69 f1       	breq	.+90     	; 0xc10 <vfprintf+0xe4>
     bb6:	37 fc       	sbrc	r3, 7
     bb8:	45 c0       	rjmp	.+138    	; 0xc44 <vfprintf+0x118>
     bba:	20 ed       	ldi	r18, 0xD0	; 208
     bbc:	28 0f       	add	r18, r24
     bbe:	2a 30       	cpi	r18, 0x0A	; 10
     bc0:	98 f5       	brcc	.+102    	; 0xc28 <vfprintf+0xfc>
     bc2:	36 fe       	sbrs	r3, 6
     bc4:	28 c0       	rjmp	.+80     	; 0xc16 <vfprintf+0xea>
     bc6:	89 2d       	mov	r24, r9
     bc8:	6a e0       	ldi	r22, 0x0A	; 10
     bca:	73 d2       	rcall	.+1254   	; 0x10b2 <__mulqi3>
     bcc:	92 2e       	mov	r9, r18
     bce:	98 0e       	add	r9, r24
     bd0:	07 c0       	rjmp	.+14     	; 0xbe0 <vfprintf+0xb4>
     bd2:	8d 32       	cpi	r24, 0x2D	; 45
     bd4:	c9 f0       	breq	.+50     	; 0xc08 <vfprintf+0xdc>
     bd6:	80 33       	cpi	r24, 0x30	; 48
     bd8:	71 f7       	brne	.-36     	; 0xbb6 <vfprintf+0x8a>
     bda:	23 2d       	mov	r18, r3
     bdc:	21 60       	ori	r18, 0x01	; 1
     bde:	32 2e       	mov	r3, r18
     be0:	e6 2d       	mov	r30, r6
     be2:	f7 2d       	mov	r31, r7
     be4:	93 fd       	sbrc	r25, 3
     be6:	c8 95       	lpm
     be8:	93 ff       	sbrs	r25, 3
     bea:	00 80       	ld	r0, Z
     bec:	31 96       	adiw	r30, 0x01	; 1
     bee:	80 2d       	mov	r24, r0
     bf0:	6e 2e       	mov	r6, r30
     bf2:	7f 2e       	mov	r7, r31
     bf4:	81 11       	cpse	r24, r1
     bf6:	d5 cf       	rjmp	.-86     	; 0xba2 <vfprintf+0x76>
     bf8:	25 c0       	rjmp	.+74     	; 0xc44 <vfprintf+0x118>
     bfa:	83 2d       	mov	r24, r3
     bfc:	82 60       	ori	r24, 0x02	; 2
     bfe:	38 2e       	mov	r3, r24
     c00:	e3 2d       	mov	r30, r3
     c02:	e4 60       	ori	r30, 0x04	; 4
     c04:	3e 2e       	mov	r3, r30
     c06:	ec cf       	rjmp	.-40     	; 0xbe0 <vfprintf+0xb4>
     c08:	f3 2d       	mov	r31, r3
     c0a:	f8 60       	ori	r31, 0x08	; 8
     c0c:	3f 2e       	mov	r3, r31
     c0e:	e8 cf       	rjmp	.-48     	; 0xbe0 <vfprintf+0xb4>
     c10:	23 2d       	mov	r18, r3
     c12:	20 61       	ori	r18, 0x10	; 16
     c14:	e4 cf       	rjmp	.-56     	; 0xbde <vfprintf+0xb2>
     c16:	82 2d       	mov	r24, r2
     c18:	6a e0       	ldi	r22, 0x0A	; 10
     c1a:	4b d2       	rcall	.+1174   	; 0x10b2 <__mulqi3>
     c1c:	22 2e       	mov	r2, r18
     c1e:	28 0e       	add	r2, r24
     c20:	83 2d       	mov	r24, r3
     c22:	80 62       	ori	r24, 0x20	; 32
     c24:	38 2e       	mov	r3, r24
     c26:	dc cf       	rjmp	.-72     	; 0xbe0 <vfprintf+0xb4>
     c28:	8e 32       	cpi	r24, 0x2E	; 46
     c2a:	29 f4       	brne	.+10     	; 0xc36 <vfprintf+0x10a>
     c2c:	36 fc       	sbrc	r3, 6
     c2e:	ed c0       	rjmp	.+474    	; 0xe0a <vfprintf+0x2de>
     c30:	e3 2d       	mov	r30, r3
     c32:	e0 64       	ori	r30, 0x40	; 64
     c34:	e7 cf       	rjmp	.-50     	; 0xc04 <vfprintf+0xd8>
     c36:	8c 36       	cpi	r24, 0x6C	; 108
     c38:	19 f4       	brne	.+6      	; 0xc40 <vfprintf+0x114>
     c3a:	f3 2d       	mov	r31, r3
     c3c:	f0 68       	ori	r31, 0x80	; 128
     c3e:	e6 cf       	rjmp	.-52     	; 0xc0c <vfprintf+0xe0>
     c40:	88 36       	cpi	r24, 0x68	; 104
     c42:	71 f2       	breq	.-100    	; 0xbe0 <vfprintf+0xb4>
     c44:	98 2f       	mov	r25, r24
     c46:	9f 7d       	andi	r25, 0xDF	; 223
     c48:	95 54       	subi	r25, 0x45	; 69
     c4a:	93 30       	cpi	r25, 0x03	; 3
     c4c:	08 f1       	brcs	.+66     	; 0xc90 <vfprintf+0x164>
     c4e:	83 36       	cpi	r24, 0x63	; 99
     c50:	09 f4       	brne	.+2      	; 0xc54 <vfprintf+0x128>
     c52:	3f c0       	rjmp	.+126    	; 0xcd2 <vfprintf+0x1a6>
     c54:	83 37       	cpi	r24, 0x73	; 115
     c56:	09 f4       	brne	.+2      	; 0xc5a <vfprintf+0x12e>
     c58:	43 c0       	rjmp	.+134    	; 0xce0 <vfprintf+0x1b4>
     c5a:	83 35       	cpi	r24, 0x53	; 83
     c5c:	09 f0       	breq	.+2      	; 0xc60 <vfprintf+0x134>
     c5e:	76 c0       	rjmp	.+236    	; 0xd4c <vfprintf+0x220>
     c60:	40 2e       	mov	r4, r16
     c62:	51 2e       	mov	r5, r17
     c64:	22 e0       	ldi	r18, 0x02	; 2
     c66:	42 0e       	add	r4, r18
     c68:	51 1c       	adc	r5, r1
     c6a:	e0 2f       	mov	r30, r16
     c6c:	f1 2f       	mov	r31, r17
     c6e:	c0 80       	ld	r12, Z
     c70:	d1 80       	ldd	r13, Z+1	; 0x01
     c72:	36 fe       	sbrs	r3, 6
     c74:	4d c0       	rjmp	.+154    	; 0xd10 <vfprintf+0x1e4>
     c76:	69 2d       	mov	r22, r9
     c78:	70 e0       	ldi	r23, 0x00	; 0
     c7a:	8c 2d       	mov	r24, r12
     c7c:	9d 2d       	mov	r25, r13
     c7e:	6a d1       	rcall	.+724    	; 0xf54 <strnlen_P>
     c80:	88 2e       	mov	r8, r24
     c82:	99 2e       	mov	r9, r25
     c84:	f3 2d       	mov	r31, r3
     c86:	f0 68       	ori	r31, 0x80	; 128
     c88:	3f 2e       	mov	r3, r31
     c8a:	04 2d       	mov	r16, r4
     c8c:	15 2d       	mov	r17, r5
     c8e:	0c c0       	rjmp	.+24     	; 0xca8 <vfprintf+0x17c>
     c90:	0c 5f       	subi	r16, 0xFC	; 252
     c92:	1f 4f       	sbci	r17, 0xFF	; 255
     c94:	2f e3       	ldi	r18, 0x3F	; 63
     c96:	29 83       	std	Y+1, r18	; 0x01
     c98:	88 24       	eor	r8, r8
     c9a:	83 94       	inc	r8
     c9c:	91 2c       	mov	r9, r1
     c9e:	ca 2c       	mov	r12, r10
     ca0:	db 2c       	mov	r13, r11
     ca2:	f3 2d       	mov	r31, r3
     ca4:	ff 77       	andi	r31, 0x7F	; 127
     ca6:	3f 2e       	mov	r3, r31
     ca8:	33 fc       	sbrc	r3, 3
     caa:	05 c0       	rjmp	.+10     	; 0xcb6 <vfprintf+0x18a>
     cac:	82 2d       	mov	r24, r2
     cae:	90 e0       	ldi	r25, 0x00	; 0
     cb0:	88 16       	cp	r8, r24
     cb2:	99 06       	cpc	r9, r25
     cb4:	80 f1       	brcs	.+96     	; 0xd16 <vfprintf+0x1ea>
     cb6:	52 2c       	mov	r5, r2
     cb8:	81 14       	cp	r8, r1
     cba:	91 04       	cpc	r9, r1
     cbc:	99 f5       	brne	.+102    	; 0xd24 <vfprintf+0x1f8>
     cbe:	55 20       	and	r5, r5
     cc0:	09 f4       	brne	.+2      	; 0xcc4 <vfprintf+0x198>
     cc2:	4b cf       	rjmp	.-362    	; 0xb5a <vfprintf+0x2e>
     cc4:	6e 2d       	mov	r22, r14
     cc6:	7f 2d       	mov	r23, r15
     cc8:	80 e2       	ldi	r24, 0x20	; 32
     cca:	90 e0       	ldi	r25, 0x00	; 0
     ccc:	5c d1       	rcall	.+696    	; 0xf86 <fputc>
     cce:	5a 94       	dec	r5
     cd0:	f6 cf       	rjmp	.-20     	; 0xcbe <vfprintf+0x192>
     cd2:	e0 2f       	mov	r30, r16
     cd4:	f1 2f       	mov	r31, r17
     cd6:	80 81       	ld	r24, Z
     cd8:	89 83       	std	Y+1, r24	; 0x01
     cda:	0e 5f       	subi	r16, 0xFE	; 254
     cdc:	1f 4f       	sbci	r17, 0xFF	; 255
     cde:	dc cf       	rjmp	.-72     	; 0xc98 <vfprintf+0x16c>
     ce0:	40 2e       	mov	r4, r16
     ce2:	51 2e       	mov	r5, r17
     ce4:	f2 e0       	ldi	r31, 0x02	; 2
     ce6:	4f 0e       	add	r4, r31
     ce8:	51 1c       	adc	r5, r1
     cea:	e0 2f       	mov	r30, r16
     cec:	f1 2f       	mov	r31, r17
     cee:	c0 80       	ld	r12, Z
     cf0:	d1 80       	ldd	r13, Z+1	; 0x01
     cf2:	36 fe       	sbrs	r3, 6
     cf4:	0a c0       	rjmp	.+20     	; 0xd0a <vfprintf+0x1de>
     cf6:	69 2d       	mov	r22, r9
     cf8:	70 e0       	ldi	r23, 0x00	; 0
     cfa:	8c 2d       	mov	r24, r12
     cfc:	9d 2d       	mov	r25, r13
     cfe:	37 d1       	rcall	.+622    	; 0xf6e <strnlen>
     d00:	88 2e       	mov	r8, r24
     d02:	99 2e       	mov	r9, r25
     d04:	04 2d       	mov	r16, r4
     d06:	15 2d       	mov	r17, r5
     d08:	cc cf       	rjmp	.-104    	; 0xca2 <vfprintf+0x176>
     d0a:	6f ef       	ldi	r22, 0xFF	; 255
     d0c:	7f ef       	ldi	r23, 0xFF	; 255
     d0e:	f5 cf       	rjmp	.-22     	; 0xcfa <vfprintf+0x1ce>
     d10:	6f ef       	ldi	r22, 0xFF	; 255
     d12:	7f ef       	ldi	r23, 0xFF	; 255
     d14:	b2 cf       	rjmp	.-156    	; 0xc7a <vfprintf+0x14e>
     d16:	6e 2d       	mov	r22, r14
     d18:	7f 2d       	mov	r23, r15
     d1a:	80 e2       	ldi	r24, 0x20	; 32
     d1c:	90 e0       	ldi	r25, 0x00	; 0
     d1e:	33 d1       	rcall	.+614    	; 0xf86 <fputc>
     d20:	2a 94       	dec	r2
     d22:	c4 cf       	rjmp	.-120    	; 0xcac <vfprintf+0x180>
     d24:	ec 2d       	mov	r30, r12
     d26:	fd 2d       	mov	r31, r13
     d28:	37 fc       	sbrc	r3, 7
     d2a:	c8 95       	lpm
     d2c:	37 fe       	sbrs	r3, 7
     d2e:	00 80       	ld	r0, Z
     d30:	31 96       	adiw	r30, 0x01	; 1
     d32:	80 2d       	mov	r24, r0
     d34:	ce 2e       	mov	r12, r30
     d36:	df 2e       	mov	r13, r31
     d38:	6e 2d       	mov	r22, r14
     d3a:	7f 2d       	mov	r23, r15
     d3c:	90 e0       	ldi	r25, 0x00	; 0
     d3e:	23 d1       	rcall	.+582    	; 0xf86 <fputc>
     d40:	51 10       	cpse	r5, r1
     d42:	5a 94       	dec	r5
     d44:	21 e0       	ldi	r18, 0x01	; 1
     d46:	82 1a       	sub	r8, r18
     d48:	91 08       	sbc	r9, r1
     d4a:	b6 cf       	rjmp	.-148    	; 0xcb8 <vfprintf+0x18c>
     d4c:	84 36       	cpi	r24, 0x64	; 100
     d4e:	11 f0       	breq	.+4      	; 0xd54 <vfprintf+0x228>
     d50:	89 36       	cpi	r24, 0x69	; 105
     d52:	c9 f5       	brne	.+114    	; 0xdc6 <vfprintf+0x29a>
     d54:	e0 2f       	mov	r30, r16
     d56:	f1 2f       	mov	r31, r17
     d58:	37 fe       	sbrs	r3, 7
     d5a:	2c c0       	rjmp	.+88     	; 0xdb4 <vfprintf+0x288>
     d5c:	60 81       	ld	r22, Z
     d5e:	71 81       	ldd	r23, Z+1	; 0x01
     d60:	82 81       	ldd	r24, Z+2	; 0x02
     d62:	93 81       	ldd	r25, Z+3	; 0x03
     d64:	0c 5f       	subi	r16, 0xFC	; 252
     d66:	1f 4f       	sbci	r17, 0xFF	; 255
     d68:	f3 2d       	mov	r31, r3
     d6a:	ff 76       	andi	r31, 0x6F	; 111
     d6c:	3f 2e       	mov	r3, r31
     d6e:	97 ff       	sbrs	r25, 7
     d70:	09 c0       	rjmp	.+18     	; 0xd84 <vfprintf+0x258>
     d72:	90 95       	com	r25
     d74:	80 95       	com	r24
     d76:	70 95       	com	r23
     d78:	61 95       	neg	r22
     d7a:	7f 4f       	sbci	r23, 0xFF	; 255
     d7c:	8f 4f       	sbci	r24, 0xFF	; 255
     d7e:	9f 4f       	sbci	r25, 0xFF	; 255
     d80:	f0 68       	ori	r31, 0x80	; 128
     d82:	3f 2e       	mov	r3, r31
     d84:	2a e0       	ldi	r18, 0x0A	; 10
     d86:	30 e0       	ldi	r19, 0x00	; 0
     d88:	4a 2d       	mov	r20, r10
     d8a:	5b 2d       	mov	r21, r11
     d8c:	2e d1       	rcall	.+604    	; 0xfea <__ultoa_invert>
     d8e:	c8 2e       	mov	r12, r24
     d90:	ca 18       	sub	r12, r10
     d92:	36 fe       	sbrs	r3, 6
     d94:	63 c0       	rjmp	.+198    	; 0xe5c <vfprintf+0x330>
     d96:	23 2d       	mov	r18, r3
     d98:	2e 7f       	andi	r18, 0xFE	; 254
     d9a:	82 2e       	mov	r8, r18
     d9c:	c9 14       	cp	r12, r9
     d9e:	08 f0       	brcs	.+2      	; 0xda2 <vfprintf+0x276>
     da0:	9f c0       	rjmp	.+318    	; 0xee0 <vfprintf+0x3b4>
     da2:	34 fe       	sbrs	r3, 4
     da4:	05 c0       	rjmp	.+10     	; 0xdb0 <vfprintf+0x284>
     da6:	32 fc       	sbrc	r3, 2
     da8:	03 c0       	rjmp	.+6      	; 0xdb0 <vfprintf+0x284>
     daa:	83 2d       	mov	r24, r3
     dac:	8e 7e       	andi	r24, 0xEE	; 238
     dae:	88 2e       	mov	r8, r24
     db0:	d9 2c       	mov	r13, r9
     db2:	56 c0       	rjmp	.+172    	; 0xe60 <vfprintf+0x334>
     db4:	60 81       	ld	r22, Z
     db6:	71 81       	ldd	r23, Z+1	; 0x01
     db8:	07 2e       	mov	r0, r23
     dba:	00 0c       	add	r0, r0
     dbc:	88 0b       	sbc	r24, r24
     dbe:	99 0b       	sbc	r25, r25
     dc0:	0e 5f       	subi	r16, 0xFE	; 254
     dc2:	1f 4f       	sbci	r17, 0xFF	; 255
     dc4:	d1 cf       	rjmp	.-94     	; 0xd68 <vfprintf+0x23c>
     dc6:	85 37       	cpi	r24, 0x75	; 117
     dc8:	c1 f4       	brne	.+48     	; 0xdfa <vfprintf+0x2ce>
     dca:	23 2d       	mov	r18, r3
     dcc:	2f 7e       	andi	r18, 0xEF	; 239
     dce:	d2 2e       	mov	r13, r18
     dd0:	2a e0       	ldi	r18, 0x0A	; 10
     dd2:	30 e0       	ldi	r19, 0x00	; 0
     dd4:	e0 2f       	mov	r30, r16
     dd6:	f1 2f       	mov	r31, r17
     dd8:	d7 fe       	sbrs	r13, 7
     dda:	39 c0       	rjmp	.+114    	; 0xe4e <vfprintf+0x322>
     ddc:	60 81       	ld	r22, Z
     dde:	71 81       	ldd	r23, Z+1	; 0x01
     de0:	82 81       	ldd	r24, Z+2	; 0x02
     de2:	93 81       	ldd	r25, Z+3	; 0x03
     de4:	0c 5f       	subi	r16, 0xFC	; 252
     de6:	1f 4f       	sbci	r17, 0xFF	; 255
     de8:	4a 2d       	mov	r20, r10
     dea:	5b 2d       	mov	r21, r11
     dec:	fe d0       	rcall	.+508    	; 0xfea <__ultoa_invert>
     dee:	c8 2e       	mov	r12, r24
     df0:	ca 18       	sub	r12, r10
     df2:	fd 2d       	mov	r31, r13
     df4:	ff 77       	andi	r31, 0x7F	; 127
     df6:	3f 2e       	mov	r3, r31
     df8:	cc cf       	rjmp	.-104    	; 0xd92 <vfprintf+0x266>
     dfa:	93 2d       	mov	r25, r3
     dfc:	99 7f       	andi	r25, 0xF9	; 249
     dfe:	d9 2e       	mov	r13, r25
     e00:	8f 36       	cpi	r24, 0x6F	; 111
     e02:	11 f1       	breq	.+68     	; 0xe48 <vfprintf+0x31c>
     e04:	48 f4       	brcc	.+18     	; 0xe18 <vfprintf+0x2ec>
     e06:	88 35       	cpi	r24, 0x58	; 88
     e08:	b9 f0       	breq	.+46     	; 0xe38 <vfprintf+0x30c>
     e0a:	ee 2d       	mov	r30, r14
     e0c:	ff 2d       	mov	r31, r15
     e0e:	86 81       	ldd	r24, Z+6	; 0x06
     e10:	97 81       	ldd	r25, Z+7	; 0x07
     e12:	2b 96       	adiw	r28, 0x0b	; 11
     e14:	e2 e1       	ldi	r30, 0x12	; 18
     e16:	72 c1       	rjmp	.+740    	; 0x10fc <__epilogue_restores__>
     e18:	80 37       	cpi	r24, 0x70	; 112
     e1a:	51 f0       	breq	.+20     	; 0xe30 <vfprintf+0x304>
     e1c:	88 37       	cpi	r24, 0x78	; 120
     e1e:	a9 f7       	brne	.-22     	; 0xe0a <vfprintf+0x2de>
     e20:	d4 fe       	sbrs	r13, 4
     e22:	03 c0       	rjmp	.+6      	; 0xe2a <vfprintf+0x2fe>
     e24:	fd 2d       	mov	r31, r13
     e26:	f4 60       	ori	r31, 0x04	; 4
     e28:	df 2e       	mov	r13, r31
     e2a:	20 e1       	ldi	r18, 0x10	; 16
     e2c:	30 e0       	ldi	r19, 0x00	; 0
     e2e:	d2 cf       	rjmp	.-92     	; 0xdd4 <vfprintf+0x2a8>
     e30:	e9 2f       	mov	r30, r25
     e32:	e0 61       	ori	r30, 0x10	; 16
     e34:	de 2e       	mov	r13, r30
     e36:	f4 cf       	rjmp	.-24     	; 0xe20 <vfprintf+0x2f4>
     e38:	34 fe       	sbrs	r3, 4
     e3a:	03 c0       	rjmp	.+6      	; 0xe42 <vfprintf+0x316>
     e3c:	29 2f       	mov	r18, r25
     e3e:	26 60       	ori	r18, 0x06	; 6
     e40:	d2 2e       	mov	r13, r18
     e42:	20 e1       	ldi	r18, 0x10	; 16
     e44:	32 e0       	ldi	r19, 0x02	; 2
     e46:	c6 cf       	rjmp	.-116    	; 0xdd4 <vfprintf+0x2a8>
     e48:	28 e0       	ldi	r18, 0x08	; 8
     e4a:	30 e0       	ldi	r19, 0x00	; 0
     e4c:	c3 cf       	rjmp	.-122    	; 0xdd4 <vfprintf+0x2a8>
     e4e:	60 81       	ld	r22, Z
     e50:	71 81       	ldd	r23, Z+1	; 0x01
     e52:	80 e0       	ldi	r24, 0x00	; 0
     e54:	90 e0       	ldi	r25, 0x00	; 0
     e56:	0e 5f       	subi	r16, 0xFE	; 254
     e58:	1f 4f       	sbci	r17, 0xFF	; 255
     e5a:	c6 cf       	rjmp	.-116    	; 0xde8 <vfprintf+0x2bc>
     e5c:	dc 2c       	mov	r13, r12
     e5e:	83 2c       	mov	r8, r3
     e60:	84 fe       	sbrs	r8, 4
     e62:	47 c0       	rjmp	.+142    	; 0xef2 <vfprintf+0x3c6>
     e64:	ec 2f       	mov	r30, r28
     e66:	fd 2f       	mov	r31, r29
     e68:	ec 0d       	add	r30, r12
     e6a:	f1 1d       	adc	r31, r1
     e6c:	80 81       	ld	r24, Z
     e6e:	80 33       	cpi	r24, 0x30	; 48
     e70:	c9 f5       	brne	.+114    	; 0xee4 <vfprintf+0x3b8>
     e72:	98 2d       	mov	r25, r8
     e74:	99 7e       	andi	r25, 0xE9	; 233
     e76:	89 2e       	mov	r8, r25
     e78:	e8 2d       	mov	r30, r8
     e7a:	e8 70       	andi	r30, 0x08	; 8
     e7c:	5e 2e       	mov	r5, r30
     e7e:	83 fc       	sbrc	r8, 3
     e80:	47 c0       	rjmp	.+142    	; 0xf10 <vfprintf+0x3e4>
     e82:	80 fe       	sbrs	r8, 0
     e84:	41 c0       	rjmp	.+130    	; 0xf08 <vfprintf+0x3dc>
     e86:	d2 14       	cp	r13, r2
     e88:	08 f0       	brcs	.+2      	; 0xe8c <vfprintf+0x360>
     e8a:	47 c0       	rjmp	.+142    	; 0xf1a <vfprintf+0x3ee>
     e8c:	2c 0c       	add	r2, r12
     e8e:	92 2c       	mov	r9, r2
     e90:	9d 18       	sub	r9, r13
     e92:	84 fe       	sbrs	r8, 4
     e94:	47 c0       	rjmp	.+142    	; 0xf24 <vfprintf+0x3f8>
     e96:	6e 2d       	mov	r22, r14
     e98:	7f 2d       	mov	r23, r15
     e9a:	80 e3       	ldi	r24, 0x30	; 48
     e9c:	90 e0       	ldi	r25, 0x00	; 0
     e9e:	73 d0       	rcall	.+230    	; 0xf86 <fputc>
     ea0:	82 fe       	sbrs	r8, 2
     ea2:	07 c0       	rjmp	.+14     	; 0xeb2 <vfprintf+0x386>
     ea4:	81 fc       	sbrc	r8, 1
     ea6:	3b c0       	rjmp	.+118    	; 0xf1e <vfprintf+0x3f2>
     ea8:	88 e7       	ldi	r24, 0x78	; 120
     eaa:	90 e0       	ldi	r25, 0x00	; 0
     eac:	6e 2d       	mov	r22, r14
     eae:	7f 2d       	mov	r23, r15
     eb0:	6a d0       	rcall	.+212    	; 0xf86 <fputc>
     eb2:	c9 14       	cp	r12, r9
     eb4:	08 f4       	brcc	.+2      	; 0xeb8 <vfprintf+0x38c>
     eb6:	44 c0       	rjmp	.+136    	; 0xf40 <vfprintf+0x414>
     eb8:	ca 94       	dec	r12
     eba:	d1 2c       	mov	r13, r1
     ebc:	ff ef       	ldi	r31, 0xFF	; 255
     ebe:	cf 1a       	sub	r12, r31
     ec0:	df 0a       	sbc	r13, r31
     ec2:	ca 0c       	add	r12, r10
     ec4:	db 1c       	adc	r13, r11
     ec6:	ec 2d       	mov	r30, r12
     ec8:	fd 2d       	mov	r31, r13
     eca:	82 91       	ld	r24, -Z
     ecc:	ce 2e       	mov	r12, r30
     ece:	df 2e       	mov	r13, r31
     ed0:	6e 2d       	mov	r22, r14
     ed2:	7f 2d       	mov	r23, r15
     ed4:	90 e0       	ldi	r25, 0x00	; 0
     ed6:	57 d0       	rcall	.+174    	; 0xf86 <fputc>
     ed8:	ac 14       	cp	r10, r12
     eda:	bd 04       	cpc	r11, r13
     edc:	a1 f7       	brne	.-24     	; 0xec6 <vfprintf+0x39a>
     ede:	ef ce       	rjmp	.-546    	; 0xcbe <vfprintf+0x192>
     ee0:	dc 2c       	mov	r13, r12
     ee2:	be cf       	rjmp	.-132    	; 0xe60 <vfprintf+0x334>
     ee4:	82 fc       	sbrc	r8, 2
     ee6:	02 c0       	rjmp	.+4      	; 0xeec <vfprintf+0x3c0>
     ee8:	d3 94       	inc	r13
     eea:	c6 cf       	rjmp	.-116    	; 0xe78 <vfprintf+0x34c>
     eec:	d3 94       	inc	r13
     eee:	d3 94       	inc	r13
     ef0:	c3 cf       	rjmp	.-122    	; 0xe78 <vfprintf+0x34c>
     ef2:	88 2d       	mov	r24, r8
     ef4:	86 78       	andi	r24, 0x86	; 134
     ef6:	09 f4       	brne	.+2      	; 0xefa <vfprintf+0x3ce>
     ef8:	bf cf       	rjmp	.-130    	; 0xe78 <vfprintf+0x34c>
     efa:	f6 cf       	rjmp	.-20     	; 0xee8 <vfprintf+0x3bc>
     efc:	6e 2d       	mov	r22, r14
     efe:	7f 2d       	mov	r23, r15
     f00:	80 e2       	ldi	r24, 0x20	; 32
     f02:	90 e0       	ldi	r25, 0x00	; 0
     f04:	40 d0       	rcall	.+128    	; 0xf86 <fputc>
     f06:	d3 94       	inc	r13
     f08:	d2 14       	cp	r13, r2
     f0a:	c0 f3       	brcs	.-16     	; 0xefc <vfprintf+0x3d0>
     f0c:	51 2c       	mov	r5, r1
     f0e:	c1 cf       	rjmp	.-126    	; 0xe92 <vfprintf+0x366>
     f10:	d2 14       	cp	r13, r2
     f12:	e0 f7       	brcc	.-8      	; 0xf0c <vfprintf+0x3e0>
     f14:	52 2c       	mov	r5, r2
     f16:	5d 18       	sub	r5, r13
     f18:	bc cf       	rjmp	.-136    	; 0xe92 <vfprintf+0x366>
     f1a:	9c 2c       	mov	r9, r12
     f1c:	ba cf       	rjmp	.-140    	; 0xe92 <vfprintf+0x366>
     f1e:	88 e5       	ldi	r24, 0x58	; 88
     f20:	90 e0       	ldi	r25, 0x00	; 0
     f22:	c4 cf       	rjmp	.-120    	; 0xeac <vfprintf+0x380>
     f24:	88 2d       	mov	r24, r8
     f26:	86 78       	andi	r24, 0x86	; 134
     f28:	21 f2       	breq	.-120    	; 0xeb2 <vfprintf+0x386>
     f2a:	81 fe       	sbrs	r8, 1
     f2c:	07 c0       	rjmp	.+14     	; 0xf3c <vfprintf+0x410>
     f2e:	8b e2       	ldi	r24, 0x2B	; 43
     f30:	87 fc       	sbrc	r8, 7
     f32:	8d e2       	ldi	r24, 0x2D	; 45
     f34:	6e 2d       	mov	r22, r14
     f36:	7f 2d       	mov	r23, r15
     f38:	90 e0       	ldi	r25, 0x00	; 0
     f3a:	ba cf       	rjmp	.-140    	; 0xeb0 <vfprintf+0x384>
     f3c:	80 e2       	ldi	r24, 0x20	; 32
     f3e:	f8 cf       	rjmp	.-16     	; 0xf30 <vfprintf+0x404>
     f40:	6e 2d       	mov	r22, r14
     f42:	7f 2d       	mov	r23, r15
     f44:	80 e3       	ldi	r24, 0x30	; 48
     f46:	90 e0       	ldi	r25, 0x00	; 0
     f48:	1e d0       	rcall	.+60     	; 0xf86 <fputc>
     f4a:	9a 94       	dec	r9
     f4c:	b2 cf       	rjmp	.-156    	; 0xeb2 <vfprintf+0x386>
     f4e:	8f ef       	ldi	r24, 0xFF	; 255
     f50:	9f ef       	ldi	r25, 0xFF	; 255
     f52:	5f cf       	rjmp	.-322    	; 0xe12 <vfprintf+0x2e6>

00000f54 <strnlen_P>:
     f54:	e8 2f       	mov	r30, r24
     f56:	f9 2f       	mov	r31, r25
     f58:	c8 95       	lpm
     f5a:	31 96       	adiw	r30, 0x01	; 1
     f5c:	61 50       	subi	r22, 0x01	; 1
     f5e:	70 40       	sbci	r23, 0x00	; 0
     f60:	01 10       	cpse	r0, r1
     f62:	d0 f7       	brcc	.-12     	; 0xf58 <strnlen_P+0x4>
     f64:	80 95       	com	r24
     f66:	90 95       	com	r25
     f68:	8e 0f       	add	r24, r30
     f6a:	9f 1f       	adc	r25, r31
     f6c:	08 95       	ret

00000f6e <strnlen>:
     f6e:	e8 2f       	mov	r30, r24
     f70:	f9 2f       	mov	r31, r25
     f72:	61 50       	subi	r22, 0x01	; 1
     f74:	70 40       	sbci	r23, 0x00	; 0
     f76:	01 90       	ld	r0, Z+
     f78:	01 10       	cpse	r0, r1
     f7a:	d8 f7       	brcc	.-10     	; 0xf72 <strnlen+0x4>
     f7c:	80 95       	com	r24
     f7e:	90 95       	com	r25
     f80:	8e 0f       	add	r24, r30
     f82:	9f 1f       	adc	r25, r31
     f84:	08 95       	ret

00000f86 <fputc>:
     f86:	0f 93       	push	r16
     f88:	1f 93       	push	r17
     f8a:	cf 93       	push	r28
     f8c:	df 93       	push	r29
     f8e:	18 2f       	mov	r17, r24
     f90:	09 2f       	mov	r16, r25
     f92:	c6 2f       	mov	r28, r22
     f94:	d7 2f       	mov	r29, r23
     f96:	8b 81       	ldd	r24, Y+3	; 0x03
     f98:	81 fd       	sbrc	r24, 1
     f9a:	09 c0       	rjmp	.+18     	; 0xfae <fputc+0x28>
     f9c:	1f ef       	ldi	r17, 0xFF	; 255
     f9e:	0f ef       	ldi	r16, 0xFF	; 255
     fa0:	81 2f       	mov	r24, r17
     fa2:	90 2f       	mov	r25, r16
     fa4:	df 91       	pop	r29
     fa6:	cf 91       	pop	r28
     fa8:	1f 91       	pop	r17
     faa:	0f 91       	pop	r16
     fac:	08 95       	ret
     fae:	82 ff       	sbrs	r24, 2
     fb0:	15 c0       	rjmp	.+42     	; 0xfdc <fputc+0x56>
     fb2:	2e 81       	ldd	r18, Y+6	; 0x06
     fb4:	3f 81       	ldd	r19, Y+7	; 0x07
     fb6:	8c 81       	ldd	r24, Y+4	; 0x04
     fb8:	9d 81       	ldd	r25, Y+5	; 0x05
     fba:	28 17       	cp	r18, r24
     fbc:	39 07       	cpc	r19, r25
     fbe:	44 f4       	brge	.+16     	; 0xfd0 <fputc+0x4a>
     fc0:	e8 81       	ld	r30, Y
     fc2:	f9 81       	ldd	r31, Y+1	; 0x01
     fc4:	8e 2f       	mov	r24, r30
     fc6:	9f 2f       	mov	r25, r31
     fc8:	01 96       	adiw	r24, 0x01	; 1
     fca:	99 83       	std	Y+1, r25	; 0x01
     fcc:	88 83       	st	Y, r24
     fce:	10 83       	st	Z, r17
     fd0:	8e 81       	ldd	r24, Y+6	; 0x06
     fd2:	9f 81       	ldd	r25, Y+7	; 0x07
     fd4:	01 96       	adiw	r24, 0x01	; 1
     fd6:	9f 83       	std	Y+7, r25	; 0x07
     fd8:	8e 83       	std	Y+6, r24	; 0x06
     fda:	e2 cf       	rjmp	.-60     	; 0xfa0 <fputc+0x1a>
     fdc:	e8 85       	ldd	r30, Y+8	; 0x08
     fde:	f9 85       	ldd	r31, Y+9	; 0x09
     fe0:	81 2f       	mov	r24, r17
     fe2:	09 95       	icall
     fe4:	89 2b       	or	r24, r25
     fe6:	a1 f3       	breq	.-24     	; 0xfd0 <fputc+0x4a>
     fe8:	d9 cf       	rjmp	.-78     	; 0xf9c <fputc+0x16>

00000fea <__ultoa_invert>:
     fea:	e4 2f       	mov	r30, r20
     fec:	f5 2f       	mov	r31, r21
     fee:	aa 27       	eor	r26, r26
     ff0:	28 30       	cpi	r18, 0x08	; 8
     ff2:	69 f1       	breq	.+90     	; 0x104e <__ultoa_invert+0x64>
     ff4:	20 31       	cpi	r18, 0x10	; 16
     ff6:	99 f1       	breq	.+102    	; 0x105e <__ultoa_invert+0x74>
     ff8:	e8 94       	clt
     ffa:	6f 93       	push	r22
     ffc:	6e 7f       	andi	r22, 0xFE	; 254
     ffe:	6e 5f       	subi	r22, 0xFE	; 254
    1000:	7f 4f       	sbci	r23, 0xFF	; 255
    1002:	8f 4f       	sbci	r24, 0xFF	; 255
    1004:	9f 4f       	sbci	r25, 0xFF	; 255
    1006:	af 4f       	sbci	r26, 0xFF	; 255
    1008:	b1 e0       	ldi	r27, 0x01	; 1
    100a:	41 d0       	rcall	.+130    	; 0x108e <__ultoa_invert+0xa4>
    100c:	b4 e0       	ldi	r27, 0x04	; 4
    100e:	3f d0       	rcall	.+126    	; 0x108e <__ultoa_invert+0xa4>
    1010:	67 0f       	add	r22, r23
    1012:	78 1f       	adc	r23, r24
    1014:	89 1f       	adc	r24, r25
    1016:	9a 1f       	adc	r25, r26
    1018:	a1 1d       	adc	r26, r1
    101a:	68 0f       	add	r22, r24
    101c:	79 1f       	adc	r23, r25
    101e:	8a 1f       	adc	r24, r26
    1020:	91 1d       	adc	r25, r1
    1022:	a1 1d       	adc	r26, r1
    1024:	6a 0f       	add	r22, r26
    1026:	71 1d       	adc	r23, r1
    1028:	81 1d       	adc	r24, r1
    102a:	91 1d       	adc	r25, r1
    102c:	a1 1d       	adc	r26, r1
    102e:	23 d0       	rcall	.+70     	; 0x1076 <__ultoa_invert+0x8c>
    1030:	09 f4       	brne	.+2      	; 0x1034 <__ultoa_invert+0x4a>
    1032:	68 94       	set
    1034:	3f 91       	pop	r19
    1036:	06 2e       	mov	r0, r22
    1038:	00 0c       	add	r0, r0
    103a:	30 19       	sub	r19, r0
    103c:	00 0c       	add	r0, r0
    103e:	00 0c       	add	r0, r0
    1040:	30 19       	sub	r19, r0
    1042:	30 5d       	subi	r19, 0xD0	; 208
    1044:	31 93       	st	Z+, r19
    1046:	ce f6       	brtc	.-78     	; 0xffa <__ultoa_invert+0x10>
    1048:	8e 2f       	mov	r24, r30
    104a:	9f 2f       	mov	r25, r31
    104c:	08 95       	ret
    104e:	46 2f       	mov	r20, r22
    1050:	47 70       	andi	r20, 0x07	; 7
    1052:	40 5d       	subi	r20, 0xD0	; 208
    1054:	41 93       	st	Z+, r20
    1056:	b3 e0       	ldi	r27, 0x03	; 3
    1058:	0f d0       	rcall	.+30     	; 0x1078 <__ultoa_invert+0x8e>
    105a:	c9 f7       	brne	.-14     	; 0x104e <__ultoa_invert+0x64>
    105c:	f5 cf       	rjmp	.-22     	; 0x1048 <__ultoa_invert+0x5e>
    105e:	46 2f       	mov	r20, r22
    1060:	4f 70       	andi	r20, 0x0F	; 15
    1062:	40 5d       	subi	r20, 0xD0	; 208
    1064:	4a 33       	cpi	r20, 0x3A	; 58
    1066:	18 f0       	brcs	.+6      	; 0x106e <__ultoa_invert+0x84>
    1068:	49 5d       	subi	r20, 0xD9	; 217
    106a:	31 fd       	sbrc	r19, 1
    106c:	40 52       	subi	r20, 0x20	; 32
    106e:	41 93       	st	Z+, r20
    1070:	02 d0       	rcall	.+4      	; 0x1076 <__ultoa_invert+0x8c>
    1072:	a9 f7       	brne	.-22     	; 0x105e <__ultoa_invert+0x74>
    1074:	e9 cf       	rjmp	.-46     	; 0x1048 <__ultoa_invert+0x5e>
    1076:	b4 e0       	ldi	r27, 0x04	; 4
    1078:	a6 95       	lsr	r26
    107a:	97 95       	ror	r25
    107c:	87 95       	ror	r24
    107e:	77 95       	ror	r23
    1080:	67 95       	ror	r22
    1082:	ba 95       	dec	r27
    1084:	c9 f7       	brne	.-14     	; 0x1078 <__ultoa_invert+0x8e>
    1086:	00 97       	sbiw	r24, 0x00	; 0
    1088:	61 05       	cpc	r22, r1
    108a:	71 05       	cpc	r23, r1
    108c:	08 95       	ret
    108e:	26 2f       	mov	r18, r22
    1090:	37 2f       	mov	r19, r23
    1092:	48 2f       	mov	r20, r24
    1094:	59 2f       	mov	r21, r25
    1096:	0a 2e       	mov	r0, r26
    1098:	06 94       	lsr	r0
    109a:	57 95       	ror	r21
    109c:	47 95       	ror	r20
    109e:	37 95       	ror	r19
    10a0:	27 95       	ror	r18
    10a2:	ba 95       	dec	r27
    10a4:	c9 f7       	brne	.-14     	; 0x1098 <__ultoa_invert+0xae>
    10a6:	62 0f       	add	r22, r18
    10a8:	73 1f       	adc	r23, r19
    10aa:	84 1f       	adc	r24, r20
    10ac:	95 1f       	adc	r25, r21
    10ae:	a0 1d       	adc	r26, r0
    10b0:	08 95       	ret

000010b2 <__mulqi3>:
    10b2:	00 24       	eor	r0, r0

000010b4 <__mulqi3_loop>:
    10b4:	80 fd       	sbrc	r24, 0
    10b6:	06 0e       	add	r0, r22
    10b8:	66 0f       	add	r22, r22
    10ba:	11 f0       	breq	.+4      	; 0x10c0 <__mulqi3_exit>
    10bc:	86 95       	lsr	r24
    10be:	d1 f7       	brne	.-12     	; 0x10b4 <__mulqi3_loop>

000010c0 <__mulqi3_exit>:
    10c0:	80 2d       	mov	r24, r0
    10c2:	08 95       	ret

000010c4 <__prologue_saves__>:
    10c4:	2f 92       	push	r2
    10c6:	3f 92       	push	r3
    10c8:	4f 92       	push	r4
    10ca:	5f 92       	push	r5
    10cc:	6f 92       	push	r6
    10ce:	7f 92       	push	r7
    10d0:	8f 92       	push	r8
    10d2:	9f 92       	push	r9
    10d4:	af 92       	push	r10
    10d6:	bf 92       	push	r11
    10d8:	cf 92       	push	r12
    10da:	df 92       	push	r13
    10dc:	ef 92       	push	r14
    10de:	ff 92       	push	r15
    10e0:	0f 93       	push	r16
    10e2:	1f 93       	push	r17
    10e4:	cf 93       	push	r28
    10e6:	df 93       	push	r29
    10e8:	cd b7       	in	r28, 0x3d	; 61
    10ea:	de b7       	in	r29, 0x3e	; 62
    10ec:	ca 1b       	sub	r28, r26
    10ee:	db 0b       	sbc	r29, r27
    10f0:	0f b6       	in	r0, 0x3f	; 63
    10f2:	f8 94       	cli
    10f4:	de bf       	out	0x3e, r29	; 62
    10f6:	0f be       	out	0x3f, r0	; 63
    10f8:	cd bf       	out	0x3d, r28	; 61
    10fa:	09 94       	ijmp

000010fc <__epilogue_restores__>:
    10fc:	2a 88       	ldd	r2, Y+18	; 0x12
    10fe:	39 88       	ldd	r3, Y+17	; 0x11
    1100:	48 88       	ldd	r4, Y+16	; 0x10
    1102:	5f 84       	ldd	r5, Y+15	; 0x0f
    1104:	6e 84       	ldd	r6, Y+14	; 0x0e
    1106:	7d 84       	ldd	r7, Y+13	; 0x0d
    1108:	8c 84       	ldd	r8, Y+12	; 0x0c
    110a:	9b 84       	ldd	r9, Y+11	; 0x0b
    110c:	aa 84       	ldd	r10, Y+10	; 0x0a
    110e:	b9 84       	ldd	r11, Y+9	; 0x09
    1110:	c8 84       	ldd	r12, Y+8	; 0x08
    1112:	df 80       	ldd	r13, Y+7	; 0x07
    1114:	ee 80       	ldd	r14, Y+6	; 0x06
    1116:	fd 80       	ldd	r15, Y+5	; 0x05
    1118:	0c 81       	ldd	r16, Y+4	; 0x04
    111a:	1b 81       	ldd	r17, Y+3	; 0x03
    111c:	aa 81       	ldd	r26, Y+2	; 0x02
    111e:	b9 81       	ldd	r27, Y+1	; 0x01
    1120:	ce 0f       	add	r28, r30
    1122:	d1 1d       	adc	r29, r1
    1124:	0f b6       	in	r0, 0x3f	; 63
    1126:	f8 94       	cli
    1128:	de bf       	out	0x3e, r29	; 62
    112a:	0f be       	out	0x3f, r0	; 63
    112c:	cd bf       	out	0x3d, r28	; 61
    112e:	ca 2f       	mov	r28, r26
    1130:	db 2f       	mov	r29, r27
    1132:	08 95       	ret

00001134 <_exit>:
    1134:	f8 94       	cli

00001136 <__stop_program>:
    1136:	ff cf       	rjmp	.-2      	; 0x1136 <__stop_program>
