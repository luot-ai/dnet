
main.o:     file format elf64-littleriscv


Disassembly of section .text.startup:

0000000000000000 <main>:
   0:	470d                	li	a4,3
   2:	1702                	sll	a4,a4,0x20
   4:	450d                	li	a0,3
   6:	4585                	li	a1,1
   8:	4605                	li	a2,1
   a:	4685                	li	a3,1
   c:	87ba                	mv	a5,a4
   e:	1502                	sll	a0,a0,0x20
  10:	158a                	sll	a1,a1,0x22
  12:	1602                	sll	a2,a2,0x20
  14:	168a                	sll	a3,a3,0x22
  16:	7135                	add	sp,sp,-160
  18:	0605                	add	a2,a2,1
  1a:	06ed                	add	a3,a3,27
  1c:	0709                	add	a4,a4,2
  1e:	078d                	add	a5,a5,3
  20:	0591                	add	a1,a1,4
  22:	0505                	add	a0,a0,1
  24:	ed06                	sd	ra,152(sp)
  26:	f832                	sd	a2,48(sp)
  28:	fc36                	sd	a3,56(sp)
  2a:	e0ba                	sd	a4,64(sp)
  2c:	e4be                	sd	a5,72(sp)
  2e:	e922                	sd	s0,144(sp)
  30:	e526                	sd	s1,136(sp)
  32:	e14a                	sd	s2,128(sp)
  34:	fcce                	sd	s3,120(sp)
  36:	f8d2                	sd	s4,112(sp)
  38:	f4d6                	sd	s5,104(sp)
  3a:	f42e                	sd	a1,40(sp)
  3c:	f02a                	sd	a0,32(sp)
  3e:	00000097          	auipc	ra,0x0
  42:	000080e7          	jalr	ra # 3e <main+0x3e>
  46:	050a                	sll	a0,a0,0x2
  48:	00000097          	auipc	ra,0x0
  4c:	000080e7          	jalr	ra # 48 <main+0x48>
  50:	65a6                	ld	a1,72(sp)
  52:	89aa                	mv	s3,a0
  54:	6506                	ld	a0,64(sp)
  56:	4a91                	li	s5,4
  58:	00000097          	auipc	ra,0x0
  5c:	000080e7          	jalr	ra # 58 <main+0x58>
  60:	050a                	sll	a0,a0,0x2
  62:	00000097          	auipc	ra,0x0
  66:	000080e7          	jalr	ra # 62 <main+0x62>
  6a:	892a                	mv	s2,a0
  6c:	4505                	li	a0,1
  6e:	1506                	sll	a0,a0,0x21
  70:	85aa                	mv	a1,a0
  72:	0589                	add	a1,a1,2
  74:	0505                	add	a0,a0,1
  76:	ecae                	sd	a1,88(sp)
  78:	e8aa                	sd	a0,80(sp)
  7a:	00000097          	auipc	ra,0x0
  7e:	000080e7          	jalr	ra # 7a <main+0x7a>
  82:	65e6                	ld	a1,88(sp)
  84:	6546                	ld	a0,80(sp)
  86:	00000097          	auipc	ra,0x0
  8a:	000080e7          	jalr	ra # 86 <main+0x86>
  8e:	050a                	sll	a0,a0,0x2
  90:	00000097          	auipc	ra,0x0
  94:	000080e7          	jalr	ra # 90 <main+0x90>
  98:	75e2                	ld	a1,56(sp)
  9a:	8a2a                	mv	s4,a0
  9c:	7542                	ld	a0,48(sp)
  9e:	00000097          	auipc	ra,0x0
  a2:	000080e7          	jalr	ra # 9e <main+0x9e>
  a6:	050a                	sll	a0,a0,0x2
  a8:	00000097          	auipc	ra,0x0
  ac:	000080e7          	jalr	ra # a8 <main+0xa8>
  b0:	65e6                	ld	a1,88(sp)
  b2:	84aa                	mv	s1,a0
  b4:	6546                	ld	a0,80(sp)
  b6:	00000097          	auipc	ra,0x0
  ba:	000080e7          	jalr	ra # b6 <main+0xb6>
  be:	050a                	sll	a0,a0,0x2
  c0:	00000097          	auipc	ra,0x0
  c4:	000080e7          	jalr	ra # c0 <main+0xc0>
  c8:	842a                	mv	s0,a0
  ca:	75a2                	ld	a1,40(sp)
  cc:	7502                	ld	a0,32(sp)
  ce:	00000097          	auipc	ra,0x0
  d2:	000080e7          	jalr	ra # ce <main+0xce>
  d6:	85aa                	mv	a1,a0
  d8:	854e                	mv	a0,s3
  da:	00000097          	auipc	ra,0x0
  de:	000080e7          	jalr	ra # da <main+0xda>
  e2:	65a6                	ld	a1,72(sp)
  e4:	6506                	ld	a0,64(sp)
  e6:	00000097          	auipc	ra,0x0
  ea:	000080e7          	jalr	ra # e6 <main+0xe6>
  ee:	85aa                	mv	a1,a0
  f0:	854a                	mv	a0,s2
  f2:	00000097          	auipc	ra,0x0
  f6:	000080e7          	jalr	ra # f2 <main+0xf2>
  fa:	4785                	li	a5,1
  fc:	88a6                	mv	a7,s1
  fe:	4801                	li	a6,0
 100:	470d                	li	a4,3
 102:	4691                	li	a3,4
 104:	4611                	li	a2,4
 106:	458d                	li	a1,3
 108:	854e                	mv	a0,s3
 10a:	00000097          	auipc	ra,0x0
 10e:	000080e7          	jalr	ra # 10a <main+0x10a>
 112:	00000797          	auipc	a5,0x0
 116:	0007a587          	flw	fa1,0(a5) # 112 <main+0x112>
 11a:	20b58553          	fmv.s	fa0,fa1
 11e:	4691                	li	a3,4
 120:	4609                	li	a2,2
 122:	4581                	li	a1,0
 124:	4501                	li	a0,0
 126:	e856                	sd	s5,16(sp)
 128:	e422                	sd	s0,8(sp)
 12a:	e056                	sd	s5,0(sp)
 12c:	88a6                	mv	a7,s1
 12e:	486d                	li	a6,27
 130:	87ca                	mv	a5,s2
 132:	476d                	li	a4,27
 134:	00000097          	auipc	ra,0x0
 138:	000080e7          	jalr	ra # 134 <main+0x134>
 13c:	6646                	ld	a2,80(sp)
 13e:	66e6                	ld	a3,88(sp)
 140:	85d2                	mv	a1,s4
 142:	8522                	mv	a0,s0
 144:	00000097          	auipc	ra,0x0
 148:	000080e7          	jalr	ra # 144 <main+0x144>
 14c:	cd21                	beqz	a0,1a4 <.L2>
 14e:	00000517          	auipc	a0,0x0
 152:	00050513          	mv	a0,a0
 156:	00000097          	auipc	ra,0x0
 15a:	000080e7          	jalr	ra # 156 <main+0x156>

000000000000015e <.L3>:
 15e:	854e                	mv	a0,s3
 160:	00000097          	auipc	ra,0x0
 164:	000080e7          	jalr	ra # 160 <.L3+0x2>
 168:	854a                	mv	a0,s2
 16a:	00000097          	auipc	ra,0x0
 16e:	000080e7          	jalr	ra # 16a <.L3+0xc>
 172:	8552                	mv	a0,s4
 174:	00000097          	auipc	ra,0x0
 178:	000080e7          	jalr	ra # 174 <.L3+0x16>
 17c:	8526                	mv	a0,s1
 17e:	00000097          	auipc	ra,0x0
 182:	000080e7          	jalr	ra # 17e <.L3+0x20>
 186:	8522                	mv	a0,s0
 188:	00000097          	auipc	ra,0x0
 18c:	000080e7          	jalr	ra # 188 <.L3+0x2a>
 190:	60ea                	ld	ra,152(sp)
 192:	644a                	ld	s0,144(sp)
 194:	64aa                	ld	s1,136(sp)
 196:	690a                	ld	s2,128(sp)
 198:	79e6                	ld	s3,120(sp)
 19a:	7a46                	ld	s4,112(sp)
 19c:	7aa6                	ld	s5,104(sp)
 19e:	4501                	li	a0,0
 1a0:	610d                	add	sp,sp,160
 1a2:	8082                	ret

00000000000001a4 <.L2>:
 1a4:	00000517          	auipc	a0,0x0
 1a8:	00050513          	mv	a0,a0
 1ac:	00000097          	auipc	ra,0x0
 1b0:	000080e7          	jalr	ra # 1ac <.L2+0x8>
 1b4:	b76d                	j	15e <.L3>
