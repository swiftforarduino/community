
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
  40:	0c 94 c0 01 	jmp	0x380	; 0x380 <__vector_16>
  44:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
  48:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
  4c:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
  50:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
  54:	0c 94 09 03 	jmp	0x612	; 0x612 <__vector_21>
  58:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
  5c:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
  60:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
  64:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>

00000068 <__ctors_start>:
  68:	8b 03       	fmulsu	r16, r19

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
  7c:	ea eb       	ldi	r30, 0xBA	; 186
  7e:	fd e0       	ldi	r31, 0x0D	; 13
  80:	03 c0       	rjmp	.+6      	; 0x88 <__do_copy_data+0x12>
  82:	c8 95       	lpm
  84:	31 96       	adiw	r30, 0x01	; 1
  86:	0d 92       	st	X+, r0
  88:	a8 31       	cpi	r26, 0x18	; 24
  8a:	b1 07       	cpc	r27, r17
  8c:	d1 f7       	brne	.-12     	; 0x82 <__do_copy_data+0xc>

0000008e <__do_clear_bss>:
  8e:	21 e0       	ldi	r18, 0x01	; 1
  90:	a8 e1       	ldi	r26, 0x18	; 24
  92:	b1 e0       	ldi	r27, 0x01	; 1
  94:	01 c0       	rjmp	.+2      	; 0x98 <.do_clear_bss_start>

00000096 <.do_clear_bss_loop>:
  96:	1d 92       	st	X+, r1

00000098 <.do_clear_bss_start>:
  98:	a1 3b       	cpi	r26, 0xB1	; 177
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
  ac:	47 d3       	rcall	.+1678   	; 0x73c <__tablejump2__>
  ae:	c4 33       	cpi	r28, 0x34	; 52
  b0:	d1 07       	cpc	r29, r17
  b2:	c9 f7       	brne	.-14     	; 0xa6 <__do_global_ctors+0x8>
  b4:	0e 94 60 00 	call	0xc0	; 0xc0 <main>
  b8:	0c 94 db 06 	jmp	0xdb6	; 0xdb6 <_exit>

000000bc <__bad_interrupt>:
  bc:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000c0 <main>:
  c0:	ef 92       	push	r14
  c2:	ff 92       	push	r15
  c4:	0f 93       	push	r16
  c6:	1f 93       	push	r17
  c8:	80 e0       	ldi	r24, 0x00	; 0
  ca:	80 93 18 01 	sts	0x0118, r24	; 0x800118 <__data_end>
  ce:	8d e0       	ldi	r24, 0x0D	; 13
  d0:	80 93 19 01 	sts	0x0119, r24	; 0x800119 <_Tv4main6ledPinVs5UInt8>
  d4:	10 91 0c 01 	lds	r17, 0x010C	; 0x80010c <HIGH>
  d8:	00 91 0b 01 	lds	r16, 0x010B	; 0x80010b <LOW>

000000dc <LBB0_1>:
  dc:	80 91 18 01 	lds	r24, 0x0118	; 0x800118 <__data_end>
  e0:	0e 94 c5 00 	call	0x18a	; 0x18a <_TF3AVR14slowAnalogReadFT3pinVs5UInt8_Vs6UInt16>
  e4:	7c 01       	movw	r14, r24
  e6:	80 91 19 01 	lds	r24, 0x0119	; 0x800119 <_Tv4main6ledPinVs5UInt8>
  ea:	61 2f       	mov	r22, r17
  ec:	0e 94 a3 00 	call	0x146	; 0x146 <_TF3AVR12digitalWriteFT3pinVs5UInt85valueSb_T_>
  f0:	c7 01       	movw	r24, r14
  f2:	0e 94 84 00 	call	0x108	; 0x108 <_TF3AVR5delayFT12millisecondsVs6UInt16_T_>
  f6:	80 91 19 01 	lds	r24, 0x0119	; 0x800119 <_Tv4main6ledPinVs5UInt8>
  fa:	60 2f       	mov	r22, r16
  fc:	0e 94 a3 00 	call	0x146	; 0x146 <_TF3AVR12digitalWriteFT3pinVs5UInt85valueSb_T_>
 100:	c7 01       	movw	r24, r14
 102:	0e 94 84 00 	call	0x108	; 0x108 <_TF3AVR5delayFT12millisecondsVs6UInt16_T_>
 106:	ea cf       	rjmp	.-44     	; 0xdc <LBB0_1>

00000108 <_TF3AVR5delayFT12millisecondsVs6UInt16_T_>:
 108:	0e 94 70 01 	call	0x2e0	; 0x2e0 <_delayMs>
 10c:	08 95       	ret

0000010e <_TF3AVR18stringAddCharacterFT4byteVs5UInt8_Sb>:
 10e:	0e 94 84 01 	call	0x308	; 0x308 <_stringAddCharacter>
 112:	08 95       	ret

00000114 <_TF3AVR14stringStartNewFT_T_>:
 114:	0e 94 9c 01 	call	0x338	; 0x338 <_stringStartNew>
 118:	08 95       	ret

0000011a <_TF3AVR18stringCurrentValueFT_GSQGSPVs4Int8__>:
 11a:	0e 94 a1 01 	call	0x342	; 0x342 <_stringCurrentValue>
 11e:	40 e0       	ldi	r20, 0x00	; 0
 120:	50 e0       	ldi	r21, 0x00	; 0
 122:	9c 01       	movw	r18, r24
 124:	ba 01       	movw	r22, r20
 126:	ca 01       	movw	r24, r20
 128:	08 95       	ret

0000012a <_TF3AVR14numberToStringFT6numberVs5Int32_GSQGSPVs4Int8__>:
 12a:	0e 94 a4 01 	call	0x348	; 0x348 <_numberToString>
 12e:	40 e0       	ldi	r20, 0x00	; 0
 130:	50 e0       	ldi	r21, 0x00	; 0
 132:	9c 01       	movw	r18, r24
 134:	ba 01       	movw	r22, r20
 136:	ca 01       	movw	r24, r20
 138:	08 95       	ret

0000013a <_TF3AVR5ticksFT_Vs6UInt16>:
 13a:	0e 94 7f 01 	call	0x2fe	; 0x2fe <_ticks>
 13e:	08 95       	ret

00000140 <_TF3AVR11digitalReadFT3pinVs5UInt8_Sb>:
 140:	0e 94 e1 00 	call	0x1c2	; 0x1c2 <_digitalRead>
 144:	08 95       	ret

00000146 <_TF3AVR12digitalWriteFT3pinVs5UInt85valueSb_T_>:
 146:	83 30       	cpi	r24, 0x03	; 3
 148:	51 f0       	breq	.+20     	; 0x15e <LBB1_6>
 14a:	85 30       	cpi	r24, 0x05	; 5
 14c:	41 f0       	breq	.+16     	; 0x15e <LBB1_6>
 14e:	86 30       	cpi	r24, 0x06	; 6
 150:	31 f0       	breq	.+12     	; 0x15e <LBB1_6>
 152:	89 30       	cpi	r24, 0x09	; 9
 154:	21 f0       	breq	.+8      	; 0x15e <LBB1_6>
 156:	8a 30       	cpi	r24, 0x0A	; 10
 158:	11 f0       	breq	.+4      	; 0x15e <LBB1_6>
 15a:	8b 30       	cpi	r24, 0x0B	; 11
 15c:	59 f4       	brne	.+22     	; 0x174 <LBB1_9>

0000015e <LBB1_6>:
 15e:	61 70       	andi	r22, 0x01	; 1
 160:	60 30       	cpi	r22, 0x00	; 0
 162:	21 f0       	breq	.+8      	; 0x16c <LBB1_8>
 164:	6f ef       	ldi	r22, 0xFF	; 255
 166:	0e 94 d7 01 	call	0x3ae	; 0x3ae <_analogWrite>
 16a:	08 95       	ret

0000016c <LBB1_8>:
 16c:	60 e0       	ldi	r22, 0x00	; 0
 16e:	0e 94 d7 01 	call	0x3ae	; 0x3ae <_analogWrite>
 172:	08 95       	ret

00000174 <LBB1_9>:
 174:	61 70       	andi	r22, 0x01	; 1
 176:	0e 94 18 01 	call	0x230	; 0x230 <_digitalWrite>
 17a:	08 95       	ret

0000017c <_TF3AVR7pinModeFT3pinVs5UInt84modeSb_T_>:
 17c:	61 70       	andi	r22, 0x01	; 1
 17e:	0e 94 48 01 	call	0x290	; 0x290 <_pinMode>
 182:	08 95       	ret

00000184 <_TF3AVR11analogWriteFT3pinVs5UInt85valueS0__T_>:
 184:	0e 94 d7 01 	call	0x3ae	; 0x3ae <_analogWrite>
 188:	08 95       	ret

0000018a <_TF3AVR14slowAnalogReadFT3pinVs5UInt8_Vs6UInt16>:
 18a:	0e 94 da 02 	call	0x5b4	; 0x5b4 <_slowAnalogRead>
 18e:	08 95       	ret

00000190 <_TF3AVR15analogReadAsyncFT3pinVs5UInt88callbackcVs6UInt16T__T_>:
 190:	40 e0       	ldi	r20, 0x00	; 0
 192:	0e 94 41 03 	call	0x682	; 0x682 <_analogReadAsync>
 196:	08 95       	ret

00000198 <pinMask>:
 198:	88 30       	cpi	r24, 0x08	; 8
 19a:	60 f0       	brcs	.+24     	; 0x1b4 <pinMask+0x1c>
 19c:	8e 30       	cpi	r24, 0x0E	; 14
 19e:	40 f4       	brcc	.+16     	; 0x1b0 <pinMask+0x18>
 1a0:	98 ef       	ldi	r25, 0xF8	; 248
 1a2:	98 0f       	add	r25, r24
 1a4:	81 e0       	ldi	r24, 0x01	; 1
 1a6:	01 c0       	rjmp	.+2      	; 0x1aa <pinMask+0x12>
 1a8:	88 0f       	add	r24, r24
 1aa:	9a 95       	dec	r25
 1ac:	ea f7       	brpl	.-6      	; 0x1a8 <pinMask+0x10>
 1ae:	08 95       	ret
 1b0:	80 e0       	ldi	r24, 0x00	; 0
 1b2:	08 95       	ret
 1b4:	91 e0       	ldi	r25, 0x01	; 1
 1b6:	01 c0       	rjmp	.+2      	; 0x1ba <pinMask+0x22>
 1b8:	99 0f       	add	r25, r25
 1ba:	8a 95       	dec	r24
 1bc:	ea f7       	brpl	.-6      	; 0x1b8 <pinMask+0x20>
 1be:	89 2f       	mov	r24, r25
 1c0:	08 95       	ret

000001c2 <_digitalRead>:
 1c2:	cf 93       	push	r28
 1c4:	c8 2f       	mov	r28, r24
 1c6:	0e 94 cc 00 	call	0x198	; 0x198 <pinMask>
 1ca:	88 23       	and	r24, r24
 1cc:	31 f0       	breq	.+12     	; 0x1da <_digitalRead+0x18>
 1ce:	c8 30       	cpi	r28, 0x08	; 8
 1d0:	38 f0       	brcs	.+14     	; 0x1e0 <_digitalRead+0x1e>
 1d2:	93 b1       	in	r25, 0x03	; 3
 1d4:	98 23       	and	r25, r24
 1d6:	81 e0       	ldi	r24, 0x01	; 1
 1d8:	09 f4       	brne	.+2      	; 0x1dc <_digitalRead+0x1a>
 1da:	80 e0       	ldi	r24, 0x00	; 0
 1dc:	cf 91       	pop	r28
 1de:	08 95       	ret
 1e0:	99 b1       	in	r25, 0x09	; 9
 1e2:	98 23       	and	r25, r24
 1e4:	81 e0       	ldi	r24, 0x01	; 1
 1e6:	c9 f3       	breq	.-14     	; 0x1da <_digitalRead+0x18>
 1e8:	cf 91       	pop	r28
 1ea:	08 95       	ret

000001ec <resetPortD>:
 1ec:	0e 94 cc 00 	call	0x198	; 0x198 <pinMask>
 1f0:	88 23       	and	r24, r24
 1f2:	21 f0       	breq	.+8      	; 0x1fc <resetPortD+0x10>
 1f4:	9b b1       	in	r25, 0x0b	; 11
 1f6:	80 95       	com	r24
 1f8:	89 23       	and	r24, r25
 1fa:	8b b9       	out	0x0b, r24	; 11
 1fc:	08 95       	ret

000001fe <resetPortB>:
 1fe:	0e 94 cc 00 	call	0x198	; 0x198 <pinMask>
 202:	88 23       	and	r24, r24
 204:	21 f0       	breq	.+8      	; 0x20e <resetPortB+0x10>
 206:	95 b1       	in	r25, 0x05	; 5
 208:	80 95       	com	r24
 20a:	89 23       	and	r24, r25
 20c:	85 b9       	out	0x05, r24	; 5
 20e:	08 95       	ret

00000210 <setPortD>:
 210:	0e 94 cc 00 	call	0x198	; 0x198 <pinMask>
 214:	88 23       	and	r24, r24
 216:	19 f0       	breq	.+6      	; 0x21e <setPortD+0xe>
 218:	9b b1       	in	r25, 0x0b	; 11
 21a:	89 2b       	or	r24, r25
 21c:	8b b9       	out	0x0b, r24	; 11
 21e:	08 95       	ret

00000220 <setPortB>:
 220:	0e 94 cc 00 	call	0x198	; 0x198 <pinMask>
 224:	88 23       	and	r24, r24
 226:	19 f0       	breq	.+6      	; 0x22e <setPortB+0xe>
 228:	95 b1       	in	r25, 0x05	; 5
 22a:	89 2b       	or	r24, r25
 22c:	85 b9       	out	0x05, r24	; 5
 22e:	08 95       	ret

00000230 <_digitalWrite>:
 230:	66 23       	and	r22, r22
 232:	21 f0       	breq	.+8      	; 0x23c <_digitalWrite+0xc>
 234:	88 30       	cpi	r24, 0x08	; 8
 236:	30 f4       	brcc	.+12     	; 0x244 <_digitalWrite+0x14>
 238:	0c 94 08 01 	jmp	0x210	; 0x210 <setPortD>
 23c:	88 30       	cpi	r24, 0x08	; 8
 23e:	20 f0       	brcs	.+8      	; 0x248 <_digitalWrite+0x18>
 240:	0c 94 ff 00 	jmp	0x1fe	; 0x1fe <resetPortB>
 244:	0c 94 10 01 	jmp	0x220	; 0x220 <setPortB>
 248:	0c 94 f6 00 	jmp	0x1ec	; 0x1ec <resetPortD>

0000024c <enablePortDWrite>:
 24c:	0e 94 cc 00 	call	0x198	; 0x198 <pinMask>
 250:	88 23       	and	r24, r24
 252:	19 f0       	breq	.+6      	; 0x25a <enablePortDWrite+0xe>
 254:	9a b1       	in	r25, 0x0a	; 10
 256:	89 2b       	or	r24, r25
 258:	8a b9       	out	0x0a, r24	; 10
 25a:	08 95       	ret

0000025c <enablePortBWrite>:
 25c:	0e 94 cc 00 	call	0x198	; 0x198 <pinMask>
 260:	88 23       	and	r24, r24
 262:	19 f0       	breq	.+6      	; 0x26a <enablePortBWrite+0xe>
 264:	94 b1       	in	r25, 0x04	; 4
 266:	89 2b       	or	r24, r25
 268:	84 b9       	out	0x04, r24	; 4
 26a:	08 95       	ret

0000026c <disablePortDWrite>:
 26c:	0e 94 cc 00 	call	0x198	; 0x198 <pinMask>
 270:	88 23       	and	r24, r24
 272:	21 f0       	breq	.+8      	; 0x27c <disablePortDWrite+0x10>
 274:	9a b1       	in	r25, 0x0a	; 10
 276:	80 95       	com	r24
 278:	89 23       	and	r24, r25
 27a:	8a b9       	out	0x0a, r24	; 10
 27c:	08 95       	ret

0000027e <disablePortBWrite>:
 27e:	0e 94 cc 00 	call	0x198	; 0x198 <pinMask>
 282:	88 23       	and	r24, r24
 284:	21 f0       	breq	.+8      	; 0x28e <disablePortBWrite+0x10>
 286:	94 b1       	in	r25, 0x04	; 4
 288:	80 95       	com	r24
 28a:	89 23       	and	r24, r25
 28c:	84 b9       	out	0x04, r24	; 4
 28e:	08 95       	ret

00000290 <_pinMode>:
 290:	66 23       	and	r22, r22
 292:	51 f0       	breq	.+20     	; 0x2a8 <_pinMode+0x18>
 294:	88 30       	cpi	r24, 0x08	; 8
 296:	e0 f4       	brcc	.+56     	; 0x2d0 <_pinMode+0x40>
 298:	0e 94 cc 00 	call	0x198	; 0x198 <pinMask>
 29c:	88 23       	and	r24, r24
 29e:	b9 f0       	breq	.+46     	; 0x2ce <_pinMode+0x3e>
 2a0:	9a b1       	in	r25, 0x0a	; 10
 2a2:	89 2b       	or	r24, r25
 2a4:	8a b9       	out	0x0a, r24	; 10
 2a6:	08 95       	ret
 2a8:	88 30       	cpi	r24, 0x08	; 8
 2aa:	48 f4       	brcc	.+18     	; 0x2be <_pinMode+0x2e>
 2ac:	0e 94 cc 00 	call	0x198	; 0x198 <pinMask>
 2b0:	88 23       	and	r24, r24
 2b2:	69 f0       	breq	.+26     	; 0x2ce <_pinMode+0x3e>
 2b4:	9a b1       	in	r25, 0x0a	; 10
 2b6:	80 95       	com	r24
 2b8:	89 23       	and	r24, r25
 2ba:	8a b9       	out	0x0a, r24	; 10
 2bc:	08 95       	ret
 2be:	0e 94 cc 00 	call	0x198	; 0x198 <pinMask>
 2c2:	88 23       	and	r24, r24
 2c4:	21 f0       	breq	.+8      	; 0x2ce <_pinMode+0x3e>
 2c6:	94 b1       	in	r25, 0x04	; 4
 2c8:	80 95       	com	r24
 2ca:	89 23       	and	r24, r25
 2cc:	84 b9       	out	0x04, r24	; 4
 2ce:	08 95       	ret
 2d0:	0e 94 cc 00 	call	0x198	; 0x198 <pinMask>
 2d4:	88 23       	and	r24, r24
 2d6:	d9 f3       	breq	.-10     	; 0x2ce <_pinMode+0x3e>
 2d8:	94 b1       	in	r25, 0x04	; 4
 2da:	89 2b       	or	r24, r25
 2dc:	84 b9       	out	0x04, r24	; 4
 2de:	08 95       	ret

000002e0 <_delayMs>:
 2e0:	00 97       	sbiw	r24, 0x00	; 0
 2e2:	61 f0       	breq	.+24     	; 0x2fc <_delayMs+0x1c>
 2e4:	20 e0       	ldi	r18, 0x00	; 0
 2e6:	30 e0       	ldi	r19, 0x00	; 0
 2e8:	40 ea       	ldi	r20, 0xA0	; 160
 2ea:	5f e0       	ldi	r21, 0x0F	; 15
 2ec:	fa 01       	movw	r30, r20
 2ee:	31 97       	sbiw	r30, 0x01	; 1
 2f0:	f1 f7       	brne	.-4      	; 0x2ee <_delayMs+0xe>
 2f2:	2f 5f       	subi	r18, 0xFF	; 255
 2f4:	3f 4f       	sbci	r19, 0xFF	; 255
 2f6:	82 17       	cp	r24, r18
 2f8:	93 07       	cpc	r25, r19
 2fa:	c1 f7       	brne	.-16     	; 0x2ec <_delayMs+0xc>
 2fc:	08 95       	ret

000002fe <_ticks>:
 2fe:	80 91 1a 01 	lds	r24, 0x011A	; 0x80011a <t0Overflow>
 302:	90 91 1b 01 	lds	r25, 0x011B	; 0x80011b <t0Overflow+0x1>
 306:	08 95       	ret

00000308 <_stringAddCharacter>:
 308:	e0 91 2b 01 	lds	r30, 0x012B	; 0x80012b <stringBufferEnd>
 30c:	ef 37       	cpi	r30, 0x7F	; 127
 30e:	91 f0       	breq	.+36     	; 0x334 <_stringAddCharacter+0x2c>
 310:	91 e0       	ldi	r25, 0x01	; 1
 312:	9e 0f       	add	r25, r30
 314:	90 93 2b 01 	sts	0x012B, r25	; 0x80012b <stringBufferEnd>
 318:	0e 2e       	mov	r0, r30
 31a:	00 0c       	add	r0, r0
 31c:	ff 0b       	sbc	r31, r31
 31e:	e4 5d       	subi	r30, 0xD4	; 212
 320:	fe 4f       	sbci	r31, 0xFE	; 254
 322:	80 83       	st	Z, r24
 324:	e9 2f       	mov	r30, r25
 326:	99 0f       	add	r25, r25
 328:	ff 0b       	sbc	r31, r31
 32a:	e4 5d       	subi	r30, 0xD4	; 212
 32c:	fe 4f       	sbci	r31, 0xFE	; 254
 32e:	10 82       	st	Z, r1
 330:	81 e0       	ldi	r24, 0x01	; 1
 332:	08 95       	ret
 334:	80 e0       	ldi	r24, 0x00	; 0
 336:	08 95       	ret

00000338 <_stringStartNew>:
 338:	10 92 2b 01 	sts	0x012B, r1	; 0x80012b <stringBufferEnd>
 33c:	10 92 2c 01 	sts	0x012C, r1	; 0x80012c <stringBuffer>
 340:	08 95       	ret

00000342 <_stringCurrentValue>:
 342:	8c e2       	ldi	r24, 0x2C	; 44
 344:	91 e0       	ldi	r25, 0x01	; 1
 346:	08 95       	ret

00000348 <_numberToString>:
 348:	9f 93       	push	r25
 34a:	8f 93       	push	r24
 34c:	7f 93       	push	r23
 34e:	6f 93       	push	r22
 350:	81 e1       	ldi	r24, 0x11	; 17
 352:	91 e0       	ldi	r25, 0x01	; 1
 354:	9f 93       	push	r25
 356:	8f 93       	push	r24
 358:	1f 92       	push	r1
 35a:	8f e0       	ldi	r24, 0x0F	; 15
 35c:	8f 93       	push	r24
 35e:	8c e1       	ldi	r24, 0x1C	; 28
 360:	91 e0       	ldi	r25, 0x01	; 1
 362:	9f 93       	push	r25
 364:	8f 93       	push	r24
 366:	0e 94 a6 03 	call	0x74c	; 0x74c <snprintf>
 36a:	8d b7       	in	r24, 0x3d	; 61
 36c:	9e b7       	in	r25, 0x3e	; 62
 36e:	0a 96       	adiw	r24, 0x0a	; 10
 370:	0f b6       	in	r0, 0x3f	; 63
 372:	f8 94       	cli
 374:	9e bf       	out	0x3e, r25	; 62
 376:	0f be       	out	0x3f, r0	; 63
 378:	8d bf       	out	0x3d, r24	; 61
 37a:	8c e1       	ldi	r24, 0x1C	; 28
 37c:	91 e0       	ldi	r25, 0x01	; 1
 37e:	08 95       	ret

00000380 <__vector_16>:
 380:	1f 92       	push	r1
 382:	0f 92       	push	r0
 384:	0f b6       	in	r0, 0x3f	; 63
 386:	0f 92       	push	r0
 388:	11 24       	eor	r1, r1
 38a:	8f 93       	push	r24
 38c:	9f 93       	push	r25
 38e:	80 91 1a 01 	lds	r24, 0x011A	; 0x80011a <t0Overflow>
 392:	90 91 1b 01 	lds	r25, 0x011B	; 0x80011b <t0Overflow+0x1>
 396:	01 96       	adiw	r24, 0x01	; 1
 398:	90 93 1b 01 	sts	0x011B, r25	; 0x80011b <t0Overflow+0x1>
 39c:	80 93 1a 01 	sts	0x011A, r24	; 0x80011a <t0Overflow>
 3a0:	9f 91       	pop	r25
 3a2:	8f 91       	pop	r24
 3a4:	0f 90       	pop	r0
 3a6:	0f be       	out	0x3f, r0	; 63
 3a8:	0f 90       	pop	r0
 3aa:	1f 90       	pop	r1
 3ac:	18 95       	reti

000003ae <_analogWrite>:
 3ae:	cf 93       	push	r28
 3b0:	df 93       	push	r29
 3b2:	c8 2f       	mov	r28, r24
 3b4:	d6 2f       	mov	r29, r22
 3b6:	60 91 0e 01 	lds	r22, 0x010E	; 0x80010e <_OUTPUT>
 3ba:	0e 94 48 01 	call	0x290	; 0x290 <_pinMode>
 3be:	c6 30       	cpi	r28, 0x06	; 6
 3c0:	09 f4       	brne	.+2      	; 0x3c4 <_analogWrite+0x16>
 3c2:	5b c0       	rjmp	.+182    	; 0x47a <__FUSE_REGION_LENGTH__+0x7a>
 3c4:	50 f0       	brcs	.+20     	; 0x3da <_analogWrite+0x2c>
 3c6:	ca 30       	cpi	r28, 0x0A	; 10
 3c8:	b9 f0       	breq	.+46     	; 0x3f8 <_analogWrite+0x4a>
 3ca:	cb 30       	cpi	r28, 0x0B	; 11
 3cc:	09 f4       	brne	.+2      	; 0x3d0 <_analogWrite+0x22>
 3ce:	46 c0       	rjmp	.+140    	; 0x45c <__FUSE_REGION_LENGTH__+0x5c>
 3d0:	c9 30       	cpi	r28, 0x09	; 9
 3d2:	21 f1       	breq	.+72     	; 0x41c <__FUSE_REGION_LENGTH__+0x1c>
 3d4:	df 91       	pop	r29
 3d6:	cf 91       	pop	r28
 3d8:	08 95       	ret
 3da:	c3 30       	cpi	r28, 0x03	; 3
 3dc:	89 f1       	breq	.+98     	; 0x440 <__FUSE_REGION_LENGTH__+0x40>
 3de:	c5 30       	cpi	r28, 0x05	; 5
 3e0:	c9 f7       	brne	.-14     	; 0x3d4 <_analogWrite+0x26>
 3e2:	84 b5       	in	r24, 0x24	; 36
 3e4:	dd 23       	and	r29, r29
 3e6:	09 f4       	brne	.+2      	; 0x3ea <_analogWrite+0x3c>
 3e8:	52 c0       	rjmp	.+164    	; 0x48e <__FUSE_REGION_LENGTH__+0x8e>
 3ea:	df 3f       	cpi	r29, 0xFF	; 255
 3ec:	09 f4       	brne	.+2      	; 0x3f0 <_analogWrite+0x42>
 3ee:	9e c0       	rjmp	.+316    	; 0x52c <__FUSE_REGION_LENGTH__+0x12c>
 3f0:	80 62       	ori	r24, 0x20	; 32
 3f2:	84 bd       	out	0x24, r24	; 36
 3f4:	d8 bd       	out	0x28, r29	; 40
 3f6:	ee cf       	rjmp	.-36     	; 0x3d4 <_analogWrite+0x26>
 3f8:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
 3fc:	dd 23       	and	r29, r29
 3fe:	09 f4       	brne	.+2      	; 0x402 <__FUSE_REGION_LENGTH__+0x2>
 400:	7b c0       	rjmp	.+246    	; 0x4f8 <__FUSE_REGION_LENGTH__+0xf8>
 402:	df 3f       	cpi	r29, 0xFF	; 255
 404:	09 f4       	brne	.+2      	; 0x408 <__FUSE_REGION_LENGTH__+0x8>
 406:	85 c0       	rjmp	.+266    	; 0x512 <__FUSE_REGION_LENGTH__+0x112>
 408:	80 62       	ori	r24, 0x20	; 32
 40a:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
 40e:	6d 2f       	mov	r22, r29
 410:	70 e0       	ldi	r23, 0x00	; 0
 412:	70 93 8b 00 	sts	0x008B, r23	; 0x80008b <__TEXT_REGION_LENGTH__+0x7e008b>
 416:	60 93 8a 00 	sts	0x008A, r22	; 0x80008a <__TEXT_REGION_LENGTH__+0x7e008a>
 41a:	dc cf       	rjmp	.-72     	; 0x3d4 <_analogWrite+0x26>
 41c:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
 420:	dd 23       	and	r29, r29
 422:	09 f4       	brne	.+2      	; 0x426 <__FUSE_REGION_LENGTH__+0x26>
 424:	5c c0       	rjmp	.+184    	; 0x4de <__FUSE_REGION_LENGTH__+0xde>
 426:	df 3f       	cpi	r29, 0xFF	; 255
 428:	09 f4       	brne	.+2      	; 0x42c <__FUSE_REGION_LENGTH__+0x2c>
 42a:	94 c0       	rjmp	.+296    	; 0x554 <__FUSE_REGION_LENGTH__+0x154>
 42c:	80 68       	ori	r24, 0x80	; 128
 42e:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
 432:	6d 2f       	mov	r22, r29
 434:	70 e0       	ldi	r23, 0x00	; 0
 436:	70 93 89 00 	sts	0x0089, r23	; 0x800089 <__TEXT_REGION_LENGTH__+0x7e0089>
 43a:	60 93 88 00 	sts	0x0088, r22	; 0x800088 <__TEXT_REGION_LENGTH__+0x7e0088>
 43e:	ca cf       	rjmp	.-108    	; 0x3d4 <_analogWrite+0x26>
 440:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
 444:	dd 23       	and	r29, r29
 446:	09 f4       	brne	.+2      	; 0x44a <__FUSE_REGION_LENGTH__+0x4a>
 448:	3f c0       	rjmp	.+126    	; 0x4c8 <__FUSE_REGION_LENGTH__+0xc8>
 44a:	df 3f       	cpi	r29, 0xFF	; 255
 44c:	09 f4       	brne	.+2      	; 0x450 <__FUSE_REGION_LENGTH__+0x50>
 44e:	77 c0       	rjmp	.+238    	; 0x53e <__FUSE_REGION_LENGTH__+0x13e>
 450:	80 62       	ori	r24, 0x20	; 32
 452:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
 456:	d0 93 b4 00 	sts	0x00B4, r29	; 0x8000b4 <__TEXT_REGION_LENGTH__+0x7e00b4>
 45a:	bc cf       	rjmp	.-136    	; 0x3d4 <_analogWrite+0x26>
 45c:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
 460:	dd 23       	and	r29, r29
 462:	39 f1       	breq	.+78     	; 0x4b2 <__FUSE_REGION_LENGTH__+0xb2>
 464:	df 3f       	cpi	r29, 0xFF	; 255
 466:	09 f4       	brne	.+2      	; 0x46a <__FUSE_REGION_LENGTH__+0x6a>
 468:	8b c0       	rjmp	.+278    	; 0x580 <__FUSE_REGION_LENGTH__+0x180>
 46a:	80 68       	ori	r24, 0x80	; 128
 46c:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
 470:	d0 93 b3 00 	sts	0x00B3, r29	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
 474:	df 91       	pop	r29
 476:	cf 91       	pop	r28
 478:	08 95       	ret
 47a:	84 b5       	in	r24, 0x24	; 36
 47c:	dd 23       	and	r29, r29
 47e:	81 f0       	breq	.+32     	; 0x4a0 <__FUSE_REGION_LENGTH__+0xa0>
 480:	df 3f       	cpi	r29, 0xFF	; 255
 482:	09 f4       	brne	.+2      	; 0x486 <__FUSE_REGION_LENGTH__+0x86>
 484:	74 c0       	rjmp	.+232    	; 0x56e <__FUSE_REGION_LENGTH__+0x16e>
 486:	80 68       	ori	r24, 0x80	; 128
 488:	84 bd       	out	0x24, r24	; 36
 48a:	d7 bd       	out	0x27, r29	; 39
 48c:	a3 cf       	rjmp	.-186    	; 0x3d4 <_analogWrite+0x26>
 48e:	8f 7d       	andi	r24, 0xDF	; 223
 490:	84 bd       	out	0x24, r24	; 36
 492:	60 91 0f 01 	lds	r22, 0x010F	; 0x80010f <_LOW>
 496:	85 e0       	ldi	r24, 0x05	; 5
 498:	0e 94 18 01 	call	0x230	; 0x230 <_digitalWrite>
 49c:	18 bc       	out	0x28, r1	; 40
 49e:	9a cf       	rjmp	.-204    	; 0x3d4 <_analogWrite+0x26>
 4a0:	8f 77       	andi	r24, 0x7F	; 127
 4a2:	84 bd       	out	0x24, r24	; 36
 4a4:	60 91 0f 01 	lds	r22, 0x010F	; 0x80010f <_LOW>
 4a8:	86 e0       	ldi	r24, 0x06	; 6
 4aa:	0e 94 18 01 	call	0x230	; 0x230 <_digitalWrite>
 4ae:	17 bc       	out	0x27, r1	; 39
 4b0:	91 cf       	rjmp	.-222    	; 0x3d4 <_analogWrite+0x26>
 4b2:	8f 77       	andi	r24, 0x7F	; 127
 4b4:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
 4b8:	60 91 0f 01 	lds	r22, 0x010F	; 0x80010f <_LOW>
 4bc:	8b e0       	ldi	r24, 0x0B	; 11
 4be:	0e 94 18 01 	call	0x230	; 0x230 <_digitalWrite>
 4c2:	10 92 b3 00 	sts	0x00B3, r1	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
 4c6:	86 cf       	rjmp	.-244    	; 0x3d4 <_analogWrite+0x26>
 4c8:	8f 7d       	andi	r24, 0xDF	; 223
 4ca:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
 4ce:	60 91 0f 01 	lds	r22, 0x010F	; 0x80010f <_LOW>
 4d2:	83 e0       	ldi	r24, 0x03	; 3
 4d4:	0e 94 18 01 	call	0x230	; 0x230 <_digitalWrite>
 4d8:	10 92 b4 00 	sts	0x00B4, r1	; 0x8000b4 <__TEXT_REGION_LENGTH__+0x7e00b4>
 4dc:	7b cf       	rjmp	.-266    	; 0x3d4 <_analogWrite+0x26>
 4de:	8f 77       	andi	r24, 0x7F	; 127
 4e0:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
 4e4:	60 91 0f 01 	lds	r22, 0x010F	; 0x80010f <_LOW>
 4e8:	89 e0       	ldi	r24, 0x09	; 9
 4ea:	0e 94 18 01 	call	0x230	; 0x230 <_digitalWrite>
 4ee:	10 92 89 00 	sts	0x0089, r1	; 0x800089 <__TEXT_REGION_LENGTH__+0x7e0089>
 4f2:	10 92 88 00 	sts	0x0088, r1	; 0x800088 <__TEXT_REGION_LENGTH__+0x7e0088>
 4f6:	6e cf       	rjmp	.-292    	; 0x3d4 <_analogWrite+0x26>
 4f8:	8f 7d       	andi	r24, 0xDF	; 223
 4fa:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
 4fe:	60 91 0f 01 	lds	r22, 0x010F	; 0x80010f <_LOW>
 502:	8a e0       	ldi	r24, 0x0A	; 10
 504:	0e 94 18 01 	call	0x230	; 0x230 <_digitalWrite>
 508:	10 92 8b 00 	sts	0x008B, r1	; 0x80008b <__TEXT_REGION_LENGTH__+0x7e008b>
 50c:	10 92 8a 00 	sts	0x008A, r1	; 0x80008a <__TEXT_REGION_LENGTH__+0x7e008a>
 510:	61 cf       	rjmp	.-318    	; 0x3d4 <_analogWrite+0x26>
 512:	8f 7d       	andi	r24, 0xDF	; 223
 514:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
 518:	60 91 10 01 	lds	r22, 0x0110	; 0x800110 <_HIGH>
 51c:	8a e0       	ldi	r24, 0x0A	; 10
 51e:	0e 94 18 01 	call	0x230	; 0x230 <_digitalWrite>
 522:	10 92 8b 00 	sts	0x008B, r1	; 0x80008b <__TEXT_REGION_LENGTH__+0x7e008b>
 526:	10 92 8a 00 	sts	0x008A, r1	; 0x80008a <__TEXT_REGION_LENGTH__+0x7e008a>
 52a:	54 cf       	rjmp	.-344    	; 0x3d4 <_analogWrite+0x26>
 52c:	8f 7d       	andi	r24, 0xDF	; 223
 52e:	84 bd       	out	0x24, r24	; 36
 530:	60 91 10 01 	lds	r22, 0x0110	; 0x800110 <_HIGH>
 534:	85 e0       	ldi	r24, 0x05	; 5
 536:	0e 94 18 01 	call	0x230	; 0x230 <_digitalWrite>
 53a:	18 bc       	out	0x28, r1	; 40
 53c:	4b cf       	rjmp	.-362    	; 0x3d4 <_analogWrite+0x26>
 53e:	8f 7d       	andi	r24, 0xDF	; 223
 540:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
 544:	60 91 10 01 	lds	r22, 0x0110	; 0x800110 <_HIGH>
 548:	83 e0       	ldi	r24, 0x03	; 3
 54a:	0e 94 18 01 	call	0x230	; 0x230 <_digitalWrite>
 54e:	10 92 b4 00 	sts	0x00B4, r1	; 0x8000b4 <__TEXT_REGION_LENGTH__+0x7e00b4>
 552:	40 cf       	rjmp	.-384    	; 0x3d4 <_analogWrite+0x26>
 554:	8f 77       	andi	r24, 0x7F	; 127
 556:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
 55a:	60 91 10 01 	lds	r22, 0x0110	; 0x800110 <_HIGH>
 55e:	89 e0       	ldi	r24, 0x09	; 9
 560:	0e 94 18 01 	call	0x230	; 0x230 <_digitalWrite>
 564:	10 92 89 00 	sts	0x0089, r1	; 0x800089 <__TEXT_REGION_LENGTH__+0x7e0089>
 568:	10 92 88 00 	sts	0x0088, r1	; 0x800088 <__TEXT_REGION_LENGTH__+0x7e0088>
 56c:	33 cf       	rjmp	.-410    	; 0x3d4 <_analogWrite+0x26>
 56e:	8f 77       	andi	r24, 0x7F	; 127
 570:	84 bd       	out	0x24, r24	; 36
 572:	60 91 10 01 	lds	r22, 0x0110	; 0x800110 <_HIGH>
 576:	86 e0       	ldi	r24, 0x06	; 6
 578:	0e 94 18 01 	call	0x230	; 0x230 <_digitalWrite>
 57c:	17 bc       	out	0x27, r1	; 39
 57e:	2a cf       	rjmp	.-428    	; 0x3d4 <_analogWrite+0x26>
 580:	8f 77       	andi	r24, 0x7F	; 127
 582:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
 586:	60 91 10 01 	lds	r22, 0x0110	; 0x800110 <_HIGH>
 58a:	8b e0       	ldi	r24, 0x0B	; 11
 58c:	0e 94 18 01 	call	0x230	; 0x230 <_digitalWrite>
 590:	10 92 b3 00 	sts	0x00B3, r1	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
 594:	1f cf       	rjmp	.-450    	; 0x3d4 <_analogWrite+0x26>

00000596 <_startupADC>:
 596:	87 e8       	ldi	r24, 0x87	; 135
 598:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 59c:	8a e0       	ldi	r24, 0x0A	; 10
 59e:	90 e0       	ldi	r25, 0x00	; 0
 5a0:	0e 94 70 01 	call	0x2e0	; 0x2e0 <_delayMs>
 5a4:	61 e0       	ldi	r22, 0x01	; 1
 5a6:	8d e0       	ldi	r24, 0x0D	; 13
 5a8:	0e 94 48 01 	call	0x290	; 0x290 <_pinMode>
 5ac:	60 e0       	ldi	r22, 0x00	; 0
 5ae:	8d e0       	ldi	r24, 0x0D	; 13
 5b0:	0c 94 18 01 	jmp	0x230	; 0x230 <_digitalWrite>

000005b4 <_slowAnalogRead>:
 5b4:	cf 93       	push	r28
 5b6:	c8 2f       	mov	r28, r24
 5b8:	88 30       	cpi	r24, 0x08	; 8
 5ba:	38 f5       	brcc	.+78     	; 0x60a <_slowAnalogRead+0x56>
 5bc:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 5c0:	87 fd       	sbrc	r24, 7
 5c2:	0f c0       	rjmp	.+30     	; 0x5e2 <_slowAnalogRead+0x2e>
 5c4:	87 e8       	ldi	r24, 0x87	; 135
 5c6:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 5ca:	8a e0       	ldi	r24, 0x0A	; 10
 5cc:	90 e0       	ldi	r25, 0x00	; 0
 5ce:	0e 94 70 01 	call	0x2e0	; 0x2e0 <_delayMs>
 5d2:	61 e0       	ldi	r22, 0x01	; 1
 5d4:	8d e0       	ldi	r24, 0x0D	; 13
 5d6:	0e 94 48 01 	call	0x290	; 0x290 <_pinMode>
 5da:	60 e0       	ldi	r22, 0x00	; 0
 5dc:	8d e0       	ldi	r24, 0x0D	; 13
 5de:	0e 94 18 01 	call	0x230	; 0x230 <_digitalWrite>
 5e2:	c0 64       	ori	r28, 0x40	; 64
 5e4:	c0 93 7c 00 	sts	0x007C, r28	; 0x80007c <__TEXT_REGION_LENGTH__+0x7e007c>
 5e8:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 5ec:	80 64       	ori	r24, 0x40	; 64
 5ee:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 5f2:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 5f6:	86 fd       	sbrc	r24, 6
 5f8:	fc cf       	rjmp	.-8      	; 0x5f2 <_slowAnalogRead+0x3e>
 5fa:	80 91 78 00 	lds	r24, 0x0078	; 0x800078 <__TEXT_REGION_LENGTH__+0x7e0078>
 5fe:	20 91 79 00 	lds	r18, 0x0079	; 0x800079 <__TEXT_REGION_LENGTH__+0x7e0079>
 602:	90 e0       	ldi	r25, 0x00	; 0
 604:	92 2b       	or	r25, r18
 606:	cf 91       	pop	r28
 608:	08 95       	ret
 60a:	80 e0       	ldi	r24, 0x00	; 0
 60c:	90 e0       	ldi	r25, 0x00	; 0
 60e:	cf 91       	pop	r28
 610:	08 95       	ret

00000612 <__vector_21>:
 612:	1f 92       	push	r1
 614:	0f 92       	push	r0
 616:	0f b6       	in	r0, 0x3f	; 63
 618:	0f 92       	push	r0
 61a:	11 24       	eor	r1, r1
 61c:	2f 93       	push	r18
 61e:	3f 93       	push	r19
 620:	4f 93       	push	r20
 622:	5f 93       	push	r21
 624:	6f 93       	push	r22
 626:	7f 93       	push	r23
 628:	8f 93       	push	r24
 62a:	9f 93       	push	r25
 62c:	af 93       	push	r26
 62e:	bf 93       	push	r27
 630:	ef 93       	push	r30
 632:	ff 93       	push	r31
 634:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 638:	87 7f       	andi	r24, 0xF7	; 247
 63a:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 63e:	e0 91 af 01 	lds	r30, 0x01AF	; 0x8001af <currentCallback>
 642:	f0 91 b0 01 	lds	r31, 0x01B0	; 0x8001b0 <currentCallback+0x1>
 646:	30 97       	sbiw	r30, 0x00	; 0
 648:	59 f0       	breq	.+22     	; 0x660 <__vector_21+0x4e>
 64a:	80 91 78 00 	lds	r24, 0x0078	; 0x800078 <__TEXT_REGION_LENGTH__+0x7e0078>
 64e:	20 91 79 00 	lds	r18, 0x0079	; 0x800079 <__TEXT_REGION_LENGTH__+0x7e0079>
 652:	90 e0       	ldi	r25, 0x00	; 0
 654:	92 2b       	or	r25, r18
 656:	09 95       	icall
 658:	10 92 b0 01 	sts	0x01B0, r1	; 0x8001b0 <currentCallback+0x1>
 65c:	10 92 af 01 	sts	0x01AF, r1	; 0x8001af <currentCallback>
 660:	ff 91       	pop	r31
 662:	ef 91       	pop	r30
 664:	bf 91       	pop	r27
 666:	af 91       	pop	r26
 668:	9f 91       	pop	r25
 66a:	8f 91       	pop	r24
 66c:	7f 91       	pop	r23
 66e:	6f 91       	pop	r22
 670:	5f 91       	pop	r21
 672:	4f 91       	pop	r20
 674:	3f 91       	pop	r19
 676:	2f 91       	pop	r18
 678:	0f 90       	pop	r0
 67a:	0f be       	out	0x3f, r0	; 63
 67c:	0f 90       	pop	r0
 67e:	1f 90       	pop	r1
 680:	18 95       	reti

00000682 <_analogReadAsync>:
 682:	0f 93       	push	r16
 684:	1f 93       	push	r17
 686:	cf 93       	push	r28
 688:	df 93       	push	r29
 68a:	c8 2f       	mov	r28, r24
 68c:	16 2f       	mov	r17, r22
 68e:	d7 2f       	mov	r29, r23
 690:	04 2f       	mov	r16, r20
 692:	88 30       	cpi	r24, 0x08	; 8
 694:	e8 f4       	brcc	.+58     	; 0x6d0 <_analogReadAsync+0x4e>
 696:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 69a:	87 fd       	sbrc	r24, 7
 69c:	0f c0       	rjmp	.+30     	; 0x6bc <_analogReadAsync+0x3a>
 69e:	87 e8       	ldi	r24, 0x87	; 135
 6a0:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 6a4:	8a e0       	ldi	r24, 0x0A	; 10
 6a6:	90 e0       	ldi	r25, 0x00	; 0
 6a8:	0e 94 70 01 	call	0x2e0	; 0x2e0 <_delayMs>
 6ac:	61 e0       	ldi	r22, 0x01	; 1
 6ae:	8d e0       	ldi	r24, 0x0D	; 13
 6b0:	0e 94 48 01 	call	0x290	; 0x290 <_pinMode>
 6b4:	60 e0       	ldi	r22, 0x00	; 0
 6b6:	8d e0       	ldi	r24, 0x0D	; 13
 6b8:	0e 94 18 01 	call	0x230	; 0x230 <_digitalWrite>
 6bc:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 6c0:	86 fd       	sbrc	r24, 6
 6c2:	06 c0       	rjmp	.+12     	; 0x6d0 <_analogReadAsync+0x4e>
 6c4:	80 91 af 01 	lds	r24, 0x01AF	; 0x8001af <currentCallback>
 6c8:	90 91 b0 01 	lds	r25, 0x01B0	; 0x8001b0 <currentCallback+0x1>
 6cc:	89 2b       	or	r24, r25
 6ce:	31 f0       	breq	.+12     	; 0x6dc <_analogReadAsync+0x5a>
 6d0:	80 e0       	ldi	r24, 0x00	; 0
 6d2:	df 91       	pop	r29
 6d4:	cf 91       	pop	r28
 6d6:	1f 91       	pop	r17
 6d8:	0f 91       	pop	r16
 6da:	08 95       	ret
 6dc:	00 23       	and	r16, r16
 6de:	59 f0       	breq	.+22     	; 0x6f6 <_analogReadAsync+0x74>
 6e0:	81 2f       	mov	r24, r17
 6e2:	9d 2f       	mov	r25, r29
 6e4:	97 fd       	sbrc	r25, 7
 6e6:	15 c0       	rjmp	.+42     	; 0x712 <_analogReadAsync+0x90>
 6e8:	95 95       	asr	r25
 6ea:	87 95       	ror	r24
 6ec:	90 93 b0 01 	sts	0x01B0, r25	; 0x8001b0 <currentCallback+0x1>
 6f0:	80 93 af 01 	sts	0x01AF, r24	; 0x8001af <currentCallback>
 6f4:	04 c0       	rjmp	.+8      	; 0x6fe <_analogReadAsync+0x7c>
 6f6:	10 93 af 01 	sts	0x01AF, r17	; 0x8001af <currentCallback>
 6fa:	d0 93 b0 01 	sts	0x01B0, r29	; 0x8001b0 <currentCallback+0x1>
 6fe:	c0 64       	ori	r28, 0x40	; 64
 700:	c0 93 7c 00 	sts	0x007C, r28	; 0x80007c <__TEXT_REGION_LENGTH__+0x7e007c>
 704:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 708:	88 64       	ori	r24, 0x48	; 72
 70a:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 70e:	81 e0       	ldi	r24, 0x01	; 1
 710:	e0 cf       	rjmp	.-64     	; 0x6d2 <_analogReadAsync+0x50>
 712:	01 96       	adiw	r24, 0x01	; 1
 714:	e9 cf       	rjmp	.-46     	; 0x6e8 <_analogReadAsync+0x66>

00000716 <startTimers>:
 716:	83 e0       	ldi	r24, 0x03	; 3
 718:	84 bd       	out	0x24, r24	; 36
 71a:	85 bd       	out	0x25, r24	; 37
 71c:	91 e0       	ldi	r25, 0x01	; 1
 71e:	90 93 80 00 	sts	0x0080, r25	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
 722:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
 726:	90 93 b0 00 	sts	0x00B0, r25	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
 72a:	84 e0       	ldi	r24, 0x04	; 4
 72c:	80 93 b1 00 	sts	0x00B1, r24	; 0x8000b1 <__TEXT_REGION_LENGTH__+0x7e00b1>
 730:	ee e6       	ldi	r30, 0x6E	; 110
 732:	f0 e0       	ldi	r31, 0x00	; 0
 734:	80 81       	ld	r24, Z
 736:	81 60       	ori	r24, 0x01	; 1
 738:	80 83       	st	Z, r24
 73a:	08 95       	ret

0000073c <__tablejump2__>:
 73c:	ee 0f       	add	r30, r30
 73e:	ff 1f       	adc	r31, r31
 740:	c8 95       	lpm
 742:	0f 92       	push	r0
 744:	31 96       	adiw	r30, 0x01	; 1
 746:	c8 95       	lpm
 748:	0f 92       	push	r0
 74a:	08 95       	ret

0000074c <snprintf>:
 74c:	ae e0       	ldi	r26, 0x0E	; 14
 74e:	b0 e0       	ldi	r27, 0x00	; 0
 750:	eb ea       	ldi	r30, 0xAB	; 171
 752:	f3 e0       	ldi	r31, 0x03	; 3
 754:	06 c3       	rjmp	.+1548   	; 0xd62 <__prologue_saves__+0x1c>
 756:	0d 89       	ldd	r16, Y+21	; 0x15
 758:	1e 89       	ldd	r17, Y+22	; 0x16
 75a:	8f 89       	ldd	r24, Y+23	; 0x17
 75c:	98 8d       	ldd	r25, Y+24	; 0x18
 75e:	26 e0       	ldi	r18, 0x06	; 6
 760:	2c 83       	std	Y+4, r18	; 0x04
 762:	1a 83       	std	Y+2, r17	; 0x02
 764:	09 83       	std	Y+1, r16	; 0x01
 766:	97 ff       	sbrs	r25, 7
 768:	02 c0       	rjmp	.+4      	; 0x76e <snprintf+0x22>
 76a:	80 e0       	ldi	r24, 0x00	; 0
 76c:	90 e8       	ldi	r25, 0x80	; 128
 76e:	01 97       	sbiw	r24, 0x01	; 1
 770:	9e 83       	std	Y+6, r25	; 0x06
 772:	8d 83       	std	Y+5, r24	; 0x05
 774:	4c 2f       	mov	r20, r28
 776:	5d 2f       	mov	r21, r29
 778:	45 5e       	subi	r20, 0xE5	; 229
 77a:	5f 4f       	sbci	r21, 0xFF	; 255
 77c:	69 8d       	ldd	r22, Y+25	; 0x19
 77e:	7a 8d       	ldd	r23, Y+26	; 0x1a
 780:	8c 2f       	mov	r24, r28
 782:	9d 2f       	mov	r25, r29
 784:	01 96       	adiw	r24, 0x01	; 1
 786:	13 d0       	rcall	.+38     	; 0x7ae <vfprintf>
 788:	4d 81       	ldd	r20, Y+5	; 0x05
 78a:	5e 81       	ldd	r21, Y+6	; 0x06
 78c:	57 fd       	sbrc	r21, 7
 78e:	0c c0       	rjmp	.+24     	; 0x7a8 <snprintf+0x5c>
 790:	2f 81       	ldd	r18, Y+7	; 0x07
 792:	38 85       	ldd	r19, Y+8	; 0x08
 794:	42 17       	cp	r20, r18
 796:	53 07       	cpc	r21, r19
 798:	14 f4       	brge	.+4      	; 0x79e <snprintf+0x52>
 79a:	24 2f       	mov	r18, r20
 79c:	35 2f       	mov	r19, r21
 79e:	02 0f       	add	r16, r18
 7a0:	13 1f       	adc	r17, r19
 7a2:	e0 2f       	mov	r30, r16
 7a4:	f1 2f       	mov	r31, r17
 7a6:	10 82       	st	Z, r1
 7a8:	2e 96       	adiw	r28, 0x0e	; 14
 7aa:	e4 e0       	ldi	r30, 0x04	; 4
 7ac:	f6 c2       	rjmp	.+1516   	; 0xd9a <__epilogue_restores__+0x1c>

000007ae <vfprintf>:
 7ae:	ab e0       	ldi	r26, 0x0B	; 11
 7b0:	b0 e0       	ldi	r27, 0x00	; 0
 7b2:	ec ed       	ldi	r30, 0xDC	; 220
 7b4:	f3 e0       	ldi	r31, 0x03	; 3
 7b6:	c7 c2       	rjmp	.+1422   	; 0xd46 <__prologue_saves__>
 7b8:	e8 2e       	mov	r14, r24
 7ba:	f9 2e       	mov	r15, r25
 7bc:	66 2e       	mov	r6, r22
 7be:	77 2e       	mov	r7, r23
 7c0:	04 2f       	mov	r16, r20
 7c2:	15 2f       	mov	r17, r21
 7c4:	e8 2f       	mov	r30, r24
 7c6:	f9 2f       	mov	r31, r25
 7c8:	17 82       	std	Z+7, r1	; 0x07
 7ca:	16 82       	std	Z+6, r1	; 0x06
 7cc:	83 81       	ldd	r24, Z+3	; 0x03
 7ce:	81 ff       	sbrs	r24, 1
 7d0:	ff c1       	rjmp	.+1022   	; 0xbd0 <__stack+0x2d1>
 7d2:	8c 2f       	mov	r24, r28
 7d4:	9d 2f       	mov	r25, r29
 7d6:	01 96       	adiw	r24, 0x01	; 1
 7d8:	a8 2e       	mov	r10, r24
 7da:	b9 2e       	mov	r11, r25
 7dc:	ee 2d       	mov	r30, r14
 7de:	ff 2d       	mov	r31, r15
 7e0:	93 81       	ldd	r25, Z+3	; 0x03
 7e2:	e6 2d       	mov	r30, r6
 7e4:	f7 2d       	mov	r31, r7
 7e6:	93 fd       	sbrc	r25, 3
 7e8:	c8 95       	lpm
 7ea:	93 ff       	sbrs	r25, 3
 7ec:	00 80       	ld	r0, Z
 7ee:	31 96       	adiw	r30, 0x01	; 1
 7f0:	80 2d       	mov	r24, r0
 7f2:	6e 2e       	mov	r6, r30
 7f4:	7f 2e       	mov	r7, r31
 7f6:	88 23       	and	r24, r24
 7f8:	09 f4       	brne	.+2      	; 0x7fc <vfprintf+0x4e>
 7fa:	48 c1       	rjmp	.+656    	; 0xa8c <__stack+0x18d>
 7fc:	85 32       	cpi	r24, 0x25	; 37
 7fe:	51 f4       	brne	.+20     	; 0x814 <vfprintf+0x66>
 800:	93 fd       	sbrc	r25, 3
 802:	c8 95       	lpm
 804:	93 ff       	sbrs	r25, 3
 806:	00 80       	ld	r0, Z
 808:	31 96       	adiw	r30, 0x01	; 1
 80a:	80 2d       	mov	r24, r0
 80c:	6e 2e       	mov	r6, r30
 80e:	7f 2e       	mov	r7, r31
 810:	85 32       	cpi	r24, 0x25	; 37
 812:	29 f4       	brne	.+10     	; 0x81e <vfprintf+0x70>
 814:	6e 2d       	mov	r22, r14
 816:	7f 2d       	mov	r23, r15
 818:	90 e0       	ldi	r25, 0x00	; 0
 81a:	f6 d1       	rcall	.+1004   	; 0xc08 <fputc>
 81c:	df cf       	rjmp	.-66     	; 0x7dc <vfprintf+0x2e>
 81e:	91 2c       	mov	r9, r1
 820:	21 2c       	mov	r2, r1
 822:	31 2c       	mov	r3, r1
 824:	ff e1       	ldi	r31, 0x1F	; 31
 826:	f3 15       	cp	r31, r3
 828:	38 f0       	brcs	.+14     	; 0x838 <vfprintf+0x8a>
 82a:	8b 32       	cpi	r24, 0x2B	; 43
 82c:	39 f1       	breq	.+78     	; 0x87c <vfprintf+0xce>
 82e:	90 f4       	brcc	.+36     	; 0x854 <vfprintf+0xa6>
 830:	80 32       	cpi	r24, 0x20	; 32
 832:	39 f1       	breq	.+78     	; 0x882 <vfprintf+0xd4>
 834:	83 32       	cpi	r24, 0x23	; 35
 836:	69 f1       	breq	.+90     	; 0x892 <vfprintf+0xe4>
 838:	37 fc       	sbrc	r3, 7
 83a:	45 c0       	rjmp	.+138    	; 0x8c6 <vfprintf+0x118>
 83c:	20 ed       	ldi	r18, 0xD0	; 208
 83e:	28 0f       	add	r18, r24
 840:	2a 30       	cpi	r18, 0x0A	; 10
 842:	98 f5       	brcc	.+102    	; 0x8aa <vfprintf+0xfc>
 844:	36 fe       	sbrs	r3, 6
 846:	28 c0       	rjmp	.+80     	; 0x898 <vfprintf+0xea>
 848:	89 2d       	mov	r24, r9
 84a:	6a e0       	ldi	r22, 0x0A	; 10
 84c:	73 d2       	rcall	.+1254   	; 0xd34 <__mulqi3>
 84e:	92 2e       	mov	r9, r18
 850:	98 0e       	add	r9, r24
 852:	07 c0       	rjmp	.+14     	; 0x862 <vfprintf+0xb4>
 854:	8d 32       	cpi	r24, 0x2D	; 45
 856:	c9 f0       	breq	.+50     	; 0x88a <vfprintf+0xdc>
 858:	80 33       	cpi	r24, 0x30	; 48
 85a:	71 f7       	brne	.-36     	; 0x838 <vfprintf+0x8a>
 85c:	23 2d       	mov	r18, r3
 85e:	21 60       	ori	r18, 0x01	; 1
 860:	32 2e       	mov	r3, r18
 862:	e6 2d       	mov	r30, r6
 864:	f7 2d       	mov	r31, r7
 866:	93 fd       	sbrc	r25, 3
 868:	c8 95       	lpm
 86a:	93 ff       	sbrs	r25, 3
 86c:	00 80       	ld	r0, Z
 86e:	31 96       	adiw	r30, 0x01	; 1
 870:	80 2d       	mov	r24, r0
 872:	6e 2e       	mov	r6, r30
 874:	7f 2e       	mov	r7, r31
 876:	81 11       	cpse	r24, r1
 878:	d5 cf       	rjmp	.-86     	; 0x824 <vfprintf+0x76>
 87a:	25 c0       	rjmp	.+74     	; 0x8c6 <vfprintf+0x118>
 87c:	83 2d       	mov	r24, r3
 87e:	82 60       	ori	r24, 0x02	; 2
 880:	38 2e       	mov	r3, r24
 882:	e3 2d       	mov	r30, r3
 884:	e4 60       	ori	r30, 0x04	; 4
 886:	3e 2e       	mov	r3, r30
 888:	ec cf       	rjmp	.-40     	; 0x862 <vfprintf+0xb4>
 88a:	f3 2d       	mov	r31, r3
 88c:	f8 60       	ori	r31, 0x08	; 8
 88e:	3f 2e       	mov	r3, r31
 890:	e8 cf       	rjmp	.-48     	; 0x862 <vfprintf+0xb4>
 892:	23 2d       	mov	r18, r3
 894:	20 61       	ori	r18, 0x10	; 16
 896:	e4 cf       	rjmp	.-56     	; 0x860 <vfprintf+0xb2>
 898:	82 2d       	mov	r24, r2
 89a:	6a e0       	ldi	r22, 0x0A	; 10
 89c:	4b d2       	rcall	.+1174   	; 0xd34 <__mulqi3>
 89e:	22 2e       	mov	r2, r18
 8a0:	28 0e       	add	r2, r24
 8a2:	83 2d       	mov	r24, r3
 8a4:	80 62       	ori	r24, 0x20	; 32
 8a6:	38 2e       	mov	r3, r24
 8a8:	dc cf       	rjmp	.-72     	; 0x862 <vfprintf+0xb4>
 8aa:	8e 32       	cpi	r24, 0x2E	; 46
 8ac:	29 f4       	brne	.+10     	; 0x8b8 <vfprintf+0x10a>
 8ae:	36 fc       	sbrc	r3, 6
 8b0:	ed c0       	rjmp	.+474    	; 0xa8c <__stack+0x18d>
 8b2:	e3 2d       	mov	r30, r3
 8b4:	e0 64       	ori	r30, 0x40	; 64
 8b6:	e7 cf       	rjmp	.-50     	; 0x886 <vfprintf+0xd8>
 8b8:	8c 36       	cpi	r24, 0x6C	; 108
 8ba:	19 f4       	brne	.+6      	; 0x8c2 <vfprintf+0x114>
 8bc:	f3 2d       	mov	r31, r3
 8be:	f0 68       	ori	r31, 0x80	; 128
 8c0:	e6 cf       	rjmp	.-52     	; 0x88e <vfprintf+0xe0>
 8c2:	88 36       	cpi	r24, 0x68	; 104
 8c4:	71 f2       	breq	.-100    	; 0x862 <vfprintf+0xb4>
 8c6:	98 2f       	mov	r25, r24
 8c8:	9f 7d       	andi	r25, 0xDF	; 223
 8ca:	95 54       	subi	r25, 0x45	; 69
 8cc:	93 30       	cpi	r25, 0x03	; 3
 8ce:	08 f1       	brcs	.+66     	; 0x912 <__stack+0x13>
 8d0:	83 36       	cpi	r24, 0x63	; 99
 8d2:	09 f4       	brne	.+2      	; 0x8d6 <vfprintf+0x128>
 8d4:	3f c0       	rjmp	.+126    	; 0x954 <__stack+0x55>
 8d6:	83 37       	cpi	r24, 0x73	; 115
 8d8:	09 f4       	brne	.+2      	; 0x8dc <vfprintf+0x12e>
 8da:	43 c0       	rjmp	.+134    	; 0x962 <__stack+0x63>
 8dc:	83 35       	cpi	r24, 0x53	; 83
 8de:	09 f0       	breq	.+2      	; 0x8e2 <vfprintf+0x134>
 8e0:	76 c0       	rjmp	.+236    	; 0x9ce <__stack+0xcf>
 8e2:	40 2e       	mov	r4, r16
 8e4:	51 2e       	mov	r5, r17
 8e6:	22 e0       	ldi	r18, 0x02	; 2
 8e8:	42 0e       	add	r4, r18
 8ea:	51 1c       	adc	r5, r1
 8ec:	e0 2f       	mov	r30, r16
 8ee:	f1 2f       	mov	r31, r17
 8f0:	c0 80       	ld	r12, Z
 8f2:	d1 80       	ldd	r13, Z+1	; 0x01
 8f4:	36 fe       	sbrs	r3, 6
 8f6:	4d c0       	rjmp	.+154    	; 0x992 <__stack+0x93>
 8f8:	69 2d       	mov	r22, r9
 8fa:	70 e0       	ldi	r23, 0x00	; 0
 8fc:	8c 2d       	mov	r24, r12
 8fe:	9d 2d       	mov	r25, r13
 900:	6a d1       	rcall	.+724    	; 0xbd6 <strnlen_P>
 902:	88 2e       	mov	r8, r24
 904:	99 2e       	mov	r9, r25
 906:	f3 2d       	mov	r31, r3
 908:	f0 68       	ori	r31, 0x80	; 128
 90a:	3f 2e       	mov	r3, r31
 90c:	04 2d       	mov	r16, r4
 90e:	15 2d       	mov	r17, r5
 910:	0c c0       	rjmp	.+24     	; 0x92a <__stack+0x2b>
 912:	0c 5f       	subi	r16, 0xFC	; 252
 914:	1f 4f       	sbci	r17, 0xFF	; 255
 916:	2f e3       	ldi	r18, 0x3F	; 63
 918:	29 83       	std	Y+1, r18	; 0x01
 91a:	88 24       	eor	r8, r8
 91c:	83 94       	inc	r8
 91e:	91 2c       	mov	r9, r1
 920:	ca 2c       	mov	r12, r10
 922:	db 2c       	mov	r13, r11
 924:	f3 2d       	mov	r31, r3
 926:	ff 77       	andi	r31, 0x7F	; 127
 928:	3f 2e       	mov	r3, r31
 92a:	33 fc       	sbrc	r3, 3
 92c:	05 c0       	rjmp	.+10     	; 0x938 <__stack+0x39>
 92e:	82 2d       	mov	r24, r2
 930:	90 e0       	ldi	r25, 0x00	; 0
 932:	88 16       	cp	r8, r24
 934:	99 06       	cpc	r9, r25
 936:	80 f1       	brcs	.+96     	; 0x998 <__stack+0x99>
 938:	52 2c       	mov	r5, r2
 93a:	81 14       	cp	r8, r1
 93c:	91 04       	cpc	r9, r1
 93e:	99 f5       	brne	.+102    	; 0x9a6 <__stack+0xa7>
 940:	55 20       	and	r5, r5
 942:	09 f4       	brne	.+2      	; 0x946 <__stack+0x47>
 944:	4b cf       	rjmp	.-362    	; 0x7dc <vfprintf+0x2e>
 946:	6e 2d       	mov	r22, r14
 948:	7f 2d       	mov	r23, r15
 94a:	80 e2       	ldi	r24, 0x20	; 32
 94c:	90 e0       	ldi	r25, 0x00	; 0
 94e:	5c d1       	rcall	.+696    	; 0xc08 <fputc>
 950:	5a 94       	dec	r5
 952:	f6 cf       	rjmp	.-20     	; 0x940 <__stack+0x41>
 954:	e0 2f       	mov	r30, r16
 956:	f1 2f       	mov	r31, r17
 958:	80 81       	ld	r24, Z
 95a:	89 83       	std	Y+1, r24	; 0x01
 95c:	0e 5f       	subi	r16, 0xFE	; 254
 95e:	1f 4f       	sbci	r17, 0xFF	; 255
 960:	dc cf       	rjmp	.-72     	; 0x91a <__stack+0x1b>
 962:	40 2e       	mov	r4, r16
 964:	51 2e       	mov	r5, r17
 966:	f2 e0       	ldi	r31, 0x02	; 2
 968:	4f 0e       	add	r4, r31
 96a:	51 1c       	adc	r5, r1
 96c:	e0 2f       	mov	r30, r16
 96e:	f1 2f       	mov	r31, r17
 970:	c0 80       	ld	r12, Z
 972:	d1 80       	ldd	r13, Z+1	; 0x01
 974:	36 fe       	sbrs	r3, 6
 976:	0a c0       	rjmp	.+20     	; 0x98c <__stack+0x8d>
 978:	69 2d       	mov	r22, r9
 97a:	70 e0       	ldi	r23, 0x00	; 0
 97c:	8c 2d       	mov	r24, r12
 97e:	9d 2d       	mov	r25, r13
 980:	37 d1       	rcall	.+622    	; 0xbf0 <strnlen>
 982:	88 2e       	mov	r8, r24
 984:	99 2e       	mov	r9, r25
 986:	04 2d       	mov	r16, r4
 988:	15 2d       	mov	r17, r5
 98a:	cc cf       	rjmp	.-104    	; 0x924 <__stack+0x25>
 98c:	6f ef       	ldi	r22, 0xFF	; 255
 98e:	7f ef       	ldi	r23, 0xFF	; 255
 990:	f5 cf       	rjmp	.-22     	; 0x97c <__stack+0x7d>
 992:	6f ef       	ldi	r22, 0xFF	; 255
 994:	7f ef       	ldi	r23, 0xFF	; 255
 996:	b2 cf       	rjmp	.-156    	; 0x8fc <vfprintf+0x14e>
 998:	6e 2d       	mov	r22, r14
 99a:	7f 2d       	mov	r23, r15
 99c:	80 e2       	ldi	r24, 0x20	; 32
 99e:	90 e0       	ldi	r25, 0x00	; 0
 9a0:	33 d1       	rcall	.+614    	; 0xc08 <fputc>
 9a2:	2a 94       	dec	r2
 9a4:	c4 cf       	rjmp	.-120    	; 0x92e <__stack+0x2f>
 9a6:	ec 2d       	mov	r30, r12
 9a8:	fd 2d       	mov	r31, r13
 9aa:	37 fc       	sbrc	r3, 7
 9ac:	c8 95       	lpm
 9ae:	37 fe       	sbrs	r3, 7
 9b0:	00 80       	ld	r0, Z
 9b2:	31 96       	adiw	r30, 0x01	; 1
 9b4:	80 2d       	mov	r24, r0
 9b6:	ce 2e       	mov	r12, r30
 9b8:	df 2e       	mov	r13, r31
 9ba:	6e 2d       	mov	r22, r14
 9bc:	7f 2d       	mov	r23, r15
 9be:	90 e0       	ldi	r25, 0x00	; 0
 9c0:	23 d1       	rcall	.+582    	; 0xc08 <fputc>
 9c2:	51 10       	cpse	r5, r1
 9c4:	5a 94       	dec	r5
 9c6:	21 e0       	ldi	r18, 0x01	; 1
 9c8:	82 1a       	sub	r8, r18
 9ca:	91 08       	sbc	r9, r1
 9cc:	b6 cf       	rjmp	.-148    	; 0x93a <__stack+0x3b>
 9ce:	84 36       	cpi	r24, 0x64	; 100
 9d0:	11 f0       	breq	.+4      	; 0x9d6 <__stack+0xd7>
 9d2:	89 36       	cpi	r24, 0x69	; 105
 9d4:	c9 f5       	brne	.+114    	; 0xa48 <__stack+0x149>
 9d6:	e0 2f       	mov	r30, r16
 9d8:	f1 2f       	mov	r31, r17
 9da:	37 fe       	sbrs	r3, 7
 9dc:	2c c0       	rjmp	.+88     	; 0xa36 <__stack+0x137>
 9de:	60 81       	ld	r22, Z
 9e0:	71 81       	ldd	r23, Z+1	; 0x01
 9e2:	82 81       	ldd	r24, Z+2	; 0x02
 9e4:	93 81       	ldd	r25, Z+3	; 0x03
 9e6:	0c 5f       	subi	r16, 0xFC	; 252
 9e8:	1f 4f       	sbci	r17, 0xFF	; 255
 9ea:	f3 2d       	mov	r31, r3
 9ec:	ff 76       	andi	r31, 0x6F	; 111
 9ee:	3f 2e       	mov	r3, r31
 9f0:	97 ff       	sbrs	r25, 7
 9f2:	09 c0       	rjmp	.+18     	; 0xa06 <__stack+0x107>
 9f4:	90 95       	com	r25
 9f6:	80 95       	com	r24
 9f8:	70 95       	com	r23
 9fa:	61 95       	neg	r22
 9fc:	7f 4f       	sbci	r23, 0xFF	; 255
 9fe:	8f 4f       	sbci	r24, 0xFF	; 255
 a00:	9f 4f       	sbci	r25, 0xFF	; 255
 a02:	f0 68       	ori	r31, 0x80	; 128
 a04:	3f 2e       	mov	r3, r31
 a06:	2a e0       	ldi	r18, 0x0A	; 10
 a08:	30 e0       	ldi	r19, 0x00	; 0
 a0a:	4a 2d       	mov	r20, r10
 a0c:	5b 2d       	mov	r21, r11
 a0e:	2e d1       	rcall	.+604    	; 0xc6c <__ultoa_invert>
 a10:	c8 2e       	mov	r12, r24
 a12:	ca 18       	sub	r12, r10
 a14:	36 fe       	sbrs	r3, 6
 a16:	63 c0       	rjmp	.+198    	; 0xade <__stack+0x1df>
 a18:	23 2d       	mov	r18, r3
 a1a:	2e 7f       	andi	r18, 0xFE	; 254
 a1c:	82 2e       	mov	r8, r18
 a1e:	c9 14       	cp	r12, r9
 a20:	08 f0       	brcs	.+2      	; 0xa24 <__stack+0x125>
 a22:	9f c0       	rjmp	.+318    	; 0xb62 <__stack+0x263>
 a24:	34 fe       	sbrs	r3, 4
 a26:	05 c0       	rjmp	.+10     	; 0xa32 <__stack+0x133>
 a28:	32 fc       	sbrc	r3, 2
 a2a:	03 c0       	rjmp	.+6      	; 0xa32 <__stack+0x133>
 a2c:	83 2d       	mov	r24, r3
 a2e:	8e 7e       	andi	r24, 0xEE	; 238
 a30:	88 2e       	mov	r8, r24
 a32:	d9 2c       	mov	r13, r9
 a34:	56 c0       	rjmp	.+172    	; 0xae2 <__stack+0x1e3>
 a36:	60 81       	ld	r22, Z
 a38:	71 81       	ldd	r23, Z+1	; 0x01
 a3a:	07 2e       	mov	r0, r23
 a3c:	00 0c       	add	r0, r0
 a3e:	88 0b       	sbc	r24, r24
 a40:	99 0b       	sbc	r25, r25
 a42:	0e 5f       	subi	r16, 0xFE	; 254
 a44:	1f 4f       	sbci	r17, 0xFF	; 255
 a46:	d1 cf       	rjmp	.-94     	; 0x9ea <__stack+0xeb>
 a48:	85 37       	cpi	r24, 0x75	; 117
 a4a:	c1 f4       	brne	.+48     	; 0xa7c <__stack+0x17d>
 a4c:	23 2d       	mov	r18, r3
 a4e:	2f 7e       	andi	r18, 0xEF	; 239
 a50:	d2 2e       	mov	r13, r18
 a52:	2a e0       	ldi	r18, 0x0A	; 10
 a54:	30 e0       	ldi	r19, 0x00	; 0
 a56:	e0 2f       	mov	r30, r16
 a58:	f1 2f       	mov	r31, r17
 a5a:	d7 fe       	sbrs	r13, 7
 a5c:	39 c0       	rjmp	.+114    	; 0xad0 <__stack+0x1d1>
 a5e:	60 81       	ld	r22, Z
 a60:	71 81       	ldd	r23, Z+1	; 0x01
 a62:	82 81       	ldd	r24, Z+2	; 0x02
 a64:	93 81       	ldd	r25, Z+3	; 0x03
 a66:	0c 5f       	subi	r16, 0xFC	; 252
 a68:	1f 4f       	sbci	r17, 0xFF	; 255
 a6a:	4a 2d       	mov	r20, r10
 a6c:	5b 2d       	mov	r21, r11
 a6e:	fe d0       	rcall	.+508    	; 0xc6c <__ultoa_invert>
 a70:	c8 2e       	mov	r12, r24
 a72:	ca 18       	sub	r12, r10
 a74:	fd 2d       	mov	r31, r13
 a76:	ff 77       	andi	r31, 0x7F	; 127
 a78:	3f 2e       	mov	r3, r31
 a7a:	cc cf       	rjmp	.-104    	; 0xa14 <__stack+0x115>
 a7c:	93 2d       	mov	r25, r3
 a7e:	99 7f       	andi	r25, 0xF9	; 249
 a80:	d9 2e       	mov	r13, r25
 a82:	8f 36       	cpi	r24, 0x6F	; 111
 a84:	11 f1       	breq	.+68     	; 0xaca <__stack+0x1cb>
 a86:	48 f4       	brcc	.+18     	; 0xa9a <__stack+0x19b>
 a88:	88 35       	cpi	r24, 0x58	; 88
 a8a:	b9 f0       	breq	.+46     	; 0xaba <__stack+0x1bb>
 a8c:	ee 2d       	mov	r30, r14
 a8e:	ff 2d       	mov	r31, r15
 a90:	86 81       	ldd	r24, Z+6	; 0x06
 a92:	97 81       	ldd	r25, Z+7	; 0x07
 a94:	2b 96       	adiw	r28, 0x0b	; 11
 a96:	e2 e1       	ldi	r30, 0x12	; 18
 a98:	72 c1       	rjmp	.+740    	; 0xd7e <__epilogue_restores__>
 a9a:	80 37       	cpi	r24, 0x70	; 112
 a9c:	51 f0       	breq	.+20     	; 0xab2 <__stack+0x1b3>
 a9e:	88 37       	cpi	r24, 0x78	; 120
 aa0:	a9 f7       	brne	.-22     	; 0xa8c <__stack+0x18d>
 aa2:	d4 fe       	sbrs	r13, 4
 aa4:	03 c0       	rjmp	.+6      	; 0xaac <__stack+0x1ad>
 aa6:	fd 2d       	mov	r31, r13
 aa8:	f4 60       	ori	r31, 0x04	; 4
 aaa:	df 2e       	mov	r13, r31
 aac:	20 e1       	ldi	r18, 0x10	; 16
 aae:	30 e0       	ldi	r19, 0x00	; 0
 ab0:	d2 cf       	rjmp	.-92     	; 0xa56 <__stack+0x157>
 ab2:	e9 2f       	mov	r30, r25
 ab4:	e0 61       	ori	r30, 0x10	; 16
 ab6:	de 2e       	mov	r13, r30
 ab8:	f4 cf       	rjmp	.-24     	; 0xaa2 <__stack+0x1a3>
 aba:	34 fe       	sbrs	r3, 4
 abc:	03 c0       	rjmp	.+6      	; 0xac4 <__stack+0x1c5>
 abe:	29 2f       	mov	r18, r25
 ac0:	26 60       	ori	r18, 0x06	; 6
 ac2:	d2 2e       	mov	r13, r18
 ac4:	20 e1       	ldi	r18, 0x10	; 16
 ac6:	32 e0       	ldi	r19, 0x02	; 2
 ac8:	c6 cf       	rjmp	.-116    	; 0xa56 <__stack+0x157>
 aca:	28 e0       	ldi	r18, 0x08	; 8
 acc:	30 e0       	ldi	r19, 0x00	; 0
 ace:	c3 cf       	rjmp	.-122    	; 0xa56 <__stack+0x157>
 ad0:	60 81       	ld	r22, Z
 ad2:	71 81       	ldd	r23, Z+1	; 0x01
 ad4:	80 e0       	ldi	r24, 0x00	; 0
 ad6:	90 e0       	ldi	r25, 0x00	; 0
 ad8:	0e 5f       	subi	r16, 0xFE	; 254
 ada:	1f 4f       	sbci	r17, 0xFF	; 255
 adc:	c6 cf       	rjmp	.-116    	; 0xa6a <__stack+0x16b>
 ade:	dc 2c       	mov	r13, r12
 ae0:	83 2c       	mov	r8, r3
 ae2:	84 fe       	sbrs	r8, 4
 ae4:	47 c0       	rjmp	.+142    	; 0xb74 <__stack+0x275>
 ae6:	ec 2f       	mov	r30, r28
 ae8:	fd 2f       	mov	r31, r29
 aea:	ec 0d       	add	r30, r12
 aec:	f1 1d       	adc	r31, r1
 aee:	80 81       	ld	r24, Z
 af0:	80 33       	cpi	r24, 0x30	; 48
 af2:	c9 f5       	brne	.+114    	; 0xb66 <__stack+0x267>
 af4:	98 2d       	mov	r25, r8
 af6:	99 7e       	andi	r25, 0xE9	; 233
 af8:	89 2e       	mov	r8, r25
 afa:	e8 2d       	mov	r30, r8
 afc:	e8 70       	andi	r30, 0x08	; 8
 afe:	5e 2e       	mov	r5, r30
 b00:	83 fc       	sbrc	r8, 3
 b02:	47 c0       	rjmp	.+142    	; 0xb92 <__stack+0x293>
 b04:	80 fe       	sbrs	r8, 0
 b06:	41 c0       	rjmp	.+130    	; 0xb8a <__stack+0x28b>
 b08:	d2 14       	cp	r13, r2
 b0a:	08 f0       	brcs	.+2      	; 0xb0e <__stack+0x20f>
 b0c:	47 c0       	rjmp	.+142    	; 0xb9c <__stack+0x29d>
 b0e:	2c 0c       	add	r2, r12
 b10:	92 2c       	mov	r9, r2
 b12:	9d 18       	sub	r9, r13
 b14:	84 fe       	sbrs	r8, 4
 b16:	47 c0       	rjmp	.+142    	; 0xba6 <__stack+0x2a7>
 b18:	6e 2d       	mov	r22, r14
 b1a:	7f 2d       	mov	r23, r15
 b1c:	80 e3       	ldi	r24, 0x30	; 48
 b1e:	90 e0       	ldi	r25, 0x00	; 0
 b20:	73 d0       	rcall	.+230    	; 0xc08 <fputc>
 b22:	82 fe       	sbrs	r8, 2
 b24:	07 c0       	rjmp	.+14     	; 0xb34 <__stack+0x235>
 b26:	81 fc       	sbrc	r8, 1
 b28:	3b c0       	rjmp	.+118    	; 0xba0 <__stack+0x2a1>
 b2a:	88 e7       	ldi	r24, 0x78	; 120
 b2c:	90 e0       	ldi	r25, 0x00	; 0
 b2e:	6e 2d       	mov	r22, r14
 b30:	7f 2d       	mov	r23, r15
 b32:	6a d0       	rcall	.+212    	; 0xc08 <fputc>
 b34:	c9 14       	cp	r12, r9
 b36:	08 f4       	brcc	.+2      	; 0xb3a <__stack+0x23b>
 b38:	44 c0       	rjmp	.+136    	; 0xbc2 <__stack+0x2c3>
 b3a:	ca 94       	dec	r12
 b3c:	d1 2c       	mov	r13, r1
 b3e:	ff ef       	ldi	r31, 0xFF	; 255
 b40:	cf 1a       	sub	r12, r31
 b42:	df 0a       	sbc	r13, r31
 b44:	ca 0c       	add	r12, r10
 b46:	db 1c       	adc	r13, r11
 b48:	ec 2d       	mov	r30, r12
 b4a:	fd 2d       	mov	r31, r13
 b4c:	82 91       	ld	r24, -Z
 b4e:	ce 2e       	mov	r12, r30
 b50:	df 2e       	mov	r13, r31
 b52:	6e 2d       	mov	r22, r14
 b54:	7f 2d       	mov	r23, r15
 b56:	90 e0       	ldi	r25, 0x00	; 0
 b58:	57 d0       	rcall	.+174    	; 0xc08 <fputc>
 b5a:	ac 14       	cp	r10, r12
 b5c:	bd 04       	cpc	r11, r13
 b5e:	a1 f7       	brne	.-24     	; 0xb48 <__stack+0x249>
 b60:	ef ce       	rjmp	.-546    	; 0x940 <__stack+0x41>
 b62:	dc 2c       	mov	r13, r12
 b64:	be cf       	rjmp	.-132    	; 0xae2 <__stack+0x1e3>
 b66:	82 fc       	sbrc	r8, 2
 b68:	02 c0       	rjmp	.+4      	; 0xb6e <__stack+0x26f>
 b6a:	d3 94       	inc	r13
 b6c:	c6 cf       	rjmp	.-116    	; 0xafa <__stack+0x1fb>
 b6e:	d3 94       	inc	r13
 b70:	d3 94       	inc	r13
 b72:	c3 cf       	rjmp	.-122    	; 0xafa <__stack+0x1fb>
 b74:	88 2d       	mov	r24, r8
 b76:	86 78       	andi	r24, 0x86	; 134
 b78:	09 f4       	brne	.+2      	; 0xb7c <__stack+0x27d>
 b7a:	bf cf       	rjmp	.-130    	; 0xafa <__stack+0x1fb>
 b7c:	f6 cf       	rjmp	.-20     	; 0xb6a <__stack+0x26b>
 b7e:	6e 2d       	mov	r22, r14
 b80:	7f 2d       	mov	r23, r15
 b82:	80 e2       	ldi	r24, 0x20	; 32
 b84:	90 e0       	ldi	r25, 0x00	; 0
 b86:	40 d0       	rcall	.+128    	; 0xc08 <fputc>
 b88:	d3 94       	inc	r13
 b8a:	d2 14       	cp	r13, r2
 b8c:	c0 f3       	brcs	.-16     	; 0xb7e <__stack+0x27f>
 b8e:	51 2c       	mov	r5, r1
 b90:	c1 cf       	rjmp	.-126    	; 0xb14 <__stack+0x215>
 b92:	d2 14       	cp	r13, r2
 b94:	e0 f7       	brcc	.-8      	; 0xb8e <__stack+0x28f>
 b96:	52 2c       	mov	r5, r2
 b98:	5d 18       	sub	r5, r13
 b9a:	bc cf       	rjmp	.-136    	; 0xb14 <__stack+0x215>
 b9c:	9c 2c       	mov	r9, r12
 b9e:	ba cf       	rjmp	.-140    	; 0xb14 <__stack+0x215>
 ba0:	88 e5       	ldi	r24, 0x58	; 88
 ba2:	90 e0       	ldi	r25, 0x00	; 0
 ba4:	c4 cf       	rjmp	.-120    	; 0xb2e <__stack+0x22f>
 ba6:	88 2d       	mov	r24, r8
 ba8:	86 78       	andi	r24, 0x86	; 134
 baa:	21 f2       	breq	.-120    	; 0xb34 <__stack+0x235>
 bac:	81 fe       	sbrs	r8, 1
 bae:	07 c0       	rjmp	.+14     	; 0xbbe <__stack+0x2bf>
 bb0:	8b e2       	ldi	r24, 0x2B	; 43
 bb2:	87 fc       	sbrc	r8, 7
 bb4:	8d e2       	ldi	r24, 0x2D	; 45
 bb6:	6e 2d       	mov	r22, r14
 bb8:	7f 2d       	mov	r23, r15
 bba:	90 e0       	ldi	r25, 0x00	; 0
 bbc:	ba cf       	rjmp	.-140    	; 0xb32 <__stack+0x233>
 bbe:	80 e2       	ldi	r24, 0x20	; 32
 bc0:	f8 cf       	rjmp	.-16     	; 0xbb2 <__stack+0x2b3>
 bc2:	6e 2d       	mov	r22, r14
 bc4:	7f 2d       	mov	r23, r15
 bc6:	80 e3       	ldi	r24, 0x30	; 48
 bc8:	90 e0       	ldi	r25, 0x00	; 0
 bca:	1e d0       	rcall	.+60     	; 0xc08 <fputc>
 bcc:	9a 94       	dec	r9
 bce:	b2 cf       	rjmp	.-156    	; 0xb34 <__stack+0x235>
 bd0:	8f ef       	ldi	r24, 0xFF	; 255
 bd2:	9f ef       	ldi	r25, 0xFF	; 255
 bd4:	5f cf       	rjmp	.-322    	; 0xa94 <__stack+0x195>

00000bd6 <strnlen_P>:
 bd6:	e8 2f       	mov	r30, r24
 bd8:	f9 2f       	mov	r31, r25
 bda:	c8 95       	lpm
 bdc:	31 96       	adiw	r30, 0x01	; 1
 bde:	61 50       	subi	r22, 0x01	; 1
 be0:	70 40       	sbci	r23, 0x00	; 0
 be2:	01 10       	cpse	r0, r1
 be4:	d0 f7       	brcc	.-12     	; 0xbda <strnlen_P+0x4>
 be6:	80 95       	com	r24
 be8:	90 95       	com	r25
 bea:	8e 0f       	add	r24, r30
 bec:	9f 1f       	adc	r25, r31
 bee:	08 95       	ret

00000bf0 <strnlen>:
 bf0:	e8 2f       	mov	r30, r24
 bf2:	f9 2f       	mov	r31, r25
 bf4:	61 50       	subi	r22, 0x01	; 1
 bf6:	70 40       	sbci	r23, 0x00	; 0
 bf8:	01 90       	ld	r0, Z+
 bfa:	01 10       	cpse	r0, r1
 bfc:	d8 f7       	brcc	.-10     	; 0xbf4 <strnlen+0x4>
 bfe:	80 95       	com	r24
 c00:	90 95       	com	r25
 c02:	8e 0f       	add	r24, r30
 c04:	9f 1f       	adc	r25, r31
 c06:	08 95       	ret

00000c08 <fputc>:
 c08:	0f 93       	push	r16
 c0a:	1f 93       	push	r17
 c0c:	cf 93       	push	r28
 c0e:	df 93       	push	r29
 c10:	18 2f       	mov	r17, r24
 c12:	09 2f       	mov	r16, r25
 c14:	c6 2f       	mov	r28, r22
 c16:	d7 2f       	mov	r29, r23
 c18:	8b 81       	ldd	r24, Y+3	; 0x03
 c1a:	81 fd       	sbrc	r24, 1
 c1c:	09 c0       	rjmp	.+18     	; 0xc30 <fputc+0x28>
 c1e:	1f ef       	ldi	r17, 0xFF	; 255
 c20:	0f ef       	ldi	r16, 0xFF	; 255
 c22:	81 2f       	mov	r24, r17
 c24:	90 2f       	mov	r25, r16
 c26:	df 91       	pop	r29
 c28:	cf 91       	pop	r28
 c2a:	1f 91       	pop	r17
 c2c:	0f 91       	pop	r16
 c2e:	08 95       	ret
 c30:	82 ff       	sbrs	r24, 2
 c32:	15 c0       	rjmp	.+42     	; 0xc5e <fputc+0x56>
 c34:	2e 81       	ldd	r18, Y+6	; 0x06
 c36:	3f 81       	ldd	r19, Y+7	; 0x07
 c38:	8c 81       	ldd	r24, Y+4	; 0x04
 c3a:	9d 81       	ldd	r25, Y+5	; 0x05
 c3c:	28 17       	cp	r18, r24
 c3e:	39 07       	cpc	r19, r25
 c40:	44 f4       	brge	.+16     	; 0xc52 <fputc+0x4a>
 c42:	e8 81       	ld	r30, Y
 c44:	f9 81       	ldd	r31, Y+1	; 0x01
 c46:	8e 2f       	mov	r24, r30
 c48:	9f 2f       	mov	r25, r31
 c4a:	01 96       	adiw	r24, 0x01	; 1
 c4c:	99 83       	std	Y+1, r25	; 0x01
 c4e:	88 83       	st	Y, r24
 c50:	10 83       	st	Z, r17
 c52:	8e 81       	ldd	r24, Y+6	; 0x06
 c54:	9f 81       	ldd	r25, Y+7	; 0x07
 c56:	01 96       	adiw	r24, 0x01	; 1
 c58:	9f 83       	std	Y+7, r25	; 0x07
 c5a:	8e 83       	std	Y+6, r24	; 0x06
 c5c:	e2 cf       	rjmp	.-60     	; 0xc22 <fputc+0x1a>
 c5e:	e8 85       	ldd	r30, Y+8	; 0x08
 c60:	f9 85       	ldd	r31, Y+9	; 0x09
 c62:	81 2f       	mov	r24, r17
 c64:	09 95       	icall
 c66:	89 2b       	or	r24, r25
 c68:	a1 f3       	breq	.-24     	; 0xc52 <fputc+0x4a>
 c6a:	d9 cf       	rjmp	.-78     	; 0xc1e <fputc+0x16>

00000c6c <__ultoa_invert>:
 c6c:	e4 2f       	mov	r30, r20
 c6e:	f5 2f       	mov	r31, r21
 c70:	aa 27       	eor	r26, r26
 c72:	28 30       	cpi	r18, 0x08	; 8
 c74:	69 f1       	breq	.+90     	; 0xcd0 <__ultoa_invert+0x64>
 c76:	20 31       	cpi	r18, 0x10	; 16
 c78:	99 f1       	breq	.+102    	; 0xce0 <__ultoa_invert+0x74>
 c7a:	e8 94       	clt
 c7c:	6f 93       	push	r22
 c7e:	6e 7f       	andi	r22, 0xFE	; 254
 c80:	6e 5f       	subi	r22, 0xFE	; 254
 c82:	7f 4f       	sbci	r23, 0xFF	; 255
 c84:	8f 4f       	sbci	r24, 0xFF	; 255
 c86:	9f 4f       	sbci	r25, 0xFF	; 255
 c88:	af 4f       	sbci	r26, 0xFF	; 255
 c8a:	b1 e0       	ldi	r27, 0x01	; 1
 c8c:	41 d0       	rcall	.+130    	; 0xd10 <__ultoa_invert+0xa4>
 c8e:	b4 e0       	ldi	r27, 0x04	; 4
 c90:	3f d0       	rcall	.+126    	; 0xd10 <__ultoa_invert+0xa4>
 c92:	67 0f       	add	r22, r23
 c94:	78 1f       	adc	r23, r24
 c96:	89 1f       	adc	r24, r25
 c98:	9a 1f       	adc	r25, r26
 c9a:	a1 1d       	adc	r26, r1
 c9c:	68 0f       	add	r22, r24
 c9e:	79 1f       	adc	r23, r25
 ca0:	8a 1f       	adc	r24, r26
 ca2:	91 1d       	adc	r25, r1
 ca4:	a1 1d       	adc	r26, r1
 ca6:	6a 0f       	add	r22, r26
 ca8:	71 1d       	adc	r23, r1
 caa:	81 1d       	adc	r24, r1
 cac:	91 1d       	adc	r25, r1
 cae:	a1 1d       	adc	r26, r1
 cb0:	23 d0       	rcall	.+70     	; 0xcf8 <__ultoa_invert+0x8c>
 cb2:	09 f4       	brne	.+2      	; 0xcb6 <__ultoa_invert+0x4a>
 cb4:	68 94       	set
 cb6:	3f 91       	pop	r19
 cb8:	06 2e       	mov	r0, r22
 cba:	00 0c       	add	r0, r0
 cbc:	30 19       	sub	r19, r0
 cbe:	00 0c       	add	r0, r0
 cc0:	00 0c       	add	r0, r0
 cc2:	30 19       	sub	r19, r0
 cc4:	30 5d       	subi	r19, 0xD0	; 208
 cc6:	31 93       	st	Z+, r19
 cc8:	ce f6       	brtc	.-78     	; 0xc7c <__ultoa_invert+0x10>
 cca:	8e 2f       	mov	r24, r30
 ccc:	9f 2f       	mov	r25, r31
 cce:	08 95       	ret
 cd0:	46 2f       	mov	r20, r22
 cd2:	47 70       	andi	r20, 0x07	; 7
 cd4:	40 5d       	subi	r20, 0xD0	; 208
 cd6:	41 93       	st	Z+, r20
 cd8:	b3 e0       	ldi	r27, 0x03	; 3
 cda:	0f d0       	rcall	.+30     	; 0xcfa <__ultoa_invert+0x8e>
 cdc:	c9 f7       	brne	.-14     	; 0xcd0 <__ultoa_invert+0x64>
 cde:	f5 cf       	rjmp	.-22     	; 0xcca <__ultoa_invert+0x5e>
 ce0:	46 2f       	mov	r20, r22
 ce2:	4f 70       	andi	r20, 0x0F	; 15
 ce4:	40 5d       	subi	r20, 0xD0	; 208
 ce6:	4a 33       	cpi	r20, 0x3A	; 58
 ce8:	18 f0       	brcs	.+6      	; 0xcf0 <__ultoa_invert+0x84>
 cea:	49 5d       	subi	r20, 0xD9	; 217
 cec:	31 fd       	sbrc	r19, 1
 cee:	40 52       	subi	r20, 0x20	; 32
 cf0:	41 93       	st	Z+, r20
 cf2:	02 d0       	rcall	.+4      	; 0xcf8 <__ultoa_invert+0x8c>
 cf4:	a9 f7       	brne	.-22     	; 0xce0 <__ultoa_invert+0x74>
 cf6:	e9 cf       	rjmp	.-46     	; 0xcca <__ultoa_invert+0x5e>
 cf8:	b4 e0       	ldi	r27, 0x04	; 4
 cfa:	a6 95       	lsr	r26
 cfc:	97 95       	ror	r25
 cfe:	87 95       	ror	r24
 d00:	77 95       	ror	r23
 d02:	67 95       	ror	r22
 d04:	ba 95       	dec	r27
 d06:	c9 f7       	brne	.-14     	; 0xcfa <__ultoa_invert+0x8e>
 d08:	00 97       	sbiw	r24, 0x00	; 0
 d0a:	61 05       	cpc	r22, r1
 d0c:	71 05       	cpc	r23, r1
 d0e:	08 95       	ret
 d10:	26 2f       	mov	r18, r22
 d12:	37 2f       	mov	r19, r23
 d14:	48 2f       	mov	r20, r24
 d16:	59 2f       	mov	r21, r25
 d18:	0a 2e       	mov	r0, r26
 d1a:	06 94       	lsr	r0
 d1c:	57 95       	ror	r21
 d1e:	47 95       	ror	r20
 d20:	37 95       	ror	r19
 d22:	27 95       	ror	r18
 d24:	ba 95       	dec	r27
 d26:	c9 f7       	brne	.-14     	; 0xd1a <__ultoa_invert+0xae>
 d28:	62 0f       	add	r22, r18
 d2a:	73 1f       	adc	r23, r19
 d2c:	84 1f       	adc	r24, r20
 d2e:	95 1f       	adc	r25, r21
 d30:	a0 1d       	adc	r26, r0
 d32:	08 95       	ret

00000d34 <__mulqi3>:
 d34:	00 24       	eor	r0, r0

00000d36 <__mulqi3_loop>:
 d36:	80 fd       	sbrc	r24, 0
 d38:	06 0e       	add	r0, r22
 d3a:	66 0f       	add	r22, r22
 d3c:	11 f0       	breq	.+4      	; 0xd42 <__mulqi3_exit>
 d3e:	86 95       	lsr	r24
 d40:	d1 f7       	brne	.-12     	; 0xd36 <__mulqi3_loop>

00000d42 <__mulqi3_exit>:
 d42:	80 2d       	mov	r24, r0
 d44:	08 95       	ret

00000d46 <__prologue_saves__>:
 d46:	2f 92       	push	r2
 d48:	3f 92       	push	r3
 d4a:	4f 92       	push	r4
 d4c:	5f 92       	push	r5
 d4e:	6f 92       	push	r6
 d50:	7f 92       	push	r7
 d52:	8f 92       	push	r8
 d54:	9f 92       	push	r9
 d56:	af 92       	push	r10
 d58:	bf 92       	push	r11
 d5a:	cf 92       	push	r12
 d5c:	df 92       	push	r13
 d5e:	ef 92       	push	r14
 d60:	ff 92       	push	r15
 d62:	0f 93       	push	r16
 d64:	1f 93       	push	r17
 d66:	cf 93       	push	r28
 d68:	df 93       	push	r29
 d6a:	cd b7       	in	r28, 0x3d	; 61
 d6c:	de b7       	in	r29, 0x3e	; 62
 d6e:	ca 1b       	sub	r28, r26
 d70:	db 0b       	sbc	r29, r27
 d72:	0f b6       	in	r0, 0x3f	; 63
 d74:	f8 94       	cli
 d76:	de bf       	out	0x3e, r29	; 62
 d78:	0f be       	out	0x3f, r0	; 63
 d7a:	cd bf       	out	0x3d, r28	; 61
 d7c:	09 94       	ijmp

00000d7e <__epilogue_restores__>:
 d7e:	2a 88       	ldd	r2, Y+18	; 0x12
 d80:	39 88       	ldd	r3, Y+17	; 0x11
 d82:	48 88       	ldd	r4, Y+16	; 0x10
 d84:	5f 84       	ldd	r5, Y+15	; 0x0f
 d86:	6e 84       	ldd	r6, Y+14	; 0x0e
 d88:	7d 84       	ldd	r7, Y+13	; 0x0d
 d8a:	8c 84       	ldd	r8, Y+12	; 0x0c
 d8c:	9b 84       	ldd	r9, Y+11	; 0x0b
 d8e:	aa 84       	ldd	r10, Y+10	; 0x0a
 d90:	b9 84       	ldd	r11, Y+9	; 0x09
 d92:	c8 84       	ldd	r12, Y+8	; 0x08
 d94:	df 80       	ldd	r13, Y+7	; 0x07
 d96:	ee 80       	ldd	r14, Y+6	; 0x06
 d98:	fd 80       	ldd	r15, Y+5	; 0x05
 d9a:	0c 81       	ldd	r16, Y+4	; 0x04
 d9c:	1b 81       	ldd	r17, Y+3	; 0x03
 d9e:	aa 81       	ldd	r26, Y+2	; 0x02
 da0:	b9 81       	ldd	r27, Y+1	; 0x01
 da2:	ce 0f       	add	r28, r30
 da4:	d1 1d       	adc	r29, r1
 da6:	0f b6       	in	r0, 0x3f	; 63
 da8:	f8 94       	cli
 daa:	de bf       	out	0x3e, r29	; 62
 dac:	0f be       	out	0x3f, r0	; 63
 dae:	cd bf       	out	0x3d, r28	; 61
 db0:	ca 2f       	mov	r28, r26
 db2:	db 2f       	mov	r29, r27
 db4:	08 95       	ret

00000db6 <_exit>:
 db6:	f8 94       	cli

00000db8 <__stop_program>:
 db8:	ff cf       	rjmp	.-2      	; 0xdb8 <__stop_program>
