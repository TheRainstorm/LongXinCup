
main.elf:     file format elf32-tradlittlemips
main.elf


Disassembly of section .text:

bfc00000 <_ftext>:
/home/yfy/func_test_v0.01/soft/func/start.S:19
bfc00000:	2408ffff 	li	t0,-1
/home/yfy/func_test_v0.01/soft/func/start.S:20
bfc00004:	2408ffff 	li	t0,-1
/home/yfy/func_test_v0.01/soft/func/start.S:21
bfc00008:	100001ab 	b	bfc006b8 <locate>
/home/yfy/func_test_v0.01/soft/func/start.S:22
bfc0000c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:25
bfc00010:	3c088000 	lui	t0,0x8000
/home/yfy/func_test_v0.01/soft/func/start.S:26
bfc00014:	25290001 	addiu	t1,t1,1
/home/yfy/func_test_v0.01/soft/func/start.S:27
bfc00018:	01005025 	move	t2,t0
/home/yfy/func_test_v0.01/soft/func/start.S:28
bfc0001c:	01ae5821 	addu	t3,t5,t6
/home/yfy/func_test_v0.01/soft/func/start.S:29
bfc00020:	8d0c0000 	lw	t4,0(t0)
	...
/home/yfy/func_test_v0.01/soft/func/start.S:34
bfc000ec:	3c088000 	lui	t0,0x8000
/home/yfy/func_test_v0.01/soft/func/start.S:35
bfc000f0:	25290001 	addiu	t1,t1,1
/home/yfy/func_test_v0.01/soft/func/start.S:36
bfc000f4:	01005025 	move	t2,t0
/home/yfy/func_test_v0.01/soft/func/start.S:37
bfc000f8:	01ae5821 	addu	t3,t5,t6
/home/yfy/func_test_v0.01/soft/func/start.S:38
bfc000fc:	8d0c0000 	lw	t4,0(t0)

bfc00100 <test_finish>:
/home/yfy/func_test_v0.01/soft/func/start.S:41
bfc00100:	25080001 	addiu	t0,t0,1
/home/yfy/func_test_v0.01/soft/func/start.S:42
bfc00104:	240900ff 	li	t1,255
/home/yfy/func_test_v0.01/soft/func/start.S:43
bfc00108:	3c0abfaf 	lui	t2,0xbfaf
bfc0010c:	354afff0 	ori	t2,t2,0xfff0
/home/yfy/func_test_v0.01/soft/func/start.S:44
bfc00110:	ad490000 	sw	t1,0(t2)
/home/yfy/func_test_v0.01/soft/func/start.S:45
bfc00114:	1000fffa 	b	bfc00100 <test_finish>
/home/yfy/func_test_v0.01/soft/func/start.S:46
bfc00118:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:48
bfc0011c:	3c088000 	lui	t0,0x8000
/home/yfy/func_test_v0.01/soft/func/start.S:49
bfc00120:	25290001 	addiu	t1,t1,1
/home/yfy/func_test_v0.01/soft/func/start.S:50
bfc00124:	01005025 	move	t2,t0
/home/yfy/func_test_v0.01/soft/func/start.S:51
bfc00128:	01ae5821 	addu	t3,t5,t6
/home/yfy/func_test_v0.01/soft/func/start.S:52
bfc0012c:	8d0c0000 	lw	t4,0(t0)
	...
/home/yfy/func_test_v0.01/soft/func/start.S:58
bfc00380:	0000d010 	mfhi	k0
/home/yfy/func_test_v0.01/soft/func/start.S:59
bfc00384:	0000d812 	mflo	k1
/home/yfy/func_test_v0.01/soft/func/start.S:60
bfc00388:	3c1a800d 	lui	k0,0x800d
/home/yfy/func_test_v0.01/soft/func/start.S:61
bfc0038c:	8f5b0000 	lw	k1,0(k0)
/home/yfy/func_test_v0.01/soft/func/start.S:62
bfc00390:	241a0001 	li	k0,1
/home/yfy/func_test_v0.01/soft/func/start.S:63
bfc00394:	137a0016 	beq	k1,k0,bfc003f0 <syscall_ex>
/home/yfy/func_test_v0.01/soft/func/start.S:64
bfc00398:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:65
bfc0039c:	241a0002 	li	k0,2
/home/yfy/func_test_v0.01/soft/func/start.S:66
bfc003a0:	137a0024 	beq	k1,k0,bfc00434 <break_ex>
/home/yfy/func_test_v0.01/soft/func/start.S:67
bfc003a4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:68
bfc003a8:	241a0003 	li	k0,3
/home/yfy/func_test_v0.01/soft/func/start.S:69
bfc003ac:	137a0032 	beq	k1,k0,bfc00478 <overflow_ex>
/home/yfy/func_test_v0.01/soft/func/start.S:70
bfc003b0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:71
bfc003b4:	241a0004 	li	k0,4
/home/yfy/func_test_v0.01/soft/func/start.S:72
bfc003b8:	137a003f 	beq	k1,k0,bfc004b8 <adel_load_ex>
/home/yfy/func_test_v0.01/soft/func/start.S:73
bfc003bc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:74
bfc003c0:	241a0005 	li	k0,5
/home/yfy/func_test_v0.01/soft/func/start.S:75
bfc003c4:	137a004d 	beq	k1,k0,bfc004fc <ades_ex>
/home/yfy/func_test_v0.01/soft/func/start.S:76
bfc003c8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:77
bfc003cc:	241a0006 	li	k0,6
/home/yfy/func_test_v0.01/soft/func/start.S:78
bfc003d0:	137a005b 	beq	k1,k0,bfc00540 <adel_if_ex>
/home/yfy/func_test_v0.01/soft/func/start.S:79
bfc003d4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:80
bfc003d8:	241a0007 	li	k0,7
/home/yfy/func_test_v0.01/soft/func/start.S:81
bfc003dc:	137a006a 	beq	k1,k0,bfc00588 <reserved_inst_ex>
/home/yfy/func_test_v0.01/soft/func/start.S:82
bfc003e0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:83
bfc003e4:	241a0008 	li	k0,8
/home/yfy/func_test_v0.01/soft/func/start.S:84
bfc003e8:	137a0078 	beq	k1,k0,bfc005cc <int_ex>
/home/yfy/func_test_v0.01/soft/func/start.S:85
bfc003ec:	00000000 	nop

bfc003f0 <syscall_ex>:
/home/yfy/func_test_v0.01/soft/func/start.S:88
bfc003f0:	00009021 	move	s2,zero
/home/yfy/func_test_v0.01/soft/func/start.S:89
bfc003f4:	401a7000 	mfc0	k0,c0_epc
/home/yfy/func_test_v0.01/soft/func/start.S:90
bfc003f8:	1754009f 	bne	k0,s4,bfc00678 <ex_finish>
/home/yfy/func_test_v0.01/soft/func/start.S:91
bfc003fc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:92
bfc00400:	401a6800 	mfc0	k0,c0_cause
/home/yfy/func_test_v0.01/soft/func/start.S:93
bfc00404:	335a007c 	andi	k0,k0,0x7c
/home/yfy/func_test_v0.01/soft/func/start.S:94
bfc00408:	241b0020 	li	k1,32
/home/yfy/func_test_v0.01/soft/func/start.S:95
bfc0040c:	175b009a 	bne	k0,k1,bfc00678 <ex_finish>
/home/yfy/func_test_v0.01/soft/func/start.S:96
bfc00410:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:97
bfc00414:	401a6000 	mfc0	k0,c0_sr
/home/yfy/func_test_v0.01/soft/func/start.S:98
bfc00418:	335a0002 	andi	k0,k0,0x2
/home/yfy/func_test_v0.01/soft/func/start.S:99
bfc0041c:	241b0002 	li	k1,2
/home/yfy/func_test_v0.01/soft/func/start.S:100
bfc00420:	175b0095 	bne	k0,k1,bfc00678 <ex_finish>
/home/yfy/func_test_v0.01/soft/func/start.S:101
bfc00424:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:102
bfc00428:	3c120001 	lui	s2,0x1
/home/yfy/func_test_v0.01/soft/func/start.S:103
bfc0042c:	10000092 	b	bfc00678 <ex_finish>
/home/yfy/func_test_v0.01/soft/func/start.S:104
bfc00430:	00000000 	nop

bfc00434 <break_ex>:
/home/yfy/func_test_v0.01/soft/func/start.S:107
bfc00434:	00009021 	move	s2,zero
/home/yfy/func_test_v0.01/soft/func/start.S:108
bfc00438:	401a7000 	mfc0	k0,c0_epc
/home/yfy/func_test_v0.01/soft/func/start.S:109
bfc0043c:	1754008e 	bne	k0,s4,bfc00678 <ex_finish>
/home/yfy/func_test_v0.01/soft/func/start.S:110
bfc00440:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:111
bfc00444:	401a6800 	mfc0	k0,c0_cause
/home/yfy/func_test_v0.01/soft/func/start.S:112
bfc00448:	335a007c 	andi	k0,k0,0x7c
/home/yfy/func_test_v0.01/soft/func/start.S:113
bfc0044c:	241b0024 	li	k1,36
/home/yfy/func_test_v0.01/soft/func/start.S:114
bfc00450:	175b0089 	bne	k0,k1,bfc00678 <ex_finish>
/home/yfy/func_test_v0.01/soft/func/start.S:115
bfc00454:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:116
bfc00458:	401a6000 	mfc0	k0,c0_sr
/home/yfy/func_test_v0.01/soft/func/start.S:117
bfc0045c:	335a0002 	andi	k0,k0,0x2
/home/yfy/func_test_v0.01/soft/func/start.S:118
bfc00460:	241b0002 	li	k1,2
/home/yfy/func_test_v0.01/soft/func/start.S:119
bfc00464:	175b0084 	bne	k0,k1,bfc00678 <ex_finish>
/home/yfy/func_test_v0.01/soft/func/start.S:120
bfc00468:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:121
bfc0046c:	3c120002 	lui	s2,0x2
/home/yfy/func_test_v0.01/soft/func/start.S:122
bfc00470:	10000081 	b	bfc00678 <ex_finish>
/home/yfy/func_test_v0.01/soft/func/start.S:123
bfc00474:	00000000 	nop

bfc00478 <overflow_ex>:
/home/yfy/func_test_v0.01/soft/func/start.S:126
bfc00478:	00009021 	move	s2,zero
/home/yfy/func_test_v0.01/soft/func/start.S:127
bfc0047c:	401a7000 	mfc0	k0,c0_epc
/home/yfy/func_test_v0.01/soft/func/start.S:128
bfc00480:	1754007d 	bne	k0,s4,bfc00678 <ex_finish>
/home/yfy/func_test_v0.01/soft/func/start.S:129
bfc00484:	401a6800 	mfc0	k0,c0_cause
/home/yfy/func_test_v0.01/soft/func/start.S:130
bfc00488:	335a007c 	andi	k0,k0,0x7c
/home/yfy/func_test_v0.01/soft/func/start.S:131
bfc0048c:	241b0030 	li	k1,48
/home/yfy/func_test_v0.01/soft/func/start.S:132
bfc00490:	175b0079 	bne	k0,k1,bfc00678 <ex_finish>
/home/yfy/func_test_v0.01/soft/func/start.S:133
bfc00494:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:134
bfc00498:	401a6000 	mfc0	k0,c0_sr
/home/yfy/func_test_v0.01/soft/func/start.S:135
bfc0049c:	335a0002 	andi	k0,k0,0x2
/home/yfy/func_test_v0.01/soft/func/start.S:136
bfc004a0:	241b0002 	li	k1,2
/home/yfy/func_test_v0.01/soft/func/start.S:137
bfc004a4:	175b0074 	bne	k0,k1,bfc00678 <ex_finish>
/home/yfy/func_test_v0.01/soft/func/start.S:138
bfc004a8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:139
bfc004ac:	3c120003 	lui	s2,0x3
/home/yfy/func_test_v0.01/soft/func/start.S:140
bfc004b0:	10000071 	b	bfc00678 <ex_finish>
/home/yfy/func_test_v0.01/soft/func/start.S:141
bfc004b4:	00000000 	nop

bfc004b8 <adel_load_ex>:
/home/yfy/func_test_v0.01/soft/func/start.S:144
bfc004b8:	00009021 	move	s2,zero
/home/yfy/func_test_v0.01/soft/func/start.S:145
bfc004bc:	401a7000 	mfc0	k0,c0_epc
/home/yfy/func_test_v0.01/soft/func/start.S:146
bfc004c0:	1754006d 	bne	k0,s4,bfc00678 <ex_finish>
/home/yfy/func_test_v0.01/soft/func/start.S:147
bfc004c4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:148
bfc004c8:	401a6800 	mfc0	k0,c0_cause
/home/yfy/func_test_v0.01/soft/func/start.S:149
bfc004cc:	335a007c 	andi	k0,k0,0x7c
/home/yfy/func_test_v0.01/soft/func/start.S:150
bfc004d0:	241b0010 	li	k1,16
/home/yfy/func_test_v0.01/soft/func/start.S:151
bfc004d4:	175b0068 	bne	k0,k1,bfc00678 <ex_finish>
/home/yfy/func_test_v0.01/soft/func/start.S:152
bfc004d8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:153
bfc004dc:	401a6000 	mfc0	k0,c0_sr
/home/yfy/func_test_v0.01/soft/func/start.S:154
bfc004e0:	335a0002 	andi	k0,k0,0x2
/home/yfy/func_test_v0.01/soft/func/start.S:155
bfc004e4:	241b0002 	li	k1,2
/home/yfy/func_test_v0.01/soft/func/start.S:156
bfc004e8:	175b0063 	bne	k0,k1,bfc00678 <ex_finish>
/home/yfy/func_test_v0.01/soft/func/start.S:157
bfc004ec:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:158
bfc004f0:	3c120004 	lui	s2,0x4
/home/yfy/func_test_v0.01/soft/func/start.S:159
bfc004f4:	10000060 	b	bfc00678 <ex_finish>
/home/yfy/func_test_v0.01/soft/func/start.S:160
bfc004f8:	00000000 	nop

bfc004fc <ades_ex>:
/home/yfy/func_test_v0.01/soft/func/start.S:163
bfc004fc:	00009021 	move	s2,zero
/home/yfy/func_test_v0.01/soft/func/start.S:164
bfc00500:	401a7000 	mfc0	k0,c0_epc
/home/yfy/func_test_v0.01/soft/func/start.S:165
bfc00504:	1754005c 	bne	k0,s4,bfc00678 <ex_finish>
/home/yfy/func_test_v0.01/soft/func/start.S:166
bfc00508:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:167
bfc0050c:	401a6800 	mfc0	k0,c0_cause
/home/yfy/func_test_v0.01/soft/func/start.S:168
bfc00510:	335a007c 	andi	k0,k0,0x7c
/home/yfy/func_test_v0.01/soft/func/start.S:169
bfc00514:	241b0014 	li	k1,20
/home/yfy/func_test_v0.01/soft/func/start.S:170
bfc00518:	175b0057 	bne	k0,k1,bfc00678 <ex_finish>
/home/yfy/func_test_v0.01/soft/func/start.S:171
bfc0051c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:172
bfc00520:	401a6000 	mfc0	k0,c0_sr
/home/yfy/func_test_v0.01/soft/func/start.S:173
bfc00524:	335a0002 	andi	k0,k0,0x2
/home/yfy/func_test_v0.01/soft/func/start.S:174
bfc00528:	241b0002 	li	k1,2
/home/yfy/func_test_v0.01/soft/func/start.S:175
bfc0052c:	175b0052 	bne	k0,k1,bfc00678 <ex_finish>
/home/yfy/func_test_v0.01/soft/func/start.S:176
bfc00530:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:177
bfc00534:	3c120005 	lui	s2,0x5
/home/yfy/func_test_v0.01/soft/func/start.S:178
bfc00538:	1000004f 	b	bfc00678 <ex_finish>
/home/yfy/func_test_v0.01/soft/func/start.S:179
bfc0053c:	00000000 	nop

bfc00540 <adel_if_ex>:
/home/yfy/func_test_v0.01/soft/func/start.S:182
bfc00540:	00009021 	move	s2,zero
/home/yfy/func_test_v0.01/soft/func/start.S:183
bfc00544:	401a7000 	mfc0	k0,c0_epc
/home/yfy/func_test_v0.01/soft/func/start.S:184
bfc00548:	1754004b 	bne	k0,s4,bfc00678 <ex_finish>
/home/yfy/func_test_v0.01/soft/func/start.S:185
bfc0054c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:186
bfc00550:	40957000 	mtc0	s5,c0_epc
/home/yfy/func_test_v0.01/soft/func/start.S:187
bfc00554:	401a6800 	mfc0	k0,c0_cause
/home/yfy/func_test_v0.01/soft/func/start.S:188
bfc00558:	335a007c 	andi	k0,k0,0x7c
/home/yfy/func_test_v0.01/soft/func/start.S:189
bfc0055c:	241b0010 	li	k1,16
/home/yfy/func_test_v0.01/soft/func/start.S:190
bfc00560:	175b0045 	bne	k0,k1,bfc00678 <ex_finish>
/home/yfy/func_test_v0.01/soft/func/start.S:191
bfc00564:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:192
bfc00568:	401a6000 	mfc0	k0,c0_sr
/home/yfy/func_test_v0.01/soft/func/start.S:193
bfc0056c:	335a0002 	andi	k0,k0,0x2
/home/yfy/func_test_v0.01/soft/func/start.S:194
bfc00570:	241b0002 	li	k1,2
/home/yfy/func_test_v0.01/soft/func/start.S:195
bfc00574:	175b0040 	bne	k0,k1,bfc00678 <ex_finish>
/home/yfy/func_test_v0.01/soft/func/start.S:196
bfc00578:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:197
bfc0057c:	3c120006 	lui	s2,0x6
/home/yfy/func_test_v0.01/soft/func/start.S:198
bfc00580:	1000003d 	b	bfc00678 <ex_finish>
/home/yfy/func_test_v0.01/soft/func/start.S:199
bfc00584:	00000000 	nop

bfc00588 <reserved_inst_ex>:
/home/yfy/func_test_v0.01/soft/func/start.S:202
bfc00588:	00009021 	move	s2,zero
/home/yfy/func_test_v0.01/soft/func/start.S:203
bfc0058c:	401a7000 	mfc0	k0,c0_epc
/home/yfy/func_test_v0.01/soft/func/start.S:204
bfc00590:	17540039 	bne	k0,s4,bfc00678 <ex_finish>
/home/yfy/func_test_v0.01/soft/func/start.S:205
bfc00594:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:206
bfc00598:	401a6800 	mfc0	k0,c0_cause
/home/yfy/func_test_v0.01/soft/func/start.S:207
bfc0059c:	335a007c 	andi	k0,k0,0x7c
/home/yfy/func_test_v0.01/soft/func/start.S:208
bfc005a0:	241b0028 	li	k1,40
/home/yfy/func_test_v0.01/soft/func/start.S:209
bfc005a4:	175b0034 	bne	k0,k1,bfc00678 <ex_finish>
/home/yfy/func_test_v0.01/soft/func/start.S:210
bfc005a8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:211
bfc005ac:	401a6000 	mfc0	k0,c0_sr
/home/yfy/func_test_v0.01/soft/func/start.S:212
bfc005b0:	335a0002 	andi	k0,k0,0x2
/home/yfy/func_test_v0.01/soft/func/start.S:213
bfc005b4:	241b0002 	li	k1,2
/home/yfy/func_test_v0.01/soft/func/start.S:214
bfc005b8:	175b002f 	bne	k0,k1,bfc00678 <ex_finish>
/home/yfy/func_test_v0.01/soft/func/start.S:215
bfc005bc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:216
bfc005c0:	3c120007 	lui	s2,0x7
/home/yfy/func_test_v0.01/soft/func/start.S:217
bfc005c4:	1000002c 	b	bfc00678 <ex_finish>
/home/yfy/func_test_v0.01/soft/func/start.S:218
bfc005c8:	00000000 	nop

bfc005cc <int_ex>:
/home/yfy/func_test_v0.01/soft/func/start.S:221
bfc005cc:	00009021 	move	s2,zero
/home/yfy/func_test_v0.01/soft/func/start.S:222
bfc005d0:	401a7000 	mfc0	k0,c0_epc
/home/yfy/func_test_v0.01/soft/func/start.S:223
bfc005d4:	17540028 	bne	k0,s4,bfc00678 <ex_finish>
/home/yfy/func_test_v0.01/soft/func/start.S:224
bfc005d8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:225
bfc005dc:	275a0008 	addiu	k0,k0,8
/home/yfy/func_test_v0.01/soft/func/start.S:226
bfc005e0:	409a7000 	mtc0	k0,c0_epc
/home/yfy/func_test_v0.01/soft/func/start.S:227
bfc005e4:	3c1bbfb0 	lui	k1,0xbfb0
bfc005e8:	af608ffc 	sw	zero,-28676(k1)
bfc005ec:	af608ffc 	sw	zero,-28676(k1)
bfc005f0:	af60fff8 	sw	zero,-8(k1)
bfc005f4:	af608ffc 	sw	zero,-28676(k1)
bfc005f8:	af608ffc 	sw	zero,-28676(k1)
bfc005fc:	8f608ffc 	lw	zero,-28676(k1)
bfc00600:	8f7bfff8 	lw	k1,-8(k1)
/home/yfy/func_test_v0.01/soft/func/start.S:228
bfc00604:	401a6800 	mfc0	k0,c0_cause
/home/yfy/func_test_v0.01/soft/func/start.S:229
bfc00608:	3c1bbfb0 	lui	k1,0xbfb0
bfc0060c:	af608ffc 	sw	zero,-28676(k1)
bfc00610:	af608ffc 	sw	zero,-28676(k1)
bfc00614:	af7bfff8 	sw	k1,-8(k1)
bfc00618:	af608ffc 	sw	zero,-28676(k1)
bfc0061c:	af608ffc 	sw	zero,-28676(k1)
bfc00620:	8f608ffc 	lw	zero,-28676(k1)
bfc00624:	8f7bfff8 	lw	k1,-8(k1)
/home/yfy/func_test_v0.01/soft/func/start.S:230
bfc00628:	335a007c 	andi	k0,k0,0x7c
/home/yfy/func_test_v0.01/soft/func/start.S:231
bfc0062c:	241b0000 	li	k1,0
/home/yfy/func_test_v0.01/soft/func/start.S:232
bfc00630:	175b0011 	bne	k0,k1,bfc00678 <ex_finish>
bfc00634:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:233
bfc00638:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:234
bfc0063c:	401a6000 	mfc0	k0,c0_sr
bfc00640:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:235
bfc00644:	335a0002 	andi	k0,k0,0x2
/home/yfy/func_test_v0.01/soft/func/start.S:236
bfc00648:	241b0002 	li	k1,2
/home/yfy/func_test_v0.01/soft/func/start.S:237
bfc0064c:	175b000a 	bne	k0,k1,bfc00678 <ex_finish>
bfc00650:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:238
bfc00654:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:239
bfc00658:	241affff 	li	k0,-1
/home/yfy/func_test_v0.01/soft/func/start.S:240
bfc0065c:	241b0000 	li	k1,0
/home/yfy/func_test_v0.01/soft/func/start.S:241
bfc00660:	409a5800 	mtc0	k0,$11
bfc00664:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:242
bfc00668:	409b6800 	mtc0	k1,c0_cause
/home/yfy/func_test_v0.01/soft/func/start.S:243
bfc0066c:	10000010 	b	bfc006b0 <ex_ret>
/home/yfy/func_test_v0.01/soft/func/start.S:244
bfc00670:	3c120008 	lui	s2,0x8
/home/yfy/func_test_v0.01/soft/func/start.S:245
bfc00674:	00000000 	nop

bfc00678 <ex_finish>:
/home/yfy/func_test_v0.01/soft/func/start.S:248
bfc00678:	401a6800 	mfc0	k0,c0_cause
/home/yfy/func_test_v0.01/soft/func/start.S:249
bfc0067c:	3c1b8000 	lui	k1,0x8000
/home/yfy/func_test_v0.01/soft/func/start.S:250
bfc00680:	035bd024 	and	k0,k0,k1
/home/yfy/func_test_v0.01/soft/func/start.S:251
bfc00684:	401b7000 	mfc0	k1,c0_epc
bfc00688:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:252
bfc0068c:	13400003 	beqz	k0,bfc0069c <ex_finish+0x24>
/home/yfy/func_test_v0.01/soft/func/start.S:253
bfc00690:	277b0004 	addiu	k1,k1,4
/home/yfy/func_test_v0.01/soft/func/start.S:254
bfc00694:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:255
bfc00698:	277b0004 	addiu	k1,k1,4
/home/yfy/func_test_v0.01/soft/func/start.S:257
bfc0069c:	409b7000 	mtc0	k1,c0_epc
/home/yfy/func_test_v0.01/soft/func/start.S:258
bfc006a0:	16400003 	bnez	s2,bfc006b0 <ex_ret>
/home/yfy/func_test_v0.01/soft/func/start.S:259
bfc006a4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:260
bfc006a8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:261
bfc006ac:	3c12ffff 	lui	s2,0xffff

bfc006b0 <ex_ret>:
/home/yfy/func_test_v0.01/soft/func/start.S:264
bfc006b0:	42000018 	c0	0x18
/home/yfy/func_test_v0.01/soft/func/start.S:266
bfc006b4:	00000000 	nop

bfc006b8 <locate>:
/home/yfy/func_test_v0.01/soft/func/start.S:271
bfc006b8:	3c04bfaf 	lui	a0,0xbfaf
bfc006bc:	3484f008 	ori	a0,a0,0xf008
/home/yfy/func_test_v0.01/soft/func/start.S:272
bfc006c0:	3c05bfaf 	lui	a1,0xbfaf
bfc006c4:	34a5f004 	ori	a1,a1,0xf004
/home/yfy/func_test_v0.01/soft/func/start.S:273
bfc006c8:	3c11bfaf 	lui	s1,0xbfaf
bfc006cc:	3631f010 	ori	s1,s1,0xf010
/home/yfy/func_test_v0.01/soft/func/start.S:275
bfc006d0:	24090002 	li	t1,2
/home/yfy/func_test_v0.01/soft/func/start.S:276
bfc006d4:	240a0001 	li	t2,1
/home/yfy/func_test_v0.01/soft/func/start.S:277
bfc006d8:	3c130000 	lui	s3,0x0
/home/yfy/func_test_v0.01/soft/func/start.S:279
bfc006dc:	ac890000 	sw	t1,0(a0)
/home/yfy/func_test_v0.01/soft/func/start.S:280
bfc006e0:	acaa0000 	sw	t2,0(a1)
/home/yfy/func_test_v0.01/soft/func/start.S:281
bfc006e4:	ae330000 	sw	s3,0(s1)
/home/yfy/func_test_v0.01/soft/func/start.S:283
bfc006e8:	3c100000 	lui	s0,0x0
/home/yfy/func_test_v0.01/soft/func/start.S:285
bfc006ec:	3c09bfc0 	lui	t1,0xbfc0
bfc006f0:	25290704 	addiu	t1,t1,1796
/home/yfy/func_test_v0.01/soft/func/start.S:286
bfc006f4:	3c0a2000 	lui	t2,0x2000
/home/yfy/func_test_v0.01/soft/func/start.S:287
bfc006f8:	012ac823 	subu	t9,t1,t2
/home/yfy/func_test_v0.01/soft/func/start.S:288
bfc006fc:	03200008 	jr	t9
/home/yfy/func_test_v0.01/soft/func/start.S:289
bfc00700:	00000000 	nop

bfc00704 <inst_test>:
/home/yfy/func_test_v0.01/soft/func/start.S:292
bfc00704:	0ff0032c 	jal	bfc00cb0 <n1_lui_test>
/home/yfy/func_test_v0.01/soft/func/start.S:293
bfc00708:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:294
bfc0070c:	0ff00257 	jal	bfc0095c <wait_1s>
/home/yfy/func_test_v0.01/soft/func/start.S:295
bfc00710:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:297
bfc00714:	3c19bfc0 	lui	t9,0xbfc0
bfc00718:	27390724 	addiu	t9,t9,1828
/home/yfy/func_test_v0.01/soft/func/start.S:298
bfc0071c:	03200008 	jr	t9
/home/yfy/func_test_v0.01/soft/func/start.S:299
bfc00720:	00000000 	nop

bfc00724 <kseg0_kseg1>:
/home/yfy/func_test_v0.01/soft/func/start.S:556
bfc00724:	0ff01390 	jal	bfc04e40 <n65_syscall_ex_test>
/home/yfy/func_test_v0.01/soft/func/start.S:557
bfc00728:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:558
bfc0072c:	0ff00257 	jal	bfc0095c <wait_1s>
/home/yfy/func_test_v0.01/soft/func/start.S:559
bfc00730:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:560
bfc00734:	0ff00fa8 	jal	bfc03ea0 <n66_break_ex_test>
/home/yfy/func_test_v0.01/soft/func/start.S:561
bfc00738:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:562
bfc0073c:	0ff00257 	jal	bfc0095c <wait_1s>
/home/yfy/func_test_v0.01/soft/func/start.S:563
bfc00740:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:564
bfc00744:	0ff00a04 	jal	bfc02810 <n67_add_ov_ex_test>
/home/yfy/func_test_v0.01/soft/func/start.S:565
bfc00748:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:566
bfc0074c:	0ff00257 	jal	bfc0095c <wait_1s>
/home/yfy/func_test_v0.01/soft/func/start.S:567
bfc00750:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:568
bfc00754:	0ff00b58 	jal	bfc02d60 <n68_addi_ov_ex_test>
/home/yfy/func_test_v0.01/soft/func/start.S:569
bfc00758:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:570
bfc0075c:	0ff00257 	jal	bfc0095c <wait_1s>
/home/yfy/func_test_v0.01/soft/func/start.S:571
bfc00760:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:572
bfc00764:	0ff01530 	jal	bfc054c0 <n69_sub_ov_ex_test>
/home/yfy/func_test_v0.01/soft/func/start.S:573
bfc00768:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:574
bfc0076c:	0ff00257 	jal	bfc0095c <wait_1s>
/home/yfy/func_test_v0.01/soft/func/start.S:575
bfc00770:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:576
bfc00774:	0ff010b8 	jal	bfc042e0 <n70_lw_adel_ex_test>
/home/yfy/func_test_v0.01/soft/func/start.S:577
bfc00778:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:578
bfc0077c:	0ff00257 	jal	bfc0095c <wait_1s>
/home/yfy/func_test_v0.01/soft/func/start.S:579
bfc00780:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:580
bfc00784:	0ff00884 	jal	bfc02210 <n71_lh_adel_ex_test>
/home/yfy/func_test_v0.01/soft/func/start.S:581
bfc00788:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:582
bfc0078c:	0ff00257 	jal	bfc0095c <wait_1s>
/home/yfy/func_test_v0.01/soft/func/start.S:583
bfc00790:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:584
bfc00794:	0ff00944 	jal	bfc02510 <n72_lhu_adel_ex_test>
/home/yfy/func_test_v0.01/soft/func/start.S:585
bfc00798:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:586
bfc0079c:	0ff00257 	jal	bfc0095c <wait_1s>
/home/yfy/func_test_v0.01/soft/func/start.S:587
bfc007a0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:588
bfc007a4:	0ff007c4 	jal	bfc01f10 <n73_sw_ades_ex_test>
/home/yfy/func_test_v0.01/soft/func/start.S:589
bfc007a8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:590
bfc007ac:	0ff00257 	jal	bfc0095c <wait_1s>
/home/yfy/func_test_v0.01/soft/func/start.S:591
bfc007b0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:592
bfc007b4:	0ff0026c 	jal	bfc009b0 <n74_sh_ades_ex_test>
/home/yfy/func_test_v0.01/soft/func/start.S:593
bfc007b8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:594
bfc007bc:	0ff00257 	jal	bfc0095c <wait_1s>
/home/yfy/func_test_v0.01/soft/func/start.S:595
bfc007c0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:596
bfc007c4:	0ff014a4 	jal	bfc05290 <n75_ft_adel_ex_test>
/home/yfy/func_test_v0.01/soft/func/start.S:597
bfc007c8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:598
bfc007cc:	0ff00257 	jal	bfc0095c <wait_1s>
/home/yfy/func_test_v0.01/soft/func/start.S:599
bfc007d0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:600
bfc007d4:	0ff0174c 	jal	bfc05d30 <n76_ri_ex_test>
/home/yfy/func_test_v0.01/soft/func/start.S:601
bfc007d8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:602
bfc007dc:	0ff00257 	jal	bfc0095c <wait_1s>
/home/yfy/func_test_v0.01/soft/func/start.S:603
bfc007e0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:604
bfc007e4:	0ff01238 	jal	bfc048e0 <n77_soft_int_ex_test>
/home/yfy/func_test_v0.01/soft/func/start.S:605
bfc007e8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:606
bfc007ec:	0ff00257 	jal	bfc0095c <wait_1s>
/home/yfy/func_test_v0.01/soft/func/start.S:607
bfc007f0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:608
bfc007f4:	0ff00d68 	jal	bfc035a0 <n78_beq_ds_ex_test>
/home/yfy/func_test_v0.01/soft/func/start.S:609
bfc007f8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:610
bfc007fc:	0ff00257 	jal	bfc0095c <wait_1s>
/home/yfy/func_test_v0.01/soft/func/start.S:611
bfc00800:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:612
bfc00804:	0ff00ee8 	jal	bfc03ba0 <n79_bne_ds_ex_test>
/home/yfy/func_test_v0.01/soft/func/start.S:613
bfc00808:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:614
bfc0080c:	0ff00257 	jal	bfc0095c <wait_1s>
/home/yfy/func_test_v0.01/soft/func/start.S:615
bfc00810:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:616
bfc00814:	0ff00a98 	jal	bfc02a60 <n80_bgez_ds_ex_test>
/home/yfy/func_test_v0.01/soft/func/start.S:617
bfc00818:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:618
bfc0081c:	0ff00257 	jal	bfc0095c <wait_1s>
/home/yfy/func_test_v0.01/soft/func/start.S:619
bfc00820:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:620
bfc00824:	0ff00be4 	jal	bfc02f90 <n81_bgtz_ds_ex_test>
/home/yfy/func_test_v0.01/soft/func/start.S:621
bfc00828:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:622
bfc0082c:	0ff00257 	jal	bfc0095c <wait_1s>
/home/yfy/func_test_v0.01/soft/func/start.S:623
bfc00830:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:624
bfc00834:	0ff012d0 	jal	bfc04b40 <n82_blez_ds_ex_test>
/home/yfy/func_test_v0.01/soft/func/start.S:625
bfc00838:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:626
bfc0083c:	0ff00257 	jal	bfc0095c <wait_1s>
/home/yfy/func_test_v0.01/soft/func/start.S:627
bfc00840:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:628
bfc00844:	0ff00ff8 	jal	bfc03fe0 <n83_bltz_ds_ex_test>
/home/yfy/func_test_v0.01/soft/func/start.S:629
bfc00848:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:630
bfc0084c:	0ff00257 	jal	bfc0095c <wait_1s>
/home/yfy/func_test_v0.01/soft/func/start.S:631
bfc00850:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:632
bfc00854:	0ff01688 	jal	bfc05a20 <n84_bltzal_ds_ex_test>
/home/yfy/func_test_v0.01/soft/func/start.S:633
bfc00858:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:634
bfc0085c:	0ff00257 	jal	bfc0095c <wait_1s>
/home/yfy/func_test_v0.01/soft/func/start.S:635
bfc00860:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:636
bfc00864:	0ff013e0 	jal	bfc04f80 <n85_bgezal_ds_ex_test>
/home/yfy/func_test_v0.01/soft/func/start.S:637
bfc00868:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:638
bfc0086c:	0ff00257 	jal	bfc0095c <wait_1s>
/home/yfy/func_test_v0.01/soft/func/start.S:639
bfc00870:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:640
bfc00874:	0ff00e28 	jal	bfc038a0 <n86_j_ds_ex_test>
/home/yfy/func_test_v0.01/soft/func/start.S:641
bfc00878:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:642
bfc0087c:	0ff00257 	jal	bfc0095c <wait_1s>
/home/yfy/func_test_v0.01/soft/func/start.S:643
bfc00880:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:644
bfc00884:	0ff015c4 	jal	bfc05710 <n87_jal_ds_ex_test>
/home/yfy/func_test_v0.01/soft/func/start.S:645
bfc00888:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:646
bfc0088c:	0ff00257 	jal	bfc0095c <wait_1s>
/home/yfy/func_test_v0.01/soft/func/start.S:647
bfc00890:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:648
bfc00894:	0ff01178 	jal	bfc045e0 <n88_jr_ds_ex_test>
/home/yfy/func_test_v0.01/soft/func/start.S:649
bfc00898:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:650
bfc0089c:	0ff00257 	jal	bfc0095c <wait_1s>
/home/yfy/func_test_v0.01/soft/func/start.S:651
bfc008a0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:652
bfc008a4:	0ff00ca4 	jal	bfc03290 <n89_jalr_ds_ex_test>
/home/yfy/func_test_v0.01/soft/func/start.S:653
bfc008a8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:654
bfc008ac:	0ff00257 	jal	bfc0095c <wait_1s>
/home/yfy/func_test_v0.01/soft/func/start.S:655
bfc008b0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:657
bfc008b4:	3c04bfaf 	lui	a0,0xbfaf
bfc008b8:	3484ffec 	ori	a0,a0,0xffec
/home/yfy/func_test_v0.01/soft/func/start.S:658
bfc008bc:	24081234 	li	t0,4660
/home/yfy/func_test_v0.01/soft/func/start.S:659
bfc008c0:	ac880000 	sw	t0,0(a0)
/home/yfy/func_test_v0.01/soft/func/start.S:660
bfc008c4:	8c890000 	lw	t1,0(a0)
/home/yfy/func_test_v0.01/soft/func/start.S:661
bfc008c8:	00084400 	sll	t0,t0,0x10
/home/yfy/func_test_v0.01/soft/func/start.S:662
bfc008cc:	15090009 	bne	t0,t1,bfc008f4 <io_err>
/home/yfy/func_test_v0.01/soft/func/start.S:663
bfc008d0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:665
bfc008d4:	3c085678 	lui	t0,0x5678
/home/yfy/func_test_v0.01/soft/func/start.S:666
bfc008d8:	ac880000 	sw	t0,0(a0)
/home/yfy/func_test_v0.01/soft/func/start.S:667
bfc008dc:	00084402 	srl	t0,t0,0x10
/home/yfy/func_test_v0.01/soft/func/start.S:668
bfc008e0:	8c890000 	lw	t1,0(a0)
/home/yfy/func_test_v0.01/soft/func/start.S:669
bfc008e4:	15090003 	bne	t0,t1,bfc008f4 <io_err>
/home/yfy/func_test_v0.01/soft/func/start.S:670
bfc008e8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:671
bfc008ec:	10000003 	b	bfc008fc <test_end>
/home/yfy/func_test_v0.01/soft/func/start.S:672
bfc008f0:	00000000 	nop

bfc008f4 <io_err>:
/home/yfy/func_test_v0.01/soft/func/start.S:674
bfc008f4:	26100001 	addiu	s0,s0,1
/home/yfy/func_test_v0.01/soft/func/start.S:675
bfc008f8:	ae300000 	sw	s0,0(s1)

bfc008fc <test_end>:
/home/yfy/func_test_v0.01/soft/func/start.S:678
bfc008fc:	24100059 	li	s0,89
/home/yfy/func_test_v0.01/soft/func/start.S:679
bfc00900:	1213000d 	beq	s0,s3,bfc00938 <test_end+0x3c>
/home/yfy/func_test_v0.01/soft/func/start.S:680
bfc00904:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:682
bfc00908:	3c04bfaf 	lui	a0,0xbfaf
bfc0090c:	3484f000 	ori	a0,a0,0xf000
/home/yfy/func_test_v0.01/soft/func/start.S:683
bfc00910:	3c05bfaf 	lui	a1,0xbfaf
bfc00914:	34a5f008 	ori	a1,a1,0xf008
/home/yfy/func_test_v0.01/soft/func/start.S:684
bfc00918:	3c06bfaf 	lui	a2,0xbfaf
bfc0091c:	34c6f004 	ori	a2,a2,0xf004
/home/yfy/func_test_v0.01/soft/func/start.S:686
bfc00920:	24090002 	li	t1,2
/home/yfy/func_test_v0.01/soft/func/start.S:688
bfc00924:	ac800000 	sw	zero,0(a0)
/home/yfy/func_test_v0.01/soft/func/start.S:689
bfc00928:	aca90000 	sw	t1,0(a1)
/home/yfy/func_test_v0.01/soft/func/start.S:690
bfc0092c:	acc90000 	sw	t1,0(a2)
/home/yfy/func_test_v0.01/soft/func/start.S:691
bfc00930:	10000008 	b	bfc00954 <test_end+0x58>
/home/yfy/func_test_v0.01/soft/func/start.S:692
bfc00934:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:694
bfc00938:	24090001 	li	t1,1
/home/yfy/func_test_v0.01/soft/func/start.S:695
bfc0093c:	3c04bfaf 	lui	a0,0xbfaf
bfc00940:	3484f008 	ori	a0,a0,0xf008
/home/yfy/func_test_v0.01/soft/func/start.S:696
bfc00944:	3c05bfaf 	lui	a1,0xbfaf
bfc00948:	34a5f004 	ori	a1,a1,0xf004
/home/yfy/func_test_v0.01/soft/func/start.S:697
bfc0094c:	ac890000 	sw	t1,0(a0)
/home/yfy/func_test_v0.01/soft/func/start.S:698
bfc00950:	aca90000 	sw	t1,0(a1)
/home/yfy/func_test_v0.01/soft/func/start.S:701
bfc00954:	0ff00040 	jal	bfc00100 <test_finish>
/home/yfy/func_test_v0.01/soft/func/start.S:702
bfc00958:	00000000 	nop

bfc0095c <wait_1s>:
/home/yfy/func_test_v0.01/soft/func/start.S:705
bfc0095c:	3c08bfaf 	lui	t0,0xbfaf
bfc00960:	3508f02c 	ori	t0,t0,0xf02c
/home/yfy/func_test_v0.01/soft/func/start.S:706
bfc00964:	3409aaaa 	li	t1,0xaaaa
/home/yfy/func_test_v0.01/soft/func/start.S:709
bfc00968:	8d0a0000 	lw	t2,0(t0)
/home/yfy/func_test_v0.01/soft/func/start.S:710
bfc0096c:	01495026 	xor	t2,t2,t1
/home/yfy/func_test_v0.01/soft/func/start.S:711
bfc00970:	000a5a40 	sll	t3,t2,0x9
/home/yfy/func_test_v0.01/soft/func/start.S:712
bfc00974:	256b0001 	addiu	t3,t3,1

bfc00978 <sub1>:
/home/yfy/func_test_v0.01/soft/func/start.S:715
bfc00978:	256bffff 	addiu	t3,t3,-1
/home/yfy/func_test_v0.01/soft/func/start.S:718
bfc0097c:	8d0a0000 	lw	t2,0(t0)
/home/yfy/func_test_v0.01/soft/func/start.S:719
bfc00980:	01495026 	xor	t2,t2,t1
/home/yfy/func_test_v0.01/soft/func/start.S:720
bfc00984:	000a5240 	sll	t2,t2,0x9
/home/yfy/func_test_v0.01/soft/func/start.S:721
bfc00988:	016a602b 	sltu	t4,t3,t2
/home/yfy/func_test_v0.01/soft/func/start.S:722
bfc0098c:	15800002 	bnez	t4,bfc00998 <sub1+0x20>
/home/yfy/func_test_v0.01/soft/func/start.S:723
bfc00990:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:724
bfc00994:	254b0000 	addiu	t3,t2,0
/home/yfy/func_test_v0.01/soft/func/start.S:726
bfc00998:	1560fff7 	bnez	t3,bfc00978 <sub1>
/home/yfy/func_test_v0.01/soft/func/start.S:727
bfc0099c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/start.S:728
bfc009a0:	03e00008 	jr	ra
/home/yfy/func_test_v0.01/soft/func/start.S:729
bfc009a4:	00000000 	nop
	...

bfc009b0 <n74_sh_ades_ex_test>:
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:7
bfc009b0:	26100001 	addiu	s0,s0,1
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:8
bfc009b4:	3c08800d 	lui	t0,0x800d
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:9
bfc009b8:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:10
bfc009bc:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:12
bfc009c0:	40805800 	mtc0	zero,$11
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:13
bfc009c4:	3c170040 	lui	s7,0x40
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:14
bfc009c8:	40976000 	mtc0	s7,c0_sr
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:15
bfc009cc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:16
bfc009d0:	3c170005 	lui	s7,0x5
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:19
bfc009d4:	3c028003 	lui	v0,0x8003
bfc009d8:	3442602a 	ori	v0,v0,0x602a
bfc009dc:	3c038003 	lui	v1,0x8003
bfc009e0:	3463602a 	ori	v1,v1,0x602a
bfc009e4:	3c04800d 	lui	a0,0x800d
bfc009e8:	3484602a 	ori	a0,a0,0x602a
bfc009ec:	3c0547cd 	lui	a1,0x47cd
bfc009f0:	34a5f6da 	ori	a1,a1,0xf6da
bfc009f4:	24878c35 	addiu	a3,a0,-29643
bfc009f8:	ac828c32 	sw	v0,-29646(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:20
bfc009fc:	3c14bfc0 	lui	s4,0xbfc0
bfc00a00:	26940a04 	addiu	s4,s4,2564
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:21
bfc00a04:	a4858c35 	sh	a1,-29643(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:22
bfc00a08:	165700a2 	bne	s2,s7,bfc00c94 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:23
bfc00a0c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:24
bfc00a10:	8c828c32 	lw	v0,-29646(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:25
bfc00a14:	1443009f 	bne	v0,v1,bfc00c94 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:26
bfc00a18:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:27
bfc00a1c:	40164000 	mfc0	s6,c0_badvaddr
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:28
bfc00a20:	14f6009c 	bne	a3,s6,bfc00c94 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:29
bfc00a24:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:31
bfc00a28:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:32
bfc00a2c:	3c026e9c 	lui	v0,0x6e9c
bfc00a30:	3442e24e 	ori	v0,v0,0xe24e
bfc00a34:	3c036e9c 	lui	v1,0x6e9c
bfc00a38:	3463e24e 	ori	v1,v1,0xe24e
bfc00a3c:	3c04800d 	lui	a0,0x800d
bfc00a40:	34842c08 	ori	a0,a0,0x2c08
bfc00a44:	3c056e9c 	lui	a1,0x6e9c
bfc00a48:	34a5e24e 	ori	a1,a1,0xe24e
bfc00a4c:	2487098b 	addiu	a3,a0,2443
bfc00a50:	ac820988 	sw	v0,2440(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:33
bfc00a54:	3c14bfc0 	lui	s4,0xbfc0
bfc00a58:	26940a64 	addiu	s4,s4,2660
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:34
bfc00a5c:	ad080004 	sw	t0,4(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:35
bfc00a60:	ad140004 	sw	s4,4(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:36
bfc00a64:	a485098b 	sh	a1,2443(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:37
bfc00a68:	ad140000 	sw	s4,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:38
bfc00a6c:	8d090004 	lw	t1,4(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:39
bfc00a70:	15340088 	bne	t1,s4,bfc00c94 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:40
bfc00a74:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:41
bfc00a78:	16570086 	bne	s2,s7,bfc00c94 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:42
bfc00a7c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:43
bfc00a80:	8c820988 	lw	v0,2440(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:44
bfc00a84:	14430083 	bne	v0,v1,bfc00c94 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:45
bfc00a88:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:46
bfc00a8c:	40164000 	mfc0	s6,c0_badvaddr
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:47
bfc00a90:	14f60080 	bne	a3,s6,bfc00c94 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:48
bfc00a94:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:49
bfc00a98:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:50
bfc00a9c:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:52
bfc00aa0:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:53
bfc00aa4:	3c02419f 	lui	v0,0x419f
bfc00aa8:	34429f3b 	ori	v0,v0,0x9f3b
bfc00aac:	3c03419f 	lui	v1,0x419f
bfc00ab0:	34639f3b 	ori	v1,v1,0x9f3b
bfc00ab4:	3c04800d 	lui	a0,0x800d
bfc00ab8:	34841356 	ori	a0,a0,0x1356
bfc00abc:	3c05bb1a 	lui	a1,0xbb1a
bfc00ac0:	34a5fce8 	ori	a1,a1,0xfce8
bfc00ac4:	24871dd3 	addiu	a3,a0,7635
bfc00ac8:	ac821dd2 	sw	v0,7634(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:54
bfc00acc:	3c14bfc0 	lui	s4,0xbfc0
bfc00ad0:	26940adc 	addiu	s4,s4,2780
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:55
bfc00ad4:	01000011 	mthi	t0
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:56
bfc00ad8:	0110001b 	divu	zero,t0,s0
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:57
bfc00adc:	a4851dd3 	sh	a1,7635(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:58
bfc00ae0:	00004810 	mfhi	t1
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:59
bfc00ae4:	1128006b 	beq	t1,t0,bfc00c94 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:60
bfc00ae8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:61
bfc00aec:	16570069 	bne	s2,s7,bfc00c94 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:62
bfc00af0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:63
bfc00af4:	8c821dd2 	lw	v0,7634(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:64
bfc00af8:	14430066 	bne	v0,v1,bfc00c94 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:65
bfc00afc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:66
bfc00b00:	40164000 	mfc0	s6,c0_badvaddr
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:67
bfc00b04:	14f60063 	bne	a3,s6,bfc00c94 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:68
bfc00b08:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:70
bfc00b0c:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:71
bfc00b10:	3c028003 	lui	v0,0x8003
bfc00b14:	34423729 	ori	v0,v0,0x3729
bfc00b18:	3c038003 	lui	v1,0x8003
bfc00b1c:	34633729 	ori	v1,v1,0x3729
bfc00b20:	3c04800d 	lui	a0,0x800d
bfc00b24:	3484372c 	ori	a0,a0,0x372c
bfc00b28:	3c05190a 	lui	a1,0x190a
bfc00b2c:	34a565ca 	ori	a1,a1,0x65ca
bfc00b30:	248786f1 	addiu	a3,a0,-30991
bfc00b34:	ac8286f0 	sw	v0,-30992(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:72
bfc00b38:	3c14bfc0 	lui	s4,0xbfc0
bfc00b3c:	26940b40 	addiu	s4,s4,2880
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:73
bfc00b40:	a48586f1 	sh	a1,-30991(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:74
bfc00b44:	0208001b 	divu	zero,s0,t0
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:75
bfc00b48:	16570052 	bne	s2,s7,bfc00c94 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:76
bfc00b4c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:77
bfc00b50:	8c8286f0 	lw	v0,-30992(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:78
bfc00b54:	1443004f 	bne	v0,v1,bfc00c94 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:79
bfc00b58:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:80
bfc00b5c:	40164000 	mfc0	s6,c0_badvaddr
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:81
bfc00b60:	14f6004c 	bne	a3,s6,bfc00c94 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:82
bfc00b64:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:84
bfc00b68:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:85
bfc00b6c:	3c028003 	lui	v0,0x8003
bfc00b70:	34421ff3 	ori	v0,v0,0x1ff3
bfc00b74:	3c038003 	lui	v1,0x8003
bfc00b78:	34631ff3 	ori	v1,v1,0x1ff3
bfc00b7c:	3c04800d 	lui	a0,0x800d
bfc00b80:	34841ff0 	ori	a0,a0,0x1ff0
bfc00b84:	3c059fcc 	lui	a1,0x9fcc
bfc00b88:	34a54ca0 	ori	a1,a1,0x4ca0
bfc00b8c:	2487b663 	addiu	a3,a0,-18845
bfc00b90:	ac82b660 	sw	v0,-18848(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:86
bfc00b94:	3c14bfc0 	lui	s4,0xbfc0
bfc00b98:	26940ba4 	addiu	s4,s4,2980
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:87
bfc00b9c:	01000013 	mtlo	t0
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:88
bfc00ba0:	01100019 	multu	t0,s0
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:89
bfc00ba4:	a485b663 	sh	a1,-18845(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:90
bfc00ba8:	00004810 	mfhi	t1
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:91
bfc00bac:	11280039 	beq	t1,t0,bfc00c94 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:92
bfc00bb0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:93
bfc00bb4:	16570037 	bne	s2,s7,bfc00c94 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:94
bfc00bb8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:95
bfc00bbc:	8c82b660 	lw	v0,-18848(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:96
bfc00bc0:	14430034 	bne	v0,v1,bfc00c94 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:97
bfc00bc4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:98
bfc00bc8:	40164000 	mfc0	s6,c0_badvaddr
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:99
bfc00bcc:	14f60031 	bne	a3,s6,bfc00c94 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:100
bfc00bd0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:102
bfc00bd4:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:103
bfc00bd8:	3c0273b3 	lui	v0,0x73b3
bfc00bdc:	34425a2b 	ori	v0,v0,0x5a2b
bfc00be0:	3c0373b3 	lui	v1,0x73b3
bfc00be4:	34635a2b 	ori	v1,v1,0x5a2b
bfc00be8:	3c04800d 	lui	a0,0x800d
bfc00bec:	3484351b 	ori	a0,a0,0x351b
bfc00bf0:	3c05bd6f 	lui	a1,0xbd6f
bfc00bf4:	34a5420a 	ori	a1,a1,0x420a
bfc00bf8:	248764f2 	addiu	a3,a0,25842
bfc00bfc:	ac8264f1 	sw	v0,25841(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:104
bfc00c00:	3c14bfc0 	lui	s4,0xbfc0
bfc00c04:	26940c08 	addiu	s4,s4,3080
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:105
bfc00c08:	a48564f2 	sh	a1,25842(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:106
bfc00c0c:	01120019 	multu	t0,s2
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:107
bfc00c10:	16570020 	bne	s2,s7,bfc00c94 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:108
bfc00c14:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:109
bfc00c18:	8c8264f1 	lw	v0,25841(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:110
bfc00c1c:	1443001d 	bne	v0,v1,bfc00c94 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:111
bfc00c20:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:112
bfc00c24:	40164000 	mfc0	s6,c0_badvaddr
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:113
bfc00c28:	14f6001a 	bne	a3,s6,bfc00c94 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:114
bfc00c2c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:116
bfc00c30:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:117
bfc00c34:	3c02a521 	lui	v0,0xa521
bfc00c38:	34420b0a 	ori	v0,v0,0xb0a
bfc00c3c:	3c03a521 	lui	v1,0xa521
bfc00c40:	34630b0a 	ori	v1,v1,0xb0a
bfc00c44:	3c04800d 	lui	a0,0x800d
bfc00c48:	348463d7 	ori	a0,a0,0x63d7
bfc00c4c:	3c0500e9 	lui	a1,0xe9
bfc00c50:	34a55990 	ori	a1,a1,0x5990
bfc00c54:	24877fc6 	addiu	a3,a0,32710
bfc00c58:	ac827fc5 	sw	v0,32709(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:118
bfc00c5c:	3c14bfc0 	lui	s4,0xbfc0
bfc00c60:	26940c68 	addiu	s4,s4,3176
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:119
bfc00c64:	40927000 	mtc0	s2,c0_epc
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:120
bfc00c68:	a4857fc6 	sh	a1,32710(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:121
bfc00c6c:	40887000 	mtc0	t0,c0_epc
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:122
bfc00c70:	16570008 	bne	s2,s7,bfc00c94 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:123
bfc00c74:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:124
bfc00c78:	8c827fc5 	lw	v0,32709(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:125
bfc00c7c:	14430005 	bne	v0,v1,bfc00c94 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:126
bfc00c80:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:127
bfc00c84:	40164000 	mfc0	s6,c0_badvaddr
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:128
bfc00c88:	14f60002 	bne	a3,s6,bfc00c94 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:129
bfc00c8c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:131
bfc00c90:	26730001 	addiu	s3,s3,1

bfc00c94 <inst_error>:
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:134
bfc00c94:	00104e00 	sll	t1,s0,0x18
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:135
bfc00c98:	01334025 	or	t0,t1,s3
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:136
bfc00c9c:	ae280000 	sw	t0,0(s1)
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:137
bfc00ca0:	03e00008 	jr	ra
/home/yfy/func_test_v0.01/soft/func/inst/n74_sh_ades_ex.S:138
bfc00ca4:	00000000 	nop
	...

bfc00cb0 <n1_lui_test>:
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:7
bfc00cb0:	26100001 	addiu	s0,s0,1
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:8
bfc00cb4:	24120000 	li	s2,0
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:9
bfc00cb8:	3c0a0001 	lui	t2,0x1
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:11
bfc00cbc:	24090000 	li	t1,0
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:12
bfc00cc0:	3c040000 	lui	a0,0x0
bfc00cc4:	3c080000 	lui	t0,0x0
bfc00cc8:	00892021 	addu	a0,a0,t1
bfc00ccc:	012a4821 	addu	t1,t1,t2
bfc00cd0:	15040489 	bne	t0,a0,bfc01ef8 <inst_error>
bfc00cd4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:13
bfc00cd8:	3c040000 	lui	a0,0x0
bfc00cdc:	3c080001 	lui	t0,0x1
bfc00ce0:	00892021 	addu	a0,a0,t1
bfc00ce4:	012a4821 	addu	t1,t1,t2
bfc00ce8:	15040483 	bne	t0,a0,bfc01ef8 <inst_error>
bfc00cec:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:14
bfc00cf0:	3c040000 	lui	a0,0x0
bfc00cf4:	3c080002 	lui	t0,0x2
bfc00cf8:	00892021 	addu	a0,a0,t1
bfc00cfc:	012a4821 	addu	t1,t1,t2
bfc00d00:	1504047d 	bne	t0,a0,bfc01ef8 <inst_error>
bfc00d04:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:15
bfc00d08:	3c040000 	lui	a0,0x0
bfc00d0c:	3c080003 	lui	t0,0x3
bfc00d10:	00892021 	addu	a0,a0,t1
bfc00d14:	012a4821 	addu	t1,t1,t2
bfc00d18:	15040477 	bne	t0,a0,bfc01ef8 <inst_error>
bfc00d1c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:16
bfc00d20:	3c040000 	lui	a0,0x0
bfc00d24:	3c080004 	lui	t0,0x4
bfc00d28:	00892021 	addu	a0,a0,t1
bfc00d2c:	012a4821 	addu	t1,t1,t2
bfc00d30:	15040471 	bne	t0,a0,bfc01ef8 <inst_error>
bfc00d34:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:17
bfc00d38:	3c040000 	lui	a0,0x0
bfc00d3c:	3c080005 	lui	t0,0x5
bfc00d40:	00892021 	addu	a0,a0,t1
bfc00d44:	012a4821 	addu	t1,t1,t2
bfc00d48:	1504046b 	bne	t0,a0,bfc01ef8 <inst_error>
bfc00d4c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:18
bfc00d50:	3c040000 	lui	a0,0x0
bfc00d54:	3c080006 	lui	t0,0x6
bfc00d58:	00892021 	addu	a0,a0,t1
bfc00d5c:	012a4821 	addu	t1,t1,t2
bfc00d60:	15040465 	bne	t0,a0,bfc01ef8 <inst_error>
bfc00d64:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:19
bfc00d68:	3c040000 	lui	a0,0x0
bfc00d6c:	3c080007 	lui	t0,0x7
bfc00d70:	00892021 	addu	a0,a0,t1
bfc00d74:	012a4821 	addu	t1,t1,t2
bfc00d78:	1504045f 	bne	t0,a0,bfc01ef8 <inst_error>
bfc00d7c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:20
bfc00d80:	3c040000 	lui	a0,0x0
bfc00d84:	3c080008 	lui	t0,0x8
bfc00d88:	00892021 	addu	a0,a0,t1
bfc00d8c:	012a4821 	addu	t1,t1,t2
bfc00d90:	15040459 	bne	t0,a0,bfc01ef8 <inst_error>
bfc00d94:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:21
bfc00d98:	3c040000 	lui	a0,0x0
bfc00d9c:	3c080009 	lui	t0,0x9
bfc00da0:	00892021 	addu	a0,a0,t1
bfc00da4:	012a4821 	addu	t1,t1,t2
bfc00da8:	15040453 	bne	t0,a0,bfc01ef8 <inst_error>
bfc00dac:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:22
bfc00db0:	3c040000 	lui	a0,0x0
bfc00db4:	3c08000a 	lui	t0,0xa
bfc00db8:	00892021 	addu	a0,a0,t1
bfc00dbc:	012a4821 	addu	t1,t1,t2
bfc00dc0:	1504044d 	bne	t0,a0,bfc01ef8 <inst_error>
bfc00dc4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:23
bfc00dc8:	3c040000 	lui	a0,0x0
bfc00dcc:	3c08000b 	lui	t0,0xb
bfc00dd0:	00892021 	addu	a0,a0,t1
bfc00dd4:	012a4821 	addu	t1,t1,t2
bfc00dd8:	15040447 	bne	t0,a0,bfc01ef8 <inst_error>
bfc00ddc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:24
bfc00de0:	3c040000 	lui	a0,0x0
bfc00de4:	3c08000c 	lui	t0,0xc
bfc00de8:	00892021 	addu	a0,a0,t1
bfc00dec:	012a4821 	addu	t1,t1,t2
bfc00df0:	15040441 	bne	t0,a0,bfc01ef8 <inst_error>
bfc00df4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:25
bfc00df8:	3c040000 	lui	a0,0x0
bfc00dfc:	3c08000d 	lui	t0,0xd
bfc00e00:	00892021 	addu	a0,a0,t1
bfc00e04:	012a4821 	addu	t1,t1,t2
bfc00e08:	1504043b 	bne	t0,a0,bfc01ef8 <inst_error>
bfc00e0c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:26
bfc00e10:	3c040000 	lui	a0,0x0
bfc00e14:	3c08000e 	lui	t0,0xe
bfc00e18:	00892021 	addu	a0,a0,t1
bfc00e1c:	012a4821 	addu	t1,t1,t2
bfc00e20:	15040435 	bne	t0,a0,bfc01ef8 <inst_error>
bfc00e24:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:27
bfc00e28:	3c040000 	lui	a0,0x0
bfc00e2c:	3c08000f 	lui	t0,0xf
bfc00e30:	00892021 	addu	a0,a0,t1
bfc00e34:	012a4821 	addu	t1,t1,t2
bfc00e38:	1504042f 	bne	t0,a0,bfc01ef8 <inst_error>
bfc00e3c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:28
bfc00e40:	24090000 	li	t1,0
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:29
bfc00e44:	3c041010 	lui	a0,0x1010
bfc00e48:	3c081010 	lui	t0,0x1010
bfc00e4c:	00892021 	addu	a0,a0,t1
bfc00e50:	012a4821 	addu	t1,t1,t2
bfc00e54:	15040428 	bne	t0,a0,bfc01ef8 <inst_error>
bfc00e58:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:30
bfc00e5c:	3c041010 	lui	a0,0x1010
bfc00e60:	3c081011 	lui	t0,0x1011
bfc00e64:	00892021 	addu	a0,a0,t1
bfc00e68:	012a4821 	addu	t1,t1,t2
bfc00e6c:	15040422 	bne	t0,a0,bfc01ef8 <inst_error>
bfc00e70:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:31
bfc00e74:	3c041010 	lui	a0,0x1010
bfc00e78:	3c081012 	lui	t0,0x1012
bfc00e7c:	00892021 	addu	a0,a0,t1
bfc00e80:	012a4821 	addu	t1,t1,t2
bfc00e84:	1504041c 	bne	t0,a0,bfc01ef8 <inst_error>
bfc00e88:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:32
bfc00e8c:	3c041010 	lui	a0,0x1010
bfc00e90:	3c081013 	lui	t0,0x1013
bfc00e94:	00892021 	addu	a0,a0,t1
bfc00e98:	012a4821 	addu	t1,t1,t2
bfc00e9c:	15040416 	bne	t0,a0,bfc01ef8 <inst_error>
bfc00ea0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:33
bfc00ea4:	3c041010 	lui	a0,0x1010
bfc00ea8:	3c081014 	lui	t0,0x1014
bfc00eac:	00892021 	addu	a0,a0,t1
bfc00eb0:	012a4821 	addu	t1,t1,t2
bfc00eb4:	15040410 	bne	t0,a0,bfc01ef8 <inst_error>
bfc00eb8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:34
bfc00ebc:	3c041010 	lui	a0,0x1010
bfc00ec0:	3c081015 	lui	t0,0x1015
bfc00ec4:	00892021 	addu	a0,a0,t1
bfc00ec8:	012a4821 	addu	t1,t1,t2
bfc00ecc:	1504040a 	bne	t0,a0,bfc01ef8 <inst_error>
bfc00ed0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:35
bfc00ed4:	3c041010 	lui	a0,0x1010
bfc00ed8:	3c081016 	lui	t0,0x1016
bfc00edc:	00892021 	addu	a0,a0,t1
bfc00ee0:	012a4821 	addu	t1,t1,t2
bfc00ee4:	15040404 	bne	t0,a0,bfc01ef8 <inst_error>
bfc00ee8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:36
bfc00eec:	3c041010 	lui	a0,0x1010
bfc00ef0:	3c081017 	lui	t0,0x1017
bfc00ef4:	00892021 	addu	a0,a0,t1
bfc00ef8:	012a4821 	addu	t1,t1,t2
bfc00efc:	150403fe 	bne	t0,a0,bfc01ef8 <inst_error>
bfc00f00:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:37
bfc00f04:	3c041010 	lui	a0,0x1010
bfc00f08:	3c081018 	lui	t0,0x1018
bfc00f0c:	00892021 	addu	a0,a0,t1
bfc00f10:	012a4821 	addu	t1,t1,t2
bfc00f14:	150403f8 	bne	t0,a0,bfc01ef8 <inst_error>
bfc00f18:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:38
bfc00f1c:	3c041010 	lui	a0,0x1010
bfc00f20:	3c081019 	lui	t0,0x1019
bfc00f24:	00892021 	addu	a0,a0,t1
bfc00f28:	012a4821 	addu	t1,t1,t2
bfc00f2c:	150403f2 	bne	t0,a0,bfc01ef8 <inst_error>
bfc00f30:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:39
bfc00f34:	3c041010 	lui	a0,0x1010
bfc00f38:	3c08101a 	lui	t0,0x101a
bfc00f3c:	00892021 	addu	a0,a0,t1
bfc00f40:	012a4821 	addu	t1,t1,t2
bfc00f44:	150403ec 	bne	t0,a0,bfc01ef8 <inst_error>
bfc00f48:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:40
bfc00f4c:	3c041010 	lui	a0,0x1010
bfc00f50:	3c08101b 	lui	t0,0x101b
bfc00f54:	00892021 	addu	a0,a0,t1
bfc00f58:	012a4821 	addu	t1,t1,t2
bfc00f5c:	150403e6 	bne	t0,a0,bfc01ef8 <inst_error>
bfc00f60:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:41
bfc00f64:	3c041010 	lui	a0,0x1010
bfc00f68:	3c08101c 	lui	t0,0x101c
bfc00f6c:	00892021 	addu	a0,a0,t1
bfc00f70:	012a4821 	addu	t1,t1,t2
bfc00f74:	150403e0 	bne	t0,a0,bfc01ef8 <inst_error>
bfc00f78:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:42
bfc00f7c:	3c041010 	lui	a0,0x1010
bfc00f80:	3c08101d 	lui	t0,0x101d
bfc00f84:	00892021 	addu	a0,a0,t1
bfc00f88:	012a4821 	addu	t1,t1,t2
bfc00f8c:	150403da 	bne	t0,a0,bfc01ef8 <inst_error>
bfc00f90:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:43
bfc00f94:	3c041010 	lui	a0,0x1010
bfc00f98:	3c08101e 	lui	t0,0x101e
bfc00f9c:	00892021 	addu	a0,a0,t1
bfc00fa0:	012a4821 	addu	t1,t1,t2
bfc00fa4:	150403d4 	bne	t0,a0,bfc01ef8 <inst_error>
bfc00fa8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:44
bfc00fac:	3c041010 	lui	a0,0x1010
bfc00fb0:	3c08101f 	lui	t0,0x101f
bfc00fb4:	00892021 	addu	a0,a0,t1
bfc00fb8:	012a4821 	addu	t1,t1,t2
bfc00fbc:	150403ce 	bne	t0,a0,bfc01ef8 <inst_error>
bfc00fc0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:45
bfc00fc4:	24090000 	li	t1,0
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:46
bfc00fc8:	3c042020 	lui	a0,0x2020
bfc00fcc:	3c082020 	lui	t0,0x2020
bfc00fd0:	00892021 	addu	a0,a0,t1
bfc00fd4:	012a4821 	addu	t1,t1,t2
bfc00fd8:	150403c7 	bne	t0,a0,bfc01ef8 <inst_error>
bfc00fdc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:47
bfc00fe0:	3c042020 	lui	a0,0x2020
bfc00fe4:	3c082021 	lui	t0,0x2021
bfc00fe8:	00892021 	addu	a0,a0,t1
bfc00fec:	012a4821 	addu	t1,t1,t2
bfc00ff0:	150403c1 	bne	t0,a0,bfc01ef8 <inst_error>
bfc00ff4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:48
bfc00ff8:	3c042020 	lui	a0,0x2020
bfc00ffc:	3c082022 	lui	t0,0x2022
bfc01000:	00892021 	addu	a0,a0,t1
bfc01004:	012a4821 	addu	t1,t1,t2
bfc01008:	150403bb 	bne	t0,a0,bfc01ef8 <inst_error>
bfc0100c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:49
bfc01010:	3c042020 	lui	a0,0x2020
bfc01014:	3c082023 	lui	t0,0x2023
bfc01018:	00892021 	addu	a0,a0,t1
bfc0101c:	012a4821 	addu	t1,t1,t2
bfc01020:	150403b5 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01024:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:50
bfc01028:	3c042020 	lui	a0,0x2020
bfc0102c:	3c082024 	lui	t0,0x2024
bfc01030:	00892021 	addu	a0,a0,t1
bfc01034:	012a4821 	addu	t1,t1,t2
bfc01038:	150403af 	bne	t0,a0,bfc01ef8 <inst_error>
bfc0103c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:51
bfc01040:	3c042020 	lui	a0,0x2020
bfc01044:	3c082025 	lui	t0,0x2025
bfc01048:	00892021 	addu	a0,a0,t1
bfc0104c:	012a4821 	addu	t1,t1,t2
bfc01050:	150403a9 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01054:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:52
bfc01058:	3c042020 	lui	a0,0x2020
bfc0105c:	3c082026 	lui	t0,0x2026
bfc01060:	00892021 	addu	a0,a0,t1
bfc01064:	012a4821 	addu	t1,t1,t2
bfc01068:	150403a3 	bne	t0,a0,bfc01ef8 <inst_error>
bfc0106c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:53
bfc01070:	3c042020 	lui	a0,0x2020
bfc01074:	3c082027 	lui	t0,0x2027
bfc01078:	00892021 	addu	a0,a0,t1
bfc0107c:	012a4821 	addu	t1,t1,t2
bfc01080:	1504039d 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01084:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:54
bfc01088:	3c042020 	lui	a0,0x2020
bfc0108c:	3c082028 	lui	t0,0x2028
bfc01090:	00892021 	addu	a0,a0,t1
bfc01094:	012a4821 	addu	t1,t1,t2
bfc01098:	15040397 	bne	t0,a0,bfc01ef8 <inst_error>
bfc0109c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:55
bfc010a0:	3c042020 	lui	a0,0x2020
bfc010a4:	3c082029 	lui	t0,0x2029
bfc010a8:	00892021 	addu	a0,a0,t1
bfc010ac:	012a4821 	addu	t1,t1,t2
bfc010b0:	15040391 	bne	t0,a0,bfc01ef8 <inst_error>
bfc010b4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:56
bfc010b8:	3c042020 	lui	a0,0x2020
bfc010bc:	3c08202a 	lui	t0,0x202a
bfc010c0:	00892021 	addu	a0,a0,t1
bfc010c4:	012a4821 	addu	t1,t1,t2
bfc010c8:	1504038b 	bne	t0,a0,bfc01ef8 <inst_error>
bfc010cc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:57
bfc010d0:	3c042020 	lui	a0,0x2020
bfc010d4:	3c08202b 	lui	t0,0x202b
bfc010d8:	00892021 	addu	a0,a0,t1
bfc010dc:	012a4821 	addu	t1,t1,t2
bfc010e0:	15040385 	bne	t0,a0,bfc01ef8 <inst_error>
bfc010e4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:58
bfc010e8:	3c042020 	lui	a0,0x2020
bfc010ec:	3c08202c 	lui	t0,0x202c
bfc010f0:	00892021 	addu	a0,a0,t1
bfc010f4:	012a4821 	addu	t1,t1,t2
bfc010f8:	1504037f 	bne	t0,a0,bfc01ef8 <inst_error>
bfc010fc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:59
bfc01100:	3c042020 	lui	a0,0x2020
bfc01104:	3c08202d 	lui	t0,0x202d
bfc01108:	00892021 	addu	a0,a0,t1
bfc0110c:	012a4821 	addu	t1,t1,t2
bfc01110:	15040379 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01114:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:60
bfc01118:	3c042020 	lui	a0,0x2020
bfc0111c:	3c08202e 	lui	t0,0x202e
bfc01120:	00892021 	addu	a0,a0,t1
bfc01124:	012a4821 	addu	t1,t1,t2
bfc01128:	15040373 	bne	t0,a0,bfc01ef8 <inst_error>
bfc0112c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:61
bfc01130:	3c042020 	lui	a0,0x2020
bfc01134:	3c08202f 	lui	t0,0x202f
bfc01138:	00892021 	addu	a0,a0,t1
bfc0113c:	012a4821 	addu	t1,t1,t2
bfc01140:	1504036d 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01144:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:62
bfc01148:	24090000 	li	t1,0
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:63
bfc0114c:	3c043030 	lui	a0,0x3030
bfc01150:	3c083030 	lui	t0,0x3030
bfc01154:	00892021 	addu	a0,a0,t1
bfc01158:	012a4821 	addu	t1,t1,t2
bfc0115c:	15040366 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01160:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:64
bfc01164:	3c043030 	lui	a0,0x3030
bfc01168:	3c083031 	lui	t0,0x3031
bfc0116c:	00892021 	addu	a0,a0,t1
bfc01170:	012a4821 	addu	t1,t1,t2
bfc01174:	15040360 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01178:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:65
bfc0117c:	3c043030 	lui	a0,0x3030
bfc01180:	3c083032 	lui	t0,0x3032
bfc01184:	00892021 	addu	a0,a0,t1
bfc01188:	012a4821 	addu	t1,t1,t2
bfc0118c:	1504035a 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01190:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:66
bfc01194:	3c043030 	lui	a0,0x3030
bfc01198:	3c083033 	lui	t0,0x3033
bfc0119c:	00892021 	addu	a0,a0,t1
bfc011a0:	012a4821 	addu	t1,t1,t2
bfc011a4:	15040354 	bne	t0,a0,bfc01ef8 <inst_error>
bfc011a8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:67
bfc011ac:	3c043030 	lui	a0,0x3030
bfc011b0:	3c083034 	lui	t0,0x3034
bfc011b4:	00892021 	addu	a0,a0,t1
bfc011b8:	012a4821 	addu	t1,t1,t2
bfc011bc:	1504034e 	bne	t0,a0,bfc01ef8 <inst_error>
bfc011c0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:68
bfc011c4:	3c043030 	lui	a0,0x3030
bfc011c8:	3c083035 	lui	t0,0x3035
bfc011cc:	00892021 	addu	a0,a0,t1
bfc011d0:	012a4821 	addu	t1,t1,t2
bfc011d4:	15040348 	bne	t0,a0,bfc01ef8 <inst_error>
bfc011d8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:69
bfc011dc:	3c043030 	lui	a0,0x3030
bfc011e0:	3c083036 	lui	t0,0x3036
bfc011e4:	00892021 	addu	a0,a0,t1
bfc011e8:	012a4821 	addu	t1,t1,t2
bfc011ec:	15040342 	bne	t0,a0,bfc01ef8 <inst_error>
bfc011f0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:70
bfc011f4:	3c043030 	lui	a0,0x3030
bfc011f8:	3c083037 	lui	t0,0x3037
bfc011fc:	00892021 	addu	a0,a0,t1
bfc01200:	012a4821 	addu	t1,t1,t2
bfc01204:	1504033c 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01208:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:71
bfc0120c:	3c043030 	lui	a0,0x3030
bfc01210:	3c083038 	lui	t0,0x3038
bfc01214:	00892021 	addu	a0,a0,t1
bfc01218:	012a4821 	addu	t1,t1,t2
bfc0121c:	15040336 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01220:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:72
bfc01224:	3c043030 	lui	a0,0x3030
bfc01228:	3c083039 	lui	t0,0x3039
bfc0122c:	00892021 	addu	a0,a0,t1
bfc01230:	012a4821 	addu	t1,t1,t2
bfc01234:	15040330 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01238:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:73
bfc0123c:	3c043030 	lui	a0,0x3030
bfc01240:	3c08303a 	lui	t0,0x303a
bfc01244:	00892021 	addu	a0,a0,t1
bfc01248:	012a4821 	addu	t1,t1,t2
bfc0124c:	1504032a 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01250:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:74
bfc01254:	3c043030 	lui	a0,0x3030
bfc01258:	3c08303b 	lui	t0,0x303b
bfc0125c:	00892021 	addu	a0,a0,t1
bfc01260:	012a4821 	addu	t1,t1,t2
bfc01264:	15040324 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01268:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:75
bfc0126c:	3c043030 	lui	a0,0x3030
bfc01270:	3c08303c 	lui	t0,0x303c
bfc01274:	00892021 	addu	a0,a0,t1
bfc01278:	012a4821 	addu	t1,t1,t2
bfc0127c:	1504031e 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01280:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:76
bfc01284:	3c043030 	lui	a0,0x3030
bfc01288:	3c08303d 	lui	t0,0x303d
bfc0128c:	00892021 	addu	a0,a0,t1
bfc01290:	012a4821 	addu	t1,t1,t2
bfc01294:	15040318 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01298:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:77
bfc0129c:	3c043030 	lui	a0,0x3030
bfc012a0:	3c08303e 	lui	t0,0x303e
bfc012a4:	00892021 	addu	a0,a0,t1
bfc012a8:	012a4821 	addu	t1,t1,t2
bfc012ac:	15040312 	bne	t0,a0,bfc01ef8 <inst_error>
bfc012b0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:78
bfc012b4:	3c043030 	lui	a0,0x3030
bfc012b8:	3c08303f 	lui	t0,0x303f
bfc012bc:	00892021 	addu	a0,a0,t1
bfc012c0:	012a4821 	addu	t1,t1,t2
bfc012c4:	1504030c 	bne	t0,a0,bfc01ef8 <inst_error>
bfc012c8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:79
bfc012cc:	24090000 	li	t1,0
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:80
bfc012d0:	3c044040 	lui	a0,0x4040
bfc012d4:	3c084040 	lui	t0,0x4040
bfc012d8:	00892021 	addu	a0,a0,t1
bfc012dc:	012a4821 	addu	t1,t1,t2
bfc012e0:	15040305 	bne	t0,a0,bfc01ef8 <inst_error>
bfc012e4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:81
bfc012e8:	3c044040 	lui	a0,0x4040
bfc012ec:	3c084041 	lui	t0,0x4041
bfc012f0:	00892021 	addu	a0,a0,t1
bfc012f4:	012a4821 	addu	t1,t1,t2
bfc012f8:	150402ff 	bne	t0,a0,bfc01ef8 <inst_error>
bfc012fc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:82
bfc01300:	3c044040 	lui	a0,0x4040
bfc01304:	3c084042 	lui	t0,0x4042
bfc01308:	00892021 	addu	a0,a0,t1
bfc0130c:	012a4821 	addu	t1,t1,t2
bfc01310:	150402f9 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01314:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:83
bfc01318:	3c044040 	lui	a0,0x4040
bfc0131c:	3c084043 	lui	t0,0x4043
bfc01320:	00892021 	addu	a0,a0,t1
bfc01324:	012a4821 	addu	t1,t1,t2
bfc01328:	150402f3 	bne	t0,a0,bfc01ef8 <inst_error>
bfc0132c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:84
bfc01330:	3c044040 	lui	a0,0x4040
bfc01334:	3c084044 	lui	t0,0x4044
bfc01338:	00892021 	addu	a0,a0,t1
bfc0133c:	012a4821 	addu	t1,t1,t2
bfc01340:	150402ed 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01344:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:85
bfc01348:	3c044040 	lui	a0,0x4040
bfc0134c:	3c084045 	lui	t0,0x4045
bfc01350:	00892021 	addu	a0,a0,t1
bfc01354:	012a4821 	addu	t1,t1,t2
bfc01358:	150402e7 	bne	t0,a0,bfc01ef8 <inst_error>
bfc0135c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:86
bfc01360:	3c044040 	lui	a0,0x4040
bfc01364:	3c084046 	lui	t0,0x4046
bfc01368:	00892021 	addu	a0,a0,t1
bfc0136c:	012a4821 	addu	t1,t1,t2
bfc01370:	150402e1 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01374:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:87
bfc01378:	3c044040 	lui	a0,0x4040
bfc0137c:	3c084047 	lui	t0,0x4047
bfc01380:	00892021 	addu	a0,a0,t1
bfc01384:	012a4821 	addu	t1,t1,t2
bfc01388:	150402db 	bne	t0,a0,bfc01ef8 <inst_error>
bfc0138c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:88
bfc01390:	3c044040 	lui	a0,0x4040
bfc01394:	3c084048 	lui	t0,0x4048
bfc01398:	00892021 	addu	a0,a0,t1
bfc0139c:	012a4821 	addu	t1,t1,t2
bfc013a0:	150402d5 	bne	t0,a0,bfc01ef8 <inst_error>
bfc013a4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:89
bfc013a8:	3c044040 	lui	a0,0x4040
bfc013ac:	3c084049 	lui	t0,0x4049
bfc013b0:	00892021 	addu	a0,a0,t1
bfc013b4:	012a4821 	addu	t1,t1,t2
bfc013b8:	150402cf 	bne	t0,a0,bfc01ef8 <inst_error>
bfc013bc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:90
bfc013c0:	3c044040 	lui	a0,0x4040
bfc013c4:	3c08404a 	lui	t0,0x404a
bfc013c8:	00892021 	addu	a0,a0,t1
bfc013cc:	012a4821 	addu	t1,t1,t2
bfc013d0:	150402c9 	bne	t0,a0,bfc01ef8 <inst_error>
bfc013d4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:91
bfc013d8:	3c044040 	lui	a0,0x4040
bfc013dc:	3c08404b 	lui	t0,0x404b
bfc013e0:	00892021 	addu	a0,a0,t1
bfc013e4:	012a4821 	addu	t1,t1,t2
bfc013e8:	150402c3 	bne	t0,a0,bfc01ef8 <inst_error>
bfc013ec:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:92
bfc013f0:	3c044040 	lui	a0,0x4040
bfc013f4:	3c08404c 	lui	t0,0x404c
bfc013f8:	00892021 	addu	a0,a0,t1
bfc013fc:	012a4821 	addu	t1,t1,t2
bfc01400:	150402bd 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01404:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:93
bfc01408:	3c044040 	lui	a0,0x4040
bfc0140c:	3c08404d 	lui	t0,0x404d
bfc01410:	00892021 	addu	a0,a0,t1
bfc01414:	012a4821 	addu	t1,t1,t2
bfc01418:	150402b7 	bne	t0,a0,bfc01ef8 <inst_error>
bfc0141c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:94
bfc01420:	3c044040 	lui	a0,0x4040
bfc01424:	3c08404e 	lui	t0,0x404e
bfc01428:	00892021 	addu	a0,a0,t1
bfc0142c:	012a4821 	addu	t1,t1,t2
bfc01430:	150402b1 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01434:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:95
bfc01438:	3c044040 	lui	a0,0x4040
bfc0143c:	3c08404f 	lui	t0,0x404f
bfc01440:	00892021 	addu	a0,a0,t1
bfc01444:	012a4821 	addu	t1,t1,t2
bfc01448:	150402ab 	bne	t0,a0,bfc01ef8 <inst_error>
bfc0144c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:96
bfc01450:	24090000 	li	t1,0
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:97
bfc01454:	3c045040 	lui	a0,0x5040
bfc01458:	3c085040 	lui	t0,0x5040
bfc0145c:	00892021 	addu	a0,a0,t1
bfc01460:	012a4821 	addu	t1,t1,t2
bfc01464:	150402a4 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01468:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:98
bfc0146c:	3c045040 	lui	a0,0x5040
bfc01470:	3c085041 	lui	t0,0x5041
bfc01474:	00892021 	addu	a0,a0,t1
bfc01478:	012a4821 	addu	t1,t1,t2
bfc0147c:	1504029e 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01480:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:99
bfc01484:	3c045040 	lui	a0,0x5040
bfc01488:	3c085042 	lui	t0,0x5042
bfc0148c:	00892021 	addu	a0,a0,t1
bfc01490:	012a4821 	addu	t1,t1,t2
bfc01494:	15040298 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01498:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:100
bfc0149c:	3c045040 	lui	a0,0x5040
bfc014a0:	3c085043 	lui	t0,0x5043
bfc014a4:	00892021 	addu	a0,a0,t1
bfc014a8:	012a4821 	addu	t1,t1,t2
bfc014ac:	15040292 	bne	t0,a0,bfc01ef8 <inst_error>
bfc014b0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:101
bfc014b4:	3c045040 	lui	a0,0x5040
bfc014b8:	3c085044 	lui	t0,0x5044
bfc014bc:	00892021 	addu	a0,a0,t1
bfc014c0:	012a4821 	addu	t1,t1,t2
bfc014c4:	1504028c 	bne	t0,a0,bfc01ef8 <inst_error>
bfc014c8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:102
bfc014cc:	3c045040 	lui	a0,0x5040
bfc014d0:	3c085045 	lui	t0,0x5045
bfc014d4:	00892021 	addu	a0,a0,t1
bfc014d8:	012a4821 	addu	t1,t1,t2
bfc014dc:	15040286 	bne	t0,a0,bfc01ef8 <inst_error>
bfc014e0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:103
bfc014e4:	3c045040 	lui	a0,0x5040
bfc014e8:	3c085046 	lui	t0,0x5046
bfc014ec:	00892021 	addu	a0,a0,t1
bfc014f0:	012a4821 	addu	t1,t1,t2
bfc014f4:	15040280 	bne	t0,a0,bfc01ef8 <inst_error>
bfc014f8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:104
bfc014fc:	3c045040 	lui	a0,0x5040
bfc01500:	3c085047 	lui	t0,0x5047
bfc01504:	00892021 	addu	a0,a0,t1
bfc01508:	012a4821 	addu	t1,t1,t2
bfc0150c:	1504027a 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01510:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:105
bfc01514:	3c045040 	lui	a0,0x5040
bfc01518:	3c085048 	lui	t0,0x5048
bfc0151c:	00892021 	addu	a0,a0,t1
bfc01520:	012a4821 	addu	t1,t1,t2
bfc01524:	15040274 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01528:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:106
bfc0152c:	3c045040 	lui	a0,0x5040
bfc01530:	3c085049 	lui	t0,0x5049
bfc01534:	00892021 	addu	a0,a0,t1
bfc01538:	012a4821 	addu	t1,t1,t2
bfc0153c:	1504026e 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01540:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:107
bfc01544:	3c045040 	lui	a0,0x5040
bfc01548:	3c08504a 	lui	t0,0x504a
bfc0154c:	00892021 	addu	a0,a0,t1
bfc01550:	012a4821 	addu	t1,t1,t2
bfc01554:	15040268 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01558:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:108
bfc0155c:	3c045040 	lui	a0,0x5040
bfc01560:	3c08504b 	lui	t0,0x504b
bfc01564:	00892021 	addu	a0,a0,t1
bfc01568:	012a4821 	addu	t1,t1,t2
bfc0156c:	15040262 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01570:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:109
bfc01574:	3c045040 	lui	a0,0x5040
bfc01578:	3c08504c 	lui	t0,0x504c
bfc0157c:	00892021 	addu	a0,a0,t1
bfc01580:	012a4821 	addu	t1,t1,t2
bfc01584:	1504025c 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01588:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:110
bfc0158c:	3c045040 	lui	a0,0x5040
bfc01590:	3c08504d 	lui	t0,0x504d
bfc01594:	00892021 	addu	a0,a0,t1
bfc01598:	012a4821 	addu	t1,t1,t2
bfc0159c:	15040256 	bne	t0,a0,bfc01ef8 <inst_error>
bfc015a0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:111
bfc015a4:	3c045040 	lui	a0,0x5040
bfc015a8:	3c08504e 	lui	t0,0x504e
bfc015ac:	00892021 	addu	a0,a0,t1
bfc015b0:	012a4821 	addu	t1,t1,t2
bfc015b4:	15040250 	bne	t0,a0,bfc01ef8 <inst_error>
bfc015b8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:112
bfc015bc:	3c045040 	lui	a0,0x5040
bfc015c0:	3c08504f 	lui	t0,0x504f
bfc015c4:	00892021 	addu	a0,a0,t1
bfc015c8:	012a4821 	addu	t1,t1,t2
bfc015cc:	1504024a 	bne	t0,a0,bfc01ef8 <inst_error>
bfc015d0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:113
bfc015d4:	24090000 	li	t1,0
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:114
bfc015d8:	3c046050 	lui	a0,0x6050
bfc015dc:	3c086050 	lui	t0,0x6050
bfc015e0:	00892021 	addu	a0,a0,t1
bfc015e4:	012a4821 	addu	t1,t1,t2
bfc015e8:	15040243 	bne	t0,a0,bfc01ef8 <inst_error>
bfc015ec:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:115
bfc015f0:	3c046050 	lui	a0,0x6050
bfc015f4:	3c086051 	lui	t0,0x6051
bfc015f8:	00892021 	addu	a0,a0,t1
bfc015fc:	012a4821 	addu	t1,t1,t2
bfc01600:	1504023d 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01604:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:116
bfc01608:	3c046050 	lui	a0,0x6050
bfc0160c:	3c086052 	lui	t0,0x6052
bfc01610:	00892021 	addu	a0,a0,t1
bfc01614:	012a4821 	addu	t1,t1,t2
bfc01618:	15040237 	bne	t0,a0,bfc01ef8 <inst_error>
bfc0161c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:117
bfc01620:	3c046050 	lui	a0,0x6050
bfc01624:	3c086053 	lui	t0,0x6053
bfc01628:	00892021 	addu	a0,a0,t1
bfc0162c:	012a4821 	addu	t1,t1,t2
bfc01630:	15040231 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01634:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:118
bfc01638:	3c046050 	lui	a0,0x6050
bfc0163c:	3c086054 	lui	t0,0x6054
bfc01640:	00892021 	addu	a0,a0,t1
bfc01644:	012a4821 	addu	t1,t1,t2
bfc01648:	1504022b 	bne	t0,a0,bfc01ef8 <inst_error>
bfc0164c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:119
bfc01650:	3c046050 	lui	a0,0x6050
bfc01654:	3c086055 	lui	t0,0x6055
bfc01658:	00892021 	addu	a0,a0,t1
bfc0165c:	012a4821 	addu	t1,t1,t2
bfc01660:	15040225 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01664:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:120
bfc01668:	3c046050 	lui	a0,0x6050
bfc0166c:	3c086056 	lui	t0,0x6056
bfc01670:	00892021 	addu	a0,a0,t1
bfc01674:	012a4821 	addu	t1,t1,t2
bfc01678:	1504021f 	bne	t0,a0,bfc01ef8 <inst_error>
bfc0167c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:121
bfc01680:	3c046050 	lui	a0,0x6050
bfc01684:	3c086057 	lui	t0,0x6057
bfc01688:	00892021 	addu	a0,a0,t1
bfc0168c:	012a4821 	addu	t1,t1,t2
bfc01690:	15040219 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01694:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:122
bfc01698:	3c046050 	lui	a0,0x6050
bfc0169c:	3c086058 	lui	t0,0x6058
bfc016a0:	00892021 	addu	a0,a0,t1
bfc016a4:	012a4821 	addu	t1,t1,t2
bfc016a8:	15040213 	bne	t0,a0,bfc01ef8 <inst_error>
bfc016ac:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:123
bfc016b0:	3c046050 	lui	a0,0x6050
bfc016b4:	3c086059 	lui	t0,0x6059
bfc016b8:	00892021 	addu	a0,a0,t1
bfc016bc:	012a4821 	addu	t1,t1,t2
bfc016c0:	1504020d 	bne	t0,a0,bfc01ef8 <inst_error>
bfc016c4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:124
bfc016c8:	3c046050 	lui	a0,0x6050
bfc016cc:	3c08605a 	lui	t0,0x605a
bfc016d0:	00892021 	addu	a0,a0,t1
bfc016d4:	012a4821 	addu	t1,t1,t2
bfc016d8:	15040207 	bne	t0,a0,bfc01ef8 <inst_error>
bfc016dc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:125
bfc016e0:	3c046050 	lui	a0,0x6050
bfc016e4:	3c08605b 	lui	t0,0x605b
bfc016e8:	00892021 	addu	a0,a0,t1
bfc016ec:	012a4821 	addu	t1,t1,t2
bfc016f0:	15040201 	bne	t0,a0,bfc01ef8 <inst_error>
bfc016f4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:126
bfc016f8:	3c046050 	lui	a0,0x6050
bfc016fc:	3c08605c 	lui	t0,0x605c
bfc01700:	00892021 	addu	a0,a0,t1
bfc01704:	012a4821 	addu	t1,t1,t2
bfc01708:	150401fb 	bne	t0,a0,bfc01ef8 <inst_error>
bfc0170c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:127
bfc01710:	3c046050 	lui	a0,0x6050
bfc01714:	3c08605d 	lui	t0,0x605d
bfc01718:	00892021 	addu	a0,a0,t1
bfc0171c:	012a4821 	addu	t1,t1,t2
bfc01720:	150401f5 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01724:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:128
bfc01728:	3c046050 	lui	a0,0x6050
bfc0172c:	3c08605e 	lui	t0,0x605e
bfc01730:	00892021 	addu	a0,a0,t1
bfc01734:	012a4821 	addu	t1,t1,t2
bfc01738:	150401ef 	bne	t0,a0,bfc01ef8 <inst_error>
bfc0173c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:129
bfc01740:	3c046050 	lui	a0,0x6050
bfc01744:	3c08605f 	lui	t0,0x605f
bfc01748:	00892021 	addu	a0,a0,t1
bfc0174c:	012a4821 	addu	t1,t1,t2
bfc01750:	150401e9 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01754:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:130
bfc01758:	24090000 	li	t1,0
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:131
bfc0175c:	3c048060 	lui	a0,0x8060
bfc01760:	3c088060 	lui	t0,0x8060
bfc01764:	00892021 	addu	a0,a0,t1
bfc01768:	012a4821 	addu	t1,t1,t2
bfc0176c:	150401e2 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01770:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:132
bfc01774:	3c048060 	lui	a0,0x8060
bfc01778:	3c088061 	lui	t0,0x8061
bfc0177c:	00892021 	addu	a0,a0,t1
bfc01780:	012a4821 	addu	t1,t1,t2
bfc01784:	150401dc 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01788:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:133
bfc0178c:	3c048060 	lui	a0,0x8060
bfc01790:	3c088062 	lui	t0,0x8062
bfc01794:	00892021 	addu	a0,a0,t1
bfc01798:	012a4821 	addu	t1,t1,t2
bfc0179c:	150401d6 	bne	t0,a0,bfc01ef8 <inst_error>
bfc017a0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:134
bfc017a4:	3c048060 	lui	a0,0x8060
bfc017a8:	3c088063 	lui	t0,0x8063
bfc017ac:	00892021 	addu	a0,a0,t1
bfc017b0:	012a4821 	addu	t1,t1,t2
bfc017b4:	150401d0 	bne	t0,a0,bfc01ef8 <inst_error>
bfc017b8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:135
bfc017bc:	3c048060 	lui	a0,0x8060
bfc017c0:	3c088064 	lui	t0,0x8064
bfc017c4:	00892021 	addu	a0,a0,t1
bfc017c8:	012a4821 	addu	t1,t1,t2
bfc017cc:	150401ca 	bne	t0,a0,bfc01ef8 <inst_error>
bfc017d0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:136
bfc017d4:	3c048060 	lui	a0,0x8060
bfc017d8:	3c088065 	lui	t0,0x8065
bfc017dc:	00892021 	addu	a0,a0,t1
bfc017e0:	012a4821 	addu	t1,t1,t2
bfc017e4:	150401c4 	bne	t0,a0,bfc01ef8 <inst_error>
bfc017e8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:137
bfc017ec:	3c048060 	lui	a0,0x8060
bfc017f0:	3c088066 	lui	t0,0x8066
bfc017f4:	00892021 	addu	a0,a0,t1
bfc017f8:	012a4821 	addu	t1,t1,t2
bfc017fc:	150401be 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01800:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:138
bfc01804:	3c048060 	lui	a0,0x8060
bfc01808:	3c088067 	lui	t0,0x8067
bfc0180c:	00892021 	addu	a0,a0,t1
bfc01810:	012a4821 	addu	t1,t1,t2
bfc01814:	150401b8 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01818:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:139
bfc0181c:	3c048060 	lui	a0,0x8060
bfc01820:	3c088068 	lui	t0,0x8068
bfc01824:	00892021 	addu	a0,a0,t1
bfc01828:	012a4821 	addu	t1,t1,t2
bfc0182c:	150401b2 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01830:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:140
bfc01834:	3c048060 	lui	a0,0x8060
bfc01838:	3c088069 	lui	t0,0x8069
bfc0183c:	00892021 	addu	a0,a0,t1
bfc01840:	012a4821 	addu	t1,t1,t2
bfc01844:	150401ac 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01848:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:141
bfc0184c:	3c048060 	lui	a0,0x8060
bfc01850:	3c08806a 	lui	t0,0x806a
bfc01854:	00892021 	addu	a0,a0,t1
bfc01858:	012a4821 	addu	t1,t1,t2
bfc0185c:	150401a6 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01860:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:142
bfc01864:	3c048060 	lui	a0,0x8060
bfc01868:	3c08806b 	lui	t0,0x806b
bfc0186c:	00892021 	addu	a0,a0,t1
bfc01870:	012a4821 	addu	t1,t1,t2
bfc01874:	150401a0 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01878:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:143
bfc0187c:	3c048060 	lui	a0,0x8060
bfc01880:	3c08806c 	lui	t0,0x806c
bfc01884:	00892021 	addu	a0,a0,t1
bfc01888:	012a4821 	addu	t1,t1,t2
bfc0188c:	1504019a 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01890:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:144
bfc01894:	3c048060 	lui	a0,0x8060
bfc01898:	3c08806d 	lui	t0,0x806d
bfc0189c:	00892021 	addu	a0,a0,t1
bfc018a0:	012a4821 	addu	t1,t1,t2
bfc018a4:	15040194 	bne	t0,a0,bfc01ef8 <inst_error>
bfc018a8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:145
bfc018ac:	3c048060 	lui	a0,0x8060
bfc018b0:	3c08806e 	lui	t0,0x806e
bfc018b4:	00892021 	addu	a0,a0,t1
bfc018b8:	012a4821 	addu	t1,t1,t2
bfc018bc:	1504018e 	bne	t0,a0,bfc01ef8 <inst_error>
bfc018c0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:146
bfc018c4:	3c048060 	lui	a0,0x8060
bfc018c8:	3c08806f 	lui	t0,0x806f
bfc018cc:	00892021 	addu	a0,a0,t1
bfc018d0:	012a4821 	addu	t1,t1,t2
bfc018d4:	15040188 	bne	t0,a0,bfc01ef8 <inst_error>
bfc018d8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:147
bfc018dc:	24090000 	li	t1,0
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:148
bfc018e0:	3c04a070 	lui	a0,0xa070
bfc018e4:	3c08a070 	lui	t0,0xa070
bfc018e8:	00892021 	addu	a0,a0,t1
bfc018ec:	012a4821 	addu	t1,t1,t2
bfc018f0:	15040181 	bne	t0,a0,bfc01ef8 <inst_error>
bfc018f4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:149
bfc018f8:	3c04a070 	lui	a0,0xa070
bfc018fc:	3c08a071 	lui	t0,0xa071
bfc01900:	00892021 	addu	a0,a0,t1
bfc01904:	012a4821 	addu	t1,t1,t2
bfc01908:	1504017b 	bne	t0,a0,bfc01ef8 <inst_error>
bfc0190c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:150
bfc01910:	3c04a070 	lui	a0,0xa070
bfc01914:	3c08a072 	lui	t0,0xa072
bfc01918:	00892021 	addu	a0,a0,t1
bfc0191c:	012a4821 	addu	t1,t1,t2
bfc01920:	15040175 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01924:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:151
bfc01928:	3c04a070 	lui	a0,0xa070
bfc0192c:	3c08a073 	lui	t0,0xa073
bfc01930:	00892021 	addu	a0,a0,t1
bfc01934:	012a4821 	addu	t1,t1,t2
bfc01938:	1504016f 	bne	t0,a0,bfc01ef8 <inst_error>
bfc0193c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:152
bfc01940:	3c04a070 	lui	a0,0xa070
bfc01944:	3c08a074 	lui	t0,0xa074
bfc01948:	00892021 	addu	a0,a0,t1
bfc0194c:	012a4821 	addu	t1,t1,t2
bfc01950:	15040169 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01954:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:153
bfc01958:	3c04a070 	lui	a0,0xa070
bfc0195c:	3c08a075 	lui	t0,0xa075
bfc01960:	00892021 	addu	a0,a0,t1
bfc01964:	012a4821 	addu	t1,t1,t2
bfc01968:	15040163 	bne	t0,a0,bfc01ef8 <inst_error>
bfc0196c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:154
bfc01970:	3c04a070 	lui	a0,0xa070
bfc01974:	3c08a076 	lui	t0,0xa076
bfc01978:	00892021 	addu	a0,a0,t1
bfc0197c:	012a4821 	addu	t1,t1,t2
bfc01980:	1504015d 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01984:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:155
bfc01988:	3c04a070 	lui	a0,0xa070
bfc0198c:	3c08a077 	lui	t0,0xa077
bfc01990:	00892021 	addu	a0,a0,t1
bfc01994:	012a4821 	addu	t1,t1,t2
bfc01998:	15040157 	bne	t0,a0,bfc01ef8 <inst_error>
bfc0199c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:156
bfc019a0:	3c04a070 	lui	a0,0xa070
bfc019a4:	3c08a078 	lui	t0,0xa078
bfc019a8:	00892021 	addu	a0,a0,t1
bfc019ac:	012a4821 	addu	t1,t1,t2
bfc019b0:	15040151 	bne	t0,a0,bfc01ef8 <inst_error>
bfc019b4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:157
bfc019b8:	3c04a070 	lui	a0,0xa070
bfc019bc:	3c08a079 	lui	t0,0xa079
bfc019c0:	00892021 	addu	a0,a0,t1
bfc019c4:	012a4821 	addu	t1,t1,t2
bfc019c8:	1504014b 	bne	t0,a0,bfc01ef8 <inst_error>
bfc019cc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:158
bfc019d0:	3c04a070 	lui	a0,0xa070
bfc019d4:	3c08a07a 	lui	t0,0xa07a
bfc019d8:	00892021 	addu	a0,a0,t1
bfc019dc:	012a4821 	addu	t1,t1,t2
bfc019e0:	15040145 	bne	t0,a0,bfc01ef8 <inst_error>
bfc019e4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:159
bfc019e8:	3c04a070 	lui	a0,0xa070
bfc019ec:	3c08a07b 	lui	t0,0xa07b
bfc019f0:	00892021 	addu	a0,a0,t1
bfc019f4:	012a4821 	addu	t1,t1,t2
bfc019f8:	1504013f 	bne	t0,a0,bfc01ef8 <inst_error>
bfc019fc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:160
bfc01a00:	3c04a070 	lui	a0,0xa070
bfc01a04:	3c08a07c 	lui	t0,0xa07c
bfc01a08:	00892021 	addu	a0,a0,t1
bfc01a0c:	012a4821 	addu	t1,t1,t2
bfc01a10:	15040139 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01a14:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:161
bfc01a18:	3c04a070 	lui	a0,0xa070
bfc01a1c:	3c08a07d 	lui	t0,0xa07d
bfc01a20:	00892021 	addu	a0,a0,t1
bfc01a24:	012a4821 	addu	t1,t1,t2
bfc01a28:	15040133 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01a2c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:162
bfc01a30:	3c04a070 	lui	a0,0xa070
bfc01a34:	3c08a07e 	lui	t0,0xa07e
bfc01a38:	00892021 	addu	a0,a0,t1
bfc01a3c:	012a4821 	addu	t1,t1,t2
bfc01a40:	1504012d 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01a44:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:163
bfc01a48:	3c04a070 	lui	a0,0xa070
bfc01a4c:	3c08a07f 	lui	t0,0xa07f
bfc01a50:	00892021 	addu	a0,a0,t1
bfc01a54:	012a4821 	addu	t1,t1,t2
bfc01a58:	15040127 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01a5c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:164
bfc01a60:	24090000 	li	t1,0
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:165
bfc01a64:	3c04c080 	lui	a0,0xc080
bfc01a68:	3c08c080 	lui	t0,0xc080
bfc01a6c:	00892021 	addu	a0,a0,t1
bfc01a70:	012a4821 	addu	t1,t1,t2
bfc01a74:	15040120 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01a78:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:166
bfc01a7c:	3c04c080 	lui	a0,0xc080
bfc01a80:	3c08c081 	lui	t0,0xc081
bfc01a84:	00892021 	addu	a0,a0,t1
bfc01a88:	012a4821 	addu	t1,t1,t2
bfc01a8c:	1504011a 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01a90:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:167
bfc01a94:	3c04c080 	lui	a0,0xc080
bfc01a98:	3c08c082 	lui	t0,0xc082
bfc01a9c:	00892021 	addu	a0,a0,t1
bfc01aa0:	012a4821 	addu	t1,t1,t2
bfc01aa4:	15040114 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01aa8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:168
bfc01aac:	3c04c080 	lui	a0,0xc080
bfc01ab0:	3c08c083 	lui	t0,0xc083
bfc01ab4:	00892021 	addu	a0,a0,t1
bfc01ab8:	012a4821 	addu	t1,t1,t2
bfc01abc:	1504010e 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01ac0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:169
bfc01ac4:	3c04c080 	lui	a0,0xc080
bfc01ac8:	3c08c084 	lui	t0,0xc084
bfc01acc:	00892021 	addu	a0,a0,t1
bfc01ad0:	012a4821 	addu	t1,t1,t2
bfc01ad4:	15040108 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01ad8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:170
bfc01adc:	3c04c080 	lui	a0,0xc080
bfc01ae0:	3c08c085 	lui	t0,0xc085
bfc01ae4:	00892021 	addu	a0,a0,t1
bfc01ae8:	012a4821 	addu	t1,t1,t2
bfc01aec:	15040102 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01af0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:171
bfc01af4:	3c04c080 	lui	a0,0xc080
bfc01af8:	3c08c086 	lui	t0,0xc086
bfc01afc:	00892021 	addu	a0,a0,t1
bfc01b00:	012a4821 	addu	t1,t1,t2
bfc01b04:	150400fc 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01b08:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:172
bfc01b0c:	3c04c080 	lui	a0,0xc080
bfc01b10:	3c08c087 	lui	t0,0xc087
bfc01b14:	00892021 	addu	a0,a0,t1
bfc01b18:	012a4821 	addu	t1,t1,t2
bfc01b1c:	150400f6 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01b20:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:173
bfc01b24:	3c04c080 	lui	a0,0xc080
bfc01b28:	3c08c088 	lui	t0,0xc088
bfc01b2c:	00892021 	addu	a0,a0,t1
bfc01b30:	012a4821 	addu	t1,t1,t2
bfc01b34:	150400f0 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01b38:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:174
bfc01b3c:	3c04c080 	lui	a0,0xc080
bfc01b40:	3c08c089 	lui	t0,0xc089
bfc01b44:	00892021 	addu	a0,a0,t1
bfc01b48:	012a4821 	addu	t1,t1,t2
bfc01b4c:	150400ea 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01b50:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:175
bfc01b54:	3c04c080 	lui	a0,0xc080
bfc01b58:	3c08c08a 	lui	t0,0xc08a
bfc01b5c:	00892021 	addu	a0,a0,t1
bfc01b60:	012a4821 	addu	t1,t1,t2
bfc01b64:	150400e4 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01b68:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:176
bfc01b6c:	3c04c080 	lui	a0,0xc080
bfc01b70:	3c08c08b 	lui	t0,0xc08b
bfc01b74:	00892021 	addu	a0,a0,t1
bfc01b78:	012a4821 	addu	t1,t1,t2
bfc01b7c:	150400de 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01b80:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:177
bfc01b84:	3c04c080 	lui	a0,0xc080
bfc01b88:	3c08c08c 	lui	t0,0xc08c
bfc01b8c:	00892021 	addu	a0,a0,t1
bfc01b90:	012a4821 	addu	t1,t1,t2
bfc01b94:	150400d8 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01b98:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:178
bfc01b9c:	3c04c080 	lui	a0,0xc080
bfc01ba0:	3c08c08d 	lui	t0,0xc08d
bfc01ba4:	00892021 	addu	a0,a0,t1
bfc01ba8:	012a4821 	addu	t1,t1,t2
bfc01bac:	150400d2 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01bb0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:179
bfc01bb4:	3c04c080 	lui	a0,0xc080
bfc01bb8:	3c08c08e 	lui	t0,0xc08e
bfc01bbc:	00892021 	addu	a0,a0,t1
bfc01bc0:	012a4821 	addu	t1,t1,t2
bfc01bc4:	150400cc 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01bc8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:180
bfc01bcc:	3c04c080 	lui	a0,0xc080
bfc01bd0:	3c08c08f 	lui	t0,0xc08f
bfc01bd4:	00892021 	addu	a0,a0,t1
bfc01bd8:	012a4821 	addu	t1,t1,t2
bfc01bdc:	150400c6 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01be0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:181
bfc01be4:	24090000 	li	t1,0
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:182
bfc01be8:	3c04e090 	lui	a0,0xe090
bfc01bec:	3c08e090 	lui	t0,0xe090
bfc01bf0:	00892021 	addu	a0,a0,t1
bfc01bf4:	012a4821 	addu	t1,t1,t2
bfc01bf8:	150400bf 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01bfc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:183
bfc01c00:	3c04e090 	lui	a0,0xe090
bfc01c04:	3c08e091 	lui	t0,0xe091
bfc01c08:	00892021 	addu	a0,a0,t1
bfc01c0c:	012a4821 	addu	t1,t1,t2
bfc01c10:	150400b9 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01c14:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:184
bfc01c18:	3c04e090 	lui	a0,0xe090
bfc01c1c:	3c08e092 	lui	t0,0xe092
bfc01c20:	00892021 	addu	a0,a0,t1
bfc01c24:	012a4821 	addu	t1,t1,t2
bfc01c28:	150400b3 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01c2c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:185
bfc01c30:	3c04e090 	lui	a0,0xe090
bfc01c34:	3c08e093 	lui	t0,0xe093
bfc01c38:	00892021 	addu	a0,a0,t1
bfc01c3c:	012a4821 	addu	t1,t1,t2
bfc01c40:	150400ad 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01c44:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:186
bfc01c48:	3c04e090 	lui	a0,0xe090
bfc01c4c:	3c08e094 	lui	t0,0xe094
bfc01c50:	00892021 	addu	a0,a0,t1
bfc01c54:	012a4821 	addu	t1,t1,t2
bfc01c58:	150400a7 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01c5c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:187
bfc01c60:	3c04e090 	lui	a0,0xe090
bfc01c64:	3c08e095 	lui	t0,0xe095
bfc01c68:	00892021 	addu	a0,a0,t1
bfc01c6c:	012a4821 	addu	t1,t1,t2
bfc01c70:	150400a1 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01c74:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:188
bfc01c78:	3c04e090 	lui	a0,0xe090
bfc01c7c:	3c08e096 	lui	t0,0xe096
bfc01c80:	00892021 	addu	a0,a0,t1
bfc01c84:	012a4821 	addu	t1,t1,t2
bfc01c88:	1504009b 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01c8c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:189
bfc01c90:	3c04e090 	lui	a0,0xe090
bfc01c94:	3c08e097 	lui	t0,0xe097
bfc01c98:	00892021 	addu	a0,a0,t1
bfc01c9c:	012a4821 	addu	t1,t1,t2
bfc01ca0:	15040095 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01ca4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:190
bfc01ca8:	3c04e090 	lui	a0,0xe090
bfc01cac:	3c08e098 	lui	t0,0xe098
bfc01cb0:	00892021 	addu	a0,a0,t1
bfc01cb4:	012a4821 	addu	t1,t1,t2
bfc01cb8:	1504008f 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01cbc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:191
bfc01cc0:	3c04e090 	lui	a0,0xe090
bfc01cc4:	3c08e099 	lui	t0,0xe099
bfc01cc8:	00892021 	addu	a0,a0,t1
bfc01ccc:	012a4821 	addu	t1,t1,t2
bfc01cd0:	15040089 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01cd4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:192
bfc01cd8:	3c04e090 	lui	a0,0xe090
bfc01cdc:	3c08e09a 	lui	t0,0xe09a
bfc01ce0:	00892021 	addu	a0,a0,t1
bfc01ce4:	012a4821 	addu	t1,t1,t2
bfc01ce8:	15040083 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01cec:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:193
bfc01cf0:	3c04e090 	lui	a0,0xe090
bfc01cf4:	3c08e09b 	lui	t0,0xe09b
bfc01cf8:	00892021 	addu	a0,a0,t1
bfc01cfc:	012a4821 	addu	t1,t1,t2
bfc01d00:	1504007d 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01d04:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:194
bfc01d08:	3c04e090 	lui	a0,0xe090
bfc01d0c:	3c08e09c 	lui	t0,0xe09c
bfc01d10:	00892021 	addu	a0,a0,t1
bfc01d14:	012a4821 	addu	t1,t1,t2
bfc01d18:	15040077 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01d1c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:195
bfc01d20:	3c04e090 	lui	a0,0xe090
bfc01d24:	3c08e09d 	lui	t0,0xe09d
bfc01d28:	00892021 	addu	a0,a0,t1
bfc01d2c:	012a4821 	addu	t1,t1,t2
bfc01d30:	15040071 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01d34:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:196
bfc01d38:	3c04e090 	lui	a0,0xe090
bfc01d3c:	3c08e09e 	lui	t0,0xe09e
bfc01d40:	00892021 	addu	a0,a0,t1
bfc01d44:	012a4821 	addu	t1,t1,t2
bfc01d48:	1504006b 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01d4c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:197
bfc01d50:	3c04e090 	lui	a0,0xe090
bfc01d54:	3c08e09f 	lui	t0,0xe09f
bfc01d58:	00892021 	addu	a0,a0,t1
bfc01d5c:	012a4821 	addu	t1,t1,t2
bfc01d60:	15040065 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01d64:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:198
bfc01d68:	24090000 	li	t1,0
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:199
bfc01d6c:	3c04f0a0 	lui	a0,0xf0a0
bfc01d70:	3c08f0a0 	lui	t0,0xf0a0
bfc01d74:	00892021 	addu	a0,a0,t1
bfc01d78:	012a4821 	addu	t1,t1,t2
bfc01d7c:	1504005e 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01d80:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:200
bfc01d84:	3c04f0a0 	lui	a0,0xf0a0
bfc01d88:	3c08f0a1 	lui	t0,0xf0a1
bfc01d8c:	00892021 	addu	a0,a0,t1
bfc01d90:	012a4821 	addu	t1,t1,t2
bfc01d94:	15040058 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01d98:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:201
bfc01d9c:	3c04f0a0 	lui	a0,0xf0a0
bfc01da0:	3c08f0a2 	lui	t0,0xf0a2
bfc01da4:	00892021 	addu	a0,a0,t1
bfc01da8:	012a4821 	addu	t1,t1,t2
bfc01dac:	15040052 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01db0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:202
bfc01db4:	3c04f0a0 	lui	a0,0xf0a0
bfc01db8:	3c08f0a3 	lui	t0,0xf0a3
bfc01dbc:	00892021 	addu	a0,a0,t1
bfc01dc0:	012a4821 	addu	t1,t1,t2
bfc01dc4:	1504004c 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01dc8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:203
bfc01dcc:	3c04f0a0 	lui	a0,0xf0a0
bfc01dd0:	3c08f0a4 	lui	t0,0xf0a4
bfc01dd4:	00892021 	addu	a0,a0,t1
bfc01dd8:	012a4821 	addu	t1,t1,t2
bfc01ddc:	15040046 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01de0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:204
bfc01de4:	3c04f0a0 	lui	a0,0xf0a0
bfc01de8:	3c08f0a5 	lui	t0,0xf0a5
bfc01dec:	00892021 	addu	a0,a0,t1
bfc01df0:	012a4821 	addu	t1,t1,t2
bfc01df4:	15040040 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01df8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:205
bfc01dfc:	3c04f0a0 	lui	a0,0xf0a0
bfc01e00:	3c08f0a6 	lui	t0,0xf0a6
bfc01e04:	00892021 	addu	a0,a0,t1
bfc01e08:	012a4821 	addu	t1,t1,t2
bfc01e0c:	1504003a 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01e10:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:206
bfc01e14:	3c04f0a0 	lui	a0,0xf0a0
bfc01e18:	3c08f0a7 	lui	t0,0xf0a7
bfc01e1c:	00892021 	addu	a0,a0,t1
bfc01e20:	012a4821 	addu	t1,t1,t2
bfc01e24:	15040034 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01e28:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:207
bfc01e2c:	3c04f0a0 	lui	a0,0xf0a0
bfc01e30:	3c08f0a8 	lui	t0,0xf0a8
bfc01e34:	00892021 	addu	a0,a0,t1
bfc01e38:	012a4821 	addu	t1,t1,t2
bfc01e3c:	1504002e 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01e40:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:208
bfc01e44:	3c04f0a0 	lui	a0,0xf0a0
bfc01e48:	3c08f0a9 	lui	t0,0xf0a9
bfc01e4c:	00892021 	addu	a0,a0,t1
bfc01e50:	012a4821 	addu	t1,t1,t2
bfc01e54:	15040028 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01e58:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:209
bfc01e5c:	3c04f0a0 	lui	a0,0xf0a0
bfc01e60:	3c08f0aa 	lui	t0,0xf0aa
bfc01e64:	00892021 	addu	a0,a0,t1
bfc01e68:	012a4821 	addu	t1,t1,t2
bfc01e6c:	15040022 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01e70:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:210
bfc01e74:	3c04f0a0 	lui	a0,0xf0a0
bfc01e78:	3c08f0ab 	lui	t0,0xf0ab
bfc01e7c:	00892021 	addu	a0,a0,t1
bfc01e80:	012a4821 	addu	t1,t1,t2
bfc01e84:	1504001c 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01e88:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:211
bfc01e8c:	3c04f0a0 	lui	a0,0xf0a0
bfc01e90:	3c08f0ac 	lui	t0,0xf0ac
bfc01e94:	00892021 	addu	a0,a0,t1
bfc01e98:	012a4821 	addu	t1,t1,t2
bfc01e9c:	15040016 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01ea0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:212
bfc01ea4:	3c04f0a0 	lui	a0,0xf0a0
bfc01ea8:	3c08f0ad 	lui	t0,0xf0ad
bfc01eac:	00892021 	addu	a0,a0,t1
bfc01eb0:	012a4821 	addu	t1,t1,t2
bfc01eb4:	15040010 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01eb8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:213
bfc01ebc:	3c04f0a0 	lui	a0,0xf0a0
bfc01ec0:	3c08f0ae 	lui	t0,0xf0ae
bfc01ec4:	00892021 	addu	a0,a0,t1
bfc01ec8:	012a4821 	addu	t1,t1,t2
bfc01ecc:	1504000a 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01ed0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:214
bfc01ed4:	3c04f0a0 	lui	a0,0xf0a0
bfc01ed8:	3c08f0af 	lui	t0,0xf0af
bfc01edc:	00892021 	addu	a0,a0,t1
bfc01ee0:	012a4821 	addu	t1,t1,t2
bfc01ee4:	15040004 	bne	t0,a0,bfc01ef8 <inst_error>
bfc01ee8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:216
bfc01eec:	16400002 	bnez	s2,bfc01ef8 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:217
bfc01ef0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:219
bfc01ef4:	26730001 	addiu	s3,s3,1

bfc01ef8 <inst_error>:
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:222
bfc01ef8:	00104e00 	sll	t1,s0,0x18
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:223
bfc01efc:	01334025 	or	t0,t1,s3
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:224
bfc01f00:	ae280000 	sw	t0,0(s1)
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:225
bfc01f04:	03e00008 	jr	ra
/home/yfy/func_test_v0.01/soft/func/inst/n1_lui.S:226
bfc01f08:	00000000 	nop
inst_error():
bfc01f0c:	00000000 	nop

bfc01f10 <n73_sw_ades_ex_test>:
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:7
bfc01f10:	26100001 	addiu	s0,s0,1
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:8
bfc01f14:	3c08800d 	lui	t0,0x800d
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:9
bfc01f18:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:10
bfc01f1c:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:12
bfc01f20:	40805800 	mtc0	zero,$11
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:13
bfc01f24:	3c170040 	lui	s7,0x40
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:14
bfc01f28:	40976000 	mtc0	s7,c0_sr
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:15
bfc01f2c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:16
bfc01f30:	3c170005 	lui	s7,0x5
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:19
bfc01f34:	3c02b189 	lui	v0,0xb189
bfc01f38:	3442c470 	ori	v0,v0,0xc470
bfc01f3c:	3c03b189 	lui	v1,0xb189
bfc01f40:	3463c470 	ori	v1,v1,0xc470
bfc01f44:	3c04800d 	lui	a0,0x800d
bfc01f48:	34847bd1 	ori	a0,a0,0x7bd1
bfc01f4c:	3c05b189 	lui	a1,0xb189
bfc01f50:	34a5c470 	ori	a1,a1,0xc470
bfc01f54:	24877974 	addiu	a3,a0,31092
bfc01f58:	ac827973 	sw	v0,31091(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:20
bfc01f5c:	3c14bfc0 	lui	s4,0xbfc0
bfc01f60:	26941f64 	addiu	s4,s4,8036
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:21
bfc01f64:	ac857974 	sw	a1,31092(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:22
bfc01f68:	165700a2 	bne	s2,s7,bfc021f4 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:23
bfc01f6c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:24
bfc01f70:	8c827973 	lw	v0,31091(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:25
bfc01f74:	1443009f 	bne	v0,v1,bfc021f4 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:26
bfc01f78:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:27
bfc01f7c:	40164000 	mfc0	s6,c0_badvaddr
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:28
bfc01f80:	14f6009c 	bne	a3,s6,bfc021f4 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:29
bfc01f84:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:31
bfc01f88:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:32
bfc01f8c:	3c02c052 	lui	v0,0xc052
bfc01f90:	3442b3f0 	ori	v0,v0,0xb3f0
bfc01f94:	3c03c052 	lui	v1,0xc052
bfc01f98:	3463b3f0 	ori	v1,v1,0xb3f0
bfc01f9c:	3c04800d 	lui	a0,0x800d
bfc01fa0:	348423d4 	ori	a0,a0,0x23d4
bfc01fa4:	3c05c052 	lui	a1,0xc052
bfc01fa8:	34a5b3f0 	ori	a1,a1,0xb3f0
bfc01fac:	248764a2 	addiu	a3,a0,25762
bfc01fb0:	ac8264a0 	sw	v0,25760(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:33
bfc01fb4:	3c14bfc0 	lui	s4,0xbfc0
bfc01fb8:	26941fc4 	addiu	s4,s4,8132
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:34
bfc01fbc:	ad080004 	sw	t0,4(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:35
bfc01fc0:	ad140004 	sw	s4,4(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:36
bfc01fc4:	ac8564a2 	sw	a1,25762(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:37
bfc01fc8:	ad140000 	sw	s4,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:38
bfc01fcc:	8d090004 	lw	t1,4(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:39
bfc01fd0:	15340088 	bne	t1,s4,bfc021f4 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:40
bfc01fd4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:41
bfc01fd8:	16570086 	bne	s2,s7,bfc021f4 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:42
bfc01fdc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:43
bfc01fe0:	8c8264a0 	lw	v0,25760(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:44
bfc01fe4:	14430083 	bne	v0,v1,bfc021f4 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:45
bfc01fe8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:46
bfc01fec:	40164000 	mfc0	s6,c0_badvaddr
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:47
bfc01ff0:	14f60080 	bne	a3,s6,bfc021f4 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:48
bfc01ff4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:49
bfc01ff8:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:50
bfc01ffc:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:52
bfc02000:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:53
bfc02004:	3c02a10f 	lui	v0,0xa10f
bfc02008:	3442ebaf 	ori	v0,v0,0xebaf
bfc0200c:	3c03a10f 	lui	v1,0xa10f
bfc02010:	3463ebaf 	ori	v1,v1,0xebaf
bfc02014:	3c04800d 	lui	a0,0x800d
bfc02018:	34848850 	ori	a0,a0,0x8850
bfc0201c:	3c05994c 	lui	a1,0x994c
bfc02020:	34a50280 	ori	a1,a1,0x280
bfc02024:	2487418b 	addiu	a3,a0,16779
bfc02028:	ac824188 	sw	v0,16776(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:54
bfc0202c:	3c14bfc0 	lui	s4,0xbfc0
bfc02030:	2694203c 	addiu	s4,s4,8252
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:55
bfc02034:	01000011 	mthi	t0
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:56
bfc02038:	0110001b 	divu	zero,t0,s0
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:57
bfc0203c:	ac85418b 	sw	a1,16779(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:58
bfc02040:	00004810 	mfhi	t1
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:59
bfc02044:	1128006b 	beq	t1,t0,bfc021f4 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:60
bfc02048:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:61
bfc0204c:	16570069 	bne	s2,s7,bfc021f4 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:62
bfc02050:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:63
bfc02054:	8c824188 	lw	v0,16776(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:64
bfc02058:	14430066 	bne	v0,v1,bfc021f4 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:65
bfc0205c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:66
bfc02060:	40164000 	mfc0	s6,c0_badvaddr
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:67
bfc02064:	14f60063 	bne	a3,s6,bfc021f4 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:68
bfc02068:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:70
bfc0206c:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:71
bfc02070:	3c02eb54 	lui	v0,0xeb54
bfc02074:	3442b87c 	ori	v0,v0,0xb87c
bfc02078:	3c03eb54 	lui	v1,0xeb54
bfc0207c:	3463b87c 	ori	v1,v1,0xb87c
bfc02080:	3c04800d 	lui	a0,0x800d
bfc02084:	3484a256 	ori	a0,a0,0xa256
bfc02088:	3c05eb54 	lui	a1,0xeb54
bfc0208c:	34a5b87c 	ori	a1,a1,0xb87c
bfc02090:	248700c3 	addiu	a3,a0,195
bfc02094:	ac8200c2 	sw	v0,194(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:72
bfc02098:	3c14bfc0 	lui	s4,0xbfc0
bfc0209c:	269420a0 	addiu	s4,s4,8352
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:73
bfc020a0:	ac8500c3 	sw	a1,195(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:74
bfc020a4:	0208001b 	divu	zero,s0,t0
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:75
bfc020a8:	16570052 	bne	s2,s7,bfc021f4 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:76
bfc020ac:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:77
bfc020b0:	8c8200c2 	lw	v0,194(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:78
bfc020b4:	1443004f 	bne	v0,v1,bfc021f4 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:79
bfc020b8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:80
bfc020bc:	40164000 	mfc0	s6,c0_badvaddr
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:81
bfc020c0:	14f6004c 	bne	a3,s6,bfc021f4 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:82
bfc020c4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:84
bfc020c8:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:85
bfc020cc:	3c028003 	lui	v0,0x8003
bfc020d0:	34422066 	ori	v0,v0,0x2066
bfc020d4:	3c038003 	lui	v1,0x8003
bfc020d8:	34632066 	ori	v1,v1,0x2066
bfc020dc:	3c04800d 	lui	a0,0x800d
bfc020e0:	3484206c 	ori	a0,a0,0x206c
bfc020e4:	3c05ebdc 	lui	a1,0xebdc
bfc020e8:	34a58860 	ori	a1,a1,0x8860
bfc020ec:	2487ccc2 	addiu	a3,a0,-13118
bfc020f0:	ac82ccc0 	sw	v0,-13120(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:86
bfc020f4:	3c14bfc0 	lui	s4,0xbfc0
bfc020f8:	26942104 	addiu	s4,s4,8452
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:87
bfc020fc:	01000013 	mtlo	t0
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:88
bfc02100:	01100019 	multu	t0,s0
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:89
bfc02104:	ac85ccc2 	sw	a1,-13118(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:90
bfc02108:	00004810 	mfhi	t1
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:91
bfc0210c:	11280039 	beq	t1,t0,bfc021f4 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:92
bfc02110:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:93
bfc02114:	16570037 	bne	s2,s7,bfc021f4 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:94
bfc02118:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:95
bfc0211c:	8c82ccc0 	lw	v0,-13120(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:96
bfc02120:	14430034 	bne	v0,v1,bfc021f4 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:97
bfc02124:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:98
bfc02128:	40164000 	mfc0	s6,c0_badvaddr
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:99
bfc0212c:	14f60031 	bne	a3,s6,bfc021f4 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:100
bfc02130:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:102
bfc02134:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:103
bfc02138:	3c026348 	lui	v0,0x6348
bfc0213c:	344258c8 	ori	v0,v0,0x58c8
bfc02140:	3c036348 	lui	v1,0x6348
bfc02144:	346358c8 	ori	v1,v1,0x58c8
bfc02148:	3c04800d 	lui	a0,0x800d
bfc0214c:	348482d8 	ori	a0,a0,0x82d8
bfc02150:	3c050c41 	lui	a1,0xc41
bfc02154:	34a5f5e8 	ori	a1,a1,0xf5e8
bfc02158:	24878889 	addiu	a3,a0,-30583
bfc0215c:	ac828888 	sw	v0,-30584(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:104
bfc02160:	3c14bfc0 	lui	s4,0xbfc0
bfc02164:	26942168 	addiu	s4,s4,8552
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:105
bfc02168:	ac858889 	sw	a1,-30583(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:106
bfc0216c:	01120019 	multu	t0,s2
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:107
bfc02170:	16570020 	bne	s2,s7,bfc021f4 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:108
bfc02174:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:109
bfc02178:	8c828888 	lw	v0,-30584(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:110
bfc0217c:	1443001d 	bne	v0,v1,bfc021f4 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:111
bfc02180:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:112
bfc02184:	40164000 	mfc0	s6,c0_badvaddr
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:113
bfc02188:	14f6001a 	bne	a3,s6,bfc021f4 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:114
bfc0218c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:116
bfc02190:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:117
bfc02194:	3c028003 	lui	v0,0x8003
bfc02198:	34421751 	ori	v0,v0,0x1751
bfc0219c:	3c038003 	lui	v1,0x8003
bfc021a0:	34631751 	ori	v1,v1,0x1751
bfc021a4:	3c04800d 	lui	a0,0x800d
bfc021a8:	34841750 	ori	a0,a0,0x1750
bfc021ac:	3c05cb09 	lui	a1,0xcb09
bfc021b0:	34a5da60 	ori	a1,a1,0xda60
bfc021b4:	24879b27 	addiu	a3,a0,-25817
bfc021b8:	ac829b24 	sw	v0,-25820(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:118
bfc021bc:	3c14bfc0 	lui	s4,0xbfc0
bfc021c0:	269421c8 	addiu	s4,s4,8648
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:119
bfc021c4:	40927000 	mtc0	s2,c0_epc
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:120
bfc021c8:	ac859b27 	sw	a1,-25817(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:121
bfc021cc:	40887000 	mtc0	t0,c0_epc
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:122
bfc021d0:	16570008 	bne	s2,s7,bfc021f4 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:123
bfc021d4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:124
bfc021d8:	8c829b24 	lw	v0,-25820(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:125
bfc021dc:	14430005 	bne	v0,v1,bfc021f4 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:126
bfc021e0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:127
bfc021e4:	40164000 	mfc0	s6,c0_badvaddr
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:128
bfc021e8:	14f60002 	bne	a3,s6,bfc021f4 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:129
bfc021ec:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:131
bfc021f0:	26730001 	addiu	s3,s3,1

bfc021f4 <inst_error>:
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:134
bfc021f4:	00104e00 	sll	t1,s0,0x18
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:135
bfc021f8:	01334025 	or	t0,t1,s3
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:136
bfc021fc:	ae280000 	sw	t0,0(s1)
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:137
bfc02200:	03e00008 	jr	ra
/home/yfy/func_test_v0.01/soft/func/inst/n73_sw_ades_ex.S:138
bfc02204:	00000000 	nop
	...

bfc02210 <n71_lh_adel_ex_test>:
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:7
bfc02210:	26100001 	addiu	s0,s0,1
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:8
bfc02214:	3c08800d 	lui	t0,0x800d
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:9
bfc02218:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:10
bfc0221c:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:12
bfc02220:	40805800 	mtc0	zero,$11
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:13
bfc02224:	3c170040 	lui	s7,0x40
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:14
bfc02228:	40976000 	mtc0	s7,c0_sr
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:15
bfc0222c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:16
bfc02230:	3c170004 	lui	s7,0x4
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:19
bfc02234:	3c029325 	lui	v0,0x9325
bfc02238:	34422910 	ori	v0,v0,0x2910
bfc0223c:	3c039325 	lui	v1,0x9325
bfc02240:	34632910 	ori	v1,v1,0x2910
bfc02244:	3c04800d 	lui	a0,0x800d
bfc02248:	34841348 	ori	a0,a0,0x1348
bfc0224c:	3c050233 	lui	a1,0x233
bfc02250:	34a5e52c 	ori	a1,a1,0xe52c
bfc02254:	24879a19 	addiu	a3,a0,-26087
bfc02258:	3c010001 	lui	at,0x1
bfc0225c:	00240821 	addu	at,at,a0
bfc02260:	ac259a18 	sw	a1,-26088(at)
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:20
bfc02264:	3c14bfc0 	lui	s4,0xbfc0
bfc02268:	2694226c 	addiu	s4,s4,8812
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:21
bfc0226c:	84829a19 	lh	v0,-26087(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:22
bfc02270:	165700a1 	bne	s2,s7,bfc024f8 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:23
bfc02274:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:24
bfc02278:	1443009f 	bne	v0,v1,bfc024f8 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:25
bfc0227c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:26
bfc02280:	40164000 	mfc0	s6,c0_badvaddr
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:27
bfc02284:	14f6009c 	bne	a3,s6,bfc024f8 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:28
bfc02288:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:30
bfc0228c:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:31
bfc02290:	3c02854a 	lui	v0,0x854a
bfc02294:	3442a680 	ori	v0,v0,0xa680
bfc02298:	3c03854a 	lui	v1,0x854a
bfc0229c:	3463a680 	ori	v1,v1,0xa680
bfc022a0:	3c04800d 	lui	a0,0x800d
bfc022a4:	34842ca8 	ori	a0,a0,0x2ca8
bfc022a8:	3c052ba9 	lui	a1,0x2ba9
bfc022ac:	34a50e90 	ori	a1,a1,0xe90
bfc022b0:	24872577 	addiu	a3,a0,9591
bfc022b4:	ac852574 	sw	a1,9588(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:32
bfc022b8:	3c14bfc0 	lui	s4,0xbfc0
bfc022bc:	269422c8 	addiu	s4,s4,8904
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:33
bfc022c0:	ad080004 	sw	t0,4(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:34
bfc022c4:	ad140004 	sw	s4,4(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:35
bfc022c8:	84822577 	lh	v0,9591(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:36
bfc022cc:	ad140000 	sw	s4,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:37
bfc022d0:	8d090004 	lw	t1,4(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:38
bfc022d4:	15340088 	bne	t1,s4,bfc024f8 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:39
bfc022d8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:40
bfc022dc:	16570086 	bne	s2,s7,bfc024f8 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:41
bfc022e0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:42
bfc022e4:	14430084 	bne	v0,v1,bfc024f8 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:43
bfc022e8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:44
bfc022ec:	40164000 	mfc0	s6,c0_badvaddr
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:45
bfc022f0:	14f60081 	bne	a3,s6,bfc024f8 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:46
bfc022f4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:47
bfc022f8:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:48
bfc022fc:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:50
bfc02300:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:51
bfc02304:	3c02541f 	lui	v0,0x541f
bfc02308:	34426c5c 	ori	v0,v0,0x6c5c
bfc0230c:	3c03541f 	lui	v1,0x541f
bfc02310:	34636c5c 	ori	v1,v1,0x6c5c
bfc02314:	3c04800d 	lui	a0,0x800d
bfc02318:	34841570 	ori	a0,a0,0x1570
bfc0231c:	3c059554 	lui	a1,0x9554
bfc02320:	34a5e8d4 	ori	a1,a1,0xe8d4
bfc02324:	248785e3 	addiu	a3,a0,-31261
bfc02328:	3c010001 	lui	at,0x1
bfc0232c:	00240821 	addu	at,at,a0
bfc02330:	ac2585e0 	sw	a1,-31264(at)
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:52
bfc02334:	3c14bfc0 	lui	s4,0xbfc0
bfc02338:	26942344 	addiu	s4,s4,9028
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:53
bfc0233c:	01000011 	mthi	t0
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:54
bfc02340:	0110001b 	divu	zero,t0,s0
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:55
bfc02344:	848285e3 	lh	v0,-31261(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:56
bfc02348:	00004810 	mfhi	t1
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:57
bfc0234c:	1128006a 	beq	t1,t0,bfc024f8 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:58
bfc02350:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:59
bfc02354:	16570068 	bne	s2,s7,bfc024f8 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:60
bfc02358:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:61
bfc0235c:	14430066 	bne	v0,v1,bfc024f8 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:62
bfc02360:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:63
bfc02364:	40164000 	mfc0	s6,c0_badvaddr
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:64
bfc02368:	14f60063 	bne	a3,s6,bfc024f8 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:65
bfc0236c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:67
bfc02370:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:68
bfc02374:	3c02224c 	lui	v0,0x224c
bfc02378:	3442f16c 	ori	v0,v0,0xf16c
bfc0237c:	3c03224c 	lui	v1,0x224c
bfc02380:	3463f16c 	ori	v1,v1,0xf16c
bfc02384:	3c04800d 	lui	a0,0x800d
bfc02388:	348469cc 	ori	a0,a0,0x69cc
bfc0238c:	3c058ef7 	lui	a1,0x8ef7
bfc02390:	34a55a20 	ori	a1,a1,0x5a20
bfc02394:	24878341 	addiu	a3,a0,-31935
bfc02398:	3c010001 	lui	at,0x1
bfc0239c:	00240821 	addu	at,at,a0
bfc023a0:	ac258340 	sw	a1,-31936(at)
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:69
bfc023a4:	3c14bfc0 	lui	s4,0xbfc0
bfc023a8:	269423ac 	addiu	s4,s4,9132
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:70
bfc023ac:	84828341 	lh	v0,-31935(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:71
bfc023b0:	0208001b 	divu	zero,s0,t0
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:72
bfc023b4:	16570050 	bne	s2,s7,bfc024f8 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:73
bfc023b8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:74
bfc023bc:	1443004e 	bne	v0,v1,bfc024f8 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:75
bfc023c0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:76
bfc023c4:	40164000 	mfc0	s6,c0_badvaddr
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:77
bfc023c8:	14f6004b 	bne	a3,s6,bfc024f8 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:78
bfc023cc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:80
bfc023d0:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:81
bfc023d4:	3c02516f 	lui	v0,0x516f
bfc023d8:	34425fa2 	ori	v0,v0,0x5fa2
bfc023dc:	3c03516f 	lui	v1,0x516f
bfc023e0:	34635fa2 	ori	v1,v1,0x5fa2
bfc023e4:	3c04800d 	lui	a0,0x800d
bfc023e8:	34840438 	ori	a0,a0,0x438
bfc023ec:	3c05cb7e 	lui	a1,0xcb7e
bfc023f0:	34a5f7d5 	ori	a1,a1,0xf7d5
bfc023f4:	2487db3b 	addiu	a3,a0,-9413
bfc023f8:	3c010001 	lui	at,0x1
bfc023fc:	00240821 	addu	at,at,a0
bfc02400:	ac25db38 	sw	a1,-9416(at)
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:82
bfc02404:	3c14bfc0 	lui	s4,0xbfc0
bfc02408:	26942414 	addiu	s4,s4,9236
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:83
bfc0240c:	01000013 	mtlo	t0
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:84
bfc02410:	01100019 	multu	t0,s0
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:85
bfc02414:	8482db3b 	lh	v0,-9413(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:86
bfc02418:	00004810 	mfhi	t1
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:87
bfc0241c:	11280036 	beq	t1,t0,bfc024f8 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:88
bfc02420:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:89
bfc02424:	16570034 	bne	s2,s7,bfc024f8 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:90
bfc02428:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:91
bfc0242c:	14430032 	bne	v0,v1,bfc024f8 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:92
bfc02430:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:93
bfc02434:	40164000 	mfc0	s6,c0_badvaddr
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:94
bfc02438:	14f6002f 	bne	a3,s6,bfc024f8 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:95
bfc0243c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:97
bfc02440:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:98
bfc02444:	3c023537 	lui	v0,0x3537
bfc02448:	3442cc30 	ori	v0,v0,0xcc30
bfc0244c:	3c033537 	lui	v1,0x3537
bfc02450:	3463cc30 	ori	v1,v1,0xcc30
bfc02454:	3c04800d 	lui	a0,0x800d
bfc02458:	34842c20 	ori	a0,a0,0x2c20
bfc0245c:	3c055118 	lui	a1,0x5118
bfc02460:	34a5e811 	ori	a1,a1,0xe811
bfc02464:	24871915 	addiu	a3,a0,6421
bfc02468:	ac851914 	sw	a1,6420(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:99
bfc0246c:	3c14bfc0 	lui	s4,0xbfc0
bfc02470:	26942474 	addiu	s4,s4,9332
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:100
bfc02474:	84821915 	lh	v0,6421(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:101
bfc02478:	01120019 	multu	t0,s2
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:102
bfc0247c:	1657001e 	bne	s2,s7,bfc024f8 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:103
bfc02480:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:104
bfc02484:	1443001c 	bne	v0,v1,bfc024f8 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:105
bfc02488:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:106
bfc0248c:	40164000 	mfc0	s6,c0_badvaddr
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:107
bfc02490:	14f60019 	bne	a3,s6,bfc024f8 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:108
bfc02494:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:110
bfc02498:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:111
bfc0249c:	3c0263c6 	lui	v0,0x63c6
bfc024a0:	3442e7af 	ori	v0,v0,0xe7af
bfc024a4:	3c0363c6 	lui	v1,0x63c6
bfc024a8:	3463e7af 	ori	v1,v1,0xe7af
bfc024ac:	3c04800d 	lui	a0,0x800d
bfc024b0:	34843d5c 	ori	a0,a0,0x3d5c
bfc024b4:	3c05d802 	lui	a1,0xd802
bfc024b8:	34a541b4 	ori	a1,a1,0x41b4
bfc024bc:	248732e9 	addiu	a3,a0,13033
bfc024c0:	ac8532e8 	sw	a1,13032(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:112
bfc024c4:	3c14bfc0 	lui	s4,0xbfc0
bfc024c8:	269424d0 	addiu	s4,s4,9424
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:113
bfc024cc:	40927000 	mtc0	s2,c0_epc
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:114
bfc024d0:	848232e9 	lh	v0,13033(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:115
bfc024d4:	40887000 	mtc0	t0,c0_epc
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:116
bfc024d8:	16570007 	bne	s2,s7,bfc024f8 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:117
bfc024dc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:118
bfc024e0:	14430005 	bne	v0,v1,bfc024f8 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:119
bfc024e4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:120
bfc024e8:	40164000 	mfc0	s6,c0_badvaddr
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:121
bfc024ec:	14f60002 	bne	a3,s6,bfc024f8 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:122
bfc024f0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:124
bfc024f4:	26730001 	addiu	s3,s3,1

bfc024f8 <inst_error>:
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:127
bfc024f8:	00104e00 	sll	t1,s0,0x18
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:128
bfc024fc:	01334025 	or	t0,t1,s3
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:129
bfc02500:	ae280000 	sw	t0,0(s1)
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:130
bfc02504:	03e00008 	jr	ra
/home/yfy/func_test_v0.01/soft/func/inst/n71_lh_adel_ex.S:131
bfc02508:	00000000 	nop
bfc0250c:	00000000 	nop

bfc02510 <n72_lhu_adel_ex_test>:
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:7
bfc02510:	26100001 	addiu	s0,s0,1
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:8
bfc02514:	3c08800d 	lui	t0,0x800d
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:9
bfc02518:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:10
bfc0251c:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:12
bfc02520:	40805800 	mtc0	zero,$11
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:13
bfc02524:	3c170040 	lui	s7,0x40
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:14
bfc02528:	40976000 	mtc0	s7,c0_sr
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:15
bfc0252c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:16
bfc02530:	3c170004 	lui	s7,0x4
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:19
bfc02534:	3c028003 	lui	v0,0x8003
bfc02538:	34420514 	ori	v0,v0,0x514
bfc0253c:	3c038003 	lui	v1,0x8003
bfc02540:	34630514 	ori	v1,v1,0x514
bfc02544:	3c04800d 	lui	a0,0x800d
bfc02548:	34840514 	ori	a0,a0,0x514
bfc0254c:	3c050dc5 	lui	a1,0xdc5
bfc02550:	34a5e542 	ori	a1,a1,0xe542
bfc02554:	2487b239 	addiu	a3,a0,-19911
bfc02558:	3c010001 	lui	at,0x1
bfc0255c:	00240821 	addu	at,at,a0
bfc02560:	ac25b238 	sw	a1,-19912(at)
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:20
bfc02564:	3c14bfc0 	lui	s4,0xbfc0
bfc02568:	2694256c 	addiu	s4,s4,9580
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:21
bfc0256c:	9482b239 	lhu	v0,-19911(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:22
bfc02570:	1657009f 	bne	s2,s7,bfc027f0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:23
bfc02574:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:24
bfc02578:	1443009d 	bne	v0,v1,bfc027f0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:25
bfc0257c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:26
bfc02580:	40164000 	mfc0	s6,c0_badvaddr
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:27
bfc02584:	14f6009a 	bne	a3,s6,bfc027f0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:28
bfc02588:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:30
bfc0258c:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:31
bfc02590:	3c028003 	lui	v0,0x8003
bfc02594:	34422fbc 	ori	v0,v0,0x2fbc
bfc02598:	3c038003 	lui	v1,0x8003
bfc0259c:	34632fbc 	ori	v1,v1,0x2fbc
bfc025a0:	3c04800d 	lui	a0,0x800d
bfc025a4:	34842fbc 	ori	a0,a0,0x2fbc
bfc025a8:	3c05f781 	lui	a1,0xf781
bfc025ac:	34a52ae2 	ori	a1,a1,0x2ae2
bfc025b0:	24879c35 	addiu	a3,a0,-25547
bfc025b4:	3c010001 	lui	at,0x1
bfc025b8:	00240821 	addu	at,at,a0
bfc025bc:	ac259c34 	sw	a1,-25548(at)
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:32
bfc025c0:	3c14bfc0 	lui	s4,0xbfc0
bfc025c4:	269425d0 	addiu	s4,s4,9680
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:33
bfc025c8:	ad080004 	sw	t0,4(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:34
bfc025cc:	ad140004 	sw	s4,4(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:35
bfc025d0:	94829c35 	lhu	v0,-25547(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:36
bfc025d4:	ad140000 	sw	s4,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:37
bfc025d8:	8d090004 	lw	t1,4(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:38
bfc025dc:	15340084 	bne	t1,s4,bfc027f0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:39
bfc025e0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:40
bfc025e4:	16570082 	bne	s2,s7,bfc027f0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:41
bfc025e8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:42
bfc025ec:	14430080 	bne	v0,v1,bfc027f0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:43
bfc025f0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:44
bfc025f4:	40164000 	mfc0	s6,c0_badvaddr
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:45
bfc025f8:	14f6007d 	bne	a3,s6,bfc027f0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:46
bfc025fc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:47
bfc02600:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:48
bfc02604:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:50
bfc02608:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:51
bfc0260c:	3c029134 	lui	v0,0x9134
bfc02610:	3442bbd0 	ori	v0,v0,0xbbd0
bfc02614:	3c039134 	lui	v1,0x9134
bfc02618:	3463bbd0 	ori	v1,v1,0xbbd0
bfc0261c:	3c04800d 	lui	a0,0x800d
bfc02620:	34847fa6 	ori	a0,a0,0x7fa6
bfc02624:	3c059ef6 	lui	a1,0x9ef6
bfc02628:	34a55910 	ori	a1,a1,0x5910
bfc0262c:	2487537f 	addiu	a3,a0,21375
bfc02630:	ac85537e 	sw	a1,21374(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:52
bfc02634:	3c14bfc0 	lui	s4,0xbfc0
bfc02638:	26942644 	addiu	s4,s4,9796
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:53
bfc0263c:	01000011 	mthi	t0
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:54
bfc02640:	0110001b 	divu	zero,t0,s0
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:55
bfc02644:	9482537f 	lhu	v0,21375(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:56
bfc02648:	00004810 	mfhi	t1
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:57
bfc0264c:	11280068 	beq	t1,t0,bfc027f0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:58
bfc02650:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:59
bfc02654:	16570066 	bne	s2,s7,bfc027f0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:60
bfc02658:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:61
bfc0265c:	14430064 	bne	v0,v1,bfc027f0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:62
bfc02660:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:63
bfc02664:	40164000 	mfc0	s6,c0_badvaddr
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:64
bfc02668:	14f60061 	bne	a3,s6,bfc027f0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:65
bfc0266c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:67
bfc02670:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:68
bfc02674:	3c02fe29 	lui	v0,0xfe29
bfc02678:	3442b934 	ori	v0,v0,0xb934
bfc0267c:	3c03fe29 	lui	v1,0xfe29
bfc02680:	3463b934 	ori	v1,v1,0xb934
bfc02684:	3c04800d 	lui	a0,0x800d
bfc02688:	3484628c 	ori	a0,a0,0x628c
bfc0268c:	3c05a15a 	lui	a1,0xa15a
bfc02690:	34a50146 	ori	a1,a1,0x146
bfc02694:	248756cf 	addiu	a3,a0,22223
bfc02698:	ac8556cc 	sw	a1,22220(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:69
bfc0269c:	3c14bfc0 	lui	s4,0xbfc0
bfc026a0:	269426a4 	addiu	s4,s4,9892
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:70
bfc026a4:	948256cf 	lhu	v0,22223(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:71
bfc026a8:	0208001b 	divu	zero,s0,t0
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:72
bfc026ac:	16570050 	bne	s2,s7,bfc027f0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:73
bfc026b0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:74
bfc026b4:	1443004e 	bne	v0,v1,bfc027f0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:75
bfc026b8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:76
bfc026bc:	40164000 	mfc0	s6,c0_badvaddr
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:77
bfc026c0:	14f6004b 	bne	a3,s6,bfc027f0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:78
bfc026c4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:80
bfc026c8:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:81
bfc026cc:	3c028003 	lui	v0,0x8003
bfc026d0:	344224b4 	ori	v0,v0,0x24b4
bfc026d4:	3c038003 	lui	v1,0x8003
bfc026d8:	346324b4 	ori	v1,v1,0x24b4
bfc026dc:	3c04800d 	lui	a0,0x800d
bfc026e0:	348424b4 	ori	a0,a0,0x24b4
bfc026e4:	3c05566d 	lui	a1,0x566d
bfc026e8:	34a5adc2 	ori	a1,a1,0xadc2
bfc026ec:	2487d5c3 	addiu	a3,a0,-10813
bfc026f0:	3c010001 	lui	at,0x1
bfc026f4:	00240821 	addu	at,at,a0
bfc026f8:	ac25d5c0 	sw	a1,-10816(at)
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:82
bfc026fc:	3c14bfc0 	lui	s4,0xbfc0
bfc02700:	2694270c 	addiu	s4,s4,9996
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:83
bfc02704:	01000013 	mtlo	t0
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:84
bfc02708:	01100019 	multu	t0,s0
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:85
bfc0270c:	9482d5c3 	lhu	v0,-10813(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:86
bfc02710:	00004810 	mfhi	t1
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:87
bfc02714:	11280036 	beq	t1,t0,bfc027f0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:88
bfc02718:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:89
bfc0271c:	16570034 	bne	s2,s7,bfc027f0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:90
bfc02720:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:91
bfc02724:	14430032 	bne	v0,v1,bfc027f0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:92
bfc02728:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:93
bfc0272c:	40164000 	mfc0	s6,c0_badvaddr
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:94
bfc02730:	14f6002f 	bne	a3,s6,bfc027f0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:95
bfc02734:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:97
bfc02738:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:98
bfc0273c:	3c0252b9 	lui	v0,0x52b9
bfc02740:	3442c98a 	ori	v0,v0,0xc98a
bfc02744:	3c0352b9 	lui	v1,0x52b9
bfc02748:	3463c98a 	ori	v1,v1,0xc98a
bfc0274c:	3c04800d 	lui	a0,0x800d
bfc02750:	34846024 	ori	a0,a0,0x6024
bfc02754:	3c05038f 	lui	a1,0x38f
bfc02758:	34a518a2 	ori	a1,a1,0x18a2
bfc0275c:	24870765 	addiu	a3,a0,1893
bfc02760:	ac850764 	sw	a1,1892(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:99
bfc02764:	3c14bfc0 	lui	s4,0xbfc0
bfc02768:	2694276c 	addiu	s4,s4,10092
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:100
bfc0276c:	94820765 	lhu	v0,1893(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:101
bfc02770:	01120019 	multu	t0,s2
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:102
bfc02774:	1657001e 	bne	s2,s7,bfc027f0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:103
bfc02778:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:104
bfc0277c:	1443001c 	bne	v0,v1,bfc027f0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:105
bfc02780:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:106
bfc02784:	40164000 	mfc0	s6,c0_badvaddr
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:107
bfc02788:	14f60019 	bne	a3,s6,bfc027f0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:108
bfc0278c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:110
bfc02790:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:111
bfc02794:	3c022b77 	lui	v0,0x2b77
bfc02798:	34421238 	ori	v0,v0,0x1238
bfc0279c:	3c032b77 	lui	v1,0x2b77
bfc027a0:	34631238 	ori	v1,v1,0x1238
bfc027a4:	3c04800d 	lui	a0,0x800d
bfc027a8:	34848294 	ori	a0,a0,0x8294
bfc027ac:	3c05cd7a 	lui	a1,0xcd7a
bfc027b0:	34a5b654 	ori	a1,a1,0xb654
bfc027b4:	248779f5 	addiu	a3,a0,31221
bfc027b8:	ac8579f4 	sw	a1,31220(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:112
bfc027bc:	3c14bfc0 	lui	s4,0xbfc0
bfc027c0:	269427c8 	addiu	s4,s4,10184
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:113
bfc027c4:	40927000 	mtc0	s2,c0_epc
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:114
bfc027c8:	948279f5 	lhu	v0,31221(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:115
bfc027cc:	40887000 	mtc0	t0,c0_epc
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:116
bfc027d0:	16570007 	bne	s2,s7,bfc027f0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:117
bfc027d4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:118
bfc027d8:	14430005 	bne	v0,v1,bfc027f0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:119
bfc027dc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:120
bfc027e0:	40164000 	mfc0	s6,c0_badvaddr
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:121
bfc027e4:	14f60002 	bne	a3,s6,bfc027f0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:122
bfc027e8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:124
bfc027ec:	26730001 	addiu	s3,s3,1

bfc027f0 <inst_error>:
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:127
bfc027f0:	00104e00 	sll	t1,s0,0x18
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:128
bfc027f4:	01334025 	or	t0,t1,s3
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:129
bfc027f8:	ae280000 	sw	t0,0(s1)
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:130
bfc027fc:	03e00008 	jr	ra
/home/yfy/func_test_v0.01/soft/func/inst/n72_lhu_adel_ex.S:131
bfc02800:	00000000 	nop
	...

bfc02810 <n67_add_ov_ex_test>:
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:7
bfc02810:	26100001 	addiu	s0,s0,1
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:8
bfc02814:	3c08800d 	lui	t0,0x800d
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:9
bfc02818:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:10
bfc0281c:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:12
bfc02820:	40805800 	mtc0	zero,$11
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:13
bfc02824:	3c170040 	lui	s7,0x40
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:14
bfc02828:	40976000 	mtc0	s7,c0_sr
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:15
bfc0282c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:16
bfc02830:	3c170003 	lui	s7,0x3
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:19
bfc02834:	3c0273b2 	lui	v0,0x73b2
bfc02838:	3442cf92 	ori	v0,v0,0xcf92
bfc0283c:	3c0373b2 	lui	v1,0x73b2
bfc02840:	3463cf92 	ori	v1,v1,0xcf92
bfc02844:	3c0490a5 	lui	a0,0x90a5
bfc02848:	3484f39c 	ori	a0,a0,0xf39c
bfc0284c:	3c05d421 	lui	a1,0xd421
bfc02850:	34a579e0 	ori	a1,a1,0x79e0
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:20
bfc02854:	3c14bfc0 	lui	s4,0xbfc0
bfc02858:	2694285c 	addiu	s4,s4,10332
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:21
bfc0285c:	00851020 	add	v0,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:22
bfc02860:	1657007a 	bne	s2,s7,bfc02a4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:23
bfc02864:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:24
bfc02868:	14430078 	bne	v0,v1,bfc02a4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:25
bfc0286c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:27
bfc02870:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:28
bfc02874:	3c021a37 	lui	v0,0x1a37
bfc02878:	34426500 	ori	v0,v0,0x6500
bfc0287c:	3c031a37 	lui	v1,0x1a37
bfc02880:	34636500 	ori	v1,v1,0x6500
bfc02884:	3c042a3c 	lui	a0,0x2a3c
bfc02888:	3484a166 	ori	a0,a0,0xa166
bfc0288c:	3c05797f 	lui	a1,0x797f
bfc02890:	34a530b9 	ori	a1,a1,0x30b9
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:29
bfc02894:	3c14bfc0 	lui	s4,0xbfc0
bfc02898:	269428a4 	addiu	s4,s4,10404
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:30
bfc0289c:	ad080004 	sw	t0,4(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:31
bfc028a0:	ad140004 	sw	s4,4(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:32
bfc028a4:	00851020 	add	v0,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:33
bfc028a8:	ad140000 	sw	s4,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:34
bfc028ac:	8d090004 	lw	t1,4(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:35
bfc028b0:	15340066 	bne	t1,s4,bfc02a4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:36
bfc028b4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:37
bfc028b8:	16570064 	bne	s2,s7,bfc02a4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:38
bfc028bc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:39
bfc028c0:	14430062 	bne	v0,v1,bfc02a4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:40
bfc028c4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:41
bfc028c8:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:42
bfc028cc:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:44
bfc028d0:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:45
bfc028d4:	3c14bfc0 	lui	s4,0xbfc0
bfc028d8:	26942904 	addiu	s4,s4,10500
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:46
bfc028dc:	01000011 	mthi	t0
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:47
bfc028e0:	3c0257b9 	lui	v0,0x57b9
bfc028e4:	3442e040 	ori	v0,v0,0xe040
bfc028e8:	3c0357b9 	lui	v1,0x57b9
bfc028ec:	3463e040 	ori	v1,v1,0xe040
bfc028f0:	3c048054 	lui	a0,0x8054
bfc028f4:	348413c0 	ori	a0,a0,0x13c0
bfc028f8:	3c05dea0 	lui	a1,0xdea0
bfc028fc:	34a5e60a 	ori	a1,a1,0xe60a
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:48
bfc02900:	0110001b 	divu	zero,t0,s0
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:49
bfc02904:	00851020 	add	v0,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:50
bfc02908:	00004810 	mfhi	t1
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:51
bfc0290c:	1128004f 	beq	t1,t0,bfc02a4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:52
bfc02910:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:53
bfc02914:	1657004d 	bne	s2,s7,bfc02a4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:54
bfc02918:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:55
bfc0291c:	1443004b 	bne	v0,v1,bfc02a4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:56
bfc02920:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:58
bfc02924:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:59
bfc02928:	3c0289a0 	lui	v0,0x89a0
bfc0292c:	3442a980 	ori	v0,v0,0xa980
bfc02930:	3c0389a0 	lui	v1,0x89a0
bfc02934:	3463a980 	ori	v1,v1,0xa980
bfc02938:	3c04474d 	lui	a0,0x474d
bfc0293c:	3484b690 	ori	a0,a0,0xb690
bfc02940:	3c054d4c 	lui	a1,0x4d4c
bfc02944:	34a5bef8 	ori	a1,a1,0xbef8
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:60
bfc02948:	3c14bfc0 	lui	s4,0xbfc0
bfc0294c:	26942950 	addiu	s4,s4,10576
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:61
bfc02950:	00851020 	add	v0,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:62
bfc02954:	0208001b 	divu	zero,s0,t0
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:63
bfc02958:	1657003c 	bne	s2,s7,bfc02a4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:64
bfc0295c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:65
bfc02960:	1443003a 	bne	v0,v1,bfc02a4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:66
bfc02964:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:68
bfc02968:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:69
bfc0296c:	3c020f29 	lui	v0,0xf29
bfc02970:	3442c5e0 	ori	v0,v0,0xc5e0
bfc02974:	3c030f29 	lui	v1,0xf29
bfc02978:	3463c5e0 	ori	v1,v1,0xc5e0
bfc0297c:	3c046818 	lui	a0,0x6818
bfc02980:	3484e272 	ori	a0,a0,0xe272
bfc02984:	3c056f6d 	lui	a1,0x6f6d
bfc02988:	34a52620 	ori	a1,a1,0x2620
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:70
bfc0298c:	3c14bfc0 	lui	s4,0xbfc0
bfc02990:	2694299c 	addiu	s4,s4,10652
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:71
bfc02994:	01000013 	mtlo	t0
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:72
bfc02998:	01100019 	multu	t0,s0
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:73
bfc0299c:	00851020 	add	v0,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:74
bfc029a0:	00004810 	mfhi	t1
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:75
bfc029a4:	11280029 	beq	t1,t0,bfc02a4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:76
bfc029a8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:77
bfc029ac:	16570027 	bne	s2,s7,bfc02a4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:78
bfc029b0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:79
bfc029b4:	14430025 	bne	v0,v1,bfc02a4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:80
bfc029b8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:82
bfc029bc:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:83
bfc029c0:	3c029f1c 	lui	v0,0x9f1c
bfc029c4:	34425870 	ori	v0,v0,0x5870
bfc029c8:	3c039f1c 	lui	v1,0x9f1c
bfc029cc:	34635870 	ori	v1,v1,0x5870
bfc029d0:	3c04a7b7 	lui	a0,0xa7b7
bfc029d4:	3484a764 	ori	a0,a0,0xa764
bfc029d8:	3c05c2d6 	lui	a1,0xc2d6
bfc029dc:	34a51d9c 	ori	a1,a1,0x1d9c
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:84
bfc029e0:	3c14bfc0 	lui	s4,0xbfc0
bfc029e4:	269429e8 	addiu	s4,s4,10728
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:85
bfc029e8:	00851020 	add	v0,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:86
bfc029ec:	01120019 	multu	t0,s2
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:87
bfc029f0:	16570016 	bne	s2,s7,bfc02a4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:88
bfc029f4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:89
bfc029f8:	14430014 	bne	v0,v1,bfc02a4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:90
bfc029fc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:92
bfc02a00:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:93
bfc02a04:	3c0231e6 	lui	v0,0x31e6
bfc02a08:	3442699f 	ori	v0,v0,0x699f
bfc02a0c:	3c0331e6 	lui	v1,0x31e6
bfc02a10:	3463699f 	ori	v1,v1,0x699f
bfc02a14:	3c048a78 	lui	a0,0x8a78
bfc02a18:	3484cc40 	ori	a0,a0,0xcc40
bfc02a1c:	3c05ab72 	lui	a1,0xab72
bfc02a20:	34a584da 	ori	a1,a1,0x84da
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:94
bfc02a24:	3c14bfc0 	lui	s4,0xbfc0
bfc02a28:	26942a30 	addiu	s4,s4,10800
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:95
bfc02a2c:	40927000 	mtc0	s2,c0_epc
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:96
bfc02a30:	00851020 	add	v0,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:97
bfc02a34:	40887000 	mtc0	t0,c0_epc
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:98
bfc02a38:	16570004 	bne	s2,s7,bfc02a4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:99
bfc02a3c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:100
bfc02a40:	14430002 	bne	v0,v1,bfc02a4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:101
bfc02a44:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:103
bfc02a48:	26730001 	addiu	s3,s3,1

bfc02a4c <inst_error>:
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:106
bfc02a4c:	00104e00 	sll	t1,s0,0x18
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:107
bfc02a50:	01334025 	or	t0,t1,s3
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:108
bfc02a54:	ae280000 	sw	t0,0(s1)
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:109
bfc02a58:	03e00008 	jr	ra
/home/yfy/func_test_v0.01/soft/func/inst/n67_add_ov_ex.S:110
bfc02a5c:	00000000 	nop

bfc02a60 <n80_bgez_ds_ex_test>:
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:7
bfc02a60:	26100001 	addiu	s0,s0,1
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:8
bfc02a64:	3c08800d 	lui	t0,0x800d
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:10
bfc02a68:	40805800 	mtc0	zero,$11
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:11
bfc02a6c:	3c170040 	lui	s7,0x40
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:12
bfc02a70:	40976000 	mtc0	s7,c0_sr
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:13
bfc02a74:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:16
bfc02a78:	24120001 	li	s2,1
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:17
bfc02a7c:	3c170001 	lui	s7,0x1
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:18
bfc02a80:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:19
bfc02a84:	3c14bfc0 	lui	s4,0xbfc0
bfc02a88:	26942a8c 	addiu	s4,s4,10892
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:20
bfc02a8c:	040100af 	b	bfc02d4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:21
bfc02a90:	0000000c 	syscall
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:22
bfc02a94:	165700ad 	bne	s2,s7,bfc02d4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:23
bfc02a98:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:24
bfc02a9c:	24120001 	li	s2,1
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:25
bfc02aa0:	3c14bfc0 	lui	s4,0xbfc0
bfc02aa4:	26942aa8 	addiu	s4,s4,10920
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:26
bfc02aa8:	050100a8 	bgez	t0,bfc02d4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:27
bfc02aac:	0000000c 	syscall
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:28
bfc02ab0:	165700a6 	bne	s2,s7,bfc02d4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:29
bfc02ab4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:31
bfc02ab8:	24120002 	li	s2,2
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:32
bfc02abc:	3c170002 	lui	s7,0x2
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:33
bfc02ac0:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:34
bfc02ac4:	3c14bfc0 	lui	s4,0xbfc0
bfc02ac8:	26942acc 	addiu	s4,s4,10956
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:35
bfc02acc:	0401009f 	b	bfc02d4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:36
bfc02ad0:	0000000d 	break
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:37
bfc02ad4:	1657009d 	bne	s2,s7,bfc02d4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:38
bfc02ad8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:39
bfc02adc:	24120002 	li	s2,2
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:40
bfc02ae0:	3c14bfc0 	lui	s4,0xbfc0
bfc02ae4:	26942ae8 	addiu	s4,s4,10984
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:41
bfc02ae8:	05010098 	bgez	t0,bfc02d4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:42
bfc02aec:	0000000d 	break
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:43
bfc02af0:	16570096 	bne	s2,s7,bfc02d4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:44
bfc02af4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:46
bfc02af8:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:47
bfc02afc:	3c170003 	lui	s7,0x3
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:48
bfc02b00:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:49
bfc02b04:	3c14bfc0 	lui	s4,0xbfc0
bfc02b08:	26942b1c 	addiu	s4,s4,11036
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:50
bfc02b0c:	3c04ba03 	lui	a0,0xba03
bfc02b10:	34844f60 	ori	a0,a0,0x4f60
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:51
bfc02b14:	3c05b615 	lui	a1,0xb615
bfc02b18:	34a5fd67 	ori	a1,a1,0xfd67
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:52
bfc02b1c:	0401008b 	b	bfc02d4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:53
bfc02b20:	0085b820 	add	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:54
bfc02b24:	16570089 	bne	s2,s7,bfc02d4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:55
bfc02b28:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:56
bfc02b2c:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:57
bfc02b30:	3c14bfc0 	lui	s4,0xbfc0
bfc02b34:	26942b38 	addiu	s4,s4,11064
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:58
bfc02b38:	05010084 	bgez	t0,bfc02d4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:59
bfc02b3c:	0085b820 	add	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:60
bfc02b40:	ad170000 	sw	s7,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:61
bfc02b44:	16570081 	bne	s2,s7,bfc02d4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:62
bfc02b48:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:63
bfc02b4c:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:64
bfc02b50:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:65
bfc02b54:	3c14bfc0 	lui	s4,0xbfc0
bfc02b58:	26942b64 	addiu	s4,s4,11108
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:66
bfc02b5c:	3c047fff 	lui	a0,0x7fff
bfc02b60:	3484c19e 	ori	a0,a0,0xc19e
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:67
bfc02b64:	04010079 	b	bfc02d4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:68
bfc02b68:	20976512 	addi	s7,a0,25874
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:69
bfc02b6c:	16570077 	bne	s2,s7,bfc02d4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:70
bfc02b70:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:71
bfc02b74:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:72
bfc02b78:	3c14bfc0 	lui	s4,0xbfc0
bfc02b7c:	26942b80 	addiu	s4,s4,11136
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:73
bfc02b80:	05010072 	bgez	t0,bfc02d4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:74
bfc02b84:	20976512 	addi	s7,a0,25874
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:75
bfc02b88:	16570070 	bne	s2,s7,bfc02d4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:76
bfc02b8c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:77
bfc02b90:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:78
bfc02b94:	3c14bfc0 	lui	s4,0xbfc0
bfc02b98:	26942bac 	addiu	s4,s4,11180
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:79
bfc02b9c:	3c04a85e 	lui	a0,0xa85e
bfc02ba0:	34847d00 	ori	a0,a0,0x7d00
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:80
bfc02ba4:	3c056b7e 	lui	a1,0x6b7e
bfc02ba8:	34a58e36 	ori	a1,a1,0x8e36
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:81
bfc02bac:	04010067 	b	bfc02d4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:82
bfc02bb0:	0085b822 	sub	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:83
bfc02bb4:	16570065 	bne	s2,s7,bfc02d4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:84
bfc02bb8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:85
bfc02bbc:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:86
bfc02bc0:	3c14bfc0 	lui	s4,0xbfc0
bfc02bc4:	26942bc8 	addiu	s4,s4,11208
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:87
bfc02bc8:	05010060 	bgez	t0,bfc02d4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:88
bfc02bcc:	0085b822 	sub	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:89
bfc02bd0:	1657005e 	bne	s2,s7,bfc02d4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:90
bfc02bd4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:92
bfc02bd8:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:93
bfc02bdc:	3c170004 	lui	s7,0x4
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:94
bfc02be0:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:95
bfc02be4:	3c14bfc0 	lui	s4,0xbfc0
bfc02be8:	26942bec 	addiu	s4,s4,11244
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:96
bfc02bec:	04010057 	b	bfc02d4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:97
bfc02bf0:	8d170002 	lw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:98
bfc02bf4:	16570055 	bne	s2,s7,bfc02d4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:99
bfc02bf8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:100
bfc02bfc:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:101
bfc02c00:	3c14bfc0 	lui	s4,0xbfc0
bfc02c04:	26942c08 	addiu	s4,s4,11272
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:102
bfc02c08:	05010050 	bgez	t0,bfc02d4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:103
bfc02c0c:	8d170002 	lw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:104
bfc02c10:	1657004e 	bne	s2,s7,bfc02d4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:105
bfc02c14:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:106
bfc02c18:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:107
bfc02c1c:	3c14bfc0 	lui	s4,0xbfc0
bfc02c20:	26942c24 	addiu	s4,s4,11300
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:108
bfc02c24:	04010049 	b	bfc02d4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:109
bfc02c28:	85170001 	lh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:110
bfc02c2c:	02f2001b 	divu	zero,s7,s2
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:111
bfc02c30:	16570046 	bne	s2,s7,bfc02d4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:112
bfc02c34:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:113
bfc02c38:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:114
bfc02c3c:	3c14bfc0 	lui	s4,0xbfc0
bfc02c40:	26942c44 	addiu	s4,s4,11332
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:115
bfc02c44:	05010041 	bgez	t0,bfc02d4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:116
bfc02c48:	85170001 	lh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:117
bfc02c4c:	1657003f 	bne	s2,s7,bfc02d4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:118
bfc02c50:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:119
bfc02c54:	3c14bfc0 	lui	s4,0xbfc0
bfc02c58:	26942c5c 	addiu	s4,s4,11356
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:120
bfc02c5c:	0401003b 	b	bfc02d4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:121
bfc02c60:	95170003 	lhu	s7,3(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:122
bfc02c64:	16570039 	bne	s2,s7,bfc02d4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:123
bfc02c68:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:124
bfc02c6c:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:125
bfc02c70:	3c14bfc0 	lui	s4,0xbfc0
bfc02c74:	26942c78 	addiu	s4,s4,11384
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:126
bfc02c78:	05010034 	bgez	t0,bfc02d4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:127
bfc02c7c:	95170003 	lhu	s7,3(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:128
bfc02c80:	16570032 	bne	s2,s7,bfc02d4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:129
bfc02c84:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:131
bfc02c88:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:132
bfc02c8c:	3c170005 	lui	s7,0x5
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:133
bfc02c90:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:134
bfc02c94:	3c14bfc0 	lui	s4,0xbfc0
bfc02c98:	26942c9c 	addiu	s4,s4,11420
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:135
bfc02c9c:	0401002b 	b	bfc02d4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:136
bfc02ca0:	ad170002 	sw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:137
bfc02ca4:	16570029 	bne	s2,s7,bfc02d4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:138
bfc02ca8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:139
bfc02cac:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:140
bfc02cb0:	3c14bfc0 	lui	s4,0xbfc0
bfc02cb4:	26942cb8 	addiu	s4,s4,11448
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:141
bfc02cb8:	05010024 	bgez	t0,bfc02d4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:142
bfc02cbc:	ad170002 	sw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:143
bfc02cc0:	16570022 	bne	s2,s7,bfc02d4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:144
bfc02cc4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:145
bfc02cc8:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:146
bfc02ccc:	3c14bfc0 	lui	s4,0xbfc0
bfc02cd0:	26942cd4 	addiu	s4,s4,11476
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:147
bfc02cd4:	0401001d 	b	bfc02d4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:148
bfc02cd8:	a5170001 	sh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:149
bfc02cdc:	1657001b 	bne	s2,s7,bfc02d4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:150
bfc02ce0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:151
bfc02ce4:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:152
bfc02ce8:	3c14bfc0 	lui	s4,0xbfc0
bfc02cec:	26942cf0 	addiu	s4,s4,11504
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:153
bfc02cf0:	05010016 	bgez	t0,bfc02d4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:154
bfc02cf4:	a5170001 	sh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:155
bfc02cf8:	16570014 	bne	s2,s7,bfc02d4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:156
bfc02cfc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:159
bfc02d00:	24120007 	li	s2,7
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:160
bfc02d04:	3c170007 	lui	s7,0x7
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:161
bfc02d08:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:162
bfc02d0c:	3c14bfc0 	lui	s4,0xbfc0
bfc02d10:	26942d14 	addiu	s4,s4,11540
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:163
bfc02d14:	0401000d 	b	bfc02d4c <inst_error>
bfc02d18:	9e3c56aa 	0x9e3c56aa
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:165
bfc02d1c:	02f20018 	mult	s7,s2
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:166
bfc02d20:	1657000a 	bne	s2,s7,bfc02d4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:167
bfc02d24:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:168
bfc02d28:	24120007 	li	s2,7
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:169
bfc02d2c:	3c14bfc0 	lui	s4,0xbfc0
bfc02d30:	26942d38 	addiu	s4,s4,11576
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:170
bfc02d34:	02f20018 	mult	s7,s2
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:171
bfc02d38:	05010004 	bgez	t0,bfc02d4c <inst_error>
bfc02d3c:	ec1ba960 	swc3	$27,-22176(zero)
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:173
bfc02d40:	16570002 	bne	s2,s7,bfc02d4c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:174
bfc02d44:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:176
bfc02d48:	26730001 	addiu	s3,s3,1

bfc02d4c <inst_error>:
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:179
bfc02d4c:	00104e00 	sll	t1,s0,0x18
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:180
bfc02d50:	01334025 	or	t0,t1,s3
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:181
bfc02d54:	ae280000 	sw	t0,0(s1)
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:182
bfc02d58:	03e00008 	jr	ra
/home/yfy/func_test_v0.01/soft/func/inst/n80_bgez_ds_ex.S:183
bfc02d5c:	00000000 	nop

bfc02d60 <n68_addi_ov_ex_test>:
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:7
bfc02d60:	26100001 	addiu	s0,s0,1
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:8
bfc02d64:	3c08800d 	lui	t0,0x800d
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:9
bfc02d68:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:10
bfc02d6c:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:12
bfc02d70:	40805800 	mtc0	zero,$11
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:13
bfc02d74:	3c170040 	lui	s7,0x40
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:14
bfc02d78:	40976000 	mtc0	s7,c0_sr
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:15
bfc02d7c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:16
bfc02d80:	3c170003 	lui	s7,0x3
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:19
bfc02d84:	3c02deb0 	lui	v0,0xdeb0
bfc02d88:	34426fd0 	ori	v0,v0,0x6fd0
bfc02d8c:	3c03deb0 	lui	v1,0xdeb0
bfc02d90:	34636fd0 	ori	v1,v1,0x6fd0
bfc02d94:	24042c26 	li	a0,11302
bfc02d98:	3c047fff 	lui	a0,0x7fff
bfc02d9c:	3484f84b 	ori	a0,a0,0xf84b
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:20
bfc02da0:	3c14bfc0 	lui	s4,0xbfc0
bfc02da4:	26942da8 	addiu	s4,s4,11688
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:21
bfc02da8:	20822c26 	addi	v0,a0,11302
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:22
bfc02dac:	16570072 	bne	s2,s7,bfc02f78 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:23
bfc02db0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:25
bfc02db4:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:26
bfc02db8:	3c026c53 	lui	v0,0x6c53
bfc02dbc:	344292aa 	ori	v0,v0,0x92aa
bfc02dc0:	3c036c53 	lui	v1,0x6c53
bfc02dc4:	346392aa 	ori	v1,v1,0x92aa
bfc02dc8:	240454b0 	li	a0,21680
bfc02dcc:	3c047fff 	lui	a0,0x7fff
bfc02dd0:	3484f480 	ori	a0,a0,0xf480
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:27
bfc02dd4:	3c14bfc0 	lui	s4,0xbfc0
bfc02dd8:	26942de4 	addiu	s4,s4,11748
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:28
bfc02ddc:	ad080004 	sw	t0,4(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:29
bfc02de0:	ad140004 	sw	s4,4(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:30
bfc02de4:	208254b0 	addi	v0,a0,21680
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:31
bfc02de8:	ad140000 	sw	s4,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:32
bfc02dec:	8d090004 	lw	t1,4(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:33
bfc02df0:	15340061 	bne	t1,s4,bfc02f78 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:34
bfc02df4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:35
bfc02df8:	1657005f 	bne	s2,s7,bfc02f78 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:36
bfc02dfc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:37
bfc02e00:	1443005d 	bne	v0,v1,bfc02f78 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:38
bfc02e04:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:39
bfc02e08:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:40
bfc02e0c:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:42
bfc02e10:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:43
bfc02e14:	3c0260a7 	lui	v0,0x60a7
bfc02e18:	34421e30 	ori	v0,v0,0x1e30
bfc02e1c:	3c0360a7 	lui	v1,0x60a7
bfc02e20:	34631e30 	ori	v1,v1,0x1e30
bfc02e24:	240471db 	li	a0,29147
bfc02e28:	3c047fff 	lui	a0,0x7fff
bfc02e2c:	34849b21 	ori	a0,a0,0x9b21
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:44
bfc02e30:	3c14bfc0 	lui	s4,0xbfc0
bfc02e34:	26942e40 	addiu	s4,s4,11840
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:45
bfc02e38:	01000011 	mthi	t0
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:46
bfc02e3c:	0110001b 	divu	zero,t0,s0
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:47
bfc02e40:	208271db 	addi	v0,a0,29147
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:48
bfc02e44:	00004810 	mfhi	t1
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:49
bfc02e48:	1128004b 	beq	t1,t0,bfc02f78 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:50
bfc02e4c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:51
bfc02e50:	16570049 	bne	s2,s7,bfc02f78 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:52
bfc02e54:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:53
bfc02e58:	14430047 	bne	v0,v1,bfc02f78 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:54
bfc02e5c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:56
bfc02e60:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:57
bfc02e64:	3c02e607 	lui	v0,0xe607
bfc02e68:	34425700 	ori	v0,v0,0x5700
bfc02e6c:	3c03e607 	lui	v1,0xe607
bfc02e70:	34635700 	ori	v1,v1,0x5700
bfc02e74:	3404be07 	li	a0,0xbe07
bfc02e78:	3c048000 	lui	a0,0x8000
bfc02e7c:	34843a57 	ori	a0,a0,0x3a57
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:58
bfc02e80:	3c14bfc0 	lui	s4,0xbfc0
bfc02e84:	26942e88 	addiu	s4,s4,11912
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:59
bfc02e88:	2082be07 	addi	v0,a0,-16889
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:60
bfc02e8c:	0208001b 	divu	zero,s0,t0
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:61
bfc02e90:	16570039 	bne	s2,s7,bfc02f78 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:62
bfc02e94:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:63
bfc02e98:	14430037 	bne	v0,v1,bfc02f78 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:64
bfc02e9c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:66
bfc02ea0:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:67
bfc02ea4:	3c028f7e 	lui	v0,0x8f7e
bfc02ea8:	3442e6c0 	ori	v0,v0,0xe6c0
bfc02eac:	3c038f7e 	lui	v1,0x8f7e
bfc02eb0:	3463e6c0 	ori	v1,v1,0xe6c0
bfc02eb4:	3404845d 	li	a0,0x845d
bfc02eb8:	3c048000 	lui	a0,0x8000
bfc02ebc:	34842c93 	ori	a0,a0,0x2c93
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:68
bfc02ec0:	3c14bfc0 	lui	s4,0xbfc0
bfc02ec4:	26942ed0 	addiu	s4,s4,11984
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:69
bfc02ec8:	01000013 	mtlo	t0
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:70
bfc02ecc:	01100019 	multu	t0,s0
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:71
bfc02ed0:	2082845d 	addi	v0,a0,-31651
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:72
bfc02ed4:	00004810 	mfhi	t1
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:73
bfc02ed8:	11280027 	beq	t1,t0,bfc02f78 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:74
bfc02edc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:75
bfc02ee0:	16570025 	bne	s2,s7,bfc02f78 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:76
bfc02ee4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:77
bfc02ee8:	14430023 	bne	v0,v1,bfc02f78 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:78
bfc02eec:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:80
bfc02ef0:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:81
bfc02ef4:	3c02bd3e 	lui	v0,0xbd3e
bfc02ef8:	3442a700 	ori	v0,v0,0xa700
bfc02efc:	3c03bd3e 	lui	v1,0xbd3e
bfc02f00:	3463a700 	ori	v1,v1,0xa700
bfc02f04:	340481f4 	li	a0,0x81f4
bfc02f08:	3c048000 	lui	a0,0x8000
bfc02f0c:	34844016 	ori	a0,a0,0x4016
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:82
bfc02f10:	3c14bfc0 	lui	s4,0xbfc0
bfc02f14:	26942f18 	addiu	s4,s4,12056
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:83
bfc02f18:	208281f4 	addi	v0,a0,-32268
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:84
bfc02f1c:	01120019 	multu	t0,s2
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:85
bfc02f20:	16570015 	bne	s2,s7,bfc02f78 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:86
bfc02f24:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:87
bfc02f28:	14430013 	bne	v0,v1,bfc02f78 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:88
bfc02f2c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:90
bfc02f30:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:91
bfc02f34:	3c020615 	lui	v0,0x615
bfc02f38:	34422570 	ori	v0,v0,0x2570
bfc02f3c:	3c030615 	lui	v1,0x615
bfc02f40:	34632570 	ori	v1,v1,0x2570
bfc02f44:	3404baa6 	li	a0,0xbaa6
bfc02f48:	3c048000 	lui	a0,0x8000
bfc02f4c:	34843510 	ori	a0,a0,0x3510
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:92
bfc02f50:	3c14bfc0 	lui	s4,0xbfc0
bfc02f54:	26942f5c 	addiu	s4,s4,12124
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:93
bfc02f58:	40927000 	mtc0	s2,c0_epc
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:94
bfc02f5c:	2082baa6 	addi	v0,a0,-17754
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:95
bfc02f60:	40887000 	mtc0	t0,c0_epc
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:96
bfc02f64:	16570004 	bne	s2,s7,bfc02f78 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:97
bfc02f68:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:98
bfc02f6c:	14430002 	bne	v0,v1,bfc02f78 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:99
bfc02f70:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:101
bfc02f74:	26730001 	addiu	s3,s3,1

bfc02f78 <inst_error>:
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:104
bfc02f78:	00104e00 	sll	t1,s0,0x18
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:105
bfc02f7c:	01334025 	or	t0,t1,s3
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:106
bfc02f80:	ae280000 	sw	t0,0(s1)
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:107
bfc02f84:	03e00008 	jr	ra
/home/yfy/func_test_v0.01/soft/func/inst/n68_addi_ov_ex.S:108
bfc02f88:	00000000 	nop
bfc02f8c:	00000000 	nop

bfc02f90 <n81_bgtz_ds_ex_test>:
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:7
bfc02f90:	26100001 	addiu	s0,s0,1
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:8
bfc02f94:	3c08800d 	lui	t0,0x800d
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:10
bfc02f98:	40805800 	mtc0	zero,$11
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:11
bfc02f9c:	3c170040 	lui	s7,0x40
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:12
bfc02fa0:	40976000 	mtc0	s7,c0_sr
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:13
bfc02fa4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:16
bfc02fa8:	24120001 	li	s2,1
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:17
bfc02fac:	3c170001 	lui	s7,0x1
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:18
bfc02fb0:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:19
bfc02fb4:	3c14bfc0 	lui	s4,0xbfc0
bfc02fb8:	26942fbc 	addiu	s4,s4,12220
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:20
bfc02fbc:	1e4000af 	bgtz	s2,bfc0327c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:21
bfc02fc0:	0000000c 	syscall
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:22
bfc02fc4:	165700ad 	bne	s2,s7,bfc0327c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:23
bfc02fc8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:24
bfc02fcc:	24120001 	li	s2,1
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:25
bfc02fd0:	3c14bfc0 	lui	s4,0xbfc0
bfc02fd4:	26942fd8 	addiu	s4,s4,12248
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:26
bfc02fd8:	1d0000a8 	bgtz	t0,bfc0327c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:27
bfc02fdc:	0000000c 	syscall
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:28
bfc02fe0:	165700a6 	bne	s2,s7,bfc0327c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:29
bfc02fe4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:31
bfc02fe8:	24120002 	li	s2,2
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:32
bfc02fec:	3c170002 	lui	s7,0x2
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:33
bfc02ff0:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:34
bfc02ff4:	3c14bfc0 	lui	s4,0xbfc0
bfc02ff8:	26942ffc 	addiu	s4,s4,12284
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:35
bfc02ffc:	1e40009f 	bgtz	s2,bfc0327c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:36
bfc03000:	0000000d 	break
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:37
bfc03004:	1657009d 	bne	s2,s7,bfc0327c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:38
bfc03008:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:39
bfc0300c:	24120002 	li	s2,2
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:40
bfc03010:	3c14bfc0 	lui	s4,0xbfc0
bfc03014:	26943018 	addiu	s4,s4,12312
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:41
bfc03018:	1d000098 	bgtz	t0,bfc0327c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:42
bfc0301c:	0000000d 	break
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:43
bfc03020:	16570096 	bne	s2,s7,bfc0327c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:44
bfc03024:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:46
bfc03028:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:47
bfc0302c:	3c170003 	lui	s7,0x3
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:48
bfc03030:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:49
bfc03034:	3c14bfc0 	lui	s4,0xbfc0
bfc03038:	2694304c 	addiu	s4,s4,12364
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:50
bfc0303c:	3c04ba03 	lui	a0,0xba03
bfc03040:	34844f60 	ori	a0,a0,0x4f60
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:51
bfc03044:	3c05b615 	lui	a1,0xb615
bfc03048:	34a5fd67 	ori	a1,a1,0xfd67
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:52
bfc0304c:	1e40008b 	bgtz	s2,bfc0327c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:53
bfc03050:	0085b820 	add	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:54
bfc03054:	16570089 	bne	s2,s7,bfc0327c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:55
bfc03058:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:56
bfc0305c:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:57
bfc03060:	3c14bfc0 	lui	s4,0xbfc0
bfc03064:	26943068 	addiu	s4,s4,12392
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:58
bfc03068:	1d000084 	bgtz	t0,bfc0327c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:59
bfc0306c:	0085b820 	add	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:60
bfc03070:	ad170000 	sw	s7,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:61
bfc03074:	16570081 	bne	s2,s7,bfc0327c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:62
bfc03078:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:63
bfc0307c:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:64
bfc03080:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:65
bfc03084:	3c14bfc0 	lui	s4,0xbfc0
bfc03088:	26943094 	addiu	s4,s4,12436
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:66
bfc0308c:	3c047fff 	lui	a0,0x7fff
bfc03090:	3484c19e 	ori	a0,a0,0xc19e
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:67
bfc03094:	1e400079 	bgtz	s2,bfc0327c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:68
bfc03098:	20976512 	addi	s7,a0,25874
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:69
bfc0309c:	16570077 	bne	s2,s7,bfc0327c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:70
bfc030a0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:71
bfc030a4:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:72
bfc030a8:	3c14bfc0 	lui	s4,0xbfc0
bfc030ac:	269430b0 	addiu	s4,s4,12464
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:73
bfc030b0:	1d000072 	bgtz	t0,bfc0327c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:74
bfc030b4:	20976512 	addi	s7,a0,25874
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:75
bfc030b8:	16570070 	bne	s2,s7,bfc0327c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:76
bfc030bc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:77
bfc030c0:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:78
bfc030c4:	3c14bfc0 	lui	s4,0xbfc0
bfc030c8:	269430dc 	addiu	s4,s4,12508
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:79
bfc030cc:	3c04a85e 	lui	a0,0xa85e
bfc030d0:	34847d00 	ori	a0,a0,0x7d00
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:80
bfc030d4:	3c056b7e 	lui	a1,0x6b7e
bfc030d8:	34a58e36 	ori	a1,a1,0x8e36
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:81
bfc030dc:	1e400067 	bgtz	s2,bfc0327c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:82
bfc030e0:	0085b822 	sub	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:83
bfc030e4:	16570065 	bne	s2,s7,bfc0327c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:84
bfc030e8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:85
bfc030ec:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:86
bfc030f0:	3c14bfc0 	lui	s4,0xbfc0
bfc030f4:	269430f8 	addiu	s4,s4,12536
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:87
bfc030f8:	1d000060 	bgtz	t0,bfc0327c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:88
bfc030fc:	0085b822 	sub	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:89
bfc03100:	1657005e 	bne	s2,s7,bfc0327c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:90
bfc03104:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:92
bfc03108:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:93
bfc0310c:	3c170004 	lui	s7,0x4
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:94
bfc03110:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:95
bfc03114:	3c14bfc0 	lui	s4,0xbfc0
bfc03118:	2694311c 	addiu	s4,s4,12572
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:96
bfc0311c:	1e400057 	bgtz	s2,bfc0327c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:97
bfc03120:	8d170002 	lw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:98
bfc03124:	16570055 	bne	s2,s7,bfc0327c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:99
bfc03128:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:100
bfc0312c:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:101
bfc03130:	3c14bfc0 	lui	s4,0xbfc0
bfc03134:	26943138 	addiu	s4,s4,12600
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:102
bfc03138:	1d000050 	bgtz	t0,bfc0327c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:103
bfc0313c:	8d170002 	lw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:104
bfc03140:	1657004e 	bne	s2,s7,bfc0327c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:105
bfc03144:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:106
bfc03148:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:107
bfc0314c:	3c14bfc0 	lui	s4,0xbfc0
bfc03150:	26943154 	addiu	s4,s4,12628
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:108
bfc03154:	1e400049 	bgtz	s2,bfc0327c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:109
bfc03158:	85170001 	lh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:110
bfc0315c:	02f2001b 	divu	zero,s7,s2
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:111
bfc03160:	16570046 	bne	s2,s7,bfc0327c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:112
bfc03164:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:113
bfc03168:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:114
bfc0316c:	3c14bfc0 	lui	s4,0xbfc0
bfc03170:	26943174 	addiu	s4,s4,12660
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:115
bfc03174:	1d000041 	bgtz	t0,bfc0327c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:116
bfc03178:	85170001 	lh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:117
bfc0317c:	1657003f 	bne	s2,s7,bfc0327c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:118
bfc03180:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:119
bfc03184:	3c14bfc0 	lui	s4,0xbfc0
bfc03188:	2694318c 	addiu	s4,s4,12684
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:120
bfc0318c:	1e40003b 	bgtz	s2,bfc0327c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:121
bfc03190:	95170003 	lhu	s7,3(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:122
bfc03194:	16570039 	bne	s2,s7,bfc0327c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:123
bfc03198:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:124
bfc0319c:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:125
bfc031a0:	3c14bfc0 	lui	s4,0xbfc0
bfc031a4:	269431a8 	addiu	s4,s4,12712
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:126
bfc031a8:	1d000034 	bgtz	t0,bfc0327c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:127
bfc031ac:	95170003 	lhu	s7,3(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:128
bfc031b0:	16570032 	bne	s2,s7,bfc0327c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:129
bfc031b4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:131
bfc031b8:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:132
bfc031bc:	3c170005 	lui	s7,0x5
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:133
bfc031c0:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:134
bfc031c4:	3c14bfc0 	lui	s4,0xbfc0
bfc031c8:	269431cc 	addiu	s4,s4,12748
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:135
bfc031cc:	1e40002b 	bgtz	s2,bfc0327c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:136
bfc031d0:	ad170002 	sw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:137
bfc031d4:	16570029 	bne	s2,s7,bfc0327c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:138
bfc031d8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:139
bfc031dc:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:140
bfc031e0:	3c14bfc0 	lui	s4,0xbfc0
bfc031e4:	269431e8 	addiu	s4,s4,12776
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:141
bfc031e8:	1d000024 	bgtz	t0,bfc0327c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:142
bfc031ec:	ad170002 	sw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:143
bfc031f0:	16570022 	bne	s2,s7,bfc0327c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:144
bfc031f4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:145
bfc031f8:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:146
bfc031fc:	3c14bfc0 	lui	s4,0xbfc0
bfc03200:	26943204 	addiu	s4,s4,12804
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:147
bfc03204:	1e40001d 	bgtz	s2,bfc0327c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:148
bfc03208:	a5170001 	sh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:149
bfc0320c:	1657001b 	bne	s2,s7,bfc0327c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:150
bfc03210:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:151
bfc03214:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:152
bfc03218:	3c14bfc0 	lui	s4,0xbfc0
bfc0321c:	26943220 	addiu	s4,s4,12832
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:153
bfc03220:	1d000016 	bgtz	t0,bfc0327c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:154
bfc03224:	a5170001 	sh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:155
bfc03228:	16570014 	bne	s2,s7,bfc0327c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:156
bfc0322c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:159
bfc03230:	24120007 	li	s2,7
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:160
bfc03234:	3c170007 	lui	s7,0x7
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:161
bfc03238:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:162
bfc0323c:	3c14bfc0 	lui	s4,0xbfc0
bfc03240:	26943244 	addiu	s4,s4,12868
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:163
bfc03244:	1e40000d 	bgtz	s2,bfc0327c <inst_error>
bfc03248:	9e3c56aa 	0x9e3c56aa
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:165
bfc0324c:	02f20018 	mult	s7,s2
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:166
bfc03250:	1657000a 	bne	s2,s7,bfc0327c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:167
bfc03254:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:168
bfc03258:	24120007 	li	s2,7
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:169
bfc0325c:	3c14bfc0 	lui	s4,0xbfc0
bfc03260:	26943268 	addiu	s4,s4,12904
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:170
bfc03264:	02f20018 	mult	s7,s2
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:171
bfc03268:	1d000004 	bgtz	t0,bfc0327c <inst_error>
bfc0326c:	ec1ba960 	swc3	$27,-22176(zero)
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:173
bfc03270:	16570002 	bne	s2,s7,bfc0327c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:174
bfc03274:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:176
bfc03278:	26730001 	addiu	s3,s3,1

bfc0327c <inst_error>:
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:179
bfc0327c:	00104e00 	sll	t1,s0,0x18
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:180
bfc03280:	01334025 	or	t0,t1,s3
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:181
bfc03284:	ae280000 	sw	t0,0(s1)
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:182
bfc03288:	03e00008 	jr	ra
/home/yfy/func_test_v0.01/soft/func/inst/n81_bgtz_ds_ex.S:183
bfc0328c:	00000000 	nop

bfc03290 <n89_jalr_ds_ex_test>:
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:7
bfc03290:	03e0b021 	move	s6,ra
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:8
bfc03294:	26100001 	addiu	s0,s0,1
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:9
bfc03298:	3c08800d 	lui	t0,0x800d
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:11
bfc0329c:	40805800 	mtc0	zero,$11
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:12
bfc032a0:	3c170040 	lui	s7,0x40
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:13
bfc032a4:	40976000 	mtc0	s7,c0_sr
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:14
bfc032a8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:17
bfc032ac:	24120001 	li	s2,1
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:18
bfc032b0:	3c170001 	lui	s7,0x1
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:19
bfc032b4:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:20
bfc032b8:	3c14bfc0 	lui	s4,0xbfc0
bfc032bc:	269432c0 	addiu	s4,s4,12992
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:21
bfc032c0:	0240f809 	jalr	s2
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:22
bfc032c4:	0000000c 	syscall
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:23
bfc032c8:	165700ad 	bne	s2,s7,bfc03580 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:24
bfc032cc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:25
bfc032d0:	24120001 	li	s2,1
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:26
bfc032d4:	3c14bfc0 	lui	s4,0xbfc0
bfc032d8:	269432dc 	addiu	s4,s4,13020
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:27
bfc032dc:	0100f809 	jalr	t0
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:28
bfc032e0:	0000000c 	syscall
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:29
bfc032e4:	165700a6 	bne	s2,s7,bfc03580 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:30
bfc032e8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:32
bfc032ec:	24120002 	li	s2,2
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:33
bfc032f0:	3c170002 	lui	s7,0x2
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:34
bfc032f4:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:35
bfc032f8:	3c14bfc0 	lui	s4,0xbfc0
bfc032fc:	26943300 	addiu	s4,s4,13056
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:36
bfc03300:	0240f809 	jalr	s2
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:37
bfc03304:	0000000d 	break
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:38
bfc03308:	1657009d 	bne	s2,s7,bfc03580 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:39
bfc0330c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:40
bfc03310:	24120002 	li	s2,2
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:41
bfc03314:	3c14bfc0 	lui	s4,0xbfc0
bfc03318:	2694331c 	addiu	s4,s4,13084
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:42
bfc0331c:	0100f809 	jalr	t0
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:43
bfc03320:	0000000d 	break
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:44
bfc03324:	16570096 	bne	s2,s7,bfc03580 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:45
bfc03328:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:47
bfc0332c:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:48
bfc03330:	3c170003 	lui	s7,0x3
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:49
bfc03334:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:50
bfc03338:	3c14bfc0 	lui	s4,0xbfc0
bfc0333c:	26943350 	addiu	s4,s4,13136
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:51
bfc03340:	3c04ba03 	lui	a0,0xba03
bfc03344:	34844f60 	ori	a0,a0,0x4f60
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:52
bfc03348:	3c05b615 	lui	a1,0xb615
bfc0334c:	34a5fd67 	ori	a1,a1,0xfd67
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:53
bfc03350:	0240f809 	jalr	s2
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:54
bfc03354:	0085b820 	add	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:55
bfc03358:	16570089 	bne	s2,s7,bfc03580 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:56
bfc0335c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:57
bfc03360:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:58
bfc03364:	3c14bfc0 	lui	s4,0xbfc0
bfc03368:	2694336c 	addiu	s4,s4,13164
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:59
bfc0336c:	0100f809 	jalr	t0
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:60
bfc03370:	0085b820 	add	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:61
bfc03374:	ad170000 	sw	s7,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:62
bfc03378:	16570081 	bne	s2,s7,bfc03580 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:63
bfc0337c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:64
bfc03380:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:65
bfc03384:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:66
bfc03388:	3c14bfc0 	lui	s4,0xbfc0
bfc0338c:	26943398 	addiu	s4,s4,13208
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:67
bfc03390:	3c047fff 	lui	a0,0x7fff
bfc03394:	3484c19e 	ori	a0,a0,0xc19e
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:68
bfc03398:	0240f809 	jalr	s2
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:69
bfc0339c:	20976512 	addi	s7,a0,25874
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:70
bfc033a0:	16570077 	bne	s2,s7,bfc03580 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:71
bfc033a4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:72
bfc033a8:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:73
bfc033ac:	3c14bfc0 	lui	s4,0xbfc0
bfc033b0:	269433b4 	addiu	s4,s4,13236
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:74
bfc033b4:	0100f809 	jalr	t0
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:75
bfc033b8:	20976512 	addi	s7,a0,25874
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:76
bfc033bc:	16570070 	bne	s2,s7,bfc03580 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:77
bfc033c0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:78
bfc033c4:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:79
bfc033c8:	3c14bfc0 	lui	s4,0xbfc0
bfc033cc:	269433e0 	addiu	s4,s4,13280
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:80
bfc033d0:	3c04a85e 	lui	a0,0xa85e
bfc033d4:	34847d00 	ori	a0,a0,0x7d00
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:81
bfc033d8:	3c056b7e 	lui	a1,0x6b7e
bfc033dc:	34a58e36 	ori	a1,a1,0x8e36
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:82
bfc033e0:	0240f809 	jalr	s2
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:83
bfc033e4:	0085b822 	sub	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:84
bfc033e8:	16570065 	bne	s2,s7,bfc03580 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:85
bfc033ec:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:86
bfc033f0:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:87
bfc033f4:	3c14bfc0 	lui	s4,0xbfc0
bfc033f8:	269433fc 	addiu	s4,s4,13308
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:88
bfc033fc:	0100f809 	jalr	t0
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:89
bfc03400:	0085b822 	sub	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:90
bfc03404:	1657005e 	bne	s2,s7,bfc03580 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:91
bfc03408:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:93
bfc0340c:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:94
bfc03410:	3c170004 	lui	s7,0x4
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:95
bfc03414:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:96
bfc03418:	3c14bfc0 	lui	s4,0xbfc0
bfc0341c:	26943420 	addiu	s4,s4,13344
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:97
bfc03420:	0240f809 	jalr	s2
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:98
bfc03424:	8d170002 	lw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:99
bfc03428:	16570055 	bne	s2,s7,bfc03580 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:100
bfc0342c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:101
bfc03430:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:102
bfc03434:	3c14bfc0 	lui	s4,0xbfc0
bfc03438:	2694343c 	addiu	s4,s4,13372
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:103
bfc0343c:	0100f809 	jalr	t0
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:104
bfc03440:	8d170002 	lw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:105
bfc03444:	1657004e 	bne	s2,s7,bfc03580 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:106
bfc03448:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:107
bfc0344c:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:108
bfc03450:	3c14bfc0 	lui	s4,0xbfc0
bfc03454:	26943458 	addiu	s4,s4,13400
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:109
bfc03458:	0240f809 	jalr	s2
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:110
bfc0345c:	85170001 	lh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:111
bfc03460:	02f2001b 	divu	zero,s7,s2
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:112
bfc03464:	16570046 	bne	s2,s7,bfc03580 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:113
bfc03468:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:114
bfc0346c:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:115
bfc03470:	3c14bfc0 	lui	s4,0xbfc0
bfc03474:	26943478 	addiu	s4,s4,13432
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:116
bfc03478:	0100f809 	jalr	t0
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:117
bfc0347c:	85170001 	lh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:118
bfc03480:	1657003f 	bne	s2,s7,bfc03580 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:119
bfc03484:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:120
bfc03488:	3c14bfc0 	lui	s4,0xbfc0
bfc0348c:	26943490 	addiu	s4,s4,13456
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:121
bfc03490:	0240f809 	jalr	s2
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:122
bfc03494:	95170003 	lhu	s7,3(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:123
bfc03498:	16570039 	bne	s2,s7,bfc03580 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:124
bfc0349c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:125
bfc034a0:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:126
bfc034a4:	3c14bfc0 	lui	s4,0xbfc0
bfc034a8:	269434ac 	addiu	s4,s4,13484
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:127
bfc034ac:	0100f809 	jalr	t0
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:128
bfc034b0:	95170003 	lhu	s7,3(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:129
bfc034b4:	16570032 	bne	s2,s7,bfc03580 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:130
bfc034b8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:132
bfc034bc:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:133
bfc034c0:	3c170005 	lui	s7,0x5
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:134
bfc034c4:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:135
bfc034c8:	3c14bfc0 	lui	s4,0xbfc0
bfc034cc:	269434d0 	addiu	s4,s4,13520
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:136
bfc034d0:	0240f809 	jalr	s2
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:137
bfc034d4:	ad170002 	sw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:138
bfc034d8:	16570029 	bne	s2,s7,bfc03580 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:139
bfc034dc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:140
bfc034e0:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:141
bfc034e4:	3c14bfc0 	lui	s4,0xbfc0
bfc034e8:	269434ec 	addiu	s4,s4,13548
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:142
bfc034ec:	0100f809 	jalr	t0
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:143
bfc034f0:	ad170002 	sw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:144
bfc034f4:	16570022 	bne	s2,s7,bfc03580 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:145
bfc034f8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:146
bfc034fc:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:147
bfc03500:	3c14bfc0 	lui	s4,0xbfc0
bfc03504:	26943508 	addiu	s4,s4,13576
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:148
bfc03508:	0240f809 	jalr	s2
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:149
bfc0350c:	a5170001 	sh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:150
bfc03510:	1657001b 	bne	s2,s7,bfc03580 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:151
bfc03514:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:152
bfc03518:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:153
bfc0351c:	3c14bfc0 	lui	s4,0xbfc0
bfc03520:	26943524 	addiu	s4,s4,13604
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:154
bfc03524:	0100f809 	jalr	t0
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:155
bfc03528:	a5170001 	sh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:156
bfc0352c:	16570014 	bne	s2,s7,bfc03580 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:157
bfc03530:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:160
bfc03534:	24120007 	li	s2,7
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:161
bfc03538:	3c170007 	lui	s7,0x7
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:162
bfc0353c:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:163
bfc03540:	3c14bfc0 	lui	s4,0xbfc0
bfc03544:	26943548 	addiu	s4,s4,13640
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:164
bfc03548:	0240f809 	jalr	s2
bfc0354c:	9e3c56aa 	0x9e3c56aa
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:166
bfc03550:	02f20018 	mult	s7,s2
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:167
bfc03554:	1657000a 	bne	s2,s7,bfc03580 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:168
bfc03558:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:169
bfc0355c:	24120007 	li	s2,7
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:170
bfc03560:	3c14bfc0 	lui	s4,0xbfc0
bfc03564:	2694356c 	addiu	s4,s4,13676
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:171
bfc03568:	02f20018 	mult	s7,s2
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:172
bfc0356c:	0100f809 	jalr	t0
bfc03570:	ec1ba960 	swc3	$27,-22176(zero)
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:174
bfc03574:	16570002 	bne	s2,s7,bfc03580 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:175
bfc03578:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:177
bfc0357c:	26730001 	addiu	s3,s3,1

bfc03580 <inst_error>:
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:180
bfc03580:	00104e00 	sll	t1,s0,0x18
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:181
bfc03584:	01334025 	or	t0,t1,s3
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:182
bfc03588:	ae280000 	sw	t0,0(s1)
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:183
bfc0358c:	02c0f821 	move	ra,s6
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:184
bfc03590:	03e00008 	jr	ra
/home/yfy/func_test_v0.01/soft/func/inst/n89_jalr_ds_ex.S:185
bfc03594:	00000000 	nop
	...

bfc035a0 <n78_beq_ds_ex_test>:
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:7
bfc035a0:	26100001 	addiu	s0,s0,1
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:8
bfc035a4:	3c08800d 	lui	t0,0x800d
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:10
bfc035a8:	40805800 	mtc0	zero,$11
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:11
bfc035ac:	3c170040 	lui	s7,0x40
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:12
bfc035b0:	40976000 	mtc0	s7,c0_sr
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:13
bfc035b4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:16
bfc035b8:	24120001 	li	s2,1
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:17
bfc035bc:	3c170001 	lui	s7,0x1
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:18
bfc035c0:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:19
bfc035c4:	3c14bfc0 	lui	s4,0xbfc0
bfc035c8:	269435cc 	addiu	s4,s4,13772
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:20
bfc035cc:	100000af 	b	bfc0388c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:21
bfc035d0:	0000000c 	syscall
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:22
bfc035d4:	165700ad 	bne	s2,s7,bfc0388c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:23
bfc035d8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:24
bfc035dc:	24120001 	li	s2,1
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:25
bfc035e0:	3c14bfc0 	lui	s4,0xbfc0
bfc035e4:	269435e8 	addiu	s4,s4,13800
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:26
bfc035e8:	110000a8 	beqz	t0,bfc0388c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:27
bfc035ec:	0000000c 	syscall
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:28
bfc035f0:	165700a6 	bne	s2,s7,bfc0388c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:29
bfc035f4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:31
bfc035f8:	24120002 	li	s2,2
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:32
bfc035fc:	3c170002 	lui	s7,0x2
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:33
bfc03600:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:34
bfc03604:	3c14bfc0 	lui	s4,0xbfc0
bfc03608:	2694360c 	addiu	s4,s4,13836
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:35
bfc0360c:	1000009f 	b	bfc0388c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:36
bfc03610:	0000000d 	break
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:37
bfc03614:	1657009d 	bne	s2,s7,bfc0388c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:38
bfc03618:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:39
bfc0361c:	24120002 	li	s2,2
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:40
bfc03620:	3c14bfc0 	lui	s4,0xbfc0
bfc03624:	26943628 	addiu	s4,s4,13864
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:41
bfc03628:	11000098 	beqz	t0,bfc0388c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:42
bfc0362c:	0000000d 	break
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:43
bfc03630:	16570096 	bne	s2,s7,bfc0388c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:44
bfc03634:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:46
bfc03638:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:47
bfc0363c:	3c170003 	lui	s7,0x3
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:48
bfc03640:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:49
bfc03644:	3c14bfc0 	lui	s4,0xbfc0
bfc03648:	2694365c 	addiu	s4,s4,13916
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:50
bfc0364c:	3c04ba03 	lui	a0,0xba03
bfc03650:	34844f60 	ori	a0,a0,0x4f60
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:51
bfc03654:	3c05b615 	lui	a1,0xb615
bfc03658:	34a5fd67 	ori	a1,a1,0xfd67
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:52
bfc0365c:	1000008b 	b	bfc0388c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:53
bfc03660:	0085b820 	add	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:54
bfc03664:	16570089 	bne	s2,s7,bfc0388c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:55
bfc03668:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:56
bfc0366c:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:57
bfc03670:	3c14bfc0 	lui	s4,0xbfc0
bfc03674:	26943678 	addiu	s4,s4,13944
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:58
bfc03678:	11000084 	beqz	t0,bfc0388c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:59
bfc0367c:	0085b820 	add	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:60
bfc03680:	ad170000 	sw	s7,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:61
bfc03684:	16570081 	bne	s2,s7,bfc0388c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:62
bfc03688:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:63
bfc0368c:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:64
bfc03690:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:65
bfc03694:	3c14bfc0 	lui	s4,0xbfc0
bfc03698:	269436a4 	addiu	s4,s4,13988
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:66
bfc0369c:	3c047fff 	lui	a0,0x7fff
bfc036a0:	3484c19e 	ori	a0,a0,0xc19e
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:67
bfc036a4:	10000079 	b	bfc0388c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:68
bfc036a8:	20976512 	addi	s7,a0,25874
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:69
bfc036ac:	16570077 	bne	s2,s7,bfc0388c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:70
bfc036b0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:71
bfc036b4:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:72
bfc036b8:	3c14bfc0 	lui	s4,0xbfc0
bfc036bc:	269436c0 	addiu	s4,s4,14016
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:73
bfc036c0:	11000072 	beqz	t0,bfc0388c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:74
bfc036c4:	20976512 	addi	s7,a0,25874
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:75
bfc036c8:	16570070 	bne	s2,s7,bfc0388c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:76
bfc036cc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:77
bfc036d0:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:78
bfc036d4:	3c14bfc0 	lui	s4,0xbfc0
bfc036d8:	269436ec 	addiu	s4,s4,14060
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:79
bfc036dc:	3c04a85e 	lui	a0,0xa85e
bfc036e0:	34847d00 	ori	a0,a0,0x7d00
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:80
bfc036e4:	3c056b7e 	lui	a1,0x6b7e
bfc036e8:	34a58e36 	ori	a1,a1,0x8e36
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:81
bfc036ec:	10000067 	b	bfc0388c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:82
bfc036f0:	0085b822 	sub	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:83
bfc036f4:	16570065 	bne	s2,s7,bfc0388c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:84
bfc036f8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:85
bfc036fc:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:86
bfc03700:	3c14bfc0 	lui	s4,0xbfc0
bfc03704:	26943708 	addiu	s4,s4,14088
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:87
bfc03708:	11000060 	beqz	t0,bfc0388c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:88
bfc0370c:	0085b822 	sub	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:89
bfc03710:	1657005e 	bne	s2,s7,bfc0388c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:90
bfc03714:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:92
bfc03718:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:93
bfc0371c:	3c170004 	lui	s7,0x4
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:94
bfc03720:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:95
bfc03724:	3c14bfc0 	lui	s4,0xbfc0
bfc03728:	2694372c 	addiu	s4,s4,14124
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:96
bfc0372c:	10000057 	b	bfc0388c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:97
bfc03730:	8d170002 	lw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:98
bfc03734:	16570055 	bne	s2,s7,bfc0388c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:99
bfc03738:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:100
bfc0373c:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:101
bfc03740:	3c14bfc0 	lui	s4,0xbfc0
bfc03744:	26943748 	addiu	s4,s4,14152
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:102
bfc03748:	11000050 	beqz	t0,bfc0388c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:103
bfc0374c:	8d170002 	lw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:104
bfc03750:	1657004e 	bne	s2,s7,bfc0388c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:105
bfc03754:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:106
bfc03758:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:107
bfc0375c:	3c14bfc0 	lui	s4,0xbfc0
bfc03760:	26943764 	addiu	s4,s4,14180
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:108
bfc03764:	10000049 	b	bfc0388c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:109
bfc03768:	85170001 	lh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:110
bfc0376c:	02f2001b 	divu	zero,s7,s2
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:111
bfc03770:	16570046 	bne	s2,s7,bfc0388c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:112
bfc03774:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:113
bfc03778:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:114
bfc0377c:	3c14bfc0 	lui	s4,0xbfc0
bfc03780:	26943784 	addiu	s4,s4,14212
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:115
bfc03784:	11000041 	beqz	t0,bfc0388c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:116
bfc03788:	85170001 	lh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:117
bfc0378c:	1657003f 	bne	s2,s7,bfc0388c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:118
bfc03790:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:119
bfc03794:	3c14bfc0 	lui	s4,0xbfc0
bfc03798:	2694379c 	addiu	s4,s4,14236
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:120
bfc0379c:	1000003b 	b	bfc0388c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:121
bfc037a0:	95170003 	lhu	s7,3(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:122
bfc037a4:	16570039 	bne	s2,s7,bfc0388c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:123
bfc037a8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:124
bfc037ac:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:125
bfc037b0:	3c14bfc0 	lui	s4,0xbfc0
bfc037b4:	269437b8 	addiu	s4,s4,14264
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:126
bfc037b8:	11000034 	beqz	t0,bfc0388c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:127
bfc037bc:	95170003 	lhu	s7,3(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:128
bfc037c0:	16570032 	bne	s2,s7,bfc0388c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:129
bfc037c4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:131
bfc037c8:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:132
bfc037cc:	3c170005 	lui	s7,0x5
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:133
bfc037d0:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:134
bfc037d4:	3c14bfc0 	lui	s4,0xbfc0
bfc037d8:	269437dc 	addiu	s4,s4,14300
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:135
bfc037dc:	1000002b 	b	bfc0388c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:136
bfc037e0:	ad170002 	sw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:137
bfc037e4:	16570029 	bne	s2,s7,bfc0388c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:138
bfc037e8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:139
bfc037ec:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:140
bfc037f0:	3c14bfc0 	lui	s4,0xbfc0
bfc037f4:	269437f8 	addiu	s4,s4,14328
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:141
bfc037f8:	11000024 	beqz	t0,bfc0388c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:142
bfc037fc:	ad170002 	sw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:143
bfc03800:	16570022 	bne	s2,s7,bfc0388c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:144
bfc03804:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:145
bfc03808:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:146
bfc0380c:	3c14bfc0 	lui	s4,0xbfc0
bfc03810:	26943814 	addiu	s4,s4,14356
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:147
bfc03814:	1000001d 	b	bfc0388c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:148
bfc03818:	a5170001 	sh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:149
bfc0381c:	1657001b 	bne	s2,s7,bfc0388c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:150
bfc03820:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:151
bfc03824:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:152
bfc03828:	3c14bfc0 	lui	s4,0xbfc0
bfc0382c:	26943830 	addiu	s4,s4,14384
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:153
bfc03830:	11000016 	beqz	t0,bfc0388c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:154
bfc03834:	a5170001 	sh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:155
bfc03838:	16570014 	bne	s2,s7,bfc0388c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:156
bfc0383c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:159
bfc03840:	24120007 	li	s2,7
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:160
bfc03844:	3c170007 	lui	s7,0x7
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:161
bfc03848:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:162
bfc0384c:	3c14bfc0 	lui	s4,0xbfc0
bfc03850:	26943854 	addiu	s4,s4,14420
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:163
bfc03854:	1000000d 	b	bfc0388c <inst_error>
bfc03858:	9e3c56aa 	0x9e3c56aa
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:165
bfc0385c:	02f20018 	mult	s7,s2
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:166
bfc03860:	1657000a 	bne	s2,s7,bfc0388c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:167
bfc03864:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:168
bfc03868:	24120007 	li	s2,7
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:169
bfc0386c:	3c14bfc0 	lui	s4,0xbfc0
bfc03870:	26943878 	addiu	s4,s4,14456
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:170
bfc03874:	02f20018 	mult	s7,s2
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:171
bfc03878:	11000004 	beqz	t0,bfc0388c <inst_error>
bfc0387c:	ec1ba960 	swc3	$27,-22176(zero)
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:173
bfc03880:	16570002 	bne	s2,s7,bfc0388c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:174
bfc03884:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:176
bfc03888:	26730001 	addiu	s3,s3,1

bfc0388c <inst_error>:
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:179
bfc0388c:	00104e00 	sll	t1,s0,0x18
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:180
bfc03890:	01334025 	or	t0,t1,s3
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:181
bfc03894:	ae280000 	sw	t0,0(s1)
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:182
bfc03898:	03e00008 	jr	ra
/home/yfy/func_test_v0.01/soft/func/inst/n78_beq_ds_ex.S:183
bfc0389c:	00000000 	nop

bfc038a0 <n86_j_ds_ex_test>:
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:7
bfc038a0:	26100001 	addiu	s0,s0,1
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:8
bfc038a4:	3c08800d 	lui	t0,0x800d
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:10
bfc038a8:	40805800 	mtc0	zero,$11
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:11
bfc038ac:	3c170040 	lui	s7,0x40
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:12
bfc038b0:	40976000 	mtc0	s7,c0_sr
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:13
bfc038b4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:16
bfc038b8:	24120001 	li	s2,1
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:17
bfc038bc:	3c170001 	lui	s7,0x1
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:18
bfc038c0:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:19
bfc038c4:	3c14bfc0 	lui	s4,0xbfc0
bfc038c8:	269438cc 	addiu	s4,s4,14540
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:20
bfc038cc:	0bf00ee3 	j	bfc03b8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:21
bfc038d0:	0000000c 	syscall
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:22
bfc038d4:	165700ad 	bne	s2,s7,bfc03b8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:23
bfc038d8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:24
bfc038dc:	24120001 	li	s2,1
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:25
bfc038e0:	3c14bfc0 	lui	s4,0xbfc0
bfc038e4:	269438e8 	addiu	s4,s4,14568
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:26
bfc038e8:	0bf00ee3 	j	bfc03b8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:27
bfc038ec:	0000000c 	syscall
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:28
bfc038f0:	165700a6 	bne	s2,s7,bfc03b8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:29
bfc038f4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:31
bfc038f8:	24120002 	li	s2,2
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:32
bfc038fc:	3c170002 	lui	s7,0x2
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:33
bfc03900:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:34
bfc03904:	3c14bfc0 	lui	s4,0xbfc0
bfc03908:	2694390c 	addiu	s4,s4,14604
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:35
bfc0390c:	0bf00ee3 	j	bfc03b8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:36
bfc03910:	0000000d 	break
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:37
bfc03914:	1657009d 	bne	s2,s7,bfc03b8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:38
bfc03918:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:39
bfc0391c:	24120002 	li	s2,2
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:40
bfc03920:	3c14bfc0 	lui	s4,0xbfc0
bfc03924:	26943928 	addiu	s4,s4,14632
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:41
bfc03928:	0bf00ee3 	j	bfc03b8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:42
bfc0392c:	0000000d 	break
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:43
bfc03930:	16570096 	bne	s2,s7,bfc03b8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:44
bfc03934:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:46
bfc03938:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:47
bfc0393c:	3c170003 	lui	s7,0x3
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:48
bfc03940:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:49
bfc03944:	3c14bfc0 	lui	s4,0xbfc0
bfc03948:	2694395c 	addiu	s4,s4,14684
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:50
bfc0394c:	3c04ba03 	lui	a0,0xba03
bfc03950:	34844f60 	ori	a0,a0,0x4f60
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:51
bfc03954:	3c05b615 	lui	a1,0xb615
bfc03958:	34a5fd67 	ori	a1,a1,0xfd67
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:52
bfc0395c:	0bf00ee3 	j	bfc03b8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:53
bfc03960:	0085b820 	add	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:54
bfc03964:	16570089 	bne	s2,s7,bfc03b8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:55
bfc03968:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:56
bfc0396c:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:57
bfc03970:	3c14bfc0 	lui	s4,0xbfc0
bfc03974:	26943978 	addiu	s4,s4,14712
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:58
bfc03978:	0bf00ee3 	j	bfc03b8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:59
bfc0397c:	0085b820 	add	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:60
bfc03980:	ad170000 	sw	s7,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:61
bfc03984:	16570081 	bne	s2,s7,bfc03b8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:62
bfc03988:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:63
bfc0398c:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:64
bfc03990:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:65
bfc03994:	3c14bfc0 	lui	s4,0xbfc0
bfc03998:	269439a4 	addiu	s4,s4,14756
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:66
bfc0399c:	3c047fff 	lui	a0,0x7fff
bfc039a0:	3484c19e 	ori	a0,a0,0xc19e
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:67
bfc039a4:	0bf00ee3 	j	bfc03b8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:68
bfc039a8:	20976512 	addi	s7,a0,25874
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:69
bfc039ac:	16570077 	bne	s2,s7,bfc03b8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:70
bfc039b0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:71
bfc039b4:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:72
bfc039b8:	3c14bfc0 	lui	s4,0xbfc0
bfc039bc:	269439c0 	addiu	s4,s4,14784
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:73
bfc039c0:	0bf00ee3 	j	bfc03b8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:74
bfc039c4:	20976512 	addi	s7,a0,25874
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:75
bfc039c8:	16570070 	bne	s2,s7,bfc03b8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:76
bfc039cc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:77
bfc039d0:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:78
bfc039d4:	3c14bfc0 	lui	s4,0xbfc0
bfc039d8:	269439ec 	addiu	s4,s4,14828
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:79
bfc039dc:	3c04a85e 	lui	a0,0xa85e
bfc039e0:	34847d00 	ori	a0,a0,0x7d00
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:80
bfc039e4:	3c056b7e 	lui	a1,0x6b7e
bfc039e8:	34a58e36 	ori	a1,a1,0x8e36
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:81
bfc039ec:	0bf00ee3 	j	bfc03b8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:82
bfc039f0:	0085b822 	sub	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:83
bfc039f4:	16570065 	bne	s2,s7,bfc03b8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:84
bfc039f8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:85
bfc039fc:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:86
bfc03a00:	3c14bfc0 	lui	s4,0xbfc0
bfc03a04:	26943a08 	addiu	s4,s4,14856
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:87
bfc03a08:	0bf00ee3 	j	bfc03b8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:88
bfc03a0c:	0085b822 	sub	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:89
bfc03a10:	1657005e 	bne	s2,s7,bfc03b8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:90
bfc03a14:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:92
bfc03a18:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:93
bfc03a1c:	3c170004 	lui	s7,0x4
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:94
bfc03a20:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:95
bfc03a24:	3c14bfc0 	lui	s4,0xbfc0
bfc03a28:	26943a2c 	addiu	s4,s4,14892
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:96
bfc03a2c:	0bf00ee3 	j	bfc03b8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:97
bfc03a30:	8d170002 	lw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:98
bfc03a34:	16570055 	bne	s2,s7,bfc03b8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:99
bfc03a38:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:100
bfc03a3c:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:101
bfc03a40:	3c14bfc0 	lui	s4,0xbfc0
bfc03a44:	26943a48 	addiu	s4,s4,14920
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:102
bfc03a48:	0bf00ee3 	j	bfc03b8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:103
bfc03a4c:	8d170002 	lw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:104
bfc03a50:	1657004e 	bne	s2,s7,bfc03b8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:105
bfc03a54:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:106
bfc03a58:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:107
bfc03a5c:	3c14bfc0 	lui	s4,0xbfc0
bfc03a60:	26943a64 	addiu	s4,s4,14948
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:108
bfc03a64:	0bf00ee3 	j	bfc03b8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:109
bfc03a68:	85170001 	lh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:110
bfc03a6c:	02f2001b 	divu	zero,s7,s2
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:111
bfc03a70:	16570046 	bne	s2,s7,bfc03b8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:112
bfc03a74:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:113
bfc03a78:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:114
bfc03a7c:	3c14bfc0 	lui	s4,0xbfc0
bfc03a80:	26943a84 	addiu	s4,s4,14980
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:115
bfc03a84:	0bf00ee3 	j	bfc03b8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:116
bfc03a88:	85170001 	lh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:117
bfc03a8c:	1657003f 	bne	s2,s7,bfc03b8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:118
bfc03a90:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:119
bfc03a94:	3c14bfc0 	lui	s4,0xbfc0
bfc03a98:	26943a9c 	addiu	s4,s4,15004
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:120
bfc03a9c:	0bf00ee3 	j	bfc03b8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:121
bfc03aa0:	95170003 	lhu	s7,3(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:122
bfc03aa4:	16570039 	bne	s2,s7,bfc03b8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:123
bfc03aa8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:124
bfc03aac:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:125
bfc03ab0:	3c14bfc0 	lui	s4,0xbfc0
bfc03ab4:	26943ab8 	addiu	s4,s4,15032
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:126
bfc03ab8:	0bf00ee3 	j	bfc03b8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:127
bfc03abc:	95170003 	lhu	s7,3(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:128
bfc03ac0:	16570032 	bne	s2,s7,bfc03b8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:129
bfc03ac4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:131
bfc03ac8:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:132
bfc03acc:	3c170005 	lui	s7,0x5
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:133
bfc03ad0:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:134
bfc03ad4:	3c14bfc0 	lui	s4,0xbfc0
bfc03ad8:	26943adc 	addiu	s4,s4,15068
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:135
bfc03adc:	0bf00ee3 	j	bfc03b8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:136
bfc03ae0:	ad170002 	sw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:137
bfc03ae4:	16570029 	bne	s2,s7,bfc03b8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:138
bfc03ae8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:139
bfc03aec:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:140
bfc03af0:	3c14bfc0 	lui	s4,0xbfc0
bfc03af4:	26943af8 	addiu	s4,s4,15096
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:141
bfc03af8:	0bf00ee3 	j	bfc03b8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:142
bfc03afc:	ad170002 	sw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:143
bfc03b00:	16570022 	bne	s2,s7,bfc03b8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:144
bfc03b04:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:145
bfc03b08:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:146
bfc03b0c:	3c14bfc0 	lui	s4,0xbfc0
bfc03b10:	26943b14 	addiu	s4,s4,15124
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:147
bfc03b14:	0bf00ee3 	j	bfc03b8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:148
bfc03b18:	a5170001 	sh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:149
bfc03b1c:	1657001b 	bne	s2,s7,bfc03b8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:150
bfc03b20:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:151
bfc03b24:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:152
bfc03b28:	3c14bfc0 	lui	s4,0xbfc0
bfc03b2c:	26943b30 	addiu	s4,s4,15152
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:153
bfc03b30:	0bf00ee3 	j	bfc03b8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:154
bfc03b34:	a5170001 	sh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:155
bfc03b38:	16570014 	bne	s2,s7,bfc03b8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:156
bfc03b3c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:159
bfc03b40:	24120007 	li	s2,7
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:160
bfc03b44:	3c170007 	lui	s7,0x7
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:161
bfc03b48:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:162
bfc03b4c:	3c14bfc0 	lui	s4,0xbfc0
bfc03b50:	26943b54 	addiu	s4,s4,15188
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:163
bfc03b54:	0bf00ee3 	j	bfc03b8c <inst_error>
bfc03b58:	9e3c56aa 	0x9e3c56aa
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:165
bfc03b5c:	02f20018 	mult	s7,s2
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:166
bfc03b60:	1657000a 	bne	s2,s7,bfc03b8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:167
bfc03b64:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:168
bfc03b68:	24120007 	li	s2,7
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:169
bfc03b6c:	3c14bfc0 	lui	s4,0xbfc0
bfc03b70:	26943b78 	addiu	s4,s4,15224
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:170
bfc03b74:	02f20018 	mult	s7,s2
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:171
bfc03b78:	0bf00ee3 	j	bfc03b8c <inst_error>
bfc03b7c:	ec1ba960 	swc3	$27,-22176(zero)
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:173
bfc03b80:	16570002 	bne	s2,s7,bfc03b8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:174
bfc03b84:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:176
bfc03b88:	26730001 	addiu	s3,s3,1

bfc03b8c <inst_error>:
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:179
bfc03b8c:	00104e00 	sll	t1,s0,0x18
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:180
bfc03b90:	01334025 	or	t0,t1,s3
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:181
bfc03b94:	ae280000 	sw	t0,0(s1)
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:182
bfc03b98:	03e00008 	jr	ra
/home/yfy/func_test_v0.01/soft/func/inst/n86_j_ds_ex.S:183
bfc03b9c:	00000000 	nop

bfc03ba0 <n79_bne_ds_ex_test>:
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:7
bfc03ba0:	26100001 	addiu	s0,s0,1
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:8
bfc03ba4:	3c08800d 	lui	t0,0x800d
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:10
bfc03ba8:	40805800 	mtc0	zero,$11
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:11
bfc03bac:	3c170040 	lui	s7,0x40
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:12
bfc03bb0:	40976000 	mtc0	s7,c0_sr
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:13
bfc03bb4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:16
bfc03bb8:	24120001 	li	s2,1
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:17
bfc03bbc:	3c170001 	lui	s7,0x1
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:18
bfc03bc0:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:19
bfc03bc4:	3c14bfc0 	lui	s4,0xbfc0
bfc03bc8:	26943bcc 	addiu	s4,s4,15308
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:20
bfc03bcc:	140000af 	bnez	zero,bfc03e8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:21
bfc03bd0:	0000000c 	syscall
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:22
bfc03bd4:	165700ad 	bne	s2,s7,bfc03e8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:23
bfc03bd8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:24
bfc03bdc:	24120001 	li	s2,1
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:25
bfc03be0:	3c14bfc0 	lui	s4,0xbfc0
bfc03be4:	26943be8 	addiu	s4,s4,15336
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:26
bfc03be8:	150000a8 	bnez	t0,bfc03e8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:27
bfc03bec:	0000000c 	syscall
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:28
bfc03bf0:	165700a6 	bne	s2,s7,bfc03e8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:29
bfc03bf4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:31
bfc03bf8:	24120002 	li	s2,2
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:32
bfc03bfc:	3c170002 	lui	s7,0x2
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:33
bfc03c00:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:34
bfc03c04:	3c14bfc0 	lui	s4,0xbfc0
bfc03c08:	26943c0c 	addiu	s4,s4,15372
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:35
bfc03c0c:	1400009f 	bnez	zero,bfc03e8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:36
bfc03c10:	0000000d 	break
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:37
bfc03c14:	1657009d 	bne	s2,s7,bfc03e8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:38
bfc03c18:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:39
bfc03c1c:	24120002 	li	s2,2
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:40
bfc03c20:	3c14bfc0 	lui	s4,0xbfc0
bfc03c24:	26943c28 	addiu	s4,s4,15400
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:41
bfc03c28:	15000098 	bnez	t0,bfc03e8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:42
bfc03c2c:	0000000d 	break
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:43
bfc03c30:	16570096 	bne	s2,s7,bfc03e8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:44
bfc03c34:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:46
bfc03c38:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:47
bfc03c3c:	3c170003 	lui	s7,0x3
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:48
bfc03c40:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:49
bfc03c44:	3c14bfc0 	lui	s4,0xbfc0
bfc03c48:	26943c5c 	addiu	s4,s4,15452
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:50
bfc03c4c:	3c04ba03 	lui	a0,0xba03
bfc03c50:	34844f60 	ori	a0,a0,0x4f60
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:51
bfc03c54:	3c05b615 	lui	a1,0xb615
bfc03c58:	34a5fd67 	ori	a1,a1,0xfd67
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:52
bfc03c5c:	1400008b 	bnez	zero,bfc03e8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:53
bfc03c60:	0085b820 	add	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:54
bfc03c64:	16570089 	bne	s2,s7,bfc03e8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:55
bfc03c68:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:56
bfc03c6c:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:57
bfc03c70:	3c14bfc0 	lui	s4,0xbfc0
bfc03c74:	26943c78 	addiu	s4,s4,15480
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:58
bfc03c78:	15000084 	bnez	t0,bfc03e8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:59
bfc03c7c:	0085b820 	add	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:60
bfc03c80:	16570082 	bne	s2,s7,bfc03e8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:61
bfc03c84:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:62
bfc03c88:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:63
bfc03c8c:	3c14bfc0 	lui	s4,0xbfc0
bfc03c90:	26943c9c 	addiu	s4,s4,15516
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:64
bfc03c94:	3c047fff 	lui	a0,0x7fff
bfc03c98:	3484c19e 	ori	a0,a0,0xc19e
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:65
bfc03c9c:	1400007b 	bnez	zero,bfc03e8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:66
bfc03ca0:	20976512 	addi	s7,a0,25874
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:67
bfc03ca4:	16570079 	bne	s2,s7,bfc03e8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:68
bfc03ca8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:69
bfc03cac:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:70
bfc03cb0:	3c14bfc0 	lui	s4,0xbfc0
bfc03cb4:	26943cb8 	addiu	s4,s4,15544
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:71
bfc03cb8:	15000074 	bnez	t0,bfc03e8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:72
bfc03cbc:	20976512 	addi	s7,a0,25874
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:73
bfc03cc0:	16570072 	bne	s2,s7,bfc03e8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:74
bfc03cc4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:75
bfc03cc8:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:76
bfc03ccc:	3c14bfc0 	lui	s4,0xbfc0
bfc03cd0:	26943ce4 	addiu	s4,s4,15588
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:77
bfc03cd4:	3c04a85e 	lui	a0,0xa85e
bfc03cd8:	34847d00 	ori	a0,a0,0x7d00
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:78
bfc03cdc:	3c056b7e 	lui	a1,0x6b7e
bfc03ce0:	34a58e36 	ori	a1,a1,0x8e36
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:79
bfc03ce4:	14000069 	bnez	zero,bfc03e8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:80
bfc03ce8:	0085b822 	sub	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:81
bfc03cec:	16570067 	bne	s2,s7,bfc03e8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:82
bfc03cf0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:83
bfc03cf4:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:84
bfc03cf8:	3c14bfc0 	lui	s4,0xbfc0
bfc03cfc:	26943d00 	addiu	s4,s4,15616
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:85
bfc03d00:	15000062 	bnez	t0,bfc03e8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:86
bfc03d04:	0085b822 	sub	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:87
bfc03d08:	16570060 	bne	s2,s7,bfc03e8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:88
bfc03d0c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:90
bfc03d10:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:91
bfc03d14:	3c170004 	lui	s7,0x4
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:92
bfc03d18:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:93
bfc03d1c:	3c14bfc0 	lui	s4,0xbfc0
bfc03d20:	26943d24 	addiu	s4,s4,15652
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:94
bfc03d24:	14000059 	bnez	zero,bfc03e8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:95
bfc03d28:	8d170002 	lw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:96
bfc03d2c:	ad170000 	sw	s7,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:97
bfc03d30:	16570056 	bne	s2,s7,bfc03e8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:98
bfc03d34:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:99
bfc03d38:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:100
bfc03d3c:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:101
bfc03d40:	3c14bfc0 	lui	s4,0xbfc0
bfc03d44:	26943d48 	addiu	s4,s4,15688
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:102
bfc03d48:	15000050 	bnez	t0,bfc03e8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:103
bfc03d4c:	8d170002 	lw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:104
bfc03d50:	1657004e 	bne	s2,s7,bfc03e8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:105
bfc03d54:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:106
bfc03d58:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:107
bfc03d5c:	3c14bfc0 	lui	s4,0xbfc0
bfc03d60:	26943d64 	addiu	s4,s4,15716
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:108
bfc03d64:	14000049 	bnez	zero,bfc03e8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:109
bfc03d68:	85170001 	lh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:110
bfc03d6c:	16570047 	bne	s2,s7,bfc03e8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:111
bfc03d70:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:112
bfc03d74:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:113
bfc03d78:	3c14bfc0 	lui	s4,0xbfc0
bfc03d7c:	26943d80 	addiu	s4,s4,15744
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:114
bfc03d80:	15000042 	bnez	t0,bfc03e8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:115
bfc03d84:	85170001 	lh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:116
bfc03d88:	16570040 	bne	s2,s7,bfc03e8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:117
bfc03d8c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:118
bfc03d90:	3c14bfc0 	lui	s4,0xbfc0
bfc03d94:	26943d98 	addiu	s4,s4,15768
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:119
bfc03d98:	1400003c 	bnez	zero,bfc03e8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:120
bfc03d9c:	95170003 	lhu	s7,3(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:121
bfc03da0:	1657003a 	bne	s2,s7,bfc03e8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:122
bfc03da4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:123
bfc03da8:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:124
bfc03dac:	3c14bfc0 	lui	s4,0xbfc0
bfc03db0:	26943db4 	addiu	s4,s4,15796
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:125
bfc03db4:	15000035 	bnez	t0,bfc03e8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:126
bfc03db8:	95170003 	lhu	s7,3(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:127
bfc03dbc:	16570033 	bne	s2,s7,bfc03e8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:128
bfc03dc0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:130
bfc03dc4:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:131
bfc03dc8:	3c170005 	lui	s7,0x5
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:132
bfc03dcc:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:133
bfc03dd0:	3c14bfc0 	lui	s4,0xbfc0
bfc03dd4:	26943dd8 	addiu	s4,s4,15832
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:134
bfc03dd8:	1400002c 	bnez	zero,bfc03e8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:135
bfc03ddc:	ad170002 	sw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:136
bfc03de0:	02f2001b 	divu	zero,s7,s2
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:137
bfc03de4:	16570029 	bne	s2,s7,bfc03e8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:138
bfc03de8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:139
bfc03dec:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:140
bfc03df0:	3c14bfc0 	lui	s4,0xbfc0
bfc03df4:	26943df8 	addiu	s4,s4,15864
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:141
bfc03df8:	15000024 	bnez	t0,bfc03e8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:142
bfc03dfc:	ad170002 	sw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:143
bfc03e00:	16570022 	bne	s2,s7,bfc03e8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:144
bfc03e04:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:145
bfc03e08:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:146
bfc03e0c:	3c14bfc0 	lui	s4,0xbfc0
bfc03e10:	26943e14 	addiu	s4,s4,15892
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:147
bfc03e14:	1400001d 	bnez	zero,bfc03e8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:148
bfc03e18:	a5170001 	sh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:149
bfc03e1c:	1657001b 	bne	s2,s7,bfc03e8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:150
bfc03e20:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:151
bfc03e24:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:152
bfc03e28:	3c14bfc0 	lui	s4,0xbfc0
bfc03e2c:	26943e30 	addiu	s4,s4,15920
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:153
bfc03e30:	15000016 	bnez	t0,bfc03e8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:154
bfc03e34:	a5170001 	sh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:155
bfc03e38:	16570014 	bne	s2,s7,bfc03e8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:156
bfc03e3c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:159
bfc03e40:	24120007 	li	s2,7
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:160
bfc03e44:	3c170007 	lui	s7,0x7
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:161
bfc03e48:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:162
bfc03e4c:	3c14bfc0 	lui	s4,0xbfc0
bfc03e50:	26943e54 	addiu	s4,s4,15956
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:163
bfc03e54:	1400000d 	bnez	zero,bfc03e8c <inst_error>
bfc03e58:	9e3c56aa 	0x9e3c56aa
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:165
bfc03e5c:	02f20018 	mult	s7,s2
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:166
bfc03e60:	1657000a 	bne	s2,s7,bfc03e8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:167
bfc03e64:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:168
bfc03e68:	24120007 	li	s2,7
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:169
bfc03e6c:	3c14bfc0 	lui	s4,0xbfc0
bfc03e70:	26943e78 	addiu	s4,s4,15992
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:170
bfc03e74:	02f20018 	mult	s7,s2
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:171
bfc03e78:	15000004 	bnez	t0,bfc03e8c <inst_error>
bfc03e7c:	ec1ba960 	swc3	$27,-22176(zero)
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:173
bfc03e80:	16570002 	bne	s2,s7,bfc03e8c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:174
bfc03e84:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:176
bfc03e88:	26730001 	addiu	s3,s3,1

bfc03e8c <inst_error>:
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:179
bfc03e8c:	00104e00 	sll	t1,s0,0x18
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:180
bfc03e90:	01334025 	or	t0,t1,s3
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:181
bfc03e94:	ae280000 	sw	t0,0(s1)
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:182
bfc03e98:	03e00008 	jr	ra
/home/yfy/func_test_v0.01/soft/func/inst/n79_bne_ds_ex.S:183
bfc03e9c:	00000000 	nop

bfc03ea0 <n66_break_ex_test>:
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:7
bfc03ea0:	26100001 	addiu	s0,s0,1
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:8
bfc03ea4:	3c08800d 	lui	t0,0x800d
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:9
bfc03ea8:	24120002 	li	s2,2
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:10
bfc03eac:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:12
bfc03eb0:	40805800 	mtc0	zero,$11
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:13
bfc03eb4:	3c170040 	lui	s7,0x40
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:14
bfc03eb8:	40976000 	mtc0	s7,c0_sr
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:15
bfc03ebc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:16
bfc03ec0:	3c170002 	lui	s7,0x2
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:19
bfc03ec4:	3c14bfc0 	lui	s4,0xbfc0
bfc03ec8:	26943ecc 	addiu	s4,s4,16076

bfc03ecc <break_pc1>:
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:21
bfc03ecc:	0000000d 	break
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:22
bfc03ed0:	1657003c 	bne	s2,s7,bfc03fc4 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:23
bfc03ed4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:25
bfc03ed8:	24120002 	li	s2,2
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:26
bfc03edc:	3c14bfc0 	lui	s4,0xbfc0
bfc03ee0:	26943eec 	addiu	s4,s4,16108
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:27
bfc03ee4:	ad080004 	sw	t0,4(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:28
bfc03ee8:	ad140004 	sw	s4,4(t0)

bfc03eec <break_pc2>:
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:30
bfc03eec:	0000000d 	break
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:31
bfc03ef0:	ad140000 	sw	s4,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:32
bfc03ef4:	8d090004 	lw	t1,4(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:33
bfc03ef8:	15340032 	bne	t1,s4,bfc03fc4 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:34
bfc03efc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:35
bfc03f00:	16570030 	bne	s2,s7,bfc03fc4 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:36
bfc03f04:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:37
bfc03f08:	24120002 	li	s2,2
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:38
bfc03f0c:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:40
bfc03f10:	24120002 	li	s2,2
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:41
bfc03f14:	3c14bfc0 	lui	s4,0xbfc0
bfc03f18:	26943f24 	addiu	s4,s4,16164
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:42
bfc03f1c:	01000011 	mthi	t0
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:43
bfc03f20:	0110001b 	divu	zero,t0,s0

bfc03f24 <break_pc3>:
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:45
bfc03f24:	0000000d 	break
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:46
bfc03f28:	00004810 	mfhi	t1
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:47
bfc03f2c:	11280025 	beq	t1,t0,bfc03fc4 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:48
bfc03f30:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:49
bfc03f34:	16570023 	bne	s2,s7,bfc03fc4 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:50
bfc03f38:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:52
bfc03f3c:	24120002 	li	s2,2
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:53
bfc03f40:	3c14bfc0 	lui	s4,0xbfc0
bfc03f44:	26943f48 	addiu	s4,s4,16200

bfc03f48 <break_pc4>:
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:55
bfc03f48:	0000000d 	break
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:56
bfc03f4c:	0208001b 	divu	zero,s0,t0
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:57
bfc03f50:	1657001c 	bne	s2,s7,bfc03fc4 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:58
bfc03f54:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:60
bfc03f58:	24120002 	li	s2,2
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:61
bfc03f5c:	3c14bfc0 	lui	s4,0xbfc0
bfc03f60:	26943f6c 	addiu	s4,s4,16236
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:62
bfc03f64:	01000013 	mtlo	t0
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:63
bfc03f68:	01100019 	multu	t0,s0

bfc03f6c <break_pc5>:
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:65
bfc03f6c:	0000000d 	break
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:66
bfc03f70:	00004810 	mfhi	t1
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:67
bfc03f74:	11280013 	beq	t1,t0,bfc03fc4 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:68
bfc03f78:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:69
bfc03f7c:	16570011 	bne	s2,s7,bfc03fc4 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:70
bfc03f80:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:72
bfc03f84:	24120002 	li	s2,2
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:73
bfc03f88:	3c14bfc0 	lui	s4,0xbfc0
bfc03f8c:	26943f90 	addiu	s4,s4,16272

bfc03f90 <break_pc6>:
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:75
bfc03f90:	0000000d 	break
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:76
bfc03f94:	01120019 	multu	t0,s2
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:77
bfc03f98:	1657000a 	bne	s2,s7,bfc03fc4 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:78
bfc03f9c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:80
bfc03fa0:	24120002 	li	s2,2
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:81
bfc03fa4:	3c14bfc0 	lui	s4,0xbfc0
bfc03fa8:	26943fb0 	addiu	s4,s4,16304
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:82
bfc03fac:	40927000 	mtc0	s2,c0_epc

bfc03fb0 <break_pc7>:
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:84
bfc03fb0:	0000000d 	break
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:85
bfc03fb4:	40887000 	mtc0	t0,c0_epc
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:86
bfc03fb8:	16570002 	bne	s2,s7,bfc03fc4 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:87
bfc03fbc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:89
bfc03fc0:	26730001 	addiu	s3,s3,1

bfc03fc4 <inst_error>:
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:92
bfc03fc4:	00104e00 	sll	t1,s0,0x18
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:93
bfc03fc8:	01334025 	or	t0,t1,s3
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:94
bfc03fcc:	ae280000 	sw	t0,0(s1)
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:95
bfc03fd0:	03e00008 	jr	ra
/home/yfy/func_test_v0.01/soft/func/inst/n66_break_ex.S:96
bfc03fd4:	00000000 	nop
	...

bfc03fe0 <n83_bltz_ds_ex_test>:
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:7
bfc03fe0:	26100001 	addiu	s0,s0,1
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:8
bfc03fe4:	3c08800d 	lui	t0,0x800d
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:10
bfc03fe8:	40805800 	mtc0	zero,$11
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:11
bfc03fec:	3c170040 	lui	s7,0x40
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:12
bfc03ff0:	40976000 	mtc0	s7,c0_sr
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:13
bfc03ff4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:16
bfc03ff8:	24120001 	li	s2,1
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:17
bfc03ffc:	3c170001 	lui	s7,0x1
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:18
bfc04000:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:19
bfc04004:	3c14bfc0 	lui	s4,0xbfc0
bfc04008:	2694400c 	addiu	s4,s4,16396
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:20
bfc0400c:	050000af 	bltz	t0,bfc042cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:21
bfc04010:	0000000c 	syscall
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:22
bfc04014:	165700ad 	bne	s2,s7,bfc042cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:23
bfc04018:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:24
bfc0401c:	24120001 	li	s2,1
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:25
bfc04020:	3c14bfc0 	lui	s4,0xbfc0
bfc04024:	26944028 	addiu	s4,s4,16424
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:26
bfc04028:	064000a8 	bltz	s2,bfc042cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:27
bfc0402c:	0000000c 	syscall
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:28
bfc04030:	165700a6 	bne	s2,s7,bfc042cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:29
bfc04034:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:31
bfc04038:	24120002 	li	s2,2
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:32
bfc0403c:	3c170002 	lui	s7,0x2
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:33
bfc04040:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:34
bfc04044:	3c14bfc0 	lui	s4,0xbfc0
bfc04048:	2694404c 	addiu	s4,s4,16460
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:35
bfc0404c:	0500009f 	bltz	t0,bfc042cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:36
bfc04050:	0000000d 	break
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:37
bfc04054:	1657009d 	bne	s2,s7,bfc042cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:38
bfc04058:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:39
bfc0405c:	24120002 	li	s2,2
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:40
bfc04060:	3c14bfc0 	lui	s4,0xbfc0
bfc04064:	26944068 	addiu	s4,s4,16488
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:41
bfc04068:	06400098 	bltz	s2,bfc042cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:42
bfc0406c:	0000000d 	break
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:43
bfc04070:	16570096 	bne	s2,s7,bfc042cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:44
bfc04074:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:46
bfc04078:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:47
bfc0407c:	3c170003 	lui	s7,0x3
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:48
bfc04080:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:49
bfc04084:	3c14bfc0 	lui	s4,0xbfc0
bfc04088:	2694409c 	addiu	s4,s4,16540
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:50
bfc0408c:	3c04ba03 	lui	a0,0xba03
bfc04090:	34844f60 	ori	a0,a0,0x4f60
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:51
bfc04094:	3c05b615 	lui	a1,0xb615
bfc04098:	34a5fd67 	ori	a1,a1,0xfd67
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:52
bfc0409c:	0500008b 	bltz	t0,bfc042cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:53
bfc040a0:	0085b820 	add	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:54
bfc040a4:	16570089 	bne	s2,s7,bfc042cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:55
bfc040a8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:56
bfc040ac:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:57
bfc040b0:	3c14bfc0 	lui	s4,0xbfc0
bfc040b4:	269440b8 	addiu	s4,s4,16568
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:58
bfc040b8:	06400084 	bltz	s2,bfc042cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:59
bfc040bc:	0085b820 	add	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:60
bfc040c0:	ad170000 	sw	s7,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:61
bfc040c4:	16570081 	bne	s2,s7,bfc042cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:62
bfc040c8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:63
bfc040cc:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:64
bfc040d0:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:65
bfc040d4:	3c14bfc0 	lui	s4,0xbfc0
bfc040d8:	269440e4 	addiu	s4,s4,16612
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:66
bfc040dc:	3c047fff 	lui	a0,0x7fff
bfc040e0:	3484c19e 	ori	a0,a0,0xc19e
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:67
bfc040e4:	05000079 	bltz	t0,bfc042cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:68
bfc040e8:	20976512 	addi	s7,a0,25874
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:69
bfc040ec:	16570077 	bne	s2,s7,bfc042cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:70
bfc040f0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:71
bfc040f4:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:72
bfc040f8:	3c14bfc0 	lui	s4,0xbfc0
bfc040fc:	26944100 	addiu	s4,s4,16640
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:73
bfc04100:	06400072 	bltz	s2,bfc042cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:74
bfc04104:	20976512 	addi	s7,a0,25874
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:75
bfc04108:	16570070 	bne	s2,s7,bfc042cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:76
bfc0410c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:77
bfc04110:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:78
bfc04114:	3c14bfc0 	lui	s4,0xbfc0
bfc04118:	2694412c 	addiu	s4,s4,16684
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:79
bfc0411c:	3c04a85e 	lui	a0,0xa85e
bfc04120:	34847d00 	ori	a0,a0,0x7d00
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:80
bfc04124:	3c056b7e 	lui	a1,0x6b7e
bfc04128:	34a58e36 	ori	a1,a1,0x8e36
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:81
bfc0412c:	05000067 	bltz	t0,bfc042cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:82
bfc04130:	0085b822 	sub	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:83
bfc04134:	16570065 	bne	s2,s7,bfc042cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:84
bfc04138:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:85
bfc0413c:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:86
bfc04140:	3c14bfc0 	lui	s4,0xbfc0
bfc04144:	26944148 	addiu	s4,s4,16712
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:87
bfc04148:	06400060 	bltz	s2,bfc042cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:88
bfc0414c:	0085b822 	sub	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:89
bfc04150:	1657005e 	bne	s2,s7,bfc042cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:90
bfc04154:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:92
bfc04158:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:93
bfc0415c:	3c170004 	lui	s7,0x4
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:94
bfc04160:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:95
bfc04164:	3c14bfc0 	lui	s4,0xbfc0
bfc04168:	2694416c 	addiu	s4,s4,16748
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:96
bfc0416c:	05000057 	bltz	t0,bfc042cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:97
bfc04170:	8d170002 	lw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:98
bfc04174:	16570055 	bne	s2,s7,bfc042cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:99
bfc04178:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:100
bfc0417c:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:101
bfc04180:	3c14bfc0 	lui	s4,0xbfc0
bfc04184:	26944188 	addiu	s4,s4,16776
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:102
bfc04188:	06400050 	bltz	s2,bfc042cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:103
bfc0418c:	8d170002 	lw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:104
bfc04190:	1657004e 	bne	s2,s7,bfc042cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:105
bfc04194:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:106
bfc04198:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:107
bfc0419c:	3c14bfc0 	lui	s4,0xbfc0
bfc041a0:	269441a4 	addiu	s4,s4,16804
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:108
bfc041a4:	05000049 	bltz	t0,bfc042cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:109
bfc041a8:	85170001 	lh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:110
bfc041ac:	02f2001b 	divu	zero,s7,s2
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:111
bfc041b0:	16570046 	bne	s2,s7,bfc042cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:112
bfc041b4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:113
bfc041b8:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:114
bfc041bc:	3c14bfc0 	lui	s4,0xbfc0
bfc041c0:	269441c4 	addiu	s4,s4,16836
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:115
bfc041c4:	06400041 	bltz	s2,bfc042cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:116
bfc041c8:	85170001 	lh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:117
bfc041cc:	1657003f 	bne	s2,s7,bfc042cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:118
bfc041d0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:119
bfc041d4:	3c14bfc0 	lui	s4,0xbfc0
bfc041d8:	269441dc 	addiu	s4,s4,16860
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:120
bfc041dc:	0500003b 	bltz	t0,bfc042cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:121
bfc041e0:	95170003 	lhu	s7,3(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:122
bfc041e4:	16570039 	bne	s2,s7,bfc042cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:123
bfc041e8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:124
bfc041ec:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:125
bfc041f0:	3c14bfc0 	lui	s4,0xbfc0
bfc041f4:	269441f8 	addiu	s4,s4,16888
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:126
bfc041f8:	06400034 	bltz	s2,bfc042cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:127
bfc041fc:	95170003 	lhu	s7,3(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:128
bfc04200:	16570032 	bne	s2,s7,bfc042cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:129
bfc04204:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:131
bfc04208:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:132
bfc0420c:	3c170005 	lui	s7,0x5
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:133
bfc04210:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:134
bfc04214:	3c14bfc0 	lui	s4,0xbfc0
bfc04218:	2694421c 	addiu	s4,s4,16924
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:135
bfc0421c:	0500002b 	bltz	t0,bfc042cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:136
bfc04220:	ad170002 	sw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:137
bfc04224:	16570029 	bne	s2,s7,bfc042cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:138
bfc04228:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:139
bfc0422c:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:140
bfc04230:	3c14bfc0 	lui	s4,0xbfc0
bfc04234:	26944238 	addiu	s4,s4,16952
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:141
bfc04238:	06400024 	bltz	s2,bfc042cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:142
bfc0423c:	ad170002 	sw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:143
bfc04240:	16570022 	bne	s2,s7,bfc042cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:144
bfc04244:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:145
bfc04248:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:146
bfc0424c:	3c14bfc0 	lui	s4,0xbfc0
bfc04250:	26944254 	addiu	s4,s4,16980
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:147
bfc04254:	0500001d 	bltz	t0,bfc042cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:148
bfc04258:	a5170001 	sh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:149
bfc0425c:	1657001b 	bne	s2,s7,bfc042cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:150
bfc04260:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:151
bfc04264:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:152
bfc04268:	3c14bfc0 	lui	s4,0xbfc0
bfc0426c:	26944270 	addiu	s4,s4,17008
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:153
bfc04270:	06400016 	bltz	s2,bfc042cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:154
bfc04274:	a5170001 	sh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:155
bfc04278:	16570014 	bne	s2,s7,bfc042cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:156
bfc0427c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:159
bfc04280:	24120007 	li	s2,7
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:160
bfc04284:	3c170007 	lui	s7,0x7
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:161
bfc04288:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:162
bfc0428c:	3c14bfc0 	lui	s4,0xbfc0
bfc04290:	26944294 	addiu	s4,s4,17044
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:163
bfc04294:	0500000d 	bltz	t0,bfc042cc <inst_error>
bfc04298:	9e3c56aa 	0x9e3c56aa
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:165
bfc0429c:	02f20018 	mult	s7,s2
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:166
bfc042a0:	1657000a 	bne	s2,s7,bfc042cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:167
bfc042a4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:168
bfc042a8:	24120007 	li	s2,7
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:169
bfc042ac:	3c14bfc0 	lui	s4,0xbfc0
bfc042b0:	269442b8 	addiu	s4,s4,17080
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:170
bfc042b4:	02f20018 	mult	s7,s2
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:171
bfc042b8:	06400004 	bltz	s2,bfc042cc <inst_error>
bfc042bc:	ec1ba960 	swc3	$27,-22176(zero)
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:173
bfc042c0:	16570002 	bne	s2,s7,bfc042cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:174
bfc042c4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:176
bfc042c8:	26730001 	addiu	s3,s3,1

bfc042cc <inst_error>:
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:179
bfc042cc:	00104e00 	sll	t1,s0,0x18
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:180
bfc042d0:	01334025 	or	t0,t1,s3
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:181
bfc042d4:	ae280000 	sw	t0,0(s1)
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:182
bfc042d8:	03e00008 	jr	ra
/home/yfy/func_test_v0.01/soft/func/inst/n83_bltz_ds_ex.S:183
bfc042dc:	00000000 	nop

bfc042e0 <n70_lw_adel_ex_test>:
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:7
bfc042e0:	26100001 	addiu	s0,s0,1
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:8
bfc042e4:	3c08800d 	lui	t0,0x800d
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:9
bfc042e8:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:10
bfc042ec:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:12
bfc042f0:	40805800 	mtc0	zero,$11
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:13
bfc042f4:	3c170040 	lui	s7,0x40
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:14
bfc042f8:	40976000 	mtc0	s7,c0_sr
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:15
bfc042fc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:16
bfc04300:	3c170004 	lui	s7,0x4
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:19
bfc04304:	3c023958 	lui	v0,0x3958
bfc04308:	3442f252 	ori	v0,v0,0xf252
bfc0430c:	3c033958 	lui	v1,0x3958
bfc04310:	3463f252 	ori	v1,v1,0xf252
bfc04314:	3c04800d 	lui	a0,0x800d
bfc04318:	3484759c 	ori	a0,a0,0x759c
bfc0431c:	3c05b27f 	lui	a1,0xb27f
bfc04320:	34a59788 	ori	a1,a1,0x9788
bfc04324:	24878845 	addiu	a3,a0,-30651
bfc04328:	3c010001 	lui	at,0x1
bfc0432c:	00240821 	addu	at,at,a0
bfc04330:	ac258844 	sw	a1,-30652(at)
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:20
bfc04334:	3c14bfc0 	lui	s4,0xbfc0
bfc04338:	2694433c 	addiu	s4,s4,17212
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:21
bfc0433c:	8c828845 	lw	v0,-30651(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:22
bfc04340:	1657009f 	bne	s2,s7,bfc045c0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:23
bfc04344:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:24
bfc04348:	1443009d 	bne	v0,v1,bfc045c0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:25
bfc0434c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:26
bfc04350:	40164000 	mfc0	s6,c0_badvaddr
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:27
bfc04354:	14f6009a 	bne	a3,s6,bfc045c0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:28
bfc04358:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:30
bfc0435c:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:31
bfc04360:	3c02c044 	lui	v0,0xc044
bfc04364:	34422bd0 	ori	v0,v0,0x2bd0
bfc04368:	3c03c044 	lui	v1,0xc044
bfc0436c:	34632bd0 	ori	v1,v1,0x2bd0
bfc04370:	3c04800d 	lui	a0,0x800d
bfc04374:	34847748 	ori	a0,a0,0x7748
bfc04378:	3c053101 	lui	a1,0x3101
bfc0437c:	34a5bbec 	ori	a1,a1,0xbbec
bfc04380:	24870ea2 	addiu	a3,a0,3746
bfc04384:	ac850ea0 	sw	a1,3744(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:32
bfc04388:	3c14bfc0 	lui	s4,0xbfc0
bfc0438c:	26944398 	addiu	s4,s4,17304
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:33
bfc04390:	ad080004 	sw	t0,4(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:34
bfc04394:	ad140004 	sw	s4,4(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:35
bfc04398:	8c820ea2 	lw	v0,3746(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:36
bfc0439c:	ad140000 	sw	s4,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:37
bfc043a0:	8d090004 	lw	t1,4(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:38
bfc043a4:	15340086 	bne	t1,s4,bfc045c0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:39
bfc043a8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:40
bfc043ac:	16570084 	bne	s2,s7,bfc045c0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:41
bfc043b0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:42
bfc043b4:	14430082 	bne	v0,v1,bfc045c0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:43
bfc043b8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:44
bfc043bc:	40164000 	mfc0	s6,c0_badvaddr
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:45
bfc043c0:	14f6007f 	bne	a3,s6,bfc045c0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:46
bfc043c4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:47
bfc043c8:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:48
bfc043cc:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:50
bfc043d0:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:51
bfc043d4:	3c026892 	lui	v0,0x6892
bfc043d8:	34429b5c 	ori	v0,v0,0x9b5c
bfc043dc:	3c036892 	lui	v1,0x6892
bfc043e0:	34639b5c 	ori	v1,v1,0x9b5c
bfc043e4:	3c04800d 	lui	a0,0x800d
bfc043e8:	348459dc 	ori	a0,a0,0x59dc
bfc043ec:	3c0594a1 	lui	a1,0x94a1
bfc043f0:	34a5ade4 	ori	a1,a1,0xade4
bfc043f4:	24877cee 	addiu	a3,a0,31982
bfc043f8:	ac857cec 	sw	a1,31980(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:52
bfc043fc:	3c14bfc0 	lui	s4,0xbfc0
bfc04400:	2694440c 	addiu	s4,s4,17420
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:53
bfc04404:	01000011 	mthi	t0
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:54
bfc04408:	0110001b 	divu	zero,t0,s0
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:55
bfc0440c:	8c827cee 	lw	v0,31982(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:56
bfc04410:	00004810 	mfhi	t1
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:57
bfc04414:	1128006a 	beq	t1,t0,bfc045c0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:58
bfc04418:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:59
bfc0441c:	16570068 	bne	s2,s7,bfc045c0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:60
bfc04420:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:61
bfc04424:	14430066 	bne	v0,v1,bfc045c0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:62
bfc04428:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:63
bfc0442c:	40164000 	mfc0	s6,c0_badvaddr
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:64
bfc04430:	14f60063 	bne	a3,s6,bfc045c0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:65
bfc04434:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:67
bfc04438:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:68
bfc0443c:	3c027423 	lui	v0,0x7423
bfc04440:	3442d85f 	ori	v0,v0,0xd85f
bfc04444:	3c037423 	lui	v1,0x7423
bfc04448:	3463d85f 	ori	v1,v1,0xd85f
bfc0444c:	3c04800d 	lui	a0,0x800d
bfc04450:	34847748 	ori	a0,a0,0x7748
bfc04454:	3c05e2b0 	lui	a1,0xe2b0
bfc04458:	34a5a2c0 	ori	a1,a1,0xa2c0
bfc0445c:	24874973 	addiu	a3,a0,18803
bfc04460:	ac854970 	sw	a1,18800(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:69
bfc04464:	3c14bfc0 	lui	s4,0xbfc0
bfc04468:	2694446c 	addiu	s4,s4,17516
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:70
bfc0446c:	8c824973 	lw	v0,18803(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:71
bfc04470:	0208001b 	divu	zero,s0,t0
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:72
bfc04474:	16570052 	bne	s2,s7,bfc045c0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:73
bfc04478:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:74
bfc0447c:	14430050 	bne	v0,v1,bfc045c0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:75
bfc04480:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:76
bfc04484:	40164000 	mfc0	s6,c0_badvaddr
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:77
bfc04488:	14f6004d 	bne	a3,s6,bfc045c0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:78
bfc0448c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:80
bfc04490:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:81
bfc04494:	3c02dd06 	lui	v0,0xdd06
bfc04498:	34424458 	ori	v0,v0,0x4458
bfc0449c:	3c03dd06 	lui	v1,0xdd06
bfc044a0:	34634458 	ori	v1,v1,0x4458
bfc044a4:	3c04800d 	lui	a0,0x800d
bfc044a8:	34845bac 	ori	a0,a0,0x5bac
bfc044ac:	3c050f9e 	lui	a1,0xf9e
bfc044b0:	34a5dafa 	ori	a1,a1,0xdafa
bfc044b4:	2487003e 	addiu	a3,a0,62
bfc044b8:	ac85003c 	sw	a1,60(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:82
bfc044bc:	3c14bfc0 	lui	s4,0xbfc0
bfc044c0:	269444cc 	addiu	s4,s4,17612
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:83
bfc044c4:	01000013 	mtlo	t0
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:84
bfc044c8:	01100019 	multu	t0,s0
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:85
bfc044cc:	8c82003e 	lw	v0,62(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:86
bfc044d0:	00004810 	mfhi	t1
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:87
bfc044d4:	1128003a 	beq	t1,t0,bfc045c0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:88
bfc044d8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:89
bfc044dc:	16570038 	bne	s2,s7,bfc045c0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:90
bfc044e0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:91
bfc044e4:	14430036 	bne	v0,v1,bfc045c0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:92
bfc044e8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:93
bfc044ec:	40164000 	mfc0	s6,c0_badvaddr
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:94
bfc044f0:	14f60033 	bne	a3,s6,bfc045c0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:95
bfc044f4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:97
bfc044f8:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:98
bfc044fc:	3c021514 	lui	v0,0x1514
bfc04500:	34428b6c 	ori	v0,v0,0x8b6c
bfc04504:	3c031514 	lui	v1,0x1514
bfc04508:	34638b6c 	ori	v1,v1,0x8b6c
bfc0450c:	3c04800d 	lui	a0,0x800d
bfc04510:	34840704 	ori	a0,a0,0x704
bfc04514:	3c055077 	lui	a1,0x5077
bfc04518:	34a5f320 	ori	a1,a1,0xf320
bfc0451c:	2487e53f 	addiu	a3,a0,-6849
bfc04520:	3c010001 	lui	at,0x1
bfc04524:	00240821 	addu	at,at,a0
bfc04528:	ac25e53c 	sw	a1,-6852(at)
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:99
bfc0452c:	3c14bfc0 	lui	s4,0xbfc0
bfc04530:	26944534 	addiu	s4,s4,17716
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:100
bfc04534:	8c82e53f 	lw	v0,-6849(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:101
bfc04538:	01120019 	multu	t0,s2
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:102
bfc0453c:	16570020 	bne	s2,s7,bfc045c0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:103
bfc04540:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:104
bfc04544:	1443001e 	bne	v0,v1,bfc045c0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:105
bfc04548:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:106
bfc0454c:	40164000 	mfc0	s6,c0_badvaddr
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:107
bfc04550:	14f6001b 	bne	a3,s6,bfc045c0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:108
bfc04554:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:110
bfc04558:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:111
bfc0455c:	3c023958 	lui	v0,0x3958
bfc04560:	3442f252 	ori	v0,v0,0xf252
bfc04564:	3c033958 	lui	v1,0x3958
bfc04568:	3463f252 	ori	v1,v1,0xf252
bfc0456c:	3c04800d 	lui	a0,0x800d
bfc04570:	3484759c 	ori	a0,a0,0x759c
bfc04574:	3c05b27f 	lui	a1,0xb27f
bfc04578:	34a59788 	ori	a1,a1,0x9788
bfc0457c:	24878845 	addiu	a3,a0,-30651
bfc04580:	3c010001 	lui	at,0x1
bfc04584:	00240821 	addu	at,at,a0
bfc04588:	ac258844 	sw	a1,-30652(at)
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:112
bfc0458c:	3c14bfc0 	lui	s4,0xbfc0
bfc04590:	26944598 	addiu	s4,s4,17816
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:113
bfc04594:	40927000 	mtc0	s2,c0_epc
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:114
bfc04598:	8c828845 	lw	v0,-30651(a0)
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:115
bfc0459c:	40887000 	mtc0	t0,c0_epc
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:116
bfc045a0:	16570007 	bne	s2,s7,bfc045c0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:117
bfc045a4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:118
bfc045a8:	14430005 	bne	v0,v1,bfc045c0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:119
bfc045ac:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:120
bfc045b0:	40164000 	mfc0	s6,c0_badvaddr
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:121
bfc045b4:	14f60002 	bne	a3,s6,bfc045c0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:122
bfc045b8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:124
bfc045bc:	26730001 	addiu	s3,s3,1

bfc045c0 <inst_error>:
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:127
bfc045c0:	00104e00 	sll	t1,s0,0x18
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:128
bfc045c4:	01334025 	or	t0,t1,s3
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:129
bfc045c8:	ae280000 	sw	t0,0(s1)
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:130
bfc045cc:	03e00008 	jr	ra
/home/yfy/func_test_v0.01/soft/func/inst/n70_lw_adel_ex.S:131
bfc045d0:	00000000 	nop
	...

bfc045e0 <n88_jr_ds_ex_test>:
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:7
bfc045e0:	26100001 	addiu	s0,s0,1
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:8
bfc045e4:	3c08800d 	lui	t0,0x800d
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:10
bfc045e8:	40805800 	mtc0	zero,$11
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:11
bfc045ec:	3c170040 	lui	s7,0x40
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:12
bfc045f0:	40976000 	mtc0	s7,c0_sr
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:13
bfc045f4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:16
bfc045f8:	24120001 	li	s2,1
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:17
bfc045fc:	3c170001 	lui	s7,0x1
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:18
bfc04600:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:19
bfc04604:	3c14bfc0 	lui	s4,0xbfc0
bfc04608:	2694460c 	addiu	s4,s4,17932
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:20
bfc0460c:	02400008 	jr	s2
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:21
bfc04610:	0000000c 	syscall
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:22
bfc04614:	165700ad 	bne	s2,s7,bfc048cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:23
bfc04618:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:24
bfc0461c:	24120001 	li	s2,1
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:25
bfc04620:	3c14bfc0 	lui	s4,0xbfc0
bfc04624:	26944628 	addiu	s4,s4,17960
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:26
bfc04628:	01000008 	jr	t0
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:27
bfc0462c:	0000000c 	syscall
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:28
bfc04630:	165700a6 	bne	s2,s7,bfc048cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:29
bfc04634:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:31
bfc04638:	24120002 	li	s2,2
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:32
bfc0463c:	3c170002 	lui	s7,0x2
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:33
bfc04640:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:34
bfc04644:	3c14bfc0 	lui	s4,0xbfc0
bfc04648:	2694464c 	addiu	s4,s4,17996
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:35
bfc0464c:	02400008 	jr	s2
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:36
bfc04650:	0000000d 	break
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:37
bfc04654:	1657009d 	bne	s2,s7,bfc048cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:38
bfc04658:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:39
bfc0465c:	24120002 	li	s2,2
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:40
bfc04660:	3c14bfc0 	lui	s4,0xbfc0
bfc04664:	26944668 	addiu	s4,s4,18024
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:41
bfc04668:	01000008 	jr	t0
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:42
bfc0466c:	0000000d 	break
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:43
bfc04670:	16570096 	bne	s2,s7,bfc048cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:44
bfc04674:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:46
bfc04678:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:47
bfc0467c:	3c170003 	lui	s7,0x3
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:48
bfc04680:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:49
bfc04684:	3c14bfc0 	lui	s4,0xbfc0
bfc04688:	2694469c 	addiu	s4,s4,18076
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:50
bfc0468c:	3c04ba03 	lui	a0,0xba03
bfc04690:	34844f60 	ori	a0,a0,0x4f60
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:51
bfc04694:	3c05b615 	lui	a1,0xb615
bfc04698:	34a5fd67 	ori	a1,a1,0xfd67
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:52
bfc0469c:	02400008 	jr	s2
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:53
bfc046a0:	0085b820 	add	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:54
bfc046a4:	16570089 	bne	s2,s7,bfc048cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:55
bfc046a8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:56
bfc046ac:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:57
bfc046b0:	3c14bfc0 	lui	s4,0xbfc0
bfc046b4:	269446b8 	addiu	s4,s4,18104
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:58
bfc046b8:	01000008 	jr	t0
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:59
bfc046bc:	0085b820 	add	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:60
bfc046c0:	ad170000 	sw	s7,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:61
bfc046c4:	16570081 	bne	s2,s7,bfc048cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:62
bfc046c8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:63
bfc046cc:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:64
bfc046d0:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:65
bfc046d4:	3c14bfc0 	lui	s4,0xbfc0
bfc046d8:	269446e4 	addiu	s4,s4,18148
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:66
bfc046dc:	3c047fff 	lui	a0,0x7fff
bfc046e0:	3484c19e 	ori	a0,a0,0xc19e
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:67
bfc046e4:	02400008 	jr	s2
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:68
bfc046e8:	20976512 	addi	s7,a0,25874
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:69
bfc046ec:	16570077 	bne	s2,s7,bfc048cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:70
bfc046f0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:71
bfc046f4:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:72
bfc046f8:	3c14bfc0 	lui	s4,0xbfc0
bfc046fc:	26944700 	addiu	s4,s4,18176
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:73
bfc04700:	01000008 	jr	t0
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:74
bfc04704:	20976512 	addi	s7,a0,25874
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:75
bfc04708:	16570070 	bne	s2,s7,bfc048cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:76
bfc0470c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:77
bfc04710:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:78
bfc04714:	3c14bfc0 	lui	s4,0xbfc0
bfc04718:	2694472c 	addiu	s4,s4,18220
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:79
bfc0471c:	3c04a85e 	lui	a0,0xa85e
bfc04720:	34847d00 	ori	a0,a0,0x7d00
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:80
bfc04724:	3c056b7e 	lui	a1,0x6b7e
bfc04728:	34a58e36 	ori	a1,a1,0x8e36
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:81
bfc0472c:	02400008 	jr	s2
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:82
bfc04730:	0085b822 	sub	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:83
bfc04734:	16570065 	bne	s2,s7,bfc048cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:84
bfc04738:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:85
bfc0473c:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:86
bfc04740:	3c14bfc0 	lui	s4,0xbfc0
bfc04744:	26944748 	addiu	s4,s4,18248
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:87
bfc04748:	01000008 	jr	t0
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:88
bfc0474c:	0085b822 	sub	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:89
bfc04750:	1657005e 	bne	s2,s7,bfc048cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:90
bfc04754:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:92
bfc04758:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:93
bfc0475c:	3c170004 	lui	s7,0x4
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:94
bfc04760:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:95
bfc04764:	3c14bfc0 	lui	s4,0xbfc0
bfc04768:	2694476c 	addiu	s4,s4,18284
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:96
bfc0476c:	02400008 	jr	s2
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:97
bfc04770:	8d170002 	lw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:98
bfc04774:	16570055 	bne	s2,s7,bfc048cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:99
bfc04778:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:100
bfc0477c:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:101
bfc04780:	3c14bfc0 	lui	s4,0xbfc0
bfc04784:	26944788 	addiu	s4,s4,18312
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:102
bfc04788:	01000008 	jr	t0
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:103
bfc0478c:	8d170002 	lw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:104
bfc04790:	1657004e 	bne	s2,s7,bfc048cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:105
bfc04794:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:106
bfc04798:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:107
bfc0479c:	3c14bfc0 	lui	s4,0xbfc0
bfc047a0:	269447a4 	addiu	s4,s4,18340
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:108
bfc047a4:	02400008 	jr	s2
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:109
bfc047a8:	85170001 	lh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:110
bfc047ac:	02f2001b 	divu	zero,s7,s2
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:111
bfc047b0:	16570046 	bne	s2,s7,bfc048cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:112
bfc047b4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:113
bfc047b8:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:114
bfc047bc:	3c14bfc0 	lui	s4,0xbfc0
bfc047c0:	269447c4 	addiu	s4,s4,18372
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:115
bfc047c4:	01000008 	jr	t0
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:116
bfc047c8:	85170001 	lh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:117
bfc047cc:	1657003f 	bne	s2,s7,bfc048cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:118
bfc047d0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:119
bfc047d4:	3c14bfc0 	lui	s4,0xbfc0
bfc047d8:	269447dc 	addiu	s4,s4,18396
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:120
bfc047dc:	02400008 	jr	s2
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:121
bfc047e0:	95170003 	lhu	s7,3(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:122
bfc047e4:	16570039 	bne	s2,s7,bfc048cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:123
bfc047e8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:124
bfc047ec:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:125
bfc047f0:	3c14bfc0 	lui	s4,0xbfc0
bfc047f4:	269447f8 	addiu	s4,s4,18424
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:126
bfc047f8:	01000008 	jr	t0
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:127
bfc047fc:	95170003 	lhu	s7,3(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:128
bfc04800:	16570032 	bne	s2,s7,bfc048cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:129
bfc04804:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:131
bfc04808:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:132
bfc0480c:	3c170005 	lui	s7,0x5
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:133
bfc04810:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:134
bfc04814:	3c14bfc0 	lui	s4,0xbfc0
bfc04818:	2694481c 	addiu	s4,s4,18460
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:135
bfc0481c:	02400008 	jr	s2
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:136
bfc04820:	ad170002 	sw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:137
bfc04824:	16570029 	bne	s2,s7,bfc048cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:138
bfc04828:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:139
bfc0482c:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:140
bfc04830:	3c14bfc0 	lui	s4,0xbfc0
bfc04834:	26944838 	addiu	s4,s4,18488
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:141
bfc04838:	01000008 	jr	t0
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:142
bfc0483c:	ad170002 	sw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:143
bfc04840:	16570022 	bne	s2,s7,bfc048cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:144
bfc04844:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:145
bfc04848:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:146
bfc0484c:	3c14bfc0 	lui	s4,0xbfc0
bfc04850:	26944854 	addiu	s4,s4,18516
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:147
bfc04854:	02400008 	jr	s2
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:148
bfc04858:	a5170001 	sh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:149
bfc0485c:	1657001b 	bne	s2,s7,bfc048cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:150
bfc04860:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:151
bfc04864:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:152
bfc04868:	3c14bfc0 	lui	s4,0xbfc0
bfc0486c:	26944870 	addiu	s4,s4,18544
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:153
bfc04870:	01000008 	jr	t0
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:154
bfc04874:	a5170001 	sh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:155
bfc04878:	16570014 	bne	s2,s7,bfc048cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:156
bfc0487c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:159
bfc04880:	24120007 	li	s2,7
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:160
bfc04884:	3c170007 	lui	s7,0x7
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:161
bfc04888:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:162
bfc0488c:	3c14bfc0 	lui	s4,0xbfc0
bfc04890:	26944894 	addiu	s4,s4,18580
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:163
bfc04894:	02400008 	jr	s2
bfc04898:	9e3c56aa 	0x9e3c56aa
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:165
bfc0489c:	02f20018 	mult	s7,s2
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:166
bfc048a0:	1657000a 	bne	s2,s7,bfc048cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:167
bfc048a4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:168
bfc048a8:	24120007 	li	s2,7
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:169
bfc048ac:	3c14bfc0 	lui	s4,0xbfc0
bfc048b0:	269448b8 	addiu	s4,s4,18616
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:170
bfc048b4:	02f20018 	mult	s7,s2
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:171
bfc048b8:	01000008 	jr	t0
bfc048bc:	ec1ba960 	swc3	$27,-22176(zero)
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:173
bfc048c0:	16570002 	bne	s2,s7,bfc048cc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:174
bfc048c4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:176
bfc048c8:	26730001 	addiu	s3,s3,1

bfc048cc <inst_error>:
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:179
bfc048cc:	00104e00 	sll	t1,s0,0x18
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:180
bfc048d0:	01334025 	or	t0,t1,s3
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:181
bfc048d4:	ae280000 	sw	t0,0(s1)
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:182
bfc048d8:	03e00008 	jr	ra
/home/yfy/func_test_v0.01/soft/func/inst/n88_jr_ds_ex.S:183
bfc048dc:	00000000 	nop

bfc048e0 <n77_soft_int_ex_test>:
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:7
bfc048e0:	26100001 	addiu	s0,s0,1
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:8
bfc048e4:	3c08800d 	lui	t0,0x800d
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:9
bfc048e8:	24120008 	li	s2,8
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:10
bfc048ec:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:12
bfc048f0:	40805800 	mtc0	zero,$11
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:13
bfc048f4:	3c170040 	lui	s7,0x40
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:14
bfc048f8:	40976000 	mtc0	s7,c0_sr
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:15
bfc048fc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:16
bfc04900:	3c170008 	lui	s7,0x8
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:19
bfc04904:	3c14bfc0 	lui	s4,0xbfc0
bfc04908:	26944934 	addiu	s4,s4,18740
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:20
bfc0490c:	3c070040 	lui	a3,0x40
bfc04910:	34e7ff01 	ori	a3,a3,0xff01
bfc04914:	2402ffff 	li	v0,-1
bfc04918:	3c03000f 	lui	v1,0xf
bfc0491c:	3463f2ff 	ori	v1,v1,0xf2ff
bfc04920:	40804800 	mtc0	zero,$9
bfc04924:	40825800 	mtc0	v0,$11
bfc04928:	40876000 	mtc0	a3,c0_sr
bfc0492c:	00000000 	nop
bfc04930:	40836800 	mtc0	v1,c0_cause
bfc04934:	1000ffff 	b	bfc04934 <n77_soft_int_ex_test+0x54>
bfc04938:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:21
bfc0493c:	16570078 	bne	s2,s7,bfc04b20 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:22
bfc04940:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:24
bfc04944:	24120008 	li	s2,8
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:25
bfc04948:	3c14bfc0 	lui	s4,0xbfc0
bfc0494c:	2694497c 	addiu	s4,s4,18812
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:26
bfc04950:	ad080004 	sw	t0,4(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:27
bfc04954:	ad140004 	sw	s4,4(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:28
bfc04958:	3c070040 	lui	a3,0x40
bfc0495c:	34e7ff01 	ori	a3,a3,0xff01
bfc04960:	2402ffff 	li	v0,-1
bfc04964:	3403f1ff 	li	v1,0xf1ff
bfc04968:	40804800 	mtc0	zero,$9
bfc0496c:	40825800 	mtc0	v0,$11
bfc04970:	40876000 	mtc0	a3,c0_sr
bfc04974:	00000000 	nop
bfc04978:	40836800 	mtc0	v1,c0_cause
bfc0497c:	1000ffff 	b	bfc0497c <n77_soft_int_ex_test+0x9c>
bfc04980:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:29
bfc04984:	ad140000 	sw	s4,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:30
bfc04988:	8d090004 	lw	t1,4(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:31
bfc0498c:	15340064 	bne	t1,s4,bfc04b20 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:32
bfc04990:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:33
bfc04994:	16570062 	bne	s2,s7,bfc04b20 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:34
bfc04998:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:35
bfc0499c:	24120008 	li	s2,8
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:36
bfc049a0:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:38
bfc049a4:	24120008 	li	s2,8
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:39
bfc049a8:	3c14bfc0 	lui	s4,0xbfc0
bfc049ac:	269449dc 	addiu	s4,s4,18908
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:40
bfc049b0:	01000011 	mthi	t0
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:41
bfc049b4:	0110001b 	divu	zero,t0,s0
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:42
bfc049b8:	3c070040 	lui	a3,0x40
bfc049bc:	34e7ff01 	ori	a3,a3,0xff01
bfc049c0:	2402ffff 	li	v0,-1
bfc049c4:	24030100 	li	v1,256
bfc049c8:	40804800 	mtc0	zero,$9
bfc049cc:	40825800 	mtc0	v0,$11
bfc049d0:	40876000 	mtc0	a3,c0_sr
bfc049d4:	00000000 	nop
bfc049d8:	40836800 	mtc0	v1,c0_cause
bfc049dc:	1000ffff 	b	bfc049dc <n77_soft_int_ex_test+0xfc>
bfc049e0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:43
bfc049e4:	00004810 	mfhi	t1
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:44
bfc049e8:	1128004d 	beq	t1,t0,bfc04b20 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:45
bfc049ec:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:46
bfc049f0:	1657004b 	bne	s2,s7,bfc04b20 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:47
bfc049f4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:49
bfc049f8:	24120008 	li	s2,8
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:50
bfc049fc:	3c14bfc0 	lui	s4,0xbfc0
bfc04a00:	26944a28 	addiu	s4,s4,18984
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:51
bfc04a04:	3c070040 	lui	a3,0x40
bfc04a08:	34e7ff01 	ori	a3,a3,0xff01
bfc04a0c:	2402ffff 	li	v0,-1
bfc04a10:	24030200 	li	v1,512
bfc04a14:	40804800 	mtc0	zero,$9
bfc04a18:	40825800 	mtc0	v0,$11
bfc04a1c:	40876000 	mtc0	a3,c0_sr
bfc04a20:	00000000 	nop
bfc04a24:	40836800 	mtc0	v1,c0_cause
bfc04a28:	1000ffff 	b	bfc04a28 <n77_soft_int_ex_test+0x148>
bfc04a2c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:52
bfc04a30:	0208001b 	divu	zero,s0,t0
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:53
bfc04a34:	1657003a 	bne	s2,s7,bfc04b20 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:54
bfc04a38:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:56
bfc04a3c:	24120008 	li	s2,8
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:57
bfc04a40:	3c14bfc0 	lui	s4,0xbfc0
bfc04a44:	26944a74 	addiu	s4,s4,19060
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:58
bfc04a48:	01000013 	mtlo	t0
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:59
bfc04a4c:	01100019 	multu	t0,s0
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:60
bfc04a50:	3c070040 	lui	a3,0x40
bfc04a54:	34e7ff01 	ori	a3,a3,0xff01
bfc04a58:	2402ffff 	li	v0,-1
bfc04a5c:	24030300 	li	v1,768
bfc04a60:	40804800 	mtc0	zero,$9
bfc04a64:	40825800 	mtc0	v0,$11
bfc04a68:	40876000 	mtc0	a3,c0_sr
bfc04a6c:	00000000 	nop
bfc04a70:	40836800 	mtc0	v1,c0_cause
bfc04a74:	1000ffff 	b	bfc04a74 <n77_soft_int_ex_test+0x194>
bfc04a78:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:61
bfc04a7c:	00004810 	mfhi	t1
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:62
bfc04a80:	11280027 	beq	t1,t0,bfc04b20 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:63
bfc04a84:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:64
bfc04a88:	16570025 	bne	s2,s7,bfc04b20 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:65
bfc04a8c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:67
bfc04a90:	24120008 	li	s2,8
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:68
bfc04a94:	3c14bfc0 	lui	s4,0xbfc0
bfc04a98:	26944ac0 	addiu	s4,s4,19136
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:69
bfc04a9c:	3c070040 	lui	a3,0x40
bfc04aa0:	34e7ff01 	ori	a3,a3,0xff01
bfc04aa4:	2402ffff 	li	v0,-1
bfc04aa8:	24030500 	li	v1,1280
bfc04aac:	40804800 	mtc0	zero,$9
bfc04ab0:	40825800 	mtc0	v0,$11
bfc04ab4:	40876000 	mtc0	a3,c0_sr
bfc04ab8:	00000000 	nop
bfc04abc:	40836800 	mtc0	v1,c0_cause
bfc04ac0:	1000ffff 	b	bfc04ac0 <n77_soft_int_ex_test+0x1e0>
bfc04ac4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:70
bfc04ac8:	01120019 	multu	t0,s2
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:71
bfc04acc:	16570014 	bne	s2,s7,bfc04b20 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:72
bfc04ad0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:74
bfc04ad4:	24120008 	li	s2,8
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:75
bfc04ad8:	3c14bfc0 	lui	s4,0xbfc0
bfc04adc:	26944b08 	addiu	s4,s4,19208
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:76
bfc04ae0:	40927000 	mtc0	s2,c0_epc
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:77
bfc04ae4:	3c070040 	lui	a3,0x40
bfc04ae8:	34e7ff01 	ori	a3,a3,0xff01
bfc04aec:	2402ffff 	li	v0,-1
bfc04af0:	24030f00 	li	v1,3840
bfc04af4:	40804800 	mtc0	zero,$9
bfc04af8:	40825800 	mtc0	v0,$11
bfc04afc:	40876000 	mtc0	a3,c0_sr
bfc04b00:	00000000 	nop
bfc04b04:	40836800 	mtc0	v1,c0_cause
bfc04b08:	1000ffff 	b	bfc04b08 <n77_soft_int_ex_test+0x228>
bfc04b0c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:78
bfc04b10:	40887000 	mtc0	t0,c0_epc
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:79
bfc04b14:	16570002 	bne	s2,s7,bfc04b20 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:80
bfc04b18:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:82
bfc04b1c:	26730001 	addiu	s3,s3,1

bfc04b20 <inst_error>:
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:85
bfc04b20:	00104e00 	sll	t1,s0,0x18
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:86
bfc04b24:	01334025 	or	t0,t1,s3
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:87
bfc04b28:	ae280000 	sw	t0,0(s1)
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:88
bfc04b2c:	03e00008 	jr	ra
/home/yfy/func_test_v0.01/soft/func/inst/n77_soft_int_ex.S:89
bfc04b30:	00000000 	nop
	...

bfc04b40 <n82_blez_ds_ex_test>:
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:7
bfc04b40:	26100001 	addiu	s0,s0,1
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:8
bfc04b44:	3c08800d 	lui	t0,0x800d
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:10
bfc04b48:	40805800 	mtc0	zero,$11
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:11
bfc04b4c:	3c170040 	lui	s7,0x40
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:12
bfc04b50:	40976000 	mtc0	s7,c0_sr
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:13
bfc04b54:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:16
bfc04b58:	24120001 	li	s2,1
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:17
bfc04b5c:	3c170001 	lui	s7,0x1
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:18
bfc04b60:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:19
bfc04b64:	3c14bfc0 	lui	s4,0xbfc0
bfc04b68:	26944b6c 	addiu	s4,s4,19308
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:20
bfc04b6c:	180000af 	blez	zero,bfc04e2c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:21
bfc04b70:	0000000c 	syscall
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:22
bfc04b74:	165700ad 	bne	s2,s7,bfc04e2c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:23
bfc04b78:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:24
bfc04b7c:	24120001 	li	s2,1
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:25
bfc04b80:	3c14bfc0 	lui	s4,0xbfc0
bfc04b84:	26944b88 	addiu	s4,s4,19336
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:26
bfc04b88:	1a4000a8 	blez	s2,bfc04e2c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:27
bfc04b8c:	0000000c 	syscall
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:28
bfc04b90:	165700a6 	bne	s2,s7,bfc04e2c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:29
bfc04b94:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:31
bfc04b98:	24120002 	li	s2,2
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:32
bfc04b9c:	3c170002 	lui	s7,0x2
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:33
bfc04ba0:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:34
bfc04ba4:	3c14bfc0 	lui	s4,0xbfc0
bfc04ba8:	26944bac 	addiu	s4,s4,19372
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:35
bfc04bac:	1800009f 	blez	zero,bfc04e2c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:36
bfc04bb0:	0000000d 	break
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:37
bfc04bb4:	1657009d 	bne	s2,s7,bfc04e2c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:38
bfc04bb8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:39
bfc04bbc:	24120002 	li	s2,2
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:40
bfc04bc0:	3c14bfc0 	lui	s4,0xbfc0
bfc04bc4:	26944bc8 	addiu	s4,s4,19400
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:41
bfc04bc8:	1a400098 	blez	s2,bfc04e2c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:42
bfc04bcc:	0000000d 	break
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:43
bfc04bd0:	16570096 	bne	s2,s7,bfc04e2c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:44
bfc04bd4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:46
bfc04bd8:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:47
bfc04bdc:	3c170003 	lui	s7,0x3
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:48
bfc04be0:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:49
bfc04be4:	3c14bfc0 	lui	s4,0xbfc0
bfc04be8:	26944bfc 	addiu	s4,s4,19452
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:50
bfc04bec:	3c04ba03 	lui	a0,0xba03
bfc04bf0:	34844f60 	ori	a0,a0,0x4f60
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:51
bfc04bf4:	3c05b615 	lui	a1,0xb615
bfc04bf8:	34a5fd67 	ori	a1,a1,0xfd67
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:52
bfc04bfc:	1800008b 	blez	zero,bfc04e2c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:53
bfc04c00:	0085b820 	add	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:54
bfc04c04:	16570089 	bne	s2,s7,bfc04e2c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:55
bfc04c08:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:56
bfc04c0c:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:57
bfc04c10:	3c14bfc0 	lui	s4,0xbfc0
bfc04c14:	26944c18 	addiu	s4,s4,19480
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:58
bfc04c18:	1a400084 	blez	s2,bfc04e2c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:59
bfc04c1c:	0085b820 	add	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:60
bfc04c20:	ad170000 	sw	s7,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:61
bfc04c24:	16570081 	bne	s2,s7,bfc04e2c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:62
bfc04c28:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:63
bfc04c2c:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:64
bfc04c30:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:65
bfc04c34:	3c14bfc0 	lui	s4,0xbfc0
bfc04c38:	26944c44 	addiu	s4,s4,19524
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:66
bfc04c3c:	3c047fff 	lui	a0,0x7fff
bfc04c40:	3484c19e 	ori	a0,a0,0xc19e
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:67
bfc04c44:	18000079 	blez	zero,bfc04e2c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:68
bfc04c48:	20976512 	addi	s7,a0,25874
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:69
bfc04c4c:	16570077 	bne	s2,s7,bfc04e2c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:70
bfc04c50:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:71
bfc04c54:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:72
bfc04c58:	3c14bfc0 	lui	s4,0xbfc0
bfc04c5c:	26944c60 	addiu	s4,s4,19552
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:73
bfc04c60:	1a400072 	blez	s2,bfc04e2c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:74
bfc04c64:	20976512 	addi	s7,a0,25874
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:75
bfc04c68:	16570070 	bne	s2,s7,bfc04e2c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:76
bfc04c6c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:77
bfc04c70:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:78
bfc04c74:	3c14bfc0 	lui	s4,0xbfc0
bfc04c78:	26944c8c 	addiu	s4,s4,19596
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:79
bfc04c7c:	3c04a85e 	lui	a0,0xa85e
bfc04c80:	34847d00 	ori	a0,a0,0x7d00
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:80
bfc04c84:	3c056b7e 	lui	a1,0x6b7e
bfc04c88:	34a58e36 	ori	a1,a1,0x8e36
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:81
bfc04c8c:	18000067 	blez	zero,bfc04e2c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:82
bfc04c90:	0085b822 	sub	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:83
bfc04c94:	16570065 	bne	s2,s7,bfc04e2c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:84
bfc04c98:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:85
bfc04c9c:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:86
bfc04ca0:	3c14bfc0 	lui	s4,0xbfc0
bfc04ca4:	26944ca8 	addiu	s4,s4,19624
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:87
bfc04ca8:	1a400060 	blez	s2,bfc04e2c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:88
bfc04cac:	0085b822 	sub	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:89
bfc04cb0:	1657005e 	bne	s2,s7,bfc04e2c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:90
bfc04cb4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:92
bfc04cb8:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:93
bfc04cbc:	3c170004 	lui	s7,0x4
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:94
bfc04cc0:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:95
bfc04cc4:	3c14bfc0 	lui	s4,0xbfc0
bfc04cc8:	26944ccc 	addiu	s4,s4,19660
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:96
bfc04ccc:	18000057 	blez	zero,bfc04e2c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:97
bfc04cd0:	8d170002 	lw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:98
bfc04cd4:	16570055 	bne	s2,s7,bfc04e2c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:99
bfc04cd8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:100
bfc04cdc:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:101
bfc04ce0:	3c14bfc0 	lui	s4,0xbfc0
bfc04ce4:	26944ce8 	addiu	s4,s4,19688
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:102
bfc04ce8:	1a400050 	blez	s2,bfc04e2c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:103
bfc04cec:	8d170002 	lw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:104
bfc04cf0:	1657004e 	bne	s2,s7,bfc04e2c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:105
bfc04cf4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:106
bfc04cf8:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:107
bfc04cfc:	3c14bfc0 	lui	s4,0xbfc0
bfc04d00:	26944d04 	addiu	s4,s4,19716
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:108
bfc04d04:	18000049 	blez	zero,bfc04e2c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:109
bfc04d08:	85170001 	lh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:110
bfc04d0c:	02f2001b 	divu	zero,s7,s2
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:111
bfc04d10:	16570046 	bne	s2,s7,bfc04e2c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:112
bfc04d14:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:113
bfc04d18:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:114
bfc04d1c:	3c14bfc0 	lui	s4,0xbfc0
bfc04d20:	26944d24 	addiu	s4,s4,19748
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:115
bfc04d24:	1a400041 	blez	s2,bfc04e2c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:116
bfc04d28:	85170001 	lh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:117
bfc04d2c:	1657003f 	bne	s2,s7,bfc04e2c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:118
bfc04d30:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:119
bfc04d34:	3c14bfc0 	lui	s4,0xbfc0
bfc04d38:	26944d3c 	addiu	s4,s4,19772
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:120
bfc04d3c:	1800003b 	blez	zero,bfc04e2c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:121
bfc04d40:	95170003 	lhu	s7,3(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:122
bfc04d44:	16570039 	bne	s2,s7,bfc04e2c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:123
bfc04d48:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:124
bfc04d4c:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:125
bfc04d50:	3c14bfc0 	lui	s4,0xbfc0
bfc04d54:	26944d58 	addiu	s4,s4,19800
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:126
bfc04d58:	1a400034 	blez	s2,bfc04e2c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:127
bfc04d5c:	95170003 	lhu	s7,3(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:128
bfc04d60:	16570032 	bne	s2,s7,bfc04e2c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:129
bfc04d64:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:131
bfc04d68:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:132
bfc04d6c:	3c170005 	lui	s7,0x5
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:133
bfc04d70:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:134
bfc04d74:	3c14bfc0 	lui	s4,0xbfc0
bfc04d78:	26944d7c 	addiu	s4,s4,19836
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:135
bfc04d7c:	1800002b 	blez	zero,bfc04e2c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:136
bfc04d80:	ad170002 	sw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:137
bfc04d84:	16570029 	bne	s2,s7,bfc04e2c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:138
bfc04d88:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:139
bfc04d8c:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:140
bfc04d90:	3c14bfc0 	lui	s4,0xbfc0
bfc04d94:	26944d98 	addiu	s4,s4,19864
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:141
bfc04d98:	1a400024 	blez	s2,bfc04e2c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:142
bfc04d9c:	ad170002 	sw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:143
bfc04da0:	16570022 	bne	s2,s7,bfc04e2c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:144
bfc04da4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:145
bfc04da8:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:146
bfc04dac:	3c14bfc0 	lui	s4,0xbfc0
bfc04db0:	26944db4 	addiu	s4,s4,19892
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:147
bfc04db4:	1800001d 	blez	zero,bfc04e2c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:148
bfc04db8:	a5170001 	sh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:149
bfc04dbc:	1657001b 	bne	s2,s7,bfc04e2c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:150
bfc04dc0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:151
bfc04dc4:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:152
bfc04dc8:	3c14bfc0 	lui	s4,0xbfc0
bfc04dcc:	26944dd0 	addiu	s4,s4,19920
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:153
bfc04dd0:	1a400016 	blez	s2,bfc04e2c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:154
bfc04dd4:	a5170001 	sh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:155
bfc04dd8:	16570014 	bne	s2,s7,bfc04e2c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:156
bfc04ddc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:159
bfc04de0:	24120007 	li	s2,7
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:160
bfc04de4:	3c170007 	lui	s7,0x7
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:161
bfc04de8:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:162
bfc04dec:	3c14bfc0 	lui	s4,0xbfc0
bfc04df0:	26944df4 	addiu	s4,s4,19956
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:163
bfc04df4:	1800000d 	blez	zero,bfc04e2c <inst_error>
bfc04df8:	9e3c56aa 	0x9e3c56aa
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:165
bfc04dfc:	02f20018 	mult	s7,s2
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:166
bfc04e00:	1657000a 	bne	s2,s7,bfc04e2c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:167
bfc04e04:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:168
bfc04e08:	24120007 	li	s2,7
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:169
bfc04e0c:	3c14bfc0 	lui	s4,0xbfc0
bfc04e10:	26944e18 	addiu	s4,s4,19992
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:170
bfc04e14:	02f20018 	mult	s7,s2
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:171
bfc04e18:	1a400004 	blez	s2,bfc04e2c <inst_error>
bfc04e1c:	ec1ba960 	swc3	$27,-22176(zero)
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:173
bfc04e20:	16570002 	bne	s2,s7,bfc04e2c <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:174
bfc04e24:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:176
bfc04e28:	26730001 	addiu	s3,s3,1

bfc04e2c <inst_error>:
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:179
bfc04e2c:	00104e00 	sll	t1,s0,0x18
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:180
bfc04e30:	01334025 	or	t0,t1,s3
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:181
bfc04e34:	ae280000 	sw	t0,0(s1)
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:182
bfc04e38:	03e00008 	jr	ra
/home/yfy/func_test_v0.01/soft/func/inst/n82_blez_ds_ex.S:183
bfc04e3c:	00000000 	nop

bfc04e40 <n65_syscall_ex_test>:
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:7
bfc04e40:	26100001 	addiu	s0,s0,1
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:8
bfc04e44:	3c08800d 	lui	t0,0x800d
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:9
bfc04e48:	24120001 	li	s2,1
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:10
bfc04e4c:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:12
bfc04e50:	40805800 	mtc0	zero,$11
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:13
bfc04e54:	3c170040 	lui	s7,0x40
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:14
bfc04e58:	40976000 	mtc0	s7,c0_sr
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:15
bfc04e5c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:16
bfc04e60:	3c170001 	lui	s7,0x1
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:19
bfc04e64:	3c14bfc0 	lui	s4,0xbfc0
bfc04e68:	26944e6c 	addiu	s4,s4,20076

bfc04e6c <syscall_pc1>:
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:21
bfc04e6c:	0000000c 	syscall
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:22
bfc04e70:	1657003c 	bne	s2,s7,bfc04f64 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:23
bfc04e74:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:25
bfc04e78:	24120001 	li	s2,1
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:26
bfc04e7c:	3c14bfc0 	lui	s4,0xbfc0
bfc04e80:	26944e8c 	addiu	s4,s4,20108
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:27
bfc04e84:	ad080004 	sw	t0,4(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:28
bfc04e88:	ad140004 	sw	s4,4(t0)

bfc04e8c <syscall_pc2>:
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:30
bfc04e8c:	0000000c 	syscall
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:31
bfc04e90:	ad140000 	sw	s4,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:32
bfc04e94:	8d090004 	lw	t1,4(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:33
bfc04e98:	15340032 	bne	t1,s4,bfc04f64 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:34
bfc04e9c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:35
bfc04ea0:	16570030 	bne	s2,s7,bfc04f64 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:36
bfc04ea4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:37
bfc04ea8:	24120001 	li	s2,1
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:38
bfc04eac:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:40
bfc04eb0:	24120001 	li	s2,1
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:41
bfc04eb4:	3c14bfc0 	lui	s4,0xbfc0
bfc04eb8:	26944ec4 	addiu	s4,s4,20164
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:42
bfc04ebc:	01000011 	mthi	t0
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:43
bfc04ec0:	0110001b 	divu	zero,t0,s0

bfc04ec4 <syscall_pc3>:
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:45
bfc04ec4:	0000000c 	syscall
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:46
bfc04ec8:	00004810 	mfhi	t1
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:47
bfc04ecc:	11280025 	beq	t1,t0,bfc04f64 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:48
bfc04ed0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:49
bfc04ed4:	16570023 	bne	s2,s7,bfc04f64 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:50
bfc04ed8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:52
bfc04edc:	24120001 	li	s2,1
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:53
bfc04ee0:	3c14bfc0 	lui	s4,0xbfc0
bfc04ee4:	26944ee8 	addiu	s4,s4,20200

bfc04ee8 <syscall_pc4>:
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:55
bfc04ee8:	0000000c 	syscall
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:56
bfc04eec:	0208001b 	divu	zero,s0,t0
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:57
bfc04ef0:	1657001c 	bne	s2,s7,bfc04f64 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:58
bfc04ef4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:60
bfc04ef8:	24120001 	li	s2,1
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:61
bfc04efc:	3c14bfc0 	lui	s4,0xbfc0
bfc04f00:	26944f0c 	addiu	s4,s4,20236
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:62
bfc04f04:	01000013 	mtlo	t0
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:63
bfc04f08:	01100019 	multu	t0,s0

bfc04f0c <syscall_pc5>:
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:65
bfc04f0c:	0000000c 	syscall
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:66
bfc04f10:	00004810 	mfhi	t1
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:67
bfc04f14:	11280013 	beq	t1,t0,bfc04f64 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:68
bfc04f18:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:69
bfc04f1c:	16570011 	bne	s2,s7,bfc04f64 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:70
bfc04f20:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:72
bfc04f24:	24120001 	li	s2,1
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:73
bfc04f28:	3c14bfc0 	lui	s4,0xbfc0
bfc04f2c:	26944f30 	addiu	s4,s4,20272

bfc04f30 <syscall_pc6>:
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:75
bfc04f30:	0000000c 	syscall
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:76
bfc04f34:	01120019 	multu	t0,s2
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:77
bfc04f38:	1657000a 	bne	s2,s7,bfc04f64 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:78
bfc04f3c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:80
bfc04f40:	24120001 	li	s2,1
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:81
bfc04f44:	3c14bfc0 	lui	s4,0xbfc0
bfc04f48:	26944f50 	addiu	s4,s4,20304
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:82
bfc04f4c:	40927000 	mtc0	s2,c0_epc

bfc04f50 <syscall_pc7>:
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:84
bfc04f50:	0000000c 	syscall
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:85
bfc04f54:	40887000 	mtc0	t0,c0_epc
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:86
bfc04f58:	16570002 	bne	s2,s7,bfc04f64 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:87
bfc04f5c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:89
bfc04f60:	26730001 	addiu	s3,s3,1

bfc04f64 <inst_error>:
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:92
bfc04f64:	00104e00 	sll	t1,s0,0x18
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:93
bfc04f68:	01334025 	or	t0,t1,s3
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:94
bfc04f6c:	ae280000 	sw	t0,0(s1)
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:95
bfc04f70:	03e00008 	jr	ra
/home/yfy/func_test_v0.01/soft/func/inst/n65_syscall_ex.S:96
bfc04f74:	00000000 	nop
	...

bfc04f80 <n85_bgezal_ds_ex_test>:
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:7
bfc04f80:	03e0b021 	move	s6,ra
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:8
bfc04f84:	26100001 	addiu	s0,s0,1
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:9
bfc04f88:	3c08800d 	lui	t0,0x800d
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:11
bfc04f8c:	40805800 	mtc0	zero,$11
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:12
bfc04f90:	3c170040 	lui	s7,0x40
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:13
bfc04f94:	40976000 	mtc0	s7,c0_sr
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:14
bfc04f98:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:17
bfc04f9c:	24120001 	li	s2,1
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:18
bfc04fa0:	3c170001 	lui	s7,0x1
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:19
bfc04fa4:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:20
bfc04fa8:	3c14bfc0 	lui	s4,0xbfc0
bfc04fac:	26944fb0 	addiu	s4,s4,20400
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:21
bfc04fb0:	041100af 	bal	bfc05270 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:22
bfc04fb4:	0000000c 	syscall
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:23
bfc04fb8:	165700ad 	bne	s2,s7,bfc05270 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:24
bfc04fbc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:25
bfc04fc0:	24120001 	li	s2,1
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:26
bfc04fc4:	3c14bfc0 	lui	s4,0xbfc0
bfc04fc8:	26944fcc 	addiu	s4,s4,20428
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:27
bfc04fcc:	051100a8 	bgezal	t0,bfc05270 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:28
bfc04fd0:	0000000c 	syscall
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:29
bfc04fd4:	165700a6 	bne	s2,s7,bfc05270 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:30
bfc04fd8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:32
bfc04fdc:	24120002 	li	s2,2
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:33
bfc04fe0:	3c170002 	lui	s7,0x2
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:34
bfc04fe4:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:35
bfc04fe8:	3c14bfc0 	lui	s4,0xbfc0
bfc04fec:	26944ff0 	addiu	s4,s4,20464
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:36
bfc04ff0:	0411009f 	bal	bfc05270 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:37
bfc04ff4:	0000000d 	break
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:38
bfc04ff8:	1657009d 	bne	s2,s7,bfc05270 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:39
bfc04ffc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:40
bfc05000:	24120002 	li	s2,2
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:41
bfc05004:	3c14bfc0 	lui	s4,0xbfc0
bfc05008:	2694500c 	addiu	s4,s4,20492
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:42
bfc0500c:	05110098 	bgezal	t0,bfc05270 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:43
bfc05010:	0000000d 	break
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:44
bfc05014:	16570096 	bne	s2,s7,bfc05270 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:45
bfc05018:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:47
bfc0501c:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:48
bfc05020:	3c170003 	lui	s7,0x3
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:49
bfc05024:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:50
bfc05028:	3c14bfc0 	lui	s4,0xbfc0
bfc0502c:	26945040 	addiu	s4,s4,20544
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:51
bfc05030:	3c04ba03 	lui	a0,0xba03
bfc05034:	34844f60 	ori	a0,a0,0x4f60
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:52
bfc05038:	3c05b615 	lui	a1,0xb615
bfc0503c:	34a5fd67 	ori	a1,a1,0xfd67
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:53
bfc05040:	0411008b 	bal	bfc05270 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:54
bfc05044:	0085b820 	add	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:55
bfc05048:	16570089 	bne	s2,s7,bfc05270 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:56
bfc0504c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:57
bfc05050:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:58
bfc05054:	3c14bfc0 	lui	s4,0xbfc0
bfc05058:	2694505c 	addiu	s4,s4,20572
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:59
bfc0505c:	05110084 	bgezal	t0,bfc05270 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:60
bfc05060:	0085b820 	add	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:61
bfc05064:	ad170000 	sw	s7,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:62
bfc05068:	16570081 	bne	s2,s7,bfc05270 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:63
bfc0506c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:64
bfc05070:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:65
bfc05074:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:66
bfc05078:	3c14bfc0 	lui	s4,0xbfc0
bfc0507c:	26945088 	addiu	s4,s4,20616
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:67
bfc05080:	3c047fff 	lui	a0,0x7fff
bfc05084:	3484c19e 	ori	a0,a0,0xc19e
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:68
bfc05088:	04110079 	bal	bfc05270 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:69
bfc0508c:	20976512 	addi	s7,a0,25874
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:70
bfc05090:	16570077 	bne	s2,s7,bfc05270 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:71
bfc05094:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:72
bfc05098:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:73
bfc0509c:	3c14bfc0 	lui	s4,0xbfc0
bfc050a0:	269450a4 	addiu	s4,s4,20644
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:74
bfc050a4:	05110072 	bgezal	t0,bfc05270 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:75
bfc050a8:	20976512 	addi	s7,a0,25874
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:76
bfc050ac:	16570070 	bne	s2,s7,bfc05270 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:77
bfc050b0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:78
bfc050b4:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:79
bfc050b8:	3c14bfc0 	lui	s4,0xbfc0
bfc050bc:	269450d0 	addiu	s4,s4,20688
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:80
bfc050c0:	3c04a85e 	lui	a0,0xa85e
bfc050c4:	34847d00 	ori	a0,a0,0x7d00
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:81
bfc050c8:	3c056b7e 	lui	a1,0x6b7e
bfc050cc:	34a58e36 	ori	a1,a1,0x8e36
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:82
bfc050d0:	04110067 	bal	bfc05270 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:83
bfc050d4:	0085b822 	sub	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:84
bfc050d8:	16570065 	bne	s2,s7,bfc05270 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:85
bfc050dc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:86
bfc050e0:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:87
bfc050e4:	3c14bfc0 	lui	s4,0xbfc0
bfc050e8:	269450ec 	addiu	s4,s4,20716
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:88
bfc050ec:	05110060 	bgezal	t0,bfc05270 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:89
bfc050f0:	0085b822 	sub	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:90
bfc050f4:	1657005e 	bne	s2,s7,bfc05270 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:91
bfc050f8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:93
bfc050fc:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:94
bfc05100:	3c170004 	lui	s7,0x4
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:95
bfc05104:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:96
bfc05108:	3c14bfc0 	lui	s4,0xbfc0
bfc0510c:	26945110 	addiu	s4,s4,20752
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:97
bfc05110:	04110057 	bal	bfc05270 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:98
bfc05114:	8d170002 	lw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:99
bfc05118:	16570055 	bne	s2,s7,bfc05270 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:100
bfc0511c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:101
bfc05120:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:102
bfc05124:	3c14bfc0 	lui	s4,0xbfc0
bfc05128:	2694512c 	addiu	s4,s4,20780
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:103
bfc0512c:	05110050 	bgezal	t0,bfc05270 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:104
bfc05130:	8d170002 	lw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:105
bfc05134:	1657004e 	bne	s2,s7,bfc05270 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:106
bfc05138:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:107
bfc0513c:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:108
bfc05140:	3c14bfc0 	lui	s4,0xbfc0
bfc05144:	26945148 	addiu	s4,s4,20808
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:109
bfc05148:	04110049 	bal	bfc05270 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:110
bfc0514c:	85170001 	lh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:111
bfc05150:	02f2001b 	divu	zero,s7,s2
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:112
bfc05154:	16570046 	bne	s2,s7,bfc05270 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:113
bfc05158:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:114
bfc0515c:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:115
bfc05160:	3c14bfc0 	lui	s4,0xbfc0
bfc05164:	26945168 	addiu	s4,s4,20840
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:116
bfc05168:	05110041 	bgezal	t0,bfc05270 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:117
bfc0516c:	85170001 	lh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:118
bfc05170:	1657003f 	bne	s2,s7,bfc05270 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:119
bfc05174:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:120
bfc05178:	3c14bfc0 	lui	s4,0xbfc0
bfc0517c:	26945180 	addiu	s4,s4,20864
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:121
bfc05180:	0411003b 	bal	bfc05270 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:122
bfc05184:	95170003 	lhu	s7,3(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:123
bfc05188:	16570039 	bne	s2,s7,bfc05270 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:124
bfc0518c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:125
bfc05190:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:126
bfc05194:	3c14bfc0 	lui	s4,0xbfc0
bfc05198:	2694519c 	addiu	s4,s4,20892
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:127
bfc0519c:	05110034 	bgezal	t0,bfc05270 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:128
bfc051a0:	95170003 	lhu	s7,3(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:129
bfc051a4:	16570032 	bne	s2,s7,bfc05270 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:130
bfc051a8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:132
bfc051ac:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:133
bfc051b0:	3c170005 	lui	s7,0x5
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:134
bfc051b4:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:135
bfc051b8:	3c14bfc0 	lui	s4,0xbfc0
bfc051bc:	269451c0 	addiu	s4,s4,20928
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:136
bfc051c0:	0411002b 	bal	bfc05270 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:137
bfc051c4:	ad170002 	sw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:138
bfc051c8:	16570029 	bne	s2,s7,bfc05270 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:139
bfc051cc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:140
bfc051d0:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:141
bfc051d4:	3c14bfc0 	lui	s4,0xbfc0
bfc051d8:	269451dc 	addiu	s4,s4,20956
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:142
bfc051dc:	05110024 	bgezal	t0,bfc05270 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:143
bfc051e0:	ad170002 	sw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:144
bfc051e4:	16570022 	bne	s2,s7,bfc05270 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:145
bfc051e8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:146
bfc051ec:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:147
bfc051f0:	3c14bfc0 	lui	s4,0xbfc0
bfc051f4:	269451f8 	addiu	s4,s4,20984
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:148
bfc051f8:	0411001d 	bal	bfc05270 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:149
bfc051fc:	a5170001 	sh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:150
bfc05200:	1657001b 	bne	s2,s7,bfc05270 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:151
bfc05204:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:152
bfc05208:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:153
bfc0520c:	3c14bfc0 	lui	s4,0xbfc0
bfc05210:	26945214 	addiu	s4,s4,21012
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:154
bfc05214:	05110016 	bgezal	t0,bfc05270 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:155
bfc05218:	a5170001 	sh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:156
bfc0521c:	16570014 	bne	s2,s7,bfc05270 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:157
bfc05220:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:160
bfc05224:	24120007 	li	s2,7
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:161
bfc05228:	3c170007 	lui	s7,0x7
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:162
bfc0522c:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:163
bfc05230:	3c14bfc0 	lui	s4,0xbfc0
bfc05234:	26945238 	addiu	s4,s4,21048
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:164
bfc05238:	0411000d 	bal	bfc05270 <inst_error>
bfc0523c:	9e3c56aa 	0x9e3c56aa
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:166
bfc05240:	02f20018 	mult	s7,s2
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:167
bfc05244:	1657000a 	bne	s2,s7,bfc05270 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:168
bfc05248:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:169
bfc0524c:	24120007 	li	s2,7
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:170
bfc05250:	3c14bfc0 	lui	s4,0xbfc0
bfc05254:	2694525c 	addiu	s4,s4,21084
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:171
bfc05258:	02f20018 	mult	s7,s2
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:172
bfc0525c:	05110004 	bgezal	t0,bfc05270 <inst_error>
bfc05260:	ec1ba960 	swc3	$27,-22176(zero)
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:174
bfc05264:	16570002 	bne	s2,s7,bfc05270 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:175
bfc05268:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:177
bfc0526c:	26730001 	addiu	s3,s3,1

bfc05270 <inst_error>:
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:180
bfc05270:	00104e00 	sll	t1,s0,0x18
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:181
bfc05274:	01334025 	or	t0,t1,s3
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:182
bfc05278:	ae280000 	sw	t0,0(s1)
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:183
bfc0527c:	02c0f821 	move	ra,s6
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:184
bfc05280:	03e00008 	jr	ra
/home/yfy/func_test_v0.01/soft/func/inst/n85_bgezal_ds_ex.S:185
bfc05284:	00000000 	nop
	...

bfc05290 <n75_ft_adel_ex_test>:
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:7
bfc05290:	26100001 	addiu	s0,s0,1
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:8
bfc05294:	3c08800d 	lui	t0,0x800d
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:9
bfc05298:	24120006 	li	s2,6
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:10
bfc0529c:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:12
bfc052a0:	40805800 	mtc0	zero,$11
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:13
bfc052a4:	3c170040 	lui	s7,0x40
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:14
bfc052a8:	40976000 	mtc0	s7,c0_sr
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:15
bfc052ac:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:16
bfc052b0:	3c170006 	lui	s7,0x6
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:19
bfc052b4:	3c14b27f 	lui	s4,0xb27f
bfc052b8:	36949789 	ori	s4,s4,0x9789
bfc052bc:	3c07b27f 	lui	a3,0xb27f
bfc052c0:	34e79789 	ori	a3,a3,0x9789
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:20
bfc052c4:	3c15bfc0 	lui	s5,0xbfc0
bfc052c8:	26b552d0 	addiu	s5,s5,21200
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:21
bfc052cc:	02800008 	jr	s4
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:22
bfc052d0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:23
bfc052d4:	16570072 	bne	s2,s7,bfc054a0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:24
bfc052d8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:25
bfc052dc:	40164000 	mfc0	s6,c0_badvaddr
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:26
bfc052e0:	14f6006f 	bne	a3,s6,bfc054a0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:27
bfc052e4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:29
bfc052e8:	24120006 	li	s2,6
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:30
bfc052ec:	3c14a101 	lui	s4,0xa101
bfc052f0:	3694bbed 	ori	s4,s4,0xbbed
bfc052f4:	3c07a101 	lui	a3,0xa101
bfc052f8:	34e7bbed 	ori	a3,a3,0xbbed
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:31
bfc052fc:	40947000 	mtc0	s4,c0_epc
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:32
bfc05300:	3c15bfc0 	lui	s5,0xbfc0
bfc05304:	26b55310 	addiu	s5,s5,21264
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:33
bfc05308:	ad080004 	sw	t0,4(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:34
bfc0530c:	ad140004 	sw	s4,4(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:36
bfc05310:	42000018 	c0	0x18
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:38
bfc05314:	ad140000 	sw	s4,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:39
bfc05318:	8d090004 	lw	t1,4(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:40
bfc0531c:	15340060 	bne	t1,s4,bfc054a0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:41
bfc05320:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:42
bfc05324:	1657005e 	bne	s2,s7,bfc054a0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:43
bfc05328:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:44
bfc0532c:	40164000 	mfc0	s6,c0_badvaddr
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:45
bfc05330:	14f6005b 	bne	a3,s6,bfc054a0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:46
bfc05334:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:47
bfc05338:	24120006 	li	s2,6
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:48
bfc0533c:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:50
bfc05340:	24120006 	li	s2,6
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:51
bfc05344:	3c148479 	lui	s4,0x8479
bfc05348:	36940977 	ori	s4,s4,0x977
bfc0534c:	3c078479 	lui	a3,0x8479
bfc05350:	34e70977 	ori	a3,a3,0x977
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:52
bfc05354:	40947000 	mtc0	s4,c0_epc
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:53
bfc05358:	3c15bfc0 	lui	s5,0xbfc0
bfc0535c:	26b55368 	addiu	s5,s5,21352
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:54
bfc05360:	01000011 	mthi	t0
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:55
bfc05364:	0110001b 	divu	zero,t0,s0
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:57
bfc05368:	42000018 	c0	0x18
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:59
bfc0536c:	00004810 	mfhi	t1
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:60
bfc05370:	1128004b 	beq	t1,t0,bfc054a0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:61
bfc05374:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:62
bfc05378:	16570049 	bne	s2,s7,bfc054a0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:63
bfc0537c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:64
bfc05380:	40164000 	mfc0	s6,c0_badvaddr
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:65
bfc05384:	14f60046 	bne	a3,s6,bfc054a0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:66
bfc05388:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:68
bfc0538c:	24120006 	li	s2,6
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:69
bfc05390:	3c1492b0 	lui	s4,0x92b0
bfc05394:	3694a2c3 	ori	s4,s4,0xa2c3
bfc05398:	3c0792b0 	lui	a3,0x92b0
bfc0539c:	34e7a2c3 	ori	a3,a3,0xa2c3
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:70
bfc053a0:	3c15bfc0 	lui	s5,0xbfc0
bfc053a4:	26b553ac 	addiu	s5,s5,21420
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:71
bfc053a8:	02800008 	jr	s4
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:72
bfc053ac:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:73
bfc053b0:	0208001b 	divu	zero,s0,t0
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:74
bfc053b4:	1657003a 	bne	s2,s7,bfc054a0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:75
bfc053b8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:76
bfc053bc:	40164000 	mfc0	s6,c0_badvaddr
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:77
bfc053c0:	14f60037 	bne	a3,s6,bfc054a0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:78
bfc053c4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:80
bfc053c8:	24120006 	li	s2,6
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:81
bfc053cc:	3c14af9e 	lui	s4,0xaf9e
bfc053d0:	3694dafa 	ori	s4,s4,0xdafa
bfc053d4:	3c07af9e 	lui	a3,0xaf9e
bfc053d8:	34e7dafa 	ori	a3,a3,0xdafa
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:82
bfc053dc:	40947000 	mtc0	s4,c0_epc
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:83
bfc053e0:	3c15bfc0 	lui	s5,0xbfc0
bfc053e4:	26b553f0 	addiu	s5,s5,21488
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:84
bfc053e8:	01000013 	mtlo	t0
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:85
bfc053ec:	01100019 	multu	t0,s0
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:87
bfc053f0:	42000018 	c0	0x18
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:89
bfc053f4:	00004810 	mfhi	t1
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:90
bfc053f8:	11280029 	beq	t1,t0,bfc054a0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:91
bfc053fc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:92
bfc05400:	16570027 	bne	s2,s7,bfc054a0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:93
bfc05404:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:94
bfc05408:	40164000 	mfc0	s6,c0_badvaddr
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:95
bfc0540c:	14f60024 	bne	a3,s6,bfc054a0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:96
bfc05410:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:98
bfc05414:	24120006 	li	s2,6
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:99
bfc05418:	3c14b088 	lui	s4,0xb088
bfc0541c:	3694f329 	ori	s4,s4,0xf329
bfc05420:	3c07b088 	lui	a3,0xb088
bfc05424:	34e7f329 	ori	a3,a3,0xf329
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:100
bfc05428:	3c15bfc0 	lui	s5,0xbfc0
bfc0542c:	26b55434 	addiu	s5,s5,21556
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:101
bfc05430:	02800008 	jr	s4
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:102
bfc05434:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:103
bfc05438:	01120019 	multu	t0,s2
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:104
bfc0543c:	16570018 	bne	s2,s7,bfc054a0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:105
bfc05440:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:106
bfc05444:	14430016 	bne	v0,v1,bfc054a0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:107
bfc05448:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:108
bfc0544c:	40164000 	mfc0	s6,c0_badvaddr
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:109
bfc05450:	14f60013 	bne	a3,s6,bfc054a0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:110
bfc05454:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:112
bfc05458:	24120006 	li	s2,6
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:113
bfc0545c:	3c14827f 	lui	s4,0x827f
bfc05460:	369497ab 	ori	s4,s4,0x97ab
bfc05464:	3c07827f 	lui	a3,0x827f
bfc05468:	34e797ab 	ori	a3,a3,0x97ab
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:114
bfc0546c:	40947000 	mtc0	s4,c0_epc
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:115
bfc05470:	3c15bfc0 	lui	s5,0xbfc0
bfc05474:	26b55478 	addiu	s5,s5,21624
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:117
bfc05478:	42000018 	c0	0x18
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:119
bfc0547c:	40887000 	mtc0	t0,c0_epc
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:120
bfc05480:	16570007 	bne	s2,s7,bfc054a0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:121
bfc05484:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:122
bfc05488:	14430005 	bne	v0,v1,bfc054a0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:123
bfc0548c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:124
bfc05490:	40164000 	mfc0	s6,c0_badvaddr
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:125
bfc05494:	14f60002 	bne	a3,s6,bfc054a0 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:126
bfc05498:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:128
bfc0549c:	26730001 	addiu	s3,s3,1

bfc054a0 <inst_error>:
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:131
bfc054a0:	00104e00 	sll	t1,s0,0x18
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:132
bfc054a4:	01334025 	or	t0,t1,s3
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:133
bfc054a8:	ae280000 	sw	t0,0(s1)
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:134
bfc054ac:	03e00008 	jr	ra
/home/yfy/func_test_v0.01/soft/func/inst/n75_ft_adel_ex.S:135
bfc054b0:	00000000 	nop
	...

bfc054c0 <n69_sub_ov_ex_test>:
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:7
bfc054c0:	26100001 	addiu	s0,s0,1
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:8
bfc054c4:	3c08800d 	lui	t0,0x800d
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:9
bfc054c8:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:10
bfc054cc:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:12
bfc054d0:	40805800 	mtc0	zero,$11
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:13
bfc054d4:	3c170040 	lui	s7,0x40
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:14
bfc054d8:	40976000 	mtc0	s7,c0_sr
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:15
bfc054dc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:16
bfc054e0:	3c170003 	lui	s7,0x3
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:19
bfc054e4:	3c023f06 	lui	v0,0x3f06
bfc054e8:	344237b6 	ori	v0,v0,0x37b6
bfc054ec:	3c033f06 	lui	v1,0x3f06
bfc054f0:	346337b6 	ori	v1,v1,0x37b6
bfc054f4:	3c0463d3 	lui	a0,0x63d3
bfc054f8:	3484fd1e 	ori	a0,a0,0xfd1e
bfc054fc:	3c05d037 	lui	a1,0xd037
bfc05500:	34a58bea 	ori	a1,a1,0x8bea
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:20
bfc05504:	3c14bfc0 	lui	s4,0xbfc0
bfc05508:	2694550c 	addiu	s4,s4,21772
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:21
bfc0550c:	00851022 	sub	v0,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:22
bfc05510:	1657007a 	bne	s2,s7,bfc056fc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:23
bfc05514:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:24
bfc05518:	14430078 	bne	v0,v1,bfc056fc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:25
bfc0551c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:27
bfc05520:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:28
bfc05524:	3c028754 	lui	v0,0x8754
bfc05528:	3442eb0d 	ori	v0,v0,0xeb0d
bfc0552c:	3c038754 	lui	v1,0x8754
bfc05530:	3463eb0d 	ori	v1,v1,0xeb0d
bfc05534:	3c046f8c 	lui	a0,0x6f8c
bfc05538:	34841169 	ori	a0,a0,0x1169
bfc0553c:	3c059edd 	lui	a1,0x9edd
bfc05540:	34a5bba4 	ori	a1,a1,0xbba4
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:29
bfc05544:	3c14bfc0 	lui	s4,0xbfc0
bfc05548:	26945554 	addiu	s4,s4,21844
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:30
bfc0554c:	ad080004 	sw	t0,4(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:31
bfc05550:	ad140004 	sw	s4,4(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:32
bfc05554:	00851022 	sub	v0,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:33
bfc05558:	ad140000 	sw	s4,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:34
bfc0555c:	8d090004 	lw	t1,4(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:35
bfc05560:	15340066 	bne	t1,s4,bfc056fc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:36
bfc05564:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:37
bfc05568:	16570064 	bne	s2,s7,bfc056fc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:38
bfc0556c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:39
bfc05570:	14430062 	bne	v0,v1,bfc056fc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:40
bfc05574:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:41
bfc05578:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:42
bfc0557c:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:44
bfc05580:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:45
bfc05584:	3c02f4e0 	lui	v0,0xf4e0
bfc05588:	34421aa8 	ori	v0,v0,0x1aa8
bfc0558c:	3c03f4e0 	lui	v1,0xf4e0
bfc05590:	34631aa8 	ori	v1,v1,0x1aa8
bfc05594:	3c04734a 	lui	a0,0x734a
bfc05598:	3484367f 	ori	a0,a0,0x367f
bfc0559c:	3c05e173 	lui	a1,0xe173
bfc055a0:	34a554f8 	ori	a1,a1,0x54f8
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:46
bfc055a4:	3c14bfc0 	lui	s4,0xbfc0
bfc055a8:	269455b4 	addiu	s4,s4,21940
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:47
bfc055ac:	01000011 	mthi	t0
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:48
bfc055b0:	0110001b 	divu	zero,t0,s0
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:49
bfc055b4:	00851022 	sub	v0,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:50
bfc055b8:	00004810 	mfhi	t1
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:51
bfc055bc:	1128004f 	beq	t1,t0,bfc056fc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:52
bfc055c0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:53
bfc055c4:	1657004d 	bne	s2,s7,bfc056fc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:54
bfc055c8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:55
bfc055cc:	1443004b 	bne	v0,v1,bfc056fc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:56
bfc055d0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:58
bfc055d4:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:59
bfc055d8:	3c02dc37 	lui	v0,0xdc37
bfc055dc:	34423c00 	ori	v0,v0,0x3c00
bfc055e0:	3c03dc37 	lui	v1,0xdc37
bfc055e4:	34633c00 	ori	v1,v1,0x3c00
bfc055e8:	3c0421cc 	lui	a0,0x21cc
bfc055ec:	3484bee8 	ori	a0,a0,0xbee8
bfc055f0:	3c059a01 	lui	a1,0x9a01
bfc055f4:	34a5fac4 	ori	a1,a1,0xfac4
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:60
bfc055f8:	3c14bfc0 	lui	s4,0xbfc0
bfc055fc:	26945600 	addiu	s4,s4,22016
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:61
bfc05600:	00851022 	sub	v0,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:62
bfc05604:	0208001b 	divu	zero,s0,t0
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:63
bfc05608:	1657003c 	bne	s2,s7,bfc056fc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:64
bfc0560c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:65
bfc05610:	1443003a 	bne	v0,v1,bfc056fc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:66
bfc05614:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:68
bfc05618:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:69
bfc0561c:	3c02b226 	lui	v0,0xb226
bfc05620:	3442ec94 	ori	v0,v0,0xec94
bfc05624:	3c03b226 	lui	v1,0xb226
bfc05628:	3463ec94 	ori	v1,v1,0xec94
bfc0562c:	3c04b196 	lui	a0,0xb196
bfc05630:	3484dd00 	ori	a0,a0,0xdd00
bfc05634:	3c057dfd 	lui	a1,0x7dfd
bfc05638:	34a59ab0 	ori	a1,a1,0x9ab0
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:70
bfc0563c:	3c14bfc0 	lui	s4,0xbfc0
bfc05640:	2694564c 	addiu	s4,s4,22092
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:71
bfc05644:	01000013 	mtlo	t0
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:72
bfc05648:	01100019 	multu	t0,s0
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:73
bfc0564c:	00851022 	sub	v0,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:74
bfc05650:	00004810 	mfhi	t1
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:75
bfc05654:	11280029 	beq	t1,t0,bfc056fc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:76
bfc05658:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:77
bfc0565c:	16570027 	bne	s2,s7,bfc056fc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:78
bfc05660:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:79
bfc05664:	14430025 	bne	v0,v1,bfc056fc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:80
bfc05668:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:82
bfc0566c:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:83
bfc05670:	3c021625 	lui	v0,0x1625
bfc05674:	3442bcc8 	ori	v0,v0,0xbcc8
bfc05678:	3c031625 	lui	v1,0x1625
bfc0567c:	3463bcc8 	ori	v1,v1,0xbcc8
bfc05680:	3c04b53c 	lui	a0,0xb53c
bfc05684:	3484d464 	ori	a0,a0,0xd464
bfc05688:	3c05421d 	lui	a1,0x421d
bfc0568c:	34a5020a 	ori	a1,a1,0x20a
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:84
bfc05690:	3c14bfc0 	lui	s4,0xbfc0
bfc05694:	26945698 	addiu	s4,s4,22168
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:85
bfc05698:	00851022 	sub	v0,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:86
bfc0569c:	01120019 	multu	t0,s2
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:87
bfc056a0:	16570016 	bne	s2,s7,bfc056fc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:88
bfc056a4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:89
bfc056a8:	14430014 	bne	v0,v1,bfc056fc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:90
bfc056ac:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:92
bfc056b0:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:93
bfc056b4:	3c029f76 	lui	v0,0x9f76
bfc056b8:	34427750 	ori	v0,v0,0x7750
bfc056bc:	3c039f76 	lui	v1,0x9f76
bfc056c0:	34637750 	ori	v1,v1,0x7750
bfc056c4:	3c047041 	lui	a0,0x7041
bfc056c8:	34840c7a 	ori	a0,a0,0xc7a
bfc056cc:	3c058ddc 	lui	a1,0x8ddc
bfc056d0:	34a520c0 	ori	a1,a1,0x20c0
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:94
bfc056d4:	3c14bfc0 	lui	s4,0xbfc0
bfc056d8:	269456e0 	addiu	s4,s4,22240
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:95
bfc056dc:	40927000 	mtc0	s2,c0_epc
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:96
bfc056e0:	00851022 	sub	v0,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:97
bfc056e4:	40887000 	mtc0	t0,c0_epc
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:98
bfc056e8:	16570004 	bne	s2,s7,bfc056fc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:99
bfc056ec:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:100
bfc056f0:	14430002 	bne	v0,v1,bfc056fc <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:101
bfc056f4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:103
bfc056f8:	26730001 	addiu	s3,s3,1

bfc056fc <inst_error>:
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:106
bfc056fc:	00104e00 	sll	t1,s0,0x18
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:107
bfc05700:	01334025 	or	t0,t1,s3
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:108
bfc05704:	ae280000 	sw	t0,0(s1)
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:109
bfc05708:	03e00008 	jr	ra
/home/yfy/func_test_v0.01/soft/func/inst/n69_sub_ov_ex.S:110
bfc0570c:	00000000 	nop

bfc05710 <n87_jal_ds_ex_test>:
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:7
bfc05710:	03e0b021 	move	s6,ra
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:8
bfc05714:	26100001 	addiu	s0,s0,1
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:9
bfc05718:	3c08800d 	lui	t0,0x800d
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:11
bfc0571c:	40805800 	mtc0	zero,$11
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:12
bfc05720:	3c170040 	lui	s7,0x40
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:13
bfc05724:	40976000 	mtc0	s7,c0_sr
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:14
bfc05728:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:17
bfc0572c:	24120001 	li	s2,1
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:18
bfc05730:	3c170001 	lui	s7,0x1
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:19
bfc05734:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:20
bfc05738:	3c14bfc0 	lui	s4,0xbfc0
bfc0573c:	26945740 	addiu	s4,s4,22336
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:21
bfc05740:	0ff01680 	jal	bfc05a00 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:22
bfc05744:	0000000c 	syscall
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:23
bfc05748:	165700ad 	bne	s2,s7,bfc05a00 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:24
bfc0574c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:25
bfc05750:	24120001 	li	s2,1
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:26
bfc05754:	3c14bfc0 	lui	s4,0xbfc0
bfc05758:	2694575c 	addiu	s4,s4,22364
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:27
bfc0575c:	0ff01680 	jal	bfc05a00 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:28
bfc05760:	0000000c 	syscall
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:29
bfc05764:	165700a6 	bne	s2,s7,bfc05a00 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:30
bfc05768:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:32
bfc0576c:	24120002 	li	s2,2
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:33
bfc05770:	3c170002 	lui	s7,0x2
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:34
bfc05774:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:35
bfc05778:	3c14bfc0 	lui	s4,0xbfc0
bfc0577c:	26945780 	addiu	s4,s4,22400
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:36
bfc05780:	0ff01680 	jal	bfc05a00 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:37
bfc05784:	0000000d 	break
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:38
bfc05788:	1657009d 	bne	s2,s7,bfc05a00 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:39
bfc0578c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:40
bfc05790:	24120002 	li	s2,2
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:41
bfc05794:	3c14bfc0 	lui	s4,0xbfc0
bfc05798:	2694579c 	addiu	s4,s4,22428
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:42
bfc0579c:	0ff01680 	jal	bfc05a00 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:43
bfc057a0:	0000000d 	break
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:44
bfc057a4:	16570096 	bne	s2,s7,bfc05a00 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:45
bfc057a8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:47
bfc057ac:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:48
bfc057b0:	3c170003 	lui	s7,0x3
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:49
bfc057b4:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:50
bfc057b8:	3c14bfc0 	lui	s4,0xbfc0
bfc057bc:	269457d0 	addiu	s4,s4,22480
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:51
bfc057c0:	3c04ba03 	lui	a0,0xba03
bfc057c4:	34844f60 	ori	a0,a0,0x4f60
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:52
bfc057c8:	3c05b615 	lui	a1,0xb615
bfc057cc:	34a5fd67 	ori	a1,a1,0xfd67
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:53
bfc057d0:	0ff01680 	jal	bfc05a00 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:54
bfc057d4:	0085b820 	add	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:55
bfc057d8:	16570089 	bne	s2,s7,bfc05a00 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:56
bfc057dc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:57
bfc057e0:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:58
bfc057e4:	3c14bfc0 	lui	s4,0xbfc0
bfc057e8:	269457ec 	addiu	s4,s4,22508
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:59
bfc057ec:	0ff01680 	jal	bfc05a00 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:60
bfc057f0:	0085b820 	add	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:61
bfc057f4:	ad170000 	sw	s7,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:62
bfc057f8:	16570081 	bne	s2,s7,bfc05a00 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:63
bfc057fc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:64
bfc05800:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:65
bfc05804:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:66
bfc05808:	3c14bfc0 	lui	s4,0xbfc0
bfc0580c:	26945818 	addiu	s4,s4,22552
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:67
bfc05810:	3c047fff 	lui	a0,0x7fff
bfc05814:	3484c19e 	ori	a0,a0,0xc19e
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:68
bfc05818:	0ff01680 	jal	bfc05a00 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:69
bfc0581c:	20976512 	addi	s7,a0,25874
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:70
bfc05820:	16570077 	bne	s2,s7,bfc05a00 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:71
bfc05824:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:72
bfc05828:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:73
bfc0582c:	3c14bfc0 	lui	s4,0xbfc0
bfc05830:	26945834 	addiu	s4,s4,22580
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:74
bfc05834:	0ff01680 	jal	bfc05a00 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:75
bfc05838:	20976512 	addi	s7,a0,25874
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:76
bfc0583c:	16570070 	bne	s2,s7,bfc05a00 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:77
bfc05840:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:78
bfc05844:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:79
bfc05848:	3c14bfc0 	lui	s4,0xbfc0
bfc0584c:	26945860 	addiu	s4,s4,22624
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:80
bfc05850:	3c04a85e 	lui	a0,0xa85e
bfc05854:	34847d00 	ori	a0,a0,0x7d00
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:81
bfc05858:	3c056b7e 	lui	a1,0x6b7e
bfc0585c:	34a58e36 	ori	a1,a1,0x8e36
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:82
bfc05860:	0ff01680 	jal	bfc05a00 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:83
bfc05864:	0085b822 	sub	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:84
bfc05868:	16570065 	bne	s2,s7,bfc05a00 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:85
bfc0586c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:86
bfc05870:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:87
bfc05874:	3c14bfc0 	lui	s4,0xbfc0
bfc05878:	2694587c 	addiu	s4,s4,22652
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:88
bfc0587c:	0ff01680 	jal	bfc05a00 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:89
bfc05880:	0085b822 	sub	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:90
bfc05884:	1657005e 	bne	s2,s7,bfc05a00 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:91
bfc05888:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:93
bfc0588c:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:94
bfc05890:	3c170004 	lui	s7,0x4
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:95
bfc05894:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:96
bfc05898:	3c14bfc0 	lui	s4,0xbfc0
bfc0589c:	269458a0 	addiu	s4,s4,22688
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:97
bfc058a0:	0ff01680 	jal	bfc05a00 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:98
bfc058a4:	8d170002 	lw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:99
bfc058a8:	16570055 	bne	s2,s7,bfc05a00 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:100
bfc058ac:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:101
bfc058b0:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:102
bfc058b4:	3c14bfc0 	lui	s4,0xbfc0
bfc058b8:	269458bc 	addiu	s4,s4,22716
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:103
bfc058bc:	0ff01680 	jal	bfc05a00 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:104
bfc058c0:	8d170002 	lw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:105
bfc058c4:	1657004e 	bne	s2,s7,bfc05a00 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:106
bfc058c8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:107
bfc058cc:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:108
bfc058d0:	3c14bfc0 	lui	s4,0xbfc0
bfc058d4:	269458d8 	addiu	s4,s4,22744
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:109
bfc058d8:	0ff01680 	jal	bfc05a00 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:110
bfc058dc:	85170001 	lh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:111
bfc058e0:	02f2001b 	divu	zero,s7,s2
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:112
bfc058e4:	16570046 	bne	s2,s7,bfc05a00 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:113
bfc058e8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:114
bfc058ec:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:115
bfc058f0:	3c14bfc0 	lui	s4,0xbfc0
bfc058f4:	269458f8 	addiu	s4,s4,22776
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:116
bfc058f8:	0ff01680 	jal	bfc05a00 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:117
bfc058fc:	85170001 	lh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:118
bfc05900:	1657003f 	bne	s2,s7,bfc05a00 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:119
bfc05904:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:120
bfc05908:	3c14bfc0 	lui	s4,0xbfc0
bfc0590c:	26945910 	addiu	s4,s4,22800
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:121
bfc05910:	0ff01680 	jal	bfc05a00 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:122
bfc05914:	95170003 	lhu	s7,3(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:123
bfc05918:	16570039 	bne	s2,s7,bfc05a00 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:124
bfc0591c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:125
bfc05920:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:126
bfc05924:	3c14bfc0 	lui	s4,0xbfc0
bfc05928:	2694592c 	addiu	s4,s4,22828
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:127
bfc0592c:	0ff01680 	jal	bfc05a00 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:128
bfc05930:	95170003 	lhu	s7,3(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:129
bfc05934:	16570032 	bne	s2,s7,bfc05a00 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:130
bfc05938:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:132
bfc0593c:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:133
bfc05940:	3c170005 	lui	s7,0x5
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:134
bfc05944:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:135
bfc05948:	3c14bfc0 	lui	s4,0xbfc0
bfc0594c:	26945950 	addiu	s4,s4,22864
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:136
bfc05950:	0ff01680 	jal	bfc05a00 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:137
bfc05954:	ad170002 	sw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:138
bfc05958:	16570029 	bne	s2,s7,bfc05a00 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:139
bfc0595c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:140
bfc05960:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:141
bfc05964:	3c14bfc0 	lui	s4,0xbfc0
bfc05968:	2694596c 	addiu	s4,s4,22892
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:142
bfc0596c:	0ff01680 	jal	bfc05a00 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:143
bfc05970:	ad170002 	sw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:144
bfc05974:	16570022 	bne	s2,s7,bfc05a00 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:145
bfc05978:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:146
bfc0597c:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:147
bfc05980:	3c14bfc0 	lui	s4,0xbfc0
bfc05984:	26945988 	addiu	s4,s4,22920
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:148
bfc05988:	0ff01680 	jal	bfc05a00 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:149
bfc0598c:	a5170001 	sh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:150
bfc05990:	1657001b 	bne	s2,s7,bfc05a00 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:151
bfc05994:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:152
bfc05998:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:153
bfc0599c:	3c14bfc0 	lui	s4,0xbfc0
bfc059a0:	269459a4 	addiu	s4,s4,22948
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:154
bfc059a4:	0ff01680 	jal	bfc05a00 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:155
bfc059a8:	a5170001 	sh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:156
bfc059ac:	16570014 	bne	s2,s7,bfc05a00 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:157
bfc059b0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:160
bfc059b4:	24120007 	li	s2,7
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:161
bfc059b8:	3c170007 	lui	s7,0x7
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:162
bfc059bc:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:163
bfc059c0:	3c14bfc0 	lui	s4,0xbfc0
bfc059c4:	269459c8 	addiu	s4,s4,22984
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:164
bfc059c8:	0ff01680 	jal	bfc05a00 <inst_error>
bfc059cc:	9e3c56aa 	0x9e3c56aa
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:166
bfc059d0:	02f20018 	mult	s7,s2
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:167
bfc059d4:	1657000a 	bne	s2,s7,bfc05a00 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:168
bfc059d8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:169
bfc059dc:	24120007 	li	s2,7
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:170
bfc059e0:	3c14bfc0 	lui	s4,0xbfc0
bfc059e4:	269459ec 	addiu	s4,s4,23020
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:171
bfc059e8:	02f20018 	mult	s7,s2
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:172
bfc059ec:	0ff01680 	jal	bfc05a00 <inst_error>
bfc059f0:	ec1ba960 	swc3	$27,-22176(zero)
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:174
bfc059f4:	16570002 	bne	s2,s7,bfc05a00 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:175
bfc059f8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:177
bfc059fc:	26730001 	addiu	s3,s3,1

bfc05a00 <inst_error>:
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:180
bfc05a00:	00104e00 	sll	t1,s0,0x18
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:181
bfc05a04:	01334025 	or	t0,t1,s3
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:182
bfc05a08:	ae280000 	sw	t0,0(s1)
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:183
bfc05a0c:	02c0f821 	move	ra,s6
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:184
bfc05a10:	03e00008 	jr	ra
/home/yfy/func_test_v0.01/soft/func/inst/n87_jal_ds_ex.S:185
bfc05a14:	00000000 	nop
	...

bfc05a20 <n84_bltzal_ds_ex_test>:
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:7
bfc05a20:	03e0b021 	move	s6,ra
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:8
bfc05a24:	26100001 	addiu	s0,s0,1
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:9
bfc05a28:	3c08800d 	lui	t0,0x800d
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:11
bfc05a2c:	40805800 	mtc0	zero,$11
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:12
bfc05a30:	3c170040 	lui	s7,0x40
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:13
bfc05a34:	40976000 	mtc0	s7,c0_sr
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:14
bfc05a38:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:17
bfc05a3c:	24120001 	li	s2,1
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:18
bfc05a40:	3c170001 	lui	s7,0x1
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:19
bfc05a44:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:20
bfc05a48:	3c14bfc0 	lui	s4,0xbfc0
bfc05a4c:	26945a50 	addiu	s4,s4,23120
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:21
bfc05a50:	051000af 	bltzal	t0,bfc05d10 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:22
bfc05a54:	0000000c 	syscall
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:23
bfc05a58:	165700ad 	bne	s2,s7,bfc05d10 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:24
bfc05a5c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:25
bfc05a60:	24120001 	li	s2,1
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:26
bfc05a64:	3c14bfc0 	lui	s4,0xbfc0
bfc05a68:	26945a6c 	addiu	s4,s4,23148
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:27
bfc05a6c:	065000a8 	bltzal	s2,bfc05d10 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:28
bfc05a70:	0000000c 	syscall
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:29
bfc05a74:	165700a6 	bne	s2,s7,bfc05d10 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:30
bfc05a78:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:32
bfc05a7c:	24120002 	li	s2,2
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:33
bfc05a80:	3c170002 	lui	s7,0x2
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:34
bfc05a84:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:35
bfc05a88:	3c14bfc0 	lui	s4,0xbfc0
bfc05a8c:	26945a90 	addiu	s4,s4,23184
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:36
bfc05a90:	0510009f 	bltzal	t0,bfc05d10 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:37
bfc05a94:	0000000d 	break
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:38
bfc05a98:	1657009d 	bne	s2,s7,bfc05d10 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:39
bfc05a9c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:40
bfc05aa0:	24120002 	li	s2,2
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:41
bfc05aa4:	3c14bfc0 	lui	s4,0xbfc0
bfc05aa8:	26945aac 	addiu	s4,s4,23212
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:42
bfc05aac:	06500098 	bltzal	s2,bfc05d10 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:43
bfc05ab0:	0000000d 	break
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:44
bfc05ab4:	16570096 	bne	s2,s7,bfc05d10 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:45
bfc05ab8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:47
bfc05abc:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:48
bfc05ac0:	3c170003 	lui	s7,0x3
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:49
bfc05ac4:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:50
bfc05ac8:	3c14bfc0 	lui	s4,0xbfc0
bfc05acc:	26945ae0 	addiu	s4,s4,23264
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:51
bfc05ad0:	3c04ba03 	lui	a0,0xba03
bfc05ad4:	34844f60 	ori	a0,a0,0x4f60
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:52
bfc05ad8:	3c05b615 	lui	a1,0xb615
bfc05adc:	34a5fd67 	ori	a1,a1,0xfd67
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:53
bfc05ae0:	0510008b 	bltzal	t0,bfc05d10 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:54
bfc05ae4:	0085b820 	add	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:55
bfc05ae8:	16570089 	bne	s2,s7,bfc05d10 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:56
bfc05aec:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:57
bfc05af0:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:58
bfc05af4:	3c14bfc0 	lui	s4,0xbfc0
bfc05af8:	26945afc 	addiu	s4,s4,23292
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:59
bfc05afc:	06500084 	bltzal	s2,bfc05d10 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:60
bfc05b00:	0085b820 	add	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:61
bfc05b04:	ad170000 	sw	s7,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:62
bfc05b08:	16570081 	bne	s2,s7,bfc05d10 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:63
bfc05b0c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:64
bfc05b10:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:65
bfc05b14:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:66
bfc05b18:	3c14bfc0 	lui	s4,0xbfc0
bfc05b1c:	26945b28 	addiu	s4,s4,23336
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:67
bfc05b20:	3c047fff 	lui	a0,0x7fff
bfc05b24:	3484c19e 	ori	a0,a0,0xc19e
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:68
bfc05b28:	05100079 	bltzal	t0,bfc05d10 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:69
bfc05b2c:	20976512 	addi	s7,a0,25874
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:70
bfc05b30:	16570077 	bne	s2,s7,bfc05d10 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:71
bfc05b34:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:72
bfc05b38:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:73
bfc05b3c:	3c14bfc0 	lui	s4,0xbfc0
bfc05b40:	26945b44 	addiu	s4,s4,23364
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:74
bfc05b44:	06500072 	bltzal	s2,bfc05d10 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:75
bfc05b48:	20976512 	addi	s7,a0,25874
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:76
bfc05b4c:	16570070 	bne	s2,s7,bfc05d10 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:77
bfc05b50:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:78
bfc05b54:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:79
bfc05b58:	3c14bfc0 	lui	s4,0xbfc0
bfc05b5c:	26945b70 	addiu	s4,s4,23408
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:80
bfc05b60:	3c04a85e 	lui	a0,0xa85e
bfc05b64:	34847d00 	ori	a0,a0,0x7d00
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:81
bfc05b68:	3c056b7e 	lui	a1,0x6b7e
bfc05b6c:	34a58e36 	ori	a1,a1,0x8e36
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:82
bfc05b70:	05100067 	bltzal	t0,bfc05d10 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:83
bfc05b74:	0085b822 	sub	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:84
bfc05b78:	16570065 	bne	s2,s7,bfc05d10 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:85
bfc05b7c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:86
bfc05b80:	24120003 	li	s2,3
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:87
bfc05b84:	3c14bfc0 	lui	s4,0xbfc0
bfc05b88:	26945b8c 	addiu	s4,s4,23436
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:88
bfc05b8c:	06500060 	bltzal	s2,bfc05d10 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:89
bfc05b90:	0085b822 	sub	s7,a0,a1
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:90
bfc05b94:	1657005e 	bne	s2,s7,bfc05d10 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:91
bfc05b98:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:93
bfc05b9c:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:94
bfc05ba0:	3c170004 	lui	s7,0x4
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:95
bfc05ba4:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:96
bfc05ba8:	3c14bfc0 	lui	s4,0xbfc0
bfc05bac:	26945bb0 	addiu	s4,s4,23472
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:97
bfc05bb0:	05100057 	bltzal	t0,bfc05d10 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:98
bfc05bb4:	8d170002 	lw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:99
bfc05bb8:	16570055 	bne	s2,s7,bfc05d10 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:100
bfc05bbc:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:101
bfc05bc0:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:102
bfc05bc4:	3c14bfc0 	lui	s4,0xbfc0
bfc05bc8:	26945bcc 	addiu	s4,s4,23500
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:103
bfc05bcc:	06500050 	bltzal	s2,bfc05d10 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:104
bfc05bd0:	8d170002 	lw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:105
bfc05bd4:	1657004e 	bne	s2,s7,bfc05d10 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:106
bfc05bd8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:107
bfc05bdc:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:108
bfc05be0:	3c14bfc0 	lui	s4,0xbfc0
bfc05be4:	26945be8 	addiu	s4,s4,23528
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:109
bfc05be8:	05100049 	bltzal	t0,bfc05d10 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:110
bfc05bec:	85170001 	lh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:111
bfc05bf0:	02f2001b 	divu	zero,s7,s2
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:112
bfc05bf4:	16570046 	bne	s2,s7,bfc05d10 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:113
bfc05bf8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:114
bfc05bfc:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:115
bfc05c00:	3c14bfc0 	lui	s4,0xbfc0
bfc05c04:	26945c08 	addiu	s4,s4,23560
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:116
bfc05c08:	06500041 	bltzal	s2,bfc05d10 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:117
bfc05c0c:	85170001 	lh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:118
bfc05c10:	1657003f 	bne	s2,s7,bfc05d10 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:119
bfc05c14:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:120
bfc05c18:	3c14bfc0 	lui	s4,0xbfc0
bfc05c1c:	26945c20 	addiu	s4,s4,23584
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:121
bfc05c20:	0510003b 	bltzal	t0,bfc05d10 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:122
bfc05c24:	95170003 	lhu	s7,3(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:123
bfc05c28:	16570039 	bne	s2,s7,bfc05d10 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:124
bfc05c2c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:125
bfc05c30:	24120004 	li	s2,4
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:126
bfc05c34:	3c14bfc0 	lui	s4,0xbfc0
bfc05c38:	26945c3c 	addiu	s4,s4,23612
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:127
bfc05c3c:	06500034 	bltzal	s2,bfc05d10 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:128
bfc05c40:	95170003 	lhu	s7,3(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:129
bfc05c44:	16570032 	bne	s2,s7,bfc05d10 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:130
bfc05c48:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:132
bfc05c4c:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:133
bfc05c50:	3c170005 	lui	s7,0x5
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:134
bfc05c54:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:135
bfc05c58:	3c14bfc0 	lui	s4,0xbfc0
bfc05c5c:	26945c60 	addiu	s4,s4,23648
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:136
bfc05c60:	0510002b 	bltzal	t0,bfc05d10 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:137
bfc05c64:	ad170002 	sw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:138
bfc05c68:	16570029 	bne	s2,s7,bfc05d10 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:139
bfc05c6c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:140
bfc05c70:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:141
bfc05c74:	3c14bfc0 	lui	s4,0xbfc0
bfc05c78:	26945c7c 	addiu	s4,s4,23676
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:142
bfc05c7c:	06500024 	bltzal	s2,bfc05d10 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:143
bfc05c80:	ad170002 	sw	s7,2(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:144
bfc05c84:	16570022 	bne	s2,s7,bfc05d10 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:145
bfc05c88:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:146
bfc05c8c:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:147
bfc05c90:	3c14bfc0 	lui	s4,0xbfc0
bfc05c94:	26945c98 	addiu	s4,s4,23704
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:148
bfc05c98:	0510001d 	bltzal	t0,bfc05d10 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:149
bfc05c9c:	a5170001 	sh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:150
bfc05ca0:	1657001b 	bne	s2,s7,bfc05d10 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:151
bfc05ca4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:152
bfc05ca8:	24120005 	li	s2,5
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:153
bfc05cac:	3c14bfc0 	lui	s4,0xbfc0
bfc05cb0:	26945cb4 	addiu	s4,s4,23732
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:154
bfc05cb4:	06500016 	bltzal	s2,bfc05d10 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:155
bfc05cb8:	a5170001 	sh	s7,1(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:156
bfc05cbc:	16570014 	bne	s2,s7,bfc05d10 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:157
bfc05cc0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:160
bfc05cc4:	24120007 	li	s2,7
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:161
bfc05cc8:	3c170007 	lui	s7,0x7
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:162
bfc05ccc:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:163
bfc05cd0:	3c14bfc0 	lui	s4,0xbfc0
bfc05cd4:	26945cd8 	addiu	s4,s4,23768
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:164
bfc05cd8:	0510000d 	bltzal	t0,bfc05d10 <inst_error>
bfc05cdc:	9e3c56aa 	0x9e3c56aa
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:166
bfc05ce0:	02f20018 	mult	s7,s2
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:167
bfc05ce4:	1657000a 	bne	s2,s7,bfc05d10 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:168
bfc05ce8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:169
bfc05cec:	24120007 	li	s2,7
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:170
bfc05cf0:	3c14bfc0 	lui	s4,0xbfc0
bfc05cf4:	26945cfc 	addiu	s4,s4,23804
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:171
bfc05cf8:	02f20018 	mult	s7,s2
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:172
bfc05cfc:	06500004 	bltzal	s2,bfc05d10 <inst_error>
bfc05d00:	ec1ba960 	swc3	$27,-22176(zero)
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:174
bfc05d04:	16570002 	bne	s2,s7,bfc05d10 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:175
bfc05d08:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:177
bfc05d0c:	26730001 	addiu	s3,s3,1

bfc05d10 <inst_error>:
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:180
bfc05d10:	00104e00 	sll	t1,s0,0x18
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:181
bfc05d14:	01334025 	or	t0,t1,s3
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:182
bfc05d18:	ae280000 	sw	t0,0(s1)
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:183
bfc05d1c:	02c0f821 	move	ra,s6
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:184
bfc05d20:	03e00008 	jr	ra
/home/yfy/func_test_v0.01/soft/func/inst/n84_bltzal_ds_ex.S:185
bfc05d24:	00000000 	nop
	...

bfc05d30 <n76_ri_ex_test>:
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:7
bfc05d30:	26100001 	addiu	s0,s0,1
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:8
bfc05d34:	3c08800d 	lui	t0,0x800d
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:9
bfc05d38:	24120007 	li	s2,7
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:10
bfc05d3c:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:12
bfc05d40:	40805800 	mtc0	zero,$11
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:13
bfc05d44:	3c170040 	lui	s7,0x40
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:14
bfc05d48:	40976000 	mtc0	s7,c0_sr
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:15
bfc05d4c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:16
bfc05d50:	3c170007 	lui	s7,0x7
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:19
bfc05d54:	3c14bfc0 	lui	s4,0xbfc0
bfc05d58:	26945d5c 	addiu	s4,s4,23900
bfc05d5c:	45df00e0 	0x45df00e0
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:21
bfc05d60:	16570040 	bne	s2,s7,bfc05e64 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:22
bfc05d64:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:24
bfc05d68:	24120007 	li	s2,7
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:25
bfc05d6c:	3c14bfc0 	lui	s4,0xbfc0
bfc05d70:	26945d7c 	addiu	s4,s4,23932
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:26
bfc05d74:	ad080004 	sw	t0,4(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:27
bfc05d78:	ad140004 	sw	s4,4(t0)
bfc05d7c:	7a22db9c 	0x7a22db9c
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:29
bfc05d80:	ad140000 	sw	s4,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:30
bfc05d84:	8d090004 	lw	t1,4(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:31
bfc05d88:	15340036 	bne	t1,s4,bfc05e64 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:32
bfc05d8c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:33
bfc05d90:	16570034 	bne	s2,s7,bfc05e64 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:34
bfc05d94:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:35
bfc05d98:	24120007 	li	s2,7
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:36
bfc05d9c:	ad120000 	sw	s2,0(t0)
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:38
bfc05da0:	24120007 	li	s2,7
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:39
bfc05da4:	3c14bfc0 	lui	s4,0xbfc0
bfc05da8:	26945db4 	addiu	s4,s4,23988
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:40
bfc05dac:	01000011 	mthi	t0
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:41
bfc05db0:	0110001b 	divu	zero,t0,s0
bfc05db4:	6f76e210 	0x6f76e210
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:43
bfc05db8:	00004810 	mfhi	t1
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:44
bfc05dbc:	11280029 	beq	t1,t0,bfc05e64 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:45
bfc05dc0:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:46
bfc05dc4:	16570027 	bne	s2,s7,bfc05e64 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:47
bfc05dc8:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:49
bfc05dcc:	24120007 	li	s2,7
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:50
bfc05dd0:	3c14bfc0 	lui	s4,0xbfc0
bfc05dd4:	26945dd8 	addiu	s4,s4,24024
bfc05dd8:	5a8d78ce 	0x5a8d78ce
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:52
bfc05ddc:	0208001b 	divu	zero,s0,t0
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:53
bfc05de0:	16570020 	bne	s2,s7,bfc05e64 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:54
bfc05de4:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:56
bfc05de8:	24120007 	li	s2,7
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:57
bfc05dec:	3c14bfc0 	lui	s4,0xbfc0
bfc05df0:	26945dfc 	addiu	s4,s4,24060
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:58
bfc05df4:	01000013 	mtlo	t0
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:59
bfc05df8:	01100019 	multu	t0,s0
bfc05dfc:	7bd1ac60 	0x7bd1ac60
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:61
bfc05e00:	00004810 	mfhi	t1
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:62
bfc05e04:	11280017 	beq	t1,t0,bfc05e64 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:63
bfc05e08:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:64
bfc05e0c:	16570015 	bne	s2,s7,bfc05e64 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:65
bfc05e10:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:67
bfc05e14:	24120007 	li	s2,7
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:68
bfc05e18:	3c14bfc0 	lui	s4,0xbfc0
bfc05e1c:	26945e20 	addiu	s4,s4,24096
bfc05e20:	7e6265cc 	0x7e6265cc
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:70
bfc05e24:	01120019 	multu	t0,s2
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:71
bfc05e28:	1657000e 	bne	s2,s7,bfc05e64 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:72
bfc05e2c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:73
bfc05e30:	1443000c 	bne	v0,v1,bfc05e64 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:74
bfc05e34:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:76
bfc05e38:	24120007 	li	s2,7
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:77
bfc05e3c:	3c14bfc0 	lui	s4,0xbfc0
bfc05e40:	26945e48 	addiu	s4,s4,24136
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:78
bfc05e44:	40927000 	mtc0	s2,c0_epc
bfc05e48:	9fc55510 	0x9fc55510
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:80
bfc05e4c:	40887000 	mtc0	t0,c0_epc
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:81
bfc05e50:	16570004 	bne	s2,s7,bfc05e64 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:82
bfc05e54:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:83
bfc05e58:	14430002 	bne	v0,v1,bfc05e64 <inst_error>
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:84
bfc05e5c:	00000000 	nop
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:86
bfc05e60:	26730001 	addiu	s3,s3,1

bfc05e64 <inst_error>:
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:89
bfc05e64:	00104e00 	sll	t1,s0,0x18
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:90
bfc05e68:	01334025 	or	t0,t1,s3
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:91
bfc05e6c:	ae280000 	sw	t0,0(s1)
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:92
bfc05e70:	03e00008 	jr	ra
/home/yfy/func_test_v0.01/soft/func/inst/n76_ri_ex.S:93
bfc05e74:	00000000 	nop
	...
bfc05e80:	9e3f7f70 	0x9e3f7f70
	...

Disassembly of section .data:

80000000 <__CTOR_LIST__>:
	...

80000008 <__CTOR_END__>:
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	0x1c
   4:	00000002 	srl	zero,zero,0x0
   8:	00040000 	sll	zero,a0,0x0
   c:	00000000 	nop
  10:	bfc00000 	0xbfc00000
  14:	000009a8 	0x9a8
	...
  20:	0000001c 	0x1c
  24:	00550002 	0x550002
  28:	00040000 	sll	zero,a0,0x0
  2c:	00000000 	nop
  30:	bfc009b0 	0xbfc009b0
  34:	000002f8 	0x2f8
	...
  40:	0000001c 	0x1c
  44:	00b80002 	0xb80002
  48:	00040000 	sll	zero,a0,0x0
  4c:	00000000 	nop
  50:	bfc00cb0 	0xbfc00cb0
  54:	0000125c 	0x125c
	...
  60:	0000001c 	0x1c
  64:	01130002 	0x1130002
  68:	00040000 	sll	zero,a0,0x0
  6c:	00000000 	nop
  70:	bfc01f10 	0xbfc01f10
  74:	000002f8 	0x2f8
	...
  80:	0000001c 	0x1c
  84:	01760002 	0x1760002
  88:	00040000 	sll	zero,a0,0x0
  8c:	00000000 	nop
  90:	bfc02210 	0xbfc02210
  94:	000002fc 	0x2fc
	...
  a0:	0000001c 	0x1c
  a4:	01d90002 	0x1d90002
  a8:	00040000 	sll	zero,a0,0x0
  ac:	00000000 	nop
  b0:	bfc02510 	0xbfc02510
  b4:	000002f4 	0x2f4
	...
  c0:	0000001c 	0x1c
  c4:	023d0002 	0x23d0002
  c8:	00040000 	sll	zero,a0,0x0
  cc:	00000000 	nop
  d0:	bfc02810 	0xbfc02810
  d4:	00000250 	0x250
	...
  e0:	0000001c 	0x1c
  e4:	029f0002 	0x29f0002
  e8:	00040000 	sll	zero,a0,0x0
  ec:	00000000 	nop
  f0:	bfc02a60 	0xbfc02a60
  f4:	00000300 	sll	zero,zero,0xc
	...
 100:	0000001c 	0x1c
 104:	03020002 	0x3020002
 108:	00040000 	sll	zero,a0,0x0
 10c:	00000000 	nop
 110:	bfc02d60 	0xbfc02d60
 114:	0000022c 	0x22c
	...
 120:	0000001c 	0x1c
 124:	03650002 	0x3650002
 128:	00040000 	sll	zero,a0,0x0
 12c:	00000000 	nop
 130:	bfc02f90 	0xbfc02f90
 134:	00000300 	sll	zero,zero,0xc
	...
 140:	0000001c 	0x1c
 144:	03c80002 	0x3c80002
 148:	00040000 	sll	zero,a0,0x0
 14c:	00000000 	nop
 150:	bfc03290 	0xbfc03290
 154:	00000308 	0x308
	...
 160:	0000001c 	0x1c
 164:	042b0002 	0x42b0002
 168:	00040000 	sll	zero,a0,0x0
 16c:	00000000 	nop
 170:	bfc035a0 	0xbfc035a0
 174:	00000300 	sll	zero,zero,0xc
	...
 180:	0000001c 	0x1c
 184:	048d0002 	0x48d0002
 188:	00040000 	sll	zero,a0,0x0
 18c:	00000000 	nop
 190:	bfc038a0 	0xbfc038a0
 194:	00000300 	sll	zero,zero,0xc
	...
 1a0:	0000001c 	0x1c
 1a4:	04ed0002 	0x4ed0002
 1a8:	00040000 	sll	zero,a0,0x0
 1ac:	00000000 	nop
 1b0:	bfc03ba0 	0xbfc03ba0
 1b4:	00000300 	sll	zero,zero,0xc
	...
 1c0:	0000001c 	0x1c
 1c4:	054f0002 	0x54f0002
 1c8:	00040000 	sll	zero,a0,0x0
 1cc:	00000000 	nop
 1d0:	bfc03ea0 	0xbfc03ea0
 1d4:	00000138 	0x138
	...
 1e0:	0000001c 	0x1c
 1e4:	05b00002 	bltzal	t5,1f0 <data_size+0x1e0>
 1e8:	00040000 	sll	zero,a0,0x0
 1ec:	00000000 	nop
 1f0:	bfc03fe0 	0xbfc03fe0
 1f4:	00000300 	sll	zero,zero,0xc
	...
 200:	0000001c 	0x1c
 204:	06130002 	0x6130002
 208:	00040000 	sll	zero,a0,0x0
 20c:	00000000 	nop
 210:	bfc042e0 	0xbfc042e0
 214:	000002f4 	0x2f4
	...
 220:	0000001c 	0x1c
 224:	06760002 	0x6760002
 228:	00040000 	sll	zero,a0,0x0
 22c:	00000000 	nop
 230:	bfc045e0 	0xbfc045e0
 234:	00000300 	sll	zero,zero,0xc
	...
 240:	0000001c 	0x1c
 244:	06d70002 	0x6d70002
 248:	00040000 	sll	zero,a0,0x0
 24c:	00000000 	nop
 250:	bfc048e0 	0xbfc048e0
 254:	00000254 	0x254
	...
 260:	0000001c 	0x1c
 264:	073b0002 	0x73b0002
 268:	00040000 	sll	zero,a0,0x0
 26c:	00000000 	nop
 270:	bfc04b40 	0xbfc04b40
 274:	00000300 	sll	zero,zero,0xc
	...
 280:	0000001c 	0x1c
 284:	079e0002 	0x79e0002
 288:	00040000 	sll	zero,a0,0x0
 28c:	00000000 	nop
 290:	bfc04e40 	0xbfc04e40
 294:	00000138 	0x138
	...
 2a0:	0000001c 	0x1c
 2a4:	08010002 	j	40008 <data_size+0x3fff8>
 2a8:	00040000 	sll	zero,a0,0x0
 2ac:	00000000 	nop
 2b0:	bfc04f80 	0xbfc04f80
 2b4:	00000308 	0x308
	...
 2c0:	0000001c 	0x1c
 2c4:	08660002 	j	1980008 <data_size+0x197fff8>
 2c8:	00040000 	sll	zero,a0,0x0
 2cc:	00000000 	nop
 2d0:	bfc05290 	0xbfc05290
 2d4:	00000224 	0x224
	...
 2e0:	0000001c 	0x1c
 2e4:	08c90002 	j	3240008 <data_size+0x323fff8>
 2e8:	00040000 	sll	zero,a0,0x0
 2ec:	00000000 	nop
 2f0:	bfc054c0 	0xbfc054c0
 2f4:	00000250 	0x250
	...
 300:	0000001c 	0x1c
 304:	092b0002 	j	4ac0008 <data_size+0x4abfff8>
 308:	00040000 	sll	zero,a0,0x0
 30c:	00000000 	nop
 310:	bfc05710 	0xbfc05710
 314:	00000308 	0x308
	...
 320:	0000001c 	0x1c
 324:	098d0002 	j	6340008 <data_size+0x633fff8>
 328:	00040000 	sll	zero,a0,0x0
 32c:	00000000 	nop
 330:	bfc05a20 	0xbfc05a20
 334:	00000308 	0x308
	...
 340:	0000001c 	0x1c
 344:	09f20002 	j	7c80008 <data_size+0x7c7fff8>
 348:	00040000 	sll	zero,a0,0x0
 34c:	00000000 	nop
 350:	bfc05d30 	0xbfc05d30
 354:	00000148 	0x148
	...

Disassembly of section .pdr:

00000000 <.pdr>:
   0:	bfc009b0 	0xbfc009b0
	...
  18:	0000001d 	0x1d
  1c:	0000001f 	0x1f
  20:	bfc00cb0 	0xbfc00cb0
	...
  38:	0000001d 	0x1d
  3c:	0000001f 	0x1f
  40:	bfc01f10 	0xbfc01f10
	...
  58:	0000001d 	0x1d
  5c:	0000001f 	0x1f
  60:	bfc02210 	0xbfc02210
	...
  78:	0000001d 	0x1d
  7c:	0000001f 	0x1f
  80:	bfc02510 	0xbfc02510
	...
  98:	0000001d 	0x1d
  9c:	0000001f 	0x1f
  a0:	bfc02810 	0xbfc02810
	...
  b8:	0000001d 	0x1d
  bc:	0000001f 	0x1f
  c0:	bfc02a60 	0xbfc02a60
	...
  d8:	0000001d 	0x1d
  dc:	0000001f 	0x1f
  e0:	bfc02d60 	0xbfc02d60
	...
  f8:	0000001d 	0x1d
  fc:	0000001f 	0x1f
 100:	bfc02f90 	0xbfc02f90
	...
 118:	0000001d 	0x1d
 11c:	0000001f 	0x1f
 120:	bfc03290 	0xbfc03290
	...
 138:	0000001d 	0x1d
 13c:	0000001f 	0x1f
 140:	bfc035a0 	0xbfc035a0
	...
 158:	0000001d 	0x1d
 15c:	0000001f 	0x1f
 160:	bfc038a0 	0xbfc038a0
	...
 178:	0000001d 	0x1d
 17c:	0000001f 	0x1f
 180:	bfc03ba0 	0xbfc03ba0
	...
 198:	0000001d 	0x1d
 19c:	0000001f 	0x1f
 1a0:	bfc03ea0 	0xbfc03ea0
	...
 1b8:	0000001d 	0x1d
 1bc:	0000001f 	0x1f
 1c0:	bfc03fe0 	0xbfc03fe0
	...
 1d8:	0000001d 	0x1d
 1dc:	0000001f 	0x1f
 1e0:	bfc042e0 	0xbfc042e0
	...
 1f8:	0000001d 	0x1d
 1fc:	0000001f 	0x1f
 200:	bfc045e0 	0xbfc045e0
	...
 218:	0000001d 	0x1d
 21c:	0000001f 	0x1f
 220:	bfc048e0 	0xbfc048e0
	...
 238:	0000001d 	0x1d
 23c:	0000001f 	0x1f
 240:	bfc04b40 	0xbfc04b40
	...
 258:	0000001d 	0x1d
 25c:	0000001f 	0x1f
 260:	bfc04e40 	0xbfc04e40
	...
 278:	0000001d 	0x1d
 27c:	0000001f 	0x1f
 280:	bfc04f80 	0xbfc04f80
	...
 298:	0000001d 	0x1d
 29c:	0000001f 	0x1f
 2a0:	bfc05290 	0xbfc05290
	...
 2b8:	0000001d 	0x1d
 2bc:	0000001f 	0x1f
 2c0:	bfc054c0 	0xbfc054c0
	...
 2d8:	0000001d 	0x1d
 2dc:	0000001f 	0x1f
 2e0:	bfc05710 	0xbfc05710
	...
 2f8:	0000001d 	0x1d
 2fc:	0000001f 	0x1f
 300:	bfc05a20 	0xbfc05a20
	...
 318:	0000001d 	0x1d
 31c:	0000001f 	0x1f
 320:	bfc05d30 	0xbfc05d30
	...
 338:	0000001d 	0x1d
 33c:	0000001f 	0x1f

Disassembly of section .debug_line:

00000000 <.debug_line>:
       0:	000001c2 	srl	zero,zero,0x7
       4:	001e0002 	srl	zero,s8,0x0
       8:	01010000 	0x1010000
       c:	000d0efb 	0xd0efb
      10:	01010101 	0x1010101
      14:	01000000 	0x1000000
      18:	00010000 	sll	zero,at,0x0
      1c:	72617473 	0x72617473
      20:	00532e74 	0x532e74
      24:	00000000 	nop
      28:	00020500 	sll	zero,v0,0x14
      2c:	03bfc000 	0x3bfc000
      30:	4b4b0112 	c2	0x14b0112
      34:	4b4b4d4b 	c2	0x14b4d4b
      38:	024b4b4b 	0x24b4b4b
      3c:	4b1601c8 	c2	0x11601c8
      40:	4d4b4b4b 	0x4d4b4b4b
      44:	4b834b4b 	c2	0x1834b4b
      48:	4b4b4c4b 	c2	0x14b4c4b
      4c:	d4024b4b 	0xd4024b4b
      50:	4b4b1804 	c2	0x14b1804
      54:	4b4b4b4b 	c2	0x14b4b4b
      58:	4b4b4b4b 	c2	0x14b4b4b
      5c:	4b4b4b4b 	c2	0x14b4b4b
      60:	4b4b4b4b 	c2	0x14b4b4b
      64:	4b4b4b4b 	c2	0x14b4b4b
      68:	4b4b4b4b 	c2	0x14b4b4b
      6c:	4b4b4d4b 	c2	0x14b4d4b
      70:	4b4b4b4b 	c2	0x14b4b4b
      74:	4b4b4b4b 	c2	0x14b4b4b
      78:	4b4b4b4b 	c2	0x14b4b4b
      7c:	4b4d4b4b 	c2	0x14d4b4b
      80:	4b4b4b4b 	c2	0x14b4b4b
      84:	4b4b4b4b 	c2	0x14b4b4b
      88:	4b4b4b4b 	c2	0x14b4b4b
      8c:	4d4b4b4b 	0x4d4b4b4b
      90:	4b4b4b4b 	c2	0x14b4b4b
      94:	4b4b4b4b 	c2	0x14b4b4b
      98:	4b4b4b4b 	c2	0x14b4b4b
      9c:	4d4b4b4b 	0x4d4b4b4b
      a0:	4b4b4b4b 	c2	0x14b4b4b
      a4:	4b4b4b4b 	c2	0x14b4b4b
      a8:	4b4b4b4b 	c2	0x14b4b4b
      ac:	4b4b4b4b 	c2	0x14b4b4b
      b0:	4b4b4b4d 	c2	0x14b4b4d
      b4:	4b4b4b4b 	c2	0x14b4b4b
      b8:	4b4b4b4b 	c2	0x14b4b4b
      bc:	4b4b4b4b 	c2	0x14b4b4b
      c0:	4b4b4d4b 	c2	0x14b4d4b
      c4:	4b4b4b4b 	c2	0x14b4b4b
      c8:	4b4b4b4b 	c2	0x14b4b4b
      cc:	4b4b4b4b 	c2	0x14b4b4b
      d0:	4d4b4b4b 	0x4d4b4b4b
      d4:	4b4b4b4b 	c2	0x14b4b4b
      d8:	4b4b4b4b 	c2	0x14b4b4b
      dc:	4b4b4b4b 	c2	0x14b4b4b
      e0:	4b4b4b4b 	c2	0x14b4b4b
      e4:	4b4b4b4d 	c2	0x14b4b4d
      e8:	084b4b4b 	j	12d2d2c <data_size+0x12d2d1c>
      ec:	e5084be5 	swc1	$f8,19429(t0)
      f0:	4b834b4b 	c2	0x1834b4b
      f4:	834b4b83 	lb	t3,19331(k0)
      f8:	834b4b4b 	lb	t3,19275(k0)
      fc:	4d4b4b4b 	0x4d4b4b4b
     100:	834b4b4b 	lb	t3,19275(k0)
     104:	4c4b4b4b 	0x4c4b4b4b
     108:	4b4b4b4b 	c2	0x14b4b4b
     10c:	834f4c4d 	lb	t7,19533(k0)
     110:	4b4b8483 	c2	0x14b8483
     114:	4c4b4b4c 	0x4c4b4b4c
     118:	4b4b834c 	c2	0x14b834c
     11c:	4b4b4d4b 	c2	0x14b4d4b
     120:	4b834c4b 	c2	0x1834c4b
     124:	4a028103 	c2	0x28103
     128:	4b4b4b4b 	c2	0x14b4b4b
     12c:	4b4b4b4b 	c2	0x14b4b4b
     130:	4b4b4b4b 	c2	0x14b4b4b
     134:	4b4b4b4b 	c2	0x14b4b4b
     138:	4b4b4b4b 	c2	0x14b4b4b
     13c:	4b4b4b4b 	c2	0x14b4b4b
     140:	4b4b4b4b 	c2	0x14b4b4b
     144:	4b4b4b4b 	c2	0x14b4b4b
     148:	4b4b4b4b 	c2	0x14b4b4b
     14c:	4b4b4b4b 	c2	0x14b4b4b
     150:	4b4b4b4b 	c2	0x14b4b4b
     154:	4b4b4b4b 	c2	0x14b4b4b
     158:	4b4b4b4b 	c2	0x14b4b4b
     15c:	4b4b4b4b 	c2	0x14b4b4b
     160:	4b4b4b4b 	c2	0x14b4b4b
     164:	4b4b4b4b 	c2	0x14b4b4b
     168:	4b4b4b4b 	c2	0x14b4b4b
     16c:	4b4b4b4b 	c2	0x14b4b4b
     170:	4b4b4b4b 	c2	0x14b4b4b
     174:	4b4b4b4b 	c2	0x14b4b4b
     178:	4b4b4b4b 	c2	0x14b4b4b
     17c:	4b4b4b4b 	c2	0x14b4b4b
     180:	4b4b4b4b 	c2	0x14b4b4b
     184:	4b4b4b4b 	c2	0x14b4b4b
     188:	4c4b4b4b 	0x4c4b4b4b
     18c:	4b4b4b83 	c2	0x14b4b83
     190:	4b4c4b4b 	c2	0x14c4b4b
     194:	4b4b4b4b 	c2	0x14b4b4b
     198:	4b4c4b4b 	c2	0x14c4b4b
     19c:	4c4b4b4d 	0x4c4b4b4d
     1a0:	4c848383 	0x4c848383
     1a4:	4b4b4b4b 	c2	0x14b4b4b
     1a8:	83834b4c 	lb	v1,19276(gp)
     1ac:	4d4b4d4b 	0x4d4b4d4b
     1b0:	4b4b4d83 	c2	0x14b4d83
     1b4:	4b4d4d4b 	c2	0x14d4d4b
     1b8:	4b4b4b4b 	c2	0x14b4b4b
     1bc:	4b4b4c4b 	c2	0x14b4c4b
     1c0:	0004024b 	0x4024b
     1c4:	00bf0101 	0xbf0101
     1c8:	00020000 	sll	zero,v0,0x0
     1cc:	00000027 	nor	zero,zero,zero
     1d0:	0efb0101 	jal	bec0404 <data_size+0xbec03f4>
     1d4:	0101000d 	break	0x101
     1d8:	00000101 	0x101
     1dc:	00000100 	sll	zero,zero,0x4
     1e0:	376e0001 	ori	t6,k1,0x1
     1e4:	68735f34 	0x68735f34
     1e8:	6564615f 	0x6564615f
     1ec:	78655f73 	0x78655f73
     1f0:	0000532e 	0x532e
     1f4:	00000000 	nop
     1f8:	09b00205 	j	6c00814 <data_size+0x6c00804>
     1fc:	4b18bfc0 	c2	0x118bfc0
     200:	4b4c4b4b 	c2	0x14c4b4b
     204:	4d4b4b4b 	0x4d4b4b4b
     208:	83132802 	lb	s3,10242(t8)
     20c:	4b4b4b4b 	c2	0x14b4b4b
     210:	4b4b4b4b 	c2	0x14b4b4b
     214:	28024b4c 	slti	v0,zero,19276
     218:	4b4b8313 	c2	0x14b8313
     21c:	4b4b4b4b 	c2	0x14b4b4b
     220:	4b4b4b4b 	c2	0x14b4b4b
     224:	4b4b4b4b 	c2	0x14b4b4b
     228:	4b4c4b4b 	c2	0x14c4b4b
     22c:	83132802 	lb	s3,10242(t8)
     230:	4b4b4b4b 	c2	0x14b4b4b
     234:	4b4b4b4b 	c2	0x14b4b4b
     238:	4b4b4b4b 	c2	0x14b4b4b
     23c:	024b4c4b 	0x24b4c4b
     240:	4b831328 	c2	0x1831328
     244:	4b4b4b4b 	c2	0x14b4b4b
     248:	4b4b4b4b 	c2	0x14b4b4b
     24c:	28024b4c 	slti	v0,zero,19276
     250:	4b4b8313 	c2	0x14b8313
     254:	4b4b4b4b 	c2	0x14b4b4b
     258:	4b4b4b4b 	c2	0x14b4b4b
     25c:	4c4b4b4b 	0x4c4b4b4b
     260:	1328024b 	beq	t9,t0,b90 <data_size+0xb80>
     264:	4b4b4b83 	c2	0x14b4b83
     268:	4b4b4b4b 	c2	0x14b4b4b
     26c:	4b4c4b4b 	c2	0x14c4b4b
     270:	83132802 	lb	s3,10242(t8)
     274:	4b4b4b4b 	c2	0x14b4b4b
     278:	4b4b4b4b 	c2	0x14b4b4b
     27c:	4d4c4b4b 	0x4d4c4b4b
     280:	4b4b4b4b 	c2	0x14b4b4b
     284:	01000402 	0x1000402
     288:	0001c801 	0x1c801
     28c:	1f000200 	bgtz	t8,a90 <data_size+0xa80>
     290:	01000000 	0x1000000
     294:	0d0efb01 	jal	43bec04 <data_size+0x43bebf4>
     298:	01010100 	0x1010100
     29c:	00000001 	0x1
     2a0:	01000001 	0x1000001
     2a4:	5f316e00 	0x5f316e00
     2a8:	2e69756c 	sltiu	t1,s3,30060
     2ac:	00000053 	0x53
     2b0:	05000000 	bltz	t0,2b4 <data_size+0x2a4>
     2b4:	c00cb002 	lwc0	$12,-20478(zero)
     2b8:	4b4b18bf 	c2	0x14b18bf
     2bc:	75084b4c 	jalx	4212d30 <data_size+0x4212d20>
     2c0:	75087508 	jalx	421d420 <data_size+0x421d410>
     2c4:	75087508 	jalx	421d420 <data_size+0x421d410>
     2c8:	75087508 	jalx	421d420 <data_size+0x421d410>
     2cc:	75087508 	jalx	421d420 <data_size+0x421d410>
     2d0:	75087508 	jalx	421d420 <data_size+0x421d410>
     2d4:	75087508 	jalx	421d420 <data_size+0x421d410>
     2d8:	75087508 	jalx	421d420 <data_size+0x421d410>
     2dc:	084b7508 	j	12dd420 <data_size+0x12dd410>
     2e0:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     2e4:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     2e8:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     2ec:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     2f0:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     2f4:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     2f8:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     2fc:	4b750875 	c2	0x1750875
     300:	75087508 	jalx	421d420 <data_size+0x421d410>
     304:	75087508 	jalx	421d420 <data_size+0x421d410>
     308:	75087508 	jalx	421d420 <data_size+0x421d410>
     30c:	75087508 	jalx	421d420 <data_size+0x421d410>
     310:	75087508 	jalx	421d420 <data_size+0x421d410>
     314:	75087508 	jalx	421d420 <data_size+0x421d410>
     318:	75087508 	jalx	421d420 <data_size+0x421d410>
     31c:	75087508 	jalx	421d420 <data_size+0x421d410>
     320:	0875084b 	j	1d4212c <data_size+0x1d4211c>
     324:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     328:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     32c:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     330:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     334:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     338:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     33c:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     340:	75084b75 	jalx	4212dd4 <data_size+0x4212dc4>
     344:	75087508 	jalx	421d420 <data_size+0x421d410>
     348:	75087508 	jalx	421d420 <data_size+0x421d410>
     34c:	75087508 	jalx	421d420 <data_size+0x421d410>
     350:	75087508 	jalx	421d420 <data_size+0x421d410>
     354:	75087508 	jalx	421d420 <data_size+0x421d410>
     358:	75087508 	jalx	421d420 <data_size+0x421d410>
     35c:	75087508 	jalx	421d420 <data_size+0x421d410>
     360:	084b7508 	j	12dd420 <data_size+0x12dd410>
     364:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     368:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     36c:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     370:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     374:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     378:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     37c:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     380:	4b750875 	c2	0x1750875
     384:	75087508 	jalx	421d420 <data_size+0x421d410>
     388:	75087508 	jalx	421d420 <data_size+0x421d410>
     38c:	75087508 	jalx	421d420 <data_size+0x421d410>
     390:	75087508 	jalx	421d420 <data_size+0x421d410>
     394:	75087508 	jalx	421d420 <data_size+0x421d410>
     398:	75087508 	jalx	421d420 <data_size+0x421d410>
     39c:	75087508 	jalx	421d420 <data_size+0x421d410>
     3a0:	75087508 	jalx	421d420 <data_size+0x421d410>
     3a4:	0875084b 	j	1d4212c <data_size+0x1d4211c>
     3a8:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     3ac:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     3b0:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     3b4:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     3b8:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     3bc:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     3c0:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     3c4:	75084b75 	jalx	4212dd4 <data_size+0x4212dc4>
     3c8:	75087508 	jalx	421d420 <data_size+0x421d410>
     3cc:	75087508 	jalx	421d420 <data_size+0x421d410>
     3d0:	75087508 	jalx	421d420 <data_size+0x421d410>
     3d4:	75087508 	jalx	421d420 <data_size+0x421d410>
     3d8:	75087508 	jalx	421d420 <data_size+0x421d410>
     3dc:	75087508 	jalx	421d420 <data_size+0x421d410>
     3e0:	75087508 	jalx	421d420 <data_size+0x421d410>
     3e4:	084b7508 	j	12dd420 <data_size+0x12dd410>
     3e8:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     3ec:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     3f0:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     3f4:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     3f8:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     3fc:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     400:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     404:	4b750875 	c2	0x1750875
     408:	75087508 	jalx	421d420 <data_size+0x421d410>
     40c:	75087508 	jalx	421d420 <data_size+0x421d410>
     410:	75087508 	jalx	421d420 <data_size+0x421d410>
     414:	75087508 	jalx	421d420 <data_size+0x421d410>
     418:	75087508 	jalx	421d420 <data_size+0x421d410>
     41c:	75087508 	jalx	421d420 <data_size+0x421d410>
     420:	75087508 	jalx	421d420 <data_size+0x421d410>
     424:	75087508 	jalx	421d420 <data_size+0x421d410>
     428:	0875084b 	j	1d4212c <data_size+0x1d4211c>
     42c:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     430:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     434:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     438:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     43c:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     440:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     444:	08750875 	j	1d421d4 <data_size+0x1d421c4>
     448:	4d4c4b76 	0x4d4c4b76
     44c:	4b4b4b4b 	c2	0x14b4b4b
     450:	01000402 	0x1000402
     454:	0000bf01 	0xbf01
     458:	27000200 	addiu	zero,t8,512
     45c:	01000000 	0x1000000
     460:	0d0efb01 	jal	43bec04 <data_size+0x43bebf4>
     464:	01010100 	0x1010100
     468:	00000001 	0x1
     46c:	01000001 	0x1000001
     470:	33376e00 	andi	s7,t9,0x6e00
     474:	5f77735f 	0x5f77735f
     478:	73656461 	0x73656461
     47c:	2e78655f 	sltiu	t8,s3,25951
     480:	00000053 	0x53
     484:	05000000 	bltz	t0,488 <data_size+0x478>
     488:	c01f1002 	lwc0	$31,4098(zero)
     48c:	4b4b18bf 	c2	0x14b18bf
     490:	4b4b4c4b 	c2	0x14b4c4b
     494:	024d4b4b 	0x24d4b4b
     498:	4b831328 	c2	0x1831328
     49c:	4b4b4b4b 	c2	0x14b4b4b
     4a0:	4c4b4b4b 	0x4c4b4b4b
     4a4:	1328024b 	beq	t9,t0,dd4 <data_size+0xdc4>
     4a8:	4b4b4b83 	c2	0x14b4b83
     4ac:	4b4b4b4b 	c2	0x14b4b4b
     4b0:	4b4b4b4b 	c2	0x14b4b4b
     4b4:	4b4b4b4b 	c2	0x14b4b4b
     4b8:	024b4c4b 	0x24b4c4b
     4bc:	4b831328 	c2	0x1831328
     4c0:	4b4b4b4b 	c2	0x14b4b4b
     4c4:	4b4b4b4b 	c2	0x14b4b4b
     4c8:	4b4b4b4b 	c2	0x14b4b4b
     4cc:	28024b4c 	slti	v0,zero,19276
     4d0:	4b4b8313 	c2	0x14b8313
     4d4:	4b4b4b4b 	c2	0x14b4b4b
     4d8:	4c4b4b4b 	0x4c4b4b4b
     4dc:	1328024b 	beq	t9,t0,e0c <data_size+0xdfc>
     4e0:	4b4b4b83 	c2	0x14b4b83
     4e4:	4b4b4b4b 	c2	0x14b4b4b
     4e8:	4b4b4b4b 	c2	0x14b4b4b
     4ec:	4b4c4b4b 	c2	0x14c4b4b
     4f0:	83132802 	lb	s3,10242(t8)
     4f4:	4b4b4b4b 	c2	0x14b4b4b
     4f8:	4b4b4b4b 	c2	0x14b4b4b
     4fc:	024b4c4b 	0x24b4c4b
     500:	4b831328 	c2	0x1831328
     504:	4b4b4b4b 	c2	0x14b4b4b
     508:	4b4b4b4b 	c2	0x14b4b4b
     50c:	4b4d4c4b 	c2	0x14d4c4b
     510:	024b4b4b 	0x24b4b4b
     514:	01010004 	sllv	zero,at,t0
     518:	000000b8 	0xb8
     51c:	00270002 	0x270002
     520:	01010000 	0x1010000
     524:	000d0efb 	0xd0efb
     528:	01010101 	0x1010101
     52c:	01000000 	0x1000000
     530:	00010000 	sll	zero,at,0x0
     534:	5f31376e 	0x5f31376e
     538:	615f686c 	0x615f686c
     53c:	5f6c6564 	0x5f6c6564
     540:	532e7865 	0x532e7865
     544:	00000000 	nop
     548:	02050000 	0x2050000
     54c:	bfc02210 	0xbfc02210
     550:	4b4b4b18 	c2	0x14b4b18
     554:	4b4b4b4c 	c2	0x14b4b4c
     558:	30024d4b 	andi	v0,zero,0x4d4b
     55c:	4b4b8313 	c2	0x14b8313
     560:	4b4b4b4b 	c2	0x14b4b4b
     564:	024b4c4b 	0x24b4c4b
     568:	4b831328 	c2	0x1831328
     56c:	4b4b4b4b 	c2	0x14b4b4b
     570:	4b4b4b4b 	c2	0x14b4b4b
     574:	4b4b4b4b 	c2	0x14b4b4b
     578:	4b4c4b4b 	c2	0x14c4b4b
     57c:	83133002 	lb	s3,12290(t8)
     580:	4b4b4b4b 	c2	0x14b4b4b
     584:	4b4b4b4b 	c2	0x14b4b4b
     588:	4b4b4b4b 	c2	0x14b4b4b
     58c:	30024b4c 	andi	v0,zero,0x4b4c
     590:	4b4b8313 	c2	0x14b8313
     594:	4b4b4b4b 	c2	0x14b4b4b
     598:	4b4c4b4b 	c2	0x14c4b4b
     59c:	83133002 	lb	s3,12290(t8)
     5a0:	4b4b4b4b 	c2	0x14b4b4b
     5a4:	4b4b4b4b 	c2	0x14b4b4b
     5a8:	4b4b4b4b 	c2	0x14b4b4b
     5ac:	28024b4c 	slti	v0,zero,19276
     5b0:	4b4b8313 	c2	0x14b8313
     5b4:	4b4b4b4b 	c2	0x14b4b4b
     5b8:	4b4c4b4b 	c2	0x14c4b4b
     5bc:	83132802 	lb	s3,10242(t8)
     5c0:	4b4b4b4b 	c2	0x14b4b4b
     5c4:	4b4b4b4b 	c2	0x14b4b4b
     5c8:	4b4d4c4b 	c2	0x14d4c4b
     5cc:	024b4b4b 	0x24b4b4b
     5d0:	01010004 	sllv	zero,at,t0
     5d4:	000000b9 	0xb9
     5d8:	00280002 	0x280002
     5dc:	01010000 	0x1010000
     5e0:	000d0efb 	0xd0efb
     5e4:	01010101 	0x1010101
     5e8:	01000000 	0x1000000
     5ec:	00010000 	sll	zero,at,0x0
     5f0:	5f32376e 	0x5f32376e
     5f4:	5f75686c 	0x5f75686c
     5f8:	6c656461 	0x6c656461
     5fc:	2e78655f 	sltiu	t8,s3,25951
     600:	00000053 	0x53
     604:	05000000 	bltz	t0,608 <data_size+0x5f8>
     608:	c0251002 	lwc0	$5,4098(at)
     60c:	4b4b18bf 	c2	0x14b18bf
     610:	4b4b4c4b 	c2	0x14b4c4b
     614:	024d4b4b 	0x24d4b4b
     618:	4b831330 	c2	0x1831330
     61c:	4b4b4b4b 	c2	0x14b4b4b
     620:	4b4c4b4b 	c2	0x14c4b4b
     624:	83133002 	lb	s3,12290(t8)
     628:	4b4b4b4b 	c2	0x14b4b4b
     62c:	4b4b4b4b 	c2	0x14b4b4b
     630:	4b4b4b4b 	c2	0x14b4b4b
     634:	4c4b4b4b 	0x4c4b4b4b
     638:	1328024b 	beq	t9,t0,f68 <data_size+0xf58>
     63c:	4b4b4b83 	c2	0x14b4b83
     640:	4b4b4b4b 	c2	0x14b4b4b
     644:	4b4b4b4b 	c2	0x14b4b4b
     648:	024b4c4b 	0x24b4c4b
     64c:	4b831328 	c2	0x1831328
     650:	4b4b4b4b 	c2	0x14b4b4b
     654:	4c4b4b4b 	0x4c4b4b4b
     658:	1330024b 	beq	t9,s0,f88 <data_size+0xf78>
     65c:	4b4b4b83 	c2	0x14b4b83
     660:	4b4b4b4b 	c2	0x14b4b4b
     664:	4b4b4b4b 	c2	0x14b4b4b
     668:	024b4c4b 	0x24b4c4b
     66c:	4b831328 	c2	0x1831328
     670:	4b4b4b4b 	c2	0x14b4b4b
     674:	4c4b4b4b 	0x4c4b4b4b
     678:	1328024b 	beq	t9,t0,fa8 <data_size+0xf98>
     67c:	4b4b4b83 	c2	0x14b4b83
     680:	4b4b4b4b 	c2	0x14b4b4b
     684:	4d4c4b4b 	0x4d4c4b4b
     688:	4b4b4b4b 	c2	0x14b4b4b
     68c:	01000402 	0x1000402
     690:	00009b01 	0x9b01
     694:	26000200 	addiu	zero,s0,512
     698:	01000000 	0x1000000
     69c:	0d0efb01 	jal	43bec04 <data_size+0x43bebf4>
     6a0:	01010100 	0x1010100
     6a4:	00000001 	0x1
     6a8:	01000001 	0x1000001
     6ac:	37366e00 	ori	s6,t9,0x6e00
     6b0:	6464615f 	0x6464615f
     6b4:	5f766f5f 	0x5f766f5f
     6b8:	532e7865 	0x532e7865
     6bc:	00000000 	nop
     6c0:	02050000 	0x2050000
     6c4:	bfc02810 	0xbfc02810
     6c8:	4b4b4b18 	c2	0x14b4b18
     6cc:	4b4b4b4c 	c2	0x14b4b4c
     6d0:	e5084d4b 	swc1	$f8,19787(t0)
     6d4:	4b4b4b83 	c2	0x14b4b83
     6d8:	084b4c4b 	j	12d312c <data_size+0x12d311c>
     6dc:	4b4b83e5 	c2	0x14b83e5
     6e0:	4b4b4b4b 	c2	0x14b4b4b
     6e4:	4b4b4b4b 	c2	0x14b4b4b
     6e8:	4b4c4b4b 	c2	0x14c4b4b
     6ec:	e5084b83 	swc1	$f8,19331(t0)
     6f0:	4b4b4b4b 	c2	0x14b4b4b
     6f4:	4b4b4b4b 	c2	0x14b4b4b
     6f8:	e5084b4c 	swc1	$f8,19276(t0)
     6fc:	4b4b4b83 	c2	0x14b4b83
     700:	4b4c4b4b 	c2	0x14c4b4b
     704:	4b83e508 	c2	0x183e508
     708:	4b4b4b4b 	c2	0x14b4b4b
     70c:	4b4b4b4b 	c2	0x14b4b4b
     710:	e5084b4c 	swc1	$f8,19276(t0)
     714:	4b4b4b83 	c2	0x14b4b83
     718:	4b4c4b4b 	c2	0x14c4b4b
     71c:	4b83e508 	c2	0x183e508
     720:	4b4b4b4b 	c2	0x14b4b4b
     724:	4b4d4c4b 	c2	0x14d4c4b
     728:	024b4b4b 	0x24b4b4b
     72c:	01010004 	sllv	zero,at,t0
     730:	000000dc 	0xdc
     734:	00270002 	0x270002
     738:	01010000 	0x1010000
     73c:	000d0efb 	0xd0efb
     740:	01010101 	0x1010101
     744:	01000000 	0x1000000
     748:	00010000 	sll	zero,at,0x0
     74c:	5f30386e 	0x5f30386e
     750:	7a656762 	0x7a656762
     754:	5f73645f 	0x5f73645f
     758:	532e7865 	0x532e7865
     75c:	00000000 	nop
     760:	02050000 	0x2050000
     764:	bfc02a60 	0xbfc02a60
     768:	4b4c4b18 	c2	0x14c4b18
     76c:	4b4d4b4b 	c2	0x14d4b4b
     770:	4b834b4b 	c2	0x1834b4b
     774:	4b4b4b4b 	c2	0x14b4b4b
     778:	4b4b4b83 	c2	0x14b4b83
     77c:	4b4b4b4c 	c2	0x14b4b4c
     780:	4b4b4b83 	c2	0x14b4b83
     784:	4b834b4b 	c2	0x1834b4b
     788:	4b4c4b4b 	c2	0x14c4b4b
     78c:	83834b4b 	lb	v1,19275(gp)
     790:	4b4b4b83 	c2	0x14b4b83
     794:	4b834b4b 	c2	0x1834b4b
     798:	4b4b4b4b 	c2	0x14b4b4b
     79c:	83834b4b 	lb	v1,19275(gp)
     7a0:	4b4b4b4b 	c2	0x14b4b4b
     7a4:	4b4b834b 	c2	0x14b834b
     7a8:	834b4b4b 	lb	t3,19275(k0)
     7ac:	4b4b8383 	c2	0x14b8383
     7b0:	834b4b4b 	lb	t3,19275(k0)
     7b4:	4c4b4b4b 	0x4c4b4b4b
     7b8:	834b4b4b 	lb	t3,19275(k0)
     7bc:	4b4b4b4b 	c2	0x14b4b4b
     7c0:	4b4b834b 	c2	0x14b834b
     7c4:	834b4b4b 	lb	t3,19275(k0)
     7c8:	4b4b4b4b 	c2	0x14b4b4b
     7cc:	4b834b4b 	c2	0x1834b4b
     7d0:	834b4b4b 	lb	t3,19275(k0)
     7d4:	4b4b4b4b 	c2	0x14b4b4b
     7d8:	4b4b834b 	c2	0x14b834b
     7dc:	4b4b4c4b 	c2	0x14b4c4b
     7e0:	4b4b834b 	c2	0x14b834b
     7e4:	834b4b4b 	lb	t3,19275(k0)
     7e8:	4b4b4b4b 	c2	0x14b4b4b
     7ec:	4b4b834b 	c2	0x14b834b
     7f0:	834b4b4b 	lb	t3,19275(k0)
     7f4:	4d4b4b4b 	0x4d4b4b4b
     7f8:	834b4b4b 	lb	t3,19275(k0)
     7fc:	4b4b4b84 	c2	0x14b4b84
     800:	844b834b 	lh	t3,-31925(v0)
     804:	4b4d4c4b 	c2	0x14d4c4b
     808:	024b4b4b 	0x24b4b4b
     80c:	01010004 	sllv	zero,at,t0
     810:	0000009a 	0x9a
     814:	00270002 	0x270002
     818:	01010000 	0x1010000
     81c:	000d0efb 	0xd0efb
     820:	01010101 	0x1010101
     824:	01000000 	0x1000000
     828:	00010000 	sll	zero,at,0x0
     82c:	5f38366e 	0x5f38366e
     830:	69646461 	0x69646461
     834:	5f766f5f 	0x5f766f5f
     838:	532e7865 	0x532e7865
     83c:	00000000 	nop
     840:	02050000 	0x2050000
     844:	bfc02d60 	0xbfc02d60
     848:	4b4b4b18 	c2	0x14b4b18
     84c:	4b4b4b4c 	c2	0x14b4b4c
     850:	ad084d4b 	sw	t0,19787(t0)
     854:	4c4b4b83 	0x4c4b4b83
     858:	83ad084b 	lb	t5,2123(sp)
     85c:	4b4b4b4b 	c2	0x14b4b4b
     860:	4b4b4b4b 	c2	0x14b4b4b
     864:	4b4b4b4b 	c2	0x14b4b4b
     868:	ad084b4c 	sw	t0,19276(t0)
     86c:	4b4b4b83 	c2	0x14b4b83
     870:	4b4b4b4b 	c2	0x14b4b4b
     874:	4b4c4b4b 	c2	0x14c4b4b
     878:	4b83ad08 	c2	0x183ad08
     87c:	4b4b4b4b 	c2	0x14b4b4b
     880:	ad084b4c 	sw	t0,19276(t0)
     884:	4b4b4b83 	c2	0x14b4b83
     888:	4b4b4b4b 	c2	0x14b4b4b
     88c:	4b4c4b4b 	c2	0x14c4b4b
     890:	4b83ad08 	c2	0x183ad08
     894:	4b4b4b4b 	c2	0x14b4b4b
     898:	ad084b4c 	sw	t0,19276(t0)
     89c:	4b4b4b83 	c2	0x14b4b83
     8a0:	4c4b4b4b 	0x4c4b4b4b
     8a4:	4b4b4b4d 	c2	0x14b4b4d
     8a8:	0004024b 	0x4024b
     8ac:	00dc0101 	0xdc0101
     8b0:	00020000 	sll	zero,v0,0x0
     8b4:	00000027 	nor	zero,zero,zero
     8b8:	0efb0101 	jal	bec0404 <data_size+0xbec03f4>
     8bc:	0101000d 	break	0x101
     8c0:	00000101 	0x101
     8c4:	00000100 	sll	zero,zero,0x4
     8c8:	386e0001 	xori	t6,v1,0x1
     8cc:	67625f31 	0x67625f31
     8d0:	645f7a74 	0x645f7a74
     8d4:	78655f73 	0x78655f73
     8d8:	0000532e 	0x532e
     8dc:	00000000 	nop
     8e0:	2f900205 	sltiu	s0,gp,517
     8e4:	4b18bfc0 	c2	0x118bfc0
     8e8:	4b4b4b4c 	c2	0x14b4b4c
     8ec:	4b4b4b4d 	c2	0x14b4b4d
     8f0:	4b4b4b83 	c2	0x14b4b83
     8f4:	4b834b4b 	c2	0x1834b4b
     8f8:	4b4c4b4b 	c2	0x14c4b4b
     8fc:	4b834b4b 	c2	0x1834b4b
     900:	4b4b4b4b 	c2	0x14b4b4b
     904:	4b4b4b83 	c2	0x14b4b83
     908:	4b4b4b4c 	c2	0x14b4b4c
     90c:	4b838383 	c2	0x1838383
     910:	4b4b4b4b 	c2	0x14b4b4b
     914:	4b4b4b83 	c2	0x14b4b83
     918:	4b4b4b4b 	c2	0x14b4b4b
     91c:	4b4b8383 	c2	0x14b8383
     920:	834b4b4b 	lb	t3,19275(k0)
     924:	4b4b4b4b 	c2	0x14b4b4b
     928:	8383834b 	lb	v1,-31925(gp)
     92c:	4b4b4b4b 	c2	0x14b4b4b
     930:	4b4b834b 	c2	0x14b834b
     934:	4b4b4c4b 	c2	0x14b4c4b
     938:	4b4b834b 	c2	0x14b834b
     93c:	834b4b4b 	lb	t3,19275(k0)
     940:	4b4b4b4b 	c2	0x14b4b4b
     944:	4b4b834b 	c2	0x14b834b
     948:	4b4b4b4b 	c2	0x14b4b4b
     94c:	4b4b4b83 	c2	0x14b4b83
     950:	4b4b834b 	c2	0x14b834b
     954:	834b4b4b 	lb	t3,19275(k0)
     958:	4c4b4b4b 	0x4c4b4b4b
     95c:	834b4b4b 	lb	t3,19275(k0)
     960:	4b4b4b4b 	c2	0x14b4b4b
     964:	4b4b834b 	c2	0x14b834b
     968:	834b4b4b 	lb	t3,19275(k0)
     96c:	4b4b4b4b 	c2	0x14b4b4b
     970:	4b4b834b 	c2	0x14b834b
     974:	4b4b4d4b 	c2	0x14b4d4b
     978:	4b84834b 	c2	0x184834b
     97c:	834b4b4b 	lb	t3,19275(k0)
     980:	4c4b844b 	0x4c4b844b
     984:	4b4b4b4d 	c2	0x14b4b4d
     988:	0004024b 	0x4024b
     98c:	00de0101 	0xde0101
     990:	00020000 	sll	zero,v0,0x0
     994:	00000027 	nor	zero,zero,zero
     998:	0efb0101 	jal	bec0404 <data_size+0xbec03f4>
     99c:	0101000d 	break	0x101
     9a0:	00000101 	0x101
     9a4:	00000100 	sll	zero,zero,0x4
     9a8:	386e0001 	xori	t6,v1,0x1
     9ac:	616a5f39 	0x616a5f39
     9b0:	645f726c 	0x645f726c
     9b4:	78655f73 	0x78655f73
     9b8:	0000532e 	0x532e
     9bc:	00000000 	nop
     9c0:	32900205 	andi	s0,s4,0x205
     9c4:	4b18bfc0 	c2	0x118bfc0
     9c8:	4b4b4c4b 	c2	0x14b4c4b
     9cc:	4b4b4d4b 	c2	0x14b4d4b
     9d0:	4b4b834b 	c2	0x14b834b
     9d4:	834b4b4b 	lb	t3,19275(k0)
     9d8:	4c4b4b4b 	0x4c4b4b4b
     9dc:	834b4b4b 	lb	t3,19275(k0)
     9e0:	4b4b4b4b 	c2	0x14b4b4b
     9e4:	4b4b834b 	c2	0x14b834b
     9e8:	4b4b4c4b 	c2	0x14b4c4b
     9ec:	8383834b 	lb	v1,-31925(gp)
     9f0:	4b4b4b4b 	c2	0x14b4b4b
     9f4:	4b4b834b 	c2	0x14b834b
     9f8:	4b4b4b4b 	c2	0x14b4b4b
     9fc:	4b83834b 	c2	0x183834b
     a00:	4b4b4b4b 	c2	0x14b4b4b
     a04:	4b4b4b83 	c2	0x14b4b83
     a08:	83834b4b 	lb	v1,19275(gp)
     a0c:	4b4b4b83 	c2	0x14b4b83
     a10:	4b834b4b 	c2	0x1834b4b
     a14:	4b4c4b4b 	c2	0x14c4b4b
     a18:	4b834b4b 	c2	0x1834b4b
     a1c:	4b4b4b4b 	c2	0x14b4b4b
     a20:	4b4b4b83 	c2	0x14b4b83
     a24:	4b834b4b 	c2	0x1834b4b
     a28:	4b4b4b4b 	c2	0x14b4b4b
     a2c:	4b4b834b 	c2	0x14b834b
     a30:	4b834b4b 	c2	0x1834b4b
     a34:	4b4b4b4b 	c2	0x14b4b4b
     a38:	4b4b4b83 	c2	0x14b4b83
     a3c:	4b4b4b4c 	c2	0x14b4b4c
     a40:	4b4b4b83 	c2	0x14b4b83
     a44:	4b834b4b 	c2	0x1834b4b
     a48:	4b4b4b4b 	c2	0x14b4b4b
     a4c:	4b4b4b83 	c2	0x14b4b83
     a50:	4b834b4b 	c2	0x1834b4b
     a54:	4b4d4b4b 	c2	0x14d4b4b
     a58:	84834b4b 	lh	v1,19275(a0)
     a5c:	4b4b4b4b 	c2	0x14b4b4b
     a60:	4b844b83 	c2	0x1844b83
     a64:	4b4b4d4c 	c2	0x14b4d4c
     a68:	024b4b4b 	0x24b4b4b
     a6c:	01010004 	sllv	zero,at,t0
     a70:	000000db 	0xdb
     a74:	00260002 	0x260002
     a78:	01010000 	0x1010000
     a7c:	000d0efb 	0xd0efb
     a80:	01010101 	0x1010101
     a84:	01000000 	0x1000000
     a88:	00010000 	sll	zero,at,0x0
     a8c:	5f38376e 	0x5f38376e
     a90:	5f716562 	0x5f716562
     a94:	655f7364 	0x655f7364
     a98:	00532e78 	0x532e78
     a9c:	00000000 	nop
     aa0:	a0020500 	sb	v0,1280(zero)
     aa4:	18bfc035 	0x18bfc035
     aa8:	4b4b4c4b 	c2	0x14b4c4b
     aac:	4b4b4d4b 	c2	0x14b4d4b
     ab0:	4b4b834b 	c2	0x14b834b
     ab4:	834b4b4b 	lb	t3,19275(k0)
     ab8:	4c4b4b4b 	0x4c4b4b4b
     abc:	834b4b4b 	lb	t3,19275(k0)
     ac0:	4b4b4b4b 	c2	0x14b4b4b
     ac4:	4b4b834b 	c2	0x14b834b
     ac8:	4b4b4c4b 	c2	0x14b4c4b
     acc:	8383834b 	lb	v1,-31925(gp)
     ad0:	4b4b4b4b 	c2	0x14b4b4b
     ad4:	4b4b834b 	c2	0x14b834b
     ad8:	4b4b4b4b 	c2	0x14b4b4b
     adc:	4b83834b 	c2	0x183834b
     ae0:	4b4b4b4b 	c2	0x14b4b4b
     ae4:	4b4b4b83 	c2	0x14b4b83
     ae8:	83834b4b 	lb	v1,19275(gp)
     aec:	4b4b4b83 	c2	0x14b4b83
     af0:	4b834b4b 	c2	0x1834b4b
     af4:	4b4c4b4b 	c2	0x14c4b4b
     af8:	4b834b4b 	c2	0x1834b4b
     afc:	4b4b4b4b 	c2	0x14b4b4b
     b00:	4b4b4b83 	c2	0x14b4b83
     b04:	4b834b4b 	c2	0x1834b4b
     b08:	4b4b4b4b 	c2	0x14b4b4b
     b0c:	4b4b834b 	c2	0x14b834b
     b10:	4b834b4b 	c2	0x1834b4b
     b14:	4b4b4b4b 	c2	0x14b4b4b
     b18:	4b4b4b83 	c2	0x14b4b83
     b1c:	4b4b4b4c 	c2	0x14b4b4c
     b20:	4b4b4b83 	c2	0x14b4b83
     b24:	4b834b4b 	c2	0x1834b4b
     b28:	4b4b4b4b 	c2	0x14b4b4b
     b2c:	4b4b4b83 	c2	0x14b4b83
     b30:	4b834b4b 	c2	0x1834b4b
     b34:	4b4d4b4b 	c2	0x14d4b4b
     b38:	84834b4b 	lh	v1,19275(a0)
     b3c:	4b4b4b4b 	c2	0x14b4b4b
     b40:	4b844b83 	c2	0x1844b83
     b44:	4b4b4d4c 	c2	0x14b4d4c
     b48:	04024b4b 	0x4024b4b
     b4c:	d9010100 	0xd9010100
     b50:	02000000 	0x2000000
     b54:	00002400 	sll	a0,zero,0x10
     b58:	fb010100 	0xfb010100
     b5c:	01000d0e 	0x1000d0e
     b60:	00010101 	0x10101
     b64:	00010000 	sll	zero,at,0x0
     b68:	6e000100 	0x6e000100
     b6c:	6a5f3638 	0x6a5f3638
     b70:	5f73645f 	0x5f73645f
     b74:	532e7865 	0x532e7865
     b78:	00000000 	nop
     b7c:	02050000 	0x2050000
     b80:	bfc038a0 	0xbfc038a0
     b84:	4b4c4b18 	c2	0x14c4b18
     b88:	4b4d4b4b 	c2	0x14d4b4b
     b8c:	4b834b4b 	c2	0x1834b4b
     b90:	4b4b4b4b 	c2	0x14b4b4b
     b94:	4b4b4b83 	c2	0x14b4b83
     b98:	4b4b4b4c 	c2	0x14b4b4c
     b9c:	4b4b4b83 	c2	0x14b4b83
     ba0:	4b834b4b 	c2	0x1834b4b
     ba4:	4b4c4b4b 	c2	0x14c4b4b
     ba8:	83834b4b 	lb	v1,19275(gp)
     bac:	4b4b4b83 	c2	0x14b4b83
     bb0:	4b834b4b 	c2	0x1834b4b
     bb4:	4b4b4b4b 	c2	0x14b4b4b
     bb8:	83834b4b 	lb	v1,19275(gp)
     bbc:	4b4b4b4b 	c2	0x14b4b4b
     bc0:	4b4b834b 	c2	0x14b834b
     bc4:	834b4b4b 	lb	t3,19275(k0)
     bc8:	4b4b8383 	c2	0x14b8383
     bcc:	834b4b4b 	lb	t3,19275(k0)
     bd0:	4c4b4b4b 	0x4c4b4b4b
     bd4:	834b4b4b 	lb	t3,19275(k0)
     bd8:	4b4b4b4b 	c2	0x14b4b4b
     bdc:	4b4b834b 	c2	0x14b834b
     be0:	834b4b4b 	lb	t3,19275(k0)
     be4:	4b4b4b4b 	c2	0x14b4b4b
     be8:	4b834b4b 	c2	0x1834b4b
     bec:	834b4b4b 	lb	t3,19275(k0)
     bf0:	4b4b4b4b 	c2	0x14b4b4b
     bf4:	4b4b834b 	c2	0x14b834b
     bf8:	4b4b4c4b 	c2	0x14b4c4b
     bfc:	4b4b834b 	c2	0x14b834b
     c00:	834b4b4b 	lb	t3,19275(k0)
     c04:	4b4b4b4b 	c2	0x14b4b4b
     c08:	4b4b834b 	c2	0x14b834b
     c0c:	834b4b4b 	lb	t3,19275(k0)
     c10:	4d4b4b4b 	0x4d4b4b4b
     c14:	834b4b4b 	lb	t3,19275(k0)
     c18:	4b4b4b84 	c2	0x14b4b84
     c1c:	844b834b 	lh	t3,-31925(v0)
     c20:	4b4d4c4b 	c2	0x14d4c4b
     c24:	024b4b4b 	0x24b4b4b
     c28:	01010004 	sllv	zero,at,t0
     c2c:	000000db 	0xdb
     c30:	00260002 	0x260002
     c34:	01010000 	0x1010000
     c38:	000d0efb 	0xd0efb
     c3c:	01010101 	0x1010101
     c40:	01000000 	0x1000000
     c44:	00010000 	sll	zero,at,0x0
     c48:	5f39376e 	0x5f39376e
     c4c:	5f656e62 	0x5f656e62
     c50:	655f7364 	0x655f7364
     c54:	00532e78 	0x532e78
     c58:	00000000 	nop
     c5c:	a0020500 	sb	v0,1280(zero)
     c60:	18bfc03b 	0x18bfc03b
     c64:	4b4b4c4b 	c2	0x14b4c4b
     c68:	4b4b4d4b 	c2	0x14b4d4b
     c6c:	4b4b834b 	c2	0x14b834b
     c70:	834b4b4b 	lb	t3,19275(k0)
     c74:	4c4b4b4b 	0x4c4b4b4b
     c78:	834b4b4b 	lb	t3,19275(k0)
     c7c:	4b4b4b4b 	c2	0x14b4b4b
     c80:	4b4b834b 	c2	0x14b834b
     c84:	4b4b4c4b 	c2	0x14b4c4b
     c88:	8383834b 	lb	v1,-31925(gp)
     c8c:	4b4b4b4b 	c2	0x14b4b4b
     c90:	4b4b834b 	c2	0x14b834b
     c94:	834b4b4b 	lb	t3,19275(k0)
     c98:	4b4b4b83 	c2	0x14b4b83
     c9c:	4b834b4b 	c2	0x1834b4b
     ca0:	4b4b4b4b 	c2	0x14b4b4b
     ca4:	4b838383 	c2	0x1838383
     ca8:	4b4b4b4b 	c2	0x14b4b4b
     cac:	4b4b4b83 	c2	0x14b4b83
     cb0:	4b4b4b4c 	c2	0x14b4b4c
     cb4:	4b4b4b83 	c2	0x14b4b83
     cb8:	4b4b4b4b 	c2	0x14b4b4b
     cbc:	4b4b4b83 	c2	0x14b4b83
     cc0:	4b834b4b 	c2	0x1834b4b
     cc4:	4b4b4b4b 	c2	0x14b4b4b
     cc8:	4b4b4b83 	c2	0x14b4b83
     ccc:	4b4b834b 	c2	0x14b834b
     cd0:	834b4b4b 	lb	t3,19275(k0)
     cd4:	4c4b4b4b 	0x4c4b4b4b
     cd8:	834b4b4b 	lb	t3,19275(k0)
     cdc:	4b4b4b4b 	c2	0x14b4b4b
     ce0:	4b834b4b 	c2	0x1834b4b
     ce4:	4b4b4b4b 	c2	0x14b4b4b
     ce8:	4b4b4b83 	c2	0x14b4b83
     cec:	4b834b4b 	c2	0x1834b4b
     cf0:	4b4d4b4b 	c2	0x14d4b4b
     cf4:	84834b4b 	lh	v1,19275(a0)
     cf8:	4b4b4b4b 	c2	0x14b4b4b
     cfc:	4b844b83 	c2	0x1844b83
     d00:	4b4b4d4c 	c2	0x14b4d4c
     d04:	04024b4b 	0x4024b4b
     d08:	7e010100 	0x7e010100
     d0c:	02000000 	0x2000000
     d10:	00002500 	sll	a0,zero,0x14
     d14:	fb010100 	0xfb010100
     d18:	01000d0e 	0x1000d0e
     d1c:	00010101 	0x10101
     d20:	00010000 	sll	zero,at,0x0
     d24:	6e000100 	0x6e000100
     d28:	625f3636 	0x625f3636
     d2c:	6b616572 	0x6b616572
     d30:	2e78655f 	sltiu	t8,s3,25951
     d34:	00000053 	0x53
     d38:	05000000 	bltz	t0,d3c <data_size+0xd2c>
     d3c:	c03ea002 	lwc0	$30,-24574(at)
     d40:	4b4b18bf 	c2	0x14b18bf
     d44:	4b4b4c4b 	c2	0x14b4c4b
     d48:	844d4b4b 	lh	t5,19275(v0)
     d4c:	4b4c4b4b 	c2	0x14c4b4b
     d50:	4b4c4b83 	c2	0x14c4b83
     d54:	4b4b4b4b 	c2	0x14b4b4b
     d58:	4c4b4b4b 	0x4c4b4b4b
     d5c:	4c4b834b 	0x4c4b834b
     d60:	4b4b4b4b 	c2	0x14b4b4b
     d64:	844b4c4b 	lh	t3,19531(v0)
     d68:	4c4b4b4b 	0x4c4b4b4b
     d6c:	4c4b834b 	0x4c4b834b
     d70:	4b4b4b4b 	c2	0x14b4b4b
     d74:	844b4c4b 	lh	t3,19531(v0)
     d78:	4c4b4b4b 	0x4c4b4b4b
     d7c:	4b4c834b 	c2	0x14c834b
     d80:	4d4c4b4b 	0x4d4c4b4b
     d84:	4b4b4b4b 	c2	0x14b4b4b
     d88:	01000402 	0x1000402
     d8c:	0000dc01 	0xdc01
     d90:	27000200 	addiu	zero,t8,512
     d94:	01000000 	0x1000000
     d98:	0d0efb01 	jal	43bec04 <data_size+0x43bebf4>
     d9c:	01010100 	0x1010100
     da0:	00000001 	0x1
     da4:	01000001 	0x1000001
     da8:	33386e00 	andi	t8,t9,0x6e00
     dac:	746c625f 	jalx	1b1897c <data_size+0x1b1896c>
     db0:	73645f7a 	0x73645f7a
     db4:	2e78655f 	sltiu	t8,s3,25951
     db8:	00000053 	0x53
     dbc:	05000000 	bltz	t0,dc0 <data_size+0xdb0>
     dc0:	c03fe002 	lwc0	$31,-8190(at)
     dc4:	4c4b18bf 	0x4c4b18bf
     dc8:	4d4b4b4b 	0x4d4b4b4b
     dcc:	834b4b4b 	lb	t3,19275(k0)
     dd0:	4b4b4b4b 	c2	0x14b4b4b
     dd4:	4b4b834b 	c2	0x14b834b
     dd8:	4b4b4c4b 	c2	0x14b4c4b
     ddc:	4b4b834b 	c2	0x14b834b
     de0:	834b4b4b 	lb	t3,19275(k0)
     de4:	4c4b4b4b 	0x4c4b4b4b
     de8:	834b4b4b 	lb	t3,19275(k0)
     dec:	4b4b8383 	c2	0x14b8383
     df0:	834b4b4b 	lb	t3,19275(k0)
     df4:	4b4b4b4b 	c2	0x14b4b4b
     df8:	834b4b4b 	lb	t3,19275(k0)
     dfc:	4b4b4b83 	c2	0x14b4b83
     e00:	4b834b4b 	c2	0x1834b4b
     e04:	4b4b4b4b 	c2	0x14b4b4b
     e08:	4b838383 	c2	0x1838383
     e0c:	4b4b4b4b 	c2	0x14b4b4b
     e10:	4b4b4b83 	c2	0x14b4b83
     e14:	4b4b4b4c 	c2	0x14b4b4c
     e18:	4b4b4b83 	c2	0x14b4b83
     e1c:	4b834b4b 	c2	0x1834b4b
     e20:	4b4b4b4b 	c2	0x14b4b4b
     e24:	4b4b4b83 	c2	0x14b4b83
     e28:	834b4b4b 	lb	t3,19275(k0)
     e2c:	4b4b4b4b 	c2	0x14b4b4b
     e30:	4b4b4b83 	c2	0x14b4b83
     e34:	4b834b4b 	c2	0x1834b4b
     e38:	4b4c4b4b 	c2	0x14c4b4b
     e3c:	4b834b4b 	c2	0x1834b4b
     e40:	4b4b4b4b 	c2	0x14b4b4b
     e44:	4b4b4b83 	c2	0x14b4b83
     e48:	4b834b4b 	c2	0x1834b4b
     e4c:	4b4b4b4b 	c2	0x14b4b4b
     e50:	4b4b4b83 	c2	0x14b4b83
     e54:	4b4b4b4d 	c2	0x14b4b4d
     e58:	4b4b8483 	c2	0x14b8483
     e5c:	4b834b4b 	c2	0x1834b4b
     e60:	4d4c4b84 	0x4d4c4b84
     e64:	4b4b4b4b 	c2	0x14b4b4b
     e68:	01000402 	0x1000402
     e6c:	0000b801 	0xb801
     e70:	27000200 	addiu	zero,t8,512
     e74:	01000000 	0x1000000
     e78:	0d0efb01 	jal	43bec04 <data_size+0x43bebf4>
     e7c:	01010100 	0x1010100
     e80:	00000001 	0x1
     e84:	01000001 	0x1000001
     e88:	30376e00 	andi	s7,at,0x6e00
     e8c:	5f776c5f 	0x5f776c5f
     e90:	6c656461 	0x6c656461
     e94:	2e78655f 	sltiu	t8,s3,25951
     e98:	00000053 	0x53
     e9c:	05000000 	bltz	t0,ea0 <data_size+0xe90>
     ea0:	c042e002 	lwc0	$2,-8190(v0)
     ea4:	4b4b18bf 	c2	0x14b18bf
     ea8:	4b4b4c4b 	c2	0x14b4c4b
     eac:	024d4b4b 	0x24d4b4b
     eb0:	4b831330 	c2	0x1831330
     eb4:	4b4b4b4b 	c2	0x14b4b4b
     eb8:	4b4c4b4b 	c2	0x14c4b4b
     ebc:	83132802 	lb	s3,10242(t8)
     ec0:	4b4b4b4b 	c2	0x14b4b4b
     ec4:	4b4b4b4b 	c2	0x14b4b4b
     ec8:	4b4b4b4b 	c2	0x14b4b4b
     ecc:	4c4b4b4b 	0x4c4b4b4b
     ed0:	1328024b 	beq	t9,t0,1800 <data_size+0x17f0>
     ed4:	4b4b4b83 	c2	0x14b4b83
     ed8:	4b4b4b4b 	c2	0x14b4b4b
     edc:	4b4b4b4b 	c2	0x14b4b4b
     ee0:	024b4c4b 	0x24b4c4b
     ee4:	4b831328 	c2	0x1831328
     ee8:	4b4b4b4b 	c2	0x14b4b4b
     eec:	4c4b4b4b 	0x4c4b4b4b
     ef0:	1328024b 	beq	t9,t0,1820 <data_size+0x1810>
     ef4:	4b4b4b83 	c2	0x14b4b83
     ef8:	4b4b4b4b 	c2	0x14b4b4b
     efc:	4b4b4b4b 	c2	0x14b4b4b
     f00:	024b4c4b 	0x24b4c4b
     f04:	4b831330 	c2	0x1831330
     f08:	4b4b4b4b 	c2	0x14b4b4b
     f0c:	4c4b4b4b 	0x4c4b4b4b
     f10:	1330024b 	beq	t9,s0,1840 <data_size+0x1830>
     f14:	4b4b4b83 	c2	0x14b4b83
     f18:	4b4b4b4b 	c2	0x14b4b4b
     f1c:	4d4c4b4b 	0x4d4c4b4b
     f20:	4b4b4b4b 	c2	0x14b4b4b
     f24:	01000402 	0x1000402
     f28:	0000da01 	0xda01
     f2c:	25000200 	addiu	zero,t0,512
     f30:	01000000 	0x1000000
     f34:	0d0efb01 	jal	43bec04 <data_size+0x43bebf4>
     f38:	01010100 	0x1010100
     f3c:	00000001 	0x1
     f40:	01000001 	0x1000001
     f44:	38386e00 	xori	t8,at,0x6e00
     f48:	5f726a5f 	0x5f726a5f
     f4c:	655f7364 	0x655f7364
     f50:	00532e78 	0x532e78
     f54:	00000000 	nop
     f58:	e0020500 	swc0	$2,1280(zero)
     f5c:	18bfc045 	0x18bfc045
     f60:	4b4b4c4b 	c2	0x14b4c4b
     f64:	4b4b4d4b 	c2	0x14b4d4b
     f68:	4b4b834b 	c2	0x14b834b
     f6c:	834b4b4b 	lb	t3,19275(k0)
     f70:	4c4b4b4b 	0x4c4b4b4b
     f74:	834b4b4b 	lb	t3,19275(k0)
     f78:	4b4b4b4b 	c2	0x14b4b4b
     f7c:	4b4b834b 	c2	0x14b834b
     f80:	4b4b4c4b 	c2	0x14b4c4b
     f84:	8383834b 	lb	v1,-31925(gp)
     f88:	4b4b4b4b 	c2	0x14b4b4b
     f8c:	4b4b834b 	c2	0x14b834b
     f90:	4b4b4b4b 	c2	0x14b4b4b
     f94:	4b83834b 	c2	0x183834b
     f98:	4b4b4b4b 	c2	0x14b4b4b
     f9c:	4b4b4b83 	c2	0x14b4b83
     fa0:	83834b4b 	lb	v1,19275(gp)
     fa4:	4b4b4b83 	c2	0x14b4b83
     fa8:	4b834b4b 	c2	0x1834b4b
     fac:	4b4c4b4b 	c2	0x14c4b4b
     fb0:	4b834b4b 	c2	0x1834b4b
     fb4:	4b4b4b4b 	c2	0x14b4b4b
     fb8:	4b4b4b83 	c2	0x14b4b83
     fbc:	4b834b4b 	c2	0x1834b4b
     fc0:	4b4b4b4b 	c2	0x14b4b4b
     fc4:	4b4b834b 	c2	0x14b834b
     fc8:	4b834b4b 	c2	0x1834b4b
     fcc:	4b4b4b4b 	c2	0x14b4b4b
     fd0:	4b4b4b83 	c2	0x14b4b83
     fd4:	4b4b4b4c 	c2	0x14b4b4c
     fd8:	4b4b4b83 	c2	0x14b4b83
     fdc:	4b834b4b 	c2	0x1834b4b
     fe0:	4b4b4b4b 	c2	0x14b4b4b
     fe4:	4b4b4b83 	c2	0x14b4b83
     fe8:	4b834b4b 	c2	0x1834b4b
     fec:	4b4d4b4b 	c2	0x14d4b4b
     ff0:	84834b4b 	lh	v1,19275(a0)
     ff4:	4b4b4b4b 	c2	0x14b4b4b
     ff8:	4b844b83 	c2	0x1844b83
     ffc:	4b4b4d4c 	c2	0x14b4d4c
    1000:	04024b4b 	0x4024b4b
    1004:	8f010100 	lw	at,256(t8)
    1008:	02000000 	0x2000000
    100c:	00002800 	sll	a1,zero,0x0
    1010:	fb010100 	0xfb010100
    1014:	01000d0e 	0x1000d0e
    1018:	00010101 	0x10101
    101c:	00010000 	sll	zero,at,0x0
    1020:	6e000100 	0x6e000100
    1024:	735f3737 	0x735f3737
    1028:	5f74666f 	0x5f74666f
    102c:	5f746e69 	0x5f746e69
    1030:	532e7865 	0x532e7865
    1034:	00000000 	nop
    1038:	02050000 	0x2050000
    103c:	bfc048e0 	0xbfc048e0
    1040:	4b4b4b18 	c2	0x14b4b18
    1044:	4b4b4b4c 	c2	0x14b4b4c
    1048:	02834d4b 	0x2834d4b
    104c:	4c4b1330 	0x4c4b1330
    1050:	4b4b834b 	c2	0x14b834b
    1054:	4b132c02 	c2	0x1132c02
    1058:	4b4b4b4b 	c2	0x14b4b4b
    105c:	4b4c4b4b 	c2	0x14c4b4b
    1060:	024b4b83 	0x24b4b83
    1064:	4b4b132c 	c2	0x14b132c
    1068:	4b4c4b4b 	c2	0x14c4b4b
    106c:	132c0283 	beq	t9,t4,1a7c <data_size+0x1a6c>
    1070:	4b4c4b4b 	c2	0x14c4b4b
    1074:	024b4b83 	0x24b4b83
    1078:	4b4b132c 	c2	0x14b132c
    107c:	4b4c4b4b 	c2	0x14c4b4b
    1080:	132c0283 	beq	t9,t4,1a90 <data_size+0x1a80>
    1084:	4b4c4b4b 	c2	0x14c4b4b
    1088:	2c024b83 	sltiu	v0,zero,19331
    108c:	4c4b4b13 	0x4c4b4b13
    1090:	4b4b4b4d 	c2	0x14b4b4d
    1094:	0004024b 	0x4024b
    1098:	00dc0101 	0xdc0101
    109c:	00020000 	sll	zero,v0,0x0
    10a0:	00000027 	nor	zero,zero,zero
    10a4:	0efb0101 	jal	bec0404 <data_size+0xbec03f4>
    10a8:	0101000d 	break	0x101
    10ac:	00000101 	0x101
    10b0:	00000100 	sll	zero,zero,0x4
    10b4:	386e0001 	xori	t6,v1,0x1
    10b8:	6c625f32 	0x6c625f32
    10bc:	645f7a65 	0x645f7a65
    10c0:	78655f73 	0x78655f73
    10c4:	0000532e 	0x532e
    10c8:	00000000 	nop
    10cc:	4b400205 	c2	0x1400205
    10d0:	4b18bfc0 	c2	0x118bfc0
    10d4:	4b4b4b4c 	c2	0x14b4b4c
    10d8:	4b4b4b4d 	c2	0x14b4b4d
    10dc:	4b4b4b83 	c2	0x14b4b83
    10e0:	4b834b4b 	c2	0x1834b4b
    10e4:	4b4c4b4b 	c2	0x14c4b4b
    10e8:	4b834b4b 	c2	0x1834b4b
    10ec:	4b4b4b4b 	c2	0x14b4b4b
    10f0:	4b4b4b83 	c2	0x14b4b83
    10f4:	4b4b4b4c 	c2	0x14b4b4c
    10f8:	4b838383 	c2	0x1838383
    10fc:	4b4b4b4b 	c2	0x14b4b4b
    1100:	4b4b4b83 	c2	0x14b4b83
    1104:	4b4b4b4b 	c2	0x14b4b4b
    1108:	4b4b8383 	c2	0x14b8383
    110c:	834b4b4b 	lb	t3,19275(k0)
    1110:	4b4b4b4b 	c2	0x14b4b4b
    1114:	8383834b 	lb	v1,-31925(gp)
    1118:	4b4b4b4b 	c2	0x14b4b4b
    111c:	4b4b834b 	c2	0x14b834b
    1120:	4b4b4c4b 	c2	0x14b4c4b
    1124:	4b4b834b 	c2	0x14b834b
    1128:	834b4b4b 	lb	t3,19275(k0)
    112c:	4b4b4b4b 	c2	0x14b4b4b
    1130:	4b4b834b 	c2	0x14b834b
    1134:	4b4b4b4b 	c2	0x14b4b4b
    1138:	4b4b4b83 	c2	0x14b4b83
    113c:	4b4b834b 	c2	0x14b834b
    1140:	834b4b4b 	lb	t3,19275(k0)
    1144:	4c4b4b4b 	0x4c4b4b4b
    1148:	834b4b4b 	lb	t3,19275(k0)
    114c:	4b4b4b4b 	c2	0x14b4b4b
    1150:	4b4b834b 	c2	0x14b834b
    1154:	834b4b4b 	lb	t3,19275(k0)
    1158:	4b4b4b4b 	c2	0x14b4b4b
    115c:	4b4b834b 	c2	0x14b834b
    1160:	4b4b4d4b 	c2	0x14b4d4b
    1164:	4b84834b 	c2	0x184834b
    1168:	834b4b4b 	lb	t3,19275(k0)
    116c:	4c4b844b 	0x4c4b844b
    1170:	4b4b4b4d 	c2	0x14b4b4d
    1174:	0004024b 	0x4024b
    1178:	00800101 	0x800101
    117c:	00020000 	sll	zero,v0,0x0
    1180:	00000027 	nor	zero,zero,zero
    1184:	0efb0101 	jal	bec0404 <data_size+0xbec03f4>
    1188:	0101000d 	break	0x101
    118c:	00000101 	0x101
    1190:	00000100 	sll	zero,zero,0x4
    1194:	366e0001 	ori	t6,s3,0x1
    1198:	79735f35 	0x79735f35
    119c:	6c616373 	0x6c616373
    11a0:	78655f6c 	0x78655f6c
    11a4:	0000532e 	0x532e
    11a8:	00000000 	nop
    11ac:	4e400205 	c3	0x400205
    11b0:	4b18bfc0 	c2	0x118bfc0
    11b4:	4b4c4b4b 	c2	0x14c4b4b
    11b8:	4d4b4b4b 	0x4d4b4b4b
    11bc:	4c4b4b84 	0x4c4b4b84
    11c0:	4c4b834b 	0x4c4b834b
    11c4:	4b4b4b4b 	c2	0x14b4b4b
    11c8:	4b4b4b4b 	c2	0x14b4b4b
    11cc:	4b834b4c 	c2	0x1834b4c
    11d0:	4b4b4b4c 	c2	0x14b4b4c
    11d4:	4b4c4b4b 	c2	0x14c4b4b
    11d8:	4b4b4b84 	c2	0x14b4b84
    11dc:	4b834b4c 	c2	0x1834b4c
    11e0:	4b4b4b4c 	c2	0x14b4b4c
    11e4:	4b4c4b4b 	c2	0x14c4b4b
    11e8:	4b4b4b84 	c2	0x14b4b84
    11ec:	4c834b4c 	0x4c834b4c
    11f0:	4c4b4b4b 	0x4c4b4b4b
    11f4:	4b4b4b4d 	c2	0x14b4b4d
    11f8:	0004024b 	0x4024b
    11fc:	00e00101 	0xe00101
    1200:	00020000 	sll	zero,v0,0x0
    1204:	00000029 	0x29
    1208:	0efb0101 	jal	bec0404 <data_size+0xbec03f4>
    120c:	0101000d 	break	0x101
    1210:	00000101 	0x101
    1214:	00000100 	sll	zero,zero,0x4
    1218:	386e0001 	xori	t6,v1,0x1
    121c:	67625f35 	0x67625f35
    1220:	6c617a65 	0x6c617a65
    1224:	5f73645f 	0x5f73645f
    1228:	532e7865 	0x532e7865
    122c:	00000000 	nop
    1230:	02050000 	0x2050000
    1234:	bfc04f80 	0xbfc04f80
    1238:	4c4b4b18 	0x4c4b4b18
    123c:	4d4b4b4b 	0x4d4b4b4b
    1240:	834b4b4b 	lb	t3,19275(k0)
    1244:	4b4b4b4b 	c2	0x14b4b4b
    1248:	4b4b834b 	c2	0x14b834b
    124c:	4b4b4c4b 	c2	0x14b4c4b
    1250:	4b4b834b 	c2	0x14b834b
    1254:	834b4b4b 	lb	t3,19275(k0)
    1258:	4c4b4b4b 	0x4c4b4b4b
    125c:	834b4b4b 	lb	t3,19275(k0)
    1260:	4b4b8383 	c2	0x14b8383
    1264:	834b4b4b 	lb	t3,19275(k0)
    1268:	4b4b4b4b 	c2	0x14b4b4b
    126c:	834b4b4b 	lb	t3,19275(k0)
    1270:	4b4b4b83 	c2	0x14b4b83
    1274:	4b834b4b 	c2	0x1834b4b
    1278:	4b4b4b4b 	c2	0x14b4b4b
    127c:	4b838383 	c2	0x1838383
    1280:	4b4b4b4b 	c2	0x14b4b4b
    1284:	4b4b4b83 	c2	0x14b4b83
    1288:	4b4b4b4c 	c2	0x14b4b4c
    128c:	4b4b4b83 	c2	0x14b4b83
    1290:	4b834b4b 	c2	0x1834b4b
    1294:	4b4b4b4b 	c2	0x14b4b4b
    1298:	4b4b4b83 	c2	0x14b4b83
    129c:	834b4b4b 	lb	t3,19275(k0)
    12a0:	4b4b4b4b 	c2	0x14b4b4b
    12a4:	4b4b4b83 	c2	0x14b4b83
    12a8:	4b834b4b 	c2	0x1834b4b
    12ac:	4b4c4b4b 	c2	0x14c4b4b
    12b0:	4b834b4b 	c2	0x1834b4b
    12b4:	4b4b4b4b 	c2	0x14b4b4b
    12b8:	4b4b4b83 	c2	0x14b4b83
    12bc:	4b834b4b 	c2	0x1834b4b
    12c0:	4b4b4b4b 	c2	0x14b4b4b
    12c4:	4b4b4b83 	c2	0x14b4b83
    12c8:	4b4b4b4d 	c2	0x14b4b4d
    12cc:	4b4b8483 	c2	0x14b8483
    12d0:	4b834b4b 	c2	0x1834b4b
    12d4:	4d4c4b84 	0x4d4c4b84
    12d8:	4b4b4b4b 	c2	0x14b4b4b
    12dc:	0004024b 	0x4024b
    12e0:	00a60101 	0xa60101
    12e4:	00020000 	sll	zero,v0,0x0
    12e8:	00000027 	nor	zero,zero,zero
    12ec:	0efb0101 	jal	bec0404 <data_size+0xbec03f4>
    12f0:	0101000d 	break	0x101
    12f4:	00000101 	0x101
    12f8:	00000100 	sll	zero,zero,0x4
    12fc:	376e0001 	ori	t6,k1,0x1
    1300:	74665f35 	jalx	1997cd4 <data_size+0x1997cc4>
    1304:	6564615f 	0x6564615f
    1308:	78655f6c 	0x78655f6c
    130c:	0000532e 	0x532e
    1310:	00000000 	nop
    1314:	52900205 	0x52900205
    1318:	4b18bfc0 	c2	0x118bfc0
    131c:	4b4c4b4b 	c2	0x14c4b4b
    1320:	4d4b4b4b 	0x4d4b4b4b
    1324:	4b4b83f3 	c2	0x14b83f3
    1328:	4b4b4b4b 	c2	0x14b4b4b
    132c:	4bf34b4c 	c2	0x1f34b4c
    1330:	4c4c4b83 	0x4c4c4b83
    1334:	4b4b4b4b 	c2	0x14b4b4b
    1338:	4b4b4b4b 	c2	0x14b4b4b
    133c:	4b4c4b4b 	c2	0x14c4b4b
    1340:	4b834bf3 	c2	0x1834bf3
    1344:	4b4b4c4c 	c2	0x14b4c4c
    1348:	4b4b4b4b 	c2	0x14b4b4b
    134c:	f34b4c4b 	0xf34b4c4b
    1350:	4b4b4b83 	c2	0x14b4b83
    1354:	4b4b4b4b 	c2	0x14b4b4b
    1358:	4bf34b4c 	c2	0x1f34b4c
    135c:	4c4c4b83 	0x4c4c4b83
    1360:	4b4b4b4b 	c2	0x14b4b4b
    1364:	4c4b4b4b 	0x4c4b4b4b
    1368:	4b83f34b 	c2	0x183f34b
    136c:	4b4b4b4b 	c2	0x14b4b4b
    1370:	4b4b4b4b 	c2	0x14b4b4b
    1374:	4bf34b4c 	c2	0x1f34b4c
    1378:	4b4b4c84 	c2	0x14b4c84
    137c:	4b4b4b4b 	c2	0x14b4b4b
    1380:	4b4d4c4b 	c2	0x14d4c4b
    1384:	024b4b4b 	0x24b4b4b
    1388:	01010004 	sllv	zero,at,t0
    138c:	0000009b 	0x9b
    1390:	00260002 	0x260002
    1394:	01010000 	0x1010000
    1398:	000d0efb 	0xd0efb
    139c:	01010101 	0x1010101
    13a0:	01000000 	0x1000000
    13a4:	00010000 	sll	zero,at,0x0
    13a8:	5f39366e 	0x5f39366e
    13ac:	5f627573 	0x5f627573
    13b0:	655f766f 	0x655f766f
    13b4:	00532e78 	0x532e78
    13b8:	00000000 	nop
    13bc:	c0020500 	lwc0	$2,1280(zero)
    13c0:	18bfc054 	0x18bfc054
    13c4:	4c4b4b4b 	0x4c4b4b4b
    13c8:	4b4b4b4b 	c2	0x14b4b4b
    13cc:	83e5084d 	lb	a1,2125(ra)
    13d0:	4b4b4b4b 	c2	0x14b4b4b
    13d4:	e5084b4c 	swc1	$f8,19276(t0)
    13d8:	4b4b4b83 	c2	0x14b4b83
    13dc:	4b4b4b4b 	c2	0x14b4b4b
    13e0:	4b4b4b4b 	c2	0x14b4b4b
    13e4:	084b4c4b 	j	12d312c <data_size+0x12d311c>
    13e8:	4b4b83e5 	c2	0x14b83e5
    13ec:	4b4b4b4b 	c2	0x14b4b4b
    13f0:	4c4b4b4b 	0x4c4b4b4b
    13f4:	83e5084b 	lb	a1,2123(ra)
    13f8:	4b4b4b4b 	c2	0x14b4b4b
    13fc:	084b4c4b 	j	12d312c <data_size+0x12d311c>
    1400:	4b4b83e5 	c2	0x14b83e5
    1404:	4b4b4b4b 	c2	0x14b4b4b
    1408:	4c4b4b4b 	0x4c4b4b4b
    140c:	83e5084b 	lb	a1,2123(ra)
    1410:	4b4b4b4b 	c2	0x14b4b4b
    1414:	084b4c4b 	j	12d312c <data_size+0x12d311c>
    1418:	4b4b83e5 	c2	0x14b83e5
    141c:	4b4b4b4b 	c2	0x14b4b4b
    1420:	4b4b4d4c 	c2	0x14b4d4c
    1424:	04024b4b 	0x4024b4b
    1428:	dd010100 	0xdd010100
    142c:	02000000 	0x2000000
    1430:	00002600 	sll	a0,zero,0x18
    1434:	fb010100 	0xfb010100
    1438:	01000d0e 	0x1000d0e
    143c:	00010101 	0x10101
    1440:	00010000 	sll	zero,at,0x0
    1444:	6e000100 	0x6e000100
    1448:	6a5f3738 	0x6a5f3738
    144c:	645f6c61 	0x645f6c61
    1450:	78655f73 	0x78655f73
    1454:	0000532e 	0x532e
    1458:	00000000 	nop
    145c:	57100205 	0x57100205
    1460:	4b18bfc0 	c2	0x118bfc0
    1464:	4b4b4c4b 	c2	0x14b4c4b
    1468:	4b4b4d4b 	c2	0x14b4d4b
    146c:	4b4b834b 	c2	0x14b834b
    1470:	834b4b4b 	lb	t3,19275(k0)
    1474:	4c4b4b4b 	0x4c4b4b4b
    1478:	834b4b4b 	lb	t3,19275(k0)
    147c:	4b4b4b4b 	c2	0x14b4b4b
    1480:	4b4b834b 	c2	0x14b834b
    1484:	4b4b4c4b 	c2	0x14b4c4b
    1488:	8383834b 	lb	v1,-31925(gp)
    148c:	4b4b4b4b 	c2	0x14b4b4b
    1490:	4b4b834b 	c2	0x14b834b
    1494:	4b4b4b4b 	c2	0x14b4b4b
    1498:	4b83834b 	c2	0x183834b
    149c:	4b4b4b4b 	c2	0x14b4b4b
    14a0:	4b4b4b83 	c2	0x14b4b83
    14a4:	83834b4b 	lb	v1,19275(gp)
    14a8:	4b4b4b83 	c2	0x14b4b83
    14ac:	4b834b4b 	c2	0x1834b4b
    14b0:	4b4c4b4b 	c2	0x14c4b4b
    14b4:	4b834b4b 	c2	0x1834b4b
    14b8:	4b4b4b4b 	c2	0x14b4b4b
    14bc:	4b4b4b83 	c2	0x14b4b83
    14c0:	4b834b4b 	c2	0x1834b4b
    14c4:	4b4b4b4b 	c2	0x14b4b4b
    14c8:	4b4b834b 	c2	0x14b834b
    14cc:	4b834b4b 	c2	0x1834b4b
    14d0:	4b4b4b4b 	c2	0x14b4b4b
    14d4:	4b4b4b83 	c2	0x14b4b83
    14d8:	4b4b4b4c 	c2	0x14b4b4c
    14dc:	4b4b4b83 	c2	0x14b4b83
    14e0:	4b834b4b 	c2	0x1834b4b
    14e4:	4b4b4b4b 	c2	0x14b4b4b
    14e8:	4b4b4b83 	c2	0x14b4b83
    14ec:	4b834b4b 	c2	0x1834b4b
    14f0:	4b4d4b4b 	c2	0x14d4b4b
    14f4:	84834b4b 	lh	v1,19275(a0)
    14f8:	4b4b4b4b 	c2	0x14b4b4b
    14fc:	4b844b83 	c2	0x1844b83
    1500:	4b4b4d4c 	c2	0x14b4d4c
    1504:	024b4b4b 	0x24b4b4b
    1508:	01010004 	sllv	zero,at,t0
    150c:	000000e0 	0xe0
    1510:	00290002 	0x290002
    1514:	01010000 	0x1010000
    1518:	000d0efb 	0xd0efb
    151c:	01010101 	0x1010101
    1520:	01000000 	0x1000000
    1524:	00010000 	sll	zero,at,0x0
    1528:	5f34386e 	0x5f34386e
    152c:	7a746c62 	0x7a746c62
    1530:	645f6c61 	0x645f6c61
    1534:	78655f73 	0x78655f73
    1538:	0000532e 	0x532e
    153c:	00000000 	nop
    1540:	5a200205 	0x5a200205
    1544:	4b18bfc0 	c2	0x118bfc0
    1548:	4b4b4c4b 	c2	0x14b4c4b
    154c:	4b4b4d4b 	c2	0x14b4d4b
    1550:	4b4b834b 	c2	0x14b834b
    1554:	834b4b4b 	lb	t3,19275(k0)
    1558:	4c4b4b4b 	0x4c4b4b4b
    155c:	834b4b4b 	lb	t3,19275(k0)
    1560:	4b4b4b4b 	c2	0x14b4b4b
    1564:	4b4b834b 	c2	0x14b834b
    1568:	4b4b4c4b 	c2	0x14b4c4b
    156c:	8383834b 	lb	v1,-31925(gp)
    1570:	4b4b4b4b 	c2	0x14b4b4b
    1574:	4b4b834b 	c2	0x14b834b
    1578:	4b4b4b4b 	c2	0x14b4b4b
    157c:	4b83834b 	c2	0x183834b
    1580:	4b4b4b4b 	c2	0x14b4b4b
    1584:	4b4b4b83 	c2	0x14b4b83
    1588:	83834b4b 	lb	v1,19275(gp)
    158c:	4b4b4b83 	c2	0x14b4b83
    1590:	4b834b4b 	c2	0x1834b4b
    1594:	4b4c4b4b 	c2	0x14c4b4b
    1598:	4b834b4b 	c2	0x1834b4b
    159c:	4b4b4b4b 	c2	0x14b4b4b
    15a0:	4b4b4b83 	c2	0x14b4b83
    15a4:	4b834b4b 	c2	0x1834b4b
    15a8:	4b4b4b4b 	c2	0x14b4b4b
    15ac:	4b4b834b 	c2	0x14b834b
    15b0:	4b834b4b 	c2	0x1834b4b
    15b4:	4b4b4b4b 	c2	0x14b4b4b
    15b8:	4b4b4b83 	c2	0x14b4b83
    15bc:	4b4b4b4c 	c2	0x14b4b4c
    15c0:	4b4b4b83 	c2	0x14b4b83
    15c4:	4b834b4b 	c2	0x1834b4b
    15c8:	4b4b4b4b 	c2	0x14b4b4b
    15cc:	4b4b4b83 	c2	0x14b4b83
    15d0:	4b834b4b 	c2	0x1834b4b
    15d4:	4b4d4b4b 	c2	0x14d4b4b
    15d8:	84834b4b 	lh	v1,19275(a0)
    15dc:	4b4b4b4b 	c2	0x14b4b4b
    15e0:	4b844b83 	c2	0x1844b83
    15e4:	4b4b4d4c 	c2	0x14b4d4c
    15e8:	024b4b4b 	0x24b4b4b
    15ec:	01010004 	sllv	zero,at,t0
    15f0:	00000078 	0x78
    15f4:	00220002 	0x220002
    15f8:	01010000 	0x1010000
    15fc:	000d0efb 	0xd0efb
    1600:	01010101 	0x1010101
    1604:	01000000 	0x1000000
    1608:	00010000 	sll	zero,at,0x0
    160c:	5f36376e 	0x5f36376e
    1610:	655f6972 	0x655f6972
    1614:	00532e78 	0x532e78
    1618:	00000000 	nop
    161c:	30020500 	andi	v0,zero,0x500
    1620:	18bfc05d 	0x18bfc05d
    1624:	4c4b4b4b 	0x4c4b4b4b
    1628:	4b4b4b4b 	c2	0x14b4b4b
    162c:	4c4bbc4d 	0x4c4bbc4d
    1630:	844b834b 	lh	t3,-31925(v0)
    1634:	4b4b4b4b 	c2	0x14b4b4b
    1638:	4c4b4b4b 	0x4c4b4b4b
    163c:	844b834b 	lh	t3,-31925(v0)
    1640:	4b4b4b4b 	c2	0x14b4b4b
    1644:	4bbc4b4c 	c2	0x1bc4b4c
    1648:	834b4c4b 	lb	t3,19531(k0)
    164c:	4b4b844b 	c2	0x14b844b
    1650:	4b4c4b4b 	c2	0x14c4b4b
    1654:	4b4b4bbc 	c2	0x14b4bbc
    1658:	834b4c4b 	lb	t3,19531(k0)
    165c:	4b4b4b84 	c2	0x14b4b84
    1660:	4b4d4c4b 	c2	0x14d4c4b
    1664:	024b4b4b 	0x24b4b4b
    1668:	01010004 	sllv	zero,at,t0

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	00000051 	0x51
   4:	00000002 	srl	zero,zero,0x0
   8:	01040000 	0x1040000
   c:	00000000 	nop
  10:	bfc00000 	0xbfc00000
  14:	bfc009a8 	0xbfc009a8
  18:	72617473 	0x72617473
  1c:	00532e74 	0x532e74
  20:	6d6f682f 	0x6d6f682f
  24:	66792f65 	0x66792f65
  28:	75662f79 	jalx	598bde4 <data_size+0x598bdd4>
  2c:	745f636e 	jalx	17d8db8 <data_size+0x17d8da8>
  30:	5f747365 	0x5f747365
  34:	302e3076 	andi	t6,at,0x3076
  38:	6f732f31 	0x6f732f31
  3c:	662f7466 	0x662f7466
  40:	00636e75 	0x636e75
  44:	20554e47 	addi	s5,v0,20039
  48:	32205341 	andi	zero,s1,0x5341
  4c:	2e38312e 	sltiu	t8,s1,12590
  50:	01003035 	0x1003035
  54:	00005f80 	sll	t3,zero,0x1e
  58:	14000200 	bnez	zero,85c <data_size+0x84c>
  5c:	04000000 	bltz	zero,60 <data_size+0x50>
  60:	0001c601 	0x1c601
  64:	c009b000 	lwc0	$9,-20480(zero)
  68:	c00ca8bf 	lwc0	$12,-22337(zero)
  6c:	34376ebf 	ori	s7,at,0x6ebf
  70:	5f68735f 	0x5f68735f
  74:	73656461 	0x73656461
  78:	2e78655f 	sltiu	t8,s3,25951
  7c:	682f0053 	0x682f0053
  80:	2f656d6f 	sltiu	a1,k1,28015
  84:	2f796679 	sltiu	t9,k1,26233
  88:	636e7566 	0x636e7566
  8c:	7365745f 	0x7365745f
  90:	30765f74 	andi	s6,v1,0x5f74
  94:	2f31302e 	sltiu	s1,t9,12334
  98:	74666f73 	jalx	199bdcc <data_size+0x199bdbc>
  9c:	6e75662f 	0x6e75662f
  a0:	6e692f63 	0x6e692f63
  a4:	47007473 	c1	0x1007473
  a8:	4120554e 	0x4120554e
  ac:	2e322053 	sltiu	s2,s1,8275
  b0:	352e3831 	ori	t6,t1,0x3831
  b4:	80010030 	lb	at,48(zero)
  b8:	00000057 	0x57
  bc:	00280002 	0x280002
  c0:	01040000 	0x1040000
  c4:	00000289 	0x289
  c8:	bfc00cb0 	0xbfc00cb0
  cc:	bfc01f0c 	0xbfc01f0c
  d0:	6c5f316e 	0x6c5f316e
  d4:	532e6975 	0x532e6975
  d8:	6f682f00 	0x6f682f00
  dc:	792f656d 	0x792f656d
  e0:	662f7966 	0x662f7966
  e4:	5f636e75 	0x5f636e75
  e8:	74736574 	jalx	1cd95d0 <data_size+0x1cd95c0>
  ec:	2e30765f 	sltiu	s0,s1,30303
  f0:	732f3130 	0x732f3130
  f4:	2f74666f 	sltiu	s4,k1,26223
  f8:	636e7566 	0x636e7566
  fc:	736e692f 	0x736e692f
 100:	4e470074 	c3	0x470074
 104:	53412055 	0x53412055
 108:	312e3220 	andi	t6,t1,0x3220
 10c:	30352e38 	andi	s5,at,0x2e38
 110:	5f800100 	0x5f800100
 114:	02000000 	0x2000000
 118:	00003c00 	sll	a3,zero,0x10
 11c:	55010400 	0x55010400
 120:	10000004 	b	134 <data_size+0x124>
 124:	08bfc01f 	j	2ff007c <data_size+0x2ff006c>
 128:	6ebfc022 	0x6ebfc022
 12c:	735f3337 	0x735f3337
 130:	64615f77 	0x64615f77
 134:	655f7365 	0x655f7365
 138:	00532e78 	0x532e78
 13c:	6d6f682f 	0x6d6f682f
 140:	66792f65 	0x66792f65
 144:	75662f79 	jalx	598bde4 <data_size+0x598bdd4>
 148:	745f636e 	jalx	17d8db8 <data_size+0x17d8da8>
 14c:	5f747365 	0x5f747365
 150:	302e3076 	andi	t6,at,0x3076
 154:	6f732f31 	0x6f732f31
 158:	662f7466 	0x662f7466
 15c:	2f636e75 	sltiu	v1,k1,28277
 160:	74736e69 	jalx	1cdb9a4 <data_size+0x1cdb994>
 164:	554e4700 	0x554e4700
 168:	20534120 	addi	s3,v0,16672
 16c:	38312e32 	xori	s1,at,0x2e32
 170:	0030352e 	0x30352e
 174:	005f8001 	0x5f8001
 178:	00020000 	sll	zero,v0,0x0
 17c:	00000050 	0x50
 180:	05180104 	0x5180104
 184:	22100000 	addi	s0,s0,0
 188:	250cbfc0 	addiu	t4,t0,-16448
 18c:	376ebfc0 	ori	t6,k1,0xbfc0
 190:	686c5f31 	0x686c5f31
 194:	6564615f 	0x6564615f
 198:	78655f6c 	0x78655f6c
 19c:	2f00532e 	sltiu	zero,t8,21294
 1a0:	656d6f68 	0x656d6f68
 1a4:	7966792f 	0x7966792f
 1a8:	6e75662f 	0x6e75662f
 1ac:	65745f63 	0x65745f63
 1b0:	765f7473 	jalx	97dd1cc <data_size+0x97dd1bc>
 1b4:	31302e30 	andi	s0,t1,0x2e30
 1b8:	666f732f 	0x666f732f
 1bc:	75662f74 	jalx	598bdd0 <data_size+0x598bdc0>
 1c0:	692f636e 	0x692f636e
 1c4:	0074736e 	0x74736e
 1c8:	20554e47 	addi	s5,v0,20039
 1cc:	32205341 	andi	zero,s1,0x5341
 1d0:	2e38312e 	sltiu	t8,s1,12590
 1d4:	01003035 	0x1003035
 1d8:	00006080 	sll	t4,zero,0x2
 1dc:	64000200 	0x64000200
 1e0:	04000000 	bltz	zero,1e4 <data_size+0x1d4>
 1e4:	0005d401 	0x5d401
 1e8:	c0251000 	lwc0	$5,4096(at)
 1ec:	c02804bf 	lwc0	$8,1215(at)
 1f0:	32376ebf 	andi	s7,s1,0x6ebf
 1f4:	75686c5f 	jalx	5a1b17c <data_size+0x5a1b16c>
 1f8:	6564615f 	0x6564615f
 1fc:	78655f6c 	0x78655f6c
 200:	2f00532e 	sltiu	zero,t8,21294
 204:	656d6f68 	0x656d6f68
 208:	7966792f 	0x7966792f
 20c:	6e75662f 	0x6e75662f
 210:	65745f63 	0x65745f63
 214:	765f7473 	jalx	97dd1cc <data_size+0x97dd1bc>
 218:	31302e30 	andi	s0,t1,0x2e30
 21c:	666f732f 	0x666f732f
 220:	75662f74 	jalx	598bdd0 <data_size+0x598bdc0>
 224:	692f636e 	0x692f636e
 228:	0074736e 	0x74736e
 22c:	20554e47 	addi	s5,v0,20039
 230:	32205341 	andi	zero,s1,0x5341
 234:	2e38312e 	sltiu	t8,s1,12590
 238:	01003035 	0x1003035
 23c:	00005e80 	sll	t3,zero,0x1a
 240:	78000200 	0x78000200
 244:	04000000 	bltz	zero,248 <data_size+0x238>
 248:	00069101 	0x69101
 24c:	c0281000 	lwc0	$8,4096(at)
 250:	c02a60bf 	lwc0	$10,24767(at)
 254:	37366ebf 	ori	s6,t9,0x6ebf
 258:	6464615f 	0x6464615f
 25c:	5f766f5f 	0x5f766f5f
 260:	532e7865 	0x532e7865
 264:	6f682f00 	0x6f682f00
 268:	792f656d 	0x792f656d
 26c:	662f7966 	0x662f7966
 270:	5f636e75 	0x5f636e75
 274:	74736574 	jalx	1cd95d0 <data_size+0x1cd95c0>
 278:	2e30765f 	sltiu	s0,s1,30303
 27c:	732f3130 	0x732f3130
 280:	2f74666f 	sltiu	s4,k1,26223
 284:	636e7566 	0x636e7566
 288:	736e692f 	0x736e692f
 28c:	4e470074 	c3	0x470074
 290:	53412055 	0x53412055
 294:	312e3220 	andi	t6,t1,0x3220
 298:	30352e38 	andi	s5,at,0x2e38
 29c:	5f800100 	0x5f800100
 2a0:	02000000 	0x2000000
 2a4:	00008c00 	sll	s1,zero,0x10
 2a8:	30010400 	andi	at,zero,0x400
 2ac:	60000007 	0x60000007
 2b0:	60bfc02a 	0x60bfc02a
 2b4:	6ebfc02d 	0x6ebfc02d
 2b8:	625f3038 	0x625f3038
 2bc:	5f7a6567 	0x5f7a6567
 2c0:	655f7364 	0x655f7364
 2c4:	00532e78 	0x532e78
 2c8:	6d6f682f 	0x6d6f682f
 2cc:	66792f65 	0x66792f65
 2d0:	75662f79 	jalx	598bde4 <data_size+0x598bdd4>
 2d4:	745f636e 	jalx	17d8db8 <data_size+0x17d8da8>
 2d8:	5f747365 	0x5f747365
 2dc:	302e3076 	andi	t6,at,0x3076
 2e0:	6f732f31 	0x6f732f31
 2e4:	662f7466 	0x662f7466
 2e8:	2f636e75 	sltiu	v1,k1,28277
 2ec:	74736e69 	jalx	1cdb9a4 <data_size+0x1cdb994>
 2f0:	554e4700 	0x554e4700
 2f4:	20534120 	addi	s3,v0,16672
 2f8:	38312e32 	xori	s1,at,0x2e32
 2fc:	0030352e 	0x30352e
 300:	005f8001 	0x5f8001
 304:	00020000 	sll	zero,v0,0x0
 308:	000000a0 	0xa0
 30c:	08100104 	j	400410 <data_size+0x400400>
 310:	2d600000 	sltiu	zero,t3,0
 314:	2f8cbfc0 	sltiu	t4,gp,-16448
 318:	366ebfc0 	ori	t6,s3,0xbfc0
 31c:	64615f38 	0x64615f38
 320:	6f5f6964 	0x6f5f6964
 324:	78655f76 	0x78655f76
 328:	2f00532e 	sltiu	zero,t8,21294
 32c:	656d6f68 	0x656d6f68
 330:	7966792f 	0x7966792f
 334:	6e75662f 	0x6e75662f
 338:	65745f63 	0x65745f63
 33c:	765f7473 	jalx	97dd1cc <data_size+0x97dd1bc>
 340:	31302e30 	andi	s0,t1,0x2e30
 344:	666f732f 	0x666f732f
 348:	75662f74 	jalx	598bdd0 <data_size+0x598bdc0>
 34c:	692f636e 	0x692f636e
 350:	0074736e 	0x74736e
 354:	20554e47 	addi	s5,v0,20039
 358:	32205341 	andi	zero,s1,0x5341
 35c:	2e38312e 	sltiu	t8,s1,12590
 360:	01003035 	0x1003035
 364:	00005f80 	sll	t3,zero,0x1e
 368:	b4000200 	0xb4000200
 36c:	04000000 	bltz	zero,370 <data_size+0x360>
 370:	0008ae01 	0x8ae01
 374:	c02f9000 	lwc0	$15,-28672(at)
 378:	c03290bf 	lwc0	$18,-28481(at)
 37c:	31386ebf 	andi	t8,t1,0x6ebf
 380:	7467625f 	jalx	19d897c <data_size+0x19d896c>
 384:	73645f7a 	0x73645f7a
 388:	2e78655f 	sltiu	t8,s3,25951
 38c:	682f0053 	0x682f0053
 390:	2f656d6f 	sltiu	a1,k1,28015
 394:	2f796679 	sltiu	t9,k1,26233
 398:	636e7566 	0x636e7566
 39c:	7365745f 	0x7365745f
 3a0:	30765f74 	andi	s6,v1,0x5f74
 3a4:	2f31302e 	sltiu	s1,t9,12334
 3a8:	74666f73 	jalx	199bdcc <data_size+0x199bdbc>
 3ac:	6e75662f 	0x6e75662f
 3b0:	6e692f63 	0x6e692f63
 3b4:	47007473 	c1	0x1007473
 3b8:	4120554e 	0x4120554e
 3bc:	2e322053 	sltiu	s2,s1,8275
 3c0:	352e3831 	ori	t6,t1,0x3831
 3c4:	80010030 	lb	at,48(zero)
 3c8:	0000005f 	0x5f
 3cc:	00c80002 	0xc80002
 3d0:	01040000 	0x1040000
 3d4:	0000098e 	0x98e
 3d8:	bfc03290 	0xbfc03290
 3dc:	bfc03598 	0xbfc03598
 3e0:	5f39386e 	0x5f39386e
 3e4:	726c616a 	0x726c616a
 3e8:	5f73645f 	0x5f73645f
 3ec:	532e7865 	0x532e7865
 3f0:	6f682f00 	0x6f682f00
 3f4:	792f656d 	0x792f656d
 3f8:	662f7966 	0x662f7966
 3fc:	5f636e75 	0x5f636e75
 400:	74736574 	jalx	1cd95d0 <data_size+0x1cd95c0>
 404:	2e30765f 	sltiu	s0,s1,30303
 408:	732f3130 	0x732f3130
 40c:	2f74666f 	sltiu	s4,k1,26223
 410:	636e7566 	0x636e7566
 414:	736e692f 	0x736e692f
 418:	4e470074 	c3	0x470074
 41c:	53412055 	0x53412055
 420:	312e3220 	andi	t6,t1,0x3220
 424:	30352e38 	andi	s5,at,0x2e38
 428:	5e800100 	0x5e800100
 42c:	02000000 	0x2000000
 430:	0000dc00 	sll	k1,zero,0x10
 434:	70010400 	0x70010400
 438:	a000000a 	sb	zero,10(zero)
 43c:	a0bfc035 	sb	ra,-16331(a1)
 440:	6ebfc038 	0x6ebfc038
 444:	625f3837 	0x625f3837
 448:	645f7165 	0x645f7165
 44c:	78655f73 	0x78655f73
 450:	2f00532e 	sltiu	zero,t8,21294
 454:	656d6f68 	0x656d6f68
 458:	7966792f 	0x7966792f
 45c:	6e75662f 	0x6e75662f
 460:	65745f63 	0x65745f63
 464:	765f7473 	jalx	97dd1cc <data_size+0x97dd1bc>
 468:	31302e30 	andi	s0,t1,0x2e30
 46c:	666f732f 	0x666f732f
 470:	75662f74 	jalx	598bdd0 <data_size+0x598bdc0>
 474:	692f636e 	0x692f636e
 478:	0074736e 	0x74736e
 47c:	20554e47 	addi	s5,v0,20039
 480:	32205341 	andi	zero,s1,0x5341
 484:	2e38312e 	sltiu	t8,s1,12590
 488:	01003035 	0x1003035
 48c:	00005c80 	sll	t3,zero,0x12
 490:	f0000200 	0xf0000200
 494:	04000000 	bltz	zero,498 <data_size+0x488>
 498:	000b4f01 	0xb4f01
 49c:	c038a000 	lwc0	$24,-24576(at)
 4a0:	c03ba0bf 	lwc0	$27,-24385(at)
 4a4:	36386ebf 	ori	t8,s1,0x6ebf
 4a8:	645f6a5f 	0x645f6a5f
 4ac:	78655f73 	0x78655f73
 4b0:	2f00532e 	sltiu	zero,t8,21294
 4b4:	656d6f68 	0x656d6f68
 4b8:	7966792f 	0x7966792f
 4bc:	6e75662f 	0x6e75662f
 4c0:	65745f63 	0x65745f63
 4c4:	765f7473 	jalx	97dd1cc <data_size+0x97dd1bc>
 4c8:	31302e30 	andi	s0,t1,0x2e30
 4cc:	666f732f 	0x666f732f
 4d0:	75662f74 	jalx	598bdd0 <data_size+0x598bdc0>
 4d4:	692f636e 	0x692f636e
 4d8:	0074736e 	0x74736e
 4dc:	20554e47 	addi	s5,v0,20039
 4e0:	32205341 	andi	zero,s1,0x5341
 4e4:	2e38312e 	sltiu	t8,s1,12590
 4e8:	01003035 	0x1003035
 4ec:	00005e80 	sll	t3,zero,0x1a
 4f0:	04000200 	bltz	zero,cf4 <data_size+0xce4>
 4f4:	04000001 	bltz	zero,4fc <data_size+0x4ec>
 4f8:	000c2c01 	0xc2c01
 4fc:	c03ba000 	lwc0	$27,-24576(at)
 500:	c03ea0bf 	lwc0	$30,-24385(at)
 504:	39376ebf 	xori	s7,t1,0x6ebf
 508:	656e625f 	0x656e625f
 50c:	5f73645f 	0x5f73645f
 510:	532e7865 	0x532e7865
 514:	6f682f00 	0x6f682f00
 518:	792f656d 	0x792f656d
 51c:	662f7966 	0x662f7966
 520:	5f636e75 	0x5f636e75
 524:	74736574 	jalx	1cd95d0 <data_size+0x1cd95c0>
 528:	2e30765f 	sltiu	s0,s1,30303
 52c:	732f3130 	0x732f3130
 530:	2f74666f 	sltiu	s4,k1,26223
 534:	636e7566 	0x636e7566
 538:	736e692f 	0x736e692f
 53c:	4e470074 	c3	0x470074
 540:	53412055 	0x53412055
 544:	312e3220 	andi	t6,t1,0x3220
 548:	30352e38 	andi	s5,at,0x2e38
 54c:	5d800100 	0x5d800100
 550:	02000000 	0x2000000
 554:	00011800 	sll	v1,at,0x0
 558:	0b010400 	j	c041000 <data_size+0xc040ff0>
 55c:	a000000d 	sb	zero,13(zero)
 560:	d8bfc03e 	0xd8bfc03e
 564:	6ebfc03f 	0x6ebfc03f
 568:	625f3636 	0x625f3636
 56c:	6b616572 	0x6b616572
 570:	2e78655f 	sltiu	t8,s3,25951
 574:	682f0053 	0x682f0053
 578:	2f656d6f 	sltiu	a1,k1,28015
 57c:	2f796679 	sltiu	t9,k1,26233
 580:	636e7566 	0x636e7566
 584:	7365745f 	0x7365745f
 588:	30765f74 	andi	s6,v1,0x5f74
 58c:	2f31302e 	sltiu	s1,t9,12334
 590:	74666f73 	jalx	199bdcc <data_size+0x199bdbc>
 594:	6e75662f 	0x6e75662f
 598:	6e692f63 	0x6e692f63
 59c:	47007473 	c1	0x1007473
 5a0:	4120554e 	0x4120554e
 5a4:	2e322053 	sltiu	s2,s1,8275
 5a8:	352e3831 	ori	t6,t1,0x3831
 5ac:	80010030 	lb	at,48(zero)
 5b0:	0000005f 	0x5f
 5b4:	012c0002 	0x12c0002
 5b8:	01040000 	0x1040000
 5bc:	00000d8d 	break	0x0,0x36
 5c0:	bfc03fe0 	0xbfc03fe0
 5c4:	bfc042e0 	0xbfc042e0
 5c8:	5f33386e 	0x5f33386e
 5cc:	7a746c62 	0x7a746c62
 5d0:	5f73645f 	0x5f73645f
 5d4:	532e7865 	0x532e7865
 5d8:	6f682f00 	0x6f682f00
 5dc:	792f656d 	0x792f656d
 5e0:	662f7966 	0x662f7966
 5e4:	5f636e75 	0x5f636e75
 5e8:	74736574 	jalx	1cd95d0 <data_size+0x1cd95c0>
 5ec:	2e30765f 	sltiu	s0,s1,30303
 5f0:	732f3130 	0x732f3130
 5f4:	2f74666f 	sltiu	s4,k1,26223
 5f8:	636e7566 	0x636e7566
 5fc:	736e692f 	0x736e692f
 600:	4e470074 	c3	0x470074
 604:	53412055 	0x53412055
 608:	312e3220 	andi	t6,t1,0x3220
 60c:	30352e38 	andi	s5,at,0x2e38
 610:	5f800100 	0x5f800100
 614:	02000000 	0x2000000
 618:	00014000 	sll	t0,at,0x0
 61c:	6d010400 	0x6d010400
 620:	e000000e 	swc0	$0,14(zero)
 624:	d4bfc042 	0xd4bfc042
 628:	6ebfc045 	0x6ebfc045
 62c:	6c5f3037 	0x6c5f3037
 630:	64615f77 	0x64615f77
 634:	655f6c65 	0x655f6c65
 638:	00532e78 	0x532e78
 63c:	6d6f682f 	0x6d6f682f
 640:	66792f65 	0x66792f65
 644:	75662f79 	jalx	598bde4 <data_size+0x598bdd4>
 648:	745f636e 	jalx	17d8db8 <data_size+0x17d8da8>
 64c:	5f747365 	0x5f747365
 650:	302e3076 	andi	t6,at,0x3076
 654:	6f732f31 	0x6f732f31
 658:	662f7466 	0x662f7466
 65c:	2f636e75 	sltiu	v1,k1,28277
 660:	74736e69 	jalx	1cdb9a4 <data_size+0x1cdb994>
 664:	554e4700 	0x554e4700
 668:	20534120 	addi	s3,v0,16672
 66c:	38312e32 	xori	s1,at,0x2e32
 670:	0030352e 	0x30352e
 674:	005d8001 	0x5d8001
 678:	00020000 	sll	zero,v0,0x0
 67c:	00000154 	0x154
 680:	0f290104 	jal	ca40410 <data_size+0xca40400>
 684:	45e00000 	0x45e00000
 688:	48e0bfc0 	0x48e0bfc0
 68c:	386ebfc0 	xori	t6,v1,0xbfc0
 690:	726a5f38 	0x726a5f38
 694:	5f73645f 	0x5f73645f
 698:	532e7865 	0x532e7865
 69c:	6f682f00 	0x6f682f00
 6a0:	792f656d 	0x792f656d
 6a4:	662f7966 	0x662f7966
 6a8:	5f636e75 	0x5f636e75
 6ac:	74736574 	jalx	1cd95d0 <data_size+0x1cd95c0>
 6b0:	2e30765f 	sltiu	s0,s1,30303
 6b4:	732f3130 	0x732f3130
 6b8:	2f74666f 	sltiu	s4,k1,26223
 6bc:	636e7566 	0x636e7566
 6c0:	736e692f 	0x736e692f
 6c4:	4e470074 	c3	0x470074
 6c8:	53412055 	0x53412055
 6cc:	312e3220 	andi	t6,t1,0x3220
 6d0:	30352e38 	andi	s5,at,0x2e38
 6d4:	60800100 	0x60800100
 6d8:	02000000 	0x2000000
 6dc:	00016800 	sll	t5,at,0x0
 6e0:	07010400 	bgez	t8,16e4 <data_size+0x16d4>
 6e4:	e0000010 	swc0	$0,16(zero)
 6e8:	34bfc048 	ori	ra,a1,0xc048
 6ec:	6ebfc04b 	0x6ebfc04b
 6f0:	735f3737 	0x735f3737
 6f4:	5f74666f 	0x5f74666f
 6f8:	5f746e69 	0x5f746e69
 6fc:	532e7865 	0x532e7865
 700:	6f682f00 	0x6f682f00
 704:	792f656d 	0x792f656d
 708:	662f7966 	0x662f7966
 70c:	5f636e75 	0x5f636e75
 710:	74736574 	jalx	1cd95d0 <data_size+0x1cd95c0>
 714:	2e30765f 	sltiu	s0,s1,30303
 718:	732f3130 	0x732f3130
 71c:	2f74666f 	sltiu	s4,k1,26223
 720:	636e7566 	0x636e7566
 724:	736e692f 	0x736e692f
 728:	4e470074 	c3	0x470074
 72c:	53412055 	0x53412055
 730:	312e3220 	andi	t6,t1,0x3220
 734:	30352e38 	andi	s5,at,0x2e38
 738:	5f800100 	0x5f800100
 73c:	02000000 	0x2000000
 740:	00017c00 	sll	t7,at,0x10
 744:	9a010400 	lwr	at,1024(s0)
 748:	40000010 	0x40000010
 74c:	40bfc04b 	0x40bfc04b
 750:	6ebfc04e 	0x6ebfc04e
 754:	625f3238 	0x625f3238
 758:	5f7a656c 	0x5f7a656c
 75c:	655f7364 	0x655f7364
 760:	00532e78 	0x532e78
 764:	6d6f682f 	0x6d6f682f
 768:	66792f65 	0x66792f65
 76c:	75662f79 	jalx	598bde4 <data_size+0x598bdd4>
 770:	745f636e 	jalx	17d8db8 <data_size+0x17d8da8>
 774:	5f747365 	0x5f747365
 778:	302e3076 	andi	t6,at,0x3076
 77c:	6f732f31 	0x6f732f31
 780:	662f7466 	0x662f7466
 784:	2f636e75 	sltiu	v1,k1,28277
 788:	74736e69 	jalx	1cdb9a4 <data_size+0x1cdb994>
 78c:	554e4700 	0x554e4700
 790:	20534120 	addi	s3,v0,16672
 794:	38312e32 	xori	s1,at,0x2e32
 798:	0030352e 	0x30352e
 79c:	005f8001 	0x5f8001
 7a0:	00020000 	sll	zero,v0,0x0
 7a4:	00000190 	0x190
 7a8:	117a0104 	beq	t3,k0,bbc <data_size+0xbac>
 7ac:	4e400000 	c3	0x400000
 7b0:	4f78bfc0 	c3	0x178bfc0
 7b4:	366ebfc0 	ori	t6,s3,0xbfc0
 7b8:	79735f35 	0x79735f35
 7bc:	6c616373 	0x6c616373
 7c0:	78655f6c 	0x78655f6c
 7c4:	2f00532e 	sltiu	zero,t8,21294
 7c8:	656d6f68 	0x656d6f68
 7cc:	7966792f 	0x7966792f
 7d0:	6e75662f 	0x6e75662f
 7d4:	65745f63 	0x65745f63
 7d8:	765f7473 	jalx	97dd1cc <data_size+0x97dd1bc>
 7dc:	31302e30 	andi	s0,t1,0x2e30
 7e0:	666f732f 	0x666f732f
 7e4:	75662f74 	jalx	598bdd0 <data_size+0x598bdc0>
 7e8:	692f636e 	0x692f636e
 7ec:	0074736e 	0x74736e
 7f0:	20554e47 	addi	s5,v0,20039
 7f4:	32205341 	andi	zero,s1,0x5341
 7f8:	2e38312e 	sltiu	t8,s1,12590
 7fc:	01003035 	0x1003035
 800:	00006180 	sll	t4,zero,0x6
 804:	a4000200 	sh	zero,512(zero)
 808:	04000001 	bltz	zero,810 <data_size+0x800>
 80c:	0011fe01 	0x11fe01
 810:	c04f8000 	lwc0	$15,-32768(v0)
 814:	c05288bf 	lwc0	$18,-30529(v0)
 818:	35386ebf 	ori	t8,t1,0x6ebf
 81c:	6567625f 	0x6567625f
 820:	5f6c617a 	0x5f6c617a
 824:	655f7364 	0x655f7364
 828:	00532e78 	0x532e78
 82c:	6d6f682f 	0x6d6f682f
 830:	66792f65 	0x66792f65
 834:	75662f79 	jalx	598bde4 <data_size+0x598bdd4>
 838:	745f636e 	jalx	17d8db8 <data_size+0x17d8da8>
 83c:	5f747365 	0x5f747365
 840:	302e3076 	andi	t6,at,0x3076
 844:	6f732f31 	0x6f732f31
 848:	662f7466 	0x662f7466
 84c:	2f636e75 	sltiu	v1,k1,28277
 850:	74736e69 	jalx	1cdb9a4 <data_size+0x1cdb994>
 854:	554e4700 	0x554e4700
 858:	20534120 	addi	s3,v0,16672
 85c:	38312e32 	xori	s1,at,0x2e32
 860:	0030352e 	0x30352e
 864:	005f8001 	0x5f8001
 868:	00020000 	sll	zero,v0,0x0
 86c:	000001b8 	0x1b8
 870:	12e20104 	beq	s7,v0,c84 <data_size+0xc74>
 874:	52900000 	0x52900000
 878:	54b4bfc0 	0x54b4bfc0
 87c:	376ebfc0 	ori	t6,k1,0xbfc0
 880:	74665f35 	jalx	1997cd4 <data_size+0x1997cc4>
 884:	6564615f 	0x6564615f
 888:	78655f6c 	0x78655f6c
 88c:	2f00532e 	sltiu	zero,t8,21294
 890:	656d6f68 	0x656d6f68
 894:	7966792f 	0x7966792f
 898:	6e75662f 	0x6e75662f
 89c:	65745f63 	0x65745f63
 8a0:	765f7473 	jalx	97dd1cc <data_size+0x97dd1bc>
 8a4:	31302e30 	andi	s0,t1,0x2e30
 8a8:	666f732f 	0x666f732f
 8ac:	75662f74 	jalx	598bdd0 <data_size+0x598bdc0>
 8b0:	692f636e 	0x692f636e
 8b4:	0074736e 	0x74736e
 8b8:	20554e47 	addi	s5,v0,20039
 8bc:	32205341 	andi	zero,s1,0x5341
 8c0:	2e38312e 	sltiu	t8,s1,12590
 8c4:	01003035 	0x1003035
 8c8:	00005e80 	sll	t3,zero,0x1a
 8cc:	cc000200 	lwc3	$0,512(zero)
 8d0:	04000001 	bltz	zero,8d8 <data_size+0x8c8>
 8d4:	00138c01 	0x138c01
 8d8:	c054c000 	lwc0	$20,-16384(v0)
 8dc:	c05710bf 	lwc0	$23,4287(v0)
 8e0:	39366ebf 	xori	s6,t1,0x6ebf
 8e4:	6275735f 	0x6275735f
 8e8:	5f766f5f 	0x5f766f5f
 8ec:	532e7865 	0x532e7865
 8f0:	6f682f00 	0x6f682f00
 8f4:	792f656d 	0x792f656d
 8f8:	662f7966 	0x662f7966
 8fc:	5f636e75 	0x5f636e75
 900:	74736574 	jalx	1cd95d0 <data_size+0x1cd95c0>
 904:	2e30765f 	sltiu	s0,s1,30303
 908:	732f3130 	0x732f3130
 90c:	2f74666f 	sltiu	s4,k1,26223
 910:	636e7566 	0x636e7566
 914:	736e692f 	0x736e692f
 918:	4e470074 	c3	0x470074
 91c:	53412055 	0x53412055
 920:	312e3220 	andi	t6,t1,0x3220
 924:	30352e38 	andi	s5,at,0x2e38
 928:	5e800100 	0x5e800100
 92c:	02000000 	0x2000000
 930:	0001e000 	sll	gp,at,0x0
 934:	2b010400 	slti	at,t8,1024
 938:	10000014 	b	98c <data_size+0x97c>
 93c:	18bfc057 	0x18bfc057
 940:	6ebfc05a 	0x6ebfc05a
 944:	6a5f3738 	0x6a5f3738
 948:	645f6c61 	0x645f6c61
 94c:	78655f73 	0x78655f73
 950:	2f00532e 	sltiu	zero,t8,21294
 954:	656d6f68 	0x656d6f68
 958:	7966792f 	0x7966792f
 95c:	6e75662f 	0x6e75662f
 960:	65745f63 	0x65745f63
 964:	765f7473 	jalx	97dd1cc <data_size+0x97dd1bc>
 968:	31302e30 	andi	s0,t1,0x2e30
 96c:	666f732f 	0x666f732f
 970:	75662f74 	jalx	598bdd0 <data_size+0x598bdc0>
 974:	692f636e 	0x692f636e
 978:	0074736e 	0x74736e
 97c:	20554e47 	addi	s5,v0,20039
 980:	32205341 	andi	zero,s1,0x5341
 984:	2e38312e 	sltiu	t8,s1,12590
 988:	01003035 	0x1003035
 98c:	00006180 	sll	t4,zero,0x6
 990:	f4000200 	0xf4000200
 994:	04000001 	bltz	zero,99c <data_size+0x98c>
 998:	00150c01 	0x150c01
 99c:	c05a2000 	lwc0	$26,8192(v0)
 9a0:	c05d28bf 	lwc0	$29,10431(v0)
 9a4:	34386ebf 	ori	t8,at,0x6ebf
 9a8:	746c625f 	jalx	1b1897c <data_size+0x1b1896c>
 9ac:	5f6c617a 	0x5f6c617a
 9b0:	655f7364 	0x655f7364
 9b4:	00532e78 	0x532e78
 9b8:	6d6f682f 	0x6d6f682f
 9bc:	66792f65 	0x66792f65
 9c0:	75662f79 	jalx	598bde4 <data_size+0x598bdd4>
 9c4:	745f636e 	jalx	17d8db8 <data_size+0x17d8da8>
 9c8:	5f747365 	0x5f747365
 9cc:	302e3076 	andi	t6,at,0x3076
 9d0:	6f732f31 	0x6f732f31
 9d4:	662f7466 	0x662f7466
 9d8:	2f636e75 	sltiu	v1,k1,28277
 9dc:	74736e69 	jalx	1cdb9a4 <data_size+0x1cdb994>
 9e0:	554e4700 	0x554e4700
 9e4:	20534120 	addi	s3,v0,16672
 9e8:	38312e32 	xori	s1,at,0x2e32
 9ec:	0030352e 	0x30352e
 9f0:	005a8001 	0x5a8001
 9f4:	00020000 	sll	zero,v0,0x0
 9f8:	00000208 	0x208
 9fc:	15f00104 	bne	t7,s0,e10 <data_size+0xe00>
 a00:	5d300000 	0x5d300000
 a04:	5e78bfc0 	0x5e78bfc0
 a08:	376ebfc0 	ori	t6,k1,0xbfc0
 a0c:	69725f36 	0x69725f36
 a10:	2e78655f 	sltiu	t8,s3,25951
 a14:	682f0053 	0x682f0053
 a18:	2f656d6f 	sltiu	a1,k1,28015
 a1c:	2f796679 	sltiu	t9,k1,26233
 a20:	636e7566 	0x636e7566
 a24:	7365745f 	0x7365745f
 a28:	30765f74 	andi	s6,v1,0x5f74
 a2c:	2f31302e 	sltiu	s1,t9,12334
 a30:	74666f73 	jalx	199bdcc <data_size+0x199bdbc>
 a34:	6e75662f 	0x6e75662f
 a38:	6e692f63 	0x6e692f63
 a3c:	47007473 	c1	0x1007473
 a40:	4120554e 	0x4120554e
 a44:	2e322053 	sltiu	s2,s1,8275
 a48:	352e3831 	ori	t6,t1,0x3831
 a4c:	80010030 	lb	at,48(zero)

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	10001101 	b	4408 <data_size+0x43f8>
   4:	12011106 	beq	s0,at,4420 <data_size+0x4410>
   8:	1b080301 	0x1b080301
   c:	13082508 	beq	t8,t0,9430 <data_size+0x9420>
  10:	00000005 	0x5
  14:	10001101 	b	441c <data_size+0x440c>
  18:	12011106 	beq	s0,at,4434 <data_size+0x4424>
  1c:	1b080301 	0x1b080301
  20:	13082508 	beq	t8,t0,9444 <data_size+0x9434>
  24:	00000005 	0x5
  28:	10001101 	b	4430 <data_size+0x4420>
  2c:	12011106 	beq	s0,at,4448 <data_size+0x4438>
  30:	1b080301 	0x1b080301
  34:	13082508 	beq	t8,t0,9458 <data_size+0x9448>
  38:	00000005 	0x5
  3c:	10001101 	b	4444 <data_size+0x4434>
  40:	12011106 	beq	s0,at,445c <data_size+0x444c>
  44:	1b080301 	0x1b080301
  48:	13082508 	beq	t8,t0,946c <data_size+0x945c>
  4c:	00000005 	0x5
  50:	10001101 	b	4458 <data_size+0x4448>
  54:	12011106 	beq	s0,at,4470 <data_size+0x4460>
  58:	1b080301 	0x1b080301
  5c:	13082508 	beq	t8,t0,9480 <data_size+0x9470>
  60:	00000005 	0x5
  64:	10001101 	b	446c <data_size+0x445c>
  68:	12011106 	beq	s0,at,4484 <data_size+0x4474>
  6c:	1b080301 	0x1b080301
  70:	13082508 	beq	t8,t0,9494 <data_size+0x9484>
  74:	00000005 	0x5
  78:	10001101 	b	4480 <data_size+0x4470>
  7c:	12011106 	beq	s0,at,4498 <data_size+0x4488>
  80:	1b080301 	0x1b080301
  84:	13082508 	beq	t8,t0,94a8 <data_size+0x9498>
  88:	00000005 	0x5
  8c:	10001101 	b	4494 <data_size+0x4484>
  90:	12011106 	beq	s0,at,44ac <data_size+0x449c>
  94:	1b080301 	0x1b080301
  98:	13082508 	beq	t8,t0,94bc <data_size+0x94ac>
  9c:	00000005 	0x5
  a0:	10001101 	b	44a8 <data_size+0x4498>
  a4:	12011106 	beq	s0,at,44c0 <data_size+0x44b0>
  a8:	1b080301 	0x1b080301
  ac:	13082508 	beq	t8,t0,94d0 <data_size+0x94c0>
  b0:	00000005 	0x5
  b4:	10001101 	b	44bc <data_size+0x44ac>
  b8:	12011106 	beq	s0,at,44d4 <data_size+0x44c4>
  bc:	1b080301 	0x1b080301
  c0:	13082508 	beq	t8,t0,94e4 <data_size+0x94d4>
  c4:	00000005 	0x5
  c8:	10001101 	b	44d0 <data_size+0x44c0>
  cc:	12011106 	beq	s0,at,44e8 <data_size+0x44d8>
  d0:	1b080301 	0x1b080301
  d4:	13082508 	beq	t8,t0,94f8 <data_size+0x94e8>
  d8:	00000005 	0x5
  dc:	10001101 	b	44e4 <data_size+0x44d4>
  e0:	12011106 	beq	s0,at,44fc <data_size+0x44ec>
  e4:	1b080301 	0x1b080301
  e8:	13082508 	beq	t8,t0,950c <data_size+0x94fc>
  ec:	00000005 	0x5
  f0:	10001101 	b	44f8 <data_size+0x44e8>
  f4:	12011106 	beq	s0,at,4510 <data_size+0x4500>
  f8:	1b080301 	0x1b080301
  fc:	13082508 	beq	t8,t0,9520 <data_size+0x9510>
 100:	00000005 	0x5
 104:	10001101 	b	450c <data_size+0x44fc>
 108:	12011106 	beq	s0,at,4524 <data_size+0x4514>
 10c:	1b080301 	0x1b080301
 110:	13082508 	beq	t8,t0,9534 <data_size+0x9524>
 114:	00000005 	0x5
 118:	10001101 	b	4520 <data_size+0x4510>
 11c:	12011106 	beq	s0,at,4538 <data_size+0x4528>
 120:	1b080301 	0x1b080301
 124:	13082508 	beq	t8,t0,9548 <data_size+0x9538>
 128:	00000005 	0x5
 12c:	10001101 	b	4534 <data_size+0x4524>
 130:	12011106 	beq	s0,at,454c <data_size+0x453c>
 134:	1b080301 	0x1b080301
 138:	13082508 	beq	t8,t0,955c <data_size+0x954c>
 13c:	00000005 	0x5
 140:	10001101 	b	4548 <data_size+0x4538>
 144:	12011106 	beq	s0,at,4560 <data_size+0x4550>
 148:	1b080301 	0x1b080301
 14c:	13082508 	beq	t8,t0,9570 <data_size+0x9560>
 150:	00000005 	0x5
 154:	10001101 	b	455c <data_size+0x454c>
 158:	12011106 	beq	s0,at,4574 <data_size+0x4564>
 15c:	1b080301 	0x1b080301
 160:	13082508 	beq	t8,t0,9584 <data_size+0x9574>
 164:	00000005 	0x5
 168:	10001101 	b	4570 <data_size+0x4560>
 16c:	12011106 	beq	s0,at,4588 <data_size+0x4578>
 170:	1b080301 	0x1b080301
 174:	13082508 	beq	t8,t0,9598 <data_size+0x9588>
 178:	00000005 	0x5
 17c:	10001101 	b	4584 <data_size+0x4574>
 180:	12011106 	beq	s0,at,459c <data_size+0x458c>
 184:	1b080301 	0x1b080301
 188:	13082508 	beq	t8,t0,95ac <data_size+0x959c>
 18c:	00000005 	0x5
 190:	10001101 	b	4598 <data_size+0x4588>
 194:	12011106 	beq	s0,at,45b0 <data_size+0x45a0>
 198:	1b080301 	0x1b080301
 19c:	13082508 	beq	t8,t0,95c0 <data_size+0x95b0>
 1a0:	00000005 	0x5
 1a4:	10001101 	b	45ac <data_size+0x459c>
 1a8:	12011106 	beq	s0,at,45c4 <data_size+0x45b4>
 1ac:	1b080301 	0x1b080301
 1b0:	13082508 	beq	t8,t0,95d4 <data_size+0x95c4>
 1b4:	00000005 	0x5
 1b8:	10001101 	b	45c0 <data_size+0x45b0>
 1bc:	12011106 	beq	s0,at,45d8 <data_size+0x45c8>
 1c0:	1b080301 	0x1b080301
 1c4:	13082508 	beq	t8,t0,95e8 <data_size+0x95d8>
 1c8:	00000005 	0x5
 1cc:	10001101 	b	45d4 <data_size+0x45c4>
 1d0:	12011106 	beq	s0,at,45ec <data_size+0x45dc>
 1d4:	1b080301 	0x1b080301
 1d8:	13082508 	beq	t8,t0,95fc <data_size+0x95ec>
 1dc:	00000005 	0x5
 1e0:	10001101 	b	45e8 <data_size+0x45d8>
 1e4:	12011106 	beq	s0,at,4600 <data_size+0x45f0>
 1e8:	1b080301 	0x1b080301
 1ec:	13082508 	beq	t8,t0,9610 <data_size+0x9600>
 1f0:	00000005 	0x5
 1f4:	10001101 	b	45fc <data_size+0x45ec>
 1f8:	12011106 	beq	s0,at,4614 <data_size+0x4604>
 1fc:	1b080301 	0x1b080301
 200:	13082508 	beq	t8,t0,9624 <data_size+0x9614>
 204:	00000005 	0x5
 208:	10001101 	b	4610 <data_size+0x4600>
 20c:	12011106 	beq	s0,at,4628 <data_size+0x4618>
 210:	1b080301 	0x1b080301
 214:	13082508 	beq	t8,t0,9638 <data_size+0x9628>
 218:	00000005 	0x5
