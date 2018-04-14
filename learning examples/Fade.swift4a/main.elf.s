
main.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 c4 00 	jmp	0x188	; 0x188 <__ctors_end>
   4:	0c 94 d9 00 	jmp	0x1b2	; 0x1b2 <__bad_interrupt>
   8:	0c 94 d9 00 	jmp	0x1b2	; 0x1b2 <__bad_interrupt>
   c:	0c 94 d9 00 	jmp	0x1b2	; 0x1b2 <__bad_interrupt>
  10:	0c 94 d9 00 	jmp	0x1b2	; 0x1b2 <__bad_interrupt>
  14:	0c 94 d9 00 	jmp	0x1b2	; 0x1b2 <__bad_interrupt>
  18:	0c 94 d9 00 	jmp	0x1b2	; 0x1b2 <__bad_interrupt>
  1c:	0c 94 d9 00 	jmp	0x1b2	; 0x1b2 <__bad_interrupt>
  20:	0c 94 d9 00 	jmp	0x1b2	; 0x1b2 <__bad_interrupt>
  24:	0c 94 d9 00 	jmp	0x1b2	; 0x1b2 <__bad_interrupt>
  28:	0c 94 d9 00 	jmp	0x1b2	; 0x1b2 <__bad_interrupt>
  2c:	0c 94 d9 00 	jmp	0x1b2	; 0x1b2 <__bad_interrupt>
  30:	0c 94 d9 00 	jmp	0x1b2	; 0x1b2 <__bad_interrupt>
  34:	0c 94 d9 00 	jmp	0x1b2	; 0x1b2 <__bad_interrupt>
  38:	0c 94 d9 00 	jmp	0x1b2	; 0x1b2 <__bad_interrupt>
  3c:	0c 94 d9 00 	jmp	0x1b2	; 0x1b2 <__bad_interrupt>
  40:	0c 94 d9 00 	jmp	0x1b2	; 0x1b2 <__bad_interrupt>
  44:	0c 94 d9 00 	jmp	0x1b2	; 0x1b2 <__bad_interrupt>
  48:	0c 94 d9 00 	jmp	0x1b2	; 0x1b2 <__bad_interrupt>
  4c:	0c 94 d9 00 	jmp	0x1b2	; 0x1b2 <__bad_interrupt>
  50:	0c 94 d9 00 	jmp	0x1b2	; 0x1b2 <__bad_interrupt>
  54:	0c 94 d9 00 	jmp	0x1b2	; 0x1b2 <__bad_interrupt>
  58:	0c 94 d9 00 	jmp	0x1b2	; 0x1b2 <__bad_interrupt>
  5c:	0c 94 d9 00 	jmp	0x1b2	; 0x1b2 <__bad_interrupt>
  60:	0c 94 d9 00 	jmp	0x1b2	; 0x1b2 <__bad_interrupt>
  64:	0c 94 d9 00 	jmp	0x1b2	; 0x1b2 <__bad_interrupt>

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

0000016a <Put0Mem>:
 16a:	50 75 74 20 79 6f 75 72 20 63 6f 6e 73 74 61 6e     Put your constan
 17a:	74 20 73 74 72 69 6e 67 20 68 65 72 65 00           t string here.

00000188 <__ctors_end>:
 188:	11 24       	eor	r1, r1
 18a:	1f be       	out	0x3f, r1	; 63
 18c:	cf ef       	ldi	r28, 0xFF	; 255
 18e:	d8 e0       	ldi	r29, 0x08	; 8
 190:	de bf       	out	0x3e, r29	; 62
 192:	cd bf       	out	0x3d, r28	; 61

00000194 <__do_copy_data>:
 194:	11 e0       	ldi	r17, 0x01	; 1
 196:	a0 e0       	ldi	r26, 0x00	; 0
 198:	b1 e0       	ldi	r27, 0x01	; 1
 19a:	e0 ea       	ldi	r30, 0xA0	; 160
 19c:	fc e0       	ldi	r31, 0x0C	; 12
 19e:	02 c0       	rjmp	.+4      	; 0x1a4 <__do_copy_data+0x10>
 1a0:	05 90       	lpm	r0, Z+
 1a2:	0d 92       	st	X+, r0
 1a4:	a4 30       	cpi	r26, 0x04	; 4
 1a6:	b1 07       	cpc	r27, r17
 1a8:	d9 f7       	brne	.-10     	; 0x1a0 <__do_copy_data+0xc>
 1aa:	0e 94 dc 00 	call	0x1b8	; 0x1b8 <main>
 1ae:	0c 94 4e 06 	jmp	0xc9c	; 0xc9c <_exit>

000001b2 <__bad_interrupt>:
 1b2:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>
	...

000001b8 <main>:
 1b8:	80 e0       	ldi	r24, 0x00	; 0
 1ba:	90 e0       	ldi	r25, 0x00	; 0
 1bc:	90 93 05 01 	sts	0x0105, r25	; 0x800105 <__data_end+0x1>
 1c0:	80 93 04 01 	sts	0x0104, r24	; 0x800104 <__data_end>
 1c4:	25 e0       	ldi	r18, 0x05	; 5
 1c6:	30 e0       	ldi	r19, 0x00	; 0
 1c8:	30 93 07 01 	sts	0x0107, r19	; 0x800107 <_Tv4main10fadeAmountVs5Int16+0x1>
 1cc:	20 93 06 01 	sts	0x0106, r18	; 0x800106 <_Tv4main10fadeAmountVs5Int16>
 1d0:	2b ef       	ldi	r18, 0xFB	; 251
 1d2:	3f ef       	ldi	r19, 0xFF	; 255
 1d4:	4f ef       	ldi	r20, 0xFF	; 255
 1d6:	50 e0       	ldi	r21, 0x00	; 0
 1d8:	04 c0       	rjmp	.+8      	; 0x1e2 <LBB0_2>

000001da <LBB0_1>:
 1da:	30 93 07 01 	sts	0x0107, r19	; 0x800107 <_Tv4main10fadeAmountVs5Int16+0x1>
 1de:	20 93 06 01 	sts	0x0106, r18	; 0x800106 <_Tv4main10fadeAmountVs5Int16>

000001e2 <LBB0_2>:
 1e2:	60 91 06 01 	lds	r22, 0x0106	; 0x800106 <_Tv4main10fadeAmountVs5Int16>
 1e6:	70 91 07 01 	lds	r23, 0x0107	; 0x800107 <_Tv4main10fadeAmountVs5Int16+0x1>
 1ea:	e0 91 04 01 	lds	r30, 0x0104	; 0x800104 <__data_end>
 1ee:	f0 91 05 01 	lds	r31, 0x0105	; 0x800105 <__data_end+0x1>
 1f2:	e6 0f       	add	r30, r22
 1f4:	f7 1f       	adc	r31, r23
 1f6:	f0 93 05 01 	sts	0x0105, r31	; 0x800105 <__data_end+0x1>
 1fa:	e0 93 04 01 	sts	0x0104, r30	; 0x800104 <__data_end>
 1fe:	61 e0       	ldi	r22, 0x01	; 1
 200:	8e 17       	cp	r24, r30
 202:	9f 07       	cpc	r25, r31
 204:	5c f0       	brlt	.+22     	; 0x21c <LBB0_5>
 206:	61 70       	andi	r22, 0x01	; 1
 208:	60 30       	cpi	r22, 0x00	; 0
 20a:	59 f3       	breq	.-42     	; 0x1e2 <LBB0_2>
 20c:	60 91 06 01 	lds	r22, 0x0106	; 0x800106 <_Tv4main10fadeAmountVs5Int16>
 210:	70 91 07 01 	lds	r23, 0x0107	; 0x800107 <_Tv4main10fadeAmountVs5Int16+0x1>
 214:	86 17       	cp	r24, r22
 216:	97 07       	cpc	r25, r23
 218:	24 f7       	brge	.-56     	; 0x1e2 <LBB0_2>
 21a:	df cf       	rjmp	.-66     	; 0x1da <LBB0_1>

0000021c <LBB0_5>:
 21c:	e0 91 04 01 	lds	r30, 0x0104	; 0x800104 <__data_end>
 220:	f0 91 05 01 	lds	r31, 0x0105	; 0x800105 <__data_end+0x1>
 224:	e4 17       	cp	r30, r20
 226:	f5 07       	cpc	r31, r21
 228:	0c f4       	brge	.+2      	; 0x22c <vfprintf>
 22a:	60 e0       	ldi	r22, 0x00	; 0

0000022c <vfprintf>:
 22c:	a0 e1       	ldi	r26, 0x10	; 16
 22e:	b0 e0       	ldi	r27, 0x00	; 0
 230:	ec e1       	ldi	r30, 0x1C	; 28
 232:	f1 e0       	ldi	r31, 0x01	; 1
 234:	0c 94 9b 04 	jmp	0x936	; 0x936 <__prologue_saves__>
 238:	7c 01       	movw	r14, r24
 23a:	1b 01       	movw	r2, r22
 23c:	6a 01       	movw	r12, r20
 23e:	fc 01       	movw	r30, r24
 240:	17 82       	std	Z+7, r1	; 0x07
 242:	16 82       	std	Z+6, r1	; 0x06
 244:	83 81       	ldd	r24, Z+3	; 0x03
 246:	81 ff       	sbrs	r24, 1
 248:	6d c3       	rjmp	.+1754   	; 0x924 <__stack+0x25>
 24a:	9e 01       	movw	r18, r28
 24c:	2f 5f       	subi	r18, 0xFF	; 255
 24e:	3f 4f       	sbci	r19, 0xFF	; 255
 250:	59 01       	movw	r10, r18
 252:	f7 01       	movw	r30, r14
 254:	93 81       	ldd	r25, Z+3	; 0x03
 256:	f1 01       	movw	r30, r2
 258:	93 fd       	sbrc	r25, 3
 25a:	85 91       	lpm	r24, Z+
 25c:	93 ff       	sbrs	r25, 3
 25e:	81 91       	ld	r24, Z+
 260:	1f 01       	movw	r2, r30
 262:	88 23       	and	r24, r24
 264:	09 f4       	brne	.+2      	; 0x268 <vfprintf+0x3c>
 266:	cc c2       	rjmp	.+1432   	; 0x800 <__FUSE_REGION_LENGTH__+0x400>
 268:	85 32       	cpi	r24, 0x25	; 37
 26a:	39 f4       	brne	.+14     	; 0x27a <vfprintf+0x4e>
 26c:	93 fd       	sbrc	r25, 3
 26e:	85 91       	lpm	r24, Z+
 270:	93 ff       	sbrs	r25, 3
 272:	81 91       	ld	r24, Z+
 274:	1f 01       	movw	r2, r30
 276:	85 32       	cpi	r24, 0x25	; 37
 278:	39 f4       	brne	.+14     	; 0x288 <vfprintf+0x5c>
 27a:	b7 01       	movw	r22, r14
 27c:	90 e0       	ldi	r25, 0x00	; 0
 27e:	0e 94 c0 05 	call	0xb80	; 0xb80 <fputc>
 282:	36 01       	movw	r6, r12
 284:	63 01       	movw	r12, r6
 286:	e5 cf       	rjmp	.-54     	; 0x252 <vfprintf+0x26>
 288:	51 2c       	mov	r5, r1
 28a:	91 2c       	mov	r9, r1
 28c:	00 e0       	ldi	r16, 0x00	; 0
 28e:	00 32       	cpi	r16, 0x20	; 32
 290:	38 f4       	brcc	.+14     	; 0x2a0 <vfprintf+0x74>
 292:	8b 32       	cpi	r24, 0x2B	; 43
 294:	09 f1       	breq	.+66     	; 0x2d8 <vfprintf+0xac>
 296:	90 f4       	brcc	.+36     	; 0x2bc <vfprintf+0x90>
 298:	80 32       	cpi	r24, 0x20	; 32
 29a:	f9 f0       	breq	.+62     	; 0x2da <vfprintf+0xae>
 29c:	83 32       	cpi	r24, 0x23	; 35
 29e:	09 f1       	breq	.+66     	; 0x2e2 <vfprintf+0xb6>
 2a0:	07 fd       	sbrc	r16, 7
 2a2:	34 c0       	rjmp	.+104    	; 0x30c <vfprintf+0xe0>
 2a4:	20 ed       	ldi	r18, 0xD0	; 208
 2a6:	28 0f       	add	r18, r24
 2a8:	2a 30       	cpi	r18, 0x0A	; 10
 2aa:	20 f5       	brcc	.+72     	; 0x2f4 <vfprintf+0xc8>
 2ac:	06 ff       	sbrs	r16, 6
 2ae:	1b c0       	rjmp	.+54     	; 0x2e6 <vfprintf+0xba>
 2b0:	fa e0       	ldi	r31, 0x0A	; 10
 2b2:	5f 9e       	mul	r5, r31
 2b4:	20 0d       	add	r18, r0
 2b6:	11 24       	eor	r1, r1
 2b8:	52 2e       	mov	r5, r18
 2ba:	05 c0       	rjmp	.+10     	; 0x2c6 <vfprintf+0x9a>
 2bc:	8d 32       	cpi	r24, 0x2D	; 45
 2be:	79 f0       	breq	.+30     	; 0x2de <vfprintf+0xb2>
 2c0:	80 33       	cpi	r24, 0x30	; 48
 2c2:	71 f7       	brne	.-36     	; 0x2a0 <vfprintf+0x74>
 2c4:	01 60       	ori	r16, 0x01	; 1
 2c6:	f1 01       	movw	r30, r2
 2c8:	93 fd       	sbrc	r25, 3
 2ca:	85 91       	lpm	r24, Z+
 2cc:	93 ff       	sbrs	r25, 3
 2ce:	81 91       	ld	r24, Z+
 2d0:	1f 01       	movw	r2, r30
 2d2:	81 11       	cpse	r24, r1
 2d4:	dc cf       	rjmp	.-72     	; 0x28e <vfprintf+0x62>
 2d6:	1a c0       	rjmp	.+52     	; 0x30c <vfprintf+0xe0>
 2d8:	02 60       	ori	r16, 0x02	; 2
 2da:	04 60       	ori	r16, 0x04	; 4
 2dc:	f4 cf       	rjmp	.-24     	; 0x2c6 <vfprintf+0x9a>
 2de:	08 60       	ori	r16, 0x08	; 8
 2e0:	f2 cf       	rjmp	.-28     	; 0x2c6 <vfprintf+0x9a>
 2e2:	00 61       	ori	r16, 0x10	; 16
 2e4:	f0 cf       	rjmp	.-32     	; 0x2c6 <vfprintf+0x9a>
 2e6:	3a e0       	ldi	r19, 0x0A	; 10
 2e8:	93 9e       	mul	r9, r19
 2ea:	20 0d       	add	r18, r0
 2ec:	11 24       	eor	r1, r1
 2ee:	92 2e       	mov	r9, r18
 2f0:	00 62       	ori	r16, 0x20	; 32
 2f2:	e9 cf       	rjmp	.-46     	; 0x2c6 <vfprintf+0x9a>
 2f4:	8e 32       	cpi	r24, 0x2E	; 46
 2f6:	21 f4       	brne	.+8      	; 0x300 <vfprintf+0xd4>
 2f8:	06 fd       	sbrc	r16, 6
 2fa:	82 c2       	rjmp	.+1284   	; 0x800 <__FUSE_REGION_LENGTH__+0x400>
 2fc:	00 64       	ori	r16, 0x40	; 64
 2fe:	e3 cf       	rjmp	.-58     	; 0x2c6 <vfprintf+0x9a>
 300:	8c 36       	cpi	r24, 0x6C	; 108
 302:	11 f4       	brne	.+4      	; 0x308 <vfprintf+0xdc>
 304:	00 68       	ori	r16, 0x80	; 128
 306:	df cf       	rjmp	.-66     	; 0x2c6 <vfprintf+0x9a>
 308:	88 36       	cpi	r24, 0x68	; 104
 30a:	e9 f2       	breq	.-70     	; 0x2c6 <vfprintf+0x9a>
 30c:	9b eb       	ldi	r25, 0xBB	; 187
 30e:	98 0f       	add	r25, r24
 310:	93 30       	cpi	r25, 0x03	; 3
 312:	d8 f5       	brcc	.+118    	; 0x38a <vfprintf+0x15e>
 314:	00 61       	ori	r16, 0x10	; 16
 316:	80 5e       	subi	r24, 0xE0	; 224
 318:	06 fd       	sbrc	r16, 6
 31a:	02 c0       	rjmp	.+4      	; 0x320 <vfprintf+0xf4>
 31c:	46 e0       	ldi	r20, 0x06	; 6
 31e:	54 2e       	mov	r5, r20
 320:	10 2f       	mov	r17, r16
 322:	1f 73       	andi	r17, 0x3F	; 63
 324:	85 36       	cpi	r24, 0x65	; 101
 326:	c1 f5       	brne	.+112    	; 0x398 <vfprintf+0x16c>
 328:	10 64       	ori	r17, 0x40	; 64
 32a:	17 ff       	sbrs	r17, 7
 32c:	3e c0       	rjmp	.+124    	; 0x3aa <vfprintf+0x17e>
 32e:	8b e3       	ldi	r24, 0x3B	; 59
 330:	85 15       	cp	r24, r5
 332:	08 f4       	brcc	.+2      	; 0x336 <vfprintf+0x10a>
 334:	42 c0       	rjmp	.+132    	; 0x3ba <vfprintf+0x18e>
 336:	91 e0       	ldi	r25, 0x01	; 1
 338:	95 0d       	add	r25, r5
 33a:	9c 87       	std	Y+12, r25	; 0x0c
 33c:	27 e0       	ldi	r18, 0x07	; 7
 33e:	36 01       	movw	r6, r12
 340:	34 e0       	ldi	r19, 0x04	; 4
 342:	63 0e       	add	r6, r19
 344:	71 1c       	adc	r7, r1
 346:	f6 01       	movw	r30, r12
 348:	60 81       	ld	r22, Z
 34a:	71 81       	ldd	r23, Z+1	; 0x01
 34c:	82 81       	ldd	r24, Z+2	; 0x02
 34e:	93 81       	ldd	r25, Z+3	; 0x03
 350:	0c 85       	ldd	r16, Y+12	; 0x0c
 352:	a5 01       	movw	r20, r10
 354:	0e 94 d2 04 	call	0x9a4	; 0x9a4 <__ftoa_engine>
 358:	6c 01       	movw	r12, r24
 35a:	f9 81       	ldd	r31, Y+1	; 0x01
 35c:	fe 87       	std	Y+14, r31	; 0x0e
 35e:	f0 ff       	sbrs	r31, 0
 360:	02 c0       	rjmp	.+4      	; 0x366 <vfprintf+0x13a>
 362:	f3 ff       	sbrs	r31, 3
 364:	30 c0       	rjmp	.+96     	; 0x3c6 <vfprintf+0x19a>
 366:	11 fd       	sbrc	r17, 1
 368:	30 c0       	rjmp	.+96     	; 0x3ca <vfprintf+0x19e>
 36a:	01 2f       	mov	r16, r17
 36c:	04 70       	andi	r16, 0x04	; 4
 36e:	12 fd       	sbrc	r17, 2
 370:	00 e2       	ldi	r16, 0x20	; 32
 372:	2e 85       	ldd	r18, Y+14	; 0x0e
 374:	2c 70       	andi	r18, 0x0C	; 12
 376:	42 2e       	mov	r4, r18
 378:	09 f4       	brne	.+2      	; 0x37c <vfprintf+0x150>
 37a:	64 c0       	rjmp	.+200    	; 0x444 <__FUSE_REGION_LENGTH__+0x44>
 37c:	01 11       	cpse	r16, r1
 37e:	d5 c2       	rjmp	.+1450   	; 0x92a <__stack+0x2b>
 380:	f3 e0       	ldi	r31, 0x03	; 3
 382:	f9 15       	cp	r31, r9
 384:	20 f1       	brcs	.+72     	; 0x3ce <vfprintf+0x1a2>
 386:	41 2c       	mov	r4, r1
 388:	36 c0       	rjmp	.+108    	; 0x3f6 <vfprintf+0x1ca>
 38a:	9b e9       	ldi	r25, 0x9B	; 155
 38c:	98 0f       	add	r25, r24
 38e:	93 30       	cpi	r25, 0x03	; 3
 390:	08 f0       	brcs	.+2      	; 0x394 <vfprintf+0x168>
 392:	76 c1       	rjmp	.+748    	; 0x680 <__FUSE_REGION_LENGTH__+0x280>
 394:	0f 7e       	andi	r16, 0xEF	; 239
 396:	c0 cf       	rjmp	.-128    	; 0x318 <vfprintf+0xec>
 398:	86 36       	cpi	r24, 0x66	; 102
 39a:	11 f4       	brne	.+4      	; 0x3a0 <vfprintf+0x174>
 39c:	10 68       	ori	r17, 0x80	; 128
 39e:	c5 cf       	rjmp	.-118    	; 0x32a <vfprintf+0xfe>
 3a0:	55 20       	and	r5, r5
 3a2:	09 f4       	brne	.+2      	; 0x3a6 <vfprintf+0x17a>
 3a4:	c2 cf       	rjmp	.-124    	; 0x32a <vfprintf+0xfe>
 3a6:	5a 94       	dec	r5
 3a8:	c0 cf       	rjmp	.-128    	; 0x32a <vfprintf+0xfe>
 3aa:	e7 e0       	ldi	r30, 0x07	; 7
 3ac:	e5 15       	cp	r30, r5
 3ae:	48 f4       	brcc	.+18     	; 0x3c2 <vfprintf+0x196>
 3b0:	27 e0       	ldi	r18, 0x07	; 7
 3b2:	37 e0       	ldi	r19, 0x07	; 7
 3b4:	53 2e       	mov	r5, r19
 3b6:	1c 86       	std	Y+12, r1	; 0x0c
 3b8:	c2 cf       	rjmp	.-124    	; 0x33e <vfprintf+0x112>
 3ba:	27 e0       	ldi	r18, 0x07	; 7
 3bc:	fc e3       	ldi	r31, 0x3C	; 60
 3be:	fc 87       	std	Y+12, r31	; 0x0c
 3c0:	be cf       	rjmp	.-132    	; 0x33e <vfprintf+0x112>
 3c2:	25 2d       	mov	r18, r5
 3c4:	f8 cf       	rjmp	.-16     	; 0x3b6 <vfprintf+0x18a>
 3c6:	0d e2       	ldi	r16, 0x2D	; 45
 3c8:	d4 cf       	rjmp	.-88     	; 0x372 <vfprintf+0x146>
 3ca:	0b e2       	ldi	r16, 0x2B	; 43
 3cc:	d2 cf       	rjmp	.-92     	; 0x372 <vfprintf+0x146>
 3ce:	83 e0       	ldi	r24, 0x03	; 3
 3d0:	49 2c       	mov	r4, r9
 3d2:	48 1a       	sub	r4, r24
 3d4:	13 fd       	sbrc	r17, 3
 3d6:	08 c0       	rjmp	.+16     	; 0x3e8 <vfprintf+0x1bc>
 3d8:	b7 01       	movw	r22, r14
 3da:	80 e2       	ldi	r24, 0x20	; 32
 3dc:	90 e0       	ldi	r25, 0x00	; 0
 3de:	0e 94 c0 05 	call	0xb80	; 0xb80 <fputc>
 3e2:	4a 94       	dec	r4
 3e4:	41 10       	cpse	r4, r1
 3e6:	f8 cf       	rjmp	.-16     	; 0x3d8 <vfprintf+0x1ac>
 3e8:	00 23       	and	r16, r16
 3ea:	29 f0       	breq	.+10     	; 0x3f6 <vfprintf+0x1ca>
 3ec:	b7 01       	movw	r22, r14
 3ee:	80 2f       	mov	r24, r16
 3f0:	90 e0       	ldi	r25, 0x00	; 0
 3f2:	0e 94 c0 05 	call	0xb80	; 0xb80 <fputc>
 3f6:	3e 85       	ldd	r19, Y+14	; 0x0e
 3f8:	33 ff       	sbrs	r19, 3
 3fa:	15 c0       	rjmp	.+42     	; 0x426 <__FUSE_REGION_LENGTH__+0x26>
 3fc:	98 e6       	ldi	r25, 0x68	; 104
 3fe:	c9 2e       	mov	r12, r25
 400:	90 e0       	ldi	r25, 0x00	; 0
 402:	d9 2e       	mov	r13, r25
 404:	10 71       	andi	r17, 0x10	; 16
 406:	f6 01       	movw	r30, r12
 408:	84 91       	lpm	r24, Z
 40a:	81 11       	cpse	r24, r1
 40c:	11 c0       	rjmp	.+34     	; 0x430 <__FUSE_REGION_LENGTH__+0x30>
 40e:	44 20       	and	r4, r4
 410:	09 f4       	brne	.+2      	; 0x414 <__FUSE_REGION_LENGTH__+0x14>
 412:	38 cf       	rjmp	.-400    	; 0x284 <vfprintf+0x58>
 414:	b7 01       	movw	r22, r14
 416:	80 e2       	ldi	r24, 0x20	; 32
 418:	90 e0       	ldi	r25, 0x00	; 0
 41a:	0e 94 c0 05 	call	0xb80	; 0xb80 <fputc>
 41e:	4a 94       	dec	r4
 420:	f6 cf       	rjmp	.-20     	; 0x40e <__FUSE_REGION_LENGTH__+0xe>
 422:	84 e0       	ldi	r24, 0x04	; 4
 424:	d5 cf       	rjmp	.-86     	; 0x3d0 <vfprintf+0x1a4>
 426:	8c e6       	ldi	r24, 0x6C	; 108
 428:	c8 2e       	mov	r12, r24
 42a:	80 e0       	ldi	r24, 0x00	; 0
 42c:	d8 2e       	mov	r13, r24
 42e:	ea cf       	rjmp	.-44     	; 0x404 <__FUSE_REGION_LENGTH__+0x4>
 430:	11 11       	cpse	r17, r1
 432:	80 52       	subi	r24, 0x20	; 32
 434:	b7 01       	movw	r22, r14
 436:	90 e0       	ldi	r25, 0x00	; 0
 438:	0e 94 c0 05 	call	0xb80	; 0xb80 <fputc>
 43c:	8f ef       	ldi	r24, 0xFF	; 255
 43e:	c8 1a       	sub	r12, r24
 440:	d8 0a       	sbc	r13, r24
 442:	e1 cf       	rjmp	.-62     	; 0x406 <__FUSE_REGION_LENGTH__+0x6>
 444:	17 ff       	sbrs	r17, 7
 446:	7c c0       	rjmp	.+248    	; 0x540 <__FUSE_REGION_LENGTH__+0x140>
 448:	8c 85       	ldd	r24, Y+12	; 0x0c
 44a:	8c 0d       	add	r24, r12
 44c:	fe 85       	ldd	r31, Y+14	; 0x0e
 44e:	f4 ff       	sbrs	r31, 4
 450:	04 c0       	rjmp	.+8      	; 0x45a <__FUSE_REGION_LENGTH__+0x5a>
 452:	9a 81       	ldd	r25, Y+2	; 0x02
 454:	91 33       	cpi	r25, 0x31	; 49
 456:	09 f4       	brne	.+2      	; 0x45a <__FUSE_REGION_LENGTH__+0x5a>
 458:	81 50       	subi	r24, 0x01	; 1
 45a:	18 16       	cp	r1, r24
 45c:	0c f0       	brlt	.+2      	; 0x460 <__FUSE_REGION_LENGTH__+0x60>
 45e:	93 c0       	rjmp	.+294    	; 0x586 <__FUSE_REGION_LENGTH__+0x186>
 460:	8c 87       	std	Y+12, r24	; 0x0c
 462:	89 30       	cpi	r24, 0x09	; 9
 464:	10 f0       	brcs	.+4      	; 0x46a <__FUSE_REGION_LENGTH__+0x6a>
 466:	28 e0       	ldi	r18, 0x08	; 8
 468:	2c 87       	std	Y+12, r18	; 0x0c
 46a:	17 ff       	sbrs	r17, 7
 46c:	91 c0       	rjmp	.+290    	; 0x590 <__FUSE_REGION_LENGTH__+0x190>
 46e:	1c 14       	cp	r1, r12
 470:	1d 04       	cpc	r1, r13
 472:	0c f0       	brlt	.+2      	; 0x476 <__FUSE_REGION_LENGTH__+0x76>
 474:	90 c0       	rjmp	.+288    	; 0x596 <__FUSE_REGION_LENGTH__+0x196>
 476:	c6 01       	movw	r24, r12
 478:	01 96       	adiw	r24, 0x01	; 1
 47a:	01 11       	cpse	r16, r1
 47c:	01 96       	adiw	r24, 0x01	; 1
 47e:	55 20       	and	r5, r5
 480:	31 f0       	breq	.+12     	; 0x48e <__FUSE_REGION_LENGTH__+0x8e>
 482:	25 2d       	mov	r18, r5
 484:	30 e0       	ldi	r19, 0x00	; 0
 486:	2f 5f       	subi	r18, 0xFF	; 255
 488:	3f 4f       	sbci	r19, 0xFF	; 255
 48a:	82 0f       	add	r24, r18
 48c:	93 1f       	adc	r25, r19
 48e:	29 2d       	mov	r18, r9
 490:	30 e0       	ldi	r19, 0x00	; 0
 492:	82 17       	cp	r24, r18
 494:	93 07       	cpc	r25, r19
 496:	14 f4       	brge	.+4      	; 0x49c <__FUSE_REGION_LENGTH__+0x9c>
 498:	49 2c       	mov	r4, r9
 49a:	48 1a       	sub	r4, r24
 49c:	81 2f       	mov	r24, r17
 49e:	89 70       	andi	r24, 0x09	; 9
 4a0:	11 f4       	brne	.+4      	; 0x4a6 <__FUSE_REGION_LENGTH__+0xa6>
 4a2:	41 10       	cpse	r4, r1
 4a4:	7b c0       	rjmp	.+246    	; 0x59c <__FUSE_REGION_LENGTH__+0x19c>
 4a6:	00 23       	and	r16, r16
 4a8:	29 f0       	breq	.+10     	; 0x4b4 <__FUSE_REGION_LENGTH__+0xb4>
 4aa:	b7 01       	movw	r22, r14
 4ac:	80 2f       	mov	r24, r16
 4ae:	90 e0       	ldi	r25, 0x00	; 0
 4b0:	0e 94 c0 05 	call	0xb80	; 0xb80 <fputc>
 4b4:	13 fd       	sbrc	r17, 3
 4b6:	02 c0       	rjmp	.+4      	; 0x4bc <__FUSE_REGION_LENGTH__+0xbc>
 4b8:	41 10       	cpse	r4, r1
 4ba:	77 c0       	rjmp	.+238    	; 0x5aa <__FUSE_REGION_LENGTH__+0x1aa>
 4bc:	17 ff       	sbrs	r17, 7
 4be:	90 c0       	rjmp	.+288    	; 0x5e0 <__FUSE_REGION_LENGTH__+0x1e0>
 4c0:	46 01       	movw	r8, r12
 4c2:	d7 fe       	sbrs	r13, 7
 4c4:	02 c0       	rjmp	.+4      	; 0x4ca <__FUSE_REGION_LENGTH__+0xca>
 4c6:	81 2c       	mov	r8, r1
 4c8:	91 2c       	mov	r9, r1
 4ca:	c6 01       	movw	r24, r12
 4cc:	88 19       	sub	r24, r8
 4ce:	99 09       	sbc	r25, r9
 4d0:	f5 01       	movw	r30, r10
 4d2:	e8 0f       	add	r30, r24
 4d4:	f9 1f       	adc	r31, r25
 4d6:	f8 8b       	std	Y+16, r31	; 0x10
 4d8:	ef 87       	std	Y+15, r30	; 0x0f
 4da:	96 01       	movw	r18, r12
 4dc:	8c 85       	ldd	r24, Y+12	; 0x0c
 4de:	28 1b       	sub	r18, r24
 4e0:	31 09       	sbc	r19, r1
 4e2:	3d 87       	std	Y+13, r19	; 0x0d
 4e4:	2c 87       	std	Y+12, r18	; 0x0c
 4e6:	05 2d       	mov	r16, r5
 4e8:	10 e0       	ldi	r17, 0x00	; 0
 4ea:	11 95       	neg	r17
 4ec:	01 95       	neg	r16
 4ee:	11 09       	sbc	r17, r1
 4f0:	9f ef       	ldi	r25, 0xFF	; 255
 4f2:	89 16       	cp	r8, r25
 4f4:	99 06       	cpc	r9, r25
 4f6:	29 f4       	brne	.+10     	; 0x502 <__FUSE_REGION_LENGTH__+0x102>
 4f8:	b7 01       	movw	r22, r14
 4fa:	8e e2       	ldi	r24, 0x2E	; 46
 4fc:	90 e0       	ldi	r25, 0x00	; 0
 4fe:	0e 94 c0 05 	call	0xb80	; 0xb80 <fputc>
 502:	c8 14       	cp	r12, r8
 504:	d9 04       	cpc	r13, r9
 506:	0c f4       	brge	.+2      	; 0x50a <__FUSE_REGION_LENGTH__+0x10a>
 508:	57 c0       	rjmp	.+174    	; 0x5b8 <__FUSE_REGION_LENGTH__+0x1b8>
 50a:	ec 85       	ldd	r30, Y+12	; 0x0c
 50c:	fd 85       	ldd	r31, Y+13	; 0x0d
 50e:	e8 15       	cp	r30, r8
 510:	f9 05       	cpc	r31, r9
 512:	0c f0       	brlt	.+2      	; 0x516 <__FUSE_REGION_LENGTH__+0x116>
 514:	51 c0       	rjmp	.+162    	; 0x5b8 <__FUSE_REGION_LENGTH__+0x1b8>
 516:	ef 85       	ldd	r30, Y+15	; 0x0f
 518:	f8 89       	ldd	r31, Y+16	; 0x10
 51a:	81 81       	ldd	r24, Z+1	; 0x01
 51c:	f1 e0       	ldi	r31, 0x01	; 1
 51e:	8f 1a       	sub	r8, r31
 520:	91 08       	sbc	r9, r1
 522:	2f 85       	ldd	r18, Y+15	; 0x0f
 524:	38 89       	ldd	r19, Y+16	; 0x10
 526:	2f 5f       	subi	r18, 0xFF	; 255
 528:	3f 4f       	sbci	r19, 0xFF	; 255
 52a:	38 8b       	std	Y+16, r19	; 0x10
 52c:	2f 87       	std	Y+15, r18	; 0x0f
 52e:	80 16       	cp	r8, r16
 530:	91 06       	cpc	r9, r17
 532:	0c f4       	brge	.+2      	; 0x536 <__FUSE_REGION_LENGTH__+0x136>
 534:	43 c0       	rjmp	.+134    	; 0x5bc <__FUSE_REGION_LENGTH__+0x1bc>
 536:	b7 01       	movw	r22, r14
 538:	90 e0       	ldi	r25, 0x00	; 0
 53a:	0e 94 c0 05 	call	0xb80	; 0xb80 <fputc>
 53e:	d8 cf       	rjmp	.-80     	; 0x4f0 <__FUSE_REGION_LENGTH__+0xf0>
 540:	16 fd       	sbrc	r17, 6
 542:	93 cf       	rjmp	.-218    	; 0x46a <__FUSE_REGION_LENGTH__+0x6a>
 544:	e5 2d       	mov	r30, r5
 546:	f0 e0       	ldi	r31, 0x00	; 0
 548:	ec 15       	cp	r30, r12
 54a:	fd 05       	cpc	r31, r13
 54c:	34 f0       	brlt	.+12     	; 0x55a <__FUSE_REGION_LENGTH__+0x15a>
 54e:	3c ef       	ldi	r19, 0xFC	; 252
 550:	c3 16       	cp	r12, r19
 552:	3f ef       	ldi	r19, 0xFF	; 255
 554:	d3 06       	cpc	r13, r19
 556:	0c f0       	brlt	.+2      	; 0x55a <__FUSE_REGION_LENGTH__+0x15a>
 558:	10 68       	ori	r17, 0x80	; 128
 55a:	32 96       	adiw	r30, 0x02	; 2
 55c:	ea 0d       	add	r30, r10
 55e:	fb 1d       	adc	r31, r11
 560:	55 20       	and	r5, r5
 562:	19 f0       	breq	.+6      	; 0x56a <__FUSE_REGION_LENGTH__+0x16a>
 564:	82 91       	ld	r24, -Z
 566:	80 33       	cpi	r24, 0x30	; 48
 568:	61 f0       	breq	.+24     	; 0x582 <__FUSE_REGION_LENGTH__+0x182>
 56a:	17 ff       	sbrs	r17, 7
 56c:	7e cf       	rjmp	.-260    	; 0x46a <__FUSE_REGION_LENGTH__+0x6a>
 56e:	81 e0       	ldi	r24, 0x01	; 1
 570:	85 0d       	add	r24, r5
 572:	8c 87       	std	Y+12, r24	; 0x0c
 574:	85 2d       	mov	r24, r5
 576:	90 e0       	ldi	r25, 0x00	; 0
 578:	c8 16       	cp	r12, r24
 57a:	d9 06       	cpc	r13, r25
 57c:	3c f4       	brge	.+14     	; 0x58c <__FUSE_REGION_LENGTH__+0x18c>
 57e:	5c 18       	sub	r5, r12
 580:	74 cf       	rjmp	.-280    	; 0x46a <__FUSE_REGION_LENGTH__+0x6a>
 582:	5a 94       	dec	r5
 584:	ed cf       	rjmp	.-38     	; 0x560 <__FUSE_REGION_LENGTH__+0x160>
 586:	91 e0       	ldi	r25, 0x01	; 1
 588:	9c 87       	std	Y+12, r25	; 0x0c
 58a:	6f cf       	rjmp	.-290    	; 0x46a <__FUSE_REGION_LENGTH__+0x6a>
 58c:	51 2c       	mov	r5, r1
 58e:	6d cf       	rjmp	.-294    	; 0x46a <__FUSE_REGION_LENGTH__+0x6a>
 590:	85 e0       	ldi	r24, 0x05	; 5
 592:	90 e0       	ldi	r25, 0x00	; 0
 594:	72 cf       	rjmp	.-284    	; 0x47a <__FUSE_REGION_LENGTH__+0x7a>
 596:	81 e0       	ldi	r24, 0x01	; 1
 598:	90 e0       	ldi	r25, 0x00	; 0
 59a:	6f cf       	rjmp	.-290    	; 0x47a <__FUSE_REGION_LENGTH__+0x7a>
 59c:	b7 01       	movw	r22, r14
 59e:	80 e2       	ldi	r24, 0x20	; 32
 5a0:	90 e0       	ldi	r25, 0x00	; 0
 5a2:	0e 94 c0 05 	call	0xb80	; 0xb80 <fputc>
 5a6:	4a 94       	dec	r4
 5a8:	7c cf       	rjmp	.-264    	; 0x4a2 <__FUSE_REGION_LENGTH__+0xa2>
 5aa:	b7 01       	movw	r22, r14
 5ac:	80 e3       	ldi	r24, 0x30	; 48
 5ae:	90 e0       	ldi	r25, 0x00	; 0
 5b0:	0e 94 c0 05 	call	0xb80	; 0xb80 <fputc>
 5b4:	4a 94       	dec	r4
 5b6:	80 cf       	rjmp	.-256    	; 0x4b8 <__FUSE_REGION_LENGTH__+0xb8>
 5b8:	80 e3       	ldi	r24, 0x30	; 48
 5ba:	b0 cf       	rjmp	.-160    	; 0x51c <__FUSE_REGION_LENGTH__+0x11c>
 5bc:	c8 14       	cp	r12, r8
 5be:	d9 04       	cpc	r13, r9
 5c0:	41 f4       	brne	.+16     	; 0x5d2 <__FUSE_REGION_LENGTH__+0x1d2>
 5c2:	9a 81       	ldd	r25, Y+2	; 0x02
 5c4:	96 33       	cpi	r25, 0x36	; 54
 5c6:	50 f4       	brcc	.+20     	; 0x5dc <__FUSE_REGION_LENGTH__+0x1dc>
 5c8:	95 33       	cpi	r25, 0x35	; 53
 5ca:	19 f4       	brne	.+6      	; 0x5d2 <__FUSE_REGION_LENGTH__+0x1d2>
 5cc:	3e 85       	ldd	r19, Y+14	; 0x0e
 5ce:	34 ff       	sbrs	r19, 4
 5d0:	05 c0       	rjmp	.+10     	; 0x5dc <__FUSE_REGION_LENGTH__+0x1dc>
 5d2:	b7 01       	movw	r22, r14
 5d4:	90 e0       	ldi	r25, 0x00	; 0
 5d6:	0e 94 c0 05 	call	0xb80	; 0xb80 <fputc>
 5da:	19 cf       	rjmp	.-462    	; 0x40e <__FUSE_REGION_LENGTH__+0xe>
 5dc:	81 e3       	ldi	r24, 0x31	; 49
 5de:	f9 cf       	rjmp	.-14     	; 0x5d2 <__FUSE_REGION_LENGTH__+0x1d2>
 5e0:	8a 81       	ldd	r24, Y+2	; 0x02
 5e2:	81 33       	cpi	r24, 0x31	; 49
 5e4:	19 f0       	breq	.+6      	; 0x5ec <__FUSE_REGION_LENGTH__+0x1ec>
 5e6:	9e 85       	ldd	r25, Y+14	; 0x0e
 5e8:	9f 7e       	andi	r25, 0xEF	; 239
 5ea:	9e 87       	std	Y+14, r25	; 0x0e
 5ec:	b7 01       	movw	r22, r14
 5ee:	90 e0       	ldi	r25, 0x00	; 0
 5f0:	0e 94 c0 05 	call	0xb80	; 0xb80 <fputc>
 5f4:	51 10       	cpse	r5, r1
 5f6:	24 c0       	rjmp	.+72     	; 0x640 <__FUSE_REGION_LENGTH__+0x240>
 5f8:	14 fd       	sbrc	r17, 4
 5fa:	38 c0       	rjmp	.+112    	; 0x66c <__FUSE_REGION_LENGTH__+0x26c>
 5fc:	85 e6       	ldi	r24, 0x65	; 101
 5fe:	90 e0       	ldi	r25, 0x00	; 0
 600:	b7 01       	movw	r22, r14
 602:	0e 94 c0 05 	call	0xb80	; 0xb80 <fputc>
 606:	d7 fc       	sbrc	r13, 7
 608:	06 c0       	rjmp	.+12     	; 0x616 <__FUSE_REGION_LENGTH__+0x216>
 60a:	c1 14       	cp	r12, r1
 60c:	d1 04       	cpc	r13, r1
 60e:	89 f5       	brne	.+98     	; 0x672 <__FUSE_REGION_LENGTH__+0x272>
 610:	ee 85       	ldd	r30, Y+14	; 0x0e
 612:	e4 ff       	sbrs	r30, 4
 614:	2e c0       	rjmp	.+92     	; 0x672 <__FUSE_REGION_LENGTH__+0x272>
 616:	d1 94       	neg	r13
 618:	c1 94       	neg	r12
 61a:	d1 08       	sbc	r13, r1
 61c:	8d e2       	ldi	r24, 0x2D	; 45
 61e:	b7 01       	movw	r22, r14
 620:	90 e0       	ldi	r25, 0x00	; 0
 622:	0e 94 c0 05 	call	0xb80	; 0xb80 <fputc>
 626:	80 e3       	ldi	r24, 0x30	; 48
 628:	2a e0       	ldi	r18, 0x0A	; 10
 62a:	c2 16       	cp	r12, r18
 62c:	d1 04       	cpc	r13, r1
 62e:	1c f5       	brge	.+70     	; 0x676 <__FUSE_REGION_LENGTH__+0x276>
 630:	b7 01       	movw	r22, r14
 632:	90 e0       	ldi	r25, 0x00	; 0
 634:	0e 94 c0 05 	call	0xb80	; 0xb80 <fputc>
 638:	b7 01       	movw	r22, r14
 63a:	c6 01       	movw	r24, r12
 63c:	c0 96       	adiw	r24, 0x30	; 48
 63e:	cb cf       	rjmp	.-106    	; 0x5d6 <__FUSE_REGION_LENGTH__+0x1d6>
 640:	b7 01       	movw	r22, r14
 642:	8e e2       	ldi	r24, 0x2E	; 46
 644:	90 e0       	ldi	r25, 0x00	; 0
 646:	0e 94 c0 05 	call	0xb80	; 0xb80 <fputc>
 64a:	53 94       	inc	r5
 64c:	53 94       	inc	r5
 64e:	82 e0       	ldi	r24, 0x02	; 2
 650:	01 e0       	ldi	r16, 0x01	; 1
 652:	08 0f       	add	r16, r24
 654:	f5 01       	movw	r30, r10
 656:	e8 0f       	add	r30, r24
 658:	f1 1d       	adc	r31, r1
 65a:	80 81       	ld	r24, Z
 65c:	b7 01       	movw	r22, r14
 65e:	90 e0       	ldi	r25, 0x00	; 0
 660:	0e 94 c0 05 	call	0xb80	; 0xb80 <fputc>
 664:	80 2f       	mov	r24, r16
 666:	50 12       	cpse	r5, r16
 668:	f3 cf       	rjmp	.-26     	; 0x650 <__FUSE_REGION_LENGTH__+0x250>
 66a:	c6 cf       	rjmp	.-116    	; 0x5f8 <__FUSE_REGION_LENGTH__+0x1f8>
 66c:	85 e4       	ldi	r24, 0x45	; 69
 66e:	90 e0       	ldi	r25, 0x00	; 0
 670:	c7 cf       	rjmp	.-114    	; 0x600 <__FUSE_REGION_LENGTH__+0x200>
 672:	8b e2       	ldi	r24, 0x2B	; 43
 674:	d4 cf       	rjmp	.-88     	; 0x61e <__FUSE_REGION_LENGTH__+0x21e>
 676:	8f 5f       	subi	r24, 0xFF	; 255
 678:	fa e0       	ldi	r31, 0x0A	; 10
 67a:	cf 1a       	sub	r12, r31
 67c:	d1 08       	sbc	r13, r1
 67e:	d4 cf       	rjmp	.-88     	; 0x628 <__FUSE_REGION_LENGTH__+0x228>
 680:	83 36       	cpi	r24, 0x63	; 99
 682:	c1 f0       	breq	.+48     	; 0x6b4 <__FUSE_REGION_LENGTH__+0x2b4>
 684:	83 37       	cpi	r24, 0x73	; 115
 686:	09 f4       	brne	.+2      	; 0x68a <__FUSE_REGION_LENGTH__+0x28a>
 688:	43 c0       	rjmp	.+134    	; 0x710 <__FUSE_REGION_LENGTH__+0x310>
 68a:	83 35       	cpi	r24, 0x53	; 83
 68c:	09 f0       	breq	.+2      	; 0x690 <__FUSE_REGION_LENGTH__+0x290>
 68e:	5e c0       	rjmp	.+188    	; 0x74c <__FUSE_REGION_LENGTH__+0x34c>
 690:	36 01       	movw	r6, r12
 692:	f2 e0       	ldi	r31, 0x02	; 2
 694:	6f 0e       	add	r6, r31
 696:	71 1c       	adc	r7, r1
 698:	f6 01       	movw	r30, r12
 69a:	c0 80       	ld	r12, Z
 69c:	d1 80       	ldd	r13, Z+1	; 0x01
 69e:	06 ff       	sbrs	r16, 6
 6a0:	4b c0       	rjmp	.+150    	; 0x738 <__FUSE_REGION_LENGTH__+0x338>
 6a2:	65 2d       	mov	r22, r5
 6a4:	70 e0       	ldi	r23, 0x00	; 0
 6a6:	c6 01       	movw	r24, r12
 6a8:	0e 94 aa 05 	call	0xb54	; 0xb54 <strnlen_P>
 6ac:	9d 87       	std	Y+13, r25	; 0x0d
 6ae:	8c 87       	std	Y+12, r24	; 0x0c
 6b0:	00 68       	ori	r16, 0x80	; 128
 6b2:	0d c0       	rjmp	.+26     	; 0x6ce <__FUSE_REGION_LENGTH__+0x2ce>
 6b4:	36 01       	movw	r6, r12
 6b6:	32 e0       	ldi	r19, 0x02	; 2
 6b8:	63 0e       	add	r6, r19
 6ba:	71 1c       	adc	r7, r1
 6bc:	f6 01       	movw	r30, r12
 6be:	80 81       	ld	r24, Z
 6c0:	89 83       	std	Y+1, r24	; 0x01
 6c2:	21 e0       	ldi	r18, 0x01	; 1
 6c4:	30 e0       	ldi	r19, 0x00	; 0
 6c6:	3d 87       	std	Y+13, r19	; 0x0d
 6c8:	2c 87       	std	Y+12, r18	; 0x0c
 6ca:	65 01       	movw	r12, r10
 6cc:	0f 77       	andi	r16, 0x7F	; 127
 6ce:	03 fd       	sbrc	r16, 3
 6d0:	07 c0       	rjmp	.+14     	; 0x6e0 <__FUSE_REGION_LENGTH__+0x2e0>
 6d2:	89 2d       	mov	r24, r9
 6d4:	90 e0       	ldi	r25, 0x00	; 0
 6d6:	2c 85       	ldd	r18, Y+12	; 0x0c
 6d8:	3d 85       	ldd	r19, Y+13	; 0x0d
 6da:	28 17       	cp	r18, r24
 6dc:	39 07       	cpc	r19, r25
 6de:	78 f1       	brcs	.+94     	; 0x73e <__FUSE_REGION_LENGTH__+0x33e>
 6e0:	49 2c       	mov	r4, r9
 6e2:	ec 85       	ldd	r30, Y+12	; 0x0c
 6e4:	fd 85       	ldd	r31, Y+13	; 0x0d
 6e6:	ef 2b       	or	r30, r31
 6e8:	09 f4       	brne	.+2      	; 0x6ec <__FUSE_REGION_LENGTH__+0x2ec>
 6ea:	91 ce       	rjmp	.-734    	; 0x40e <__FUSE_REGION_LENGTH__+0xe>
 6ec:	f6 01       	movw	r30, r12
 6ee:	07 fd       	sbrc	r16, 7
 6f0:	85 91       	lpm	r24, Z+
 6f2:	07 ff       	sbrs	r16, 7
 6f4:	81 91       	ld	r24, Z+
 6f6:	6f 01       	movw	r12, r30
 6f8:	b7 01       	movw	r22, r14
 6fa:	90 e0       	ldi	r25, 0x00	; 0
 6fc:	0e 94 c0 05 	call	0xb80	; 0xb80 <fputc>
 700:	41 10       	cpse	r4, r1
 702:	4a 94       	dec	r4
 704:	8c 85       	ldd	r24, Y+12	; 0x0c
 706:	9d 85       	ldd	r25, Y+13	; 0x0d
 708:	01 97       	sbiw	r24, 0x01	; 1
 70a:	9d 87       	std	Y+13, r25	; 0x0d
 70c:	8c 87       	std	Y+12, r24	; 0x0c
 70e:	e9 cf       	rjmp	.-46     	; 0x6e2 <__FUSE_REGION_LENGTH__+0x2e2>
 710:	36 01       	movw	r6, r12
 712:	32 e0       	ldi	r19, 0x02	; 2
 714:	63 0e       	add	r6, r19
 716:	71 1c       	adc	r7, r1
 718:	f6 01       	movw	r30, r12
 71a:	c0 80       	ld	r12, Z
 71c:	d1 80       	ldd	r13, Z+1	; 0x01
 71e:	06 ff       	sbrs	r16, 6
 720:	08 c0       	rjmp	.+16     	; 0x732 <__FUSE_REGION_LENGTH__+0x332>
 722:	65 2d       	mov	r22, r5
 724:	70 e0       	ldi	r23, 0x00	; 0
 726:	c6 01       	movw	r24, r12
 728:	0e 94 b5 05 	call	0xb6a	; 0xb6a <strnlen>
 72c:	9d 87       	std	Y+13, r25	; 0x0d
 72e:	8c 87       	std	Y+12, r24	; 0x0c
 730:	cd cf       	rjmp	.-102    	; 0x6cc <__FUSE_REGION_LENGTH__+0x2cc>
 732:	6f ef       	ldi	r22, 0xFF	; 255
 734:	7f ef       	ldi	r23, 0xFF	; 255
 736:	f7 cf       	rjmp	.-18     	; 0x726 <__FUSE_REGION_LENGTH__+0x326>
 738:	6f ef       	ldi	r22, 0xFF	; 255
 73a:	7f ef       	ldi	r23, 0xFF	; 255
 73c:	b4 cf       	rjmp	.-152    	; 0x6a6 <__FUSE_REGION_LENGTH__+0x2a6>
 73e:	b7 01       	movw	r22, r14
 740:	80 e2       	ldi	r24, 0x20	; 32
 742:	90 e0       	ldi	r25, 0x00	; 0
 744:	0e 94 c0 05 	call	0xb80	; 0xb80 <fputc>
 748:	9a 94       	dec	r9
 74a:	c3 cf       	rjmp	.-122    	; 0x6d2 <__FUSE_REGION_LENGTH__+0x2d2>
 74c:	84 36       	cpi	r24, 0x64	; 100
 74e:	11 f0       	breq	.+4      	; 0x754 <__FUSE_REGION_LENGTH__+0x354>
 750:	89 36       	cpi	r24, 0x69	; 105
 752:	c1 f5       	brne	.+112    	; 0x7c4 <__FUSE_REGION_LENGTH__+0x3c4>
 754:	36 01       	movw	r6, r12
 756:	07 ff       	sbrs	r16, 7
 758:	2a c0       	rjmp	.+84     	; 0x7ae <__FUSE_REGION_LENGTH__+0x3ae>
 75a:	f4 e0       	ldi	r31, 0x04	; 4
 75c:	6f 0e       	add	r6, r31
 75e:	71 1c       	adc	r7, r1
 760:	f6 01       	movw	r30, r12
 762:	60 81       	ld	r22, Z
 764:	71 81       	ldd	r23, Z+1	; 0x01
 766:	82 81       	ldd	r24, Z+2	; 0x02
 768:	93 81       	ldd	r25, Z+3	; 0x03
 76a:	10 2f       	mov	r17, r16
 76c:	1f 76       	andi	r17, 0x6F	; 111
 76e:	97 ff       	sbrs	r25, 7
 770:	08 c0       	rjmp	.+16     	; 0x782 <__FUSE_REGION_LENGTH__+0x382>
 772:	90 95       	com	r25
 774:	80 95       	com	r24
 776:	70 95       	com	r23
 778:	61 95       	neg	r22
 77a:	7f 4f       	sbci	r23, 0xFF	; 255
 77c:	8f 4f       	sbci	r24, 0xFF	; 255
 77e:	9f 4f       	sbci	r25, 0xFF	; 255
 780:	10 68       	ori	r17, 0x80	; 128
 782:	2a e0       	ldi	r18, 0x0A	; 10
 784:	30 e0       	ldi	r19, 0x00	; 0
 786:	a5 01       	movw	r20, r10
 788:	0e 94 f0 05 	call	0xbe0	; 0xbe0 <__ultoa_invert>
 78c:	c8 2e       	mov	r12, r24
 78e:	ca 18       	sub	r12, r10
 790:	16 ff       	sbrs	r17, 6
 792:	59 c0       	rjmp	.+178    	; 0x846 <__FUSE_REGION_LENGTH__+0x446>
 794:	01 2f       	mov	r16, r17
 796:	0e 7f       	andi	r16, 0xFE	; 254
 798:	c5 14       	cp	r12, r5
 79a:	08 f0       	brcs	.+2      	; 0x79e <__FUSE_REGION_LENGTH__+0x39e>
 79c:	90 c0       	rjmp	.+288    	; 0x8be <__FUSE_REGION_LENGTH__+0x4be>
 79e:	14 ff       	sbrs	r17, 4
 7a0:	04 c0       	rjmp	.+8      	; 0x7aa <__FUSE_REGION_LENGTH__+0x3aa>
 7a2:	12 fd       	sbrc	r17, 2
 7a4:	02 c0       	rjmp	.+4      	; 0x7aa <__FUSE_REGION_LENGTH__+0x3aa>
 7a6:	01 2f       	mov	r16, r17
 7a8:	0e 7e       	andi	r16, 0xEE	; 238
 7aa:	d5 2c       	mov	r13, r5
 7ac:	4e c0       	rjmp	.+156    	; 0x84a <__FUSE_REGION_LENGTH__+0x44a>
 7ae:	f2 e0       	ldi	r31, 0x02	; 2
 7b0:	6f 0e       	add	r6, r31
 7b2:	71 1c       	adc	r7, r1
 7b4:	f6 01       	movw	r30, r12
 7b6:	60 81       	ld	r22, Z
 7b8:	71 81       	ldd	r23, Z+1	; 0x01
 7ba:	07 2e       	mov	r0, r23
 7bc:	00 0c       	add	r0, r0
 7be:	88 0b       	sbc	r24, r24
 7c0:	99 0b       	sbc	r25, r25
 7c2:	d3 cf       	rjmp	.-90     	; 0x76a <__FUSE_REGION_LENGTH__+0x36a>
 7c4:	10 2f       	mov	r17, r16
 7c6:	85 37       	cpi	r24, 0x75	; 117
 7c8:	a9 f4       	brne	.+42     	; 0x7f4 <__FUSE_REGION_LENGTH__+0x3f4>
 7ca:	1f 7e       	andi	r17, 0xEF	; 239
 7cc:	2a e0       	ldi	r18, 0x0A	; 10
 7ce:	30 e0       	ldi	r19, 0x00	; 0
 7d0:	36 01       	movw	r6, r12
 7d2:	17 ff       	sbrs	r17, 7
 7d4:	2f c0       	rjmp	.+94     	; 0x834 <__FUSE_REGION_LENGTH__+0x434>
 7d6:	f4 e0       	ldi	r31, 0x04	; 4
 7d8:	6f 0e       	add	r6, r31
 7da:	71 1c       	adc	r7, r1
 7dc:	f6 01       	movw	r30, r12
 7de:	60 81       	ld	r22, Z
 7e0:	71 81       	ldd	r23, Z+1	; 0x01
 7e2:	82 81       	ldd	r24, Z+2	; 0x02
 7e4:	93 81       	ldd	r25, Z+3	; 0x03
 7e6:	a5 01       	movw	r20, r10
 7e8:	0e 94 f0 05 	call	0xbe0	; 0xbe0 <__ultoa_invert>
 7ec:	c8 2e       	mov	r12, r24
 7ee:	ca 18       	sub	r12, r10
 7f0:	1f 77       	andi	r17, 0x7F	; 127
 7f2:	ce cf       	rjmp	.-100    	; 0x790 <__FUSE_REGION_LENGTH__+0x390>
 7f4:	19 7f       	andi	r17, 0xF9	; 249
 7f6:	8f 36       	cpi	r24, 0x6F	; 111
 7f8:	d1 f0       	breq	.+52     	; 0x82e <__FUSE_REGION_LENGTH__+0x42e>
 7fa:	48 f4       	brcc	.+18     	; 0x80e <__FUSE_REGION_LENGTH__+0x40e>
 7fc:	88 35       	cpi	r24, 0x58	; 88
 7fe:	91 f0       	breq	.+36     	; 0x824 <__FUSE_REGION_LENGTH__+0x424>
 800:	f7 01       	movw	r30, r14
 802:	86 81       	ldd	r24, Z+6	; 0x06
 804:	97 81       	ldd	r25, Z+7	; 0x07
 806:	60 96       	adiw	r28, 0x10	; 16
 808:	e2 e1       	ldi	r30, 0x12	; 18
 80a:	0c 94 b7 04 	jmp	0x96e	; 0x96e <__epilogue_restores__>
 80e:	80 37       	cpi	r24, 0x70	; 112
 810:	39 f0       	breq	.+14     	; 0x820 <__FUSE_REGION_LENGTH__+0x420>
 812:	88 37       	cpi	r24, 0x78	; 120
 814:	a9 f7       	brne	.-22     	; 0x800 <__FUSE_REGION_LENGTH__+0x400>
 816:	14 fd       	sbrc	r17, 4
 818:	14 60       	ori	r17, 0x04	; 4
 81a:	20 e1       	ldi	r18, 0x10	; 16
 81c:	30 e0       	ldi	r19, 0x00	; 0
 81e:	d8 cf       	rjmp	.-80     	; 0x7d0 <__FUSE_REGION_LENGTH__+0x3d0>
 820:	10 61       	ori	r17, 0x10	; 16
 822:	f9 cf       	rjmp	.-14     	; 0x816 <__FUSE_REGION_LENGTH__+0x416>
 824:	04 fd       	sbrc	r16, 4
 826:	16 60       	ori	r17, 0x06	; 6
 828:	20 e1       	ldi	r18, 0x10	; 16
 82a:	32 e0       	ldi	r19, 0x02	; 2
 82c:	d1 cf       	rjmp	.-94     	; 0x7d0 <__FUSE_REGION_LENGTH__+0x3d0>
 82e:	28 e0       	ldi	r18, 0x08	; 8
 830:	30 e0       	ldi	r19, 0x00	; 0
 832:	ce cf       	rjmp	.-100    	; 0x7d0 <__FUSE_REGION_LENGTH__+0x3d0>
 834:	f2 e0       	ldi	r31, 0x02	; 2
 836:	6f 0e       	add	r6, r31
 838:	71 1c       	adc	r7, r1
 83a:	f6 01       	movw	r30, r12
 83c:	60 81       	ld	r22, Z
 83e:	71 81       	ldd	r23, Z+1	; 0x01
 840:	80 e0       	ldi	r24, 0x00	; 0
 842:	90 e0       	ldi	r25, 0x00	; 0
 844:	d0 cf       	rjmp	.-96     	; 0x7e6 <__FUSE_REGION_LENGTH__+0x3e6>
 846:	dc 2c       	mov	r13, r12
 848:	01 2f       	mov	r16, r17
 84a:	04 ff       	sbrs	r16, 4
 84c:	41 c0       	rjmp	.+130    	; 0x8d0 <__FUSE_REGION_LENGTH__+0x4d0>
 84e:	fe 01       	movw	r30, r28
 850:	ec 0d       	add	r30, r12
 852:	f1 1d       	adc	r31, r1
 854:	80 81       	ld	r24, Z
 856:	80 33       	cpi	r24, 0x30	; 48
 858:	a1 f5       	brne	.+104    	; 0x8c2 <__FUSE_REGION_LENGTH__+0x4c2>
 85a:	09 7e       	andi	r16, 0xE9	; 233
 85c:	f0 2f       	mov	r31, r16
 85e:	f8 70       	andi	r31, 0x08	; 8
 860:	4f 2e       	mov	r4, r31
 862:	03 fd       	sbrc	r16, 3
 864:	43 c0       	rjmp	.+134    	; 0x8ec <__FUSE_REGION_LENGTH__+0x4ec>
 866:	00 ff       	sbrs	r16, 0
 868:	3d c0       	rjmp	.+122    	; 0x8e4 <__FUSE_REGION_LENGTH__+0x4e4>
 86a:	5c 2c       	mov	r5, r12
 86c:	d9 14       	cp	r13, r9
 86e:	10 f4       	brcc	.+4      	; 0x874 <__FUSE_REGION_LENGTH__+0x474>
 870:	59 0c       	add	r5, r9
 872:	5d 18       	sub	r5, r13
 874:	04 ff       	sbrs	r16, 4
 876:	42 c0       	rjmp	.+132    	; 0x8fc <__FUSE_REGION_LENGTH__+0x4fc>
 878:	b7 01       	movw	r22, r14
 87a:	80 e3       	ldi	r24, 0x30	; 48
 87c:	90 e0       	ldi	r25, 0x00	; 0
 87e:	0e 94 c0 05 	call	0xb80	; 0xb80 <fputc>
 882:	02 ff       	sbrs	r16, 2
 884:	07 c0       	rjmp	.+14     	; 0x894 <__FUSE_REGION_LENGTH__+0x494>
 886:	01 fd       	sbrc	r16, 1
 888:	36 c0       	rjmp	.+108    	; 0x8f6 <__FUSE_REGION_LENGTH__+0x4f6>
 88a:	88 e7       	ldi	r24, 0x78	; 120
 88c:	90 e0       	ldi	r25, 0x00	; 0
 88e:	b7 01       	movw	r22, r14
 890:	0e 94 c0 05 	call	0xb80	; 0xb80 <fputc>
 894:	c5 14       	cp	r12, r5
 896:	08 f4       	brcc	.+2      	; 0x89a <__FUSE_REGION_LENGTH__+0x49a>
 898:	3e c0       	rjmp	.+124    	; 0x916 <__stack+0x17>
 89a:	ca 94       	dec	r12
 89c:	0c 2d       	mov	r16, r12
 89e:	10 e0       	ldi	r17, 0x00	; 0
 8a0:	0f 5f       	subi	r16, 0xFF	; 255
 8a2:	1f 4f       	sbci	r17, 0xFF	; 255
 8a4:	0a 0d       	add	r16, r10
 8a6:	1b 1d       	adc	r17, r11
 8a8:	f8 01       	movw	r30, r16
 8aa:	82 91       	ld	r24, -Z
 8ac:	8f 01       	movw	r16, r30
 8ae:	b7 01       	movw	r22, r14
 8b0:	90 e0       	ldi	r25, 0x00	; 0
 8b2:	0e 94 c0 05 	call	0xb80	; 0xb80 <fputc>
 8b6:	0a 15       	cp	r16, r10
 8b8:	1b 05       	cpc	r17, r11
 8ba:	b1 f7       	brne	.-20     	; 0x8a8 <__FUSE_REGION_LENGTH__+0x4a8>
 8bc:	a8 cd       	rjmp	.-1200   	; 0x40e <__FUSE_REGION_LENGTH__+0xe>
 8be:	dc 2c       	mov	r13, r12
 8c0:	c4 cf       	rjmp	.-120    	; 0x84a <__FUSE_REGION_LENGTH__+0x44a>
 8c2:	02 fd       	sbrc	r16, 2
 8c4:	02 c0       	rjmp	.+4      	; 0x8ca <__FUSE_REGION_LENGTH__+0x4ca>
 8c6:	d3 94       	inc	r13
 8c8:	c9 cf       	rjmp	.-110    	; 0x85c <__FUSE_REGION_LENGTH__+0x45c>
 8ca:	d3 94       	inc	r13
 8cc:	d3 94       	inc	r13
 8ce:	c6 cf       	rjmp	.-116    	; 0x85c <__FUSE_REGION_LENGTH__+0x45c>
 8d0:	80 2f       	mov	r24, r16
 8d2:	86 78       	andi	r24, 0x86	; 134
 8d4:	19 f2       	breq	.-122    	; 0x85c <__FUSE_REGION_LENGTH__+0x45c>
 8d6:	f7 cf       	rjmp	.-18     	; 0x8c6 <__FUSE_REGION_LENGTH__+0x4c6>
 8d8:	b7 01       	movw	r22, r14
 8da:	80 e2       	ldi	r24, 0x20	; 32
 8dc:	90 e0       	ldi	r25, 0x00	; 0
 8de:	0e 94 c0 05 	call	0xb80	; 0xb80 <fputc>
 8e2:	d3 94       	inc	r13
 8e4:	d9 14       	cp	r13, r9
 8e6:	c0 f3       	brcs	.-16     	; 0x8d8 <__FUSE_REGION_LENGTH__+0x4d8>
 8e8:	41 2c       	mov	r4, r1
 8ea:	c4 cf       	rjmp	.-120    	; 0x874 <__FUSE_REGION_LENGTH__+0x474>
 8ec:	d9 14       	cp	r13, r9
 8ee:	e0 f7       	brcc	.-8      	; 0x8e8 <__FUSE_REGION_LENGTH__+0x4e8>
 8f0:	49 2c       	mov	r4, r9
 8f2:	4d 18       	sub	r4, r13
 8f4:	bf cf       	rjmp	.-130    	; 0x874 <__FUSE_REGION_LENGTH__+0x474>
 8f6:	88 e5       	ldi	r24, 0x58	; 88
 8f8:	90 e0       	ldi	r25, 0x00	; 0
 8fa:	c9 cf       	rjmp	.-110    	; 0x88e <__FUSE_REGION_LENGTH__+0x48e>
 8fc:	80 2f       	mov	r24, r16
 8fe:	86 78       	andi	r24, 0x86	; 134
 900:	49 f2       	breq	.-110    	; 0x894 <__FUSE_REGION_LENGTH__+0x494>
 902:	01 ff       	sbrs	r16, 1
 904:	06 c0       	rjmp	.+12     	; 0x912 <__stack+0x13>
 906:	8b e2       	ldi	r24, 0x2B	; 43
 908:	07 fd       	sbrc	r16, 7
 90a:	8d e2       	ldi	r24, 0x2D	; 45
 90c:	b7 01       	movw	r22, r14
 90e:	90 e0       	ldi	r25, 0x00	; 0
 910:	bf cf       	rjmp	.-130    	; 0x890 <__FUSE_REGION_LENGTH__+0x490>
 912:	80 e2       	ldi	r24, 0x20	; 32
 914:	f9 cf       	rjmp	.-14     	; 0x908 <__stack+0x9>
 916:	b7 01       	movw	r22, r14
 918:	80 e3       	ldi	r24, 0x30	; 48
 91a:	90 e0       	ldi	r25, 0x00	; 0
 91c:	0e 94 c0 05 	call	0xb80	; 0xb80 <fputc>
 920:	5a 94       	dec	r5
 922:	b8 cf       	rjmp	.-144    	; 0x894 <__FUSE_REGION_LENGTH__+0x494>
 924:	8f ef       	ldi	r24, 0xFF	; 255
 926:	9f ef       	ldi	r25, 0xFF	; 255
 928:	6e cf       	rjmp	.-292    	; 0x806 <__FUSE_REGION_LENGTH__+0x406>
 92a:	24 e0       	ldi	r18, 0x04	; 4
 92c:	29 15       	cp	r18, r9
 92e:	08 f4       	brcc	.+2      	; 0x932 <__stack+0x33>
 930:	78 cd       	rjmp	.-1296   	; 0x422 <__FUSE_REGION_LENGTH__+0x22>
 932:	41 2c       	mov	r4, r1
 934:	5b cd       	rjmp	.-1354   	; 0x3ec <vfprintf+0x1c0>

00000936 <__prologue_saves__>:
 936:	2f 92       	push	r2
 938:	3f 92       	push	r3
 93a:	4f 92       	push	r4
 93c:	5f 92       	push	r5
 93e:	6f 92       	push	r6
 940:	7f 92       	push	r7
 942:	8f 92       	push	r8
 944:	9f 92       	push	r9
 946:	af 92       	push	r10
 948:	bf 92       	push	r11
 94a:	cf 92       	push	r12
 94c:	df 92       	push	r13
 94e:	ef 92       	push	r14
 950:	ff 92       	push	r15
 952:	0f 93       	push	r16
 954:	1f 93       	push	r17
 956:	cf 93       	push	r28
 958:	df 93       	push	r29
 95a:	cd b7       	in	r28, 0x3d	; 61
 95c:	de b7       	in	r29, 0x3e	; 62
 95e:	ca 1b       	sub	r28, r26
 960:	db 0b       	sbc	r29, r27
 962:	0f b6       	in	r0, 0x3f	; 63
 964:	f8 94       	cli
 966:	de bf       	out	0x3e, r29	; 62
 968:	0f be       	out	0x3f, r0	; 63
 96a:	cd bf       	out	0x3d, r28	; 61
 96c:	09 94       	ijmp

0000096e <__epilogue_restores__>:
 96e:	2a 88       	ldd	r2, Y+18	; 0x12
 970:	39 88       	ldd	r3, Y+17	; 0x11
 972:	48 88       	ldd	r4, Y+16	; 0x10
 974:	5f 84       	ldd	r5, Y+15	; 0x0f
 976:	6e 84       	ldd	r6, Y+14	; 0x0e
 978:	7d 84       	ldd	r7, Y+13	; 0x0d
 97a:	8c 84       	ldd	r8, Y+12	; 0x0c
 97c:	9b 84       	ldd	r9, Y+11	; 0x0b
 97e:	aa 84       	ldd	r10, Y+10	; 0x0a
 980:	b9 84       	ldd	r11, Y+9	; 0x09
 982:	c8 84       	ldd	r12, Y+8	; 0x08
 984:	df 80       	ldd	r13, Y+7	; 0x07
 986:	ee 80       	ldd	r14, Y+6	; 0x06
 988:	fd 80       	ldd	r15, Y+5	; 0x05
 98a:	0c 81       	ldd	r16, Y+4	; 0x04
 98c:	1b 81       	ldd	r17, Y+3	; 0x03
 98e:	aa 81       	ldd	r26, Y+2	; 0x02
 990:	b9 81       	ldd	r27, Y+1	; 0x01
 992:	ce 0f       	add	r28, r30
 994:	d1 1d       	adc	r29, r1
 996:	0f b6       	in	r0, 0x3f	; 63
 998:	f8 94       	cli
 99a:	de bf       	out	0x3e, r29	; 62
 99c:	0f be       	out	0x3f, r0	; 63
 99e:	cd bf       	out	0x3d, r28	; 61
 9a0:	ed 01       	movw	r28, r26
 9a2:	08 95       	ret

000009a4 <__ftoa_engine>:
 9a4:	28 30       	cpi	r18, 0x08	; 8
 9a6:	08 f0       	brcs	.+2      	; 0x9aa <__ftoa_engine+0x6>
 9a8:	27 e0       	ldi	r18, 0x07	; 7
 9aa:	33 27       	eor	r19, r19
 9ac:	da 01       	movw	r26, r20
 9ae:	99 0f       	add	r25, r25
 9b0:	31 1d       	adc	r19, r1
 9b2:	87 fd       	sbrc	r24, 7
 9b4:	91 60       	ori	r25, 0x01	; 1
 9b6:	00 96       	adiw	r24, 0x00	; 0
 9b8:	61 05       	cpc	r22, r1
 9ba:	71 05       	cpc	r23, r1
 9bc:	39 f4       	brne	.+14     	; 0x9cc <__ftoa_engine+0x28>
 9be:	32 60       	ori	r19, 0x02	; 2
 9c0:	2e 5f       	subi	r18, 0xFE	; 254
 9c2:	3d 93       	st	X+, r19
 9c4:	30 e3       	ldi	r19, 0x30	; 48
 9c6:	2a 95       	dec	r18
 9c8:	e1 f7       	brne	.-8      	; 0x9c2 <__ftoa_engine+0x1e>
 9ca:	08 95       	ret
 9cc:	9f 3f       	cpi	r25, 0xFF	; 255
 9ce:	30 f0       	brcs	.+12     	; 0x9dc <__ftoa_engine+0x38>
 9d0:	80 38       	cpi	r24, 0x80	; 128
 9d2:	71 05       	cpc	r23, r1
 9d4:	61 05       	cpc	r22, r1
 9d6:	09 f0       	breq	.+2      	; 0x9da <__ftoa_engine+0x36>
 9d8:	3c 5f       	subi	r19, 0xFC	; 252
 9da:	3c 5f       	subi	r19, 0xFC	; 252
 9dc:	3d 93       	st	X+, r19
 9de:	91 30       	cpi	r25, 0x01	; 1
 9e0:	08 f0       	brcs	.+2      	; 0x9e4 <__ftoa_engine+0x40>
 9e2:	80 68       	ori	r24, 0x80	; 128
 9e4:	91 1d       	adc	r25, r1
 9e6:	df 93       	push	r29
 9e8:	cf 93       	push	r28
 9ea:	1f 93       	push	r17
 9ec:	0f 93       	push	r16
 9ee:	ff 92       	push	r15
 9f0:	ef 92       	push	r14
 9f2:	19 2f       	mov	r17, r25
 9f4:	98 7f       	andi	r25, 0xF8	; 248
 9f6:	96 95       	lsr	r25
 9f8:	e9 2f       	mov	r30, r25
 9fa:	96 95       	lsr	r25
 9fc:	96 95       	lsr	r25
 9fe:	e9 0f       	add	r30, r25
 a00:	ff 27       	eor	r31, r31
 a02:	e6 53       	subi	r30, 0x36	; 54
 a04:	ff 4f       	sbci	r31, 0xFF	; 255
 a06:	99 27       	eor	r25, r25
 a08:	33 27       	eor	r19, r19
 a0a:	ee 24       	eor	r14, r14
 a0c:	ff 24       	eor	r15, r15
 a0e:	a7 01       	movw	r20, r14
 a10:	e7 01       	movw	r28, r14
 a12:	05 90       	lpm	r0, Z+
 a14:	08 94       	sec
 a16:	07 94       	ror	r0
 a18:	28 f4       	brcc	.+10     	; 0xa24 <__ftoa_engine+0x80>
 a1a:	36 0f       	add	r19, r22
 a1c:	e7 1e       	adc	r14, r23
 a1e:	f8 1e       	adc	r15, r24
 a20:	49 1f       	adc	r20, r25
 a22:	51 1d       	adc	r21, r1
 a24:	66 0f       	add	r22, r22
 a26:	77 1f       	adc	r23, r23
 a28:	88 1f       	adc	r24, r24
 a2a:	99 1f       	adc	r25, r25
 a2c:	06 94       	lsr	r0
 a2e:	a1 f7       	brne	.-24     	; 0xa18 <__ftoa_engine+0x74>
 a30:	05 90       	lpm	r0, Z+
 a32:	07 94       	ror	r0
 a34:	28 f4       	brcc	.+10     	; 0xa40 <__ftoa_engine+0x9c>
 a36:	e7 0e       	add	r14, r23
 a38:	f8 1e       	adc	r15, r24
 a3a:	49 1f       	adc	r20, r25
 a3c:	56 1f       	adc	r21, r22
 a3e:	c1 1d       	adc	r28, r1
 a40:	77 0f       	add	r23, r23
 a42:	88 1f       	adc	r24, r24
 a44:	99 1f       	adc	r25, r25
 a46:	66 1f       	adc	r22, r22
 a48:	06 94       	lsr	r0
 a4a:	a1 f7       	brne	.-24     	; 0xa34 <__ftoa_engine+0x90>
 a4c:	05 90       	lpm	r0, Z+
 a4e:	07 94       	ror	r0
 a50:	28 f4       	brcc	.+10     	; 0xa5c <__ftoa_engine+0xb8>
 a52:	f8 0e       	add	r15, r24
 a54:	49 1f       	adc	r20, r25
 a56:	56 1f       	adc	r21, r22
 a58:	c7 1f       	adc	r28, r23
 a5a:	d1 1d       	adc	r29, r1
 a5c:	88 0f       	add	r24, r24
 a5e:	99 1f       	adc	r25, r25
 a60:	66 1f       	adc	r22, r22
 a62:	77 1f       	adc	r23, r23
 a64:	06 94       	lsr	r0
 a66:	a1 f7       	brne	.-24     	; 0xa50 <__ftoa_engine+0xac>
 a68:	05 90       	lpm	r0, Z+
 a6a:	07 94       	ror	r0
 a6c:	20 f4       	brcc	.+8      	; 0xa76 <__ftoa_engine+0xd2>
 a6e:	49 0f       	add	r20, r25
 a70:	56 1f       	adc	r21, r22
 a72:	c7 1f       	adc	r28, r23
 a74:	d8 1f       	adc	r29, r24
 a76:	99 0f       	add	r25, r25
 a78:	66 1f       	adc	r22, r22
 a7a:	77 1f       	adc	r23, r23
 a7c:	88 1f       	adc	r24, r24
 a7e:	06 94       	lsr	r0
 a80:	a9 f7       	brne	.-22     	; 0xa6c <__ftoa_engine+0xc8>
 a82:	84 91       	lpm	r24, Z
 a84:	10 95       	com	r17
 a86:	17 70       	andi	r17, 0x07	; 7
 a88:	41 f0       	breq	.+16     	; 0xa9a <__ftoa_engine+0xf6>
 a8a:	d6 95       	lsr	r29
 a8c:	c7 95       	ror	r28
 a8e:	57 95       	ror	r21
 a90:	47 95       	ror	r20
 a92:	f7 94       	ror	r15
 a94:	e7 94       	ror	r14
 a96:	1a 95       	dec	r17
 a98:	c1 f7       	brne	.-16     	; 0xa8a <__ftoa_engine+0xe6>
 a9a:	e0 e7       	ldi	r30, 0x70	; 112
 a9c:	f0 e0       	ldi	r31, 0x00	; 0
 a9e:	68 94       	set
 aa0:	15 90       	lpm	r1, Z+
 aa2:	15 91       	lpm	r17, Z+
 aa4:	35 91       	lpm	r19, Z+
 aa6:	65 91       	lpm	r22, Z+
 aa8:	95 91       	lpm	r25, Z+
 aaa:	05 90       	lpm	r0, Z+
 aac:	7f e2       	ldi	r23, 0x2F	; 47
 aae:	73 95       	inc	r23
 ab0:	e1 18       	sub	r14, r1
 ab2:	f1 0a       	sbc	r15, r17
 ab4:	43 0b       	sbc	r20, r19
 ab6:	56 0b       	sbc	r21, r22
 ab8:	c9 0b       	sbc	r28, r25
 aba:	d0 09       	sbc	r29, r0
 abc:	c0 f7       	brcc	.-16     	; 0xaae <__ftoa_engine+0x10a>
 abe:	e1 0c       	add	r14, r1
 ac0:	f1 1e       	adc	r15, r17
 ac2:	43 1f       	adc	r20, r19
 ac4:	56 1f       	adc	r21, r22
 ac6:	c9 1f       	adc	r28, r25
 ac8:	d0 1d       	adc	r29, r0
 aca:	7e f4       	brtc	.+30     	; 0xaea <__ftoa_engine+0x146>
 acc:	70 33       	cpi	r23, 0x30	; 48
 ace:	11 f4       	brne	.+4      	; 0xad4 <__ftoa_engine+0x130>
 ad0:	8a 95       	dec	r24
 ad2:	e6 cf       	rjmp	.-52     	; 0xaa0 <__ftoa_engine+0xfc>
 ad4:	e8 94       	clt
 ad6:	01 50       	subi	r16, 0x01	; 1
 ad8:	30 f0       	brcs	.+12     	; 0xae6 <__ftoa_engine+0x142>
 ada:	08 0f       	add	r16, r24
 adc:	0a f4       	brpl	.+2      	; 0xae0 <__ftoa_engine+0x13c>
 ade:	00 27       	eor	r16, r16
 ae0:	02 17       	cp	r16, r18
 ae2:	08 f4       	brcc	.+2      	; 0xae6 <__ftoa_engine+0x142>
 ae4:	20 2f       	mov	r18, r16
 ae6:	23 95       	inc	r18
 ae8:	02 2f       	mov	r16, r18
 aea:	7a 33       	cpi	r23, 0x3A	; 58
 aec:	28 f0       	brcs	.+10     	; 0xaf8 <__ftoa_engine+0x154>
 aee:	79 e3       	ldi	r23, 0x39	; 57
 af0:	7d 93       	st	X+, r23
 af2:	2a 95       	dec	r18
 af4:	e9 f7       	brne	.-6      	; 0xaf0 <__ftoa_engine+0x14c>
 af6:	10 c0       	rjmp	.+32     	; 0xb18 <__ftoa_engine+0x174>
 af8:	7d 93       	st	X+, r23
 afa:	2a 95       	dec	r18
 afc:	89 f6       	brne	.-94     	; 0xaa0 <__ftoa_engine+0xfc>
 afe:	06 94       	lsr	r0
 b00:	97 95       	ror	r25
 b02:	67 95       	ror	r22
 b04:	37 95       	ror	r19
 b06:	17 95       	ror	r17
 b08:	17 94       	ror	r1
 b0a:	e1 18       	sub	r14, r1
 b0c:	f1 0a       	sbc	r15, r17
 b0e:	43 0b       	sbc	r20, r19
 b10:	56 0b       	sbc	r21, r22
 b12:	c9 0b       	sbc	r28, r25
 b14:	d0 09       	sbc	r29, r0
 b16:	98 f0       	brcs	.+38     	; 0xb3e <__ftoa_engine+0x19a>
 b18:	23 95       	inc	r18
 b1a:	7e 91       	ld	r23, -X
 b1c:	73 95       	inc	r23
 b1e:	7a 33       	cpi	r23, 0x3A	; 58
 b20:	08 f0       	brcs	.+2      	; 0xb24 <__ftoa_engine+0x180>
 b22:	70 e3       	ldi	r23, 0x30	; 48
 b24:	7c 93       	st	X, r23
 b26:	20 13       	cpse	r18, r16
 b28:	b8 f7       	brcc	.-18     	; 0xb18 <__ftoa_engine+0x174>
 b2a:	7e 91       	ld	r23, -X
 b2c:	70 61       	ori	r23, 0x10	; 16
 b2e:	7d 93       	st	X+, r23
 b30:	30 f0       	brcs	.+12     	; 0xb3e <__ftoa_engine+0x19a>
 b32:	83 95       	inc	r24
 b34:	71 e3       	ldi	r23, 0x31	; 49
 b36:	7d 93       	st	X+, r23
 b38:	70 e3       	ldi	r23, 0x30	; 48
 b3a:	2a 95       	dec	r18
 b3c:	e1 f7       	brne	.-8      	; 0xb36 <__ftoa_engine+0x192>
 b3e:	11 24       	eor	r1, r1
 b40:	ef 90       	pop	r14
 b42:	ff 90       	pop	r15
 b44:	0f 91       	pop	r16
 b46:	1f 91       	pop	r17
 b48:	cf 91       	pop	r28
 b4a:	df 91       	pop	r29
 b4c:	99 27       	eor	r25, r25
 b4e:	87 fd       	sbrc	r24, 7
 b50:	90 95       	com	r25
 b52:	08 95       	ret

00000b54 <strnlen_P>:
 b54:	fc 01       	movw	r30, r24
 b56:	05 90       	lpm	r0, Z+
 b58:	61 50       	subi	r22, 0x01	; 1
 b5a:	70 40       	sbci	r23, 0x00	; 0
 b5c:	01 10       	cpse	r0, r1
 b5e:	d8 f7       	brcc	.-10     	; 0xb56 <strnlen_P+0x2>
 b60:	80 95       	com	r24
 b62:	90 95       	com	r25
 b64:	8e 0f       	add	r24, r30
 b66:	9f 1f       	adc	r25, r31
 b68:	08 95       	ret

00000b6a <strnlen>:
 b6a:	fc 01       	movw	r30, r24
 b6c:	61 50       	subi	r22, 0x01	; 1
 b6e:	70 40       	sbci	r23, 0x00	; 0
 b70:	01 90       	ld	r0, Z+
 b72:	01 10       	cpse	r0, r1
 b74:	d8 f7       	brcc	.-10     	; 0xb6c <strnlen+0x2>
 b76:	80 95       	com	r24
 b78:	90 95       	com	r25
 b7a:	8e 0f       	add	r24, r30
 b7c:	9f 1f       	adc	r25, r31
 b7e:	08 95       	ret

00000b80 <fputc>:
 b80:	0f 93       	push	r16
 b82:	1f 93       	push	r17
 b84:	cf 93       	push	r28
 b86:	df 93       	push	r29
 b88:	18 2f       	mov	r17, r24
 b8a:	09 2f       	mov	r16, r25
 b8c:	eb 01       	movw	r28, r22
 b8e:	8b 81       	ldd	r24, Y+3	; 0x03
 b90:	81 fd       	sbrc	r24, 1
 b92:	09 c0       	rjmp	.+18     	; 0xba6 <fputc+0x26>
 b94:	1f ef       	ldi	r17, 0xFF	; 255
 b96:	0f ef       	ldi	r16, 0xFF	; 255
 b98:	81 2f       	mov	r24, r17
 b9a:	90 2f       	mov	r25, r16
 b9c:	df 91       	pop	r29
 b9e:	cf 91       	pop	r28
 ba0:	1f 91       	pop	r17
 ba2:	0f 91       	pop	r16
 ba4:	08 95       	ret
 ba6:	82 ff       	sbrs	r24, 2
 ba8:	14 c0       	rjmp	.+40     	; 0xbd2 <fputc+0x52>
 baa:	2e 81       	ldd	r18, Y+6	; 0x06
 bac:	3f 81       	ldd	r19, Y+7	; 0x07
 bae:	8c 81       	ldd	r24, Y+4	; 0x04
 bb0:	9d 81       	ldd	r25, Y+5	; 0x05
 bb2:	28 17       	cp	r18, r24
 bb4:	39 07       	cpc	r19, r25
 bb6:	3c f4       	brge	.+14     	; 0xbc6 <fputc+0x46>
 bb8:	e8 81       	ld	r30, Y
 bba:	f9 81       	ldd	r31, Y+1	; 0x01
 bbc:	cf 01       	movw	r24, r30
 bbe:	01 96       	adiw	r24, 0x01	; 1
 bc0:	99 83       	std	Y+1, r25	; 0x01
 bc2:	88 83       	st	Y, r24
 bc4:	10 83       	st	Z, r17
 bc6:	8e 81       	ldd	r24, Y+6	; 0x06
 bc8:	9f 81       	ldd	r25, Y+7	; 0x07
 bca:	01 96       	adiw	r24, 0x01	; 1
 bcc:	9f 83       	std	Y+7, r25	; 0x07
 bce:	8e 83       	std	Y+6, r24	; 0x06
 bd0:	e3 cf       	rjmp	.-58     	; 0xb98 <fputc+0x18>
 bd2:	e8 85       	ldd	r30, Y+8	; 0x08
 bd4:	f9 85       	ldd	r31, Y+9	; 0x09
 bd6:	81 2f       	mov	r24, r17
 bd8:	09 95       	icall
 bda:	89 2b       	or	r24, r25
 bdc:	a1 f3       	breq	.-24     	; 0xbc6 <fputc+0x46>
 bde:	da cf       	rjmp	.-76     	; 0xb94 <fputc+0x14>

00000be0 <__ultoa_invert>:
 be0:	fa 01       	movw	r30, r20
 be2:	aa 27       	eor	r26, r26
 be4:	28 30       	cpi	r18, 0x08	; 8
 be6:	51 f1       	breq	.+84     	; 0xc3c <__ultoa_invert+0x5c>
 be8:	20 31       	cpi	r18, 0x10	; 16
 bea:	81 f1       	breq	.+96     	; 0xc4c <__ultoa_invert+0x6c>
 bec:	e8 94       	clt
 bee:	6f 93       	push	r22
 bf0:	6e 7f       	andi	r22, 0xFE	; 254
 bf2:	6e 5f       	subi	r22, 0xFE	; 254
 bf4:	7f 4f       	sbci	r23, 0xFF	; 255
 bf6:	8f 4f       	sbci	r24, 0xFF	; 255
 bf8:	9f 4f       	sbci	r25, 0xFF	; 255
 bfa:	af 4f       	sbci	r26, 0xFF	; 255
 bfc:	b1 e0       	ldi	r27, 0x01	; 1
 bfe:	3e d0       	rcall	.+124    	; 0xc7c <__ultoa_invert+0x9c>
 c00:	b4 e0       	ldi	r27, 0x04	; 4
 c02:	3c d0       	rcall	.+120    	; 0xc7c <__ultoa_invert+0x9c>
 c04:	67 0f       	add	r22, r23
 c06:	78 1f       	adc	r23, r24
 c08:	89 1f       	adc	r24, r25
 c0a:	9a 1f       	adc	r25, r26
 c0c:	a1 1d       	adc	r26, r1
 c0e:	68 0f       	add	r22, r24
 c10:	79 1f       	adc	r23, r25
 c12:	8a 1f       	adc	r24, r26
 c14:	91 1d       	adc	r25, r1
 c16:	a1 1d       	adc	r26, r1
 c18:	6a 0f       	add	r22, r26
 c1a:	71 1d       	adc	r23, r1
 c1c:	81 1d       	adc	r24, r1
 c1e:	91 1d       	adc	r25, r1
 c20:	a1 1d       	adc	r26, r1
 c22:	20 d0       	rcall	.+64     	; 0xc64 <__ultoa_invert+0x84>
 c24:	09 f4       	brne	.+2      	; 0xc28 <__ultoa_invert+0x48>
 c26:	68 94       	set
 c28:	3f 91       	pop	r19
 c2a:	2a e0       	ldi	r18, 0x0A	; 10
 c2c:	26 9f       	mul	r18, r22
 c2e:	11 24       	eor	r1, r1
 c30:	30 19       	sub	r19, r0
 c32:	30 5d       	subi	r19, 0xD0	; 208
 c34:	31 93       	st	Z+, r19
 c36:	de f6       	brtc	.-74     	; 0xbee <__ultoa_invert+0xe>
 c38:	cf 01       	movw	r24, r30
 c3a:	08 95       	ret
 c3c:	46 2f       	mov	r20, r22
 c3e:	47 70       	andi	r20, 0x07	; 7
 c40:	40 5d       	subi	r20, 0xD0	; 208
 c42:	41 93       	st	Z+, r20
 c44:	b3 e0       	ldi	r27, 0x03	; 3
 c46:	0f d0       	rcall	.+30     	; 0xc66 <__ultoa_invert+0x86>
 c48:	c9 f7       	brne	.-14     	; 0xc3c <__ultoa_invert+0x5c>
 c4a:	f6 cf       	rjmp	.-20     	; 0xc38 <__ultoa_invert+0x58>
 c4c:	46 2f       	mov	r20, r22
 c4e:	4f 70       	andi	r20, 0x0F	; 15
 c50:	40 5d       	subi	r20, 0xD0	; 208
 c52:	4a 33       	cpi	r20, 0x3A	; 58
 c54:	18 f0       	brcs	.+6      	; 0xc5c <__ultoa_invert+0x7c>
 c56:	49 5d       	subi	r20, 0xD9	; 217
 c58:	31 fd       	sbrc	r19, 1
 c5a:	40 52       	subi	r20, 0x20	; 32
 c5c:	41 93       	st	Z+, r20
 c5e:	02 d0       	rcall	.+4      	; 0xc64 <__ultoa_invert+0x84>
 c60:	a9 f7       	brne	.-22     	; 0xc4c <__ultoa_invert+0x6c>
 c62:	ea cf       	rjmp	.-44     	; 0xc38 <__ultoa_invert+0x58>
 c64:	b4 e0       	ldi	r27, 0x04	; 4
 c66:	a6 95       	lsr	r26
 c68:	97 95       	ror	r25
 c6a:	87 95       	ror	r24
 c6c:	77 95       	ror	r23
 c6e:	67 95       	ror	r22
 c70:	ba 95       	dec	r27
 c72:	c9 f7       	brne	.-14     	; 0xc66 <__ultoa_invert+0x86>
 c74:	00 97       	sbiw	r24, 0x00	; 0
 c76:	61 05       	cpc	r22, r1
 c78:	71 05       	cpc	r23, r1
 c7a:	08 95       	ret
 c7c:	9b 01       	movw	r18, r22
 c7e:	ac 01       	movw	r20, r24
 c80:	0a 2e       	mov	r0, r26
 c82:	06 94       	lsr	r0
 c84:	57 95       	ror	r21
 c86:	47 95       	ror	r20
 c88:	37 95       	ror	r19
 c8a:	27 95       	ror	r18
 c8c:	ba 95       	dec	r27
 c8e:	c9 f7       	brne	.-14     	; 0xc82 <__ultoa_invert+0xa2>
 c90:	62 0f       	add	r22, r18
 c92:	73 1f       	adc	r23, r19
 c94:	84 1f       	adc	r24, r20
 c96:	95 1f       	adc	r25, r21
 c98:	a0 1d       	adc	r26, r0
 c9a:	08 95       	ret

00000c9c <_exit>:
 c9c:	f8 94       	cli

00000c9e <__stop_program>:
 c9e:	ff cf       	rjmp	.-2      	; 0xc9e <__stop_program>
