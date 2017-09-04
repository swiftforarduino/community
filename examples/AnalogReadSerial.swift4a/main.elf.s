
main.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 35 00 	jmp	0x6a	; 0x6a <__ctors_end>
   4:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
   8:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
   c:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  10:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  14:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  18:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  1c:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  20:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  24:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  28:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  2c:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  30:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  34:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  38:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  3c:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  40:	0c 94 1e 02 	jmp	0x43c	; 0x43c <__vector_16>
  44:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  48:	0c 94 35 02 	jmp	0x46a	; 0x46a <__vector_18>
  4c:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  50:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  54:	0c 94 2d 04 	jmp	0x85a	; 0x85a <__vector_21>
  58:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  5c:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  60:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  64:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>

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
  7c:	e6 ec       	ldi	r30, 0xC6	; 198
  7e:	ff e0       	ldi	r31, 0x0F	; 15
  80:	02 c0       	rjmp	.+4      	; 0x86 <__do_copy_data+0x10>
  82:	05 90       	lpm	r0, Z+
  84:	0d 92       	st	X+, r0
  86:	a6 31       	cpi	r26, 0x16	; 22
  88:	b1 07       	cpc	r27, r17
  8a:	d9 f7       	brne	.-10     	; 0x82 <__do_copy_data+0xc>

0000008c <__do_clear_bss>:
  8c:	22 e0       	ldi	r18, 0x02	; 2
  8e:	a6 e1       	ldi	r26, 0x16	; 22
  90:	b1 e0       	ldi	r27, 0x01	; 1
  92:	01 c0       	rjmp	.+2      	; 0x96 <.do_clear_bss_start>

00000094 <.do_clear_bss_loop>:
  94:	1d 92       	st	X+, r1

00000096 <.do_clear_bss_start>:
  96:	a0 33       	cpi	r26, 0x30	; 48
  98:	b2 07       	cpc	r27, r18
  9a:	e1 f7       	brne	.-8      	; 0x94 <.do_clear_bss_loop>

0000009c <__do_global_ctors>:
  9c:	10 e0       	ldi	r17, 0x00	; 0
  9e:	c5 e3       	ldi	r28, 0x35	; 53
  a0:	d0 e0       	ldi	r29, 0x00	; 0
  a2:	04 c0       	rjmp	.+8      	; 0xac <__do_global_ctors+0x10>
  a4:	21 97       	sbiw	r28, 0x01	; 1
  a6:	fe 01       	movw	r30, r28
  a8:	0e 94 e4 04 	call	0x9c8	; 0x9c8 <__tablejump2__>
  ac:	c4 33       	cpi	r28, 0x34	; 52
  ae:	d1 07       	cpc	r29, r17
  b0:	c9 f7       	brne	.-14     	; 0xa4 <__do_global_ctors+0x8>
  b2:	0e 94 60 00 	call	0xc0	; 0xc0 <main>
  b6:	0c 94 e1 07 	jmp	0xfc2	; 0xfc2 <_exit>

000000ba <__bad_interrupt>:
  ba:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>
	...

000000c0 <main>:
  c0:	0f 93       	push	r16
  c2:	1f 93       	push	r17
  c4:	80 e8       	ldi	r24, 0x80	; 128
  c6:	95 e2       	ldi	r25, 0x25	; 37
  c8:	0e 94 ba 00 	call	0x174	; 0x174 <_TF3AVR11SetupSerialFT8baudRateVs5Int16_T_>
  cc:	04 ef       	ldi	r16, 0xF4	; 244
  ce:	11 e0       	ldi	r17, 0x01	; 1

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
 422:	0e 94 ea 04 	call	0x9d4	; 0x9d4 <snprintf>
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
 98c:	fd 01       	movw	r30, r26
 98e:	0d c0       	rjmp	.+26     	; 0x9aa <__udivmodsi4_ep>

00000990 <__udivmodsi4_loop>:
 990:	aa 1f       	adc	r26, r26
 992:	bb 1f       	adc	r27, r27
 994:	ee 1f       	adc	r30, r30
 996:	ff 1f       	adc	r31, r31
 998:	a2 17       	cp	r26, r18
 99a:	b3 07       	cpc	r27, r19
 99c:	e4 07       	cpc	r30, r20
 99e:	f5 07       	cpc	r31, r21
 9a0:	20 f0       	brcs	.+8      	; 0x9aa <__udivmodsi4_ep>
 9a2:	a2 1b       	sub	r26, r18
 9a4:	b3 0b       	sbc	r27, r19
 9a6:	e4 0b       	sbc	r30, r20
 9a8:	f5 0b       	sbc	r31, r21

000009aa <__udivmodsi4_ep>:
 9aa:	66 1f       	adc	r22, r22
 9ac:	77 1f       	adc	r23, r23
 9ae:	88 1f       	adc	r24, r24
 9b0:	99 1f       	adc	r25, r25
 9b2:	1a 94       	dec	r1
 9b4:	69 f7       	brne	.-38     	; 0x990 <__udivmodsi4_loop>
 9b6:	60 95       	com	r22
 9b8:	70 95       	com	r23
 9ba:	80 95       	com	r24
 9bc:	90 95       	com	r25
 9be:	9b 01       	movw	r18, r22
 9c0:	ac 01       	movw	r20, r24
 9c2:	bd 01       	movw	r22, r26
 9c4:	cf 01       	movw	r24, r30
 9c6:	08 95       	ret

000009c8 <__tablejump2__>:
 9c8:	ee 0f       	add	r30, r30
 9ca:	ff 1f       	adc	r31, r31
 9cc:	05 90       	lpm	r0, Z+
 9ce:	f4 91       	lpm	r31, Z
 9d0:	e0 2d       	mov	r30, r0
 9d2:	09 94       	ijmp

000009d4 <snprintf>:
 9d4:	ae e0       	ldi	r26, 0x0E	; 14
 9d6:	b0 e0       	ldi	r27, 0x00	; 0
 9d8:	e0 ef       	ldi	r30, 0xF0	; 240
 9da:	f4 e0       	ldi	r31, 0x04	; 4
 9dc:	0c 94 b8 07 	jmp	0xf70	; 0xf70 <__prologue_saves__+0x1c>
 9e0:	0d 89       	ldd	r16, Y+21	; 0x15
 9e2:	1e 89       	ldd	r17, Y+22	; 0x16
 9e4:	8f 89       	ldd	r24, Y+23	; 0x17
 9e6:	98 8d       	ldd	r25, Y+24	; 0x18
 9e8:	26 e0       	ldi	r18, 0x06	; 6
 9ea:	2c 83       	std	Y+4, r18	; 0x04
 9ec:	1a 83       	std	Y+2, r17	; 0x02
 9ee:	09 83       	std	Y+1, r16	; 0x01
 9f0:	97 ff       	sbrs	r25, 7
 9f2:	02 c0       	rjmp	.+4      	; 0x9f8 <snprintf+0x24>
 9f4:	80 e0       	ldi	r24, 0x00	; 0
 9f6:	90 e8       	ldi	r25, 0x80	; 128
 9f8:	01 97       	sbiw	r24, 0x01	; 1
 9fa:	9e 83       	std	Y+6, r25	; 0x06
 9fc:	8d 83       	std	Y+5, r24	; 0x05
 9fe:	ae 01       	movw	r20, r28
 a00:	45 5e       	subi	r20, 0xE5	; 229
 a02:	5f 4f       	sbci	r21, 0xFF	; 255
 a04:	69 8d       	ldd	r22, Y+25	; 0x19
 a06:	7a 8d       	ldd	r23, Y+26	; 0x1a
 a08:	ce 01       	movw	r24, r28
 a0a:	01 96       	adiw	r24, 0x01	; 1
 a0c:	0e 94 1a 05 	call	0xa34	; 0xa34 <vfprintf>
 a10:	4d 81       	ldd	r20, Y+5	; 0x05
 a12:	5e 81       	ldd	r21, Y+6	; 0x06
 a14:	57 fd       	sbrc	r21, 7
 a16:	0a c0       	rjmp	.+20     	; 0xa2c <snprintf+0x58>
 a18:	2f 81       	ldd	r18, Y+7	; 0x07
 a1a:	38 85       	ldd	r19, Y+8	; 0x08
 a1c:	42 17       	cp	r20, r18
 a1e:	53 07       	cpc	r21, r19
 a20:	0c f4       	brge	.+2      	; 0xa24 <snprintf+0x50>
 a22:	9a 01       	movw	r18, r20
 a24:	02 0f       	add	r16, r18
 a26:	13 1f       	adc	r17, r19
 a28:	f8 01       	movw	r30, r16
 a2a:	10 82       	st	Z, r1
 a2c:	2e 96       	adiw	r28, 0x0e	; 14
 a2e:	e4 e0       	ldi	r30, 0x04	; 4
 a30:	0c 94 d4 07 	jmp	0xfa8	; 0xfa8 <__epilogue_restores__+0x1c>

00000a34 <vfprintf>:
 a34:	ab e0       	ldi	r26, 0x0B	; 11
 a36:	b0 e0       	ldi	r27, 0x00	; 0
 a38:	e0 e2       	ldi	r30, 0x20	; 32
 a3a:	f5 e0       	ldi	r31, 0x05	; 5
 a3c:	0c 94 aa 07 	jmp	0xf54	; 0xf54 <__prologue_saves__>
 a40:	7c 01       	movw	r14, r24
 a42:	3b 01       	movw	r6, r22
 a44:	8a 01       	movw	r16, r20
 a46:	fc 01       	movw	r30, r24
 a48:	17 82       	std	Z+7, r1	; 0x07
 a4a:	16 82       	std	Z+6, r1	; 0x06
 a4c:	83 81       	ldd	r24, Z+3	; 0x03
 a4e:	81 ff       	sbrs	r24, 1
 a50:	da c1       	rjmp	.+948    	; 0xe06 <vfprintf+0x3d2>
 a52:	ce 01       	movw	r24, r28
 a54:	01 96       	adiw	r24, 0x01	; 1
 a56:	5c 01       	movw	r10, r24
 a58:	f7 01       	movw	r30, r14
 a5a:	93 81       	ldd	r25, Z+3	; 0x03
 a5c:	f3 01       	movw	r30, r6
 a5e:	93 fd       	sbrc	r25, 3
 a60:	85 91       	lpm	r24, Z+
 a62:	93 ff       	sbrs	r25, 3
 a64:	81 91       	ld	r24, Z+
 a66:	3f 01       	movw	r6, r30
 a68:	88 23       	and	r24, r24
 a6a:	09 f4       	brne	.+2      	; 0xa6e <vfprintf+0x3a>
 a6c:	2f c1       	rjmp	.+606    	; 0xccc <vfprintf+0x298>
 a6e:	85 32       	cpi	r24, 0x25	; 37
 a70:	39 f4       	brne	.+14     	; 0xa80 <vfprintf+0x4c>
 a72:	93 fd       	sbrc	r25, 3
 a74:	85 91       	lpm	r24, Z+
 a76:	93 ff       	sbrs	r25, 3
 a78:	81 91       	ld	r24, Z+
 a7a:	3f 01       	movw	r6, r30
 a7c:	85 32       	cpi	r24, 0x25	; 37
 a7e:	29 f4       	brne	.+10     	; 0xa8a <vfprintf+0x56>
 a80:	b7 01       	movw	r22, r14
 a82:	90 e0       	ldi	r25, 0x00	; 0
 a84:	0e 94 1c 07 	call	0xe38	; 0xe38 <fputc>
 a88:	e7 cf       	rjmp	.-50     	; 0xa58 <vfprintf+0x24>
 a8a:	91 2c       	mov	r9, r1
 a8c:	21 2c       	mov	r2, r1
 a8e:	31 2c       	mov	r3, r1
 a90:	ff e1       	ldi	r31, 0x1F	; 31
 a92:	f3 15       	cp	r31, r3
 a94:	38 f0       	brcs	.+14     	; 0xaa4 <vfprintf+0x70>
 a96:	8b 32       	cpi	r24, 0x2B	; 43
 a98:	d9 f0       	breq	.+54     	; 0xad0 <vfprintf+0x9c>
 a9a:	90 f4       	brcc	.+36     	; 0xac0 <vfprintf+0x8c>
 a9c:	80 32       	cpi	r24, 0x20	; 32
 a9e:	d9 f0       	breq	.+54     	; 0xad6 <vfprintf+0xa2>
 aa0:	83 32       	cpi	r24, 0x23	; 35
 aa2:	49 f1       	breq	.+82     	; 0xaf6 <vfprintf+0xc2>
 aa4:	37 fc       	sbrc	r3, 7
 aa6:	41 c0       	rjmp	.+130    	; 0xb2a <vfprintf+0xf6>
 aa8:	20 ed       	ldi	r18, 0xD0	; 208
 aaa:	28 0f       	add	r18, r24
 aac:	2a 30       	cpi	r18, 0x0A	; 10
 aae:	70 f5       	brcc	.+92     	; 0xb0c <vfprintf+0xd8>
 ab0:	36 fe       	sbrs	r3, 6
 ab2:	24 c0       	rjmp	.+72     	; 0xafc <vfprintf+0xc8>
 ab4:	8a e0       	ldi	r24, 0x0A	; 10
 ab6:	98 9e       	mul	r9, r24
 ab8:	20 0d       	add	r18, r0
 aba:	11 24       	eor	r1, r1
 abc:	92 2e       	mov	r9, r18
 abe:	0e c0       	rjmp	.+28     	; 0xadc <vfprintf+0xa8>
 ac0:	8d 32       	cpi	r24, 0x2D	; 45
 ac2:	a9 f0       	breq	.+42     	; 0xaee <vfprintf+0xba>
 ac4:	80 33       	cpi	r24, 0x30	; 48
 ac6:	71 f7       	brne	.-36     	; 0xaa4 <vfprintf+0x70>
 ac8:	23 2d       	mov	r18, r3
 aca:	21 60       	ori	r18, 0x01	; 1
 acc:	32 2e       	mov	r3, r18
 ace:	06 c0       	rjmp	.+12     	; 0xadc <vfprintf+0xa8>
 ad0:	83 2d       	mov	r24, r3
 ad2:	82 60       	ori	r24, 0x02	; 2
 ad4:	38 2e       	mov	r3, r24
 ad6:	e3 2d       	mov	r30, r3
 ad8:	e4 60       	ori	r30, 0x04	; 4
 ada:	3e 2e       	mov	r3, r30
 adc:	f3 01       	movw	r30, r6
 ade:	93 fd       	sbrc	r25, 3
 ae0:	85 91       	lpm	r24, Z+
 ae2:	93 ff       	sbrs	r25, 3
 ae4:	81 91       	ld	r24, Z+
 ae6:	3f 01       	movw	r6, r30
 ae8:	81 11       	cpse	r24, r1
 aea:	d2 cf       	rjmp	.-92     	; 0xa90 <vfprintf+0x5c>
 aec:	1e c0       	rjmp	.+60     	; 0xb2a <vfprintf+0xf6>
 aee:	f3 2d       	mov	r31, r3
 af0:	f8 60       	ori	r31, 0x08	; 8
 af2:	3f 2e       	mov	r3, r31
 af4:	f3 cf       	rjmp	.-26     	; 0xadc <vfprintf+0xa8>
 af6:	23 2d       	mov	r18, r3
 af8:	20 61       	ori	r18, 0x10	; 16
 afa:	e8 cf       	rjmp	.-48     	; 0xacc <vfprintf+0x98>
 afc:	ea e0       	ldi	r30, 0x0A	; 10
 afe:	2e 9e       	mul	r2, r30
 b00:	20 0d       	add	r18, r0
 b02:	11 24       	eor	r1, r1
 b04:	22 2e       	mov	r2, r18
 b06:	f3 2d       	mov	r31, r3
 b08:	f0 62       	ori	r31, 0x20	; 32
 b0a:	f3 cf       	rjmp	.-26     	; 0xaf2 <vfprintf+0xbe>
 b0c:	8e 32       	cpi	r24, 0x2E	; 46
 b0e:	29 f4       	brne	.+10     	; 0xb1a <vfprintf+0xe6>
 b10:	36 fc       	sbrc	r3, 6
 b12:	dc c0       	rjmp	.+440    	; 0xccc <vfprintf+0x298>
 b14:	23 2d       	mov	r18, r3
 b16:	20 64       	ori	r18, 0x40	; 64
 b18:	d9 cf       	rjmp	.-78     	; 0xacc <vfprintf+0x98>
 b1a:	8c 36       	cpi	r24, 0x6C	; 108
 b1c:	21 f4       	brne	.+8      	; 0xb26 <vfprintf+0xf2>
 b1e:	83 2d       	mov	r24, r3
 b20:	80 68       	ori	r24, 0x80	; 128
 b22:	38 2e       	mov	r3, r24
 b24:	db cf       	rjmp	.-74     	; 0xadc <vfprintf+0xa8>
 b26:	88 36       	cpi	r24, 0x68	; 104
 b28:	c9 f2       	breq	.-78     	; 0xadc <vfprintf+0xa8>
 b2a:	98 2f       	mov	r25, r24
 b2c:	9f 7d       	andi	r25, 0xDF	; 223
 b2e:	95 54       	subi	r25, 0x45	; 69
 b30:	93 30       	cpi	r25, 0x03	; 3
 b32:	d8 f0       	brcs	.+54     	; 0xb6a <vfprintf+0x136>
 b34:	83 36       	cpi	r24, 0x63	; 99
 b36:	c9 f1       	breq	.+114    	; 0xbaa <vfprintf+0x176>
 b38:	83 37       	cpi	r24, 0x73	; 115
 b3a:	e9 f1       	breq	.+122    	; 0xbb6 <vfprintf+0x182>
 b3c:	83 35       	cpi	r24, 0x53	; 83
 b3e:	09 f0       	breq	.+2      	; 0xb42 <vfprintf+0x10e>
 b40:	68 c0       	rjmp	.+208    	; 0xc12 <vfprintf+0x1de>
 b42:	28 01       	movw	r4, r16
 b44:	22 e0       	ldi	r18, 0x02	; 2
 b46:	42 0e       	add	r4, r18
 b48:	51 1c       	adc	r5, r1
 b4a:	f8 01       	movw	r30, r16
 b4c:	c0 80       	ld	r12, Z
 b4e:	d1 80       	ldd	r13, Z+1	; 0x01
 b50:	36 fe       	sbrs	r3, 6
 b52:	45 c0       	rjmp	.+138    	; 0xbde <vfprintf+0x1aa>
 b54:	69 2d       	mov	r22, r9
 b56:	70 e0       	ldi	r23, 0x00	; 0
 b58:	c6 01       	movw	r24, r12
 b5a:	0e 94 06 07 	call	0xe0c	; 0xe0c <strnlen_P>
 b5e:	4c 01       	movw	r8, r24
 b60:	f3 2d       	mov	r31, r3
 b62:	f0 68       	ori	r31, 0x80	; 128
 b64:	3f 2e       	mov	r3, r31
 b66:	82 01       	movw	r16, r4
 b68:	0b c0       	rjmp	.+22     	; 0xb80 <vfprintf+0x14c>
 b6a:	0c 5f       	subi	r16, 0xFC	; 252
 b6c:	1f 4f       	sbci	r17, 0xFF	; 255
 b6e:	9f e3       	ldi	r25, 0x3F	; 63
 b70:	99 83       	std	Y+1, r25	; 0x01
 b72:	88 24       	eor	r8, r8
 b74:	83 94       	inc	r8
 b76:	91 2c       	mov	r9, r1
 b78:	65 01       	movw	r12, r10
 b7a:	f3 2d       	mov	r31, r3
 b7c:	ff 77       	andi	r31, 0x7F	; 127
 b7e:	3f 2e       	mov	r3, r31
 b80:	33 fc       	sbrc	r3, 3
 b82:	05 c0       	rjmp	.+10     	; 0xb8e <vfprintf+0x15a>
 b84:	82 2d       	mov	r24, r2
 b86:	90 e0       	ldi	r25, 0x00	; 0
 b88:	88 16       	cp	r8, r24
 b8a:	99 06       	cpc	r9, r25
 b8c:	58 f1       	brcs	.+86     	; 0xbe4 <vfprintf+0x1b0>
 b8e:	52 2c       	mov	r5, r2
 b90:	81 14       	cp	r8, r1
 b92:	91 04       	cpc	r9, r1
 b94:	71 f5       	brne	.+92     	; 0xbf2 <vfprintf+0x1be>
 b96:	55 20       	and	r5, r5
 b98:	09 f4       	brne	.+2      	; 0xb9c <vfprintf+0x168>
 b9a:	5e cf       	rjmp	.-324    	; 0xa58 <vfprintf+0x24>
 b9c:	b7 01       	movw	r22, r14
 b9e:	80 e2       	ldi	r24, 0x20	; 32
 ba0:	90 e0       	ldi	r25, 0x00	; 0
 ba2:	0e 94 1c 07 	call	0xe38	; 0xe38 <fputc>
 ba6:	5a 94       	dec	r5
 ba8:	f6 cf       	rjmp	.-20     	; 0xb96 <vfprintf+0x162>
 baa:	f8 01       	movw	r30, r16
 bac:	80 81       	ld	r24, Z
 bae:	89 83       	std	Y+1, r24	; 0x01
 bb0:	0e 5f       	subi	r16, 0xFE	; 254
 bb2:	1f 4f       	sbci	r17, 0xFF	; 255
 bb4:	de cf       	rjmp	.-68     	; 0xb72 <vfprintf+0x13e>
 bb6:	28 01       	movw	r4, r16
 bb8:	f2 e0       	ldi	r31, 0x02	; 2
 bba:	4f 0e       	add	r4, r31
 bbc:	51 1c       	adc	r5, r1
 bbe:	f8 01       	movw	r30, r16
 bc0:	c0 80       	ld	r12, Z
 bc2:	d1 80       	ldd	r13, Z+1	; 0x01
 bc4:	36 fe       	sbrs	r3, 6
 bc6:	08 c0       	rjmp	.+16     	; 0xbd8 <vfprintf+0x1a4>
 bc8:	69 2d       	mov	r22, r9
 bca:	70 e0       	ldi	r23, 0x00	; 0
 bcc:	c6 01       	movw	r24, r12
 bce:	0e 94 11 07 	call	0xe22	; 0xe22 <strnlen>
 bd2:	4c 01       	movw	r8, r24
 bd4:	82 01       	movw	r16, r4
 bd6:	d1 cf       	rjmp	.-94     	; 0xb7a <vfprintf+0x146>
 bd8:	6f ef       	ldi	r22, 0xFF	; 255
 bda:	7f ef       	ldi	r23, 0xFF	; 255
 bdc:	f7 cf       	rjmp	.-18     	; 0xbcc <vfprintf+0x198>
 bde:	6f ef       	ldi	r22, 0xFF	; 255
 be0:	7f ef       	ldi	r23, 0xFF	; 255
 be2:	ba cf       	rjmp	.-140    	; 0xb58 <vfprintf+0x124>
 be4:	b7 01       	movw	r22, r14
 be6:	80 e2       	ldi	r24, 0x20	; 32
 be8:	90 e0       	ldi	r25, 0x00	; 0
 bea:	0e 94 1c 07 	call	0xe38	; 0xe38 <fputc>
 bee:	2a 94       	dec	r2
 bf0:	c9 cf       	rjmp	.-110    	; 0xb84 <vfprintf+0x150>
 bf2:	f6 01       	movw	r30, r12
 bf4:	37 fc       	sbrc	r3, 7
 bf6:	85 91       	lpm	r24, Z+
 bf8:	37 fe       	sbrs	r3, 7
 bfa:	81 91       	ld	r24, Z+
 bfc:	6f 01       	movw	r12, r30
 bfe:	b7 01       	movw	r22, r14
 c00:	90 e0       	ldi	r25, 0x00	; 0
 c02:	0e 94 1c 07 	call	0xe38	; 0xe38 <fputc>
 c06:	51 10       	cpse	r5, r1
 c08:	5a 94       	dec	r5
 c0a:	21 e0       	ldi	r18, 0x01	; 1
 c0c:	82 1a       	sub	r8, r18
 c0e:	91 08       	sbc	r9, r1
 c10:	bf cf       	rjmp	.-130    	; 0xb90 <vfprintf+0x15c>
 c12:	84 36       	cpi	r24, 0x64	; 100
 c14:	11 f0       	breq	.+4      	; 0xc1a <vfprintf+0x1e6>
 c16:	89 36       	cpi	r24, 0x69	; 105
 c18:	c1 f5       	brne	.+112    	; 0xc8a <vfprintf+0x256>
 c1a:	f8 01       	movw	r30, r16
 c1c:	37 fe       	sbrs	r3, 7
 c1e:	2c c0       	rjmp	.+88     	; 0xc78 <vfprintf+0x244>
 c20:	60 81       	ld	r22, Z
 c22:	71 81       	ldd	r23, Z+1	; 0x01
 c24:	82 81       	ldd	r24, Z+2	; 0x02
 c26:	93 81       	ldd	r25, Z+3	; 0x03
 c28:	0c 5f       	subi	r16, 0xFC	; 252
 c2a:	1f 4f       	sbci	r17, 0xFF	; 255
 c2c:	f3 2d       	mov	r31, r3
 c2e:	ff 76       	andi	r31, 0x6F	; 111
 c30:	3f 2e       	mov	r3, r31
 c32:	97 ff       	sbrs	r25, 7
 c34:	09 c0       	rjmp	.+18     	; 0xc48 <vfprintf+0x214>
 c36:	90 95       	com	r25
 c38:	80 95       	com	r24
 c3a:	70 95       	com	r23
 c3c:	61 95       	neg	r22
 c3e:	7f 4f       	sbci	r23, 0xFF	; 255
 c40:	8f 4f       	sbci	r24, 0xFF	; 255
 c42:	9f 4f       	sbci	r25, 0xFF	; 255
 c44:	f0 68       	ori	r31, 0x80	; 128
 c46:	3f 2e       	mov	r3, r31
 c48:	2a e0       	ldi	r18, 0x0A	; 10
 c4a:	30 e0       	ldi	r19, 0x00	; 0
 c4c:	a5 01       	movw	r20, r10
 c4e:	0e 94 4c 07 	call	0xe98	; 0xe98 <__ultoa_invert>
 c52:	c8 2e       	mov	r12, r24
 c54:	ca 18       	sub	r12, r10
 c56:	36 fe       	sbrs	r3, 6
 c58:	62 c0       	rjmp	.+196    	; 0xd1e <vfprintf+0x2ea>
 c5a:	23 2d       	mov	r18, r3
 c5c:	2e 7f       	andi	r18, 0xFE	; 254
 c5e:	42 2e       	mov	r4, r18
 c60:	c9 14       	cp	r12, r9
 c62:	08 f0       	brcs	.+2      	; 0xc66 <vfprintf+0x232>
 c64:	9b c0       	rjmp	.+310    	; 0xd9c <vfprintf+0x368>
 c66:	34 fe       	sbrs	r3, 4
 c68:	05 c0       	rjmp	.+10     	; 0xc74 <vfprintf+0x240>
 c6a:	32 fc       	sbrc	r3, 2
 c6c:	03 c0       	rjmp	.+6      	; 0xc74 <vfprintf+0x240>
 c6e:	83 2d       	mov	r24, r3
 c70:	8e 7e       	andi	r24, 0xEE	; 238
 c72:	48 2e       	mov	r4, r24
 c74:	89 2c       	mov	r8, r9
 c76:	55 c0       	rjmp	.+170    	; 0xd22 <vfprintf+0x2ee>
 c78:	60 81       	ld	r22, Z
 c7a:	71 81       	ldd	r23, Z+1	; 0x01
 c7c:	07 2e       	mov	r0, r23
 c7e:	00 0c       	add	r0, r0
 c80:	88 0b       	sbc	r24, r24
 c82:	99 0b       	sbc	r25, r25
 c84:	0e 5f       	subi	r16, 0xFE	; 254
 c86:	1f 4f       	sbci	r17, 0xFF	; 255
 c88:	d1 cf       	rjmp	.-94     	; 0xc2c <vfprintf+0x1f8>
 c8a:	85 37       	cpi	r24, 0x75	; 117
 c8c:	b9 f4       	brne	.+46     	; 0xcbc <vfprintf+0x288>
 c8e:	23 2d       	mov	r18, r3
 c90:	2f 7e       	andi	r18, 0xEF	; 239
 c92:	d2 2e       	mov	r13, r18
 c94:	2a e0       	ldi	r18, 0x0A	; 10
 c96:	30 e0       	ldi	r19, 0x00	; 0
 c98:	f8 01       	movw	r30, r16
 c9a:	d7 fe       	sbrs	r13, 7
 c9c:	39 c0       	rjmp	.+114    	; 0xd10 <vfprintf+0x2dc>
 c9e:	60 81       	ld	r22, Z
 ca0:	71 81       	ldd	r23, Z+1	; 0x01
 ca2:	82 81       	ldd	r24, Z+2	; 0x02
 ca4:	93 81       	ldd	r25, Z+3	; 0x03
 ca6:	0c 5f       	subi	r16, 0xFC	; 252
 ca8:	1f 4f       	sbci	r17, 0xFF	; 255
 caa:	a5 01       	movw	r20, r10
 cac:	0e 94 4c 07 	call	0xe98	; 0xe98 <__ultoa_invert>
 cb0:	c8 2e       	mov	r12, r24
 cb2:	ca 18       	sub	r12, r10
 cb4:	fd 2d       	mov	r31, r13
 cb6:	ff 77       	andi	r31, 0x7F	; 127
 cb8:	3f 2e       	mov	r3, r31
 cba:	cd cf       	rjmp	.-102    	; 0xc56 <vfprintf+0x222>
 cbc:	93 2d       	mov	r25, r3
 cbe:	99 7f       	andi	r25, 0xF9	; 249
 cc0:	d9 2e       	mov	r13, r25
 cc2:	8f 36       	cpi	r24, 0x6F	; 111
 cc4:	11 f1       	breq	.+68     	; 0xd0a <vfprintf+0x2d6>
 cc6:	48 f4       	brcc	.+18     	; 0xcda <vfprintf+0x2a6>
 cc8:	88 35       	cpi	r24, 0x58	; 88
 cca:	b9 f0       	breq	.+46     	; 0xcfa <vfprintf+0x2c6>
 ccc:	f7 01       	movw	r30, r14
 cce:	86 81       	ldd	r24, Z+6	; 0x06
 cd0:	97 81       	ldd	r25, Z+7	; 0x07
 cd2:	2b 96       	adiw	r28, 0x0b	; 11
 cd4:	e2 e1       	ldi	r30, 0x12	; 18
 cd6:	0c 94 c6 07 	jmp	0xf8c	; 0xf8c <__epilogue_restores__>
 cda:	80 37       	cpi	r24, 0x70	; 112
 cdc:	51 f0       	breq	.+20     	; 0xcf2 <vfprintf+0x2be>
 cde:	88 37       	cpi	r24, 0x78	; 120
 ce0:	a9 f7       	brne	.-22     	; 0xccc <vfprintf+0x298>
 ce2:	d4 fe       	sbrs	r13, 4
 ce4:	03 c0       	rjmp	.+6      	; 0xcec <vfprintf+0x2b8>
 ce6:	fd 2d       	mov	r31, r13
 ce8:	f4 60       	ori	r31, 0x04	; 4
 cea:	df 2e       	mov	r13, r31
 cec:	20 e1       	ldi	r18, 0x10	; 16
 cee:	30 e0       	ldi	r19, 0x00	; 0
 cf0:	d3 cf       	rjmp	.-90     	; 0xc98 <vfprintf+0x264>
 cf2:	e9 2f       	mov	r30, r25
 cf4:	e0 61       	ori	r30, 0x10	; 16
 cf6:	de 2e       	mov	r13, r30
 cf8:	f4 cf       	rjmp	.-24     	; 0xce2 <vfprintf+0x2ae>
 cfa:	34 fe       	sbrs	r3, 4
 cfc:	03 c0       	rjmp	.+6      	; 0xd04 <vfprintf+0x2d0>
 cfe:	29 2f       	mov	r18, r25
 d00:	26 60       	ori	r18, 0x06	; 6
 d02:	d2 2e       	mov	r13, r18
 d04:	20 e1       	ldi	r18, 0x10	; 16
 d06:	32 e0       	ldi	r19, 0x02	; 2
 d08:	c7 cf       	rjmp	.-114    	; 0xc98 <vfprintf+0x264>
 d0a:	28 e0       	ldi	r18, 0x08	; 8
 d0c:	30 e0       	ldi	r19, 0x00	; 0
 d0e:	c4 cf       	rjmp	.-120    	; 0xc98 <vfprintf+0x264>
 d10:	60 81       	ld	r22, Z
 d12:	71 81       	ldd	r23, Z+1	; 0x01
 d14:	80 e0       	ldi	r24, 0x00	; 0
 d16:	90 e0       	ldi	r25, 0x00	; 0
 d18:	0e 5f       	subi	r16, 0xFE	; 254
 d1a:	1f 4f       	sbci	r17, 0xFF	; 255
 d1c:	c6 cf       	rjmp	.-116    	; 0xcaa <vfprintf+0x276>
 d1e:	8c 2c       	mov	r8, r12
 d20:	43 2c       	mov	r4, r3
 d22:	44 fe       	sbrs	r4, 4
 d24:	44 c0       	rjmp	.+136    	; 0xdae <vfprintf+0x37a>
 d26:	fe 01       	movw	r30, r28
 d28:	ec 0d       	add	r30, r12
 d2a:	f1 1d       	adc	r31, r1
 d2c:	80 81       	ld	r24, Z
 d2e:	80 33       	cpi	r24, 0x30	; 48
 d30:	b9 f5       	brne	.+110    	; 0xda0 <vfprintf+0x36c>
 d32:	94 2d       	mov	r25, r4
 d34:	99 7e       	andi	r25, 0xE9	; 233
 d36:	49 2e       	mov	r4, r25
 d38:	e4 2d       	mov	r30, r4
 d3a:	e8 70       	andi	r30, 0x08	; 8
 d3c:	5e 2e       	mov	r5, r30
 d3e:	43 fc       	sbrc	r4, 3
 d40:	44 c0       	rjmp	.+136    	; 0xdca <vfprintf+0x396>
 d42:	40 fe       	sbrs	r4, 0
 d44:	3e c0       	rjmp	.+124    	; 0xdc2 <vfprintf+0x38e>
 d46:	82 14       	cp	r8, r2
 d48:	08 f0       	brcs	.+2      	; 0xd4c <vfprintf+0x318>
 d4a:	44 c0       	rjmp	.+136    	; 0xdd4 <vfprintf+0x3a0>
 d4c:	2c 0c       	add	r2, r12
 d4e:	92 2c       	mov	r9, r2
 d50:	98 18       	sub	r9, r8
 d52:	44 fe       	sbrs	r4, 4
 d54:	44 c0       	rjmp	.+136    	; 0xdde <vfprintf+0x3aa>
 d56:	b7 01       	movw	r22, r14
 d58:	80 e3       	ldi	r24, 0x30	; 48
 d5a:	90 e0       	ldi	r25, 0x00	; 0
 d5c:	0e 94 1c 07 	call	0xe38	; 0xe38 <fputc>
 d60:	42 fe       	sbrs	r4, 2
 d62:	07 c0       	rjmp	.+14     	; 0xd72 <vfprintf+0x33e>
 d64:	41 fc       	sbrc	r4, 1
 d66:	38 c0       	rjmp	.+112    	; 0xdd8 <vfprintf+0x3a4>
 d68:	88 e7       	ldi	r24, 0x78	; 120
 d6a:	90 e0       	ldi	r25, 0x00	; 0
 d6c:	b7 01       	movw	r22, r14
 d6e:	0e 94 1c 07 	call	0xe38	; 0xe38 <fputc>
 d72:	c9 14       	cp	r12, r9
 d74:	08 f4       	brcc	.+2      	; 0xd78 <vfprintf+0x344>
 d76:	40 c0       	rjmp	.+128    	; 0xdf8 <vfprintf+0x3c4>
 d78:	ca 94       	dec	r12
 d7a:	d1 2c       	mov	r13, r1
 d7c:	ff ef       	ldi	r31, 0xFF	; 255
 d7e:	cf 1a       	sub	r12, r31
 d80:	df 0a       	sbc	r13, r31
 d82:	ca 0c       	add	r12, r10
 d84:	db 1c       	adc	r13, r11
 d86:	f6 01       	movw	r30, r12
 d88:	82 91       	ld	r24, -Z
 d8a:	6f 01       	movw	r12, r30
 d8c:	b7 01       	movw	r22, r14
 d8e:	90 e0       	ldi	r25, 0x00	; 0
 d90:	0e 94 1c 07 	call	0xe38	; 0xe38 <fputc>
 d94:	ac 14       	cp	r10, r12
 d96:	bd 04       	cpc	r11, r13
 d98:	b1 f7       	brne	.-20     	; 0xd86 <vfprintf+0x352>
 d9a:	fd ce       	rjmp	.-518    	; 0xb96 <vfprintf+0x162>
 d9c:	8c 2c       	mov	r8, r12
 d9e:	c1 cf       	rjmp	.-126    	; 0xd22 <vfprintf+0x2ee>
 da0:	42 fc       	sbrc	r4, 2
 da2:	02 c0       	rjmp	.+4      	; 0xda8 <vfprintf+0x374>
 da4:	83 94       	inc	r8
 da6:	c8 cf       	rjmp	.-112    	; 0xd38 <vfprintf+0x304>
 da8:	83 94       	inc	r8
 daa:	83 94       	inc	r8
 dac:	c5 cf       	rjmp	.-118    	; 0xd38 <vfprintf+0x304>
 dae:	84 2d       	mov	r24, r4
 db0:	86 78       	andi	r24, 0x86	; 134
 db2:	11 f2       	breq	.-124    	; 0xd38 <vfprintf+0x304>
 db4:	f7 cf       	rjmp	.-18     	; 0xda4 <vfprintf+0x370>
 db6:	b7 01       	movw	r22, r14
 db8:	80 e2       	ldi	r24, 0x20	; 32
 dba:	90 e0       	ldi	r25, 0x00	; 0
 dbc:	0e 94 1c 07 	call	0xe38	; 0xe38 <fputc>
 dc0:	83 94       	inc	r8
 dc2:	82 14       	cp	r8, r2
 dc4:	c0 f3       	brcs	.-16     	; 0xdb6 <vfprintf+0x382>
 dc6:	51 2c       	mov	r5, r1
 dc8:	c4 cf       	rjmp	.-120    	; 0xd52 <vfprintf+0x31e>
 dca:	82 14       	cp	r8, r2
 dcc:	e0 f7       	brcc	.-8      	; 0xdc6 <vfprintf+0x392>
 dce:	52 2c       	mov	r5, r2
 dd0:	58 18       	sub	r5, r8
 dd2:	bf cf       	rjmp	.-130    	; 0xd52 <vfprintf+0x31e>
 dd4:	9c 2c       	mov	r9, r12
 dd6:	bd cf       	rjmp	.-134    	; 0xd52 <vfprintf+0x31e>
 dd8:	88 e5       	ldi	r24, 0x58	; 88
 dda:	90 e0       	ldi	r25, 0x00	; 0
 ddc:	c7 cf       	rjmp	.-114    	; 0xd6c <vfprintf+0x338>
 dde:	84 2d       	mov	r24, r4
 de0:	86 78       	andi	r24, 0x86	; 134
 de2:	39 f2       	breq	.-114    	; 0xd72 <vfprintf+0x33e>
 de4:	41 fe       	sbrs	r4, 1
 de6:	06 c0       	rjmp	.+12     	; 0xdf4 <vfprintf+0x3c0>
 de8:	8b e2       	ldi	r24, 0x2B	; 43
 dea:	47 fc       	sbrc	r4, 7
 dec:	8d e2       	ldi	r24, 0x2D	; 45
 dee:	b7 01       	movw	r22, r14
 df0:	90 e0       	ldi	r25, 0x00	; 0
 df2:	bd cf       	rjmp	.-134    	; 0xd6e <vfprintf+0x33a>
 df4:	80 e2       	ldi	r24, 0x20	; 32
 df6:	f9 cf       	rjmp	.-14     	; 0xdea <vfprintf+0x3b6>
 df8:	b7 01       	movw	r22, r14
 dfa:	80 e3       	ldi	r24, 0x30	; 48
 dfc:	90 e0       	ldi	r25, 0x00	; 0
 dfe:	0e 94 1c 07 	call	0xe38	; 0xe38 <fputc>
 e02:	9a 94       	dec	r9
 e04:	b6 cf       	rjmp	.-148    	; 0xd72 <vfprintf+0x33e>
 e06:	8f ef       	ldi	r24, 0xFF	; 255
 e08:	9f ef       	ldi	r25, 0xFF	; 255
 e0a:	63 cf       	rjmp	.-314    	; 0xcd2 <vfprintf+0x29e>

00000e0c <strnlen_P>:
 e0c:	fc 01       	movw	r30, r24
 e0e:	05 90       	lpm	r0, Z+
 e10:	61 50       	subi	r22, 0x01	; 1
 e12:	70 40       	sbci	r23, 0x00	; 0
 e14:	01 10       	cpse	r0, r1
 e16:	d8 f7       	brcc	.-10     	; 0xe0e <strnlen_P+0x2>
 e18:	80 95       	com	r24
 e1a:	90 95       	com	r25
 e1c:	8e 0f       	add	r24, r30
 e1e:	9f 1f       	adc	r25, r31
 e20:	08 95       	ret

00000e22 <strnlen>:
 e22:	fc 01       	movw	r30, r24
 e24:	61 50       	subi	r22, 0x01	; 1
 e26:	70 40       	sbci	r23, 0x00	; 0
 e28:	01 90       	ld	r0, Z+
 e2a:	01 10       	cpse	r0, r1
 e2c:	d8 f7       	brcc	.-10     	; 0xe24 <strnlen+0x2>
 e2e:	80 95       	com	r24
 e30:	90 95       	com	r25
 e32:	8e 0f       	add	r24, r30
 e34:	9f 1f       	adc	r25, r31
 e36:	08 95       	ret

00000e38 <fputc>:
 e38:	0f 93       	push	r16
 e3a:	1f 93       	push	r17
 e3c:	cf 93       	push	r28
 e3e:	df 93       	push	r29
 e40:	18 2f       	mov	r17, r24
 e42:	09 2f       	mov	r16, r25
 e44:	eb 01       	movw	r28, r22
 e46:	8b 81       	ldd	r24, Y+3	; 0x03
 e48:	81 fd       	sbrc	r24, 1
 e4a:	09 c0       	rjmp	.+18     	; 0xe5e <fputc+0x26>
 e4c:	1f ef       	ldi	r17, 0xFF	; 255
 e4e:	0f ef       	ldi	r16, 0xFF	; 255
 e50:	81 2f       	mov	r24, r17
 e52:	90 2f       	mov	r25, r16
 e54:	df 91       	pop	r29
 e56:	cf 91       	pop	r28
 e58:	1f 91       	pop	r17
 e5a:	0f 91       	pop	r16
 e5c:	08 95       	ret
 e5e:	82 ff       	sbrs	r24, 2
 e60:	14 c0       	rjmp	.+40     	; 0xe8a <fputc+0x52>
 e62:	2e 81       	ldd	r18, Y+6	; 0x06
 e64:	3f 81       	ldd	r19, Y+7	; 0x07
 e66:	8c 81       	ldd	r24, Y+4	; 0x04
 e68:	9d 81       	ldd	r25, Y+5	; 0x05
 e6a:	28 17       	cp	r18, r24
 e6c:	39 07       	cpc	r19, r25
 e6e:	3c f4       	brge	.+14     	; 0xe7e <fputc+0x46>
 e70:	e8 81       	ld	r30, Y
 e72:	f9 81       	ldd	r31, Y+1	; 0x01
 e74:	cf 01       	movw	r24, r30
 e76:	01 96       	adiw	r24, 0x01	; 1
 e78:	99 83       	std	Y+1, r25	; 0x01
 e7a:	88 83       	st	Y, r24
 e7c:	10 83       	st	Z, r17
 e7e:	8e 81       	ldd	r24, Y+6	; 0x06
 e80:	9f 81       	ldd	r25, Y+7	; 0x07
 e82:	01 96       	adiw	r24, 0x01	; 1
 e84:	9f 83       	std	Y+7, r25	; 0x07
 e86:	8e 83       	std	Y+6, r24	; 0x06
 e88:	e3 cf       	rjmp	.-58     	; 0xe50 <fputc+0x18>
 e8a:	e8 85       	ldd	r30, Y+8	; 0x08
 e8c:	f9 85       	ldd	r31, Y+9	; 0x09
 e8e:	81 2f       	mov	r24, r17
 e90:	09 95       	icall
 e92:	89 2b       	or	r24, r25
 e94:	a1 f3       	breq	.-24     	; 0xe7e <fputc+0x46>
 e96:	da cf       	rjmp	.-76     	; 0xe4c <fputc+0x14>

00000e98 <__ultoa_invert>:
 e98:	fa 01       	movw	r30, r20
 e9a:	aa 27       	eor	r26, r26
 e9c:	28 30       	cpi	r18, 0x08	; 8
 e9e:	51 f1       	breq	.+84     	; 0xef4 <__ultoa_invert+0x5c>
 ea0:	20 31       	cpi	r18, 0x10	; 16
 ea2:	81 f1       	breq	.+96     	; 0xf04 <__ultoa_invert+0x6c>
 ea4:	e8 94       	clt
 ea6:	6f 93       	push	r22
 ea8:	6e 7f       	andi	r22, 0xFE	; 254
 eaa:	6e 5f       	subi	r22, 0xFE	; 254
 eac:	7f 4f       	sbci	r23, 0xFF	; 255
 eae:	8f 4f       	sbci	r24, 0xFF	; 255
 eb0:	9f 4f       	sbci	r25, 0xFF	; 255
 eb2:	af 4f       	sbci	r26, 0xFF	; 255
 eb4:	b1 e0       	ldi	r27, 0x01	; 1
 eb6:	3e d0       	rcall	.+124    	; 0xf34 <__ultoa_invert+0x9c>
 eb8:	b4 e0       	ldi	r27, 0x04	; 4
 eba:	3c d0       	rcall	.+120    	; 0xf34 <__ultoa_invert+0x9c>
 ebc:	67 0f       	add	r22, r23
 ebe:	78 1f       	adc	r23, r24
 ec0:	89 1f       	adc	r24, r25
 ec2:	9a 1f       	adc	r25, r26
 ec4:	a1 1d       	adc	r26, r1
 ec6:	68 0f       	add	r22, r24
 ec8:	79 1f       	adc	r23, r25
 eca:	8a 1f       	adc	r24, r26
 ecc:	91 1d       	adc	r25, r1
 ece:	a1 1d       	adc	r26, r1
 ed0:	6a 0f       	add	r22, r26
 ed2:	71 1d       	adc	r23, r1
 ed4:	81 1d       	adc	r24, r1
 ed6:	91 1d       	adc	r25, r1
 ed8:	a1 1d       	adc	r26, r1
 eda:	20 d0       	rcall	.+64     	; 0xf1c <__ultoa_invert+0x84>
 edc:	09 f4       	brne	.+2      	; 0xee0 <__ultoa_invert+0x48>
 ede:	68 94       	set
 ee0:	3f 91       	pop	r19
 ee2:	2a e0       	ldi	r18, 0x0A	; 10
 ee4:	26 9f       	mul	r18, r22
 ee6:	11 24       	eor	r1, r1
 ee8:	30 19       	sub	r19, r0
 eea:	30 5d       	subi	r19, 0xD0	; 208
 eec:	31 93       	st	Z+, r19
 eee:	de f6       	brtc	.-74     	; 0xea6 <__ultoa_invert+0xe>
 ef0:	cf 01       	movw	r24, r30
 ef2:	08 95       	ret
 ef4:	46 2f       	mov	r20, r22
 ef6:	47 70       	andi	r20, 0x07	; 7
 ef8:	40 5d       	subi	r20, 0xD0	; 208
 efa:	41 93       	st	Z+, r20
 efc:	b3 e0       	ldi	r27, 0x03	; 3
 efe:	0f d0       	rcall	.+30     	; 0xf1e <__ultoa_invert+0x86>
 f00:	c9 f7       	brne	.-14     	; 0xef4 <__ultoa_invert+0x5c>
 f02:	f6 cf       	rjmp	.-20     	; 0xef0 <__ultoa_invert+0x58>
 f04:	46 2f       	mov	r20, r22
 f06:	4f 70       	andi	r20, 0x0F	; 15
 f08:	40 5d       	subi	r20, 0xD0	; 208
 f0a:	4a 33       	cpi	r20, 0x3A	; 58
 f0c:	18 f0       	brcs	.+6      	; 0xf14 <__ultoa_invert+0x7c>
 f0e:	49 5d       	subi	r20, 0xD9	; 217
 f10:	31 fd       	sbrc	r19, 1
 f12:	40 52       	subi	r20, 0x20	; 32
 f14:	41 93       	st	Z+, r20
 f16:	02 d0       	rcall	.+4      	; 0xf1c <__ultoa_invert+0x84>
 f18:	a9 f7       	brne	.-22     	; 0xf04 <__ultoa_invert+0x6c>
 f1a:	ea cf       	rjmp	.-44     	; 0xef0 <__ultoa_invert+0x58>
 f1c:	b4 e0       	ldi	r27, 0x04	; 4
 f1e:	a6 95       	lsr	r26
 f20:	97 95       	ror	r25
 f22:	87 95       	ror	r24
 f24:	77 95       	ror	r23
 f26:	67 95       	ror	r22
 f28:	ba 95       	dec	r27
 f2a:	c9 f7       	brne	.-14     	; 0xf1e <__ultoa_invert+0x86>
 f2c:	00 97       	sbiw	r24, 0x00	; 0
 f2e:	61 05       	cpc	r22, r1
 f30:	71 05       	cpc	r23, r1
 f32:	08 95       	ret
 f34:	9b 01       	movw	r18, r22
 f36:	ac 01       	movw	r20, r24
 f38:	0a 2e       	mov	r0, r26
 f3a:	06 94       	lsr	r0
 f3c:	57 95       	ror	r21
 f3e:	47 95       	ror	r20
 f40:	37 95       	ror	r19
 f42:	27 95       	ror	r18
 f44:	ba 95       	dec	r27
 f46:	c9 f7       	brne	.-14     	; 0xf3a <__ultoa_invert+0xa2>
 f48:	62 0f       	add	r22, r18
 f4a:	73 1f       	adc	r23, r19
 f4c:	84 1f       	adc	r24, r20
 f4e:	95 1f       	adc	r25, r21
 f50:	a0 1d       	adc	r26, r0
 f52:	08 95       	ret

00000f54 <__prologue_saves__>:
 f54:	2f 92       	push	r2
 f56:	3f 92       	push	r3
 f58:	4f 92       	push	r4
 f5a:	5f 92       	push	r5
 f5c:	6f 92       	push	r6
 f5e:	7f 92       	push	r7
 f60:	8f 92       	push	r8
 f62:	9f 92       	push	r9
 f64:	af 92       	push	r10
 f66:	bf 92       	push	r11
 f68:	cf 92       	push	r12
 f6a:	df 92       	push	r13
 f6c:	ef 92       	push	r14
 f6e:	ff 92       	push	r15
 f70:	0f 93       	push	r16
 f72:	1f 93       	push	r17
 f74:	cf 93       	push	r28
 f76:	df 93       	push	r29
 f78:	cd b7       	in	r28, 0x3d	; 61
 f7a:	de b7       	in	r29, 0x3e	; 62
 f7c:	ca 1b       	sub	r28, r26
 f7e:	db 0b       	sbc	r29, r27
 f80:	0f b6       	in	r0, 0x3f	; 63
 f82:	f8 94       	cli
 f84:	de bf       	out	0x3e, r29	; 62
 f86:	0f be       	out	0x3f, r0	; 63
 f88:	cd bf       	out	0x3d, r28	; 61
 f8a:	09 94       	ijmp

00000f8c <__epilogue_restores__>:
 f8c:	2a 88       	ldd	r2, Y+18	; 0x12
 f8e:	39 88       	ldd	r3, Y+17	; 0x11
 f90:	48 88       	ldd	r4, Y+16	; 0x10
 f92:	5f 84       	ldd	r5, Y+15	; 0x0f
 f94:	6e 84       	ldd	r6, Y+14	; 0x0e
 f96:	7d 84       	ldd	r7, Y+13	; 0x0d
 f98:	8c 84       	ldd	r8, Y+12	; 0x0c
 f9a:	9b 84       	ldd	r9, Y+11	; 0x0b
 f9c:	aa 84       	ldd	r10, Y+10	; 0x0a
 f9e:	b9 84       	ldd	r11, Y+9	; 0x09
 fa0:	c8 84       	ldd	r12, Y+8	; 0x08
 fa2:	df 80       	ldd	r13, Y+7	; 0x07
 fa4:	ee 80       	ldd	r14, Y+6	; 0x06
 fa6:	fd 80       	ldd	r15, Y+5	; 0x05
 fa8:	0c 81       	ldd	r16, Y+4	; 0x04
 faa:	1b 81       	ldd	r17, Y+3	; 0x03
 fac:	aa 81       	ldd	r26, Y+2	; 0x02
 fae:	b9 81       	ldd	r27, Y+1	; 0x01
 fb0:	ce 0f       	add	r28, r30
 fb2:	d1 1d       	adc	r29, r1
 fb4:	0f b6       	in	r0, 0x3f	; 63
 fb6:	f8 94       	cli
 fb8:	de bf       	out	0x3e, r29	; 62
 fba:	0f be       	out	0x3f, r0	; 63
 fbc:	cd bf       	out	0x3d, r28	; 61
 fbe:	ed 01       	movw	r28, r26
 fc0:	08 95       	ret

00000fc2 <_exit>:
 fc2:	f8 94       	cli

00000fc4 <__stop_program>:
 fc4:	ff cf       	rjmp	.-2      	; 0xfc4 <__stop_program>
