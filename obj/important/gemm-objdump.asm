
gemm.o:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <gemm_bin>:
   0:	1141                	add	sp,sp,-16
   2:	e422                	sd	s0,8(sp)
   4:	842a                	mv	s0,a0
   6:	06a05963          	blez	a0,78 <.L1>
   a:	06c05763          	blez	a2,78 <.L1>
   e:	e026                	sd	s1,0(sp)
  10:	44c2                	lw	s1,16(sp)
  12:	853a                	mv	a0,a4
  14:	83b6                	mv	t2,a3
  16:	00c68f33          	add	t5,a3,a2
  1a:	4281                	li	t0,0
  1c:	4701                	li	a4,0
  1e:	00080f9b          	sext.w	t6,a6

0000000000000022 <.L4>:
  22:	00558833          	add	a6,a1,t0
  26:	00229e93          	sll	t4,t0,0x2
  2a:	080a                	sll	a6,a6,0x2
  2c:	9ec6                	add	t4,t4,a7
  2e:	9846                	add	a6,a6,a7
  30:	831e                	mv	t1,t2
  32:	4e01                	li	t3,0

0000000000000034 <.L7>:
  34:	00034683          	lbu	a3,0(t1)
  38:	e2b9                	bnez	a3,7e <.L5>
  3a:	002e1613          	sll	a2,t3,0x2
  3e:	963e                	add	a2,a2,a5
  40:	86f6                	mv	a3,t4
  42:	00b05e63          	blez	a1,5e <.L9>

0000000000000046 <.L11>:
  46:	0006a787          	flw	fa5,0(a3)
  4a:	00062707          	flw	fa4,0(a2)
  4e:	0691                	add	a3,a3,4
  50:	0611                	add	a2,a2,4
  52:	08e7f7d3          	fsub.s	fa5,fa5,fa4
  56:	fef6ae27          	fsw	fa5,-4(a3)
  5a:	fed816e3          	bne	a6,a3,46 <.L11>

000000000000005e <.L9>:
  5e:	0305                	add	t1,t1,1
  60:	01cf8e3b          	addw	t3,t6,t3
  64:	fc6f18e3          	bne	t5,t1,34 <.L7>

0000000000000068 <.L20>:
  68:	2705                	addw	a4,a4,1
  6a:	9f2a                	add	t5,t5,a0
  6c:	005482bb          	addw	t0,s1,t0
  70:	93aa                	add	t2,t2,a0
  72:	fae418e3          	bne	s0,a4,22 <.L4>
  76:	6482                	ld	s1,0(sp)

0000000000000078 <.L1>:
  78:	6422                	ld	s0,8(sp)
  7a:	0141                	add	sp,sp,16
  7c:	8082                	ret

000000000000007e <.L5>:
  7e:	feb050e3          	blez	a1,5e <.L9>
  82:	002e1613          	sll	a2,t3,0x2
  86:	963e                	add	a2,a2,a5
  88:	86f6                	mv	a3,t4

000000000000008a <.L10>:
  8a:	0006a787          	flw	fa5,0(a3)
  8e:	00062707          	flw	fa4,0(a2)
  92:	0691                	add	a3,a3,4
  94:	0611                	add	a2,a2,4
  96:	00e7f7d3          	fadd.s	fa5,fa5,fa4
  9a:	fef6ae27          	fsw	fa5,-4(a3)
  9e:	fed816e3          	bne	a6,a3,8a <.L10>
  a2:	0305                	add	t1,t1,1
  a4:	01cf8e3b          	addw	t3,t6,t3
  a8:	f86f16e3          	bne	t5,t1,34 <.L7>
  ac:	bf75                	j	68 <.L20>

00000000000000ae <random_matrix>:
  ae:	7179                	add	sp,sp,-48
  b0:	ec26                	sd	s1,24(sp)
  b2:	02b504bb          	mulw	s1,a0,a1
  b6:	4591                	li	a1,4
  b8:	e84a                	sd	s2,16(sp)
  ba:	f406                	sd	ra,40(sp)
  bc:	8526                	mv	a0,s1
  be:	00000097          	auipc	ra,0x0
  c2:	000080e7          	jalr	ra # be <random_matrix+0x10>
  c6:	892a                	mv	s2,a0
  c8:	02905a63          	blez	s1,fc <.L21>
  cc:	048a                	sll	s1,s1,0x2
  ce:	f022                	sd	s0,32(sp)
  d0:	a422                	fsd	fs0,8(sp)
  d2:	842a                	mv	s0,a0
  d4:	94aa                	add	s1,s1,a0
  d6:	00000797          	auipc	a5,0x0
  da:	0007a407          	flw	fs0,0(a5) # d6 <random_matrix+0x28>

00000000000000de <.L23>:
  de:	00000097          	auipc	ra,0x0
  e2:	000080e7          	jalr	ra # de <.L23>
  e6:	d00577d3          	fcvt.s.w	fa5,a0
  ea:	0411                	add	s0,s0,4
  ec:	1087f7d3          	fmul.s	fa5,fa5,fs0
  f0:	fef42e27          	fsw	fa5,-4(s0)
  f4:	fe9415e3          	bne	s0,s1,de <.L23>
  f8:	7402                	ld	s0,32(sp)
  fa:	2422                	fld	fs0,8(sp)

00000000000000fc <.L21>:
  fc:	70a2                	ld	ra,40(sp)
  fe:	64e2                	ld	s1,24(sp)
 100:	854a                	mv	a0,s2
 102:	6942                	ld	s2,16(sp)
 104:	6145                	add	sp,sp,48
 106:	8082                	ret

0000000000000108 <gemm_nn>:
 108:	08a05563          	blez	a0,192 <.L34>
 10c:	08c05363          	blez	a2,192 <.L34>
 110:	83ae                	mv	t2,a1
 112:	08b05063          	blez	a1,192 <.L34>
 116:	1141                	add	sp,sp,-16
 118:	e026                	sd	s1,0(sp)
 11a:	20a50653          	fmv.s	fa2,fa0
 11e:	44c2                	lw	s1,16(sp)
 120:	e422                	sd	s0,8(sp)
 122:	00261f13          	sll	t5,a2,0x2
 126:	843e                	mv	s0,a5
 128:	87c2                	mv	a5,a6
 12a:	8ec6                	mv	t4,a7
 12c:	82aa                	mv	t0,a0
 12e:	00271f93          	sll	t6,a4,0x2
 132:	01e68833          	add	a6,a3,t5
 136:	00279893          	sll	a7,a5,0x2
 13a:	4301                	li	t1,0
 13c:	4e01                	li	t3,0

000000000000013e <.L28>:
 13e:	006386b3          	add	a3,t2,t1
 142:	00231513          	sll	a0,t1,0x2
 146:	068a                	sll	a3,a3,0x2
 148:	41e80633          	sub	a2,a6,t5
 14c:	85a2                	mv	a1,s0
 14e:	9576                	add	a0,a0,t4
 150:	96f6                	add	a3,a3,t4

0000000000000152 <.L30>:
 152:	00062687          	flw	fa3,0(a2)
 156:	872e                	mv	a4,a1
 158:	87aa                	mv	a5,a0
 15a:	10d676d3          	fmul.s	fa3,fa2,fa3

000000000000015e <.L29>:
 15e:	00072787          	flw	fa5,0(a4)
 162:	0007a707          	flw	fa4,0(a5)
 166:	0791                	add	a5,a5,4
 168:	0711                	add	a4,a4,4
 16a:	70d7f7c3          	fmadd.s	fa5,fa5,fa3,fa4
 16e:	fef7ae27          	fsw	fa5,-4(a5)
 172:	fed796e3          	bne	a5,a3,15e <.L29>
 176:	0611                	add	a2,a2,4
 178:	95c6                	add	a1,a1,a7
 17a:	fcc81ce3          	bne	a6,a2,152 <.L30>
 17e:	2e05                	addw	t3,t3,1
 180:	987e                	add	a6,a6,t6
 182:	0064833b          	addw	t1,s1,t1
 186:	fbc29ce3          	bne	t0,t3,13e <.L28>
 18a:	6422                	ld	s0,8(sp)
 18c:	6482                	ld	s1,0(sp)
 18e:	0141                	add	sp,sp,16
 190:	8082                	ret

0000000000000192 <.L34>:
 192:	8082                	ret

0000000000000194 <gemm_nt>:
 194:	08a05d63          	blez	a0,22e <.L47>
 198:	08b05b63          	blez	a1,22e <.L47>
 19c:	1141                	add	sp,sp,-16
 19e:	e026                	sd	s1,0(sp)
 1a0:	44c2                	lw	s1,16(sp)
 1a2:	20a50653          	fmv.s	fa2,fa0
 1a6:	8e3e                	mv	t3,a5
 1a8:	00259293          	sll	t0,a1,0x2
 1ac:	87c2                	mv	a5,a6
 1ae:	e422                	sd	s0,8(sp)
 1b0:	00588833          	add	a6,a7,t0
 1b4:	83aa                	mv	t2,a0
 1b6:	8332                	mv	t1,a2
 1b8:	8fb6                	mv	t6,a3
 1ba:	048a                	sll	s1,s1,0x2
 1bc:	0007041b          	sext.w	s0,a4
 1c0:	4e81                	li	t4,0
 1c2:	4f01                	li	t5,0
 1c4:	0007889b          	sext.w	a7,a5

00000000000001c8 <.L39>:
 1c8:	01d306b3          	add	a3,t1,t4
 1cc:	002e9513          	sll	a0,t4,0x2
 1d0:	068a                	sll	a3,a3,0x2
 1d2:	40580633          	sub	a2,a6,t0
 1d6:	957e                	add	a0,a0,t6
 1d8:	96fe                	add	a3,a3,t6
 1da:	4581                	li	a1,0

00000000000001dc <.L44>:
 1dc:	00259713          	sll	a4,a1,0x2
 1e0:	f0000753          	fmv.w.x	fa4,zero
 1e4:	9772                	add	a4,a4,t3
 1e6:	87aa                	mv	a5,a0
 1e8:	00605e63          	blez	t1,204 <.L43>

00000000000001ec <.L40>:
 1ec:	0007a787          	flw	fa5,0(a5)
 1f0:	00072687          	flw	fa3,0(a4)
 1f4:	0791                	add	a5,a5,4
 1f6:	0711                	add	a4,a4,4
 1f8:	10d7f7d3          	fmul.s	fa5,fa5,fa3
 1fc:	70f67743          	fmadd.s	fa4,fa2,fa5,fa4
 200:	fef696e3          	bne	a3,a5,1ec <.L40>

0000000000000204 <.L43>:
 204:	00062787          	flw	fa5,0(a2)
 208:	0611                	add	a2,a2,4
 20a:	00b885bb          	addw	a1,a7,a1
 20e:	00e7f7d3          	fadd.s	fa5,fa5,fa4
 212:	fef62e27          	fsw	fa5,-4(a2)
 216:	fcc813e3          	bne	a6,a2,1dc <.L44>
 21a:	2f05                	addw	t5,t5,1
 21c:	9826                	add	a6,a6,s1
 21e:	01d40ebb          	addw	t4,s0,t4
 222:	fbe393e3          	bne	t2,t5,1c8 <.L39>
 226:	6422                	ld	s0,8(sp)
 228:	6482                	ld	s1,0(sp)
 22a:	0141                	add	sp,sp,16
 22c:	8082                	ret

000000000000022e <.L47>:
 22e:	8082                	ret

0000000000000230 <gemm_tn>:
 230:	08a05563          	blez	a0,2ba <.L58>
 234:	8e32                	mv	t3,a2
 236:	08c05263          	blez	a2,2ba <.L58>
 23a:	1101                	add	sp,sp,-32
 23c:	ec22                	sd	s0,24(sp)
 23e:	842e                	mv	s0,a1
 240:	06b05a63          	blez	a1,2b4 <.L50>
 244:	e44a                	sd	s2,8(sp)
 246:	20a50653          	fmv.s	fa2,fa0
 24a:	5902                	lw	s2,32(sp)
 24c:	e826                	sd	s1,16(sp)
 24e:	82c6                	mv	t0,a7
 250:	83aa                	mv	t2,a0
 252:	84be                	mv	s1,a5
 254:	8f36                	mv	t5,a3
 256:	00271313          	sll	t1,a4,0x2
 25a:	00281893          	sll	a7,a6,0x2
 25e:	4e81                	li	t4,0
 260:	4f81                	li	t6,0

0000000000000262 <.L52>:
 262:	01d406b3          	add	a3,s0,t4
 266:	002e9813          	sll	a6,t4,0x2
 26a:	068a                	sll	a3,a3,0x2
 26c:	8526                	mv	a0,s1
 26e:	9816                	add	a6,a6,t0
 270:	9696                	add	a3,a3,t0
 272:	85fa                	mv	a1,t5
 274:	4601                	li	a2,0

0000000000000276 <.L54>:
 276:	0005a687          	flw	fa3,0(a1)
 27a:	872a                	mv	a4,a0
 27c:	87c2                	mv	a5,a6
 27e:	10d676d3          	fmul.s	fa3,fa2,fa3

0000000000000282 <.L53>:
 282:	00072787          	flw	fa5,0(a4)
 286:	0007a707          	flw	fa4,0(a5)
 28a:	0791                	add	a5,a5,4
 28c:	0711                	add	a4,a4,4
 28e:	70d7f7c3          	fmadd.s	fa5,fa5,fa3,fa4
 292:	fef7ae27          	fsw	fa5,-4(a5)
 296:	fed796e3          	bne	a5,a3,282 <.L53>
 29a:	2605                	addw	a2,a2,1
 29c:	959a                	add	a1,a1,t1
 29e:	9546                	add	a0,a0,a7
 2a0:	fcce1be3          	bne	t3,a2,276 <.L54>
 2a4:	2f85                	addw	t6,t6,1
 2a6:	01d90ebb          	addw	t4,s2,t4
 2aa:	0f11                	add	t5,t5,4
 2ac:	fbf39be3          	bne	t2,t6,262 <.L52>
 2b0:	64c2                	ld	s1,16(sp)
 2b2:	6922                	ld	s2,8(sp)

00000000000002b4 <.L50>:
 2b4:	6462                	ld	s0,24(sp)
 2b6:	6105                	add	sp,sp,32
 2b8:	8082                	ret

00000000000002ba <.L58>:
 2ba:	8082                	ret

00000000000002bc <gemm_tt>:
 2bc:	20a50653          	fmv.s	fa2,fa0
 2c0:	82aa                	mv	t0,a0
 2c2:	8332                	mv	t1,a2
 2c4:	8e3e                	mv	t3,a5
 2c6:	8ec2                	mv	t4,a6
 2c8:	06a05c63          	blez	a0,340 <.L62>
 2cc:	06b05a63          	blez	a1,340 <.L62>
 2d0:	4382                	lw	t2,0(sp)
 2d2:	00259f93          	sll	t6,a1,0x2
 2d6:	01f88833          	add	a6,a7,t6
 2da:	038a                	sll	t2,t2,0x2
 2dc:	88b6                	mv	a7,a3
 2de:	00271613          	sll	a2,a4,0x2
 2e2:	4f01                	li	t5,0
 2e4:	2e81                	sext.w	t4,t4

00000000000002e6 <.L64>:
 2e6:	41f805b3          	sub	a1,a6,t6
 2ea:	4501                	li	a0,0

00000000000002ec <.L69>:
 2ec:	f0000753          	fmv.w.x	fa4,zero
 2f0:	02605863          	blez	t1,320 <.L68>
 2f4:	00a306b3          	add	a3,t1,a0
 2f8:	f0000753          	fmv.w.x	fa4,zero
 2fc:	00251793          	sll	a5,a0,0x2
 300:	068a                	sll	a3,a3,0x2
 302:	97f2                	add	a5,a5,t3
 304:	96f2                	add	a3,a3,t3
 306:	8746                	mv	a4,a7

0000000000000308 <.L65>:
 308:	00072787          	flw	fa5,0(a4)
 30c:	0007a687          	flw	fa3,0(a5)
 310:	0791                	add	a5,a5,4
 312:	9732                	add	a4,a4,a2
 314:	10d7f7d3          	fmul.s	fa5,fa5,fa3
 318:	70f67743          	fmadd.s	fa4,fa2,fa5,fa4
 31c:	fef696e3          	bne	a3,a5,308 <.L65>

0000000000000320 <.L68>:
 320:	0005a787          	flw	fa5,0(a1)
 324:	0591                	add	a1,a1,4
 326:	00ae853b          	addw	a0,t4,a0
 32a:	00e7f7d3          	fadd.s	fa5,fa5,fa4
 32e:	fef5ae27          	fsw	fa5,-4(a1)
 332:	fab81de3          	bne	a6,a1,2ec <.L69>
 336:	2f05                	addw	t5,t5,1
 338:	981e                	add	a6,a6,t2
 33a:	0891                	add	a7,a7,4
 33c:	fbe295e3          	bne	t0,t5,2e6 <.L64>

0000000000000340 <.L62>:
 340:	8082                	ret

0000000000000342 <gemm_cpu>:
 342:	1101                	add	sp,sp,-32
 344:	e826                	sd	s1,16(sp)
 346:	e44a                	sd	s2,8(sp)
 348:	e04e                	sd	s3,0(sp)
 34a:	5482                	lw	s1,32(sp)
 34c:	72a2                	ld	t0,40(sp)
 34e:	5942                	lw	s2,48(sp)
 350:	89ae                	mv	s3,a1
 352:	00b563b3          	or	t2,a0,a1
 356:	0ac05863          	blez	a2,406 <.L71>
 35a:	0ad05663          	blez	a3,406 <.L71>
 35e:	00269f13          	sll	t5,a3,0x2
 362:	01e28eb3          	add	t4,t0,t5
 366:	ec22                	sd	s0,24(sp)
 368:	85c2                	mv	a1,a6
 36a:	8432                	mv	s0,a2
 36c:	00291f93          	sll	t6,s2,0x2
 370:	8876                	mv	a6,t4
 372:	4e01                	li	t3,0

0000000000000374 <.L73>:
 374:	41e80333          	sub	t1,a6,t5

0000000000000378 <.L74>:
 378:	00032787          	flw	fa5,0(t1)
 37c:	0311                	add	t1,t1,4
 37e:	10b7f7d3          	fmul.s	fa5,fa5,fa1
 382:	fef32e27          	fsw	fa5,-4(t1)
 386:	fe6819e3          	bne	a6,t1,378 <.L74>
 38a:	001e061b          	addw	a2,t3,1
 38e:	987e                	add	a6,a6,t6
 390:	00c40463          	beq	s0,a2,398 <.L75>
 394:	8e32                	mv	t3,a2
 396:	bff9                	j	374 <.L73>

0000000000000398 <.L75>:
 398:	0e038163          	beqz	t2,47a <.L121>
 39c:	14050463          	beqz	a0,4e4 <.L82>
 3a0:	06099863          	bnez	s3,410 <.L113>
 3a4:	06e05063          	blez	a4,404 <.L120>
 3a8:	00249f93          	sll	t6,s1,0x2
 3ac:	2901                	sext.w	s2,s2
 3ae:	8ebe                	mv	t4,a5
 3b0:	058a                	sll	a1,a1,0x2
 3b2:	4481                	li	s1,0
 3b4:	4381                	li	t2,0

00000000000003b6 <.L85>:
 3b6:	00768833          	add	a6,a3,t2
 3ba:	00239613          	sll	a2,t2,0x2
 3be:	080a                	sll	a6,a6,0x2
 3c0:	8f46                	mv	t5,a7
 3c2:	9616                	add	a2,a2,t0
 3c4:	9816                	add	a6,a6,t0
 3c6:	8e76                	mv	t3,t4
 3c8:	4301                	li	t1,0

00000000000003ca <.L87>:
 3ca:	000e2687          	flw	fa3,0(t3)
 3ce:	857a                	mv	a0,t5
 3d0:	87b2                	mv	a5,a2
 3d2:	10d576d3          	fmul.s	fa3,fa0,fa3

00000000000003d6 <.L86>:
 3d6:	00052787          	flw	fa5,0(a0)
 3da:	0007a707          	flw	fa4,0(a5)
 3de:	0791                	add	a5,a5,4
 3e0:	0511                	add	a0,a0,4
 3e2:	70f6f7c3          	fmadd.s	fa5,fa3,fa5,fa4
 3e6:	fef7ae27          	fsw	fa5,-4(a5)
 3ea:	fef816e3          	bne	a6,a5,3d6 <.L86>
 3ee:	2305                	addw	t1,t1,1
 3f0:	9e2e                	add	t3,t3,a1
 3f2:	9f7e                	add	t5,t5,t6
 3f4:	fc671be3          	bne	a4,t1,3ca <.L87>
 3f8:	2485                	addw	s1,s1,1
 3fa:	007903bb          	addw	t2,s2,t2
 3fe:	0e91                	add	t4,t4,4
 400:	fa941be3          	bne	s0,s1,3b6 <.L85>

0000000000000404 <.L120>:
 404:	6462                	ld	s0,24(sp)

0000000000000406 <.L71>:
 406:	64c2                	ld	s1,16(sp)
 408:	6922                	ld	s2,8(sp)
 40a:	6982                	ld	s3,0(sp)
 40c:	6105                	add	sp,sp,32
 40e:	8082                	ret

0000000000000410 <.L113>:
 410:	82be                	mv	t0,a5
 412:	058a                	sll	a1,a1,0x2
 414:	4381                	li	t2,0
 416:	0004831b          	sext.w	t1,s1

000000000000041a <.L100>:
 41a:	41ee8533          	sub	a0,t4,t5
 41e:	4801                	li	a6,0

0000000000000420 <.L101>:
 420:	f0000753          	fmv.w.x	fa4,zero
 424:	02e05863          	blez	a4,454 <.L99>
 428:	01070633          	add	a2,a4,a6
 42c:	f0000753          	fmv.w.x	fa4,zero
 430:	00281793          	sll	a5,a6,0x2
 434:	060a                	sll	a2,a2,0x2
 436:	97c6                	add	a5,a5,a7
 438:	9646                	add	a2,a2,a7
 43a:	8696                	mv	a3,t0

000000000000043c <.L96>:
 43c:	0006a787          	flw	fa5,0(a3)
 440:	0007a687          	flw	fa3,0(a5)
 444:	0791                	add	a5,a5,4
 446:	96ae                	add	a3,a3,a1
 448:	10d7f7d3          	fmul.s	fa5,fa5,fa3
 44c:	70f57743          	fmadd.s	fa4,fa0,fa5,fa4
 450:	fef616e3          	bne	a2,a5,43c <.L96>

0000000000000454 <.L99>:
 454:	00052787          	flw	fa5,0(a0)
 458:	0511                	add	a0,a0,4
 45a:	0103083b          	addw	a6,t1,a6
 45e:	00e7f7d3          	fadd.s	fa5,fa5,fa4
 462:	fef52e27          	fsw	fa5,-4(a0)
 466:	faae9de3          	bne	t4,a0,420 <.L101>
 46a:	0013879b          	addw	a5,t2,1
 46e:	9efe                	add	t4,t4,t6
 470:	0291                	add	t0,t0,4
 472:	f87e09e3          	beq	t3,t2,404 <.L120>
 476:	83be                	mv	t2,a5
 478:	b74d                	j	41a <.L100>

000000000000047a <.L121>:
 47a:	f8e055e3          	blez	a4,404 <.L120>
 47e:	00271413          	sll	s0,a4,0x2
 482:	2901                	sext.w	s2,s2
 484:	00259613          	sll	a2,a1,0x2
 488:	00878eb3          	add	t4,a5,s0
 48c:	00249f13          	sll	t5,s1,0x2
 490:	4f81                	li	t6,0

0000000000000492 <.L77>:
 492:	01f685b3          	add	a1,a3,t6
 496:	002f9313          	sll	t1,t6,0x2
 49a:	058a                	sll	a1,a1,0x2
 49c:	408e8533          	sub	a0,t4,s0
 4a0:	8846                	mv	a6,a7
 4a2:	9316                	add	t1,t1,t0
 4a4:	9596                	add	a1,a1,t0

00000000000004a6 <.L79>:
 4a6:	00052687          	flw	fa3,0(a0)
 4aa:	8742                	mv	a4,a6
 4ac:	879a                	mv	a5,t1
 4ae:	10d576d3          	fmul.s	fa3,fa0,fa3

00000000000004b2 <.L78>:
 4b2:	00072787          	flw	fa5,0(a4)
 4b6:	0007a707          	flw	fa4,0(a5)
 4ba:	0791                	add	a5,a5,4
 4bc:	0711                	add	a4,a4,4
 4be:	70f6f7c3          	fmadd.s	fa5,fa3,fa5,fa4
 4c2:	fef7ae27          	fsw	fa5,-4(a5)
 4c6:	fef596e3          	bne	a1,a5,4b2 <.L78>
 4ca:	0511                	add	a0,a0,4
 4cc:	987a                	add	a6,a6,t5
 4ce:	fcae9ce3          	bne	t4,a0,4a6 <.L79>
 4d2:	0013879b          	addw	a5,t2,1
 4d6:	9eb2                	add	t4,t4,a2
 4d8:	01f90fbb          	addw	t6,s2,t6
 4dc:	f27e04e3          	beq	t3,t2,404 <.L120>
 4e0:	83be                	mv	t2,a5
 4e2:	bf45                	j	492 <.L77>

00000000000004e4 <.L82>:
 4e4:	2581                	sext.w	a1,a1
 4e6:	4901                	li	s2,0
 4e8:	0004831b          	sext.w	t1,s1

00000000000004ec <.L90>:
 4ec:	01270833          	add	a6,a4,s2
 4f0:	00291413          	sll	s0,s2,0x2
 4f4:	080a                	sll	a6,a6,0x2
 4f6:	41ee82b3          	sub	t0,t4,t5
 4fa:	943e                	add	s0,s0,a5
 4fc:	983e                	add	a6,a6,a5
 4fe:	4381                	li	t2,0

0000000000000500 <.L95>:
 500:	00239613          	sll	a2,t2,0x2
 504:	f0000753          	fmv.w.x	fa4,zero
 508:	9646                	add	a2,a2,a7
 50a:	86a2                	mv	a3,s0
 50c:	00e05e63          	blez	a4,528 <.L94>

0000000000000510 <.L91>:
 510:	0006a787          	flw	fa5,0(a3)
 514:	00062687          	flw	fa3,0(a2)
 518:	0691                	add	a3,a3,4
 51a:	0611                	add	a2,a2,4
 51c:	10d7f7d3          	fmul.s	fa5,fa5,fa3
 520:	70f57743          	fmadd.s	fa4,fa0,fa5,fa4
 524:	fed816e3          	bne	a6,a3,510 <.L91>

0000000000000528 <.L94>:
 528:	0002a787          	flw	fa5,0(t0)
 52c:	0291                	add	t0,t0,4
 52e:	007303bb          	addw	t2,t1,t2
 532:	00e7f7d3          	fadd.s	fa5,fa5,fa4
 536:	fef2ae27          	fsw	fa5,-4(t0)
 53a:	fc5e93e3          	bne	t4,t0,500 <.L95>
 53e:	0015069b          	addw	a3,a0,1
 542:	9efe                	add	t4,t4,t6
 544:	0125893b          	addw	s2,a1,s2
 548:	eaae0ee3          	beq	t3,a0,404 <.L120>
 54c:	8536                	mv	a0,a3
 54e:	bf79                	j	4ec <.L90>

0000000000000550 <gemm>:
 550:	4e02                	lw	t3,0(sp)
 552:	4342                	lw	t1,16(sp)
 554:	e072                	sd	t3,0(sp)
 556:	e81a                	sd	t1,16(sp)
 558:	00000317          	auipc	t1,0x0
 55c:	00030067          	jr	t1 # 558 <gemm+0x8>

0000000000000560 <time_random_matrix>:
 560:	7135                	add	sp,sp,-160
 562:	e526                	sd	s1,136(sp)
 564:	e14a                	sd	s2,128(sp)
 566:	fcce                	sd	s3,120(sp)
 568:	f4d6                	sd	s5,104(sp)
 56a:	f0da                	sd	s6,96(sp)
 56c:	ecde                	sd	s7,88(sp)
 56e:	ed06                	sd	ra,152(sp)
 570:	e922                	sd	s0,144(sp)
 572:	f8d2                	sd	s4,112(sp)
 574:	e8e2                	sd	s8,80(sp)
 576:	e4e6                	sd	s9,72(sp)
 578:	e0ea                	sd	s10,64(sp)
 57a:	fc6e                	sd	s11,56(sp)
 57c:	b422                	fsd	fs0,40(sp)
 57e:	8b2e                	mv	s6,a1
 580:	02c68bbb          	mulw	s7,a3,a2
 584:	89b2                	mv	s3,a2
 586:	8936                	mv	s2,a3
 588:	8aaa                	mv	s5,a0
 58a:	84ba                	mv	s1,a4
 58c:	4591                	li	a1,4
 58e:	14051963          	bnez	a0,6e0 <.L124>
 592:	855e                	mv	a0,s7
 594:	00000097          	auipc	ra,0x0
 598:	000080e7          	jalr	ra # 594 <time_random_matrix+0x34>
 59c:	8a2a                	mv	s4,a0
 59e:	03705663          	blez	s7,5ca <.L125>
 5a2:	0b8a                	sll	s7,s7,0x2
 5a4:	842a                	mv	s0,a0
 5a6:	9baa                	add	s7,s7,a0
 5a8:	00000797          	auipc	a5,0x0
 5ac:	0007a407          	flw	fs0,0(a5) # 5a8 <time_random_matrix+0x48>

00000000000005b0 <.L126>:
 5b0:	00000097          	auipc	ra,0x0
 5b4:	000080e7          	jalr	ra # 5b0 <.L126>
 5b8:	d00577d3          	fcvt.s.w	fa5,a0
 5bc:	0411                	add	s0,s0,4
 5be:	1087f7d3          	fmul.s	fa5,fa5,fs0
 5c2:	fef42e27          	fsw	fa5,-4(s0)
 5c6:	ff7415e3          	bne	s0,s7,5b0 <.L126>

00000000000005ca <.L125>:
 5ca:	02990cbb          	mulw	s9,s2,s1
 5ce:	8c4a                	mv	s8,s2
 5d0:	4591                	li	a1,4
 5d2:	8566                	mv	a0,s9
 5d4:	140b0963          	beqz	s6,726 <.L147>

00000000000005d8 <.L130>:
 5d8:	00000097          	auipc	ra,0x0
 5dc:	000080e7          	jalr	ra # 5d8 <.L130>
 5e0:	8baa                	mv	s7,a0
 5e2:	03905663          	blez	s9,60e <.L133>
 5e6:	0c8a                	sll	s9,s9,0x2
 5e8:	842a                	mv	s0,a0
 5ea:	9caa                	add	s9,s9,a0
 5ec:	00000797          	auipc	a5,0x0
 5f0:	0007a407          	flw	fs0,0(a5) # 5ec <.L130+0x14>

00000000000005f4 <.L134>:
 5f4:	00000097          	auipc	ra,0x0
 5f8:	000080e7          	jalr	ra # 5f4 <.L134>
 5fc:	d00577d3          	fcvt.s.w	fa5,a0
 600:	0411                	add	s0,s0,4
 602:	1087f7d3          	fmul.s	fa5,fa5,fs0
 606:	fef42e27          	fsw	fa5,-4(s0)
 60a:	ff9415e3          	bne	s0,s9,5f4 <.L134>

000000000000060e <.L133>:
 60e:	02998dbb          	mulw	s11,s3,s1
 612:	4591                	li	a1,4
 614:	8d4a                	mv	s10,s2
 616:	856e                	mv	a0,s11
 618:	00000097          	auipc	ra,0x0
 61c:	000080e7          	jalr	ra # 618 <.L133+0xa>
 620:	8caa                	mv	s9,a0
 622:	15b04963          	bgtz	s11,774 <.L136>

0000000000000626 <.L139>:
 626:	00000097          	auipc	ra,0x0
 62a:	000080e7          	jalr	ra # 626 <.L139>
 62e:	8daa                	mv	s11,a0
 630:	4429                	li	s0,10
 632:	00000797          	auipc	a5,0x0
 636:	0007a407          	flw	fs0,0(a5) # 632 <.L139+0xc>

000000000000063a <.L137>:
 63a:	208405d3          	fmv.s	fa1,fs0
 63e:	20840553          	fmv.s	fa0,fs0
 642:	e826                	sd	s1,16(sp)
 644:	e466                	sd	s9,8(sp)
 646:	e06a                	sd	s10,0(sp)
 648:	88de                	mv	a7,s7
 64a:	8862                	mv	a6,s8
 64c:	87d2                	mv	a5,s4
 64e:	874a                	mv	a4,s2
 650:	86a6                	mv	a3,s1
 652:	864e                	mv	a2,s3
 654:	85da                	mv	a1,s6
 656:	8556                	mv	a0,s5
 658:	347d                	addw	s0,s0,-1
 65a:	00000097          	auipc	ra,0x0
 65e:	000080e7          	jalr	ra # 65a <.L137+0x20>
 662:	fc61                	bnez	s0,63a <.L137>
 664:	00000097          	auipc	ra,0x0
 668:	000080e7          	jalr	ra # 664 <.L137+0x2a>
 66c:	41b50533          	sub	a0,a0,s11
 670:	d02577d3          	fcvt.s.l	fa5,a0
 674:	00000797          	auipc	a5,0x0
 678:	0007a707          	flw	fa4,0(a5) # 674 <.L137+0x3a>
 67c:	885a                	mv	a6,s6
 67e:	10e7f7d3          	fmul.s	fa5,fa5,fa4
 682:	87d6                	mv	a5,s5
 684:	8726                	mv	a4,s1
 686:	86ca                	mv	a3,s2
 688:	864a                	mv	a2,s2
 68a:	420787d3          	fcvt.d.s	fa5,fa5
 68e:	85ce                	mv	a1,s3
 690:	00000517          	auipc	a0,0x0
 694:	00050513          	mv	a0,a0
 698:	e20788d3          	fmv.x.d	a7,fa5
 69c:	00000097          	auipc	ra,0x0
 6a0:	000080e7          	jalr	ra # 69c <.L137+0x62>
 6a4:	8552                	mv	a0,s4
 6a6:	00000097          	auipc	ra,0x0
 6aa:	000080e7          	jalr	ra # 6a6 <.L137+0x6c>
 6ae:	855e                	mv	a0,s7
 6b0:	00000097          	auipc	ra,0x0
 6b4:	000080e7          	jalr	ra # 6b0 <.L137+0x76>
 6b8:	644a                	ld	s0,144(sp)
 6ba:	60ea                	ld	ra,152(sp)
 6bc:	64aa                	ld	s1,136(sp)
 6be:	690a                	ld	s2,128(sp)
 6c0:	79e6                	ld	s3,120(sp)
 6c2:	7a46                	ld	s4,112(sp)
 6c4:	7aa6                	ld	s5,104(sp)
 6c6:	7b06                	ld	s6,96(sp)
 6c8:	6be6                	ld	s7,88(sp)
 6ca:	6c46                	ld	s8,80(sp)
 6cc:	6d06                	ld	s10,64(sp)
 6ce:	7de2                	ld	s11,56(sp)
 6d0:	3422                	fld	fs0,40(sp)
 6d2:	8566                	mv	a0,s9
 6d4:	6ca6                	ld	s9,72(sp)
 6d6:	610d                	add	sp,sp,160
 6d8:	00000317          	auipc	t1,0x0
 6dc:	00030067          	jr	t1 # 6d8 <.L137+0x9e>

00000000000006e0 <.L124>:
 6e0:	855e                	mv	a0,s7
 6e2:	00000097          	auipc	ra,0x0
 6e6:	000080e7          	jalr	ra # 6e2 <.L124+0x2>
 6ea:	8a2a                	mv	s4,a0
 6ec:	03705663          	blez	s7,718 <.L128>
 6f0:	0b8a                	sll	s7,s7,0x2
 6f2:	842a                	mv	s0,a0
 6f4:	9baa                	add	s7,s7,a0
 6f6:	00000797          	auipc	a5,0x0
 6fa:	0007a407          	flw	fs0,0(a5) # 6f6 <.L124+0x16>

00000000000006fe <.L129>:
 6fe:	00000097          	auipc	ra,0x0
 702:	000080e7          	jalr	ra # 6fe <.L129>
 706:	d00577d3          	fcvt.s.w	fa5,a0
 70a:	0411                	add	s0,s0,4
 70c:	1087f7d3          	fmul.s	fa5,fa5,fs0
 710:	fef42e27          	fsw	fa5,-4(s0)
 714:	ff7415e3          	bne	s0,s7,6fe <.L129>

0000000000000718 <.L128>:
 718:	02990cbb          	mulw	s9,s2,s1
 71c:	8c4e                	mv	s8,s3
 71e:	4591                	li	a1,4
 720:	8566                	mv	a0,s9
 722:	ea0b1be3          	bnez	s6,5d8 <.L130>

0000000000000726 <.L147>:
 726:	00000097          	auipc	ra,0x0
 72a:	000080e7          	jalr	ra # 726 <.L147>
 72e:	8baa                	mv	s7,a0
 730:	03905663          	blez	s9,75c <.L131>
 734:	0c8a                	sll	s9,s9,0x2
 736:	842a                	mv	s0,a0
 738:	9caa                	add	s9,s9,a0
 73a:	00000797          	auipc	a5,0x0
 73e:	0007a407          	flw	fs0,0(a5) # 73a <.L147+0x14>

0000000000000742 <.L132>:
 742:	00000097          	auipc	ra,0x0
 746:	000080e7          	jalr	ra # 742 <.L132>
 74a:	d00577d3          	fcvt.s.w	fa5,a0
 74e:	0411                	add	s0,s0,4
 750:	1087f7d3          	fmul.s	fa5,fa5,fs0
 754:	fef42e27          	fsw	fa5,-4(s0)
 758:	fe8c95e3          	bne	s9,s0,742 <.L132>

000000000000075c <.L131>:
 75c:	02998dbb          	mulw	s11,s3,s1
 760:	4591                	li	a1,4
 762:	8d26                	mv	s10,s1
 764:	856e                	mv	a0,s11
 766:	00000097          	auipc	ra,0x0
 76a:	000080e7          	jalr	ra # 766 <.L131+0xa>
 76e:	8caa                	mv	s9,a0
 770:	ebb05be3          	blez	s11,626 <.L139>

0000000000000774 <.L136>:
 774:	0d8a                	sll	s11,s11,0x2
 776:	842a                	mv	s0,a0
 778:	9daa                	add	s11,s11,a0
 77a:	00000797          	auipc	a5,0x0
 77e:	0007a407          	flw	fs0,0(a5) # 77a <.L136+0x6>

0000000000000782 <.L138>:
 782:	00000097          	auipc	ra,0x0
 786:	000080e7          	jalr	ra # 782 <.L138>
 78a:	d00577d3          	fcvt.s.w	fa5,a0
 78e:	0411                	add	s0,s0,4
 790:	1087f7d3          	fmul.s	fa5,fa5,fs0
 794:	fef42e27          	fsw	fa5,-4(s0)
 798:	ffb415e3          	bne	s0,s11,782 <.L138>
 79c:	b569                	j	626 <.L139>
