
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
      40:	0c 94 1e 02 	jmp	0x43c	; 0x43c <__vector_16>
      44:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
      48:	0c 94 35 02 	jmp	0x46a	; 0x46a <__vector_18>
      4c:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
      50:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
      54:	0c 94 2d 04 	jmp	0x85a	; 0x85a <__vector_21>
      58:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
      5c:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
      60:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
      64:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>

00000068 <__ctors_start>:
      68:	af 04       	cpc	r10, r15

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
      7c:	e0 e5       	ldi	r30, 0x50	; 80
      7e:	f0 e1       	ldi	r31, 0x10	; 16
      80:	03 c0       	rjmp	.+6      	; 0x88 <__do_copy_data+0x12>
      82:	c8 95       	lpm
      84:	31 96       	adiw	r30, 0x01	; 1
      86:	0d 92       	st	X+, r0
      88:	a6 31       	cpi	r26, 0x16	; 22
      8a:	b1 07       	cpc	r27, r17
      8c:	d1 f7       	brne	.-12     	; 0x82 <__do_copy_data+0xc>

0000008e <__do_clear_bss>:
      8e:	22 e0       	ldi	r18, 0x02	; 2
      90:	a6 e1       	ldi	r26, 0x16	; 22
      92:	b1 e0       	ldi	r27, 0x01	; 1
      94:	01 c0       	rjmp	.+2      	; 0x98 <.do_clear_bss_start>

00000096 <.do_clear_bss_loop>:
      96:	1d 92       	st	X+, r1

00000098 <.do_clear_bss_start>:
      98:	a0 33       	cpi	r26, 0x30	; 48
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
      ac:	92 d4       	rcall	.+2340   	; 0x9d2 <__tablejump2__>
      ae:	c4 33       	cpi	r28, 0x34	; 52
      b0:	d1 07       	cpc	r29, r17
      b2:	c9 f7       	brne	.-14     	; 0xa6 <__do_global_ctors+0x8>
      b4:	0e 94 60 00 	call	0xc0	; 0xc0 <main>
      b8:	0c 94 26 08 	jmp	0x104c	; 0x104c <_exit>

000000bc <__bad_interrupt>:
      bc:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000c0 <main>:
      c0:	0f 93       	push	r16
      c2:	1f 93       	push	r17
      c4:	80 e8       	ldi	r24, 0x80	; 128
      c6:	95 e2       	ldi	r25, 0x25	; 37
      c8:	0e 94 ba 00 	call	0x174	; 0x174 <_TF3AVR11SetupSerialFT8baudRateVs5Int16_T_>
      cc:	01 e0       	ldi	r16, 0x01	; 1
      ce:	10 e0       	ldi	r17, 0x00	; 0

000000d0 <LBB0_1>:
      d0:	80 e0       	ldi	r24, 0x00	; 0
      d2:	0e 94 b3 00 	call	0x166	; 0x166 <_TF3AVR14slowAnalogReadFT3pinVs5UInt8_Vs6UInt16>
      d6:	0e 94 16 01 	call	0x22c	; 0x22c <_TF3AVR5printFT11unsignedIntVs6UInt16_T_>
      da:	c8 01       	movw	r24, r16
      dc:	0e 94 72 00 	call	0xe4	; 0xe4 <_TF3AVR5delayFT12millisecondsVs6UInt16_T_>
      e0:	f7 cf       	rjmp	.-18     	; 0xd0 <LBB0_1>
	...

000000e4 <_TF3AVR5delayFT12millisecondsVs6UInt16_T_>:
      e4:	0e 94 ce 01 	call	0x39c	; 0x39c <_delayMs>
      e8:	08 95       	ret

000000ea <_TF3AVR18stringAddCharacterFT4byteVs5UInt8_Sb>:
      ea:	0e 94 e2 01 	call	0x3c4	; 0x3c4 <_stringAddCharacter>
      ee:	08 95       	ret

000000f0 <_TF3AVR14stringStartNewFT_T_>:
      f0:	0e 94 fa 01 	call	0x3f4	; 0x3f4 <_stringStartNew>
      f4:	08 95       	ret

000000f6 <_TF3AVR18stringCurrentValueFT_GSQGSPVs4Int8__>:
      f6:	0e 94 ff 01 	call	0x3fe	; 0x3fe <_stringCurrentValue>
      fa:	40 e0       	ldi	r20, 0x00	; 0
      fc:	50 e0       	ldi	r21, 0x00	; 0
      fe:	9c 01       	movw	r18, r24
     100:	ba 01       	movw	r22, r20
     102:	ca 01       	movw	r24, r20
     104:	08 95       	ret

00000106 <_TF3AVR14numberToStringFT6numberVs5Int32_GSQGSPVs4Int8__>:
     106:	0e 94 02 02 	call	0x404	; 0x404 <_numberToString>
     10a:	40 e0       	ldi	r20, 0x00	; 0
     10c:	50 e0       	ldi	r21, 0x00	; 0
     10e:	9c 01       	movw	r18, r24
     110:	ba 01       	movw	r22, r20
     112:	ca 01       	movw	r24, r20
     114:	08 95       	ret

00000116 <_TF3AVR5ticksFT_Vs6UInt16>:
     116:	0e 94 dd 01 	call	0x3ba	; 0x3ba <_ticks>
     11a:	08 95       	ret

0000011c <_TF3AVR11digitalReadFT3pinVs5UInt8_Sb>:
     11c:	0e 94 3f 01 	call	0x27e	; 0x27e <_digitalRead>
     120:	08 95       	ret

00000122 <_TF3AVR12digitalWriteFT3pinVs5UInt85valueSb_T_>:
     122:	83 30       	cpi	r24, 0x03	; 3
     124:	51 f0       	breq	.+20     	; 0x13a <LBB1_6>
     126:	85 30       	cpi	r24, 0x05	; 5
     128:	41 f0       	breq	.+16     	; 0x13a <LBB1_6>
     12a:	86 30       	cpi	r24, 0x06	; 6
     12c:	31 f0       	breq	.+12     	; 0x13a <LBB1_6>
     12e:	89 30       	cpi	r24, 0x09	; 9
     130:	21 f0       	breq	.+8      	; 0x13a <LBB1_6>
     132:	8a 30       	cpi	r24, 0x0A	; 10
     134:	11 f0       	breq	.+4      	; 0x13a <LBB1_6>
     136:	8b 30       	cpi	r24, 0x0B	; 11
     138:	59 f4       	brne	.+22     	; 0x150 <LBB1_9>

0000013a <LBB1_6>:
     13a:	61 70       	andi	r22, 0x01	; 1
     13c:	60 30       	cpi	r22, 0x00	; 0
     13e:	21 f0       	breq	.+8      	; 0x148 <LBB1_8>
     140:	6f ef       	ldi	r22, 0xFF	; 255
     142:	0e 94 fb 02 	call	0x5f6	; 0x5f6 <_analogWrite>
     146:	08 95       	ret

00000148 <LBB1_8>:
     148:	60 e0       	ldi	r22, 0x00	; 0
     14a:	0e 94 fb 02 	call	0x5f6	; 0x5f6 <_analogWrite>
     14e:	08 95       	ret

00000150 <LBB1_9>:
     150:	61 70       	andi	r22, 0x01	; 1
     152:	0e 94 76 01 	call	0x2ec	; 0x2ec <_digitalWrite>
     156:	08 95       	ret

00000158 <_TF3AVR7pinModeFT3pinVs5UInt84modeSb_T_>:
     158:	61 70       	andi	r22, 0x01	; 1
     15a:	0e 94 a6 01 	call	0x34c	; 0x34c <_pinMode>
     15e:	08 95       	ret

00000160 <_TF3AVR11analogWriteFT3pinVs5UInt85valueS0__T_>:
     160:	0e 94 fb 02 	call	0x5f6	; 0x5f6 <_analogWrite>
     164:	08 95       	ret

00000166 <_TF3AVR14slowAnalogReadFT3pinVs5UInt8_Vs6UInt16>:
     166:	0e 94 fe 03 	call	0x7fc	; 0x7fc <_slowAnalogRead>
     16a:	08 95       	ret

0000016c <_TF3AVR15analogReadAsyncFT3pinVs5UInt88callbackcVs6UInt16T__T_>:
     16c:	40 e0       	ldi	r20, 0x00	; 0
     16e:	0e 94 65 04 	call	0x8ca	; 0x8ca <_analogReadAsync>
     172:	08 95       	ret

00000174 <_TF3AVR11SetupSerialFT8baudRateVs5Int16_T_>:
     174:	0e 94 77 02 	call	0x4ee	; 0x4ee <_setupSerial>
     178:	08 95       	ret

0000017a <_TF3AVR5printFT7messageGSqGSPVs4Int8___T_>:
     17a:	c9 01       	movw	r24, r18
     17c:	0e 94 b4 02 	call	0x568	; 0x568 <_sendString>
     180:	08 95       	ret

00000182 <_TF3AVR5printFT4byteVs5UInt8_T_>:
     182:	0e 94 ad 02 	call	0x55a	; 0x55a <_sendByte>
     186:	08 95       	ret

00000188 <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberVs5Int32_T_>:
     188:	0e 94 02 02 	call	0x404	; 0x404 <_numberToString>
     18c:	0e 94 c4 02 	call	0x588	; 0x588 <_sendBuffer>
     190:	08 95       	ret

00000192 <_TF3AVR5printFT7longIntVs5Int32_T_>:
     192:	0e 94 c4 00 	call	0x188	; 0x188 <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberVs5Int32_T_>
     196:	08 95       	ret

00000198 <_TF3AVR5printFT3intVs5Int16_T_>:
     198:	9c 01       	movw	r18, r24
     19a:	35 95       	asr	r19
     19c:	27 95       	ror	r18
     19e:	35 95       	asr	r19
     1a0:	27 95       	ror	r18
     1a2:	35 95       	asr	r19
     1a4:	27 95       	ror	r18
     1a6:	35 95       	asr	r19
     1a8:	27 95       	ror	r18
     1aa:	35 95       	asr	r19
     1ac:	27 95       	ror	r18
     1ae:	35 95       	asr	r19
     1b0:	27 95       	ror	r18
     1b2:	35 95       	asr	r19
     1b4:	27 95       	ror	r18
     1b6:	35 95       	asr	r19
     1b8:	27 95       	ror	r18
     1ba:	35 95       	asr	r19
     1bc:	27 95       	ror	r18
     1be:	35 95       	asr	r19
     1c0:	27 95       	ror	r18
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
     1d6:	bc 01       	movw	r22, r24
     1d8:	c9 01       	movw	r24, r18
     1da:	0e 94 c4 00 	call	0x188	; 0x188 <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberVs5Int32_T_>
     1de:	08 95       	ret

000001e0 <_TF3AVR5printFT7tinyIntVs4Int8_T_>:
     1e0:	68 2f       	mov	r22, r24
     1e2:	78 2f       	mov	r23, r24
     1e4:	77 0f       	add	r23, r23
     1e6:	77 0b       	sbc	r23, r23
     1e8:	cb 01       	movw	r24, r22
     1ea:	95 95       	asr	r25
     1ec:	87 95       	ror	r24
     1ee:	95 95       	asr	r25
     1f0:	87 95       	ror	r24
     1f2:	95 95       	asr	r25
     1f4:	87 95       	ror	r24
     1f6:	95 95       	asr	r25
     1f8:	87 95       	ror	r24
     1fa:	95 95       	asr	r25
     1fc:	87 95       	ror	r24
     1fe:	95 95       	asr	r25
     200:	87 95       	ror	r24
     202:	95 95       	asr	r25
     204:	87 95       	ror	r24
     206:	95 95       	asr	r25
     208:	87 95       	ror	r24
     20a:	95 95       	asr	r25
     20c:	87 95       	ror	r24
     20e:	95 95       	asr	r25
     210:	87 95       	ror	r24
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
     226:	0e 94 c4 00 	call	0x188	; 0x188 <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberVs5Int32_T_>
     22a:	08 95       	ret

0000022c <_TF3AVR5printFT11unsignedIntVs6UInt16_T_>:
     22c:	20 e0       	ldi	r18, 0x00	; 0
     22e:	30 e0       	ldi	r19, 0x00	; 0
     230:	bc 01       	movw	r22, r24
     232:	c9 01       	movw	r24, r18
     234:	0e 94 c4 00 	call	0x188	; 0x188 <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberVs5Int32_T_>
     238:	08 95       	ret

0000023a <_TF3AVR5printFT15unsignedTinyIntVs5UInt8_T_>:
     23a:	68 2f       	mov	r22, r24
     23c:	77 27       	eor	r23, r23
     23e:	80 e0       	ldi	r24, 0x00	; 0
     240:	90 e0       	ldi	r25, 0x00	; 0
     242:	0e 94 c4 00 	call	0x188	; 0x188 <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberVs5Int32_T_>
     246:	08 95       	ret

00000248 <_TF3AVR9availableFT_Sb>:
     248:	0e 94 d3 02 	call	0x5a6	; 0x5a6 <_available>
     24c:	08 95       	ret

0000024e <_TF3AVR4readFT_Vs5UInt8>:
     24e:	0e 94 de 02 	call	0x5bc	; 0x5bc <_receiveByte>
     252:	08 95       	ret

00000254 <pinMask>:
     254:	88 30       	cpi	r24, 0x08	; 8
     256:	60 f0       	brcs	.+24     	; 0x270 <pinMask+0x1c>
     258:	8e 30       	cpi	r24, 0x0E	; 14
     25a:	40 f4       	brcc	.+16     	; 0x26c <pinMask+0x18>
     25c:	98 ef       	ldi	r25, 0xF8	; 248
     25e:	98 0f       	add	r25, r24
     260:	81 e0       	ldi	r24, 0x01	; 1
     262:	01 c0       	rjmp	.+2      	; 0x266 <pinMask+0x12>
     264:	88 0f       	add	r24, r24
     266:	9a 95       	dec	r25
     268:	ea f7       	brpl	.-6      	; 0x264 <pinMask+0x10>
     26a:	08 95       	ret
     26c:	80 e0       	ldi	r24, 0x00	; 0
     26e:	08 95       	ret
     270:	91 e0       	ldi	r25, 0x01	; 1
     272:	01 c0       	rjmp	.+2      	; 0x276 <pinMask+0x22>
     274:	99 0f       	add	r25, r25
     276:	8a 95       	dec	r24
     278:	ea f7       	brpl	.-6      	; 0x274 <pinMask+0x20>
     27a:	89 2f       	mov	r24, r25
     27c:	08 95       	ret

0000027e <_digitalRead>:
     27e:	cf 93       	push	r28
     280:	c8 2f       	mov	r28, r24
     282:	0e 94 2a 01 	call	0x254	; 0x254 <pinMask>
     286:	88 23       	and	r24, r24
     288:	31 f0       	breq	.+12     	; 0x296 <_digitalRead+0x18>
     28a:	c8 30       	cpi	r28, 0x08	; 8
     28c:	38 f0       	brcs	.+14     	; 0x29c <_digitalRead+0x1e>
     28e:	93 b1       	in	r25, 0x03	; 3
     290:	98 23       	and	r25, r24
     292:	81 e0       	ldi	r24, 0x01	; 1
     294:	09 f4       	brne	.+2      	; 0x298 <_digitalRead+0x1a>
     296:	80 e0       	ldi	r24, 0x00	; 0
     298:	cf 91       	pop	r28
     29a:	08 95       	ret
     29c:	99 b1       	in	r25, 0x09	; 9
     29e:	98 23       	and	r25, r24
     2a0:	81 e0       	ldi	r24, 0x01	; 1
     2a2:	c9 f3       	breq	.-14     	; 0x296 <_digitalRead+0x18>
     2a4:	cf 91       	pop	r28
     2a6:	08 95       	ret

000002a8 <resetPortD>:
     2a8:	0e 94 2a 01 	call	0x254	; 0x254 <pinMask>
     2ac:	88 23       	and	r24, r24
     2ae:	21 f0       	breq	.+8      	; 0x2b8 <resetPortD+0x10>
     2b0:	9b b1       	in	r25, 0x0b	; 11
     2b2:	80 95       	com	r24
     2b4:	89 23       	and	r24, r25
     2b6:	8b b9       	out	0x0b, r24	; 11
     2b8:	08 95       	ret

000002ba <resetPortB>:
     2ba:	0e 94 2a 01 	call	0x254	; 0x254 <pinMask>
     2be:	88 23       	and	r24, r24
     2c0:	21 f0       	breq	.+8      	; 0x2ca <resetPortB+0x10>
     2c2:	95 b1       	in	r25, 0x05	; 5
     2c4:	80 95       	com	r24
     2c6:	89 23       	and	r24, r25
     2c8:	85 b9       	out	0x05, r24	; 5
     2ca:	08 95       	ret

000002cc <setPortD>:
     2cc:	0e 94 2a 01 	call	0x254	; 0x254 <pinMask>
     2d0:	88 23       	and	r24, r24
     2d2:	19 f0       	breq	.+6      	; 0x2da <setPortD+0xe>
     2d4:	9b b1       	in	r25, 0x0b	; 11
     2d6:	89 2b       	or	r24, r25
     2d8:	8b b9       	out	0x0b, r24	; 11
     2da:	08 95       	ret

000002dc <setPortB>:
     2dc:	0e 94 2a 01 	call	0x254	; 0x254 <pinMask>
     2e0:	88 23       	and	r24, r24
     2e2:	19 f0       	breq	.+6      	; 0x2ea <setPortB+0xe>
     2e4:	95 b1       	in	r25, 0x05	; 5
     2e6:	89 2b       	or	r24, r25
     2e8:	85 b9       	out	0x05, r24	; 5
     2ea:	08 95       	ret

000002ec <_digitalWrite>:
     2ec:	66 23       	and	r22, r22
     2ee:	21 f0       	breq	.+8      	; 0x2f8 <_digitalWrite+0xc>
     2f0:	88 30       	cpi	r24, 0x08	; 8
     2f2:	30 f4       	brcc	.+12     	; 0x300 <_digitalWrite+0x14>
     2f4:	0c 94 66 01 	jmp	0x2cc	; 0x2cc <setPortD>
     2f8:	88 30       	cpi	r24, 0x08	; 8
     2fa:	20 f0       	brcs	.+8      	; 0x304 <_digitalWrite+0x18>
     2fc:	0c 94 5d 01 	jmp	0x2ba	; 0x2ba <resetPortB>
     300:	0c 94 6e 01 	jmp	0x2dc	; 0x2dc <setPortB>
     304:	0c 94 54 01 	jmp	0x2a8	; 0x2a8 <resetPortD>

00000308 <enablePortDWrite>:
     308:	0e 94 2a 01 	call	0x254	; 0x254 <pinMask>
     30c:	88 23       	and	r24, r24
     30e:	19 f0       	breq	.+6      	; 0x316 <enablePortDWrite+0xe>
     310:	9a b1       	in	r25, 0x0a	; 10
     312:	89 2b       	or	r24, r25
     314:	8a b9       	out	0x0a, r24	; 10
     316:	08 95       	ret

00000318 <enablePortBWrite>:
     318:	0e 94 2a 01 	call	0x254	; 0x254 <pinMask>
     31c:	88 23       	and	r24, r24
     31e:	19 f0       	breq	.+6      	; 0x326 <enablePortBWrite+0xe>
     320:	94 b1       	in	r25, 0x04	; 4
     322:	89 2b       	or	r24, r25
     324:	84 b9       	out	0x04, r24	; 4
     326:	08 95       	ret

00000328 <disablePortDWrite>:
     328:	0e 94 2a 01 	call	0x254	; 0x254 <pinMask>
     32c:	88 23       	and	r24, r24
     32e:	21 f0       	breq	.+8      	; 0x338 <disablePortDWrite+0x10>
     330:	9a b1       	in	r25, 0x0a	; 10
     332:	80 95       	com	r24
     334:	89 23       	and	r24, r25
     336:	8a b9       	out	0x0a, r24	; 10
     338:	08 95       	ret

0000033a <disablePortBWrite>:
     33a:	0e 94 2a 01 	call	0x254	; 0x254 <pinMask>
     33e:	88 23       	and	r24, r24
     340:	21 f0       	breq	.+8      	; 0x34a <disablePortBWrite+0x10>
     342:	94 b1       	in	r25, 0x04	; 4
     344:	80 95       	com	r24
     346:	89 23       	and	r24, r25
     348:	84 b9       	out	0x04, r24	; 4
     34a:	08 95       	ret

0000034c <_pinMode>:
     34c:	66 23       	and	r22, r22
     34e:	51 f0       	breq	.+20     	; 0x364 <_pinMode+0x18>
     350:	88 30       	cpi	r24, 0x08	; 8
     352:	e0 f4       	brcc	.+56     	; 0x38c <_pinMode+0x40>
     354:	0e 94 2a 01 	call	0x254	; 0x254 <pinMask>
     358:	88 23       	and	r24, r24
     35a:	b9 f0       	breq	.+46     	; 0x38a <_pinMode+0x3e>
     35c:	9a b1       	in	r25, 0x0a	; 10
     35e:	89 2b       	or	r24, r25
     360:	8a b9       	out	0x0a, r24	; 10
     362:	08 95       	ret
     364:	88 30       	cpi	r24, 0x08	; 8
     366:	48 f4       	brcc	.+18     	; 0x37a <_pinMode+0x2e>
     368:	0e 94 2a 01 	call	0x254	; 0x254 <pinMask>
     36c:	88 23       	and	r24, r24
     36e:	69 f0       	breq	.+26     	; 0x38a <_pinMode+0x3e>
     370:	9a b1       	in	r25, 0x0a	; 10
     372:	80 95       	com	r24
     374:	89 23       	and	r24, r25
     376:	8a b9       	out	0x0a, r24	; 10
     378:	08 95       	ret
     37a:	0e 94 2a 01 	call	0x254	; 0x254 <pinMask>
     37e:	88 23       	and	r24, r24
     380:	21 f0       	breq	.+8      	; 0x38a <_pinMode+0x3e>
     382:	94 b1       	in	r25, 0x04	; 4
     384:	80 95       	com	r24
     386:	89 23       	and	r24, r25
     388:	84 b9       	out	0x04, r24	; 4
     38a:	08 95       	ret
     38c:	0e 94 2a 01 	call	0x254	; 0x254 <pinMask>
     390:	88 23       	and	r24, r24
     392:	d9 f3       	breq	.-10     	; 0x38a <_pinMode+0x3e>
     394:	94 b1       	in	r25, 0x04	; 4
     396:	89 2b       	or	r24, r25
     398:	84 b9       	out	0x04, r24	; 4
     39a:	08 95       	ret

0000039c <_delayMs>:
     39c:	00 97       	sbiw	r24, 0x00	; 0
     39e:	61 f0       	breq	.+24     	; 0x3b8 <_delayMs+0x1c>
     3a0:	20 e0       	ldi	r18, 0x00	; 0
     3a2:	30 e0       	ldi	r19, 0x00	; 0
     3a4:	40 ea       	ldi	r20, 0xA0	; 160
     3a6:	5f e0       	ldi	r21, 0x0F	; 15
     3a8:	fa 01       	movw	r30, r20
     3aa:	31 97       	sbiw	r30, 0x01	; 1
     3ac:	f1 f7       	brne	.-4      	; 0x3aa <_delayMs+0xe>
     3ae:	2f 5f       	subi	r18, 0xFF	; 255
     3b0:	3f 4f       	sbci	r19, 0xFF	; 255
     3b2:	82 17       	cp	r24, r18
     3b4:	93 07       	cpc	r25, r19
     3b6:	c1 f7       	brne	.-16     	; 0x3a8 <_delayMs+0xc>
     3b8:	08 95       	ret

000003ba <_ticks>:
     3ba:	80 91 16 01 	lds	r24, 0x0116	; 0x800116 <__data_end>
     3be:	90 91 17 01 	lds	r25, 0x0117	; 0x800117 <__data_end+0x1>
     3c2:	08 95       	ret

000003c4 <_stringAddCharacter>:
     3c4:	e0 91 27 01 	lds	r30, 0x0127	; 0x800127 <stringBufferEnd>
     3c8:	ef 37       	cpi	r30, 0x7F	; 127
     3ca:	91 f0       	breq	.+36     	; 0x3f0 <_stringAddCharacter+0x2c>
     3cc:	91 e0       	ldi	r25, 0x01	; 1
     3ce:	9e 0f       	add	r25, r30
     3d0:	90 93 27 01 	sts	0x0127, r25	; 0x800127 <stringBufferEnd>
     3d4:	0e 2e       	mov	r0, r30
     3d6:	00 0c       	add	r0, r0
     3d8:	ff 0b       	sbc	r31, r31
     3da:	e8 5d       	subi	r30, 0xD8	; 216
     3dc:	fe 4f       	sbci	r31, 0xFE	; 254
     3de:	80 83       	st	Z, r24
     3e0:	e9 2f       	mov	r30, r25
     3e2:	99 0f       	add	r25, r25
     3e4:	ff 0b       	sbc	r31, r31
     3e6:	e8 5d       	subi	r30, 0xD8	; 216
     3e8:	fe 4f       	sbci	r31, 0xFE	; 254
     3ea:	10 82       	st	Z, r1
     3ec:	81 e0       	ldi	r24, 0x01	; 1
     3ee:	08 95       	ret
     3f0:	80 e0       	ldi	r24, 0x00	; 0
     3f2:	08 95       	ret

000003f4 <_stringStartNew>:
     3f4:	10 92 27 01 	sts	0x0127, r1	; 0x800127 <stringBufferEnd>
     3f8:	10 92 28 01 	sts	0x0128, r1	; 0x800128 <stringBuffer>
     3fc:	08 95       	ret

000003fe <_stringCurrentValue>:
     3fe:	88 e2       	ldi	r24, 0x28	; 40
     400:	91 e0       	ldi	r25, 0x01	; 1
     402:	08 95       	ret

00000404 <_numberToString>:
     404:	9f 93       	push	r25
     406:	8f 93       	push	r24
     408:	7f 93       	push	r23
     40a:	6f 93       	push	r22
     40c:	8f e0       	ldi	r24, 0x0F	; 15
     40e:	91 e0       	ldi	r25, 0x01	; 1
     410:	9f 93       	push	r25
     412:	8f 93       	push	r24
     414:	1f 92       	push	r1
     416:	8f e0       	ldi	r24, 0x0F	; 15
     418:	8f 93       	push	r24
     41a:	88 e1       	ldi	r24, 0x18	; 24
     41c:	91 e0       	ldi	r25, 0x01	; 1
     41e:	9f 93       	push	r25
     420:	8f 93       	push	r24
     422:	0e 94 f1 04 	call	0x9e2	; 0x9e2 <snprintf>
     426:	8d b7       	in	r24, 0x3d	; 61
     428:	9e b7       	in	r25, 0x3e	; 62
     42a:	0a 96       	adiw	r24, 0x0a	; 10
     42c:	0f b6       	in	r0, 0x3f	; 63
     42e:	f8 94       	cli
     430:	9e bf       	out	0x3e, r25	; 62
     432:	0f be       	out	0x3f, r0	; 63
     434:	8d bf       	out	0x3d, r24	; 61
     436:	88 e1       	ldi	r24, 0x18	; 24
     438:	91 e0       	ldi	r25, 0x01	; 1
     43a:	08 95       	ret

0000043c <__vector_16>:
     43c:	1f 92       	push	r1
     43e:	0f 92       	push	r0
     440:	0f b6       	in	r0, 0x3f	; 63
     442:	0f 92       	push	r0
     444:	11 24       	eor	r1, r1
     446:	8f 93       	push	r24
     448:	9f 93       	push	r25
     44a:	80 91 16 01 	lds	r24, 0x0116	; 0x800116 <__data_end>
     44e:	90 91 17 01 	lds	r25, 0x0117	; 0x800117 <__data_end+0x1>
     452:	01 96       	adiw	r24, 0x01	; 1
     454:	90 93 17 01 	sts	0x0117, r25	; 0x800117 <__data_end+0x1>
     458:	80 93 16 01 	sts	0x0116, r24	; 0x800116 <__data_end>
     45c:	9f 91       	pop	r25
     45e:	8f 91       	pop	r24
     460:	0f 90       	pop	r0
     462:	0f be       	out	0x3f, r0	; 63
     464:	0f 90       	pop	r0
     466:	1f 90       	pop	r1
     468:	18 95       	reti

0000046a <__vector_18>:
     46a:	1f 92       	push	r1
     46c:	0f 92       	push	r0
     46e:	0f b6       	in	r0, 0x3f	; 63
     470:	0f 92       	push	r0
     472:	11 24       	eor	r1, r1
     474:	2f 93       	push	r18
     476:	8f 93       	push	r24
     478:	9f 93       	push	r25
     47a:	ef 93       	push	r30
     47c:	ff 93       	push	r31
     47e:	80 91 a8 01 	lds	r24, 0x01A8	; 0x8001a8 <bufferFull>
     482:	81 11       	cpse	r24, r1
     484:	1e c0       	rjmp	.+60     	; 0x4c2 <__vector_18+0x58>
     486:	e0 91 a9 01 	lds	r30, 0x01A9	; 0x8001a9 <ringBufferEnd>
     48a:	81 e0       	ldi	r24, 0x01	; 1
     48c:	8e 0f       	add	r24, r30
     48e:	80 93 a9 01 	sts	0x01A9, r24	; 0x8001a9 <ringBufferEnd>
     492:	90 91 c6 00 	lds	r25, 0x00C6	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
     496:	0e 2e       	mov	r0, r30
     498:	00 0c       	add	r0, r0
     49a:	ff 0b       	sbc	r31, r31
     49c:	e5 55       	subi	r30, 0x55	; 85
     49e:	fe 4f       	sbci	r31, 0xFE	; 254
     4a0:	90 83       	st	Z, r25
     4a2:	08 2e       	mov	r0, r24
     4a4:	00 0c       	add	r0, r0
     4a6:	99 0b       	sbc	r25, r25
     4a8:	8f 77       	andi	r24, 0x7F	; 127
     4aa:	90 78       	andi	r25, 0x80	; 128
     4ac:	97 fd       	sbrc	r25, 7
     4ae:	13 c0       	rjmp	.+38     	; 0x4d6 <__vector_18+0x6c>
     4b0:	80 93 a9 01 	sts	0x01A9, r24	; 0x8001a9 <ringBufferEnd>
     4b4:	91 e0       	ldi	r25, 0x01	; 1
     4b6:	20 91 aa 01 	lds	r18, 0x01AA	; 0x8001aa <ringBufferStart>
     4ba:	28 13       	cpse	r18, r24
     4bc:	90 e0       	ldi	r25, 0x00	; 0
     4be:	90 93 a8 01 	sts	0x01A8, r25	; 0x8001a8 <bufferFull>
     4c2:	ff 91       	pop	r31
     4c4:	ef 91       	pop	r30
     4c6:	9f 91       	pop	r25
     4c8:	8f 91       	pop	r24
     4ca:	2f 91       	pop	r18
     4cc:	0f 90       	pop	r0
     4ce:	0f be       	out	0x3f, r0	; 63
     4d0:	0f 90       	pop	r0
     4d2:	1f 90       	pop	r1
     4d4:	18 95       	reti
     4d6:	01 97       	sbiw	r24, 0x01	; 1
     4d8:	80 68       	ori	r24, 0x80	; 128
     4da:	9f 6f       	ori	r25, 0xFF	; 255
     4dc:	01 96       	adiw	r24, 0x01	; 1
     4de:	80 93 a9 01 	sts	0x01A9, r24	; 0x8001a9 <ringBufferEnd>
     4e2:	91 e0       	ldi	r25, 0x01	; 1
     4e4:	20 91 aa 01 	lds	r18, 0x01AA	; 0x8001aa <ringBufferStart>
     4e8:	28 13       	cpse	r18, r24
     4ea:	e8 cf       	rjmp	.-48     	; 0x4bc <__vector_18+0x52>
     4ec:	e8 cf       	rjmp	.-48     	; 0x4be <__vector_18+0x54>

000004ee <_setupSerial>:
     4ee:	9c 01       	movw	r18, r24
     4f0:	99 0f       	add	r25, r25
     4f2:	44 0b       	sbc	r20, r20
     4f4:	55 0b       	sbc	r21, r21
     4f6:	22 0f       	add	r18, r18
     4f8:	33 1f       	adc	r19, r19
     4fa:	44 1f       	adc	r20, r20
     4fc:	55 1f       	adc	r21, r21
     4fe:	22 0f       	add	r18, r18
     500:	33 1f       	adc	r19, r19
     502:	44 1f       	adc	r20, r20
     504:	55 1f       	adc	r21, r21
     506:	22 0f       	add	r18, r18
     508:	33 1f       	adc	r19, r19
     50a:	44 1f       	adc	r20, r20
     50c:	55 1f       	adc	r21, r21
     50e:	22 0f       	add	r18, r18
     510:	33 1f       	adc	r19, r19
     512:	44 1f       	adc	r20, r20
     514:	55 1f       	adc	r21, r21
     516:	60 e0       	ldi	r22, 0x00	; 0
     518:	74 e2       	ldi	r23, 0x24	; 36
     51a:	84 ef       	ldi	r24, 0xF4	; 244
     51c:	90 e0       	ldi	r25, 0x00	; 0
     51e:	0e 94 c2 04 	call	0x984	; 0x984 <__udivmodsi4>
     522:	ba 01       	movw	r22, r20
     524:	a9 01       	movw	r20, r18
     526:	41 50       	subi	r20, 0x01	; 1
     528:	51 09       	sbc	r21, r1
     52a:	61 09       	sbc	r22, r1
     52c:	71 09       	sbc	r23, r1
     52e:	bb 27       	eor	r27, r27
     530:	77 fd       	sbrc	r23, 7
     532:	ba 95       	dec	r27
     534:	a7 2f       	mov	r26, r23
     536:	96 2f       	mov	r25, r22
     538:	85 2f       	mov	r24, r21
     53a:	80 93 c5 00 	sts	0x00C5, r24	; 0x8000c5 <__TEXT_REGION_LENGTH__+0x7e00c5>
     53e:	40 93 c4 00 	sts	0x00C4, r20	; 0x8000c4 <__TEXT_REGION_LENGTH__+0x7e00c4>
     542:	e2 ec       	ldi	r30, 0xC2	; 194
     544:	f0 e0       	ldi	r31, 0x00	; 0
     546:	80 81       	ld	r24, Z
     548:	86 60       	ori	r24, 0x06	; 6
     54a:	80 83       	st	Z, r24
     54c:	e1 ec       	ldi	r30, 0xC1	; 193
     54e:	f0 e0       	ldi	r31, 0x00	; 0
     550:	80 81       	ld	r24, Z
     552:	88 69       	ori	r24, 0x98	; 152
     554:	80 83       	st	Z, r24
     556:	78 94       	sei
     558:	08 95       	ret

0000055a <_sendByte>:
     55a:	90 91 c0 00 	lds	r25, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
     55e:	95 ff       	sbrs	r25, 5
     560:	fc cf       	rjmp	.-8      	; 0x55a <_sendByte>
     562:	80 93 c6 00 	sts	0x00C6, r24	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
     566:	08 95       	ret

00000568 <_sendString>:
     568:	fc 01       	movw	r30, r24
     56a:	24 91       	lpm	r18, Z
     56c:	22 23       	and	r18, r18
     56e:	59 f0       	breq	.+22     	; 0x586 <_sendString+0x1e>
     570:	31 96       	adiw	r30, 0x01	; 1
     572:	90 91 c0 00 	lds	r25, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
     576:	95 ff       	sbrs	r25, 5
     578:	fc cf       	rjmp	.-8      	; 0x572 <_sendString+0xa>
     57a:	20 93 c6 00 	sts	0x00C6, r18	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
     57e:	24 91       	lpm	r18, Z
     580:	31 96       	adiw	r30, 0x01	; 1
     582:	21 11       	cpse	r18, r1
     584:	f6 cf       	rjmp	.-20     	; 0x572 <_sendString+0xa>
     586:	08 95       	ret

00000588 <_sendBuffer>:
     588:	fc 01       	movw	r30, r24
     58a:	20 81       	ld	r18, Z
     58c:	22 23       	and	r18, r18
     58e:	51 f0       	breq	.+20     	; 0x5a4 <_sendBuffer+0x1c>
     590:	31 96       	adiw	r30, 0x01	; 1
     592:	90 91 c0 00 	lds	r25, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
     596:	95 ff       	sbrs	r25, 5
     598:	fc cf       	rjmp	.-8      	; 0x592 <_sendBuffer+0xa>
     59a:	20 93 c6 00 	sts	0x00C6, r18	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
     59e:	21 91       	ld	r18, Z+
     5a0:	21 11       	cpse	r18, r1
     5a2:	f7 cf       	rjmp	.-18     	; 0x592 <_sendBuffer+0xa>
     5a4:	08 95       	ret

000005a6 <_available>:
     5a6:	90 91 aa 01 	lds	r25, 0x01AA	; 0x8001aa <ringBufferStart>
     5aa:	80 91 a9 01 	lds	r24, 0x01A9	; 0x8001a9 <ringBufferEnd>
     5ae:	98 17       	cp	r25, r24
     5b0:	11 f0       	breq	.+4      	; 0x5b6 <_available+0x10>
     5b2:	81 e0       	ldi	r24, 0x01	; 1
     5b4:	08 95       	ret
     5b6:	80 91 a8 01 	lds	r24, 0x01A8	; 0x8001a8 <bufferFull>
     5ba:	08 95       	ret

000005bc <_receiveByte>:
     5bc:	20 91 a8 01 	lds	r18, 0x01A8	; 0x8001a8 <bufferFull>
     5c0:	90 91 aa 01 	lds	r25, 0x01AA	; 0x8001aa <ringBufferStart>
     5c4:	80 91 a9 01 	lds	r24, 0x01A9	; 0x8001a9 <ringBufferEnd>
     5c8:	98 17       	cp	r25, r24
     5ca:	91 f0       	breq	.+36     	; 0x5f0 <_receiveByte+0x34>
     5cc:	9f b7       	in	r25, 0x3f	; 63
     5ce:	f8 94       	cli
     5d0:	e0 91 aa 01 	lds	r30, 0x01AA	; 0x8001aa <ringBufferStart>
     5d4:	81 e0       	ldi	r24, 0x01	; 1
     5d6:	8e 0f       	add	r24, r30
     5d8:	80 93 aa 01 	sts	0x01AA, r24	; 0x8001aa <ringBufferStart>
     5dc:	0e 2e       	mov	r0, r30
     5de:	00 0c       	add	r0, r0
     5e0:	ff 0b       	sbc	r31, r31
     5e2:	e5 55       	subi	r30, 0x55	; 85
     5e4:	fe 4f       	sbci	r31, 0xFE	; 254
     5e6:	80 81       	ld	r24, Z
     5e8:	10 92 a8 01 	sts	0x01A8, r1	; 0x8001a8 <bufferFull>
     5ec:	9f bf       	out	0x3f, r25	; 63
     5ee:	08 95       	ret
     5f0:	21 11       	cpse	r18, r1
     5f2:	ec cf       	rjmp	.-40     	; 0x5cc <_receiveByte+0x10>
     5f4:	ff cf       	rjmp	.-2      	; 0x5f4 <_receiveByte+0x38>

000005f6 <_analogWrite>:
     5f6:	cf 93       	push	r28
     5f8:	df 93       	push	r29
     5fa:	c8 2f       	mov	r28, r24
     5fc:	d6 2f       	mov	r29, r22
     5fe:	60 91 0c 01 	lds	r22, 0x010C	; 0x80010c <_OUTPUT>
     602:	0e 94 a6 01 	call	0x34c	; 0x34c <_pinMode>
     606:	c6 30       	cpi	r28, 0x06	; 6
     608:	09 f4       	brne	.+2      	; 0x60c <_analogWrite+0x16>
     60a:	5b c0       	rjmp	.+182    	; 0x6c2 <_analogWrite+0xcc>
     60c:	50 f0       	brcs	.+20     	; 0x622 <_analogWrite+0x2c>
     60e:	ca 30       	cpi	r28, 0x0A	; 10
     610:	b9 f0       	breq	.+46     	; 0x640 <_analogWrite+0x4a>
     612:	cb 30       	cpi	r28, 0x0B	; 11
     614:	09 f4       	brne	.+2      	; 0x618 <_analogWrite+0x22>
     616:	46 c0       	rjmp	.+140    	; 0x6a4 <_analogWrite+0xae>
     618:	c9 30       	cpi	r28, 0x09	; 9
     61a:	21 f1       	breq	.+72     	; 0x664 <_analogWrite+0x6e>
     61c:	df 91       	pop	r29
     61e:	cf 91       	pop	r28
     620:	08 95       	ret
     622:	c3 30       	cpi	r28, 0x03	; 3
     624:	89 f1       	breq	.+98     	; 0x688 <_analogWrite+0x92>
     626:	c5 30       	cpi	r28, 0x05	; 5
     628:	c9 f7       	brne	.-14     	; 0x61c <_analogWrite+0x26>
     62a:	84 b5       	in	r24, 0x24	; 36
     62c:	dd 23       	and	r29, r29
     62e:	09 f4       	brne	.+2      	; 0x632 <_analogWrite+0x3c>
     630:	52 c0       	rjmp	.+164    	; 0x6d6 <_analogWrite+0xe0>
     632:	df 3f       	cpi	r29, 0xFF	; 255
     634:	09 f4       	brne	.+2      	; 0x638 <_analogWrite+0x42>
     636:	9e c0       	rjmp	.+316    	; 0x774 <_analogWrite+0x17e>
     638:	80 62       	ori	r24, 0x20	; 32
     63a:	84 bd       	out	0x24, r24	; 36
     63c:	d8 bd       	out	0x28, r29	; 40
     63e:	ee cf       	rjmp	.-36     	; 0x61c <_analogWrite+0x26>
     640:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     644:	dd 23       	and	r29, r29
     646:	09 f4       	brne	.+2      	; 0x64a <_analogWrite+0x54>
     648:	7b c0       	rjmp	.+246    	; 0x740 <_analogWrite+0x14a>
     64a:	df 3f       	cpi	r29, 0xFF	; 255
     64c:	09 f4       	brne	.+2      	; 0x650 <_analogWrite+0x5a>
     64e:	85 c0       	rjmp	.+266    	; 0x75a <_analogWrite+0x164>
     650:	80 62       	ori	r24, 0x20	; 32
     652:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     656:	6d 2f       	mov	r22, r29
     658:	70 e0       	ldi	r23, 0x00	; 0
     65a:	70 93 8b 00 	sts	0x008B, r23	; 0x80008b <__TEXT_REGION_LENGTH__+0x7e008b>
     65e:	60 93 8a 00 	sts	0x008A, r22	; 0x80008a <__TEXT_REGION_LENGTH__+0x7e008a>
     662:	dc cf       	rjmp	.-72     	; 0x61c <_analogWrite+0x26>
     664:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     668:	dd 23       	and	r29, r29
     66a:	09 f4       	brne	.+2      	; 0x66e <_analogWrite+0x78>
     66c:	5c c0       	rjmp	.+184    	; 0x726 <_analogWrite+0x130>
     66e:	df 3f       	cpi	r29, 0xFF	; 255
     670:	09 f4       	brne	.+2      	; 0x674 <_analogWrite+0x7e>
     672:	94 c0       	rjmp	.+296    	; 0x79c <_analogWrite+0x1a6>
     674:	80 68       	ori	r24, 0x80	; 128
     676:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     67a:	6d 2f       	mov	r22, r29
     67c:	70 e0       	ldi	r23, 0x00	; 0
     67e:	70 93 89 00 	sts	0x0089, r23	; 0x800089 <__TEXT_REGION_LENGTH__+0x7e0089>
     682:	60 93 88 00 	sts	0x0088, r22	; 0x800088 <__TEXT_REGION_LENGTH__+0x7e0088>
     686:	ca cf       	rjmp	.-108    	; 0x61c <_analogWrite+0x26>
     688:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     68c:	dd 23       	and	r29, r29
     68e:	09 f4       	brne	.+2      	; 0x692 <_analogWrite+0x9c>
     690:	3f c0       	rjmp	.+126    	; 0x710 <_analogWrite+0x11a>
     692:	df 3f       	cpi	r29, 0xFF	; 255
     694:	09 f4       	brne	.+2      	; 0x698 <_analogWrite+0xa2>
     696:	77 c0       	rjmp	.+238    	; 0x786 <_analogWrite+0x190>
     698:	80 62       	ori	r24, 0x20	; 32
     69a:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     69e:	d0 93 b4 00 	sts	0x00B4, r29	; 0x8000b4 <__TEXT_REGION_LENGTH__+0x7e00b4>
     6a2:	bc cf       	rjmp	.-136    	; 0x61c <_analogWrite+0x26>
     6a4:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     6a8:	dd 23       	and	r29, r29
     6aa:	39 f1       	breq	.+78     	; 0x6fa <_analogWrite+0x104>
     6ac:	df 3f       	cpi	r29, 0xFF	; 255
     6ae:	09 f4       	brne	.+2      	; 0x6b2 <_analogWrite+0xbc>
     6b0:	8b c0       	rjmp	.+278    	; 0x7c8 <_analogWrite+0x1d2>
     6b2:	80 68       	ori	r24, 0x80	; 128
     6b4:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     6b8:	d0 93 b3 00 	sts	0x00B3, r29	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
     6bc:	df 91       	pop	r29
     6be:	cf 91       	pop	r28
     6c0:	08 95       	ret
     6c2:	84 b5       	in	r24, 0x24	; 36
     6c4:	dd 23       	and	r29, r29
     6c6:	81 f0       	breq	.+32     	; 0x6e8 <_analogWrite+0xf2>
     6c8:	df 3f       	cpi	r29, 0xFF	; 255
     6ca:	09 f4       	brne	.+2      	; 0x6ce <_analogWrite+0xd8>
     6cc:	74 c0       	rjmp	.+232    	; 0x7b6 <_analogWrite+0x1c0>
     6ce:	80 68       	ori	r24, 0x80	; 128
     6d0:	84 bd       	out	0x24, r24	; 36
     6d2:	d7 bd       	out	0x27, r29	; 39
     6d4:	a3 cf       	rjmp	.-186    	; 0x61c <_analogWrite+0x26>
     6d6:	8f 7d       	andi	r24, 0xDF	; 223
     6d8:	84 bd       	out	0x24, r24	; 36
     6da:	60 91 0d 01 	lds	r22, 0x010D	; 0x80010d <_LOW>
     6de:	85 e0       	ldi	r24, 0x05	; 5
     6e0:	0e 94 76 01 	call	0x2ec	; 0x2ec <_digitalWrite>
     6e4:	18 bc       	out	0x28, r1	; 40
     6e6:	9a cf       	rjmp	.-204    	; 0x61c <_analogWrite+0x26>
     6e8:	8f 77       	andi	r24, 0x7F	; 127
     6ea:	84 bd       	out	0x24, r24	; 36
     6ec:	60 91 0d 01 	lds	r22, 0x010D	; 0x80010d <_LOW>
     6f0:	86 e0       	ldi	r24, 0x06	; 6
     6f2:	0e 94 76 01 	call	0x2ec	; 0x2ec <_digitalWrite>
     6f6:	17 bc       	out	0x27, r1	; 39
     6f8:	91 cf       	rjmp	.-222    	; 0x61c <_analogWrite+0x26>
     6fa:	8f 77       	andi	r24, 0x7F	; 127
     6fc:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     700:	60 91 0d 01 	lds	r22, 0x010D	; 0x80010d <_LOW>
     704:	8b e0       	ldi	r24, 0x0B	; 11
     706:	0e 94 76 01 	call	0x2ec	; 0x2ec <_digitalWrite>
     70a:	10 92 b3 00 	sts	0x00B3, r1	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
     70e:	86 cf       	rjmp	.-244    	; 0x61c <_analogWrite+0x26>
     710:	8f 7d       	andi	r24, 0xDF	; 223
     712:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     716:	60 91 0d 01 	lds	r22, 0x010D	; 0x80010d <_LOW>
     71a:	83 e0       	ldi	r24, 0x03	; 3
     71c:	0e 94 76 01 	call	0x2ec	; 0x2ec <_digitalWrite>
     720:	10 92 b4 00 	sts	0x00B4, r1	; 0x8000b4 <__TEXT_REGION_LENGTH__+0x7e00b4>
     724:	7b cf       	rjmp	.-266    	; 0x61c <_analogWrite+0x26>
     726:	8f 77       	andi	r24, 0x7F	; 127
     728:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     72c:	60 91 0d 01 	lds	r22, 0x010D	; 0x80010d <_LOW>
     730:	89 e0       	ldi	r24, 0x09	; 9
     732:	0e 94 76 01 	call	0x2ec	; 0x2ec <_digitalWrite>
     736:	10 92 89 00 	sts	0x0089, r1	; 0x800089 <__TEXT_REGION_LENGTH__+0x7e0089>
     73a:	10 92 88 00 	sts	0x0088, r1	; 0x800088 <__TEXT_REGION_LENGTH__+0x7e0088>
     73e:	6e cf       	rjmp	.-292    	; 0x61c <_analogWrite+0x26>
     740:	8f 7d       	andi	r24, 0xDF	; 223
     742:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     746:	60 91 0d 01 	lds	r22, 0x010D	; 0x80010d <_LOW>
     74a:	8a e0       	ldi	r24, 0x0A	; 10
     74c:	0e 94 76 01 	call	0x2ec	; 0x2ec <_digitalWrite>
     750:	10 92 8b 00 	sts	0x008B, r1	; 0x80008b <__TEXT_REGION_LENGTH__+0x7e008b>
     754:	10 92 8a 00 	sts	0x008A, r1	; 0x80008a <__TEXT_REGION_LENGTH__+0x7e008a>
     758:	61 cf       	rjmp	.-318    	; 0x61c <_analogWrite+0x26>
     75a:	8f 7d       	andi	r24, 0xDF	; 223
     75c:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     760:	60 91 0e 01 	lds	r22, 0x010E	; 0x80010e <_HIGH>
     764:	8a e0       	ldi	r24, 0x0A	; 10
     766:	0e 94 76 01 	call	0x2ec	; 0x2ec <_digitalWrite>
     76a:	10 92 8b 00 	sts	0x008B, r1	; 0x80008b <__TEXT_REGION_LENGTH__+0x7e008b>
     76e:	10 92 8a 00 	sts	0x008A, r1	; 0x80008a <__TEXT_REGION_LENGTH__+0x7e008a>
     772:	54 cf       	rjmp	.-344    	; 0x61c <_analogWrite+0x26>
     774:	8f 7d       	andi	r24, 0xDF	; 223
     776:	84 bd       	out	0x24, r24	; 36
     778:	60 91 0e 01 	lds	r22, 0x010E	; 0x80010e <_HIGH>
     77c:	85 e0       	ldi	r24, 0x05	; 5
     77e:	0e 94 76 01 	call	0x2ec	; 0x2ec <_digitalWrite>
     782:	18 bc       	out	0x28, r1	; 40
     784:	4b cf       	rjmp	.-362    	; 0x61c <_analogWrite+0x26>
     786:	8f 7d       	andi	r24, 0xDF	; 223
     788:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     78c:	60 91 0e 01 	lds	r22, 0x010E	; 0x80010e <_HIGH>
     790:	83 e0       	ldi	r24, 0x03	; 3
     792:	0e 94 76 01 	call	0x2ec	; 0x2ec <_digitalWrite>
     796:	10 92 b4 00 	sts	0x00B4, r1	; 0x8000b4 <__TEXT_REGION_LENGTH__+0x7e00b4>
     79a:	40 cf       	rjmp	.-384    	; 0x61c <_analogWrite+0x26>
     79c:	8f 77       	andi	r24, 0x7F	; 127
     79e:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     7a2:	60 91 0e 01 	lds	r22, 0x010E	; 0x80010e <_HIGH>
     7a6:	89 e0       	ldi	r24, 0x09	; 9
     7a8:	0e 94 76 01 	call	0x2ec	; 0x2ec <_digitalWrite>
     7ac:	10 92 89 00 	sts	0x0089, r1	; 0x800089 <__TEXT_REGION_LENGTH__+0x7e0089>
     7b0:	10 92 88 00 	sts	0x0088, r1	; 0x800088 <__TEXT_REGION_LENGTH__+0x7e0088>
     7b4:	33 cf       	rjmp	.-410    	; 0x61c <_analogWrite+0x26>
     7b6:	8f 77       	andi	r24, 0x7F	; 127
     7b8:	84 bd       	out	0x24, r24	; 36
     7ba:	60 91 0e 01 	lds	r22, 0x010E	; 0x80010e <_HIGH>
     7be:	86 e0       	ldi	r24, 0x06	; 6
     7c0:	0e 94 76 01 	call	0x2ec	; 0x2ec <_digitalWrite>
     7c4:	17 bc       	out	0x27, r1	; 39
     7c6:	2a cf       	rjmp	.-428    	; 0x61c <_analogWrite+0x26>
     7c8:	8f 77       	andi	r24, 0x7F	; 127
     7ca:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     7ce:	60 91 0e 01 	lds	r22, 0x010E	; 0x80010e <_HIGH>
     7d2:	8b e0       	ldi	r24, 0x0B	; 11
     7d4:	0e 94 76 01 	call	0x2ec	; 0x2ec <_digitalWrite>
     7d8:	10 92 b3 00 	sts	0x00B3, r1	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
     7dc:	1f cf       	rjmp	.-450    	; 0x61c <_analogWrite+0x26>

000007de <_startupADC>:
     7de:	87 e8       	ldi	r24, 0x87	; 135
     7e0:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     7e4:	8a e0       	ldi	r24, 0x0A	; 10
     7e6:	90 e0       	ldi	r25, 0x00	; 0
     7e8:	0e 94 ce 01 	call	0x39c	; 0x39c <_delayMs>
     7ec:	61 e0       	ldi	r22, 0x01	; 1
     7ee:	8d e0       	ldi	r24, 0x0D	; 13
     7f0:	0e 94 a6 01 	call	0x34c	; 0x34c <_pinMode>
     7f4:	60 e0       	ldi	r22, 0x00	; 0
     7f6:	8d e0       	ldi	r24, 0x0D	; 13
     7f8:	0c 94 76 01 	jmp	0x2ec	; 0x2ec <_digitalWrite>

000007fc <_slowAnalogRead>:
     7fc:	cf 93       	push	r28
     7fe:	c8 2f       	mov	r28, r24
     800:	88 30       	cpi	r24, 0x08	; 8
     802:	38 f5       	brcc	.+78     	; 0x852 <_slowAnalogRead+0x56>
     804:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     808:	87 fd       	sbrc	r24, 7
     80a:	0f c0       	rjmp	.+30     	; 0x82a <_slowAnalogRead+0x2e>
     80c:	87 e8       	ldi	r24, 0x87	; 135
     80e:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     812:	8a e0       	ldi	r24, 0x0A	; 10
     814:	90 e0       	ldi	r25, 0x00	; 0
     816:	0e 94 ce 01 	call	0x39c	; 0x39c <_delayMs>
     81a:	61 e0       	ldi	r22, 0x01	; 1
     81c:	8d e0       	ldi	r24, 0x0D	; 13
     81e:	0e 94 a6 01 	call	0x34c	; 0x34c <_pinMode>
     822:	60 e0       	ldi	r22, 0x00	; 0
     824:	8d e0       	ldi	r24, 0x0D	; 13
     826:	0e 94 76 01 	call	0x2ec	; 0x2ec <_digitalWrite>
     82a:	c0 64       	ori	r28, 0x40	; 64
     82c:	c0 93 7c 00 	sts	0x007C, r28	; 0x80007c <__TEXT_REGION_LENGTH__+0x7e007c>
     830:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     834:	80 64       	ori	r24, 0x40	; 64
     836:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     83a:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     83e:	86 fd       	sbrc	r24, 6
     840:	fc cf       	rjmp	.-8      	; 0x83a <_slowAnalogRead+0x3e>
     842:	80 91 78 00 	lds	r24, 0x0078	; 0x800078 <__TEXT_REGION_LENGTH__+0x7e0078>
     846:	20 91 79 00 	lds	r18, 0x0079	; 0x800079 <__TEXT_REGION_LENGTH__+0x7e0079>
     84a:	90 e0       	ldi	r25, 0x00	; 0
     84c:	92 2b       	or	r25, r18
     84e:	cf 91       	pop	r28
     850:	08 95       	ret
     852:	80 e0       	ldi	r24, 0x00	; 0
     854:	90 e0       	ldi	r25, 0x00	; 0
     856:	cf 91       	pop	r28
     858:	08 95       	ret

0000085a <__vector_21>:
     85a:	1f 92       	push	r1
     85c:	0f 92       	push	r0
     85e:	0f b6       	in	r0, 0x3f	; 63
     860:	0f 92       	push	r0
     862:	11 24       	eor	r1, r1
     864:	2f 93       	push	r18
     866:	3f 93       	push	r19
     868:	4f 93       	push	r20
     86a:	5f 93       	push	r21
     86c:	6f 93       	push	r22
     86e:	7f 93       	push	r23
     870:	8f 93       	push	r24
     872:	9f 93       	push	r25
     874:	af 93       	push	r26
     876:	bf 93       	push	r27
     878:	ef 93       	push	r30
     87a:	ff 93       	push	r31
     87c:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     880:	87 7f       	andi	r24, 0xF7	; 247
     882:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     886:	e0 91 2e 02 	lds	r30, 0x022E	; 0x80022e <currentCallback>
     88a:	f0 91 2f 02 	lds	r31, 0x022F	; 0x80022f <currentCallback+0x1>
     88e:	30 97       	sbiw	r30, 0x00	; 0
     890:	59 f0       	breq	.+22     	; 0x8a8 <__vector_21+0x4e>
     892:	80 91 78 00 	lds	r24, 0x0078	; 0x800078 <__TEXT_REGION_LENGTH__+0x7e0078>
     896:	20 91 79 00 	lds	r18, 0x0079	; 0x800079 <__TEXT_REGION_LENGTH__+0x7e0079>
     89a:	90 e0       	ldi	r25, 0x00	; 0
     89c:	92 2b       	or	r25, r18
     89e:	09 95       	icall
     8a0:	10 92 2f 02 	sts	0x022F, r1	; 0x80022f <currentCallback+0x1>
     8a4:	10 92 2e 02 	sts	0x022E, r1	; 0x80022e <currentCallback>
     8a8:	ff 91       	pop	r31
     8aa:	ef 91       	pop	r30
     8ac:	bf 91       	pop	r27
     8ae:	af 91       	pop	r26
     8b0:	9f 91       	pop	r25
     8b2:	8f 91       	pop	r24
     8b4:	7f 91       	pop	r23
     8b6:	6f 91       	pop	r22
     8b8:	5f 91       	pop	r21
     8ba:	4f 91       	pop	r20
     8bc:	3f 91       	pop	r19
     8be:	2f 91       	pop	r18
     8c0:	0f 90       	pop	r0
     8c2:	0f be       	out	0x3f, r0	; 63
     8c4:	0f 90       	pop	r0
     8c6:	1f 90       	pop	r1
     8c8:	18 95       	reti

000008ca <_analogReadAsync>:
     8ca:	0f 93       	push	r16
     8cc:	1f 93       	push	r17
     8ce:	cf 93       	push	r28
     8d0:	df 93       	push	r29
     8d2:	c8 2f       	mov	r28, r24
     8d4:	16 2f       	mov	r17, r22
     8d6:	d7 2f       	mov	r29, r23
     8d8:	04 2f       	mov	r16, r20
     8da:	88 30       	cpi	r24, 0x08	; 8
     8dc:	e8 f4       	brcc	.+58     	; 0x918 <__stack+0x19>
     8de:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     8e2:	87 fd       	sbrc	r24, 7
     8e4:	0f c0       	rjmp	.+30     	; 0x904 <__stack+0x5>
     8e6:	87 e8       	ldi	r24, 0x87	; 135
     8e8:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     8ec:	8a e0       	ldi	r24, 0x0A	; 10
     8ee:	90 e0       	ldi	r25, 0x00	; 0
     8f0:	0e 94 ce 01 	call	0x39c	; 0x39c <_delayMs>
     8f4:	61 e0       	ldi	r22, 0x01	; 1
     8f6:	8d e0       	ldi	r24, 0x0D	; 13
     8f8:	0e 94 a6 01 	call	0x34c	; 0x34c <_pinMode>
     8fc:	60 e0       	ldi	r22, 0x00	; 0
     8fe:	8d e0       	ldi	r24, 0x0D	; 13
     900:	0e 94 76 01 	call	0x2ec	; 0x2ec <_digitalWrite>
     904:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     908:	86 fd       	sbrc	r24, 6
     90a:	06 c0       	rjmp	.+12     	; 0x918 <__stack+0x19>
     90c:	80 91 2e 02 	lds	r24, 0x022E	; 0x80022e <currentCallback>
     910:	90 91 2f 02 	lds	r25, 0x022F	; 0x80022f <currentCallback+0x1>
     914:	89 2b       	or	r24, r25
     916:	31 f0       	breq	.+12     	; 0x924 <__stack+0x25>
     918:	80 e0       	ldi	r24, 0x00	; 0
     91a:	df 91       	pop	r29
     91c:	cf 91       	pop	r28
     91e:	1f 91       	pop	r17
     920:	0f 91       	pop	r16
     922:	08 95       	ret
     924:	00 23       	and	r16, r16
     926:	59 f0       	breq	.+22     	; 0x93e <__stack+0x3f>
     928:	81 2f       	mov	r24, r17
     92a:	9d 2f       	mov	r25, r29
     92c:	97 fd       	sbrc	r25, 7
     92e:	15 c0       	rjmp	.+42     	; 0x95a <__stack+0x5b>
     930:	95 95       	asr	r25
     932:	87 95       	ror	r24
     934:	90 93 2f 02 	sts	0x022F, r25	; 0x80022f <currentCallback+0x1>
     938:	80 93 2e 02 	sts	0x022E, r24	; 0x80022e <currentCallback>
     93c:	04 c0       	rjmp	.+8      	; 0x946 <__stack+0x47>
     93e:	10 93 2e 02 	sts	0x022E, r17	; 0x80022e <currentCallback>
     942:	d0 93 2f 02 	sts	0x022F, r29	; 0x80022f <currentCallback+0x1>
     946:	c0 64       	ori	r28, 0x40	; 64
     948:	c0 93 7c 00 	sts	0x007C, r28	; 0x80007c <__TEXT_REGION_LENGTH__+0x7e007c>
     94c:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     950:	88 64       	ori	r24, 0x48	; 72
     952:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     956:	81 e0       	ldi	r24, 0x01	; 1
     958:	e0 cf       	rjmp	.-64     	; 0x91a <__stack+0x1b>
     95a:	01 96       	adiw	r24, 0x01	; 1
     95c:	e9 cf       	rjmp	.-46     	; 0x930 <__stack+0x31>

0000095e <startTimers>:
     95e:	83 e0       	ldi	r24, 0x03	; 3
     960:	84 bd       	out	0x24, r24	; 36
     962:	85 bd       	out	0x25, r24	; 37
     964:	91 e0       	ldi	r25, 0x01	; 1
     966:	90 93 80 00 	sts	0x0080, r25	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     96a:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
     96e:	90 93 b0 00 	sts	0x00B0, r25	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     972:	84 e0       	ldi	r24, 0x04	; 4
     974:	80 93 b1 00 	sts	0x00B1, r24	; 0x8000b1 <__TEXT_REGION_LENGTH__+0x7e00b1>
     978:	ee e6       	ldi	r30, 0x6E	; 110
     97a:	f0 e0       	ldi	r31, 0x00	; 0
     97c:	80 81       	ld	r24, Z
     97e:	81 60       	ori	r24, 0x01	; 1
     980:	80 83       	st	Z, r24
     982:	08 95       	ret

00000984 <__udivmodsi4>:
     984:	a1 e2       	ldi	r26, 0x21	; 33
     986:	1a 2e       	mov	r1, r26
     988:	aa 1b       	sub	r26, r26
     98a:	bb 1b       	sub	r27, r27
     98c:	ea 2f       	mov	r30, r26
     98e:	fb 2f       	mov	r31, r27
     990:	0d c0       	rjmp	.+26     	; 0x9ac <__udivmodsi4_ep>

00000992 <__udivmodsi4_loop>:
     992:	aa 1f       	adc	r26, r26
     994:	bb 1f       	adc	r27, r27
     996:	ee 1f       	adc	r30, r30
     998:	ff 1f       	adc	r31, r31
     99a:	a2 17       	cp	r26, r18
     99c:	b3 07       	cpc	r27, r19
     99e:	e4 07       	cpc	r30, r20
     9a0:	f5 07       	cpc	r31, r21
     9a2:	20 f0       	brcs	.+8      	; 0x9ac <__udivmodsi4_ep>
     9a4:	a2 1b       	sub	r26, r18
     9a6:	b3 0b       	sbc	r27, r19
     9a8:	e4 0b       	sbc	r30, r20
     9aa:	f5 0b       	sbc	r31, r21

000009ac <__udivmodsi4_ep>:
     9ac:	66 1f       	adc	r22, r22
     9ae:	77 1f       	adc	r23, r23
     9b0:	88 1f       	adc	r24, r24
     9b2:	99 1f       	adc	r25, r25
     9b4:	1a 94       	dec	r1
     9b6:	69 f7       	brne	.-38     	; 0x992 <__udivmodsi4_loop>
     9b8:	60 95       	com	r22
     9ba:	70 95       	com	r23
     9bc:	80 95       	com	r24
     9be:	90 95       	com	r25
     9c0:	26 2f       	mov	r18, r22
     9c2:	37 2f       	mov	r19, r23
     9c4:	48 2f       	mov	r20, r24
     9c6:	59 2f       	mov	r21, r25
     9c8:	6a 2f       	mov	r22, r26
     9ca:	7b 2f       	mov	r23, r27
     9cc:	8e 2f       	mov	r24, r30
     9ce:	9f 2f       	mov	r25, r31
     9d0:	08 95       	ret

000009d2 <__tablejump2__>:
     9d2:	ee 0f       	add	r30, r30
     9d4:	ff 1f       	adc	r31, r31
     9d6:	c8 95       	lpm
     9d8:	0f 92       	push	r0
     9da:	31 96       	adiw	r30, 0x01	; 1
     9dc:	c8 95       	lpm
     9de:	0f 92       	push	r0
     9e0:	08 95       	ret

000009e2 <snprintf>:
     9e2:	ae e0       	ldi	r26, 0x0E	; 14
     9e4:	b0 e0       	ldi	r27, 0x00	; 0
     9e6:	e6 ef       	ldi	r30, 0xF6	; 246
     9e8:	f4 e0       	ldi	r31, 0x04	; 4
     9ea:	06 c3       	rjmp	.+1548   	; 0xff8 <__prologue_saves__+0x1c>
     9ec:	0d 89       	ldd	r16, Y+21	; 0x15
     9ee:	1e 89       	ldd	r17, Y+22	; 0x16
     9f0:	8f 89       	ldd	r24, Y+23	; 0x17
     9f2:	98 8d       	ldd	r25, Y+24	; 0x18
     9f4:	26 e0       	ldi	r18, 0x06	; 6
     9f6:	2c 83       	std	Y+4, r18	; 0x04
     9f8:	1a 83       	std	Y+2, r17	; 0x02
     9fa:	09 83       	std	Y+1, r16	; 0x01
     9fc:	97 ff       	sbrs	r25, 7
     9fe:	02 c0       	rjmp	.+4      	; 0xa04 <snprintf+0x22>
     a00:	80 e0       	ldi	r24, 0x00	; 0
     a02:	90 e8       	ldi	r25, 0x80	; 128
     a04:	01 97       	sbiw	r24, 0x01	; 1
     a06:	9e 83       	std	Y+6, r25	; 0x06
     a08:	8d 83       	std	Y+5, r24	; 0x05
     a0a:	4c 2f       	mov	r20, r28
     a0c:	5d 2f       	mov	r21, r29
     a0e:	45 5e       	subi	r20, 0xE5	; 229
     a10:	5f 4f       	sbci	r21, 0xFF	; 255
     a12:	69 8d       	ldd	r22, Y+25	; 0x19
     a14:	7a 8d       	ldd	r23, Y+26	; 0x1a
     a16:	8c 2f       	mov	r24, r28
     a18:	9d 2f       	mov	r25, r29
     a1a:	01 96       	adiw	r24, 0x01	; 1
     a1c:	13 d0       	rcall	.+38     	; 0xa44 <vfprintf>
     a1e:	4d 81       	ldd	r20, Y+5	; 0x05
     a20:	5e 81       	ldd	r21, Y+6	; 0x06
     a22:	57 fd       	sbrc	r21, 7
     a24:	0c c0       	rjmp	.+24     	; 0xa3e <snprintf+0x5c>
     a26:	2f 81       	ldd	r18, Y+7	; 0x07
     a28:	38 85       	ldd	r19, Y+8	; 0x08
     a2a:	42 17       	cp	r20, r18
     a2c:	53 07       	cpc	r21, r19
     a2e:	14 f4       	brge	.+4      	; 0xa34 <snprintf+0x52>
     a30:	24 2f       	mov	r18, r20
     a32:	35 2f       	mov	r19, r21
     a34:	02 0f       	add	r16, r18
     a36:	13 1f       	adc	r17, r19
     a38:	e0 2f       	mov	r30, r16
     a3a:	f1 2f       	mov	r31, r17
     a3c:	10 82       	st	Z, r1
     a3e:	2e 96       	adiw	r28, 0x0e	; 14
     a40:	e4 e0       	ldi	r30, 0x04	; 4
     a42:	f6 c2       	rjmp	.+1516   	; 0x1030 <__epilogue_restores__+0x1c>

00000a44 <vfprintf>:
     a44:	ab e0       	ldi	r26, 0x0B	; 11
     a46:	b0 e0       	ldi	r27, 0x00	; 0
     a48:	e7 e2       	ldi	r30, 0x27	; 39
     a4a:	f5 e0       	ldi	r31, 0x05	; 5
     a4c:	c7 c2       	rjmp	.+1422   	; 0xfdc <__prologue_saves__>
     a4e:	e8 2e       	mov	r14, r24
     a50:	f9 2e       	mov	r15, r25
     a52:	66 2e       	mov	r6, r22
     a54:	77 2e       	mov	r7, r23
     a56:	04 2f       	mov	r16, r20
     a58:	15 2f       	mov	r17, r21
     a5a:	e8 2f       	mov	r30, r24
     a5c:	f9 2f       	mov	r31, r25
     a5e:	17 82       	std	Z+7, r1	; 0x07
     a60:	16 82       	std	Z+6, r1	; 0x06
     a62:	83 81       	ldd	r24, Z+3	; 0x03
     a64:	81 ff       	sbrs	r24, 1
     a66:	ff c1       	rjmp	.+1022   	; 0xe66 <vfprintf+0x422>
     a68:	8c 2f       	mov	r24, r28
     a6a:	9d 2f       	mov	r25, r29
     a6c:	01 96       	adiw	r24, 0x01	; 1
     a6e:	a8 2e       	mov	r10, r24
     a70:	b9 2e       	mov	r11, r25
     a72:	ee 2d       	mov	r30, r14
     a74:	ff 2d       	mov	r31, r15
     a76:	93 81       	ldd	r25, Z+3	; 0x03
     a78:	e6 2d       	mov	r30, r6
     a7a:	f7 2d       	mov	r31, r7
     a7c:	93 fd       	sbrc	r25, 3
     a7e:	c8 95       	lpm
     a80:	93 ff       	sbrs	r25, 3
     a82:	00 80       	ld	r0, Z
     a84:	31 96       	adiw	r30, 0x01	; 1
     a86:	80 2d       	mov	r24, r0
     a88:	6e 2e       	mov	r6, r30
     a8a:	7f 2e       	mov	r7, r31
     a8c:	88 23       	and	r24, r24
     a8e:	09 f4       	brne	.+2      	; 0xa92 <vfprintf+0x4e>
     a90:	48 c1       	rjmp	.+656    	; 0xd22 <vfprintf+0x2de>
     a92:	85 32       	cpi	r24, 0x25	; 37
     a94:	51 f4       	brne	.+20     	; 0xaaa <vfprintf+0x66>
     a96:	93 fd       	sbrc	r25, 3
     a98:	c8 95       	lpm
     a9a:	93 ff       	sbrs	r25, 3
     a9c:	00 80       	ld	r0, Z
     a9e:	31 96       	adiw	r30, 0x01	; 1
     aa0:	80 2d       	mov	r24, r0
     aa2:	6e 2e       	mov	r6, r30
     aa4:	7f 2e       	mov	r7, r31
     aa6:	85 32       	cpi	r24, 0x25	; 37
     aa8:	29 f4       	brne	.+10     	; 0xab4 <vfprintf+0x70>
     aaa:	6e 2d       	mov	r22, r14
     aac:	7f 2d       	mov	r23, r15
     aae:	90 e0       	ldi	r25, 0x00	; 0
     ab0:	f6 d1       	rcall	.+1004   	; 0xe9e <fputc>
     ab2:	df cf       	rjmp	.-66     	; 0xa72 <vfprintf+0x2e>
     ab4:	91 2c       	mov	r9, r1
     ab6:	21 2c       	mov	r2, r1
     ab8:	31 2c       	mov	r3, r1
     aba:	ff e1       	ldi	r31, 0x1F	; 31
     abc:	f3 15       	cp	r31, r3
     abe:	38 f0       	brcs	.+14     	; 0xace <vfprintf+0x8a>
     ac0:	8b 32       	cpi	r24, 0x2B	; 43
     ac2:	39 f1       	breq	.+78     	; 0xb12 <vfprintf+0xce>
     ac4:	90 f4       	brcc	.+36     	; 0xaea <vfprintf+0xa6>
     ac6:	80 32       	cpi	r24, 0x20	; 32
     ac8:	39 f1       	breq	.+78     	; 0xb18 <vfprintf+0xd4>
     aca:	83 32       	cpi	r24, 0x23	; 35
     acc:	69 f1       	breq	.+90     	; 0xb28 <vfprintf+0xe4>
     ace:	37 fc       	sbrc	r3, 7
     ad0:	45 c0       	rjmp	.+138    	; 0xb5c <vfprintf+0x118>
     ad2:	20 ed       	ldi	r18, 0xD0	; 208
     ad4:	28 0f       	add	r18, r24
     ad6:	2a 30       	cpi	r18, 0x0A	; 10
     ad8:	98 f5       	brcc	.+102    	; 0xb40 <vfprintf+0xfc>
     ada:	36 fe       	sbrs	r3, 6
     adc:	28 c0       	rjmp	.+80     	; 0xb2e <vfprintf+0xea>
     ade:	89 2d       	mov	r24, r9
     ae0:	6a e0       	ldi	r22, 0x0A	; 10
     ae2:	73 d2       	rcall	.+1254   	; 0xfca <__mulqi3>
     ae4:	92 2e       	mov	r9, r18
     ae6:	98 0e       	add	r9, r24
     ae8:	07 c0       	rjmp	.+14     	; 0xaf8 <vfprintf+0xb4>
     aea:	8d 32       	cpi	r24, 0x2D	; 45
     aec:	c9 f0       	breq	.+50     	; 0xb20 <vfprintf+0xdc>
     aee:	80 33       	cpi	r24, 0x30	; 48
     af0:	71 f7       	brne	.-36     	; 0xace <vfprintf+0x8a>
     af2:	23 2d       	mov	r18, r3
     af4:	21 60       	ori	r18, 0x01	; 1
     af6:	32 2e       	mov	r3, r18
     af8:	e6 2d       	mov	r30, r6
     afa:	f7 2d       	mov	r31, r7
     afc:	93 fd       	sbrc	r25, 3
     afe:	c8 95       	lpm
     b00:	93 ff       	sbrs	r25, 3
     b02:	00 80       	ld	r0, Z
     b04:	31 96       	adiw	r30, 0x01	; 1
     b06:	80 2d       	mov	r24, r0
     b08:	6e 2e       	mov	r6, r30
     b0a:	7f 2e       	mov	r7, r31
     b0c:	81 11       	cpse	r24, r1
     b0e:	d5 cf       	rjmp	.-86     	; 0xaba <vfprintf+0x76>
     b10:	25 c0       	rjmp	.+74     	; 0xb5c <vfprintf+0x118>
     b12:	83 2d       	mov	r24, r3
     b14:	82 60       	ori	r24, 0x02	; 2
     b16:	38 2e       	mov	r3, r24
     b18:	e3 2d       	mov	r30, r3
     b1a:	e4 60       	ori	r30, 0x04	; 4
     b1c:	3e 2e       	mov	r3, r30
     b1e:	ec cf       	rjmp	.-40     	; 0xaf8 <vfprintf+0xb4>
     b20:	f3 2d       	mov	r31, r3
     b22:	f8 60       	ori	r31, 0x08	; 8
     b24:	3f 2e       	mov	r3, r31
     b26:	e8 cf       	rjmp	.-48     	; 0xaf8 <vfprintf+0xb4>
     b28:	23 2d       	mov	r18, r3
     b2a:	20 61       	ori	r18, 0x10	; 16
     b2c:	e4 cf       	rjmp	.-56     	; 0xaf6 <vfprintf+0xb2>
     b2e:	82 2d       	mov	r24, r2
     b30:	6a e0       	ldi	r22, 0x0A	; 10
     b32:	4b d2       	rcall	.+1174   	; 0xfca <__mulqi3>
     b34:	22 2e       	mov	r2, r18
     b36:	28 0e       	add	r2, r24
     b38:	83 2d       	mov	r24, r3
     b3a:	80 62       	ori	r24, 0x20	; 32
     b3c:	38 2e       	mov	r3, r24
     b3e:	dc cf       	rjmp	.-72     	; 0xaf8 <vfprintf+0xb4>
     b40:	8e 32       	cpi	r24, 0x2E	; 46
     b42:	29 f4       	brne	.+10     	; 0xb4e <vfprintf+0x10a>
     b44:	36 fc       	sbrc	r3, 6
     b46:	ed c0       	rjmp	.+474    	; 0xd22 <vfprintf+0x2de>
     b48:	e3 2d       	mov	r30, r3
     b4a:	e0 64       	ori	r30, 0x40	; 64
     b4c:	e7 cf       	rjmp	.-50     	; 0xb1c <vfprintf+0xd8>
     b4e:	8c 36       	cpi	r24, 0x6C	; 108
     b50:	19 f4       	brne	.+6      	; 0xb58 <vfprintf+0x114>
     b52:	f3 2d       	mov	r31, r3
     b54:	f0 68       	ori	r31, 0x80	; 128
     b56:	e6 cf       	rjmp	.-52     	; 0xb24 <vfprintf+0xe0>
     b58:	88 36       	cpi	r24, 0x68	; 104
     b5a:	71 f2       	breq	.-100    	; 0xaf8 <vfprintf+0xb4>
     b5c:	98 2f       	mov	r25, r24
     b5e:	9f 7d       	andi	r25, 0xDF	; 223
     b60:	95 54       	subi	r25, 0x45	; 69
     b62:	93 30       	cpi	r25, 0x03	; 3
     b64:	08 f1       	brcs	.+66     	; 0xba8 <vfprintf+0x164>
     b66:	83 36       	cpi	r24, 0x63	; 99
     b68:	09 f4       	brne	.+2      	; 0xb6c <vfprintf+0x128>
     b6a:	3f c0       	rjmp	.+126    	; 0xbea <vfprintf+0x1a6>
     b6c:	83 37       	cpi	r24, 0x73	; 115
     b6e:	09 f4       	brne	.+2      	; 0xb72 <vfprintf+0x12e>
     b70:	43 c0       	rjmp	.+134    	; 0xbf8 <vfprintf+0x1b4>
     b72:	83 35       	cpi	r24, 0x53	; 83
     b74:	09 f0       	breq	.+2      	; 0xb78 <vfprintf+0x134>
     b76:	76 c0       	rjmp	.+236    	; 0xc64 <vfprintf+0x220>
     b78:	40 2e       	mov	r4, r16
     b7a:	51 2e       	mov	r5, r17
     b7c:	22 e0       	ldi	r18, 0x02	; 2
     b7e:	42 0e       	add	r4, r18
     b80:	51 1c       	adc	r5, r1
     b82:	e0 2f       	mov	r30, r16
     b84:	f1 2f       	mov	r31, r17
     b86:	c0 80       	ld	r12, Z
     b88:	d1 80       	ldd	r13, Z+1	; 0x01
     b8a:	36 fe       	sbrs	r3, 6
     b8c:	4d c0       	rjmp	.+154    	; 0xc28 <vfprintf+0x1e4>
     b8e:	69 2d       	mov	r22, r9
     b90:	70 e0       	ldi	r23, 0x00	; 0
     b92:	8c 2d       	mov	r24, r12
     b94:	9d 2d       	mov	r25, r13
     b96:	6a d1       	rcall	.+724    	; 0xe6c <strnlen_P>
     b98:	88 2e       	mov	r8, r24
     b9a:	99 2e       	mov	r9, r25
     b9c:	f3 2d       	mov	r31, r3
     b9e:	f0 68       	ori	r31, 0x80	; 128
     ba0:	3f 2e       	mov	r3, r31
     ba2:	04 2d       	mov	r16, r4
     ba4:	15 2d       	mov	r17, r5
     ba6:	0c c0       	rjmp	.+24     	; 0xbc0 <vfprintf+0x17c>
     ba8:	0c 5f       	subi	r16, 0xFC	; 252
     baa:	1f 4f       	sbci	r17, 0xFF	; 255
     bac:	2f e3       	ldi	r18, 0x3F	; 63
     bae:	29 83       	std	Y+1, r18	; 0x01
     bb0:	88 24       	eor	r8, r8
     bb2:	83 94       	inc	r8
     bb4:	91 2c       	mov	r9, r1
     bb6:	ca 2c       	mov	r12, r10
     bb8:	db 2c       	mov	r13, r11
     bba:	f3 2d       	mov	r31, r3
     bbc:	ff 77       	andi	r31, 0x7F	; 127
     bbe:	3f 2e       	mov	r3, r31
     bc0:	33 fc       	sbrc	r3, 3
     bc2:	05 c0       	rjmp	.+10     	; 0xbce <vfprintf+0x18a>
     bc4:	82 2d       	mov	r24, r2
     bc6:	90 e0       	ldi	r25, 0x00	; 0
     bc8:	88 16       	cp	r8, r24
     bca:	99 06       	cpc	r9, r25
     bcc:	80 f1       	brcs	.+96     	; 0xc2e <vfprintf+0x1ea>
     bce:	52 2c       	mov	r5, r2
     bd0:	81 14       	cp	r8, r1
     bd2:	91 04       	cpc	r9, r1
     bd4:	99 f5       	brne	.+102    	; 0xc3c <vfprintf+0x1f8>
     bd6:	55 20       	and	r5, r5
     bd8:	09 f4       	brne	.+2      	; 0xbdc <vfprintf+0x198>
     bda:	4b cf       	rjmp	.-362    	; 0xa72 <vfprintf+0x2e>
     bdc:	6e 2d       	mov	r22, r14
     bde:	7f 2d       	mov	r23, r15
     be0:	80 e2       	ldi	r24, 0x20	; 32
     be2:	90 e0       	ldi	r25, 0x00	; 0
     be4:	5c d1       	rcall	.+696    	; 0xe9e <fputc>
     be6:	5a 94       	dec	r5
     be8:	f6 cf       	rjmp	.-20     	; 0xbd6 <vfprintf+0x192>
     bea:	e0 2f       	mov	r30, r16
     bec:	f1 2f       	mov	r31, r17
     bee:	80 81       	ld	r24, Z
     bf0:	89 83       	std	Y+1, r24	; 0x01
     bf2:	0e 5f       	subi	r16, 0xFE	; 254
     bf4:	1f 4f       	sbci	r17, 0xFF	; 255
     bf6:	dc cf       	rjmp	.-72     	; 0xbb0 <vfprintf+0x16c>
     bf8:	40 2e       	mov	r4, r16
     bfa:	51 2e       	mov	r5, r17
     bfc:	f2 e0       	ldi	r31, 0x02	; 2
     bfe:	4f 0e       	add	r4, r31
     c00:	51 1c       	adc	r5, r1
     c02:	e0 2f       	mov	r30, r16
     c04:	f1 2f       	mov	r31, r17
     c06:	c0 80       	ld	r12, Z
     c08:	d1 80       	ldd	r13, Z+1	; 0x01
     c0a:	36 fe       	sbrs	r3, 6
     c0c:	0a c0       	rjmp	.+20     	; 0xc22 <vfprintf+0x1de>
     c0e:	69 2d       	mov	r22, r9
     c10:	70 e0       	ldi	r23, 0x00	; 0
     c12:	8c 2d       	mov	r24, r12
     c14:	9d 2d       	mov	r25, r13
     c16:	37 d1       	rcall	.+622    	; 0xe86 <strnlen>
     c18:	88 2e       	mov	r8, r24
     c1a:	99 2e       	mov	r9, r25
     c1c:	04 2d       	mov	r16, r4
     c1e:	15 2d       	mov	r17, r5
     c20:	cc cf       	rjmp	.-104    	; 0xbba <vfprintf+0x176>
     c22:	6f ef       	ldi	r22, 0xFF	; 255
     c24:	7f ef       	ldi	r23, 0xFF	; 255
     c26:	f5 cf       	rjmp	.-22     	; 0xc12 <vfprintf+0x1ce>
     c28:	6f ef       	ldi	r22, 0xFF	; 255
     c2a:	7f ef       	ldi	r23, 0xFF	; 255
     c2c:	b2 cf       	rjmp	.-156    	; 0xb92 <vfprintf+0x14e>
     c2e:	6e 2d       	mov	r22, r14
     c30:	7f 2d       	mov	r23, r15
     c32:	80 e2       	ldi	r24, 0x20	; 32
     c34:	90 e0       	ldi	r25, 0x00	; 0
     c36:	33 d1       	rcall	.+614    	; 0xe9e <fputc>
     c38:	2a 94       	dec	r2
     c3a:	c4 cf       	rjmp	.-120    	; 0xbc4 <vfprintf+0x180>
     c3c:	ec 2d       	mov	r30, r12
     c3e:	fd 2d       	mov	r31, r13
     c40:	37 fc       	sbrc	r3, 7
     c42:	c8 95       	lpm
     c44:	37 fe       	sbrs	r3, 7
     c46:	00 80       	ld	r0, Z
     c48:	31 96       	adiw	r30, 0x01	; 1
     c4a:	80 2d       	mov	r24, r0
     c4c:	ce 2e       	mov	r12, r30
     c4e:	df 2e       	mov	r13, r31
     c50:	6e 2d       	mov	r22, r14
     c52:	7f 2d       	mov	r23, r15
     c54:	90 e0       	ldi	r25, 0x00	; 0
     c56:	23 d1       	rcall	.+582    	; 0xe9e <fputc>
     c58:	51 10       	cpse	r5, r1
     c5a:	5a 94       	dec	r5
     c5c:	21 e0       	ldi	r18, 0x01	; 1
     c5e:	82 1a       	sub	r8, r18
     c60:	91 08       	sbc	r9, r1
     c62:	b6 cf       	rjmp	.-148    	; 0xbd0 <vfprintf+0x18c>
     c64:	84 36       	cpi	r24, 0x64	; 100
     c66:	11 f0       	breq	.+4      	; 0xc6c <vfprintf+0x228>
     c68:	89 36       	cpi	r24, 0x69	; 105
     c6a:	c9 f5       	brne	.+114    	; 0xcde <vfprintf+0x29a>
     c6c:	e0 2f       	mov	r30, r16
     c6e:	f1 2f       	mov	r31, r17
     c70:	37 fe       	sbrs	r3, 7
     c72:	2c c0       	rjmp	.+88     	; 0xccc <vfprintf+0x288>
     c74:	60 81       	ld	r22, Z
     c76:	71 81       	ldd	r23, Z+1	; 0x01
     c78:	82 81       	ldd	r24, Z+2	; 0x02
     c7a:	93 81       	ldd	r25, Z+3	; 0x03
     c7c:	0c 5f       	subi	r16, 0xFC	; 252
     c7e:	1f 4f       	sbci	r17, 0xFF	; 255
     c80:	f3 2d       	mov	r31, r3
     c82:	ff 76       	andi	r31, 0x6F	; 111
     c84:	3f 2e       	mov	r3, r31
     c86:	97 ff       	sbrs	r25, 7
     c88:	09 c0       	rjmp	.+18     	; 0xc9c <vfprintf+0x258>
     c8a:	90 95       	com	r25
     c8c:	80 95       	com	r24
     c8e:	70 95       	com	r23
     c90:	61 95       	neg	r22
     c92:	7f 4f       	sbci	r23, 0xFF	; 255
     c94:	8f 4f       	sbci	r24, 0xFF	; 255
     c96:	9f 4f       	sbci	r25, 0xFF	; 255
     c98:	f0 68       	ori	r31, 0x80	; 128
     c9a:	3f 2e       	mov	r3, r31
     c9c:	2a e0       	ldi	r18, 0x0A	; 10
     c9e:	30 e0       	ldi	r19, 0x00	; 0
     ca0:	4a 2d       	mov	r20, r10
     ca2:	5b 2d       	mov	r21, r11
     ca4:	2e d1       	rcall	.+604    	; 0xf02 <__ultoa_invert>
     ca6:	c8 2e       	mov	r12, r24
     ca8:	ca 18       	sub	r12, r10
     caa:	36 fe       	sbrs	r3, 6
     cac:	63 c0       	rjmp	.+198    	; 0xd74 <vfprintf+0x330>
     cae:	23 2d       	mov	r18, r3
     cb0:	2e 7f       	andi	r18, 0xFE	; 254
     cb2:	82 2e       	mov	r8, r18
     cb4:	c9 14       	cp	r12, r9
     cb6:	08 f0       	brcs	.+2      	; 0xcba <vfprintf+0x276>
     cb8:	9f c0       	rjmp	.+318    	; 0xdf8 <vfprintf+0x3b4>
     cba:	34 fe       	sbrs	r3, 4
     cbc:	05 c0       	rjmp	.+10     	; 0xcc8 <vfprintf+0x284>
     cbe:	32 fc       	sbrc	r3, 2
     cc0:	03 c0       	rjmp	.+6      	; 0xcc8 <vfprintf+0x284>
     cc2:	83 2d       	mov	r24, r3
     cc4:	8e 7e       	andi	r24, 0xEE	; 238
     cc6:	88 2e       	mov	r8, r24
     cc8:	d9 2c       	mov	r13, r9
     cca:	56 c0       	rjmp	.+172    	; 0xd78 <vfprintf+0x334>
     ccc:	60 81       	ld	r22, Z
     cce:	71 81       	ldd	r23, Z+1	; 0x01
     cd0:	07 2e       	mov	r0, r23
     cd2:	00 0c       	add	r0, r0
     cd4:	88 0b       	sbc	r24, r24
     cd6:	99 0b       	sbc	r25, r25
     cd8:	0e 5f       	subi	r16, 0xFE	; 254
     cda:	1f 4f       	sbci	r17, 0xFF	; 255
     cdc:	d1 cf       	rjmp	.-94     	; 0xc80 <vfprintf+0x23c>
     cde:	85 37       	cpi	r24, 0x75	; 117
     ce0:	c1 f4       	brne	.+48     	; 0xd12 <vfprintf+0x2ce>
     ce2:	23 2d       	mov	r18, r3
     ce4:	2f 7e       	andi	r18, 0xEF	; 239
     ce6:	d2 2e       	mov	r13, r18
     ce8:	2a e0       	ldi	r18, 0x0A	; 10
     cea:	30 e0       	ldi	r19, 0x00	; 0
     cec:	e0 2f       	mov	r30, r16
     cee:	f1 2f       	mov	r31, r17
     cf0:	d7 fe       	sbrs	r13, 7
     cf2:	39 c0       	rjmp	.+114    	; 0xd66 <vfprintf+0x322>
     cf4:	60 81       	ld	r22, Z
     cf6:	71 81       	ldd	r23, Z+1	; 0x01
     cf8:	82 81       	ldd	r24, Z+2	; 0x02
     cfa:	93 81       	ldd	r25, Z+3	; 0x03
     cfc:	0c 5f       	subi	r16, 0xFC	; 252
     cfe:	1f 4f       	sbci	r17, 0xFF	; 255
     d00:	4a 2d       	mov	r20, r10
     d02:	5b 2d       	mov	r21, r11
     d04:	fe d0       	rcall	.+508    	; 0xf02 <__ultoa_invert>
     d06:	c8 2e       	mov	r12, r24
     d08:	ca 18       	sub	r12, r10
     d0a:	fd 2d       	mov	r31, r13
     d0c:	ff 77       	andi	r31, 0x7F	; 127
     d0e:	3f 2e       	mov	r3, r31
     d10:	cc cf       	rjmp	.-104    	; 0xcaa <vfprintf+0x266>
     d12:	93 2d       	mov	r25, r3
     d14:	99 7f       	andi	r25, 0xF9	; 249
     d16:	d9 2e       	mov	r13, r25
     d18:	8f 36       	cpi	r24, 0x6F	; 111
     d1a:	11 f1       	breq	.+68     	; 0xd60 <vfprintf+0x31c>
     d1c:	48 f4       	brcc	.+18     	; 0xd30 <vfprintf+0x2ec>
     d1e:	88 35       	cpi	r24, 0x58	; 88
     d20:	b9 f0       	breq	.+46     	; 0xd50 <vfprintf+0x30c>
     d22:	ee 2d       	mov	r30, r14
     d24:	ff 2d       	mov	r31, r15
     d26:	86 81       	ldd	r24, Z+6	; 0x06
     d28:	97 81       	ldd	r25, Z+7	; 0x07
     d2a:	2b 96       	adiw	r28, 0x0b	; 11
     d2c:	e2 e1       	ldi	r30, 0x12	; 18
     d2e:	72 c1       	rjmp	.+740    	; 0x1014 <__epilogue_restores__>
     d30:	80 37       	cpi	r24, 0x70	; 112
     d32:	51 f0       	breq	.+20     	; 0xd48 <vfprintf+0x304>
     d34:	88 37       	cpi	r24, 0x78	; 120
     d36:	a9 f7       	brne	.-22     	; 0xd22 <vfprintf+0x2de>
     d38:	d4 fe       	sbrs	r13, 4
     d3a:	03 c0       	rjmp	.+6      	; 0xd42 <vfprintf+0x2fe>
     d3c:	fd 2d       	mov	r31, r13
     d3e:	f4 60       	ori	r31, 0x04	; 4
     d40:	df 2e       	mov	r13, r31
     d42:	20 e1       	ldi	r18, 0x10	; 16
     d44:	30 e0       	ldi	r19, 0x00	; 0
     d46:	d2 cf       	rjmp	.-92     	; 0xcec <vfprintf+0x2a8>
     d48:	e9 2f       	mov	r30, r25
     d4a:	e0 61       	ori	r30, 0x10	; 16
     d4c:	de 2e       	mov	r13, r30
     d4e:	f4 cf       	rjmp	.-24     	; 0xd38 <vfprintf+0x2f4>
     d50:	34 fe       	sbrs	r3, 4
     d52:	03 c0       	rjmp	.+6      	; 0xd5a <vfprintf+0x316>
     d54:	29 2f       	mov	r18, r25
     d56:	26 60       	ori	r18, 0x06	; 6
     d58:	d2 2e       	mov	r13, r18
     d5a:	20 e1       	ldi	r18, 0x10	; 16
     d5c:	32 e0       	ldi	r19, 0x02	; 2
     d5e:	c6 cf       	rjmp	.-116    	; 0xcec <vfprintf+0x2a8>
     d60:	28 e0       	ldi	r18, 0x08	; 8
     d62:	30 e0       	ldi	r19, 0x00	; 0
     d64:	c3 cf       	rjmp	.-122    	; 0xcec <vfprintf+0x2a8>
     d66:	60 81       	ld	r22, Z
     d68:	71 81       	ldd	r23, Z+1	; 0x01
     d6a:	80 e0       	ldi	r24, 0x00	; 0
     d6c:	90 e0       	ldi	r25, 0x00	; 0
     d6e:	0e 5f       	subi	r16, 0xFE	; 254
     d70:	1f 4f       	sbci	r17, 0xFF	; 255
     d72:	c6 cf       	rjmp	.-116    	; 0xd00 <vfprintf+0x2bc>
     d74:	dc 2c       	mov	r13, r12
     d76:	83 2c       	mov	r8, r3
     d78:	84 fe       	sbrs	r8, 4
     d7a:	47 c0       	rjmp	.+142    	; 0xe0a <vfprintf+0x3c6>
     d7c:	ec 2f       	mov	r30, r28
     d7e:	fd 2f       	mov	r31, r29
     d80:	ec 0d       	add	r30, r12
     d82:	f1 1d       	adc	r31, r1
     d84:	80 81       	ld	r24, Z
     d86:	80 33       	cpi	r24, 0x30	; 48
     d88:	c9 f5       	brne	.+114    	; 0xdfc <vfprintf+0x3b8>
     d8a:	98 2d       	mov	r25, r8
     d8c:	99 7e       	andi	r25, 0xE9	; 233
     d8e:	89 2e       	mov	r8, r25
     d90:	e8 2d       	mov	r30, r8
     d92:	e8 70       	andi	r30, 0x08	; 8
     d94:	5e 2e       	mov	r5, r30
     d96:	83 fc       	sbrc	r8, 3
     d98:	47 c0       	rjmp	.+142    	; 0xe28 <vfprintf+0x3e4>
     d9a:	80 fe       	sbrs	r8, 0
     d9c:	41 c0       	rjmp	.+130    	; 0xe20 <vfprintf+0x3dc>
     d9e:	d2 14       	cp	r13, r2
     da0:	08 f0       	brcs	.+2      	; 0xda4 <vfprintf+0x360>
     da2:	47 c0       	rjmp	.+142    	; 0xe32 <vfprintf+0x3ee>
     da4:	2c 0c       	add	r2, r12
     da6:	92 2c       	mov	r9, r2
     da8:	9d 18       	sub	r9, r13
     daa:	84 fe       	sbrs	r8, 4
     dac:	47 c0       	rjmp	.+142    	; 0xe3c <vfprintf+0x3f8>
     dae:	6e 2d       	mov	r22, r14
     db0:	7f 2d       	mov	r23, r15
     db2:	80 e3       	ldi	r24, 0x30	; 48
     db4:	90 e0       	ldi	r25, 0x00	; 0
     db6:	73 d0       	rcall	.+230    	; 0xe9e <fputc>
     db8:	82 fe       	sbrs	r8, 2
     dba:	07 c0       	rjmp	.+14     	; 0xdca <vfprintf+0x386>
     dbc:	81 fc       	sbrc	r8, 1
     dbe:	3b c0       	rjmp	.+118    	; 0xe36 <vfprintf+0x3f2>
     dc0:	88 e7       	ldi	r24, 0x78	; 120
     dc2:	90 e0       	ldi	r25, 0x00	; 0
     dc4:	6e 2d       	mov	r22, r14
     dc6:	7f 2d       	mov	r23, r15
     dc8:	6a d0       	rcall	.+212    	; 0xe9e <fputc>
     dca:	c9 14       	cp	r12, r9
     dcc:	08 f4       	brcc	.+2      	; 0xdd0 <vfprintf+0x38c>
     dce:	44 c0       	rjmp	.+136    	; 0xe58 <vfprintf+0x414>
     dd0:	ca 94       	dec	r12
     dd2:	d1 2c       	mov	r13, r1
     dd4:	ff ef       	ldi	r31, 0xFF	; 255
     dd6:	cf 1a       	sub	r12, r31
     dd8:	df 0a       	sbc	r13, r31
     dda:	ca 0c       	add	r12, r10
     ddc:	db 1c       	adc	r13, r11
     dde:	ec 2d       	mov	r30, r12
     de0:	fd 2d       	mov	r31, r13
     de2:	82 91       	ld	r24, -Z
     de4:	ce 2e       	mov	r12, r30
     de6:	df 2e       	mov	r13, r31
     de8:	6e 2d       	mov	r22, r14
     dea:	7f 2d       	mov	r23, r15
     dec:	90 e0       	ldi	r25, 0x00	; 0
     dee:	57 d0       	rcall	.+174    	; 0xe9e <fputc>
     df0:	ac 14       	cp	r10, r12
     df2:	bd 04       	cpc	r11, r13
     df4:	a1 f7       	brne	.-24     	; 0xdde <vfprintf+0x39a>
     df6:	ef ce       	rjmp	.-546    	; 0xbd6 <vfprintf+0x192>
     df8:	dc 2c       	mov	r13, r12
     dfa:	be cf       	rjmp	.-132    	; 0xd78 <vfprintf+0x334>
     dfc:	82 fc       	sbrc	r8, 2
     dfe:	02 c0       	rjmp	.+4      	; 0xe04 <vfprintf+0x3c0>
     e00:	d3 94       	inc	r13
     e02:	c6 cf       	rjmp	.-116    	; 0xd90 <vfprintf+0x34c>
     e04:	d3 94       	inc	r13
     e06:	d3 94       	inc	r13
     e08:	c3 cf       	rjmp	.-122    	; 0xd90 <vfprintf+0x34c>
     e0a:	88 2d       	mov	r24, r8
     e0c:	86 78       	andi	r24, 0x86	; 134
     e0e:	09 f4       	brne	.+2      	; 0xe12 <vfprintf+0x3ce>
     e10:	bf cf       	rjmp	.-130    	; 0xd90 <vfprintf+0x34c>
     e12:	f6 cf       	rjmp	.-20     	; 0xe00 <vfprintf+0x3bc>
     e14:	6e 2d       	mov	r22, r14
     e16:	7f 2d       	mov	r23, r15
     e18:	80 e2       	ldi	r24, 0x20	; 32
     e1a:	90 e0       	ldi	r25, 0x00	; 0
     e1c:	40 d0       	rcall	.+128    	; 0xe9e <fputc>
     e1e:	d3 94       	inc	r13
     e20:	d2 14       	cp	r13, r2
     e22:	c0 f3       	brcs	.-16     	; 0xe14 <vfprintf+0x3d0>
     e24:	51 2c       	mov	r5, r1
     e26:	c1 cf       	rjmp	.-126    	; 0xdaa <vfprintf+0x366>
     e28:	d2 14       	cp	r13, r2
     e2a:	e0 f7       	brcc	.-8      	; 0xe24 <vfprintf+0x3e0>
     e2c:	52 2c       	mov	r5, r2
     e2e:	5d 18       	sub	r5, r13
     e30:	bc cf       	rjmp	.-136    	; 0xdaa <vfprintf+0x366>
     e32:	9c 2c       	mov	r9, r12
     e34:	ba cf       	rjmp	.-140    	; 0xdaa <vfprintf+0x366>
     e36:	88 e5       	ldi	r24, 0x58	; 88
     e38:	90 e0       	ldi	r25, 0x00	; 0
     e3a:	c4 cf       	rjmp	.-120    	; 0xdc4 <vfprintf+0x380>
     e3c:	88 2d       	mov	r24, r8
     e3e:	86 78       	andi	r24, 0x86	; 134
     e40:	21 f2       	breq	.-120    	; 0xdca <vfprintf+0x386>
     e42:	81 fe       	sbrs	r8, 1
     e44:	07 c0       	rjmp	.+14     	; 0xe54 <vfprintf+0x410>
     e46:	8b e2       	ldi	r24, 0x2B	; 43
     e48:	87 fc       	sbrc	r8, 7
     e4a:	8d e2       	ldi	r24, 0x2D	; 45
     e4c:	6e 2d       	mov	r22, r14
     e4e:	7f 2d       	mov	r23, r15
     e50:	90 e0       	ldi	r25, 0x00	; 0
     e52:	ba cf       	rjmp	.-140    	; 0xdc8 <vfprintf+0x384>
     e54:	80 e2       	ldi	r24, 0x20	; 32
     e56:	f8 cf       	rjmp	.-16     	; 0xe48 <vfprintf+0x404>
     e58:	6e 2d       	mov	r22, r14
     e5a:	7f 2d       	mov	r23, r15
     e5c:	80 e3       	ldi	r24, 0x30	; 48
     e5e:	90 e0       	ldi	r25, 0x00	; 0
     e60:	1e d0       	rcall	.+60     	; 0xe9e <fputc>
     e62:	9a 94       	dec	r9
     e64:	b2 cf       	rjmp	.-156    	; 0xdca <vfprintf+0x386>
     e66:	8f ef       	ldi	r24, 0xFF	; 255
     e68:	9f ef       	ldi	r25, 0xFF	; 255
     e6a:	5f cf       	rjmp	.-322    	; 0xd2a <vfprintf+0x2e6>

00000e6c <strnlen_P>:
     e6c:	e8 2f       	mov	r30, r24
     e6e:	f9 2f       	mov	r31, r25
     e70:	c8 95       	lpm
     e72:	31 96       	adiw	r30, 0x01	; 1
     e74:	61 50       	subi	r22, 0x01	; 1
     e76:	70 40       	sbci	r23, 0x00	; 0
     e78:	01 10       	cpse	r0, r1
     e7a:	d0 f7       	brcc	.-12     	; 0xe70 <strnlen_P+0x4>
     e7c:	80 95       	com	r24
     e7e:	90 95       	com	r25
     e80:	8e 0f       	add	r24, r30
     e82:	9f 1f       	adc	r25, r31
     e84:	08 95       	ret

00000e86 <strnlen>:
     e86:	e8 2f       	mov	r30, r24
     e88:	f9 2f       	mov	r31, r25
     e8a:	61 50       	subi	r22, 0x01	; 1
     e8c:	70 40       	sbci	r23, 0x00	; 0
     e8e:	01 90       	ld	r0, Z+
     e90:	01 10       	cpse	r0, r1
     e92:	d8 f7       	brcc	.-10     	; 0xe8a <strnlen+0x4>
     e94:	80 95       	com	r24
     e96:	90 95       	com	r25
     e98:	8e 0f       	add	r24, r30
     e9a:	9f 1f       	adc	r25, r31
     e9c:	08 95       	ret

00000e9e <fputc>:
     e9e:	0f 93       	push	r16
     ea0:	1f 93       	push	r17
     ea2:	cf 93       	push	r28
     ea4:	df 93       	push	r29
     ea6:	18 2f       	mov	r17, r24
     ea8:	09 2f       	mov	r16, r25
     eaa:	c6 2f       	mov	r28, r22
     eac:	d7 2f       	mov	r29, r23
     eae:	8b 81       	ldd	r24, Y+3	; 0x03
     eb0:	81 fd       	sbrc	r24, 1
     eb2:	09 c0       	rjmp	.+18     	; 0xec6 <fputc+0x28>
     eb4:	1f ef       	ldi	r17, 0xFF	; 255
     eb6:	0f ef       	ldi	r16, 0xFF	; 255
     eb8:	81 2f       	mov	r24, r17
     eba:	90 2f       	mov	r25, r16
     ebc:	df 91       	pop	r29
     ebe:	cf 91       	pop	r28
     ec0:	1f 91       	pop	r17
     ec2:	0f 91       	pop	r16
     ec4:	08 95       	ret
     ec6:	82 ff       	sbrs	r24, 2
     ec8:	15 c0       	rjmp	.+42     	; 0xef4 <fputc+0x56>
     eca:	2e 81       	ldd	r18, Y+6	; 0x06
     ecc:	3f 81       	ldd	r19, Y+7	; 0x07
     ece:	8c 81       	ldd	r24, Y+4	; 0x04
     ed0:	9d 81       	ldd	r25, Y+5	; 0x05
     ed2:	28 17       	cp	r18, r24
     ed4:	39 07       	cpc	r19, r25
     ed6:	44 f4       	brge	.+16     	; 0xee8 <fputc+0x4a>
     ed8:	e8 81       	ld	r30, Y
     eda:	f9 81       	ldd	r31, Y+1	; 0x01
     edc:	8e 2f       	mov	r24, r30
     ede:	9f 2f       	mov	r25, r31
     ee0:	01 96       	adiw	r24, 0x01	; 1
     ee2:	99 83       	std	Y+1, r25	; 0x01
     ee4:	88 83       	st	Y, r24
     ee6:	10 83       	st	Z, r17
     ee8:	8e 81       	ldd	r24, Y+6	; 0x06
     eea:	9f 81       	ldd	r25, Y+7	; 0x07
     eec:	01 96       	adiw	r24, 0x01	; 1
     eee:	9f 83       	std	Y+7, r25	; 0x07
     ef0:	8e 83       	std	Y+6, r24	; 0x06
     ef2:	e2 cf       	rjmp	.-60     	; 0xeb8 <fputc+0x1a>
     ef4:	e8 85       	ldd	r30, Y+8	; 0x08
     ef6:	f9 85       	ldd	r31, Y+9	; 0x09
     ef8:	81 2f       	mov	r24, r17
     efa:	09 95       	icall
     efc:	89 2b       	or	r24, r25
     efe:	a1 f3       	breq	.-24     	; 0xee8 <fputc+0x4a>
     f00:	d9 cf       	rjmp	.-78     	; 0xeb4 <fputc+0x16>

00000f02 <__ultoa_invert>:
     f02:	e4 2f       	mov	r30, r20
     f04:	f5 2f       	mov	r31, r21
     f06:	aa 27       	eor	r26, r26
     f08:	28 30       	cpi	r18, 0x08	; 8
     f0a:	69 f1       	breq	.+90     	; 0xf66 <__ultoa_invert+0x64>
     f0c:	20 31       	cpi	r18, 0x10	; 16
     f0e:	99 f1       	breq	.+102    	; 0xf76 <__ultoa_invert+0x74>
     f10:	e8 94       	clt
     f12:	6f 93       	push	r22
     f14:	6e 7f       	andi	r22, 0xFE	; 254
     f16:	6e 5f       	subi	r22, 0xFE	; 254
     f18:	7f 4f       	sbci	r23, 0xFF	; 255
     f1a:	8f 4f       	sbci	r24, 0xFF	; 255
     f1c:	9f 4f       	sbci	r25, 0xFF	; 255
     f1e:	af 4f       	sbci	r26, 0xFF	; 255
     f20:	b1 e0       	ldi	r27, 0x01	; 1
     f22:	41 d0       	rcall	.+130    	; 0xfa6 <__ultoa_invert+0xa4>
     f24:	b4 e0       	ldi	r27, 0x04	; 4
     f26:	3f d0       	rcall	.+126    	; 0xfa6 <__ultoa_invert+0xa4>
     f28:	67 0f       	add	r22, r23
     f2a:	78 1f       	adc	r23, r24
     f2c:	89 1f       	adc	r24, r25
     f2e:	9a 1f       	adc	r25, r26
     f30:	a1 1d       	adc	r26, r1
     f32:	68 0f       	add	r22, r24
     f34:	79 1f       	adc	r23, r25
     f36:	8a 1f       	adc	r24, r26
     f38:	91 1d       	adc	r25, r1
     f3a:	a1 1d       	adc	r26, r1
     f3c:	6a 0f       	add	r22, r26
     f3e:	71 1d       	adc	r23, r1
     f40:	81 1d       	adc	r24, r1
     f42:	91 1d       	adc	r25, r1
     f44:	a1 1d       	adc	r26, r1
     f46:	23 d0       	rcall	.+70     	; 0xf8e <__ultoa_invert+0x8c>
     f48:	09 f4       	brne	.+2      	; 0xf4c <__ultoa_invert+0x4a>
     f4a:	68 94       	set
     f4c:	3f 91       	pop	r19
     f4e:	06 2e       	mov	r0, r22
     f50:	00 0c       	add	r0, r0
     f52:	30 19       	sub	r19, r0
     f54:	00 0c       	add	r0, r0
     f56:	00 0c       	add	r0, r0
     f58:	30 19       	sub	r19, r0
     f5a:	30 5d       	subi	r19, 0xD0	; 208
     f5c:	31 93       	st	Z+, r19
     f5e:	ce f6       	brtc	.-78     	; 0xf12 <__ultoa_invert+0x10>
     f60:	8e 2f       	mov	r24, r30
     f62:	9f 2f       	mov	r25, r31
     f64:	08 95       	ret
     f66:	46 2f       	mov	r20, r22
     f68:	47 70       	andi	r20, 0x07	; 7
     f6a:	40 5d       	subi	r20, 0xD0	; 208
     f6c:	41 93       	st	Z+, r20
     f6e:	b3 e0       	ldi	r27, 0x03	; 3
     f70:	0f d0       	rcall	.+30     	; 0xf90 <__ultoa_invert+0x8e>
     f72:	c9 f7       	brne	.-14     	; 0xf66 <__ultoa_invert+0x64>
     f74:	f5 cf       	rjmp	.-22     	; 0xf60 <__ultoa_invert+0x5e>
     f76:	46 2f       	mov	r20, r22
     f78:	4f 70       	andi	r20, 0x0F	; 15
     f7a:	40 5d       	subi	r20, 0xD0	; 208
     f7c:	4a 33       	cpi	r20, 0x3A	; 58
     f7e:	18 f0       	brcs	.+6      	; 0xf86 <__ultoa_invert+0x84>
     f80:	49 5d       	subi	r20, 0xD9	; 217
     f82:	31 fd       	sbrc	r19, 1
     f84:	40 52       	subi	r20, 0x20	; 32
     f86:	41 93       	st	Z+, r20
     f88:	02 d0       	rcall	.+4      	; 0xf8e <__ultoa_invert+0x8c>
     f8a:	a9 f7       	brne	.-22     	; 0xf76 <__ultoa_invert+0x74>
     f8c:	e9 cf       	rjmp	.-46     	; 0xf60 <__ultoa_invert+0x5e>
     f8e:	b4 e0       	ldi	r27, 0x04	; 4
     f90:	a6 95       	lsr	r26
     f92:	97 95       	ror	r25
     f94:	87 95       	ror	r24
     f96:	77 95       	ror	r23
     f98:	67 95       	ror	r22
     f9a:	ba 95       	dec	r27
     f9c:	c9 f7       	brne	.-14     	; 0xf90 <__ultoa_invert+0x8e>
     f9e:	00 97       	sbiw	r24, 0x00	; 0
     fa0:	61 05       	cpc	r22, r1
     fa2:	71 05       	cpc	r23, r1
     fa4:	08 95       	ret
     fa6:	26 2f       	mov	r18, r22
     fa8:	37 2f       	mov	r19, r23
     faa:	48 2f       	mov	r20, r24
     fac:	59 2f       	mov	r21, r25
     fae:	0a 2e       	mov	r0, r26
     fb0:	06 94       	lsr	r0
     fb2:	57 95       	ror	r21
     fb4:	47 95       	ror	r20
     fb6:	37 95       	ror	r19
     fb8:	27 95       	ror	r18
     fba:	ba 95       	dec	r27
     fbc:	c9 f7       	brne	.-14     	; 0xfb0 <__ultoa_invert+0xae>
     fbe:	62 0f       	add	r22, r18
     fc0:	73 1f       	adc	r23, r19
     fc2:	84 1f       	adc	r24, r20
     fc4:	95 1f       	adc	r25, r21
     fc6:	a0 1d       	adc	r26, r0
     fc8:	08 95       	ret

00000fca <__mulqi3>:
     fca:	00 24       	eor	r0, r0

00000fcc <__mulqi3_loop>:
     fcc:	80 fd       	sbrc	r24, 0
     fce:	06 0e       	add	r0, r22
     fd0:	66 0f       	add	r22, r22
     fd2:	11 f0       	breq	.+4      	; 0xfd8 <__mulqi3_exit>
     fd4:	86 95       	lsr	r24
     fd6:	d1 f7       	brne	.-12     	; 0xfcc <__mulqi3_loop>

00000fd8 <__mulqi3_exit>:
     fd8:	80 2d       	mov	r24, r0
     fda:	08 95       	ret

00000fdc <__prologue_saves__>:
     fdc:	2f 92       	push	r2
     fde:	3f 92       	push	r3
     fe0:	4f 92       	push	r4
     fe2:	5f 92       	push	r5
     fe4:	6f 92       	push	r6
     fe6:	7f 92       	push	r7
     fe8:	8f 92       	push	r8
     fea:	9f 92       	push	r9
     fec:	af 92       	push	r10
     fee:	bf 92       	push	r11
     ff0:	cf 92       	push	r12
     ff2:	df 92       	push	r13
     ff4:	ef 92       	push	r14
     ff6:	ff 92       	push	r15
     ff8:	0f 93       	push	r16
     ffa:	1f 93       	push	r17
     ffc:	cf 93       	push	r28
     ffe:	df 93       	push	r29
    1000:	cd b7       	in	r28, 0x3d	; 61
    1002:	de b7       	in	r29, 0x3e	; 62
    1004:	ca 1b       	sub	r28, r26
    1006:	db 0b       	sbc	r29, r27
    1008:	0f b6       	in	r0, 0x3f	; 63
    100a:	f8 94       	cli
    100c:	de bf       	out	0x3e, r29	; 62
    100e:	0f be       	out	0x3f, r0	; 63
    1010:	cd bf       	out	0x3d, r28	; 61
    1012:	09 94       	ijmp

00001014 <__epilogue_restores__>:
    1014:	2a 88       	ldd	r2, Y+18	; 0x12
    1016:	39 88       	ldd	r3, Y+17	; 0x11
    1018:	48 88       	ldd	r4, Y+16	; 0x10
    101a:	5f 84       	ldd	r5, Y+15	; 0x0f
    101c:	6e 84       	ldd	r6, Y+14	; 0x0e
    101e:	7d 84       	ldd	r7, Y+13	; 0x0d
    1020:	8c 84       	ldd	r8, Y+12	; 0x0c
    1022:	9b 84       	ldd	r9, Y+11	; 0x0b
    1024:	aa 84       	ldd	r10, Y+10	; 0x0a
    1026:	b9 84       	ldd	r11, Y+9	; 0x09
    1028:	c8 84       	ldd	r12, Y+8	; 0x08
    102a:	df 80       	ldd	r13, Y+7	; 0x07
    102c:	ee 80       	ldd	r14, Y+6	; 0x06
    102e:	fd 80       	ldd	r15, Y+5	; 0x05
    1030:	0c 81       	ldd	r16, Y+4	; 0x04
    1032:	1b 81       	ldd	r17, Y+3	; 0x03
    1034:	aa 81       	ldd	r26, Y+2	; 0x02
    1036:	b9 81       	ldd	r27, Y+1	; 0x01
    1038:	ce 0f       	add	r28, r30
    103a:	d1 1d       	adc	r29, r1
    103c:	0f b6       	in	r0, 0x3f	; 63
    103e:	f8 94       	cli
    1040:	de bf       	out	0x3e, r29	; 62
    1042:	0f be       	out	0x3f, r0	; 63
    1044:	cd bf       	out	0x3d, r28	; 61
    1046:	ca 2f       	mov	r28, r26
    1048:	db 2f       	mov	r29, r27
    104a:	08 95       	ret

0000104c <_exit>:
    104c:	f8 94       	cli

0000104e <__stop_program>:
    104e:	ff cf       	rjmp	.-2      	; 0x104e <__stop_program>
