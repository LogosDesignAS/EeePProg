	.cpu cortex-a9
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"CfgParser.c"
	.text
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC1:
	.ascii	"\000"
	.align	2
.LC2:
	.ascii	"# \000"
	.align	2
.LC3:
	.ascii	"Required Element\000"
	.align	2
.LC4:
	.ascii	"Optional Element\000"
	.align	2
.LC5:
	.ascii	"PrintCfgFile_Sub\000"
	.align	2
.LC6:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux/../CfgParser.c\000"
	.align	2
.LC7:
	.ascii	"(pCfgBDesc==NULL)\000"
	.align	2
.LC8:
	.ascii	"%s\012\000"
	.align	2
.LC9:
	.ascii	"(stCfgBDescElements==0)\000"
	.align	2
.LC10:
	.ascii	"\012\000"
	.align	2
.LC11:
	.ascii	"TB \000"
	.align	2
.LC12:
	.ascii	"PrintStringBlockA(OutStream, szBuffer, 60, (cuiRequ"
	.ascii	"ired&&pCfgBDesc->Block.cuiRequired?\"\":\"# \"), Lc"
	.ascii	"lDepth, \"\\n\")\000"
	.align	2
.LC13:
	.ascii	"PrintCfgFile_Sub(pCfgBDesc->Block.Elements.pIndx, p"
	.ascii	"CfgBDesc->Block.Elements.stUsedCnt, OutStream, cuiR"
	.ascii	"equired&&pCfgBDesc->Block.cuiRequired, Depth+1)\000"
	.align	2
.LC14:
	.ascii	"PrintStringBlockA(OutStream, szBuffer, 60, szCommen"
	.ascii	"t, LclDepth, \"\\n\")\000"
	.align	2
.LC15:
	.ascii	"%*s\011\011 %s\012\000"
	.align	2
.LC16:
	.ascii	"%*s\011\011 Allowed Maximum of %lu times in block\012"
	.ascii	"\000"
	.align	2
.LC17:
	.ascii	"pCfgBDesc->Element.pHandlers->Help( &pCfgBDesc->Ele"
	.ascii	"ment, szBuffer, ARRAY_SIZE(szBuffer) )\000"
	.align	2
.LC18:
	.ascii	"PrintStringBlockA(OutStream, szBuffer, 60, szCommen"
	.ascii	"t2, LclDepth+2, \"\\n\" )\000"
	.align	2
.LC19:
	.ascii	"%*s%s=\000"
	.align	2
.LC20:
	.ascii	"pCfgBDesc->Element.pHandlers->Default( &pCfgBDesc->"
	.ascii	"Element, OutStream , i2 )\000"
	.text
	.align	2
	.global	PrintCfgFile_Sub
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	PrintCfgFile_Sub, %function
PrintCfgFile_Sub:
	@ args = 4, pretend = 0, frame = 2088
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r2
	ldr	r2, .L64
	mov	fp, r3
	sub	sp, sp, #2096
	cmp	r0, #0
	ldr	r3, .L64+4
	sub	sp, sp, #12
.LPIC65:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #2100]
	mov	r3, #0
	beq	.L55
	cmp	r1, #0
	beq	.L56
	ldr	r3, [sp, #2144]
	add	r4, r0, #56
	add	r2, r3, #1
	sub	r3, r1, #1
	str	r3, [sp, #16]
	lsl	r10, r2, #1
	ldr	r3, .L64+8
	ldr	r1, .L64+12
	str	r2, [sp, #32]
.LPIC58:
	add	r3, pc, r3
	add	r3, r3, #8
.LPIC15:
	add	r1, pc, r1
	str	r3, [sp, #44]
	ldr	r3, .L64+16
	str	r1, [sp, #24]
.LPIC27:
	add	r3, pc, r3
	str	r3, [sp, #36]
	ldr	r3, .L64+20
.LPIC16:
	add	r3, pc, r3
	str	r3, [sp, #28]
	add	r3, r1, #8
	str	r3, [sp, #40]
.L26:
	ldr	r3, [r4, #-56]
	pld	[r4]
	cmp	r3, #1
	beq	.L5
	cmp	r3, #2
	bne	.L7
	ldr	r2, .L64+24
	add	r5, sp, #52
	ldr	r3, [r4, #-52]
	mov	r1, #2048
	mov	r0, r5
	pld	[r4, #4]
.LPIC32:
	add	r2, pc, r2
	add	r2, r2, #16
	bl	EApiSprintfA(PLT)
	ldr	r3, .L64+28
	mov	r2, #60
	mov	r1, r5
	mov	r0, r7
	str	r10, [sp]
.LPIC34:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, .L64+32
.LPIC33:
	add	r3, pc, r3
	bl	PrintStringBlockA(PLT)
	cmp	r0, #0
	bne	.L57
	ldr	r3, [r4, #-48]
	cmp	r3, #0
	bne	.L35
	ldr	r3, .L64+36
.LPIC4:
	add	r3, pc, r3
.L20:
	ldr	r6, .L64+40
	mov	r2, r10
	ldr	r1, .L64+44
	mov	r0, r7
	str	r3, [sp]
	sub	r8, r4, #56
.LPIC39:
	add	r6, pc, r6
	pld	[r4, #16]
.LPIC40:
	add	r1, pc, r1
	mov	r3, r6
	bl	fprintf(PLT)
	ldr	r3, [r4, #-40]
	mov	r2, r10
	ldr	r1, .L64+48
	mov	r0, r7
	str	r3, [sp]
	mov	r3, r6
.LPIC42:
	add	r1, pc, r1
	bl	fprintf(PLT)
	ldr	r3, [r4, #-8]
	mov	r2, #2048
	mov	r1, r5
	mov	r0, r8
	ldr	r3, [r3, #8]
	blx	r3
	cmp	r0, #0
	bne	.L58
	ldr	r2, .L64+52
	add	r3, r6, #4
	mov	r1, r5
	mov	r0, r7
.LPIC48:
	add	r2, pc, r2
	str	r2, [sp, #4]
	add	r2, r10, #2
	str	r2, [sp]
	mov	r2, #60
	bl	PrintStringBlockA(PLT)
	subs	r6, r0, #0
	bne	.L59
	ldr	r2, .L64+56
	ldr	r5, .L64+60
	ldr	r9, .L64+64
.LPIC6:
	add	r2, pc, r2
	ldr	r3, [r4, #-48]
.LPIC5:
	add	r5, pc, r5
	str	r2, [sp, #20]
.LPIC53:
	add	r9, pc, r9
	b	.L25
.L24:
	mov	r1, r7
	mov	r0, #10
	bl	fputc(PLT)
	ldr	r3, [r4, #-48]
	add	r6, r6, #1
	cmp	r3, r6
	bls	.L60
.L25:
	ldr	r2, [r4, #-52]
	tst	r3, fp
	ldreq	r3, [sp, #20]
	movne	r3, r5
	mov	r1, r9
	mov	r0, r7
	str	r2, [sp]
	mov	r2, r10
	bl	fprintf(PLT)
	ldr	r3, [r4, #-8]
	mov	r2, r6
	mov	r1, r7
	mov	r0, r8
	ldr	r3, [r3, #12]
	blx	r3
	cmp	r0, #0
	beq	.L24
	ldr	ip, .L64+68
	mov	r5, r0
	ldr	r2, .L64+72
	mov	r3, #121
	ldr	r0, .L64+76
	ldr	r1, .L64+80
.LPIC56:
	add	ip, pc, ip
.LPIC54:
	add	r2, pc, r2
.LPIC57:
	add	r0, pc, r0
.LPIC55:
	add	r1, pc, r1
.L51:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r5, [sp]
	bl	siFormattedMessage_SC(PLT)
.L1:
	ldr	r2, .L64+84
	ldr	r3, .L64+4
.LPIC64:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #2100]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L61
	mov	r0, r5
	add	sp, sp, #2096
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L5:
	ldr	r3, [r4, #-44]
	cmp	r3, #0
	bne	.L62
.L7:
	ldr	r3, [sp, #16]
	add	r4, r4, #56
	sub	r3, r3, #1
	cmn	r3, #1
	str	r3, [sp, #16]
	bne	.L26
.L3:
	mov	r5, #0
	b	.L1
.L35:
	ldr	r3, .L64+88
.LPIC3:
	add	r3, pc, r3
	b	.L20
.L60:
	mov	r1, r7
	mov	r0, #10
	bl	fputc(PLT)
	b	.L7
.L62:
	add	r5, sp, #52
	ldr	r3, [r4, #-52]
	ldr	r2, [sp, #24]
	mov	r1, #2048
	mov	r0, r5
	bl	EApiSprintfA(PLT)
	cmp	fp, #0
	beq	.L9
	ldr	r3, [r4, #-48]
	cmp	r3, #0
	bne	.L10
	ldr	r3, .L64+92
	str	r10, [sp]
.LPIC63:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, .L64+96
.LPIC62:
	add	r3, pc, r3
.L53:
	mov	r2, #60
	mov	r1, r5
	mov	r0, r7
	bl	PrintStringBlockA(PLT)
	cmp	r0, #0
	bne	.L48
	ldr	r3, [r4, #-48]
	ldr	r0, [r4, #-28]
	ldr	r1, [r4, #-44]
	cmp	r3, #0
	beq	.L63
	ldr	r3, [sp, #32]
	mov	r2, r7
	str	r3, [sp]
	mov	r3, #1
	bl	PrintCfgFile_Sub(PLT)
	cmp	r0, #0
	bne	.L49
	ldr	r3, [r4, #-52]
	mov	r1, #2048
	ldr	r2, [sp, #44]
	mov	r0, r5
	bl	EApiSprintfA(PLT)
.L27:
	ldr	r3, [r4, #-48]
	cmp	r3, #0
	beq	.L34
	ldr	r3, .L64+100
.LPIC0:
	add	r3, pc, r3
	b	.L17
.L9:
	ldr	r3, .L64+104
	mov	r2, #60
	mov	r1, r5
	mov	r0, r7
	str	r10, [sp]
.LPIC17:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [sp, #28]
	bl	PrintStringBlockA(PLT)
	cmp	r0, #0
	bne	.L48
	ldr	r3, [sp, #32]
	mov	r2, r7
	ldr	r1, [r4, #-44]
	ldr	r0, [r4, #-28]
	str	r3, [sp]
	mov	r3, fp
	bl	PrintCfgFile_Sub(PLT)
	cmp	r0, #0
	bne	.L49
	ldr	r3, [r4, #-52]
	mov	r1, #2048
	ldr	r2, [sp, #40]
	mov	r0, r5
	bl	EApiSprintfA(PLT)
	ldr	r3, [sp, #28]
.L17:
	ldr	r2, [sp, #36]
	mov	r1, r5
	mov	r0, r7
	str	r10, [sp]
	str	r2, [sp, #4]
	mov	r2, #60
	bl	PrintStringBlockA(PLT)
	cmp	r0, #0
	beq	.L7
	ldr	ip, .L64+108
	mov	r5, r0
	ldr	r2, .L64+112
	mov	r3, #92
	ldr	r0, .L64+116
	ldr	r1, .L64+120
.LPIC30:
	add	ip, pc, ip
.LPIC28:
	add	r2, pc, r2
.LPIC31:
	add	r0, pc, r0
.LPIC29:
	add	r1, pc, r1
	b	.L51
.L10:
	ldr	r3, .L64+124
	str	r10, [sp]
.LPIC60:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, .L64+128
.LPIC59:
	add	r3, pc, r3
	b	.L53
.L56:
	ldr	ip, .L64+132
	mvn	r5, #256
	ldr	r0, .L64+136
	mov	r3, #78
	ldr	r2, .L64+140
	ldr	r1, .L64+144
.LPIC13:
	add	ip, pc, ip
.LPIC14:
	add	r0, pc, r0
.LPIC11:
	add	r2, pc, r2
.LPIC12:
	add	r1, pc, r1
.L50:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r5, [sp]
	bl	siFormattedMessage_SC(PLT)
	b	.L1
.L63:
	ldr	r2, [sp, #32]
	str	r2, [sp]
	mov	r2, r7
	bl	PrintCfgFile_Sub(PLT)
	cmp	r0, #0
	bne	.L49
	ldr	r2, .L64+148
	mov	r1, #2048
	ldr	r3, [r4, #-52]
	mov	r0, r5
.LPIC26:
	add	r2, pc, r2
	add	r2, r2, #8
	bl	EApiSprintfA(PLT)
	b	.L27
.L34:
	ldr	r3, .L64+152
.LPIC2:
	add	r3, pc, r3
	b	.L17
.L55:
	ldr	ip, .L64+156
	mvn	r5, #256
	ldr	r0, .L64+160
	mov	r3, #73
	ldr	r2, .L64+164
	ldr	r1, .L64+168
.LPIC9:
	add	ip, pc, ip
.LPIC10:
	add	r0, pc, r0
.LPIC7:
	add	r2, pc, r2
.LPIC8:
	add	r1, pc, r1
	b	.L50
.L49:
	ldr	ip, .L64+172
	mov	r5, r0
	ldr	r2, .L64+176
	mov	r3, #90
	ldr	r0, .L64+180
	ldr	r1, .L64+184
.LPIC24:
	add	ip, pc, ip
.LPIC22:
	add	r2, pc, r2
.LPIC25:
	add	r0, pc, r0
.LPIC23:
	add	r1, pc, r1
	b	.L51
.L57:
	ldr	ip, .L64+188
	mov	r5, r0
	ldr	r2, .L64+192
	mov	r3, #97
	ldr	r0, .L64+196
	ldr	r1, .L64+200
.LPIC37:
	add	ip, pc, ip
.LPIC35:
	add	r2, pc, r2
.LPIC38:
	add	r0, pc, r0
.LPIC36:
	add	r1, pc, r1
	b	.L51
.L58:
	ldr	ip, .L64+204
	mov	r5, r0
	ldr	r2, .L64+208
	mov	r3, #106
	ldr	r0, .L64+212
	ldr	r1, .L64+216
.LPIC45:
	add	ip, pc, ip
.LPIC43:
	add	r2, pc, r2
.LPIC46:
	add	r0, pc, r0
.LPIC44:
	add	r1, pc, r1
	b	.L51
.L59:
	ldr	ip, .L64+220
	mov	r3, #111
	ldr	r0, .L64+224
	mov	r5, r6
	ldr	r2, .L64+228
	ldr	r1, .L64+232
.LPIC51:
	add	ip, pc, ip
.LPIC52:
	add	r0, pc, r0
	str	r6, [sp]
	stmib	sp, {r0, ip}
.LPIC49:
	add	r2, pc, r2
.LPIC50:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L1
.L48:
	ldr	ip, .L64+236
	mov	r5, r0
	ldr	r2, .L64+240
	mov	r3, #89
	ldr	r0, .L64+244
	ldr	r1, .L64+248
.LPIC20:
	add	ip, pc, ip
.LPIC18:
	add	r2, pc, r2
.LPIC21:
	add	r0, pc, r0
.LPIC19:
	add	r1, pc, r1
	b	.L51
.L61:
	bl	__stack_chk_fail(PLT)
.L65:
	.align	2
.L64:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC65+8)
	.word	__stack_chk_guard(GOT)
	.word	.LANCHOR0-(.LPIC58+8)
	.word	.LANCHOR0-(.LPIC15+8)
	.word	.LC10-(.LPIC27+8)
	.word	.LC2-(.LPIC16+8)
	.word	.LANCHOR0-(.LPIC32+8)
	.word	.LC10-(.LPIC34+8)
	.word	.LANCHOR1-(.LPIC33+8)
	.word	.LC4-(.LPIC4+8)
	.word	.LANCHOR1-(.LPIC39+8)
	.word	.LC15-(.LPIC40+8)
	.word	.LC16-(.LPIC42+8)
	.word	.LC10-(.LPIC48+8)
	.word	.LC2-(.LPIC6+8)
	.word	.LC1-(.LPIC5+8)
	.word	.LC19-(.LPIC53+8)
	.word	.LC20-(.LPIC56+8)
	.word	.LC11-(.LPIC54+8)
	.word	.LC8-(.LPIC57+8)
	.word	.LC6-(.LPIC55+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC64+8)
	.word	.LC3-(.LPIC3+8)
	.word	.LC10-(.LPIC63+8)
	.word	.LC2-(.LPIC62+8)
	.word	.LC1-(.LPIC0+8)
	.word	.LC10-(.LPIC17+8)
	.word	.LC12-(.LPIC30+8)
	.word	.LC11-(.LPIC28+8)
	.word	.LC8-(.LPIC31+8)
	.word	.LC6-(.LPIC29+8)
	.word	.LC10-(.LPIC60+8)
	.word	.LC1-(.LPIC59+8)
	.word	.LC9-(.LPIC13+8)
	.word	.LC8-(.LPIC14+8)
	.word	.LC5-(.LPIC11+8)
	.word	.LC6-(.LPIC12+8)
	.word	.LANCHOR0-(.LPIC26+8)
	.word	.LC2-(.LPIC2+8)
	.word	.LC7-(.LPIC9+8)
	.word	.LC8-(.LPIC10+8)
	.word	.LC5-(.LPIC7+8)
	.word	.LC6-(.LPIC8+8)
	.word	.LC13-(.LPIC24+8)
	.word	.LC11-(.LPIC22+8)
	.word	.LC8-(.LPIC25+8)
	.word	.LC6-(.LPIC23+8)
	.word	.LC14-(.LPIC37+8)
	.word	.LC11-(.LPIC35+8)
	.word	.LC8-(.LPIC38+8)
	.word	.LC6-(.LPIC36+8)
	.word	.LC17-(.LPIC45+8)
	.word	.LC11-(.LPIC43+8)
	.word	.LC8-(.LPIC46+8)
	.word	.LC6-(.LPIC44+8)
	.word	.LC18-(.LPIC51+8)
	.word	.LC8-(.LPIC52+8)
	.word	.LC11-(.LPIC49+8)
	.word	.LC6-(.LPIC50+8)
	.word	.LC12-(.LPIC20+8)
	.word	.LC11-(.LPIC18+8)
	.word	.LC8-(.LPIC21+8)
	.word	.LC6-(.LPIC19+8)
	.size	PrintCfgFile_Sub, .-PrintCfgFile_Sub
	.section	.rodata.str1.4
	.align	2
.LC21:
	.ascii	"PrintCfgFile\000"
	.align	2
.LC22:
	.ascii	"PrintCfgFile_Sub((CfgNodeGen_t*)pCfgBDesc, stCfgBDe"
	.ascii	"scElements, OutStream, 1, 0)\000"
	.text
	.align	2
	.global	PrintCfgFile
	.syntax unified
	.arm
	.fpu vfpv3
	.type	PrintCfgFile, %function
PrintCfgFile:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0
	push	{r4, lr}
	sub	sp, sp, #16
	beq	.L75
	cmp	r1, #0
	beq	.L76
	mov	ip, #0
	mov	r3, #1
	str	ip, [sp]
	bl	PrintCfgFile_Sub(PLT)
	subs	r4, r0, #0
	bne	.L77
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L76:
	ldr	ip, .L78
	mvn	r4, #256
	ldr	r0, .L78+4
	mov	r3, #151
	ldr	r2, .L78+8
	ldr	r1, .L78+12
.LPIC72:
	add	ip, pc, ip
.LPIC73:
	add	r0, pc, r0
.LPIC70:
	add	r2, pc, r2
.LPIC71:
	add	r1, pc, r1
.L74:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L77:
.L68:
	ldr	ip, .L78+16
	mov	r3, #156
	ldr	r0, .L78+20
	ldr	r2, .L78+24
	ldr	r1, .L78+28
.LPIC76:
	add	ip, pc, ip
.LPIC77:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC74:
	add	r2, pc, r2
.LPIC75:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L75:
	ldr	ip, .L78+32
	mvn	r4, #256
	ldr	r0, .L78+36
	mov	r3, #146
	ldr	r2, .L78+40
	ldr	r1, .L78+44
.LPIC68:
	add	ip, pc, ip
.LPIC69:
	add	r0, pc, r0
.LPIC66:
	add	r2, pc, r2
.LPIC67:
	add	r1, pc, r1
	b	.L74
.L79:
	.align	2
.L78:
	.word	.LC9-(.LPIC72+8)
	.word	.LC8-(.LPIC73+8)
	.word	.LC21-(.LPIC70+8)
	.word	.LC6-(.LPIC71+8)
	.word	.LC22-(.LPIC76+8)
	.word	.LC8-(.LPIC77+8)
	.word	.LC11-(.LPIC74+8)
	.word	.LC6-(.LPIC75+8)
	.word	.LC7-(.LPIC68+8)
	.word	.LC8-(.LPIC69+8)
	.word	.LC21-(.LPIC66+8)
	.word	.LC6-(.LPIC67+8)
	.size	PrintCfgFile, .-PrintCfgFile
	.section	.rodata.str1.4
	.align	2
.LC23:
	.ascii	"CleanStruct_sub\000"
	.align	2
.LC24:
	.ascii	"CleanStruct_sub(pCfgBDesc->Block.Elements.pIndx, pC"
	.ascii	"fgBDesc->Block.Elements.stUsedCnt, stDepth + 1)\000"
	.align	2
.LC25:
	.ascii	"pCfgBDesc->Element.pHandlers->Clean( (CfgElementDes"
	.ascii	"c_t*)pCfgBDesc, EAPI_CREATE_PTR( pCfgBDesc->Element"
	.ascii	".Instances.pIndx, pCfgBDesc->Element.Instances.stEl"
	.ascii	"ementSize*(pCfgBDesc->Element.Instances.stUsedCnt),"
	.ascii	" void* ) )\000"
	.text
	.align	2
	.global	CleanStruct_sub
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CleanStruct_sub, %function
CleanStruct_sub:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0
	push	{r4, r5, r6, r7, r8, r9, lr}
	sub	sp, sp, #20
	beq	.L104
	cmp	r1, #0
	beq	.L83
	sub	r6, r1, #1
	add	r4, r0, #224
	mov	r8, #0
	add	r7, r2, #1
.L84:
	ldr	r3, [r4, #-224]
	sub	r9, r4, #224
	pld	[r4]
	cmp	r3, #1
	beq	.L85
	cmp	r3, #2
	beq	.L86
.L87:
	sub	r6, r6, #1
	add	r4, r4, #56
	cmn	r6, #1
	bne	.L84
.L82:
	mov	r5, #0
	mov	r0, r5
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L86:
	ldr	r1, [r4, #-212]
	mov	r0, r9
	cmp	r1, #0
	sub	r1, r1, #1
	str	r1, [r4, #-212]
	beq	.L87
	ldr	ip, [r4, #-204]
	ldr	r2, [r4, #-196]
	ldr	r3, [r4, #-176]
	mla	r1, ip, r1, r2
	ldr	r3, [r3, #4]
	blx	r3
	subs	r5, r0, #0
	beq	.L86
	ldr	ip, .L106
	mov	r3, #189
	ldr	r0, .L106+4
	ldr	r2, .L106+8
	ldr	r1, .L106+12
.LPIC92:
	add	ip, pc, ip
.LPIC93:
	add	r0, pc, r0
.LPIC90:
	add	r2, pc, r2
.LPIC91:
	add	r1, pc, r1
.L102:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r5, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r5
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L85:
	ldr	r1, [r4, #-212]
	cmp	r1, #0
	bne	.L105
.L88:
	str	r8, [r4, #-184]
	b	.L87
.L105:
	ldr	r0, [r4, #-196]
	mov	r2, r7
	bl	CleanStruct_sub(PLT)
	subs	r5, r0, #0
	beq	.L88
	ldr	ip, .L106+16
	mov	r3, #183
	ldr	r0, .L106+20
	ldr	r2, .L106+24
	ldr	r1, .L106+28
.LPIC88:
	add	ip, pc, ip
.LPIC89:
	add	r0, pc, r0
.LPIC86:
	add	r2, pc, r2
.LPIC87:
	add	r1, pc, r1
	b	.L102
.L83:
	ldr	ip, .L106+32
	mvn	r5, #256
	ldr	r0, .L106+36
	mov	r3, #174
	ldr	r2, .L106+40
	ldr	r1, .L106+44
.LPIC84:
	add	ip, pc, ip
.LPIC85:
	add	r0, pc, r0
.LPIC82:
	add	r2, pc, r2
.LPIC83:
	add	r1, pc, r1
.L103:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r5, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r5
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L104:
	ldr	ip, .L106+48
	mvn	r5, #256
	ldr	r0, .L106+52
	mov	r3, #169
	ldr	r2, .L106+56
	ldr	r1, .L106+60
.LPIC80:
	add	ip, pc, ip
.LPIC81:
	add	r0, pc, r0
.LPIC78:
	add	r2, pc, r2
.LPIC79:
	add	r1, pc, r1
	b	.L103
.L107:
	.align	2
.L106:
	.word	.LC25-(.LPIC92+8)
	.word	.LC8-(.LPIC93+8)
	.word	.LC11-(.LPIC90+8)
	.word	.LC6-(.LPIC91+8)
	.word	.LC24-(.LPIC88+8)
	.word	.LC8-(.LPIC89+8)
	.word	.LC11-(.LPIC86+8)
	.word	.LC6-(.LPIC87+8)
	.word	.LC9-(.LPIC84+8)
	.word	.LC8-(.LPIC85+8)
	.word	.LC23-(.LPIC82+8)
	.word	.LC6-(.LPIC83+8)
	.word	.LC7-(.LPIC80+8)
	.word	.LC8-(.LPIC81+8)
	.word	.LC23-(.LPIC78+8)
	.word	.LC6-(.LPIC79+8)
	.size	CleanStruct_sub, .-CleanStruct_sub
	.section	.rodata.str1.4
	.align	2
.LC26:
	.ascii	"CleanStruct\000"
	.align	2
.LC27:
	.ascii	"CleanStruct_sub((CfgNodeGen_t*)pCfgBDesc, stCfgBDes"
	.ascii	"cElements, 0)\000"
	.text
	.align	2
	.global	CleanStruct
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CleanStruct, %function
CleanStruct:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0
	push	{r4, lr}
	sub	sp, sp, #16
	beq	.L117
	cmp	r1, #0
	beq	.L118
	mov	r2, #0
	bl	CleanStruct_sub(PLT)
	subs	r4, r0, #0
	bne	.L119
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L118:
	ldr	ip, .L120
	mvn	r4, #256
	ldr	r0, .L120+4
	mov	r3, #219
	ldr	r2, .L120+8
	ldr	r1, .L120+12
.LPIC100:
	add	ip, pc, ip
.LPIC101:
	add	r0, pc, r0
.LPIC98:
	add	r2, pc, r2
.LPIC99:
	add	r1, pc, r1
.L116:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L119:
.L110:
	ldr	ip, .L120+16
	mov	r3, #224
	ldr	r0, .L120+20
	ldr	r2, .L120+24
	ldr	r1, .L120+28
.LPIC104:
	add	ip, pc, ip
.LPIC105:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC102:
	add	r2, pc, r2
.LPIC103:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L117:
	ldr	ip, .L120+32
	mvn	r4, #256
	ldr	r0, .L120+36
	mov	r3, #214
	ldr	r2, .L120+40
	ldr	r1, .L120+44
.LPIC96:
	add	ip, pc, ip
.LPIC97:
	add	r0, pc, r0
.LPIC94:
	add	r2, pc, r2
.LPIC95:
	add	r1, pc, r1
	b	.L116
.L121:
	.align	2
.L120:
	.word	.LC9-(.LPIC100+8)
	.word	.LC8-(.LPIC101+8)
	.word	.LC26-(.LPIC98+8)
	.word	.LC6-(.LPIC99+8)
	.word	.LC27-(.LPIC104+8)
	.word	.LC8-(.LPIC105+8)
	.word	.LC11-(.LPIC102+8)
	.word	.LC6-(.LPIC103+8)
	.word	.LC7-(.LPIC96+8)
	.word	.LC8-(.LPIC97+8)
	.word	.LC26-(.LPIC94+8)
	.word	.LC6-(.LPIC95+8)
	.size	CleanStruct, .-CleanStruct
	.section	.rodata.str1.4
	.align	2
.LC28:
	.ascii	"GetElementDesc\000"
	.align	2
.LC29:
	.ascii	"(pDesc==NULL)\000"
	.align	2
.LC30:
	.ascii	"(ppNodeDesc==NULL)\000"
	.align	2
.LC31:
	.ascii	"(cszElementName==NULL)\000"
	.text
	.align	2
	.global	GetElementDesc
	.syntax unified
	.arm
	.fpu vfpv3
	.type	GetElementDesc, %function
GetElementDesc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0
	push	{r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #16
	beq	.L133
	cmp	r1, #0
	mov	r7, r1
	beq	.L134
	cmp	r2, #0
	mov	r8, r2
	beq	.L135
	mov	r6, r3
	mov	r3, #0
	str	r3, [r1]
	ldr	r5, [r0, #12]
	ldr	r4, [r0, #28]
	cmp	r5, r3
	bne	.L128
	b	.L129
.L127:
	subs	r5, r5, #1
	add	r4, r4, #56
	beq	.L129
.L128:
	ldr	ip, [r4]
	cmp	ip, r6
	bne	.L127
	ldr	r1, [r4, #4]
	mov	r0, r8
	bl	strcmp(PLT)
	cmp	r0, #0
	bne	.L127
	str	r4, [r7]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L129:
.L124:
	mvn	r0, #1024
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L133:
	ldr	ip, .L136
	mvn	r4, #256
	ldr	r0, .L136+4
	mov	r3, #240
	ldr	r2, .L136+8
	ldr	r1, .L136+12
.LPIC108:
	add	ip, pc, ip
.LPIC109:
	add	r0, pc, r0
.LPIC106:
	add	r2, pc, r2
.LPIC107:
	add	r1, pc, r1
.L132:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L134:
	ldr	ip, .L136+16
	mvn	r4, #256
	ldr	r0, .L136+20
	mov	r3, #245
	ldr	r2, .L136+24
	ldr	r1, .L136+28
.LPIC112:
	add	ip, pc, ip
.LPIC113:
	add	r0, pc, r0
.LPIC110:
	add	r2, pc, r2
.LPIC111:
	add	r1, pc, r1
	b	.L132
.L135:
	ldr	ip, .L136+32
	mvn	r4, #256
	ldr	r0, .L136+36
	mov	r3, #250
	ldr	r2, .L136+40
	ldr	r1, .L136+44
.LPIC116:
	add	ip, pc, ip
.LPIC117:
	add	r0, pc, r0
.LPIC114:
	add	r2, pc, r2
.LPIC115:
	add	r1, pc, r1
	b	.L132
.L137:
	.align	2
.L136:
	.word	.LC29-(.LPIC108+8)
	.word	.LC8-(.LPIC109+8)
	.word	.LC28-(.LPIC106+8)
	.word	.LC6-(.LPIC107+8)
	.word	.LC30-(.LPIC112+8)
	.word	.LC8-(.LPIC113+8)
	.word	.LC28-(.LPIC110+8)
	.word	.LC6-(.LPIC111+8)
	.word	.LC31-(.LPIC116+8)
	.word	.LC8-(.LPIC117+8)
	.word	.LC28-(.LPIC114+8)
	.word	.LC6-(.LPIC115+8)
	.size	GetElementDesc, .-GetElementDesc
	.section	.rodata.str1.4
	.align	2
.LC32:
	.ascii	"ParseCfgFile_sub\000"
	.align	2
.LC33:
	.ascii	";#\012\015\000"
	.align	2
.LC34:
	.ascii	"]\000"
	.align	2
.LC35:
	.ascii	"(%04lu)%s\012\000"
	.align	2
.LC36:
	.ascii	"Expected '[/%s]' Got (%lu)'[/%s]'\012\000"
	.align	2
.LC37:
	.ascii	"Missing Required Block '%s' in Block (%lu)'%s'\012\000"
	.align	2
.LC38:
	.ascii	"Missing Required Element '%s' in Block (%lu)'%s'\012"
	.ascii	"\000"
	.align	2
.LC39:
	.ascii	"ParseCfgFile_sub(pCtxt, pCurBlockDesc, stRequired&&"
	.ascii	"pCurBlockDesc->Block.cuiRequired)\000"
	.align	2
.LC40:
	.ascii	"Unknown Block on line %li, '%s'\012\000"
	.align	2
.LC41:
	.ascii	"(%04lu) : %s\012\000"
	.align	2
.LC42:
	.ascii	"Invalid Line\000"
	.align	2
.LC43:
	.ascii	"ERROR Too Many Instances of %s at line %li\012\000"
	.align	2
.LC44:
	.ascii	"ERROR Parsing Line %li, %s\012\000"
	.align	2
.LC45:
	.ascii	"Unknown Block Element on line %li, '%s'\012\000"
	.text
	.align	2
	.global	ParseCfgFile_sub
	.syntax unified
	.arm
	.fpu vfpv3
	.type	ParseCfgFile_sub, %function
ParseCfgFile_sub:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #8]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #60
	str	r2, [sp, #28]
	subs	r8, r1, #0
	mov	r4, r0
	ldr	r2, .L195
	str	r3, [sp, #36]
	ldr	r3, .L195+4
.LPIC157:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #52]
	mov	r3, #0
	beq	.L183
	ldr	r3, [r0, #12]
	mov	r6, #0
	ldr	fp, .L195+8
	add	r3, r3, #1
	str	r3, [r0, #12]
.LPIC122:
	add	fp, pc, fp
	ldr	r3, .L195+12
.LPIC153:
	add	r3, pc, r3
	str	r3, [sp, #32]
.L141:
	add	r7, r4, #16
.L145:
	ldr	r0, [r4, #4]
	bl	feof(PLT)
	subs	r5, r0, #0
	bne	.L140
.L166:
	ldr	r2, [r4, #4]
	mov	r1, #2048
	mov	r0, r7
	bl	fgets(PLT)
	ldr	r3, [r4, #8]
	mov	r1, fp
	mov	r0, r7
	add	r3, r3, #1
	str	r3, [r4, #8]
	bl	strpbrk(PLT)
	subs	r3, r0, #0
	mov	r0, r7
	strbne	r5, [r3]
	bl	skipWhiteSpaces(PLT)
	ldrb	r3, [r0]	@ zero_extendqisi2
	mov	r5, r0
	cmp	r3, #0
	beq	.L145
	cmp	r3, #91
	beq	.L184
	mov	r1, #61
	bl	strchr(PLT)
	cmp	r0, #0
	beq	.L185
	mov	r6, r0
	mov	r3, #0
	strb	r3, [r6], #1
	mov	r0, r5
	bl	stripWhiteSpaces(PLT)
	mov	r0, r6
	bl	skipWhiteSpaces(PLT)
	mov	r3, #2
	mov	r7, r0
	mov	r2, r5
	add	r1, sp, #44
	mov	r0, r8
	bl	GetElementDesc(PLT)
	subs	r6, r0, #0
	beq	.L162
	mvn	r3, #1024
	cmp	r6, r3
	bne	.L140
	str	r5, [sp, #12]
	mov	r0, #69
	str	r6, [sp]
	add	r7, r4, #16
	ldr	r3, [r4, #8]
	ldr	r1, .L195+16
	ldr	r2, [sp, #32]
	str	r3, [sp, #8]
	ldr	r3, .L195+20
.LPIC154:
	add	r1, pc, r1
.LPIC155:
	add	r3, pc, r3
	str	r3, [sp, #4]
	movw	r3, #489
	bl	siFormattedMessage_SC(PLT)
	ldr	r0, [r4, #4]
	bl	feof(PLT)
	subs	r5, r0, #0
	beq	.L166
.L140:
	ldr	r3, [r4, #12]
	ldr	r2, .L195+24
	sub	r3, r3, #1
	str	r3, [r4, #12]
.LPIC156:
	add	r2, pc, r2
	ldr	r3, .L195+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #52]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L186
	mov	r0, r6
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L184:
	ldr	r1, .L195+28
	add	r10, r0, #1
	mov	r3, #0
	mov	r0, r10
	str	r3, [sp, #48]
.LPIC123:
	add	r1, pc, r1
	bl	strcspn(PLT)
	subs	r9, r0, #0
	beq	.L187
.L147:
	ldrb	r3, [r5, #1]	@ zero_extendqisi2
	cmp	r3, #47
	add	r3, r10, r9
	beq	.L188
	mov	r3, #0
	mov	r2, r10
	strb	r3, [r10, r9]
	add	r1, sp, #48
	mov	r3, #1
	mov	r0, r8
	bl	GetElementDesc(PLT)
	subs	r6, r0, #0
	mov	r3, #93
	strb	r3, [r10, r9]
	beq	.L156
	mvn	r3, #1024
	cmp	r6, r3
	bne	.L140
	str	r10, [sp, #12]
	mov	r0, #69
	str	r6, [sp]
	ldr	r3, [r4, #8]
	ldr	r2, .L195+32
	ldr	r1, .L195+36
	str	r3, [sp, #8]
	ldr	r3, .L195+40
.LPIC140:
	add	r2, pc, r2
.LPIC141:
	add	r1, pc, r1
.LPIC142:
	add	r3, pc, r3
	str	r3, [sp, #4]
	movw	r3, #421
	bl	siFormattedMessage_SC(PLT)
	b	.L141
.L162:
	ldr	r5, [sp, #44]
	ldr	r3, [r5, #12]
	ldr	r2, [r5, #16]
	add	r1, r3, #1
	cmp	r1, r2
	bhi	.L189
	ldr	r2, [r5, #28]
	mov	r0, r5
	ldr	r1, [r5, #20]
	mla	r1, r1, r3, r2
	ldr	r3, [r5, #48]
	mov	r2, r7
	ldr	r3, [r3]
	blx	r3
	subs	r6, r0, #0
	bne	.L190
	ldr	r3, [r5, #12]
	add	r3, r3, #1
	str	r3, [r5, #12]
	b	.L141
.L185:
	str	r7, [sp, #12]
	mov	r0, #87
	ldr	r3, [r4, #8]
	ldr	r2, .L195+44
	ldr	r1, .L195+48
	str	r3, [sp, #8]
	ldr	r3, .L195+52
.LPIC143:
	add	r2, pc, r2
.LPIC144:
	add	r1, pc, r1
.LPIC145:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, .L195+56
.LPIC146:
	add	r3, pc, r3
	str	r3, [sp]
	movw	r3, #443
	bl	siFormattedMessage_M2(PLT)
	b	.L141
.L187:
	str	r7, [sp, #12]
	mov	r0, #76
	str	r6, [sp]
	ldr	r3, [r4, #8]
	ldr	r2, .L195+60
	ldr	r1, .L195+64
	str	r3, [sp, #8]
	ldr	r3, .L195+68
.LPIC124:
	add	r2, pc, r2
.LPIC125:
	add	r1, pc, r1
.LPIC126:
	add	r3, pc, r3
	str	r3, [sp, #4]
	movw	r3, #339
	bl	siFormattedMessage_SC(PLT)
	b	.L147
.L156:
	ldr	r3, [sp, #28]
	ldr	r1, [sp, #48]
	cmp	r3, #0
	mvn	r3, #0
	str	r3, [r1, #40]
	bne	.L191
	ldr	r2, [sp, #28]
.L158:
	mov	r0, r4
	bl	ParseCfgFile_sub(PLT)
	subs	r6, r0, #0
	beq	.L141
	ldr	r1, .L195+72
	movw	r3, #417
	ldr	r0, .L195+76
	ldr	r2, .L195+80
.LPIC139:
	add	r1, pc, r1
	str	r6, [sp]
	str	r1, [sp, #4]
.LPIC138:
	add	r0, pc, r0
	ldr	r1, .L195+84
.LPIC136:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC137:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L140
.L191:
	ldr	r2, [r1, #8]
	subs	r2, r2, #0
	movne	r2, #1
	b	.L158
.L183:
	ldr	r1, .L195+88
	mvn	r6, #256
	ldr	r2, .L195+92
	movw	r3, #306
	str	r6, [sp]
	mov	r0, #69
.LPIC120:
	add	r1, pc, r1
.LPIC121:
	add	r2, pc, r2
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r1, .L195+96
	ldr	r2, .L195+100
.LPIC119:
	add	r1, pc, r1
.LPIC118:
	add	r2, pc, r2
	bl	siFormattedMessage_SC(PLT)
	b	.L140
.L188:
	mov	r2, #0
	add	r5, r5, #2
	strb	r2, [r3]
	mov	r0, r5
	ldr	r7, [r8, #4]
	mov	r1, r7
	bl	strcmp(PLT)
	cmp	r0, #0
	bne	.L192
	ldr	r2, [r8, #12]
	ldr	r3, [r8, #28]
	cmp	r2, #0
	sub	r2, r2, #1
	str	r3, [sp, #44]
	bne	.L155
	b	.L150
.L194:
	cmp	r1, #2
	bne	.L151
	ldrd	r0, [r3, #8]
	cmp	r0, r1
	bhi	.L193
.L151:
	sub	r2, r2, #1
	add	r3, r3, #56
	cmn	r2, #1
	beq	.L150
.L155:
	ldr	r1, [r3, #16]
	cmp	r1, #0
	beq	.L151
	ldr	r1, [r3]
	cmp	r1, #1
	bne	.L194
	ldr	r0, [r3, #8]
	ldr	r1, [r3, #40]
	cmp	r0, r1
	bls	.L151
	ldr	r2, [sp, #36]
	mvn	r6, #3840
	str	r7, [sp, #16]
	mov	r0, #87
	str	r2, [sp, #12]
	ldr	r2, .L195+104
	ldr	r1, [r3, #4]
	movw	r3, #379
	str	r6, [sp]
.LPIC132:
	add	r2, pc, r2
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r1, .L195+108
	ldr	r2, .L195+112
.LPIC131:
	add	r1, pc, r1
.LPIC130:
	add	r2, pc, r2
	bl	siFormattedMessage_SC(PLT)
	b	.L140
.L192:
	ldr	r2, .L195+116
	mvn	r6, #3840
	ldr	r3, [sp, #36]
	mov	r0, #87
	ldr	r1, .L195+120
.LPIC129:
	add	r2, pc, r2
	str	r5, [sp, #16]
	stmib	sp, {r2, r7}
	ldr	r2, .L195+124
.LPIC128:
	add	r1, pc, r1
	str	r3, [sp, #12]
	mov	r3, #356
	str	r6, [sp]
.LPIC127:
	add	r2, pc, r2
	bl	siFormattedMessage_SC(PLT)
.L150:
	mov	r3, #0
	strb	r3, [r4, #16]
	b	.L140
.L189:
	ldr	r0, .L195+128
	ldr	r3, [r4, #8]
	ldr	r2, .L195+132
	ldr	r1, .L195+136
.LPIC149:
	add	r0, pc, r0
	str	r3, [sp, #12]
	movw	r3, #463
	str	r0, [sp, #4]
.LPIC147:
	add	r2, pc, r2
.LPIC148:
	add	r1, pc, r1
	str	r7, [sp, #8]
	str	r6, [sp]
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L140
.L190:
	ldr	r0, .L195+140
	ldr	r3, [r4, #8]
	ldr	r2, .L195+144
	ldr	r1, .L195+148
.LPIC152:
	add	r0, pc, r0
	str	r3, [sp, #8]
	movw	r3, #479
	str	r0, [sp, #4]
.LPIC150:
	add	r2, pc, r2
.LPIC151:
	add	r1, pc, r1
	str	r7, [sp, #12]
	str	r6, [sp]
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L140
.L193:
	ldr	r2, [sp, #36]
	mvn	r6, #3840
	str	r7, [sp, #16]
	mov	r0, #87
	str	r2, [sp, #12]
	ldr	r2, .L195+152
	ldr	r1, [r3, #4]
	mov	r3, #392
	str	r6, [sp]
.LPIC135:
	add	r2, pc, r2
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r1, .L195+156
	ldr	r2, .L195+160
.LPIC134:
	add	r1, pc, r1
.LPIC133:
	add	r2, pc, r2
	bl	siFormattedMessage_SC(PLT)
	b	.L140
.L186:
	bl	__stack_chk_fail(PLT)
.L196:
	.align	2
.L195:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC157+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC33-(.LPIC122+8)
	.word	.LC32-(.LPIC153+8)
	.word	.LC6-(.LPIC154+8)
	.word	.LC45-(.LPIC155+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC156+8)
	.word	.LC34-(.LPIC123+8)
	.word	.LC32-(.LPIC140+8)
	.word	.LC6-(.LPIC141+8)
	.word	.LC40-(.LPIC142+8)
	.word	.LC32-(.LPIC143+8)
	.word	.LC6-(.LPIC144+8)
	.word	.LC41-(.LPIC145+8)
	.word	.LC42-(.LPIC146+8)
	.word	.LC32-(.LPIC124+8)
	.word	.LC6-(.LPIC125+8)
	.word	.LC35-(.LPIC126+8)
	.word	.LC8-(.LPIC139+8)
	.word	.LC39-(.LPIC138+8)
	.word	.LC11-(.LPIC136+8)
	.word	.LC6-(.LPIC137+8)
	.word	.LC7-(.LPIC120+8)
	.word	.LC8-(.LPIC121+8)
	.word	.LC6-(.LPIC119+8)
	.word	.LC32-(.LPIC118+8)
	.word	.LC37-(.LPIC132+8)
	.word	.LC6-(.LPIC131+8)
	.word	.LC32-(.LPIC130+8)
	.word	.LC36-(.LPIC129+8)
	.word	.LC6-(.LPIC128+8)
	.word	.LC32-(.LPIC127+8)
	.word	.LC43-(.LPIC149+8)
	.word	.LC32-(.LPIC147+8)
	.word	.LC6-(.LPIC148+8)
	.word	.LC44-(.LPIC152+8)
	.word	.LC32-(.LPIC150+8)
	.word	.LC6-(.LPIC151+8)
	.word	.LC38-(.LPIC135+8)
	.word	.LC6-(.LPIC134+8)
	.word	.LC32-(.LPIC133+8)
	.size	ParseCfgFile_sub, .-ParseCfgFile_sub
	.section	.rodata.str1.4
	.align	2
.LC46:
	.ascii	"_ParseCfgFile\000"
	.align	2
.LC47:
	.ascii	"(pcszCfgFileName==NULL)\000"
	.align	2
.LC48:
	.ascii	"r\000"
	.align	2
.LC49:
	.ascii	"(CCtxt.pCfgFile==NULL)\000"
	.align	2
.LC50:
	.ascii	"DummyMasterNode\000"
	.align	2
.LC51:
	.ascii	"ParseCfgFile_sub(&CCtxt, &DummyBDesc, BLOCK_REQUIRE"
	.ascii	"D)\000"
	.text
	.align	2
	.global	ParseCfgFile
	.syntax unified
	.arm
	.fpu vfpv3
	.type	ParseCfgFile, %function
ParseCfgFile:
	@ args = 0, pretend = 0, frame = 2128
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, r2
	ldr	r2, .L219
	sub	sp, sp, #2144
	add	r10, sp, #16
	mov	r8, #56
	ldr	r3, .L219+4
	mov	r4, r0
.LPIC182:
	add	r2, pc, r2
	mov	r6, r1
	mov	r0, r10
	mov	r1, #0
	ldr	r3, [r2, r3]
	mov	r2, r8
	add	r7, sp, #80
	sub	r9, r7, #8
	ldr	r3, [r3]
	str	r3, [sp, #2140]
	mov	r3, #0
	bl	memset(PLT)
	ldr	r1, .L219+8
	mov	r2, #2064
	mov	r0, r9
.LPIC158:
	add	r1, pc, r1
	add	r1, r1, #12
	bl	memcpy(PLT)
	cmp	r4, #0
	beq	.L213
	cmp	r6, #0
	beq	.L214
	cmp	r5, #0
	beq	.L215
	ldr	r1, .L219+12
	mov	r0, r4
	str	r4, [sp, #72]
.LPIC171:
	add	r1, pc, r1
	bl	fopen(PLT)
	cmp	r0, #0
	str	r0, [sp, #76]
	beq	.L216
	ldr	r3, .L219+16
	mov	r4, #0
	str	r5, [sp, #28]
	mov	r1, r10
	str	r5, [sp, #32]
	mov	r0, r9
.LPIC176:
	add	r3, pc, r3
	mvn	r2, #0
	str	r3, [sp, #20]
	mov	r5, #0
	mov	r3, #1
	strd	r4, [r7]
	str	r6, [sp, #44]
	str	r8, [sp, #36]
	str	r3, [sp, #16]
	bl	ParseCfgFile_sub(PLT)
	subs	r4, r0, #0
	bne	.L217
.L199:
	ldr	r0, [sp, #76]
	cmp	r0, #0
	beq	.L197
	bl	fclose(PLT)
.L197:
	ldr	r2, .L219+20
	ldr	r3, .L219+4
.LPIC181:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #2140]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L218
	mov	r0, r4
	add	sp, sp, #2144
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L217:
	ldr	ip, .L219+24
	movw	r3, #551
	ldr	r0, .L219+28
	ldr	r2, .L219+32
	ldr	r1, .L219+36
.LPIC179:
	add	ip, pc, ip
.LPIC180:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC177:
	add	r2, pc, r2
.LPIC178:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L199
.L215:
	ldr	ip, .L219+40
	mvn	r4, #256
	ldr	r0, .L219+44
	movw	r3, #529
	ldr	r2, .L219+48
	ldr	r1, .L219+52
.LPIC169:
	add	ip, pc, ip
.LPIC170:
	add	r0, pc, r0
.LPIC167:
	add	r2, pc, r2
.LPIC168:
	add	r1, pc, r1
.L212:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	b	.L199
.L216:
	ldr	ip, .L219+56
	mvn	r4, #1280
	ldr	r0, .L219+60
	movw	r3, #537
	ldr	r2, .L219+64
	ldr	r1, .L219+68
.LPIC174:
	add	ip, pc, ip
.LPIC175:
	add	r0, pc, r0
.LPIC172:
	add	r2, pc, r2
.LPIC173:
	add	r1, pc, r1
	b	.L212
.L213:
	ldr	ip, .L219+72
	mvn	r4, #256
	ldr	r0, .L219+76
	movw	r3, #519
	ldr	r2, .L219+80
	ldr	r1, .L219+84
.LPIC161:
	add	ip, pc, ip
.LPIC162:
	add	r0, pc, r0
.LPIC159:
	add	r2, pc, r2
.LPIC160:
	add	r1, pc, r1
	b	.L212
.L214:
	ldr	ip, .L219+88
	mvn	r4, #256
	ldr	r0, .L219+92
	mov	r3, #524
	ldr	r2, .L219+96
	ldr	r1, .L219+100
.LPIC165:
	add	ip, pc, ip
.LPIC166:
	add	r0, pc, r0
.LPIC163:
	add	r2, pc, r2
.LPIC164:
	add	r1, pc, r1
	b	.L212
.L218:
	bl	__stack_chk_fail(PLT)
.L220:
	.align	2
.L219:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC182+8)
	.word	__stack_chk_guard(GOT)
	.word	.LANCHOR1-(.LPIC158+8)
	.word	.LC48-(.LPIC171+8)
	.word	.LC50-(.LPIC176+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC181+8)
	.word	.LC51-(.LPIC179+8)
	.word	.LC8-(.LPIC180+8)
	.word	.LC11-(.LPIC177+8)
	.word	.LC6-(.LPIC178+8)
	.word	.LC9-(.LPIC169+8)
	.word	.LC8-(.LPIC170+8)
	.word	.LC46-(.LPIC167+8)
	.word	.LC6-(.LPIC168+8)
	.word	.LC49-(.LPIC174+8)
	.word	.LC8-(.LPIC175+8)
	.word	.LC46-(.LPIC172+8)
	.word	.LC6-(.LPIC173+8)
	.word	.LC47-(.LPIC161+8)
	.word	.LC8-(.LPIC162+8)
	.word	.LC46-(.LPIC159+8)
	.word	.LC6-(.LPIC160+8)
	.word	.LC7-(.LPIC165+8)
	.word	.LC8-(.LPIC166+8)
	.word	.LC46-(.LPIC163+8)
	.word	.LC6-(.LPIC164+8)
	.size	ParseCfgFile, .-ParseCfgFile
	.global	szComment2
	.global	szComment
	.section	.rodata
	.align	2
	.set	.LANCHOR1,. + 0
	.type	szComment, %object
	.size	szComment, 3
szComment:
	.ascii	"##\000"
	.space	1
	.type	szComment2, %object
	.size	szComment2, 5
szComment2:
	.ascii	"##  \000"
	.space	3
.LC0:
	.word	0
	.word	0
	.word	0
	.word	0
	.ascii	"\000\000"
	.space	2046
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	BlockOpen, %object
	.size	BlockOpen, 6
BlockOpen:
	.ascii	"[%s]\012\000"
	.space	2
	.type	BlockClose, %object
	.size	BlockClose, 7
BlockClose:
	.ascii	"[/%s]\012\000"
	.space	1
	.type	ElementHeader, %object
	.size	ElementHeader, 106
ElementHeader:
	.ascii	"#################################################\012"
	.ascii	"  %s\012###########################################"
	.ascii	"######\012\000"
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
