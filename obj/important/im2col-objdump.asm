
im2col.o:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <im2col_get_pixel>:
   0:	411706bb          	subw	a3,a4,a7
   4:	f0000553          	fmv.w.x	fa0,zero
   8:	0206c563          	bltz	a3,32 <.L1>
   c:	411788bb          	subw	a7,a5,a7
  10:	0208c163          	bltz	a7,32 <.L1>
  14:	00b6df63          	bge	a3,a1,32 <.L1>
  18:	00c8dd63          	bge	a7,a2,32 <.L1>
  1c:	030585bb          	mulw	a1,a1,a6
  20:	9db5                	addw	a1,a1,a3
  22:	02c5863b          	mulw	a2,a1,a2
  26:	011607bb          	addw	a5,a2,a7
  2a:	078a                	sll	a5,a5,0x2
  2c:	953e                	add	a0,a0,a5
  2e:	00052507          	flw	fa0,0(a0)

0000000000000032 <.L1>:
  32:	8082                	ret

0000000000000034 <im2col_cpu>:
  34:	7155                	add	sp,sp,-208
  36:	0018131b          	sllw	t1,a6,0x1 //t1=2*pad
  3a:	fd26                	sd	s1,184(sp)
  3c:	84b6                	mv	s1,a3
  3e:	00c306bb          	addw	a3,t1,a2 //a2=height
  42:	f152                	sd	s4,160(sp)
  44:	40e68a3b          	subw	s4,a3,a4 //(height + 2*pad )- ksize
  48:	8ec2                	mv	t4,a6
  4a:	02fa483b          	divw	a6,s4,a5 //a5=stride
  4e:	f54e                	sd	s3,168(sp)
  50:	89b2                	mv	s3,a2
  52:	0093063b          	addw	a2,t1,s1
  56:	9e19                	subw	a2,a2,a4
  58:	e55e                	sd	s7,136(sp)
  5a:	8bba                	mv	s7,a4
  5c:	f8ea                	sd	s10,112(sp)
  5e:	8d3e                	mv	s10,a5
  60:	e586                	sd	ra,200(sp)
  62:	e846                	sd	a7,16(sp)
  64:	02f6463b          	divw	a2,a2,a5
  68:	0018071b          	addw	a4,a6,1 //a4=height_col
  6c:	f03a                	sd	a4,32(sp)
  6e:	02bb87bb          	mulw	a5,s7,a1
  72:	037787bb          	mulw	a5,a5,s7
  76:	ec3e                	sd	a5,24(sp)
  78:	0ef05f63          	blez	a5,176 <.L8> //a5=channels_col
  7c:	0ee05d63          	blez	a4,176 <.L8> //a4=height_col
  80:	0006059b          	sext.w	a1,a2
  84:	2605                	addw	a2,a2,1  //a2=width_col
  86:	0ec05863          	blez	a2,176 <.L8>
  8a:	e1a2                	sd	s0,192(sp)
  8c:	f94a                	sd	s2,176(sp)
  8e:	ed56                	sd	s5,152(sp)
  90:	e95a                	sd	s6,144(sp)
  92:	e162                	sd	s8,128(sp)
  94:	fce6                	sd	s9,120(sp)
  96:	f4ee                	sd	s11,104(sp)
  98:	4785                	li	a5,1
  9a:	842a                	mv	s0,a0
  9c:	10fd1463          	bne	s10,a5,1a4 <.L40> #stride不等于1就去.40
  a0:	4d85                	li	s11,1
  a2:	00158a93          	add	s5,a1,1
  a6:	41dd8dbb          	subw	s11,s11,t4  # 1-pad
  aa:	002a9793          	sll	a5,s5,0x2
  ae:	e03e                	sd	a5,0(sp)
  b0:	01b807bb          	addw	a5,a6,s11
  b4:	d43e                	sw	a5,40(sp)
  b6:	00bd87bb          	addw	a5,s11,a1    # s11=1-pad a1=width_col-1
  ba:	00261a13          	sll	s4,a2,0x2
  be:	d83e                	sw	a5,48(sp)
  c0:	87a6                	mv	a5,s1
  c2:	00048c9b          	sext.w	s9,s1
  c6:	8452                	mv	s0,s4
  c8:	e402                	sd	zero,8(sp)
  ca:	4c01                	li	s8,0
  cc:	fc32                	sd	a2,56(sp)
  ce:	84aa                	mv	s1,a0
  d0:	e0f6                	sd	t4,64(sp)
  d2:	8a3e                	mv	s4,a5






00000000000000d4 <.L28>:
  d4:	037c4ebb          	divw	t4,s8,s7  # c / ksize
  d8:	5742                	lw	a4,48(sp)
  da:	6786                	ld	a5,64(sp) #pad
  dc:	7662                	ld	a2,56(sp)
  de:	037c68bb          	remw	a7,s8,s7  # w_offset
  e2:	037ec6bb          	divw	a3,t4,s7  # a3=c_im
  e6:	01170b3b          	addw	s6,a4,a7  # s6=w_offset+[width_col-pad]
  ea:	5722                	lw	a4,40(sp)
  ec:	40f8893b          	subw	s2,a7,a5  # w_offset-pad
  f0:	037eeebb          	remw	t4,t4,s7  # h_offset
  f4:	033686bb          	mulw	a3,a3,s3  # c_im*channel【所以是把函数拆出来了】
  f8:	01d70d3b          	addw	s10,a4,t4
  fc:	6722                	ld	a4,8(sp)
  fe:	40fe8abb          	subw	s5,t4,a5
 102:	67c2                	ld	a5,16(sp)
 104:	02c70e3b          	mulw	t3,a4,a2  # a4=0,a2=width_col
 108:	015686bb          	addw	a3,a3,s5  # s5=row
 10c:	03968dbb          	mulw	s11,a3,s9  # s9=width
 110:	0e0a                	sll	t3,t3,0x2
 112:	9e3e                	add	t3,t3,a5  #data_col基址+colindex

0000000000000114 <.L27>:
 114:	000a879b          	sext.w	a5,s5
 118:	060ac763          	bltz	s5,186 <.L21>  #row<0
 11c:	0737d563          	bge	a5,s3,186 <.L21> #row>=height s3=height
 120:	87ca                	mv	a5,s2
 122:	8672                	mv	a2,t3

0000000000000124 <.L24>:
 124:	00fd873b          	addw	a4,s11,a5  # a5=col[已经-pad],col+s11
 128:	070a                	sll	a4,a4,0x2 
 12a:	f00007d3          	fmv.w.x	fa5,zero
 12e:	9726                	add	a4,a4,s1   # s1是基址
 130:	0007859b          	sext.w	a1,a5
 134:	0007c663          	bltz	a5,140 <.L26>  #col<0
 138:	0145d463          	bge	a1,s4,140 <.L26>  #col>width
 13c:	00072787          	flw	fa5,0(a4)

0000000000000140 <.L26>:
 140:	2785                	addw	a5,a5,1
 142:	00f62027          	fsw	fa5,0(a2)  #######################################
 146:	0611                	add	a2,a2,4
 148:	fcfb1ee3          	bne	s6,a5,124 <.L24>
 14c:	2a85                	addw	s5,s5,1
 14e:	9e22                	add	t3,t3,s0
 150:	019d8dbb          	addw	s11,s11,s9
 154:	fdaa90e3          	bne	s5,s10,114 <.L27>

0000000000000158 <.L41>:
 158:	67a2                	ld	a5,8(sp)
 15a:	7702                	ld	a4,32(sp)
 15c:	2c05                	addw	s8,s8,1
 15e:	9fb9                	addw	a5,a5,a4
 160:	e43e                	sd	a5,8(sp)
 162:	67e2                	ld	a5,24(sp)
 164:	f78798e3          	bne	a5,s8,d4 <.L28>






0000000000000168 <.L39>:
 168:	640e                	ld	s0,192(sp)
 16a:	794a                	ld	s2,176(sp)
 16c:	6aea                	ld	s5,152(sp)
 16e:	6b4a                	ld	s6,144(sp)
 170:	6c0a                	ld	s8,128(sp)
 172:	7ce6                	ld	s9,120(sp)
 174:	7da6                	ld	s11,104(sp)

0000000000000176 <.L8>:
 176:	60ae                	ld	ra,200(sp)
 178:	74ea                	ld	s1,184(sp)
 17a:	79aa                	ld	s3,168(sp)
 17c:	7a0a                	ld	s4,160(sp)
 17e:	6baa                	ld	s7,136(sp)
 180:	7d46                	ld	s10,112(sp)
 182:	6169                	add	sp,sp,208
 184:	8082                	ret

0000000000000186 <.L21>:
 186:	6602                	ld	a2,0(sp)
 188:	8572                	mv	a0,t3
 18a:	4581                	li	a1,0
 18c:	00000097          	auipc	ra,0x0
 190:	000080e7          	jalr	ra # 18c <.L21+0x6>
 194:	8e2a                	mv	t3,a0
 196:	2a85                	addw	s5,s5,1
 198:	9e22                	add	t3,t3,s0
 19a:	019d8dbb          	addw	s11,s11,s9
 19e:	f7aa9be3          	bne	s5,s10,114 <.L27>
 1a2:	bf5d                	j	158 <.L41>





00000000000001a4 <.L40>:
 1a4:	029d0c3b          	mulw	s8,s10,s1
 1a8:	00158793          	add	a5,a1,1
 1ac:	0004871b          	sext.w	a4,s1
 1b0:	078a                	sll	a5,a5,0x2
 1b2:	e4ba                	sd	a4,72(sp)
 1b4:	e03e                	sd	a5,0(sp)
 1b6:	4701                	li	a4,0
 1b8:	00488793          	add	a5,a7,4
 1bc:	00261a13          	sll	s4,a2,0x2
 1c0:	ecb2                	sd	a2,88(sp)
 1c2:	8de2                	mv	s11,s8
 1c4:	86de                	mv	a3,s7
 1c6:	2d01                	sext.w	s10,s10
 1c8:	4f81                	li	t6,0
 1ca:	e8be                	sd	a5,80(sp)
 1cc:	863a                	mv	a2,a4
 1ce:	8c42                	mv	s8,a6
 1d0:	8cce                	mv	s9,s3
 1d2:	8ba6                	mv	s7,s1

00000000000001d4 <.L19>:
 1d4:	02d647bb          	divw	a5,a2,a3
 1d8:	6766                	ld	a4,88(sp)
 1da:	4981                	li	s3,0
 1dc:	e432                	sd	a2,8(sp)
 1de:	f47e                	sd	t6,40(sp)
 1e0:	f836                	sd	a3,48(sp)
 1e2:	fc76                	sd	t4,56(sp)
 1e4:	e0ae                	sd	a1,64(sp)
 1e6:	02d66b3b          	remw	s6,a2,a3
 1ea:	02d7c8bb          	divw	a7,a5,a3
 1ee:	41db0b3b          	subw	s6,s6,t4
 1f2:	02d7e7bb          	remw	a5,a5,a3
 1f6:	039888bb          	mulw	a7,a7,s9
 1fa:	41d784bb          	subw	s1,a5,t4
 1fe:	67a6                	ld	a5,72(sp)
 200:	02ef853b          	mulw	a0,t6,a4
 204:	009888bb          	addw	a7,a7,s1
 208:	6742                	ld	a4,16(sp)
 20a:	02f8893b          	mulw	s2,a7,a5
 20e:	00a58ab3          	add	s5,a1,a0
 212:	050a                	sll	a0,a0,0x2
 214:	00a70333          	add	t1,a4,a0
 218:	6746                	ld	a4,80(sp)
 21a:	0a8a                	sll	s5,s5,0x2
 21c:	87e6                	mv	a5,s9
 21e:	9aba                	add	s5,s5,a4
 220:	8722                	mv	a4,s0
 222:	844e                	mv	s0,s3
 224:	8cca                	mv	s9,s2
 226:	8926                	mv	s2,s1
 228:	89d2                	mv	s3,s4
 22a:	84e2                	mv	s1,s8
 22c:	8a6e                	mv	s4,s11
 22e:	8c56                	mv	s8,s5
 230:	8dba                	mv	s11,a4
 232:	8abe                	mv	s5,a5
 234:	0009079b          	sext.w	a5,s2
 238:	04094a63          	bltz	s2,28c <.L17>

000000000000023c <.L37>:
 23c:	0557d863          	bge	a5,s5,28c <.L17>
 240:	875a                	mv	a4,s6
 242:	861a                	mv	a2,t1

0000000000000244 <.L14>:
 244:	019707bb          	addw	a5,a4,s9
 248:	078a                	sll	a5,a5,0x2
 24a:	f00007d3          	fmv.w.x	fa5,zero
 24e:	97ee                	add	a5,a5,s11
 250:	0007069b          	sext.w	a3,a4
 254:	00074663          	bltz	a4,260 <.L13>
 258:	0176d463          	bge	a3,s7,260 <.L13>
 25c:	0007a787          	flw	fa5,0(a5) ###################

0000000000000260 <.L13>:
 260:	0611                	add	a2,a2,4
 262:	fef62e27          	fsw	fa5,-4(a2) ####################
 266:	01a7073b          	addw	a4,a4,s10
 26a:	fd861de3          	bne	a2,s8,244 <.L14>
 26e:	0014079b          	addw	a5,s0,1
 272:	01a9093b          	addw	s2,s2,s10
 276:	934e                	add	t1,t1,s3
 278:	9c4e                	add	s8,s8,s3
 27a:	014c8cbb          	addw	s9,s9,s4
 27e:	02848963          	beq	s1,s0,2b0 <.L16>

0000000000000282 <.L42>:
 282:	843e                	mv	s0,a5
 284:	0009079b          	sext.w	a5,s2
 288:	fa095ae3          	bgez	s2,23c <.L37>

000000000000028c <.L17>:
 28c:	6602                	ld	a2,0(sp)
 28e:	851a                	mv	a0,t1
 290:	4581                	li	a1,0
 292:	00000097          	auipc	ra,0x0
 296:	000080e7          	jalr	ra # 292 <.L17+0x6>
 29a:	832a                	mv	t1,a0
 29c:	0014079b          	addw	a5,s0,1
 2a0:	01a9093b          	addw	s2,s2,s10
 2a4:	934e                	add	t1,t1,s3
 2a6:	9c4e                	add	s8,s8,s3
 2a8:	014c8cbb          	addw	s9,s9,s4
 2ac:	fc849be3          	bne	s1,s0,282 <.L42>

00000000000002b0 <.L16>:
 2b0:	7782                	ld	a5,32(sp)
 2b2:	7fa2                	ld	t6,40(sp)
 2b4:	6622                	ld	a2,8(sp)
 2b6:	846e                	mv	s0,s11
 2b8:	00ff8fbb          	addw	t6,t6,a5
 2bc:	67e2                	ld	a5,24(sp)
 2be:	2605                	addw	a2,a2,1
 2c0:	8dd2                	mv	s11,s4
 2c2:	76c2                	ld	a3,48(sp)
 2c4:	7ee2                	ld	t4,56(sp)
 2c6:	6586                	ld	a1,64(sp)
 2c8:	8c26                	mv	s8,s1
 2ca:	8a4e                	mv	s4,s3
 2cc:	8cd6                	mv	s9,s5
 2ce:	f0c793e3          	bne	a5,a2,1d4 <.L19>
 2d2:	bd59                	j	168 <.L39>
