
winomain.o:     file format elf64-littleriscv


Disassembly of section .text.startup:

0000000000000000 <main>:
   0:	7119                	add	sp,sp,-128
   2:	4581                	li	a1,0
   4:	4501                	li	a0,0
   6:	fc86                	sd	ra,120(sp)
   8:	f8a2                	sd	s0,112(sp)
   a:	f4a6                	sd	s1,104(sp)
   c:	f0ca                	sd	s2,96(sp)
   e:	ecce                	sd	s3,88(sp)
  10:	e8d2                	sd	s4,80(sp)
  12:	e4d6                	sd	s5,72(sp)
  14:	e0da                	sd	s6,64(sp)
  16:	fc5e                	sd	s7,56(sp)
  18:	f862                	sd	s8,48(sp)
  1a:	b422                	fsd	fs0,40(sp)
  1c:	b026                	fsd	fs1,32(sp)
  1e:	00000097          	auipc	ra,0x0
  22:	000080e7          	jalr	ra # 1e <main+0x1e>
  26:	00000517          	auipc	a0,0x0
  2a:	00050513          	mv	a0,a0
  2e:	00000097          	auipc	ra,0x0
  32:	000080e7          	jalr	ra # 2e <main+0x2e>
  36:	4581                	li	a1,0
  38:	4501                	li	a0,0
  3a:	00000097          	auipc	ra,0x0
  3e:	000080e7          	jalr	ra # 3a <main+0x3a>
  42:	4591                	li	a1,4
  44:	0034d537          	lui	a0,0x34d
  48:	00000097          	auipc	ra,0x0
  4c:	000080e7          	jalr	ra # 48 <main+0x48>
  50:	00d344b7          	lui	s1,0xd34
  54:	89aa                	mv	s3,a0
  56:	842a                	mv	s0,a0
  58:	94aa                	add	s1,s1,a0
  5a:	4929                	li	s2,10

000000000000005c <.L2>:
  5c:	00000097          	auipc	ra,0x0
  60:	000080e7          	jalr	ra # 5c <.L2>
  64:	0325653b          	remw	a0,a0,s2
  68:	0411                	add	s0,s0,4
  6a:	d00577d3          	fcvt.s.w	fa5,a0
  6e:	fef42e27          	fsw	fa5,-4(s0)
  72:	fe9415e3          	bne	s0,s1,5c <.L2>
  76:	4591                	li	a1,4
  78:	5a000513          	li	a0,1440
  7c:	6485                	lui	s1,0x1
  7e:	00000097          	auipc	ra,0x0
  82:	000080e7          	jalr	ra # 7e <.L2+0x22>
  86:	68048493          	add	s1,s1,1664 # 1680 <A+0x1580>
  8a:	8a2a                	mv	s4,a0
  8c:	842a                	mv	s0,a0
  8e:	94aa                	add	s1,s1,a0
  90:	4929                	li	s2,10

0000000000000092 <.L3>:
  92:	00000097          	auipc	ra,0x0
  96:	000080e7          	jalr	ra # 92 <.L3>
  9a:	0325653b          	remw	a0,a0,s2
  9e:	0411                	add	s0,s0,4
  a0:	d00577d3          	fcvt.s.w	fa5,a0
  a4:	fef42e27          	fsw	fa5,-4(s0)
  a8:	fe9415e3          	bne	s0,s1,92 <.L3>
  ac:	19e00793          	li	a5,414
  b0:	e83e                	sd	a5,16(sp)
  b2:	e43e                	sd	a5,8(sp)
  b4:	47a1                	li	a5,8
  b6:	488d                	li	a7,3
  b8:	480d                	li	a6,3
  ba:	4721                	li	a4,8
  bc:	1a000693          	li	a3,416
  c0:	1a000613          	li	a2,416
  c4:	45d1                	li	a1,20
  c6:	e03e                	sd	a5,0(sp)
  c8:	00000517          	auipc	a0,0x0
  cc:	00050513          	mv	a0,a0
  d0:	47d1                	li	a5,20
  d2:	00000097          	auipc	ra,0x0
  d6:	000080e7          	jalr	ra # d2 <.L3+0x40>
  da:	00000097          	auipc	ra,0x0
  de:	000080e7          	jalr	ra # da <.L3+0x48>
  e2:	842a                	mv	s0,a0
  e4:	075b0537          	lui	a0,0x75b0
  e8:	34050513          	add	a0,a0,832 # 75b0340 <A+0x75b0240>
  ec:	00000097          	auipc	ra,0x0
  f0:	000080e7          	jalr	ra # ec <.L3+0x5a>
  f4:	8baa                	mv	s7,a0
  f6:	0014f537          	lui	a0,0x14f
  fa:	4591                	li	a1,4
  fc:	c2050513          	add	a0,a0,-992 # 14ec20 <A+0x14eb20>
 100:	00000097          	auipc	ra,0x0
 104:	000080e7          	jalr	ra # 100 <.L3+0x6e>
 108:	8b2a                	mv	s6,a0
 10a:	88de                	mv	a7,s7
 10c:	4785                	li	a5,1
 10e:	4801                	li	a6,0
 110:	470d                	li	a4,3
 112:	1a000693          	li	a3,416
 116:	1a000613          	li	a2,416
 11a:	45d1                	li	a1,20
 11c:	854e                	mv	a0,s3
 11e:	00000097          	auipc	ra,0x0
 122:	000080e7          	jalr	ra # 11e <.L3+0x8c>
 126:	00000097          	auipc	ra,0x0
 12a:	000080e7          	jalr	ra # 126 <.L3+0x94>
 12e:	d2050453          	fcvt.d.w	fs0,a0
 132:	d20407d3          	fcvt.d.w	fa5,s0
 136:	00000517          	auipc	a0,0x0
 13a:	00050513          	mv	a0,a0
 13e:	0af477d3          	fsub.d	fa5,fs0,fa5
 142:	e20785d3          	fmv.x.d	a1,fa5
 146:	00000097          	auipc	ra,0x0
 14a:	000080e7          	jalr	ra # 146 <.L3+0xb4>
 14e:	00000797          	auipc	a5,0x0
 152:	0007a587          	flw	fa1,0(a5) # 14e <.L3+0xbc>
 156:	20b58553          	fmv.s	fa0,fa1
 15a:	0002a6b7          	lui	a3,0x2a
 15e:	d8468693          	add	a3,a3,-636 # 29d84 <A+0x29c84>
 162:	88de                	mv	a7,s7
 164:	87d2                	mv	a5,s4
 166:	0b400813          	li	a6,180
 16a:	0b400713          	li	a4,180
 16e:	e836                	sd	a3,16(sp)
 170:	e036                	sd	a3,0(sp)
 172:	4621                	li	a2,8
 174:	e45a                	sd	s6,8(sp)
 176:	4581                	li	a1,0
 178:	4501                	li	a0,0
 17a:	00000097          	auipc	ra,0x0
 17e:	000080e7          	jalr	ra # 17a <.L3+0xe8>
 182:	00000097          	auipc	ra,0x0
 186:	000080e7          	jalr	ra # 182 <.L3+0xf0>
 18a:	d20507d3          	fcvt.d.w	fa5,a0
 18e:	00000517          	auipc	a0,0x0
 192:	00050513          	mv	a0,a0
 196:	0a87f7d3          	fsub.d	fa5,fa5,fs0
 19a:	e20785d3          	fmv.x.d	a1,fa5
 19e:	00000097          	auipc	ra,0x0
 1a2:	000080e7          	jalr	ra # 19e <.L3+0x10c>
 1a6:	00000517          	auipc	a0,0x0
 1aa:	00050513          	mv	a0,a0
 1ae:	00000097          	auipc	ra,0x0
 1b2:	000080e7          	jalr	ra # 1ae <.L3+0x11c>
 1b6:	0344e537          	lui	a0,0x344e
 1ba:	50050513          	add	a0,a0,1280 # 344e500 <A+0x344e400>
 1be:	00000097          	auipc	ra,0x0
 1c2:	000080e7          	jalr	ra # 1be <.L3+0x12c>
 1c6:	8aaa                	mv	s5,a0
 1c8:	6505                	lui	a0,0x1
 1ca:	4591                	li	a1,4
 1cc:	a0050513          	add	a0,a0,-1536 # a00 <A+0x900>
 1d0:	00000097          	auipc	ra,0x0
 1d4:	000080e7          	jalr	ra # 1d0 <.L3+0x13e>
 1d8:	892a                	mv	s2,a0
 1da:	0014f537          	lui	a0,0x14f
 1de:	4591                	li	a1,4
 1e0:	c2050513          	add	a0,a0,-992 # 14ec20 <A+0x14eb20>
 1e4:	00000097          	auipc	ra,0x0
 1e8:	000080e7          	jalr	ra # 1e4 <.L3+0x152>
 1ec:	84aa                	mv	s1,a0
 1ee:	0014f537          	lui	a0,0x14f
 1f2:	4591                	li	a1,4
 1f4:	c2050513          	add	a0,a0,-992 # 14ec20 <A+0x14eb20>
 1f8:	00000097          	auipc	ra,0x0
 1fc:	000080e7          	jalr	ra # 1f8 <.L3+0x166>
 200:	842a                	mv	s0,a0
 202:	85ca                	mv	a1,s2
 204:	46a1                	li	a3,8
 206:	4651                	li	a2,20
 208:	8552                	mv	a0,s4
 20a:	00000097          	auipc	ra,0x0
 20e:	000080e7          	jalr	ra # 20a <.L3+0x178>
 212:	00000097          	auipc	ra,0x0
 216:	000080e7          	jalr	ra # 212 <.L3+0x180>
 21a:	488d                	li	a7,3
 21c:	4809                	li	a6,2
 21e:	4785                	li	a5,1
 220:	470d                	li	a4,3
 222:	1a000693          	li	a3,416
 226:	1a000613          	li	a2,416
 22a:	8c2a                	mv	s8,a0
 22c:	e056                	sd	s5,0(sp)
 22e:	45d1                	li	a1,20
 230:	854e                	mv	a0,s3
 232:	00000097          	auipc	ra,0x0
 236:	000080e7          	jalr	ra # 232 <.L3+0x1a0>
 23a:	00000097          	auipc	ra,0x0
 23e:	000080e7          	jalr	ra # 23a <.L3+0x1a8>
 242:	d20504d3          	fcvt.d.w	fs1,a0
 246:	d20c07d3          	fcvt.d.w	fa5,s8
 24a:	00000517          	auipc	a0,0x0
 24e:	00050513          	mv	a0,a0
 252:	0af4f7d3          	fsub.d	fa5,fs1,fa5
 256:	e20785d3          	fmv.x.d	a1,fa5
 25a:	00000097          	auipc	ra,0x0
 25e:	000080e7          	jalr	ra # 25a <.L3+0x1c8>
 262:	478d                	li	a5,3
 264:	8626                	mv	a2,s1
 266:	4889                	li	a7,2
 268:	4821                	li	a6,8
 26a:	1a000713          	li	a4,416
 26e:	1a000693          	li	a3,416
 272:	85d6                	mv	a1,s5
 274:	e03e                	sd	a5,0(sp)
 276:	854a                	mv	a0,s2
 278:	47d1                	li	a5,20
 27a:	00000097          	auipc	ra,0x0
 27e:	000080e7          	jalr	ra # 27a <.L3+0x1e8>
 282:	00000097          	auipc	ra,0x0
 286:	000080e7          	jalr	ra # 282 <.L3+0x1f0>
 28a:	d2050453          	fcvt.d.w	fs0,a0
 28e:	00000517          	auipc	a0,0x0
 292:	00050513          	mv	a0,a0
 296:	0a9477d3          	fsub.d	fa5,fs0,fs1
 29a:	e20785d3          	fmv.x.d	a1,fa5
 29e:	00000097          	auipc	ra,0x0
 2a2:	000080e7          	jalr	ra # 29e <.L3+0x20c>
 2a6:	4889                	li	a7,2
 2a8:	4801                	li	a6,0
 2aa:	4785                	li	a5,1
 2ac:	470d                	li	a4,3
 2ae:	1a000693          	li	a3,416
 2b2:	1a000613          	li	a2,416
 2b6:	e022                	sd	s0,0(sp)
 2b8:	45a1                	li	a1,8
 2ba:	8526                	mv	a0,s1
 2bc:	00000097          	auipc	ra,0x0
 2c0:	000080e7          	jalr	ra # 2bc <.L3+0x22a>
 2c4:	00000097          	auipc	ra,0x0
 2c8:	000080e7          	jalr	ra # 2c4 <.L3+0x232>
 2cc:	d20507d3          	fcvt.d.w	fa5,a0
 2d0:	00000517          	auipc	a0,0x0
 2d4:	00050513          	mv	a0,a0
 2d8:	0a87f7d3          	fsub.d	fa5,fa5,fs0
 2dc:	e20785d3          	fmv.x.d	a1,fa5
 2e0:	00000097          	auipc	ra,0x0
 2e4:	000080e7          	jalr	ra # 2e0 <.L3+0x24e>
 2e8:	0014f637          	lui	a2,0x14f
 2ec:	85da                	mv	a1,s6
 2ee:	c2060613          	add	a2,a2,-992 # 14ec20 <A+0x14eb20>
 2f2:	8522                	mv	a0,s0
 2f4:	00000097          	auipc	ra,0x0
 2f8:	000080e7          	jalr	ra # 2f4 <.L3+0x262>
 2fc:	854e                	mv	a0,s3
 2fe:	00000097          	auipc	ra,0x0
 302:	000080e7          	jalr	ra # 2fe <.L3+0x26c>
 306:	8552                	mv	a0,s4
 308:	00000097          	auipc	ra,0x0
 30c:	000080e7          	jalr	ra # 308 <.L3+0x276>
 310:	855e                	mv	a0,s7
 312:	00000097          	auipc	ra,0x0
 316:	000080e7          	jalr	ra # 312 <.L3+0x280>
 31a:	855a                	mv	a0,s6
 31c:	00000097          	auipc	ra,0x0
 320:	000080e7          	jalr	ra # 31c <.L3+0x28a>
 324:	8556                	mv	a0,s5
 326:	00000097          	auipc	ra,0x0
 32a:	000080e7          	jalr	ra # 326 <.L3+0x294>
 32e:	854a                	mv	a0,s2
 330:	00000097          	auipc	ra,0x0
 334:	000080e7          	jalr	ra # 330 <.L3+0x29e>
 338:	8526                	mv	a0,s1
 33a:	00000097          	auipc	ra,0x0
 33e:	000080e7          	jalr	ra # 33a <.L3+0x2a8>
 342:	8522                	mv	a0,s0
 344:	00000097          	auipc	ra,0x0
 348:	000080e7          	jalr	ra # 344 <.L3+0x2b2>
 34c:	70e6                	ld	ra,120(sp)
 34e:	7446                	ld	s0,112(sp)
 350:	74a6                	ld	s1,104(sp)
 352:	7906                	ld	s2,96(sp)
 354:	69e6                	ld	s3,88(sp)
 356:	6a46                	ld	s4,80(sp)
 358:	6aa6                	ld	s5,72(sp)
 35a:	6b06                	ld	s6,64(sp)
 35c:	7be2                	ld	s7,56(sp)
 35e:	7c42                	ld	s8,48(sp)
 360:	3422                	fld	fs0,40(sp)
 362:	3482                	fld	fs1,32(sp)
 364:	4501                	li	a0,0
 366:	6109                	add	sp,sp,128
 368:	8082                	ret
