
winograd4.o:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <transforme_g_winograd4>:
   0:	26d05a63          	blez	a3,274 <.L1>
   4:	26c05863          	blez	a2,274 <.L1>
   8:	0036131b          	sllw	t1,a2,0x3
   c:	00661893          	sll	a7,a2,0x6
  10:	00c3033b          	addw	t1,t1,a2
  14:	4801                	li	a6,0
  16:	01158633          	add	a2,a1,a7
  1a:	00000797          	auipc	a5,0x0
  1e:	0007a707          	flw	fa4,0(a5) # 1a <transforme_g_winograd4+0x1a>
  22:	4581                	li	a1,0
  24:	00000797          	auipc	a5,0x0
  28:	0007a687          	flw	fa3,0(a5) # 24 <transforme_g_winograd4+0x24>

000000000000002c <.L4>:
  2c:	00281793          	sll	a5,a6,0x2
  30:	97aa                	add	a5,a5,a0
  32:	41160733          	sub	a4,a2,a7

0000000000000036 <.L3>:
  36:	0007a787          	flw	fa5,0(a5)
  3a:	02478793          	add	a5,a5,36
  3e:	04070713          	add	a4,a4,64
  42:	fcf72027          	fsw	fa5,-64(a4)
  46:	fe07a587          	flw	fa1,-32(a5)
  4a:	fe47a607          	flw	fa2,-28(a5)
  4e:	00b7f7d3          	fadd.s	fa5,fa5,fa1
  52:	00c7f7d3          	fadd.s	fa5,fa5,fa2
  56:	10e7f7d3          	fmul.s	fa5,fa5,fa4
  5a:	fcf72227          	fsw	fa5,-60(a4)
  5e:	fe47a587          	flw	fa1,-28(a5)
  62:	fdc7a787          	flw	fa5,-36(a5)
  66:	fe07a607          	flw	fa2,-32(a5)
  6a:	00b7f7d3          	fadd.s	fa5,fa5,fa1
  6e:	08c7f7d3          	fsub.s	fa5,fa5,fa2
  72:	10e7f7d3          	fmul.s	fa5,fa5,fa4
  76:	fcf72427          	fsw	fa5,-56(a4)
  7a:	fe47a787          	flw	fa5,-28(a5)
  7e:	fcf72627          	fsw	fa5,-52(a4)
  82:	fe87a587          	flw	fa1,-24(a5)
  86:	fdc7a787          	flw	fa5,-36(a5)
  8a:	ff47a607          	flw	fa2,-12(a5)
  8e:	00b7f7d3          	fadd.s	fa5,fa5,fa1
  92:	00c7f7d3          	fadd.s	fa5,fa5,fa2
  96:	10e7f7d3          	fmul.s	fa5,fa5,fa4
  9a:	fcf72827          	fsw	fa5,-48(a4)
  9e:	fe87a587          	flw	fa1,-24(a5)
  a2:	fdc7a787          	flw	fa5,-36(a5)
  a6:	ff47a607          	flw	fa2,-12(a5)
  aa:	fe07a107          	flw	ft2,-32(a5)
  ae:	00b7f7d3          	fadd.s	fa5,fa5,fa1
  b2:	fec7a087          	flw	ft1,-20(a5)
  b6:	ff87a007          	flw	ft0,-8(a5)
  ba:	fe47a507          	flw	fa0,-28(a5)
  be:	ff07a587          	flw	fa1,-16(a5)
  c2:	00c7f7d3          	fadd.s	fa5,fa5,fa2
  c6:	ffc7a607          	flw	fa2,-4(a5)
  ca:	0027f7d3          	fadd.s	fa5,fa5,ft2
  ce:	0017f7d3          	fadd.s	fa5,fa5,ft1
  d2:	0007f7d3          	fadd.s	fa5,fa5,ft0
  d6:	00a7f7d3          	fadd.s	fa5,fa5,fa0
  da:	00b7f7d3          	fadd.s	fa5,fa5,fa1
  de:	00c7f7d3          	fadd.s	fa5,fa5,fa2
  e2:	10d7f7d3          	fmul.s	fa5,fa5,fa3
  e6:	fcf72a27          	fsw	fa5,-44(a4)
  ea:	fdc7a787          	flw	fa5,-36(a5)
  ee:	fe87a587          	flw	fa1,-24(a5)
  f2:	ff47a607          	flw	fa2,-12(a5)
  f6:	fe47a107          	flw	ft2,-28(a5)
  fa:	00b7f7d3          	fadd.s	fa5,fa5,fa1
  fe:	ff07a087          	flw	ft1,-16(a5)
 102:	ffc7a007          	flw	ft0,-4(a5)
 106:	fe07a507          	flw	fa0,-32(a5)
 10a:	fec7a587          	flw	fa1,-20(a5)
 10e:	00c7f7d3          	fadd.s	fa5,fa5,fa2
 112:	ff87a607          	flw	fa2,-8(a5)
 116:	0027f7d3          	fadd.s	fa5,fa5,ft2
 11a:	0017f7d3          	fadd.s	fa5,fa5,ft1
 11e:	0007f7d3          	fadd.s	fa5,fa5,ft0
 122:	08a7f7d3          	fsub.s	fa5,fa5,fa0
 126:	08b7f7d3          	fsub.s	fa5,fa5,fa1
 12a:	08c7f7d3          	fsub.s	fa5,fa5,fa2
 12e:	10d7f7d3          	fmul.s	fa5,fa5,fa3
 132:	fcf72c27          	fsw	fa5,-40(a4)
 136:	ff07a587          	flw	fa1,-16(a5)
 13a:	fe47a787          	flw	fa5,-28(a5)
 13e:	ffc7a607          	flw	fa2,-4(a5)
 142:	00b7f7d3          	fadd.s	fa5,fa5,fa1
 146:	00c7f7d3          	fadd.s	fa5,fa5,fa2
 14a:	10e7f7d3          	fmul.s	fa5,fa5,fa4
 14e:	fcf72e27          	fsw	fa5,-36(a4)
 152:	ff47a587          	flw	fa1,-12(a5)
 156:	fdc7a787          	flw	fa5,-36(a5)
 15a:	fe87a607          	flw	fa2,-24(a5)
 15e:	00b7f7d3          	fadd.s	fa5,fa5,fa1
 162:	08c7f7d3          	fsub.s	fa5,fa5,fa2
 166:	10e7f7d3          	fmul.s	fa5,fa5,fa4
 16a:	fef72027          	fsw	fa5,-32(a4)
 16e:	ff47a587          	flw	fa1,-12(a5)
 172:	fdc7a787          	flw	fa5,-36(a5)
 176:	fe07a607          	flw	fa2,-32(a5)
 17a:	ff87a107          	flw	ft2,-8(a5)
 17e:	00b7f7d3          	fadd.s	fa5,fa5,fa1
 182:	fe47a087          	flw	ft1,-28(a5)
 186:	ffc7a007          	flw	ft0,-4(a5)
 18a:	fe87a507          	flw	fa0,-24(a5)
 18e:	fec7a587          	flw	fa1,-20(a5)
 192:	00c7f7d3          	fadd.s	fa5,fa5,fa2
 196:	ff07a607          	flw	fa2,-16(a5)
 19a:	0027f7d3          	fadd.s	fa5,fa5,ft2
 19e:	0017f7d3          	fadd.s	fa5,fa5,ft1
 1a2:	0007f7d3          	fadd.s	fa5,fa5,ft0
 1a6:	08a7f7d3          	fsub.s	fa5,fa5,fa0
 1aa:	08b7f7d3          	fsub.s	fa5,fa5,fa1
 1ae:	08c7f7d3          	fsub.s	fa5,fa5,fa2
 1b2:	10d7f7d3          	fmul.s	fa5,fa5,fa3
 1b6:	fef72227          	fsw	fa5,-28(a4)
 1ba:	ff47a587          	flw	fa1,-12(a5)
 1be:	fdc7a787          	flw	fa5,-36(a5)
 1c2:	fec7a607          	flw	fa2,-20(a5)
 1c6:	fe47a107          	flw	ft2,-28(a5)
 1ca:	00b7f7d3          	fadd.s	fa5,fa5,fa1
 1ce:	ffc7a087          	flw	ft1,-4(a5)
 1d2:	fe87a007          	flw	ft0,-24(a5)
 1d6:	fe07a507          	flw	fa0,-32(a5)
 1da:	ff87a587          	flw	fa1,-8(a5)
 1de:	00c7f7d3          	fadd.s	fa5,fa5,fa2
 1e2:	ff07a607          	flw	fa2,-16(a5)
 1e6:	0027f7d3          	fadd.s	fa5,fa5,ft2
 1ea:	0017f7d3          	fadd.s	fa5,fa5,ft1
 1ee:	0807f7d3          	fsub.s	fa5,fa5,ft0
 1f2:	08a7f7d3          	fsub.s	fa5,fa5,fa0
 1f6:	08b7f7d3          	fsub.s	fa5,fa5,fa1
 1fa:	08c7f7d3          	fsub.s	fa5,fa5,fa2
 1fe:	10d7f7d3          	fmul.s	fa5,fa5,fa3
 202:	fef72427          	fsw	fa5,-24(a4)
 206:	fe47a787          	flw	fa5,-28(a5)
 20a:	ffc7a587          	flw	fa1,-4(a5)
 20e:	ff07a607          	flw	fa2,-16(a5)
 212:	00b7f7d3          	fadd.s	fa5,fa5,fa1
 216:	08c7f7d3          	fsub.s	fa5,fa5,fa2
 21a:	10e7f7d3          	fmul.s	fa5,fa5,fa4
 21e:	fef72627          	fsw	fa5,-20(a4)
 222:	ff47a787          	flw	fa5,-12(a5)
 226:	fef72827          	fsw	fa5,-16(a4)
 22a:	ff87a587          	flw	fa1,-8(a5)
 22e:	ffc7a607          	flw	fa2,-4(a5)
 232:	00b7f7d3          	fadd.s	fa5,fa5,fa1
 236:	00c7f7d3          	fadd.s	fa5,fa5,fa2
 23a:	10e7f7d3          	fmul.s	fa5,fa5,fa4
 23e:	fef72a27          	fsw	fa5,-12(a4)
 242:	ff47a787          	flw	fa5,-12(a5)
 246:	ffc7a587          	flw	fa1,-4(a5)
 24a:	ff87a607          	flw	fa2,-8(a5)
 24e:	00b7f7d3          	fadd.s	fa5,fa5,fa1
 252:	08c7f7d3          	fsub.s	fa5,fa5,fa2
 256:	10e7f7d3          	fmul.s	fa5,fa5,fa4
 25a:	fef72c27          	fsw	fa5,-8(a4)
 25e:	ffc7a787          	flw	fa5,-4(a5)
 262:	fef72e27          	fsw	fa5,-4(a4)
 266:	dcc718e3          	bne	a4,a2,36 <.L3>
 26a:	2585                	addw	a1,a1,1
 26c:	981a                	add	a6,a6,t1
 26e:	9646                	add	a2,a2,a7
 270:	dab69ee3          	bne	a3,a1,2c <.L4>

0000000000000274 <.L1>:
 274:	8082                	ret

0000000000000276 <winograd4_1d>:
 276:	00452587          	flw	fa1,4(a0)
 27a:	00852787          	flw	fa5,8(a0)
 27e:	0085a507          	flw	fa0,8(a1)
 282:	01452707          	flw	fa4,20(a0)
 286:	08b7f653          	fsub.s	fa2,fa5,fa1
 28a:	00052687          	flw	fa3,0(a0)
 28e:	08e5f753          	fsub.s	fa4,fa1,fa4
 292:	00c5a007          	flw	ft0,12(a1)
 296:	08f6f6d3          	fsub.s	fa3,fa3,fa5
 29a:	10a67653          	fmul.s	fa2,fa2,fa0
 29e:	0005a507          	flw	fa0,0(a1)
 2a2:	00b7f7d3          	fadd.s	fa5,fa5,fa1
 2a6:	0045a587          	flw	fa1,4(a1)
 2aa:	60077743          	fmadd.s	fa4,fa4,ft0,fa2
 2ae:	60a6f6c3          	fmadd.s	fa3,fa3,fa0,fa2
 2b2:	70b7f747          	fmsub.s	fa4,fa5,fa1,fa4
 2b6:	68b7f7c3          	fmadd.s	fa5,fa5,fa1,fa3
 2ba:	00e62227          	fsw	fa4,4(a2)
 2be:	00f62027          	fsw	fa5,0(a2)
 2c2:	8082                	ret

00000000000002c4 <winograd4_2d>:
 2c4:	03452787          	flw	fa5,52(a0)
 2c8:	01c52187          	flw	ft3,28(a0)
 2cc:	00452707          	flw	fa4,4(a0)
 2d0:	7119                	add	sp,sp,-128
 2d2:	b8a6                	fsd	fs1,112(sp)
 2d4:	b866                	fsd	fs9,48(sp)
 2d6:	00f1f4d3          	fadd.s	fs1,ft3,fa5
 2da:	08f77cd3          	fsub.s	fs9,fa4,fa5
 2de:	0837f653          	fsub.s	fa2,fa5,ft3
 2e2:	08f1f353          	fsub.s	ft6,ft3,fa5
 2e6:	08e7f7d3          	fsub.s	fa5,fa5,fa4
 2ea:	07c52687          	flw	fa3,124(a0)
 2ee:	03852387          	flw	ft7,56(a0)
 2f2:	00852e07          	flw	ft8,8(a0)
 2f6:	bca2                	fsd	fs0,120(sp)
 2f8:	b4ca                	fsd	fs2,104(sp)
 2fa:	b0ce                	fsd	fs3,96(sp)
 2fc:	acd2                	fsd	fs4,88(sp)
 2fe:	a4da                	fsd	fs6,72(sp)
 300:	a0de                	fsd	fs7,64(sp)
 302:	bc62                	fsd	fs8,56(sp)
 304:	b46a                	fsd	fs10,40(sp)
 306:	b06e                	fsd	fs11,32(sp)
 308:	a8d6                	fsd	fs5,80(sp)
 30a:	02052887          	flw	fa7,32(a0)
 30e:	03052a07          	flw	fs4,48(a0)
 312:	0245a407          	flw	fs0,36(a1)
 316:	08052d07          	flw	fs10,128(a0)
 31a:	04452707          	flw	fa4,68(a0)
 31e:	02c52f87          	flw	ft11,44(a0)
 322:	0085ab07          	flw	fs6,8(a1)
 326:	0145ab87          	flw	fs7,20(a1)
 32a:	0836f553          	fsub.s	fa0,fa3,ft3
 32e:	0045a087          	flw	ft1,4(a1)
 332:	08d1f1d3          	fsub.s	ft3,ft3,fa3
 336:	0285a207          	flw	ft4,40(a1)
 33a:	01852687          	flw	fa3,24(a0)
 33e:	0385a007          	flw	ft0,56(a1)
 342:	00f12e27          	fsw	fa5,28(sp)
 346:	00052587          	flw	fa1,0(a0)
 34a:	02c5aa87          	flw	fs5,44(a1)
 34e:	01c5a787          	flw	fa5,28(a1)
 352:	087e7ed3          	fsub.s	ft9,ft8,ft7
 356:	09a8f853          	fsub.s	fa6,fa7,fs10
 35a:	00f12827          	fsw	fa5,16(sp)
 35e:	0205a787          	flw	fa5,32(a1)
 362:	0913f153          	fsub.s	ft2,ft7,fa7
 366:	01dcff53          	fadd.s	ft10,fs9,ft9
 36a:	00f12427          	fsw	fa5,8(sp)
 36e:	0305a787          	flw	fa5,48(a1)
 372:	0945f5d3          	fsub.s	fa1,fa1,fs4
 376:	00237353          	fadd.s	ft6,ft6,ft2
 37a:	00f12027          	fsw	fa5,0(sp)
 37e:	01057553          	fadd.s	fa0,fa0,fa6
 382:	03c5a787          	flw	fa5,60(a1)
 386:	0078f9d3          	fadd.s	fs3,fa7,ft7
 38a:	00c17153          	fadd.s	ft2,ft2,fa2
 38e:	101f7f53          	fmul.s	ft10,ft10,ft1
 392:	00c5a907          	flw	fs2,12(a1)
 396:	00f12227          	fsw	fa5,4(sp)
 39a:	07852087          	flw	ft1,120(a0)
 39e:	01c12787          	flw	fa5,28(sp)
 3a2:	0075f5d3          	fadd.s	fa1,fa1,ft7
 3a6:	10437353          	fmul.s	ft6,ft6,ft4
 3aa:	01212a27          	fsw	fs2,20(sp)
 3ae:	10057553          	fmul.s	fa0,fa0,ft0
 3b2:	0105a907          	flw	fs2,16(a1)
 3b6:	01d7f7d3          	fadd.s	fa5,fa5,ft9
 3ba:	0816f0d3          	fsub.s	ft1,fa3,ft1
 3be:	0899fed3          	fsub.s	ft9,fs3,fs1
 3c2:	f08172c3          	fmadd.s	ft5,ft2,fs0,ft10
 3c6:	01212627          	fsw	fs2,12(sp)
 3ca:	0185a907          	flw	fs2,24(a1)
 3ce:	09c5f5d3          	fsub.s	fa1,fa1,ft8
 3d2:	00462e07          	flw	ft8,4(a2)
 3d6:	00657053          	fadd.s	ft0,fa0,ft6
 3da:	112efed3          	fmul.s	ft9,ft9,fs2
 3de:	01a0f0d3          	fadd.s	ft1,ft1,fs10
 3e2:	0146f953          	fadd.s	fs2,fa3,fs4
 3e6:	08da76d3          	fsub.s	fa3,fs4,fa3
 3ea:	08c52207          	flw	ft4,140(a0)
 3ee:	01c2f2d3          	fadd.s	ft5,ft5,ft8
 3f2:	00c62e07          	flw	ft8,12(a2)
 3f6:	0005ad87          	flw	fs11,0(a1)
 3fa:	00412c27          	fsw	ft4,24(sp)
 3fe:	01c07053          	fadd.s	ft0,ft0,ft8
 402:	00cff653          	fadd.s	fa2,ft11,fa2
 406:	0101f853          	fadd.s	fa6,ft3,fa6
 40a:	0116f6d3          	fadd.s	fa3,fa3,fa7
 40e:	0910f0d3          	fsub.s	ft1,ft1,fa7
 412:	01812887          	flw	fa7,24(sp)
 416:	f1b5f5c3          	fmadd.s	fa1,fa1,fs11,ft10
 41a:	01452207          	flw	ft4,20(a0)
 41e:	0134fe53          	fadd.s	ft8,fs1,fs3
 422:	0345ac07          	flw	fs8,52(a1)
 426:	0038f1d3          	fadd.s	ft3,fa7,ft3
 42a:	00062887          	flw	fa7,0(a2)
 42e:	0081704b          	fnmsub.s	ft0,ft2,fs0,ft0
 432:	08e67653          	fsub.s	fa2,fa2,fa4
 436:	08477253          	fsub.s	ft4,fa4,ft4
 43a:	00eff753          	fadd.s	fa4,ft11,fa4
 43e:	2967f2cb          	fnmsub.s	ft5,fa5,fs6,ft5
 442:	51887543          	fmadd.s	fa0,fa6,fs8,fa0
 446:	0115f5d3          	fadd.s	fa1,fa1,fa7
 44a:	09397953          	fsub.s	fs2,fs2,fs3
 44e:	e97e7f43          	fmadd.s	ft10,ft8,fs7,ft9
 452:	00862a07          	flw	fs4,8(a2)
 456:	0188704b          	fnmsub.s	ft0,fa6,fs8,ft0
 45a:	08e4f753          	fsub.s	fa4,fs1,fa4
 45e:	00c12807          	flw	fa6,12(sp)
 462:	e97e7e47          	fmsub.s	ft8,ft8,fs7,ft9
 466:	01927253          	fadd.s	ft4,ft4,fs9
 46a:	08aa7553          	fsub.s	fa0,fs4,fa0
 46e:	0862f2d3          	fsub.s	ft5,ft5,ft6
 472:	5967f7c3          	fmadd.s	fa5,fa5,fs6,fa1
 476:	01012587          	flw	fa1,16(sp)
 47a:	f1097f43          	fmadd.s	ft10,fs2,fa6,ft10
 47e:	30817143          	fmadd.s	ft2,ft2,fs0,ft6
 482:	01412907          	flw	fs2,20(sp)
 486:	00012407          	flw	fs0,0(sp)
 48a:	0876f6d3          	fsub.s	fa3,fa3,ft7
 48e:	e0b7774b          	fnmsub.s	fa4,fa4,fa1,ft8
 492:	00812587          	flw	fa1,8(sp)
 496:	01567043          	fmadd.s	ft0,fa2,fs5,ft0
 49a:	2922724b          	fnmsub.s	ft4,ft4,fs2,ft5
 49e:	5080f0cb          	fnmsub.s	ft1,ft1,fs0,fa0
 4a2:	09f1f1d3          	fsub.s	ft3,ft3,ft11
 4a6:	10b6f6c3          	fmadd.s	fa3,fa3,fa1,ft2
 4aa:	00412587          	flw	fa1,4(sp)
 4ae:	01e7f7d3          	fadd.s	fa5,fa5,ft10
 4b2:	2156764b          	fnmsub.s	fa2,fa2,fs5,ft4
 4b6:	001f7f53          	fadd.s	ft10,ft10,ft1
 4ba:	00b1f1c3          	fmadd.s	ft3,ft3,fa1,ft0
 4be:	00d7f7d3          	fadd.s	fa5,fa5,fa3
 4c2:	00c77653          	fadd.s	fa2,fa4,fa2
 4c6:	08df7f53          	fsub.s	ft10,ft10,fa3
 4ca:	00377753          	fadd.s	fa4,fa4,ft3
 4ce:	00f62027          	fsw	fa5,0(a2)
 4d2:	00c62227          	fsw	fa2,4(a2)
 4d6:	01e62427          	fsw	ft10,8(a2)
 4da:	00e62627          	fsw	fa4,12(a2)
 4de:	3466                	fld	fs0,120(sp)
 4e0:	34c6                	fld	fs1,112(sp)
 4e2:	3926                	fld	fs2,104(sp)
 4e4:	3986                	fld	fs3,96(sp)
 4e6:	2a66                	fld	fs4,88(sp)
 4e8:	2ac6                	fld	fs5,80(sp)
 4ea:	2b26                	fld	fs6,72(sp)
 4ec:	2b86                	fld	fs7,64(sp)
 4ee:	3c62                	fld	fs8,56(sp)
 4f0:	3cc2                	fld	fs9,48(sp)
 4f2:	3d22                	fld	fs10,40(sp)
 4f4:	3d82                	fld	fs11,32(sp)
 4f6:	6109                	add	sp,sp,128
 4f8:	8082                	ret

00000000000004fa <convolutional_winograd4>:
 4fa:	7151                	add	sp,sp,-240
 4fc:	f95a                	sd	s6,176(sp)
 4fe:	ed66                	sd	s9,152(sp)
 500:	ffe68b1b          	addw	s6,a3,-2
 504:	f586                	sd	ra,232(sp)
 506:	e0aa                	sd	a0,64(sp)
 508:	e42e                	sd	a1,8(sp)
 50a:	031b4cbb          	divw	s9,s6,a7
 50e:	13005463          	blez	a6,636 <.L11>
 512:	86be                	mv	a3,a5
 514:	12f05163          	blez	a5,636 <.L11>
 518:	11905f63          	blez	s9,636 <.L11>
 51c:	3779                	addw	a4,a4,-2
 51e:	0317473b          	divw	a4,a4,a7
 522:	87ba                	mv	a5,a4
 524:	10e05963          	blez	a4,636 <.L11>
 528:	0037151b          	sllw	a0,a4,0x3
 52c:	9fa9                	addw	a5,a5,a0
 52e:	fd56                	sd	s5,184(sp)
 530:	00279a9b          	sllw	s5,a5,0x2
 534:	035c87bb          	mulw	a5,s9,s5
 538:	f1a2                	sd	s0,224(sp)
 53a:	0027141b          	sllw	s0,a4,0x2
 53e:	eda6                	sd	s1,216(sp)
 540:	e9ca                	sd	s2,208(sp)
 542:	0046949b          	sllw	s1,a3,0x4
 546:	4901                	li	s2,0
 548:	e5ce                	sd	s3,200(sp)
 54a:	e1d2                	sd	s4,192(sp)
 54c:	4301                	li	t1,0
 54e:	028c873b          	mulw	a4,s9,s0
 552:	00241a13          	sll	s4,s0,0x2
 556:	4981                	li	s3,0
 558:	f162                	sd	s8,160(sp)
 55a:	e96a                	sd	s10,144(sp)
 55c:	e56e                	sd	s11,136(sp)
 55e:	8c4a                	mv	s8,s2
 560:	8d56                	mv	s10,s5
 562:	8926                	mv	s2,s1
 564:	8ad2                	mv	s5,s4
 566:	f55e                	sd	s7,168(sp)
 568:	e4be                	sd	a5,72(sp)
 56a:	8dce                	mv	s11,s3
 56c:	849a                	mv	s1,t1
 56e:	8b32                	mv	s6,a2
 570:	8a22                	mv	s4,s0

0000000000000572 <.L14>:
 572:	0004879b          	sext.w	a5,s1
 576:	014c09b3          	add	s3,s8,s4
 57a:	098a                	sll	s3,s3,0x2
 57c:	f43e                	sd	a5,40(sp)
 57e:	000c079b          	sext.w	a5,s8
 582:	f83e                	sd	a5,48(sp)
 584:	4b81                	li	s7,0
 586:	016987b3          	add	a5,s3,s6
 58a:	fc3e                	sd	a5,56(sp)
 58c:	f8ba                	sd	a4,112(sp)
 58e:	4781                	li	a5,0
 590:	e8ee                	sd	s11,80(sp)
 592:	eca6                	sd	s1,88(sp)
 594:	f0ca                	sd	s2,96(sp)
 596:	f4e2                	sd	s8,104(sp)
 598:	875e                	mv	a4,s7
 59a:	f036                	sd	a3,32(sp)
 59c:	fcc2                	sd	a6,120(sp)

000000000000059e <.L19>:
 59e:	76a2                	ld	a3,40(sp)
 5a0:	0047141b          	sllw	s0,a4,0x4
 5a4:	79e2                	ld	s3,56(sp)
 5a6:	9436                	add	s0,s0,a3
 5a8:	6686                	ld	a3,64(sp)
 5aa:	7dc2                	ld	s11,48(sp)
 5ac:	040a                	sll	s0,s0,0x2
 5ae:	4c01                	li	s8,0
 5b0:	00078b9b          	sext.w	s7,a5
 5b4:	9436                	add	s0,s0,a3
 5b6:	84e2                	mv	s1,s8
 5b8:	894e                	mv	s2,s3
 5ba:	8c6e                	mv	s8,s11
 5bc:	e83e                	sd	a5,16(sp)
 5be:	ec3a                	sd	a4,24(sp)
 5c0:	89a2                	mv	s3,s0
 5c2:	8dde                	mv	s11,s7

00000000000005c4 <.L18>:
 5c4:	67a2                	ld	a5,8(sp)
 5c6:	002d9513          	sll	a0,s11,0x2
 5ca:	002c1413          	sll	s0,s8,0x2
 5ce:	00a78bb3          	add	s7,a5,a0
 5d2:	945a                	add	s0,s0,s6

00000000000005d4 <.L15>:
 5d4:	8622                	mv	a2,s0
 5d6:	855e                	mv	a0,s7
 5d8:	85ce                	mv	a1,s3
 5da:	0441                	add	s0,s0,16
 5dc:	00000097          	auipc	ra,0x0
 5e0:	000080e7          	jalr	ra # 5dc <.L15+0x8>
 5e4:	090b8b93          	add	s7,s7,144
 5e8:	fe8916e3          	bne	s2,s0,5d4 <.L15>
 5ec:	2485                	addw	s1,s1,1
 5ee:	9dea                	add	s11,s11,s10
 5f0:	9c52                	add	s8,s8,s4
 5f2:	9956                	add	s2,s2,s5
 5f4:	fc9c98e3          	bne	s9,s1,5c4 <.L18>
 5f8:	66a6                	ld	a3,72(sp)
 5fa:	67c2                	ld	a5,16(sp)
 5fc:	6762                	ld	a4,24(sp)
 5fe:	9fb5                	addw	a5,a5,a3
 600:	7682                	ld	a3,32(sp)
 602:	2705                	addw	a4,a4,1
 604:	f8e69de3          	bne	a3,a4,59e <.L19>
 608:	6dc6                	ld	s11,80(sp)
 60a:	64e6                	ld	s1,88(sp)
 60c:	7906                	ld	s2,96(sp)
 60e:	7c26                	ld	s8,104(sp)
 610:	7746                	ld	a4,112(sp)
 612:	7866                	ld	a6,120(sp)
 614:	2d85                	addw	s11,s11,1
 616:	012484bb          	addw	s1,s1,s2
 61a:	00ec0c3b          	addw	s8,s8,a4
 61e:	f5b81ae3          	bne	a6,s11,572 <.L14>
 622:	740e                	ld	s0,224(sp)
 624:	64ee                	ld	s1,216(sp)
 626:	694e                	ld	s2,208(sp)
 628:	69ae                	ld	s3,200(sp)
 62a:	6a0e                	ld	s4,192(sp)
 62c:	7aea                	ld	s5,184(sp)
 62e:	7baa                	ld	s7,168(sp)
 630:	7c0a                	ld	s8,160(sp)
 632:	6d4a                	ld	s10,144(sp)
 634:	6daa                	ld	s11,136(sp)

0000000000000636 <.L11>:
 636:	70ae                	ld	ra,232(sp)
 638:	7b4a                	ld	s6,176(sp)
 63a:	6cea                	ld	s9,152(sp)
 63c:	616d                	add	sp,sp,240
 63e:	8082                	ret
