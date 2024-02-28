
winograd5.o:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <winograd5_2d>:
   0:	7155                	add	sp,sp,-208
   2:	b14e                	fsd	fs3,160(sp)
   4:	a15e                	fsd	fs7,128(sp)
   6:	0245a287          	flw	ft5,36(a1)
   a:	0145a387          	flw	ft7,20(a1)
   e:	0285a687          	flw	fa3,40(a1)
  12:	0185a707          	flw	fa4,24(a1)
  16:	0205a587          	flw	fa1,32(a1)
  1a:	0105a607          	flw	fa2,16(a1)
  1e:	0085ab87          	flw	fs7,8(a1)
  22:	0345a987          	flw	fs3,52(a1)
  26:	0385a307          	flw	ft6,56(a1)
  2a:	0045a107          	flw	ft2,4(a1)
  2e:	0005a887          	flw	fa7,0(a1)
  32:	ad52                	fsd	fs4,152(sp)
  34:	a956                	fsd	fs5,144(sp)
  36:	a55a                	fsd	fs6,136(sp)
  38:	0053fa53          	fadd.s	fs4,ft7,ft5
  3c:	08517f53          	fsub.s	ft10,ft2,ft5
  40:	08dbfad3          	fsub.s	fs5,fs7,fa3
  44:	0872fed3          	fsub.s	ft9,ft5,ft7
  48:	08e6fb53          	fsub.s	fs6,fa3,fa4
  4c:	0933fe53          	fsub.s	ft8,ft7,fs3
  50:	00b77253          	fadd.s	ft4,fa4,fa1
  54:	00c371d3          	fadd.s	ft3,ft6,fa2
  58:	0116f8d3          	fadd.s	fa7,fa3,fa7
  5c:	08677353          	fsub.s	ft6,fa4,ft6
  60:	bd22                	fsd	fs0,184(sp)
  62:	b54a                	fsd	fs2,168(sp)
  64:	01c5a407          	flw	fs0,28(a1)
  68:	02c5a907          	flw	fs2,44(a1)
  6c:	0305a007          	flw	ft0,48(a1)
  70:	00c5a507          	flw	fa0,12(a1)
  74:	00d777d3          	fadd.s	fa5,fa4,fa3
  78:	085b70d3          	fsub.s	ft1,fs6,ft5
  7c:	00b67853          	fadd.s	fa6,fa2,fa1
  80:	088e7fd3          	fsub.s	ft11,ft8,fs0
  84:	08b8f8d3          	fsub.s	fa7,fa7,fa1
  88:	08c27253          	fsub.s	ft4,ft4,fa2
  8c:	092a75d3          	fsub.s	fa1,fs4,fs2
  90:	092ef653          	fsub.s	fa2,ft9,fs2
  94:	0801f1d3          	fsub.s	ft3,ft3,ft0
  98:	082af153          	fsub.s	ft2,fs5,ft2
  9c:	08737053          	fsub.s	ft0,ft6,ft7
  a0:	08af7553          	fsub.s	fa0,ft10,fa0
  a4:	b926                	fsd	fs1,176(sp)
  a6:	03c5a487          	flw	fs1,60(a1)
  aa:	08d27253          	fsub.s	ft4,ft4,fa3
  ae:	08e1f1d3          	fsub.s	ft3,ft3,fa4
  b2:	00517153          	fadd.s	ft2,ft2,ft5
  b6:	006e7753          	fadd.s	fa4,ft8,ft6
  ba:	0070f0d3          	fadd.s	ft1,ft1,ft7
  be:	01307053          	fadd.s	ft0,ft0,fs3
  c2:	01257553          	fadd.s	fa0,fa0,fs2
  c6:	0885f5d3          	fsub.s	fa1,fa1,fs0
  ca:	00867653          	fadd.s	fa2,fa2,fs0
  ce:	009ff6d3          	fadd.s	fa3,ft11,fs1
  d2:	0978f8d3          	fsub.s	fa7,fa7,fs7
  d6:	08f87853          	fsub.s	fa6,fa6,fa5
  da:	015f7f53          	fadd.s	ft10,ft10,fs5
  de:	016efed3          	fadd.s	ft9,ft9,fs6
  e2:	00fa7ad3          	fadd.s	fs5,fs4,fa5
  e6:	0947f7d3          	fsub.s	fa5,fa5,fs4
  ea:	e586                	sd	ra,200(sp)
  ec:	e1a2                	sd	s0,192(sp)
  ee:	e082                	sd	zero,64(sp)
  f0:	8432                	mv	s0,a2
  f2:	e482                	sd	zero,72(sp)
  f4:	e882                	sd	zero,80(sp)
  f6:	ec82                	sd	zero,88(sp)
  f8:	f082                	sd	zero,96(sp)
  fa:	f482                	sd	zero,104(sp)
  fc:	04010813          	add	a6,sp,64
 100:	868a                	mv	a3,sp
 102:	4791                	li	a5,4
 104:	4711                	li	a4,4
 106:	4611                	li	a2,4
 108:	4591                	li	a1,4
 10a:	f882                	sd	zero,112(sp)
 10c:	02412027          	fsw	ft4,32(sp)
 110:	02312827          	fsw	ft3,48(sp)
 114:	01512a27          	fsw	fs5,20(sp)
 118:	02e12a27          	fsw	fa4,52(sp)
 11c:	00212427          	fsw	ft2,8(sp)
 120:	00f12c27          	fsw	fa5,24(sp)
 124:	02112427          	fsw	ft1,40(sp)
 128:	02012c27          	fsw	ft0,56(sp)
 12c:	00a12627          	fsw	fa0,12(sp)
 130:	00b12e27          	fsw	fa1,28(sp)
 134:	02c12627          	fsw	fa2,44(sp)
 138:	02d12e27          	fsw	fa3,60(sp)
 13c:	fc82                	sd	zero,120(sp)
 13e:	01112027          	fsw	fa7,0(sp)
 142:	01012827          	fsw	fa6,16(sp)
 146:	01e12227          	fsw	ft10,4(sp)
 14a:	03d12227          	fsw	ft9,36(sp)
 14e:	00000097          	auipc	ra,0x0
 152:	000080e7          	jalr	ra # 14e <winograd5_2d+0x14e>
 156:	06c12707          	flw	fa4,108(sp)
 15a:	06412507          	flw	fa0,100(sp)
 15e:	05412787          	flw	fa5,84(sp)
 162:	07c12687          	flw	fa3,124(sp)
 166:	04412007          	flw	ft0,68(sp)
 16a:	07412587          	flw	fa1,116(sp)
 16e:	20e710d3          	fneg.s	ft1,fa4
 172:	05012607          	flw	fa2,80(sp)
 176:	06012287          	flw	ft5,96(sp)
 17a:	05c12307          	flw	ft6,92(sp)
 17e:	00b575d3          	fadd.s	fa1,fa0,fa1
 182:	07012107          	flw	ft2,112(sp)
 186:	0007f053          	fadd.s	ft0,fa5,ft0
 18a:	08d0f0d3          	fsub.s	ft1,ft1,fa3
 18e:	04012687          	flw	fa3,64(sp)
 192:	0022f153          	fadd.s	ft2,ft5,ft2
 196:	00e37753          	fadd.s	fa4,ft6,fa4
 19a:	00d676d3          	fadd.s	fa3,fa2,fa3
 19e:	05812187          	flw	ft3,88(sp)
 1a2:	00a07053          	fadd.s	ft0,ft0,fa0
 1a6:	06812207          	flw	ft4,104(sp)
 1aa:	08b7f7d3          	fsub.s	fa5,fa5,fa1
 1ae:	04812507          	flw	fa0,72(sp)
 1b2:	07812587          	flw	fa1,120(sp)
 1b6:	04c12387          	flw	ft7,76(sp)
 1ba:	08267653          	fsub.s	fa2,fa2,ft2
 1be:	00b275d3          	fadd.s	fa1,ft4,fa1
 1c2:	0060f0d3          	fadd.s	ft1,ft1,ft6
 1c6:	00a1f553          	fadd.s	fa0,ft3,fa0
 1ca:	00777753          	fadd.s	fa4,fa4,ft7
 1ce:	0056f6d3          	fadd.s	fa3,fa3,ft5
 1d2:	08b1f153          	fsub.s	ft2,ft3,fa1
 1d6:	00c7f653          	fadd.s	fa2,fa5,fa2
 1da:	00457553          	fadd.s	fa0,fa0,ft4
 1de:	08e07753          	fsub.s	fa4,ft0,fa4
 1e2:	0006f6d3          	fadd.s	fa3,fa3,ft0
 1e6:	0817f7d3          	fsub.s	fa5,fa5,ft1
 1ea:	00c42007          	flw	ft0,12(s0)
 1ee:	00267653          	fadd.s	fa2,fa2,ft2
 1f2:	08a77753          	fsub.s	fa4,fa4,fa0
 1f6:	00a6f6d3          	fadd.s	fa3,fa3,fa0
 1fa:	0007f7d3          	fadd.s	fa5,fa5,ft0
 1fe:	0835f5d3          	fsub.s	fa1,fa1,ft3
 202:	00042087          	flw	ft1,0(s0)
 206:	00842007          	flw	ft0,8(s0)
 20a:	00442507          	flw	fa0,4(s0)
 20e:	00d0f0d3          	fadd.s	ft1,ft1,fa3
 212:	00b7f7d3          	fadd.s	fa5,fa5,fa1
 216:	00c076d3          	fadd.s	fa3,ft0,fa2
 21a:	00e57753          	fadd.s	fa4,fa0,fa4
 21e:	60ae                	ld	ra,200(sp)
 220:	00142027          	fsw	ft1,0(s0)
 224:	00f42627          	fsw	fa5,12(s0)
 228:	00d42427          	fsw	fa3,8(s0)
 22c:	00e42227          	fsw	fa4,4(s0)
 230:	640e                	ld	s0,192(sp)
 232:	346a                	fld	fs0,184(sp)
 234:	34ca                	fld	fs1,176(sp)
 236:	392a                	fld	fs2,168(sp)
 238:	398a                	fld	fs3,160(sp)
 23a:	2a6a                	fld	fs4,152(sp)
 23c:	2aca                	fld	fs5,144(sp)
 23e:	2b2a                	fld	fs6,136(sp)
 240:	2b8a                	fld	fs7,128(sp)
 242:	6169                	add	sp,sp,208
 244:	8082                	ret

0000000000000246 <convolutional_winograd5>:
 246:	7131                	add	sp,sp,-192
 248:	e15a                	sd	s6,128(sp)
 24a:	36f9                	addw	a3,a3,-2
 24c:	fd06                	sd	ra,184(sp)
 24e:	e4c2                	sd	a6,72(sp)
 250:	e82a                	sd	a0,16(sp)
 252:	ec3e                	sd	a5,24(sp)
 254:	0316cb3b          	divw	s6,a3,a7
 258:	0f005063          	blez	a6,338 <.L4>
 25c:	853e                	mv	a0,a5
 25e:	0cf05d63          	blez	a5,338 <.L4>
 262:	0d605b63          	blez	s6,338 <.L4>
 266:	3779                	addw	a4,a4,-2
 268:	e952                	sd	s4,144(sp)
 26a:	03174a3b          	divw	s4,a4,a7
 26e:	0d405963          	blez	s4,340 <.L21>
 272:	034b07bb          	mulw	a5,s6,s4
 276:	e556                	sd	s5,136(sp)
 278:	002a1a9b          	sllw	s5,s4,0x2
 27c:	8756                	mv	a4,s5
 27e:	0a1a                	sll	s4,s4,0x6
 280:	e032                	sd	a2,0(sp)
 282:	0005061b          	sext.w	a2,a0
 286:	e0b2                	sd	a2,64(sp)
 288:	01458633          	add	a2,a1,s4
 28c:	f922                	sd	s0,176(sp)
 28e:	02eb06bb          	mulw	a3,s6,a4
 292:	0047979b          	sllw	a5,a5,0x4
 296:	078a                	sll	a5,a5,0x2
 298:	e43e                	sd	a5,8(sp)
 29a:	f526                	sd	s1,168(sp)
 29c:	f14a                	sd	s2,160(sp)
 29e:	ed4e                	sd	s3,152(sp)
 2a0:	fcde                	sd	s7,120(sp)
 2a2:	f8e2                	sd	s8,112(sp)
 2a4:	f4e6                	sd	s9,104(sp)
 2a6:	00269793          	sll	a5,a3,0x2
 2aa:	f0ea                	sd	s10,96(sp)
 2ac:	ecee                	sd	s11,88(sp)
 2ae:	f832                	sd	a2,48(sp)
 2b0:	0a8a                	sll	s5,s5,0x2
 2b2:	f002                	sd	zero,32(sp)
 2b4:	f402                	sd	zero,40(sp)
 2b6:	fc3e                	sd	a5,56(sp)

00000000000002b8 <.L10>:
 2b8:	7782                	ld	a5,32(sp)
 2ba:	7cc2                	ld	s9,48(sp)
 2bc:	4c01                	li	s8,0
 2be:	00479b9b          	sllw	s7,a5,0x4

00000000000002c2 <.L7>:
 2c2:	67c2                	ld	a5,16(sp)
 2c4:	6982                	ld	s3,0(sp)
 2c6:	002b9493          	sll	s1,s7,0x2
 2ca:	94be                	add	s1,s1,a5
 2cc:	8466                	mv	s0,s9
 2ce:	4901                	li	s2,0

00000000000002d0 <.L9>:
 2d0:	41440db3          	sub	s11,s0,s4
 2d4:	8d4e                	mv	s10,s3

00000000000002d6 <.L11>:
 2d6:	866a                	mv	a2,s10
 2d8:	85ee                	mv	a1,s11
 2da:	8526                	mv	a0,s1
 2dc:	040d8d93          	add	s11,s11,64
 2e0:	00000097          	auipc	ra,0x0
 2e4:	000080e7          	jalr	ra # 2e0 <.L11+0xa>
 2e8:	0d41                	add	s10,s10,16
 2ea:	ffb416e3          	bne	s0,s11,2d6 <.L11>
 2ee:	2905                	addw	s2,s2,1
 2f0:	99d6                	add	s3,s3,s5
 2f2:	9452                	add	s0,s0,s4
 2f4:	fd2b1ee3          	bne	s6,s2,2d0 <.L9>
 2f8:	67a2                	ld	a5,8(sp)
 2fa:	2c05                	addw	s8,s8,1
 2fc:	2bc1                	addw	s7,s7,16
 2fe:	9cbe                	add	s9,s9,a5
 300:	67e2                	ld	a5,24(sp)
 302:	fd8790e3          	bne	a5,s8,2c2 <.L7>
 306:	6702                	ld	a4,0(sp)
 308:	76e2                	ld	a3,56(sp)
 30a:	77a2                	ld	a5,40(sp)
 30c:	9736                	add	a4,a4,a3
 30e:	e03a                	sd	a4,0(sp)
 310:	6686                	ld	a3,64(sp)
 312:	7702                	ld	a4,32(sp)
 314:	2785                	addw	a5,a5,1
 316:	f43e                	sd	a5,40(sp)
 318:	9f35                	addw	a4,a4,a3
 31a:	f03a                	sd	a4,32(sp)
 31c:	6726                	ld	a4,72(sp)
 31e:	f8f71de3          	bne	a4,a5,2b8 <.L10>
 322:	744a                	ld	s0,176(sp)
 324:	74aa                	ld	s1,168(sp)
 326:	790a                	ld	s2,160(sp)
 328:	69ea                	ld	s3,152(sp)
 32a:	6a4a                	ld	s4,144(sp)
 32c:	6aaa                	ld	s5,136(sp)
 32e:	7be6                	ld	s7,120(sp)
 330:	7c46                	ld	s8,112(sp)
 332:	7ca6                	ld	s9,104(sp)
 334:	7d06                	ld	s10,96(sp)
 336:	6de6                	ld	s11,88(sp)

0000000000000338 <.L4>:
 338:	70ea                	ld	ra,184(sp)
 33a:	6b0a                	ld	s6,128(sp)
 33c:	6129                	add	sp,sp,192
 33e:	8082                	ret

0000000000000340 <.L21>:
 340:	6a4a                	ld	s4,144(sp)
 342:	bfdd                	j	338 <.L4>
