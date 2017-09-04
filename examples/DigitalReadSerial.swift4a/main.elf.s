
main.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
       0:	0c 94 35 00 	jmp	0x6a	; 0x6a <__ctors_end>
       4:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
       8:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
       c:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
      10:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
      14:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
      18:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
      1c:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
      20:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
      24:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
      28:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
      2c:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
      30:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
      34:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
      38:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
      3c:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
      40:	0c 94 36 02 	jmp	0x46c	; 0x46c <__vector_16>
      44:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
      48:	0c 94 4d 02 	jmp	0x49a	; 0x49a <__vector_18>
      4c:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
      50:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
      54:	0c 94 45 04 	jmp	0x88a	; 0x88a <__vector_21>
      58:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
      5c:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
      60:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
      64:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>

00000068 <__ctors_start>:
      68:	c7 04       	cpc	r12, r7

0000006a <__ctors_end>:
      6a:	11 24       	eor	r1, r1
      6c:	1f be       	out	0x3f, r1	; 63
      6e:	cf ef       	ldi	r28, 0xFF	; 255
      70:	d8 e0       	ldi	r29, 0x08	; 8
      72:	de bf       	out	0x3e, r29	; 62
      74:	cd bf       	out	0x3d, r28	; 61

00000076 <__do_copy_data>:
      76:	11 e0       	ldi	r17, 0x01	; 1
      78:	a0 e0       	ldi	r26, 0x00	; 0
      7a:	b1 e0       	ldi	r27, 0x01	; 1
      7c:	e0 e8       	ldi	r30, 0x80	; 128
      7e:	f0 e1       	ldi	r31, 0x10	; 16
      80:	03 c0       	rjmp	.+6      	; 0x88 <__do_copy_data+0x12>
      82:	c8 95       	lpm
      84:	31 96       	adiw	r30, 0x01	; 1
      86:	0d 92       	st	X+, r0
      88:	aa 31       	cpi	r26, 0x1A	; 26
      8a:	b1 07       	cpc	r27, r17
      8c:	d1 f7       	brne	.-12     	; 0x82 <__do_copy_data+0xc>

0000008e <__do_clear_bss>:
      8e:	22 e0       	ldi	r18, 0x02	; 2
      90:	aa e1       	ldi	r26, 0x1A	; 26
      92:	b1 e0       	ldi	r27, 0x01	; 1
      94:	01 c0       	rjmp	.+2      	; 0x98 <.do_clear_bss_start>

00000096 <.do_clear_bss_loop>:
      96:	1d 92       	st	X+, r1

00000098 <.do_clear_bss_start>:
      98:	a5 33       	cpi	r26, 0x35	; 53
      9a:	b2 07       	cpc	r27, r18
      9c:	e1 f7       	brne	.-8      	; 0x96 <.do_clear_bss_loop>

0000009e <__do_global_ctors>:
      9e:	10 e0       	ldi	r17, 0x00	; 0
      a0:	c5 e3       	ldi	r28, 0x35	; 53
      a2:	d0 e0       	ldi	r29, 0x00	; 0
      a4:	04 c0       	rjmp	.+8      	; 0xae <__do_global_ctors+0x10>
      a6:	21 97       	sbiw	r28, 0x01	; 1
      a8:	fd 2f       	mov	r31, r29
      aa:	ec 2f       	mov	r30, r28
      ac:	aa d4       	rcall	.+2388   	; 0xa02 <__tablejump2__>
      ae:	c4 33       	cpi	r28, 0x34	; 52
      b0:	d1 07       	cpc	r29, r17
      b2:	c9 f7       	brne	.-14     	; 0xa6 <__do_global_ctors+0x8>
      b4:	0e 94 60 00 	call	0xc0	; 0xc0 <main>
      b8:	0c 94 3e 08 	jmp	0x107c	; 0x107c <_exit>

000000bc <__bad_interrupt>:
      bc:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000c0 <main>:
      c0:	cf 92       	push	r12
      c2:	df 92       	push	r13
      c4:	ef 92       	push	r14
      c6:	ff 92       	push	r15
      c8:	0f 93       	push	r16
      ca:	1f 93       	push	r17
      cc:	82 e0       	ldi	r24, 0x02	; 2
      ce:	80 93 1a 01 	sts	0x011A, r24	; 0x80011a <__data_end>
      d2:	80 e8       	ldi	r24, 0x80	; 128
      d4:	95 e2       	ldi	r25, 0x25	; 37
      d6:	0e 94 d2 00 	call	0x1a4	; 0x1a4 <_TF3AVR11SetupSerialFT8baudRateVs5Int16_T_>
      da:	80 91 1a 01 	lds	r24, 0x011A	; 0x80011a <__data_end>
      de:	60 91 0b 01 	lds	r22, 0x010B	; 0x80010b <INPUT>
      e2:	0e 94 c4 00 	call	0x188	; 0x188 <_TF3AVR7pinModeFT3pinVs5UInt84modeSb_T_>
      e6:	81 e0       	ldi	r24, 0x01	; 1
      e8:	90 e0       	ldi	r25, 0x00	; 0
      ea:	7c 01       	movw	r14, r24
      ec:	04 ef       	ldi	r16, 0xF4	; 244
      ee:	11 e0       	ldi	r17, 0x01	; 1
      f0:	80 e0       	ldi	r24, 0x00	; 0
      f2:	90 e0       	ldi	r25, 0x00	; 0
      f4:	6c 01       	movw	r12, r24
      f6:	05 c0       	rjmp	.+10     	; 0x102 <LBB0_2>

000000f8 <LBB0_1>:
      f8:	0e 94 2e 01 	call	0x25c	; 0x25c <_TF3AVR5printFT11unsignedIntVs6UInt16_T_>
      fc:	c8 01       	movw	r24, r16
      fe:	0e 94 8a 00 	call	0x114	; 0x114 <_TF3AVR5delayFT12millisecondsVs6UInt16_T_>

00000102 <LBB0_2>:
     102:	87 e0       	ldi	r24, 0x07	; 7
     104:	0e 94 a6 00 	call	0x14c	; 0x14c <_TF3AVR11digitalReadFT3pinVs5UInt8_Sb>
     108:	81 70       	andi	r24, 0x01	; 1
     10a:	80 30       	cpi	r24, 0x00	; 0
     10c:	c7 01       	movw	r24, r14
     10e:	a1 f7       	brne	.-24     	; 0xf8 <LBB0_1>
     110:	c6 01       	movw	r24, r12
     112:	f2 cf       	rjmp	.-28     	; 0xf8 <LBB0_1>

00000114 <_TF3AVR5delayFT12millisecondsVs6UInt16_T_>:
     114:	0e 94 e6 01 	call	0x3cc	; 0x3cc <_delayMs>
     118:	08 95       	ret

0000011a <_TF3AVR18stringAddCharacterFT4byteVs5UInt8_Sb>:
     11a:	0e 94 fa 01 	call	0x3f4	; 0x3f4 <_stringAddCharacter>
     11e:	08 95       	ret

00000120 <_TF3AVR14stringStartNewFT_T_>:
     120:	0e 94 12 02 	call	0x424	; 0x424 <_stringStartNew>
     124:	08 95       	ret

00000126 <_TF3AVR18stringCurrentValueFT_GSQGSPVs4Int8__>:
     126:	0e 94 17 02 	call	0x42e	; 0x42e <_stringCurrentValue>
     12a:	40 e0       	ldi	r20, 0x00	; 0
     12c:	50 e0       	ldi	r21, 0x00	; 0
     12e:	9c 01       	movw	r18, r24
     130:	ba 01       	movw	r22, r20
     132:	ca 01       	movw	r24, r20
     134:	08 95       	ret

00000136 <_TF3AVR14numberToStringFT6numberVs5Int32_GSQGSPVs4Int8__>:
     136:	0e 94 1a 02 	call	0x434	; 0x434 <_numberToString>
     13a:	40 e0       	ldi	r20, 0x00	; 0
     13c:	50 e0       	ldi	r21, 0x00	; 0
     13e:	9c 01       	movw	r18, r24
     140:	ba 01       	movw	r22, r20
     142:	ca 01       	movw	r24, r20
     144:	08 95       	ret

00000146 <_TF3AVR5ticksFT_Vs6UInt16>:
     146:	0e 94 f5 01 	call	0x3ea	; 0x3ea <_ticks>
     14a:	08 95       	ret

0000014c <_TF3AVR11digitalReadFT3pinVs5UInt8_Sb>:
     14c:	0e 94 57 01 	call	0x2ae	; 0x2ae <_digitalRead>
     150:	08 95       	ret

00000152 <_TF3AVR12digitalWriteFT3pinVs5UInt85valueSb_T_>:
     152:	83 30       	cpi	r24, 0x03	; 3
     154:	51 f0       	breq	.+20     	; 0x16a <LBB1_6>
     156:	85 30       	cpi	r24, 0x05	; 5
     158:	41 f0       	breq	.+16     	; 0x16a <LBB1_6>
     15a:	86 30       	cpi	r24, 0x06	; 6
     15c:	31 f0       	breq	.+12     	; 0x16a <LBB1_6>
     15e:	89 30       	cpi	r24, 0x09	; 9
     160:	21 f0       	breq	.+8      	; 0x16a <LBB1_6>
     162:	8a 30       	cpi	r24, 0x0A	; 10
     164:	11 f0       	breq	.+4      	; 0x16a <LBB1_6>
     166:	8b 30       	cpi	r24, 0x0B	; 11
     168:	59 f4       	brne	.+22     	; 0x180 <LBB1_9>

0000016a <LBB1_6>:
     16a:	61 70       	andi	r22, 0x01	; 1
     16c:	60 30       	cpi	r22, 0x00	; 0
     16e:	21 f0       	breq	.+8      	; 0x178 <LBB1_8>
     170:	6f ef       	ldi	r22, 0xFF	; 255
     172:	0e 94 13 03 	call	0x626	; 0x626 <_analogWrite>
     176:	08 95       	ret

00000178 <LBB1_8>:
     178:	60 e0       	ldi	r22, 0x00	; 0
     17a:	0e 94 13 03 	call	0x626	; 0x626 <_analogWrite>
     17e:	08 95       	ret

00000180 <LBB1_9>:
     180:	61 70       	andi	r22, 0x01	; 1
     182:	0e 94 8e 01 	call	0x31c	; 0x31c <_digitalWrite>
     186:	08 95       	ret

00000188 <_TF3AVR7pinModeFT3pinVs5UInt84modeSb_T_>:
     188:	61 70       	andi	r22, 0x01	; 1
     18a:	0e 94 be 01 	call	0x37c	; 0x37c <_pinMode>
     18e:	08 95       	ret

00000190 <_TF3AVR11analogWriteFT3pinVs5UInt85valueS0__T_>:
     190:	0e 94 13 03 	call	0x626	; 0x626 <_analogWrite>
     194:	08 95       	ret

00000196 <_TF3AVR14slowAnalogReadFT3pinVs5UInt8_Vs6UInt16>:
     196:	0e 94 16 04 	call	0x82c	; 0x82c <_slowAnalogRead>
     19a:	08 95       	ret

0000019c <_TF3AVR15analogReadAsyncFT3pinVs5UInt88callbackcVs6UInt16T__T_>:
     19c:	40 e0       	ldi	r20, 0x00	; 0
     19e:	0e 94 7d 04 	call	0x8fa	; 0x8fa <_analogReadAsync>
     1a2:	08 95       	ret

000001a4 <_TF3AVR11SetupSerialFT8baudRateVs5Int16_T_>:
     1a4:	0e 94 8f 02 	call	0x51e	; 0x51e <_setupSerial>
     1a8:	08 95       	ret

000001aa <_TF3AVR5printFT7messageGSqGSPVs4Int8___T_>:
     1aa:	c9 01       	movw	r24, r18
     1ac:	0e 94 cc 02 	call	0x598	; 0x598 <_sendString>
     1b0:	08 95       	ret

000001b2 <_TF3AVR5printFT4byteVs5UInt8_T_>:
     1b2:	0e 94 c5 02 	call	0x58a	; 0x58a <_sendByte>
     1b6:	08 95       	ret

000001b8 <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberVs5Int32_T_>:
     1b8:	0e 94 1a 02 	call	0x434	; 0x434 <_numberToString>
     1bc:	0e 94 dc 02 	call	0x5b8	; 0x5b8 <_sendBuffer>
     1c0:	08 95       	ret

000001c2 <_TF3AVR5printFT7longIntVs5Int32_T_>:
     1c2:	0e 94 dc 00 	call	0x1b8	; 0x1b8 <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberVs5Int32_T_>
     1c6:	08 95       	ret

000001c8 <_TF3AVR5printFT3intVs5Int16_T_>:
     1c8:	9c 01       	movw	r18, r24
     1ca:	35 95       	asr	r19
     1cc:	27 95       	ror	r18
     1ce:	35 95       	asr	r19
     1d0:	27 95       	ror	r18
     1d2:	35 95       	asr	r19
     1d4:	27 95       	ror	r18
     1d6:	35 95       	asr	r19
     1d8:	27 95       	ror	r18
     1da:	35 95       	asr	r19
     1dc:	27 95       	ror	r18
     1de:	35 95       	asr	r19
     1e0:	27 95       	ror	r18
     1e2:	35 95       	asr	r19
     1e4:	27 95       	ror	r18
     1e6:	35 95       	asr	r19
     1e8:	27 95       	ror	r18
     1ea:	35 95       	asr	r19
     1ec:	27 95       	ror	r18
     1ee:	35 95       	asr	r19
     1f0:	27 95       	ror	r18
     1f2:	35 95       	asr	r19
     1f4:	27 95       	ror	r18
     1f6:	35 95       	asr	r19
     1f8:	27 95       	ror	r18
     1fa:	35 95       	asr	r19
     1fc:	27 95       	ror	r18
     1fe:	35 95       	asr	r19
     200:	27 95       	ror	r18
     202:	35 95       	asr	r19
     204:	27 95       	ror	r18
     206:	bc 01       	movw	r22, r24
     208:	c9 01       	movw	r24, r18
     20a:	0e 94 dc 00 	call	0x1b8	; 0x1b8 <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberVs5Int32_T_>
     20e:	08 95       	ret

00000210 <_TF3AVR5printFT7tinyIntVs4Int8_T_>:
     210:	68 2f       	mov	r22, r24
     212:	78 2f       	mov	r23, r24
     214:	77 0f       	add	r23, r23
     216:	77 0b       	sbc	r23, r23
     218:	cb 01       	movw	r24, r22
     21a:	95 95       	asr	r25
     21c:	87 95       	ror	r24
     21e:	95 95       	asr	r25
     220:	87 95       	ror	r24
     222:	95 95       	asr	r25
     224:	87 95       	ror	r24
     226:	95 95       	asr	r25
     228:	87 95       	ror	r24
     22a:	95 95       	asr	r25
     22c:	87 95       	ror	r24
     22e:	95 95       	asr	r25
     230:	87 95       	ror	r24
     232:	95 95       	asr	r25
     234:	87 95       	ror	r24
     236:	95 95       	asr	r25
     238:	87 95       	ror	r24
     23a:	95 95       	asr	r25
     23c:	87 95       	ror	r24
     23e:	95 95       	asr	r25
     240:	87 95       	ror	r24
     242:	95 95       	asr	r25
     244:	87 95       	ror	r24
     246:	95 95       	asr	r25
     248:	87 95       	ror	r24
     24a:	95 95       	asr	r25
     24c:	87 95       	ror	r24
     24e:	95 95       	asr	r25
     250:	87 95       	ror	r24
     252:	95 95       	asr	r25
     254:	87 95       	ror	r24
     256:	0e 94 dc 00 	call	0x1b8	; 0x1b8 <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberVs5Int32_T_>
     25a:	08 95       	ret

0000025c <_TF3AVR5printFT11unsignedIntVs6UInt16_T_>:
     25c:	20 e0       	ldi	r18, 0x00	; 0
     25e:	30 e0       	ldi	r19, 0x00	; 0
     260:	bc 01       	movw	r22, r24
     262:	c9 01       	movw	r24, r18
     264:	0e 94 dc 00 	call	0x1b8	; 0x1b8 <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberVs5Int32_T_>
     268:	08 95       	ret

0000026a <_TF3AVR5printFT15unsignedTinyIntVs5UInt8_T_>:
     26a:	68 2f       	mov	r22, r24
     26c:	77 27       	eor	r23, r23
     26e:	80 e0       	ldi	r24, 0x00	; 0
     270:	90 e0       	ldi	r25, 0x00	; 0
     272:	0e 94 dc 00 	call	0x1b8	; 0x1b8 <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberVs5Int32_T_>
     276:	08 95       	ret

00000278 <_TF3AVR9availableFT_Sb>:
     278:	0e 94 eb 02 	call	0x5d6	; 0x5d6 <_available>
     27c:	08 95       	ret

0000027e <_TF3AVR4readFT_Vs5UInt8>:
     27e:	0e 94 f6 02 	call	0x5ec	; 0x5ec <_receiveByte>
     282:	08 95       	ret

00000284 <pinMask>:
     284:	88 30       	cpi	r24, 0x08	; 8
     286:	60 f0       	brcs	.+24     	; 0x2a0 <pinMask+0x1c>
     288:	8e 30       	cpi	r24, 0x0E	; 14
     28a:	40 f4       	brcc	.+16     	; 0x29c <pinMask+0x18>
     28c:	98 ef       	ldi	r25, 0xF8	; 248
     28e:	98 0f       	add	r25, r24
     290:	81 e0       	ldi	r24, 0x01	; 1
     292:	01 c0       	rjmp	.+2      	; 0x296 <pinMask+0x12>
     294:	88 0f       	add	r24, r24
     296:	9a 95       	dec	r25
     298:	ea f7       	brpl	.-6      	; 0x294 <pinMask+0x10>
     29a:	08 95       	ret
     29c:	80 e0       	ldi	r24, 0x00	; 0
     29e:	08 95       	ret
     2a0:	91 e0       	ldi	r25, 0x01	; 1
     2a2:	01 c0       	rjmp	.+2      	; 0x2a6 <pinMask+0x22>
     2a4:	99 0f       	add	r25, r25
     2a6:	8a 95       	dec	r24
     2a8:	ea f7       	brpl	.-6      	; 0x2a4 <pinMask+0x20>
     2aa:	89 2f       	mov	r24, r25
     2ac:	08 95       	ret

000002ae <_digitalRead>:
     2ae:	cf 93       	push	r28
     2b0:	c8 2f       	mov	r28, r24
     2b2:	0e 94 42 01 	call	0x284	; 0x284 <pinMask>
     2b6:	88 23       	and	r24, r24
     2b8:	31 f0       	breq	.+12     	; 0x2c6 <_digitalRead+0x18>
     2ba:	c8 30       	cpi	r28, 0x08	; 8
     2bc:	38 f0       	brcs	.+14     	; 0x2cc <_digitalRead+0x1e>
     2be:	93 b1       	in	r25, 0x03	; 3
     2c0:	98 23       	and	r25, r24
     2c2:	81 e0       	ldi	r24, 0x01	; 1
     2c4:	09 f4       	brne	.+2      	; 0x2c8 <_digitalRead+0x1a>
     2c6:	80 e0       	ldi	r24, 0x00	; 0
     2c8:	cf 91       	pop	r28
     2ca:	08 95       	ret
     2cc:	99 b1       	in	r25, 0x09	; 9
     2ce:	98 23       	and	r25, r24
     2d0:	81 e0       	ldi	r24, 0x01	; 1
     2d2:	c9 f3       	breq	.-14     	; 0x2c6 <_digitalRead+0x18>
     2d4:	cf 91       	pop	r28
     2d6:	08 95       	ret

000002d8 <resetPortD>:
     2d8:	0e 94 42 01 	call	0x284	; 0x284 <pinMask>
     2dc:	88 23       	and	r24, r24
     2de:	21 f0       	breq	.+8      	; 0x2e8 <resetPortD+0x10>
     2e0:	9b b1       	in	r25, 0x0b	; 11
     2e2:	80 95       	com	r24
     2e4:	89 23       	and	r24, r25
     2e6:	8b b9       	out	0x0b, r24	; 11
     2e8:	08 95       	ret

000002ea <resetPortB>:
     2ea:	0e 94 42 01 	call	0x284	; 0x284 <pinMask>
     2ee:	88 23       	and	r24, r24
     2f0:	21 f0       	breq	.+8      	; 0x2fa <resetPortB+0x10>
     2f2:	95 b1       	in	r25, 0x05	; 5
     2f4:	80 95       	com	r24
     2f6:	89 23       	and	r24, r25
     2f8:	85 b9       	out	0x05, r24	; 5
     2fa:	08 95       	ret

000002fc <setPortD>:
     2fc:	0e 94 42 01 	call	0x284	; 0x284 <pinMask>
     300:	88 23       	and	r24, r24
     302:	19 f0       	breq	.+6      	; 0x30a <setPortD+0xe>
     304:	9b b1       	in	r25, 0x0b	; 11
     306:	89 2b       	or	r24, r25
     308:	8b b9       	out	0x0b, r24	; 11
     30a:	08 95       	ret

0000030c <setPortB>:
     30c:	0e 94 42 01 	call	0x284	; 0x284 <pinMask>
     310:	88 23       	and	r24, r24
     312:	19 f0       	breq	.+6      	; 0x31a <setPortB+0xe>
     314:	95 b1       	in	r25, 0x05	; 5
     316:	89 2b       	or	r24, r25
     318:	85 b9       	out	0x05, r24	; 5
     31a:	08 95       	ret

0000031c <_digitalWrite>:
     31c:	66 23       	and	r22, r22
     31e:	21 f0       	breq	.+8      	; 0x328 <_digitalWrite+0xc>
     320:	88 30       	cpi	r24, 0x08	; 8
     322:	30 f4       	brcc	.+12     	; 0x330 <_digitalWrite+0x14>
     324:	0c 94 7e 01 	jmp	0x2fc	; 0x2fc <setPortD>
     328:	88 30       	cpi	r24, 0x08	; 8
     32a:	20 f0       	brcs	.+8      	; 0x334 <_digitalWrite+0x18>
     32c:	0c 94 75 01 	jmp	0x2ea	; 0x2ea <resetPortB>
     330:	0c 94 86 01 	jmp	0x30c	; 0x30c <setPortB>
     334:	0c 94 6c 01 	jmp	0x2d8	; 0x2d8 <resetPortD>

00000338 <enablePortDWrite>:
     338:	0e 94 42 01 	call	0x284	; 0x284 <pinMask>
     33c:	88 23       	and	r24, r24
     33e:	19 f0       	breq	.+6      	; 0x346 <enablePortDWrite+0xe>
     340:	9a b1       	in	r25, 0x0a	; 10
     342:	89 2b       	or	r24, r25
     344:	8a b9       	out	0x0a, r24	; 10
     346:	08 95       	ret

00000348 <enablePortBWrite>:
     348:	0e 94 42 01 	call	0x284	; 0x284 <pinMask>
     34c:	88 23       	and	r24, r24
     34e:	19 f0       	breq	.+6      	; 0x356 <enablePortBWrite+0xe>
     350:	94 b1       	in	r25, 0x04	; 4
     352:	89 2b       	or	r24, r25
     354:	84 b9       	out	0x04, r24	; 4
     356:	08 95       	ret

00000358 <disablePortDWrite>:
     358:	0e 94 42 01 	call	0x284	; 0x284 <pinMask>
     35c:	88 23       	and	r24, r24
     35e:	21 f0       	breq	.+8      	; 0x368 <disablePortDWrite+0x10>
     360:	9a b1       	in	r25, 0x0a	; 10
     362:	80 95       	com	r24
     364:	89 23       	and	r24, r25
     366:	8a b9       	out	0x0a, r24	; 10
     368:	08 95       	ret

0000036a <disablePortBWrite>:
     36a:	0e 94 42 01 	call	0x284	; 0x284 <pinMask>
     36e:	88 23       	and	r24, r24
     370:	21 f0       	breq	.+8      	; 0x37a <disablePortBWrite+0x10>
     372:	94 b1       	in	r25, 0x04	; 4
     374:	80 95       	com	r24
     376:	89 23       	and	r24, r25
     378:	84 b9       	out	0x04, r24	; 4
     37a:	08 95       	ret

0000037c <_pinMode>:
     37c:	66 23       	and	r22, r22
     37e:	51 f0       	breq	.+20     	; 0x394 <_pinMode+0x18>
     380:	88 30       	cpi	r24, 0x08	; 8
     382:	e0 f4       	brcc	.+56     	; 0x3bc <_pinMode+0x40>
     384:	0e 94 42 01 	call	0x284	; 0x284 <pinMask>
     388:	88 23       	and	r24, r24
     38a:	b9 f0       	breq	.+46     	; 0x3ba <_pinMode+0x3e>
     38c:	9a b1       	in	r25, 0x0a	; 10
     38e:	89 2b       	or	r24, r25
     390:	8a b9       	out	0x0a, r24	; 10
     392:	08 95       	ret
     394:	88 30       	cpi	r24, 0x08	; 8
     396:	48 f4       	brcc	.+18     	; 0x3aa <_pinMode+0x2e>
     398:	0e 94 42 01 	call	0x284	; 0x284 <pinMask>
     39c:	88 23       	and	r24, r24
     39e:	69 f0       	breq	.+26     	; 0x3ba <_pinMode+0x3e>
     3a0:	9a b1       	in	r25, 0x0a	; 10
     3a2:	80 95       	com	r24
     3a4:	89 23       	and	r24, r25
     3a6:	8a b9       	out	0x0a, r24	; 10
     3a8:	08 95       	ret
     3aa:	0e 94 42 01 	call	0x284	; 0x284 <pinMask>
     3ae:	88 23       	and	r24, r24
     3b0:	21 f0       	breq	.+8      	; 0x3ba <_pinMode+0x3e>
     3b2:	94 b1       	in	r25, 0x04	; 4
     3b4:	80 95       	com	r24
     3b6:	89 23       	and	r24, r25
     3b8:	84 b9       	out	0x04, r24	; 4
     3ba:	08 95       	ret
     3bc:	0e 94 42 01 	call	0x284	; 0x284 <pinMask>
     3c0:	88 23       	and	r24, r24
     3c2:	d9 f3       	breq	.-10     	; 0x3ba <_pinMode+0x3e>
     3c4:	94 b1       	in	r25, 0x04	; 4
     3c6:	89 2b       	or	r24, r25
     3c8:	84 b9       	out	0x04, r24	; 4
     3ca:	08 95       	ret

000003cc <_delayMs>:
     3cc:	00 97       	sbiw	r24, 0x00	; 0
     3ce:	61 f0       	breq	.+24     	; 0x3e8 <_delayMs+0x1c>
     3d0:	20 e0       	ldi	r18, 0x00	; 0
     3d2:	30 e0       	ldi	r19, 0x00	; 0
     3d4:	40 ea       	ldi	r20, 0xA0	; 160
     3d6:	5f e0       	ldi	r21, 0x0F	; 15
     3d8:	fa 01       	movw	r30, r20
     3da:	31 97       	sbiw	r30, 0x01	; 1
     3dc:	f1 f7       	brne	.-4      	; 0x3da <_delayMs+0xe>
     3de:	2f 5f       	subi	r18, 0xFF	; 255
     3e0:	3f 4f       	sbci	r19, 0xFF	; 255
     3e2:	82 17       	cp	r24, r18
     3e4:	93 07       	cpc	r25, r19
     3e6:	c1 f7       	brne	.-16     	; 0x3d8 <_delayMs+0xc>
     3e8:	08 95       	ret

000003ea <_ticks>:
     3ea:	80 91 1b 01 	lds	r24, 0x011B	; 0x80011b <t0Overflow>
     3ee:	90 91 1c 01 	lds	r25, 0x011C	; 0x80011c <t0Overflow+0x1>
     3f2:	08 95       	ret

000003f4 <_stringAddCharacter>:
     3f4:	e0 91 2c 01 	lds	r30, 0x012C	; 0x80012c <stringBufferEnd>
     3f8:	ef 37       	cpi	r30, 0x7F	; 127
     3fa:	91 f0       	breq	.+36     	; 0x420 <__FUSE_REGION_LENGTH__+0x20>
     3fc:	91 e0       	ldi	r25, 0x01	; 1
     3fe:	9e 0f       	add	r25, r30
     400:	90 93 2c 01 	sts	0x012C, r25	; 0x80012c <stringBufferEnd>
     404:	0e 2e       	mov	r0, r30
     406:	00 0c       	add	r0, r0
     408:	ff 0b       	sbc	r31, r31
     40a:	e3 5d       	subi	r30, 0xD3	; 211
     40c:	fe 4f       	sbci	r31, 0xFE	; 254
     40e:	80 83       	st	Z, r24
     410:	e9 2f       	mov	r30, r25
     412:	99 0f       	add	r25, r25
     414:	ff 0b       	sbc	r31, r31
     416:	e3 5d       	subi	r30, 0xD3	; 211
     418:	fe 4f       	sbci	r31, 0xFE	; 254
     41a:	10 82       	st	Z, r1
     41c:	81 e0       	ldi	r24, 0x01	; 1
     41e:	08 95       	ret
     420:	80 e0       	ldi	r24, 0x00	; 0
     422:	08 95       	ret

00000424 <_stringStartNew>:
     424:	10 92 2c 01 	sts	0x012C, r1	; 0x80012c <stringBufferEnd>
     428:	10 92 2d 01 	sts	0x012D, r1	; 0x80012d <stringBuffer>
     42c:	08 95       	ret

0000042e <_stringCurrentValue>:
     42e:	8d e2       	ldi	r24, 0x2D	; 45
     430:	91 e0       	ldi	r25, 0x01	; 1
     432:	08 95       	ret

00000434 <_numberToString>:
     434:	9f 93       	push	r25
     436:	8f 93       	push	r24
     438:	7f 93       	push	r23
     43a:	6f 93       	push	r22
     43c:	83 e1       	ldi	r24, 0x13	; 19
     43e:	91 e0       	ldi	r25, 0x01	; 1
     440:	9f 93       	push	r25
     442:	8f 93       	push	r24
     444:	1f 92       	push	r1
     446:	8f e0       	ldi	r24, 0x0F	; 15
     448:	8f 93       	push	r24
     44a:	8d e1       	ldi	r24, 0x1D	; 29
     44c:	91 e0       	ldi	r25, 0x01	; 1
     44e:	9f 93       	push	r25
     450:	8f 93       	push	r24
     452:	0e 94 09 05 	call	0xa12	; 0xa12 <snprintf>
     456:	8d b7       	in	r24, 0x3d	; 61
     458:	9e b7       	in	r25, 0x3e	; 62
     45a:	0a 96       	adiw	r24, 0x0a	; 10
     45c:	0f b6       	in	r0, 0x3f	; 63
     45e:	f8 94       	cli
     460:	9e bf       	out	0x3e, r25	; 62
     462:	0f be       	out	0x3f, r0	; 63
     464:	8d bf       	out	0x3d, r24	; 61
     466:	8d e1       	ldi	r24, 0x1D	; 29
     468:	91 e0       	ldi	r25, 0x01	; 1
     46a:	08 95       	ret

0000046c <__vector_16>:
     46c:	1f 92       	push	r1
     46e:	0f 92       	push	r0
     470:	0f b6       	in	r0, 0x3f	; 63
     472:	0f 92       	push	r0
     474:	11 24       	eor	r1, r1
     476:	8f 93       	push	r24
     478:	9f 93       	push	r25
     47a:	80 91 1b 01 	lds	r24, 0x011B	; 0x80011b <t0Overflow>
     47e:	90 91 1c 01 	lds	r25, 0x011C	; 0x80011c <t0Overflow+0x1>
     482:	01 96       	adiw	r24, 0x01	; 1
     484:	90 93 1c 01 	sts	0x011C, r25	; 0x80011c <t0Overflow+0x1>
     488:	80 93 1b 01 	sts	0x011B, r24	; 0x80011b <t0Overflow>
     48c:	9f 91       	pop	r25
     48e:	8f 91       	pop	r24
     490:	0f 90       	pop	r0
     492:	0f be       	out	0x3f, r0	; 63
     494:	0f 90       	pop	r0
     496:	1f 90       	pop	r1
     498:	18 95       	reti

0000049a <__vector_18>:
     49a:	1f 92       	push	r1
     49c:	0f 92       	push	r0
     49e:	0f b6       	in	r0, 0x3f	; 63
     4a0:	0f 92       	push	r0
     4a2:	11 24       	eor	r1, r1
     4a4:	2f 93       	push	r18
     4a6:	8f 93       	push	r24
     4a8:	9f 93       	push	r25
     4aa:	ef 93       	push	r30
     4ac:	ff 93       	push	r31
     4ae:	80 91 ad 01 	lds	r24, 0x01AD	; 0x8001ad <bufferFull>
     4b2:	81 11       	cpse	r24, r1
     4b4:	1e c0       	rjmp	.+60     	; 0x4f2 <__vector_18+0x58>
     4b6:	e0 91 ae 01 	lds	r30, 0x01AE	; 0x8001ae <ringBufferEnd>
     4ba:	81 e0       	ldi	r24, 0x01	; 1
     4bc:	8e 0f       	add	r24, r30
     4be:	80 93 ae 01 	sts	0x01AE, r24	; 0x8001ae <ringBufferEnd>
     4c2:	90 91 c6 00 	lds	r25, 0x00C6	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
     4c6:	0e 2e       	mov	r0, r30
     4c8:	00 0c       	add	r0, r0
     4ca:	ff 0b       	sbc	r31, r31
     4cc:	e0 55       	subi	r30, 0x50	; 80
     4ce:	fe 4f       	sbci	r31, 0xFE	; 254
     4d0:	90 83       	st	Z, r25
     4d2:	08 2e       	mov	r0, r24
     4d4:	00 0c       	add	r0, r0
     4d6:	99 0b       	sbc	r25, r25
     4d8:	8f 77       	andi	r24, 0x7F	; 127
     4da:	90 78       	andi	r25, 0x80	; 128
     4dc:	97 fd       	sbrc	r25, 7
     4de:	13 c0       	rjmp	.+38     	; 0x506 <__vector_18+0x6c>
     4e0:	80 93 ae 01 	sts	0x01AE, r24	; 0x8001ae <ringBufferEnd>
     4e4:	91 e0       	ldi	r25, 0x01	; 1
     4e6:	20 91 af 01 	lds	r18, 0x01AF	; 0x8001af <ringBufferStart>
     4ea:	28 13       	cpse	r18, r24
     4ec:	90 e0       	ldi	r25, 0x00	; 0
     4ee:	90 93 ad 01 	sts	0x01AD, r25	; 0x8001ad <bufferFull>
     4f2:	ff 91       	pop	r31
     4f4:	ef 91       	pop	r30
     4f6:	9f 91       	pop	r25
     4f8:	8f 91       	pop	r24
     4fa:	2f 91       	pop	r18
     4fc:	0f 90       	pop	r0
     4fe:	0f be       	out	0x3f, r0	; 63
     500:	0f 90       	pop	r0
     502:	1f 90       	pop	r1
     504:	18 95       	reti
     506:	01 97       	sbiw	r24, 0x01	; 1
     508:	80 68       	ori	r24, 0x80	; 128
     50a:	9f 6f       	ori	r25, 0xFF	; 255
     50c:	01 96       	adiw	r24, 0x01	; 1
     50e:	80 93 ae 01 	sts	0x01AE, r24	; 0x8001ae <ringBufferEnd>
     512:	91 e0       	ldi	r25, 0x01	; 1
     514:	20 91 af 01 	lds	r18, 0x01AF	; 0x8001af <ringBufferStart>
     518:	28 13       	cpse	r18, r24
     51a:	e8 cf       	rjmp	.-48     	; 0x4ec <__vector_18+0x52>
     51c:	e8 cf       	rjmp	.-48     	; 0x4ee <__vector_18+0x54>

0000051e <_setupSerial>:
     51e:	9c 01       	movw	r18, r24
     520:	99 0f       	add	r25, r25
     522:	44 0b       	sbc	r20, r20
     524:	55 0b       	sbc	r21, r21
     526:	22 0f       	add	r18, r18
     528:	33 1f       	adc	r19, r19
     52a:	44 1f       	adc	r20, r20
     52c:	55 1f       	adc	r21, r21
     52e:	22 0f       	add	r18, r18
     530:	33 1f       	adc	r19, r19
     532:	44 1f       	adc	r20, r20
     534:	55 1f       	adc	r21, r21
     536:	22 0f       	add	r18, r18
     538:	33 1f       	adc	r19, r19
     53a:	44 1f       	adc	r20, r20
     53c:	55 1f       	adc	r21, r21
     53e:	22 0f       	add	r18, r18
     540:	33 1f       	adc	r19, r19
     542:	44 1f       	adc	r20, r20
     544:	55 1f       	adc	r21, r21
     546:	60 e0       	ldi	r22, 0x00	; 0
     548:	74 e2       	ldi	r23, 0x24	; 36
     54a:	84 ef       	ldi	r24, 0xF4	; 244
     54c:	90 e0       	ldi	r25, 0x00	; 0
     54e:	0e 94 da 04 	call	0x9b4	; 0x9b4 <__udivmodsi4>
     552:	ba 01       	movw	r22, r20
     554:	a9 01       	movw	r20, r18
     556:	41 50       	subi	r20, 0x01	; 1
     558:	51 09       	sbc	r21, r1
     55a:	61 09       	sbc	r22, r1
     55c:	71 09       	sbc	r23, r1
     55e:	bb 27       	eor	r27, r27
     560:	77 fd       	sbrc	r23, 7
     562:	ba 95       	dec	r27
     564:	a7 2f       	mov	r26, r23
     566:	96 2f       	mov	r25, r22
     568:	85 2f       	mov	r24, r21
     56a:	80 93 c5 00 	sts	0x00C5, r24	; 0x8000c5 <__TEXT_REGION_LENGTH__+0x7e00c5>
     56e:	40 93 c4 00 	sts	0x00C4, r20	; 0x8000c4 <__TEXT_REGION_LENGTH__+0x7e00c4>
     572:	e2 ec       	ldi	r30, 0xC2	; 194
     574:	f0 e0       	ldi	r31, 0x00	; 0
     576:	80 81       	ld	r24, Z
     578:	86 60       	ori	r24, 0x06	; 6
     57a:	80 83       	st	Z, r24
     57c:	e1 ec       	ldi	r30, 0xC1	; 193
     57e:	f0 e0       	ldi	r31, 0x00	; 0
     580:	80 81       	ld	r24, Z
     582:	88 69       	ori	r24, 0x98	; 152
     584:	80 83       	st	Z, r24
     586:	78 94       	sei
     588:	08 95       	ret

0000058a <_sendByte>:
     58a:	90 91 c0 00 	lds	r25, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
     58e:	95 ff       	sbrs	r25, 5
     590:	fc cf       	rjmp	.-8      	; 0x58a <_sendByte>
     592:	80 93 c6 00 	sts	0x00C6, r24	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
     596:	08 95       	ret

00000598 <_sendString>:
     598:	fc 01       	movw	r30, r24
     59a:	24 91       	lpm	r18, Z
     59c:	22 23       	and	r18, r18
     59e:	59 f0       	breq	.+22     	; 0x5b6 <_sendString+0x1e>
     5a0:	31 96       	adiw	r30, 0x01	; 1
     5a2:	90 91 c0 00 	lds	r25, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
     5a6:	95 ff       	sbrs	r25, 5
     5a8:	fc cf       	rjmp	.-8      	; 0x5a2 <_sendString+0xa>
     5aa:	20 93 c6 00 	sts	0x00C6, r18	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
     5ae:	24 91       	lpm	r18, Z
     5b0:	31 96       	adiw	r30, 0x01	; 1
     5b2:	21 11       	cpse	r18, r1
     5b4:	f6 cf       	rjmp	.-20     	; 0x5a2 <_sendString+0xa>
     5b6:	08 95       	ret

000005b8 <_sendBuffer>:
     5b8:	fc 01       	movw	r30, r24
     5ba:	20 81       	ld	r18, Z
     5bc:	22 23       	and	r18, r18
     5be:	51 f0       	breq	.+20     	; 0x5d4 <_sendBuffer+0x1c>
     5c0:	31 96       	adiw	r30, 0x01	; 1
     5c2:	90 91 c0 00 	lds	r25, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
     5c6:	95 ff       	sbrs	r25, 5
     5c8:	fc cf       	rjmp	.-8      	; 0x5c2 <_sendBuffer+0xa>
     5ca:	20 93 c6 00 	sts	0x00C6, r18	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
     5ce:	21 91       	ld	r18, Z+
     5d0:	21 11       	cpse	r18, r1
     5d2:	f7 cf       	rjmp	.-18     	; 0x5c2 <_sendBuffer+0xa>
     5d4:	08 95       	ret

000005d6 <_available>:
     5d6:	90 91 af 01 	lds	r25, 0x01AF	; 0x8001af <ringBufferStart>
     5da:	80 91 ae 01 	lds	r24, 0x01AE	; 0x8001ae <ringBufferEnd>
     5de:	98 17       	cp	r25, r24
     5e0:	11 f0       	breq	.+4      	; 0x5e6 <_available+0x10>
     5e2:	81 e0       	ldi	r24, 0x01	; 1
     5e4:	08 95       	ret
     5e6:	80 91 ad 01 	lds	r24, 0x01AD	; 0x8001ad <bufferFull>
     5ea:	08 95       	ret

000005ec <_receiveByte>:
     5ec:	20 91 ad 01 	lds	r18, 0x01AD	; 0x8001ad <bufferFull>
     5f0:	90 91 af 01 	lds	r25, 0x01AF	; 0x8001af <ringBufferStart>
     5f4:	80 91 ae 01 	lds	r24, 0x01AE	; 0x8001ae <ringBufferEnd>
     5f8:	98 17       	cp	r25, r24
     5fa:	91 f0       	breq	.+36     	; 0x620 <_receiveByte+0x34>
     5fc:	9f b7       	in	r25, 0x3f	; 63
     5fe:	f8 94       	cli
     600:	e0 91 af 01 	lds	r30, 0x01AF	; 0x8001af <ringBufferStart>
     604:	81 e0       	ldi	r24, 0x01	; 1
     606:	8e 0f       	add	r24, r30
     608:	80 93 af 01 	sts	0x01AF, r24	; 0x8001af <ringBufferStart>
     60c:	0e 2e       	mov	r0, r30
     60e:	00 0c       	add	r0, r0
     610:	ff 0b       	sbc	r31, r31
     612:	e0 55       	subi	r30, 0x50	; 80
     614:	fe 4f       	sbci	r31, 0xFE	; 254
     616:	80 81       	ld	r24, Z
     618:	10 92 ad 01 	sts	0x01AD, r1	; 0x8001ad <bufferFull>
     61c:	9f bf       	out	0x3f, r25	; 63
     61e:	08 95       	ret
     620:	21 11       	cpse	r18, r1
     622:	ec cf       	rjmp	.-40     	; 0x5fc <_receiveByte+0x10>
     624:	ff cf       	rjmp	.-2      	; 0x624 <_receiveByte+0x38>

00000626 <_analogWrite>:
     626:	cf 93       	push	r28
     628:	df 93       	push	r29
     62a:	c8 2f       	mov	r28, r24
     62c:	d6 2f       	mov	r29, r22
     62e:	60 91 10 01 	lds	r22, 0x0110	; 0x800110 <_OUTPUT>
     632:	0e 94 be 01 	call	0x37c	; 0x37c <_pinMode>
     636:	c6 30       	cpi	r28, 0x06	; 6
     638:	09 f4       	brne	.+2      	; 0x63c <_analogWrite+0x16>
     63a:	5b c0       	rjmp	.+182    	; 0x6f2 <_analogWrite+0xcc>
     63c:	50 f0       	brcs	.+20     	; 0x652 <_analogWrite+0x2c>
     63e:	ca 30       	cpi	r28, 0x0A	; 10
     640:	b9 f0       	breq	.+46     	; 0x670 <_analogWrite+0x4a>
     642:	cb 30       	cpi	r28, 0x0B	; 11
     644:	09 f4       	brne	.+2      	; 0x648 <_analogWrite+0x22>
     646:	46 c0       	rjmp	.+140    	; 0x6d4 <_analogWrite+0xae>
     648:	c9 30       	cpi	r28, 0x09	; 9
     64a:	21 f1       	breq	.+72     	; 0x694 <_analogWrite+0x6e>
     64c:	df 91       	pop	r29
     64e:	cf 91       	pop	r28
     650:	08 95       	ret
     652:	c3 30       	cpi	r28, 0x03	; 3
     654:	89 f1       	breq	.+98     	; 0x6b8 <_analogWrite+0x92>
     656:	c5 30       	cpi	r28, 0x05	; 5
     658:	c9 f7       	brne	.-14     	; 0x64c <_analogWrite+0x26>
     65a:	84 b5       	in	r24, 0x24	; 36
     65c:	dd 23       	and	r29, r29
     65e:	09 f4       	brne	.+2      	; 0x662 <_analogWrite+0x3c>
     660:	52 c0       	rjmp	.+164    	; 0x706 <_analogWrite+0xe0>
     662:	df 3f       	cpi	r29, 0xFF	; 255
     664:	09 f4       	brne	.+2      	; 0x668 <_analogWrite+0x42>
     666:	9e c0       	rjmp	.+316    	; 0x7a4 <_analogWrite+0x17e>
     668:	80 62       	ori	r24, 0x20	; 32
     66a:	84 bd       	out	0x24, r24	; 36
     66c:	d8 bd       	out	0x28, r29	; 40
     66e:	ee cf       	rjmp	.-36     	; 0x64c <_analogWrite+0x26>
     670:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     674:	dd 23       	and	r29, r29
     676:	09 f4       	brne	.+2      	; 0x67a <_analogWrite+0x54>
     678:	7b c0       	rjmp	.+246    	; 0x770 <_analogWrite+0x14a>
     67a:	df 3f       	cpi	r29, 0xFF	; 255
     67c:	09 f4       	brne	.+2      	; 0x680 <_analogWrite+0x5a>
     67e:	85 c0       	rjmp	.+266    	; 0x78a <_analogWrite+0x164>
     680:	80 62       	ori	r24, 0x20	; 32
     682:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     686:	6d 2f       	mov	r22, r29
     688:	70 e0       	ldi	r23, 0x00	; 0
     68a:	70 93 8b 00 	sts	0x008B, r23	; 0x80008b <__TEXT_REGION_LENGTH__+0x7e008b>
     68e:	60 93 8a 00 	sts	0x008A, r22	; 0x80008a <__TEXT_REGION_LENGTH__+0x7e008a>
     692:	dc cf       	rjmp	.-72     	; 0x64c <_analogWrite+0x26>
     694:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     698:	dd 23       	and	r29, r29
     69a:	09 f4       	brne	.+2      	; 0x69e <_analogWrite+0x78>
     69c:	5c c0       	rjmp	.+184    	; 0x756 <_analogWrite+0x130>
     69e:	df 3f       	cpi	r29, 0xFF	; 255
     6a0:	09 f4       	brne	.+2      	; 0x6a4 <_analogWrite+0x7e>
     6a2:	94 c0       	rjmp	.+296    	; 0x7cc <_analogWrite+0x1a6>
     6a4:	80 68       	ori	r24, 0x80	; 128
     6a6:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     6aa:	6d 2f       	mov	r22, r29
     6ac:	70 e0       	ldi	r23, 0x00	; 0
     6ae:	70 93 89 00 	sts	0x0089, r23	; 0x800089 <__TEXT_REGION_LENGTH__+0x7e0089>
     6b2:	60 93 88 00 	sts	0x0088, r22	; 0x800088 <__TEXT_REGION_LENGTH__+0x7e0088>
     6b6:	ca cf       	rjmp	.-108    	; 0x64c <_analogWrite+0x26>
     6b8:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     6bc:	dd 23       	and	r29, r29
     6be:	09 f4       	brne	.+2      	; 0x6c2 <_analogWrite+0x9c>
     6c0:	3f c0       	rjmp	.+126    	; 0x740 <_analogWrite+0x11a>
     6c2:	df 3f       	cpi	r29, 0xFF	; 255
     6c4:	09 f4       	brne	.+2      	; 0x6c8 <_analogWrite+0xa2>
     6c6:	77 c0       	rjmp	.+238    	; 0x7b6 <_analogWrite+0x190>
     6c8:	80 62       	ori	r24, 0x20	; 32
     6ca:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     6ce:	d0 93 b4 00 	sts	0x00B4, r29	; 0x8000b4 <__TEXT_REGION_LENGTH__+0x7e00b4>
     6d2:	bc cf       	rjmp	.-136    	; 0x64c <_analogWrite+0x26>
     6d4:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     6d8:	dd 23       	and	r29, r29
     6da:	39 f1       	breq	.+78     	; 0x72a <_analogWrite+0x104>
     6dc:	df 3f       	cpi	r29, 0xFF	; 255
     6de:	09 f4       	brne	.+2      	; 0x6e2 <_analogWrite+0xbc>
     6e0:	8b c0       	rjmp	.+278    	; 0x7f8 <_analogWrite+0x1d2>
     6e2:	80 68       	ori	r24, 0x80	; 128
     6e4:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     6e8:	d0 93 b3 00 	sts	0x00B3, r29	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
     6ec:	df 91       	pop	r29
     6ee:	cf 91       	pop	r28
     6f0:	08 95       	ret
     6f2:	84 b5       	in	r24, 0x24	; 36
     6f4:	dd 23       	and	r29, r29
     6f6:	81 f0       	breq	.+32     	; 0x718 <_analogWrite+0xf2>
     6f8:	df 3f       	cpi	r29, 0xFF	; 255
     6fa:	09 f4       	brne	.+2      	; 0x6fe <_analogWrite+0xd8>
     6fc:	74 c0       	rjmp	.+232    	; 0x7e6 <_analogWrite+0x1c0>
     6fe:	80 68       	ori	r24, 0x80	; 128
     700:	84 bd       	out	0x24, r24	; 36
     702:	d7 bd       	out	0x27, r29	; 39
     704:	a3 cf       	rjmp	.-186    	; 0x64c <_analogWrite+0x26>
     706:	8f 7d       	andi	r24, 0xDF	; 223
     708:	84 bd       	out	0x24, r24	; 36
     70a:	60 91 11 01 	lds	r22, 0x0111	; 0x800111 <_LOW>
     70e:	85 e0       	ldi	r24, 0x05	; 5
     710:	0e 94 8e 01 	call	0x31c	; 0x31c <_digitalWrite>
     714:	18 bc       	out	0x28, r1	; 40
     716:	9a cf       	rjmp	.-204    	; 0x64c <_analogWrite+0x26>
     718:	8f 77       	andi	r24, 0x7F	; 127
     71a:	84 bd       	out	0x24, r24	; 36
     71c:	60 91 11 01 	lds	r22, 0x0111	; 0x800111 <_LOW>
     720:	86 e0       	ldi	r24, 0x06	; 6
     722:	0e 94 8e 01 	call	0x31c	; 0x31c <_digitalWrite>
     726:	17 bc       	out	0x27, r1	; 39
     728:	91 cf       	rjmp	.-222    	; 0x64c <_analogWrite+0x26>
     72a:	8f 77       	andi	r24, 0x7F	; 127
     72c:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     730:	60 91 11 01 	lds	r22, 0x0111	; 0x800111 <_LOW>
     734:	8b e0       	ldi	r24, 0x0B	; 11
     736:	0e 94 8e 01 	call	0x31c	; 0x31c <_digitalWrite>
     73a:	10 92 b3 00 	sts	0x00B3, r1	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
     73e:	86 cf       	rjmp	.-244    	; 0x64c <_analogWrite+0x26>
     740:	8f 7d       	andi	r24, 0xDF	; 223
     742:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     746:	60 91 11 01 	lds	r22, 0x0111	; 0x800111 <_LOW>
     74a:	83 e0       	ldi	r24, 0x03	; 3
     74c:	0e 94 8e 01 	call	0x31c	; 0x31c <_digitalWrite>
     750:	10 92 b4 00 	sts	0x00B4, r1	; 0x8000b4 <__TEXT_REGION_LENGTH__+0x7e00b4>
     754:	7b cf       	rjmp	.-266    	; 0x64c <_analogWrite+0x26>
     756:	8f 77       	andi	r24, 0x7F	; 127
     758:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     75c:	60 91 11 01 	lds	r22, 0x0111	; 0x800111 <_LOW>
     760:	89 e0       	ldi	r24, 0x09	; 9
     762:	0e 94 8e 01 	call	0x31c	; 0x31c <_digitalWrite>
     766:	10 92 89 00 	sts	0x0089, r1	; 0x800089 <__TEXT_REGION_LENGTH__+0x7e0089>
     76a:	10 92 88 00 	sts	0x0088, r1	; 0x800088 <__TEXT_REGION_LENGTH__+0x7e0088>
     76e:	6e cf       	rjmp	.-292    	; 0x64c <_analogWrite+0x26>
     770:	8f 7d       	andi	r24, 0xDF	; 223
     772:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     776:	60 91 11 01 	lds	r22, 0x0111	; 0x800111 <_LOW>
     77a:	8a e0       	ldi	r24, 0x0A	; 10
     77c:	0e 94 8e 01 	call	0x31c	; 0x31c <_digitalWrite>
     780:	10 92 8b 00 	sts	0x008B, r1	; 0x80008b <__TEXT_REGION_LENGTH__+0x7e008b>
     784:	10 92 8a 00 	sts	0x008A, r1	; 0x80008a <__TEXT_REGION_LENGTH__+0x7e008a>
     788:	61 cf       	rjmp	.-318    	; 0x64c <_analogWrite+0x26>
     78a:	8f 7d       	andi	r24, 0xDF	; 223
     78c:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     790:	60 91 12 01 	lds	r22, 0x0112	; 0x800112 <_HIGH>
     794:	8a e0       	ldi	r24, 0x0A	; 10
     796:	0e 94 8e 01 	call	0x31c	; 0x31c <_digitalWrite>
     79a:	10 92 8b 00 	sts	0x008B, r1	; 0x80008b <__TEXT_REGION_LENGTH__+0x7e008b>
     79e:	10 92 8a 00 	sts	0x008A, r1	; 0x80008a <__TEXT_REGION_LENGTH__+0x7e008a>
     7a2:	54 cf       	rjmp	.-344    	; 0x64c <_analogWrite+0x26>
     7a4:	8f 7d       	andi	r24, 0xDF	; 223
     7a6:	84 bd       	out	0x24, r24	; 36
     7a8:	60 91 12 01 	lds	r22, 0x0112	; 0x800112 <_HIGH>
     7ac:	85 e0       	ldi	r24, 0x05	; 5
     7ae:	0e 94 8e 01 	call	0x31c	; 0x31c <_digitalWrite>
     7b2:	18 bc       	out	0x28, r1	; 40
     7b4:	4b cf       	rjmp	.-362    	; 0x64c <_analogWrite+0x26>
     7b6:	8f 7d       	andi	r24, 0xDF	; 223
     7b8:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     7bc:	60 91 12 01 	lds	r22, 0x0112	; 0x800112 <_HIGH>
     7c0:	83 e0       	ldi	r24, 0x03	; 3
     7c2:	0e 94 8e 01 	call	0x31c	; 0x31c <_digitalWrite>
     7c6:	10 92 b4 00 	sts	0x00B4, r1	; 0x8000b4 <__TEXT_REGION_LENGTH__+0x7e00b4>
     7ca:	40 cf       	rjmp	.-384    	; 0x64c <_analogWrite+0x26>
     7cc:	8f 77       	andi	r24, 0x7F	; 127
     7ce:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     7d2:	60 91 12 01 	lds	r22, 0x0112	; 0x800112 <_HIGH>
     7d6:	89 e0       	ldi	r24, 0x09	; 9
     7d8:	0e 94 8e 01 	call	0x31c	; 0x31c <_digitalWrite>
     7dc:	10 92 89 00 	sts	0x0089, r1	; 0x800089 <__TEXT_REGION_LENGTH__+0x7e0089>
     7e0:	10 92 88 00 	sts	0x0088, r1	; 0x800088 <__TEXT_REGION_LENGTH__+0x7e0088>
     7e4:	33 cf       	rjmp	.-410    	; 0x64c <_analogWrite+0x26>
     7e6:	8f 77       	andi	r24, 0x7F	; 127
     7e8:	84 bd       	out	0x24, r24	; 36
     7ea:	60 91 12 01 	lds	r22, 0x0112	; 0x800112 <_HIGH>
     7ee:	86 e0       	ldi	r24, 0x06	; 6
     7f0:	0e 94 8e 01 	call	0x31c	; 0x31c <_digitalWrite>
     7f4:	17 bc       	out	0x27, r1	; 39
     7f6:	2a cf       	rjmp	.-428    	; 0x64c <_analogWrite+0x26>
     7f8:	8f 77       	andi	r24, 0x7F	; 127
     7fa:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     7fe:	60 91 12 01 	lds	r22, 0x0112	; 0x800112 <_HIGH>
     802:	8b e0       	ldi	r24, 0x0B	; 11
     804:	0e 94 8e 01 	call	0x31c	; 0x31c <_digitalWrite>
     808:	10 92 b3 00 	sts	0x00B3, r1	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
     80c:	1f cf       	rjmp	.-450    	; 0x64c <_analogWrite+0x26>

0000080e <_startupADC>:
     80e:	87 e8       	ldi	r24, 0x87	; 135
     810:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     814:	8a e0       	ldi	r24, 0x0A	; 10
     816:	90 e0       	ldi	r25, 0x00	; 0
     818:	0e 94 e6 01 	call	0x3cc	; 0x3cc <_delayMs>
     81c:	61 e0       	ldi	r22, 0x01	; 1
     81e:	8d e0       	ldi	r24, 0x0D	; 13
     820:	0e 94 be 01 	call	0x37c	; 0x37c <_pinMode>
     824:	60 e0       	ldi	r22, 0x00	; 0
     826:	8d e0       	ldi	r24, 0x0D	; 13
     828:	0c 94 8e 01 	jmp	0x31c	; 0x31c <_digitalWrite>

0000082c <_slowAnalogRead>:
     82c:	cf 93       	push	r28
     82e:	c8 2f       	mov	r28, r24
     830:	88 30       	cpi	r24, 0x08	; 8
     832:	38 f5       	brcc	.+78     	; 0x882 <_slowAnalogRead+0x56>
     834:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     838:	87 fd       	sbrc	r24, 7
     83a:	0f c0       	rjmp	.+30     	; 0x85a <_slowAnalogRead+0x2e>
     83c:	87 e8       	ldi	r24, 0x87	; 135
     83e:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     842:	8a e0       	ldi	r24, 0x0A	; 10
     844:	90 e0       	ldi	r25, 0x00	; 0
     846:	0e 94 e6 01 	call	0x3cc	; 0x3cc <_delayMs>
     84a:	61 e0       	ldi	r22, 0x01	; 1
     84c:	8d e0       	ldi	r24, 0x0D	; 13
     84e:	0e 94 be 01 	call	0x37c	; 0x37c <_pinMode>
     852:	60 e0       	ldi	r22, 0x00	; 0
     854:	8d e0       	ldi	r24, 0x0D	; 13
     856:	0e 94 8e 01 	call	0x31c	; 0x31c <_digitalWrite>
     85a:	c0 64       	ori	r28, 0x40	; 64
     85c:	c0 93 7c 00 	sts	0x007C, r28	; 0x80007c <__TEXT_REGION_LENGTH__+0x7e007c>
     860:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     864:	80 64       	ori	r24, 0x40	; 64
     866:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     86a:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     86e:	86 fd       	sbrc	r24, 6
     870:	fc cf       	rjmp	.-8      	; 0x86a <_slowAnalogRead+0x3e>
     872:	80 91 78 00 	lds	r24, 0x0078	; 0x800078 <__TEXT_REGION_LENGTH__+0x7e0078>
     876:	20 91 79 00 	lds	r18, 0x0079	; 0x800079 <__TEXT_REGION_LENGTH__+0x7e0079>
     87a:	90 e0       	ldi	r25, 0x00	; 0
     87c:	92 2b       	or	r25, r18
     87e:	cf 91       	pop	r28
     880:	08 95       	ret
     882:	80 e0       	ldi	r24, 0x00	; 0
     884:	90 e0       	ldi	r25, 0x00	; 0
     886:	cf 91       	pop	r28
     888:	08 95       	ret

0000088a <__vector_21>:
     88a:	1f 92       	push	r1
     88c:	0f 92       	push	r0
     88e:	0f b6       	in	r0, 0x3f	; 63
     890:	0f 92       	push	r0
     892:	11 24       	eor	r1, r1
     894:	2f 93       	push	r18
     896:	3f 93       	push	r19
     898:	4f 93       	push	r20
     89a:	5f 93       	push	r21
     89c:	6f 93       	push	r22
     89e:	7f 93       	push	r23
     8a0:	8f 93       	push	r24
     8a2:	9f 93       	push	r25
     8a4:	af 93       	push	r26
     8a6:	bf 93       	push	r27
     8a8:	ef 93       	push	r30
     8aa:	ff 93       	push	r31
     8ac:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     8b0:	87 7f       	andi	r24, 0xF7	; 247
     8b2:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     8b6:	e0 91 33 02 	lds	r30, 0x0233	; 0x800233 <currentCallback>
     8ba:	f0 91 34 02 	lds	r31, 0x0234	; 0x800234 <currentCallback+0x1>
     8be:	30 97       	sbiw	r30, 0x00	; 0
     8c0:	59 f0       	breq	.+22     	; 0x8d8 <__vector_21+0x4e>
     8c2:	80 91 78 00 	lds	r24, 0x0078	; 0x800078 <__TEXT_REGION_LENGTH__+0x7e0078>
     8c6:	20 91 79 00 	lds	r18, 0x0079	; 0x800079 <__TEXT_REGION_LENGTH__+0x7e0079>
     8ca:	90 e0       	ldi	r25, 0x00	; 0
     8cc:	92 2b       	or	r25, r18
     8ce:	09 95       	icall
     8d0:	10 92 34 02 	sts	0x0234, r1	; 0x800234 <currentCallback+0x1>
     8d4:	10 92 33 02 	sts	0x0233, r1	; 0x800233 <currentCallback>
     8d8:	ff 91       	pop	r31
     8da:	ef 91       	pop	r30
     8dc:	bf 91       	pop	r27
     8de:	af 91       	pop	r26
     8e0:	9f 91       	pop	r25
     8e2:	8f 91       	pop	r24
     8e4:	7f 91       	pop	r23
     8e6:	6f 91       	pop	r22
     8e8:	5f 91       	pop	r21
     8ea:	4f 91       	pop	r20
     8ec:	3f 91       	pop	r19
     8ee:	2f 91       	pop	r18
     8f0:	0f 90       	pop	r0
     8f2:	0f be       	out	0x3f, r0	; 63
     8f4:	0f 90       	pop	r0
     8f6:	1f 90       	pop	r1
     8f8:	18 95       	reti

000008fa <_analogReadAsync>:
     8fa:	0f 93       	push	r16
     8fc:	1f 93       	push	r17
     8fe:	cf 93       	push	r28
     900:	df 93       	push	r29
     902:	c8 2f       	mov	r28, r24
     904:	16 2f       	mov	r17, r22
     906:	d7 2f       	mov	r29, r23
     908:	04 2f       	mov	r16, r20
     90a:	88 30       	cpi	r24, 0x08	; 8
     90c:	e8 f4       	brcc	.+58     	; 0x948 <__stack+0x49>
     90e:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     912:	87 fd       	sbrc	r24, 7
     914:	0f c0       	rjmp	.+30     	; 0x934 <__stack+0x35>
     916:	87 e8       	ldi	r24, 0x87	; 135
     918:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     91c:	8a e0       	ldi	r24, 0x0A	; 10
     91e:	90 e0       	ldi	r25, 0x00	; 0
     920:	0e 94 e6 01 	call	0x3cc	; 0x3cc <_delayMs>
     924:	61 e0       	ldi	r22, 0x01	; 1
     926:	8d e0       	ldi	r24, 0x0D	; 13
     928:	0e 94 be 01 	call	0x37c	; 0x37c <_pinMode>
     92c:	60 e0       	ldi	r22, 0x00	; 0
     92e:	8d e0       	ldi	r24, 0x0D	; 13
     930:	0e 94 8e 01 	call	0x31c	; 0x31c <_digitalWrite>
     934:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     938:	86 fd       	sbrc	r24, 6
     93a:	06 c0       	rjmp	.+12     	; 0x948 <__stack+0x49>
     93c:	80 91 33 02 	lds	r24, 0x0233	; 0x800233 <currentCallback>
     940:	90 91 34 02 	lds	r25, 0x0234	; 0x800234 <currentCallback+0x1>
     944:	89 2b       	or	r24, r25
     946:	31 f0       	breq	.+12     	; 0x954 <__stack+0x55>
     948:	80 e0       	ldi	r24, 0x00	; 0
     94a:	df 91       	pop	r29
     94c:	cf 91       	pop	r28
     94e:	1f 91       	pop	r17
     950:	0f 91       	pop	r16
     952:	08 95       	ret
     954:	00 23       	and	r16, r16
     956:	59 f0       	breq	.+22     	; 0x96e <__stack+0x6f>
     958:	81 2f       	mov	r24, r17
     95a:	9d 2f       	mov	r25, r29
     95c:	97 fd       	sbrc	r25, 7
     95e:	15 c0       	rjmp	.+42     	; 0x98a <__stack+0x8b>
     960:	95 95       	asr	r25
     962:	87 95       	ror	r24
     964:	90 93 34 02 	sts	0x0234, r25	; 0x800234 <currentCallback+0x1>
     968:	80 93 33 02 	sts	0x0233, r24	; 0x800233 <currentCallback>
     96c:	04 c0       	rjmp	.+8      	; 0x976 <__stack+0x77>
     96e:	10 93 33 02 	sts	0x0233, r17	; 0x800233 <currentCallback>
     972:	d0 93 34 02 	sts	0x0234, r29	; 0x800234 <currentCallback+0x1>
     976:	c0 64       	ori	r28, 0x40	; 64
     978:	c0 93 7c 00 	sts	0x007C, r28	; 0x80007c <__TEXT_REGION_LENGTH__+0x7e007c>
     97c:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     980:	88 64       	ori	r24, 0x48	; 72
     982:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     986:	81 e0       	ldi	r24, 0x01	; 1
     988:	e0 cf       	rjmp	.-64     	; 0x94a <__stack+0x4b>
     98a:	01 96       	adiw	r24, 0x01	; 1
     98c:	e9 cf       	rjmp	.-46     	; 0x960 <__stack+0x61>

0000098e <startTimers>:
     98e:	83 e0       	ldi	r24, 0x03	; 3
     990:	84 bd       	out	0x24, r24	; 36
     992:	85 bd       	out	0x25, r24	; 37
     994:	91 e0       	ldi	r25, 0x01	; 1
     996:	90 93 80 00 	sts	0x0080, r25	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     99a:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
     99e:	90 93 b0 00 	sts	0x00B0, r25	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     9a2:	84 e0       	ldi	r24, 0x04	; 4
     9a4:	80 93 b1 00 	sts	0x00B1, r24	; 0x8000b1 <__TEXT_REGION_LENGTH__+0x7e00b1>
     9a8:	ee e6       	ldi	r30, 0x6E	; 110
     9aa:	f0 e0       	ldi	r31, 0x00	; 0
     9ac:	80 81       	ld	r24, Z
     9ae:	81 60       	ori	r24, 0x01	; 1
     9b0:	80 83       	st	Z, r24
     9b2:	08 95       	ret

000009b4 <__udivmodsi4>:
     9b4:	a1 e2       	ldi	r26, 0x21	; 33
     9b6:	1a 2e       	mov	r1, r26
     9b8:	aa 1b       	sub	r26, r26
     9ba:	bb 1b       	sub	r27, r27
     9bc:	ea 2f       	mov	r30, r26
     9be:	fb 2f       	mov	r31, r27
     9c0:	0d c0       	rjmp	.+26     	; 0x9dc <__udivmodsi4_ep>

000009c2 <__udivmodsi4_loop>:
     9c2:	aa 1f       	adc	r26, r26
     9c4:	bb 1f       	adc	r27, r27
     9c6:	ee 1f       	adc	r30, r30
     9c8:	ff 1f       	adc	r31, r31
     9ca:	a2 17       	cp	r26, r18
     9cc:	b3 07       	cpc	r27, r19
     9ce:	e4 07       	cpc	r30, r20
     9d0:	f5 07       	cpc	r31, r21
     9d2:	20 f0       	brcs	.+8      	; 0x9dc <__udivmodsi4_ep>
     9d4:	a2 1b       	sub	r26, r18
     9d6:	b3 0b       	sbc	r27, r19
     9d8:	e4 0b       	sbc	r30, r20
     9da:	f5 0b       	sbc	r31, r21

000009dc <__udivmodsi4_ep>:
     9dc:	66 1f       	adc	r22, r22
     9de:	77 1f       	adc	r23, r23
     9e0:	88 1f       	adc	r24, r24
     9e2:	99 1f       	adc	r25, r25
     9e4:	1a 94       	dec	r1
     9e6:	69 f7       	brne	.-38     	; 0x9c2 <__udivmodsi4_loop>
     9e8:	60 95       	com	r22
     9ea:	70 95       	com	r23
     9ec:	80 95       	com	r24
     9ee:	90 95       	com	r25
     9f0:	26 2f       	mov	r18, r22
     9f2:	37 2f       	mov	r19, r23
     9f4:	48 2f       	mov	r20, r24
     9f6:	59 2f       	mov	r21, r25
     9f8:	6a 2f       	mov	r22, r26
     9fa:	7b 2f       	mov	r23, r27
     9fc:	8e 2f       	mov	r24, r30
     9fe:	9f 2f       	mov	r25, r31
     a00:	08 95       	ret

00000a02 <__tablejump2__>:
     a02:	ee 0f       	add	r30, r30
     a04:	ff 1f       	adc	r31, r31
     a06:	c8 95       	lpm
     a08:	0f 92       	push	r0
     a0a:	31 96       	adiw	r30, 0x01	; 1
     a0c:	c8 95       	lpm
     a0e:	0f 92       	push	r0
     a10:	08 95       	ret

00000a12 <snprintf>:
     a12:	ae e0       	ldi	r26, 0x0E	; 14
     a14:	b0 e0       	ldi	r27, 0x00	; 0
     a16:	ee e0       	ldi	r30, 0x0E	; 14
     a18:	f5 e0       	ldi	r31, 0x05	; 5
     a1a:	06 c3       	rjmp	.+1548   	; 0x1028 <__prologue_saves__+0x1c>
     a1c:	0d 89       	ldd	r16, Y+21	; 0x15
     a1e:	1e 89       	ldd	r17, Y+22	; 0x16
     a20:	8f 89       	ldd	r24, Y+23	; 0x17
     a22:	98 8d       	ldd	r25, Y+24	; 0x18
     a24:	26 e0       	ldi	r18, 0x06	; 6
     a26:	2c 83       	std	Y+4, r18	; 0x04
     a28:	1a 83       	std	Y+2, r17	; 0x02
     a2a:	09 83       	std	Y+1, r16	; 0x01
     a2c:	97 ff       	sbrs	r25, 7
     a2e:	02 c0       	rjmp	.+4      	; 0xa34 <snprintf+0x22>
     a30:	80 e0       	ldi	r24, 0x00	; 0
     a32:	90 e8       	ldi	r25, 0x80	; 128
     a34:	01 97       	sbiw	r24, 0x01	; 1
     a36:	9e 83       	std	Y+6, r25	; 0x06
     a38:	8d 83       	std	Y+5, r24	; 0x05
     a3a:	4c 2f       	mov	r20, r28
     a3c:	5d 2f       	mov	r21, r29
     a3e:	45 5e       	subi	r20, 0xE5	; 229
     a40:	5f 4f       	sbci	r21, 0xFF	; 255
     a42:	69 8d       	ldd	r22, Y+25	; 0x19
     a44:	7a 8d       	ldd	r23, Y+26	; 0x1a
     a46:	8c 2f       	mov	r24, r28
     a48:	9d 2f       	mov	r25, r29
     a4a:	01 96       	adiw	r24, 0x01	; 1
     a4c:	13 d0       	rcall	.+38     	; 0xa74 <vfprintf>
     a4e:	4d 81       	ldd	r20, Y+5	; 0x05
     a50:	5e 81       	ldd	r21, Y+6	; 0x06
     a52:	57 fd       	sbrc	r21, 7
     a54:	0c c0       	rjmp	.+24     	; 0xa6e <snprintf+0x5c>
     a56:	2f 81       	ldd	r18, Y+7	; 0x07
     a58:	38 85       	ldd	r19, Y+8	; 0x08
     a5a:	42 17       	cp	r20, r18
     a5c:	53 07       	cpc	r21, r19
     a5e:	14 f4       	brge	.+4      	; 0xa64 <snprintf+0x52>
     a60:	24 2f       	mov	r18, r20
     a62:	35 2f       	mov	r19, r21
     a64:	02 0f       	add	r16, r18
     a66:	13 1f       	adc	r17, r19
     a68:	e0 2f       	mov	r30, r16
     a6a:	f1 2f       	mov	r31, r17
     a6c:	10 82       	st	Z, r1
     a6e:	2e 96       	adiw	r28, 0x0e	; 14
     a70:	e4 e0       	ldi	r30, 0x04	; 4
     a72:	f6 c2       	rjmp	.+1516   	; 0x1060 <__epilogue_restores__+0x1c>

00000a74 <vfprintf>:
     a74:	ab e0       	ldi	r26, 0x0B	; 11
     a76:	b0 e0       	ldi	r27, 0x00	; 0
     a78:	ef e3       	ldi	r30, 0x3F	; 63
     a7a:	f5 e0       	ldi	r31, 0x05	; 5
     a7c:	c7 c2       	rjmp	.+1422   	; 0x100c <__prologue_saves__>
     a7e:	e8 2e       	mov	r14, r24
     a80:	f9 2e       	mov	r15, r25
     a82:	66 2e       	mov	r6, r22
     a84:	77 2e       	mov	r7, r23
     a86:	04 2f       	mov	r16, r20
     a88:	15 2f       	mov	r17, r21
     a8a:	e8 2f       	mov	r30, r24
     a8c:	f9 2f       	mov	r31, r25
     a8e:	17 82       	std	Z+7, r1	; 0x07
     a90:	16 82       	std	Z+6, r1	; 0x06
     a92:	83 81       	ldd	r24, Z+3	; 0x03
     a94:	81 ff       	sbrs	r24, 1
     a96:	ff c1       	rjmp	.+1022   	; 0xe96 <vfprintf+0x422>
     a98:	8c 2f       	mov	r24, r28
     a9a:	9d 2f       	mov	r25, r29
     a9c:	01 96       	adiw	r24, 0x01	; 1
     a9e:	a8 2e       	mov	r10, r24
     aa0:	b9 2e       	mov	r11, r25
     aa2:	ee 2d       	mov	r30, r14
     aa4:	ff 2d       	mov	r31, r15
     aa6:	93 81       	ldd	r25, Z+3	; 0x03
     aa8:	e6 2d       	mov	r30, r6
     aaa:	f7 2d       	mov	r31, r7
     aac:	93 fd       	sbrc	r25, 3
     aae:	c8 95       	lpm
     ab0:	93 ff       	sbrs	r25, 3
     ab2:	00 80       	ld	r0, Z
     ab4:	31 96       	adiw	r30, 0x01	; 1
     ab6:	80 2d       	mov	r24, r0
     ab8:	6e 2e       	mov	r6, r30
     aba:	7f 2e       	mov	r7, r31
     abc:	88 23       	and	r24, r24
     abe:	09 f4       	brne	.+2      	; 0xac2 <vfprintf+0x4e>
     ac0:	48 c1       	rjmp	.+656    	; 0xd52 <vfprintf+0x2de>
     ac2:	85 32       	cpi	r24, 0x25	; 37
     ac4:	51 f4       	brne	.+20     	; 0xada <vfprintf+0x66>
     ac6:	93 fd       	sbrc	r25, 3
     ac8:	c8 95       	lpm
     aca:	93 ff       	sbrs	r25, 3
     acc:	00 80       	ld	r0, Z
     ace:	31 96       	adiw	r30, 0x01	; 1
     ad0:	80 2d       	mov	r24, r0
     ad2:	6e 2e       	mov	r6, r30
     ad4:	7f 2e       	mov	r7, r31
     ad6:	85 32       	cpi	r24, 0x25	; 37
     ad8:	29 f4       	brne	.+10     	; 0xae4 <vfprintf+0x70>
     ada:	6e 2d       	mov	r22, r14
     adc:	7f 2d       	mov	r23, r15
     ade:	90 e0       	ldi	r25, 0x00	; 0
     ae0:	f6 d1       	rcall	.+1004   	; 0xece <fputc>
     ae2:	df cf       	rjmp	.-66     	; 0xaa2 <vfprintf+0x2e>
     ae4:	91 2c       	mov	r9, r1
     ae6:	21 2c       	mov	r2, r1
     ae8:	31 2c       	mov	r3, r1
     aea:	ff e1       	ldi	r31, 0x1F	; 31
     aec:	f3 15       	cp	r31, r3
     aee:	38 f0       	brcs	.+14     	; 0xafe <vfprintf+0x8a>
     af0:	8b 32       	cpi	r24, 0x2B	; 43
     af2:	39 f1       	breq	.+78     	; 0xb42 <vfprintf+0xce>
     af4:	90 f4       	brcc	.+36     	; 0xb1a <vfprintf+0xa6>
     af6:	80 32       	cpi	r24, 0x20	; 32
     af8:	39 f1       	breq	.+78     	; 0xb48 <vfprintf+0xd4>
     afa:	83 32       	cpi	r24, 0x23	; 35
     afc:	69 f1       	breq	.+90     	; 0xb58 <vfprintf+0xe4>
     afe:	37 fc       	sbrc	r3, 7
     b00:	45 c0       	rjmp	.+138    	; 0xb8c <vfprintf+0x118>
     b02:	20 ed       	ldi	r18, 0xD0	; 208
     b04:	28 0f       	add	r18, r24
     b06:	2a 30       	cpi	r18, 0x0A	; 10
     b08:	98 f5       	brcc	.+102    	; 0xb70 <vfprintf+0xfc>
     b0a:	36 fe       	sbrs	r3, 6
     b0c:	28 c0       	rjmp	.+80     	; 0xb5e <vfprintf+0xea>
     b0e:	89 2d       	mov	r24, r9
     b10:	6a e0       	ldi	r22, 0x0A	; 10
     b12:	73 d2       	rcall	.+1254   	; 0xffa <__mulqi3>
     b14:	92 2e       	mov	r9, r18
     b16:	98 0e       	add	r9, r24
     b18:	07 c0       	rjmp	.+14     	; 0xb28 <vfprintf+0xb4>
     b1a:	8d 32       	cpi	r24, 0x2D	; 45
     b1c:	c9 f0       	breq	.+50     	; 0xb50 <vfprintf+0xdc>
     b1e:	80 33       	cpi	r24, 0x30	; 48
     b20:	71 f7       	brne	.-36     	; 0xafe <vfprintf+0x8a>
     b22:	23 2d       	mov	r18, r3
     b24:	21 60       	ori	r18, 0x01	; 1
     b26:	32 2e       	mov	r3, r18
     b28:	e6 2d       	mov	r30, r6
     b2a:	f7 2d       	mov	r31, r7
     b2c:	93 fd       	sbrc	r25, 3
     b2e:	c8 95       	lpm
     b30:	93 ff       	sbrs	r25, 3
     b32:	00 80       	ld	r0, Z
     b34:	31 96       	adiw	r30, 0x01	; 1
     b36:	80 2d       	mov	r24, r0
     b38:	6e 2e       	mov	r6, r30
     b3a:	7f 2e       	mov	r7, r31
     b3c:	81 11       	cpse	r24, r1
     b3e:	d5 cf       	rjmp	.-86     	; 0xaea <vfprintf+0x76>
     b40:	25 c0       	rjmp	.+74     	; 0xb8c <vfprintf+0x118>
     b42:	83 2d       	mov	r24, r3
     b44:	82 60       	ori	r24, 0x02	; 2
     b46:	38 2e       	mov	r3, r24
     b48:	e3 2d       	mov	r30, r3
     b4a:	e4 60       	ori	r30, 0x04	; 4
     b4c:	3e 2e       	mov	r3, r30
     b4e:	ec cf       	rjmp	.-40     	; 0xb28 <vfprintf+0xb4>
     b50:	f3 2d       	mov	r31, r3
     b52:	f8 60       	ori	r31, 0x08	; 8
     b54:	3f 2e       	mov	r3, r31
     b56:	e8 cf       	rjmp	.-48     	; 0xb28 <vfprintf+0xb4>
     b58:	23 2d       	mov	r18, r3
     b5a:	20 61       	ori	r18, 0x10	; 16
     b5c:	e4 cf       	rjmp	.-56     	; 0xb26 <vfprintf+0xb2>
     b5e:	82 2d       	mov	r24, r2
     b60:	6a e0       	ldi	r22, 0x0A	; 10
     b62:	4b d2       	rcall	.+1174   	; 0xffa <__mulqi3>
     b64:	22 2e       	mov	r2, r18
     b66:	28 0e       	add	r2, r24
     b68:	83 2d       	mov	r24, r3
     b6a:	80 62       	ori	r24, 0x20	; 32
     b6c:	38 2e       	mov	r3, r24
     b6e:	dc cf       	rjmp	.-72     	; 0xb28 <vfprintf+0xb4>
     b70:	8e 32       	cpi	r24, 0x2E	; 46
     b72:	29 f4       	brne	.+10     	; 0xb7e <vfprintf+0x10a>
     b74:	36 fc       	sbrc	r3, 6
     b76:	ed c0       	rjmp	.+474    	; 0xd52 <vfprintf+0x2de>
     b78:	e3 2d       	mov	r30, r3
     b7a:	e0 64       	ori	r30, 0x40	; 64
     b7c:	e7 cf       	rjmp	.-50     	; 0xb4c <vfprintf+0xd8>
     b7e:	8c 36       	cpi	r24, 0x6C	; 108
     b80:	19 f4       	brne	.+6      	; 0xb88 <vfprintf+0x114>
     b82:	f3 2d       	mov	r31, r3
     b84:	f0 68       	ori	r31, 0x80	; 128
     b86:	e6 cf       	rjmp	.-52     	; 0xb54 <vfprintf+0xe0>
     b88:	88 36       	cpi	r24, 0x68	; 104
     b8a:	71 f2       	breq	.-100    	; 0xb28 <vfprintf+0xb4>
     b8c:	98 2f       	mov	r25, r24
     b8e:	9f 7d       	andi	r25, 0xDF	; 223
     b90:	95 54       	subi	r25, 0x45	; 69
     b92:	93 30       	cpi	r25, 0x03	; 3
     b94:	08 f1       	brcs	.+66     	; 0xbd8 <vfprintf+0x164>
     b96:	83 36       	cpi	r24, 0x63	; 99
     b98:	09 f4       	brne	.+2      	; 0xb9c <vfprintf+0x128>
     b9a:	3f c0       	rjmp	.+126    	; 0xc1a <vfprintf+0x1a6>
     b9c:	83 37       	cpi	r24, 0x73	; 115
     b9e:	09 f4       	brne	.+2      	; 0xba2 <vfprintf+0x12e>
     ba0:	43 c0       	rjmp	.+134    	; 0xc28 <vfprintf+0x1b4>
     ba2:	83 35       	cpi	r24, 0x53	; 83
     ba4:	09 f0       	breq	.+2      	; 0xba8 <vfprintf+0x134>
     ba6:	76 c0       	rjmp	.+236    	; 0xc94 <vfprintf+0x220>
     ba8:	40 2e       	mov	r4, r16
     baa:	51 2e       	mov	r5, r17
     bac:	22 e0       	ldi	r18, 0x02	; 2
     bae:	42 0e       	add	r4, r18
     bb0:	51 1c       	adc	r5, r1
     bb2:	e0 2f       	mov	r30, r16
     bb4:	f1 2f       	mov	r31, r17
     bb6:	c0 80       	ld	r12, Z
     bb8:	d1 80       	ldd	r13, Z+1	; 0x01
     bba:	36 fe       	sbrs	r3, 6
     bbc:	4d c0       	rjmp	.+154    	; 0xc58 <vfprintf+0x1e4>
     bbe:	69 2d       	mov	r22, r9
     bc0:	70 e0       	ldi	r23, 0x00	; 0
     bc2:	8c 2d       	mov	r24, r12
     bc4:	9d 2d       	mov	r25, r13
     bc6:	6a d1       	rcall	.+724    	; 0xe9c <strnlen_P>
     bc8:	88 2e       	mov	r8, r24
     bca:	99 2e       	mov	r9, r25
     bcc:	f3 2d       	mov	r31, r3
     bce:	f0 68       	ori	r31, 0x80	; 128
     bd0:	3f 2e       	mov	r3, r31
     bd2:	04 2d       	mov	r16, r4
     bd4:	15 2d       	mov	r17, r5
     bd6:	0c c0       	rjmp	.+24     	; 0xbf0 <vfprintf+0x17c>
     bd8:	0c 5f       	subi	r16, 0xFC	; 252
     bda:	1f 4f       	sbci	r17, 0xFF	; 255
     bdc:	2f e3       	ldi	r18, 0x3F	; 63
     bde:	29 83       	std	Y+1, r18	; 0x01
     be0:	88 24       	eor	r8, r8
     be2:	83 94       	inc	r8
     be4:	91 2c       	mov	r9, r1
     be6:	ca 2c       	mov	r12, r10
     be8:	db 2c       	mov	r13, r11
     bea:	f3 2d       	mov	r31, r3
     bec:	ff 77       	andi	r31, 0x7F	; 127
     bee:	3f 2e       	mov	r3, r31
     bf0:	33 fc       	sbrc	r3, 3
     bf2:	05 c0       	rjmp	.+10     	; 0xbfe <vfprintf+0x18a>
     bf4:	82 2d       	mov	r24, r2
     bf6:	90 e0       	ldi	r25, 0x00	; 0
     bf8:	88 16       	cp	r8, r24
     bfa:	99 06       	cpc	r9, r25
     bfc:	80 f1       	brcs	.+96     	; 0xc5e <vfprintf+0x1ea>
     bfe:	52 2c       	mov	r5, r2
     c00:	81 14       	cp	r8, r1
     c02:	91 04       	cpc	r9, r1
     c04:	99 f5       	brne	.+102    	; 0xc6c <vfprintf+0x1f8>
     c06:	55 20       	and	r5, r5
     c08:	09 f4       	brne	.+2      	; 0xc0c <vfprintf+0x198>
     c0a:	4b cf       	rjmp	.-362    	; 0xaa2 <vfprintf+0x2e>
     c0c:	6e 2d       	mov	r22, r14
     c0e:	7f 2d       	mov	r23, r15
     c10:	80 e2       	ldi	r24, 0x20	; 32
     c12:	90 e0       	ldi	r25, 0x00	; 0
     c14:	5c d1       	rcall	.+696    	; 0xece <fputc>
     c16:	5a 94       	dec	r5
     c18:	f6 cf       	rjmp	.-20     	; 0xc06 <vfprintf+0x192>
     c1a:	e0 2f       	mov	r30, r16
     c1c:	f1 2f       	mov	r31, r17
     c1e:	80 81       	ld	r24, Z
     c20:	89 83       	std	Y+1, r24	; 0x01
     c22:	0e 5f       	subi	r16, 0xFE	; 254
     c24:	1f 4f       	sbci	r17, 0xFF	; 255
     c26:	dc cf       	rjmp	.-72     	; 0xbe0 <vfprintf+0x16c>
     c28:	40 2e       	mov	r4, r16
     c2a:	51 2e       	mov	r5, r17
     c2c:	f2 e0       	ldi	r31, 0x02	; 2
     c2e:	4f 0e       	add	r4, r31
     c30:	51 1c       	adc	r5, r1
     c32:	e0 2f       	mov	r30, r16
     c34:	f1 2f       	mov	r31, r17
     c36:	c0 80       	ld	r12, Z
     c38:	d1 80       	ldd	r13, Z+1	; 0x01
     c3a:	36 fe       	sbrs	r3, 6
     c3c:	0a c0       	rjmp	.+20     	; 0xc52 <vfprintf+0x1de>
     c3e:	69 2d       	mov	r22, r9
     c40:	70 e0       	ldi	r23, 0x00	; 0
     c42:	8c 2d       	mov	r24, r12
     c44:	9d 2d       	mov	r25, r13
     c46:	37 d1       	rcall	.+622    	; 0xeb6 <strnlen>
     c48:	88 2e       	mov	r8, r24
     c4a:	99 2e       	mov	r9, r25
     c4c:	04 2d       	mov	r16, r4
     c4e:	15 2d       	mov	r17, r5
     c50:	cc cf       	rjmp	.-104    	; 0xbea <vfprintf+0x176>
     c52:	6f ef       	ldi	r22, 0xFF	; 255
     c54:	7f ef       	ldi	r23, 0xFF	; 255
     c56:	f5 cf       	rjmp	.-22     	; 0xc42 <vfprintf+0x1ce>
     c58:	6f ef       	ldi	r22, 0xFF	; 255
     c5a:	7f ef       	ldi	r23, 0xFF	; 255
     c5c:	b2 cf       	rjmp	.-156    	; 0xbc2 <vfprintf+0x14e>
     c5e:	6e 2d       	mov	r22, r14
     c60:	7f 2d       	mov	r23, r15
     c62:	80 e2       	ldi	r24, 0x20	; 32
     c64:	90 e0       	ldi	r25, 0x00	; 0
     c66:	33 d1       	rcall	.+614    	; 0xece <fputc>
     c68:	2a 94       	dec	r2
     c6a:	c4 cf       	rjmp	.-120    	; 0xbf4 <vfprintf+0x180>
     c6c:	ec 2d       	mov	r30, r12
     c6e:	fd 2d       	mov	r31, r13
     c70:	37 fc       	sbrc	r3, 7
     c72:	c8 95       	lpm
     c74:	37 fe       	sbrs	r3, 7
     c76:	00 80       	ld	r0, Z
     c78:	31 96       	adiw	r30, 0x01	; 1
     c7a:	80 2d       	mov	r24, r0
     c7c:	ce 2e       	mov	r12, r30
     c7e:	df 2e       	mov	r13, r31
     c80:	6e 2d       	mov	r22, r14
     c82:	7f 2d       	mov	r23, r15
     c84:	90 e0       	ldi	r25, 0x00	; 0
     c86:	23 d1       	rcall	.+582    	; 0xece <fputc>
     c88:	51 10       	cpse	r5, r1
     c8a:	5a 94       	dec	r5
     c8c:	21 e0       	ldi	r18, 0x01	; 1
     c8e:	82 1a       	sub	r8, r18
     c90:	91 08       	sbc	r9, r1
     c92:	b6 cf       	rjmp	.-148    	; 0xc00 <vfprintf+0x18c>
     c94:	84 36       	cpi	r24, 0x64	; 100
     c96:	11 f0       	breq	.+4      	; 0xc9c <vfprintf+0x228>
     c98:	89 36       	cpi	r24, 0x69	; 105
     c9a:	c9 f5       	brne	.+114    	; 0xd0e <vfprintf+0x29a>
     c9c:	e0 2f       	mov	r30, r16
     c9e:	f1 2f       	mov	r31, r17
     ca0:	37 fe       	sbrs	r3, 7
     ca2:	2c c0       	rjmp	.+88     	; 0xcfc <vfprintf+0x288>
     ca4:	60 81       	ld	r22, Z
     ca6:	71 81       	ldd	r23, Z+1	; 0x01
     ca8:	82 81       	ldd	r24, Z+2	; 0x02
     caa:	93 81       	ldd	r25, Z+3	; 0x03
     cac:	0c 5f       	subi	r16, 0xFC	; 252
     cae:	1f 4f       	sbci	r17, 0xFF	; 255
     cb0:	f3 2d       	mov	r31, r3
     cb2:	ff 76       	andi	r31, 0x6F	; 111
     cb4:	3f 2e       	mov	r3, r31
     cb6:	97 ff       	sbrs	r25, 7
     cb8:	09 c0       	rjmp	.+18     	; 0xccc <vfprintf+0x258>
     cba:	90 95       	com	r25
     cbc:	80 95       	com	r24
     cbe:	70 95       	com	r23
     cc0:	61 95       	neg	r22
     cc2:	7f 4f       	sbci	r23, 0xFF	; 255
     cc4:	8f 4f       	sbci	r24, 0xFF	; 255
     cc6:	9f 4f       	sbci	r25, 0xFF	; 255
     cc8:	f0 68       	ori	r31, 0x80	; 128
     cca:	3f 2e       	mov	r3, r31
     ccc:	2a e0       	ldi	r18, 0x0A	; 10
     cce:	30 e0       	ldi	r19, 0x00	; 0
     cd0:	4a 2d       	mov	r20, r10
     cd2:	5b 2d       	mov	r21, r11
     cd4:	2e d1       	rcall	.+604    	; 0xf32 <__ultoa_invert>
     cd6:	c8 2e       	mov	r12, r24
     cd8:	ca 18       	sub	r12, r10
     cda:	36 fe       	sbrs	r3, 6
     cdc:	63 c0       	rjmp	.+198    	; 0xda4 <vfprintf+0x330>
     cde:	23 2d       	mov	r18, r3
     ce0:	2e 7f       	andi	r18, 0xFE	; 254
     ce2:	82 2e       	mov	r8, r18
     ce4:	c9 14       	cp	r12, r9
     ce6:	08 f0       	brcs	.+2      	; 0xcea <vfprintf+0x276>
     ce8:	9f c0       	rjmp	.+318    	; 0xe28 <vfprintf+0x3b4>
     cea:	34 fe       	sbrs	r3, 4
     cec:	05 c0       	rjmp	.+10     	; 0xcf8 <vfprintf+0x284>
     cee:	32 fc       	sbrc	r3, 2
     cf0:	03 c0       	rjmp	.+6      	; 0xcf8 <vfprintf+0x284>
     cf2:	83 2d       	mov	r24, r3
     cf4:	8e 7e       	andi	r24, 0xEE	; 238
     cf6:	88 2e       	mov	r8, r24
     cf8:	d9 2c       	mov	r13, r9
     cfa:	56 c0       	rjmp	.+172    	; 0xda8 <vfprintf+0x334>
     cfc:	60 81       	ld	r22, Z
     cfe:	71 81       	ldd	r23, Z+1	; 0x01
     d00:	07 2e       	mov	r0, r23
     d02:	00 0c       	add	r0, r0
     d04:	88 0b       	sbc	r24, r24
     d06:	99 0b       	sbc	r25, r25
     d08:	0e 5f       	subi	r16, 0xFE	; 254
     d0a:	1f 4f       	sbci	r17, 0xFF	; 255
     d0c:	d1 cf       	rjmp	.-94     	; 0xcb0 <vfprintf+0x23c>
     d0e:	85 37       	cpi	r24, 0x75	; 117
     d10:	c1 f4       	brne	.+48     	; 0xd42 <vfprintf+0x2ce>
     d12:	23 2d       	mov	r18, r3
     d14:	2f 7e       	andi	r18, 0xEF	; 239
     d16:	d2 2e       	mov	r13, r18
     d18:	2a e0       	ldi	r18, 0x0A	; 10
     d1a:	30 e0       	ldi	r19, 0x00	; 0
     d1c:	e0 2f       	mov	r30, r16
     d1e:	f1 2f       	mov	r31, r17
     d20:	d7 fe       	sbrs	r13, 7
     d22:	39 c0       	rjmp	.+114    	; 0xd96 <vfprintf+0x322>
     d24:	60 81       	ld	r22, Z
     d26:	71 81       	ldd	r23, Z+1	; 0x01
     d28:	82 81       	ldd	r24, Z+2	; 0x02
     d2a:	93 81       	ldd	r25, Z+3	; 0x03
     d2c:	0c 5f       	subi	r16, 0xFC	; 252
     d2e:	1f 4f       	sbci	r17, 0xFF	; 255
     d30:	4a 2d       	mov	r20, r10
     d32:	5b 2d       	mov	r21, r11
     d34:	fe d0       	rcall	.+508    	; 0xf32 <__ultoa_invert>
     d36:	c8 2e       	mov	r12, r24
     d38:	ca 18       	sub	r12, r10
     d3a:	fd 2d       	mov	r31, r13
     d3c:	ff 77       	andi	r31, 0x7F	; 127
     d3e:	3f 2e       	mov	r3, r31
     d40:	cc cf       	rjmp	.-104    	; 0xcda <vfprintf+0x266>
     d42:	93 2d       	mov	r25, r3
     d44:	99 7f       	andi	r25, 0xF9	; 249
     d46:	d9 2e       	mov	r13, r25
     d48:	8f 36       	cpi	r24, 0x6F	; 111
     d4a:	11 f1       	breq	.+68     	; 0xd90 <vfprintf+0x31c>
     d4c:	48 f4       	brcc	.+18     	; 0xd60 <vfprintf+0x2ec>
     d4e:	88 35       	cpi	r24, 0x58	; 88
     d50:	b9 f0       	breq	.+46     	; 0xd80 <vfprintf+0x30c>
     d52:	ee 2d       	mov	r30, r14
     d54:	ff 2d       	mov	r31, r15
     d56:	86 81       	ldd	r24, Z+6	; 0x06
     d58:	97 81       	ldd	r25, Z+7	; 0x07
     d5a:	2b 96       	adiw	r28, 0x0b	; 11
     d5c:	e2 e1       	ldi	r30, 0x12	; 18
     d5e:	72 c1       	rjmp	.+740    	; 0x1044 <__epilogue_restores__>
     d60:	80 37       	cpi	r24, 0x70	; 112
     d62:	51 f0       	breq	.+20     	; 0xd78 <vfprintf+0x304>
     d64:	88 37       	cpi	r24, 0x78	; 120
     d66:	a9 f7       	brne	.-22     	; 0xd52 <vfprintf+0x2de>
     d68:	d4 fe       	sbrs	r13, 4
     d6a:	03 c0       	rjmp	.+6      	; 0xd72 <vfprintf+0x2fe>
     d6c:	fd 2d       	mov	r31, r13
     d6e:	f4 60       	ori	r31, 0x04	; 4
     d70:	df 2e       	mov	r13, r31
     d72:	20 e1       	ldi	r18, 0x10	; 16
     d74:	30 e0       	ldi	r19, 0x00	; 0
     d76:	d2 cf       	rjmp	.-92     	; 0xd1c <vfprintf+0x2a8>
     d78:	e9 2f       	mov	r30, r25
     d7a:	e0 61       	ori	r30, 0x10	; 16
     d7c:	de 2e       	mov	r13, r30
     d7e:	f4 cf       	rjmp	.-24     	; 0xd68 <vfprintf+0x2f4>
     d80:	34 fe       	sbrs	r3, 4
     d82:	03 c0       	rjmp	.+6      	; 0xd8a <vfprintf+0x316>
     d84:	29 2f       	mov	r18, r25
     d86:	26 60       	ori	r18, 0x06	; 6
     d88:	d2 2e       	mov	r13, r18
     d8a:	20 e1       	ldi	r18, 0x10	; 16
     d8c:	32 e0       	ldi	r19, 0x02	; 2
     d8e:	c6 cf       	rjmp	.-116    	; 0xd1c <vfprintf+0x2a8>
     d90:	28 e0       	ldi	r18, 0x08	; 8
     d92:	30 e0       	ldi	r19, 0x00	; 0
     d94:	c3 cf       	rjmp	.-122    	; 0xd1c <vfprintf+0x2a8>
     d96:	60 81       	ld	r22, Z
     d98:	71 81       	ldd	r23, Z+1	; 0x01
     d9a:	80 e0       	ldi	r24, 0x00	; 0
     d9c:	90 e0       	ldi	r25, 0x00	; 0
     d9e:	0e 5f       	subi	r16, 0xFE	; 254
     da0:	1f 4f       	sbci	r17, 0xFF	; 255
     da2:	c6 cf       	rjmp	.-116    	; 0xd30 <vfprintf+0x2bc>
     da4:	dc 2c       	mov	r13, r12
     da6:	83 2c       	mov	r8, r3
     da8:	84 fe       	sbrs	r8, 4
     daa:	47 c0       	rjmp	.+142    	; 0xe3a <vfprintf+0x3c6>
     dac:	ec 2f       	mov	r30, r28
     dae:	fd 2f       	mov	r31, r29
     db0:	ec 0d       	add	r30, r12
     db2:	f1 1d       	adc	r31, r1
     db4:	80 81       	ld	r24, Z
     db6:	80 33       	cpi	r24, 0x30	; 48
     db8:	c9 f5       	brne	.+114    	; 0xe2c <vfprintf+0x3b8>
     dba:	98 2d       	mov	r25, r8
     dbc:	99 7e       	andi	r25, 0xE9	; 233
     dbe:	89 2e       	mov	r8, r25
     dc0:	e8 2d       	mov	r30, r8
     dc2:	e8 70       	andi	r30, 0x08	; 8
     dc4:	5e 2e       	mov	r5, r30
     dc6:	83 fc       	sbrc	r8, 3
     dc8:	47 c0       	rjmp	.+142    	; 0xe58 <vfprintf+0x3e4>
     dca:	80 fe       	sbrs	r8, 0
     dcc:	41 c0       	rjmp	.+130    	; 0xe50 <vfprintf+0x3dc>
     dce:	d2 14       	cp	r13, r2
     dd0:	08 f0       	brcs	.+2      	; 0xdd4 <vfprintf+0x360>
     dd2:	47 c0       	rjmp	.+142    	; 0xe62 <vfprintf+0x3ee>
     dd4:	2c 0c       	add	r2, r12
     dd6:	92 2c       	mov	r9, r2
     dd8:	9d 18       	sub	r9, r13
     dda:	84 fe       	sbrs	r8, 4
     ddc:	47 c0       	rjmp	.+142    	; 0xe6c <vfprintf+0x3f8>
     dde:	6e 2d       	mov	r22, r14
     de0:	7f 2d       	mov	r23, r15
     de2:	80 e3       	ldi	r24, 0x30	; 48
     de4:	90 e0       	ldi	r25, 0x00	; 0
     de6:	73 d0       	rcall	.+230    	; 0xece <fputc>
     de8:	82 fe       	sbrs	r8, 2
     dea:	07 c0       	rjmp	.+14     	; 0xdfa <vfprintf+0x386>
     dec:	81 fc       	sbrc	r8, 1
     dee:	3b c0       	rjmp	.+118    	; 0xe66 <vfprintf+0x3f2>
     df0:	88 e7       	ldi	r24, 0x78	; 120
     df2:	90 e0       	ldi	r25, 0x00	; 0
     df4:	6e 2d       	mov	r22, r14
     df6:	7f 2d       	mov	r23, r15
     df8:	6a d0       	rcall	.+212    	; 0xece <fputc>
     dfa:	c9 14       	cp	r12, r9
     dfc:	08 f4       	brcc	.+2      	; 0xe00 <vfprintf+0x38c>
     dfe:	44 c0       	rjmp	.+136    	; 0xe88 <vfprintf+0x414>
     e00:	ca 94       	dec	r12
     e02:	d1 2c       	mov	r13, r1
     e04:	ff ef       	ldi	r31, 0xFF	; 255
     e06:	cf 1a       	sub	r12, r31
     e08:	df 0a       	sbc	r13, r31
     e0a:	ca 0c       	add	r12, r10
     e0c:	db 1c       	adc	r13, r11
     e0e:	ec 2d       	mov	r30, r12
     e10:	fd 2d       	mov	r31, r13
     e12:	82 91       	ld	r24, -Z
     e14:	ce 2e       	mov	r12, r30
     e16:	df 2e       	mov	r13, r31
     e18:	6e 2d       	mov	r22, r14
     e1a:	7f 2d       	mov	r23, r15
     e1c:	90 e0       	ldi	r25, 0x00	; 0
     e1e:	57 d0       	rcall	.+174    	; 0xece <fputc>
     e20:	ac 14       	cp	r10, r12
     e22:	bd 04       	cpc	r11, r13
     e24:	a1 f7       	brne	.-24     	; 0xe0e <vfprintf+0x39a>
     e26:	ef ce       	rjmp	.-546    	; 0xc06 <vfprintf+0x192>
     e28:	dc 2c       	mov	r13, r12
     e2a:	be cf       	rjmp	.-132    	; 0xda8 <vfprintf+0x334>
     e2c:	82 fc       	sbrc	r8, 2
     e2e:	02 c0       	rjmp	.+4      	; 0xe34 <vfprintf+0x3c0>
     e30:	d3 94       	inc	r13
     e32:	c6 cf       	rjmp	.-116    	; 0xdc0 <vfprintf+0x34c>
     e34:	d3 94       	inc	r13
     e36:	d3 94       	inc	r13
     e38:	c3 cf       	rjmp	.-122    	; 0xdc0 <vfprintf+0x34c>
     e3a:	88 2d       	mov	r24, r8
     e3c:	86 78       	andi	r24, 0x86	; 134
     e3e:	09 f4       	brne	.+2      	; 0xe42 <vfprintf+0x3ce>
     e40:	bf cf       	rjmp	.-130    	; 0xdc0 <vfprintf+0x34c>
     e42:	f6 cf       	rjmp	.-20     	; 0xe30 <vfprintf+0x3bc>
     e44:	6e 2d       	mov	r22, r14
     e46:	7f 2d       	mov	r23, r15
     e48:	80 e2       	ldi	r24, 0x20	; 32
     e4a:	90 e0       	ldi	r25, 0x00	; 0
     e4c:	40 d0       	rcall	.+128    	; 0xece <fputc>
     e4e:	d3 94       	inc	r13
     e50:	d2 14       	cp	r13, r2
     e52:	c0 f3       	brcs	.-16     	; 0xe44 <vfprintf+0x3d0>
     e54:	51 2c       	mov	r5, r1
     e56:	c1 cf       	rjmp	.-126    	; 0xdda <vfprintf+0x366>
     e58:	d2 14       	cp	r13, r2
     e5a:	e0 f7       	brcc	.-8      	; 0xe54 <vfprintf+0x3e0>
     e5c:	52 2c       	mov	r5, r2
     e5e:	5d 18       	sub	r5, r13
     e60:	bc cf       	rjmp	.-136    	; 0xdda <vfprintf+0x366>
     e62:	9c 2c       	mov	r9, r12
     e64:	ba cf       	rjmp	.-140    	; 0xdda <vfprintf+0x366>
     e66:	88 e5       	ldi	r24, 0x58	; 88
     e68:	90 e0       	ldi	r25, 0x00	; 0
     e6a:	c4 cf       	rjmp	.-120    	; 0xdf4 <vfprintf+0x380>
     e6c:	88 2d       	mov	r24, r8
     e6e:	86 78       	andi	r24, 0x86	; 134
     e70:	21 f2       	breq	.-120    	; 0xdfa <vfprintf+0x386>
     e72:	81 fe       	sbrs	r8, 1
     e74:	07 c0       	rjmp	.+14     	; 0xe84 <vfprintf+0x410>
     e76:	8b e2       	ldi	r24, 0x2B	; 43
     e78:	87 fc       	sbrc	r8, 7
     e7a:	8d e2       	ldi	r24, 0x2D	; 45
     e7c:	6e 2d       	mov	r22, r14
     e7e:	7f 2d       	mov	r23, r15
     e80:	90 e0       	ldi	r25, 0x00	; 0
     e82:	ba cf       	rjmp	.-140    	; 0xdf8 <vfprintf+0x384>
     e84:	80 e2       	ldi	r24, 0x20	; 32
     e86:	f8 cf       	rjmp	.-16     	; 0xe78 <vfprintf+0x404>
     e88:	6e 2d       	mov	r22, r14
     e8a:	7f 2d       	mov	r23, r15
     e8c:	80 e3       	ldi	r24, 0x30	; 48
     e8e:	90 e0       	ldi	r25, 0x00	; 0
     e90:	1e d0       	rcall	.+60     	; 0xece <fputc>
     e92:	9a 94       	dec	r9
     e94:	b2 cf       	rjmp	.-156    	; 0xdfa <vfprintf+0x386>
     e96:	8f ef       	ldi	r24, 0xFF	; 255
     e98:	9f ef       	ldi	r25, 0xFF	; 255
     e9a:	5f cf       	rjmp	.-322    	; 0xd5a <vfprintf+0x2e6>

00000e9c <strnlen_P>:
     e9c:	e8 2f       	mov	r30, r24
     e9e:	f9 2f       	mov	r31, r25
     ea0:	c8 95       	lpm
     ea2:	31 96       	adiw	r30, 0x01	; 1
     ea4:	61 50       	subi	r22, 0x01	; 1
     ea6:	70 40       	sbci	r23, 0x00	; 0
     ea8:	01 10       	cpse	r0, r1
     eaa:	d0 f7       	brcc	.-12     	; 0xea0 <strnlen_P+0x4>
     eac:	80 95       	com	r24
     eae:	90 95       	com	r25
     eb0:	8e 0f       	add	r24, r30
     eb2:	9f 1f       	adc	r25, r31
     eb4:	08 95       	ret

00000eb6 <strnlen>:
     eb6:	e8 2f       	mov	r30, r24
     eb8:	f9 2f       	mov	r31, r25
     eba:	61 50       	subi	r22, 0x01	; 1
     ebc:	70 40       	sbci	r23, 0x00	; 0
     ebe:	01 90       	ld	r0, Z+
     ec0:	01 10       	cpse	r0, r1
     ec2:	d8 f7       	brcc	.-10     	; 0xeba <strnlen+0x4>
     ec4:	80 95       	com	r24
     ec6:	90 95       	com	r25
     ec8:	8e 0f       	add	r24, r30
     eca:	9f 1f       	adc	r25, r31
     ecc:	08 95       	ret

00000ece <fputc>:
     ece:	0f 93       	push	r16
     ed0:	1f 93       	push	r17
     ed2:	cf 93       	push	r28
     ed4:	df 93       	push	r29
     ed6:	18 2f       	mov	r17, r24
     ed8:	09 2f       	mov	r16, r25
     eda:	c6 2f       	mov	r28, r22
     edc:	d7 2f       	mov	r29, r23
     ede:	8b 81       	ldd	r24, Y+3	; 0x03
     ee0:	81 fd       	sbrc	r24, 1
     ee2:	09 c0       	rjmp	.+18     	; 0xef6 <fputc+0x28>
     ee4:	1f ef       	ldi	r17, 0xFF	; 255
     ee6:	0f ef       	ldi	r16, 0xFF	; 255
     ee8:	81 2f       	mov	r24, r17
     eea:	90 2f       	mov	r25, r16
     eec:	df 91       	pop	r29
     eee:	cf 91       	pop	r28
     ef0:	1f 91       	pop	r17
     ef2:	0f 91       	pop	r16
     ef4:	08 95       	ret
     ef6:	82 ff       	sbrs	r24, 2
     ef8:	15 c0       	rjmp	.+42     	; 0xf24 <fputc+0x56>
     efa:	2e 81       	ldd	r18, Y+6	; 0x06
     efc:	3f 81       	ldd	r19, Y+7	; 0x07
     efe:	8c 81       	ldd	r24, Y+4	; 0x04
     f00:	9d 81       	ldd	r25, Y+5	; 0x05
     f02:	28 17       	cp	r18, r24
     f04:	39 07       	cpc	r19, r25
     f06:	44 f4       	brge	.+16     	; 0xf18 <fputc+0x4a>
     f08:	e8 81       	ld	r30, Y
     f0a:	f9 81       	ldd	r31, Y+1	; 0x01
     f0c:	8e 2f       	mov	r24, r30
     f0e:	9f 2f       	mov	r25, r31
     f10:	01 96       	adiw	r24, 0x01	; 1
     f12:	99 83       	std	Y+1, r25	; 0x01
     f14:	88 83       	st	Y, r24
     f16:	10 83       	st	Z, r17
     f18:	8e 81       	ldd	r24, Y+6	; 0x06
     f1a:	9f 81       	ldd	r25, Y+7	; 0x07
     f1c:	01 96       	adiw	r24, 0x01	; 1
     f1e:	9f 83       	std	Y+7, r25	; 0x07
     f20:	8e 83       	std	Y+6, r24	; 0x06
     f22:	e2 cf       	rjmp	.-60     	; 0xee8 <fputc+0x1a>
     f24:	e8 85       	ldd	r30, Y+8	; 0x08
     f26:	f9 85       	ldd	r31, Y+9	; 0x09
     f28:	81 2f       	mov	r24, r17
     f2a:	09 95       	icall
     f2c:	89 2b       	or	r24, r25
     f2e:	a1 f3       	breq	.-24     	; 0xf18 <fputc+0x4a>
     f30:	d9 cf       	rjmp	.-78     	; 0xee4 <fputc+0x16>

00000f32 <__ultoa_invert>:
     f32:	e4 2f       	mov	r30, r20
     f34:	f5 2f       	mov	r31, r21
     f36:	aa 27       	eor	r26, r26
     f38:	28 30       	cpi	r18, 0x08	; 8
     f3a:	69 f1       	breq	.+90     	; 0xf96 <__ultoa_invert+0x64>
     f3c:	20 31       	cpi	r18, 0x10	; 16
     f3e:	99 f1       	breq	.+102    	; 0xfa6 <__ultoa_invert+0x74>
     f40:	e8 94       	clt
     f42:	6f 93       	push	r22
     f44:	6e 7f       	andi	r22, 0xFE	; 254
     f46:	6e 5f       	subi	r22, 0xFE	; 254
     f48:	7f 4f       	sbci	r23, 0xFF	; 255
     f4a:	8f 4f       	sbci	r24, 0xFF	; 255
     f4c:	9f 4f       	sbci	r25, 0xFF	; 255
     f4e:	af 4f       	sbci	r26, 0xFF	; 255
     f50:	b1 e0       	ldi	r27, 0x01	; 1
     f52:	41 d0       	rcall	.+130    	; 0xfd6 <__ultoa_invert+0xa4>
     f54:	b4 e0       	ldi	r27, 0x04	; 4
     f56:	3f d0       	rcall	.+126    	; 0xfd6 <__ultoa_invert+0xa4>
     f58:	67 0f       	add	r22, r23
     f5a:	78 1f       	adc	r23, r24
     f5c:	89 1f       	adc	r24, r25
     f5e:	9a 1f       	adc	r25, r26
     f60:	a1 1d       	adc	r26, r1
     f62:	68 0f       	add	r22, r24
     f64:	79 1f       	adc	r23, r25
     f66:	8a 1f       	adc	r24, r26
     f68:	91 1d       	adc	r25, r1
     f6a:	a1 1d       	adc	r26, r1
     f6c:	6a 0f       	add	r22, r26
     f6e:	71 1d       	adc	r23, r1
     f70:	81 1d       	adc	r24, r1
     f72:	91 1d       	adc	r25, r1
     f74:	a1 1d       	adc	r26, r1
     f76:	23 d0       	rcall	.+70     	; 0xfbe <__ultoa_invert+0x8c>
     f78:	09 f4       	brne	.+2      	; 0xf7c <__ultoa_invert+0x4a>
     f7a:	68 94       	set
     f7c:	3f 91       	pop	r19
     f7e:	06 2e       	mov	r0, r22
     f80:	00 0c       	add	r0, r0
     f82:	30 19       	sub	r19, r0
     f84:	00 0c       	add	r0, r0
     f86:	00 0c       	add	r0, r0
     f88:	30 19       	sub	r19, r0
     f8a:	30 5d       	subi	r19, 0xD0	; 208
     f8c:	31 93       	st	Z+, r19
     f8e:	ce f6       	brtc	.-78     	; 0xf42 <__ultoa_invert+0x10>
     f90:	8e 2f       	mov	r24, r30
     f92:	9f 2f       	mov	r25, r31
     f94:	08 95       	ret
     f96:	46 2f       	mov	r20, r22
     f98:	47 70       	andi	r20, 0x07	; 7
     f9a:	40 5d       	subi	r20, 0xD0	; 208
     f9c:	41 93       	st	Z+, r20
     f9e:	b3 e0       	ldi	r27, 0x03	; 3
     fa0:	0f d0       	rcall	.+30     	; 0xfc0 <__ultoa_invert+0x8e>
     fa2:	c9 f7       	brne	.-14     	; 0xf96 <__ultoa_invert+0x64>
     fa4:	f5 cf       	rjmp	.-22     	; 0xf90 <__ultoa_invert+0x5e>
     fa6:	46 2f       	mov	r20, r22
     fa8:	4f 70       	andi	r20, 0x0F	; 15
     faa:	40 5d       	subi	r20, 0xD0	; 208
     fac:	4a 33       	cpi	r20, 0x3A	; 58
     fae:	18 f0       	brcs	.+6      	; 0xfb6 <__ultoa_invert+0x84>
     fb0:	49 5d       	subi	r20, 0xD9	; 217
     fb2:	31 fd       	sbrc	r19, 1
     fb4:	40 52       	subi	r20, 0x20	; 32
     fb6:	41 93       	st	Z+, r20
     fb8:	02 d0       	rcall	.+4      	; 0xfbe <__ultoa_invert+0x8c>
     fba:	a9 f7       	brne	.-22     	; 0xfa6 <__ultoa_invert+0x74>
     fbc:	e9 cf       	rjmp	.-46     	; 0xf90 <__ultoa_invert+0x5e>
     fbe:	b4 e0       	ldi	r27, 0x04	; 4
     fc0:	a6 95       	lsr	r26
     fc2:	97 95       	ror	r25
     fc4:	87 95       	ror	r24
     fc6:	77 95       	ror	r23
     fc8:	67 95       	ror	r22
     fca:	ba 95       	dec	r27
     fcc:	c9 f7       	brne	.-14     	; 0xfc0 <__ultoa_invert+0x8e>
     fce:	00 97       	sbiw	r24, 0x00	; 0
     fd0:	61 05       	cpc	r22, r1
     fd2:	71 05       	cpc	r23, r1
     fd4:	08 95       	ret
     fd6:	26 2f       	mov	r18, r22
     fd8:	37 2f       	mov	r19, r23
     fda:	48 2f       	mov	r20, r24
     fdc:	59 2f       	mov	r21, r25
     fde:	0a 2e       	mov	r0, r26
     fe0:	06 94       	lsr	r0
     fe2:	57 95       	ror	r21
     fe4:	47 95       	ror	r20
     fe6:	37 95       	ror	r19
     fe8:	27 95       	ror	r18
     fea:	ba 95       	dec	r27
     fec:	c9 f7       	brne	.-14     	; 0xfe0 <__ultoa_invert+0xae>
     fee:	62 0f       	add	r22, r18
     ff0:	73 1f       	adc	r23, r19
     ff2:	84 1f       	adc	r24, r20
     ff4:	95 1f       	adc	r25, r21
     ff6:	a0 1d       	adc	r26, r0
     ff8:	08 95       	ret

00000ffa <__mulqi3>:
     ffa:	00 24       	eor	r0, r0

00000ffc <__mulqi3_loop>:
     ffc:	80 fd       	sbrc	r24, 0
     ffe:	06 0e       	add	r0, r22
    1000:	66 0f       	add	r22, r22
    1002:	11 f0       	breq	.+4      	; 0x1008 <__mulqi3_exit>
    1004:	86 95       	lsr	r24
    1006:	d1 f7       	brne	.-12     	; 0xffc <__mulqi3_loop>

00001008 <__mulqi3_exit>:
    1008:	80 2d       	mov	r24, r0
    100a:	08 95       	ret

0000100c <__prologue_saves__>:
    100c:	2f 92       	push	r2
    100e:	3f 92       	push	r3
    1010:	4f 92       	push	r4
    1012:	5f 92       	push	r5
    1014:	6f 92       	push	r6
    1016:	7f 92       	push	r7
    1018:	8f 92       	push	r8
    101a:	9f 92       	push	r9
    101c:	af 92       	push	r10
    101e:	bf 92       	push	r11
    1020:	cf 92       	push	r12
    1022:	df 92       	push	r13
    1024:	ef 92       	push	r14
    1026:	ff 92       	push	r15
    1028:	0f 93       	push	r16
    102a:	1f 93       	push	r17
    102c:	cf 93       	push	r28
    102e:	df 93       	push	r29
    1030:	cd b7       	in	r28, 0x3d	; 61
    1032:	de b7       	in	r29, 0x3e	; 62
    1034:	ca 1b       	sub	r28, r26
    1036:	db 0b       	sbc	r29, r27
    1038:	0f b6       	in	r0, 0x3f	; 63
    103a:	f8 94       	cli
    103c:	de bf       	out	0x3e, r29	; 62
    103e:	0f be       	out	0x3f, r0	; 63
    1040:	cd bf       	out	0x3d, r28	; 61
    1042:	09 94       	ijmp

00001044 <__epilogue_restores__>:
    1044:	2a 88       	ldd	r2, Y+18	; 0x12
    1046:	39 88       	ldd	r3, Y+17	; 0x11
    1048:	48 88       	ldd	r4, Y+16	; 0x10
    104a:	5f 84       	ldd	r5, Y+15	; 0x0f
    104c:	6e 84       	ldd	r6, Y+14	; 0x0e
    104e:	7d 84       	ldd	r7, Y+13	; 0x0d
    1050:	8c 84       	ldd	r8, Y+12	; 0x0c
    1052:	9b 84       	ldd	r9, Y+11	; 0x0b
    1054:	aa 84       	ldd	r10, Y+10	; 0x0a
    1056:	b9 84       	ldd	r11, Y+9	; 0x09
    1058:	c8 84       	ldd	r12, Y+8	; 0x08
    105a:	df 80       	ldd	r13, Y+7	; 0x07
    105c:	ee 80       	ldd	r14, Y+6	; 0x06
    105e:	fd 80       	ldd	r15, Y+5	; 0x05
    1060:	0c 81       	ldd	r16, Y+4	; 0x04
    1062:	1b 81       	ldd	r17, Y+3	; 0x03
    1064:	aa 81       	ldd	r26, Y+2	; 0x02
    1066:	b9 81       	ldd	r27, Y+1	; 0x01
    1068:	ce 0f       	add	r28, r30
    106a:	d1 1d       	adc	r29, r1
    106c:	0f b6       	in	r0, 0x3f	; 63
    106e:	f8 94       	cli
    1070:	de bf       	out	0x3e, r29	; 62
    1072:	0f be       	out	0x3f, r0	; 63
    1074:	cd bf       	out	0x3d, r28	; 61
    1076:	ca 2f       	mov	r28, r26
    1078:	db 2f       	mov	r29, r27
    107a:	08 95       	ret

0000107c <_exit>:
    107c:	f8 94       	cli

0000107e <__stop_program>:
    107e:	ff cf       	rjmp	.-2      	; 0x107e <__stop_program>
