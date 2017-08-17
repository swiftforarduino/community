
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
      40:	0c 94 32 02 	jmp	0x464	; 0x464 <__vector_16>
      44:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
      48:	0c 94 49 02 	jmp	0x492	; 0x492 <__vector_18>
      4c:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
      50:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
      54:	0c 94 41 04 	jmp	0x882	; 0x882 <__vector_21>
      58:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
      5c:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
      60:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
      64:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>

00000068 <__ctors_start>:
      68:	c3 04       	cpc	r12, r3

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
      7c:	e8 e7       	ldi	r30, 0x78	; 120
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
      ac:	a6 d4       	rcall	.+2380   	; 0x9fa <__tablejump2__>
      ae:	c4 33       	cpi	r28, 0x34	; 52
      b0:	d1 07       	cpc	r29, r17
      b2:	c9 f7       	brne	.-14     	; 0xa6 <__do_global_ctors+0x8>
      b4:	0e 94 60 00 	call	0xc0	; 0xc0 <main>
      b8:	0c 94 3a 08 	jmp	0x1074	; 0x1074 <_exit>

000000bc <__bad_interrupt>:
      bc:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000c0 <main>:
      c0:	ef 92       	push	r14
      c2:	ff 92       	push	r15
      c4:	0f 93       	push	r16
      c6:	1f 93       	push	r17
      c8:	82 e0       	ldi	r24, 0x02	; 2
      ca:	80 93 1a 01 	sts	0x011A, r24	; 0x80011a <__data_end>
      ce:	80 e8       	ldi	r24, 0x80	; 128
      d0:	95 e2       	ldi	r25, 0x25	; 37
      d2:	0e 94 ce 00 	call	0x19c	; 0x19c <_TF3AVR11SetupSerialFT8baudRateVs5Int16_T_>
      d6:	80 91 1a 01 	lds	r24, 0x011A	; 0x80011a <__data_end>
      da:	60 91 0b 01 	lds	r22, 0x010B	; 0x80010b <INPUT>
      de:	0e 94 c0 00 	call	0x180	; 0x180 <_TF3AVR7pinModeFT3pinVs5UInt84modeSb_T_>
      e2:	01 e0       	ldi	r16, 0x01	; 1
      e4:	10 e0       	ldi	r17, 0x00	; 0
      e6:	80 e0       	ldi	r24, 0x00	; 0
      e8:	90 e0       	ldi	r25, 0x00	; 0
      ea:	7c 01       	movw	r14, r24
      ec:	05 c0       	rjmp	.+10     	; 0xf8 <LBB0_2>

000000ee <LBB0_1>:
      ee:	0e 94 2a 01 	call	0x254	; 0x254 <_TF3AVR5printFT11unsignedIntVs6UInt16_T_>
      f2:	c8 01       	movw	r24, r16
      f4:	0e 94 86 00 	call	0x10c	; 0x10c <_TF3AVR5delayFT12millisecondsVs6UInt16_T_>

000000f8 <LBB0_2>:
      f8:	87 e0       	ldi	r24, 0x07	; 7
      fa:	0e 94 a2 00 	call	0x144	; 0x144 <_TF3AVR11digitalReadFT3pinVs5UInt8_Sb>
      fe:	81 70       	andi	r24, 0x01	; 1
     100:	80 30       	cpi	r24, 0x00	; 0
     102:	c8 01       	movw	r24, r16
     104:	a1 f7       	brne	.-24     	; 0xee <LBB0_1>
     106:	c7 01       	movw	r24, r14
     108:	f2 cf       	rjmp	.-28     	; 0xee <LBB0_1>
	...

0000010c <_TF3AVR5delayFT12millisecondsVs6UInt16_T_>:
     10c:	0e 94 e2 01 	call	0x3c4	; 0x3c4 <_delayMs>
     110:	08 95       	ret

00000112 <_TF3AVR18stringAddCharacterFT4byteVs5UInt8_Sb>:
     112:	0e 94 f6 01 	call	0x3ec	; 0x3ec <_stringAddCharacter>
     116:	08 95       	ret

00000118 <_TF3AVR14stringStartNewFT_T_>:
     118:	0e 94 0e 02 	call	0x41c	; 0x41c <_stringStartNew>
     11c:	08 95       	ret

0000011e <_TF3AVR18stringCurrentValueFT_GSQGSPVs4Int8__>:
     11e:	0e 94 13 02 	call	0x426	; 0x426 <_stringCurrentValue>
     122:	40 e0       	ldi	r20, 0x00	; 0
     124:	50 e0       	ldi	r21, 0x00	; 0
     126:	9c 01       	movw	r18, r24
     128:	ba 01       	movw	r22, r20
     12a:	ca 01       	movw	r24, r20
     12c:	08 95       	ret

0000012e <_TF3AVR14numberToStringFT6numberVs5Int32_GSQGSPVs4Int8__>:
     12e:	0e 94 16 02 	call	0x42c	; 0x42c <_numberToString>
     132:	40 e0       	ldi	r20, 0x00	; 0
     134:	50 e0       	ldi	r21, 0x00	; 0
     136:	9c 01       	movw	r18, r24
     138:	ba 01       	movw	r22, r20
     13a:	ca 01       	movw	r24, r20
     13c:	08 95       	ret

0000013e <_TF3AVR5ticksFT_Vs6UInt16>:
     13e:	0e 94 f1 01 	call	0x3e2	; 0x3e2 <_ticks>
     142:	08 95       	ret

00000144 <_TF3AVR11digitalReadFT3pinVs5UInt8_Sb>:
     144:	0e 94 53 01 	call	0x2a6	; 0x2a6 <_digitalRead>
     148:	08 95       	ret

0000014a <_TF3AVR12digitalWriteFT3pinVs5UInt85valueSb_T_>:
     14a:	83 30       	cpi	r24, 0x03	; 3
     14c:	51 f0       	breq	.+20     	; 0x162 <LBB1_6>
     14e:	85 30       	cpi	r24, 0x05	; 5
     150:	41 f0       	breq	.+16     	; 0x162 <LBB1_6>
     152:	86 30       	cpi	r24, 0x06	; 6
     154:	31 f0       	breq	.+12     	; 0x162 <LBB1_6>
     156:	89 30       	cpi	r24, 0x09	; 9
     158:	21 f0       	breq	.+8      	; 0x162 <LBB1_6>
     15a:	8a 30       	cpi	r24, 0x0A	; 10
     15c:	11 f0       	breq	.+4      	; 0x162 <LBB1_6>
     15e:	8b 30       	cpi	r24, 0x0B	; 11
     160:	59 f4       	brne	.+22     	; 0x178 <LBB1_9>

00000162 <LBB1_6>:
     162:	61 70       	andi	r22, 0x01	; 1
     164:	60 30       	cpi	r22, 0x00	; 0
     166:	21 f0       	breq	.+8      	; 0x170 <LBB1_8>
     168:	6f ef       	ldi	r22, 0xFF	; 255
     16a:	0e 94 0f 03 	call	0x61e	; 0x61e <_analogWrite>
     16e:	08 95       	ret

00000170 <LBB1_8>:
     170:	60 e0       	ldi	r22, 0x00	; 0
     172:	0e 94 0f 03 	call	0x61e	; 0x61e <_analogWrite>
     176:	08 95       	ret

00000178 <LBB1_9>:
     178:	61 70       	andi	r22, 0x01	; 1
     17a:	0e 94 8a 01 	call	0x314	; 0x314 <_digitalWrite>
     17e:	08 95       	ret

00000180 <_TF3AVR7pinModeFT3pinVs5UInt84modeSb_T_>:
     180:	61 70       	andi	r22, 0x01	; 1
     182:	0e 94 ba 01 	call	0x374	; 0x374 <_pinMode>
     186:	08 95       	ret

00000188 <_TF3AVR11analogWriteFT3pinVs5UInt85valueS0__T_>:
     188:	0e 94 0f 03 	call	0x61e	; 0x61e <_analogWrite>
     18c:	08 95       	ret

0000018e <_TF3AVR14slowAnalogReadFT3pinVs5UInt8_Vs6UInt16>:
     18e:	0e 94 12 04 	call	0x824	; 0x824 <_slowAnalogRead>
     192:	08 95       	ret

00000194 <_TF3AVR15analogReadAsyncFT3pinVs5UInt88callbackcVs6UInt16T__T_>:
     194:	40 e0       	ldi	r20, 0x00	; 0
     196:	0e 94 79 04 	call	0x8f2	; 0x8f2 <_analogReadAsync>
     19a:	08 95       	ret

0000019c <_TF3AVR11SetupSerialFT8baudRateVs5Int16_T_>:
     19c:	0e 94 8b 02 	call	0x516	; 0x516 <_setupSerial>
     1a0:	08 95       	ret

000001a2 <_TF3AVR5printFT7messageGSqGSPVs4Int8___T_>:
     1a2:	c9 01       	movw	r24, r18
     1a4:	0e 94 c8 02 	call	0x590	; 0x590 <_sendString>
     1a8:	08 95       	ret

000001aa <_TF3AVR5printFT4byteVs5UInt8_T_>:
     1aa:	0e 94 c1 02 	call	0x582	; 0x582 <_sendByte>
     1ae:	08 95       	ret

000001b0 <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberVs5Int32_T_>:
     1b0:	0e 94 16 02 	call	0x42c	; 0x42c <_numberToString>
     1b4:	0e 94 d8 02 	call	0x5b0	; 0x5b0 <_sendBuffer>
     1b8:	08 95       	ret

000001ba <_TF3AVR5printFT7longIntVs5Int32_T_>:
     1ba:	0e 94 d8 00 	call	0x1b0	; 0x1b0 <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberVs5Int32_T_>
     1be:	08 95       	ret

000001c0 <_TF3AVR5printFT3intVs5Int16_T_>:
     1c0:	9c 01       	movw	r18, r24
     1c2:	35 95       	asr	r19
     1c4:	27 95       	ror	r18
     1c6:	35 95       	asr	r19
     1c8:	27 95       	ror	r18
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
     1fe:	bc 01       	movw	r22, r24
     200:	c9 01       	movw	r24, r18
     202:	0e 94 d8 00 	call	0x1b0	; 0x1b0 <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberVs5Int32_T_>
     206:	08 95       	ret

00000208 <_TF3AVR5printFT7tinyIntVs4Int8_T_>:
     208:	68 2f       	mov	r22, r24
     20a:	78 2f       	mov	r23, r24
     20c:	77 0f       	add	r23, r23
     20e:	77 0b       	sbc	r23, r23
     210:	cb 01       	movw	r24, r22
     212:	95 95       	asr	r25
     214:	87 95       	ror	r24
     216:	95 95       	asr	r25
     218:	87 95       	ror	r24
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
     24e:	0e 94 d8 00 	call	0x1b0	; 0x1b0 <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberVs5Int32_T_>
     252:	08 95       	ret

00000254 <_TF3AVR5printFT11unsignedIntVs6UInt16_T_>:
     254:	20 e0       	ldi	r18, 0x00	; 0
     256:	30 e0       	ldi	r19, 0x00	; 0
     258:	bc 01       	movw	r22, r24
     25a:	c9 01       	movw	r24, r18
     25c:	0e 94 d8 00 	call	0x1b0	; 0x1b0 <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberVs5Int32_T_>
     260:	08 95       	ret

00000262 <_TF3AVR5printFT15unsignedTinyIntVs5UInt8_T_>:
     262:	68 2f       	mov	r22, r24
     264:	77 27       	eor	r23, r23
     266:	80 e0       	ldi	r24, 0x00	; 0
     268:	90 e0       	ldi	r25, 0x00	; 0
     26a:	0e 94 d8 00 	call	0x1b0	; 0x1b0 <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberVs5Int32_T_>
     26e:	08 95       	ret

00000270 <_TF3AVR9availableFT_Sb>:
     270:	0e 94 e7 02 	call	0x5ce	; 0x5ce <_available>
     274:	08 95       	ret

00000276 <_TF3AVR4readFT_Vs5UInt8>:
     276:	0e 94 f2 02 	call	0x5e4	; 0x5e4 <_receiveByte>
     27a:	08 95       	ret

0000027c <pinMask>:
     27c:	88 30       	cpi	r24, 0x08	; 8
     27e:	60 f0       	brcs	.+24     	; 0x298 <pinMask+0x1c>
     280:	8e 30       	cpi	r24, 0x0E	; 14
     282:	40 f4       	brcc	.+16     	; 0x294 <pinMask+0x18>
     284:	98 ef       	ldi	r25, 0xF8	; 248
     286:	98 0f       	add	r25, r24
     288:	81 e0       	ldi	r24, 0x01	; 1
     28a:	01 c0       	rjmp	.+2      	; 0x28e <pinMask+0x12>
     28c:	88 0f       	add	r24, r24
     28e:	9a 95       	dec	r25
     290:	ea f7       	brpl	.-6      	; 0x28c <pinMask+0x10>
     292:	08 95       	ret
     294:	80 e0       	ldi	r24, 0x00	; 0
     296:	08 95       	ret
     298:	91 e0       	ldi	r25, 0x01	; 1
     29a:	01 c0       	rjmp	.+2      	; 0x29e <pinMask+0x22>
     29c:	99 0f       	add	r25, r25
     29e:	8a 95       	dec	r24
     2a0:	ea f7       	brpl	.-6      	; 0x29c <pinMask+0x20>
     2a2:	89 2f       	mov	r24, r25
     2a4:	08 95       	ret

000002a6 <_digitalRead>:
     2a6:	cf 93       	push	r28
     2a8:	c8 2f       	mov	r28, r24
     2aa:	0e 94 3e 01 	call	0x27c	; 0x27c <pinMask>
     2ae:	88 23       	and	r24, r24
     2b0:	31 f0       	breq	.+12     	; 0x2be <_digitalRead+0x18>
     2b2:	c8 30       	cpi	r28, 0x08	; 8
     2b4:	38 f0       	brcs	.+14     	; 0x2c4 <_digitalRead+0x1e>
     2b6:	93 b1       	in	r25, 0x03	; 3
     2b8:	98 23       	and	r25, r24
     2ba:	81 e0       	ldi	r24, 0x01	; 1
     2bc:	09 f4       	brne	.+2      	; 0x2c0 <_digitalRead+0x1a>
     2be:	80 e0       	ldi	r24, 0x00	; 0
     2c0:	cf 91       	pop	r28
     2c2:	08 95       	ret
     2c4:	99 b1       	in	r25, 0x09	; 9
     2c6:	98 23       	and	r25, r24
     2c8:	81 e0       	ldi	r24, 0x01	; 1
     2ca:	c9 f3       	breq	.-14     	; 0x2be <_digitalRead+0x18>
     2cc:	cf 91       	pop	r28
     2ce:	08 95       	ret

000002d0 <resetPortD>:
     2d0:	0e 94 3e 01 	call	0x27c	; 0x27c <pinMask>
     2d4:	88 23       	and	r24, r24
     2d6:	21 f0       	breq	.+8      	; 0x2e0 <resetPortD+0x10>
     2d8:	9b b1       	in	r25, 0x0b	; 11
     2da:	80 95       	com	r24
     2dc:	89 23       	and	r24, r25
     2de:	8b b9       	out	0x0b, r24	; 11
     2e0:	08 95       	ret

000002e2 <resetPortB>:
     2e2:	0e 94 3e 01 	call	0x27c	; 0x27c <pinMask>
     2e6:	88 23       	and	r24, r24
     2e8:	21 f0       	breq	.+8      	; 0x2f2 <resetPortB+0x10>
     2ea:	95 b1       	in	r25, 0x05	; 5
     2ec:	80 95       	com	r24
     2ee:	89 23       	and	r24, r25
     2f0:	85 b9       	out	0x05, r24	; 5
     2f2:	08 95       	ret

000002f4 <setPortD>:
     2f4:	0e 94 3e 01 	call	0x27c	; 0x27c <pinMask>
     2f8:	88 23       	and	r24, r24
     2fa:	19 f0       	breq	.+6      	; 0x302 <setPortD+0xe>
     2fc:	9b b1       	in	r25, 0x0b	; 11
     2fe:	89 2b       	or	r24, r25
     300:	8b b9       	out	0x0b, r24	; 11
     302:	08 95       	ret

00000304 <setPortB>:
     304:	0e 94 3e 01 	call	0x27c	; 0x27c <pinMask>
     308:	88 23       	and	r24, r24
     30a:	19 f0       	breq	.+6      	; 0x312 <setPortB+0xe>
     30c:	95 b1       	in	r25, 0x05	; 5
     30e:	89 2b       	or	r24, r25
     310:	85 b9       	out	0x05, r24	; 5
     312:	08 95       	ret

00000314 <_digitalWrite>:
     314:	66 23       	and	r22, r22
     316:	21 f0       	breq	.+8      	; 0x320 <_digitalWrite+0xc>
     318:	88 30       	cpi	r24, 0x08	; 8
     31a:	30 f4       	brcc	.+12     	; 0x328 <_digitalWrite+0x14>
     31c:	0c 94 7a 01 	jmp	0x2f4	; 0x2f4 <setPortD>
     320:	88 30       	cpi	r24, 0x08	; 8
     322:	20 f0       	brcs	.+8      	; 0x32c <_digitalWrite+0x18>
     324:	0c 94 71 01 	jmp	0x2e2	; 0x2e2 <resetPortB>
     328:	0c 94 82 01 	jmp	0x304	; 0x304 <setPortB>
     32c:	0c 94 68 01 	jmp	0x2d0	; 0x2d0 <resetPortD>

00000330 <enablePortDWrite>:
     330:	0e 94 3e 01 	call	0x27c	; 0x27c <pinMask>
     334:	88 23       	and	r24, r24
     336:	19 f0       	breq	.+6      	; 0x33e <enablePortDWrite+0xe>
     338:	9a b1       	in	r25, 0x0a	; 10
     33a:	89 2b       	or	r24, r25
     33c:	8a b9       	out	0x0a, r24	; 10
     33e:	08 95       	ret

00000340 <enablePortBWrite>:
     340:	0e 94 3e 01 	call	0x27c	; 0x27c <pinMask>
     344:	88 23       	and	r24, r24
     346:	19 f0       	breq	.+6      	; 0x34e <enablePortBWrite+0xe>
     348:	94 b1       	in	r25, 0x04	; 4
     34a:	89 2b       	or	r24, r25
     34c:	84 b9       	out	0x04, r24	; 4
     34e:	08 95       	ret

00000350 <disablePortDWrite>:
     350:	0e 94 3e 01 	call	0x27c	; 0x27c <pinMask>
     354:	88 23       	and	r24, r24
     356:	21 f0       	breq	.+8      	; 0x360 <disablePortDWrite+0x10>
     358:	9a b1       	in	r25, 0x0a	; 10
     35a:	80 95       	com	r24
     35c:	89 23       	and	r24, r25
     35e:	8a b9       	out	0x0a, r24	; 10
     360:	08 95       	ret

00000362 <disablePortBWrite>:
     362:	0e 94 3e 01 	call	0x27c	; 0x27c <pinMask>
     366:	88 23       	and	r24, r24
     368:	21 f0       	breq	.+8      	; 0x372 <disablePortBWrite+0x10>
     36a:	94 b1       	in	r25, 0x04	; 4
     36c:	80 95       	com	r24
     36e:	89 23       	and	r24, r25
     370:	84 b9       	out	0x04, r24	; 4
     372:	08 95       	ret

00000374 <_pinMode>:
     374:	66 23       	and	r22, r22
     376:	51 f0       	breq	.+20     	; 0x38c <_pinMode+0x18>
     378:	88 30       	cpi	r24, 0x08	; 8
     37a:	e0 f4       	brcc	.+56     	; 0x3b4 <_pinMode+0x40>
     37c:	0e 94 3e 01 	call	0x27c	; 0x27c <pinMask>
     380:	88 23       	and	r24, r24
     382:	b9 f0       	breq	.+46     	; 0x3b2 <_pinMode+0x3e>
     384:	9a b1       	in	r25, 0x0a	; 10
     386:	89 2b       	or	r24, r25
     388:	8a b9       	out	0x0a, r24	; 10
     38a:	08 95       	ret
     38c:	88 30       	cpi	r24, 0x08	; 8
     38e:	48 f4       	brcc	.+18     	; 0x3a2 <_pinMode+0x2e>
     390:	0e 94 3e 01 	call	0x27c	; 0x27c <pinMask>
     394:	88 23       	and	r24, r24
     396:	69 f0       	breq	.+26     	; 0x3b2 <_pinMode+0x3e>
     398:	9a b1       	in	r25, 0x0a	; 10
     39a:	80 95       	com	r24
     39c:	89 23       	and	r24, r25
     39e:	8a b9       	out	0x0a, r24	; 10
     3a0:	08 95       	ret
     3a2:	0e 94 3e 01 	call	0x27c	; 0x27c <pinMask>
     3a6:	88 23       	and	r24, r24
     3a8:	21 f0       	breq	.+8      	; 0x3b2 <_pinMode+0x3e>
     3aa:	94 b1       	in	r25, 0x04	; 4
     3ac:	80 95       	com	r24
     3ae:	89 23       	and	r24, r25
     3b0:	84 b9       	out	0x04, r24	; 4
     3b2:	08 95       	ret
     3b4:	0e 94 3e 01 	call	0x27c	; 0x27c <pinMask>
     3b8:	88 23       	and	r24, r24
     3ba:	d9 f3       	breq	.-10     	; 0x3b2 <_pinMode+0x3e>
     3bc:	94 b1       	in	r25, 0x04	; 4
     3be:	89 2b       	or	r24, r25
     3c0:	84 b9       	out	0x04, r24	; 4
     3c2:	08 95       	ret

000003c4 <_delayMs>:
     3c4:	00 97       	sbiw	r24, 0x00	; 0
     3c6:	61 f0       	breq	.+24     	; 0x3e0 <_delayMs+0x1c>
     3c8:	20 e0       	ldi	r18, 0x00	; 0
     3ca:	30 e0       	ldi	r19, 0x00	; 0
     3cc:	40 ea       	ldi	r20, 0xA0	; 160
     3ce:	5f e0       	ldi	r21, 0x0F	; 15
     3d0:	fa 01       	movw	r30, r20
     3d2:	31 97       	sbiw	r30, 0x01	; 1
     3d4:	f1 f7       	brne	.-4      	; 0x3d2 <_delayMs+0xe>
     3d6:	2f 5f       	subi	r18, 0xFF	; 255
     3d8:	3f 4f       	sbci	r19, 0xFF	; 255
     3da:	82 17       	cp	r24, r18
     3dc:	93 07       	cpc	r25, r19
     3de:	c1 f7       	brne	.-16     	; 0x3d0 <_delayMs+0xc>
     3e0:	08 95       	ret

000003e2 <_ticks>:
     3e2:	80 91 1b 01 	lds	r24, 0x011B	; 0x80011b <t0Overflow>
     3e6:	90 91 1c 01 	lds	r25, 0x011C	; 0x80011c <t0Overflow+0x1>
     3ea:	08 95       	ret

000003ec <_stringAddCharacter>:
     3ec:	e0 91 2c 01 	lds	r30, 0x012C	; 0x80012c <stringBufferEnd>
     3f0:	ef 37       	cpi	r30, 0x7F	; 127
     3f2:	91 f0       	breq	.+36     	; 0x418 <__FUSE_REGION_LENGTH__+0x18>
     3f4:	91 e0       	ldi	r25, 0x01	; 1
     3f6:	9e 0f       	add	r25, r30
     3f8:	90 93 2c 01 	sts	0x012C, r25	; 0x80012c <stringBufferEnd>
     3fc:	0e 2e       	mov	r0, r30
     3fe:	00 0c       	add	r0, r0
     400:	ff 0b       	sbc	r31, r31
     402:	e3 5d       	subi	r30, 0xD3	; 211
     404:	fe 4f       	sbci	r31, 0xFE	; 254
     406:	80 83       	st	Z, r24
     408:	e9 2f       	mov	r30, r25
     40a:	99 0f       	add	r25, r25
     40c:	ff 0b       	sbc	r31, r31
     40e:	e3 5d       	subi	r30, 0xD3	; 211
     410:	fe 4f       	sbci	r31, 0xFE	; 254
     412:	10 82       	st	Z, r1
     414:	81 e0       	ldi	r24, 0x01	; 1
     416:	08 95       	ret
     418:	80 e0       	ldi	r24, 0x00	; 0
     41a:	08 95       	ret

0000041c <_stringStartNew>:
     41c:	10 92 2c 01 	sts	0x012C, r1	; 0x80012c <stringBufferEnd>
     420:	10 92 2d 01 	sts	0x012D, r1	; 0x80012d <stringBuffer>
     424:	08 95       	ret

00000426 <_stringCurrentValue>:
     426:	8d e2       	ldi	r24, 0x2D	; 45
     428:	91 e0       	ldi	r25, 0x01	; 1
     42a:	08 95       	ret

0000042c <_numberToString>:
     42c:	9f 93       	push	r25
     42e:	8f 93       	push	r24
     430:	7f 93       	push	r23
     432:	6f 93       	push	r22
     434:	83 e1       	ldi	r24, 0x13	; 19
     436:	91 e0       	ldi	r25, 0x01	; 1
     438:	9f 93       	push	r25
     43a:	8f 93       	push	r24
     43c:	1f 92       	push	r1
     43e:	8f e0       	ldi	r24, 0x0F	; 15
     440:	8f 93       	push	r24
     442:	8d e1       	ldi	r24, 0x1D	; 29
     444:	91 e0       	ldi	r25, 0x01	; 1
     446:	9f 93       	push	r25
     448:	8f 93       	push	r24
     44a:	0e 94 05 05 	call	0xa0a	; 0xa0a <snprintf>
     44e:	8d b7       	in	r24, 0x3d	; 61
     450:	9e b7       	in	r25, 0x3e	; 62
     452:	0a 96       	adiw	r24, 0x0a	; 10
     454:	0f b6       	in	r0, 0x3f	; 63
     456:	f8 94       	cli
     458:	9e bf       	out	0x3e, r25	; 62
     45a:	0f be       	out	0x3f, r0	; 63
     45c:	8d bf       	out	0x3d, r24	; 61
     45e:	8d e1       	ldi	r24, 0x1D	; 29
     460:	91 e0       	ldi	r25, 0x01	; 1
     462:	08 95       	ret

00000464 <__vector_16>:
     464:	1f 92       	push	r1
     466:	0f 92       	push	r0
     468:	0f b6       	in	r0, 0x3f	; 63
     46a:	0f 92       	push	r0
     46c:	11 24       	eor	r1, r1
     46e:	8f 93       	push	r24
     470:	9f 93       	push	r25
     472:	80 91 1b 01 	lds	r24, 0x011B	; 0x80011b <t0Overflow>
     476:	90 91 1c 01 	lds	r25, 0x011C	; 0x80011c <t0Overflow+0x1>
     47a:	01 96       	adiw	r24, 0x01	; 1
     47c:	90 93 1c 01 	sts	0x011C, r25	; 0x80011c <t0Overflow+0x1>
     480:	80 93 1b 01 	sts	0x011B, r24	; 0x80011b <t0Overflow>
     484:	9f 91       	pop	r25
     486:	8f 91       	pop	r24
     488:	0f 90       	pop	r0
     48a:	0f be       	out	0x3f, r0	; 63
     48c:	0f 90       	pop	r0
     48e:	1f 90       	pop	r1
     490:	18 95       	reti

00000492 <__vector_18>:
     492:	1f 92       	push	r1
     494:	0f 92       	push	r0
     496:	0f b6       	in	r0, 0x3f	; 63
     498:	0f 92       	push	r0
     49a:	11 24       	eor	r1, r1
     49c:	2f 93       	push	r18
     49e:	8f 93       	push	r24
     4a0:	9f 93       	push	r25
     4a2:	ef 93       	push	r30
     4a4:	ff 93       	push	r31
     4a6:	80 91 ad 01 	lds	r24, 0x01AD	; 0x8001ad <bufferFull>
     4aa:	81 11       	cpse	r24, r1
     4ac:	1e c0       	rjmp	.+60     	; 0x4ea <__vector_18+0x58>
     4ae:	e0 91 ae 01 	lds	r30, 0x01AE	; 0x8001ae <ringBufferEnd>
     4b2:	81 e0       	ldi	r24, 0x01	; 1
     4b4:	8e 0f       	add	r24, r30
     4b6:	80 93 ae 01 	sts	0x01AE, r24	; 0x8001ae <ringBufferEnd>
     4ba:	90 91 c6 00 	lds	r25, 0x00C6	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
     4be:	0e 2e       	mov	r0, r30
     4c0:	00 0c       	add	r0, r0
     4c2:	ff 0b       	sbc	r31, r31
     4c4:	e0 55       	subi	r30, 0x50	; 80
     4c6:	fe 4f       	sbci	r31, 0xFE	; 254
     4c8:	90 83       	st	Z, r25
     4ca:	08 2e       	mov	r0, r24
     4cc:	00 0c       	add	r0, r0
     4ce:	99 0b       	sbc	r25, r25
     4d0:	8f 77       	andi	r24, 0x7F	; 127
     4d2:	90 78       	andi	r25, 0x80	; 128
     4d4:	97 fd       	sbrc	r25, 7
     4d6:	13 c0       	rjmp	.+38     	; 0x4fe <__vector_18+0x6c>
     4d8:	80 93 ae 01 	sts	0x01AE, r24	; 0x8001ae <ringBufferEnd>
     4dc:	91 e0       	ldi	r25, 0x01	; 1
     4de:	20 91 af 01 	lds	r18, 0x01AF	; 0x8001af <ringBufferStart>
     4e2:	28 13       	cpse	r18, r24
     4e4:	90 e0       	ldi	r25, 0x00	; 0
     4e6:	90 93 ad 01 	sts	0x01AD, r25	; 0x8001ad <bufferFull>
     4ea:	ff 91       	pop	r31
     4ec:	ef 91       	pop	r30
     4ee:	9f 91       	pop	r25
     4f0:	8f 91       	pop	r24
     4f2:	2f 91       	pop	r18
     4f4:	0f 90       	pop	r0
     4f6:	0f be       	out	0x3f, r0	; 63
     4f8:	0f 90       	pop	r0
     4fa:	1f 90       	pop	r1
     4fc:	18 95       	reti
     4fe:	01 97       	sbiw	r24, 0x01	; 1
     500:	80 68       	ori	r24, 0x80	; 128
     502:	9f 6f       	ori	r25, 0xFF	; 255
     504:	01 96       	adiw	r24, 0x01	; 1
     506:	80 93 ae 01 	sts	0x01AE, r24	; 0x8001ae <ringBufferEnd>
     50a:	91 e0       	ldi	r25, 0x01	; 1
     50c:	20 91 af 01 	lds	r18, 0x01AF	; 0x8001af <ringBufferStart>
     510:	28 13       	cpse	r18, r24
     512:	e8 cf       	rjmp	.-48     	; 0x4e4 <__vector_18+0x52>
     514:	e8 cf       	rjmp	.-48     	; 0x4e6 <__vector_18+0x54>

00000516 <_setupSerial>:
     516:	9c 01       	movw	r18, r24
     518:	99 0f       	add	r25, r25
     51a:	44 0b       	sbc	r20, r20
     51c:	55 0b       	sbc	r21, r21
     51e:	22 0f       	add	r18, r18
     520:	33 1f       	adc	r19, r19
     522:	44 1f       	adc	r20, r20
     524:	55 1f       	adc	r21, r21
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
     53e:	60 e0       	ldi	r22, 0x00	; 0
     540:	74 e2       	ldi	r23, 0x24	; 36
     542:	84 ef       	ldi	r24, 0xF4	; 244
     544:	90 e0       	ldi	r25, 0x00	; 0
     546:	0e 94 d6 04 	call	0x9ac	; 0x9ac <__udivmodsi4>
     54a:	ba 01       	movw	r22, r20
     54c:	a9 01       	movw	r20, r18
     54e:	41 50       	subi	r20, 0x01	; 1
     550:	51 09       	sbc	r21, r1
     552:	61 09       	sbc	r22, r1
     554:	71 09       	sbc	r23, r1
     556:	bb 27       	eor	r27, r27
     558:	77 fd       	sbrc	r23, 7
     55a:	ba 95       	dec	r27
     55c:	a7 2f       	mov	r26, r23
     55e:	96 2f       	mov	r25, r22
     560:	85 2f       	mov	r24, r21
     562:	80 93 c5 00 	sts	0x00C5, r24	; 0x8000c5 <__TEXT_REGION_LENGTH__+0x7e00c5>
     566:	40 93 c4 00 	sts	0x00C4, r20	; 0x8000c4 <__TEXT_REGION_LENGTH__+0x7e00c4>
     56a:	e2 ec       	ldi	r30, 0xC2	; 194
     56c:	f0 e0       	ldi	r31, 0x00	; 0
     56e:	80 81       	ld	r24, Z
     570:	86 60       	ori	r24, 0x06	; 6
     572:	80 83       	st	Z, r24
     574:	e1 ec       	ldi	r30, 0xC1	; 193
     576:	f0 e0       	ldi	r31, 0x00	; 0
     578:	80 81       	ld	r24, Z
     57a:	88 69       	ori	r24, 0x98	; 152
     57c:	80 83       	st	Z, r24
     57e:	78 94       	sei
     580:	08 95       	ret

00000582 <_sendByte>:
     582:	90 91 c0 00 	lds	r25, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
     586:	95 ff       	sbrs	r25, 5
     588:	fc cf       	rjmp	.-8      	; 0x582 <_sendByte>
     58a:	80 93 c6 00 	sts	0x00C6, r24	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
     58e:	08 95       	ret

00000590 <_sendString>:
     590:	fc 01       	movw	r30, r24
     592:	24 91       	lpm	r18, Z
     594:	22 23       	and	r18, r18
     596:	59 f0       	breq	.+22     	; 0x5ae <_sendString+0x1e>
     598:	31 96       	adiw	r30, 0x01	; 1
     59a:	90 91 c0 00 	lds	r25, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
     59e:	95 ff       	sbrs	r25, 5
     5a0:	fc cf       	rjmp	.-8      	; 0x59a <_sendString+0xa>
     5a2:	20 93 c6 00 	sts	0x00C6, r18	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
     5a6:	24 91       	lpm	r18, Z
     5a8:	31 96       	adiw	r30, 0x01	; 1
     5aa:	21 11       	cpse	r18, r1
     5ac:	f6 cf       	rjmp	.-20     	; 0x59a <_sendString+0xa>
     5ae:	08 95       	ret

000005b0 <_sendBuffer>:
     5b0:	fc 01       	movw	r30, r24
     5b2:	20 81       	ld	r18, Z
     5b4:	22 23       	and	r18, r18
     5b6:	51 f0       	breq	.+20     	; 0x5cc <_sendBuffer+0x1c>
     5b8:	31 96       	adiw	r30, 0x01	; 1
     5ba:	90 91 c0 00 	lds	r25, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
     5be:	95 ff       	sbrs	r25, 5
     5c0:	fc cf       	rjmp	.-8      	; 0x5ba <_sendBuffer+0xa>
     5c2:	20 93 c6 00 	sts	0x00C6, r18	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
     5c6:	21 91       	ld	r18, Z+
     5c8:	21 11       	cpse	r18, r1
     5ca:	f7 cf       	rjmp	.-18     	; 0x5ba <_sendBuffer+0xa>
     5cc:	08 95       	ret

000005ce <_available>:
     5ce:	90 91 af 01 	lds	r25, 0x01AF	; 0x8001af <ringBufferStart>
     5d2:	80 91 ae 01 	lds	r24, 0x01AE	; 0x8001ae <ringBufferEnd>
     5d6:	98 17       	cp	r25, r24
     5d8:	11 f0       	breq	.+4      	; 0x5de <_available+0x10>
     5da:	81 e0       	ldi	r24, 0x01	; 1
     5dc:	08 95       	ret
     5de:	80 91 ad 01 	lds	r24, 0x01AD	; 0x8001ad <bufferFull>
     5e2:	08 95       	ret

000005e4 <_receiveByte>:
     5e4:	20 91 ad 01 	lds	r18, 0x01AD	; 0x8001ad <bufferFull>
     5e8:	90 91 af 01 	lds	r25, 0x01AF	; 0x8001af <ringBufferStart>
     5ec:	80 91 ae 01 	lds	r24, 0x01AE	; 0x8001ae <ringBufferEnd>
     5f0:	98 17       	cp	r25, r24
     5f2:	91 f0       	breq	.+36     	; 0x618 <_receiveByte+0x34>
     5f4:	9f b7       	in	r25, 0x3f	; 63
     5f6:	f8 94       	cli
     5f8:	e0 91 af 01 	lds	r30, 0x01AF	; 0x8001af <ringBufferStart>
     5fc:	81 e0       	ldi	r24, 0x01	; 1
     5fe:	8e 0f       	add	r24, r30
     600:	80 93 af 01 	sts	0x01AF, r24	; 0x8001af <ringBufferStart>
     604:	0e 2e       	mov	r0, r30
     606:	00 0c       	add	r0, r0
     608:	ff 0b       	sbc	r31, r31
     60a:	e0 55       	subi	r30, 0x50	; 80
     60c:	fe 4f       	sbci	r31, 0xFE	; 254
     60e:	80 81       	ld	r24, Z
     610:	10 92 ad 01 	sts	0x01AD, r1	; 0x8001ad <bufferFull>
     614:	9f bf       	out	0x3f, r25	; 63
     616:	08 95       	ret
     618:	21 11       	cpse	r18, r1
     61a:	ec cf       	rjmp	.-40     	; 0x5f4 <_receiveByte+0x10>
     61c:	ff cf       	rjmp	.-2      	; 0x61c <_receiveByte+0x38>

0000061e <_analogWrite>:
     61e:	cf 93       	push	r28
     620:	df 93       	push	r29
     622:	c8 2f       	mov	r28, r24
     624:	d6 2f       	mov	r29, r22
     626:	60 91 10 01 	lds	r22, 0x0110	; 0x800110 <_OUTPUT>
     62a:	0e 94 ba 01 	call	0x374	; 0x374 <_pinMode>
     62e:	c6 30       	cpi	r28, 0x06	; 6
     630:	09 f4       	brne	.+2      	; 0x634 <_analogWrite+0x16>
     632:	5b c0       	rjmp	.+182    	; 0x6ea <_analogWrite+0xcc>
     634:	50 f0       	brcs	.+20     	; 0x64a <_analogWrite+0x2c>
     636:	ca 30       	cpi	r28, 0x0A	; 10
     638:	b9 f0       	breq	.+46     	; 0x668 <_analogWrite+0x4a>
     63a:	cb 30       	cpi	r28, 0x0B	; 11
     63c:	09 f4       	brne	.+2      	; 0x640 <_analogWrite+0x22>
     63e:	46 c0       	rjmp	.+140    	; 0x6cc <_analogWrite+0xae>
     640:	c9 30       	cpi	r28, 0x09	; 9
     642:	21 f1       	breq	.+72     	; 0x68c <_analogWrite+0x6e>
     644:	df 91       	pop	r29
     646:	cf 91       	pop	r28
     648:	08 95       	ret
     64a:	c3 30       	cpi	r28, 0x03	; 3
     64c:	89 f1       	breq	.+98     	; 0x6b0 <_analogWrite+0x92>
     64e:	c5 30       	cpi	r28, 0x05	; 5
     650:	c9 f7       	brne	.-14     	; 0x644 <_analogWrite+0x26>
     652:	84 b5       	in	r24, 0x24	; 36
     654:	dd 23       	and	r29, r29
     656:	09 f4       	brne	.+2      	; 0x65a <_analogWrite+0x3c>
     658:	52 c0       	rjmp	.+164    	; 0x6fe <_analogWrite+0xe0>
     65a:	df 3f       	cpi	r29, 0xFF	; 255
     65c:	09 f4       	brne	.+2      	; 0x660 <_analogWrite+0x42>
     65e:	9e c0       	rjmp	.+316    	; 0x79c <_analogWrite+0x17e>
     660:	80 62       	ori	r24, 0x20	; 32
     662:	84 bd       	out	0x24, r24	; 36
     664:	d8 bd       	out	0x28, r29	; 40
     666:	ee cf       	rjmp	.-36     	; 0x644 <_analogWrite+0x26>
     668:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     66c:	dd 23       	and	r29, r29
     66e:	09 f4       	brne	.+2      	; 0x672 <_analogWrite+0x54>
     670:	7b c0       	rjmp	.+246    	; 0x768 <_analogWrite+0x14a>
     672:	df 3f       	cpi	r29, 0xFF	; 255
     674:	09 f4       	brne	.+2      	; 0x678 <_analogWrite+0x5a>
     676:	85 c0       	rjmp	.+266    	; 0x782 <_analogWrite+0x164>
     678:	80 62       	ori	r24, 0x20	; 32
     67a:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     67e:	6d 2f       	mov	r22, r29
     680:	70 e0       	ldi	r23, 0x00	; 0
     682:	70 93 8b 00 	sts	0x008B, r23	; 0x80008b <__TEXT_REGION_LENGTH__+0x7e008b>
     686:	60 93 8a 00 	sts	0x008A, r22	; 0x80008a <__TEXT_REGION_LENGTH__+0x7e008a>
     68a:	dc cf       	rjmp	.-72     	; 0x644 <_analogWrite+0x26>
     68c:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     690:	dd 23       	and	r29, r29
     692:	09 f4       	brne	.+2      	; 0x696 <_analogWrite+0x78>
     694:	5c c0       	rjmp	.+184    	; 0x74e <_analogWrite+0x130>
     696:	df 3f       	cpi	r29, 0xFF	; 255
     698:	09 f4       	brne	.+2      	; 0x69c <_analogWrite+0x7e>
     69a:	94 c0       	rjmp	.+296    	; 0x7c4 <_analogWrite+0x1a6>
     69c:	80 68       	ori	r24, 0x80	; 128
     69e:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     6a2:	6d 2f       	mov	r22, r29
     6a4:	70 e0       	ldi	r23, 0x00	; 0
     6a6:	70 93 89 00 	sts	0x0089, r23	; 0x800089 <__TEXT_REGION_LENGTH__+0x7e0089>
     6aa:	60 93 88 00 	sts	0x0088, r22	; 0x800088 <__TEXT_REGION_LENGTH__+0x7e0088>
     6ae:	ca cf       	rjmp	.-108    	; 0x644 <_analogWrite+0x26>
     6b0:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     6b4:	dd 23       	and	r29, r29
     6b6:	09 f4       	brne	.+2      	; 0x6ba <_analogWrite+0x9c>
     6b8:	3f c0       	rjmp	.+126    	; 0x738 <_analogWrite+0x11a>
     6ba:	df 3f       	cpi	r29, 0xFF	; 255
     6bc:	09 f4       	brne	.+2      	; 0x6c0 <_analogWrite+0xa2>
     6be:	77 c0       	rjmp	.+238    	; 0x7ae <_analogWrite+0x190>
     6c0:	80 62       	ori	r24, 0x20	; 32
     6c2:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     6c6:	d0 93 b4 00 	sts	0x00B4, r29	; 0x8000b4 <__TEXT_REGION_LENGTH__+0x7e00b4>
     6ca:	bc cf       	rjmp	.-136    	; 0x644 <_analogWrite+0x26>
     6cc:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     6d0:	dd 23       	and	r29, r29
     6d2:	39 f1       	breq	.+78     	; 0x722 <_analogWrite+0x104>
     6d4:	df 3f       	cpi	r29, 0xFF	; 255
     6d6:	09 f4       	brne	.+2      	; 0x6da <_analogWrite+0xbc>
     6d8:	8b c0       	rjmp	.+278    	; 0x7f0 <_analogWrite+0x1d2>
     6da:	80 68       	ori	r24, 0x80	; 128
     6dc:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     6e0:	d0 93 b3 00 	sts	0x00B3, r29	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
     6e4:	df 91       	pop	r29
     6e6:	cf 91       	pop	r28
     6e8:	08 95       	ret
     6ea:	84 b5       	in	r24, 0x24	; 36
     6ec:	dd 23       	and	r29, r29
     6ee:	81 f0       	breq	.+32     	; 0x710 <_analogWrite+0xf2>
     6f0:	df 3f       	cpi	r29, 0xFF	; 255
     6f2:	09 f4       	brne	.+2      	; 0x6f6 <_analogWrite+0xd8>
     6f4:	74 c0       	rjmp	.+232    	; 0x7de <_analogWrite+0x1c0>
     6f6:	80 68       	ori	r24, 0x80	; 128
     6f8:	84 bd       	out	0x24, r24	; 36
     6fa:	d7 bd       	out	0x27, r29	; 39
     6fc:	a3 cf       	rjmp	.-186    	; 0x644 <_analogWrite+0x26>
     6fe:	8f 7d       	andi	r24, 0xDF	; 223
     700:	84 bd       	out	0x24, r24	; 36
     702:	60 91 11 01 	lds	r22, 0x0111	; 0x800111 <_LOW>
     706:	85 e0       	ldi	r24, 0x05	; 5
     708:	0e 94 8a 01 	call	0x314	; 0x314 <_digitalWrite>
     70c:	18 bc       	out	0x28, r1	; 40
     70e:	9a cf       	rjmp	.-204    	; 0x644 <_analogWrite+0x26>
     710:	8f 77       	andi	r24, 0x7F	; 127
     712:	84 bd       	out	0x24, r24	; 36
     714:	60 91 11 01 	lds	r22, 0x0111	; 0x800111 <_LOW>
     718:	86 e0       	ldi	r24, 0x06	; 6
     71a:	0e 94 8a 01 	call	0x314	; 0x314 <_digitalWrite>
     71e:	17 bc       	out	0x27, r1	; 39
     720:	91 cf       	rjmp	.-222    	; 0x644 <_analogWrite+0x26>
     722:	8f 77       	andi	r24, 0x7F	; 127
     724:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     728:	60 91 11 01 	lds	r22, 0x0111	; 0x800111 <_LOW>
     72c:	8b e0       	ldi	r24, 0x0B	; 11
     72e:	0e 94 8a 01 	call	0x314	; 0x314 <_digitalWrite>
     732:	10 92 b3 00 	sts	0x00B3, r1	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
     736:	86 cf       	rjmp	.-244    	; 0x644 <_analogWrite+0x26>
     738:	8f 7d       	andi	r24, 0xDF	; 223
     73a:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     73e:	60 91 11 01 	lds	r22, 0x0111	; 0x800111 <_LOW>
     742:	83 e0       	ldi	r24, 0x03	; 3
     744:	0e 94 8a 01 	call	0x314	; 0x314 <_digitalWrite>
     748:	10 92 b4 00 	sts	0x00B4, r1	; 0x8000b4 <__TEXT_REGION_LENGTH__+0x7e00b4>
     74c:	7b cf       	rjmp	.-266    	; 0x644 <_analogWrite+0x26>
     74e:	8f 77       	andi	r24, 0x7F	; 127
     750:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     754:	60 91 11 01 	lds	r22, 0x0111	; 0x800111 <_LOW>
     758:	89 e0       	ldi	r24, 0x09	; 9
     75a:	0e 94 8a 01 	call	0x314	; 0x314 <_digitalWrite>
     75e:	10 92 89 00 	sts	0x0089, r1	; 0x800089 <__TEXT_REGION_LENGTH__+0x7e0089>
     762:	10 92 88 00 	sts	0x0088, r1	; 0x800088 <__TEXT_REGION_LENGTH__+0x7e0088>
     766:	6e cf       	rjmp	.-292    	; 0x644 <_analogWrite+0x26>
     768:	8f 7d       	andi	r24, 0xDF	; 223
     76a:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     76e:	60 91 11 01 	lds	r22, 0x0111	; 0x800111 <_LOW>
     772:	8a e0       	ldi	r24, 0x0A	; 10
     774:	0e 94 8a 01 	call	0x314	; 0x314 <_digitalWrite>
     778:	10 92 8b 00 	sts	0x008B, r1	; 0x80008b <__TEXT_REGION_LENGTH__+0x7e008b>
     77c:	10 92 8a 00 	sts	0x008A, r1	; 0x80008a <__TEXT_REGION_LENGTH__+0x7e008a>
     780:	61 cf       	rjmp	.-318    	; 0x644 <_analogWrite+0x26>
     782:	8f 7d       	andi	r24, 0xDF	; 223
     784:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     788:	60 91 12 01 	lds	r22, 0x0112	; 0x800112 <_HIGH>
     78c:	8a e0       	ldi	r24, 0x0A	; 10
     78e:	0e 94 8a 01 	call	0x314	; 0x314 <_digitalWrite>
     792:	10 92 8b 00 	sts	0x008B, r1	; 0x80008b <__TEXT_REGION_LENGTH__+0x7e008b>
     796:	10 92 8a 00 	sts	0x008A, r1	; 0x80008a <__TEXT_REGION_LENGTH__+0x7e008a>
     79a:	54 cf       	rjmp	.-344    	; 0x644 <_analogWrite+0x26>
     79c:	8f 7d       	andi	r24, 0xDF	; 223
     79e:	84 bd       	out	0x24, r24	; 36
     7a0:	60 91 12 01 	lds	r22, 0x0112	; 0x800112 <_HIGH>
     7a4:	85 e0       	ldi	r24, 0x05	; 5
     7a6:	0e 94 8a 01 	call	0x314	; 0x314 <_digitalWrite>
     7aa:	18 bc       	out	0x28, r1	; 40
     7ac:	4b cf       	rjmp	.-362    	; 0x644 <_analogWrite+0x26>
     7ae:	8f 7d       	andi	r24, 0xDF	; 223
     7b0:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     7b4:	60 91 12 01 	lds	r22, 0x0112	; 0x800112 <_HIGH>
     7b8:	83 e0       	ldi	r24, 0x03	; 3
     7ba:	0e 94 8a 01 	call	0x314	; 0x314 <_digitalWrite>
     7be:	10 92 b4 00 	sts	0x00B4, r1	; 0x8000b4 <__TEXT_REGION_LENGTH__+0x7e00b4>
     7c2:	40 cf       	rjmp	.-384    	; 0x644 <_analogWrite+0x26>
     7c4:	8f 77       	andi	r24, 0x7F	; 127
     7c6:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     7ca:	60 91 12 01 	lds	r22, 0x0112	; 0x800112 <_HIGH>
     7ce:	89 e0       	ldi	r24, 0x09	; 9
     7d0:	0e 94 8a 01 	call	0x314	; 0x314 <_digitalWrite>
     7d4:	10 92 89 00 	sts	0x0089, r1	; 0x800089 <__TEXT_REGION_LENGTH__+0x7e0089>
     7d8:	10 92 88 00 	sts	0x0088, r1	; 0x800088 <__TEXT_REGION_LENGTH__+0x7e0088>
     7dc:	33 cf       	rjmp	.-410    	; 0x644 <_analogWrite+0x26>
     7de:	8f 77       	andi	r24, 0x7F	; 127
     7e0:	84 bd       	out	0x24, r24	; 36
     7e2:	60 91 12 01 	lds	r22, 0x0112	; 0x800112 <_HIGH>
     7e6:	86 e0       	ldi	r24, 0x06	; 6
     7e8:	0e 94 8a 01 	call	0x314	; 0x314 <_digitalWrite>
     7ec:	17 bc       	out	0x27, r1	; 39
     7ee:	2a cf       	rjmp	.-428    	; 0x644 <_analogWrite+0x26>
     7f0:	8f 77       	andi	r24, 0x7F	; 127
     7f2:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     7f6:	60 91 12 01 	lds	r22, 0x0112	; 0x800112 <_HIGH>
     7fa:	8b e0       	ldi	r24, 0x0B	; 11
     7fc:	0e 94 8a 01 	call	0x314	; 0x314 <_digitalWrite>
     800:	10 92 b3 00 	sts	0x00B3, r1	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
     804:	1f cf       	rjmp	.-450    	; 0x644 <_analogWrite+0x26>

00000806 <_startupADC>:
     806:	87 e8       	ldi	r24, 0x87	; 135
     808:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     80c:	8a e0       	ldi	r24, 0x0A	; 10
     80e:	90 e0       	ldi	r25, 0x00	; 0
     810:	0e 94 e2 01 	call	0x3c4	; 0x3c4 <_delayMs>
     814:	61 e0       	ldi	r22, 0x01	; 1
     816:	8d e0       	ldi	r24, 0x0D	; 13
     818:	0e 94 ba 01 	call	0x374	; 0x374 <_pinMode>
     81c:	60 e0       	ldi	r22, 0x00	; 0
     81e:	8d e0       	ldi	r24, 0x0D	; 13
     820:	0c 94 8a 01 	jmp	0x314	; 0x314 <_digitalWrite>

00000824 <_slowAnalogRead>:
     824:	cf 93       	push	r28
     826:	c8 2f       	mov	r28, r24
     828:	88 30       	cpi	r24, 0x08	; 8
     82a:	38 f5       	brcc	.+78     	; 0x87a <_slowAnalogRead+0x56>
     82c:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     830:	87 fd       	sbrc	r24, 7
     832:	0f c0       	rjmp	.+30     	; 0x852 <_slowAnalogRead+0x2e>
     834:	87 e8       	ldi	r24, 0x87	; 135
     836:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     83a:	8a e0       	ldi	r24, 0x0A	; 10
     83c:	90 e0       	ldi	r25, 0x00	; 0
     83e:	0e 94 e2 01 	call	0x3c4	; 0x3c4 <_delayMs>
     842:	61 e0       	ldi	r22, 0x01	; 1
     844:	8d e0       	ldi	r24, 0x0D	; 13
     846:	0e 94 ba 01 	call	0x374	; 0x374 <_pinMode>
     84a:	60 e0       	ldi	r22, 0x00	; 0
     84c:	8d e0       	ldi	r24, 0x0D	; 13
     84e:	0e 94 8a 01 	call	0x314	; 0x314 <_digitalWrite>
     852:	c0 64       	ori	r28, 0x40	; 64
     854:	c0 93 7c 00 	sts	0x007C, r28	; 0x80007c <__TEXT_REGION_LENGTH__+0x7e007c>
     858:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     85c:	80 64       	ori	r24, 0x40	; 64
     85e:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     862:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     866:	86 fd       	sbrc	r24, 6
     868:	fc cf       	rjmp	.-8      	; 0x862 <_slowAnalogRead+0x3e>
     86a:	80 91 78 00 	lds	r24, 0x0078	; 0x800078 <__TEXT_REGION_LENGTH__+0x7e0078>
     86e:	20 91 79 00 	lds	r18, 0x0079	; 0x800079 <__TEXT_REGION_LENGTH__+0x7e0079>
     872:	90 e0       	ldi	r25, 0x00	; 0
     874:	92 2b       	or	r25, r18
     876:	cf 91       	pop	r28
     878:	08 95       	ret
     87a:	80 e0       	ldi	r24, 0x00	; 0
     87c:	90 e0       	ldi	r25, 0x00	; 0
     87e:	cf 91       	pop	r28
     880:	08 95       	ret

00000882 <__vector_21>:
     882:	1f 92       	push	r1
     884:	0f 92       	push	r0
     886:	0f b6       	in	r0, 0x3f	; 63
     888:	0f 92       	push	r0
     88a:	11 24       	eor	r1, r1
     88c:	2f 93       	push	r18
     88e:	3f 93       	push	r19
     890:	4f 93       	push	r20
     892:	5f 93       	push	r21
     894:	6f 93       	push	r22
     896:	7f 93       	push	r23
     898:	8f 93       	push	r24
     89a:	9f 93       	push	r25
     89c:	af 93       	push	r26
     89e:	bf 93       	push	r27
     8a0:	ef 93       	push	r30
     8a2:	ff 93       	push	r31
     8a4:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     8a8:	87 7f       	andi	r24, 0xF7	; 247
     8aa:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     8ae:	e0 91 33 02 	lds	r30, 0x0233	; 0x800233 <currentCallback>
     8b2:	f0 91 34 02 	lds	r31, 0x0234	; 0x800234 <currentCallback+0x1>
     8b6:	30 97       	sbiw	r30, 0x00	; 0
     8b8:	59 f0       	breq	.+22     	; 0x8d0 <__vector_21+0x4e>
     8ba:	80 91 78 00 	lds	r24, 0x0078	; 0x800078 <__TEXT_REGION_LENGTH__+0x7e0078>
     8be:	20 91 79 00 	lds	r18, 0x0079	; 0x800079 <__TEXT_REGION_LENGTH__+0x7e0079>
     8c2:	90 e0       	ldi	r25, 0x00	; 0
     8c4:	92 2b       	or	r25, r18
     8c6:	09 95       	icall
     8c8:	10 92 34 02 	sts	0x0234, r1	; 0x800234 <currentCallback+0x1>
     8cc:	10 92 33 02 	sts	0x0233, r1	; 0x800233 <currentCallback>
     8d0:	ff 91       	pop	r31
     8d2:	ef 91       	pop	r30
     8d4:	bf 91       	pop	r27
     8d6:	af 91       	pop	r26
     8d8:	9f 91       	pop	r25
     8da:	8f 91       	pop	r24
     8dc:	7f 91       	pop	r23
     8de:	6f 91       	pop	r22
     8e0:	5f 91       	pop	r21
     8e2:	4f 91       	pop	r20
     8e4:	3f 91       	pop	r19
     8e6:	2f 91       	pop	r18
     8e8:	0f 90       	pop	r0
     8ea:	0f be       	out	0x3f, r0	; 63
     8ec:	0f 90       	pop	r0
     8ee:	1f 90       	pop	r1
     8f0:	18 95       	reti

000008f2 <_analogReadAsync>:
     8f2:	0f 93       	push	r16
     8f4:	1f 93       	push	r17
     8f6:	cf 93       	push	r28
     8f8:	df 93       	push	r29
     8fa:	c8 2f       	mov	r28, r24
     8fc:	16 2f       	mov	r17, r22
     8fe:	d7 2f       	mov	r29, r23
     900:	04 2f       	mov	r16, r20
     902:	88 30       	cpi	r24, 0x08	; 8
     904:	e8 f4       	brcc	.+58     	; 0x940 <__stack+0x41>
     906:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     90a:	87 fd       	sbrc	r24, 7
     90c:	0f c0       	rjmp	.+30     	; 0x92c <__stack+0x2d>
     90e:	87 e8       	ldi	r24, 0x87	; 135
     910:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     914:	8a e0       	ldi	r24, 0x0A	; 10
     916:	90 e0       	ldi	r25, 0x00	; 0
     918:	0e 94 e2 01 	call	0x3c4	; 0x3c4 <_delayMs>
     91c:	61 e0       	ldi	r22, 0x01	; 1
     91e:	8d e0       	ldi	r24, 0x0D	; 13
     920:	0e 94 ba 01 	call	0x374	; 0x374 <_pinMode>
     924:	60 e0       	ldi	r22, 0x00	; 0
     926:	8d e0       	ldi	r24, 0x0D	; 13
     928:	0e 94 8a 01 	call	0x314	; 0x314 <_digitalWrite>
     92c:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     930:	86 fd       	sbrc	r24, 6
     932:	06 c0       	rjmp	.+12     	; 0x940 <__stack+0x41>
     934:	80 91 33 02 	lds	r24, 0x0233	; 0x800233 <currentCallback>
     938:	90 91 34 02 	lds	r25, 0x0234	; 0x800234 <currentCallback+0x1>
     93c:	89 2b       	or	r24, r25
     93e:	31 f0       	breq	.+12     	; 0x94c <__stack+0x4d>
     940:	80 e0       	ldi	r24, 0x00	; 0
     942:	df 91       	pop	r29
     944:	cf 91       	pop	r28
     946:	1f 91       	pop	r17
     948:	0f 91       	pop	r16
     94a:	08 95       	ret
     94c:	00 23       	and	r16, r16
     94e:	59 f0       	breq	.+22     	; 0x966 <__stack+0x67>
     950:	81 2f       	mov	r24, r17
     952:	9d 2f       	mov	r25, r29
     954:	97 fd       	sbrc	r25, 7
     956:	15 c0       	rjmp	.+42     	; 0x982 <__stack+0x83>
     958:	95 95       	asr	r25
     95a:	87 95       	ror	r24
     95c:	90 93 34 02 	sts	0x0234, r25	; 0x800234 <currentCallback+0x1>
     960:	80 93 33 02 	sts	0x0233, r24	; 0x800233 <currentCallback>
     964:	04 c0       	rjmp	.+8      	; 0x96e <__stack+0x6f>
     966:	10 93 33 02 	sts	0x0233, r17	; 0x800233 <currentCallback>
     96a:	d0 93 34 02 	sts	0x0234, r29	; 0x800234 <currentCallback+0x1>
     96e:	c0 64       	ori	r28, 0x40	; 64
     970:	c0 93 7c 00 	sts	0x007C, r28	; 0x80007c <__TEXT_REGION_LENGTH__+0x7e007c>
     974:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     978:	88 64       	ori	r24, 0x48	; 72
     97a:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     97e:	81 e0       	ldi	r24, 0x01	; 1
     980:	e0 cf       	rjmp	.-64     	; 0x942 <__stack+0x43>
     982:	01 96       	adiw	r24, 0x01	; 1
     984:	e9 cf       	rjmp	.-46     	; 0x958 <__stack+0x59>

00000986 <startTimers>:
     986:	83 e0       	ldi	r24, 0x03	; 3
     988:	84 bd       	out	0x24, r24	; 36
     98a:	85 bd       	out	0x25, r24	; 37
     98c:	91 e0       	ldi	r25, 0x01	; 1
     98e:	90 93 80 00 	sts	0x0080, r25	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     992:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
     996:	90 93 b0 00 	sts	0x00B0, r25	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     99a:	84 e0       	ldi	r24, 0x04	; 4
     99c:	80 93 b1 00 	sts	0x00B1, r24	; 0x8000b1 <__TEXT_REGION_LENGTH__+0x7e00b1>
     9a0:	ee e6       	ldi	r30, 0x6E	; 110
     9a2:	f0 e0       	ldi	r31, 0x00	; 0
     9a4:	80 81       	ld	r24, Z
     9a6:	81 60       	ori	r24, 0x01	; 1
     9a8:	80 83       	st	Z, r24
     9aa:	08 95       	ret

000009ac <__udivmodsi4>:
     9ac:	a1 e2       	ldi	r26, 0x21	; 33
     9ae:	1a 2e       	mov	r1, r26
     9b0:	aa 1b       	sub	r26, r26
     9b2:	bb 1b       	sub	r27, r27
     9b4:	ea 2f       	mov	r30, r26
     9b6:	fb 2f       	mov	r31, r27
     9b8:	0d c0       	rjmp	.+26     	; 0x9d4 <__udivmodsi4_ep>

000009ba <__udivmodsi4_loop>:
     9ba:	aa 1f       	adc	r26, r26
     9bc:	bb 1f       	adc	r27, r27
     9be:	ee 1f       	adc	r30, r30
     9c0:	ff 1f       	adc	r31, r31
     9c2:	a2 17       	cp	r26, r18
     9c4:	b3 07       	cpc	r27, r19
     9c6:	e4 07       	cpc	r30, r20
     9c8:	f5 07       	cpc	r31, r21
     9ca:	20 f0       	brcs	.+8      	; 0x9d4 <__udivmodsi4_ep>
     9cc:	a2 1b       	sub	r26, r18
     9ce:	b3 0b       	sbc	r27, r19
     9d0:	e4 0b       	sbc	r30, r20
     9d2:	f5 0b       	sbc	r31, r21

000009d4 <__udivmodsi4_ep>:
     9d4:	66 1f       	adc	r22, r22
     9d6:	77 1f       	adc	r23, r23
     9d8:	88 1f       	adc	r24, r24
     9da:	99 1f       	adc	r25, r25
     9dc:	1a 94       	dec	r1
     9de:	69 f7       	brne	.-38     	; 0x9ba <__udivmodsi4_loop>
     9e0:	60 95       	com	r22
     9e2:	70 95       	com	r23
     9e4:	80 95       	com	r24
     9e6:	90 95       	com	r25
     9e8:	26 2f       	mov	r18, r22
     9ea:	37 2f       	mov	r19, r23
     9ec:	48 2f       	mov	r20, r24
     9ee:	59 2f       	mov	r21, r25
     9f0:	6a 2f       	mov	r22, r26
     9f2:	7b 2f       	mov	r23, r27
     9f4:	8e 2f       	mov	r24, r30
     9f6:	9f 2f       	mov	r25, r31
     9f8:	08 95       	ret

000009fa <__tablejump2__>:
     9fa:	ee 0f       	add	r30, r30
     9fc:	ff 1f       	adc	r31, r31
     9fe:	c8 95       	lpm
     a00:	0f 92       	push	r0
     a02:	31 96       	adiw	r30, 0x01	; 1
     a04:	c8 95       	lpm
     a06:	0f 92       	push	r0
     a08:	08 95       	ret

00000a0a <snprintf>:
     a0a:	ae e0       	ldi	r26, 0x0E	; 14
     a0c:	b0 e0       	ldi	r27, 0x00	; 0
     a0e:	ea e0       	ldi	r30, 0x0A	; 10
     a10:	f5 e0       	ldi	r31, 0x05	; 5
     a12:	06 c3       	rjmp	.+1548   	; 0x1020 <__prologue_saves__+0x1c>
     a14:	0d 89       	ldd	r16, Y+21	; 0x15
     a16:	1e 89       	ldd	r17, Y+22	; 0x16
     a18:	8f 89       	ldd	r24, Y+23	; 0x17
     a1a:	98 8d       	ldd	r25, Y+24	; 0x18
     a1c:	26 e0       	ldi	r18, 0x06	; 6
     a1e:	2c 83       	std	Y+4, r18	; 0x04
     a20:	1a 83       	std	Y+2, r17	; 0x02
     a22:	09 83       	std	Y+1, r16	; 0x01
     a24:	97 ff       	sbrs	r25, 7
     a26:	02 c0       	rjmp	.+4      	; 0xa2c <snprintf+0x22>
     a28:	80 e0       	ldi	r24, 0x00	; 0
     a2a:	90 e8       	ldi	r25, 0x80	; 128
     a2c:	01 97       	sbiw	r24, 0x01	; 1
     a2e:	9e 83       	std	Y+6, r25	; 0x06
     a30:	8d 83       	std	Y+5, r24	; 0x05
     a32:	4c 2f       	mov	r20, r28
     a34:	5d 2f       	mov	r21, r29
     a36:	45 5e       	subi	r20, 0xE5	; 229
     a38:	5f 4f       	sbci	r21, 0xFF	; 255
     a3a:	69 8d       	ldd	r22, Y+25	; 0x19
     a3c:	7a 8d       	ldd	r23, Y+26	; 0x1a
     a3e:	8c 2f       	mov	r24, r28
     a40:	9d 2f       	mov	r25, r29
     a42:	01 96       	adiw	r24, 0x01	; 1
     a44:	13 d0       	rcall	.+38     	; 0xa6c <vfprintf>
     a46:	4d 81       	ldd	r20, Y+5	; 0x05
     a48:	5e 81       	ldd	r21, Y+6	; 0x06
     a4a:	57 fd       	sbrc	r21, 7
     a4c:	0c c0       	rjmp	.+24     	; 0xa66 <snprintf+0x5c>
     a4e:	2f 81       	ldd	r18, Y+7	; 0x07
     a50:	38 85       	ldd	r19, Y+8	; 0x08
     a52:	42 17       	cp	r20, r18
     a54:	53 07       	cpc	r21, r19
     a56:	14 f4       	brge	.+4      	; 0xa5c <snprintf+0x52>
     a58:	24 2f       	mov	r18, r20
     a5a:	35 2f       	mov	r19, r21
     a5c:	02 0f       	add	r16, r18
     a5e:	13 1f       	adc	r17, r19
     a60:	e0 2f       	mov	r30, r16
     a62:	f1 2f       	mov	r31, r17
     a64:	10 82       	st	Z, r1
     a66:	2e 96       	adiw	r28, 0x0e	; 14
     a68:	e4 e0       	ldi	r30, 0x04	; 4
     a6a:	f6 c2       	rjmp	.+1516   	; 0x1058 <__epilogue_restores__+0x1c>

00000a6c <vfprintf>:
     a6c:	ab e0       	ldi	r26, 0x0B	; 11
     a6e:	b0 e0       	ldi	r27, 0x00	; 0
     a70:	eb e3       	ldi	r30, 0x3B	; 59
     a72:	f5 e0       	ldi	r31, 0x05	; 5
     a74:	c7 c2       	rjmp	.+1422   	; 0x1004 <__prologue_saves__>
     a76:	e8 2e       	mov	r14, r24
     a78:	f9 2e       	mov	r15, r25
     a7a:	66 2e       	mov	r6, r22
     a7c:	77 2e       	mov	r7, r23
     a7e:	04 2f       	mov	r16, r20
     a80:	15 2f       	mov	r17, r21
     a82:	e8 2f       	mov	r30, r24
     a84:	f9 2f       	mov	r31, r25
     a86:	17 82       	std	Z+7, r1	; 0x07
     a88:	16 82       	std	Z+6, r1	; 0x06
     a8a:	83 81       	ldd	r24, Z+3	; 0x03
     a8c:	81 ff       	sbrs	r24, 1
     a8e:	ff c1       	rjmp	.+1022   	; 0xe8e <vfprintf+0x422>
     a90:	8c 2f       	mov	r24, r28
     a92:	9d 2f       	mov	r25, r29
     a94:	01 96       	adiw	r24, 0x01	; 1
     a96:	a8 2e       	mov	r10, r24
     a98:	b9 2e       	mov	r11, r25
     a9a:	ee 2d       	mov	r30, r14
     a9c:	ff 2d       	mov	r31, r15
     a9e:	93 81       	ldd	r25, Z+3	; 0x03
     aa0:	e6 2d       	mov	r30, r6
     aa2:	f7 2d       	mov	r31, r7
     aa4:	93 fd       	sbrc	r25, 3
     aa6:	c8 95       	lpm
     aa8:	93 ff       	sbrs	r25, 3
     aaa:	00 80       	ld	r0, Z
     aac:	31 96       	adiw	r30, 0x01	; 1
     aae:	80 2d       	mov	r24, r0
     ab0:	6e 2e       	mov	r6, r30
     ab2:	7f 2e       	mov	r7, r31
     ab4:	88 23       	and	r24, r24
     ab6:	09 f4       	brne	.+2      	; 0xaba <vfprintf+0x4e>
     ab8:	48 c1       	rjmp	.+656    	; 0xd4a <vfprintf+0x2de>
     aba:	85 32       	cpi	r24, 0x25	; 37
     abc:	51 f4       	brne	.+20     	; 0xad2 <vfprintf+0x66>
     abe:	93 fd       	sbrc	r25, 3
     ac0:	c8 95       	lpm
     ac2:	93 ff       	sbrs	r25, 3
     ac4:	00 80       	ld	r0, Z
     ac6:	31 96       	adiw	r30, 0x01	; 1
     ac8:	80 2d       	mov	r24, r0
     aca:	6e 2e       	mov	r6, r30
     acc:	7f 2e       	mov	r7, r31
     ace:	85 32       	cpi	r24, 0x25	; 37
     ad0:	29 f4       	brne	.+10     	; 0xadc <vfprintf+0x70>
     ad2:	6e 2d       	mov	r22, r14
     ad4:	7f 2d       	mov	r23, r15
     ad6:	90 e0       	ldi	r25, 0x00	; 0
     ad8:	f6 d1       	rcall	.+1004   	; 0xec6 <fputc>
     ada:	df cf       	rjmp	.-66     	; 0xa9a <vfprintf+0x2e>
     adc:	91 2c       	mov	r9, r1
     ade:	21 2c       	mov	r2, r1
     ae0:	31 2c       	mov	r3, r1
     ae2:	ff e1       	ldi	r31, 0x1F	; 31
     ae4:	f3 15       	cp	r31, r3
     ae6:	38 f0       	brcs	.+14     	; 0xaf6 <vfprintf+0x8a>
     ae8:	8b 32       	cpi	r24, 0x2B	; 43
     aea:	39 f1       	breq	.+78     	; 0xb3a <vfprintf+0xce>
     aec:	90 f4       	brcc	.+36     	; 0xb12 <vfprintf+0xa6>
     aee:	80 32       	cpi	r24, 0x20	; 32
     af0:	39 f1       	breq	.+78     	; 0xb40 <vfprintf+0xd4>
     af2:	83 32       	cpi	r24, 0x23	; 35
     af4:	69 f1       	breq	.+90     	; 0xb50 <vfprintf+0xe4>
     af6:	37 fc       	sbrc	r3, 7
     af8:	45 c0       	rjmp	.+138    	; 0xb84 <vfprintf+0x118>
     afa:	20 ed       	ldi	r18, 0xD0	; 208
     afc:	28 0f       	add	r18, r24
     afe:	2a 30       	cpi	r18, 0x0A	; 10
     b00:	98 f5       	brcc	.+102    	; 0xb68 <vfprintf+0xfc>
     b02:	36 fe       	sbrs	r3, 6
     b04:	28 c0       	rjmp	.+80     	; 0xb56 <vfprintf+0xea>
     b06:	89 2d       	mov	r24, r9
     b08:	6a e0       	ldi	r22, 0x0A	; 10
     b0a:	73 d2       	rcall	.+1254   	; 0xff2 <__mulqi3>
     b0c:	92 2e       	mov	r9, r18
     b0e:	98 0e       	add	r9, r24
     b10:	07 c0       	rjmp	.+14     	; 0xb20 <vfprintf+0xb4>
     b12:	8d 32       	cpi	r24, 0x2D	; 45
     b14:	c9 f0       	breq	.+50     	; 0xb48 <vfprintf+0xdc>
     b16:	80 33       	cpi	r24, 0x30	; 48
     b18:	71 f7       	brne	.-36     	; 0xaf6 <vfprintf+0x8a>
     b1a:	23 2d       	mov	r18, r3
     b1c:	21 60       	ori	r18, 0x01	; 1
     b1e:	32 2e       	mov	r3, r18
     b20:	e6 2d       	mov	r30, r6
     b22:	f7 2d       	mov	r31, r7
     b24:	93 fd       	sbrc	r25, 3
     b26:	c8 95       	lpm
     b28:	93 ff       	sbrs	r25, 3
     b2a:	00 80       	ld	r0, Z
     b2c:	31 96       	adiw	r30, 0x01	; 1
     b2e:	80 2d       	mov	r24, r0
     b30:	6e 2e       	mov	r6, r30
     b32:	7f 2e       	mov	r7, r31
     b34:	81 11       	cpse	r24, r1
     b36:	d5 cf       	rjmp	.-86     	; 0xae2 <vfprintf+0x76>
     b38:	25 c0       	rjmp	.+74     	; 0xb84 <vfprintf+0x118>
     b3a:	83 2d       	mov	r24, r3
     b3c:	82 60       	ori	r24, 0x02	; 2
     b3e:	38 2e       	mov	r3, r24
     b40:	e3 2d       	mov	r30, r3
     b42:	e4 60       	ori	r30, 0x04	; 4
     b44:	3e 2e       	mov	r3, r30
     b46:	ec cf       	rjmp	.-40     	; 0xb20 <vfprintf+0xb4>
     b48:	f3 2d       	mov	r31, r3
     b4a:	f8 60       	ori	r31, 0x08	; 8
     b4c:	3f 2e       	mov	r3, r31
     b4e:	e8 cf       	rjmp	.-48     	; 0xb20 <vfprintf+0xb4>
     b50:	23 2d       	mov	r18, r3
     b52:	20 61       	ori	r18, 0x10	; 16
     b54:	e4 cf       	rjmp	.-56     	; 0xb1e <vfprintf+0xb2>
     b56:	82 2d       	mov	r24, r2
     b58:	6a e0       	ldi	r22, 0x0A	; 10
     b5a:	4b d2       	rcall	.+1174   	; 0xff2 <__mulqi3>
     b5c:	22 2e       	mov	r2, r18
     b5e:	28 0e       	add	r2, r24
     b60:	83 2d       	mov	r24, r3
     b62:	80 62       	ori	r24, 0x20	; 32
     b64:	38 2e       	mov	r3, r24
     b66:	dc cf       	rjmp	.-72     	; 0xb20 <vfprintf+0xb4>
     b68:	8e 32       	cpi	r24, 0x2E	; 46
     b6a:	29 f4       	brne	.+10     	; 0xb76 <vfprintf+0x10a>
     b6c:	36 fc       	sbrc	r3, 6
     b6e:	ed c0       	rjmp	.+474    	; 0xd4a <vfprintf+0x2de>
     b70:	e3 2d       	mov	r30, r3
     b72:	e0 64       	ori	r30, 0x40	; 64
     b74:	e7 cf       	rjmp	.-50     	; 0xb44 <vfprintf+0xd8>
     b76:	8c 36       	cpi	r24, 0x6C	; 108
     b78:	19 f4       	brne	.+6      	; 0xb80 <vfprintf+0x114>
     b7a:	f3 2d       	mov	r31, r3
     b7c:	f0 68       	ori	r31, 0x80	; 128
     b7e:	e6 cf       	rjmp	.-52     	; 0xb4c <vfprintf+0xe0>
     b80:	88 36       	cpi	r24, 0x68	; 104
     b82:	71 f2       	breq	.-100    	; 0xb20 <vfprintf+0xb4>
     b84:	98 2f       	mov	r25, r24
     b86:	9f 7d       	andi	r25, 0xDF	; 223
     b88:	95 54       	subi	r25, 0x45	; 69
     b8a:	93 30       	cpi	r25, 0x03	; 3
     b8c:	08 f1       	brcs	.+66     	; 0xbd0 <vfprintf+0x164>
     b8e:	83 36       	cpi	r24, 0x63	; 99
     b90:	09 f4       	brne	.+2      	; 0xb94 <vfprintf+0x128>
     b92:	3f c0       	rjmp	.+126    	; 0xc12 <vfprintf+0x1a6>
     b94:	83 37       	cpi	r24, 0x73	; 115
     b96:	09 f4       	brne	.+2      	; 0xb9a <vfprintf+0x12e>
     b98:	43 c0       	rjmp	.+134    	; 0xc20 <vfprintf+0x1b4>
     b9a:	83 35       	cpi	r24, 0x53	; 83
     b9c:	09 f0       	breq	.+2      	; 0xba0 <vfprintf+0x134>
     b9e:	76 c0       	rjmp	.+236    	; 0xc8c <vfprintf+0x220>
     ba0:	40 2e       	mov	r4, r16
     ba2:	51 2e       	mov	r5, r17
     ba4:	22 e0       	ldi	r18, 0x02	; 2
     ba6:	42 0e       	add	r4, r18
     ba8:	51 1c       	adc	r5, r1
     baa:	e0 2f       	mov	r30, r16
     bac:	f1 2f       	mov	r31, r17
     bae:	c0 80       	ld	r12, Z
     bb0:	d1 80       	ldd	r13, Z+1	; 0x01
     bb2:	36 fe       	sbrs	r3, 6
     bb4:	4d c0       	rjmp	.+154    	; 0xc50 <vfprintf+0x1e4>
     bb6:	69 2d       	mov	r22, r9
     bb8:	70 e0       	ldi	r23, 0x00	; 0
     bba:	8c 2d       	mov	r24, r12
     bbc:	9d 2d       	mov	r25, r13
     bbe:	6a d1       	rcall	.+724    	; 0xe94 <strnlen_P>
     bc0:	88 2e       	mov	r8, r24
     bc2:	99 2e       	mov	r9, r25
     bc4:	f3 2d       	mov	r31, r3
     bc6:	f0 68       	ori	r31, 0x80	; 128
     bc8:	3f 2e       	mov	r3, r31
     bca:	04 2d       	mov	r16, r4
     bcc:	15 2d       	mov	r17, r5
     bce:	0c c0       	rjmp	.+24     	; 0xbe8 <vfprintf+0x17c>
     bd0:	0c 5f       	subi	r16, 0xFC	; 252
     bd2:	1f 4f       	sbci	r17, 0xFF	; 255
     bd4:	2f e3       	ldi	r18, 0x3F	; 63
     bd6:	29 83       	std	Y+1, r18	; 0x01
     bd8:	88 24       	eor	r8, r8
     bda:	83 94       	inc	r8
     bdc:	91 2c       	mov	r9, r1
     bde:	ca 2c       	mov	r12, r10
     be0:	db 2c       	mov	r13, r11
     be2:	f3 2d       	mov	r31, r3
     be4:	ff 77       	andi	r31, 0x7F	; 127
     be6:	3f 2e       	mov	r3, r31
     be8:	33 fc       	sbrc	r3, 3
     bea:	05 c0       	rjmp	.+10     	; 0xbf6 <vfprintf+0x18a>
     bec:	82 2d       	mov	r24, r2
     bee:	90 e0       	ldi	r25, 0x00	; 0
     bf0:	88 16       	cp	r8, r24
     bf2:	99 06       	cpc	r9, r25
     bf4:	80 f1       	brcs	.+96     	; 0xc56 <vfprintf+0x1ea>
     bf6:	52 2c       	mov	r5, r2
     bf8:	81 14       	cp	r8, r1
     bfa:	91 04       	cpc	r9, r1
     bfc:	99 f5       	brne	.+102    	; 0xc64 <vfprintf+0x1f8>
     bfe:	55 20       	and	r5, r5
     c00:	09 f4       	brne	.+2      	; 0xc04 <vfprintf+0x198>
     c02:	4b cf       	rjmp	.-362    	; 0xa9a <vfprintf+0x2e>
     c04:	6e 2d       	mov	r22, r14
     c06:	7f 2d       	mov	r23, r15
     c08:	80 e2       	ldi	r24, 0x20	; 32
     c0a:	90 e0       	ldi	r25, 0x00	; 0
     c0c:	5c d1       	rcall	.+696    	; 0xec6 <fputc>
     c0e:	5a 94       	dec	r5
     c10:	f6 cf       	rjmp	.-20     	; 0xbfe <vfprintf+0x192>
     c12:	e0 2f       	mov	r30, r16
     c14:	f1 2f       	mov	r31, r17
     c16:	80 81       	ld	r24, Z
     c18:	89 83       	std	Y+1, r24	; 0x01
     c1a:	0e 5f       	subi	r16, 0xFE	; 254
     c1c:	1f 4f       	sbci	r17, 0xFF	; 255
     c1e:	dc cf       	rjmp	.-72     	; 0xbd8 <vfprintf+0x16c>
     c20:	40 2e       	mov	r4, r16
     c22:	51 2e       	mov	r5, r17
     c24:	f2 e0       	ldi	r31, 0x02	; 2
     c26:	4f 0e       	add	r4, r31
     c28:	51 1c       	adc	r5, r1
     c2a:	e0 2f       	mov	r30, r16
     c2c:	f1 2f       	mov	r31, r17
     c2e:	c0 80       	ld	r12, Z
     c30:	d1 80       	ldd	r13, Z+1	; 0x01
     c32:	36 fe       	sbrs	r3, 6
     c34:	0a c0       	rjmp	.+20     	; 0xc4a <vfprintf+0x1de>
     c36:	69 2d       	mov	r22, r9
     c38:	70 e0       	ldi	r23, 0x00	; 0
     c3a:	8c 2d       	mov	r24, r12
     c3c:	9d 2d       	mov	r25, r13
     c3e:	37 d1       	rcall	.+622    	; 0xeae <strnlen>
     c40:	88 2e       	mov	r8, r24
     c42:	99 2e       	mov	r9, r25
     c44:	04 2d       	mov	r16, r4
     c46:	15 2d       	mov	r17, r5
     c48:	cc cf       	rjmp	.-104    	; 0xbe2 <vfprintf+0x176>
     c4a:	6f ef       	ldi	r22, 0xFF	; 255
     c4c:	7f ef       	ldi	r23, 0xFF	; 255
     c4e:	f5 cf       	rjmp	.-22     	; 0xc3a <vfprintf+0x1ce>
     c50:	6f ef       	ldi	r22, 0xFF	; 255
     c52:	7f ef       	ldi	r23, 0xFF	; 255
     c54:	b2 cf       	rjmp	.-156    	; 0xbba <vfprintf+0x14e>
     c56:	6e 2d       	mov	r22, r14
     c58:	7f 2d       	mov	r23, r15
     c5a:	80 e2       	ldi	r24, 0x20	; 32
     c5c:	90 e0       	ldi	r25, 0x00	; 0
     c5e:	33 d1       	rcall	.+614    	; 0xec6 <fputc>
     c60:	2a 94       	dec	r2
     c62:	c4 cf       	rjmp	.-120    	; 0xbec <vfprintf+0x180>
     c64:	ec 2d       	mov	r30, r12
     c66:	fd 2d       	mov	r31, r13
     c68:	37 fc       	sbrc	r3, 7
     c6a:	c8 95       	lpm
     c6c:	37 fe       	sbrs	r3, 7
     c6e:	00 80       	ld	r0, Z
     c70:	31 96       	adiw	r30, 0x01	; 1
     c72:	80 2d       	mov	r24, r0
     c74:	ce 2e       	mov	r12, r30
     c76:	df 2e       	mov	r13, r31
     c78:	6e 2d       	mov	r22, r14
     c7a:	7f 2d       	mov	r23, r15
     c7c:	90 e0       	ldi	r25, 0x00	; 0
     c7e:	23 d1       	rcall	.+582    	; 0xec6 <fputc>
     c80:	51 10       	cpse	r5, r1
     c82:	5a 94       	dec	r5
     c84:	21 e0       	ldi	r18, 0x01	; 1
     c86:	82 1a       	sub	r8, r18
     c88:	91 08       	sbc	r9, r1
     c8a:	b6 cf       	rjmp	.-148    	; 0xbf8 <vfprintf+0x18c>
     c8c:	84 36       	cpi	r24, 0x64	; 100
     c8e:	11 f0       	breq	.+4      	; 0xc94 <vfprintf+0x228>
     c90:	89 36       	cpi	r24, 0x69	; 105
     c92:	c9 f5       	brne	.+114    	; 0xd06 <vfprintf+0x29a>
     c94:	e0 2f       	mov	r30, r16
     c96:	f1 2f       	mov	r31, r17
     c98:	37 fe       	sbrs	r3, 7
     c9a:	2c c0       	rjmp	.+88     	; 0xcf4 <vfprintf+0x288>
     c9c:	60 81       	ld	r22, Z
     c9e:	71 81       	ldd	r23, Z+1	; 0x01
     ca0:	82 81       	ldd	r24, Z+2	; 0x02
     ca2:	93 81       	ldd	r25, Z+3	; 0x03
     ca4:	0c 5f       	subi	r16, 0xFC	; 252
     ca6:	1f 4f       	sbci	r17, 0xFF	; 255
     ca8:	f3 2d       	mov	r31, r3
     caa:	ff 76       	andi	r31, 0x6F	; 111
     cac:	3f 2e       	mov	r3, r31
     cae:	97 ff       	sbrs	r25, 7
     cb0:	09 c0       	rjmp	.+18     	; 0xcc4 <vfprintf+0x258>
     cb2:	90 95       	com	r25
     cb4:	80 95       	com	r24
     cb6:	70 95       	com	r23
     cb8:	61 95       	neg	r22
     cba:	7f 4f       	sbci	r23, 0xFF	; 255
     cbc:	8f 4f       	sbci	r24, 0xFF	; 255
     cbe:	9f 4f       	sbci	r25, 0xFF	; 255
     cc0:	f0 68       	ori	r31, 0x80	; 128
     cc2:	3f 2e       	mov	r3, r31
     cc4:	2a e0       	ldi	r18, 0x0A	; 10
     cc6:	30 e0       	ldi	r19, 0x00	; 0
     cc8:	4a 2d       	mov	r20, r10
     cca:	5b 2d       	mov	r21, r11
     ccc:	2e d1       	rcall	.+604    	; 0xf2a <__ultoa_invert>
     cce:	c8 2e       	mov	r12, r24
     cd0:	ca 18       	sub	r12, r10
     cd2:	36 fe       	sbrs	r3, 6
     cd4:	63 c0       	rjmp	.+198    	; 0xd9c <vfprintf+0x330>
     cd6:	23 2d       	mov	r18, r3
     cd8:	2e 7f       	andi	r18, 0xFE	; 254
     cda:	82 2e       	mov	r8, r18
     cdc:	c9 14       	cp	r12, r9
     cde:	08 f0       	brcs	.+2      	; 0xce2 <vfprintf+0x276>
     ce0:	9f c0       	rjmp	.+318    	; 0xe20 <vfprintf+0x3b4>
     ce2:	34 fe       	sbrs	r3, 4
     ce4:	05 c0       	rjmp	.+10     	; 0xcf0 <vfprintf+0x284>
     ce6:	32 fc       	sbrc	r3, 2
     ce8:	03 c0       	rjmp	.+6      	; 0xcf0 <vfprintf+0x284>
     cea:	83 2d       	mov	r24, r3
     cec:	8e 7e       	andi	r24, 0xEE	; 238
     cee:	88 2e       	mov	r8, r24
     cf0:	d9 2c       	mov	r13, r9
     cf2:	56 c0       	rjmp	.+172    	; 0xda0 <vfprintf+0x334>
     cf4:	60 81       	ld	r22, Z
     cf6:	71 81       	ldd	r23, Z+1	; 0x01
     cf8:	07 2e       	mov	r0, r23
     cfa:	00 0c       	add	r0, r0
     cfc:	88 0b       	sbc	r24, r24
     cfe:	99 0b       	sbc	r25, r25
     d00:	0e 5f       	subi	r16, 0xFE	; 254
     d02:	1f 4f       	sbci	r17, 0xFF	; 255
     d04:	d1 cf       	rjmp	.-94     	; 0xca8 <vfprintf+0x23c>
     d06:	85 37       	cpi	r24, 0x75	; 117
     d08:	c1 f4       	brne	.+48     	; 0xd3a <vfprintf+0x2ce>
     d0a:	23 2d       	mov	r18, r3
     d0c:	2f 7e       	andi	r18, 0xEF	; 239
     d0e:	d2 2e       	mov	r13, r18
     d10:	2a e0       	ldi	r18, 0x0A	; 10
     d12:	30 e0       	ldi	r19, 0x00	; 0
     d14:	e0 2f       	mov	r30, r16
     d16:	f1 2f       	mov	r31, r17
     d18:	d7 fe       	sbrs	r13, 7
     d1a:	39 c0       	rjmp	.+114    	; 0xd8e <vfprintf+0x322>
     d1c:	60 81       	ld	r22, Z
     d1e:	71 81       	ldd	r23, Z+1	; 0x01
     d20:	82 81       	ldd	r24, Z+2	; 0x02
     d22:	93 81       	ldd	r25, Z+3	; 0x03
     d24:	0c 5f       	subi	r16, 0xFC	; 252
     d26:	1f 4f       	sbci	r17, 0xFF	; 255
     d28:	4a 2d       	mov	r20, r10
     d2a:	5b 2d       	mov	r21, r11
     d2c:	fe d0       	rcall	.+508    	; 0xf2a <__ultoa_invert>
     d2e:	c8 2e       	mov	r12, r24
     d30:	ca 18       	sub	r12, r10
     d32:	fd 2d       	mov	r31, r13
     d34:	ff 77       	andi	r31, 0x7F	; 127
     d36:	3f 2e       	mov	r3, r31
     d38:	cc cf       	rjmp	.-104    	; 0xcd2 <vfprintf+0x266>
     d3a:	93 2d       	mov	r25, r3
     d3c:	99 7f       	andi	r25, 0xF9	; 249
     d3e:	d9 2e       	mov	r13, r25
     d40:	8f 36       	cpi	r24, 0x6F	; 111
     d42:	11 f1       	breq	.+68     	; 0xd88 <vfprintf+0x31c>
     d44:	48 f4       	brcc	.+18     	; 0xd58 <vfprintf+0x2ec>
     d46:	88 35       	cpi	r24, 0x58	; 88
     d48:	b9 f0       	breq	.+46     	; 0xd78 <vfprintf+0x30c>
     d4a:	ee 2d       	mov	r30, r14
     d4c:	ff 2d       	mov	r31, r15
     d4e:	86 81       	ldd	r24, Z+6	; 0x06
     d50:	97 81       	ldd	r25, Z+7	; 0x07
     d52:	2b 96       	adiw	r28, 0x0b	; 11
     d54:	e2 e1       	ldi	r30, 0x12	; 18
     d56:	72 c1       	rjmp	.+740    	; 0x103c <__epilogue_restores__>
     d58:	80 37       	cpi	r24, 0x70	; 112
     d5a:	51 f0       	breq	.+20     	; 0xd70 <vfprintf+0x304>
     d5c:	88 37       	cpi	r24, 0x78	; 120
     d5e:	a9 f7       	brne	.-22     	; 0xd4a <vfprintf+0x2de>
     d60:	d4 fe       	sbrs	r13, 4
     d62:	03 c0       	rjmp	.+6      	; 0xd6a <vfprintf+0x2fe>
     d64:	fd 2d       	mov	r31, r13
     d66:	f4 60       	ori	r31, 0x04	; 4
     d68:	df 2e       	mov	r13, r31
     d6a:	20 e1       	ldi	r18, 0x10	; 16
     d6c:	30 e0       	ldi	r19, 0x00	; 0
     d6e:	d2 cf       	rjmp	.-92     	; 0xd14 <vfprintf+0x2a8>
     d70:	e9 2f       	mov	r30, r25
     d72:	e0 61       	ori	r30, 0x10	; 16
     d74:	de 2e       	mov	r13, r30
     d76:	f4 cf       	rjmp	.-24     	; 0xd60 <vfprintf+0x2f4>
     d78:	34 fe       	sbrs	r3, 4
     d7a:	03 c0       	rjmp	.+6      	; 0xd82 <vfprintf+0x316>
     d7c:	29 2f       	mov	r18, r25
     d7e:	26 60       	ori	r18, 0x06	; 6
     d80:	d2 2e       	mov	r13, r18
     d82:	20 e1       	ldi	r18, 0x10	; 16
     d84:	32 e0       	ldi	r19, 0x02	; 2
     d86:	c6 cf       	rjmp	.-116    	; 0xd14 <vfprintf+0x2a8>
     d88:	28 e0       	ldi	r18, 0x08	; 8
     d8a:	30 e0       	ldi	r19, 0x00	; 0
     d8c:	c3 cf       	rjmp	.-122    	; 0xd14 <vfprintf+0x2a8>
     d8e:	60 81       	ld	r22, Z
     d90:	71 81       	ldd	r23, Z+1	; 0x01
     d92:	80 e0       	ldi	r24, 0x00	; 0
     d94:	90 e0       	ldi	r25, 0x00	; 0
     d96:	0e 5f       	subi	r16, 0xFE	; 254
     d98:	1f 4f       	sbci	r17, 0xFF	; 255
     d9a:	c6 cf       	rjmp	.-116    	; 0xd28 <vfprintf+0x2bc>
     d9c:	dc 2c       	mov	r13, r12
     d9e:	83 2c       	mov	r8, r3
     da0:	84 fe       	sbrs	r8, 4
     da2:	47 c0       	rjmp	.+142    	; 0xe32 <vfprintf+0x3c6>
     da4:	ec 2f       	mov	r30, r28
     da6:	fd 2f       	mov	r31, r29
     da8:	ec 0d       	add	r30, r12
     daa:	f1 1d       	adc	r31, r1
     dac:	80 81       	ld	r24, Z
     dae:	80 33       	cpi	r24, 0x30	; 48
     db0:	c9 f5       	brne	.+114    	; 0xe24 <vfprintf+0x3b8>
     db2:	98 2d       	mov	r25, r8
     db4:	99 7e       	andi	r25, 0xE9	; 233
     db6:	89 2e       	mov	r8, r25
     db8:	e8 2d       	mov	r30, r8
     dba:	e8 70       	andi	r30, 0x08	; 8
     dbc:	5e 2e       	mov	r5, r30
     dbe:	83 fc       	sbrc	r8, 3
     dc0:	47 c0       	rjmp	.+142    	; 0xe50 <vfprintf+0x3e4>
     dc2:	80 fe       	sbrs	r8, 0
     dc4:	41 c0       	rjmp	.+130    	; 0xe48 <vfprintf+0x3dc>
     dc6:	d2 14       	cp	r13, r2
     dc8:	08 f0       	brcs	.+2      	; 0xdcc <vfprintf+0x360>
     dca:	47 c0       	rjmp	.+142    	; 0xe5a <vfprintf+0x3ee>
     dcc:	2c 0c       	add	r2, r12
     dce:	92 2c       	mov	r9, r2
     dd0:	9d 18       	sub	r9, r13
     dd2:	84 fe       	sbrs	r8, 4
     dd4:	47 c0       	rjmp	.+142    	; 0xe64 <vfprintf+0x3f8>
     dd6:	6e 2d       	mov	r22, r14
     dd8:	7f 2d       	mov	r23, r15
     dda:	80 e3       	ldi	r24, 0x30	; 48
     ddc:	90 e0       	ldi	r25, 0x00	; 0
     dde:	73 d0       	rcall	.+230    	; 0xec6 <fputc>
     de0:	82 fe       	sbrs	r8, 2
     de2:	07 c0       	rjmp	.+14     	; 0xdf2 <vfprintf+0x386>
     de4:	81 fc       	sbrc	r8, 1
     de6:	3b c0       	rjmp	.+118    	; 0xe5e <vfprintf+0x3f2>
     de8:	88 e7       	ldi	r24, 0x78	; 120
     dea:	90 e0       	ldi	r25, 0x00	; 0
     dec:	6e 2d       	mov	r22, r14
     dee:	7f 2d       	mov	r23, r15
     df0:	6a d0       	rcall	.+212    	; 0xec6 <fputc>
     df2:	c9 14       	cp	r12, r9
     df4:	08 f4       	brcc	.+2      	; 0xdf8 <vfprintf+0x38c>
     df6:	44 c0       	rjmp	.+136    	; 0xe80 <vfprintf+0x414>
     df8:	ca 94       	dec	r12
     dfa:	d1 2c       	mov	r13, r1
     dfc:	ff ef       	ldi	r31, 0xFF	; 255
     dfe:	cf 1a       	sub	r12, r31
     e00:	df 0a       	sbc	r13, r31
     e02:	ca 0c       	add	r12, r10
     e04:	db 1c       	adc	r13, r11
     e06:	ec 2d       	mov	r30, r12
     e08:	fd 2d       	mov	r31, r13
     e0a:	82 91       	ld	r24, -Z
     e0c:	ce 2e       	mov	r12, r30
     e0e:	df 2e       	mov	r13, r31
     e10:	6e 2d       	mov	r22, r14
     e12:	7f 2d       	mov	r23, r15
     e14:	90 e0       	ldi	r25, 0x00	; 0
     e16:	57 d0       	rcall	.+174    	; 0xec6 <fputc>
     e18:	ac 14       	cp	r10, r12
     e1a:	bd 04       	cpc	r11, r13
     e1c:	a1 f7       	brne	.-24     	; 0xe06 <vfprintf+0x39a>
     e1e:	ef ce       	rjmp	.-546    	; 0xbfe <vfprintf+0x192>
     e20:	dc 2c       	mov	r13, r12
     e22:	be cf       	rjmp	.-132    	; 0xda0 <vfprintf+0x334>
     e24:	82 fc       	sbrc	r8, 2
     e26:	02 c0       	rjmp	.+4      	; 0xe2c <vfprintf+0x3c0>
     e28:	d3 94       	inc	r13
     e2a:	c6 cf       	rjmp	.-116    	; 0xdb8 <vfprintf+0x34c>
     e2c:	d3 94       	inc	r13
     e2e:	d3 94       	inc	r13
     e30:	c3 cf       	rjmp	.-122    	; 0xdb8 <vfprintf+0x34c>
     e32:	88 2d       	mov	r24, r8
     e34:	86 78       	andi	r24, 0x86	; 134
     e36:	09 f4       	brne	.+2      	; 0xe3a <vfprintf+0x3ce>
     e38:	bf cf       	rjmp	.-130    	; 0xdb8 <vfprintf+0x34c>
     e3a:	f6 cf       	rjmp	.-20     	; 0xe28 <vfprintf+0x3bc>
     e3c:	6e 2d       	mov	r22, r14
     e3e:	7f 2d       	mov	r23, r15
     e40:	80 e2       	ldi	r24, 0x20	; 32
     e42:	90 e0       	ldi	r25, 0x00	; 0
     e44:	40 d0       	rcall	.+128    	; 0xec6 <fputc>
     e46:	d3 94       	inc	r13
     e48:	d2 14       	cp	r13, r2
     e4a:	c0 f3       	brcs	.-16     	; 0xe3c <vfprintf+0x3d0>
     e4c:	51 2c       	mov	r5, r1
     e4e:	c1 cf       	rjmp	.-126    	; 0xdd2 <vfprintf+0x366>
     e50:	d2 14       	cp	r13, r2
     e52:	e0 f7       	brcc	.-8      	; 0xe4c <vfprintf+0x3e0>
     e54:	52 2c       	mov	r5, r2
     e56:	5d 18       	sub	r5, r13
     e58:	bc cf       	rjmp	.-136    	; 0xdd2 <vfprintf+0x366>
     e5a:	9c 2c       	mov	r9, r12
     e5c:	ba cf       	rjmp	.-140    	; 0xdd2 <vfprintf+0x366>
     e5e:	88 e5       	ldi	r24, 0x58	; 88
     e60:	90 e0       	ldi	r25, 0x00	; 0
     e62:	c4 cf       	rjmp	.-120    	; 0xdec <vfprintf+0x380>
     e64:	88 2d       	mov	r24, r8
     e66:	86 78       	andi	r24, 0x86	; 134
     e68:	21 f2       	breq	.-120    	; 0xdf2 <vfprintf+0x386>
     e6a:	81 fe       	sbrs	r8, 1
     e6c:	07 c0       	rjmp	.+14     	; 0xe7c <vfprintf+0x410>
     e6e:	8b e2       	ldi	r24, 0x2B	; 43
     e70:	87 fc       	sbrc	r8, 7
     e72:	8d e2       	ldi	r24, 0x2D	; 45
     e74:	6e 2d       	mov	r22, r14
     e76:	7f 2d       	mov	r23, r15
     e78:	90 e0       	ldi	r25, 0x00	; 0
     e7a:	ba cf       	rjmp	.-140    	; 0xdf0 <vfprintf+0x384>
     e7c:	80 e2       	ldi	r24, 0x20	; 32
     e7e:	f8 cf       	rjmp	.-16     	; 0xe70 <vfprintf+0x404>
     e80:	6e 2d       	mov	r22, r14
     e82:	7f 2d       	mov	r23, r15
     e84:	80 e3       	ldi	r24, 0x30	; 48
     e86:	90 e0       	ldi	r25, 0x00	; 0
     e88:	1e d0       	rcall	.+60     	; 0xec6 <fputc>
     e8a:	9a 94       	dec	r9
     e8c:	b2 cf       	rjmp	.-156    	; 0xdf2 <vfprintf+0x386>
     e8e:	8f ef       	ldi	r24, 0xFF	; 255
     e90:	9f ef       	ldi	r25, 0xFF	; 255
     e92:	5f cf       	rjmp	.-322    	; 0xd52 <vfprintf+0x2e6>

00000e94 <strnlen_P>:
     e94:	e8 2f       	mov	r30, r24
     e96:	f9 2f       	mov	r31, r25
     e98:	c8 95       	lpm
     e9a:	31 96       	adiw	r30, 0x01	; 1
     e9c:	61 50       	subi	r22, 0x01	; 1
     e9e:	70 40       	sbci	r23, 0x00	; 0
     ea0:	01 10       	cpse	r0, r1
     ea2:	d0 f7       	brcc	.-12     	; 0xe98 <strnlen_P+0x4>
     ea4:	80 95       	com	r24
     ea6:	90 95       	com	r25
     ea8:	8e 0f       	add	r24, r30
     eaa:	9f 1f       	adc	r25, r31
     eac:	08 95       	ret

00000eae <strnlen>:
     eae:	e8 2f       	mov	r30, r24
     eb0:	f9 2f       	mov	r31, r25
     eb2:	61 50       	subi	r22, 0x01	; 1
     eb4:	70 40       	sbci	r23, 0x00	; 0
     eb6:	01 90       	ld	r0, Z+
     eb8:	01 10       	cpse	r0, r1
     eba:	d8 f7       	brcc	.-10     	; 0xeb2 <strnlen+0x4>
     ebc:	80 95       	com	r24
     ebe:	90 95       	com	r25
     ec0:	8e 0f       	add	r24, r30
     ec2:	9f 1f       	adc	r25, r31
     ec4:	08 95       	ret

00000ec6 <fputc>:
     ec6:	0f 93       	push	r16
     ec8:	1f 93       	push	r17
     eca:	cf 93       	push	r28
     ecc:	df 93       	push	r29
     ece:	18 2f       	mov	r17, r24
     ed0:	09 2f       	mov	r16, r25
     ed2:	c6 2f       	mov	r28, r22
     ed4:	d7 2f       	mov	r29, r23
     ed6:	8b 81       	ldd	r24, Y+3	; 0x03
     ed8:	81 fd       	sbrc	r24, 1
     eda:	09 c0       	rjmp	.+18     	; 0xeee <fputc+0x28>
     edc:	1f ef       	ldi	r17, 0xFF	; 255
     ede:	0f ef       	ldi	r16, 0xFF	; 255
     ee0:	81 2f       	mov	r24, r17
     ee2:	90 2f       	mov	r25, r16
     ee4:	df 91       	pop	r29
     ee6:	cf 91       	pop	r28
     ee8:	1f 91       	pop	r17
     eea:	0f 91       	pop	r16
     eec:	08 95       	ret
     eee:	82 ff       	sbrs	r24, 2
     ef0:	15 c0       	rjmp	.+42     	; 0xf1c <fputc+0x56>
     ef2:	2e 81       	ldd	r18, Y+6	; 0x06
     ef4:	3f 81       	ldd	r19, Y+7	; 0x07
     ef6:	8c 81       	ldd	r24, Y+4	; 0x04
     ef8:	9d 81       	ldd	r25, Y+5	; 0x05
     efa:	28 17       	cp	r18, r24
     efc:	39 07       	cpc	r19, r25
     efe:	44 f4       	brge	.+16     	; 0xf10 <fputc+0x4a>
     f00:	e8 81       	ld	r30, Y
     f02:	f9 81       	ldd	r31, Y+1	; 0x01
     f04:	8e 2f       	mov	r24, r30
     f06:	9f 2f       	mov	r25, r31
     f08:	01 96       	adiw	r24, 0x01	; 1
     f0a:	99 83       	std	Y+1, r25	; 0x01
     f0c:	88 83       	st	Y, r24
     f0e:	10 83       	st	Z, r17
     f10:	8e 81       	ldd	r24, Y+6	; 0x06
     f12:	9f 81       	ldd	r25, Y+7	; 0x07
     f14:	01 96       	adiw	r24, 0x01	; 1
     f16:	9f 83       	std	Y+7, r25	; 0x07
     f18:	8e 83       	std	Y+6, r24	; 0x06
     f1a:	e2 cf       	rjmp	.-60     	; 0xee0 <fputc+0x1a>
     f1c:	e8 85       	ldd	r30, Y+8	; 0x08
     f1e:	f9 85       	ldd	r31, Y+9	; 0x09
     f20:	81 2f       	mov	r24, r17
     f22:	09 95       	icall
     f24:	89 2b       	or	r24, r25
     f26:	a1 f3       	breq	.-24     	; 0xf10 <fputc+0x4a>
     f28:	d9 cf       	rjmp	.-78     	; 0xedc <fputc+0x16>

00000f2a <__ultoa_invert>:
     f2a:	e4 2f       	mov	r30, r20
     f2c:	f5 2f       	mov	r31, r21
     f2e:	aa 27       	eor	r26, r26
     f30:	28 30       	cpi	r18, 0x08	; 8
     f32:	69 f1       	breq	.+90     	; 0xf8e <__ultoa_invert+0x64>
     f34:	20 31       	cpi	r18, 0x10	; 16
     f36:	99 f1       	breq	.+102    	; 0xf9e <__ultoa_invert+0x74>
     f38:	e8 94       	clt
     f3a:	6f 93       	push	r22
     f3c:	6e 7f       	andi	r22, 0xFE	; 254
     f3e:	6e 5f       	subi	r22, 0xFE	; 254
     f40:	7f 4f       	sbci	r23, 0xFF	; 255
     f42:	8f 4f       	sbci	r24, 0xFF	; 255
     f44:	9f 4f       	sbci	r25, 0xFF	; 255
     f46:	af 4f       	sbci	r26, 0xFF	; 255
     f48:	b1 e0       	ldi	r27, 0x01	; 1
     f4a:	41 d0       	rcall	.+130    	; 0xfce <__ultoa_invert+0xa4>
     f4c:	b4 e0       	ldi	r27, 0x04	; 4
     f4e:	3f d0       	rcall	.+126    	; 0xfce <__ultoa_invert+0xa4>
     f50:	67 0f       	add	r22, r23
     f52:	78 1f       	adc	r23, r24
     f54:	89 1f       	adc	r24, r25
     f56:	9a 1f       	adc	r25, r26
     f58:	a1 1d       	adc	r26, r1
     f5a:	68 0f       	add	r22, r24
     f5c:	79 1f       	adc	r23, r25
     f5e:	8a 1f       	adc	r24, r26
     f60:	91 1d       	adc	r25, r1
     f62:	a1 1d       	adc	r26, r1
     f64:	6a 0f       	add	r22, r26
     f66:	71 1d       	adc	r23, r1
     f68:	81 1d       	adc	r24, r1
     f6a:	91 1d       	adc	r25, r1
     f6c:	a1 1d       	adc	r26, r1
     f6e:	23 d0       	rcall	.+70     	; 0xfb6 <__ultoa_invert+0x8c>
     f70:	09 f4       	brne	.+2      	; 0xf74 <__ultoa_invert+0x4a>
     f72:	68 94       	set
     f74:	3f 91       	pop	r19
     f76:	06 2e       	mov	r0, r22
     f78:	00 0c       	add	r0, r0
     f7a:	30 19       	sub	r19, r0
     f7c:	00 0c       	add	r0, r0
     f7e:	00 0c       	add	r0, r0
     f80:	30 19       	sub	r19, r0
     f82:	30 5d       	subi	r19, 0xD0	; 208
     f84:	31 93       	st	Z+, r19
     f86:	ce f6       	brtc	.-78     	; 0xf3a <__ultoa_invert+0x10>
     f88:	8e 2f       	mov	r24, r30
     f8a:	9f 2f       	mov	r25, r31
     f8c:	08 95       	ret
     f8e:	46 2f       	mov	r20, r22
     f90:	47 70       	andi	r20, 0x07	; 7
     f92:	40 5d       	subi	r20, 0xD0	; 208
     f94:	41 93       	st	Z+, r20
     f96:	b3 e0       	ldi	r27, 0x03	; 3
     f98:	0f d0       	rcall	.+30     	; 0xfb8 <__ultoa_invert+0x8e>
     f9a:	c9 f7       	brne	.-14     	; 0xf8e <__ultoa_invert+0x64>
     f9c:	f5 cf       	rjmp	.-22     	; 0xf88 <__ultoa_invert+0x5e>
     f9e:	46 2f       	mov	r20, r22
     fa0:	4f 70       	andi	r20, 0x0F	; 15
     fa2:	40 5d       	subi	r20, 0xD0	; 208
     fa4:	4a 33       	cpi	r20, 0x3A	; 58
     fa6:	18 f0       	brcs	.+6      	; 0xfae <__ultoa_invert+0x84>
     fa8:	49 5d       	subi	r20, 0xD9	; 217
     faa:	31 fd       	sbrc	r19, 1
     fac:	40 52       	subi	r20, 0x20	; 32
     fae:	41 93       	st	Z+, r20
     fb0:	02 d0       	rcall	.+4      	; 0xfb6 <__ultoa_invert+0x8c>
     fb2:	a9 f7       	brne	.-22     	; 0xf9e <__ultoa_invert+0x74>
     fb4:	e9 cf       	rjmp	.-46     	; 0xf88 <__ultoa_invert+0x5e>
     fb6:	b4 e0       	ldi	r27, 0x04	; 4
     fb8:	a6 95       	lsr	r26
     fba:	97 95       	ror	r25
     fbc:	87 95       	ror	r24
     fbe:	77 95       	ror	r23
     fc0:	67 95       	ror	r22
     fc2:	ba 95       	dec	r27
     fc4:	c9 f7       	brne	.-14     	; 0xfb8 <__ultoa_invert+0x8e>
     fc6:	00 97       	sbiw	r24, 0x00	; 0
     fc8:	61 05       	cpc	r22, r1
     fca:	71 05       	cpc	r23, r1
     fcc:	08 95       	ret
     fce:	26 2f       	mov	r18, r22
     fd0:	37 2f       	mov	r19, r23
     fd2:	48 2f       	mov	r20, r24
     fd4:	59 2f       	mov	r21, r25
     fd6:	0a 2e       	mov	r0, r26
     fd8:	06 94       	lsr	r0
     fda:	57 95       	ror	r21
     fdc:	47 95       	ror	r20
     fde:	37 95       	ror	r19
     fe0:	27 95       	ror	r18
     fe2:	ba 95       	dec	r27
     fe4:	c9 f7       	brne	.-14     	; 0xfd8 <__ultoa_invert+0xae>
     fe6:	62 0f       	add	r22, r18
     fe8:	73 1f       	adc	r23, r19
     fea:	84 1f       	adc	r24, r20
     fec:	95 1f       	adc	r25, r21
     fee:	a0 1d       	adc	r26, r0
     ff0:	08 95       	ret

00000ff2 <__mulqi3>:
     ff2:	00 24       	eor	r0, r0

00000ff4 <__mulqi3_loop>:
     ff4:	80 fd       	sbrc	r24, 0
     ff6:	06 0e       	add	r0, r22
     ff8:	66 0f       	add	r22, r22
     ffa:	11 f0       	breq	.+4      	; 0x1000 <__mulqi3_exit>
     ffc:	86 95       	lsr	r24
     ffe:	d1 f7       	brne	.-12     	; 0xff4 <__mulqi3_loop>

00001000 <__mulqi3_exit>:
    1000:	80 2d       	mov	r24, r0
    1002:	08 95       	ret

00001004 <__prologue_saves__>:
    1004:	2f 92       	push	r2
    1006:	3f 92       	push	r3
    1008:	4f 92       	push	r4
    100a:	5f 92       	push	r5
    100c:	6f 92       	push	r6
    100e:	7f 92       	push	r7
    1010:	8f 92       	push	r8
    1012:	9f 92       	push	r9
    1014:	af 92       	push	r10
    1016:	bf 92       	push	r11
    1018:	cf 92       	push	r12
    101a:	df 92       	push	r13
    101c:	ef 92       	push	r14
    101e:	ff 92       	push	r15
    1020:	0f 93       	push	r16
    1022:	1f 93       	push	r17
    1024:	cf 93       	push	r28
    1026:	df 93       	push	r29
    1028:	cd b7       	in	r28, 0x3d	; 61
    102a:	de b7       	in	r29, 0x3e	; 62
    102c:	ca 1b       	sub	r28, r26
    102e:	db 0b       	sbc	r29, r27
    1030:	0f b6       	in	r0, 0x3f	; 63
    1032:	f8 94       	cli
    1034:	de bf       	out	0x3e, r29	; 62
    1036:	0f be       	out	0x3f, r0	; 63
    1038:	cd bf       	out	0x3d, r28	; 61
    103a:	09 94       	ijmp

0000103c <__epilogue_restores__>:
    103c:	2a 88       	ldd	r2, Y+18	; 0x12
    103e:	39 88       	ldd	r3, Y+17	; 0x11
    1040:	48 88       	ldd	r4, Y+16	; 0x10
    1042:	5f 84       	ldd	r5, Y+15	; 0x0f
    1044:	6e 84       	ldd	r6, Y+14	; 0x0e
    1046:	7d 84       	ldd	r7, Y+13	; 0x0d
    1048:	8c 84       	ldd	r8, Y+12	; 0x0c
    104a:	9b 84       	ldd	r9, Y+11	; 0x0b
    104c:	aa 84       	ldd	r10, Y+10	; 0x0a
    104e:	b9 84       	ldd	r11, Y+9	; 0x09
    1050:	c8 84       	ldd	r12, Y+8	; 0x08
    1052:	df 80       	ldd	r13, Y+7	; 0x07
    1054:	ee 80       	ldd	r14, Y+6	; 0x06
    1056:	fd 80       	ldd	r15, Y+5	; 0x05
    1058:	0c 81       	ldd	r16, Y+4	; 0x04
    105a:	1b 81       	ldd	r17, Y+3	; 0x03
    105c:	aa 81       	ldd	r26, Y+2	; 0x02
    105e:	b9 81       	ldd	r27, Y+1	; 0x01
    1060:	ce 0f       	add	r28, r30
    1062:	d1 1d       	adc	r29, r1
    1064:	0f b6       	in	r0, 0x3f	; 63
    1066:	f8 94       	cli
    1068:	de bf       	out	0x3e, r29	; 62
    106a:	0f be       	out	0x3f, r0	; 63
    106c:	cd bf       	out	0x3d, r28	; 61
    106e:	ca 2f       	mov	r28, r26
    1070:	db 2f       	mov	r29, r27
    1072:	08 95       	ret

00001074 <_exit>:
    1074:	f8 94       	cli

00001076 <__stop_program>:
    1076:	ff cf       	rjmp	.-2      	; 0x1076 <__stop_program>
