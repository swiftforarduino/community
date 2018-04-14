
main.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
       0:	0c 94 b6 00 	jmp	0x16c	; 0x16c <__ctors_end>
       4:	0c 94 df 01 	jmp	0x3be	; 0x3be <__vector_1>
       8:	0c 94 08 02 	jmp	0x410	; 0x410 <__vector_2>
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
      40:	0c 94 8d 04 	jmp	0x91a	; 0x91a <__vector_16>
      44:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      48:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      4c:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      50:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <__bad_interrupt>
      54:	0c 94 93 03 	jmp	0x726	; 0x726 <__vector_21>
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
     16a:	29 08       	sbc	r2, r9

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
     17e:	ee e4       	ldi	r30, 0x4E	; 78
     180:	f4 e1       	ldi	r31, 0x14	; 20
     182:	02 c0       	rjmp	.+4      	; 0x188 <__do_copy_data+0x10>
     184:	05 90       	lpm	r0, Z+
     186:	0d 92       	st	X+, r0
     188:	ae 31       	cpi	r26, 0x1E	; 30
     18a:	b1 07       	cpc	r27, r17
     18c:	d9 f7       	brne	.-10     	; 0x184 <__do_copy_data+0xc>

0000018e <__do_clear_bss>:
     18e:	21 e0       	ldi	r18, 0x01	; 1
     190:	ae e1       	ldi	r26, 0x1E	; 30
     192:	b1 e0       	ldi	r27, 0x01	; 1
     194:	01 c0       	rjmp	.+2      	; 0x198 <.do_clear_bss_start>

00000196 <.do_clear_bss_loop>:
     196:	1d 92       	st	X+, r1

00000198 <.do_clear_bss_start>:
     198:	aa 3b       	cpi	r26, 0xBA	; 186
     19a:	b2 07       	cpc	r27, r18
     19c:	e1 f7       	brne	.-8      	; 0x196 <.do_clear_bss_loop>

0000019e <__do_global_ctors>:
     19e:	10 e0       	ldi	r17, 0x00	; 0
     1a0:	c6 eb       	ldi	r28, 0xB6	; 182
     1a2:	d0 e0       	ldi	r29, 0x00	; 0
     1a4:	04 c0       	rjmp	.+8      	; 0x1ae <__do_global_ctors+0x10>
     1a6:	21 97       	sbiw	r28, 0x01	; 1
     1a8:	fe 01       	movw	r30, r28
     1aa:	0e 94 73 08 	call	0x10e6	; 0x10e6 <__tablejump2__>
     1ae:	c5 3b       	cpi	r28, 0xB5	; 181
     1b0:	d1 07       	cpc	r29, r17
     1b2:	c9 f7       	brne	.-14     	; 0x1a6 <__do_global_ctors+0x8>
     1b4:	0e 94 e0 00 	call	0x1c0	; 0x1c0 <main>
     1b8:	0c 94 25 0a 	jmp	0x144a	; 0x144a <_exit>

000001bc <__bad_interrupt>:
     1bc:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000001c0 <main>:
     1c0:	89 e0       	ldi	r24, 0x09	; 9
     1c2:	80 93 1e 01 	sts	0x011E, r24	; 0x80011e <__data_end>
     1c6:	60 91 08 01 	lds	r22, 0x0108	; 0x800108 <OUTPUT>
     1ca:	89 e0       	ldi	r24, 0x09	; 9
     1cc:	0e 94 0c 01 	call	0x218	; 0x218 <_TF3AVR7pinModeFT3pinVs5UInt84modeSb_T_>
     1d0:	80 91 1e 01 	lds	r24, 0x011E	; 0x80011e <__data_end>
     1d4:	61 e0       	ldi	r22, 0x01	; 1
     1d6:	0e 94 10 01 	call	0x220	; 0x220 <_TF3AVR11analogWriteFT3pinVs5UInt85valueS0__T_>

000001da <LBB0_1>:
     1da:	ff cf       	rjmp	.-2      	; 0x1da <LBB0_1>

000001dc <_TF3AVR11digitalReadFT3pinVs5UInt8_Sb>:
     1dc:	0e 94 44 01 	call	0x288	; 0x288 <_digitalRead>
     1e0:	08 95       	ret

000001e2 <_TF3AVR12digitalWriteFT3pinVs5UInt85valueSb_T_>:
     1e2:	83 30       	cpi	r24, 0x03	; 3
     1e4:	51 f0       	breq	.+20     	; 0x1fa <LBB1_6>
     1e6:	85 30       	cpi	r24, 0x05	; 5
     1e8:	41 f0       	breq	.+16     	; 0x1fa <LBB1_6>
     1ea:	86 30       	cpi	r24, 0x06	; 6
     1ec:	31 f0       	breq	.+12     	; 0x1fa <LBB1_6>
     1ee:	89 30       	cpi	r24, 0x09	; 9
     1f0:	21 f0       	breq	.+8      	; 0x1fa <LBB1_6>
     1f2:	8a 30       	cpi	r24, 0x0A	; 10
     1f4:	11 f0       	breq	.+4      	; 0x1fa <LBB1_6>
     1f6:	8b 30       	cpi	r24, 0x0B	; 11
     1f8:	59 f4       	brne	.+22     	; 0x210 <LBB1_9>

000001fa <LBB1_6>:
     1fa:	61 70       	andi	r22, 0x01	; 1
     1fc:	60 30       	cpi	r22, 0x00	; 0
     1fe:	21 f0       	breq	.+8      	; 0x208 <LBB1_8>
     200:	6f ef       	ldi	r22, 0xFF	; 255
     202:	0e 94 61 02 	call	0x4c2	; 0x4c2 <_analogWrite>
     206:	08 95       	ret

00000208 <LBB1_8>:
     208:	60 e0       	ldi	r22, 0x00	; 0
     20a:	0e 94 61 02 	call	0x4c2	; 0x4c2 <_analogWrite>
     20e:	08 95       	ret

00000210 <LBB1_9>:
     210:	61 70       	andi	r22, 0x01	; 1
     212:	0e 94 5d 01 	call	0x2ba	; 0x2ba <_digitalWrite>
     216:	08 95       	ret

00000218 <_TF3AVR7pinModeFT3pinVs5UInt84modeSb_T_>:
     218:	61 70       	andi	r22, 0x01	; 1
     21a:	0e 94 9e 01 	call	0x33c	; 0x33c <_pinMode>
     21e:	08 95       	ret

00000220 <_TF3AVR11analogWriteFT3pinVs5UInt85valueS0__T_>:
     220:	0e 94 61 02 	call	0x4c2	; 0x4c2 <_analogWrite>
     224:	08 95       	ret

00000226 <_TF3AVR14slowAnalogReadFT3pinVs5UInt8_Vs6UInt16>:
     226:	0e 94 64 03 	call	0x6c8	; 0x6c8 <_slowAnalogRead>
     22a:	08 95       	ret

0000022c <_TF3AVR15analogReadAsyncFT3pinVs5UInt88callbackcVs6UInt16T__T_>:
     22c:	0e 94 cb 03 	call	0x796	; 0x796 <_analogReadAsync>
     230:	08 95       	ret

00000232 <_TF3AVR26setupPin2InterruptCallbackFT8edgeTypeVs5UInt88callbackcT_T__T_>:
     232:	0e 94 31 02 	call	0x462	; 0x462 <_setupPin2InterruptCallback>
     236:	08 95       	ret

00000238 <_TF3AVR26clearPin2InterruptCallbackFT_T_>:
     238:	0e 94 41 02 	call	0x482	; 0x482 <_clearPin2InterruptCallback>
     23c:	08 95       	ret

0000023e <_TF3AVR26setupPin3InterruptCallbackFT8edgeTypeVs5UInt88callbackcT_T__T_>:
     23e:	0e 94 47 02 	call	0x48e	; 0x48e <_setupPin3InterruptCallback>
     242:	08 95       	ret

00000244 <_TF3AVR26clearPin3InterruptCallbackFT_T_>:
     244:	0e 94 5b 02 	call	0x4b6	; 0x4b6 <_clearPin3InterruptCallback>
     248:	08 95       	ret

0000024a <pinMask>:
     24a:	88 30       	cpi	r24, 0x08	; 8
     24c:	a0 f0       	brcs	.+40     	; 0x276 <pinMask+0x2c>
     24e:	8e 30       	cpi	r24, 0x0E	; 14
     250:	50 f0       	brcs	.+20     	; 0x266 <pinMask+0x1c>
     252:	85 31       	cpi	r24, 0x15	; 21
     254:	b8 f4       	brcc	.+46     	; 0x284 <pinMask+0x3a>
     256:	92 ef       	ldi	r25, 0xF2	; 242
     258:	98 0f       	add	r25, r24
     25a:	81 e0       	ldi	r24, 0x01	; 1
     25c:	01 c0       	rjmp	.+2      	; 0x260 <pinMask+0x16>
     25e:	88 0f       	add	r24, r24
     260:	9a 95       	dec	r25
     262:	ea f7       	brpl	.-6      	; 0x25e <pinMask+0x14>
     264:	08 95       	ret
     266:	98 ef       	ldi	r25, 0xF8	; 248
     268:	98 0f       	add	r25, r24
     26a:	81 e0       	ldi	r24, 0x01	; 1
     26c:	01 c0       	rjmp	.+2      	; 0x270 <pinMask+0x26>
     26e:	88 0f       	add	r24, r24
     270:	9a 95       	dec	r25
     272:	ea f7       	brpl	.-6      	; 0x26e <pinMask+0x24>
     274:	08 95       	ret
     276:	91 e0       	ldi	r25, 0x01	; 1
     278:	01 c0       	rjmp	.+2      	; 0x27c <pinMask+0x32>
     27a:	99 0f       	add	r25, r25
     27c:	8a 95       	dec	r24
     27e:	ea f7       	brpl	.-6      	; 0x27a <pinMask+0x30>
     280:	89 2f       	mov	r24, r25
     282:	08 95       	ret
     284:	80 e0       	ldi	r24, 0x00	; 0
     286:	08 95       	ret

00000288 <_digitalRead>:
     288:	88 30       	cpi	r24, 0x08	; 8
     28a:	58 f4       	brcc	.+22     	; 0x2a2 <_digitalRead+0x1a>
     28c:	99 b1       	in	r25, 0x09	; 9
     28e:	21 e0       	ldi	r18, 0x01	; 1
     290:	30 e0       	ldi	r19, 0x00	; 0
     292:	01 c0       	rjmp	.+2      	; 0x296 <_digitalRead+0xe>
     294:	22 0f       	add	r18, r18
     296:	8a 95       	dec	r24
     298:	ea f7       	brpl	.-6      	; 0x294 <_digitalRead+0xc>
     29a:	92 23       	and	r25, r18
     29c:	81 e0       	ldi	r24, 0x01	; 1
     29e:	29 f0       	breq	.+10     	; 0x2aa <_digitalRead+0x22>
     2a0:	08 95       	ret
     2a2:	8e 30       	cpi	r24, 0x0E	; 14
     2a4:	20 f0       	brcs	.+8      	; 0x2ae <_digitalRead+0x26>
     2a6:	85 31       	cpi	r24, 0x15	; 21
     2a8:	28 f0       	brcs	.+10     	; 0x2b4 <_digitalRead+0x2c>
     2aa:	80 e0       	ldi	r24, 0x00	; 0
     2ac:	08 95       	ret
     2ae:	93 b1       	in	r25, 0x03	; 3
     2b0:	88 50       	subi	r24, 0x08	; 8
     2b2:	ed cf       	rjmp	.-38     	; 0x28e <_digitalRead+0x6>
     2b4:	96 b1       	in	r25, 0x06	; 6
     2b6:	8e 50       	subi	r24, 0x0E	; 14
     2b8:	ea cf       	rjmp	.-44     	; 0x28e <_digitalRead+0x6>

000002ba <_digitalWrite>:
     2ba:	88 30       	cpi	r24, 0x08	; 8
     2bc:	60 f4       	brcc	.+24     	; 0x2d6 <_digitalWrite+0x1c>
     2be:	21 e0       	ldi	r18, 0x01	; 1
     2c0:	30 e0       	ldi	r19, 0x00	; 0
     2c2:	01 c0       	rjmp	.+2      	; 0x2c6 <_digitalWrite+0xc>
     2c4:	22 0f       	add	r18, r18
     2c6:	8a 95       	dec	r24
     2c8:	ea f7       	brpl	.-6      	; 0x2c4 <_digitalWrite+0xa>
     2ca:	66 23       	and	r22, r22
     2cc:	49 f1       	breq	.+82     	; 0x320 <_digitalWrite+0x66>
     2ce:	8b b1       	in	r24, 0x0b	; 11
     2d0:	28 2b       	or	r18, r24
     2d2:	2b b9       	out	0x0b, r18	; 11
     2d4:	08 95       	ret
     2d6:	8e 30       	cpi	r24, 0x0E	; 14
     2d8:	88 f4       	brcc	.+34     	; 0x2fc <_digitalWrite+0x42>
     2da:	88 50       	subi	r24, 0x08	; 8
     2dc:	21 e0       	ldi	r18, 0x01	; 1
     2de:	30 e0       	ldi	r19, 0x00	; 0
     2e0:	a9 01       	movw	r20, r18
     2e2:	02 c0       	rjmp	.+4      	; 0x2e8 <_digitalWrite+0x2e>
     2e4:	44 0f       	add	r20, r20
     2e6:	55 1f       	adc	r21, r21
     2e8:	8a 95       	dec	r24
     2ea:	e2 f7       	brpl	.-8      	; 0x2e4 <_digitalWrite+0x2a>
     2ec:	ca 01       	movw	r24, r20
     2ee:	61 11       	cpse	r22, r1
     2f0:	1c c0       	rjmp	.+56     	; 0x32a <_digitalWrite+0x70>
     2f2:	95 b1       	in	r25, 0x05	; 5
     2f4:	80 95       	com	r24
     2f6:	89 23       	and	r24, r25
     2f8:	85 b9       	out	0x05, r24	; 5
     2fa:	08 95       	ret
     2fc:	85 31       	cpi	r24, 0x15	; 21
     2fe:	e8 f7       	brcc	.-6      	; 0x2fa <_digitalWrite+0x40>
     300:	8e 50       	subi	r24, 0x0E	; 14
     302:	21 e0       	ldi	r18, 0x01	; 1
     304:	30 e0       	ldi	r19, 0x00	; 0
     306:	a9 01       	movw	r20, r18
     308:	02 c0       	rjmp	.+4      	; 0x30e <_digitalWrite+0x54>
     30a:	44 0f       	add	r20, r20
     30c:	55 1f       	adc	r21, r21
     30e:	8a 95       	dec	r24
     310:	e2 f7       	brpl	.-8      	; 0x30a <_digitalWrite+0x50>
     312:	ca 01       	movw	r24, r20
     314:	66 23       	and	r22, r22
     316:	69 f0       	breq	.+26     	; 0x332 <_digitalWrite+0x78>
     318:	98 b1       	in	r25, 0x08	; 8
     31a:	89 2b       	or	r24, r25
     31c:	88 b9       	out	0x08, r24	; 8
     31e:	08 95       	ret
     320:	8b b1       	in	r24, 0x0b	; 11
     322:	20 95       	com	r18
     324:	28 23       	and	r18, r24
     326:	2b b9       	out	0x0b, r18	; 11
     328:	08 95       	ret
     32a:	95 b1       	in	r25, 0x05	; 5
     32c:	89 2b       	or	r24, r25
     32e:	85 b9       	out	0x05, r24	; 5
     330:	08 95       	ret
     332:	98 b1       	in	r25, 0x08	; 8
     334:	80 95       	com	r24
     336:	89 23       	and	r24, r25
     338:	88 b9       	out	0x08, r24	; 8
     33a:	08 95       	ret

0000033c <_pinMode>:
     33c:	88 30       	cpi	r24, 0x08	; 8
     33e:	60 f4       	brcc	.+24     	; 0x358 <_pinMode+0x1c>
     340:	21 e0       	ldi	r18, 0x01	; 1
     342:	30 e0       	ldi	r19, 0x00	; 0
     344:	01 c0       	rjmp	.+2      	; 0x348 <_pinMode+0xc>
     346:	22 0f       	add	r18, r18
     348:	8a 95       	dec	r24
     34a:	ea f7       	brpl	.-6      	; 0x346 <_pinMode+0xa>
     34c:	66 23       	and	r22, r22
     34e:	49 f1       	breq	.+82     	; 0x3a2 <_pinMode+0x66>
     350:	8a b1       	in	r24, 0x0a	; 10
     352:	28 2b       	or	r18, r24
     354:	2a b9       	out	0x0a, r18	; 10
     356:	08 95       	ret
     358:	8e 30       	cpi	r24, 0x0E	; 14
     35a:	88 f4       	brcc	.+34     	; 0x37e <_pinMode+0x42>
     35c:	88 50       	subi	r24, 0x08	; 8
     35e:	21 e0       	ldi	r18, 0x01	; 1
     360:	30 e0       	ldi	r19, 0x00	; 0
     362:	a9 01       	movw	r20, r18
     364:	02 c0       	rjmp	.+4      	; 0x36a <_pinMode+0x2e>
     366:	44 0f       	add	r20, r20
     368:	55 1f       	adc	r21, r21
     36a:	8a 95       	dec	r24
     36c:	e2 f7       	brpl	.-8      	; 0x366 <_pinMode+0x2a>
     36e:	ca 01       	movw	r24, r20
     370:	61 11       	cpse	r22, r1
     372:	1c c0       	rjmp	.+56     	; 0x3ac <_pinMode+0x70>
     374:	94 b1       	in	r25, 0x04	; 4
     376:	80 95       	com	r24
     378:	89 23       	and	r24, r25
     37a:	84 b9       	out	0x04, r24	; 4
     37c:	08 95       	ret
     37e:	85 31       	cpi	r24, 0x15	; 21
     380:	e8 f7       	brcc	.-6      	; 0x37c <_pinMode+0x40>
     382:	8e 50       	subi	r24, 0x0E	; 14
     384:	21 e0       	ldi	r18, 0x01	; 1
     386:	30 e0       	ldi	r19, 0x00	; 0
     388:	a9 01       	movw	r20, r18
     38a:	02 c0       	rjmp	.+4      	; 0x390 <_pinMode+0x54>
     38c:	44 0f       	add	r20, r20
     38e:	55 1f       	adc	r21, r21
     390:	8a 95       	dec	r24
     392:	e2 f7       	brpl	.-8      	; 0x38c <_pinMode+0x50>
     394:	ca 01       	movw	r24, r20
     396:	66 23       	and	r22, r22
     398:	69 f0       	breq	.+26     	; 0x3b4 <_pinMode+0x78>
     39a:	97 b1       	in	r25, 0x07	; 7
     39c:	89 2b       	or	r24, r25
     39e:	87 b9       	out	0x07, r24	; 7
     3a0:	08 95       	ret
     3a2:	8a b1       	in	r24, 0x0a	; 10
     3a4:	20 95       	com	r18
     3a6:	28 23       	and	r18, r24
     3a8:	2a b9       	out	0x0a, r18	; 10
     3aa:	08 95       	ret
     3ac:	94 b1       	in	r25, 0x04	; 4
     3ae:	89 2b       	or	r24, r25
     3b0:	84 b9       	out	0x04, r24	; 4
     3b2:	08 95       	ret
     3b4:	97 b1       	in	r25, 0x07	; 7
     3b6:	80 95       	com	r24
     3b8:	89 23       	and	r24, r25
     3ba:	87 b9       	out	0x07, r24	; 7
     3bc:	08 95       	ret

000003be <__vector_1>:
     3be:	1f 92       	push	r1
     3c0:	0f 92       	push	r0
     3c2:	0f b6       	in	r0, 0x3f	; 63
     3c4:	0f 92       	push	r0
     3c6:	11 24       	eor	r1, r1
     3c8:	2f 93       	push	r18
     3ca:	3f 93       	push	r19
     3cc:	4f 93       	push	r20
     3ce:	5f 93       	push	r21
     3d0:	6f 93       	push	r22
     3d2:	7f 93       	push	r23
     3d4:	8f 93       	push	r24
     3d6:	9f 93       	push	r25
     3d8:	af 93       	push	r26
     3da:	bf 93       	push	r27
     3dc:	ef 93       	push	r30
     3de:	ff 93       	push	r31
     3e0:	e0 91 21 01 	lds	r30, 0x0121	; 0x800121 <currentInt0Callback>
     3e4:	f0 91 22 01 	lds	r31, 0x0122	; 0x800122 <currentInt0Callback+0x1>
     3e8:	30 97       	sbiw	r30, 0x00	; 0
     3ea:	09 f0       	breq	.+2      	; 0x3ee <__vector_1+0x30>
     3ec:	09 95       	icall
     3ee:	ff 91       	pop	r31
     3f0:	ef 91       	pop	r30
     3f2:	bf 91       	pop	r27
     3f4:	af 91       	pop	r26
     3f6:	9f 91       	pop	r25
     3f8:	8f 91       	pop	r24
     3fa:	7f 91       	pop	r23
     3fc:	6f 91       	pop	r22
     3fe:	5f 91       	pop	r21
     400:	4f 91       	pop	r20
     402:	3f 91       	pop	r19
     404:	2f 91       	pop	r18
     406:	0f 90       	pop	r0
     408:	0f be       	out	0x3f, r0	; 63
     40a:	0f 90       	pop	r0
     40c:	1f 90       	pop	r1
     40e:	18 95       	reti

00000410 <__vector_2>:
     410:	1f 92       	push	r1
     412:	0f 92       	push	r0
     414:	0f b6       	in	r0, 0x3f	; 63
     416:	0f 92       	push	r0
     418:	11 24       	eor	r1, r1
     41a:	2f 93       	push	r18
     41c:	3f 93       	push	r19
     41e:	4f 93       	push	r20
     420:	5f 93       	push	r21
     422:	6f 93       	push	r22
     424:	7f 93       	push	r23
     426:	8f 93       	push	r24
     428:	9f 93       	push	r25
     42a:	af 93       	push	r26
     42c:	bf 93       	push	r27
     42e:	ef 93       	push	r30
     430:	ff 93       	push	r31
     432:	e0 91 1f 01 	lds	r30, 0x011F	; 0x80011f <currentInt1Callback>
     436:	f0 91 20 01 	lds	r31, 0x0120	; 0x800120 <currentInt1Callback+0x1>
     43a:	30 97       	sbiw	r30, 0x00	; 0
     43c:	09 f0       	breq	.+2      	; 0x440 <__vector_2+0x30>
     43e:	09 95       	icall
     440:	ff 91       	pop	r31
     442:	ef 91       	pop	r30
     444:	bf 91       	pop	r27
     446:	af 91       	pop	r26
     448:	9f 91       	pop	r25
     44a:	8f 91       	pop	r24
     44c:	7f 91       	pop	r23
     44e:	6f 91       	pop	r22
     450:	5f 91       	pop	r21
     452:	4f 91       	pop	r20
     454:	3f 91       	pop	r19
     456:	2f 91       	pop	r18
     458:	0f 90       	pop	r0
     45a:	0f be       	out	0x3f, r0	; 63
     45c:	0f 90       	pop	r0
     45e:	1f 90       	pop	r1
     460:	18 95       	reti

00000462 <_setupPin2InterruptCallback>:
     462:	70 93 22 01 	sts	0x0122, r23	; 0x800122 <currentInt0Callback+0x1>
     466:	60 93 21 01 	sts	0x0121, r22	; 0x800121 <currentInt0Callback>
     46a:	e9 e6       	ldi	r30, 0x69	; 105
     46c:	f0 e0       	ldi	r31, 0x00	; 0
     46e:	90 81       	ld	r25, Z
     470:	9c 7f       	andi	r25, 0xFC	; 252
     472:	90 83       	st	Z, r25
     474:	90 81       	ld	r25, Z
     476:	83 70       	andi	r24, 0x03	; 3
     478:	89 2b       	or	r24, r25
     47a:	80 83       	st	Z, r24
     47c:	e8 9a       	sbi	0x1d, 0	; 29
     47e:	78 94       	sei
     480:	08 95       	ret

00000482 <_clearPin2InterruptCallback>:
     482:	10 92 22 01 	sts	0x0122, r1	; 0x800122 <currentInt0Callback+0x1>
     486:	10 92 21 01 	sts	0x0121, r1	; 0x800121 <currentInt0Callback>
     48a:	e8 98       	cbi	0x1d, 0	; 29
     48c:	08 95       	ret

0000048e <_setupPin3InterruptCallback>:
     48e:	70 93 20 01 	sts	0x0120, r23	; 0x800120 <currentInt1Callback+0x1>
     492:	60 93 1f 01 	sts	0x011F, r22	; 0x80011f <currentInt1Callback>
     496:	e9 e6       	ldi	r30, 0x69	; 105
     498:	f0 e0       	ldi	r31, 0x00	; 0
     49a:	90 81       	ld	r25, Z
     49c:	93 7f       	andi	r25, 0xF3	; 243
     49e:	90 83       	st	Z, r25
     4a0:	20 81       	ld	r18, Z
     4a2:	34 e0       	ldi	r19, 0x04	; 4
     4a4:	83 9f       	mul	r24, r19
     4a6:	c0 01       	movw	r24, r0
     4a8:	11 24       	eor	r1, r1
     4aa:	8c 70       	andi	r24, 0x0C	; 12
     4ac:	82 2b       	or	r24, r18
     4ae:	80 83       	st	Z, r24
     4b0:	e9 9a       	sbi	0x1d, 1	; 29
     4b2:	78 94       	sei
     4b4:	08 95       	ret

000004b6 <_clearPin3InterruptCallback>:
     4b6:	10 92 20 01 	sts	0x0120, r1	; 0x800120 <currentInt1Callback+0x1>
     4ba:	10 92 1f 01 	sts	0x011F, r1	; 0x80011f <currentInt1Callback>
     4be:	e9 98       	cbi	0x1d, 1	; 29
     4c0:	08 95       	ret

000004c2 <_analogWrite>:
     4c2:	cf 93       	push	r28
     4c4:	df 93       	push	r29
     4c6:	c8 2f       	mov	r28, r24
     4c8:	d6 2f       	mov	r29, r22
     4ca:	60 91 0c 01 	lds	r22, 0x010C	; 0x80010c <_OUTPUT>
     4ce:	0e 94 9e 01 	call	0x33c	; 0x33c <_pinMode>
     4d2:	c6 30       	cpi	r28, 0x06	; 6
     4d4:	09 f4       	brne	.+2      	; 0x4d8 <_analogWrite+0x16>
     4d6:	5b c0       	rjmp	.+182    	; 0x58e <_analogWrite+0xcc>
     4d8:	50 f0       	brcs	.+20     	; 0x4ee <_analogWrite+0x2c>
     4da:	ca 30       	cpi	r28, 0x0A	; 10
     4dc:	b9 f0       	breq	.+46     	; 0x50c <_analogWrite+0x4a>
     4de:	cb 30       	cpi	r28, 0x0B	; 11
     4e0:	09 f4       	brne	.+2      	; 0x4e4 <_analogWrite+0x22>
     4e2:	46 c0       	rjmp	.+140    	; 0x570 <_analogWrite+0xae>
     4e4:	c9 30       	cpi	r28, 0x09	; 9
     4e6:	21 f1       	breq	.+72     	; 0x530 <_analogWrite+0x6e>
     4e8:	df 91       	pop	r29
     4ea:	cf 91       	pop	r28
     4ec:	08 95       	ret
     4ee:	c3 30       	cpi	r28, 0x03	; 3
     4f0:	89 f1       	breq	.+98     	; 0x554 <_analogWrite+0x92>
     4f2:	c5 30       	cpi	r28, 0x05	; 5
     4f4:	c9 f7       	brne	.-14     	; 0x4e8 <_analogWrite+0x26>
     4f6:	84 b5       	in	r24, 0x24	; 36
     4f8:	dd 23       	and	r29, r29
     4fa:	09 f4       	brne	.+2      	; 0x4fe <_analogWrite+0x3c>
     4fc:	52 c0       	rjmp	.+164    	; 0x5a2 <_analogWrite+0xe0>
     4fe:	df 3f       	cpi	r29, 0xFF	; 255
     500:	09 f4       	brne	.+2      	; 0x504 <_analogWrite+0x42>
     502:	9e c0       	rjmp	.+316    	; 0x640 <_analogWrite+0x17e>
     504:	80 62       	ori	r24, 0x20	; 32
     506:	84 bd       	out	0x24, r24	; 36
     508:	d8 bd       	out	0x28, r29	; 40
     50a:	ee cf       	rjmp	.-36     	; 0x4e8 <_analogWrite+0x26>
     50c:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     510:	dd 23       	and	r29, r29
     512:	09 f4       	brne	.+2      	; 0x516 <_analogWrite+0x54>
     514:	7b c0       	rjmp	.+246    	; 0x60c <_analogWrite+0x14a>
     516:	df 3f       	cpi	r29, 0xFF	; 255
     518:	09 f4       	brne	.+2      	; 0x51c <_analogWrite+0x5a>
     51a:	85 c0       	rjmp	.+266    	; 0x626 <_analogWrite+0x164>
     51c:	80 62       	ori	r24, 0x20	; 32
     51e:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     522:	6d 2f       	mov	r22, r29
     524:	70 e0       	ldi	r23, 0x00	; 0
     526:	70 93 8b 00 	sts	0x008B, r23	; 0x80008b <__TEXT_REGION_LENGTH__+0x7e008b>
     52a:	60 93 8a 00 	sts	0x008A, r22	; 0x80008a <__TEXT_REGION_LENGTH__+0x7e008a>
     52e:	dc cf       	rjmp	.-72     	; 0x4e8 <_analogWrite+0x26>
     530:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     534:	dd 23       	and	r29, r29
     536:	09 f4       	brne	.+2      	; 0x53a <_analogWrite+0x78>
     538:	5c c0       	rjmp	.+184    	; 0x5f2 <_analogWrite+0x130>
     53a:	df 3f       	cpi	r29, 0xFF	; 255
     53c:	09 f4       	brne	.+2      	; 0x540 <_analogWrite+0x7e>
     53e:	94 c0       	rjmp	.+296    	; 0x668 <_analogWrite+0x1a6>
     540:	80 68       	ori	r24, 0x80	; 128
     542:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     546:	6d 2f       	mov	r22, r29
     548:	70 e0       	ldi	r23, 0x00	; 0
     54a:	70 93 89 00 	sts	0x0089, r23	; 0x800089 <__TEXT_REGION_LENGTH__+0x7e0089>
     54e:	60 93 88 00 	sts	0x0088, r22	; 0x800088 <__TEXT_REGION_LENGTH__+0x7e0088>
     552:	ca cf       	rjmp	.-108    	; 0x4e8 <_analogWrite+0x26>
     554:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     558:	dd 23       	and	r29, r29
     55a:	09 f4       	brne	.+2      	; 0x55e <_analogWrite+0x9c>
     55c:	3f c0       	rjmp	.+126    	; 0x5dc <_analogWrite+0x11a>
     55e:	df 3f       	cpi	r29, 0xFF	; 255
     560:	09 f4       	brne	.+2      	; 0x564 <_analogWrite+0xa2>
     562:	77 c0       	rjmp	.+238    	; 0x652 <_analogWrite+0x190>
     564:	80 62       	ori	r24, 0x20	; 32
     566:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     56a:	d0 93 b4 00 	sts	0x00B4, r29	; 0x8000b4 <__TEXT_REGION_LENGTH__+0x7e00b4>
     56e:	bc cf       	rjmp	.-136    	; 0x4e8 <_analogWrite+0x26>
     570:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     574:	dd 23       	and	r29, r29
     576:	39 f1       	breq	.+78     	; 0x5c6 <_analogWrite+0x104>
     578:	df 3f       	cpi	r29, 0xFF	; 255
     57a:	09 f4       	brne	.+2      	; 0x57e <_analogWrite+0xbc>
     57c:	8b c0       	rjmp	.+278    	; 0x694 <_analogWrite+0x1d2>
     57e:	80 68       	ori	r24, 0x80	; 128
     580:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     584:	d0 93 b3 00 	sts	0x00B3, r29	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
     588:	df 91       	pop	r29
     58a:	cf 91       	pop	r28
     58c:	08 95       	ret
     58e:	84 b5       	in	r24, 0x24	; 36
     590:	dd 23       	and	r29, r29
     592:	81 f0       	breq	.+32     	; 0x5b4 <_analogWrite+0xf2>
     594:	df 3f       	cpi	r29, 0xFF	; 255
     596:	09 f4       	brne	.+2      	; 0x59a <_analogWrite+0xd8>
     598:	74 c0       	rjmp	.+232    	; 0x682 <_analogWrite+0x1c0>
     59a:	80 68       	ori	r24, 0x80	; 128
     59c:	84 bd       	out	0x24, r24	; 36
     59e:	d7 bd       	out	0x27, r29	; 39
     5a0:	a3 cf       	rjmp	.-186    	; 0x4e8 <_analogWrite+0x26>
     5a2:	8f 7d       	andi	r24, 0xDF	; 223
     5a4:	84 bd       	out	0x24, r24	; 36
     5a6:	60 91 0d 01 	lds	r22, 0x010D	; 0x80010d <_LOW>
     5aa:	85 e0       	ldi	r24, 0x05	; 5
     5ac:	0e 94 5d 01 	call	0x2ba	; 0x2ba <_digitalWrite>
     5b0:	18 bc       	out	0x28, r1	; 40
     5b2:	9a cf       	rjmp	.-204    	; 0x4e8 <_analogWrite+0x26>
     5b4:	8f 77       	andi	r24, 0x7F	; 127
     5b6:	84 bd       	out	0x24, r24	; 36
     5b8:	60 91 0d 01 	lds	r22, 0x010D	; 0x80010d <_LOW>
     5bc:	86 e0       	ldi	r24, 0x06	; 6
     5be:	0e 94 5d 01 	call	0x2ba	; 0x2ba <_digitalWrite>
     5c2:	17 bc       	out	0x27, r1	; 39
     5c4:	91 cf       	rjmp	.-222    	; 0x4e8 <_analogWrite+0x26>
     5c6:	8f 77       	andi	r24, 0x7F	; 127
     5c8:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     5cc:	60 91 0d 01 	lds	r22, 0x010D	; 0x80010d <_LOW>
     5d0:	8b e0       	ldi	r24, 0x0B	; 11
     5d2:	0e 94 5d 01 	call	0x2ba	; 0x2ba <_digitalWrite>
     5d6:	10 92 b3 00 	sts	0x00B3, r1	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
     5da:	86 cf       	rjmp	.-244    	; 0x4e8 <_analogWrite+0x26>
     5dc:	8f 7d       	andi	r24, 0xDF	; 223
     5de:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     5e2:	60 91 0d 01 	lds	r22, 0x010D	; 0x80010d <_LOW>
     5e6:	83 e0       	ldi	r24, 0x03	; 3
     5e8:	0e 94 5d 01 	call	0x2ba	; 0x2ba <_digitalWrite>
     5ec:	10 92 b4 00 	sts	0x00B4, r1	; 0x8000b4 <__TEXT_REGION_LENGTH__+0x7e00b4>
     5f0:	7b cf       	rjmp	.-266    	; 0x4e8 <_analogWrite+0x26>
     5f2:	8f 77       	andi	r24, 0x7F	; 127
     5f4:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     5f8:	60 91 0d 01 	lds	r22, 0x010D	; 0x80010d <_LOW>
     5fc:	89 e0       	ldi	r24, 0x09	; 9
     5fe:	0e 94 5d 01 	call	0x2ba	; 0x2ba <_digitalWrite>
     602:	10 92 89 00 	sts	0x0089, r1	; 0x800089 <__TEXT_REGION_LENGTH__+0x7e0089>
     606:	10 92 88 00 	sts	0x0088, r1	; 0x800088 <__TEXT_REGION_LENGTH__+0x7e0088>
     60a:	6e cf       	rjmp	.-292    	; 0x4e8 <_analogWrite+0x26>
     60c:	8f 7d       	andi	r24, 0xDF	; 223
     60e:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     612:	60 91 0d 01 	lds	r22, 0x010D	; 0x80010d <_LOW>
     616:	8a e0       	ldi	r24, 0x0A	; 10
     618:	0e 94 5d 01 	call	0x2ba	; 0x2ba <_digitalWrite>
     61c:	10 92 8b 00 	sts	0x008B, r1	; 0x80008b <__TEXT_REGION_LENGTH__+0x7e008b>
     620:	10 92 8a 00 	sts	0x008A, r1	; 0x80008a <__TEXT_REGION_LENGTH__+0x7e008a>
     624:	61 cf       	rjmp	.-318    	; 0x4e8 <_analogWrite+0x26>
     626:	8f 7d       	andi	r24, 0xDF	; 223
     628:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     62c:	60 91 0e 01 	lds	r22, 0x010E	; 0x80010e <_HIGH>
     630:	8a e0       	ldi	r24, 0x0A	; 10
     632:	0e 94 5d 01 	call	0x2ba	; 0x2ba <_digitalWrite>
     636:	10 92 8b 00 	sts	0x008B, r1	; 0x80008b <__TEXT_REGION_LENGTH__+0x7e008b>
     63a:	10 92 8a 00 	sts	0x008A, r1	; 0x80008a <__TEXT_REGION_LENGTH__+0x7e008a>
     63e:	54 cf       	rjmp	.-344    	; 0x4e8 <_analogWrite+0x26>
     640:	8f 7d       	andi	r24, 0xDF	; 223
     642:	84 bd       	out	0x24, r24	; 36
     644:	60 91 0e 01 	lds	r22, 0x010E	; 0x80010e <_HIGH>
     648:	85 e0       	ldi	r24, 0x05	; 5
     64a:	0e 94 5d 01 	call	0x2ba	; 0x2ba <_digitalWrite>
     64e:	18 bc       	out	0x28, r1	; 40
     650:	4b cf       	rjmp	.-362    	; 0x4e8 <_analogWrite+0x26>
     652:	8f 7d       	andi	r24, 0xDF	; 223
     654:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     658:	60 91 0e 01 	lds	r22, 0x010E	; 0x80010e <_HIGH>
     65c:	83 e0       	ldi	r24, 0x03	; 3
     65e:	0e 94 5d 01 	call	0x2ba	; 0x2ba <_digitalWrite>
     662:	10 92 b4 00 	sts	0x00B4, r1	; 0x8000b4 <__TEXT_REGION_LENGTH__+0x7e00b4>
     666:	40 cf       	rjmp	.-384    	; 0x4e8 <_analogWrite+0x26>
     668:	8f 77       	andi	r24, 0x7F	; 127
     66a:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     66e:	60 91 0e 01 	lds	r22, 0x010E	; 0x80010e <_HIGH>
     672:	89 e0       	ldi	r24, 0x09	; 9
     674:	0e 94 5d 01 	call	0x2ba	; 0x2ba <_digitalWrite>
     678:	10 92 89 00 	sts	0x0089, r1	; 0x800089 <__TEXT_REGION_LENGTH__+0x7e0089>
     67c:	10 92 88 00 	sts	0x0088, r1	; 0x800088 <__TEXT_REGION_LENGTH__+0x7e0088>
     680:	33 cf       	rjmp	.-410    	; 0x4e8 <_analogWrite+0x26>
     682:	8f 77       	andi	r24, 0x7F	; 127
     684:	84 bd       	out	0x24, r24	; 36
     686:	60 91 0e 01 	lds	r22, 0x010E	; 0x80010e <_HIGH>
     68a:	86 e0       	ldi	r24, 0x06	; 6
     68c:	0e 94 5d 01 	call	0x2ba	; 0x2ba <_digitalWrite>
     690:	17 bc       	out	0x27, r1	; 39
     692:	2a cf       	rjmp	.-428    	; 0x4e8 <_analogWrite+0x26>
     694:	8f 77       	andi	r24, 0x7F	; 127
     696:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     69a:	60 91 0e 01 	lds	r22, 0x010E	; 0x80010e <_HIGH>
     69e:	8b e0       	ldi	r24, 0x0B	; 11
     6a0:	0e 94 5d 01 	call	0x2ba	; 0x2ba <_digitalWrite>
     6a4:	10 92 b3 00 	sts	0x00B3, r1	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
     6a8:	1f cf       	rjmp	.-450    	; 0x4e8 <_analogWrite+0x26>

000006aa <_startupADC>:
     6aa:	87 e8       	ldi	r24, 0x87	; 135
     6ac:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     6b0:	8a e0       	ldi	r24, 0x0A	; 10
     6b2:	90 e0       	ldi	r25, 0x00	; 0
     6b4:	0e 94 03 04 	call	0x806	; 0x806 <_delayMs>
     6b8:	61 e0       	ldi	r22, 0x01	; 1
     6ba:	8d e0       	ldi	r24, 0x0D	; 13
     6bc:	0e 94 9e 01 	call	0x33c	; 0x33c <_pinMode>
     6c0:	60 e0       	ldi	r22, 0x00	; 0
     6c2:	8d e0       	ldi	r24, 0x0D	; 13
     6c4:	0c 94 5d 01 	jmp	0x2ba	; 0x2ba <_digitalWrite>

000006c8 <_slowAnalogRead>:
     6c8:	cf 93       	push	r28
     6ca:	c8 2f       	mov	r28, r24
     6cc:	88 30       	cpi	r24, 0x08	; 8
     6ce:	38 f5       	brcc	.+78     	; 0x71e <_slowAnalogRead+0x56>
     6d0:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     6d4:	87 fd       	sbrc	r24, 7
     6d6:	0f c0       	rjmp	.+30     	; 0x6f6 <_slowAnalogRead+0x2e>
     6d8:	87 e8       	ldi	r24, 0x87	; 135
     6da:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     6de:	8a e0       	ldi	r24, 0x0A	; 10
     6e0:	90 e0       	ldi	r25, 0x00	; 0
     6e2:	0e 94 03 04 	call	0x806	; 0x806 <_delayMs>
     6e6:	61 e0       	ldi	r22, 0x01	; 1
     6e8:	8d e0       	ldi	r24, 0x0D	; 13
     6ea:	0e 94 9e 01 	call	0x33c	; 0x33c <_pinMode>
     6ee:	60 e0       	ldi	r22, 0x00	; 0
     6f0:	8d e0       	ldi	r24, 0x0D	; 13
     6f2:	0e 94 5d 01 	call	0x2ba	; 0x2ba <_digitalWrite>
     6f6:	c0 64       	ori	r28, 0x40	; 64
     6f8:	c0 93 7c 00 	sts	0x007C, r28	; 0x80007c <__TEXT_REGION_LENGTH__+0x7e007c>
     6fc:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     700:	80 64       	ori	r24, 0x40	; 64
     702:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     706:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     70a:	86 fd       	sbrc	r24, 6
     70c:	fc cf       	rjmp	.-8      	; 0x706 <_slowAnalogRead+0x3e>
     70e:	80 91 78 00 	lds	r24, 0x0078	; 0x800078 <__TEXT_REGION_LENGTH__+0x7e0078>
     712:	20 91 79 00 	lds	r18, 0x0079	; 0x800079 <__TEXT_REGION_LENGTH__+0x7e0079>
     716:	90 e0       	ldi	r25, 0x00	; 0
     718:	92 2b       	or	r25, r18
     71a:	cf 91       	pop	r28
     71c:	08 95       	ret
     71e:	80 e0       	ldi	r24, 0x00	; 0
     720:	90 e0       	ldi	r25, 0x00	; 0
     722:	cf 91       	pop	r28
     724:	08 95       	ret

00000726 <__vector_21>:
     726:	1f 92       	push	r1
     728:	0f 92       	push	r0
     72a:	0f b6       	in	r0, 0x3f	; 63
     72c:	0f 92       	push	r0
     72e:	11 24       	eor	r1, r1
     730:	2f 93       	push	r18
     732:	3f 93       	push	r19
     734:	4f 93       	push	r20
     736:	5f 93       	push	r21
     738:	6f 93       	push	r22
     73a:	7f 93       	push	r23
     73c:	8f 93       	push	r24
     73e:	9f 93       	push	r25
     740:	af 93       	push	r26
     742:	bf 93       	push	r27
     744:	ef 93       	push	r30
     746:	ff 93       	push	r31
     748:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     74c:	87 7f       	andi	r24, 0xF7	; 247
     74e:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     752:	e0 91 26 01 	lds	r30, 0x0126	; 0x800126 <currentCallback>
     756:	f0 91 27 01 	lds	r31, 0x0127	; 0x800127 <currentCallback+0x1>
     75a:	30 97       	sbiw	r30, 0x00	; 0
     75c:	59 f0       	breq	.+22     	; 0x774 <__vector_21+0x4e>
     75e:	80 91 78 00 	lds	r24, 0x0078	; 0x800078 <__TEXT_REGION_LENGTH__+0x7e0078>
     762:	20 91 79 00 	lds	r18, 0x0079	; 0x800079 <__TEXT_REGION_LENGTH__+0x7e0079>
     766:	90 e0       	ldi	r25, 0x00	; 0
     768:	92 2b       	or	r25, r18
     76a:	09 95       	icall
     76c:	10 92 27 01 	sts	0x0127, r1	; 0x800127 <currentCallback+0x1>
     770:	10 92 26 01 	sts	0x0126, r1	; 0x800126 <currentCallback>
     774:	ff 91       	pop	r31
     776:	ef 91       	pop	r30
     778:	bf 91       	pop	r27
     77a:	af 91       	pop	r26
     77c:	9f 91       	pop	r25
     77e:	8f 91       	pop	r24
     780:	7f 91       	pop	r23
     782:	6f 91       	pop	r22
     784:	5f 91       	pop	r21
     786:	4f 91       	pop	r20
     788:	3f 91       	pop	r19
     78a:	2f 91       	pop	r18
     78c:	0f 90       	pop	r0
     78e:	0f be       	out	0x3f, r0	; 63
     790:	0f 90       	pop	r0
     792:	1f 90       	pop	r1
     794:	18 95       	reti

00000796 <_analogReadAsync>:
     796:	0f 93       	push	r16
     798:	1f 93       	push	r17
     79a:	cf 93       	push	r28
     79c:	c8 2f       	mov	r28, r24
     79e:	8b 01       	movw	r16, r22
     7a0:	88 30       	cpi	r24, 0x08	; 8
     7a2:	e8 f4       	brcc	.+58     	; 0x7de <_analogReadAsync+0x48>
     7a4:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     7a8:	87 fd       	sbrc	r24, 7
     7aa:	0f c0       	rjmp	.+30     	; 0x7ca <_analogReadAsync+0x34>
     7ac:	87 e8       	ldi	r24, 0x87	; 135
     7ae:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     7b2:	8a e0       	ldi	r24, 0x0A	; 10
     7b4:	90 e0       	ldi	r25, 0x00	; 0
     7b6:	0e 94 03 04 	call	0x806	; 0x806 <_delayMs>
     7ba:	61 e0       	ldi	r22, 0x01	; 1
     7bc:	8d e0       	ldi	r24, 0x0D	; 13
     7be:	0e 94 9e 01 	call	0x33c	; 0x33c <_pinMode>
     7c2:	60 e0       	ldi	r22, 0x00	; 0
     7c4:	8d e0       	ldi	r24, 0x0D	; 13
     7c6:	0e 94 5d 01 	call	0x2ba	; 0x2ba <_digitalWrite>
     7ca:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     7ce:	86 fd       	sbrc	r24, 6
     7d0:	06 c0       	rjmp	.+12     	; 0x7de <_analogReadAsync+0x48>
     7d2:	80 91 26 01 	lds	r24, 0x0126	; 0x800126 <currentCallback>
     7d6:	90 91 27 01 	lds	r25, 0x0127	; 0x800127 <currentCallback+0x1>
     7da:	89 2b       	or	r24, r25
     7dc:	29 f0       	breq	.+10     	; 0x7e8 <_analogReadAsync+0x52>
     7de:	80 e0       	ldi	r24, 0x00	; 0
     7e0:	cf 91       	pop	r28
     7e2:	1f 91       	pop	r17
     7e4:	0f 91       	pop	r16
     7e6:	08 95       	ret
     7e8:	10 93 27 01 	sts	0x0127, r17	; 0x800127 <currentCallback+0x1>
     7ec:	00 93 26 01 	sts	0x0126, r16	; 0x800126 <currentCallback>
     7f0:	c0 64       	ori	r28, 0x40	; 64
     7f2:	c0 93 7c 00 	sts	0x007C, r28	; 0x80007c <__TEXT_REGION_LENGTH__+0x7e007c>
     7f6:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     7fa:	88 64       	ori	r24, 0x48	; 72
     7fc:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     800:	78 94       	sei
     802:	81 e0       	ldi	r24, 0x01	; 1
     804:	ed cf       	rjmp	.-38     	; 0x7e0 <_analogReadAsync+0x4a>

00000806 <_delayMs>:
     806:	00 97       	sbiw	r24, 0x00	; 0
     808:	61 f0       	breq	.+24     	; 0x822 <_delayMs+0x1c>
     80a:	20 e0       	ldi	r18, 0x00	; 0
     80c:	30 e0       	ldi	r19, 0x00	; 0
     80e:	40 ea       	ldi	r20, 0xA0	; 160
     810:	5f e0       	ldi	r21, 0x0F	; 15
     812:	fa 01       	movw	r30, r20
     814:	31 97       	sbiw	r30, 0x01	; 1
     816:	f1 f7       	brne	.-4      	; 0x814 <_delayMs+0xe>
     818:	2f 5f       	subi	r18, 0xFF	; 255
     81a:	3f 4f       	sbci	r19, 0xFF	; 255
     81c:	82 17       	cp	r24, r18
     81e:	93 07       	cpc	r25, r19
     820:	c1 f7       	brne	.-16     	; 0x812 <_delayMs+0xc>
     822:	08 95       	ret

00000824 <_ticks>:
     824:	80 91 28 01 	lds	r24, 0x0128	; 0x800128 <t0Overflow>
     828:	90 91 29 01 	lds	r25, 0x0129	; 0x800129 <t0Overflow+0x1>
     82c:	08 95       	ret

0000082e <_stringAddCharacter>:
     82e:	e0 91 39 01 	lds	r30, 0x0139	; 0x800139 <stringBufferEnd>
     832:	ef 37       	cpi	r30, 0x7F	; 127
     834:	91 f0       	breq	.+36     	; 0x85a <_stringAddCharacter+0x2c>
     836:	91 e0       	ldi	r25, 0x01	; 1
     838:	9e 0f       	add	r25, r30
     83a:	90 93 39 01 	sts	0x0139, r25	; 0x800139 <stringBufferEnd>
     83e:	0e 2e       	mov	r0, r30
     840:	00 0c       	add	r0, r0
     842:	ff 0b       	sbc	r31, r31
     844:	e6 5c       	subi	r30, 0xC6	; 198
     846:	fe 4f       	sbci	r31, 0xFE	; 254
     848:	80 83       	st	Z, r24
     84a:	e9 2f       	mov	r30, r25
     84c:	99 0f       	add	r25, r25
     84e:	ff 0b       	sbc	r31, r31
     850:	e6 5c       	subi	r30, 0xC6	; 198
     852:	fe 4f       	sbci	r31, 0xFE	; 254
     854:	10 82       	st	Z, r1
     856:	81 e0       	ldi	r24, 0x01	; 1
     858:	08 95       	ret
     85a:	80 e0       	ldi	r24, 0x00	; 0
     85c:	08 95       	ret

0000085e <_stringStartNew>:
     85e:	10 92 39 01 	sts	0x0139, r1	; 0x800139 <stringBufferEnd>
     862:	10 92 3a 01 	sts	0x013A, r1	; 0x80013a <stringBuffer>
     866:	08 95       	ret

00000868 <_stringCurrentValue>:
     868:	8a e3       	ldi	r24, 0x3A	; 58
     86a:	91 e0       	ldi	r25, 0x01	; 1
     86c:	08 95       	ret

0000086e <_intToString>:
     86e:	9f 93       	push	r25
     870:	8f 93       	push	r24
     872:	7f 93       	push	r23
     874:	6f 93       	push	r22
     876:	8f e0       	ldi	r24, 0x0F	; 15
     878:	91 e0       	ldi	r25, 0x01	; 1
     87a:	9f 93       	push	r25
     87c:	8f 93       	push	r24
     87e:	1f 92       	push	r1
     880:	8f e0       	ldi	r24, 0x0F	; 15
     882:	8f 93       	push	r24
     884:	8a e2       	ldi	r24, 0x2A	; 42
     886:	91 e0       	ldi	r25, 0x01	; 1
     888:	9f 93       	push	r25
     88a:	8f 93       	push	r24
     88c:	0e 94 97 09 	call	0x132e	; 0x132e <snprintf>
     890:	8d b7       	in	r24, 0x3d	; 61
     892:	9e b7       	in	r25, 0x3e	; 62
     894:	0a 96       	adiw	r24, 0x0a	; 10
     896:	0f b6       	in	r0, 0x3f	; 63
     898:	f8 94       	cli
     89a:	9e bf       	out	0x3e, r25	; 62
     89c:	0f be       	out	0x3f, r0	; 63
     89e:	8d bf       	out	0x3d, r24	; 61
     8a0:	8a e2       	ldi	r24, 0x2A	; 42
     8a2:	91 e0       	ldi	r25, 0x01	; 1
     8a4:	08 95       	ret

000008a6 <_fltToString>:
     8a6:	9f 93       	push	r25
     8a8:	8f 93       	push	r24
     8aa:	7f 93       	push	r23
     8ac:	6f 93       	push	r22
     8ae:	83 e1       	ldi	r24, 0x13	; 19
     8b0:	91 e0       	ldi	r25, 0x01	; 1
     8b2:	9f 93       	push	r25
     8b4:	8f 93       	push	r24
     8b6:	1f 92       	push	r1
     8b8:	8f e0       	ldi	r24, 0x0F	; 15
     8ba:	8f 93       	push	r24
     8bc:	8a e2       	ldi	r24, 0x2A	; 42
     8be:	91 e0       	ldi	r25, 0x01	; 1
     8c0:	9f 93       	push	r25
     8c2:	8f 93       	push	r24
     8c4:	0e 94 97 09 	call	0x132e	; 0x132e <snprintf>
     8c8:	8d b7       	in	r24, 0x3d	; 61
     8ca:	9e b7       	in	r25, 0x3e	; 62
     8cc:	0a 96       	adiw	r24, 0x0a	; 10
     8ce:	0f b6       	in	r0, 0x3f	; 63
     8d0:	f8 94       	cli
     8d2:	9e bf       	out	0x3e, r25	; 62
     8d4:	0f be       	out	0x3f, r0	; 63
     8d6:	8d bf       	out	0x3d, r24	; 61
     8d8:	8a e2       	ldi	r24, 0x2A	; 42
     8da:	91 e0       	ldi	r25, 0x01	; 1
     8dc:	08 95       	ret

000008de <_fltToStringPrecision>:
     8de:	9f 93       	push	r25
     8e0:	8f 93       	push	r24
     8e2:	7f 93       	push	r23
     8e4:	6f 93       	push	r22
     8e6:	1f 92       	push	r1
     8e8:	4f 93       	push	r20
     8ea:	88 e1       	ldi	r24, 0x18	; 24
     8ec:	91 e0       	ldi	r25, 0x01	; 1
     8ee:	9f 93       	push	r25
     8f0:	8f 93       	push	r24
     8f2:	1f 92       	push	r1
     8f4:	8f e0       	ldi	r24, 0x0F	; 15
     8f6:	8f 93       	push	r24
     8f8:	8a e2       	ldi	r24, 0x2A	; 42
     8fa:	91 e0       	ldi	r25, 0x01	; 1
     8fc:	9f 93       	push	r25
     8fe:	8f 93       	push	r24
     900:	0e 94 97 09 	call	0x132e	; 0x132e <snprintf>
     904:	8d b7       	in	r24, 0x3d	; 61
     906:	9e b7       	in	r25, 0x3e	; 62
     908:	0c 96       	adiw	r24, 0x0c	; 12
     90a:	0f b6       	in	r0, 0x3f	; 63
     90c:	f8 94       	cli
     90e:	9e bf       	out	0x3e, r25	; 62
     910:	0f be       	out	0x3f, r0	; 63
     912:	8d bf       	out	0x3d, r24	; 61
     914:	8a e2       	ldi	r24, 0x2A	; 42
     916:	91 e0       	ldi	r25, 0x01	; 1
     918:	08 95       	ret

0000091a <__vector_16>:
     91a:	1f 92       	push	r1
     91c:	0f 92       	push	r0
     91e:	0f b6       	in	r0, 0x3f	; 63
     920:	0f 92       	push	r0
     922:	11 24       	eor	r1, r1
     924:	8f 93       	push	r24
     926:	9f 93       	push	r25
     928:	80 91 28 01 	lds	r24, 0x0128	; 0x800128 <t0Overflow>
     92c:	90 91 29 01 	lds	r25, 0x0129	; 0x800129 <t0Overflow+0x1>
     930:	01 96       	adiw	r24, 0x01	; 1
     932:	90 93 29 01 	sts	0x0129, r25	; 0x800129 <t0Overflow+0x1>
     936:	80 93 28 01 	sts	0x0128, r24	; 0x800128 <t0Overflow>
     93a:	9f 91       	pop	r25
     93c:	8f 91       	pop	r24
     93e:	0f 90       	pop	r0
     940:	0f be       	out	0x3f, r0	; 63
     942:	0f 90       	pop	r0
     944:	1f 90       	pop	r1
     946:	18 95       	reti

00000948 <vfprintf>:
     948:	a0 e1       	ldi	r26, 0x10	; 16
     94a:	b0 e0       	ldi	r27, 0x00	; 0
     94c:	ea ea       	ldi	r30, 0xAA	; 170
     94e:	f4 e0       	ldi	r31, 0x04	; 4
     950:	0c 94 3c 08 	jmp	0x1078	; 0x1078 <__prologue_saves__>
     954:	7c 01       	movw	r14, r24
     956:	1b 01       	movw	r2, r22
     958:	6a 01       	movw	r12, r20
     95a:	fc 01       	movw	r30, r24
     95c:	17 82       	std	Z+7, r1	; 0x07
     95e:	16 82       	std	Z+6, r1	; 0x06
     960:	83 81       	ldd	r24, Z+3	; 0x03
     962:	81 ff       	sbrs	r24, 1
     964:	6d c3       	rjmp	.+1754   	; 0x1040 <vfprintf+0x6f8>
     966:	9e 01       	movw	r18, r28
     968:	2f 5f       	subi	r18, 0xFF	; 255
     96a:	3f 4f       	sbci	r19, 0xFF	; 255
     96c:	59 01       	movw	r10, r18
     96e:	f7 01       	movw	r30, r14
     970:	93 81       	ldd	r25, Z+3	; 0x03
     972:	f1 01       	movw	r30, r2
     974:	93 fd       	sbrc	r25, 3
     976:	85 91       	lpm	r24, Z+
     978:	93 ff       	sbrs	r25, 3
     97a:	81 91       	ld	r24, Z+
     97c:	1f 01       	movw	r2, r30
     97e:	88 23       	and	r24, r24
     980:	09 f4       	brne	.+2      	; 0x984 <vfprintf+0x3c>
     982:	cc c2       	rjmp	.+1432   	; 0xf1c <vfprintf+0x5d4>
     984:	85 32       	cpi	r24, 0x25	; 37
     986:	39 f4       	brne	.+14     	; 0x996 <vfprintf+0x4e>
     988:	93 fd       	sbrc	r25, 3
     98a:	85 91       	lpm	r24, Z+
     98c:	93 ff       	sbrs	r25, 3
     98e:	81 91       	ld	r24, Z+
     990:	1f 01       	movw	r2, r30
     992:	85 32       	cpi	r24, 0x25	; 37
     994:	39 f4       	brne	.+14     	; 0x9a4 <vfprintf+0x5c>
     996:	b7 01       	movw	r22, r14
     998:	90 e0       	ldi	r25, 0x00	; 0
     99a:	0e 94 67 09 	call	0x12ce	; 0x12ce <fputc>
     99e:	36 01       	movw	r6, r12
     9a0:	63 01       	movw	r12, r6
     9a2:	e5 cf       	rjmp	.-54     	; 0x96e <vfprintf+0x26>
     9a4:	51 2c       	mov	r5, r1
     9a6:	91 2c       	mov	r9, r1
     9a8:	00 e0       	ldi	r16, 0x00	; 0
     9aa:	00 32       	cpi	r16, 0x20	; 32
     9ac:	38 f4       	brcc	.+14     	; 0x9bc <vfprintf+0x74>
     9ae:	8b 32       	cpi	r24, 0x2B	; 43
     9b0:	09 f1       	breq	.+66     	; 0x9f4 <vfprintf+0xac>
     9b2:	90 f4       	brcc	.+36     	; 0x9d8 <vfprintf+0x90>
     9b4:	80 32       	cpi	r24, 0x20	; 32
     9b6:	f9 f0       	breq	.+62     	; 0x9f6 <vfprintf+0xae>
     9b8:	83 32       	cpi	r24, 0x23	; 35
     9ba:	09 f1       	breq	.+66     	; 0x9fe <vfprintf+0xb6>
     9bc:	07 fd       	sbrc	r16, 7
     9be:	34 c0       	rjmp	.+104    	; 0xa28 <vfprintf+0xe0>
     9c0:	20 ed       	ldi	r18, 0xD0	; 208
     9c2:	28 0f       	add	r18, r24
     9c4:	2a 30       	cpi	r18, 0x0A	; 10
     9c6:	20 f5       	brcc	.+72     	; 0xa10 <vfprintf+0xc8>
     9c8:	06 ff       	sbrs	r16, 6
     9ca:	1b c0       	rjmp	.+54     	; 0xa02 <vfprintf+0xba>
     9cc:	fa e0       	ldi	r31, 0x0A	; 10
     9ce:	5f 9e       	mul	r5, r31
     9d0:	20 0d       	add	r18, r0
     9d2:	11 24       	eor	r1, r1
     9d4:	52 2e       	mov	r5, r18
     9d6:	05 c0       	rjmp	.+10     	; 0x9e2 <vfprintf+0x9a>
     9d8:	8d 32       	cpi	r24, 0x2D	; 45
     9da:	79 f0       	breq	.+30     	; 0x9fa <vfprintf+0xb2>
     9dc:	80 33       	cpi	r24, 0x30	; 48
     9de:	71 f7       	brne	.-36     	; 0x9bc <vfprintf+0x74>
     9e0:	01 60       	ori	r16, 0x01	; 1
     9e2:	f1 01       	movw	r30, r2
     9e4:	93 fd       	sbrc	r25, 3
     9e6:	85 91       	lpm	r24, Z+
     9e8:	93 ff       	sbrs	r25, 3
     9ea:	81 91       	ld	r24, Z+
     9ec:	1f 01       	movw	r2, r30
     9ee:	81 11       	cpse	r24, r1
     9f0:	dc cf       	rjmp	.-72     	; 0x9aa <vfprintf+0x62>
     9f2:	1a c0       	rjmp	.+52     	; 0xa28 <vfprintf+0xe0>
     9f4:	02 60       	ori	r16, 0x02	; 2
     9f6:	04 60       	ori	r16, 0x04	; 4
     9f8:	f4 cf       	rjmp	.-24     	; 0x9e2 <vfprintf+0x9a>
     9fa:	08 60       	ori	r16, 0x08	; 8
     9fc:	f2 cf       	rjmp	.-28     	; 0x9e2 <vfprintf+0x9a>
     9fe:	00 61       	ori	r16, 0x10	; 16
     a00:	f0 cf       	rjmp	.-32     	; 0x9e2 <vfprintf+0x9a>
     a02:	3a e0       	ldi	r19, 0x0A	; 10
     a04:	93 9e       	mul	r9, r19
     a06:	20 0d       	add	r18, r0
     a08:	11 24       	eor	r1, r1
     a0a:	92 2e       	mov	r9, r18
     a0c:	00 62       	ori	r16, 0x20	; 32
     a0e:	e9 cf       	rjmp	.-46     	; 0x9e2 <vfprintf+0x9a>
     a10:	8e 32       	cpi	r24, 0x2E	; 46
     a12:	21 f4       	brne	.+8      	; 0xa1c <vfprintf+0xd4>
     a14:	06 fd       	sbrc	r16, 6
     a16:	82 c2       	rjmp	.+1284   	; 0xf1c <vfprintf+0x5d4>
     a18:	00 64       	ori	r16, 0x40	; 64
     a1a:	e3 cf       	rjmp	.-58     	; 0x9e2 <vfprintf+0x9a>
     a1c:	8c 36       	cpi	r24, 0x6C	; 108
     a1e:	11 f4       	brne	.+4      	; 0xa24 <vfprintf+0xdc>
     a20:	00 68       	ori	r16, 0x80	; 128
     a22:	df cf       	rjmp	.-66     	; 0x9e2 <vfprintf+0x9a>
     a24:	88 36       	cpi	r24, 0x68	; 104
     a26:	e9 f2       	breq	.-70     	; 0x9e2 <vfprintf+0x9a>
     a28:	9b eb       	ldi	r25, 0xBB	; 187
     a2a:	98 0f       	add	r25, r24
     a2c:	93 30       	cpi	r25, 0x03	; 3
     a2e:	d8 f5       	brcc	.+118    	; 0xaa6 <vfprintf+0x15e>
     a30:	00 61       	ori	r16, 0x10	; 16
     a32:	80 5e       	subi	r24, 0xE0	; 224
     a34:	06 fd       	sbrc	r16, 6
     a36:	02 c0       	rjmp	.+4      	; 0xa3c <vfprintf+0xf4>
     a38:	46 e0       	ldi	r20, 0x06	; 6
     a3a:	54 2e       	mov	r5, r20
     a3c:	10 2f       	mov	r17, r16
     a3e:	1f 73       	andi	r17, 0x3F	; 63
     a40:	85 36       	cpi	r24, 0x65	; 101
     a42:	c1 f5       	brne	.+112    	; 0xab4 <vfprintf+0x16c>
     a44:	10 64       	ori	r17, 0x40	; 64
     a46:	17 ff       	sbrs	r17, 7
     a48:	3e c0       	rjmp	.+124    	; 0xac6 <vfprintf+0x17e>
     a4a:	8b e3       	ldi	r24, 0x3B	; 59
     a4c:	85 15       	cp	r24, r5
     a4e:	08 f4       	brcc	.+2      	; 0xa52 <vfprintf+0x10a>
     a50:	42 c0       	rjmp	.+132    	; 0xad6 <vfprintf+0x18e>
     a52:	91 e0       	ldi	r25, 0x01	; 1
     a54:	95 0d       	add	r25, r5
     a56:	9c 87       	std	Y+12, r25	; 0x0c
     a58:	27 e0       	ldi	r18, 0x07	; 7
     a5a:	36 01       	movw	r6, r12
     a5c:	34 e0       	ldi	r19, 0x04	; 4
     a5e:	63 0e       	add	r6, r19
     a60:	71 1c       	adc	r7, r1
     a62:	f6 01       	movw	r30, r12
     a64:	60 81       	ld	r22, Z
     a66:	71 81       	ldd	r23, Z+1	; 0x01
     a68:	82 81       	ldd	r24, Z+2	; 0x02
     a6a:	93 81       	ldd	r25, Z+3	; 0x03
     a6c:	0c 85       	ldd	r16, Y+12	; 0x0c
     a6e:	a5 01       	movw	r20, r10
     a70:	0e 94 79 08 	call	0x10f2	; 0x10f2 <__ftoa_engine>
     a74:	6c 01       	movw	r12, r24
     a76:	f9 81       	ldd	r31, Y+1	; 0x01
     a78:	fe 87       	std	Y+14, r31	; 0x0e
     a7a:	f0 ff       	sbrs	r31, 0
     a7c:	02 c0       	rjmp	.+4      	; 0xa82 <vfprintf+0x13a>
     a7e:	f3 ff       	sbrs	r31, 3
     a80:	30 c0       	rjmp	.+96     	; 0xae2 <vfprintf+0x19a>
     a82:	11 fd       	sbrc	r17, 1
     a84:	30 c0       	rjmp	.+96     	; 0xae6 <vfprintf+0x19e>
     a86:	01 2f       	mov	r16, r17
     a88:	04 70       	andi	r16, 0x04	; 4
     a8a:	12 fd       	sbrc	r17, 2
     a8c:	00 e2       	ldi	r16, 0x20	; 32
     a8e:	2e 85       	ldd	r18, Y+14	; 0x0e
     a90:	2c 70       	andi	r18, 0x0C	; 12
     a92:	42 2e       	mov	r4, r18
     a94:	09 f4       	brne	.+2      	; 0xa98 <vfprintf+0x150>
     a96:	64 c0       	rjmp	.+200    	; 0xb60 <vfprintf+0x218>
     a98:	01 11       	cpse	r16, r1
     a9a:	d5 c2       	rjmp	.+1450   	; 0x1046 <vfprintf+0x6fe>
     a9c:	f3 e0       	ldi	r31, 0x03	; 3
     a9e:	f9 15       	cp	r31, r9
     aa0:	20 f1       	brcs	.+72     	; 0xaea <vfprintf+0x1a2>
     aa2:	41 2c       	mov	r4, r1
     aa4:	36 c0       	rjmp	.+108    	; 0xb12 <vfprintf+0x1ca>
     aa6:	9b e9       	ldi	r25, 0x9B	; 155
     aa8:	98 0f       	add	r25, r24
     aaa:	93 30       	cpi	r25, 0x03	; 3
     aac:	08 f0       	brcs	.+2      	; 0xab0 <vfprintf+0x168>
     aae:	76 c1       	rjmp	.+748    	; 0xd9c <vfprintf+0x454>
     ab0:	0f 7e       	andi	r16, 0xEF	; 239
     ab2:	c0 cf       	rjmp	.-128    	; 0xa34 <vfprintf+0xec>
     ab4:	86 36       	cpi	r24, 0x66	; 102
     ab6:	11 f4       	brne	.+4      	; 0xabc <vfprintf+0x174>
     ab8:	10 68       	ori	r17, 0x80	; 128
     aba:	c5 cf       	rjmp	.-118    	; 0xa46 <vfprintf+0xfe>
     abc:	55 20       	and	r5, r5
     abe:	09 f4       	brne	.+2      	; 0xac2 <vfprintf+0x17a>
     ac0:	c2 cf       	rjmp	.-124    	; 0xa46 <vfprintf+0xfe>
     ac2:	5a 94       	dec	r5
     ac4:	c0 cf       	rjmp	.-128    	; 0xa46 <vfprintf+0xfe>
     ac6:	e7 e0       	ldi	r30, 0x07	; 7
     ac8:	e5 15       	cp	r30, r5
     aca:	48 f4       	brcc	.+18     	; 0xade <vfprintf+0x196>
     acc:	27 e0       	ldi	r18, 0x07	; 7
     ace:	37 e0       	ldi	r19, 0x07	; 7
     ad0:	53 2e       	mov	r5, r19
     ad2:	1c 86       	std	Y+12, r1	; 0x0c
     ad4:	c2 cf       	rjmp	.-124    	; 0xa5a <vfprintf+0x112>
     ad6:	27 e0       	ldi	r18, 0x07	; 7
     ad8:	fc e3       	ldi	r31, 0x3C	; 60
     ada:	fc 87       	std	Y+12, r31	; 0x0c
     adc:	be cf       	rjmp	.-132    	; 0xa5a <vfprintf+0x112>
     ade:	25 2d       	mov	r18, r5
     ae0:	f8 cf       	rjmp	.-16     	; 0xad2 <vfprintf+0x18a>
     ae2:	0d e2       	ldi	r16, 0x2D	; 45
     ae4:	d4 cf       	rjmp	.-88     	; 0xa8e <vfprintf+0x146>
     ae6:	0b e2       	ldi	r16, 0x2B	; 43
     ae8:	d2 cf       	rjmp	.-92     	; 0xa8e <vfprintf+0x146>
     aea:	83 e0       	ldi	r24, 0x03	; 3
     aec:	49 2c       	mov	r4, r9
     aee:	48 1a       	sub	r4, r24
     af0:	13 fd       	sbrc	r17, 3
     af2:	08 c0       	rjmp	.+16     	; 0xb04 <vfprintf+0x1bc>
     af4:	b7 01       	movw	r22, r14
     af6:	80 e2       	ldi	r24, 0x20	; 32
     af8:	90 e0       	ldi	r25, 0x00	; 0
     afa:	0e 94 67 09 	call	0x12ce	; 0x12ce <fputc>
     afe:	4a 94       	dec	r4
     b00:	41 10       	cpse	r4, r1
     b02:	f8 cf       	rjmp	.-16     	; 0xaf4 <vfprintf+0x1ac>
     b04:	00 23       	and	r16, r16
     b06:	29 f0       	breq	.+10     	; 0xb12 <vfprintf+0x1ca>
     b08:	b7 01       	movw	r22, r14
     b0a:	80 2f       	mov	r24, r16
     b0c:	90 e0       	ldi	r25, 0x00	; 0
     b0e:	0e 94 67 09 	call	0x12ce	; 0x12ce <fputc>
     b12:	3e 85       	ldd	r19, Y+14	; 0x0e
     b14:	33 ff       	sbrs	r19, 3
     b16:	15 c0       	rjmp	.+42     	; 0xb42 <vfprintf+0x1fa>
     b18:	98 e6       	ldi	r25, 0x68	; 104
     b1a:	c9 2e       	mov	r12, r25
     b1c:	90 e0       	ldi	r25, 0x00	; 0
     b1e:	d9 2e       	mov	r13, r25
     b20:	10 71       	andi	r17, 0x10	; 16
     b22:	f6 01       	movw	r30, r12
     b24:	84 91       	lpm	r24, Z
     b26:	81 11       	cpse	r24, r1
     b28:	11 c0       	rjmp	.+34     	; 0xb4c <vfprintf+0x204>
     b2a:	44 20       	and	r4, r4
     b2c:	09 f4       	brne	.+2      	; 0xb30 <vfprintf+0x1e8>
     b2e:	38 cf       	rjmp	.-400    	; 0x9a0 <vfprintf+0x58>
     b30:	b7 01       	movw	r22, r14
     b32:	80 e2       	ldi	r24, 0x20	; 32
     b34:	90 e0       	ldi	r25, 0x00	; 0
     b36:	0e 94 67 09 	call	0x12ce	; 0x12ce <fputc>
     b3a:	4a 94       	dec	r4
     b3c:	f6 cf       	rjmp	.-20     	; 0xb2a <vfprintf+0x1e2>
     b3e:	84 e0       	ldi	r24, 0x04	; 4
     b40:	d5 cf       	rjmp	.-86     	; 0xaec <vfprintf+0x1a4>
     b42:	8c e6       	ldi	r24, 0x6C	; 108
     b44:	c8 2e       	mov	r12, r24
     b46:	80 e0       	ldi	r24, 0x00	; 0
     b48:	d8 2e       	mov	r13, r24
     b4a:	ea cf       	rjmp	.-44     	; 0xb20 <vfprintf+0x1d8>
     b4c:	11 11       	cpse	r17, r1
     b4e:	80 52       	subi	r24, 0x20	; 32
     b50:	b7 01       	movw	r22, r14
     b52:	90 e0       	ldi	r25, 0x00	; 0
     b54:	0e 94 67 09 	call	0x12ce	; 0x12ce <fputc>
     b58:	8f ef       	ldi	r24, 0xFF	; 255
     b5a:	c8 1a       	sub	r12, r24
     b5c:	d8 0a       	sbc	r13, r24
     b5e:	e1 cf       	rjmp	.-62     	; 0xb22 <vfprintf+0x1da>
     b60:	17 ff       	sbrs	r17, 7
     b62:	7c c0       	rjmp	.+248    	; 0xc5c <vfprintf+0x314>
     b64:	8c 85       	ldd	r24, Y+12	; 0x0c
     b66:	8c 0d       	add	r24, r12
     b68:	fe 85       	ldd	r31, Y+14	; 0x0e
     b6a:	f4 ff       	sbrs	r31, 4
     b6c:	04 c0       	rjmp	.+8      	; 0xb76 <vfprintf+0x22e>
     b6e:	9a 81       	ldd	r25, Y+2	; 0x02
     b70:	91 33       	cpi	r25, 0x31	; 49
     b72:	09 f4       	brne	.+2      	; 0xb76 <vfprintf+0x22e>
     b74:	81 50       	subi	r24, 0x01	; 1
     b76:	18 16       	cp	r1, r24
     b78:	0c f0       	brlt	.+2      	; 0xb7c <vfprintf+0x234>
     b7a:	93 c0       	rjmp	.+294    	; 0xca2 <vfprintf+0x35a>
     b7c:	8c 87       	std	Y+12, r24	; 0x0c
     b7e:	89 30       	cpi	r24, 0x09	; 9
     b80:	10 f0       	brcs	.+4      	; 0xb86 <vfprintf+0x23e>
     b82:	28 e0       	ldi	r18, 0x08	; 8
     b84:	2c 87       	std	Y+12, r18	; 0x0c
     b86:	17 ff       	sbrs	r17, 7
     b88:	91 c0       	rjmp	.+290    	; 0xcac <vfprintf+0x364>
     b8a:	1c 14       	cp	r1, r12
     b8c:	1d 04       	cpc	r1, r13
     b8e:	0c f0       	brlt	.+2      	; 0xb92 <vfprintf+0x24a>
     b90:	90 c0       	rjmp	.+288    	; 0xcb2 <vfprintf+0x36a>
     b92:	c6 01       	movw	r24, r12
     b94:	01 96       	adiw	r24, 0x01	; 1
     b96:	01 11       	cpse	r16, r1
     b98:	01 96       	adiw	r24, 0x01	; 1
     b9a:	55 20       	and	r5, r5
     b9c:	31 f0       	breq	.+12     	; 0xbaa <vfprintf+0x262>
     b9e:	25 2d       	mov	r18, r5
     ba0:	30 e0       	ldi	r19, 0x00	; 0
     ba2:	2f 5f       	subi	r18, 0xFF	; 255
     ba4:	3f 4f       	sbci	r19, 0xFF	; 255
     ba6:	82 0f       	add	r24, r18
     ba8:	93 1f       	adc	r25, r19
     baa:	29 2d       	mov	r18, r9
     bac:	30 e0       	ldi	r19, 0x00	; 0
     bae:	82 17       	cp	r24, r18
     bb0:	93 07       	cpc	r25, r19
     bb2:	14 f4       	brge	.+4      	; 0xbb8 <vfprintf+0x270>
     bb4:	49 2c       	mov	r4, r9
     bb6:	48 1a       	sub	r4, r24
     bb8:	81 2f       	mov	r24, r17
     bba:	89 70       	andi	r24, 0x09	; 9
     bbc:	11 f4       	brne	.+4      	; 0xbc2 <vfprintf+0x27a>
     bbe:	41 10       	cpse	r4, r1
     bc0:	7b c0       	rjmp	.+246    	; 0xcb8 <vfprintf+0x370>
     bc2:	00 23       	and	r16, r16
     bc4:	29 f0       	breq	.+10     	; 0xbd0 <vfprintf+0x288>
     bc6:	b7 01       	movw	r22, r14
     bc8:	80 2f       	mov	r24, r16
     bca:	90 e0       	ldi	r25, 0x00	; 0
     bcc:	0e 94 67 09 	call	0x12ce	; 0x12ce <fputc>
     bd0:	13 fd       	sbrc	r17, 3
     bd2:	02 c0       	rjmp	.+4      	; 0xbd8 <vfprintf+0x290>
     bd4:	41 10       	cpse	r4, r1
     bd6:	77 c0       	rjmp	.+238    	; 0xcc6 <vfprintf+0x37e>
     bd8:	17 ff       	sbrs	r17, 7
     bda:	90 c0       	rjmp	.+288    	; 0xcfc <vfprintf+0x3b4>
     bdc:	46 01       	movw	r8, r12
     bde:	d7 fe       	sbrs	r13, 7
     be0:	02 c0       	rjmp	.+4      	; 0xbe6 <vfprintf+0x29e>
     be2:	81 2c       	mov	r8, r1
     be4:	91 2c       	mov	r9, r1
     be6:	c6 01       	movw	r24, r12
     be8:	88 19       	sub	r24, r8
     bea:	99 09       	sbc	r25, r9
     bec:	f5 01       	movw	r30, r10
     bee:	e8 0f       	add	r30, r24
     bf0:	f9 1f       	adc	r31, r25
     bf2:	f8 8b       	std	Y+16, r31	; 0x10
     bf4:	ef 87       	std	Y+15, r30	; 0x0f
     bf6:	96 01       	movw	r18, r12
     bf8:	8c 85       	ldd	r24, Y+12	; 0x0c
     bfa:	28 1b       	sub	r18, r24
     bfc:	31 09       	sbc	r19, r1
     bfe:	3d 87       	std	Y+13, r19	; 0x0d
     c00:	2c 87       	std	Y+12, r18	; 0x0c
     c02:	05 2d       	mov	r16, r5
     c04:	10 e0       	ldi	r17, 0x00	; 0
     c06:	11 95       	neg	r17
     c08:	01 95       	neg	r16
     c0a:	11 09       	sbc	r17, r1
     c0c:	9f ef       	ldi	r25, 0xFF	; 255
     c0e:	89 16       	cp	r8, r25
     c10:	99 06       	cpc	r9, r25
     c12:	29 f4       	brne	.+10     	; 0xc1e <vfprintf+0x2d6>
     c14:	b7 01       	movw	r22, r14
     c16:	8e e2       	ldi	r24, 0x2E	; 46
     c18:	90 e0       	ldi	r25, 0x00	; 0
     c1a:	0e 94 67 09 	call	0x12ce	; 0x12ce <fputc>
     c1e:	c8 14       	cp	r12, r8
     c20:	d9 04       	cpc	r13, r9
     c22:	0c f4       	brge	.+2      	; 0xc26 <vfprintf+0x2de>
     c24:	57 c0       	rjmp	.+174    	; 0xcd4 <vfprintf+0x38c>
     c26:	ec 85       	ldd	r30, Y+12	; 0x0c
     c28:	fd 85       	ldd	r31, Y+13	; 0x0d
     c2a:	e8 15       	cp	r30, r8
     c2c:	f9 05       	cpc	r31, r9
     c2e:	0c f0       	brlt	.+2      	; 0xc32 <vfprintf+0x2ea>
     c30:	51 c0       	rjmp	.+162    	; 0xcd4 <vfprintf+0x38c>
     c32:	ef 85       	ldd	r30, Y+15	; 0x0f
     c34:	f8 89       	ldd	r31, Y+16	; 0x10
     c36:	81 81       	ldd	r24, Z+1	; 0x01
     c38:	f1 e0       	ldi	r31, 0x01	; 1
     c3a:	8f 1a       	sub	r8, r31
     c3c:	91 08       	sbc	r9, r1
     c3e:	2f 85       	ldd	r18, Y+15	; 0x0f
     c40:	38 89       	ldd	r19, Y+16	; 0x10
     c42:	2f 5f       	subi	r18, 0xFF	; 255
     c44:	3f 4f       	sbci	r19, 0xFF	; 255
     c46:	38 8b       	std	Y+16, r19	; 0x10
     c48:	2f 87       	std	Y+15, r18	; 0x0f
     c4a:	80 16       	cp	r8, r16
     c4c:	91 06       	cpc	r9, r17
     c4e:	0c f4       	brge	.+2      	; 0xc52 <vfprintf+0x30a>
     c50:	43 c0       	rjmp	.+134    	; 0xcd8 <vfprintf+0x390>
     c52:	b7 01       	movw	r22, r14
     c54:	90 e0       	ldi	r25, 0x00	; 0
     c56:	0e 94 67 09 	call	0x12ce	; 0x12ce <fputc>
     c5a:	d8 cf       	rjmp	.-80     	; 0xc0c <vfprintf+0x2c4>
     c5c:	16 fd       	sbrc	r17, 6
     c5e:	93 cf       	rjmp	.-218    	; 0xb86 <vfprintf+0x23e>
     c60:	e5 2d       	mov	r30, r5
     c62:	f0 e0       	ldi	r31, 0x00	; 0
     c64:	ec 15       	cp	r30, r12
     c66:	fd 05       	cpc	r31, r13
     c68:	34 f0       	brlt	.+12     	; 0xc76 <vfprintf+0x32e>
     c6a:	3c ef       	ldi	r19, 0xFC	; 252
     c6c:	c3 16       	cp	r12, r19
     c6e:	3f ef       	ldi	r19, 0xFF	; 255
     c70:	d3 06       	cpc	r13, r19
     c72:	0c f0       	brlt	.+2      	; 0xc76 <vfprintf+0x32e>
     c74:	10 68       	ori	r17, 0x80	; 128
     c76:	32 96       	adiw	r30, 0x02	; 2
     c78:	ea 0d       	add	r30, r10
     c7a:	fb 1d       	adc	r31, r11
     c7c:	55 20       	and	r5, r5
     c7e:	19 f0       	breq	.+6      	; 0xc86 <vfprintf+0x33e>
     c80:	82 91       	ld	r24, -Z
     c82:	80 33       	cpi	r24, 0x30	; 48
     c84:	61 f0       	breq	.+24     	; 0xc9e <vfprintf+0x356>
     c86:	17 ff       	sbrs	r17, 7
     c88:	7e cf       	rjmp	.-260    	; 0xb86 <vfprintf+0x23e>
     c8a:	81 e0       	ldi	r24, 0x01	; 1
     c8c:	85 0d       	add	r24, r5
     c8e:	8c 87       	std	Y+12, r24	; 0x0c
     c90:	85 2d       	mov	r24, r5
     c92:	90 e0       	ldi	r25, 0x00	; 0
     c94:	c8 16       	cp	r12, r24
     c96:	d9 06       	cpc	r13, r25
     c98:	3c f4       	brge	.+14     	; 0xca8 <vfprintf+0x360>
     c9a:	5c 18       	sub	r5, r12
     c9c:	74 cf       	rjmp	.-280    	; 0xb86 <vfprintf+0x23e>
     c9e:	5a 94       	dec	r5
     ca0:	ed cf       	rjmp	.-38     	; 0xc7c <vfprintf+0x334>
     ca2:	91 e0       	ldi	r25, 0x01	; 1
     ca4:	9c 87       	std	Y+12, r25	; 0x0c
     ca6:	6f cf       	rjmp	.-290    	; 0xb86 <vfprintf+0x23e>
     ca8:	51 2c       	mov	r5, r1
     caa:	6d cf       	rjmp	.-294    	; 0xb86 <vfprintf+0x23e>
     cac:	85 e0       	ldi	r24, 0x05	; 5
     cae:	90 e0       	ldi	r25, 0x00	; 0
     cb0:	72 cf       	rjmp	.-284    	; 0xb96 <vfprintf+0x24e>
     cb2:	81 e0       	ldi	r24, 0x01	; 1
     cb4:	90 e0       	ldi	r25, 0x00	; 0
     cb6:	6f cf       	rjmp	.-290    	; 0xb96 <vfprintf+0x24e>
     cb8:	b7 01       	movw	r22, r14
     cba:	80 e2       	ldi	r24, 0x20	; 32
     cbc:	90 e0       	ldi	r25, 0x00	; 0
     cbe:	0e 94 67 09 	call	0x12ce	; 0x12ce <fputc>
     cc2:	4a 94       	dec	r4
     cc4:	7c cf       	rjmp	.-264    	; 0xbbe <vfprintf+0x276>
     cc6:	b7 01       	movw	r22, r14
     cc8:	80 e3       	ldi	r24, 0x30	; 48
     cca:	90 e0       	ldi	r25, 0x00	; 0
     ccc:	0e 94 67 09 	call	0x12ce	; 0x12ce <fputc>
     cd0:	4a 94       	dec	r4
     cd2:	80 cf       	rjmp	.-256    	; 0xbd4 <vfprintf+0x28c>
     cd4:	80 e3       	ldi	r24, 0x30	; 48
     cd6:	b0 cf       	rjmp	.-160    	; 0xc38 <vfprintf+0x2f0>
     cd8:	c8 14       	cp	r12, r8
     cda:	d9 04       	cpc	r13, r9
     cdc:	41 f4       	brne	.+16     	; 0xcee <vfprintf+0x3a6>
     cde:	9a 81       	ldd	r25, Y+2	; 0x02
     ce0:	96 33       	cpi	r25, 0x36	; 54
     ce2:	50 f4       	brcc	.+20     	; 0xcf8 <vfprintf+0x3b0>
     ce4:	95 33       	cpi	r25, 0x35	; 53
     ce6:	19 f4       	brne	.+6      	; 0xcee <vfprintf+0x3a6>
     ce8:	3e 85       	ldd	r19, Y+14	; 0x0e
     cea:	34 ff       	sbrs	r19, 4
     cec:	05 c0       	rjmp	.+10     	; 0xcf8 <vfprintf+0x3b0>
     cee:	b7 01       	movw	r22, r14
     cf0:	90 e0       	ldi	r25, 0x00	; 0
     cf2:	0e 94 67 09 	call	0x12ce	; 0x12ce <fputc>
     cf6:	19 cf       	rjmp	.-462    	; 0xb2a <vfprintf+0x1e2>
     cf8:	81 e3       	ldi	r24, 0x31	; 49
     cfa:	f9 cf       	rjmp	.-14     	; 0xcee <vfprintf+0x3a6>
     cfc:	8a 81       	ldd	r24, Y+2	; 0x02
     cfe:	81 33       	cpi	r24, 0x31	; 49
     d00:	19 f0       	breq	.+6      	; 0xd08 <vfprintf+0x3c0>
     d02:	9e 85       	ldd	r25, Y+14	; 0x0e
     d04:	9f 7e       	andi	r25, 0xEF	; 239
     d06:	9e 87       	std	Y+14, r25	; 0x0e
     d08:	b7 01       	movw	r22, r14
     d0a:	90 e0       	ldi	r25, 0x00	; 0
     d0c:	0e 94 67 09 	call	0x12ce	; 0x12ce <fputc>
     d10:	51 10       	cpse	r5, r1
     d12:	24 c0       	rjmp	.+72     	; 0xd5c <vfprintf+0x414>
     d14:	14 fd       	sbrc	r17, 4
     d16:	38 c0       	rjmp	.+112    	; 0xd88 <vfprintf+0x440>
     d18:	85 e6       	ldi	r24, 0x65	; 101
     d1a:	90 e0       	ldi	r25, 0x00	; 0
     d1c:	b7 01       	movw	r22, r14
     d1e:	0e 94 67 09 	call	0x12ce	; 0x12ce <fputc>
     d22:	d7 fc       	sbrc	r13, 7
     d24:	06 c0       	rjmp	.+12     	; 0xd32 <vfprintf+0x3ea>
     d26:	c1 14       	cp	r12, r1
     d28:	d1 04       	cpc	r13, r1
     d2a:	89 f5       	brne	.+98     	; 0xd8e <vfprintf+0x446>
     d2c:	ee 85       	ldd	r30, Y+14	; 0x0e
     d2e:	e4 ff       	sbrs	r30, 4
     d30:	2e c0       	rjmp	.+92     	; 0xd8e <vfprintf+0x446>
     d32:	d1 94       	neg	r13
     d34:	c1 94       	neg	r12
     d36:	d1 08       	sbc	r13, r1
     d38:	8d e2       	ldi	r24, 0x2D	; 45
     d3a:	b7 01       	movw	r22, r14
     d3c:	90 e0       	ldi	r25, 0x00	; 0
     d3e:	0e 94 67 09 	call	0x12ce	; 0x12ce <fputc>
     d42:	80 e3       	ldi	r24, 0x30	; 48
     d44:	2a e0       	ldi	r18, 0x0A	; 10
     d46:	c2 16       	cp	r12, r18
     d48:	d1 04       	cpc	r13, r1
     d4a:	1c f5       	brge	.+70     	; 0xd92 <vfprintf+0x44a>
     d4c:	b7 01       	movw	r22, r14
     d4e:	90 e0       	ldi	r25, 0x00	; 0
     d50:	0e 94 67 09 	call	0x12ce	; 0x12ce <fputc>
     d54:	b7 01       	movw	r22, r14
     d56:	c6 01       	movw	r24, r12
     d58:	c0 96       	adiw	r24, 0x30	; 48
     d5a:	cb cf       	rjmp	.-106    	; 0xcf2 <vfprintf+0x3aa>
     d5c:	b7 01       	movw	r22, r14
     d5e:	8e e2       	ldi	r24, 0x2E	; 46
     d60:	90 e0       	ldi	r25, 0x00	; 0
     d62:	0e 94 67 09 	call	0x12ce	; 0x12ce <fputc>
     d66:	53 94       	inc	r5
     d68:	53 94       	inc	r5
     d6a:	82 e0       	ldi	r24, 0x02	; 2
     d6c:	01 e0       	ldi	r16, 0x01	; 1
     d6e:	08 0f       	add	r16, r24
     d70:	f5 01       	movw	r30, r10
     d72:	e8 0f       	add	r30, r24
     d74:	f1 1d       	adc	r31, r1
     d76:	80 81       	ld	r24, Z
     d78:	b7 01       	movw	r22, r14
     d7a:	90 e0       	ldi	r25, 0x00	; 0
     d7c:	0e 94 67 09 	call	0x12ce	; 0x12ce <fputc>
     d80:	80 2f       	mov	r24, r16
     d82:	50 12       	cpse	r5, r16
     d84:	f3 cf       	rjmp	.-26     	; 0xd6c <vfprintf+0x424>
     d86:	c6 cf       	rjmp	.-116    	; 0xd14 <vfprintf+0x3cc>
     d88:	85 e4       	ldi	r24, 0x45	; 69
     d8a:	90 e0       	ldi	r25, 0x00	; 0
     d8c:	c7 cf       	rjmp	.-114    	; 0xd1c <vfprintf+0x3d4>
     d8e:	8b e2       	ldi	r24, 0x2B	; 43
     d90:	d4 cf       	rjmp	.-88     	; 0xd3a <vfprintf+0x3f2>
     d92:	8f 5f       	subi	r24, 0xFF	; 255
     d94:	fa e0       	ldi	r31, 0x0A	; 10
     d96:	cf 1a       	sub	r12, r31
     d98:	d1 08       	sbc	r13, r1
     d9a:	d4 cf       	rjmp	.-88     	; 0xd44 <vfprintf+0x3fc>
     d9c:	83 36       	cpi	r24, 0x63	; 99
     d9e:	c1 f0       	breq	.+48     	; 0xdd0 <vfprintf+0x488>
     da0:	83 37       	cpi	r24, 0x73	; 115
     da2:	09 f4       	brne	.+2      	; 0xda6 <vfprintf+0x45e>
     da4:	43 c0       	rjmp	.+134    	; 0xe2c <vfprintf+0x4e4>
     da6:	83 35       	cpi	r24, 0x53	; 83
     da8:	09 f0       	breq	.+2      	; 0xdac <vfprintf+0x464>
     daa:	5e c0       	rjmp	.+188    	; 0xe68 <vfprintf+0x520>
     dac:	36 01       	movw	r6, r12
     dae:	f2 e0       	ldi	r31, 0x02	; 2
     db0:	6f 0e       	add	r6, r31
     db2:	71 1c       	adc	r7, r1
     db4:	f6 01       	movw	r30, r12
     db6:	c0 80       	ld	r12, Z
     db8:	d1 80       	ldd	r13, Z+1	; 0x01
     dba:	06 ff       	sbrs	r16, 6
     dbc:	4b c0       	rjmp	.+150    	; 0xe54 <vfprintf+0x50c>
     dbe:	65 2d       	mov	r22, r5
     dc0:	70 e0       	ldi	r23, 0x00	; 0
     dc2:	c6 01       	movw	r24, r12
     dc4:	0e 94 51 09 	call	0x12a2	; 0x12a2 <strnlen_P>
     dc8:	9d 87       	std	Y+13, r25	; 0x0d
     dca:	8c 87       	std	Y+12, r24	; 0x0c
     dcc:	00 68       	ori	r16, 0x80	; 128
     dce:	0d c0       	rjmp	.+26     	; 0xdea <vfprintf+0x4a2>
     dd0:	36 01       	movw	r6, r12
     dd2:	32 e0       	ldi	r19, 0x02	; 2
     dd4:	63 0e       	add	r6, r19
     dd6:	71 1c       	adc	r7, r1
     dd8:	f6 01       	movw	r30, r12
     dda:	80 81       	ld	r24, Z
     ddc:	89 83       	std	Y+1, r24	; 0x01
     dde:	21 e0       	ldi	r18, 0x01	; 1
     de0:	30 e0       	ldi	r19, 0x00	; 0
     de2:	3d 87       	std	Y+13, r19	; 0x0d
     de4:	2c 87       	std	Y+12, r18	; 0x0c
     de6:	65 01       	movw	r12, r10
     de8:	0f 77       	andi	r16, 0x7F	; 127
     dea:	03 fd       	sbrc	r16, 3
     dec:	07 c0       	rjmp	.+14     	; 0xdfc <vfprintf+0x4b4>
     dee:	89 2d       	mov	r24, r9
     df0:	90 e0       	ldi	r25, 0x00	; 0
     df2:	2c 85       	ldd	r18, Y+12	; 0x0c
     df4:	3d 85       	ldd	r19, Y+13	; 0x0d
     df6:	28 17       	cp	r18, r24
     df8:	39 07       	cpc	r19, r25
     dfa:	78 f1       	brcs	.+94     	; 0xe5a <vfprintf+0x512>
     dfc:	49 2c       	mov	r4, r9
     dfe:	ec 85       	ldd	r30, Y+12	; 0x0c
     e00:	fd 85       	ldd	r31, Y+13	; 0x0d
     e02:	ef 2b       	or	r30, r31
     e04:	09 f4       	brne	.+2      	; 0xe08 <vfprintf+0x4c0>
     e06:	91 ce       	rjmp	.-734    	; 0xb2a <vfprintf+0x1e2>
     e08:	f6 01       	movw	r30, r12
     e0a:	07 fd       	sbrc	r16, 7
     e0c:	85 91       	lpm	r24, Z+
     e0e:	07 ff       	sbrs	r16, 7
     e10:	81 91       	ld	r24, Z+
     e12:	6f 01       	movw	r12, r30
     e14:	b7 01       	movw	r22, r14
     e16:	90 e0       	ldi	r25, 0x00	; 0
     e18:	0e 94 67 09 	call	0x12ce	; 0x12ce <fputc>
     e1c:	41 10       	cpse	r4, r1
     e1e:	4a 94       	dec	r4
     e20:	8c 85       	ldd	r24, Y+12	; 0x0c
     e22:	9d 85       	ldd	r25, Y+13	; 0x0d
     e24:	01 97       	sbiw	r24, 0x01	; 1
     e26:	9d 87       	std	Y+13, r25	; 0x0d
     e28:	8c 87       	std	Y+12, r24	; 0x0c
     e2a:	e9 cf       	rjmp	.-46     	; 0xdfe <vfprintf+0x4b6>
     e2c:	36 01       	movw	r6, r12
     e2e:	32 e0       	ldi	r19, 0x02	; 2
     e30:	63 0e       	add	r6, r19
     e32:	71 1c       	adc	r7, r1
     e34:	f6 01       	movw	r30, r12
     e36:	c0 80       	ld	r12, Z
     e38:	d1 80       	ldd	r13, Z+1	; 0x01
     e3a:	06 ff       	sbrs	r16, 6
     e3c:	08 c0       	rjmp	.+16     	; 0xe4e <vfprintf+0x506>
     e3e:	65 2d       	mov	r22, r5
     e40:	70 e0       	ldi	r23, 0x00	; 0
     e42:	c6 01       	movw	r24, r12
     e44:	0e 94 5c 09 	call	0x12b8	; 0x12b8 <strnlen>
     e48:	9d 87       	std	Y+13, r25	; 0x0d
     e4a:	8c 87       	std	Y+12, r24	; 0x0c
     e4c:	cd cf       	rjmp	.-102    	; 0xde8 <vfprintf+0x4a0>
     e4e:	6f ef       	ldi	r22, 0xFF	; 255
     e50:	7f ef       	ldi	r23, 0xFF	; 255
     e52:	f7 cf       	rjmp	.-18     	; 0xe42 <vfprintf+0x4fa>
     e54:	6f ef       	ldi	r22, 0xFF	; 255
     e56:	7f ef       	ldi	r23, 0xFF	; 255
     e58:	b4 cf       	rjmp	.-152    	; 0xdc2 <vfprintf+0x47a>
     e5a:	b7 01       	movw	r22, r14
     e5c:	80 e2       	ldi	r24, 0x20	; 32
     e5e:	90 e0       	ldi	r25, 0x00	; 0
     e60:	0e 94 67 09 	call	0x12ce	; 0x12ce <fputc>
     e64:	9a 94       	dec	r9
     e66:	c3 cf       	rjmp	.-122    	; 0xdee <vfprintf+0x4a6>
     e68:	84 36       	cpi	r24, 0x64	; 100
     e6a:	11 f0       	breq	.+4      	; 0xe70 <vfprintf+0x528>
     e6c:	89 36       	cpi	r24, 0x69	; 105
     e6e:	c1 f5       	brne	.+112    	; 0xee0 <vfprintf+0x598>
     e70:	36 01       	movw	r6, r12
     e72:	07 ff       	sbrs	r16, 7
     e74:	2a c0       	rjmp	.+84     	; 0xeca <vfprintf+0x582>
     e76:	f4 e0       	ldi	r31, 0x04	; 4
     e78:	6f 0e       	add	r6, r31
     e7a:	71 1c       	adc	r7, r1
     e7c:	f6 01       	movw	r30, r12
     e7e:	60 81       	ld	r22, Z
     e80:	71 81       	ldd	r23, Z+1	; 0x01
     e82:	82 81       	ldd	r24, Z+2	; 0x02
     e84:	93 81       	ldd	r25, Z+3	; 0x03
     e86:	10 2f       	mov	r17, r16
     e88:	1f 76       	andi	r17, 0x6F	; 111
     e8a:	97 ff       	sbrs	r25, 7
     e8c:	08 c0       	rjmp	.+16     	; 0xe9e <vfprintf+0x556>
     e8e:	90 95       	com	r25
     e90:	80 95       	com	r24
     e92:	70 95       	com	r23
     e94:	61 95       	neg	r22
     e96:	7f 4f       	sbci	r23, 0xFF	; 255
     e98:	8f 4f       	sbci	r24, 0xFF	; 255
     e9a:	9f 4f       	sbci	r25, 0xFF	; 255
     e9c:	10 68       	ori	r17, 0x80	; 128
     e9e:	2a e0       	ldi	r18, 0x0A	; 10
     ea0:	30 e0       	ldi	r19, 0x00	; 0
     ea2:	a5 01       	movw	r20, r10
     ea4:	0e 94 c7 09 	call	0x138e	; 0x138e <__ultoa_invert>
     ea8:	c8 2e       	mov	r12, r24
     eaa:	ca 18       	sub	r12, r10
     eac:	16 ff       	sbrs	r17, 6
     eae:	59 c0       	rjmp	.+178    	; 0xf62 <vfprintf+0x61a>
     eb0:	01 2f       	mov	r16, r17
     eb2:	0e 7f       	andi	r16, 0xFE	; 254
     eb4:	c5 14       	cp	r12, r5
     eb6:	08 f0       	brcs	.+2      	; 0xeba <vfprintf+0x572>
     eb8:	90 c0       	rjmp	.+288    	; 0xfda <vfprintf+0x692>
     eba:	14 ff       	sbrs	r17, 4
     ebc:	04 c0       	rjmp	.+8      	; 0xec6 <vfprintf+0x57e>
     ebe:	12 fd       	sbrc	r17, 2
     ec0:	02 c0       	rjmp	.+4      	; 0xec6 <vfprintf+0x57e>
     ec2:	01 2f       	mov	r16, r17
     ec4:	0e 7e       	andi	r16, 0xEE	; 238
     ec6:	d5 2c       	mov	r13, r5
     ec8:	4e c0       	rjmp	.+156    	; 0xf66 <vfprintf+0x61e>
     eca:	f2 e0       	ldi	r31, 0x02	; 2
     ecc:	6f 0e       	add	r6, r31
     ece:	71 1c       	adc	r7, r1
     ed0:	f6 01       	movw	r30, r12
     ed2:	60 81       	ld	r22, Z
     ed4:	71 81       	ldd	r23, Z+1	; 0x01
     ed6:	07 2e       	mov	r0, r23
     ed8:	00 0c       	add	r0, r0
     eda:	88 0b       	sbc	r24, r24
     edc:	99 0b       	sbc	r25, r25
     ede:	d3 cf       	rjmp	.-90     	; 0xe86 <vfprintf+0x53e>
     ee0:	10 2f       	mov	r17, r16
     ee2:	85 37       	cpi	r24, 0x75	; 117
     ee4:	a9 f4       	brne	.+42     	; 0xf10 <vfprintf+0x5c8>
     ee6:	1f 7e       	andi	r17, 0xEF	; 239
     ee8:	2a e0       	ldi	r18, 0x0A	; 10
     eea:	30 e0       	ldi	r19, 0x00	; 0
     eec:	36 01       	movw	r6, r12
     eee:	17 ff       	sbrs	r17, 7
     ef0:	2f c0       	rjmp	.+94     	; 0xf50 <vfprintf+0x608>
     ef2:	f4 e0       	ldi	r31, 0x04	; 4
     ef4:	6f 0e       	add	r6, r31
     ef6:	71 1c       	adc	r7, r1
     ef8:	f6 01       	movw	r30, r12
     efa:	60 81       	ld	r22, Z
     efc:	71 81       	ldd	r23, Z+1	; 0x01
     efe:	82 81       	ldd	r24, Z+2	; 0x02
     f00:	93 81       	ldd	r25, Z+3	; 0x03
     f02:	a5 01       	movw	r20, r10
     f04:	0e 94 c7 09 	call	0x138e	; 0x138e <__ultoa_invert>
     f08:	c8 2e       	mov	r12, r24
     f0a:	ca 18       	sub	r12, r10
     f0c:	1f 77       	andi	r17, 0x7F	; 127
     f0e:	ce cf       	rjmp	.-100    	; 0xeac <vfprintf+0x564>
     f10:	19 7f       	andi	r17, 0xF9	; 249
     f12:	8f 36       	cpi	r24, 0x6F	; 111
     f14:	d1 f0       	breq	.+52     	; 0xf4a <vfprintf+0x602>
     f16:	48 f4       	brcc	.+18     	; 0xf2a <vfprintf+0x5e2>
     f18:	88 35       	cpi	r24, 0x58	; 88
     f1a:	91 f0       	breq	.+36     	; 0xf40 <vfprintf+0x5f8>
     f1c:	f7 01       	movw	r30, r14
     f1e:	86 81       	ldd	r24, Z+6	; 0x06
     f20:	97 81       	ldd	r25, Z+7	; 0x07
     f22:	60 96       	adiw	r28, 0x10	; 16
     f24:	e2 e1       	ldi	r30, 0x12	; 18
     f26:	0c 94 58 08 	jmp	0x10b0	; 0x10b0 <__epilogue_restores__>
     f2a:	80 37       	cpi	r24, 0x70	; 112
     f2c:	39 f0       	breq	.+14     	; 0xf3c <vfprintf+0x5f4>
     f2e:	88 37       	cpi	r24, 0x78	; 120
     f30:	a9 f7       	brne	.-22     	; 0xf1c <vfprintf+0x5d4>
     f32:	14 fd       	sbrc	r17, 4
     f34:	14 60       	ori	r17, 0x04	; 4
     f36:	20 e1       	ldi	r18, 0x10	; 16
     f38:	30 e0       	ldi	r19, 0x00	; 0
     f3a:	d8 cf       	rjmp	.-80     	; 0xeec <vfprintf+0x5a4>
     f3c:	10 61       	ori	r17, 0x10	; 16
     f3e:	f9 cf       	rjmp	.-14     	; 0xf32 <vfprintf+0x5ea>
     f40:	04 fd       	sbrc	r16, 4
     f42:	16 60       	ori	r17, 0x06	; 6
     f44:	20 e1       	ldi	r18, 0x10	; 16
     f46:	32 e0       	ldi	r19, 0x02	; 2
     f48:	d1 cf       	rjmp	.-94     	; 0xeec <vfprintf+0x5a4>
     f4a:	28 e0       	ldi	r18, 0x08	; 8
     f4c:	30 e0       	ldi	r19, 0x00	; 0
     f4e:	ce cf       	rjmp	.-100    	; 0xeec <vfprintf+0x5a4>
     f50:	f2 e0       	ldi	r31, 0x02	; 2
     f52:	6f 0e       	add	r6, r31
     f54:	71 1c       	adc	r7, r1
     f56:	f6 01       	movw	r30, r12
     f58:	60 81       	ld	r22, Z
     f5a:	71 81       	ldd	r23, Z+1	; 0x01
     f5c:	80 e0       	ldi	r24, 0x00	; 0
     f5e:	90 e0       	ldi	r25, 0x00	; 0
     f60:	d0 cf       	rjmp	.-96     	; 0xf02 <vfprintf+0x5ba>
     f62:	dc 2c       	mov	r13, r12
     f64:	01 2f       	mov	r16, r17
     f66:	04 ff       	sbrs	r16, 4
     f68:	41 c0       	rjmp	.+130    	; 0xfec <vfprintf+0x6a4>
     f6a:	fe 01       	movw	r30, r28
     f6c:	ec 0d       	add	r30, r12
     f6e:	f1 1d       	adc	r31, r1
     f70:	80 81       	ld	r24, Z
     f72:	80 33       	cpi	r24, 0x30	; 48
     f74:	a1 f5       	brne	.+104    	; 0xfde <vfprintf+0x696>
     f76:	09 7e       	andi	r16, 0xE9	; 233
     f78:	f0 2f       	mov	r31, r16
     f7a:	f8 70       	andi	r31, 0x08	; 8
     f7c:	4f 2e       	mov	r4, r31
     f7e:	03 fd       	sbrc	r16, 3
     f80:	43 c0       	rjmp	.+134    	; 0x1008 <vfprintf+0x6c0>
     f82:	00 ff       	sbrs	r16, 0
     f84:	3d c0       	rjmp	.+122    	; 0x1000 <vfprintf+0x6b8>
     f86:	5c 2c       	mov	r5, r12
     f88:	d9 14       	cp	r13, r9
     f8a:	10 f4       	brcc	.+4      	; 0xf90 <vfprintf+0x648>
     f8c:	59 0c       	add	r5, r9
     f8e:	5d 18       	sub	r5, r13
     f90:	04 ff       	sbrs	r16, 4
     f92:	42 c0       	rjmp	.+132    	; 0x1018 <vfprintf+0x6d0>
     f94:	b7 01       	movw	r22, r14
     f96:	80 e3       	ldi	r24, 0x30	; 48
     f98:	90 e0       	ldi	r25, 0x00	; 0
     f9a:	0e 94 67 09 	call	0x12ce	; 0x12ce <fputc>
     f9e:	02 ff       	sbrs	r16, 2
     fa0:	07 c0       	rjmp	.+14     	; 0xfb0 <vfprintf+0x668>
     fa2:	01 fd       	sbrc	r16, 1
     fa4:	36 c0       	rjmp	.+108    	; 0x1012 <vfprintf+0x6ca>
     fa6:	88 e7       	ldi	r24, 0x78	; 120
     fa8:	90 e0       	ldi	r25, 0x00	; 0
     faa:	b7 01       	movw	r22, r14
     fac:	0e 94 67 09 	call	0x12ce	; 0x12ce <fputc>
     fb0:	c5 14       	cp	r12, r5
     fb2:	08 f4       	brcc	.+2      	; 0xfb6 <vfprintf+0x66e>
     fb4:	3e c0       	rjmp	.+124    	; 0x1032 <vfprintf+0x6ea>
     fb6:	ca 94       	dec	r12
     fb8:	0c 2d       	mov	r16, r12
     fba:	10 e0       	ldi	r17, 0x00	; 0
     fbc:	0f 5f       	subi	r16, 0xFF	; 255
     fbe:	1f 4f       	sbci	r17, 0xFF	; 255
     fc0:	0a 0d       	add	r16, r10
     fc2:	1b 1d       	adc	r17, r11
     fc4:	f8 01       	movw	r30, r16
     fc6:	82 91       	ld	r24, -Z
     fc8:	8f 01       	movw	r16, r30
     fca:	b7 01       	movw	r22, r14
     fcc:	90 e0       	ldi	r25, 0x00	; 0
     fce:	0e 94 67 09 	call	0x12ce	; 0x12ce <fputc>
     fd2:	0a 15       	cp	r16, r10
     fd4:	1b 05       	cpc	r17, r11
     fd6:	b1 f7       	brne	.-20     	; 0xfc4 <vfprintf+0x67c>
     fd8:	a8 cd       	rjmp	.-1200   	; 0xb2a <vfprintf+0x1e2>
     fda:	dc 2c       	mov	r13, r12
     fdc:	c4 cf       	rjmp	.-120    	; 0xf66 <vfprintf+0x61e>
     fde:	02 fd       	sbrc	r16, 2
     fe0:	02 c0       	rjmp	.+4      	; 0xfe6 <vfprintf+0x69e>
     fe2:	d3 94       	inc	r13
     fe4:	c9 cf       	rjmp	.-110    	; 0xf78 <vfprintf+0x630>
     fe6:	d3 94       	inc	r13
     fe8:	d3 94       	inc	r13
     fea:	c6 cf       	rjmp	.-116    	; 0xf78 <vfprintf+0x630>
     fec:	80 2f       	mov	r24, r16
     fee:	86 78       	andi	r24, 0x86	; 134
     ff0:	19 f2       	breq	.-122    	; 0xf78 <vfprintf+0x630>
     ff2:	f7 cf       	rjmp	.-18     	; 0xfe2 <vfprintf+0x69a>
     ff4:	b7 01       	movw	r22, r14
     ff6:	80 e2       	ldi	r24, 0x20	; 32
     ff8:	90 e0       	ldi	r25, 0x00	; 0
     ffa:	0e 94 67 09 	call	0x12ce	; 0x12ce <fputc>
     ffe:	d3 94       	inc	r13
    1000:	d9 14       	cp	r13, r9
    1002:	c0 f3       	brcs	.-16     	; 0xff4 <vfprintf+0x6ac>
    1004:	41 2c       	mov	r4, r1
    1006:	c4 cf       	rjmp	.-120    	; 0xf90 <vfprintf+0x648>
    1008:	d9 14       	cp	r13, r9
    100a:	e0 f7       	brcc	.-8      	; 0x1004 <vfprintf+0x6bc>
    100c:	49 2c       	mov	r4, r9
    100e:	4d 18       	sub	r4, r13
    1010:	bf cf       	rjmp	.-130    	; 0xf90 <vfprintf+0x648>
    1012:	88 e5       	ldi	r24, 0x58	; 88
    1014:	90 e0       	ldi	r25, 0x00	; 0
    1016:	c9 cf       	rjmp	.-110    	; 0xfaa <vfprintf+0x662>
    1018:	80 2f       	mov	r24, r16
    101a:	86 78       	andi	r24, 0x86	; 134
    101c:	49 f2       	breq	.-110    	; 0xfb0 <vfprintf+0x668>
    101e:	01 ff       	sbrs	r16, 1
    1020:	06 c0       	rjmp	.+12     	; 0x102e <vfprintf+0x6e6>
    1022:	8b e2       	ldi	r24, 0x2B	; 43
    1024:	07 fd       	sbrc	r16, 7
    1026:	8d e2       	ldi	r24, 0x2D	; 45
    1028:	b7 01       	movw	r22, r14
    102a:	90 e0       	ldi	r25, 0x00	; 0
    102c:	bf cf       	rjmp	.-130    	; 0xfac <vfprintf+0x664>
    102e:	80 e2       	ldi	r24, 0x20	; 32
    1030:	f9 cf       	rjmp	.-14     	; 0x1024 <vfprintf+0x6dc>
    1032:	b7 01       	movw	r22, r14
    1034:	80 e3       	ldi	r24, 0x30	; 48
    1036:	90 e0       	ldi	r25, 0x00	; 0
    1038:	0e 94 67 09 	call	0x12ce	; 0x12ce <fputc>
    103c:	5a 94       	dec	r5
    103e:	b8 cf       	rjmp	.-144    	; 0xfb0 <vfprintf+0x668>
    1040:	8f ef       	ldi	r24, 0xFF	; 255
    1042:	9f ef       	ldi	r25, 0xFF	; 255
    1044:	6e cf       	rjmp	.-292    	; 0xf22 <vfprintf+0x5da>
    1046:	24 e0       	ldi	r18, 0x04	; 4
    1048:	29 15       	cp	r18, r9
    104a:	08 f4       	brcc	.+2      	; 0x104e <vfprintf+0x706>
    104c:	78 cd       	rjmp	.-1296   	; 0xb3e <vfprintf+0x1f6>
    104e:	41 2c       	mov	r4, r1
    1050:	5b cd       	rjmp	.-1354   	; 0xb08 <vfprintf+0x1c0>

00001052 <startTimers>:
    1052:	83 e0       	ldi	r24, 0x03	; 3
    1054:	84 bd       	out	0x24, r24	; 36
    1056:	85 bd       	out	0x25, r24	; 37
    1058:	91 e0       	ldi	r25, 0x01	; 1
    105a:	90 93 80 00 	sts	0x0080, r25	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
    105e:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
    1062:	90 93 b0 00 	sts	0x00B0, r25	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
    1066:	84 e0       	ldi	r24, 0x04	; 4
    1068:	80 93 b1 00 	sts	0x00B1, r24	; 0x8000b1 <__TEXT_REGION_LENGTH__+0x7e00b1>
    106c:	ee e6       	ldi	r30, 0x6E	; 110
    106e:	f0 e0       	ldi	r31, 0x00	; 0
    1070:	80 81       	ld	r24, Z
    1072:	81 60       	ori	r24, 0x01	; 1
    1074:	80 83       	st	Z, r24
    1076:	08 95       	ret

00001078 <__prologue_saves__>:
    1078:	2f 92       	push	r2
    107a:	3f 92       	push	r3
    107c:	4f 92       	push	r4
    107e:	5f 92       	push	r5
    1080:	6f 92       	push	r6
    1082:	7f 92       	push	r7
    1084:	8f 92       	push	r8
    1086:	9f 92       	push	r9
    1088:	af 92       	push	r10
    108a:	bf 92       	push	r11
    108c:	cf 92       	push	r12
    108e:	df 92       	push	r13
    1090:	ef 92       	push	r14
    1092:	ff 92       	push	r15
    1094:	0f 93       	push	r16
    1096:	1f 93       	push	r17
    1098:	cf 93       	push	r28
    109a:	df 93       	push	r29
    109c:	cd b7       	in	r28, 0x3d	; 61
    109e:	de b7       	in	r29, 0x3e	; 62
    10a0:	ca 1b       	sub	r28, r26
    10a2:	db 0b       	sbc	r29, r27
    10a4:	0f b6       	in	r0, 0x3f	; 63
    10a6:	f8 94       	cli
    10a8:	de bf       	out	0x3e, r29	; 62
    10aa:	0f be       	out	0x3f, r0	; 63
    10ac:	cd bf       	out	0x3d, r28	; 61
    10ae:	09 94       	ijmp

000010b0 <__epilogue_restores__>:
    10b0:	2a 88       	ldd	r2, Y+18	; 0x12
    10b2:	39 88       	ldd	r3, Y+17	; 0x11
    10b4:	48 88       	ldd	r4, Y+16	; 0x10
    10b6:	5f 84       	ldd	r5, Y+15	; 0x0f
    10b8:	6e 84       	ldd	r6, Y+14	; 0x0e
    10ba:	7d 84       	ldd	r7, Y+13	; 0x0d
    10bc:	8c 84       	ldd	r8, Y+12	; 0x0c
    10be:	9b 84       	ldd	r9, Y+11	; 0x0b
    10c0:	aa 84       	ldd	r10, Y+10	; 0x0a
    10c2:	b9 84       	ldd	r11, Y+9	; 0x09
    10c4:	c8 84       	ldd	r12, Y+8	; 0x08
    10c6:	df 80       	ldd	r13, Y+7	; 0x07
    10c8:	ee 80       	ldd	r14, Y+6	; 0x06
    10ca:	fd 80       	ldd	r15, Y+5	; 0x05
    10cc:	0c 81       	ldd	r16, Y+4	; 0x04
    10ce:	1b 81       	ldd	r17, Y+3	; 0x03
    10d0:	aa 81       	ldd	r26, Y+2	; 0x02
    10d2:	b9 81       	ldd	r27, Y+1	; 0x01
    10d4:	ce 0f       	add	r28, r30
    10d6:	d1 1d       	adc	r29, r1
    10d8:	0f b6       	in	r0, 0x3f	; 63
    10da:	f8 94       	cli
    10dc:	de bf       	out	0x3e, r29	; 62
    10de:	0f be       	out	0x3f, r0	; 63
    10e0:	cd bf       	out	0x3d, r28	; 61
    10e2:	ed 01       	movw	r28, r26
    10e4:	08 95       	ret

000010e6 <__tablejump2__>:
    10e6:	ee 0f       	add	r30, r30
    10e8:	ff 1f       	adc	r31, r31
    10ea:	05 90       	lpm	r0, Z+
    10ec:	f4 91       	lpm	r31, Z
    10ee:	e0 2d       	mov	r30, r0
    10f0:	09 94       	ijmp

000010f2 <__ftoa_engine>:
    10f2:	28 30       	cpi	r18, 0x08	; 8
    10f4:	08 f0       	brcs	.+2      	; 0x10f8 <__ftoa_engine+0x6>
    10f6:	27 e0       	ldi	r18, 0x07	; 7
    10f8:	33 27       	eor	r19, r19
    10fa:	da 01       	movw	r26, r20
    10fc:	99 0f       	add	r25, r25
    10fe:	31 1d       	adc	r19, r1
    1100:	87 fd       	sbrc	r24, 7
    1102:	91 60       	ori	r25, 0x01	; 1
    1104:	00 96       	adiw	r24, 0x00	; 0
    1106:	61 05       	cpc	r22, r1
    1108:	71 05       	cpc	r23, r1
    110a:	39 f4       	brne	.+14     	; 0x111a <__ftoa_engine+0x28>
    110c:	32 60       	ori	r19, 0x02	; 2
    110e:	2e 5f       	subi	r18, 0xFE	; 254
    1110:	3d 93       	st	X+, r19
    1112:	30 e3       	ldi	r19, 0x30	; 48
    1114:	2a 95       	dec	r18
    1116:	e1 f7       	brne	.-8      	; 0x1110 <__ftoa_engine+0x1e>
    1118:	08 95       	ret
    111a:	9f 3f       	cpi	r25, 0xFF	; 255
    111c:	30 f0       	brcs	.+12     	; 0x112a <__ftoa_engine+0x38>
    111e:	80 38       	cpi	r24, 0x80	; 128
    1120:	71 05       	cpc	r23, r1
    1122:	61 05       	cpc	r22, r1
    1124:	09 f0       	breq	.+2      	; 0x1128 <__ftoa_engine+0x36>
    1126:	3c 5f       	subi	r19, 0xFC	; 252
    1128:	3c 5f       	subi	r19, 0xFC	; 252
    112a:	3d 93       	st	X+, r19
    112c:	91 30       	cpi	r25, 0x01	; 1
    112e:	08 f0       	brcs	.+2      	; 0x1132 <__ftoa_engine+0x40>
    1130:	80 68       	ori	r24, 0x80	; 128
    1132:	91 1d       	adc	r25, r1
    1134:	df 93       	push	r29
    1136:	cf 93       	push	r28
    1138:	1f 93       	push	r17
    113a:	0f 93       	push	r16
    113c:	ff 92       	push	r15
    113e:	ef 92       	push	r14
    1140:	19 2f       	mov	r17, r25
    1142:	98 7f       	andi	r25, 0xF8	; 248
    1144:	96 95       	lsr	r25
    1146:	e9 2f       	mov	r30, r25
    1148:	96 95       	lsr	r25
    114a:	96 95       	lsr	r25
    114c:	e9 0f       	add	r30, r25
    114e:	ff 27       	eor	r31, r31
    1150:	e6 53       	subi	r30, 0x36	; 54
    1152:	ff 4f       	sbci	r31, 0xFF	; 255
    1154:	99 27       	eor	r25, r25
    1156:	33 27       	eor	r19, r19
    1158:	ee 24       	eor	r14, r14
    115a:	ff 24       	eor	r15, r15
    115c:	a7 01       	movw	r20, r14
    115e:	e7 01       	movw	r28, r14
    1160:	05 90       	lpm	r0, Z+
    1162:	08 94       	sec
    1164:	07 94       	ror	r0
    1166:	28 f4       	brcc	.+10     	; 0x1172 <__ftoa_engine+0x80>
    1168:	36 0f       	add	r19, r22
    116a:	e7 1e       	adc	r14, r23
    116c:	f8 1e       	adc	r15, r24
    116e:	49 1f       	adc	r20, r25
    1170:	51 1d       	adc	r21, r1
    1172:	66 0f       	add	r22, r22
    1174:	77 1f       	adc	r23, r23
    1176:	88 1f       	adc	r24, r24
    1178:	99 1f       	adc	r25, r25
    117a:	06 94       	lsr	r0
    117c:	a1 f7       	brne	.-24     	; 0x1166 <__ftoa_engine+0x74>
    117e:	05 90       	lpm	r0, Z+
    1180:	07 94       	ror	r0
    1182:	28 f4       	brcc	.+10     	; 0x118e <__ftoa_engine+0x9c>
    1184:	e7 0e       	add	r14, r23
    1186:	f8 1e       	adc	r15, r24
    1188:	49 1f       	adc	r20, r25
    118a:	56 1f       	adc	r21, r22
    118c:	c1 1d       	adc	r28, r1
    118e:	77 0f       	add	r23, r23
    1190:	88 1f       	adc	r24, r24
    1192:	99 1f       	adc	r25, r25
    1194:	66 1f       	adc	r22, r22
    1196:	06 94       	lsr	r0
    1198:	a1 f7       	brne	.-24     	; 0x1182 <__ftoa_engine+0x90>
    119a:	05 90       	lpm	r0, Z+
    119c:	07 94       	ror	r0
    119e:	28 f4       	brcc	.+10     	; 0x11aa <__ftoa_engine+0xb8>
    11a0:	f8 0e       	add	r15, r24
    11a2:	49 1f       	adc	r20, r25
    11a4:	56 1f       	adc	r21, r22
    11a6:	c7 1f       	adc	r28, r23
    11a8:	d1 1d       	adc	r29, r1
    11aa:	88 0f       	add	r24, r24
    11ac:	99 1f       	adc	r25, r25
    11ae:	66 1f       	adc	r22, r22
    11b0:	77 1f       	adc	r23, r23
    11b2:	06 94       	lsr	r0
    11b4:	a1 f7       	brne	.-24     	; 0x119e <__ftoa_engine+0xac>
    11b6:	05 90       	lpm	r0, Z+
    11b8:	07 94       	ror	r0
    11ba:	20 f4       	brcc	.+8      	; 0x11c4 <__ftoa_engine+0xd2>
    11bc:	49 0f       	add	r20, r25
    11be:	56 1f       	adc	r21, r22
    11c0:	c7 1f       	adc	r28, r23
    11c2:	d8 1f       	adc	r29, r24
    11c4:	99 0f       	add	r25, r25
    11c6:	66 1f       	adc	r22, r22
    11c8:	77 1f       	adc	r23, r23
    11ca:	88 1f       	adc	r24, r24
    11cc:	06 94       	lsr	r0
    11ce:	a9 f7       	brne	.-22     	; 0x11ba <__ftoa_engine+0xc8>
    11d0:	84 91       	lpm	r24, Z
    11d2:	10 95       	com	r17
    11d4:	17 70       	andi	r17, 0x07	; 7
    11d6:	41 f0       	breq	.+16     	; 0x11e8 <__ftoa_engine+0xf6>
    11d8:	d6 95       	lsr	r29
    11da:	c7 95       	ror	r28
    11dc:	57 95       	ror	r21
    11de:	47 95       	ror	r20
    11e0:	f7 94       	ror	r15
    11e2:	e7 94       	ror	r14
    11e4:	1a 95       	dec	r17
    11e6:	c1 f7       	brne	.-16     	; 0x11d8 <__ftoa_engine+0xe6>
    11e8:	e0 e7       	ldi	r30, 0x70	; 112
    11ea:	f0 e0       	ldi	r31, 0x00	; 0
    11ec:	68 94       	set
    11ee:	15 90       	lpm	r1, Z+
    11f0:	15 91       	lpm	r17, Z+
    11f2:	35 91       	lpm	r19, Z+
    11f4:	65 91       	lpm	r22, Z+
    11f6:	95 91       	lpm	r25, Z+
    11f8:	05 90       	lpm	r0, Z+
    11fa:	7f e2       	ldi	r23, 0x2F	; 47
    11fc:	73 95       	inc	r23
    11fe:	e1 18       	sub	r14, r1
    1200:	f1 0a       	sbc	r15, r17
    1202:	43 0b       	sbc	r20, r19
    1204:	56 0b       	sbc	r21, r22
    1206:	c9 0b       	sbc	r28, r25
    1208:	d0 09       	sbc	r29, r0
    120a:	c0 f7       	brcc	.-16     	; 0x11fc <__ftoa_engine+0x10a>
    120c:	e1 0c       	add	r14, r1
    120e:	f1 1e       	adc	r15, r17
    1210:	43 1f       	adc	r20, r19
    1212:	56 1f       	adc	r21, r22
    1214:	c9 1f       	adc	r28, r25
    1216:	d0 1d       	adc	r29, r0
    1218:	7e f4       	brtc	.+30     	; 0x1238 <__ftoa_engine+0x146>
    121a:	70 33       	cpi	r23, 0x30	; 48
    121c:	11 f4       	brne	.+4      	; 0x1222 <__ftoa_engine+0x130>
    121e:	8a 95       	dec	r24
    1220:	e6 cf       	rjmp	.-52     	; 0x11ee <__ftoa_engine+0xfc>
    1222:	e8 94       	clt
    1224:	01 50       	subi	r16, 0x01	; 1
    1226:	30 f0       	brcs	.+12     	; 0x1234 <__ftoa_engine+0x142>
    1228:	08 0f       	add	r16, r24
    122a:	0a f4       	brpl	.+2      	; 0x122e <__ftoa_engine+0x13c>
    122c:	00 27       	eor	r16, r16
    122e:	02 17       	cp	r16, r18
    1230:	08 f4       	brcc	.+2      	; 0x1234 <__ftoa_engine+0x142>
    1232:	20 2f       	mov	r18, r16
    1234:	23 95       	inc	r18
    1236:	02 2f       	mov	r16, r18
    1238:	7a 33       	cpi	r23, 0x3A	; 58
    123a:	28 f0       	brcs	.+10     	; 0x1246 <__ftoa_engine+0x154>
    123c:	79 e3       	ldi	r23, 0x39	; 57
    123e:	7d 93       	st	X+, r23
    1240:	2a 95       	dec	r18
    1242:	e9 f7       	brne	.-6      	; 0x123e <__ftoa_engine+0x14c>
    1244:	10 c0       	rjmp	.+32     	; 0x1266 <__ftoa_engine+0x174>
    1246:	7d 93       	st	X+, r23
    1248:	2a 95       	dec	r18
    124a:	89 f6       	brne	.-94     	; 0x11ee <__ftoa_engine+0xfc>
    124c:	06 94       	lsr	r0
    124e:	97 95       	ror	r25
    1250:	67 95       	ror	r22
    1252:	37 95       	ror	r19
    1254:	17 95       	ror	r17
    1256:	17 94       	ror	r1
    1258:	e1 18       	sub	r14, r1
    125a:	f1 0a       	sbc	r15, r17
    125c:	43 0b       	sbc	r20, r19
    125e:	56 0b       	sbc	r21, r22
    1260:	c9 0b       	sbc	r28, r25
    1262:	d0 09       	sbc	r29, r0
    1264:	98 f0       	brcs	.+38     	; 0x128c <__ftoa_engine+0x19a>
    1266:	23 95       	inc	r18
    1268:	7e 91       	ld	r23, -X
    126a:	73 95       	inc	r23
    126c:	7a 33       	cpi	r23, 0x3A	; 58
    126e:	08 f0       	brcs	.+2      	; 0x1272 <__ftoa_engine+0x180>
    1270:	70 e3       	ldi	r23, 0x30	; 48
    1272:	7c 93       	st	X, r23
    1274:	20 13       	cpse	r18, r16
    1276:	b8 f7       	brcc	.-18     	; 0x1266 <__ftoa_engine+0x174>
    1278:	7e 91       	ld	r23, -X
    127a:	70 61       	ori	r23, 0x10	; 16
    127c:	7d 93       	st	X+, r23
    127e:	30 f0       	brcs	.+12     	; 0x128c <__ftoa_engine+0x19a>
    1280:	83 95       	inc	r24
    1282:	71 e3       	ldi	r23, 0x31	; 49
    1284:	7d 93       	st	X+, r23
    1286:	70 e3       	ldi	r23, 0x30	; 48
    1288:	2a 95       	dec	r18
    128a:	e1 f7       	brne	.-8      	; 0x1284 <__ftoa_engine+0x192>
    128c:	11 24       	eor	r1, r1
    128e:	ef 90       	pop	r14
    1290:	ff 90       	pop	r15
    1292:	0f 91       	pop	r16
    1294:	1f 91       	pop	r17
    1296:	cf 91       	pop	r28
    1298:	df 91       	pop	r29
    129a:	99 27       	eor	r25, r25
    129c:	87 fd       	sbrc	r24, 7
    129e:	90 95       	com	r25
    12a0:	08 95       	ret

000012a2 <strnlen_P>:
    12a2:	fc 01       	movw	r30, r24
    12a4:	05 90       	lpm	r0, Z+
    12a6:	61 50       	subi	r22, 0x01	; 1
    12a8:	70 40       	sbci	r23, 0x00	; 0
    12aa:	01 10       	cpse	r0, r1
    12ac:	d8 f7       	brcc	.-10     	; 0x12a4 <strnlen_P+0x2>
    12ae:	80 95       	com	r24
    12b0:	90 95       	com	r25
    12b2:	8e 0f       	add	r24, r30
    12b4:	9f 1f       	adc	r25, r31
    12b6:	08 95       	ret

000012b8 <strnlen>:
    12b8:	fc 01       	movw	r30, r24
    12ba:	61 50       	subi	r22, 0x01	; 1
    12bc:	70 40       	sbci	r23, 0x00	; 0
    12be:	01 90       	ld	r0, Z+
    12c0:	01 10       	cpse	r0, r1
    12c2:	d8 f7       	brcc	.-10     	; 0x12ba <strnlen+0x2>
    12c4:	80 95       	com	r24
    12c6:	90 95       	com	r25
    12c8:	8e 0f       	add	r24, r30
    12ca:	9f 1f       	adc	r25, r31
    12cc:	08 95       	ret

000012ce <fputc>:
    12ce:	0f 93       	push	r16
    12d0:	1f 93       	push	r17
    12d2:	cf 93       	push	r28
    12d4:	df 93       	push	r29
    12d6:	18 2f       	mov	r17, r24
    12d8:	09 2f       	mov	r16, r25
    12da:	eb 01       	movw	r28, r22
    12dc:	8b 81       	ldd	r24, Y+3	; 0x03
    12de:	81 fd       	sbrc	r24, 1
    12e0:	09 c0       	rjmp	.+18     	; 0x12f4 <fputc+0x26>
    12e2:	1f ef       	ldi	r17, 0xFF	; 255
    12e4:	0f ef       	ldi	r16, 0xFF	; 255
    12e6:	81 2f       	mov	r24, r17
    12e8:	90 2f       	mov	r25, r16
    12ea:	df 91       	pop	r29
    12ec:	cf 91       	pop	r28
    12ee:	1f 91       	pop	r17
    12f0:	0f 91       	pop	r16
    12f2:	08 95       	ret
    12f4:	82 ff       	sbrs	r24, 2
    12f6:	14 c0       	rjmp	.+40     	; 0x1320 <fputc+0x52>
    12f8:	2e 81       	ldd	r18, Y+6	; 0x06
    12fa:	3f 81       	ldd	r19, Y+7	; 0x07
    12fc:	8c 81       	ldd	r24, Y+4	; 0x04
    12fe:	9d 81       	ldd	r25, Y+5	; 0x05
    1300:	28 17       	cp	r18, r24
    1302:	39 07       	cpc	r19, r25
    1304:	3c f4       	brge	.+14     	; 0x1314 <fputc+0x46>
    1306:	e8 81       	ld	r30, Y
    1308:	f9 81       	ldd	r31, Y+1	; 0x01
    130a:	cf 01       	movw	r24, r30
    130c:	01 96       	adiw	r24, 0x01	; 1
    130e:	99 83       	std	Y+1, r25	; 0x01
    1310:	88 83       	st	Y, r24
    1312:	10 83       	st	Z, r17
    1314:	8e 81       	ldd	r24, Y+6	; 0x06
    1316:	9f 81       	ldd	r25, Y+7	; 0x07
    1318:	01 96       	adiw	r24, 0x01	; 1
    131a:	9f 83       	std	Y+7, r25	; 0x07
    131c:	8e 83       	std	Y+6, r24	; 0x06
    131e:	e3 cf       	rjmp	.-58     	; 0x12e6 <fputc+0x18>
    1320:	e8 85       	ldd	r30, Y+8	; 0x08
    1322:	f9 85       	ldd	r31, Y+9	; 0x09
    1324:	81 2f       	mov	r24, r17
    1326:	09 95       	icall
    1328:	89 2b       	or	r24, r25
    132a:	a1 f3       	breq	.-24     	; 0x1314 <fputc+0x46>
    132c:	da cf       	rjmp	.-76     	; 0x12e2 <fputc+0x14>

0000132e <snprintf>:
    132e:	ae e0       	ldi	r26, 0x0E	; 14
    1330:	b0 e0       	ldi	r27, 0x00	; 0
    1332:	ed e9       	ldi	r30, 0x9D	; 157
    1334:	f9 e0       	ldi	r31, 0x09	; 9
    1336:	0c 94 4a 08 	jmp	0x1094	; 0x1094 <__prologue_saves__+0x1c>
    133a:	0d 89       	ldd	r16, Y+21	; 0x15
    133c:	1e 89       	ldd	r17, Y+22	; 0x16
    133e:	8f 89       	ldd	r24, Y+23	; 0x17
    1340:	98 8d       	ldd	r25, Y+24	; 0x18
    1342:	26 e0       	ldi	r18, 0x06	; 6
    1344:	2c 83       	std	Y+4, r18	; 0x04
    1346:	1a 83       	std	Y+2, r17	; 0x02
    1348:	09 83       	std	Y+1, r16	; 0x01
    134a:	97 ff       	sbrs	r25, 7
    134c:	02 c0       	rjmp	.+4      	; 0x1352 <snprintf+0x24>
    134e:	80 e0       	ldi	r24, 0x00	; 0
    1350:	90 e8       	ldi	r25, 0x80	; 128
    1352:	01 97       	sbiw	r24, 0x01	; 1
    1354:	9e 83       	std	Y+6, r25	; 0x06
    1356:	8d 83       	std	Y+5, r24	; 0x05
    1358:	ae 01       	movw	r20, r28
    135a:	45 5e       	subi	r20, 0xE5	; 229
    135c:	5f 4f       	sbci	r21, 0xFF	; 255
    135e:	69 8d       	ldd	r22, Y+25	; 0x19
    1360:	7a 8d       	ldd	r23, Y+26	; 0x1a
    1362:	ce 01       	movw	r24, r28
    1364:	01 96       	adiw	r24, 0x01	; 1
    1366:	0e 94 a4 04 	call	0x948	; 0x948 <vfprintf>
    136a:	4d 81       	ldd	r20, Y+5	; 0x05
    136c:	5e 81       	ldd	r21, Y+6	; 0x06
    136e:	57 fd       	sbrc	r21, 7
    1370:	0a c0       	rjmp	.+20     	; 0x1386 <snprintf+0x58>
    1372:	2f 81       	ldd	r18, Y+7	; 0x07
    1374:	38 85       	ldd	r19, Y+8	; 0x08
    1376:	42 17       	cp	r20, r18
    1378:	53 07       	cpc	r21, r19
    137a:	0c f4       	brge	.+2      	; 0x137e <snprintf+0x50>
    137c:	9a 01       	movw	r18, r20
    137e:	02 0f       	add	r16, r18
    1380:	13 1f       	adc	r17, r19
    1382:	f8 01       	movw	r30, r16
    1384:	10 82       	st	Z, r1
    1386:	2e 96       	adiw	r28, 0x0e	; 14
    1388:	e4 e0       	ldi	r30, 0x04	; 4
    138a:	0c 94 66 08 	jmp	0x10cc	; 0x10cc <__epilogue_restores__+0x1c>

0000138e <__ultoa_invert>:
    138e:	fa 01       	movw	r30, r20
    1390:	aa 27       	eor	r26, r26
    1392:	28 30       	cpi	r18, 0x08	; 8
    1394:	51 f1       	breq	.+84     	; 0x13ea <__ultoa_invert+0x5c>
    1396:	20 31       	cpi	r18, 0x10	; 16
    1398:	81 f1       	breq	.+96     	; 0x13fa <__ultoa_invert+0x6c>
    139a:	e8 94       	clt
    139c:	6f 93       	push	r22
    139e:	6e 7f       	andi	r22, 0xFE	; 254
    13a0:	6e 5f       	subi	r22, 0xFE	; 254
    13a2:	7f 4f       	sbci	r23, 0xFF	; 255
    13a4:	8f 4f       	sbci	r24, 0xFF	; 255
    13a6:	9f 4f       	sbci	r25, 0xFF	; 255
    13a8:	af 4f       	sbci	r26, 0xFF	; 255
    13aa:	b1 e0       	ldi	r27, 0x01	; 1
    13ac:	3e d0       	rcall	.+124    	; 0x142a <__ultoa_invert+0x9c>
    13ae:	b4 e0       	ldi	r27, 0x04	; 4
    13b0:	3c d0       	rcall	.+120    	; 0x142a <__ultoa_invert+0x9c>
    13b2:	67 0f       	add	r22, r23
    13b4:	78 1f       	adc	r23, r24
    13b6:	89 1f       	adc	r24, r25
    13b8:	9a 1f       	adc	r25, r26
    13ba:	a1 1d       	adc	r26, r1
    13bc:	68 0f       	add	r22, r24
    13be:	79 1f       	adc	r23, r25
    13c0:	8a 1f       	adc	r24, r26
    13c2:	91 1d       	adc	r25, r1
    13c4:	a1 1d       	adc	r26, r1
    13c6:	6a 0f       	add	r22, r26
    13c8:	71 1d       	adc	r23, r1
    13ca:	81 1d       	adc	r24, r1
    13cc:	91 1d       	adc	r25, r1
    13ce:	a1 1d       	adc	r26, r1
    13d0:	20 d0       	rcall	.+64     	; 0x1412 <__ultoa_invert+0x84>
    13d2:	09 f4       	brne	.+2      	; 0x13d6 <__ultoa_invert+0x48>
    13d4:	68 94       	set
    13d6:	3f 91       	pop	r19
    13d8:	2a e0       	ldi	r18, 0x0A	; 10
    13da:	26 9f       	mul	r18, r22
    13dc:	11 24       	eor	r1, r1
    13de:	30 19       	sub	r19, r0
    13e0:	30 5d       	subi	r19, 0xD0	; 208
    13e2:	31 93       	st	Z+, r19
    13e4:	de f6       	brtc	.-74     	; 0x139c <__ultoa_invert+0xe>
    13e6:	cf 01       	movw	r24, r30
    13e8:	08 95       	ret
    13ea:	46 2f       	mov	r20, r22
    13ec:	47 70       	andi	r20, 0x07	; 7
    13ee:	40 5d       	subi	r20, 0xD0	; 208
    13f0:	41 93       	st	Z+, r20
    13f2:	b3 e0       	ldi	r27, 0x03	; 3
    13f4:	0f d0       	rcall	.+30     	; 0x1414 <__ultoa_invert+0x86>
    13f6:	c9 f7       	brne	.-14     	; 0x13ea <__ultoa_invert+0x5c>
    13f8:	f6 cf       	rjmp	.-20     	; 0x13e6 <__ultoa_invert+0x58>
    13fa:	46 2f       	mov	r20, r22
    13fc:	4f 70       	andi	r20, 0x0F	; 15
    13fe:	40 5d       	subi	r20, 0xD0	; 208
    1400:	4a 33       	cpi	r20, 0x3A	; 58
    1402:	18 f0       	brcs	.+6      	; 0x140a <__ultoa_invert+0x7c>
    1404:	49 5d       	subi	r20, 0xD9	; 217
    1406:	31 fd       	sbrc	r19, 1
    1408:	40 52       	subi	r20, 0x20	; 32
    140a:	41 93       	st	Z+, r20
    140c:	02 d0       	rcall	.+4      	; 0x1412 <__ultoa_invert+0x84>
    140e:	a9 f7       	brne	.-22     	; 0x13fa <__ultoa_invert+0x6c>
    1410:	ea cf       	rjmp	.-44     	; 0x13e6 <__ultoa_invert+0x58>
    1412:	b4 e0       	ldi	r27, 0x04	; 4
    1414:	a6 95       	lsr	r26
    1416:	97 95       	ror	r25
    1418:	87 95       	ror	r24
    141a:	77 95       	ror	r23
    141c:	67 95       	ror	r22
    141e:	ba 95       	dec	r27
    1420:	c9 f7       	brne	.-14     	; 0x1414 <__ultoa_invert+0x86>
    1422:	00 97       	sbiw	r24, 0x00	; 0
    1424:	61 05       	cpc	r22, r1
    1426:	71 05       	cpc	r23, r1
    1428:	08 95       	ret
    142a:	9b 01       	movw	r18, r22
    142c:	ac 01       	movw	r20, r24
    142e:	0a 2e       	mov	r0, r26
    1430:	06 94       	lsr	r0
    1432:	57 95       	ror	r21
    1434:	47 95       	ror	r20
    1436:	37 95       	ror	r19
    1438:	27 95       	ror	r18
    143a:	ba 95       	dec	r27
    143c:	c9 f7       	brne	.-14     	; 0x1430 <__ultoa_invert+0xa2>
    143e:	62 0f       	add	r22, r18
    1440:	73 1f       	adc	r23, r19
    1442:	84 1f       	adc	r24, r20
    1444:	95 1f       	adc	r25, r21
    1446:	a0 1d       	adc	r26, r0
    1448:	08 95       	ret

0000144a <_exit>:
    144a:	f8 94       	cli

0000144c <__stop_program>:
    144c:	ff cf       	rjmp	.-2      	; 0x144c <__stop_program>
