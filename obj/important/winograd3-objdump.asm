
winograd3.o:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <im2col_winograd3>:
   0:	711d                	add	sp,sp,-96
   2:	ec86                	sd	ra,88(sp)
   4:	7e86                	ld	t4,96(sp)
   6:	833a                	mv	t1,a4
   8:	21171a63          	bne	a4,a7,21c <.L14>
   c:	e4a6                	sd	s1,72(sp)
   e:	f05a                	sd	s6,32(sp)
  10:	ec5e                	sd	s7,24(sp)
  12:	e862                	sd	s8,16(sp)
  14:	8736                	mv	a4,a3
  16:	8c2e                	mv	s8,a1
  18:	ffe60b1b          	addw	s6,a2,-2
  1c:	36f9                	addw	a3,a3,-2
  1e:	8faa                	mv	t6,a0
  20:	030b44bb          	divw	s1,s6,a6
  24:	8bb2                	mv	s7,a2
  26:	85be                	mv	a1,a5
  28:	0306c53b          	divw	a0,a3,a6
  2c:	1f805163          	blez	s8,20e <.L1>
  30:	0017129b          	sllw	t0,a4,0x1
  34:	00e28f3b          	addw	t5,t0,a4
  38:	00271393          	sll	t2,a4,0x2
  3c:	028a                	sll	t0,t0,0x2
  3e:	0f0a                	sll	t5,t5,0x2
  40:	1c905763          	blez	s1,20e <.L1>
  44:	1ca05563          	blez	a0,20e <.L1>
  48:	0035179b          	sllw	a5,a0,0x3
  4c:	9fa9                	addw	a5,a5,a0
  4e:	e8a2                	sd	s0,80(sp)
  50:	0027941b          	sllw	s0,a5,0x2
  54:	01030e3b          	addw	t3,t1,a6
  58:	3e7d                	addw	t3,t3,-1
  5a:	40b3033b          	subw	t1,t1,a1
  5e:	406e05bb          	subw	a1,t3,t1
  62:	e0ca                	sd	s2,64(sp)
  64:	fc4e                	sd	s3,56(sp)
  66:	f852                	sd	s4,48(sp)
  68:	f456                	sd	s5,40(sp)
  6a:	e466                	sd	s9,8(sp)
  6c:	00241913          	sll	s2,s0,0x2
  70:	93fe                	add	t2,t2,t6
  72:	92fe                	add	t0,t0,t6
  74:	9f7e                	add	t5,t5,t6
  76:	4a81                	li	s5,0
  78:	4981                	li	s3,0
  7a:	4a01                	li	s4,0
  7c:	02848b3b          	mulw	s6,s1,s0
  80:	02eb8bbb          	mulw	s7,s7,a4
  84:	02e58e3b          	mulw	t3,a1,a4
  88:	058a                	sll	a1,a1,0x2

000000000000008a <.L5>:
  8a:	00898333          	add	t1,s3,s0
  8e:	00231513          	sll	a0,t1,0x2
  92:	0009879b          	sext.w	a5,s3
  96:	000a889b          	sext.w	a7,s5
  9a:	9576                	add	a0,a0,t4
  9c:	4801                	li	a6,0

000000000000009e <.L8>:
  9e:	00289613          	sll	a2,a7,0x2
  a2:	078a                	sll	a5,a5,0x2
  a4:	00cf8cb3          	add	s9,t6,a2
  a8:	007606b3          	add	a3,a2,t2
  ac:	00560733          	add	a4,a2,t0
  b0:	97f6                	add	a5,a5,t4
  b2:	967a                	add	a2,a2,t5

00000000000000b4 <.L6>:
  b4:	000ca787          	flw	fa5,0(s9)
  b8:	09078793          	add	a5,a5,144
  bc:	f6f7a827          	fsw	fa5,-144(a5)
  c0:	004ca787          	flw	fa5,4(s9)
  c4:	f6f7aa27          	fsw	fa5,-140(a5)
  c8:	008ca787          	flw	fa5,8(s9)
  cc:	f6f7ac27          	fsw	fa5,-136(a5)
  d0:	004ca787          	flw	fa5,4(s9)
  d4:	f6f7ae27          	fsw	fa5,-132(a5)
  d8:	008ca787          	flw	fa5,8(s9)
  dc:	f8f7a027          	fsw	fa5,-128(a5)
  e0:	00cca787          	flw	fa5,12(s9)
  e4:	9cae                	add	s9,s9,a1
  e6:	f8f7a227          	fsw	fa5,-124(a5)
  ea:	0006a787          	flw	fa5,0(a3)
  ee:	f8f7a427          	fsw	fa5,-120(a5)
  f2:	0046a787          	flw	fa5,4(a3)
  f6:	f8f7a627          	fsw	fa5,-116(a5)
  fa:	0086a787          	flw	fa5,8(a3)
  fe:	f8f7a827          	fsw	fa5,-112(a5)
 102:	0046a787          	flw	fa5,4(a3)
 106:	f8f7aa27          	fsw	fa5,-108(a5)
 10a:	0086a787          	flw	fa5,8(a3)
 10e:	f8f7ac27          	fsw	fa5,-104(a5)
 112:	00c6a787          	flw	fa5,12(a3)
 116:	f8f7ae27          	fsw	fa5,-100(a5)
 11a:	00072787          	flw	fa5,0(a4)
 11e:	faf7a027          	fsw	fa5,-96(a5)
 122:	00472787          	flw	fa5,4(a4)
 126:	faf7a227          	fsw	fa5,-92(a5)
 12a:	00872787          	flw	fa5,8(a4)
 12e:	faf7a427          	fsw	fa5,-88(a5)
 132:	00472787          	flw	fa5,4(a4)
 136:	faf7a627          	fsw	fa5,-84(a5)
 13a:	00872787          	flw	fa5,8(a4)
 13e:	faf7a827          	fsw	fa5,-80(a5)
 142:	00c72787          	flw	fa5,12(a4)
 146:	faf7aa27          	fsw	fa5,-76(a5)
 14a:	0006a787          	flw	fa5,0(a3)
 14e:	faf7ac27          	fsw	fa5,-72(a5)
 152:	0046a787          	flw	fa5,4(a3)
 156:	faf7ae27          	fsw	fa5,-68(a5)
 15a:	0086a787          	flw	fa5,8(a3)
 15e:	fcf7a027          	fsw	fa5,-64(a5)
 162:	0046a787          	flw	fa5,4(a3)
 166:	fcf7a227          	fsw	fa5,-60(a5)
 16a:	0086a787          	flw	fa5,8(a3)
 16e:	fcf7a427          	fsw	fa5,-56(a5)
 172:	00c6a787          	flw	fa5,12(a3)
 176:	96ae                	add	a3,a3,a1
 178:	fcf7a627          	fsw	fa5,-52(a5)
 17c:	00072787          	flw	fa5,0(a4)
 180:	fcf7a827          	fsw	fa5,-48(a5)
 184:	00472787          	flw	fa5,4(a4)
 188:	fcf7aa27          	fsw	fa5,-44(a5)
 18c:	00872787          	flw	fa5,8(a4)
 190:	fcf7ac27          	fsw	fa5,-40(a5)
 194:	00472787          	flw	fa5,4(a4)
 198:	fcf7ae27          	fsw	fa5,-36(a5)
 19c:	00872787          	flw	fa5,8(a4)
 1a0:	fef7a027          	fsw	fa5,-32(a5)
 1a4:	00c72787          	flw	fa5,12(a4)
 1a8:	972e                	add	a4,a4,a1
 1aa:	fef7a227          	fsw	fa5,-28(a5)
 1ae:	00062787          	flw	fa5,0(a2)
 1b2:	fef7a427          	fsw	fa5,-24(a5)
 1b6:	00462787          	flw	fa5,4(a2)
 1ba:	fef7a627          	fsw	fa5,-20(a5)
 1be:	00862787          	flw	fa5,8(a2)
 1c2:	fef7a827          	fsw	fa5,-16(a5)
 1c6:	00462787          	flw	fa5,4(a2)
 1ca:	fef7aa27          	fsw	fa5,-12(a5)
 1ce:	00862787          	flw	fa5,8(a2)
 1d2:	fef7ac27          	fsw	fa5,-8(a5)
 1d6:	00c62787          	flw	fa5,12(a2)
 1da:	962e                	add	a2,a2,a1
 1dc:	fef7ae27          	fsw	fa5,-4(a5)
 1e0:	eca79ae3          	bne	a5,a0,b4 <.L6>
 1e4:	2805                	addw	a6,a6,1
 1e6:	879a                	mv	a5,t1
 1e8:	98f2                	add	a7,a7,t3
 1ea:	954a                	add	a0,a0,s2
 1ec:	01048463          	beq	s1,a6,1f4 <.L7>
 1f0:	9322                	add	t1,t1,s0
 1f2:	b575                	j	9e <.L8>

00000000000001f4 <.L7>:
 1f4:	2a05                	addw	s4,s4,1
 1f6:	016989bb          	addw	s3,s3,s6
 1fa:	017a8abb          	addw	s5,s5,s7
 1fe:	e94c16e3          	bne	s8,s4,8a <.L5>
 202:	6446                	ld	s0,80(sp)
 204:	6906                	ld	s2,64(sp)
 206:	79e2                	ld	s3,56(sp)
 208:	7a42                	ld	s4,48(sp)
 20a:	7aa2                	ld	s5,40(sp)
 20c:	6ca2                	ld	s9,8(sp)

000000000000020e <.L1>:
 20e:	60e6                	ld	ra,88(sp)
 210:	64a6                	ld	s1,72(sp)
 212:	7b02                	ld	s6,32(sp)
 214:	6be2                	ld	s7,24(sp)
 216:	6c42                	ld	s8,16(sp)
 218:	6125                	add	sp,sp,96
 21a:	8082                	ret

000000000000021c <.L14>:
 21c:	00000697          	auipc	a3,0x0
 220:	00068693          	mv	a3,a3
 224:	4619                	li	a2,6
 226:	00000597          	auipc	a1,0x0
 22a:	00058593          	mv	a1,a1
 22e:	00000517          	auipc	a0,0x0
 232:	00050513          	mv	a0,a0
 236:	e8a2                	sd	s0,80(sp)
 238:	e4a6                	sd	s1,72(sp)
 23a:	e0ca                	sd	s2,64(sp)
 23c:	fc4e                	sd	s3,56(sp)
 23e:	f852                	sd	s4,48(sp)
 240:	f456                	sd	s5,40(sp)
 242:	f05a                	sd	s6,32(sp)
 244:	ec5e                	sd	s7,24(sp)
 246:	e862                	sd	s8,16(sp)
 248:	e466                	sd	s9,8(sp)
 24a:	00000097          	auipc	ra,0x0
 24e:	000080e7          	jalr	ra # 24a <.L14+0x2e>

0000000000000252 <winograd3_1d>:
 252:	0005a007          	flw	ft0,0(a1) # 226 <.L14+0xa>
 256:	0045a187          	flw	ft3,4(a1)
 25a:	00852787          	flw	fa5,8(a0) # 236 <.L14+0x1a>
 25e:	00452087          	flw	ft1,4(a0)
 262:	00307753          	fadd.s	fa4,ft0,ft3
 266:	0085a587          	flw	fa1,8(a1)
 26a:	0017f253          	fadd.s	ft4,fa5,ft1
 26e:	01452507          	flw	fa0,20(a0)
 272:	00b07653          	fadd.s	fa2,ft0,fa1
 276:	00b77753          	fadd.s	fa4,fa4,fa1
 27a:	00052687          	flw	fa3,0(a0)
 27e:	00000797          	auipc	a5,0x0
 282:	0007a107          	flw	ft2,0(a5) # 27e <winograd3_1d+0x2c>
 286:	08a0f553          	fsub.s	fa0,ft1,fa0
 28a:	08f6f6d3          	fsub.s	fa3,fa3,fa5
 28e:	10477753          	fmul.s	fa4,fa4,ft4
 292:	08367653          	fsub.s	fa2,fa2,ft3
 296:	0817f7d3          	fsub.s	fa5,fa5,ft1
 29a:	10277753          	fmul.s	fa4,fa4,ft2
 29e:	10267653          	fmul.s	fa2,fa2,ft2
 2a2:	70a5f5cb          	fnmsub.s	fa1,fa1,fa0,fa4
 2a6:	7006f6c3          	fmadd.s	fa3,fa3,ft0,fa4
 2aa:	68c7f743          	fmadd.s	fa4,fa5,fa2,fa3
 2ae:	58c7f7cb          	fnmsub.s	fa5,fa5,fa2,fa1
 2b2:	00e62027          	fsw	fa4,0(a2)
 2b6:	00f62227          	fsw	fa5,4(a2)
 2ba:	8082                	ret

00000000000002bc <winograd3_2d>:
 2bc:	7119                	add	sp,sp,-128
 2be:	b8a6                	fsd	fs1,112(sp)
 2c0:	b4ca                	fsd	fs2,104(sp)
 2c2:	0185a487          	flw	fs1,24(a1)
 2c6:	0005a907          	flw	fs2,0(a1)
 2ca:	a4da                	fsd	fs6,72(sp)
 2cc:	a0de                	fsd	fs7,64(sp)
 2ce:	0124fed3          	fadd.s	ft9,fs1,fs2
 2d2:	0085a007          	flw	ft0,8(a1)
 2d6:	0205a887          	flw	fa7,32(a1)
 2da:	0045ab87          	flw	fs7,4(a1)
 2de:	01c5ab07          	flw	fs6,28(a1)
 2e2:	00c5a287          	flw	ft5,12(a1)
 2e6:	01107153          	fadd.s	ft2,ft0,fa7
 2ea:	017b7653          	fadd.s	fa2,fs6,fs7
 2ee:	085efed3          	fsub.s	ft9,ft9,ft5
 2f2:	0105a687          	flw	fa3,16(a1)
 2f6:	0145a187          	flw	ft3,20(a1)
 2fa:	00000797          	auipc	a5,0x0
 2fe:	0007a787          	flw	fa5,0(a5) # 2fa <winograd3_2d+0x3e>
 302:	08d67653          	fsub.s	fa2,fa2,fa3
 306:	10fefed3          	fmul.s	ft9,ft9,fa5
 30a:	08317153          	fsub.s	ft2,ft2,ft3
 30e:	b0ce                	fsd	fs3,96(sp)
 310:	03852f07          	flw	ft10,56(a0)
 314:	02052987          	flw	fs3,32(a0)
 318:	03452207          	flw	ft4,52(a0)
 31c:	01c52507          	flw	fa0,28(a0)
 320:	10f17153          	fmul.s	ft2,ft2,fa5
 324:	093f7e53          	fsub.s	ft8,ft10,fs3
 328:	08a275d3          	fsub.s	fa1,ft4,fa0
 32c:	e8f67343          	fmadd.s	ft6,fa2,fa5,ft9
 330:	01707753          	fadd.s	fa4,ft0,fs7
 334:	00452087          	flw	ft1,4(a0)
 338:	07c52807          	flw	fa6,124(a0)
 33c:	00b12c27          	fsw	fa1,24(sp)
 340:	0840f3d3          	fsub.s	ft7,ft1,ft4
 344:	00852087          	flw	ft1,8(a0)
 348:	09057fd3          	fsub.s	ft11,fa0,fa6
 34c:	00be75d3          	fadd.s	fa1,ft8,fa1
 350:	00617353          	fadd.s	ft6,ft2,ft6
 354:	01277753          	fadd.s	fa4,fa4,fs2
 358:	b46a                	fsd	fs10,40(sp)
 35a:	09e0fd53          	fsub.s	fs10,ft1,ft10
 35e:	bca2                	fsd	fs0,120(sp)
 360:	acd2                	fsd	fs4,88(sp)
 362:	a8d6                	fsd	fs5,80(sp)
 364:	bc62                	fsd	fs8,56(sp)
 366:	b866                	fsd	fs9,48(sp)
 368:	b06e                	fsd	fs11,32(sp)
 36a:	08052a87          	flw	fs5,128(a0)
 36e:	10b37353          	fmul.s	ft6,ft6,fa1
 372:	00052587          	flw	fa1,0(a0)
 376:	01f12a27          	fsw	ft11,20(sp)
 37a:	03052c07          	flw	fs8,48(a0)
 37e:	10f77753          	fmul.s	fa4,fa4,fa5
 382:	01a3f853          	fadd.s	fa6,ft7,fs10
 386:	00712e27          	fsw	ft7,28(sp)
 38a:	01d17fd3          	fadd.s	ft11,ft2,ft9
 38e:	0985f3d3          	fsub.s	ft7,fa1,fs8
 392:	0054f2d3          	fadd.s	ft5,fs1,ft5
 396:	08457c53          	fsub.s	fs8,fa0,ft4
 39a:	009b7a53          	fadd.s	fs4,fs6,fs1
 39e:	07852587          	flw	fa1,120(a0)
 3a2:	00e12827          	fsw	fa4,16(sp)
 3a6:	10f37353          	fmul.s	ft6,ft6,fa5
 3aa:	01852707          	flw	fa4,24(a0)
 3ae:	01012627          	fsw	fa6,12(sp)
 3b2:	01cc7c53          	fadd.s	fs8,fs8,ft8
 3b6:	f8f6764b          	fnmsub.s	fa2,fa2,fa5,ft11
 3ba:	00c12e07          	flw	ft8,12(sp)
 3be:	01012f87          	flw	ft11,16(sp)
 3c2:	0176f6d3          	fadd.s	fa3,fa3,fs7
 3c6:	003071d3          	fadd.s	ft3,ft0,ft3
 3ca:	0122f2d3          	fadd.s	ft5,ft5,fs2
 3ce:	0959fcd3          	fsub.s	fs9,fs3,fs5
 3d2:	08b77753          	fsub.s	fa4,fa4,fa1
 3d6:	011a7a53          	fadd.s	fs4,fs4,fa7
 3da:	31fe7e43          	fmadd.s	ft8,ft8,ft11,ft6
 3de:	01412f87          	flw	ft11,20(sp)
 3e2:	10f2f2d3          	fmul.s	ft5,ft5,fa5
 3e6:	0166f6d3          	fadd.s	fa3,fa3,fs6
 3ea:	0111f1d3          	fadd.s	ft3,ft3,fa7
 3ee:	10fa7a53          	fmul.s	fs4,fs4,fa5
 3f2:	01577753          	fadd.s	fa4,fa4,fs5
 3f6:	019ffad3          	fadd.s	fs5,ft11,fs9
 3fa:	01e3f3d3          	fadd.s	ft7,ft7,ft10
 3fe:	004570d3          	fadd.s	ft1,fa0,ft4
 402:	01e9f453          	fadd.s	fs0,fs3,ft10
 406:	10f1f1d3          	fmul.s	ft3,ft3,fa5
 40a:	28f6f843          	fmadd.s	fa6,fa3,fa5,ft5
 40e:	115a7ad3          	fmul.s	fs5,fs4,fs5
 412:	00852a07          	flw	fs4,8(a0)
 416:	012075d3          	fadd.s	fa1,ft0,fs2
 41a:	0080fdd3          	fadd.s	fs11,ft1,fs0
 41e:	0943f3d3          	fsub.s	ft7,ft7,fs4
 422:	00452a07          	flw	fs4,4(a0)
 426:	0098ffd3          	fadd.s	ft11,fa7,fs1
 42a:	0101f853          	fadd.s	fa6,ft3,fa6
 42e:	09427253          	fsub.s	ft4,ft4,fs4
 432:	0975f5d3          	fsub.s	fa1,fa1,fs7
 436:	01852a07          	flw	fs4,24(a0)
 43a:	03052b87          	flw	fs7,48(a0)
 43e:	11b87853          	fmul.s	fa6,fa6,fs11
 442:	096fffd3          	fsub.s	ft11,ft11,fs6
 446:	01852d87          	flw	fs11,24(a0)
 44a:	07c52b07          	flw	fs6,124(a0)
 44e:	017a7bd3          	fadd.s	fs7,fs4,fs7
 452:	03052a07          	flw	fs4,48(a0)
 456:	10cc7653          	fmul.s	fa2,fs8,fa2
 45a:	0051fc53          	fadd.s	fs8,ft3,ft5
 45e:	09ba7a53          	fsub.s	fs4,fs4,fs11
 462:	09377753          	fsub.s	fa4,fa4,fs3
 466:	08ab7553          	fsub.s	fa0,fs6,fa0
 46a:	10f87853          	fmul.s	fa6,fa6,fa5
 46e:	c0f6f6cb          	fnmsub.s	fa3,fa3,fa5,fs8
 472:	00062c07          	flw	fs8,0(a2)
 476:	10ffffd3          	fmul.s	ft11,ft11,fa5
 47a:	a8977743          	fmadd.s	fa4,fa4,fs1,fs5
 47e:	088bfbd3          	fsub.s	fs7,fs7,fs0
 482:	013a7a53          	fadd.s	fs4,fs4,fs3
 486:	08147453          	fsub.s	fs0,fs0,ft1
 48a:	01957553          	fadd.s	fa0,fa0,fs9
 48e:	c123f3c3          	fmadd.s	ft7,ft7,fs2,fs8
 492:	00862907          	flw	fs2,8(a2)
 496:	805bfbc3          	fmadd.s	fs7,fs7,ft5,fa6
 49a:	10d476d3          	fmul.s	fa3,fs0,fa3
 49e:	10aff553          	fmul.s	fa0,ft11,fa0
 4a2:	09ea7a53          	fsub.s	fs4,fs4,ft10
 4a6:	08e97753          	fsub.s	fa4,fs2,fa4
 4aa:	00462b07          	flw	fs6,4(a2)
 4ae:	b8f6fbc3          	fmadd.s	fs7,fa3,fa5,fs7
 4b2:	02c52487          	flw	fs1,44(a0)
 4b6:	31da7a43          	fmadd.s	fs4,fs4,ft9,ft6
 4ba:	08a77753          	fsub.s	fa4,fa4,fa0
 4be:	016e7e53          	fadd.s	ft8,ft8,fs6
 4c2:	04452b07          	flw	fs6,68(a0)
 4c6:	10f5f5d3          	fmul.s	fa1,fa1,fa5
 4ca:	a0f67a43          	fmadd.s	fs4,fa2,fa5,fs4
 4ce:	0164ffd3          	fadd.s	ft11,fs1,fs6
 4d2:	01777753          	fadd.s	fa4,fa4,fs7
 4d6:	e0f67e4b          	fnmsub.s	ft8,fa2,fa5,ft8
 4da:	80f6f6cb          	fnmsub.s	fa3,fa3,fa5,fa6
 4de:	50f67643          	fmadd.s	fa2,fa2,fa5,fa0
 4e2:	09f0f0d3          	fsub.s	ft1,ft1,ft11
 4e6:	094777d3          	fsub.s	fa5,fa4,fs4
 4ea:	01a27253          	fadd.s	ft4,ft4,fs10
 4ee:	01452d07          	flw	fs10,20(a0)
 4f2:	01c12987          	flw	fs3,28(sp)
 4f6:	6811f0cb          	fnmsub.s	ft1,ft3,ft1,fa3
 4fa:	08c52687          	flw	fa3,140(a0)
 4fe:	00f62427          	fsw	fa5,8(a2)
 502:	00c62787          	flw	fa5,12(a2)
 506:	09ab7d53          	fsub.s	fs10,fs6,fs10
 50a:	01812407          	flw	fs0,24(sp)
 50e:	00c7f7d3          	fadd.s	fa5,fa5,fa2
 512:	e045fe4b          	fnmsub.s	ft8,fa1,ft4,ft8
 516:	0084f2d3          	fadd.s	ft5,fs1,fs0
 51a:	013d7d53          	fadd.s	fs10,fs10,fs3
 51e:	00c12407          	flw	fs0,12(sp)
 522:	0867f7d3          	fsub.s	fa5,fa5,ft6
 526:	01012f07          	flw	ft10,16(sp)
 52a:	01412707          	flw	fa4,20(sp)
 52e:	0962f2d3          	fsub.s	ft5,ft5,fs6
 532:	39e473c3          	fmadd.s	ft7,fs0,ft10,ft7
 536:	e1a0704b          	fnmsub.s	ft0,ft0,fs10,ft8
 53a:	0957f7d3          	fsub.s	fa5,fa5,fs5
 53e:	00e6f753          	fadd.s	fa4,fa3,fa4
 542:	3845f5c3          	fmadd.s	fa1,fa1,ft4,ft7
 546:	0051704b          	fnmsub.s	ft0,ft2,ft5,ft0
 54a:	78517143          	fmadd.s	ft2,ft2,ft5,fa5
 54e:	08977753          	fsub.s	fa4,fa4,fs1
 552:	0175f5d3          	fadd.s	fa1,fa1,fs7
 556:	00107053          	fadd.s	ft0,ft0,ft1
 55a:	10e8f8c3          	fmadd.s	fa7,fa7,fa4,ft2
 55e:	0145f5d3          	fadd.s	fa1,fa1,fs4
 562:	00062227          	fsw	ft0,4(a2)
 566:	0110f0d3          	fadd.s	ft1,ft1,fa7
 56a:	00b62027          	fsw	fa1,0(a2)
 56e:	00162627          	fsw	ft1,12(a2)
 572:	3466                	fld	fs0,120(sp)
 574:	34c6                	fld	fs1,112(sp)
 576:	3926                	fld	fs2,104(sp)
 578:	3986                	fld	fs3,96(sp)
 57a:	2a66                	fld	fs4,88(sp)
 57c:	2ac6                	fld	fs5,80(sp)
 57e:	2b26                	fld	fs6,72(sp)
 580:	2b86                	fld	fs7,64(sp)
 582:	3c62                	fld	fs8,56(sp)
 584:	3cc2                	fld	fs9,48(sp)
 586:	3d22                	fld	fs10,40(sp)
 588:	3d82                	fld	fs11,32(sp)
 58a:	6109                	add	sp,sp,128
 58c:	8082                	ret

000000000000058e <convolutional_winograd3>:
 58e:	7115                	add	sp,sp,-224
 590:	f15a                	sd	s6,160(sp)
 592:	e16a                	sd	s10,128(sp)
 594:	ffe68b1b          	addw	s6,a3,-2 # 21a <.L1+0xc>
 598:	ed86                	sd	ra,216(sp)
 59a:	fc2a                	sd	a0,56(sp)
 59c:	e02e                	sd	a1,0(sp)
 59e:	031b4d3b          	divw	s10,s6,a7
 5a2:	13005663          	blez	a6,6ce <.L18>
 5a6:	86be                	mv	a3,a5
 5a8:	12f05363          	blez	a5,6ce <.L18>
 5ac:	13a05163          	blez	s10,6ce <.L18>
 5b0:	3779                	addw	a4,a4,-2
 5b2:	0317473b          	divw	a4,a4,a7
 5b6:	87ba                	mv	a5,a4
 5b8:	10e05b63          	blez	a4,6ce <.L18>
 5bc:	0037171b          	sllw	a4,a4,0x3
 5c0:	e962                	sd	s8,144(sp)
 5c2:	00279c1b          	sllw	s8,a5,0x2
 5c6:	9fb9                	addw	a5,a5,a4
 5c8:	f556                	sd	s5,168(sp)
 5ca:	00279a9b          	sllw	s5,a5,0x2
 5ce:	035d07bb          	mulw	a5,s10,s5
 5d2:	e1ca                	sd	s2,192(sp)
 5d4:	8942                	mv	s2,a6
 5d6:	0036981b          	sllw	a6,a3,0x3
 5da:	4701                	li	a4,0
 5dc:	e9a2                	sd	s0,208(sp)
 5de:	f952                	sd	s4,176(sp)
 5e0:	e566                	sd	s9,136(sp)
 5e2:	002c1a13          	sll	s4,s8,0x2
 5e6:	8cb2                	mv	s9,a2
 5e8:	4401                	li	s0,0
 5ea:	00d8063b          	addw	a2,a6,a3
 5ee:	4681                	li	a3,0
 5f0:	e5a6                	sd	s1,200(sp)
 5f2:	fd4e                	sd	s3,184(sp)
 5f4:	038d04bb          	mulw	s1,s10,s8
 5f8:	fcee                	sd	s11,120(sp)
 5fa:	89e6                	mv	s3,s9
 5fc:	ed5e                	sd	s7,152(sp)
 5fe:	8cd6                	mv	s9,s5
 600:	e0be                	sd	a5,64(sp)
 602:	8ad2                	mv	s5,s4
 604:	8db6                	mv	s11,a3
 606:	8a62                	mv	s4,s8
 608:	8b22                	mv	s6,s0
 60a:	8c6a                	mv	s8,s10
 60c:	8d3a                	mv	s10,a4
 60e:	874a                	mv	a4,s2

0000000000000610 <.L21>:
 610:	000d879b          	sext.w	a5,s11
 614:	014b0933          	add	s2,s6,s4
 618:	090a                	sll	s2,s2,0x2
 61a:	f03e                	sd	a5,32(sp)
 61c:	000b079b          	sext.w	a5,s6
 620:	f43e                	sd	a5,40(sp)
 622:	4b81                	li	s7,0
 624:	013907b3          	add	a5,s2,s3
 628:	f83e                	sd	a5,48(sp)
 62a:	f4ba                	sd	a4,104(sp)
 62c:	4781                	li	a5,0
 62e:	e4ea                	sd	s10,72(sp)
 630:	e8ee                	sd	s11,80(sp)
 632:	ec32                	sd	a2,24(sp)
 634:	ecda                	sd	s6,88(sp)
 636:	f0a6                	sd	s1,96(sp)
 638:	875e                	mv	a4,s7

000000000000063a <.L26>:
 63a:	7682                	ld	a3,32(sp)
 63c:	7b42                	ld	s6,48(sp)
 63e:	7d22                	ld	s10,40(sp)
 640:	00d70433          	add	s0,a4,a3
 644:	76e2                	ld	a3,56(sp)
 646:	040a                	sll	s0,s0,0x2
 648:	4d81                	li	s11,0
 64a:	00078b9b          	sext.w	s7,a5
 64e:	9436                	add	s0,s0,a3
 650:	84ee                	mv	s1,s11
 652:	895a                	mv	s2,s6
 654:	e43e                	sd	a5,8(sp)
 656:	8b22                	mv	s6,s0
 658:	8dde                	mv	s11,s7
 65a:	e83a                	sd	a4,16(sp)

000000000000065c <.L25>:
 65c:	6782                	ld	a5,0(sp)
 65e:	002d9513          	sll	a0,s11,0x2
 662:	002d1413          	sll	s0,s10,0x2
 666:	00a78bb3          	add	s7,a5,a0
 66a:	944e                	add	s0,s0,s3

000000000000066c <.L22>:
 66c:	8622                	mv	a2,s0
 66e:	855e                	mv	a0,s7
 670:	85da                	mv	a1,s6
 672:	0441                	add	s0,s0,16
 674:	00000097          	auipc	ra,0x0
 678:	000080e7          	jalr	ra # 674 <.L22+0x8>
 67c:	090b8b93          	add	s7,s7,144
 680:	fe8916e3          	bne	s2,s0,66c <.L22>
 684:	2485                	addw	s1,s1,1
 686:	9de6                	add	s11,s11,s9
 688:	9d52                	add	s10,s10,s4
 68a:	9956                	add	s2,s2,s5
 68c:	fc9c18e3          	bne	s8,s1,65c <.L25>
 690:	6686                	ld	a3,64(sp)
 692:	67a2                	ld	a5,8(sp)
 694:	6742                	ld	a4,16(sp)
 696:	9fb5                	addw	a5,a5,a3
 698:	66e2                	ld	a3,24(sp)
 69a:	2725                	addw	a4,a4,9
 69c:	f8d71fe3          	bne	a4,a3,63a <.L26>
 6a0:	6d26                	ld	s10,72(sp)
 6a2:	6dc6                	ld	s11,80(sp)
 6a4:	6b66                	ld	s6,88(sp)
 6a6:	7486                	ld	s1,96(sp)
 6a8:	7726                	ld	a4,104(sp)
 6aa:	2d05                	addw	s10,s10,1
 6ac:	8636                	mv	a2,a3
 6ae:	00dd8dbb          	addw	s11,s11,a3
 6b2:	009b0b3b          	addw	s6,s6,s1
 6b6:	f5a71de3          	bne	a4,s10,610 <.L21>
 6ba:	644e                	ld	s0,208(sp)
 6bc:	64ae                	ld	s1,200(sp)
 6be:	690e                	ld	s2,192(sp)
 6c0:	79ea                	ld	s3,184(sp)
 6c2:	7a4a                	ld	s4,176(sp)
 6c4:	7aaa                	ld	s5,168(sp)
 6c6:	6bea                	ld	s7,152(sp)
 6c8:	6c4a                	ld	s8,144(sp)
 6ca:	6caa                	ld	s9,136(sp)
 6cc:	7de6                	ld	s11,120(sp)

00000000000006ce <.L18>:
 6ce:	60ee                	ld	ra,216(sp)
 6d0:	7b0a                	ld	s6,160(sp)
 6d2:	6d0a                	ld	s10,128(sp)
 6d4:	612d                	add	sp,sp,224
 6d6:	8082                	ret
