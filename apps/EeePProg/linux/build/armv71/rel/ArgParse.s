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
	.file	"ArgParse.c"
	.text
	.align	2
	.global	StringArg
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	StringArg, %function
StringArg:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r0, r2
	mov	r4, r1
	bl	strdup(PLT)
	str	r0, [r4]
	mov	r0, #0
	pop	{r4, pc}
	.size	StringArg, .-StringArg
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"TB \000"
	.align	2
.LC1:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux/../ArgParse.c\000"
	.align	2
.LC2:
	.ascii	"ParseAsciiEquEx_VA(cszArg, &SizeMacroDesc, pvalue, "
	.ascii	"(signed int)pArgs->stValueSize)\000"
	.align	2
.LC3:
	.ascii	"%s\012\000"
	.text
	.align	2
	.global	SizeArg
	.syntax unified
	.arm
	.fpu vfpv3
	.type	SizeArg, %function
SizeArg:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, r1
	ldr	r1, .L11
	mov	r3, r0
	push	{r4, lr}
	mov	r0, r2
	ldr	r3, [r3, #4]
	sub	sp, sp, #16
.LPIC0:
	add	r1, pc, r1
	mov	r2, ip
	bl	ParseAsciiEquEx_VA(PLT)
	subs	r4, r0, #0
	bne	.L10
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L10:
.L5:
	ldr	ip, .L11+4
	mov	r3, #67
	ldr	r0, .L11+8
	ldr	r2, .L11+12
	ldr	r1, .L11+16
.LPIC3:
	add	ip, pc, ip
.LPIC4:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC1:
	add	r2, pc, r2
.LPIC2:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L12:
	.align	2
.L11:
	.word	.LANCHOR0-(.LPIC0+8)
	.word	.LC2-(.LPIC3+8)
	.word	.LC3-(.LPIC4+8)
	.word	.LC0-(.LPIC1+8)
	.word	.LC1-(.LPIC2+8)
	.size	SizeArg, .-SizeArg
	.section	.rodata.str1.4
	.align	2
.LC4:
	.ascii	"ParseAsciiEqu_VA(cszArg, pvalue, (signed int)pArgs-"
	.ascii	">stValueSize)\000"
	.text
	.align	2
	.global	NumberArg
	.syntax unified
	.arm
	.fpu vfpv3
	.type	NumberArg, %function
NumberArg:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, r0
	push	{r4, lr}
	mov	r0, r2
	sub	sp, sp, #16
	ldr	r2, [r3, #4]
	bl	ParseAsciiEqu_VA(PLT)
	subs	r4, r0, #0
	bne	.L19
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L19:
.L14:
	ldr	ip, .L20
	mov	r3, #82
	ldr	r0, .L20+4
	ldr	r2, .L20+8
	ldr	r1, .L20+12
.LPIC7:
	add	ip, pc, ip
.LPIC8:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC5:
	add	r2, pc, r2
.LPIC6:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L21:
	.align	2
.L20:
	.word	.LC4-(.LPIC7+8)
	.word	.LC3-(.LPIC8+8)
	.word	.LC0-(.LPIC5+8)
	.word	.LC1-(.LPIC6+8)
	.size	NumberArg, .-NumberArg
	.section	.rodata.str1.4
	.align	2
.LC5:
	.ascii	"| -%c \000"
	.align	2
.LC6:
	.ascii	"|  %c \000"
	.align	2
.LC7:
	.ascii	"--%-*s \000"
	.align	2
.LC8:
	.ascii	"\000"
	.align	2
.LC9:
	.ascii	"  %-*s \000"
	.align	2
.LC10:
	.ascii	"|\000"
	.align	2
.LC11:
	.ascii	" |\012\000"
	.align	2
.LC12:
	.ascii	"|%*s%s%lu \000"
	.align	2
.LC13:
	.ascii	"Arg\000"
	.align	2
.LC14:
	.ascii	"|%*s|\012\000"
	.text
	.align	2
	.global	PrintUsage
	.syntax unified
	.arm
	.fpu vfpv3
	.type	PrintUsage, %function
PrintUsage:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r3, r0
	mov	r6, r0
	ldr	r0, .L43
	mov	fp, r2
	sub	sp, sp, #28
	mov	r2, #240
	mov	r7, r1
.LPIC9:
	add	r0, pc, r0
	mov	r1, #1
	bl	fwrite(PLT)
	cmp	fp, #0
	beq	.L32
	ldr	r3, .L43+4
	sub	fp, fp, #1
	add	r7, r7, #68
.LPIC12:
	add	r3, pc, r3
	str	r3, [sp, #12]
	ldr	r3, .L43+8
.LPIC11:
	add	r3, pc, r3
	str	r3, [sp, #16]
	ldr	r3, .L43+12
.LPIC14:
	add	r3, pc, r3
	str	r3, [sp, #20]
.L31:
	ldrb	r2, [r7, #-68]	@ zero_extendqisi2
	mov	r0, r6
	pld	[r7]
	cmp	r2, #0
	ldrne	r1, [sp, #16]
	moveq	r2, #32
	ldreq	r1, [sp, #12]
	bl	fprintf(PLT)
	ldr	r3, [r7, #-64]
	cmp	r3, #0
	beq	.L26
	ldr	r1, .L43+16
	mov	r2, #25
	mov	r0, r6
.LPIC13:
	add	r1, pc, r1
	bl	fprintf(PLT)
.L27:
	ldr	ip, .L43+20
	mvn	lr, #32
	ldr	r3, .L43+24
	mov	r2, #44
	ldr	r1, [r7, #-56]
	mov	r0, r6
.LPIC17:
	add	ip, pc, ip
	str	lr, [sp]
.LPIC16:
	add	r3, pc, r3
	str	ip, [sp, #4]
	bl	PrintStringBlock(PLT)
	ldr	r3, [r7, #-48]
	ldr	r4, [r7, #-52]
	cmp	r3, #0
	beq	.L28
	ldr	r10, .L43+28
	add	r4, r4, #104
	ldr	r9, .L43+32
	mov	r5, #0
	ldr	r8, .L43+36
.LPIC18:
	add	r10, pc, r10
.LPIC19:
	add	r9, pc, r9
.LPIC20:
	add	r8, pc, r8
.L29:
	mov	r3, r10
	mov	r2, #33
	mov	r1, r9
	str	r5, [sp, #4]
	mov	r0, r6
	str	r8, [sp]
	pld	[r4]
	add	r5, r5, #1
	bl	fprintf(PLT)
	ldr	r3, .L43+40
	mov	r2, #38
	ldr	r1, [r4, #-96]
	mov	r0, r6
	add	r4, r4, #16
.LPIC22:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #38
	str	r3, [sp]
	ldr	r3, .L43+44
.LPIC21:
	add	r3, pc, r3
	bl	PrintStringBlock(PLT)
	ldr	r3, [r7, #-48]
	cmp	r3, r5
	bhi	.L29
	ldr	r4, [r7, #-52]
.L28:
	cmp	r4, #0
	beq	.L30
	ldr	r3, .L43+48
	mov	r2, #77
	ldr	r1, .L43+52
	mov	r0, r6
.LPIC23:
	add	r3, pc, r3
.LPIC24:
	add	r1, pc, r1
	bl	fprintf(PLT)
.L30:
	sub	fp, fp, #1
	add	r7, r7, #32
	cmn	fp, #1
	bne	.L31
.L32:
	ldr	r0, .L43+56
	mov	r3, r6
	mov	r2, #80
	mov	r1, #1
.LPIC10:
	add	r0, pc, r0
	add	r0, r0, #244
	bl	fwrite(PLT)
	mov	r0, #0
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L26:
	ldr	r1, .L43+60
	mov	r2, #25
	ldr	r3, [sp, #20]
	mov	r0, r6
.LPIC15:
	add	r1, pc, r1
	bl	fprintf(PLT)
	b	.L27
.L44:
	.align	2
.L43:
	.word	.LANCHOR1-(.LPIC9+8)
	.word	.LC6-(.LPIC12+8)
	.word	.LC5-(.LPIC11+8)
	.word	.LC8-(.LPIC14+8)
	.word	.LC7-(.LPIC13+8)
	.word	.LC11-(.LPIC17+8)
	.word	.LC10-(.LPIC16+8)
	.word	.LC8-(.LPIC18+8)
	.word	.LC12-(.LPIC19+8)
	.word	.LC13-(.LPIC20+8)
	.word	.LC11-(.LPIC22+8)
	.word	.LC10-(.LPIC21+8)
	.word	.LC8-(.LPIC23+8)
	.word	.LC14-(.LPIC24+8)
	.word	.LANCHOR1-(.LPIC10+8)
	.word	.LC9-(.LPIC15+8)
	.size	PrintUsage, .-PrintUsage
	.align	2
	.global	ParseArgsBuffer
	.syntax unified
	.arm
	.fpu vfpv3
	.type	ParseArgsBuffer, %function
ParseArgsBuffer:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r8, r3
	ldr	r6, [sp, #32]
	mov	r4, r0
	mov	r7, r1
	mov	r5, r2
	mov	r9, #0
	str	r9, [r3]
	str	r9, [r6]
.L46:
	ldrb	r3, [r4]	@ zero_extendqisi2
	sub	r2, r3, #9
	cmp	r3, #32
	cmpne	r2, #1
	addls	r4, r4, #1
	bls	.L46
	cmp	r3, #0
	beq	.L48
	ldr	r3, [r8]
	cmp	r7, #0
	strne	r5, [r7], #4
	add	r3, r3, #1
	str	r3, [r8]
	ldrb	r3, [r4]	@ zero_extendqisi2
	ldr	r0, [r6]
	cmp	r3, #92
	bne	.L50
.L99:
	add	r3, r4, #1
	mov	r2, #0
.L51:
	ldrb	r1, [r3]	@ zero_extendqisi2
	mov	r4, r3
	add	r2, r2, #1
	add	r3, r3, #1
	cmp	r1, #92
	beq	.L51
	cmp	r1, #34
	beq	.L98
	cmp	r5, #0
	add	r0, r0, r2
	mov	r10, #1
	str	r0, [r6]
	bne	.L66
.L55:
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #10
	cmpne	r3, #0
	beq	.L56
.L100:
	cmp	r9, #0
	bne	.L57
	cmp	r3, #9
	cmpne	r3, #32
	beq	.L56
.L57:
	cmp	r10, #0
	bne	.L95
	ldr	r0, [r6]
.L58:
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	add	r4, r4, #1
	cmp	r3, #92
	beq	.L99
.L50:
	cmp	r3, #34
	mov	r2, #0
	bne	.L67
.L64:
	cmp	r9, #0
	beq	.L54
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	cmp	r3, #34
	addeq	r4, r4, #1
	moveq	r10, r9
	beq	.L65
.L54:
	eor	r9, r9, #1
	mov	r10, #0
	b	.L65
.L95:
	cmp	r5, #0
	strbne	r3, [r5], #1
	ldr	r0, [r6]
	add	r0, r0, #1
	str	r0, [r6]
	b	.L58
.L98:
	and	r3, r2, #1
	asr	r2, r2, #1
	cmp	r3, #0
	beq	.L64
.L67:
	mov	r10, #1
.L65:
	cmp	r5, #0
	add	r0, r0, r2
	str	r0, [r6]
	beq	.L55
	cmp	r2, #0
	beq	.L55
.L66:
	mov	r0, r5
	mov	r1, #92
	add	r5, r5, r2
	bl	memset(PLT)
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #10
	cmpne	r3, #0
	bne	.L100
.L56:
	cmp	r5, #0
	movne	r3, #0
	strbne	r3, [r5], #1
	ldr	r3, [r6]
	add	r3, r3, #1
	str	r3, [r6]
	b	.L46
.L48:
	cmp	r7, #0
	mov	r0, #0
	strne	r3, [r7]
	ldr	r3, [r8]
	add	r3, r3, #1
	str	r3, [r8]
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
	.size	ParseArgsBuffer, .-ParseArgsBuffer
	.section	.rodata.str1.4
	.align	2
.LC15:
	.ascii	"ParseArgsBuffer(szCmdLine, NULL, NULL, psiArgc, &si"
	.ascii	"CharCnt)\000"
	.align	2
.LC16:
	.ascii	"CreateArgvArgcBuffer\000"
	.align	2
.LC17:
	.ascii	"(*pszArgv==NULL)\000"
	.text
	.align	2
	.global	CreateArgvArgcBuffer
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CreateArgvArgcBuffer, %function
CreateArgvArgcBuffer:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, r2
	ldr	r2, .L110
	sub	sp, sp, #24
	add	r7, sp, #16
	mov	r8, r1
	ldr	r3, .L110+4
	mov	r6, r0
.LPIC34:
	add	r2, pc, r2
	str	r7, [sp]
	ldr	r3, [r2, r3]
	mov	r2, #0
	mov	r1, r2
	ldr	r3, [r3]
	str	r3, [sp, #20]
	mov	r3, #0
	mov	r3, r5
	bl	ParseArgsBuffer(PLT)
	subs	r4, r0, #0
	bne	.L107
	ldr	r0, [r5]
	ldr	r3, [sp, #16]
	add	r0, r3, r0, lsl #2
	bl	malloc(PLT)
	cmp	r0, #0
	mov	r1, r0
	str	r0, [r8]
	beq	.L108
	ldr	ip, [r5]
	mov	r0, r6
	str	r7, [sp]
	mov	r3, r5
	sub	ip, ip, #1
	add	r2, r1, ip, lsl #2
	str	ip, [r5]
	bl	ParseArgsBuffer(PLT)
	mov	r4, r0
.L103:
.L101:
	ldr	r2, .L110+8
	ldr	r3, .L110+4
.LPIC33:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #20]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L109
	mov	r0, r4
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L107:
	ldr	ip, .L110+12
	mov	r3, #234
	ldr	r0, .L110+16
	ldr	r2, .L110+20
	ldr	r1, .L110+24
.LPIC27:
	add	ip, pc, ip
.LPIC28:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC25:
	add	r2, pc, r2
.LPIC26:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L101
.L109:
	bl	__stack_chk_fail(PLT)
.L108:
	ldr	ip, .L110+28
	mvn	r4, #2
	ldr	r0, .L110+32
	mov	r3, #236
	ldr	r2, .L110+36
	ldr	r1, .L110+40
.LPIC31:
	add	ip, pc, ip
.LPIC32:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC29:
	add	r2, pc, r2
.LPIC30:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L101
.L111:
	.align	2
.L110:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC34+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC33+8)
	.word	.LC15-(.LPIC27+8)
	.word	.LC3-(.LPIC28+8)
	.word	.LC0-(.LPIC25+8)
	.word	.LC1-(.LPIC26+8)
	.word	.LC17-(.LPIC31+8)
	.word	.LC3-(.LPIC32+8)
	.word	.LC16-(.LPIC29+8)
	.word	.LC1-(.LPIC30+8)
	.size	CreateArgvArgcBuffer, .-CreateArgvArgcBuffer
	.section	.rodata.str1.4
	.align	2
.LC18:
	.ascii	"ERROR: Missing Required Argument (%s)\012\000"
	.align	2
.LC19:
	.ascii	"pArgDesc->Handle(pArgDesc, pArgDesc->pValue, **ppsz"
	.ascii	"Argv)\000"
	.text
	.align	2
	.global	ParseSubArgs
	.syntax unified
	.arm
	.fpu vfpv3
	.type	ParseSubArgs, %function
ParseSubArgs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	push	{r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #16
	beq	.L113
	mov	r7, r0
	mov	r8, r1
	sub	r6, r2, #1
	add	r4, r3, #108
	b	.L117
.L114:
	ldr	r3, [r8]
	add	r4, r4, #16
	ldr	r5, [r4, #-112]
	add	r1, r3, #4
	ldr	r2, [r3, #4]
	str	r1, [r8]
	ldr	r1, [r4, #-124]
	blx	r5
	subs	r5, r0, #0
	bne	.L123
	cmn	r6, #1
	beq	.L113
.L117:
	ldr	r3, [r7]
	sub	r6, r6, #1
	pld	[r4]
	sub	r0, r4, #108
	cmp	r3, #0
	sub	r3, r3, #1
	str	r3, [r7]
	bne	.L114
	ldr	r1, [r0, #8]
	mvn	r5, #3840
	ldr	r0, .L124
.LPIC35:
	add	r0, pc, r0
	bl	printf(PLT)
	mov	r0, r5
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L113:
	mov	r5, #0
	mov	r0, r5
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L123:
	ldr	ip, .L124+4
	movw	r3, #309
	ldr	r0, .L124+8
	ldr	r2, .L124+12
	ldr	r1, .L124+16
.LPIC38:
	add	ip, pc, ip
.LPIC39:
	add	r0, pc, r0
	str	r5, [sp]
	stmib	sp, {r0, ip}
.LPIC36:
	add	r2, pc, r2
.LPIC37:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r5
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L125:
	.align	2
.L124:
	.word	.LC18-(.LPIC35+8)
	.word	.LC19-(.LPIC38+8)
	.word	.LC3-(.LPIC39+8)
	.word	.LC0-(.LPIC36+8)
	.word	.LC1-(.LPIC37+8)
	.size	ParseSubArgs, .-ParseSubArgs
	.section	.rodata.str1.4
	.align	2
.LC20:
	.ascii	"ParseArgsFile(szCurOption, pCmdDesc, stArgDescCnt)\000"
	.align	2
.LC21:
	.ascii	"ParseSubArgs(&siArgc, &pszCurArg, pCurArgDesc->stAr"
	.ascii	"gs, pCurArgDesc->pArgs)\000"
	.align	2
.LC22:
	.ascii	"pCurArgDesc->handler(pCurArgDesc->pArgData)\000"
	.align	2
.LC23:
	.ascii	"ERROR: Unknown Arg [%c] in (%s)\012\000"
	.align	2
.LC24:
	.ascii	"ERROR: Unknown Arg (%s)\012\000"
	.text
	.align	2
	.global	ParseArgs
	.syntax unified
	.arm
	.fpu vfpv3
	.type	ParseArgs, %function
ParseArgs:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #44
	str	r2, [sp, #24]
	str	r3, [sp, #20]
	beq	.L128
	mov	r3, #0
	sub	r4, r0, #1
	str	r3, [sp, #16]
	mov	fp, r1
	ldr	r3, .L208
	mov	r9, r4
.LPIC71:
	add	r3, pc, r3
	str	r3, [sp, #36]
	ldr	r3, .L208+4
.LPIC70:
	add	r3, pc, r3
	str	r3, [sp, #32]
	b	.L127
.L130:
	ldr	r3, [sp, #16]
	mov	r1, r6
	ldr	r0, [sp, #36]
	mov	r6, r9
	add	r3, r3, #1
	str	r3, [sp, #16]
	bl	printf(PLT)
.L131:
	cmp	r6, #0
	add	fp, fp, #4
	sub	r9, r6, #1
	beq	.L158
.L127:
	ldr	r6, [fp]
	cmp	r6, #0
	beq	.L158
	mov	r10, r6
	ldrb	r3, [r10], #1	@ zero_extendqisi2
	cmp	r3, #45
	beq	.L129
	cmp	r3, #64
	bne	.L130
	ldr	r2, [sp, #20]
	mov	r0, r10
	ldr	r1, [sp, #24]
	bl	ParseArgsFile(PLT)
	cmp	r0, #0
	bne	.L206
	mov	r6, r9
	add	fp, fp, #4
	cmp	r6, #0
	sub	r9, r6, #1
	bne	.L127
.L158:
.L132:
	ldr	r3, [sp, #16]
	cmp	r3, #0
	mvnne	r6, #256
	bne	.L126
.L128:
	mov	r6, #0
	mov	r0, r6
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L129:
	ldrb	r1, [r6, #1]	@ zero_extendqisi2
	cmp	r1, #45
	beq	.L133
	cmp	r1, #0
	beq	.L130
	ldr	r3, [sp, #20]
	mov	r6, r9
	sub	r3, r3, #1
	str	r3, [sp, #28]
.L134:
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L157
	ldr	r2, [sp, #28]
	ldr	r4, [sp, #24]
	b	.L155
.L145:
	cmn	r2, #1
	add	r4, r4, #32
	beq	.L157
.L155:
	ldrb	r3, [r4]	@ zero_extendqisi2
	sub	r2, r2, #1
	cmp	r3, r1
	bne	.L145
	ldr	r2, [r4, #8]
	ldr	r5, [r4, #16]
	cmp	r2, #0
	ldrne	r1, [r2]
	addne	r1, r1, #1
	strne	r1, [r2]
	ldr	r9, [r4, #20]
	cmp	r9, #0
	beq	.L147
	cmp	r6, #0
	sub	r7, r6, #1
	beq	.L148
	add	r8, fp, #4
	sub	r9, r6, r9
	b	.L150
.L152:
	cmp	r7, r9
	sub	r7, r7, #1
	beq	.L147
	cmp	r6, #0
	beq	.L148
.L150:
	ldr	r3, [r5, #12]
	mov	r0, r5
	ldr	r1, [r5]
	mov	fp, r8
	ldr	r2, [r8]
	mov	r6, r7
	pld	[r5, #124]
	add	r8, r8, #4
	blx	r3
	cmp	r0, #0
	add	r5, r5, #16
	beq	.L152
	mov	r6, r0
	ldr	ip, .L208+8
	ldr	r0, .L208+12
	movw	r3, #309
	ldr	r2, .L208+16
	ldr	r1, .L208+20
.LPIC60:
	add	ip, pc, ip
.LPIC61:
	add	r0, pc, r0
	str	r6, [sp]
	stmib	sp, {r0, ip}
.LPIC58:
	add	r2, pc, r2
.LPIC59:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
.L151:
	ldr	ip, .L208+24
	movw	r3, #379
	ldr	r0, .L208+28
	ldr	r2, .L208+32
	ldr	r1, .L208+36
.LPIC64:
	add	ip, pc, ip
.LPIC65:
	add	r0, pc, r0
.LPIC62:
	add	r2, pc, r2
.LPIC63:
	add	r1, pc, r1
.L205:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r6, [sp]
	bl	siFormattedMessage_SC(PLT)
.L126:
	mov	r0, r6
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L157:
	ldr	r3, [sp, #16]
	ldr	r2, [fp]
	ldr	r0, [sp, #32]
	add	r3, r3, #1
	str	r3, [sp, #16]
	bl	printf(PLT)
	mov	r2, #0
.L154:
	ldrb	r1, [r10, #1]!	@ zero_extendqisi2
	cmp	r1, #0
	bne	.L134
	cmp	r2, #0
	bne	.L131
	mov	r9, r6
	ldr	r6, [fp]
	b	.L130
.L147:
	ldr	r2, [r4, #28]
	cmp	r2, #0
	beq	.L165
	ldr	r0, [r4, #24]
	blx	r2
	cmp	r0, #0
	bne	.L207
.L165:
	mov	r2, #1
	b	.L154
.L148:
	ldr	r0, .L208+40
	mvn	r6, #3840
	ldr	r1, [r5, #8]
.LPIC57:
	add	r0, pc, r0
	bl	printf(PLT)
	b	.L151
.L133:
	ldr	r3, [sp, #20]
	add	r8, r6, #2
	cmp	r3, #0
	sub	r7, r3, #1
	beq	.L130
	ldr	r5, [sp, #24]
	b	.L144
.L135:
	cmn	r7, #1
	add	r5, r5, #32
	beq	.L130
.L144:
	ldr	r1, [r5, #4]
	mov	r0, r8
	sub	r7, r7, #1
	cmp	r1, #0
	beq	.L135
	bl	strcmp(PLT)
	cmp	r0, #0
	bne	.L135
	ldr	r3, [r5, #8]
	ldr	r7, [r5, #16]
	cmp	r3, #0
	ldrne	r2, [r3]
	addne	r2, r2, #1
	strne	r2, [r3]
	ldr	r3, [r5, #20]
	cmp	r3, #0
	beq	.L164
	cmp	r9, #0
	sub	r2, r9, #1
	beq	.L138
	sub	r9, r9, r3
	mov	r4, r2
	add	r8, fp, #4
	b	.L140
.L142:
	cmp	r4, r9
	sub	r4, r4, #1
	beq	.L137
	cmp	r6, #0
	beq	.L138
.L140:
	ldr	r3, [r7, #12]
	mov	r0, r7
	ldr	r1, [r7]
	mov	fp, r8
	ldr	r2, [r8]
	mov	r6, r4
	pld	[r7, #124]
	add	r8, r8, #4
	blx	r3
	cmp	r0, #0
	add	r7, r7, #16
	beq	.L142
	mov	r6, r0
	ldr	ip, .L208+44
	ldr	r0, .L208+48
	movw	r3, #309
	ldr	r2, .L208+52
	ldr	r1, .L208+56
.LPIC47:
	add	ip, pc, ip
.LPIC48:
	add	r0, pc, r0
	str	r6, [sp]
	stmib	sp, {r0, ip}
.LPIC45:
	add	r2, pc, r2
.LPIC46:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
.L141:
	ldr	ip, .L208+60
	movw	r3, #357
	ldr	r0, .L208+64
	ldr	r2, .L208+68
	ldr	r1, .L208+72
.LPIC51:
	add	ip, pc, ip
.LPIC52:
	add	r0, pc, r0
.LPIC49:
	add	r2, pc, r2
.LPIC50:
	add	r1, pc, r1
	b	.L205
.L164:
	mov	r6, r9
.L137:
	ldr	r2, [r5, #28]
	cmp	r2, #0
	beq	.L131
	ldr	r0, [r5, #24]
	blx	r2
	cmp	r0, #0
	beq	.L131
	ldr	ip, .L208+76
	mov	r6, r0
	ldr	r2, .L208+80
	mov	r3, #360
	ldr	r0, .L208+84
	ldr	r1, .L208+88
.LPIC55:
	add	ip, pc, ip
.LPIC53:
	add	r2, pc, r2
.LPIC56:
	add	r0, pc, r0
.LPIC54:
	add	r1, pc, r1
	b	.L205
.L207:
	ldr	ip, .L208+92
	mov	r6, r0
	ldr	r2, .L208+96
	movw	r3, #382
	ldr	r0, .L208+100
	ldr	r1, .L208+104
.LPIC68:
	add	ip, pc, ip
.LPIC66:
	add	r2, pc, r2
.LPIC69:
	add	r0, pc, r0
.LPIC67:
	add	r1, pc, r1
	b	.L205
.L138:
	ldr	r0, .L208+108
	mvn	r6, #3840
	ldr	r1, [r7, #8]
.LPIC44:
	add	r0, pc, r0
	bl	printf(PLT)
	b	.L141
.L206:
	ldr	ip, .L208+112
	mov	r6, r0
	ldr	r2, .L208+116
	movw	r3, #338
	ldr	r0, .L208+120
	ldr	r1, .L208+124
.LPIC42:
	add	ip, pc, ip
.LPIC40:
	add	r2, pc, r2
.LPIC43:
	add	r0, pc, r0
.LPIC41:
	add	r1, pc, r1
	b	.L205
.L209:
	.align	2
.L208:
	.word	.LC24-(.LPIC71+8)
	.word	.LC23-(.LPIC70+8)
	.word	.LC19-(.LPIC60+8)
	.word	.LC3-(.LPIC61+8)
	.word	.LC0-(.LPIC58+8)
	.word	.LC1-(.LPIC59+8)
	.word	.LC21-(.LPIC64+8)
	.word	.LC3-(.LPIC65+8)
	.word	.LC0-(.LPIC62+8)
	.word	.LC1-(.LPIC63+8)
	.word	.LC18-(.LPIC57+8)
	.word	.LC19-(.LPIC47+8)
	.word	.LC3-(.LPIC48+8)
	.word	.LC0-(.LPIC45+8)
	.word	.LC1-(.LPIC46+8)
	.word	.LC21-(.LPIC51+8)
	.word	.LC3-(.LPIC52+8)
	.word	.LC0-(.LPIC49+8)
	.word	.LC1-(.LPIC50+8)
	.word	.LC22-(.LPIC55+8)
	.word	.LC0-(.LPIC53+8)
	.word	.LC3-(.LPIC56+8)
	.word	.LC1-(.LPIC54+8)
	.word	.LC22-(.LPIC68+8)
	.word	.LC0-(.LPIC66+8)
	.word	.LC3-(.LPIC69+8)
	.word	.LC1-(.LPIC67+8)
	.word	.LC18-(.LPIC44+8)
	.word	.LC20-(.LPIC42+8)
	.word	.LC0-(.LPIC40+8)
	.word	.LC3-(.LPIC43+8)
	.word	.LC1-(.LPIC41+8)
	.size	ParseArgs, .-ParseArgs
	.section	.rodata.str1.4
	.align	2
.LC25:
	.ascii	"Error Reading %s\000"
	.align	2
.LC26:
	.ascii	"ParseArgs\000"
	.align	2
.LC27:
	.ascii	"CreateArgvArgcBuffer(szFileBuffer, &pszArgv, &siArg"
	.ascii	"c)\000"
	.align	2
.LC28:
	.ascii	"ParseArgs(siArgc - 1, (const char **)pszArgv, pCmdD"
	.ascii	"esc, stArgDescCnt)\000"
	.text
	.align	2
	.global	ParseArgsFile
	.syntax unified
	.arm
	.fpu vfpv3
	.type	ParseArgsFile, %function
ParseArgsFile:
	@ args = 0, pretend = 0, frame = 224
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r6, r2
	ldr	r2, .L232
	sub	sp, sp, #240
	mov	ip, #0
	mov	r8, r1
	ldr	r3, .L232+4
	add	r1, sp, #28
.LPIC85:
	add	r2, pc, r2
	mov	r7, r0
	ldr	r3, [r2, r3]
	add	r2, sp, #32
	ldr	r3, [r3]
	str	r3, [sp, #236]
	mov	r3, #0
	str	ip, [sp, #24]
	bl	ReadTextFile(PLT)
	subs	r4, r0, #0
	ldr	r5, [sp, #28]
	bne	.L228
	add	r2, sp, #20
	add	r1, sp, #24
	mov	r0, r5
	bl	CreateArgvArgcBuffer(PLT)
	subs	r4, r0, #0
	bne	.L229
	cmp	r5, #0
	beq	.L214
	mov	r0, r5
	bl	free(PLT)
.L214:
	ldrd	r0, [sp, #20]
	mov	r3, r6
	mov	r2, r8
	sub	r0, r0, #1
	bl	ParseArgs(PLT)
	subs	r4, r0, #0
	bne	.L230
.L212:
	ldr	r0, [sp, #24]
	cmp	r0, #0
	beq	.L210
	bl	free(PLT)
.L210:
	ldr	r2, .L232+8
	ldr	r3, .L232+4
.LPIC84:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #236]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L231
	mov	r0, r4
	add	sp, sp, #240
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L228:
	ldr	r2, .L232+12
	add	r5, sp, #36
	mov	r3, r7
	mov	r1, #200
	mov	r0, r5
.LPIC72:
	add	r2, pc, r2
	bl	EApiSprintfA(PLT)
	ldr	r0, .L232+16
	movw	r3, #275
	ldr	r2, .L232+20
	ldr	r1, .L232+24
.LPIC75:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, r5}
.LPIC73:
	add	r2, pc, r2
.LPIC74:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L212
.L230:
	ldr	ip, .L232+28
	movw	r3, #285
	ldr	r0, .L232+32
	ldr	r2, .L232+36
	ldr	r1, .L232+40
.LPIC82:
	add	ip, pc, ip
.LPIC83:
	add	r0, pc, r0
.LPIC80:
	add	r2, pc, r2
.LPIC81:
	add	r1, pc, r1
.L227:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	b	.L212
.L229:
	ldr	ip, .L232+44
	movw	r3, #281
	ldr	r0, .L232+48
	ldr	r2, .L232+52
	ldr	r1, .L232+56
.LPIC78:
	add	ip, pc, ip
.LPIC79:
	add	r0, pc, r0
.LPIC76:
	add	r2, pc, r2
.LPIC77:
	add	r1, pc, r1
	b	.L227
.L231:
	bl	__stack_chk_fail(PLT)
.L233:
	.align	2
.L232:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC85+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC84+8)
	.word	.LC25-(.LPIC72+8)
	.word	.LC3-(.LPIC75+8)
	.word	.LC26-(.LPIC73+8)
	.word	.LC1-(.LPIC74+8)
	.word	.LC28-(.LPIC82+8)
	.word	.LC3-(.LPIC83+8)
	.word	.LC0-(.LPIC80+8)
	.word	.LC1-(.LPIC81+8)
	.word	.LC27-(.LPIC78+8)
	.word	.LC3-(.LPIC79+8)
	.word	.LC0-(.LPIC76+8)
	.word	.LC1-(.LPIC77+8)
	.size	ParseArgsFile, .-ParseArgsFile
	.global	cszFooter
	.global	cszHeader
	.section	.rodata.str1.4
	.align	2
.LC29:
	.ascii	"BYTES\000"
	.align	2
.LC30:
	.ascii	"KB\000"
	.align	2
.LC31:
	.ascii	"*(1024 BYTES)\000"
	.align	2
.LC32:
	.ascii	"MB\000"
	.align	2
.LC33:
	.ascii	"*(1024 KB)\000"
	.align	2
.LC34:
	.ascii	"GB\000"
	.align	2
.LC35:
	.ascii	"*(1024 MB)\000"
	.section	.rodata
	.align	2
	.set	.LANCHOR1,. + 0
	.type	cszHeader, %object
	.size	cszHeader, 241
cszHeader:
	.ascii	"+=================================================="
	.ascii	"===========================+\012| Usage            "
	.ascii	"                                                   "
	.ascii	"        |\012+-------------------------------------"
	.ascii	"----------------------------------------+\012\000"
	.space	3
	.type	cszFooter, %object
	.size	cszFooter, 81
cszFooter:
	.ascii	"+=================================================="
	.ascii	"===========================+\012\000"
	.section	.data.rel.local,"aw"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	SizeMacroDesc, %object
	.size	SizeMacroDesc, 8
SizeMacroDesc:
	.word	SizeMacros
	.word	4
	.type	SizeMacros, %object
	.size	SizeMacros, 32
SizeMacros:
	.word	.LC29
	.word	.LC8
	.word	.LC30
	.word	.LC31
	.word	.LC32
	.word	.LC33
	.word	.LC34
	.word	.LC35
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
