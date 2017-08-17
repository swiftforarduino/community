
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
      40:	0c 94 4c 02 	jmp	0x498	; 0x498 <__vector_16>
      44:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
      48:	0c 94 63 02 	jmp	0x4c6	; 0x4c6 <__vector_18>
      4c:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
      50:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
      54:	0c 94 5b 04 	jmp	0x8b6	; 0x8b6 <__vector_21>
      58:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
      5c:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
      60:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>
      64:	0c 94 5e 00 	jmp	0xbc	; 0xbc <__bad_interrupt>

00000068 <__ctors_start>:
      68:	dd 04       	cpc	r13, r13

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
      7c:	e2 ee       	ldi	r30, 0xE2	; 226
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
      ac:	db d4       	rcall	.+2486   	; 0xa64 <__tablejump2__>
      ae:	c4 33       	cpi	r28, 0x34	; 52
      b0:	d1 07       	cpc	r29, r17
      b2:	c9 f7       	brne	.-14     	; 0xa6 <__do_global_ctors+0x8>
      b4:	0e 94 60 00 	call	0xc0	; 0xc0 <main>
      b8:	0c 94 6f 08 	jmp	0x10de	; 0x10de <_exit>

000000bc <__bad_interrupt>:
      bc:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000c0 <main>:
      c0:	cf 92       	push	r12
      c2:	df 92       	push	r13
      c4:	ef 92       	push	r14
      c6:	ff 92       	push	r15
      c8:	0f 93       	push	r16
      ca:	1f 93       	push	r17
      cc:	80 e8       	ldi	r24, 0x80	; 128
      ce:	95 e2       	ldi	r25, 0x25	; 37
      d0:	0e 94 e8 00 	call	0x1d0	; 0x1d0 <_TF3AVR11SetupSerialFT8baudRateVs5Int16_T_>
      d4:	80 e0       	ldi	r24, 0x00	; 0
      d6:	90 e0       	ldi	r25, 0x00	; 0
      d8:	7c 01       	movw	r14, r24
      da:	85 e0       	ldi	r24, 0x05	; 5
      dc:	90 e0       	ldi	r25, 0x00	; 0
      de:	6c 01       	movw	r12, r24
      e0:	01 e0       	ldi	r16, 0x01	; 1
      e2:	10 e0       	ldi	r17, 0x00	; 0

000000e4 <LBB0_1>:
      e4:	80 e0       	ldi	r24, 0x00	; 0
      e6:	0e 94 e1 00 	call	0x1c2	; 0x1c2 <_TF3AVR14slowAnalogReadFT3pinVs5UInt8_Vs6UInt16>
      ea:	9c 01       	movw	r18, r24
      ec:	35 95       	asr	r19
      ee:	27 95       	ror	r18
      f0:	35 95       	asr	r19
      f2:	27 95       	ror	r18
      f4:	35 95       	asr	r19
      f6:	27 95       	ror	r18
      f8:	35 95       	asr	r19
      fa:	27 95       	ror	r18
      fc:	35 95       	asr	r19
      fe:	27 95       	ror	r18
     100:	35 95       	asr	r19
     102:	27 95       	ror	r18
     104:	35 95       	asr	r19
     106:	27 95       	ror	r18
     108:	35 95       	asr	r19
     10a:	27 95       	ror	r18
     10c:	35 95       	asr	r19
     10e:	27 95       	ror	r18
     110:	35 95       	asr	r19
     112:	27 95       	ror	r18
     114:	35 95       	asr	r19
     116:	27 95       	ror	r18
     118:	35 95       	asr	r19
     11a:	27 95       	ror	r18
     11c:	35 95       	asr	r19
     11e:	27 95       	ror	r18
     120:	35 95       	asr	r19
     122:	27 95       	ror	r18
     124:	35 95       	asr	r19
     126:	27 95       	ror	r18
     128:	b7 01       	movw	r22, r14
     12a:	a6 01       	movw	r20, r12
     12c:	0e 94 f0 04 	call	0x9e0	; 0x9e0 <__mulsi3>
     130:	cb 01       	movw	r24, r22
     132:	0e 94 44 01 	call	0x288	; 0x288 <_TF3AVR5printFT11unsignedIntVs6UInt16_T_>
     136:	c8 01       	movw	r24, r16
     138:	0e 94 a0 00 	call	0x140	; 0x140 <_TF3AVR5delayFT12millisecondsVs6UInt16_T_>
     13c:	d3 cf       	rjmp	.-90     	; 0xe4 <LBB0_1>
	...

00000140 <_TF3AVR5delayFT12millisecondsVs6UInt16_T_>:
     140:	0e 94 fc 01 	call	0x3f8	; 0x3f8 <_delayMs>
     144:	08 95       	ret

00000146 <_TF3AVR18stringAddCharacterFT4byteVs5UInt8_Sb>:
     146:	0e 94 10 02 	call	0x420	; 0x420 <_stringAddCharacter>
     14a:	08 95       	ret

0000014c <_TF3AVR14stringStartNewFT_T_>:
     14c:	0e 94 28 02 	call	0x450	; 0x450 <_stringStartNew>
     150:	08 95       	ret

00000152 <_TF3AVR18stringCurrentValueFT_GSQGSPVs4Int8__>:
     152:	0e 94 2d 02 	call	0x45a	; 0x45a <_stringCurrentValue>
     156:	40 e0       	ldi	r20, 0x00	; 0
     158:	50 e0       	ldi	r21, 0x00	; 0
     15a:	9c 01       	movw	r18, r24
     15c:	ba 01       	movw	r22, r20
     15e:	ca 01       	movw	r24, r20
     160:	08 95       	ret

00000162 <_TF3AVR14numberToStringFT6numberVs5Int32_GSQGSPVs4Int8__>:
     162:	0e 94 30 02 	call	0x460	; 0x460 <_numberToString>
     166:	40 e0       	ldi	r20, 0x00	; 0
     168:	50 e0       	ldi	r21, 0x00	; 0
     16a:	9c 01       	movw	r18, r24
     16c:	ba 01       	movw	r22, r20
     16e:	ca 01       	movw	r24, r20
     170:	08 95       	ret

00000172 <_TF3AVR5ticksFT_Vs6UInt16>:
     172:	0e 94 0b 02 	call	0x416	; 0x416 <_ticks>
     176:	08 95       	ret

00000178 <_TF3AVR11digitalReadFT3pinVs5UInt8_Sb>:
     178:	0e 94 6d 01 	call	0x2da	; 0x2da <_digitalRead>
     17c:	08 95       	ret

0000017e <_TF3AVR12digitalWriteFT3pinVs5UInt85valueSb_T_>:
     17e:	83 30       	cpi	r24, 0x03	; 3
     180:	51 f0       	breq	.+20     	; 0x196 <LBB1_6>
     182:	85 30       	cpi	r24, 0x05	; 5
     184:	41 f0       	breq	.+16     	; 0x196 <LBB1_6>
     186:	86 30       	cpi	r24, 0x06	; 6
     188:	31 f0       	breq	.+12     	; 0x196 <LBB1_6>
     18a:	89 30       	cpi	r24, 0x09	; 9
     18c:	21 f0       	breq	.+8      	; 0x196 <LBB1_6>
     18e:	8a 30       	cpi	r24, 0x0A	; 10
     190:	11 f0       	breq	.+4      	; 0x196 <LBB1_6>
     192:	8b 30       	cpi	r24, 0x0B	; 11
     194:	59 f4       	brne	.+22     	; 0x1ac <LBB1_9>

00000196 <LBB1_6>:
     196:	61 70       	andi	r22, 0x01	; 1
     198:	60 30       	cpi	r22, 0x00	; 0
     19a:	21 f0       	breq	.+8      	; 0x1a4 <LBB1_8>
     19c:	6f ef       	ldi	r22, 0xFF	; 255
     19e:	0e 94 29 03 	call	0x652	; 0x652 <_analogWrite>
     1a2:	08 95       	ret

000001a4 <LBB1_8>:
     1a4:	60 e0       	ldi	r22, 0x00	; 0
     1a6:	0e 94 29 03 	call	0x652	; 0x652 <_analogWrite>
     1aa:	08 95       	ret

000001ac <LBB1_9>:
     1ac:	61 70       	andi	r22, 0x01	; 1
     1ae:	0e 94 a4 01 	call	0x348	; 0x348 <_digitalWrite>
     1b2:	08 95       	ret

000001b4 <_TF3AVR7pinModeFT3pinVs5UInt84modeSb_T_>:
     1b4:	61 70       	andi	r22, 0x01	; 1
     1b6:	0e 94 d4 01 	call	0x3a8	; 0x3a8 <_pinMode>
     1ba:	08 95       	ret

000001bc <_TF3AVR11analogWriteFT3pinVs5UInt85valueS0__T_>:
     1bc:	0e 94 29 03 	call	0x652	; 0x652 <_analogWrite>
     1c0:	08 95       	ret

000001c2 <_TF3AVR14slowAnalogReadFT3pinVs5UInt8_Vs6UInt16>:
     1c2:	0e 94 2c 04 	call	0x858	; 0x858 <_slowAnalogRead>
     1c6:	08 95       	ret

000001c8 <_TF3AVR15analogReadAsyncFT3pinVs5UInt88callbackcVs6UInt16T__T_>:
     1c8:	40 e0       	ldi	r20, 0x00	; 0
     1ca:	0e 94 93 04 	call	0x926	; 0x926 <_analogReadAsync>
     1ce:	08 95       	ret

000001d0 <_TF3AVR11SetupSerialFT8baudRateVs5Int16_T_>:
     1d0:	0e 94 a5 02 	call	0x54a	; 0x54a <_setupSerial>
     1d4:	08 95       	ret

000001d6 <_TF3AVR5printFT7messageGSqGSPVs4Int8___T_>:
     1d6:	c9 01       	movw	r24, r18
     1d8:	0e 94 e2 02 	call	0x5c4	; 0x5c4 <_sendString>
     1dc:	08 95       	ret

000001de <_TF3AVR5printFT4byteVs5UInt8_T_>:
     1de:	0e 94 db 02 	call	0x5b6	; 0x5b6 <_sendByte>
     1e2:	08 95       	ret

000001e4 <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberVs5Int32_T_>:
     1e4:	0e 94 30 02 	call	0x460	; 0x460 <_numberToString>
     1e8:	0e 94 f2 02 	call	0x5e4	; 0x5e4 <_sendBuffer>
     1ec:	08 95       	ret

000001ee <_TF3AVR5printFT7longIntVs5Int32_T_>:
     1ee:	0e 94 f2 00 	call	0x1e4	; 0x1e4 <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberVs5Int32_T_>
     1f2:	08 95       	ret

000001f4 <_TF3AVR5printFT3intVs5Int16_T_>:
     1f4:	9c 01       	movw	r18, r24
     1f6:	35 95       	asr	r19
     1f8:	27 95       	ror	r18
     1fa:	35 95       	asr	r19
     1fc:	27 95       	ror	r18
     1fe:	35 95       	asr	r19
     200:	27 95       	ror	r18
     202:	35 95       	asr	r19
     204:	27 95       	ror	r18
     206:	35 95       	asr	r19
     208:	27 95       	ror	r18
     20a:	35 95       	asr	r19
     20c:	27 95       	ror	r18
     20e:	35 95       	asr	r19
     210:	27 95       	ror	r18
     212:	35 95       	asr	r19
     214:	27 95       	ror	r18
     216:	35 95       	asr	r19
     218:	27 95       	ror	r18
     21a:	35 95       	asr	r19
     21c:	27 95       	ror	r18
     21e:	35 95       	asr	r19
     220:	27 95       	ror	r18
     222:	35 95       	asr	r19
     224:	27 95       	ror	r18
     226:	35 95       	asr	r19
     228:	27 95       	ror	r18
     22a:	35 95       	asr	r19
     22c:	27 95       	ror	r18
     22e:	35 95       	asr	r19
     230:	27 95       	ror	r18
     232:	bc 01       	movw	r22, r24
     234:	c9 01       	movw	r24, r18
     236:	0e 94 f2 00 	call	0x1e4	; 0x1e4 <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberVs5Int32_T_>
     23a:	08 95       	ret

0000023c <_TF3AVR5printFT7tinyIntVs4Int8_T_>:
     23c:	68 2f       	mov	r22, r24
     23e:	78 2f       	mov	r23, r24
     240:	77 0f       	add	r23, r23
     242:	77 0b       	sbc	r23, r23
     244:	cb 01       	movw	r24, r22
     246:	95 95       	asr	r25
     248:	87 95       	ror	r24
     24a:	95 95       	asr	r25
     24c:	87 95       	ror	r24
     24e:	95 95       	asr	r25
     250:	87 95       	ror	r24
     252:	95 95       	asr	r25
     254:	87 95       	ror	r24
     256:	95 95       	asr	r25
     258:	87 95       	ror	r24
     25a:	95 95       	asr	r25
     25c:	87 95       	ror	r24
     25e:	95 95       	asr	r25
     260:	87 95       	ror	r24
     262:	95 95       	asr	r25
     264:	87 95       	ror	r24
     266:	95 95       	asr	r25
     268:	87 95       	ror	r24
     26a:	95 95       	asr	r25
     26c:	87 95       	ror	r24
     26e:	95 95       	asr	r25
     270:	87 95       	ror	r24
     272:	95 95       	asr	r25
     274:	87 95       	ror	r24
     276:	95 95       	asr	r25
     278:	87 95       	ror	r24
     27a:	95 95       	asr	r25
     27c:	87 95       	ror	r24
     27e:	95 95       	asr	r25
     280:	87 95       	ror	r24
     282:	0e 94 f2 00 	call	0x1e4	; 0x1e4 <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberVs5Int32_T_>
     286:	08 95       	ret

00000288 <_TF3AVR5printFT11unsignedIntVs6UInt16_T_>:
     288:	20 e0       	ldi	r18, 0x00	; 0
     28a:	30 e0       	ldi	r19, 0x00	; 0
     28c:	bc 01       	movw	r22, r24
     28e:	c9 01       	movw	r24, r18
     290:	0e 94 f2 00 	call	0x1e4	; 0x1e4 <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberVs5Int32_T_>
     294:	08 95       	ret

00000296 <_TF3AVR5printFT15unsignedTinyIntVs5UInt8_T_>:
     296:	68 2f       	mov	r22, r24
     298:	77 27       	eor	r23, r23
     29a:	80 e0       	ldi	r24, 0x00	; 0
     29c:	90 e0       	ldi	r25, 0x00	; 0
     29e:	0e 94 f2 00 	call	0x1e4	; 0x1e4 <_TF3AVRP33_145E5693925DE49F7C32B973DF03FA7E19printNumberInternalFT6numberVs5Int32_T_>
     2a2:	08 95       	ret

000002a4 <_TF3AVR9availableFT_Sb>:
     2a4:	0e 94 01 03 	call	0x602	; 0x602 <_available>
     2a8:	08 95       	ret

000002aa <_TF3AVR4readFT_Vs5UInt8>:
     2aa:	0e 94 0c 03 	call	0x618	; 0x618 <_receiveByte>
     2ae:	08 95       	ret

000002b0 <pinMask>:
     2b0:	88 30       	cpi	r24, 0x08	; 8
     2b2:	60 f0       	brcs	.+24     	; 0x2cc <pinMask+0x1c>
     2b4:	8e 30       	cpi	r24, 0x0E	; 14
     2b6:	40 f4       	brcc	.+16     	; 0x2c8 <pinMask+0x18>
     2b8:	98 ef       	ldi	r25, 0xF8	; 248
     2ba:	98 0f       	add	r25, r24
     2bc:	81 e0       	ldi	r24, 0x01	; 1
     2be:	01 c0       	rjmp	.+2      	; 0x2c2 <pinMask+0x12>
     2c0:	88 0f       	add	r24, r24
     2c2:	9a 95       	dec	r25
     2c4:	ea f7       	brpl	.-6      	; 0x2c0 <pinMask+0x10>
     2c6:	08 95       	ret
     2c8:	80 e0       	ldi	r24, 0x00	; 0
     2ca:	08 95       	ret
     2cc:	91 e0       	ldi	r25, 0x01	; 1
     2ce:	01 c0       	rjmp	.+2      	; 0x2d2 <pinMask+0x22>
     2d0:	99 0f       	add	r25, r25
     2d2:	8a 95       	dec	r24
     2d4:	ea f7       	brpl	.-6      	; 0x2d0 <pinMask+0x20>
     2d6:	89 2f       	mov	r24, r25
     2d8:	08 95       	ret

000002da <_digitalRead>:
     2da:	cf 93       	push	r28
     2dc:	c8 2f       	mov	r28, r24
     2de:	0e 94 58 01 	call	0x2b0	; 0x2b0 <pinMask>
     2e2:	88 23       	and	r24, r24
     2e4:	31 f0       	breq	.+12     	; 0x2f2 <_digitalRead+0x18>
     2e6:	c8 30       	cpi	r28, 0x08	; 8
     2e8:	38 f0       	brcs	.+14     	; 0x2f8 <_digitalRead+0x1e>
     2ea:	93 b1       	in	r25, 0x03	; 3
     2ec:	98 23       	and	r25, r24
     2ee:	81 e0       	ldi	r24, 0x01	; 1
     2f0:	09 f4       	brne	.+2      	; 0x2f4 <_digitalRead+0x1a>
     2f2:	80 e0       	ldi	r24, 0x00	; 0
     2f4:	cf 91       	pop	r28
     2f6:	08 95       	ret
     2f8:	99 b1       	in	r25, 0x09	; 9
     2fa:	98 23       	and	r25, r24
     2fc:	81 e0       	ldi	r24, 0x01	; 1
     2fe:	c9 f3       	breq	.-14     	; 0x2f2 <_digitalRead+0x18>
     300:	cf 91       	pop	r28
     302:	08 95       	ret

00000304 <resetPortD>:
     304:	0e 94 58 01 	call	0x2b0	; 0x2b0 <pinMask>
     308:	88 23       	and	r24, r24
     30a:	21 f0       	breq	.+8      	; 0x314 <resetPortD+0x10>
     30c:	9b b1       	in	r25, 0x0b	; 11
     30e:	80 95       	com	r24
     310:	89 23       	and	r24, r25
     312:	8b b9       	out	0x0b, r24	; 11
     314:	08 95       	ret

00000316 <resetPortB>:
     316:	0e 94 58 01 	call	0x2b0	; 0x2b0 <pinMask>
     31a:	88 23       	and	r24, r24
     31c:	21 f0       	breq	.+8      	; 0x326 <resetPortB+0x10>
     31e:	95 b1       	in	r25, 0x05	; 5
     320:	80 95       	com	r24
     322:	89 23       	and	r24, r25
     324:	85 b9       	out	0x05, r24	; 5
     326:	08 95       	ret

00000328 <setPortD>:
     328:	0e 94 58 01 	call	0x2b0	; 0x2b0 <pinMask>
     32c:	88 23       	and	r24, r24
     32e:	19 f0       	breq	.+6      	; 0x336 <setPortD+0xe>
     330:	9b b1       	in	r25, 0x0b	; 11
     332:	89 2b       	or	r24, r25
     334:	8b b9       	out	0x0b, r24	; 11
     336:	08 95       	ret

00000338 <setPortB>:
     338:	0e 94 58 01 	call	0x2b0	; 0x2b0 <pinMask>
     33c:	88 23       	and	r24, r24
     33e:	19 f0       	breq	.+6      	; 0x346 <setPortB+0xe>
     340:	95 b1       	in	r25, 0x05	; 5
     342:	89 2b       	or	r24, r25
     344:	85 b9       	out	0x05, r24	; 5
     346:	08 95       	ret

00000348 <_digitalWrite>:
     348:	66 23       	and	r22, r22
     34a:	21 f0       	breq	.+8      	; 0x354 <_digitalWrite+0xc>
     34c:	88 30       	cpi	r24, 0x08	; 8
     34e:	30 f4       	brcc	.+12     	; 0x35c <_digitalWrite+0x14>
     350:	0c 94 94 01 	jmp	0x328	; 0x328 <setPortD>
     354:	88 30       	cpi	r24, 0x08	; 8
     356:	20 f0       	brcs	.+8      	; 0x360 <_digitalWrite+0x18>
     358:	0c 94 8b 01 	jmp	0x316	; 0x316 <resetPortB>
     35c:	0c 94 9c 01 	jmp	0x338	; 0x338 <setPortB>
     360:	0c 94 82 01 	jmp	0x304	; 0x304 <resetPortD>

00000364 <enablePortDWrite>:
     364:	0e 94 58 01 	call	0x2b0	; 0x2b0 <pinMask>
     368:	88 23       	and	r24, r24
     36a:	19 f0       	breq	.+6      	; 0x372 <enablePortDWrite+0xe>
     36c:	9a b1       	in	r25, 0x0a	; 10
     36e:	89 2b       	or	r24, r25
     370:	8a b9       	out	0x0a, r24	; 10
     372:	08 95       	ret

00000374 <enablePortBWrite>:
     374:	0e 94 58 01 	call	0x2b0	; 0x2b0 <pinMask>
     378:	88 23       	and	r24, r24
     37a:	19 f0       	breq	.+6      	; 0x382 <enablePortBWrite+0xe>
     37c:	94 b1       	in	r25, 0x04	; 4
     37e:	89 2b       	or	r24, r25
     380:	84 b9       	out	0x04, r24	; 4
     382:	08 95       	ret

00000384 <disablePortDWrite>:
     384:	0e 94 58 01 	call	0x2b0	; 0x2b0 <pinMask>
     388:	88 23       	and	r24, r24
     38a:	21 f0       	breq	.+8      	; 0x394 <disablePortDWrite+0x10>
     38c:	9a b1       	in	r25, 0x0a	; 10
     38e:	80 95       	com	r24
     390:	89 23       	and	r24, r25
     392:	8a b9       	out	0x0a, r24	; 10
     394:	08 95       	ret

00000396 <disablePortBWrite>:
     396:	0e 94 58 01 	call	0x2b0	; 0x2b0 <pinMask>
     39a:	88 23       	and	r24, r24
     39c:	21 f0       	breq	.+8      	; 0x3a6 <disablePortBWrite+0x10>
     39e:	94 b1       	in	r25, 0x04	; 4
     3a0:	80 95       	com	r24
     3a2:	89 23       	and	r24, r25
     3a4:	84 b9       	out	0x04, r24	; 4
     3a6:	08 95       	ret

000003a8 <_pinMode>:
     3a8:	66 23       	and	r22, r22
     3aa:	51 f0       	breq	.+20     	; 0x3c0 <_pinMode+0x18>
     3ac:	88 30       	cpi	r24, 0x08	; 8
     3ae:	e0 f4       	brcc	.+56     	; 0x3e8 <_pinMode+0x40>
     3b0:	0e 94 58 01 	call	0x2b0	; 0x2b0 <pinMask>
     3b4:	88 23       	and	r24, r24
     3b6:	b9 f0       	breq	.+46     	; 0x3e6 <_pinMode+0x3e>
     3b8:	9a b1       	in	r25, 0x0a	; 10
     3ba:	89 2b       	or	r24, r25
     3bc:	8a b9       	out	0x0a, r24	; 10
     3be:	08 95       	ret
     3c0:	88 30       	cpi	r24, 0x08	; 8
     3c2:	48 f4       	brcc	.+18     	; 0x3d6 <_pinMode+0x2e>
     3c4:	0e 94 58 01 	call	0x2b0	; 0x2b0 <pinMask>
     3c8:	88 23       	and	r24, r24
     3ca:	69 f0       	breq	.+26     	; 0x3e6 <_pinMode+0x3e>
     3cc:	9a b1       	in	r25, 0x0a	; 10
     3ce:	80 95       	com	r24
     3d0:	89 23       	and	r24, r25
     3d2:	8a b9       	out	0x0a, r24	; 10
     3d4:	08 95       	ret
     3d6:	0e 94 58 01 	call	0x2b0	; 0x2b0 <pinMask>
     3da:	88 23       	and	r24, r24
     3dc:	21 f0       	breq	.+8      	; 0x3e6 <_pinMode+0x3e>
     3de:	94 b1       	in	r25, 0x04	; 4
     3e0:	80 95       	com	r24
     3e2:	89 23       	and	r24, r25
     3e4:	84 b9       	out	0x04, r24	; 4
     3e6:	08 95       	ret
     3e8:	0e 94 58 01 	call	0x2b0	; 0x2b0 <pinMask>
     3ec:	88 23       	and	r24, r24
     3ee:	d9 f3       	breq	.-10     	; 0x3e6 <_pinMode+0x3e>
     3f0:	94 b1       	in	r25, 0x04	; 4
     3f2:	89 2b       	or	r24, r25
     3f4:	84 b9       	out	0x04, r24	; 4
     3f6:	08 95       	ret

000003f8 <_delayMs>:
     3f8:	00 97       	sbiw	r24, 0x00	; 0
     3fa:	61 f0       	breq	.+24     	; 0x414 <__FUSE_REGION_LENGTH__+0x14>
     3fc:	20 e0       	ldi	r18, 0x00	; 0
     3fe:	30 e0       	ldi	r19, 0x00	; 0
     400:	40 ea       	ldi	r20, 0xA0	; 160
     402:	5f e0       	ldi	r21, 0x0F	; 15
     404:	fa 01       	movw	r30, r20
     406:	31 97       	sbiw	r30, 0x01	; 1
     408:	f1 f7       	brne	.-4      	; 0x406 <__FUSE_REGION_LENGTH__+0x6>
     40a:	2f 5f       	subi	r18, 0xFF	; 255
     40c:	3f 4f       	sbci	r19, 0xFF	; 255
     40e:	82 17       	cp	r24, r18
     410:	93 07       	cpc	r25, r19
     412:	c1 f7       	brne	.-16     	; 0x404 <__FUSE_REGION_LENGTH__+0x4>
     414:	08 95       	ret

00000416 <_ticks>:
     416:	80 91 16 01 	lds	r24, 0x0116	; 0x800116 <__data_end>
     41a:	90 91 17 01 	lds	r25, 0x0117	; 0x800117 <__data_end+0x1>
     41e:	08 95       	ret

00000420 <_stringAddCharacter>:
     420:	e0 91 27 01 	lds	r30, 0x0127	; 0x800127 <stringBufferEnd>
     424:	ef 37       	cpi	r30, 0x7F	; 127
     426:	91 f0       	breq	.+36     	; 0x44c <_stringAddCharacter+0x2c>
     428:	91 e0       	ldi	r25, 0x01	; 1
     42a:	9e 0f       	add	r25, r30
     42c:	90 93 27 01 	sts	0x0127, r25	; 0x800127 <stringBufferEnd>
     430:	0e 2e       	mov	r0, r30
     432:	00 0c       	add	r0, r0
     434:	ff 0b       	sbc	r31, r31
     436:	e8 5d       	subi	r30, 0xD8	; 216
     438:	fe 4f       	sbci	r31, 0xFE	; 254
     43a:	80 83       	st	Z, r24
     43c:	e9 2f       	mov	r30, r25
     43e:	99 0f       	add	r25, r25
     440:	ff 0b       	sbc	r31, r31
     442:	e8 5d       	subi	r30, 0xD8	; 216
     444:	fe 4f       	sbci	r31, 0xFE	; 254
     446:	10 82       	st	Z, r1
     448:	81 e0       	ldi	r24, 0x01	; 1
     44a:	08 95       	ret
     44c:	80 e0       	ldi	r24, 0x00	; 0
     44e:	08 95       	ret

00000450 <_stringStartNew>:
     450:	10 92 27 01 	sts	0x0127, r1	; 0x800127 <stringBufferEnd>
     454:	10 92 28 01 	sts	0x0128, r1	; 0x800128 <stringBuffer>
     458:	08 95       	ret

0000045a <_stringCurrentValue>:
     45a:	88 e2       	ldi	r24, 0x28	; 40
     45c:	91 e0       	ldi	r25, 0x01	; 1
     45e:	08 95       	ret

00000460 <_numberToString>:
     460:	9f 93       	push	r25
     462:	8f 93       	push	r24
     464:	7f 93       	push	r23
     466:	6f 93       	push	r22
     468:	8f e0       	ldi	r24, 0x0F	; 15
     46a:	91 e0       	ldi	r25, 0x01	; 1
     46c:	9f 93       	push	r25
     46e:	8f 93       	push	r24
     470:	1f 92       	push	r1
     472:	8f e0       	ldi	r24, 0x0F	; 15
     474:	8f 93       	push	r24
     476:	88 e1       	ldi	r24, 0x18	; 24
     478:	91 e0       	ldi	r25, 0x01	; 1
     47a:	9f 93       	push	r25
     47c:	8f 93       	push	r24
     47e:	0e 94 3a 05 	call	0xa74	; 0xa74 <snprintf>
     482:	8d b7       	in	r24, 0x3d	; 61
     484:	9e b7       	in	r25, 0x3e	; 62
     486:	0a 96       	adiw	r24, 0x0a	; 10
     488:	0f b6       	in	r0, 0x3f	; 63
     48a:	f8 94       	cli
     48c:	9e bf       	out	0x3e, r25	; 62
     48e:	0f be       	out	0x3f, r0	; 63
     490:	8d bf       	out	0x3d, r24	; 61
     492:	88 e1       	ldi	r24, 0x18	; 24
     494:	91 e0       	ldi	r25, 0x01	; 1
     496:	08 95       	ret

00000498 <__vector_16>:
     498:	1f 92       	push	r1
     49a:	0f 92       	push	r0
     49c:	0f b6       	in	r0, 0x3f	; 63
     49e:	0f 92       	push	r0
     4a0:	11 24       	eor	r1, r1
     4a2:	8f 93       	push	r24
     4a4:	9f 93       	push	r25
     4a6:	80 91 16 01 	lds	r24, 0x0116	; 0x800116 <__data_end>
     4aa:	90 91 17 01 	lds	r25, 0x0117	; 0x800117 <__data_end+0x1>
     4ae:	01 96       	adiw	r24, 0x01	; 1
     4b0:	90 93 17 01 	sts	0x0117, r25	; 0x800117 <__data_end+0x1>
     4b4:	80 93 16 01 	sts	0x0116, r24	; 0x800116 <__data_end>
     4b8:	9f 91       	pop	r25
     4ba:	8f 91       	pop	r24
     4bc:	0f 90       	pop	r0
     4be:	0f be       	out	0x3f, r0	; 63
     4c0:	0f 90       	pop	r0
     4c2:	1f 90       	pop	r1
     4c4:	18 95       	reti

000004c6 <__vector_18>:
     4c6:	1f 92       	push	r1
     4c8:	0f 92       	push	r0
     4ca:	0f b6       	in	r0, 0x3f	; 63
     4cc:	0f 92       	push	r0
     4ce:	11 24       	eor	r1, r1
     4d0:	2f 93       	push	r18
     4d2:	8f 93       	push	r24
     4d4:	9f 93       	push	r25
     4d6:	ef 93       	push	r30
     4d8:	ff 93       	push	r31
     4da:	80 91 a8 01 	lds	r24, 0x01A8	; 0x8001a8 <bufferFull>
     4de:	81 11       	cpse	r24, r1
     4e0:	1e c0       	rjmp	.+60     	; 0x51e <__vector_18+0x58>
     4e2:	e0 91 a9 01 	lds	r30, 0x01A9	; 0x8001a9 <ringBufferEnd>
     4e6:	81 e0       	ldi	r24, 0x01	; 1
     4e8:	8e 0f       	add	r24, r30
     4ea:	80 93 a9 01 	sts	0x01A9, r24	; 0x8001a9 <ringBufferEnd>
     4ee:	90 91 c6 00 	lds	r25, 0x00C6	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
     4f2:	0e 2e       	mov	r0, r30
     4f4:	00 0c       	add	r0, r0
     4f6:	ff 0b       	sbc	r31, r31
     4f8:	e5 55       	subi	r30, 0x55	; 85
     4fa:	fe 4f       	sbci	r31, 0xFE	; 254
     4fc:	90 83       	st	Z, r25
     4fe:	08 2e       	mov	r0, r24
     500:	00 0c       	add	r0, r0
     502:	99 0b       	sbc	r25, r25
     504:	8f 77       	andi	r24, 0x7F	; 127
     506:	90 78       	andi	r25, 0x80	; 128
     508:	97 fd       	sbrc	r25, 7
     50a:	13 c0       	rjmp	.+38     	; 0x532 <__vector_18+0x6c>
     50c:	80 93 a9 01 	sts	0x01A9, r24	; 0x8001a9 <ringBufferEnd>
     510:	91 e0       	ldi	r25, 0x01	; 1
     512:	20 91 aa 01 	lds	r18, 0x01AA	; 0x8001aa <ringBufferStart>
     516:	28 13       	cpse	r18, r24
     518:	90 e0       	ldi	r25, 0x00	; 0
     51a:	90 93 a8 01 	sts	0x01A8, r25	; 0x8001a8 <bufferFull>
     51e:	ff 91       	pop	r31
     520:	ef 91       	pop	r30
     522:	9f 91       	pop	r25
     524:	8f 91       	pop	r24
     526:	2f 91       	pop	r18
     528:	0f 90       	pop	r0
     52a:	0f be       	out	0x3f, r0	; 63
     52c:	0f 90       	pop	r0
     52e:	1f 90       	pop	r1
     530:	18 95       	reti
     532:	01 97       	sbiw	r24, 0x01	; 1
     534:	80 68       	ori	r24, 0x80	; 128
     536:	9f 6f       	ori	r25, 0xFF	; 255
     538:	01 96       	adiw	r24, 0x01	; 1
     53a:	80 93 a9 01 	sts	0x01A9, r24	; 0x8001a9 <ringBufferEnd>
     53e:	91 e0       	ldi	r25, 0x01	; 1
     540:	20 91 aa 01 	lds	r18, 0x01AA	; 0x8001aa <ringBufferStart>
     544:	28 13       	cpse	r18, r24
     546:	e8 cf       	rjmp	.-48     	; 0x518 <__vector_18+0x52>
     548:	e8 cf       	rjmp	.-48     	; 0x51a <__vector_18+0x54>

0000054a <_setupSerial>:
     54a:	9c 01       	movw	r18, r24
     54c:	99 0f       	add	r25, r25
     54e:	44 0b       	sbc	r20, r20
     550:	55 0b       	sbc	r21, r21
     552:	22 0f       	add	r18, r18
     554:	33 1f       	adc	r19, r19
     556:	44 1f       	adc	r20, r20
     558:	55 1f       	adc	r21, r21
     55a:	22 0f       	add	r18, r18
     55c:	33 1f       	adc	r19, r19
     55e:	44 1f       	adc	r20, r20
     560:	55 1f       	adc	r21, r21
     562:	22 0f       	add	r18, r18
     564:	33 1f       	adc	r19, r19
     566:	44 1f       	adc	r20, r20
     568:	55 1f       	adc	r21, r21
     56a:	22 0f       	add	r18, r18
     56c:	33 1f       	adc	r19, r19
     56e:	44 1f       	adc	r20, r20
     570:	55 1f       	adc	r21, r21
     572:	60 e0       	ldi	r22, 0x00	; 0
     574:	74 e2       	ldi	r23, 0x24	; 36
     576:	84 ef       	ldi	r24, 0xF4	; 244
     578:	90 e0       	ldi	r25, 0x00	; 0
     57a:	0e 94 0b 05 	call	0xa16	; 0xa16 <__udivmodsi4>
     57e:	ba 01       	movw	r22, r20
     580:	a9 01       	movw	r20, r18
     582:	41 50       	subi	r20, 0x01	; 1
     584:	51 09       	sbc	r21, r1
     586:	61 09       	sbc	r22, r1
     588:	71 09       	sbc	r23, r1
     58a:	bb 27       	eor	r27, r27
     58c:	77 fd       	sbrc	r23, 7
     58e:	ba 95       	dec	r27
     590:	a7 2f       	mov	r26, r23
     592:	96 2f       	mov	r25, r22
     594:	85 2f       	mov	r24, r21
     596:	80 93 c5 00 	sts	0x00C5, r24	; 0x8000c5 <__TEXT_REGION_LENGTH__+0x7e00c5>
     59a:	40 93 c4 00 	sts	0x00C4, r20	; 0x8000c4 <__TEXT_REGION_LENGTH__+0x7e00c4>
     59e:	e2 ec       	ldi	r30, 0xC2	; 194
     5a0:	f0 e0       	ldi	r31, 0x00	; 0
     5a2:	80 81       	ld	r24, Z
     5a4:	86 60       	ori	r24, 0x06	; 6
     5a6:	80 83       	st	Z, r24
     5a8:	e1 ec       	ldi	r30, 0xC1	; 193
     5aa:	f0 e0       	ldi	r31, 0x00	; 0
     5ac:	80 81       	ld	r24, Z
     5ae:	88 69       	ori	r24, 0x98	; 152
     5b0:	80 83       	st	Z, r24
     5b2:	78 94       	sei
     5b4:	08 95       	ret

000005b6 <_sendByte>:
     5b6:	90 91 c0 00 	lds	r25, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
     5ba:	95 ff       	sbrs	r25, 5
     5bc:	fc cf       	rjmp	.-8      	; 0x5b6 <_sendByte>
     5be:	80 93 c6 00 	sts	0x00C6, r24	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
     5c2:	08 95       	ret

000005c4 <_sendString>:
     5c4:	fc 01       	movw	r30, r24
     5c6:	24 91       	lpm	r18, Z
     5c8:	22 23       	and	r18, r18
     5ca:	59 f0       	breq	.+22     	; 0x5e2 <_sendString+0x1e>
     5cc:	31 96       	adiw	r30, 0x01	; 1
     5ce:	90 91 c0 00 	lds	r25, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
     5d2:	95 ff       	sbrs	r25, 5
     5d4:	fc cf       	rjmp	.-8      	; 0x5ce <_sendString+0xa>
     5d6:	20 93 c6 00 	sts	0x00C6, r18	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
     5da:	24 91       	lpm	r18, Z
     5dc:	31 96       	adiw	r30, 0x01	; 1
     5de:	21 11       	cpse	r18, r1
     5e0:	f6 cf       	rjmp	.-20     	; 0x5ce <_sendString+0xa>
     5e2:	08 95       	ret

000005e4 <_sendBuffer>:
     5e4:	fc 01       	movw	r30, r24
     5e6:	20 81       	ld	r18, Z
     5e8:	22 23       	and	r18, r18
     5ea:	51 f0       	breq	.+20     	; 0x600 <_sendBuffer+0x1c>
     5ec:	31 96       	adiw	r30, 0x01	; 1
     5ee:	90 91 c0 00 	lds	r25, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
     5f2:	95 ff       	sbrs	r25, 5
     5f4:	fc cf       	rjmp	.-8      	; 0x5ee <_sendBuffer+0xa>
     5f6:	20 93 c6 00 	sts	0x00C6, r18	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
     5fa:	21 91       	ld	r18, Z+
     5fc:	21 11       	cpse	r18, r1
     5fe:	f7 cf       	rjmp	.-18     	; 0x5ee <_sendBuffer+0xa>
     600:	08 95       	ret

00000602 <_available>:
     602:	90 91 aa 01 	lds	r25, 0x01AA	; 0x8001aa <ringBufferStart>
     606:	80 91 a9 01 	lds	r24, 0x01A9	; 0x8001a9 <ringBufferEnd>
     60a:	98 17       	cp	r25, r24
     60c:	11 f0       	breq	.+4      	; 0x612 <_available+0x10>
     60e:	81 e0       	ldi	r24, 0x01	; 1
     610:	08 95       	ret
     612:	80 91 a8 01 	lds	r24, 0x01A8	; 0x8001a8 <bufferFull>
     616:	08 95       	ret

00000618 <_receiveByte>:
     618:	20 91 a8 01 	lds	r18, 0x01A8	; 0x8001a8 <bufferFull>
     61c:	90 91 aa 01 	lds	r25, 0x01AA	; 0x8001aa <ringBufferStart>
     620:	80 91 a9 01 	lds	r24, 0x01A9	; 0x8001a9 <ringBufferEnd>
     624:	98 17       	cp	r25, r24
     626:	91 f0       	breq	.+36     	; 0x64c <_receiveByte+0x34>
     628:	9f b7       	in	r25, 0x3f	; 63
     62a:	f8 94       	cli
     62c:	e0 91 aa 01 	lds	r30, 0x01AA	; 0x8001aa <ringBufferStart>
     630:	81 e0       	ldi	r24, 0x01	; 1
     632:	8e 0f       	add	r24, r30
     634:	80 93 aa 01 	sts	0x01AA, r24	; 0x8001aa <ringBufferStart>
     638:	0e 2e       	mov	r0, r30
     63a:	00 0c       	add	r0, r0
     63c:	ff 0b       	sbc	r31, r31
     63e:	e5 55       	subi	r30, 0x55	; 85
     640:	fe 4f       	sbci	r31, 0xFE	; 254
     642:	80 81       	ld	r24, Z
     644:	10 92 a8 01 	sts	0x01A8, r1	; 0x8001a8 <bufferFull>
     648:	9f bf       	out	0x3f, r25	; 63
     64a:	08 95       	ret
     64c:	21 11       	cpse	r18, r1
     64e:	ec cf       	rjmp	.-40     	; 0x628 <_receiveByte+0x10>
     650:	ff cf       	rjmp	.-2      	; 0x650 <_receiveByte+0x38>

00000652 <_analogWrite>:
     652:	cf 93       	push	r28
     654:	df 93       	push	r29
     656:	c8 2f       	mov	r28, r24
     658:	d6 2f       	mov	r29, r22
     65a:	60 91 0c 01 	lds	r22, 0x010C	; 0x80010c <_OUTPUT>
     65e:	0e 94 d4 01 	call	0x3a8	; 0x3a8 <_pinMode>
     662:	c6 30       	cpi	r28, 0x06	; 6
     664:	09 f4       	brne	.+2      	; 0x668 <_analogWrite+0x16>
     666:	5b c0       	rjmp	.+182    	; 0x71e <_analogWrite+0xcc>
     668:	50 f0       	brcs	.+20     	; 0x67e <_analogWrite+0x2c>
     66a:	ca 30       	cpi	r28, 0x0A	; 10
     66c:	b9 f0       	breq	.+46     	; 0x69c <_analogWrite+0x4a>
     66e:	cb 30       	cpi	r28, 0x0B	; 11
     670:	09 f4       	brne	.+2      	; 0x674 <_analogWrite+0x22>
     672:	46 c0       	rjmp	.+140    	; 0x700 <_analogWrite+0xae>
     674:	c9 30       	cpi	r28, 0x09	; 9
     676:	21 f1       	breq	.+72     	; 0x6c0 <_analogWrite+0x6e>
     678:	df 91       	pop	r29
     67a:	cf 91       	pop	r28
     67c:	08 95       	ret
     67e:	c3 30       	cpi	r28, 0x03	; 3
     680:	89 f1       	breq	.+98     	; 0x6e4 <_analogWrite+0x92>
     682:	c5 30       	cpi	r28, 0x05	; 5
     684:	c9 f7       	brne	.-14     	; 0x678 <_analogWrite+0x26>
     686:	84 b5       	in	r24, 0x24	; 36
     688:	dd 23       	and	r29, r29
     68a:	09 f4       	brne	.+2      	; 0x68e <_analogWrite+0x3c>
     68c:	52 c0       	rjmp	.+164    	; 0x732 <_analogWrite+0xe0>
     68e:	df 3f       	cpi	r29, 0xFF	; 255
     690:	09 f4       	brne	.+2      	; 0x694 <_analogWrite+0x42>
     692:	9e c0       	rjmp	.+316    	; 0x7d0 <_analogWrite+0x17e>
     694:	80 62       	ori	r24, 0x20	; 32
     696:	84 bd       	out	0x24, r24	; 36
     698:	d8 bd       	out	0x28, r29	; 40
     69a:	ee cf       	rjmp	.-36     	; 0x678 <_analogWrite+0x26>
     69c:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     6a0:	dd 23       	and	r29, r29
     6a2:	09 f4       	brne	.+2      	; 0x6a6 <_analogWrite+0x54>
     6a4:	7b c0       	rjmp	.+246    	; 0x79c <_analogWrite+0x14a>
     6a6:	df 3f       	cpi	r29, 0xFF	; 255
     6a8:	09 f4       	brne	.+2      	; 0x6ac <_analogWrite+0x5a>
     6aa:	85 c0       	rjmp	.+266    	; 0x7b6 <_analogWrite+0x164>
     6ac:	80 62       	ori	r24, 0x20	; 32
     6ae:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     6b2:	6d 2f       	mov	r22, r29
     6b4:	70 e0       	ldi	r23, 0x00	; 0
     6b6:	70 93 8b 00 	sts	0x008B, r23	; 0x80008b <__TEXT_REGION_LENGTH__+0x7e008b>
     6ba:	60 93 8a 00 	sts	0x008A, r22	; 0x80008a <__TEXT_REGION_LENGTH__+0x7e008a>
     6be:	dc cf       	rjmp	.-72     	; 0x678 <_analogWrite+0x26>
     6c0:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     6c4:	dd 23       	and	r29, r29
     6c6:	09 f4       	brne	.+2      	; 0x6ca <_analogWrite+0x78>
     6c8:	5c c0       	rjmp	.+184    	; 0x782 <_analogWrite+0x130>
     6ca:	df 3f       	cpi	r29, 0xFF	; 255
     6cc:	09 f4       	brne	.+2      	; 0x6d0 <_analogWrite+0x7e>
     6ce:	94 c0       	rjmp	.+296    	; 0x7f8 <_analogWrite+0x1a6>
     6d0:	80 68       	ori	r24, 0x80	; 128
     6d2:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     6d6:	6d 2f       	mov	r22, r29
     6d8:	70 e0       	ldi	r23, 0x00	; 0
     6da:	70 93 89 00 	sts	0x0089, r23	; 0x800089 <__TEXT_REGION_LENGTH__+0x7e0089>
     6de:	60 93 88 00 	sts	0x0088, r22	; 0x800088 <__TEXT_REGION_LENGTH__+0x7e0088>
     6e2:	ca cf       	rjmp	.-108    	; 0x678 <_analogWrite+0x26>
     6e4:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     6e8:	dd 23       	and	r29, r29
     6ea:	09 f4       	brne	.+2      	; 0x6ee <_analogWrite+0x9c>
     6ec:	3f c0       	rjmp	.+126    	; 0x76c <_analogWrite+0x11a>
     6ee:	df 3f       	cpi	r29, 0xFF	; 255
     6f0:	09 f4       	brne	.+2      	; 0x6f4 <_analogWrite+0xa2>
     6f2:	77 c0       	rjmp	.+238    	; 0x7e2 <_analogWrite+0x190>
     6f4:	80 62       	ori	r24, 0x20	; 32
     6f6:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     6fa:	d0 93 b4 00 	sts	0x00B4, r29	; 0x8000b4 <__TEXT_REGION_LENGTH__+0x7e00b4>
     6fe:	bc cf       	rjmp	.-136    	; 0x678 <_analogWrite+0x26>
     700:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     704:	dd 23       	and	r29, r29
     706:	39 f1       	breq	.+78     	; 0x756 <_analogWrite+0x104>
     708:	df 3f       	cpi	r29, 0xFF	; 255
     70a:	09 f4       	brne	.+2      	; 0x70e <_analogWrite+0xbc>
     70c:	8b c0       	rjmp	.+278    	; 0x824 <_analogWrite+0x1d2>
     70e:	80 68       	ori	r24, 0x80	; 128
     710:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     714:	d0 93 b3 00 	sts	0x00B3, r29	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
     718:	df 91       	pop	r29
     71a:	cf 91       	pop	r28
     71c:	08 95       	ret
     71e:	84 b5       	in	r24, 0x24	; 36
     720:	dd 23       	and	r29, r29
     722:	81 f0       	breq	.+32     	; 0x744 <_analogWrite+0xf2>
     724:	df 3f       	cpi	r29, 0xFF	; 255
     726:	09 f4       	brne	.+2      	; 0x72a <_analogWrite+0xd8>
     728:	74 c0       	rjmp	.+232    	; 0x812 <_analogWrite+0x1c0>
     72a:	80 68       	ori	r24, 0x80	; 128
     72c:	84 bd       	out	0x24, r24	; 36
     72e:	d7 bd       	out	0x27, r29	; 39
     730:	a3 cf       	rjmp	.-186    	; 0x678 <_analogWrite+0x26>
     732:	8f 7d       	andi	r24, 0xDF	; 223
     734:	84 bd       	out	0x24, r24	; 36
     736:	60 91 0d 01 	lds	r22, 0x010D	; 0x80010d <_LOW>
     73a:	85 e0       	ldi	r24, 0x05	; 5
     73c:	0e 94 a4 01 	call	0x348	; 0x348 <_digitalWrite>
     740:	18 bc       	out	0x28, r1	; 40
     742:	9a cf       	rjmp	.-204    	; 0x678 <_analogWrite+0x26>
     744:	8f 77       	andi	r24, 0x7F	; 127
     746:	84 bd       	out	0x24, r24	; 36
     748:	60 91 0d 01 	lds	r22, 0x010D	; 0x80010d <_LOW>
     74c:	86 e0       	ldi	r24, 0x06	; 6
     74e:	0e 94 a4 01 	call	0x348	; 0x348 <_digitalWrite>
     752:	17 bc       	out	0x27, r1	; 39
     754:	91 cf       	rjmp	.-222    	; 0x678 <_analogWrite+0x26>
     756:	8f 77       	andi	r24, 0x7F	; 127
     758:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     75c:	60 91 0d 01 	lds	r22, 0x010D	; 0x80010d <_LOW>
     760:	8b e0       	ldi	r24, 0x0B	; 11
     762:	0e 94 a4 01 	call	0x348	; 0x348 <_digitalWrite>
     766:	10 92 b3 00 	sts	0x00B3, r1	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
     76a:	86 cf       	rjmp	.-244    	; 0x678 <_analogWrite+0x26>
     76c:	8f 7d       	andi	r24, 0xDF	; 223
     76e:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     772:	60 91 0d 01 	lds	r22, 0x010D	; 0x80010d <_LOW>
     776:	83 e0       	ldi	r24, 0x03	; 3
     778:	0e 94 a4 01 	call	0x348	; 0x348 <_digitalWrite>
     77c:	10 92 b4 00 	sts	0x00B4, r1	; 0x8000b4 <__TEXT_REGION_LENGTH__+0x7e00b4>
     780:	7b cf       	rjmp	.-266    	; 0x678 <_analogWrite+0x26>
     782:	8f 77       	andi	r24, 0x7F	; 127
     784:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     788:	60 91 0d 01 	lds	r22, 0x010D	; 0x80010d <_LOW>
     78c:	89 e0       	ldi	r24, 0x09	; 9
     78e:	0e 94 a4 01 	call	0x348	; 0x348 <_digitalWrite>
     792:	10 92 89 00 	sts	0x0089, r1	; 0x800089 <__TEXT_REGION_LENGTH__+0x7e0089>
     796:	10 92 88 00 	sts	0x0088, r1	; 0x800088 <__TEXT_REGION_LENGTH__+0x7e0088>
     79a:	6e cf       	rjmp	.-292    	; 0x678 <_analogWrite+0x26>
     79c:	8f 7d       	andi	r24, 0xDF	; 223
     79e:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     7a2:	60 91 0d 01 	lds	r22, 0x010D	; 0x80010d <_LOW>
     7a6:	8a e0       	ldi	r24, 0x0A	; 10
     7a8:	0e 94 a4 01 	call	0x348	; 0x348 <_digitalWrite>
     7ac:	10 92 8b 00 	sts	0x008B, r1	; 0x80008b <__TEXT_REGION_LENGTH__+0x7e008b>
     7b0:	10 92 8a 00 	sts	0x008A, r1	; 0x80008a <__TEXT_REGION_LENGTH__+0x7e008a>
     7b4:	61 cf       	rjmp	.-318    	; 0x678 <_analogWrite+0x26>
     7b6:	8f 7d       	andi	r24, 0xDF	; 223
     7b8:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     7bc:	60 91 0e 01 	lds	r22, 0x010E	; 0x80010e <_HIGH>
     7c0:	8a e0       	ldi	r24, 0x0A	; 10
     7c2:	0e 94 a4 01 	call	0x348	; 0x348 <_digitalWrite>
     7c6:	10 92 8b 00 	sts	0x008B, r1	; 0x80008b <__TEXT_REGION_LENGTH__+0x7e008b>
     7ca:	10 92 8a 00 	sts	0x008A, r1	; 0x80008a <__TEXT_REGION_LENGTH__+0x7e008a>
     7ce:	54 cf       	rjmp	.-344    	; 0x678 <_analogWrite+0x26>
     7d0:	8f 7d       	andi	r24, 0xDF	; 223
     7d2:	84 bd       	out	0x24, r24	; 36
     7d4:	60 91 0e 01 	lds	r22, 0x010E	; 0x80010e <_HIGH>
     7d8:	85 e0       	ldi	r24, 0x05	; 5
     7da:	0e 94 a4 01 	call	0x348	; 0x348 <_digitalWrite>
     7de:	18 bc       	out	0x28, r1	; 40
     7e0:	4b cf       	rjmp	.-362    	; 0x678 <_analogWrite+0x26>
     7e2:	8f 7d       	andi	r24, 0xDF	; 223
     7e4:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     7e8:	60 91 0e 01 	lds	r22, 0x010E	; 0x80010e <_HIGH>
     7ec:	83 e0       	ldi	r24, 0x03	; 3
     7ee:	0e 94 a4 01 	call	0x348	; 0x348 <_digitalWrite>
     7f2:	10 92 b4 00 	sts	0x00B4, r1	; 0x8000b4 <__TEXT_REGION_LENGTH__+0x7e00b4>
     7f6:	40 cf       	rjmp	.-384    	; 0x678 <_analogWrite+0x26>
     7f8:	8f 77       	andi	r24, 0x7F	; 127
     7fa:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     7fe:	60 91 0e 01 	lds	r22, 0x010E	; 0x80010e <_HIGH>
     802:	89 e0       	ldi	r24, 0x09	; 9
     804:	0e 94 a4 01 	call	0x348	; 0x348 <_digitalWrite>
     808:	10 92 89 00 	sts	0x0089, r1	; 0x800089 <__TEXT_REGION_LENGTH__+0x7e0089>
     80c:	10 92 88 00 	sts	0x0088, r1	; 0x800088 <__TEXT_REGION_LENGTH__+0x7e0088>
     810:	33 cf       	rjmp	.-410    	; 0x678 <_analogWrite+0x26>
     812:	8f 77       	andi	r24, 0x7F	; 127
     814:	84 bd       	out	0x24, r24	; 36
     816:	60 91 0e 01 	lds	r22, 0x010E	; 0x80010e <_HIGH>
     81a:	86 e0       	ldi	r24, 0x06	; 6
     81c:	0e 94 a4 01 	call	0x348	; 0x348 <_digitalWrite>
     820:	17 bc       	out	0x27, r1	; 39
     822:	2a cf       	rjmp	.-428    	; 0x678 <_analogWrite+0x26>
     824:	8f 77       	andi	r24, 0x7F	; 127
     826:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     82a:	60 91 0e 01 	lds	r22, 0x010E	; 0x80010e <_HIGH>
     82e:	8b e0       	ldi	r24, 0x0B	; 11
     830:	0e 94 a4 01 	call	0x348	; 0x348 <_digitalWrite>
     834:	10 92 b3 00 	sts	0x00B3, r1	; 0x8000b3 <__TEXT_REGION_LENGTH__+0x7e00b3>
     838:	1f cf       	rjmp	.-450    	; 0x678 <_analogWrite+0x26>

0000083a <_startupADC>:
     83a:	87 e8       	ldi	r24, 0x87	; 135
     83c:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     840:	8a e0       	ldi	r24, 0x0A	; 10
     842:	90 e0       	ldi	r25, 0x00	; 0
     844:	0e 94 fc 01 	call	0x3f8	; 0x3f8 <_delayMs>
     848:	61 e0       	ldi	r22, 0x01	; 1
     84a:	8d e0       	ldi	r24, 0x0D	; 13
     84c:	0e 94 d4 01 	call	0x3a8	; 0x3a8 <_pinMode>
     850:	60 e0       	ldi	r22, 0x00	; 0
     852:	8d e0       	ldi	r24, 0x0D	; 13
     854:	0c 94 a4 01 	jmp	0x348	; 0x348 <_digitalWrite>

00000858 <_slowAnalogRead>:
     858:	cf 93       	push	r28
     85a:	c8 2f       	mov	r28, r24
     85c:	88 30       	cpi	r24, 0x08	; 8
     85e:	38 f5       	brcc	.+78     	; 0x8ae <_slowAnalogRead+0x56>
     860:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     864:	87 fd       	sbrc	r24, 7
     866:	0f c0       	rjmp	.+30     	; 0x886 <_slowAnalogRead+0x2e>
     868:	87 e8       	ldi	r24, 0x87	; 135
     86a:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     86e:	8a e0       	ldi	r24, 0x0A	; 10
     870:	90 e0       	ldi	r25, 0x00	; 0
     872:	0e 94 fc 01 	call	0x3f8	; 0x3f8 <_delayMs>
     876:	61 e0       	ldi	r22, 0x01	; 1
     878:	8d e0       	ldi	r24, 0x0D	; 13
     87a:	0e 94 d4 01 	call	0x3a8	; 0x3a8 <_pinMode>
     87e:	60 e0       	ldi	r22, 0x00	; 0
     880:	8d e0       	ldi	r24, 0x0D	; 13
     882:	0e 94 a4 01 	call	0x348	; 0x348 <_digitalWrite>
     886:	c0 64       	ori	r28, 0x40	; 64
     888:	c0 93 7c 00 	sts	0x007C, r28	; 0x80007c <__TEXT_REGION_LENGTH__+0x7e007c>
     88c:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     890:	80 64       	ori	r24, 0x40	; 64
     892:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     896:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     89a:	86 fd       	sbrc	r24, 6
     89c:	fc cf       	rjmp	.-8      	; 0x896 <_slowAnalogRead+0x3e>
     89e:	80 91 78 00 	lds	r24, 0x0078	; 0x800078 <__TEXT_REGION_LENGTH__+0x7e0078>
     8a2:	20 91 79 00 	lds	r18, 0x0079	; 0x800079 <__TEXT_REGION_LENGTH__+0x7e0079>
     8a6:	90 e0       	ldi	r25, 0x00	; 0
     8a8:	92 2b       	or	r25, r18
     8aa:	cf 91       	pop	r28
     8ac:	08 95       	ret
     8ae:	80 e0       	ldi	r24, 0x00	; 0
     8b0:	90 e0       	ldi	r25, 0x00	; 0
     8b2:	cf 91       	pop	r28
     8b4:	08 95       	ret

000008b6 <__vector_21>:
     8b6:	1f 92       	push	r1
     8b8:	0f 92       	push	r0
     8ba:	0f b6       	in	r0, 0x3f	; 63
     8bc:	0f 92       	push	r0
     8be:	11 24       	eor	r1, r1
     8c0:	2f 93       	push	r18
     8c2:	3f 93       	push	r19
     8c4:	4f 93       	push	r20
     8c6:	5f 93       	push	r21
     8c8:	6f 93       	push	r22
     8ca:	7f 93       	push	r23
     8cc:	8f 93       	push	r24
     8ce:	9f 93       	push	r25
     8d0:	af 93       	push	r26
     8d2:	bf 93       	push	r27
     8d4:	ef 93       	push	r30
     8d6:	ff 93       	push	r31
     8d8:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     8dc:	87 7f       	andi	r24, 0xF7	; 247
     8de:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     8e2:	e0 91 2e 02 	lds	r30, 0x022E	; 0x80022e <currentCallback>
     8e6:	f0 91 2f 02 	lds	r31, 0x022F	; 0x80022f <currentCallback+0x1>
     8ea:	30 97       	sbiw	r30, 0x00	; 0
     8ec:	59 f0       	breq	.+22     	; 0x904 <__stack+0x5>
     8ee:	80 91 78 00 	lds	r24, 0x0078	; 0x800078 <__TEXT_REGION_LENGTH__+0x7e0078>
     8f2:	20 91 79 00 	lds	r18, 0x0079	; 0x800079 <__TEXT_REGION_LENGTH__+0x7e0079>
     8f6:	90 e0       	ldi	r25, 0x00	; 0
     8f8:	92 2b       	or	r25, r18
     8fa:	09 95       	icall
     8fc:	10 92 2f 02 	sts	0x022F, r1	; 0x80022f <currentCallback+0x1>
     900:	10 92 2e 02 	sts	0x022E, r1	; 0x80022e <currentCallback>
     904:	ff 91       	pop	r31
     906:	ef 91       	pop	r30
     908:	bf 91       	pop	r27
     90a:	af 91       	pop	r26
     90c:	9f 91       	pop	r25
     90e:	8f 91       	pop	r24
     910:	7f 91       	pop	r23
     912:	6f 91       	pop	r22
     914:	5f 91       	pop	r21
     916:	4f 91       	pop	r20
     918:	3f 91       	pop	r19
     91a:	2f 91       	pop	r18
     91c:	0f 90       	pop	r0
     91e:	0f be       	out	0x3f, r0	; 63
     920:	0f 90       	pop	r0
     922:	1f 90       	pop	r1
     924:	18 95       	reti

00000926 <_analogReadAsync>:
     926:	0f 93       	push	r16
     928:	1f 93       	push	r17
     92a:	cf 93       	push	r28
     92c:	df 93       	push	r29
     92e:	c8 2f       	mov	r28, r24
     930:	16 2f       	mov	r17, r22
     932:	d7 2f       	mov	r29, r23
     934:	04 2f       	mov	r16, r20
     936:	88 30       	cpi	r24, 0x08	; 8
     938:	e8 f4       	brcc	.+58     	; 0x974 <_analogReadAsync+0x4e>
     93a:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     93e:	87 fd       	sbrc	r24, 7
     940:	0f c0       	rjmp	.+30     	; 0x960 <_analogReadAsync+0x3a>
     942:	87 e8       	ldi	r24, 0x87	; 135
     944:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     948:	8a e0       	ldi	r24, 0x0A	; 10
     94a:	90 e0       	ldi	r25, 0x00	; 0
     94c:	0e 94 fc 01 	call	0x3f8	; 0x3f8 <_delayMs>
     950:	61 e0       	ldi	r22, 0x01	; 1
     952:	8d e0       	ldi	r24, 0x0D	; 13
     954:	0e 94 d4 01 	call	0x3a8	; 0x3a8 <_pinMode>
     958:	60 e0       	ldi	r22, 0x00	; 0
     95a:	8d e0       	ldi	r24, 0x0D	; 13
     95c:	0e 94 a4 01 	call	0x348	; 0x348 <_digitalWrite>
     960:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     964:	86 fd       	sbrc	r24, 6
     966:	06 c0       	rjmp	.+12     	; 0x974 <_analogReadAsync+0x4e>
     968:	80 91 2e 02 	lds	r24, 0x022E	; 0x80022e <currentCallback>
     96c:	90 91 2f 02 	lds	r25, 0x022F	; 0x80022f <currentCallback+0x1>
     970:	89 2b       	or	r24, r25
     972:	31 f0       	breq	.+12     	; 0x980 <_analogReadAsync+0x5a>
     974:	80 e0       	ldi	r24, 0x00	; 0
     976:	df 91       	pop	r29
     978:	cf 91       	pop	r28
     97a:	1f 91       	pop	r17
     97c:	0f 91       	pop	r16
     97e:	08 95       	ret
     980:	00 23       	and	r16, r16
     982:	59 f0       	breq	.+22     	; 0x99a <_analogReadAsync+0x74>
     984:	81 2f       	mov	r24, r17
     986:	9d 2f       	mov	r25, r29
     988:	97 fd       	sbrc	r25, 7
     98a:	15 c0       	rjmp	.+42     	; 0x9b6 <_analogReadAsync+0x90>
     98c:	95 95       	asr	r25
     98e:	87 95       	ror	r24
     990:	90 93 2f 02 	sts	0x022F, r25	; 0x80022f <currentCallback+0x1>
     994:	80 93 2e 02 	sts	0x022E, r24	; 0x80022e <currentCallback>
     998:	04 c0       	rjmp	.+8      	; 0x9a2 <_analogReadAsync+0x7c>
     99a:	10 93 2e 02 	sts	0x022E, r17	; 0x80022e <currentCallback>
     99e:	d0 93 2f 02 	sts	0x022F, r29	; 0x80022f <currentCallback+0x1>
     9a2:	c0 64       	ori	r28, 0x40	; 64
     9a4:	c0 93 7c 00 	sts	0x007C, r28	; 0x80007c <__TEXT_REGION_LENGTH__+0x7e007c>
     9a8:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     9ac:	88 64       	ori	r24, 0x48	; 72
     9ae:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
     9b2:	81 e0       	ldi	r24, 0x01	; 1
     9b4:	e0 cf       	rjmp	.-64     	; 0x976 <_analogReadAsync+0x50>
     9b6:	01 96       	adiw	r24, 0x01	; 1
     9b8:	e9 cf       	rjmp	.-46     	; 0x98c <_analogReadAsync+0x66>

000009ba <startTimers>:
     9ba:	83 e0       	ldi	r24, 0x03	; 3
     9bc:	84 bd       	out	0x24, r24	; 36
     9be:	85 bd       	out	0x25, r24	; 37
     9c0:	91 e0       	ldi	r25, 0x01	; 1
     9c2:	90 93 80 00 	sts	0x0080, r25	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
     9c6:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
     9ca:	90 93 b0 00 	sts	0x00B0, r25	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
     9ce:	84 e0       	ldi	r24, 0x04	; 4
     9d0:	80 93 b1 00 	sts	0x00B1, r24	; 0x8000b1 <__TEXT_REGION_LENGTH__+0x7e00b1>
     9d4:	ee e6       	ldi	r30, 0x6E	; 110
     9d6:	f0 e0       	ldi	r31, 0x00	; 0
     9d8:	80 81       	ld	r24, Z
     9da:	81 60       	ori	r24, 0x01	; 1
     9dc:	80 83       	st	Z, r24
     9de:	08 95       	ret

000009e0 <__mulsi3>:
     9e0:	ee 27       	eor	r30, r30
     9e2:	ff 27       	eor	r31, r31

000009e4 <__mulsi3_helper>:
     9e4:	aa 27       	eor	r26, r26
     9e6:	bb 27       	eor	r27, r27
     9e8:	08 c0       	rjmp	.+16     	; 0x9fa <__mulsi3_helper+0x16>
     9ea:	a2 0f       	add	r26, r18
     9ec:	b3 1f       	adc	r27, r19
     9ee:	e4 1f       	adc	r30, r20
     9f0:	f5 1f       	adc	r31, r21
     9f2:	22 0f       	add	r18, r18
     9f4:	33 1f       	adc	r19, r19
     9f6:	44 1f       	adc	r20, r20
     9f8:	55 1f       	adc	r21, r21
     9fa:	96 95       	lsr	r25
     9fc:	87 95       	ror	r24
     9fe:	77 95       	ror	r23
     a00:	67 95       	ror	r22
     a02:	98 f3       	brcs	.-26     	; 0x9ea <__mulsi3_helper+0x6>
     a04:	70 40       	sbci	r23, 0x00	; 0
     a06:	a9 f7       	brne	.-22     	; 0x9f2 <__mulsi3_helper+0xe>
     a08:	00 97       	sbiw	r24, 0x00	; 0
     a0a:	99 f7       	brne	.-26     	; 0x9f2 <__mulsi3_helper+0xe>
     a0c:	6a 2f       	mov	r22, r26
     a0e:	7b 2f       	mov	r23, r27
     a10:	8e 2f       	mov	r24, r30
     a12:	9f 2f       	mov	r25, r31
     a14:	08 95       	ret

00000a16 <__udivmodsi4>:
     a16:	a1 e2       	ldi	r26, 0x21	; 33
     a18:	1a 2e       	mov	r1, r26
     a1a:	aa 1b       	sub	r26, r26
     a1c:	bb 1b       	sub	r27, r27
     a1e:	ea 2f       	mov	r30, r26
     a20:	fb 2f       	mov	r31, r27
     a22:	0d c0       	rjmp	.+26     	; 0xa3e <__udivmodsi4_ep>

00000a24 <__udivmodsi4_loop>:
     a24:	aa 1f       	adc	r26, r26
     a26:	bb 1f       	adc	r27, r27
     a28:	ee 1f       	adc	r30, r30
     a2a:	ff 1f       	adc	r31, r31
     a2c:	a2 17       	cp	r26, r18
     a2e:	b3 07       	cpc	r27, r19
     a30:	e4 07       	cpc	r30, r20
     a32:	f5 07       	cpc	r31, r21
     a34:	20 f0       	brcs	.+8      	; 0xa3e <__udivmodsi4_ep>
     a36:	a2 1b       	sub	r26, r18
     a38:	b3 0b       	sbc	r27, r19
     a3a:	e4 0b       	sbc	r30, r20
     a3c:	f5 0b       	sbc	r31, r21

00000a3e <__udivmodsi4_ep>:
     a3e:	66 1f       	adc	r22, r22
     a40:	77 1f       	adc	r23, r23
     a42:	88 1f       	adc	r24, r24
     a44:	99 1f       	adc	r25, r25
     a46:	1a 94       	dec	r1
     a48:	69 f7       	brne	.-38     	; 0xa24 <__udivmodsi4_loop>
     a4a:	60 95       	com	r22
     a4c:	70 95       	com	r23
     a4e:	80 95       	com	r24
     a50:	90 95       	com	r25
     a52:	26 2f       	mov	r18, r22
     a54:	37 2f       	mov	r19, r23
     a56:	48 2f       	mov	r20, r24
     a58:	59 2f       	mov	r21, r25
     a5a:	6a 2f       	mov	r22, r26
     a5c:	7b 2f       	mov	r23, r27
     a5e:	8e 2f       	mov	r24, r30
     a60:	9f 2f       	mov	r25, r31
     a62:	08 95       	ret

00000a64 <__tablejump2__>:
     a64:	ee 0f       	add	r30, r30
     a66:	ff 1f       	adc	r31, r31
     a68:	c8 95       	lpm
     a6a:	0f 92       	push	r0
     a6c:	31 96       	adiw	r30, 0x01	; 1
     a6e:	c8 95       	lpm
     a70:	0f 92       	push	r0
     a72:	08 95       	ret

00000a74 <snprintf>:
     a74:	ae e0       	ldi	r26, 0x0E	; 14
     a76:	b0 e0       	ldi	r27, 0x00	; 0
     a78:	ef e3       	ldi	r30, 0x3F	; 63
     a7a:	f5 e0       	ldi	r31, 0x05	; 5
     a7c:	06 c3       	rjmp	.+1548   	; 0x108a <__prologue_saves__+0x1c>
     a7e:	0d 89       	ldd	r16, Y+21	; 0x15
     a80:	1e 89       	ldd	r17, Y+22	; 0x16
     a82:	8f 89       	ldd	r24, Y+23	; 0x17
     a84:	98 8d       	ldd	r25, Y+24	; 0x18
     a86:	26 e0       	ldi	r18, 0x06	; 6
     a88:	2c 83       	std	Y+4, r18	; 0x04
     a8a:	1a 83       	std	Y+2, r17	; 0x02
     a8c:	09 83       	std	Y+1, r16	; 0x01
     a8e:	97 ff       	sbrs	r25, 7
     a90:	02 c0       	rjmp	.+4      	; 0xa96 <snprintf+0x22>
     a92:	80 e0       	ldi	r24, 0x00	; 0
     a94:	90 e8       	ldi	r25, 0x80	; 128
     a96:	01 97       	sbiw	r24, 0x01	; 1
     a98:	9e 83       	std	Y+6, r25	; 0x06
     a9a:	8d 83       	std	Y+5, r24	; 0x05
     a9c:	4c 2f       	mov	r20, r28
     a9e:	5d 2f       	mov	r21, r29
     aa0:	45 5e       	subi	r20, 0xE5	; 229
     aa2:	5f 4f       	sbci	r21, 0xFF	; 255
     aa4:	69 8d       	ldd	r22, Y+25	; 0x19
     aa6:	7a 8d       	ldd	r23, Y+26	; 0x1a
     aa8:	8c 2f       	mov	r24, r28
     aaa:	9d 2f       	mov	r25, r29
     aac:	01 96       	adiw	r24, 0x01	; 1
     aae:	13 d0       	rcall	.+38     	; 0xad6 <vfprintf>
     ab0:	4d 81       	ldd	r20, Y+5	; 0x05
     ab2:	5e 81       	ldd	r21, Y+6	; 0x06
     ab4:	57 fd       	sbrc	r21, 7
     ab6:	0c c0       	rjmp	.+24     	; 0xad0 <snprintf+0x5c>
     ab8:	2f 81       	ldd	r18, Y+7	; 0x07
     aba:	38 85       	ldd	r19, Y+8	; 0x08
     abc:	42 17       	cp	r20, r18
     abe:	53 07       	cpc	r21, r19
     ac0:	14 f4       	brge	.+4      	; 0xac6 <snprintf+0x52>
     ac2:	24 2f       	mov	r18, r20
     ac4:	35 2f       	mov	r19, r21
     ac6:	02 0f       	add	r16, r18
     ac8:	13 1f       	adc	r17, r19
     aca:	e0 2f       	mov	r30, r16
     acc:	f1 2f       	mov	r31, r17
     ace:	10 82       	st	Z, r1
     ad0:	2e 96       	adiw	r28, 0x0e	; 14
     ad2:	e4 e0       	ldi	r30, 0x04	; 4
     ad4:	f6 c2       	rjmp	.+1516   	; 0x10c2 <__epilogue_restores__+0x1c>

00000ad6 <vfprintf>:
     ad6:	ab e0       	ldi	r26, 0x0B	; 11
     ad8:	b0 e0       	ldi	r27, 0x00	; 0
     ada:	e0 e7       	ldi	r30, 0x70	; 112
     adc:	f5 e0       	ldi	r31, 0x05	; 5
     ade:	c7 c2       	rjmp	.+1422   	; 0x106e <__prologue_saves__>
     ae0:	e8 2e       	mov	r14, r24
     ae2:	f9 2e       	mov	r15, r25
     ae4:	66 2e       	mov	r6, r22
     ae6:	77 2e       	mov	r7, r23
     ae8:	04 2f       	mov	r16, r20
     aea:	15 2f       	mov	r17, r21
     aec:	e8 2f       	mov	r30, r24
     aee:	f9 2f       	mov	r31, r25
     af0:	17 82       	std	Z+7, r1	; 0x07
     af2:	16 82       	std	Z+6, r1	; 0x06
     af4:	83 81       	ldd	r24, Z+3	; 0x03
     af6:	81 ff       	sbrs	r24, 1
     af8:	ff c1       	rjmp	.+1022   	; 0xef8 <vfprintf+0x422>
     afa:	8c 2f       	mov	r24, r28
     afc:	9d 2f       	mov	r25, r29
     afe:	01 96       	adiw	r24, 0x01	; 1
     b00:	a8 2e       	mov	r10, r24
     b02:	b9 2e       	mov	r11, r25
     b04:	ee 2d       	mov	r30, r14
     b06:	ff 2d       	mov	r31, r15
     b08:	93 81       	ldd	r25, Z+3	; 0x03
     b0a:	e6 2d       	mov	r30, r6
     b0c:	f7 2d       	mov	r31, r7
     b0e:	93 fd       	sbrc	r25, 3
     b10:	c8 95       	lpm
     b12:	93 ff       	sbrs	r25, 3
     b14:	00 80       	ld	r0, Z
     b16:	31 96       	adiw	r30, 0x01	; 1
     b18:	80 2d       	mov	r24, r0
     b1a:	6e 2e       	mov	r6, r30
     b1c:	7f 2e       	mov	r7, r31
     b1e:	88 23       	and	r24, r24
     b20:	09 f4       	brne	.+2      	; 0xb24 <vfprintf+0x4e>
     b22:	48 c1       	rjmp	.+656    	; 0xdb4 <vfprintf+0x2de>
     b24:	85 32       	cpi	r24, 0x25	; 37
     b26:	51 f4       	brne	.+20     	; 0xb3c <vfprintf+0x66>
     b28:	93 fd       	sbrc	r25, 3
     b2a:	c8 95       	lpm
     b2c:	93 ff       	sbrs	r25, 3
     b2e:	00 80       	ld	r0, Z
     b30:	31 96       	adiw	r30, 0x01	; 1
     b32:	80 2d       	mov	r24, r0
     b34:	6e 2e       	mov	r6, r30
     b36:	7f 2e       	mov	r7, r31
     b38:	85 32       	cpi	r24, 0x25	; 37
     b3a:	29 f4       	brne	.+10     	; 0xb46 <vfprintf+0x70>
     b3c:	6e 2d       	mov	r22, r14
     b3e:	7f 2d       	mov	r23, r15
     b40:	90 e0       	ldi	r25, 0x00	; 0
     b42:	f6 d1       	rcall	.+1004   	; 0xf30 <fputc>
     b44:	df cf       	rjmp	.-66     	; 0xb04 <vfprintf+0x2e>
     b46:	91 2c       	mov	r9, r1
     b48:	21 2c       	mov	r2, r1
     b4a:	31 2c       	mov	r3, r1
     b4c:	ff e1       	ldi	r31, 0x1F	; 31
     b4e:	f3 15       	cp	r31, r3
     b50:	38 f0       	brcs	.+14     	; 0xb60 <vfprintf+0x8a>
     b52:	8b 32       	cpi	r24, 0x2B	; 43
     b54:	39 f1       	breq	.+78     	; 0xba4 <vfprintf+0xce>
     b56:	90 f4       	brcc	.+36     	; 0xb7c <vfprintf+0xa6>
     b58:	80 32       	cpi	r24, 0x20	; 32
     b5a:	39 f1       	breq	.+78     	; 0xbaa <vfprintf+0xd4>
     b5c:	83 32       	cpi	r24, 0x23	; 35
     b5e:	69 f1       	breq	.+90     	; 0xbba <vfprintf+0xe4>
     b60:	37 fc       	sbrc	r3, 7
     b62:	45 c0       	rjmp	.+138    	; 0xbee <vfprintf+0x118>
     b64:	20 ed       	ldi	r18, 0xD0	; 208
     b66:	28 0f       	add	r18, r24
     b68:	2a 30       	cpi	r18, 0x0A	; 10
     b6a:	98 f5       	brcc	.+102    	; 0xbd2 <vfprintf+0xfc>
     b6c:	36 fe       	sbrs	r3, 6
     b6e:	28 c0       	rjmp	.+80     	; 0xbc0 <vfprintf+0xea>
     b70:	89 2d       	mov	r24, r9
     b72:	6a e0       	ldi	r22, 0x0A	; 10
     b74:	73 d2       	rcall	.+1254   	; 0x105c <__mulqi3>
     b76:	92 2e       	mov	r9, r18
     b78:	98 0e       	add	r9, r24
     b7a:	07 c0       	rjmp	.+14     	; 0xb8a <vfprintf+0xb4>
     b7c:	8d 32       	cpi	r24, 0x2D	; 45
     b7e:	c9 f0       	breq	.+50     	; 0xbb2 <vfprintf+0xdc>
     b80:	80 33       	cpi	r24, 0x30	; 48
     b82:	71 f7       	brne	.-36     	; 0xb60 <vfprintf+0x8a>
     b84:	23 2d       	mov	r18, r3
     b86:	21 60       	ori	r18, 0x01	; 1
     b88:	32 2e       	mov	r3, r18
     b8a:	e6 2d       	mov	r30, r6
     b8c:	f7 2d       	mov	r31, r7
     b8e:	93 fd       	sbrc	r25, 3
     b90:	c8 95       	lpm
     b92:	93 ff       	sbrs	r25, 3
     b94:	00 80       	ld	r0, Z
     b96:	31 96       	adiw	r30, 0x01	; 1
     b98:	80 2d       	mov	r24, r0
     b9a:	6e 2e       	mov	r6, r30
     b9c:	7f 2e       	mov	r7, r31
     b9e:	81 11       	cpse	r24, r1
     ba0:	d5 cf       	rjmp	.-86     	; 0xb4c <vfprintf+0x76>
     ba2:	25 c0       	rjmp	.+74     	; 0xbee <vfprintf+0x118>
     ba4:	83 2d       	mov	r24, r3
     ba6:	82 60       	ori	r24, 0x02	; 2
     ba8:	38 2e       	mov	r3, r24
     baa:	e3 2d       	mov	r30, r3
     bac:	e4 60       	ori	r30, 0x04	; 4
     bae:	3e 2e       	mov	r3, r30
     bb0:	ec cf       	rjmp	.-40     	; 0xb8a <vfprintf+0xb4>
     bb2:	f3 2d       	mov	r31, r3
     bb4:	f8 60       	ori	r31, 0x08	; 8
     bb6:	3f 2e       	mov	r3, r31
     bb8:	e8 cf       	rjmp	.-48     	; 0xb8a <vfprintf+0xb4>
     bba:	23 2d       	mov	r18, r3
     bbc:	20 61       	ori	r18, 0x10	; 16
     bbe:	e4 cf       	rjmp	.-56     	; 0xb88 <vfprintf+0xb2>
     bc0:	82 2d       	mov	r24, r2
     bc2:	6a e0       	ldi	r22, 0x0A	; 10
     bc4:	4b d2       	rcall	.+1174   	; 0x105c <__mulqi3>
     bc6:	22 2e       	mov	r2, r18
     bc8:	28 0e       	add	r2, r24
     bca:	83 2d       	mov	r24, r3
     bcc:	80 62       	ori	r24, 0x20	; 32
     bce:	38 2e       	mov	r3, r24
     bd0:	dc cf       	rjmp	.-72     	; 0xb8a <vfprintf+0xb4>
     bd2:	8e 32       	cpi	r24, 0x2E	; 46
     bd4:	29 f4       	brne	.+10     	; 0xbe0 <vfprintf+0x10a>
     bd6:	36 fc       	sbrc	r3, 6
     bd8:	ed c0       	rjmp	.+474    	; 0xdb4 <vfprintf+0x2de>
     bda:	e3 2d       	mov	r30, r3
     bdc:	e0 64       	ori	r30, 0x40	; 64
     bde:	e7 cf       	rjmp	.-50     	; 0xbae <vfprintf+0xd8>
     be0:	8c 36       	cpi	r24, 0x6C	; 108
     be2:	19 f4       	brne	.+6      	; 0xbea <vfprintf+0x114>
     be4:	f3 2d       	mov	r31, r3
     be6:	f0 68       	ori	r31, 0x80	; 128
     be8:	e6 cf       	rjmp	.-52     	; 0xbb6 <vfprintf+0xe0>
     bea:	88 36       	cpi	r24, 0x68	; 104
     bec:	71 f2       	breq	.-100    	; 0xb8a <vfprintf+0xb4>
     bee:	98 2f       	mov	r25, r24
     bf0:	9f 7d       	andi	r25, 0xDF	; 223
     bf2:	95 54       	subi	r25, 0x45	; 69
     bf4:	93 30       	cpi	r25, 0x03	; 3
     bf6:	08 f1       	brcs	.+66     	; 0xc3a <vfprintf+0x164>
     bf8:	83 36       	cpi	r24, 0x63	; 99
     bfa:	09 f4       	brne	.+2      	; 0xbfe <vfprintf+0x128>
     bfc:	3f c0       	rjmp	.+126    	; 0xc7c <vfprintf+0x1a6>
     bfe:	83 37       	cpi	r24, 0x73	; 115
     c00:	09 f4       	brne	.+2      	; 0xc04 <vfprintf+0x12e>
     c02:	43 c0       	rjmp	.+134    	; 0xc8a <vfprintf+0x1b4>
     c04:	83 35       	cpi	r24, 0x53	; 83
     c06:	09 f0       	breq	.+2      	; 0xc0a <vfprintf+0x134>
     c08:	76 c0       	rjmp	.+236    	; 0xcf6 <vfprintf+0x220>
     c0a:	40 2e       	mov	r4, r16
     c0c:	51 2e       	mov	r5, r17
     c0e:	22 e0       	ldi	r18, 0x02	; 2
     c10:	42 0e       	add	r4, r18
     c12:	51 1c       	adc	r5, r1
     c14:	e0 2f       	mov	r30, r16
     c16:	f1 2f       	mov	r31, r17
     c18:	c0 80       	ld	r12, Z
     c1a:	d1 80       	ldd	r13, Z+1	; 0x01
     c1c:	36 fe       	sbrs	r3, 6
     c1e:	4d c0       	rjmp	.+154    	; 0xcba <vfprintf+0x1e4>
     c20:	69 2d       	mov	r22, r9
     c22:	70 e0       	ldi	r23, 0x00	; 0
     c24:	8c 2d       	mov	r24, r12
     c26:	9d 2d       	mov	r25, r13
     c28:	6a d1       	rcall	.+724    	; 0xefe <strnlen_P>
     c2a:	88 2e       	mov	r8, r24
     c2c:	99 2e       	mov	r9, r25
     c2e:	f3 2d       	mov	r31, r3
     c30:	f0 68       	ori	r31, 0x80	; 128
     c32:	3f 2e       	mov	r3, r31
     c34:	04 2d       	mov	r16, r4
     c36:	15 2d       	mov	r17, r5
     c38:	0c c0       	rjmp	.+24     	; 0xc52 <vfprintf+0x17c>
     c3a:	0c 5f       	subi	r16, 0xFC	; 252
     c3c:	1f 4f       	sbci	r17, 0xFF	; 255
     c3e:	2f e3       	ldi	r18, 0x3F	; 63
     c40:	29 83       	std	Y+1, r18	; 0x01
     c42:	88 24       	eor	r8, r8
     c44:	83 94       	inc	r8
     c46:	91 2c       	mov	r9, r1
     c48:	ca 2c       	mov	r12, r10
     c4a:	db 2c       	mov	r13, r11
     c4c:	f3 2d       	mov	r31, r3
     c4e:	ff 77       	andi	r31, 0x7F	; 127
     c50:	3f 2e       	mov	r3, r31
     c52:	33 fc       	sbrc	r3, 3
     c54:	05 c0       	rjmp	.+10     	; 0xc60 <vfprintf+0x18a>
     c56:	82 2d       	mov	r24, r2
     c58:	90 e0       	ldi	r25, 0x00	; 0
     c5a:	88 16       	cp	r8, r24
     c5c:	99 06       	cpc	r9, r25
     c5e:	80 f1       	brcs	.+96     	; 0xcc0 <vfprintf+0x1ea>
     c60:	52 2c       	mov	r5, r2
     c62:	81 14       	cp	r8, r1
     c64:	91 04       	cpc	r9, r1
     c66:	99 f5       	brne	.+102    	; 0xcce <vfprintf+0x1f8>
     c68:	55 20       	and	r5, r5
     c6a:	09 f4       	brne	.+2      	; 0xc6e <vfprintf+0x198>
     c6c:	4b cf       	rjmp	.-362    	; 0xb04 <vfprintf+0x2e>
     c6e:	6e 2d       	mov	r22, r14
     c70:	7f 2d       	mov	r23, r15
     c72:	80 e2       	ldi	r24, 0x20	; 32
     c74:	90 e0       	ldi	r25, 0x00	; 0
     c76:	5c d1       	rcall	.+696    	; 0xf30 <fputc>
     c78:	5a 94       	dec	r5
     c7a:	f6 cf       	rjmp	.-20     	; 0xc68 <vfprintf+0x192>
     c7c:	e0 2f       	mov	r30, r16
     c7e:	f1 2f       	mov	r31, r17
     c80:	80 81       	ld	r24, Z
     c82:	89 83       	std	Y+1, r24	; 0x01
     c84:	0e 5f       	subi	r16, 0xFE	; 254
     c86:	1f 4f       	sbci	r17, 0xFF	; 255
     c88:	dc cf       	rjmp	.-72     	; 0xc42 <vfprintf+0x16c>
     c8a:	40 2e       	mov	r4, r16
     c8c:	51 2e       	mov	r5, r17
     c8e:	f2 e0       	ldi	r31, 0x02	; 2
     c90:	4f 0e       	add	r4, r31
     c92:	51 1c       	adc	r5, r1
     c94:	e0 2f       	mov	r30, r16
     c96:	f1 2f       	mov	r31, r17
     c98:	c0 80       	ld	r12, Z
     c9a:	d1 80       	ldd	r13, Z+1	; 0x01
     c9c:	36 fe       	sbrs	r3, 6
     c9e:	0a c0       	rjmp	.+20     	; 0xcb4 <vfprintf+0x1de>
     ca0:	69 2d       	mov	r22, r9
     ca2:	70 e0       	ldi	r23, 0x00	; 0
     ca4:	8c 2d       	mov	r24, r12
     ca6:	9d 2d       	mov	r25, r13
     ca8:	37 d1       	rcall	.+622    	; 0xf18 <strnlen>
     caa:	88 2e       	mov	r8, r24
     cac:	99 2e       	mov	r9, r25
     cae:	04 2d       	mov	r16, r4
     cb0:	15 2d       	mov	r17, r5
     cb2:	cc cf       	rjmp	.-104    	; 0xc4c <vfprintf+0x176>
     cb4:	6f ef       	ldi	r22, 0xFF	; 255
     cb6:	7f ef       	ldi	r23, 0xFF	; 255
     cb8:	f5 cf       	rjmp	.-22     	; 0xca4 <vfprintf+0x1ce>
     cba:	6f ef       	ldi	r22, 0xFF	; 255
     cbc:	7f ef       	ldi	r23, 0xFF	; 255
     cbe:	b2 cf       	rjmp	.-156    	; 0xc24 <vfprintf+0x14e>
     cc0:	6e 2d       	mov	r22, r14
     cc2:	7f 2d       	mov	r23, r15
     cc4:	80 e2       	ldi	r24, 0x20	; 32
     cc6:	90 e0       	ldi	r25, 0x00	; 0
     cc8:	33 d1       	rcall	.+614    	; 0xf30 <fputc>
     cca:	2a 94       	dec	r2
     ccc:	c4 cf       	rjmp	.-120    	; 0xc56 <vfprintf+0x180>
     cce:	ec 2d       	mov	r30, r12
     cd0:	fd 2d       	mov	r31, r13
     cd2:	37 fc       	sbrc	r3, 7
     cd4:	c8 95       	lpm
     cd6:	37 fe       	sbrs	r3, 7
     cd8:	00 80       	ld	r0, Z
     cda:	31 96       	adiw	r30, 0x01	; 1
     cdc:	80 2d       	mov	r24, r0
     cde:	ce 2e       	mov	r12, r30
     ce0:	df 2e       	mov	r13, r31
     ce2:	6e 2d       	mov	r22, r14
     ce4:	7f 2d       	mov	r23, r15
     ce6:	90 e0       	ldi	r25, 0x00	; 0
     ce8:	23 d1       	rcall	.+582    	; 0xf30 <fputc>
     cea:	51 10       	cpse	r5, r1
     cec:	5a 94       	dec	r5
     cee:	21 e0       	ldi	r18, 0x01	; 1
     cf0:	82 1a       	sub	r8, r18
     cf2:	91 08       	sbc	r9, r1
     cf4:	b6 cf       	rjmp	.-148    	; 0xc62 <vfprintf+0x18c>
     cf6:	84 36       	cpi	r24, 0x64	; 100
     cf8:	11 f0       	breq	.+4      	; 0xcfe <vfprintf+0x228>
     cfa:	89 36       	cpi	r24, 0x69	; 105
     cfc:	c9 f5       	brne	.+114    	; 0xd70 <vfprintf+0x29a>
     cfe:	e0 2f       	mov	r30, r16
     d00:	f1 2f       	mov	r31, r17
     d02:	37 fe       	sbrs	r3, 7
     d04:	2c c0       	rjmp	.+88     	; 0xd5e <vfprintf+0x288>
     d06:	60 81       	ld	r22, Z
     d08:	71 81       	ldd	r23, Z+1	; 0x01
     d0a:	82 81       	ldd	r24, Z+2	; 0x02
     d0c:	93 81       	ldd	r25, Z+3	; 0x03
     d0e:	0c 5f       	subi	r16, 0xFC	; 252
     d10:	1f 4f       	sbci	r17, 0xFF	; 255
     d12:	f3 2d       	mov	r31, r3
     d14:	ff 76       	andi	r31, 0x6F	; 111
     d16:	3f 2e       	mov	r3, r31
     d18:	97 ff       	sbrs	r25, 7
     d1a:	09 c0       	rjmp	.+18     	; 0xd2e <vfprintf+0x258>
     d1c:	90 95       	com	r25
     d1e:	80 95       	com	r24
     d20:	70 95       	com	r23
     d22:	61 95       	neg	r22
     d24:	7f 4f       	sbci	r23, 0xFF	; 255
     d26:	8f 4f       	sbci	r24, 0xFF	; 255
     d28:	9f 4f       	sbci	r25, 0xFF	; 255
     d2a:	f0 68       	ori	r31, 0x80	; 128
     d2c:	3f 2e       	mov	r3, r31
     d2e:	2a e0       	ldi	r18, 0x0A	; 10
     d30:	30 e0       	ldi	r19, 0x00	; 0
     d32:	4a 2d       	mov	r20, r10
     d34:	5b 2d       	mov	r21, r11
     d36:	2e d1       	rcall	.+604    	; 0xf94 <__ultoa_invert>
     d38:	c8 2e       	mov	r12, r24
     d3a:	ca 18       	sub	r12, r10
     d3c:	36 fe       	sbrs	r3, 6
     d3e:	63 c0       	rjmp	.+198    	; 0xe06 <vfprintf+0x330>
     d40:	23 2d       	mov	r18, r3
     d42:	2e 7f       	andi	r18, 0xFE	; 254
     d44:	82 2e       	mov	r8, r18
     d46:	c9 14       	cp	r12, r9
     d48:	08 f0       	brcs	.+2      	; 0xd4c <vfprintf+0x276>
     d4a:	9f c0       	rjmp	.+318    	; 0xe8a <vfprintf+0x3b4>
     d4c:	34 fe       	sbrs	r3, 4
     d4e:	05 c0       	rjmp	.+10     	; 0xd5a <vfprintf+0x284>
     d50:	32 fc       	sbrc	r3, 2
     d52:	03 c0       	rjmp	.+6      	; 0xd5a <vfprintf+0x284>
     d54:	83 2d       	mov	r24, r3
     d56:	8e 7e       	andi	r24, 0xEE	; 238
     d58:	88 2e       	mov	r8, r24
     d5a:	d9 2c       	mov	r13, r9
     d5c:	56 c0       	rjmp	.+172    	; 0xe0a <vfprintf+0x334>
     d5e:	60 81       	ld	r22, Z
     d60:	71 81       	ldd	r23, Z+1	; 0x01
     d62:	07 2e       	mov	r0, r23
     d64:	00 0c       	add	r0, r0
     d66:	88 0b       	sbc	r24, r24
     d68:	99 0b       	sbc	r25, r25
     d6a:	0e 5f       	subi	r16, 0xFE	; 254
     d6c:	1f 4f       	sbci	r17, 0xFF	; 255
     d6e:	d1 cf       	rjmp	.-94     	; 0xd12 <vfprintf+0x23c>
     d70:	85 37       	cpi	r24, 0x75	; 117
     d72:	c1 f4       	brne	.+48     	; 0xda4 <vfprintf+0x2ce>
     d74:	23 2d       	mov	r18, r3
     d76:	2f 7e       	andi	r18, 0xEF	; 239
     d78:	d2 2e       	mov	r13, r18
     d7a:	2a e0       	ldi	r18, 0x0A	; 10
     d7c:	30 e0       	ldi	r19, 0x00	; 0
     d7e:	e0 2f       	mov	r30, r16
     d80:	f1 2f       	mov	r31, r17
     d82:	d7 fe       	sbrs	r13, 7
     d84:	39 c0       	rjmp	.+114    	; 0xdf8 <vfprintf+0x322>
     d86:	60 81       	ld	r22, Z
     d88:	71 81       	ldd	r23, Z+1	; 0x01
     d8a:	82 81       	ldd	r24, Z+2	; 0x02
     d8c:	93 81       	ldd	r25, Z+3	; 0x03
     d8e:	0c 5f       	subi	r16, 0xFC	; 252
     d90:	1f 4f       	sbci	r17, 0xFF	; 255
     d92:	4a 2d       	mov	r20, r10
     d94:	5b 2d       	mov	r21, r11
     d96:	fe d0       	rcall	.+508    	; 0xf94 <__ultoa_invert>
     d98:	c8 2e       	mov	r12, r24
     d9a:	ca 18       	sub	r12, r10
     d9c:	fd 2d       	mov	r31, r13
     d9e:	ff 77       	andi	r31, 0x7F	; 127
     da0:	3f 2e       	mov	r3, r31
     da2:	cc cf       	rjmp	.-104    	; 0xd3c <vfprintf+0x266>
     da4:	93 2d       	mov	r25, r3
     da6:	99 7f       	andi	r25, 0xF9	; 249
     da8:	d9 2e       	mov	r13, r25
     daa:	8f 36       	cpi	r24, 0x6F	; 111
     dac:	11 f1       	breq	.+68     	; 0xdf2 <vfprintf+0x31c>
     dae:	48 f4       	brcc	.+18     	; 0xdc2 <vfprintf+0x2ec>
     db0:	88 35       	cpi	r24, 0x58	; 88
     db2:	b9 f0       	breq	.+46     	; 0xde2 <vfprintf+0x30c>
     db4:	ee 2d       	mov	r30, r14
     db6:	ff 2d       	mov	r31, r15
     db8:	86 81       	ldd	r24, Z+6	; 0x06
     dba:	97 81       	ldd	r25, Z+7	; 0x07
     dbc:	2b 96       	adiw	r28, 0x0b	; 11
     dbe:	e2 e1       	ldi	r30, 0x12	; 18
     dc0:	72 c1       	rjmp	.+740    	; 0x10a6 <__epilogue_restores__>
     dc2:	80 37       	cpi	r24, 0x70	; 112
     dc4:	51 f0       	breq	.+20     	; 0xdda <vfprintf+0x304>
     dc6:	88 37       	cpi	r24, 0x78	; 120
     dc8:	a9 f7       	brne	.-22     	; 0xdb4 <vfprintf+0x2de>
     dca:	d4 fe       	sbrs	r13, 4
     dcc:	03 c0       	rjmp	.+6      	; 0xdd4 <vfprintf+0x2fe>
     dce:	fd 2d       	mov	r31, r13
     dd0:	f4 60       	ori	r31, 0x04	; 4
     dd2:	df 2e       	mov	r13, r31
     dd4:	20 e1       	ldi	r18, 0x10	; 16
     dd6:	30 e0       	ldi	r19, 0x00	; 0
     dd8:	d2 cf       	rjmp	.-92     	; 0xd7e <vfprintf+0x2a8>
     dda:	e9 2f       	mov	r30, r25
     ddc:	e0 61       	ori	r30, 0x10	; 16
     dde:	de 2e       	mov	r13, r30
     de0:	f4 cf       	rjmp	.-24     	; 0xdca <vfprintf+0x2f4>
     de2:	34 fe       	sbrs	r3, 4
     de4:	03 c0       	rjmp	.+6      	; 0xdec <vfprintf+0x316>
     de6:	29 2f       	mov	r18, r25
     de8:	26 60       	ori	r18, 0x06	; 6
     dea:	d2 2e       	mov	r13, r18
     dec:	20 e1       	ldi	r18, 0x10	; 16
     dee:	32 e0       	ldi	r19, 0x02	; 2
     df0:	c6 cf       	rjmp	.-116    	; 0xd7e <vfprintf+0x2a8>
     df2:	28 e0       	ldi	r18, 0x08	; 8
     df4:	30 e0       	ldi	r19, 0x00	; 0
     df6:	c3 cf       	rjmp	.-122    	; 0xd7e <vfprintf+0x2a8>
     df8:	60 81       	ld	r22, Z
     dfa:	71 81       	ldd	r23, Z+1	; 0x01
     dfc:	80 e0       	ldi	r24, 0x00	; 0
     dfe:	90 e0       	ldi	r25, 0x00	; 0
     e00:	0e 5f       	subi	r16, 0xFE	; 254
     e02:	1f 4f       	sbci	r17, 0xFF	; 255
     e04:	c6 cf       	rjmp	.-116    	; 0xd92 <vfprintf+0x2bc>
     e06:	dc 2c       	mov	r13, r12
     e08:	83 2c       	mov	r8, r3
     e0a:	84 fe       	sbrs	r8, 4
     e0c:	47 c0       	rjmp	.+142    	; 0xe9c <vfprintf+0x3c6>
     e0e:	ec 2f       	mov	r30, r28
     e10:	fd 2f       	mov	r31, r29
     e12:	ec 0d       	add	r30, r12
     e14:	f1 1d       	adc	r31, r1
     e16:	80 81       	ld	r24, Z
     e18:	80 33       	cpi	r24, 0x30	; 48
     e1a:	c9 f5       	brne	.+114    	; 0xe8e <vfprintf+0x3b8>
     e1c:	98 2d       	mov	r25, r8
     e1e:	99 7e       	andi	r25, 0xE9	; 233
     e20:	89 2e       	mov	r8, r25
     e22:	e8 2d       	mov	r30, r8
     e24:	e8 70       	andi	r30, 0x08	; 8
     e26:	5e 2e       	mov	r5, r30
     e28:	83 fc       	sbrc	r8, 3
     e2a:	47 c0       	rjmp	.+142    	; 0xeba <vfprintf+0x3e4>
     e2c:	80 fe       	sbrs	r8, 0
     e2e:	41 c0       	rjmp	.+130    	; 0xeb2 <vfprintf+0x3dc>
     e30:	d2 14       	cp	r13, r2
     e32:	08 f0       	brcs	.+2      	; 0xe36 <vfprintf+0x360>
     e34:	47 c0       	rjmp	.+142    	; 0xec4 <vfprintf+0x3ee>
     e36:	2c 0c       	add	r2, r12
     e38:	92 2c       	mov	r9, r2
     e3a:	9d 18       	sub	r9, r13
     e3c:	84 fe       	sbrs	r8, 4
     e3e:	47 c0       	rjmp	.+142    	; 0xece <vfprintf+0x3f8>
     e40:	6e 2d       	mov	r22, r14
     e42:	7f 2d       	mov	r23, r15
     e44:	80 e3       	ldi	r24, 0x30	; 48
     e46:	90 e0       	ldi	r25, 0x00	; 0
     e48:	73 d0       	rcall	.+230    	; 0xf30 <fputc>
     e4a:	82 fe       	sbrs	r8, 2
     e4c:	07 c0       	rjmp	.+14     	; 0xe5c <vfprintf+0x386>
     e4e:	81 fc       	sbrc	r8, 1
     e50:	3b c0       	rjmp	.+118    	; 0xec8 <vfprintf+0x3f2>
     e52:	88 e7       	ldi	r24, 0x78	; 120
     e54:	90 e0       	ldi	r25, 0x00	; 0
     e56:	6e 2d       	mov	r22, r14
     e58:	7f 2d       	mov	r23, r15
     e5a:	6a d0       	rcall	.+212    	; 0xf30 <fputc>
     e5c:	c9 14       	cp	r12, r9
     e5e:	08 f4       	brcc	.+2      	; 0xe62 <vfprintf+0x38c>
     e60:	44 c0       	rjmp	.+136    	; 0xeea <vfprintf+0x414>
     e62:	ca 94       	dec	r12
     e64:	d1 2c       	mov	r13, r1
     e66:	ff ef       	ldi	r31, 0xFF	; 255
     e68:	cf 1a       	sub	r12, r31
     e6a:	df 0a       	sbc	r13, r31
     e6c:	ca 0c       	add	r12, r10
     e6e:	db 1c       	adc	r13, r11
     e70:	ec 2d       	mov	r30, r12
     e72:	fd 2d       	mov	r31, r13
     e74:	82 91       	ld	r24, -Z
     e76:	ce 2e       	mov	r12, r30
     e78:	df 2e       	mov	r13, r31
     e7a:	6e 2d       	mov	r22, r14
     e7c:	7f 2d       	mov	r23, r15
     e7e:	90 e0       	ldi	r25, 0x00	; 0
     e80:	57 d0       	rcall	.+174    	; 0xf30 <fputc>
     e82:	ac 14       	cp	r10, r12
     e84:	bd 04       	cpc	r11, r13
     e86:	a1 f7       	brne	.-24     	; 0xe70 <vfprintf+0x39a>
     e88:	ef ce       	rjmp	.-546    	; 0xc68 <vfprintf+0x192>
     e8a:	dc 2c       	mov	r13, r12
     e8c:	be cf       	rjmp	.-132    	; 0xe0a <vfprintf+0x334>
     e8e:	82 fc       	sbrc	r8, 2
     e90:	02 c0       	rjmp	.+4      	; 0xe96 <vfprintf+0x3c0>
     e92:	d3 94       	inc	r13
     e94:	c6 cf       	rjmp	.-116    	; 0xe22 <vfprintf+0x34c>
     e96:	d3 94       	inc	r13
     e98:	d3 94       	inc	r13
     e9a:	c3 cf       	rjmp	.-122    	; 0xe22 <vfprintf+0x34c>
     e9c:	88 2d       	mov	r24, r8
     e9e:	86 78       	andi	r24, 0x86	; 134
     ea0:	09 f4       	brne	.+2      	; 0xea4 <vfprintf+0x3ce>
     ea2:	bf cf       	rjmp	.-130    	; 0xe22 <vfprintf+0x34c>
     ea4:	f6 cf       	rjmp	.-20     	; 0xe92 <vfprintf+0x3bc>
     ea6:	6e 2d       	mov	r22, r14
     ea8:	7f 2d       	mov	r23, r15
     eaa:	80 e2       	ldi	r24, 0x20	; 32
     eac:	90 e0       	ldi	r25, 0x00	; 0
     eae:	40 d0       	rcall	.+128    	; 0xf30 <fputc>
     eb0:	d3 94       	inc	r13
     eb2:	d2 14       	cp	r13, r2
     eb4:	c0 f3       	brcs	.-16     	; 0xea6 <vfprintf+0x3d0>
     eb6:	51 2c       	mov	r5, r1
     eb8:	c1 cf       	rjmp	.-126    	; 0xe3c <vfprintf+0x366>
     eba:	d2 14       	cp	r13, r2
     ebc:	e0 f7       	brcc	.-8      	; 0xeb6 <vfprintf+0x3e0>
     ebe:	52 2c       	mov	r5, r2
     ec0:	5d 18       	sub	r5, r13
     ec2:	bc cf       	rjmp	.-136    	; 0xe3c <vfprintf+0x366>
     ec4:	9c 2c       	mov	r9, r12
     ec6:	ba cf       	rjmp	.-140    	; 0xe3c <vfprintf+0x366>
     ec8:	88 e5       	ldi	r24, 0x58	; 88
     eca:	90 e0       	ldi	r25, 0x00	; 0
     ecc:	c4 cf       	rjmp	.-120    	; 0xe56 <vfprintf+0x380>
     ece:	88 2d       	mov	r24, r8
     ed0:	86 78       	andi	r24, 0x86	; 134
     ed2:	21 f2       	breq	.-120    	; 0xe5c <vfprintf+0x386>
     ed4:	81 fe       	sbrs	r8, 1
     ed6:	07 c0       	rjmp	.+14     	; 0xee6 <vfprintf+0x410>
     ed8:	8b e2       	ldi	r24, 0x2B	; 43
     eda:	87 fc       	sbrc	r8, 7
     edc:	8d e2       	ldi	r24, 0x2D	; 45
     ede:	6e 2d       	mov	r22, r14
     ee0:	7f 2d       	mov	r23, r15
     ee2:	90 e0       	ldi	r25, 0x00	; 0
     ee4:	ba cf       	rjmp	.-140    	; 0xe5a <vfprintf+0x384>
     ee6:	80 e2       	ldi	r24, 0x20	; 32
     ee8:	f8 cf       	rjmp	.-16     	; 0xeda <vfprintf+0x404>
     eea:	6e 2d       	mov	r22, r14
     eec:	7f 2d       	mov	r23, r15
     eee:	80 e3       	ldi	r24, 0x30	; 48
     ef0:	90 e0       	ldi	r25, 0x00	; 0
     ef2:	1e d0       	rcall	.+60     	; 0xf30 <fputc>
     ef4:	9a 94       	dec	r9
     ef6:	b2 cf       	rjmp	.-156    	; 0xe5c <vfprintf+0x386>
     ef8:	8f ef       	ldi	r24, 0xFF	; 255
     efa:	9f ef       	ldi	r25, 0xFF	; 255
     efc:	5f cf       	rjmp	.-322    	; 0xdbc <vfprintf+0x2e6>

00000efe <strnlen_P>:
     efe:	e8 2f       	mov	r30, r24
     f00:	f9 2f       	mov	r31, r25
     f02:	c8 95       	lpm
     f04:	31 96       	adiw	r30, 0x01	; 1
     f06:	61 50       	subi	r22, 0x01	; 1
     f08:	70 40       	sbci	r23, 0x00	; 0
     f0a:	01 10       	cpse	r0, r1
     f0c:	d0 f7       	brcc	.-12     	; 0xf02 <strnlen_P+0x4>
     f0e:	80 95       	com	r24
     f10:	90 95       	com	r25
     f12:	8e 0f       	add	r24, r30
     f14:	9f 1f       	adc	r25, r31
     f16:	08 95       	ret

00000f18 <strnlen>:
     f18:	e8 2f       	mov	r30, r24
     f1a:	f9 2f       	mov	r31, r25
     f1c:	61 50       	subi	r22, 0x01	; 1
     f1e:	70 40       	sbci	r23, 0x00	; 0
     f20:	01 90       	ld	r0, Z+
     f22:	01 10       	cpse	r0, r1
     f24:	d8 f7       	brcc	.-10     	; 0xf1c <strnlen+0x4>
     f26:	80 95       	com	r24
     f28:	90 95       	com	r25
     f2a:	8e 0f       	add	r24, r30
     f2c:	9f 1f       	adc	r25, r31
     f2e:	08 95       	ret

00000f30 <fputc>:
     f30:	0f 93       	push	r16
     f32:	1f 93       	push	r17
     f34:	cf 93       	push	r28
     f36:	df 93       	push	r29
     f38:	18 2f       	mov	r17, r24
     f3a:	09 2f       	mov	r16, r25
     f3c:	c6 2f       	mov	r28, r22
     f3e:	d7 2f       	mov	r29, r23
     f40:	8b 81       	ldd	r24, Y+3	; 0x03
     f42:	81 fd       	sbrc	r24, 1
     f44:	09 c0       	rjmp	.+18     	; 0xf58 <fputc+0x28>
     f46:	1f ef       	ldi	r17, 0xFF	; 255
     f48:	0f ef       	ldi	r16, 0xFF	; 255
     f4a:	81 2f       	mov	r24, r17
     f4c:	90 2f       	mov	r25, r16
     f4e:	df 91       	pop	r29
     f50:	cf 91       	pop	r28
     f52:	1f 91       	pop	r17
     f54:	0f 91       	pop	r16
     f56:	08 95       	ret
     f58:	82 ff       	sbrs	r24, 2
     f5a:	15 c0       	rjmp	.+42     	; 0xf86 <fputc+0x56>
     f5c:	2e 81       	ldd	r18, Y+6	; 0x06
     f5e:	3f 81       	ldd	r19, Y+7	; 0x07
     f60:	8c 81       	ldd	r24, Y+4	; 0x04
     f62:	9d 81       	ldd	r25, Y+5	; 0x05
     f64:	28 17       	cp	r18, r24
     f66:	39 07       	cpc	r19, r25
     f68:	44 f4       	brge	.+16     	; 0xf7a <fputc+0x4a>
     f6a:	e8 81       	ld	r30, Y
     f6c:	f9 81       	ldd	r31, Y+1	; 0x01
     f6e:	8e 2f       	mov	r24, r30
     f70:	9f 2f       	mov	r25, r31
     f72:	01 96       	adiw	r24, 0x01	; 1
     f74:	99 83       	std	Y+1, r25	; 0x01
     f76:	88 83       	st	Y, r24
     f78:	10 83       	st	Z, r17
     f7a:	8e 81       	ldd	r24, Y+6	; 0x06
     f7c:	9f 81       	ldd	r25, Y+7	; 0x07
     f7e:	01 96       	adiw	r24, 0x01	; 1
     f80:	9f 83       	std	Y+7, r25	; 0x07
     f82:	8e 83       	std	Y+6, r24	; 0x06
     f84:	e2 cf       	rjmp	.-60     	; 0xf4a <fputc+0x1a>
     f86:	e8 85       	ldd	r30, Y+8	; 0x08
     f88:	f9 85       	ldd	r31, Y+9	; 0x09
     f8a:	81 2f       	mov	r24, r17
     f8c:	09 95       	icall
     f8e:	89 2b       	or	r24, r25
     f90:	a1 f3       	breq	.-24     	; 0xf7a <fputc+0x4a>
     f92:	d9 cf       	rjmp	.-78     	; 0xf46 <fputc+0x16>

00000f94 <__ultoa_invert>:
     f94:	e4 2f       	mov	r30, r20
     f96:	f5 2f       	mov	r31, r21
     f98:	aa 27       	eor	r26, r26
     f9a:	28 30       	cpi	r18, 0x08	; 8
     f9c:	69 f1       	breq	.+90     	; 0xff8 <__ultoa_invert+0x64>
     f9e:	20 31       	cpi	r18, 0x10	; 16
     fa0:	99 f1       	breq	.+102    	; 0x1008 <__ultoa_invert+0x74>
     fa2:	e8 94       	clt
     fa4:	6f 93       	push	r22
     fa6:	6e 7f       	andi	r22, 0xFE	; 254
     fa8:	6e 5f       	subi	r22, 0xFE	; 254
     faa:	7f 4f       	sbci	r23, 0xFF	; 255
     fac:	8f 4f       	sbci	r24, 0xFF	; 255
     fae:	9f 4f       	sbci	r25, 0xFF	; 255
     fb0:	af 4f       	sbci	r26, 0xFF	; 255
     fb2:	b1 e0       	ldi	r27, 0x01	; 1
     fb4:	41 d0       	rcall	.+130    	; 0x1038 <__ultoa_invert+0xa4>
     fb6:	b4 e0       	ldi	r27, 0x04	; 4
     fb8:	3f d0       	rcall	.+126    	; 0x1038 <__ultoa_invert+0xa4>
     fba:	67 0f       	add	r22, r23
     fbc:	78 1f       	adc	r23, r24
     fbe:	89 1f       	adc	r24, r25
     fc0:	9a 1f       	adc	r25, r26
     fc2:	a1 1d       	adc	r26, r1
     fc4:	68 0f       	add	r22, r24
     fc6:	79 1f       	adc	r23, r25
     fc8:	8a 1f       	adc	r24, r26
     fca:	91 1d       	adc	r25, r1
     fcc:	a1 1d       	adc	r26, r1
     fce:	6a 0f       	add	r22, r26
     fd0:	71 1d       	adc	r23, r1
     fd2:	81 1d       	adc	r24, r1
     fd4:	91 1d       	adc	r25, r1
     fd6:	a1 1d       	adc	r26, r1
     fd8:	23 d0       	rcall	.+70     	; 0x1020 <__ultoa_invert+0x8c>
     fda:	09 f4       	brne	.+2      	; 0xfde <__ultoa_invert+0x4a>
     fdc:	68 94       	set
     fde:	3f 91       	pop	r19
     fe0:	06 2e       	mov	r0, r22
     fe2:	00 0c       	add	r0, r0
     fe4:	30 19       	sub	r19, r0
     fe6:	00 0c       	add	r0, r0
     fe8:	00 0c       	add	r0, r0
     fea:	30 19       	sub	r19, r0
     fec:	30 5d       	subi	r19, 0xD0	; 208
     fee:	31 93       	st	Z+, r19
     ff0:	ce f6       	brtc	.-78     	; 0xfa4 <__ultoa_invert+0x10>
     ff2:	8e 2f       	mov	r24, r30
     ff4:	9f 2f       	mov	r25, r31
     ff6:	08 95       	ret
     ff8:	46 2f       	mov	r20, r22
     ffa:	47 70       	andi	r20, 0x07	; 7
     ffc:	40 5d       	subi	r20, 0xD0	; 208
     ffe:	41 93       	st	Z+, r20
    1000:	b3 e0       	ldi	r27, 0x03	; 3
    1002:	0f d0       	rcall	.+30     	; 0x1022 <__ultoa_invert+0x8e>
    1004:	c9 f7       	brne	.-14     	; 0xff8 <__ultoa_invert+0x64>
    1006:	f5 cf       	rjmp	.-22     	; 0xff2 <__ultoa_invert+0x5e>
    1008:	46 2f       	mov	r20, r22
    100a:	4f 70       	andi	r20, 0x0F	; 15
    100c:	40 5d       	subi	r20, 0xD0	; 208
    100e:	4a 33       	cpi	r20, 0x3A	; 58
    1010:	18 f0       	brcs	.+6      	; 0x1018 <__ultoa_invert+0x84>
    1012:	49 5d       	subi	r20, 0xD9	; 217
    1014:	31 fd       	sbrc	r19, 1
    1016:	40 52       	subi	r20, 0x20	; 32
    1018:	41 93       	st	Z+, r20
    101a:	02 d0       	rcall	.+4      	; 0x1020 <__ultoa_invert+0x8c>
    101c:	a9 f7       	brne	.-22     	; 0x1008 <__ultoa_invert+0x74>
    101e:	e9 cf       	rjmp	.-46     	; 0xff2 <__ultoa_invert+0x5e>
    1020:	b4 e0       	ldi	r27, 0x04	; 4
    1022:	a6 95       	lsr	r26
    1024:	97 95       	ror	r25
    1026:	87 95       	ror	r24
    1028:	77 95       	ror	r23
    102a:	67 95       	ror	r22
    102c:	ba 95       	dec	r27
    102e:	c9 f7       	brne	.-14     	; 0x1022 <__ultoa_invert+0x8e>
    1030:	00 97       	sbiw	r24, 0x00	; 0
    1032:	61 05       	cpc	r22, r1
    1034:	71 05       	cpc	r23, r1
    1036:	08 95       	ret
    1038:	26 2f       	mov	r18, r22
    103a:	37 2f       	mov	r19, r23
    103c:	48 2f       	mov	r20, r24
    103e:	59 2f       	mov	r21, r25
    1040:	0a 2e       	mov	r0, r26
    1042:	06 94       	lsr	r0
    1044:	57 95       	ror	r21
    1046:	47 95       	ror	r20
    1048:	37 95       	ror	r19
    104a:	27 95       	ror	r18
    104c:	ba 95       	dec	r27
    104e:	c9 f7       	brne	.-14     	; 0x1042 <__ultoa_invert+0xae>
    1050:	62 0f       	add	r22, r18
    1052:	73 1f       	adc	r23, r19
    1054:	84 1f       	adc	r24, r20
    1056:	95 1f       	adc	r25, r21
    1058:	a0 1d       	adc	r26, r0
    105a:	08 95       	ret

0000105c <__mulqi3>:
    105c:	00 24       	eor	r0, r0

0000105e <__mulqi3_loop>:
    105e:	80 fd       	sbrc	r24, 0
    1060:	06 0e       	add	r0, r22
    1062:	66 0f       	add	r22, r22
    1064:	11 f0       	breq	.+4      	; 0x106a <__mulqi3_exit>
    1066:	86 95       	lsr	r24
    1068:	d1 f7       	brne	.-12     	; 0x105e <__mulqi3_loop>

0000106a <__mulqi3_exit>:
    106a:	80 2d       	mov	r24, r0
    106c:	08 95       	ret

0000106e <__prologue_saves__>:
    106e:	2f 92       	push	r2
    1070:	3f 92       	push	r3
    1072:	4f 92       	push	r4
    1074:	5f 92       	push	r5
    1076:	6f 92       	push	r6
    1078:	7f 92       	push	r7
    107a:	8f 92       	push	r8
    107c:	9f 92       	push	r9
    107e:	af 92       	push	r10
    1080:	bf 92       	push	r11
    1082:	cf 92       	push	r12
    1084:	df 92       	push	r13
    1086:	ef 92       	push	r14
    1088:	ff 92       	push	r15
    108a:	0f 93       	push	r16
    108c:	1f 93       	push	r17
    108e:	cf 93       	push	r28
    1090:	df 93       	push	r29
    1092:	cd b7       	in	r28, 0x3d	; 61
    1094:	de b7       	in	r29, 0x3e	; 62
    1096:	ca 1b       	sub	r28, r26
    1098:	db 0b       	sbc	r29, r27
    109a:	0f b6       	in	r0, 0x3f	; 63
    109c:	f8 94       	cli
    109e:	de bf       	out	0x3e, r29	; 62
    10a0:	0f be       	out	0x3f, r0	; 63
    10a2:	cd bf       	out	0x3d, r28	; 61
    10a4:	09 94       	ijmp

000010a6 <__epilogue_restores__>:
    10a6:	2a 88       	ldd	r2, Y+18	; 0x12
    10a8:	39 88       	ldd	r3, Y+17	; 0x11
    10aa:	48 88       	ldd	r4, Y+16	; 0x10
    10ac:	5f 84       	ldd	r5, Y+15	; 0x0f
    10ae:	6e 84       	ldd	r6, Y+14	; 0x0e
    10b0:	7d 84       	ldd	r7, Y+13	; 0x0d
    10b2:	8c 84       	ldd	r8, Y+12	; 0x0c
    10b4:	9b 84       	ldd	r9, Y+11	; 0x0b
    10b6:	aa 84       	ldd	r10, Y+10	; 0x0a
    10b8:	b9 84       	ldd	r11, Y+9	; 0x09
    10ba:	c8 84       	ldd	r12, Y+8	; 0x08
    10bc:	df 80       	ldd	r13, Y+7	; 0x07
    10be:	ee 80       	ldd	r14, Y+6	; 0x06
    10c0:	fd 80       	ldd	r15, Y+5	; 0x05
    10c2:	0c 81       	ldd	r16, Y+4	; 0x04
    10c4:	1b 81       	ldd	r17, Y+3	; 0x03
    10c6:	aa 81       	ldd	r26, Y+2	; 0x02
    10c8:	b9 81       	ldd	r27, Y+1	; 0x01
    10ca:	ce 0f       	add	r28, r30
    10cc:	d1 1d       	adc	r29, r1
    10ce:	0f b6       	in	r0, 0x3f	; 63
    10d0:	f8 94       	cli
    10d2:	de bf       	out	0x3e, r29	; 62
    10d4:	0f be       	out	0x3f, r0	; 63
    10d6:	cd bf       	out	0x3d, r28	; 61
    10d8:	ca 2f       	mov	r28, r26
    10da:	db 2f       	mov	r29, r27
    10dc:	08 95       	ret

000010de <_exit>:
    10de:	f8 94       	cli

000010e0 <__stop_program>:
    10e0:	ff cf       	rjmp	.-2      	; 0x10e0 <__stop_program>
