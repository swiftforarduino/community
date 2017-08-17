
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
  40:	0c 94 ba 01 	jmp	0x374	; 0x374 <__vector_16>
  44:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
  48:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
  4c:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
  50:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
  54:	0c 94 03 03 	jmp	0x606	; 0x606 <__vector_21>
  58:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
  5c:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
  60:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
  64:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>

00000068 <__ctors_start>:
  68:	85 03       	fmuls	r16, r21

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
  7c:	ee ea       	ldi	r30, 0xAE	; 174
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
  98:	af 3a       	cpi	r26, 0xAF	; 175
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
  ac:	41 d3       	rcall	.+1666   	; 0x730 <__tablejump2__>
  ae:	c4 33       	cpi	r28, 0x34	; 52
  b0:	d1 07       	cpc	r29, r17
  b2:	c9 f7       	brne	.-14     	; 0xa6 <__do_global_ctors+0x8>
  b4:	0e 94 60 00 	call	0xc0	; 0xc0 <main>
  b8:	0c 94 d5 06 	jmp	0xdaa	; 0xdaa <_exit>

000000bc <__bad_interrupt>:
  bc:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000c0 <main>:
  c0:	ef 92       	push	r14
  c2:	ff 92       	push	r15
  c4:	0f 93       	push	r16
  c6:	1f 93       	push	r17
  c8:	60 91 0a 01 	lds	r22, 0x010A	; 0x80010a <OUTPUT>
  cc:	8d e0       	ldi	r24, 0x0D	; 13
  ce:	0e 94 b8 00 	call	0x170	; 0x170 <_TF3AVR7pinModeFT3pinVs5UInt84modeSb_T_>
  d2:	f0 90 0c 01 	lds	r15, 0x010C	; 0x80010c <HIGH>
  d6:	08 ee       	ldi	r16, 0xE8	; 232
  d8:	13 e0       	ldi	r17, 0x03	; 3
  da:	e0 90 0b 01 	lds	r14, 0x010B	; 0x80010b <LOW>

000000de <LBB0_1>:
  de:	8d e0       	ldi	r24, 0x0D	; 13
  e0:	6f 2d       	mov	r22, r15
  e2:	0e 94 9d 00 	call	0x13a	; 0x13a <_TF3AVR12digitalWriteFT3pinVs5UInt85valueSb_T_>
  e6:	c8 01       	movw	r24, r16
  e8:	0e 94 7e 00 	call	0xfc	; 0xfc <_TF3AVR5delayFT12millisecondsVs6UInt16_T_>
  ec:	8d e0       	ldi	r24, 0x0D	; 13
  ee:	6e 2d       	mov	r22, r14
  f0:	0e 94 9d 00 	call	0x13a	; 0x13a <_TF3AVR12digitalWriteFT3pinVs5UInt85valueSb_T_>
  f4:	c8 01       	movw	r24, r16
  f6:	0e 94 7e 00 	call	0xfc	; 0xfc <_TF3AVR5delayFT12millisecondsVs6UInt16_T_>
  fa:	f1 cf       	rjmp	.-30     	; 0xde <LBB0_1>

000000fc <_TF3AVR5delayFT12millisecondsVs6UInt16_T_>:
  fc:	0e 94 6a 01 	call	0x2d4	; 0x2d4 <_delayMs>
 100:	08 95       	ret

00000102 <_TF3AVR18stringAddCharacterFT4byteVs5UInt8_Sb>:
 102:	0e 94 7e 01 	call	0x2fc	; 0x2fc <_stringAddCharacter>
 106:	08 95       	ret

00000108 <_TF3AVR14stringStartNewFT_T_>:
 108:	0e 94 96 01 	call	0x32c	; 0x32c <_stringStartNew>
 10c:	08 95       	ret

0000010e <_TF3AVR18stringCurrentValueFT_GSQGSPVs4Int8__>:
 10e:	0e 94 9b 01 	call	0x336	; 0x336 <_stringCurrentValue>
 112:	40 e0       	ldi	r20, 0x00	; 0
 114:	50 e0       	ldi	r21, 0x00	; 0
 116:	9c 01       	movw	r18, r24
 118:	ba 01       	movw	r22, r20
 11a:	ca 01       	movw	r24, r20
 11c:	08 95       	ret

0000011e <_TF3AVR14numberToStringFT6numberVs5Int32_GSQGSPVs4Int8__>:
 11e:	0e 94 9e 01 	call	0x33c	; 0x33c <_numberToString>
 122:	40 e0       	ldi	r20, 0x00	; 0
 124:	50 e0       	ldi	r21, 0x00	; 0
 126:	9c 01       	movw	r18, r24
 128:	ba 01       	movw	r22, r20
 12a:	ca 01       	movw	r24, r20
 12c:	08 95       	ret

0000012e <_TF3AVR5ticksFT_Vs6UInt16>:
 12e:	0e 94 79 01 	call	0x2f2	; 0x2f2 <_ticks>
 132:	08 95       	ret

00000134 <_TF3AVR11digitalReadFT3pinVs5UInt8_Sb>:
 134:	0e 94 db 00 	call	0x1b6	; 0x1b6 <_digitalRead>
 138:	08 95       	ret

0000013a <_TF3AVR12digitalWriteFT3pinVs5UInt85valueSb_T_>:
 13a:	83 30       	cpi	r24, 0x03	; 3
 13c:	51 f0       	breq	.+20     	; 0x152 <LBB1_6>
 13e:	85 30       	cpi	r24, 0x05	; 5
 140:	41 f0       	breq	.+16     	; 0x152 <LBB1_6>
 142:	86 30       	cpi	r24, 0x06	; 6
 144:	31 f0       	breq	.+12     	; 0x152 <LBB1_6>
 146:	89 30       	cpi	r24, 0x09	; 9
 148:	21 f0       	breq	.+8      	; 0x152 <LBB1_6>
 14a:	8a 30       	cpi	r24, 0x0A	; 10
 14c:	11 f0       	breq	.+4      	; 0x152 <LBB1_6>
 14e:	8b 30       	cpi	r24, 0x0B	; 11
 150:	59 f4       	brne	.+22     	; 0x168 <LBB1_9>

00000152 <LBB1_6>:
 152:	61 70       	andi	r22, 0x01	; 1
 154:	60 30       	cpi	r22, 0x00	; 0
 156:	21 f0       	breq	.+8      	; 0x160 <LBB1_8>
 158:	6f ef       	ldi	r22, 0xFF	; 255
 15a:	0e 94 d1 01 	call	0x3a2	; 0x3a2 <_analogWrite>
 15e:	08 95       	ret

00000160 <LBB1_8>:
 160:	60 e0       	ldi	r22, 0x00	; 0
 162:	0e 94 d1 01 	call	0x3a2	; 0x3a2 <_analogWrite>
 166:	08 95       	ret

00000168 <LBB1_9>:
 168:	61 70       	andi	r22, 0x01	; 1
 16a:	0e 94 12 01 	call	0x224	; 0x224 <_digitalWrite>
 16e:	08 95       	ret

00000170 <_TF3AVR7pinModeFT3pinVs5UInt84modeSb_T_>:
 170:	61 70       	andi	r22, 0x01	; 1
 172:	0e 94 42 01 	call	0x284	; 0x284 <_pinMode>
 176:	08 95       	ret

00000178 <_TF3AVR11analogWriteFT3pinVs5UInt85valueS0__T_>:
 178:	0e 94 d1 01 	call	0x3a2	; 0x3a2 <_analogWrite>
 17c:	08 95       	ret

0000017e <_TF3AVR14slowAnalogReadFT3pinVs5UInt8_Vs6UInt16>:
 17e:	0e 94 d4 02 	call	0x5a8	; 0x5a8 <_slowAnalogRead>
 182:	08 95       	ret

00000184 <_TF3AVR15analogReadAsyncFT3pinVs5UInt88callbackcVs6UInt16T__T_>:
 184:	40 e0       	ldi	r20, 0x00	; 0
 186:	0e 94 3b 03 	call	0x676	; 0x676 <_analogReadAsync>
 18a:	08 95       	ret

0000018c <pinMask>:
 18c:	88 30       	cpi	r24, 0x08	; 8
 18e:	60 f0       	brcs	.+24     	; 0x1a8 <pinMask+0x1c>
 190:	8e 30       	cpi	r24, 0x0E	; 14
 192:	40 f4       	brcc	.+16     	; 0x1a4 <pinMask+0x18>
 194:	98 ef       	ldi	r25, 0xF8	; 248
 196:	98 0f       	add	r25, r24
 198:	81 e0       	ldi	r24, 0x01	; 1
 19a:	01 c0       	rjmp	.+2      	; 0x19e <pinMask+0x12>
 19c:	88 0f       	add	r24, r24
 19e:	9a 95       	dec	r25
 1a0:	ea f7       	brpl	.-6      	; 0x19c <pinMask+0x10>
 1a2:	08 95       	ret
 1a4:	80 e0       	ldi	r24, 0x00	; 0
 1a6:	08 95       	ret
 1a8:	91 e0       	ldi	r25, 0x01	; 1
 1aa:	01 c0       	rjmp	.+2      	; 0x1ae <pinMask+0x22>
 1ac:	99 0f       	add	r25, r25
 1ae:	8a 95       	dec	r24
 1b0:	ea f7       	brpl	.-6      	; 0x1ac <pinMask+0x20>
 1b2:	89 2f       	mov	r24, r25
 1b4:	08 95       	ret

000001b6 <_digitalRead>:
 1b6:	cf 93       	push	r28
 1b8:	c8 2f       	mov	r28, r24
 1ba:	0e 94 c6 00 	call	0x18c	; 0x18c <pinMask>
 1be:	88 23       	and	r24, r24
 1c0:	31 f0       	breq	.+12     	; 0x1ce <_digitalRead+0x18>
 1c2:	c8 30       	cpi	r28, 0x08	; 8
 1c4:	38 f0       	brcs	.+14     	; 0x1d4 <_digitalRead+0x1e>
 1c6:	93 b1       	in	r25, 0x03	; 3
 1c8:	98 23       	and	r25, r24
 1ca:	81 e0       	ldi	r24, 0x01	; 1
 1cc:	09 f4       	brne	.+2      	; 0x1d0 <_digitalRead+0x1a>
 1ce:	80 e0       	ldi	r24, 0x00	; 0
 1d0:	cf 91       	pop	r28
 1d2:	08 95       	ret
 1d4:	99 b1       	in	r25, 0x09	; 9
 1d6:	98 23       	and	r25, r24
 1d8:	81 e0       	ldi	r24, 0x01	; 1
 1da:	c9 f3       	breq	.-14     	; 0x1ce <_digitalRead+0x18>
 1dc:	cf 91       	pop	r28
 1de:	08 95       	ret

000001e0 <resetPortD>:
 1e0:	0e 94 c6 00 	call	0x18c	; 0x18c <pinMask>
 1e4:	88 23       	and	r24, r24
 1e6:	21 f0       	breq	.+8      	; 0x1f0 <resetPortD+0x10>
 1e8:	9b b1       	in	r25, 0x0b	; 11
 1ea:	80 95       	com	r24
 1ec:	89 23       	and	r24, r25
 1ee:	8b b9       	out	0x0b, r24	; 11
 1f0:	08 95       	ret

000001f2 <resetPortB>:
 1f2:	0e 94 c6 00 	call	0x18c	; 0x18c <pinMask>
 1f6:	88 23       	and	r24, r24
 1f8:	21 f0       	breq	.+8      	; 0x202 <resetPortB+0x10>
 1fa:	95 b1       	in	r25, 0x05	; 5
 1fc:	80 95       	com	r24
 1fe:	89 23       	and	r24, r25
 200:	85 b9       	out	0x05, r24	; 5
 202:	08 95       	ret

00000204 <setPortD>:
 204:	0e 94 c6 00 	call	0x18c	; 0x18c <pinMask>
 208:	88 23       	and	r24, r24
 20a:	19 f0       	breq	.+6      	; 0x212 <setPortD+0xe>
 20c:	9b b1       	in	r25, 0x0b	; 11
 20e:	89 2b       	or	r24, r25
 210:	8b b9       	out	0x0b, r24	; 11
 212:	08 95       	ret

00000214 <setPortB>:
 214:	0e 94 c6 00 	call	0x18c	; 0x18c <pinMask>
 218:	88 23       	and	r24, r24
 21a:	19 f0       	breq	.+6      	; 0x222 <setPortB+0xe>
 21c:	95 b1       	in	r25, 0x05	; 5
 21e:	89 2b       	or	r24, r25
 220:	85 b9       	out	0x05, r24	; 5
 222:	08 95       	ret

00000224 <_digitalWrite>:
 224:	66 23       	and	r22, r22
 226:	21 f0       	breq	.+8      	; 0x230 <_digitalWrite+0xc>
 228:	88 30       	cpi	r24, 0x08	; 8
 22a:	30 f4       	brcc	.+12     	; 0x238 <_digitalWrite+0x14>
 22c:	0c 94 02 01 	jmp	0x204	; 0x204 <setPortD>
 230:	88 30       	cpi	r24, 0x08	; 8
 232:	20 f0       	brcs	.+8      	; 0x23c <_digitalWrite+0x18>
 234:	0c 94 f9 00 	jmp	0x1f2	; 0x1f2 <resetPortB>
 238:	0c 94 0a 01 	jmp	0x214	; 0x214 <setPortB>
 23c:	0c 94 f0 00 	jmp	0x1e0	; 0x1e0 <resetPortD>

00000240 <enablePortDWrite>:
 240:	0e 94 c6 00 	call	0x18c	; 0x18c <pinMask>
 244:	88 23       	and	r24, r24
 246:	19 f0       	breq	.+6      	; 0x24e <enablePortDWrite+0xe>
 248:	9a b1       	in	r25, 0x0a	; 10
 24a:	89 2b       	or	r24, r25
 24c:	8a b9       	out	0x0a, r24	; 10
 24e:	08 95       	ret

00000250 <enablePortBWrite>:
 250:	0e 94 c6 00 	call	0x18c	; 0x18c <pinMask>
 254:	88 23       	and	r24, r24
 256:	19 f0       	breq	.+6      	; 0x25e <enablePortBWrite+0xe>
 258:	94 b1       	in	r25, 0x04	; 4
 25a:	89 2b       	or	r24, r25
 25c:	84 b9       	out	0x04, r24	; 4
 25e:	08 95       	ret

00000260 <disablePortDWrite>:
 260:	0e 94 c6 00 	call	0x18c	; 0x18c <pinMask>
 264:	88 23       	and	r24, r24
 266:	21 f0       	breq	.+8      	; 0x270 <disablePortDWrite+0x10>
 268:	9a b1       	in	r25, 0x0a	; 10
 26a:	80 95       	com	r24
 26c:	89 23       	and	r24, r25
 26e:	8a b9       	out	0x0a, r24	; 10
 270:	08 95       	ret

00000272 <disablePortBWrite>:
 272:	0e 94 c6 00 	call	0x18c	; 0x18c <pinMask>
 276:	88 23       	and	r24, r24
 278:	21 f0       	breq	.+8      	; 0x282 <disablePortBWrite+0x10>
 27a:	94 b1       	in	r25, 0x04	; 4
 27c:	80 95       	com	r24
 27e:	89 23       	and	r24, r25
 280:	84 b9       	out	0x04, r24	; 4
 282:	08 95       	ret

00000284 <_pinMode>:
 284:	66 23       	and	r22, r22
 286:	51 f0       	breq	.+20     	; 0x29c <_pinMode+0x18>
 288:	88 30       	cpi	r24, 0x08	; 8
 28a:	e0 f4       	brcc	.+56     	; 0x2c4 <_pinMode+0x40>
 28c:	0e 94 c6 00 	call	0x18c	; 0x18c <pinMask>
 290:	88 23       	and	r24, r24
 292:	b9 f0       	breq	.+46     	; 0x2c2 <_pinMode+0x3e>
 294:	9a b1       	in	r25, 0x0a	; 10
 296:	89 2b       	or	r24, r25
 298:	8a b9       	out	0x0a, r24	; 10
 29a:	08 95       	ret
 29c:	88 30       	cpi	r24, 0x08	; 8
 29e:	48 f4       	brcc	.+18     	; 0x2b2 <_pinMode+0x2e>
 2a0:	0e 94 c6 00 	call	0x18c	; 0x18c <pinMask>
 2a4:	88 23       	and	r24, r24
 2a6:	69 f0       	breq	.+26     	; 0x2c2 <_pinMode+0x3e>
 2a8:	9a b1       	in	r25, 0x0a	; 10
 2aa:	80 95       	com	r24
 2ac:	89 23       	and	r24, r25
 2ae:	8a b9       	out	0x0a, r24	; 10
 2b0:	08 95       	ret
 2b2:	0e 94 c6 00 	call	0x18c	; 0x18c <pinMask>
 2b6:	88 23       	and	r24, r24
 2b8:	21 f0       	breq	.+8      	; 0x2c2 <_pinMode+0x3e>
 2ba:	94 b1       	in	r25, 0x04	; 4
 2bc:	80 95       	com	r24
 2be:	89 23       	and	r24, r25
 2c0:	84 b9       	out	0x04, r24	; 4
 2c2:	08 95       	ret
 2c4:	0e 94 c6 00 	call	0x18c	; 0x18c <pinMask>
 2c8:	88 23       	and	r24, r24
 2ca:	d9 f3       	breq	.-10     	; 0x2c2 <_pinMode+0x3e>
 2cc:	94 b1       	in	r25, 0x04	; 4
 2ce:	89 2b       	or	r24, r25
 2d0:	84 b9       	out	0x04, r24	; 4
 2d2:	08 95       	ret

000002d4 <_delayMs>:
 2d4:	00 97       	sbiw	r24, 0x00	; 0
 2d6:	61 f0       	breq	.+24     	; 0x2f0 <_delayMs+0x1c>
 2d8:	20 e0       	ldi	r18, 0x00	; 0
 2da:	30 e0       	ldi	r19, 0x00	; 0
 2dc:	40 ea       	ldi	r20, 0xA0	; 160
 2de:	5f e0       	ldi	r21, 0x0F	; 15
 2e0:	fa 01       	movw	r30, r20
 2e2:	31 97       	sbiw	r30, 0x01	; 1
 2e4:	f1 f7       	brne	.-4      	; 0x2e2 <_delayMs+0xe>
 2e6:	2f 5f       	subi	r18, 0xFF	; 255
 2e8:	3f 4f       	sbci	r19, 0xFF	; 255
 2ea:	82 17       	cp	r24, r18
 2ec:	93 07       	cpc	r25, r19
 2ee:	c1 f7       	brne	.-16     	; 0x2e0 <_delayMs+0xc>
 2f0:	08 95       	ret

000002f2 <_ticks>:
 2f2:	80 91 18 01 	lds	r24, 0x0118	; 0x800118 <__data_end>
 2f6:	90 91 19 01 	lds	r25, 0x0119	; 0x800119 <__data_end+0x1>
 2fa:	08 95       	ret

000002fc <_stringAddCharacter>:
 2fc:	e0 91 29 01 	lds	r30, 0x0129	; 0x800129 <stringBufferEnd>
 300:	ef 37       	cpi	r30, 0x7F	; 127
 302:	91 f0       	breq	.+36     	; 0x328 <_stringAddCharacter+0x2c>
 304:	91 e0       	ldi	r25, 0x01	; 1
 306:	9e 0f       	add	r25, r30
 308:	90 93 29 01 	sts	0x0129, r25	; 0x800129 <stringBufferEnd>
 30c:	0e 2e       	mov	r0, r30
 30e:	00 0c       	add	r0, r0
 310:	ff 0b       	sbc	r31, r31
 312:	e6 5d       	subi	r30, 0xD6	; 214
 314:	fe 4f       	sbci	r31, 0xFE	; 254
 316:	80 83       	st	Z, r24
 318:	e9 2f       	mov	r30, r25
 31a:	99 0f       	add	r25, r25
 31c:	ff 0b       	sbc	r31, r31
 31e:	e6 5d       	subi	r30, 0xD6	; 214
 320:	fe 4f       	sbci	r31, 0xFE	; 254
 322:	10 82       	st	Z, r1
 324:	81 e0       	ldi	r24, 0x01	; 1
 326:	08 95       	ret
 328:	80 e0       	ldi	r24, 0x00	; 0
 32a:	08 95       	ret

0000032c <_stringStartNew>:
 32c:	10 92 29 01 	sts	0x0129, r1	; 0x800129 <stringBufferEnd>
 330:	10 92 2a 01 	sts	0x012A, r1	; 0x80012a <stringBuffer>
 334:	08 95       	ret

00000336 <_stringCurrentValue>:
 336:	8a e2       	ldi	r24, 0x2A	; 42
 338:	91 e0       	ldi	r25, 0x01	; 1
 33a:	08 95       	ret

0000033c <_numberToString>:
 33c:	9f 93       	push	r25
 33e:	8f 93       	push	r24
 340:	7f 93       	push	r23
 342:	6f 93       	push	r22
 344:	81 e1       	ldi	r24, 0x11	; 17
 346:	91 e0       	ldi	r25, 0x01	; 1
 348:	9f 93       	push	r25
 34a:	8f 93       	push	r24
 34c:	1f 92       	push	r1
 34e:	8f e0       	ldi	r24, 0x0F	; 15
 350:	8f 93       	push	r24
 352:	8a e1       	ldi	r24, 0x1A	; 26
 354:	91 e0       	ldi	r25, 0x01	; 1
 356:	9f 93       	push	r25
 358:	8f 93       	push	r24
 35a:	0e 94 a0 03 	call	0x740	; 0x740 <snprintf>
 35e:	8d b7       	in	r24, 0x3d	; 61
 360:	9e b7       	in	r25, 0x3e	; 62
 362:	0a 96       	adiw	r24, 0x0a	; 10
 364:	0f b6       	in	r0, 0x3f	; 63
 366:	f8 94       	cli
 368:	9e bf       	out	0x3e, r25	; 62
 36a:	0f be       	out	0x3f, r0	; 63
 36c:	8d bf       	out	0x3d, r24	; 61
 36e:	8a e1       	ldi	r24, 0x1A	; 26
 370:	91 e0       	ldi	r25, 0x01	; 1
 372:	08 95       	ret

00000374 <__vector_16>:
 374:	1f 92       	push	r1
 376:	0f 92       	push	r0
 378:	0f b6       	in	r0, 0x3f	; 63
 37a:	0f 92       	push	r0
 37c:	11 24       	eor	r1, r1
 37e:	8f 93       	push	r24
 380:	9f 93       	push	r25
 382:	80 91 18 01 	lds	r24, 0x0118	; 0x800118 <__data_end>
 386:	90 91 19 01 	lds	r25, 0x0119	; 0x800119 <__data_end+0x1>
 38a:	01 96       	adiw	r24, 0x01	; 1
 38c:	90 93 19 01 	sts	0x0119, r25	; 0x800119 <__data_end+0x1>
 390:	80 93 18 01 	sts	0x0118, r24	; 0x800118 <__data_end>
 394:	9f 91       	pop	r25
 396:	8f 91       	pop	r24
 398:	0f 90       	pop	r0
 39a:	0f be       	out	0x3f, r0	; 63
 39c:	0f 90       	pop	r0
 39e:	1f 90       	pop	r1
 3a0:	18 95       	reti

000003a2 <_analogWrite>:
 3a2:	cf 93       	push	r28
 3a4:	df 93       	push	r29
 3a6:	c8 2f       	mov	r28, r24
 3a8:	d6 2f       	mov	r29, r22
 3aa:	60 91 0e 01 	lds	r22, 0x010E	; 0x80010e <_OUTPUT>
 3ae:	0e 94 42 01 	call	0x284	; 0x284 <_pinMode>
 3b2:	c6 30       	cpi	r28, 0x06	; 6
 3b4:	09 f4       	brne	.+2      	; 0x3b8 <_analogWrite+0x16>
 3b6:	5b c0       	rjmp	.+182    	; 0x46e <__FUSE_REGION_LENGTH__+0x6e>
 3b8:	50 f0       	brcs	.+20     	; 0x3ce <_analogWrite+0x2c>
 3ba:	ca 30       	cpi	r28, 0x0A	; 10
 3bc:	b9 f0       	breq	.+46     	; 0x3ec <_analogWrite+0x4a>
 3be:	cb 30       	cpi	r28, 0x0B	; 11
 3c0:	09 f4       	brne	.+2      	; 0x3c4 <_analogWrite+0x22>
 3c2:	46 c0       	rjmp	.+140    	; 0x450 <__FUSE_REGION_LENGTH__+0x50>
 3c4:	c9 30       	cpi	r28, 0x09	; 9
 3c6:	21 f1       	breq	.+72     	; 0x410 <__FUSE_REGION_LENGTH__+0x10>
 3c8:	df 91       	pop	r29
 3ca:	cf 91       	pop	r28
 3cc:	08 95       	ret
 3ce:	c3 30       	cpi	r28, 0x03	; 3
 3d0:	89 f1       	breq	.+98     	; 0x434 <__FUSE_REGION_LENGTH__+0x34>
 3d2:	c5 30       	cpi	r28, 0x05	; 5
 3d4:	c9 f7       	brne	.-14     	; 0x3c8 <_analogWrite+0x26>
 3d6:	84 b5       	in	r24, 0x24	; 36
 3d8:	dd 23       	and	r29, r29
 3da:	09 f4       	brne	.+2      	; 0x3de <_analogWrite+0x3c>
 3dc:	52 c0       	rjmp	.+164    	; 0x482 <__FUSE_REGION_LENGTH__+0x82>
 3de:	df 3f       	cpi	r29, 0xFF	; 255
 3e0:	09 f4       	brne	.+2      	; 0x3e4 <_analogWrite+0x42>
 3e2:	9e c0       	rjmp	.+316    	; 0x520 <__FUSE_REGION_LENGTH__+0x120>
 3e4:	80 62       	ori	r24, 0x20	; 32
 3e6:	84 bd       	out	0x24, r24	; 36
 3e8:	d8 bd       	out	0x28, r29	; 40
 3ea:	ee cf       	rjmp	.-36     	; 0x3c8 <_analogWrite+0x26>
 3ec:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
 3f0:	dd 23       	and	r29, r29
 3f2:	09 f4       	brne	.+2      	; 0x3f6 <_analogWrite+0x54>
 3f4:	7b c0       	rjmp	.+246    	; 0x4ec <__FUSE_REGION_LENGTH__+0xec>
 3f6:	df 3f       	cpi	r29, 0xFF	; 255
 3f8:	09 f4       	brne	.+2      	; 0x3fc <_analogWrite+0x5a>
 3fa:	85 c0       	rjmp	.+266    	; 0x506 <__FUSE_REGION_LENGTH__+0x106>
 3fc:	80 62       	ori	r24, 0x20	; 32
 3fe:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
 402:	6d 2f       	mov	r22, r29
 404:	70 e0       	ldi	r23, 0x00	; 0
 406:	70 93 8b 00 	sts	0x008B, r23	; 0x80008b <__TEXT_REGION_LENGTH__+0x7e008b>
 40a:	60 93 8a 00 	sts	0x008A, r22	; 0x80008a <__TEXT_REGION_LENGTH__+0x7e008a>
 40e:	dc cf       	rjmp	.-72     	; 0x3c8 <_analogWrite+0x26>
 410:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
 414:	dd 23       	and	r29, r29
 416:	09 f4       	brne	.+2      	; 0x41a <__FUSE_REGION_LENGTH__+0x1a>
 418:	5c c0       	rjmp	.+184    	; 0x4d2 <__FUSE_REGION_LENGTH__+0xd2>
 41a:	df 3f       	cpi	r29, 0xFF	; 255
 41c:	09 f4       	brne	.+2      	; 0x420 <__FUSE_REGION_LENGTH__+0x20>
 41e:	94 c0       	rjmp	.+296    	; 0x548 <__FUSE_REGION_LENGTH__+0x148>
 420:	80 68       	ori	r24, 0x80	; 128
 422:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
 426:	6d 2f       	mov	r22, r29
 428:	70 e0       	ldi	r23, 0x00	; 0
 42a:	70 93 89 00 	sts	0x0089, r23	; 0x800089 <__TEXT_REGION_LENGTH__+0x7e0089>
 42e:	60 93 88 00 	sts	0x0088, r22	; 0x800088 <__TEXT_REGION_LENGTH__+0x7e0088>
 432:	ca cf       	rjmp	.-108    	; 0x3c8 <_analogWrite+0x26>
 434:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
 438:	dd 23       	and	r29, r29
 43a:	09 f4       	brne	.+2      	; 0x43e <__FUSE_REGION_LENGTH__+0x3e>
 43c:	3f c0       	rjmp	.+126    	; 0x4bc <__FUSE_REGION_LENGTH__+0xbc>
 43e:	df 3f       	cpi	r29, 0xFF	; 255
 440:	09 f4       	brne	.+2      	; 0x444 <__FUSE_REGION_LENGTH__+0x44>
 442:	77 c0       	rjmp	.+238    	; 0x532 <__FUSE_REGION_LENGTH__+0x132>
 444:	80 62       	ori	r24, 0x20	; 32
 446:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
 44a:	d0 93 b4 00 	sts	0x00B4, r29	; 0x8000b4 <__TEXT_REGION_LENGTH__+0x7e00b4>
 44e:	bc cf       	rjmp	.-136    	; 0x3c8 <_analogWrite+0x26>
 450:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
 454:	dd 23       	and	r29, r29
 456:	39 f1       	breq	.+78     	; 0x4a6 <__FUSE_REGION_LENGTH__+0xa6>
 458:	df 3f       	cpi	r29, 0xFF	; 255
 45a:	09 f4       	brne	.+2      	; 0x45e <__FUSE_REGION_LENGTH__+0x5e>
 45c:	8b c0       	rjmp	.+278    	; 0x574 <__FUSE_REGION_LENGTH__+0x174>
 45e:	80 68       	ori	r24, 0x80	; 128
 460:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
 464:	d0 93 b3 00 	sts	0x00B3, r29	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
 468:	df 91       	pop	r29
 46a:	cf 91       	pop	r28
 46c:	08 95       	ret
 46e:	84 b5       	in	r24, 0x24	; 36
 470:	dd 23       	and	r29, r29
 472:	81 f0       	breq	.+32     	; 0x494 <__FUSE_REGION_LENGTH__+0x94>
 474:	df 3f       	cpi	r29, 0xFF	; 255
 476:	09 f4       	brne	.+2      	; 0x47a <__FUSE_REGION_LENGTH__+0x7a>
 478:	74 c0       	rjmp	.+232    	; 0x562 <__FUSE_REGION_LENGTH__+0x162>
 47a:	80 68       	ori	r24, 0x80	; 128
 47c:	84 bd       	out	0x24, r24	; 36
 47e:	d7 bd       	out	0x27, r29	; 39
 480:	a3 cf       	rjmp	.-186    	; 0x3c8 <_analogWrite+0x26>
 482:	8f 7d       	andi	r24, 0xDF	; 223
 484:	84 bd       	out	0x24, r24	; 36
 486:	60 91 0f 01 	lds	r22, 0x010F	; 0x80010f <_LOW>
 48a:	85 e0       	ldi	r24, 0x05	; 5
 48c:	0e 94 12 01 	call	0x224	; 0x224 <_digitalWrite>
 490:	18 bc       	out	0x28, r1	; 40
 492:	9a cf       	rjmp	.-204    	; 0x3c8 <_analogWrite+0x26>
 494:	8f 77       	andi	r24, 0x7F	; 127
 496:	84 bd       	out	0x24, r24	; 36
 498:	60 91 0f 01 	lds	r22, 0x010F	; 0x80010f <_LOW>
 49c:	86 e0       	ldi	r24, 0x06	; 6
 49e:	0e 94 12 01 	call	0x224	; 0x224 <_digitalWrite>
 4a2:	17 bc       	out	0x27, r1	; 39
 4a4:	91 cf       	rjmp	.-222    	; 0x3c8 <_analogWrite+0x26>
 4a6:	8f 77       	andi	r24, 0x7F	; 127
 4a8:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
 4ac:	60 91 0f 01 	lds	r22, 0x010F	; 0x80010f <_LOW>
 4b0:	8b e0       	ldi	r24, 0x0B	; 11
 4b2:	0e 94 12 01 	call	0x224	; 0x224 <_digitalWrite>
 4b6:	10 92 b3 00 	sts	0x00B3, r1	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
 4ba:	86 cf       	rjmp	.-244    	; 0x3c8 <_analogWrite+0x26>
 4bc:	8f 7d       	andi	r24, 0xDF	; 223
 4be:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
 4c2:	60 91 0f 01 	lds	r22, 0x010F	; 0x80010f <_LOW>
 4c6:	83 e0       	ldi	r24, 0x03	; 3
 4c8:	0e 94 12 01 	call	0x224	; 0x224 <_digitalWrite>
 4cc:	10 92 b4 00 	sts	0x00B4, r1	; 0x8000b4 <__TEXT_REGION_LENGTH__+0x7e00b4>
 4d0:	7b cf       	rjmp	.-266    	; 0x3c8 <_analogWrite+0x26>
 4d2:	8f 77       	andi	r24, 0x7F	; 127
 4d4:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
 4d8:	60 91 0f 01 	lds	r22, 0x010F	; 0x80010f <_LOW>
 4dc:	89 e0       	ldi	r24, 0x09	; 9
 4de:	0e 94 12 01 	call	0x224	; 0x224 <_digitalWrite>
 4e2:	10 92 89 00 	sts	0x0089, r1	; 0x800089 <__TEXT_REGION_LENGTH__+0x7e0089>
 4e6:	10 92 88 00 	sts	0x0088, r1	; 0x800088 <__TEXT_REGION_LENGTH__+0x7e0088>
 4ea:	6e cf       	rjmp	.-292    	; 0x3c8 <_analogWrite+0x26>
 4ec:	8f 7d       	andi	r24, 0xDF	; 223
 4ee:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
 4f2:	60 91 0f 01 	lds	r22, 0x010F	; 0x80010f <_LOW>
 4f6:	8a e0       	ldi	r24, 0x0A	; 10
 4f8:	0e 94 12 01 	call	0x224	; 0x224 <_digitalWrite>
 4fc:	10 92 8b 00 	sts	0x008B, r1	; 0x80008b <__TEXT_REGION_LENGTH__+0x7e008b>
 500:	10 92 8a 00 	sts	0x008A, r1	; 0x80008a <__TEXT_REGION_LENGTH__+0x7e008a>
 504:	61 cf       	rjmp	.-318    	; 0x3c8 <_analogWrite+0x26>
 506:	8f 7d       	andi	r24, 0xDF	; 223
 508:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
 50c:	60 91 10 01 	lds	r22, 0x0110	; 0x800110 <_HIGH>
 510:	8a e0       	ldi	r24, 0x0A	; 10
 512:	0e 94 12 01 	call	0x224	; 0x224 <_digitalWrite>
 516:	10 92 8b 00 	sts	0x008B, r1	; 0x80008b <__TEXT_REGION_LENGTH__+0x7e008b>
 51a:	10 92 8a 00 	sts	0x008A, r1	; 0x80008a <__TEXT_REGION_LENGTH__+0x7e008a>
 51e:	54 cf       	rjmp	.-344    	; 0x3c8 <_analogWrite+0x26>
 520:	8f 7d       	andi	r24, 0xDF	; 223
 522:	84 bd       	out	0x24, r24	; 36
 524:	60 91 10 01 	lds	r22, 0x0110	; 0x800110 <_HIGH>
 528:	85 e0       	ldi	r24, 0x05	; 5
 52a:	0e 94 12 01 	call	0x224	; 0x224 <_digitalWrite>
 52e:	18 bc       	out	0x28, r1	; 40
 530:	4b cf       	rjmp	.-362    	; 0x3c8 <_analogWrite+0x26>
 532:	8f 7d       	andi	r24, 0xDF	; 223
 534:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
 538:	60 91 10 01 	lds	r22, 0x0110	; 0x800110 <_HIGH>
 53c:	83 e0       	ldi	r24, 0x03	; 3
 53e:	0e 94 12 01 	call	0x224	; 0x224 <_digitalWrite>
 542:	10 92 b4 00 	sts	0x00B4, r1	; 0x8000b4 <__TEXT_REGION_LENGTH__+0x7e00b4>
 546:	40 cf       	rjmp	.-384    	; 0x3c8 <_analogWrite+0x26>
 548:	8f 77       	andi	r24, 0x7F	; 127
 54a:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
 54e:	60 91 10 01 	lds	r22, 0x0110	; 0x800110 <_HIGH>
 552:	89 e0       	ldi	r24, 0x09	; 9
 554:	0e 94 12 01 	call	0x224	; 0x224 <_digitalWrite>
 558:	10 92 89 00 	sts	0x0089, r1	; 0x800089 <__TEXT_REGION_LENGTH__+0x7e0089>
 55c:	10 92 88 00 	sts	0x0088, r1	; 0x800088 <__TEXT_REGION_LENGTH__+0x7e0088>
 560:	33 cf       	rjmp	.-410    	; 0x3c8 <_analogWrite+0x26>
 562:	8f 77       	andi	r24, 0x7F	; 127
 564:	84 bd       	out	0x24, r24	; 36
 566:	60 91 10 01 	lds	r22, 0x0110	; 0x800110 <_HIGH>
 56a:	86 e0       	ldi	r24, 0x06	; 6
 56c:	0e 94 12 01 	call	0x224	; 0x224 <_digitalWrite>
 570:	17 bc       	out	0x27, r1	; 39
 572:	2a cf       	rjmp	.-428    	; 0x3c8 <_analogWrite+0x26>
 574:	8f 77       	andi	r24, 0x7F	; 127
 576:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
 57a:	60 91 10 01 	lds	r22, 0x0110	; 0x800110 <_HIGH>
 57e:	8b e0       	ldi	r24, 0x0B	; 11
 580:	0e 94 12 01 	call	0x224	; 0x224 <_digitalWrite>
 584:	10 92 b3 00 	sts	0x00B3, r1	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
 588:	1f cf       	rjmp	.-450    	; 0x3c8 <_analogWrite+0x26>

0000058a <_startupADC>:
 58a:	87 e8       	ldi	r24, 0x87	; 135
 58c:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 590:	8a e0       	ldi	r24, 0x0A	; 10
 592:	90 e0       	ldi	r25, 0x00	; 0
 594:	0e 94 6a 01 	call	0x2d4	; 0x2d4 <_delayMs>
 598:	61 e0       	ldi	r22, 0x01	; 1
 59a:	8d e0       	ldi	r24, 0x0D	; 13
 59c:	0e 94 42 01 	call	0x284	; 0x284 <_pinMode>
 5a0:	60 e0       	ldi	r22, 0x00	; 0
 5a2:	8d e0       	ldi	r24, 0x0D	; 13
 5a4:	0c 94 12 01 	jmp	0x224	; 0x224 <_digitalWrite>

000005a8 <_slowAnalogRead>:
 5a8:	cf 93       	push	r28
 5aa:	c8 2f       	mov	r28, r24
 5ac:	88 30       	cpi	r24, 0x08	; 8
 5ae:	38 f5       	brcc	.+78     	; 0x5fe <_slowAnalogRead+0x56>
 5b0:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 5b4:	87 fd       	sbrc	r24, 7
 5b6:	0f c0       	rjmp	.+30     	; 0x5d6 <_slowAnalogRead+0x2e>
 5b8:	87 e8       	ldi	r24, 0x87	; 135
 5ba:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 5be:	8a e0       	ldi	r24, 0x0A	; 10
 5c0:	90 e0       	ldi	r25, 0x00	; 0
 5c2:	0e 94 6a 01 	call	0x2d4	; 0x2d4 <_delayMs>
 5c6:	61 e0       	ldi	r22, 0x01	; 1
 5c8:	8d e0       	ldi	r24, 0x0D	; 13
 5ca:	0e 94 42 01 	call	0x284	; 0x284 <_pinMode>
 5ce:	60 e0       	ldi	r22, 0x00	; 0
 5d0:	8d e0       	ldi	r24, 0x0D	; 13
 5d2:	0e 94 12 01 	call	0x224	; 0x224 <_digitalWrite>
 5d6:	c0 64       	ori	r28, 0x40	; 64
 5d8:	c0 93 7c 00 	sts	0x007C, r28	; 0x80007c <__TEXT_REGION_LENGTH__+0x7e007c>
 5dc:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 5e0:	80 64       	ori	r24, 0x40	; 64
 5e2:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 5e6:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 5ea:	86 fd       	sbrc	r24, 6
 5ec:	fc cf       	rjmp	.-8      	; 0x5e6 <_slowAnalogRead+0x3e>
 5ee:	80 91 78 00 	lds	r24, 0x0078	; 0x800078 <__TEXT_REGION_LENGTH__+0x7e0078>
 5f2:	20 91 79 00 	lds	r18, 0x0079	; 0x800079 <__TEXT_REGION_LENGTH__+0x7e0079>
 5f6:	90 e0       	ldi	r25, 0x00	; 0
 5f8:	92 2b       	or	r25, r18
 5fa:	cf 91       	pop	r28
 5fc:	08 95       	ret
 5fe:	80 e0       	ldi	r24, 0x00	; 0
 600:	90 e0       	ldi	r25, 0x00	; 0
 602:	cf 91       	pop	r28
 604:	08 95       	ret

00000606 <__vector_21>:
 606:	1f 92       	push	r1
 608:	0f 92       	push	r0
 60a:	0f b6       	in	r0, 0x3f	; 63
 60c:	0f 92       	push	r0
 60e:	11 24       	eor	r1, r1
 610:	2f 93       	push	r18
 612:	3f 93       	push	r19
 614:	4f 93       	push	r20
 616:	5f 93       	push	r21
 618:	6f 93       	push	r22
 61a:	7f 93       	push	r23
 61c:	8f 93       	push	r24
 61e:	9f 93       	push	r25
 620:	af 93       	push	r26
 622:	bf 93       	push	r27
 624:	ef 93       	push	r30
 626:	ff 93       	push	r31
 628:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 62c:	87 7f       	andi	r24, 0xF7	; 247
 62e:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 632:	e0 91 ad 01 	lds	r30, 0x01AD	; 0x8001ad <currentCallback>
 636:	f0 91 ae 01 	lds	r31, 0x01AE	; 0x8001ae <currentCallback+0x1>
 63a:	30 97       	sbiw	r30, 0x00	; 0
 63c:	59 f0       	breq	.+22     	; 0x654 <__vector_21+0x4e>
 63e:	80 91 78 00 	lds	r24, 0x0078	; 0x800078 <__TEXT_REGION_LENGTH__+0x7e0078>
 642:	20 91 79 00 	lds	r18, 0x0079	; 0x800079 <__TEXT_REGION_LENGTH__+0x7e0079>
 646:	90 e0       	ldi	r25, 0x00	; 0
 648:	92 2b       	or	r25, r18
 64a:	09 95       	icall
 64c:	10 92 ae 01 	sts	0x01AE, r1	; 0x8001ae <currentCallback+0x1>
 650:	10 92 ad 01 	sts	0x01AD, r1	; 0x8001ad <currentCallback>
 654:	ff 91       	pop	r31
 656:	ef 91       	pop	r30
 658:	bf 91       	pop	r27
 65a:	af 91       	pop	r26
 65c:	9f 91       	pop	r25
 65e:	8f 91       	pop	r24
 660:	7f 91       	pop	r23
 662:	6f 91       	pop	r22
 664:	5f 91       	pop	r21
 666:	4f 91       	pop	r20
 668:	3f 91       	pop	r19
 66a:	2f 91       	pop	r18
 66c:	0f 90       	pop	r0
 66e:	0f be       	out	0x3f, r0	; 63
 670:	0f 90       	pop	r0
 672:	1f 90       	pop	r1
 674:	18 95       	reti

00000676 <_analogReadAsync>:
 676:	0f 93       	push	r16
 678:	1f 93       	push	r17
 67a:	cf 93       	push	r28
 67c:	df 93       	push	r29
 67e:	c8 2f       	mov	r28, r24
 680:	16 2f       	mov	r17, r22
 682:	d7 2f       	mov	r29, r23
 684:	04 2f       	mov	r16, r20
 686:	88 30       	cpi	r24, 0x08	; 8
 688:	e8 f4       	brcc	.+58     	; 0x6c4 <_analogReadAsync+0x4e>
 68a:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 68e:	87 fd       	sbrc	r24, 7
 690:	0f c0       	rjmp	.+30     	; 0x6b0 <_analogReadAsync+0x3a>
 692:	87 e8       	ldi	r24, 0x87	; 135
 694:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 698:	8a e0       	ldi	r24, 0x0A	; 10
 69a:	90 e0       	ldi	r25, 0x00	; 0
 69c:	0e 94 6a 01 	call	0x2d4	; 0x2d4 <_delayMs>
 6a0:	61 e0       	ldi	r22, 0x01	; 1
 6a2:	8d e0       	ldi	r24, 0x0D	; 13
 6a4:	0e 94 42 01 	call	0x284	; 0x284 <_pinMode>
 6a8:	60 e0       	ldi	r22, 0x00	; 0
 6aa:	8d e0       	ldi	r24, 0x0D	; 13
 6ac:	0e 94 12 01 	call	0x224	; 0x224 <_digitalWrite>
 6b0:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 6b4:	86 fd       	sbrc	r24, 6
 6b6:	06 c0       	rjmp	.+12     	; 0x6c4 <_analogReadAsync+0x4e>
 6b8:	80 91 ad 01 	lds	r24, 0x01AD	; 0x8001ad <currentCallback>
 6bc:	90 91 ae 01 	lds	r25, 0x01AE	; 0x8001ae <currentCallback+0x1>
 6c0:	89 2b       	or	r24, r25
 6c2:	31 f0       	breq	.+12     	; 0x6d0 <_analogReadAsync+0x5a>
 6c4:	80 e0       	ldi	r24, 0x00	; 0
 6c6:	df 91       	pop	r29
 6c8:	cf 91       	pop	r28
 6ca:	1f 91       	pop	r17
 6cc:	0f 91       	pop	r16
 6ce:	08 95       	ret
 6d0:	00 23       	and	r16, r16
 6d2:	59 f0       	breq	.+22     	; 0x6ea <_analogReadAsync+0x74>
 6d4:	81 2f       	mov	r24, r17
 6d6:	9d 2f       	mov	r25, r29
 6d8:	97 fd       	sbrc	r25, 7
 6da:	15 c0       	rjmp	.+42     	; 0x706 <_analogReadAsync+0x90>
 6dc:	95 95       	asr	r25
 6de:	87 95       	ror	r24
 6e0:	90 93 ae 01 	sts	0x01AE, r25	; 0x8001ae <currentCallback+0x1>
 6e4:	80 93 ad 01 	sts	0x01AD, r24	; 0x8001ad <currentCallback>
 6e8:	04 c0       	rjmp	.+8      	; 0x6f2 <_analogReadAsync+0x7c>
 6ea:	10 93 ad 01 	sts	0x01AD, r17	; 0x8001ad <currentCallback>
 6ee:	d0 93 ae 01 	sts	0x01AE, r29	; 0x8001ae <currentCallback+0x1>
 6f2:	c0 64       	ori	r28, 0x40	; 64
 6f4:	c0 93 7c 00 	sts	0x007C, r28	; 0x80007c <__TEXT_REGION_LENGTH__+0x7e007c>
 6f8:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 6fc:	88 64       	ori	r24, 0x48	; 72
 6fe:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 702:	81 e0       	ldi	r24, 0x01	; 1
 704:	e0 cf       	rjmp	.-64     	; 0x6c6 <_analogReadAsync+0x50>
 706:	01 96       	adiw	r24, 0x01	; 1
 708:	e9 cf       	rjmp	.-46     	; 0x6dc <_analogReadAsync+0x66>

0000070a <startTimers>:
 70a:	83 e0       	ldi	r24, 0x03	; 3
 70c:	84 bd       	out	0x24, r24	; 36
 70e:	85 bd       	out	0x25, r24	; 37
 710:	91 e0       	ldi	r25, 0x01	; 1
 712:	90 93 80 00 	sts	0x0080, r25	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
 716:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
 71a:	90 93 b0 00 	sts	0x00B0, r25	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
 71e:	84 e0       	ldi	r24, 0x04	; 4
 720:	80 93 b1 00 	sts	0x00B1, r24	; 0x8000b1 <__TEXT_REGION_LENGTH__+0x7e00b1>
 724:	ee e6       	ldi	r30, 0x6E	; 110
 726:	f0 e0       	ldi	r31, 0x00	; 0
 728:	80 81       	ld	r24, Z
 72a:	81 60       	ori	r24, 0x01	; 1
 72c:	80 83       	st	Z, r24
 72e:	08 95       	ret

00000730 <__tablejump2__>:
 730:	ee 0f       	add	r30, r30
 732:	ff 1f       	adc	r31, r31
 734:	c8 95       	lpm
 736:	0f 92       	push	r0
 738:	31 96       	adiw	r30, 0x01	; 1
 73a:	c8 95       	lpm
 73c:	0f 92       	push	r0
 73e:	08 95       	ret

00000740 <snprintf>:
 740:	ae e0       	ldi	r26, 0x0E	; 14
 742:	b0 e0       	ldi	r27, 0x00	; 0
 744:	e5 ea       	ldi	r30, 0xA5	; 165
 746:	f3 e0       	ldi	r31, 0x03	; 3
 748:	06 c3       	rjmp	.+1548   	; 0xd56 <__prologue_saves__+0x1c>
 74a:	0d 89       	ldd	r16, Y+21	; 0x15
 74c:	1e 89       	ldd	r17, Y+22	; 0x16
 74e:	8f 89       	ldd	r24, Y+23	; 0x17
 750:	98 8d       	ldd	r25, Y+24	; 0x18
 752:	26 e0       	ldi	r18, 0x06	; 6
 754:	2c 83       	std	Y+4, r18	; 0x04
 756:	1a 83       	std	Y+2, r17	; 0x02
 758:	09 83       	std	Y+1, r16	; 0x01
 75a:	97 ff       	sbrs	r25, 7
 75c:	02 c0       	rjmp	.+4      	; 0x762 <snprintf+0x22>
 75e:	80 e0       	ldi	r24, 0x00	; 0
 760:	90 e8       	ldi	r25, 0x80	; 128
 762:	01 97       	sbiw	r24, 0x01	; 1
 764:	9e 83       	std	Y+6, r25	; 0x06
 766:	8d 83       	std	Y+5, r24	; 0x05
 768:	4c 2f       	mov	r20, r28
 76a:	5d 2f       	mov	r21, r29
 76c:	45 5e       	subi	r20, 0xE5	; 229
 76e:	5f 4f       	sbci	r21, 0xFF	; 255
 770:	69 8d       	ldd	r22, Y+25	; 0x19
 772:	7a 8d       	ldd	r23, Y+26	; 0x1a
 774:	8c 2f       	mov	r24, r28
 776:	9d 2f       	mov	r25, r29
 778:	01 96       	adiw	r24, 0x01	; 1
 77a:	13 d0       	rcall	.+38     	; 0x7a2 <vfprintf>
 77c:	4d 81       	ldd	r20, Y+5	; 0x05
 77e:	5e 81       	ldd	r21, Y+6	; 0x06
 780:	57 fd       	sbrc	r21, 7
 782:	0c c0       	rjmp	.+24     	; 0x79c <snprintf+0x5c>
 784:	2f 81       	ldd	r18, Y+7	; 0x07
 786:	38 85       	ldd	r19, Y+8	; 0x08
 788:	42 17       	cp	r20, r18
 78a:	53 07       	cpc	r21, r19
 78c:	14 f4       	brge	.+4      	; 0x792 <snprintf+0x52>
 78e:	24 2f       	mov	r18, r20
 790:	35 2f       	mov	r19, r21
 792:	02 0f       	add	r16, r18
 794:	13 1f       	adc	r17, r19
 796:	e0 2f       	mov	r30, r16
 798:	f1 2f       	mov	r31, r17
 79a:	10 82       	st	Z, r1
 79c:	2e 96       	adiw	r28, 0x0e	; 14
 79e:	e4 e0       	ldi	r30, 0x04	; 4
 7a0:	f6 c2       	rjmp	.+1516   	; 0xd8e <__epilogue_restores__+0x1c>

000007a2 <vfprintf>:
 7a2:	ab e0       	ldi	r26, 0x0B	; 11
 7a4:	b0 e0       	ldi	r27, 0x00	; 0
 7a6:	e6 ed       	ldi	r30, 0xD6	; 214
 7a8:	f3 e0       	ldi	r31, 0x03	; 3
 7aa:	c7 c2       	rjmp	.+1422   	; 0xd3a <__prologue_saves__>
 7ac:	e8 2e       	mov	r14, r24
 7ae:	f9 2e       	mov	r15, r25
 7b0:	66 2e       	mov	r6, r22
 7b2:	77 2e       	mov	r7, r23
 7b4:	04 2f       	mov	r16, r20
 7b6:	15 2f       	mov	r17, r21
 7b8:	e8 2f       	mov	r30, r24
 7ba:	f9 2f       	mov	r31, r25
 7bc:	17 82       	std	Z+7, r1	; 0x07
 7be:	16 82       	std	Z+6, r1	; 0x06
 7c0:	83 81       	ldd	r24, Z+3	; 0x03
 7c2:	81 ff       	sbrs	r24, 1
 7c4:	ff c1       	rjmp	.+1022   	; 0xbc4 <__stack+0x2c5>
 7c6:	8c 2f       	mov	r24, r28
 7c8:	9d 2f       	mov	r25, r29
 7ca:	01 96       	adiw	r24, 0x01	; 1
 7cc:	a8 2e       	mov	r10, r24
 7ce:	b9 2e       	mov	r11, r25
 7d0:	ee 2d       	mov	r30, r14
 7d2:	ff 2d       	mov	r31, r15
 7d4:	93 81       	ldd	r25, Z+3	; 0x03
 7d6:	e6 2d       	mov	r30, r6
 7d8:	f7 2d       	mov	r31, r7
 7da:	93 fd       	sbrc	r25, 3
 7dc:	c8 95       	lpm
 7de:	93 ff       	sbrs	r25, 3
 7e0:	00 80       	ld	r0, Z
 7e2:	31 96       	adiw	r30, 0x01	; 1
 7e4:	80 2d       	mov	r24, r0
 7e6:	6e 2e       	mov	r6, r30
 7e8:	7f 2e       	mov	r7, r31
 7ea:	88 23       	and	r24, r24
 7ec:	09 f4       	brne	.+2      	; 0x7f0 <vfprintf+0x4e>
 7ee:	48 c1       	rjmp	.+656    	; 0xa80 <__stack+0x181>
 7f0:	85 32       	cpi	r24, 0x25	; 37
 7f2:	51 f4       	brne	.+20     	; 0x808 <vfprintf+0x66>
 7f4:	93 fd       	sbrc	r25, 3
 7f6:	c8 95       	lpm
 7f8:	93 ff       	sbrs	r25, 3
 7fa:	00 80       	ld	r0, Z
 7fc:	31 96       	adiw	r30, 0x01	; 1
 7fe:	80 2d       	mov	r24, r0
 800:	6e 2e       	mov	r6, r30
 802:	7f 2e       	mov	r7, r31
 804:	85 32       	cpi	r24, 0x25	; 37
 806:	29 f4       	brne	.+10     	; 0x812 <vfprintf+0x70>
 808:	6e 2d       	mov	r22, r14
 80a:	7f 2d       	mov	r23, r15
 80c:	90 e0       	ldi	r25, 0x00	; 0
 80e:	f6 d1       	rcall	.+1004   	; 0xbfc <fputc>
 810:	df cf       	rjmp	.-66     	; 0x7d0 <vfprintf+0x2e>
 812:	91 2c       	mov	r9, r1
 814:	21 2c       	mov	r2, r1
 816:	31 2c       	mov	r3, r1
 818:	ff e1       	ldi	r31, 0x1F	; 31
 81a:	f3 15       	cp	r31, r3
 81c:	38 f0       	brcs	.+14     	; 0x82c <vfprintf+0x8a>
 81e:	8b 32       	cpi	r24, 0x2B	; 43
 820:	39 f1       	breq	.+78     	; 0x870 <vfprintf+0xce>
 822:	90 f4       	brcc	.+36     	; 0x848 <vfprintf+0xa6>
 824:	80 32       	cpi	r24, 0x20	; 32
 826:	39 f1       	breq	.+78     	; 0x876 <vfprintf+0xd4>
 828:	83 32       	cpi	r24, 0x23	; 35
 82a:	69 f1       	breq	.+90     	; 0x886 <vfprintf+0xe4>
 82c:	37 fc       	sbrc	r3, 7
 82e:	45 c0       	rjmp	.+138    	; 0x8ba <vfprintf+0x118>
 830:	20 ed       	ldi	r18, 0xD0	; 208
 832:	28 0f       	add	r18, r24
 834:	2a 30       	cpi	r18, 0x0A	; 10
 836:	98 f5       	brcc	.+102    	; 0x89e <vfprintf+0xfc>
 838:	36 fe       	sbrs	r3, 6
 83a:	28 c0       	rjmp	.+80     	; 0x88c <vfprintf+0xea>
 83c:	89 2d       	mov	r24, r9
 83e:	6a e0       	ldi	r22, 0x0A	; 10
 840:	73 d2       	rcall	.+1254   	; 0xd28 <__mulqi3>
 842:	92 2e       	mov	r9, r18
 844:	98 0e       	add	r9, r24
 846:	07 c0       	rjmp	.+14     	; 0x856 <vfprintf+0xb4>
 848:	8d 32       	cpi	r24, 0x2D	; 45
 84a:	c9 f0       	breq	.+50     	; 0x87e <vfprintf+0xdc>
 84c:	80 33       	cpi	r24, 0x30	; 48
 84e:	71 f7       	brne	.-36     	; 0x82c <vfprintf+0x8a>
 850:	23 2d       	mov	r18, r3
 852:	21 60       	ori	r18, 0x01	; 1
 854:	32 2e       	mov	r3, r18
 856:	e6 2d       	mov	r30, r6
 858:	f7 2d       	mov	r31, r7
 85a:	93 fd       	sbrc	r25, 3
 85c:	c8 95       	lpm
 85e:	93 ff       	sbrs	r25, 3
 860:	00 80       	ld	r0, Z
 862:	31 96       	adiw	r30, 0x01	; 1
 864:	80 2d       	mov	r24, r0
 866:	6e 2e       	mov	r6, r30
 868:	7f 2e       	mov	r7, r31
 86a:	81 11       	cpse	r24, r1
 86c:	d5 cf       	rjmp	.-86     	; 0x818 <vfprintf+0x76>
 86e:	25 c0       	rjmp	.+74     	; 0x8ba <vfprintf+0x118>
 870:	83 2d       	mov	r24, r3
 872:	82 60       	ori	r24, 0x02	; 2
 874:	38 2e       	mov	r3, r24
 876:	e3 2d       	mov	r30, r3
 878:	e4 60       	ori	r30, 0x04	; 4
 87a:	3e 2e       	mov	r3, r30
 87c:	ec cf       	rjmp	.-40     	; 0x856 <vfprintf+0xb4>
 87e:	f3 2d       	mov	r31, r3
 880:	f8 60       	ori	r31, 0x08	; 8
 882:	3f 2e       	mov	r3, r31
 884:	e8 cf       	rjmp	.-48     	; 0x856 <vfprintf+0xb4>
 886:	23 2d       	mov	r18, r3
 888:	20 61       	ori	r18, 0x10	; 16
 88a:	e4 cf       	rjmp	.-56     	; 0x854 <vfprintf+0xb2>
 88c:	82 2d       	mov	r24, r2
 88e:	6a e0       	ldi	r22, 0x0A	; 10
 890:	4b d2       	rcall	.+1174   	; 0xd28 <__mulqi3>
 892:	22 2e       	mov	r2, r18
 894:	28 0e       	add	r2, r24
 896:	83 2d       	mov	r24, r3
 898:	80 62       	ori	r24, 0x20	; 32
 89a:	38 2e       	mov	r3, r24
 89c:	dc cf       	rjmp	.-72     	; 0x856 <vfprintf+0xb4>
 89e:	8e 32       	cpi	r24, 0x2E	; 46
 8a0:	29 f4       	brne	.+10     	; 0x8ac <vfprintf+0x10a>
 8a2:	36 fc       	sbrc	r3, 6
 8a4:	ed c0       	rjmp	.+474    	; 0xa80 <__stack+0x181>
 8a6:	e3 2d       	mov	r30, r3
 8a8:	e0 64       	ori	r30, 0x40	; 64
 8aa:	e7 cf       	rjmp	.-50     	; 0x87a <vfprintf+0xd8>
 8ac:	8c 36       	cpi	r24, 0x6C	; 108
 8ae:	19 f4       	brne	.+6      	; 0x8b6 <vfprintf+0x114>
 8b0:	f3 2d       	mov	r31, r3
 8b2:	f0 68       	ori	r31, 0x80	; 128
 8b4:	e6 cf       	rjmp	.-52     	; 0x882 <vfprintf+0xe0>
 8b6:	88 36       	cpi	r24, 0x68	; 104
 8b8:	71 f2       	breq	.-100    	; 0x856 <vfprintf+0xb4>
 8ba:	98 2f       	mov	r25, r24
 8bc:	9f 7d       	andi	r25, 0xDF	; 223
 8be:	95 54       	subi	r25, 0x45	; 69
 8c0:	93 30       	cpi	r25, 0x03	; 3
 8c2:	08 f1       	brcs	.+66     	; 0x906 <__stack+0x7>
 8c4:	83 36       	cpi	r24, 0x63	; 99
 8c6:	09 f4       	brne	.+2      	; 0x8ca <vfprintf+0x128>
 8c8:	3f c0       	rjmp	.+126    	; 0x948 <__stack+0x49>
 8ca:	83 37       	cpi	r24, 0x73	; 115
 8cc:	09 f4       	brne	.+2      	; 0x8d0 <vfprintf+0x12e>
 8ce:	43 c0       	rjmp	.+134    	; 0x956 <__stack+0x57>
 8d0:	83 35       	cpi	r24, 0x53	; 83
 8d2:	09 f0       	breq	.+2      	; 0x8d6 <vfprintf+0x134>
 8d4:	76 c0       	rjmp	.+236    	; 0x9c2 <__stack+0xc3>
 8d6:	40 2e       	mov	r4, r16
 8d8:	51 2e       	mov	r5, r17
 8da:	22 e0       	ldi	r18, 0x02	; 2
 8dc:	42 0e       	add	r4, r18
 8de:	51 1c       	adc	r5, r1
 8e0:	e0 2f       	mov	r30, r16
 8e2:	f1 2f       	mov	r31, r17
 8e4:	c0 80       	ld	r12, Z
 8e6:	d1 80       	ldd	r13, Z+1	; 0x01
 8e8:	36 fe       	sbrs	r3, 6
 8ea:	4d c0       	rjmp	.+154    	; 0x986 <__stack+0x87>
 8ec:	69 2d       	mov	r22, r9
 8ee:	70 e0       	ldi	r23, 0x00	; 0
 8f0:	8c 2d       	mov	r24, r12
 8f2:	9d 2d       	mov	r25, r13
 8f4:	6a d1       	rcall	.+724    	; 0xbca <strnlen_P>
 8f6:	88 2e       	mov	r8, r24
 8f8:	99 2e       	mov	r9, r25
 8fa:	f3 2d       	mov	r31, r3
 8fc:	f0 68       	ori	r31, 0x80	; 128
 8fe:	3f 2e       	mov	r3, r31
 900:	04 2d       	mov	r16, r4
 902:	15 2d       	mov	r17, r5
 904:	0c c0       	rjmp	.+24     	; 0x91e <__stack+0x1f>
 906:	0c 5f       	subi	r16, 0xFC	; 252
 908:	1f 4f       	sbci	r17, 0xFF	; 255
 90a:	2f e3       	ldi	r18, 0x3F	; 63
 90c:	29 83       	std	Y+1, r18	; 0x01
 90e:	88 24       	eor	r8, r8
 910:	83 94       	inc	r8
 912:	91 2c       	mov	r9, r1
 914:	ca 2c       	mov	r12, r10
 916:	db 2c       	mov	r13, r11
 918:	f3 2d       	mov	r31, r3
 91a:	ff 77       	andi	r31, 0x7F	; 127
 91c:	3f 2e       	mov	r3, r31
 91e:	33 fc       	sbrc	r3, 3
 920:	05 c0       	rjmp	.+10     	; 0x92c <__stack+0x2d>
 922:	82 2d       	mov	r24, r2
 924:	90 e0       	ldi	r25, 0x00	; 0
 926:	88 16       	cp	r8, r24
 928:	99 06       	cpc	r9, r25
 92a:	80 f1       	brcs	.+96     	; 0x98c <__stack+0x8d>
 92c:	52 2c       	mov	r5, r2
 92e:	81 14       	cp	r8, r1
 930:	91 04       	cpc	r9, r1
 932:	99 f5       	brne	.+102    	; 0x99a <__stack+0x9b>
 934:	55 20       	and	r5, r5
 936:	09 f4       	brne	.+2      	; 0x93a <__stack+0x3b>
 938:	4b cf       	rjmp	.-362    	; 0x7d0 <vfprintf+0x2e>
 93a:	6e 2d       	mov	r22, r14
 93c:	7f 2d       	mov	r23, r15
 93e:	80 e2       	ldi	r24, 0x20	; 32
 940:	90 e0       	ldi	r25, 0x00	; 0
 942:	5c d1       	rcall	.+696    	; 0xbfc <fputc>
 944:	5a 94       	dec	r5
 946:	f6 cf       	rjmp	.-20     	; 0x934 <__stack+0x35>
 948:	e0 2f       	mov	r30, r16
 94a:	f1 2f       	mov	r31, r17
 94c:	80 81       	ld	r24, Z
 94e:	89 83       	std	Y+1, r24	; 0x01
 950:	0e 5f       	subi	r16, 0xFE	; 254
 952:	1f 4f       	sbci	r17, 0xFF	; 255
 954:	dc cf       	rjmp	.-72     	; 0x90e <__stack+0xf>
 956:	40 2e       	mov	r4, r16
 958:	51 2e       	mov	r5, r17
 95a:	f2 e0       	ldi	r31, 0x02	; 2
 95c:	4f 0e       	add	r4, r31
 95e:	51 1c       	adc	r5, r1
 960:	e0 2f       	mov	r30, r16
 962:	f1 2f       	mov	r31, r17
 964:	c0 80       	ld	r12, Z
 966:	d1 80       	ldd	r13, Z+1	; 0x01
 968:	36 fe       	sbrs	r3, 6
 96a:	0a c0       	rjmp	.+20     	; 0x980 <__stack+0x81>
 96c:	69 2d       	mov	r22, r9
 96e:	70 e0       	ldi	r23, 0x00	; 0
 970:	8c 2d       	mov	r24, r12
 972:	9d 2d       	mov	r25, r13
 974:	37 d1       	rcall	.+622    	; 0xbe4 <strnlen>
 976:	88 2e       	mov	r8, r24
 978:	99 2e       	mov	r9, r25
 97a:	04 2d       	mov	r16, r4
 97c:	15 2d       	mov	r17, r5
 97e:	cc cf       	rjmp	.-104    	; 0x918 <__stack+0x19>
 980:	6f ef       	ldi	r22, 0xFF	; 255
 982:	7f ef       	ldi	r23, 0xFF	; 255
 984:	f5 cf       	rjmp	.-22     	; 0x970 <__stack+0x71>
 986:	6f ef       	ldi	r22, 0xFF	; 255
 988:	7f ef       	ldi	r23, 0xFF	; 255
 98a:	b2 cf       	rjmp	.-156    	; 0x8f0 <vfprintf+0x14e>
 98c:	6e 2d       	mov	r22, r14
 98e:	7f 2d       	mov	r23, r15
 990:	80 e2       	ldi	r24, 0x20	; 32
 992:	90 e0       	ldi	r25, 0x00	; 0
 994:	33 d1       	rcall	.+614    	; 0xbfc <fputc>
 996:	2a 94       	dec	r2
 998:	c4 cf       	rjmp	.-120    	; 0x922 <__stack+0x23>
 99a:	ec 2d       	mov	r30, r12
 99c:	fd 2d       	mov	r31, r13
 99e:	37 fc       	sbrc	r3, 7
 9a0:	c8 95       	lpm
 9a2:	37 fe       	sbrs	r3, 7
 9a4:	00 80       	ld	r0, Z
 9a6:	31 96       	adiw	r30, 0x01	; 1
 9a8:	80 2d       	mov	r24, r0
 9aa:	ce 2e       	mov	r12, r30
 9ac:	df 2e       	mov	r13, r31
 9ae:	6e 2d       	mov	r22, r14
 9b0:	7f 2d       	mov	r23, r15
 9b2:	90 e0       	ldi	r25, 0x00	; 0
 9b4:	23 d1       	rcall	.+582    	; 0xbfc <fputc>
 9b6:	51 10       	cpse	r5, r1
 9b8:	5a 94       	dec	r5
 9ba:	21 e0       	ldi	r18, 0x01	; 1
 9bc:	82 1a       	sub	r8, r18
 9be:	91 08       	sbc	r9, r1
 9c0:	b6 cf       	rjmp	.-148    	; 0x92e <__stack+0x2f>
 9c2:	84 36       	cpi	r24, 0x64	; 100
 9c4:	11 f0       	breq	.+4      	; 0x9ca <__stack+0xcb>
 9c6:	89 36       	cpi	r24, 0x69	; 105
 9c8:	c9 f5       	brne	.+114    	; 0xa3c <__stack+0x13d>
 9ca:	e0 2f       	mov	r30, r16
 9cc:	f1 2f       	mov	r31, r17
 9ce:	37 fe       	sbrs	r3, 7
 9d0:	2c c0       	rjmp	.+88     	; 0xa2a <__stack+0x12b>
 9d2:	60 81       	ld	r22, Z
 9d4:	71 81       	ldd	r23, Z+1	; 0x01
 9d6:	82 81       	ldd	r24, Z+2	; 0x02
 9d8:	93 81       	ldd	r25, Z+3	; 0x03
 9da:	0c 5f       	subi	r16, 0xFC	; 252
 9dc:	1f 4f       	sbci	r17, 0xFF	; 255
 9de:	f3 2d       	mov	r31, r3
 9e0:	ff 76       	andi	r31, 0x6F	; 111
 9e2:	3f 2e       	mov	r3, r31
 9e4:	97 ff       	sbrs	r25, 7
 9e6:	09 c0       	rjmp	.+18     	; 0x9fa <__stack+0xfb>
 9e8:	90 95       	com	r25
 9ea:	80 95       	com	r24
 9ec:	70 95       	com	r23
 9ee:	61 95       	neg	r22
 9f0:	7f 4f       	sbci	r23, 0xFF	; 255
 9f2:	8f 4f       	sbci	r24, 0xFF	; 255
 9f4:	9f 4f       	sbci	r25, 0xFF	; 255
 9f6:	f0 68       	ori	r31, 0x80	; 128
 9f8:	3f 2e       	mov	r3, r31
 9fa:	2a e0       	ldi	r18, 0x0A	; 10
 9fc:	30 e0       	ldi	r19, 0x00	; 0
 9fe:	4a 2d       	mov	r20, r10
 a00:	5b 2d       	mov	r21, r11
 a02:	2e d1       	rcall	.+604    	; 0xc60 <__ultoa_invert>
 a04:	c8 2e       	mov	r12, r24
 a06:	ca 18       	sub	r12, r10
 a08:	36 fe       	sbrs	r3, 6
 a0a:	63 c0       	rjmp	.+198    	; 0xad2 <__stack+0x1d3>
 a0c:	23 2d       	mov	r18, r3
 a0e:	2e 7f       	andi	r18, 0xFE	; 254
 a10:	82 2e       	mov	r8, r18
 a12:	c9 14       	cp	r12, r9
 a14:	08 f0       	brcs	.+2      	; 0xa18 <__stack+0x119>
 a16:	9f c0       	rjmp	.+318    	; 0xb56 <__stack+0x257>
 a18:	34 fe       	sbrs	r3, 4
 a1a:	05 c0       	rjmp	.+10     	; 0xa26 <__stack+0x127>
 a1c:	32 fc       	sbrc	r3, 2
 a1e:	03 c0       	rjmp	.+6      	; 0xa26 <__stack+0x127>
 a20:	83 2d       	mov	r24, r3
 a22:	8e 7e       	andi	r24, 0xEE	; 238
 a24:	88 2e       	mov	r8, r24
 a26:	d9 2c       	mov	r13, r9
 a28:	56 c0       	rjmp	.+172    	; 0xad6 <__stack+0x1d7>
 a2a:	60 81       	ld	r22, Z
 a2c:	71 81       	ldd	r23, Z+1	; 0x01
 a2e:	07 2e       	mov	r0, r23
 a30:	00 0c       	add	r0, r0
 a32:	88 0b       	sbc	r24, r24
 a34:	99 0b       	sbc	r25, r25
 a36:	0e 5f       	subi	r16, 0xFE	; 254
 a38:	1f 4f       	sbci	r17, 0xFF	; 255
 a3a:	d1 cf       	rjmp	.-94     	; 0x9de <__stack+0xdf>
 a3c:	85 37       	cpi	r24, 0x75	; 117
 a3e:	c1 f4       	brne	.+48     	; 0xa70 <__stack+0x171>
 a40:	23 2d       	mov	r18, r3
 a42:	2f 7e       	andi	r18, 0xEF	; 239
 a44:	d2 2e       	mov	r13, r18
 a46:	2a e0       	ldi	r18, 0x0A	; 10
 a48:	30 e0       	ldi	r19, 0x00	; 0
 a4a:	e0 2f       	mov	r30, r16
 a4c:	f1 2f       	mov	r31, r17
 a4e:	d7 fe       	sbrs	r13, 7
 a50:	39 c0       	rjmp	.+114    	; 0xac4 <__stack+0x1c5>
 a52:	60 81       	ld	r22, Z
 a54:	71 81       	ldd	r23, Z+1	; 0x01
 a56:	82 81       	ldd	r24, Z+2	; 0x02
 a58:	93 81       	ldd	r25, Z+3	; 0x03
 a5a:	0c 5f       	subi	r16, 0xFC	; 252
 a5c:	1f 4f       	sbci	r17, 0xFF	; 255
 a5e:	4a 2d       	mov	r20, r10
 a60:	5b 2d       	mov	r21, r11
 a62:	fe d0       	rcall	.+508    	; 0xc60 <__ultoa_invert>
 a64:	c8 2e       	mov	r12, r24
 a66:	ca 18       	sub	r12, r10
 a68:	fd 2d       	mov	r31, r13
 a6a:	ff 77       	andi	r31, 0x7F	; 127
 a6c:	3f 2e       	mov	r3, r31
 a6e:	cc cf       	rjmp	.-104    	; 0xa08 <__stack+0x109>
 a70:	93 2d       	mov	r25, r3
 a72:	99 7f       	andi	r25, 0xF9	; 249
 a74:	d9 2e       	mov	r13, r25
 a76:	8f 36       	cpi	r24, 0x6F	; 111
 a78:	11 f1       	breq	.+68     	; 0xabe <__stack+0x1bf>
 a7a:	48 f4       	brcc	.+18     	; 0xa8e <__stack+0x18f>
 a7c:	88 35       	cpi	r24, 0x58	; 88
 a7e:	b9 f0       	breq	.+46     	; 0xaae <__stack+0x1af>
 a80:	ee 2d       	mov	r30, r14
 a82:	ff 2d       	mov	r31, r15
 a84:	86 81       	ldd	r24, Z+6	; 0x06
 a86:	97 81       	ldd	r25, Z+7	; 0x07
 a88:	2b 96       	adiw	r28, 0x0b	; 11
 a8a:	e2 e1       	ldi	r30, 0x12	; 18
 a8c:	72 c1       	rjmp	.+740    	; 0xd72 <__epilogue_restores__>
 a8e:	80 37       	cpi	r24, 0x70	; 112
 a90:	51 f0       	breq	.+20     	; 0xaa6 <__stack+0x1a7>
 a92:	88 37       	cpi	r24, 0x78	; 120
 a94:	a9 f7       	brne	.-22     	; 0xa80 <__stack+0x181>
 a96:	d4 fe       	sbrs	r13, 4
 a98:	03 c0       	rjmp	.+6      	; 0xaa0 <__stack+0x1a1>
 a9a:	fd 2d       	mov	r31, r13
 a9c:	f4 60       	ori	r31, 0x04	; 4
 a9e:	df 2e       	mov	r13, r31
 aa0:	20 e1       	ldi	r18, 0x10	; 16
 aa2:	30 e0       	ldi	r19, 0x00	; 0
 aa4:	d2 cf       	rjmp	.-92     	; 0xa4a <__stack+0x14b>
 aa6:	e9 2f       	mov	r30, r25
 aa8:	e0 61       	ori	r30, 0x10	; 16
 aaa:	de 2e       	mov	r13, r30
 aac:	f4 cf       	rjmp	.-24     	; 0xa96 <__stack+0x197>
 aae:	34 fe       	sbrs	r3, 4
 ab0:	03 c0       	rjmp	.+6      	; 0xab8 <__stack+0x1b9>
 ab2:	29 2f       	mov	r18, r25
 ab4:	26 60       	ori	r18, 0x06	; 6
 ab6:	d2 2e       	mov	r13, r18
 ab8:	20 e1       	ldi	r18, 0x10	; 16
 aba:	32 e0       	ldi	r19, 0x02	; 2
 abc:	c6 cf       	rjmp	.-116    	; 0xa4a <__stack+0x14b>
 abe:	28 e0       	ldi	r18, 0x08	; 8
 ac0:	30 e0       	ldi	r19, 0x00	; 0
 ac2:	c3 cf       	rjmp	.-122    	; 0xa4a <__stack+0x14b>
 ac4:	60 81       	ld	r22, Z
 ac6:	71 81       	ldd	r23, Z+1	; 0x01
 ac8:	80 e0       	ldi	r24, 0x00	; 0
 aca:	90 e0       	ldi	r25, 0x00	; 0
 acc:	0e 5f       	subi	r16, 0xFE	; 254
 ace:	1f 4f       	sbci	r17, 0xFF	; 255
 ad0:	c6 cf       	rjmp	.-116    	; 0xa5e <__stack+0x15f>
 ad2:	dc 2c       	mov	r13, r12
 ad4:	83 2c       	mov	r8, r3
 ad6:	84 fe       	sbrs	r8, 4
 ad8:	47 c0       	rjmp	.+142    	; 0xb68 <__stack+0x269>
 ada:	ec 2f       	mov	r30, r28
 adc:	fd 2f       	mov	r31, r29
 ade:	ec 0d       	add	r30, r12
 ae0:	f1 1d       	adc	r31, r1
 ae2:	80 81       	ld	r24, Z
 ae4:	80 33       	cpi	r24, 0x30	; 48
 ae6:	c9 f5       	brne	.+114    	; 0xb5a <__stack+0x25b>
 ae8:	98 2d       	mov	r25, r8
 aea:	99 7e       	andi	r25, 0xE9	; 233
 aec:	89 2e       	mov	r8, r25
 aee:	e8 2d       	mov	r30, r8
 af0:	e8 70       	andi	r30, 0x08	; 8
 af2:	5e 2e       	mov	r5, r30
 af4:	83 fc       	sbrc	r8, 3
 af6:	47 c0       	rjmp	.+142    	; 0xb86 <__stack+0x287>
 af8:	80 fe       	sbrs	r8, 0
 afa:	41 c0       	rjmp	.+130    	; 0xb7e <__stack+0x27f>
 afc:	d2 14       	cp	r13, r2
 afe:	08 f0       	brcs	.+2      	; 0xb02 <__stack+0x203>
 b00:	47 c0       	rjmp	.+142    	; 0xb90 <__stack+0x291>
 b02:	2c 0c       	add	r2, r12
 b04:	92 2c       	mov	r9, r2
 b06:	9d 18       	sub	r9, r13
 b08:	84 fe       	sbrs	r8, 4
 b0a:	47 c0       	rjmp	.+142    	; 0xb9a <__stack+0x29b>
 b0c:	6e 2d       	mov	r22, r14
 b0e:	7f 2d       	mov	r23, r15
 b10:	80 e3       	ldi	r24, 0x30	; 48
 b12:	90 e0       	ldi	r25, 0x00	; 0
 b14:	73 d0       	rcall	.+230    	; 0xbfc <fputc>
 b16:	82 fe       	sbrs	r8, 2
 b18:	07 c0       	rjmp	.+14     	; 0xb28 <__stack+0x229>
 b1a:	81 fc       	sbrc	r8, 1
 b1c:	3b c0       	rjmp	.+118    	; 0xb94 <__stack+0x295>
 b1e:	88 e7       	ldi	r24, 0x78	; 120
 b20:	90 e0       	ldi	r25, 0x00	; 0
 b22:	6e 2d       	mov	r22, r14
 b24:	7f 2d       	mov	r23, r15
 b26:	6a d0       	rcall	.+212    	; 0xbfc <fputc>
 b28:	c9 14       	cp	r12, r9
 b2a:	08 f4       	brcc	.+2      	; 0xb2e <__stack+0x22f>
 b2c:	44 c0       	rjmp	.+136    	; 0xbb6 <__stack+0x2b7>
 b2e:	ca 94       	dec	r12
 b30:	d1 2c       	mov	r13, r1
 b32:	ff ef       	ldi	r31, 0xFF	; 255
 b34:	cf 1a       	sub	r12, r31
 b36:	df 0a       	sbc	r13, r31
 b38:	ca 0c       	add	r12, r10
 b3a:	db 1c       	adc	r13, r11
 b3c:	ec 2d       	mov	r30, r12
 b3e:	fd 2d       	mov	r31, r13
 b40:	82 91       	ld	r24, -Z
 b42:	ce 2e       	mov	r12, r30
 b44:	df 2e       	mov	r13, r31
 b46:	6e 2d       	mov	r22, r14
 b48:	7f 2d       	mov	r23, r15
 b4a:	90 e0       	ldi	r25, 0x00	; 0
 b4c:	57 d0       	rcall	.+174    	; 0xbfc <fputc>
 b4e:	ac 14       	cp	r10, r12
 b50:	bd 04       	cpc	r11, r13
 b52:	a1 f7       	brne	.-24     	; 0xb3c <__stack+0x23d>
 b54:	ef ce       	rjmp	.-546    	; 0x934 <__stack+0x35>
 b56:	dc 2c       	mov	r13, r12
 b58:	be cf       	rjmp	.-132    	; 0xad6 <__stack+0x1d7>
 b5a:	82 fc       	sbrc	r8, 2
 b5c:	02 c0       	rjmp	.+4      	; 0xb62 <__stack+0x263>
 b5e:	d3 94       	inc	r13
 b60:	c6 cf       	rjmp	.-116    	; 0xaee <__stack+0x1ef>
 b62:	d3 94       	inc	r13
 b64:	d3 94       	inc	r13
 b66:	c3 cf       	rjmp	.-122    	; 0xaee <__stack+0x1ef>
 b68:	88 2d       	mov	r24, r8
 b6a:	86 78       	andi	r24, 0x86	; 134
 b6c:	09 f4       	brne	.+2      	; 0xb70 <__stack+0x271>
 b6e:	bf cf       	rjmp	.-130    	; 0xaee <__stack+0x1ef>
 b70:	f6 cf       	rjmp	.-20     	; 0xb5e <__stack+0x25f>
 b72:	6e 2d       	mov	r22, r14
 b74:	7f 2d       	mov	r23, r15
 b76:	80 e2       	ldi	r24, 0x20	; 32
 b78:	90 e0       	ldi	r25, 0x00	; 0
 b7a:	40 d0       	rcall	.+128    	; 0xbfc <fputc>
 b7c:	d3 94       	inc	r13
 b7e:	d2 14       	cp	r13, r2
 b80:	c0 f3       	brcs	.-16     	; 0xb72 <__stack+0x273>
 b82:	51 2c       	mov	r5, r1
 b84:	c1 cf       	rjmp	.-126    	; 0xb08 <__stack+0x209>
 b86:	d2 14       	cp	r13, r2
 b88:	e0 f7       	brcc	.-8      	; 0xb82 <__stack+0x283>
 b8a:	52 2c       	mov	r5, r2
 b8c:	5d 18       	sub	r5, r13
 b8e:	bc cf       	rjmp	.-136    	; 0xb08 <__stack+0x209>
 b90:	9c 2c       	mov	r9, r12
 b92:	ba cf       	rjmp	.-140    	; 0xb08 <__stack+0x209>
 b94:	88 e5       	ldi	r24, 0x58	; 88
 b96:	90 e0       	ldi	r25, 0x00	; 0
 b98:	c4 cf       	rjmp	.-120    	; 0xb22 <__stack+0x223>
 b9a:	88 2d       	mov	r24, r8
 b9c:	86 78       	andi	r24, 0x86	; 134
 b9e:	21 f2       	breq	.-120    	; 0xb28 <__stack+0x229>
 ba0:	81 fe       	sbrs	r8, 1
 ba2:	07 c0       	rjmp	.+14     	; 0xbb2 <__stack+0x2b3>
 ba4:	8b e2       	ldi	r24, 0x2B	; 43
 ba6:	87 fc       	sbrc	r8, 7
 ba8:	8d e2       	ldi	r24, 0x2D	; 45
 baa:	6e 2d       	mov	r22, r14
 bac:	7f 2d       	mov	r23, r15
 bae:	90 e0       	ldi	r25, 0x00	; 0
 bb0:	ba cf       	rjmp	.-140    	; 0xb26 <__stack+0x227>
 bb2:	80 e2       	ldi	r24, 0x20	; 32
 bb4:	f8 cf       	rjmp	.-16     	; 0xba6 <__stack+0x2a7>
 bb6:	6e 2d       	mov	r22, r14
 bb8:	7f 2d       	mov	r23, r15
 bba:	80 e3       	ldi	r24, 0x30	; 48
 bbc:	90 e0       	ldi	r25, 0x00	; 0
 bbe:	1e d0       	rcall	.+60     	; 0xbfc <fputc>
 bc0:	9a 94       	dec	r9
 bc2:	b2 cf       	rjmp	.-156    	; 0xb28 <__stack+0x229>
 bc4:	8f ef       	ldi	r24, 0xFF	; 255
 bc6:	9f ef       	ldi	r25, 0xFF	; 255
 bc8:	5f cf       	rjmp	.-322    	; 0xa88 <__stack+0x189>

00000bca <strnlen_P>:
 bca:	e8 2f       	mov	r30, r24
 bcc:	f9 2f       	mov	r31, r25
 bce:	c8 95       	lpm
 bd0:	31 96       	adiw	r30, 0x01	; 1
 bd2:	61 50       	subi	r22, 0x01	; 1
 bd4:	70 40       	sbci	r23, 0x00	; 0
 bd6:	01 10       	cpse	r0, r1
 bd8:	d0 f7       	brcc	.-12     	; 0xbce <strnlen_P+0x4>
 bda:	80 95       	com	r24
 bdc:	90 95       	com	r25
 bde:	8e 0f       	add	r24, r30
 be0:	9f 1f       	adc	r25, r31
 be2:	08 95       	ret

00000be4 <strnlen>:
 be4:	e8 2f       	mov	r30, r24
 be6:	f9 2f       	mov	r31, r25
 be8:	61 50       	subi	r22, 0x01	; 1
 bea:	70 40       	sbci	r23, 0x00	; 0
 bec:	01 90       	ld	r0, Z+
 bee:	01 10       	cpse	r0, r1
 bf0:	d8 f7       	brcc	.-10     	; 0xbe8 <strnlen+0x4>
 bf2:	80 95       	com	r24
 bf4:	90 95       	com	r25
 bf6:	8e 0f       	add	r24, r30
 bf8:	9f 1f       	adc	r25, r31
 bfa:	08 95       	ret

00000bfc <fputc>:
 bfc:	0f 93       	push	r16
 bfe:	1f 93       	push	r17
 c00:	cf 93       	push	r28
 c02:	df 93       	push	r29
 c04:	18 2f       	mov	r17, r24
 c06:	09 2f       	mov	r16, r25
 c08:	c6 2f       	mov	r28, r22
 c0a:	d7 2f       	mov	r29, r23
 c0c:	8b 81       	ldd	r24, Y+3	; 0x03
 c0e:	81 fd       	sbrc	r24, 1
 c10:	09 c0       	rjmp	.+18     	; 0xc24 <fputc+0x28>
 c12:	1f ef       	ldi	r17, 0xFF	; 255
 c14:	0f ef       	ldi	r16, 0xFF	; 255
 c16:	81 2f       	mov	r24, r17
 c18:	90 2f       	mov	r25, r16
 c1a:	df 91       	pop	r29
 c1c:	cf 91       	pop	r28
 c1e:	1f 91       	pop	r17
 c20:	0f 91       	pop	r16
 c22:	08 95       	ret
 c24:	82 ff       	sbrs	r24, 2
 c26:	15 c0       	rjmp	.+42     	; 0xc52 <fputc+0x56>
 c28:	2e 81       	ldd	r18, Y+6	; 0x06
 c2a:	3f 81       	ldd	r19, Y+7	; 0x07
 c2c:	8c 81       	ldd	r24, Y+4	; 0x04
 c2e:	9d 81       	ldd	r25, Y+5	; 0x05
 c30:	28 17       	cp	r18, r24
 c32:	39 07       	cpc	r19, r25
 c34:	44 f4       	brge	.+16     	; 0xc46 <fputc+0x4a>
 c36:	e8 81       	ld	r30, Y
 c38:	f9 81       	ldd	r31, Y+1	; 0x01
 c3a:	8e 2f       	mov	r24, r30
 c3c:	9f 2f       	mov	r25, r31
 c3e:	01 96       	adiw	r24, 0x01	; 1
 c40:	99 83       	std	Y+1, r25	; 0x01
 c42:	88 83       	st	Y, r24
 c44:	10 83       	st	Z, r17
 c46:	8e 81       	ldd	r24, Y+6	; 0x06
 c48:	9f 81       	ldd	r25, Y+7	; 0x07
 c4a:	01 96       	adiw	r24, 0x01	; 1
 c4c:	9f 83       	std	Y+7, r25	; 0x07
 c4e:	8e 83       	std	Y+6, r24	; 0x06
 c50:	e2 cf       	rjmp	.-60     	; 0xc16 <fputc+0x1a>
 c52:	e8 85       	ldd	r30, Y+8	; 0x08
 c54:	f9 85       	ldd	r31, Y+9	; 0x09
 c56:	81 2f       	mov	r24, r17
 c58:	09 95       	icall
 c5a:	89 2b       	or	r24, r25
 c5c:	a1 f3       	breq	.-24     	; 0xc46 <fputc+0x4a>
 c5e:	d9 cf       	rjmp	.-78     	; 0xc12 <fputc+0x16>

00000c60 <__ultoa_invert>:
 c60:	e4 2f       	mov	r30, r20
 c62:	f5 2f       	mov	r31, r21
 c64:	aa 27       	eor	r26, r26
 c66:	28 30       	cpi	r18, 0x08	; 8
 c68:	69 f1       	breq	.+90     	; 0xcc4 <__ultoa_invert+0x64>
 c6a:	20 31       	cpi	r18, 0x10	; 16
 c6c:	99 f1       	breq	.+102    	; 0xcd4 <__ultoa_invert+0x74>
 c6e:	e8 94       	clt
 c70:	6f 93       	push	r22
 c72:	6e 7f       	andi	r22, 0xFE	; 254
 c74:	6e 5f       	subi	r22, 0xFE	; 254
 c76:	7f 4f       	sbci	r23, 0xFF	; 255
 c78:	8f 4f       	sbci	r24, 0xFF	; 255
 c7a:	9f 4f       	sbci	r25, 0xFF	; 255
 c7c:	af 4f       	sbci	r26, 0xFF	; 255
 c7e:	b1 e0       	ldi	r27, 0x01	; 1
 c80:	41 d0       	rcall	.+130    	; 0xd04 <__ultoa_invert+0xa4>
 c82:	b4 e0       	ldi	r27, 0x04	; 4
 c84:	3f d0       	rcall	.+126    	; 0xd04 <__ultoa_invert+0xa4>
 c86:	67 0f       	add	r22, r23
 c88:	78 1f       	adc	r23, r24
 c8a:	89 1f       	adc	r24, r25
 c8c:	9a 1f       	adc	r25, r26
 c8e:	a1 1d       	adc	r26, r1
 c90:	68 0f       	add	r22, r24
 c92:	79 1f       	adc	r23, r25
 c94:	8a 1f       	adc	r24, r26
 c96:	91 1d       	adc	r25, r1
 c98:	a1 1d       	adc	r26, r1
 c9a:	6a 0f       	add	r22, r26
 c9c:	71 1d       	adc	r23, r1
 c9e:	81 1d       	adc	r24, r1
 ca0:	91 1d       	adc	r25, r1
 ca2:	a1 1d       	adc	r26, r1
 ca4:	23 d0       	rcall	.+70     	; 0xcec <__ultoa_invert+0x8c>
 ca6:	09 f4       	brne	.+2      	; 0xcaa <__ultoa_invert+0x4a>
 ca8:	68 94       	set
 caa:	3f 91       	pop	r19
 cac:	06 2e       	mov	r0, r22
 cae:	00 0c       	add	r0, r0
 cb0:	30 19       	sub	r19, r0
 cb2:	00 0c       	add	r0, r0
 cb4:	00 0c       	add	r0, r0
 cb6:	30 19       	sub	r19, r0
 cb8:	30 5d       	subi	r19, 0xD0	; 208
 cba:	31 93       	st	Z+, r19
 cbc:	ce f6       	brtc	.-78     	; 0xc70 <__ultoa_invert+0x10>
 cbe:	8e 2f       	mov	r24, r30
 cc0:	9f 2f       	mov	r25, r31
 cc2:	08 95       	ret
 cc4:	46 2f       	mov	r20, r22
 cc6:	47 70       	andi	r20, 0x07	; 7
 cc8:	40 5d       	subi	r20, 0xD0	; 208
 cca:	41 93       	st	Z+, r20
 ccc:	b3 e0       	ldi	r27, 0x03	; 3
 cce:	0f d0       	rcall	.+30     	; 0xcee <__ultoa_invert+0x8e>
 cd0:	c9 f7       	brne	.-14     	; 0xcc4 <__ultoa_invert+0x64>
 cd2:	f5 cf       	rjmp	.-22     	; 0xcbe <__ultoa_invert+0x5e>
 cd4:	46 2f       	mov	r20, r22
 cd6:	4f 70       	andi	r20, 0x0F	; 15
 cd8:	40 5d       	subi	r20, 0xD0	; 208
 cda:	4a 33       	cpi	r20, 0x3A	; 58
 cdc:	18 f0       	brcs	.+6      	; 0xce4 <__ultoa_invert+0x84>
 cde:	49 5d       	subi	r20, 0xD9	; 217
 ce0:	31 fd       	sbrc	r19, 1
 ce2:	40 52       	subi	r20, 0x20	; 32
 ce4:	41 93       	st	Z+, r20
 ce6:	02 d0       	rcall	.+4      	; 0xcec <__ultoa_invert+0x8c>
 ce8:	a9 f7       	brne	.-22     	; 0xcd4 <__ultoa_invert+0x74>
 cea:	e9 cf       	rjmp	.-46     	; 0xcbe <__ultoa_invert+0x5e>
 cec:	b4 e0       	ldi	r27, 0x04	; 4
 cee:	a6 95       	lsr	r26
 cf0:	97 95       	ror	r25
 cf2:	87 95       	ror	r24
 cf4:	77 95       	ror	r23
 cf6:	67 95       	ror	r22
 cf8:	ba 95       	dec	r27
 cfa:	c9 f7       	brne	.-14     	; 0xcee <__ultoa_invert+0x8e>
 cfc:	00 97       	sbiw	r24, 0x00	; 0
 cfe:	61 05       	cpc	r22, r1
 d00:	71 05       	cpc	r23, r1
 d02:	08 95       	ret
 d04:	26 2f       	mov	r18, r22
 d06:	37 2f       	mov	r19, r23
 d08:	48 2f       	mov	r20, r24
 d0a:	59 2f       	mov	r21, r25
 d0c:	0a 2e       	mov	r0, r26
 d0e:	06 94       	lsr	r0
 d10:	57 95       	ror	r21
 d12:	47 95       	ror	r20
 d14:	37 95       	ror	r19
 d16:	27 95       	ror	r18
 d18:	ba 95       	dec	r27
 d1a:	c9 f7       	brne	.-14     	; 0xd0e <__ultoa_invert+0xae>
 d1c:	62 0f       	add	r22, r18
 d1e:	73 1f       	adc	r23, r19
 d20:	84 1f       	adc	r24, r20
 d22:	95 1f       	adc	r25, r21
 d24:	a0 1d       	adc	r26, r0
 d26:	08 95       	ret

00000d28 <__mulqi3>:
 d28:	00 24       	eor	r0, r0

00000d2a <__mulqi3_loop>:
 d2a:	80 fd       	sbrc	r24, 0
 d2c:	06 0e       	add	r0, r22
 d2e:	66 0f       	add	r22, r22
 d30:	11 f0       	breq	.+4      	; 0xd36 <__mulqi3_exit>
 d32:	86 95       	lsr	r24
 d34:	d1 f7       	brne	.-12     	; 0xd2a <__mulqi3_loop>

00000d36 <__mulqi3_exit>:
 d36:	80 2d       	mov	r24, r0
 d38:	08 95       	ret

00000d3a <__prologue_saves__>:
 d3a:	2f 92       	push	r2
 d3c:	3f 92       	push	r3
 d3e:	4f 92       	push	r4
 d40:	5f 92       	push	r5
 d42:	6f 92       	push	r6
 d44:	7f 92       	push	r7
 d46:	8f 92       	push	r8
 d48:	9f 92       	push	r9
 d4a:	af 92       	push	r10
 d4c:	bf 92       	push	r11
 d4e:	cf 92       	push	r12
 d50:	df 92       	push	r13
 d52:	ef 92       	push	r14
 d54:	ff 92       	push	r15
 d56:	0f 93       	push	r16
 d58:	1f 93       	push	r17
 d5a:	cf 93       	push	r28
 d5c:	df 93       	push	r29
 d5e:	cd b7       	in	r28, 0x3d	; 61
 d60:	de b7       	in	r29, 0x3e	; 62
 d62:	ca 1b       	sub	r28, r26
 d64:	db 0b       	sbc	r29, r27
 d66:	0f b6       	in	r0, 0x3f	; 63
 d68:	f8 94       	cli
 d6a:	de bf       	out	0x3e, r29	; 62
 d6c:	0f be       	out	0x3f, r0	; 63
 d6e:	cd bf       	out	0x3d, r28	; 61
 d70:	09 94       	ijmp

00000d72 <__epilogue_restores__>:
 d72:	2a 88       	ldd	r2, Y+18	; 0x12
 d74:	39 88       	ldd	r3, Y+17	; 0x11
 d76:	48 88       	ldd	r4, Y+16	; 0x10
 d78:	5f 84       	ldd	r5, Y+15	; 0x0f
 d7a:	6e 84       	ldd	r6, Y+14	; 0x0e
 d7c:	7d 84       	ldd	r7, Y+13	; 0x0d
 d7e:	8c 84       	ldd	r8, Y+12	; 0x0c
 d80:	9b 84       	ldd	r9, Y+11	; 0x0b
 d82:	aa 84       	ldd	r10, Y+10	; 0x0a
 d84:	b9 84       	ldd	r11, Y+9	; 0x09
 d86:	c8 84       	ldd	r12, Y+8	; 0x08
 d88:	df 80       	ldd	r13, Y+7	; 0x07
 d8a:	ee 80       	ldd	r14, Y+6	; 0x06
 d8c:	fd 80       	ldd	r15, Y+5	; 0x05
 d8e:	0c 81       	ldd	r16, Y+4	; 0x04
 d90:	1b 81       	ldd	r17, Y+3	; 0x03
 d92:	aa 81       	ldd	r26, Y+2	; 0x02
 d94:	b9 81       	ldd	r27, Y+1	; 0x01
 d96:	ce 0f       	add	r28, r30
 d98:	d1 1d       	adc	r29, r1
 d9a:	0f b6       	in	r0, 0x3f	; 63
 d9c:	f8 94       	cli
 d9e:	de bf       	out	0x3e, r29	; 62
 da0:	0f be       	out	0x3f, r0	; 63
 da2:	cd bf       	out	0x3d, r28	; 61
 da4:	ca 2f       	mov	r28, r26
 da6:	db 2f       	mov	r29, r27
 da8:	08 95       	ret

00000daa <_exit>:
 daa:	f8 94       	cli

00000dac <__stop_program>:
 dac:	ff cf       	rjmp	.-2      	; 0xdac <__stop_program>
