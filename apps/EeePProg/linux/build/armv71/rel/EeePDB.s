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
	.file	"EeePDB.c"
	.text
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"%s\000"
	.align	2
.LC1:
	.ascii	"UNKNOWN ID\000"
	.text
	.align	2
	.global	GetString
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	GetString, %function
GetString:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	ip, r0
	ldr	lr, [r0]
	mov	r0, r1
	mov	r1, r2
	cmp	lr, #0
	bne	.L5
	b	.L2
.L3:
	ldr	lr, [ip, #8]!
	cmp	lr, #0
	beq	.L2
.L5:
	ldr	r2, [ip, #4]
	cmp	r2, r3
	bne	.L3
	ldr	r2, .L12
	mov	r3, lr
.LPIC0:
	add	r2, pc, r2
	bl	EApiSprintf(PLT)
	mov	r0, #0
	pop	{r4, pc}
.L2:
.L4:
	ldr	r2, .L12+4
.LPIC1:
	add	r2, pc, r2
	bl	EApiSprintf(PLT)
	mvn	r0, #3840
	pop	{r4, pc}
.L13:
	.align	2
.L12:
	.word	.LC0-(.LPIC0+8)
	.word	.LC1-(.LPIC1+8)
	.size	GetString, .-GetString
	.align	2
	.global	GetDBlckIdString
	.syntax unified
	.arm
	.fpu vfpv3
	.type	GetDBlckIdString, %function
GetDBlckIdString:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L24
	push	{r4, lr}
.LPIC2:
	add	ip, pc, ip
	ldr	r3, [ip]
	cmp	r3, #0
	bne	.L18
	b	.L15
.L16:
	ldr	r3, [ip, #8]!
	cmp	r3, #0
	beq	.L15
.L18:
	ldr	lr, [ip, #4]
	cmp	r2, lr
	bne	.L16
	ldr	r2, .L24+4
.LPIC4:
	add	r2, pc, r2
	bl	EApiSprintf(PLT)
	mov	r0, #0
	pop	{r4, pc}
.L15:
.L17:
	ldr	r2, .L24+8
.LPIC5:
	add	r2, pc, r2
	bl	EApiSprintf(PLT)
	mvn	r0, #3840
	pop	{r4, pc}
.L25:
	.align	2
.L24:
	.word	.LANCHOR0-(.LPIC2+8)
	.word	.LC0-(.LPIC4+8)
	.word	.LC1-(.LPIC5+8)
	.size	GetDBlckIdString, .-GetDBlckIdString
	.align	2
	.global	EeePAdjLength
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeePAdjLength, %function
EeePAdjLength:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #1
	lsr	r0, r0, #1
	bx	lr
	.size	EeePAdjLength, .-EeePAdjLength
	.align	2
	.global	EeePAlignLength
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeePAlignLength, %function
EeePAlignLength:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #1
	bic	r0, r0, #1
	bx	lr
	.size	EeePAlignLength, .-EeePAlignLength
	.section	.rodata.str1.4
	.align	2
.LC2:
	.ascii	"SetBlockLength\000"
	.align	2
.LC3:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux/../EeePDB.c\000"
	.align	2
.LC4:
	.ascii	"(BHandel==NULL)\000"
	.align	2
.LC5:
	.ascii	"%s\012\000"
	.align	2
.LC6:
	.ascii	"(stBlockLength%EEEP_SIZE_UNITS)\000"
	.align	2
.LC7:
	.ascii	"(stBlockLength>(UINT16_MAX*EEEP_SIZE_UNITS))\000"
	.text
	.align	2
	.global	SetBlockLength
	.syntax unified
	.arm
	.fpu vfpv3
	.type	SetBlockLength, %function
SetBlockLength:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0
	push	{r4, lr}
	sub	sp, sp, #16
	beq	.L35
	ands	r4, r1, #1
	bne	.L36
	movw	r3, #65534
	movt	r3, 1
	cmp	r1, r3
	bhi	.L37
.L30:
	ubfx	r1, r1, #1, #16
	add	r0, r0, #1
	bl	EeeP_Set16BitValue_BE(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L37:
	ldr	ip, .L38
	mvn	r4, #256
	ldr	r0, .L38+4
	mov	r3, #128
	ldr	r2, .L38+8
	ldr	r1, .L38+12
.LPIC16:
	add	ip, pc, ip
.LPIC17:
	add	r0, pc, r0
.LPIC14:
	add	r2, pc, r2
.LPIC15:
	add	r1, pc, r1
.L34:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L36:
	ldr	ip, .L38+16
	mvn	r4, #256
	ldr	r0, .L38+20
	mov	r3, #123
	ldr	r2, .L38+24
	ldr	r1, .L38+28
.LPIC12:
	add	ip, pc, ip
.LPIC13:
	add	r0, pc, r0
.LPIC10:
	add	r2, pc, r2
.LPIC11:
	add	r1, pc, r1
	b	.L34
.L35:
	ldr	ip, .L38+32
	mvn	r4, #256
	ldr	r0, .L38+36
	mov	r3, #118
	ldr	r2, .L38+40
	ldr	r1, .L38+44
.LPIC8:
	add	ip, pc, ip
.LPIC9:
	add	r0, pc, r0
.LPIC6:
	add	r2, pc, r2
.LPIC7:
	add	r1, pc, r1
	b	.L34
.L39:
	.align	2
.L38:
	.word	.LC7-(.LPIC16+8)
	.word	.LC5-(.LPIC17+8)
	.word	.LC2-(.LPIC14+8)
	.word	.LC3-(.LPIC15+8)
	.word	.LC6-(.LPIC12+8)
	.word	.LC5-(.LPIC13+8)
	.word	.LC2-(.LPIC10+8)
	.word	.LC3-(.LPIC11+8)
	.word	.LC4-(.LPIC8+8)
	.word	.LC5-(.LPIC9+8)
	.word	.LC2-(.LPIC6+8)
	.word	.LC3-(.LPIC7+8)
	.size	SetBlockLength, .-SetBlockLength
	.align	2
	.global	GetBlockLength
	.syntax unified
	.arm
	.fpu vfpv3
	.type	GetBlockLength, %function
GetBlockLength:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0
	bxeq	lr
	push	{r4, lr}
	add	r0, r0, #1
	bl	EeeP_Get16BitValue_BE(PLT)
	lsl	r0, r0, #1
	pop	{r4, pc}
	.size	GetBlockLength, .-GetBlockLength
	.section	.rodata.str1.4
	.align	2
.LC8:
	.ascii	"GetNextBlock\000"
	.align	2
.LC9:
	.ascii	"(pCurBlock==NULL)\000"
	.text
	.align	2
	.global	GetNextBlock
	.syntax unified
	.arm
	.fpu vfpv3
	.type	GetNextBlock, %function
GetNextBlock:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	subs	r4, r0, #0
	sub	sp, sp, #16
	beq	.L54
	add	r0, r4, #1
	bl	EeeP_Get16BitValue_BE(PLT)
	cmp	r0, #0
	lsl	r2, r0, #1
	beq	.L47
	movw	r3, #65535
	cmp	r0, r3
	addne	r0, r4, r2
	moveq	r0, #0
.L49:
.L50:
.L47:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L54:
	ldr	ip, .L55
	mov	r3, #161
	ldr	r0, .L55+4
	ldr	r2, .L55+8
	ldr	r1, .L55+12
.LPIC20:
	add	ip, pc, ip
.LPIC21:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC18:
	add	r2, pc, r2
.LPIC19:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L47
.L56:
	.align	2
.L55:
	.word	.LC9-(.LPIC20+8)
	.word	.LC5-(.LPIC21+8)
	.word	.LC8-(.LPIC18+8)
	.word	.LC3-(.LPIC19+8)
	.size	GetNextBlock, .-GetNextBlock
	.section	.rodata.str1.4
	.align	2
.LC10:
	.ascii	"SetDynBlockInfo\000"
	.text
	.align	2
	.global	SetDynBlockHeader
	.syntax unified
	.arm
	.fpu vfpv3
	.type	SetDynBlockHeader, %function
SetDynBlockHeader:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0
	push	{r4, lr}
	sub	sp, sp, #16
	beq	.L64
	ands	r4, r2, #1
	strb	r1, [r0]
	bne	.L65
	movw	r3, #65534
	movt	r3, 1
	cmp	r2, r3
	bhi	.L66
.L59:
	ubfx	r1, r2, #1, #16
	add	r0, r0, #1
	bl	EeeP_Set16BitValue_BE(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L66:
	ldr	ip, .L67
	mvn	r4, #256
	ldr	r0, .L67+4
	mov	r3, #128
	ldr	r2, .L67+8
	ldr	r1, .L67+12
.LPIC32:
	add	ip, pc, ip
.LPIC33:
	add	r0, pc, r0
.LPIC30:
	add	r2, pc, r2
.LPIC31:
	add	r1, pc, r1
.L63:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L64:
	ldr	ip, .L67+16
	mvn	r4, #256
	ldr	r0, .L67+20
	mov	r3, #192
	ldr	r2, .L67+24
	ldr	r1, .L67+28
.LPIC24:
	add	ip, pc, ip
.LPIC25:
	add	r0, pc, r0
.LPIC22:
	add	r2, pc, r2
.LPIC23:
	add	r1, pc, r1
	b	.L63
.L65:
	ldr	ip, .L67+32
	mvn	r4, #256
	ldr	r0, .L67+36
	mov	r3, #123
	ldr	r2, .L67+40
	ldr	r1, .L67+44
.LPIC28:
	add	ip, pc, ip
.LPIC29:
	add	r0, pc, r0
.LPIC26:
	add	r2, pc, r2
.LPIC27:
	add	r1, pc, r1
	b	.L63
.L68:
	.align	2
.L67:
	.word	.LC7-(.LPIC32+8)
	.word	.LC5-(.LPIC33+8)
	.word	.LC2-(.LPIC30+8)
	.word	.LC3-(.LPIC31+8)
	.word	.LC9-(.LPIC24+8)
	.word	.LC5-(.LPIC25+8)
	.word	.LC10-(.LPIC22+8)
	.word	.LC3-(.LPIC23+8)
	.word	.LC6-(.LPIC28+8)
	.word	.LC5-(.LPIC29+8)
	.word	.LC2-(.LPIC26+8)
	.word	.LC3-(.LPIC27+8)
	.size	SetDynBlockHeader, .-SetDynBlockHeader
	.section	.rodata.str1.4
	.align	2
.LC11:
	.ascii	"ReduceBlockLength\000"
	.align	2
.LC12:
	.ascii	"(pvCurBlock==NULL)\000"
	.align	2
.LC13:
	.ascii	"(*pvCurBlock==NULL)\000"
	.align	2
.LC14:
	.ascii	"GetBlockLength(*pvCurBlock)<(EeePAlignLength(stRedu"
	.ascii	"ceBy)+EEEP_MIN_BLOCK_LENGTH)\000"
	.text
	.align	2
	.global	ReduceBlockLength
	.syntax unified
	.arm
	.fpu vfpv3
	.type	ReduceBlockLength, %function
ReduceBlockLength:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	subs	r6, r2, #0
	mov	r9, r3
	movne	r3, #0
	sub	sp, sp, #20
	mov	r5, r0
	strne	r3, [r6]
	cmp	r0, #0
	mov	r4, r1
	beq	.L91
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.L92
	add	r4, r4, #1
	add	r0, r0, #1
	bic	r4, r4, #1
	bl	EeeP_Get16BitValue_BE(PLT)
	add	r3, r4, #4
	cmp	r3, r0, lsl #1
	bhi	.L93
	ldr	r7, [r5]
	cmp	r7, #0
	moveq	r8, r7
	beq	.L75
	add	r0, r7, #1
	bl	EeeP_Get16BitValue_BE(PLT)
	ldr	r7, [r5]
	lsl	r8, r0, #1
.L75:
	tst	r9, #1
	sub	r8, r8, r4
	beq	.L76
	mov	r1, r8
	mov	r0, r7
	bl	SetBlockLength(PLT)
	cmp	r6, #0
	mov	r8, r0
	beq	.L69
	cmp	r7, #0
	beq	.L94
	add	r0, r7, #1
	bl	EeeP_Get16BitValue_BE(PLT)
	cmp	r0, #0
	lsl	r2, r0, #1
	beq	.L85
	movw	r3, #65535
	cmp	r0, r3
	beq	.L85
	add	r7, r7, r2
.L81:
.L82:
	mov	r0, r8
	str	r7, [r6]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L76:
	add	r4, r7, r4
	mov	r2, r8
	mov	r1, r7
	mov	r0, r4
	bl	memmove(PLT)
	mov	r1, r8
	mov	r0, r4
	bl	SetBlockLength(PLT)
	cmp	r6, #0
	mov	r8, r0
	ldrne	r3, [r5]
	strne	r3, [r6]
.L79:
	str	r4, [r5]
.L72:
.L69:
	mov	r0, r8
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L93:
	ldr	ip, .L95
	mvn	r8, #256
	ldr	r0, .L95+4
	mov	r3, #230
	ldr	r2, .L95+8
	ldr	r1, .L95+12
.LPIC44:
	add	ip, pc, ip
.LPIC45:
	add	r0, pc, r0
.LPIC42:
	add	r2, pc, r2
.LPIC43:
	add	r1, pc, r1
.L90:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r8, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r8
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L92:
	ldr	ip, .L95+16
	mvn	r8, #256
	ldr	r0, .L95+20
	mov	r3, #222
	ldr	r2, .L95+24
	ldr	r1, .L95+28
.LPIC40:
	add	ip, pc, ip
.LPIC41:
	add	r0, pc, r0
.LPIC38:
	add	r2, pc, r2
.LPIC39:
	add	r1, pc, r1
	b	.L90
.L91:
	ldr	ip, .L95+32
	mvn	r8, #256
	ldr	r0, .L95+36
	mov	r3, #217
	ldr	r2, .L95+40
	ldr	r1, .L95+44
.LPIC36:
	add	ip, pc, ip
.LPIC37:
	add	r0, pc, r0
.LPIC34:
	add	r2, pc, r2
.LPIC35:
	add	r1, pc, r1
	b	.L90
.L94:
	ldr	r2, .L95+48
	mov	r0, #69
	ldr	r3, .L95+52
	ldr	r1, .L95+56
.LPIC48:
	add	r2, pc, r2
	str	r7, [sp]
	str	r2, [sp, #8]
.LPIC49:
	add	r3, pc, r3
	ldr	r2, .L95+60
.LPIC47:
	add	r1, pc, r1
	str	r3, [sp, #4]
	mov	r3, #161
.LPIC46:
	add	r2, pc, r2
	bl	siFormattedMessage_SC(PLT)
	b	.L82
.L85:
	mov	r7, #0
	b	.L82
.L96:
	.align	2
.L95:
	.word	.LC14-(.LPIC44+8)
	.word	.LC5-(.LPIC45+8)
	.word	.LC11-(.LPIC42+8)
	.word	.LC3-(.LPIC43+8)
	.word	.LC13-(.LPIC40+8)
	.word	.LC5-(.LPIC41+8)
	.word	.LC11-(.LPIC38+8)
	.word	.LC3-(.LPIC39+8)
	.word	.LC12-(.LPIC36+8)
	.word	.LC5-(.LPIC37+8)
	.word	.LC11-(.LPIC34+8)
	.word	.LC3-(.LPIC35+8)
	.word	.LC9-(.LPIC48+8)
	.word	.LC5-(.LPIC49+8)
	.word	.LC3-(.LPIC47+8)
	.word	.LC8-(.LPIC46+8)
	.size	ReduceBlockLength, .-ReduceBlockLength
	.section	.rodata.str1.4
	.align	2
.LC15:
	.ascii	"EeePFreeBuffer\000"
	.align	2
.LC16:
	.ascii	"(pBHandel==NULL)\000"
	.text
	.align	2
	.global	EeePFreeBuffer
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeePFreeBuffer, %function
EeePFreeBuffer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	subs	r4, r0, #0
	sub	sp, sp, #16
	beq	.L102
	ldr	r0, [r4]
	cmp	r0, #0
	beq	.L97
	bl	free(PLT)
	mov	r3, #0
	mov	r0, r3
	str	r3, [r4]
.L99:
.L97:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L102:
	ldr	ip, .L103
	mvn	r4, #256
	ldr	r0, .L103+4
	movw	r3, #371
	ldr	r2, .L103+8
	ldr	r1, .L103+12
.LPIC52:
	add	ip, pc, ip
.LPIC53:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC50:
	add	r2, pc, r2
.LPIC51:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L97
.L104:
	.align	2
.L103:
	.word	.LC16-(.LPIC52+8)
	.word	.LC5-(.LPIC53+8)
	.word	.LC15-(.LPIC50+8)
	.word	.LC3-(.LPIC51+8)
	.size	EeePFreeBuffer, .-EeePFreeBuffer
	.section	.rodata.str1.4
	.align	2
.LC17:
	.ascii	"EeePGetFirstDB\000"
	.align	2
.LC18:
	.ascii	"(pFirstDB==NULL)\000"
	.align	2
.LC19:
	.ascii	"3P\000"
	.align	2
.LC20:
	.ascii	"Invalid EeeP Buffer\000"
	.text
	.align	2
	.global	EeePGetFirstDB
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeePGetFirstDB, %function
EeePGetFirstDB:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r3, r0, #0
	push	{r4, lr}
	sub	sp, sp, #16
	beq	.L119
	cmp	r1, #0
	beq	.L120
	mov	r0, #0
	add	lr, r3, #1
	str	r0, [r1]
	ldrb	ip, [r3, #1]	@ zero_extendqisi2
	cmp	ip, #51
	beq	.L121
.L109:
	ldr	ip, .L122
	mvn	r4, #3840
	ldr	r0, .L122+4
	movw	r3, #405
	ldr	r2, .L122+8
	ldr	r1, .L122+12
.LPIC65:
	add	ip, pc, ip
.LPIC66:
	add	r0, pc, r0
.LPIC63:
	add	r2, pc, r2
.LPIC64:
	add	r1, pc, r1
.L118:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L121:
	ldrb	ip, [r3, #2]	@ zero_extendqisi2
	cmp	ip, #80
	bne	.L109
	ldrb	ip, [r3, #4]	@ zero_extendqisi2
	cmp	ip, r0
	beq	.L113
	add	ip, r3, ip, lsl #1
	cmp	r2, #0
	str	ip, [r1]
	beq	.L113
	ldrb	r1, [r3, #5]	@ zero_extendqisi2
	mov	r3, #256
	and	r1, r1, #15
	lsl	r3, r3, r1
	str	r3, [r2]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L113:
	mov	r0, #0
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L119:
	ldr	ip, .L122+16
	mvn	r4, #256
	ldr	r0, .L122+20
	mov	r3, #392
	ldr	r2, .L122+24
	ldr	r1, .L122+28
.LPIC56:
	add	ip, pc, ip
.LPIC57:
	add	r0, pc, r0
.LPIC54:
	add	r2, pc, r2
.LPIC55:
	add	r1, pc, r1
	b	.L118
.L120:
	ldr	ip, .L122+32
	mvn	r4, #256
	ldr	r0, .L122+36
	movw	r3, #397
	ldr	r2, .L122+40
	ldr	r1, .L122+44
.LPIC60:
	add	ip, pc, ip
.LPIC61:
	add	r0, pc, r0
.LPIC58:
	add	r2, pc, r2
.LPIC59:
	add	r1, pc, r1
	b	.L118
.L123:
	.align	2
.L122:
	.word	.LC20-(.LPIC65+8)
	.word	.LC5-(.LPIC66+8)
	.word	.LC17-(.LPIC63+8)
	.word	.LC3-(.LPIC64+8)
	.word	.LC4-(.LPIC56+8)
	.word	.LC5-(.LPIC57+8)
	.word	.LC17-(.LPIC54+8)
	.word	.LC3-(.LPIC55+8)
	.word	.LC18-(.LPIC60+8)
	.word	.LC5-(.LPIC61+8)
	.word	.LC17-(.LPIC58+8)
	.word	.LC3-(.LPIC59+8)
	.size	EeePGetFirstDB, .-EeePGetFirstDB
	.section	.rodata.str1.4
	.align	2
.LC21:
	.ascii	"EeePCreateNewBuffer\000"
	.align	2
.LC22:
	.ascii	"(stBufferSize<256)\000"
	.align	2
.LC23:
	.ascii	"(stHeaderSize<sizeof(*pEeePCmnHdr))\000"
	.align	2
.LC24:
	.ascii	"(*pBHandel==NULL)\000"
	.align	2
.LC25:
	.ascii	"TB \000"
	.align	2
.LC26:
	.ascii	"EeePGetFirstDB(*pBHandel, &pEeePEmptyBlock, NULL)\000"
	.align	2
.LC27:
	.ascii	"SetDynBlockHeader( pEeePEmptyBlock, EEEP_BLOCK_ID_U"
	.ascii	"NUSED, stBufferSize - (pEeePCmnHdr->BlkOffset*EEEP_"
	.ascii	"SIZE_UNITS) )\000"
	.align	2
.LC28:
	.ascii	"ReduceBlockLength( &pEeePEmptyBlock , sizeof(*pEeeP"
	.ascii	"TBlock) , &pEeePTBlock , EEEP_RBL_REDUCE_TOP_DOWN )"
	.ascii	"\000"
	.align	2
.LC29:
	.ascii	"SetDynBlockHeader( pEeePTBlock, EEEP_BLOCK_ID_UNUSE"
	.ascii	"D, EEEP_OFFSET_VALUE_EOL )\000"
	.align	2
.LC30:
	.ascii	"ReduceBlockLength( &pEeePEmptyBlock , sizeof(*pEeeP"
	.ascii	"CRCBlock), &plclEeePBlock, 0 )\000"
	.align	2
.LC31:
	.ascii	"SetDynBlockHeader( pEeePCRCBlock , EEEP_BLOCK_ID_CR"
	.ascii	"C_CHK , sizeof(*pEeePCRCBlock) )\000"
	.text
	.align	2
	.global	EeePCreateNewBuffer
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeePCreateNewBuffer, %function
EeePCreateNewBuffer:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r4, r2
	ldr	r2, .L157
	mov	r7, r3
	cmp	r1, #255
	sub	sp, sp, #36
	ldr	r3, .L157+4
.LPIC117:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #28]
	mov	r3, #0
	bls	.L146
	cmp	r4, #5
	bls	.L147
	mov	r6, r1
	mov	r8, r0
	mov	r1, #1
	mov	r0, r6
	bl	calloc(PLT)
	cmp	r0, #0
	mov	r5, r0
	str	r0, [r8]
	beq	.L148
	ldr	r3, .L157+8
	add	r4, r4, #1
	lsr	r4, r4, #1
	mov	r8, #0
	add	r9, sp, #16
	strb	r8, [r0]
.LPIC79:
	add	r3, pc, r3
	strb	r4, [r0, #4]
	ldrh	r3, [r3]	@ unaligned
	mov	r2, r8
	mov	r1, r9
	strb	r8, [r0, #5]
	strh	r3, [r0, #1]	@ unaligned
	mov	r3, #5
	strb	r3, [r0, #3]
	bl	EeePGetFirstDB(PLT)
	subs	r4, r0, #0
	bne	.L149
	ldr	r0, [sp, #16]
	ldrb	r3, [r5, #4]	@ zero_extendqisi2
	cmp	r0, #0
	sub	r1, r6, r3, lsl #1
	beq	.L150
	strb	r4, [r0]
	bl	SetBlockLength(PLT)
	subs	r4, r0, #0
	bne	.L131
	mov	r3, #1
	add	r2, sp, #20
	mov	r1, #3
	mov	r0, r9
	bl	ReduceBlockLength(PLT)
	subs	r4, r0, #0
	bne	.L151
	ldr	r0, [sp, #20]
	cmp	r0, #0
	beq	.L152
	mov	r1, r4
	strb	r4, [r0], #1
	bl	EeeP_Set16BitValue_BE(PLT)
	ands	r4, r7, #1
	bne	.L153
.L126:
.L124:
	ldr	r2, .L157+12
	ldr	r3, .L157+4
.LPIC116:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #28]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L154
	mov	r0, r4
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L153:
	mov	r3, r8
	add	r2, sp, #24
	mov	r1, #6
	mov	r0, r9
	bl	ReduceBlockLength(PLT)
	subs	r4, r0, #0
	bne	.L155
	ldr	r5, [sp, #24]
	cmp	r5, #0
	beq	.L156
	mov	r0, r5
	mvn	r3, #13
	strb	r3, [r0], #1
	mov	r1, #3
	bl	EeeP_Set16BitValue_BE(PLT)
	mov	r1, #0
	add	r0, r5, #3
	bl	EeeP_Set16BitValue_BE(PLT)
	b	.L124
.L150:
	ldr	ip, .L157+16
	mvn	r4, #256
	ldr	r0, .L157+20
	mov	r3, #192
	ldr	r2, .L157+24
	ldr	r1, .L157+28
.LPIC86:
	add	ip, pc, ip
.LPIC87:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC84:
	add	r2, pc, r2
.LPIC85:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
.L131:
	ldr	ip, .L157+32
	mov	r3, #312
	ldr	r0, .L157+36
	ldr	r2, .L157+40
	ldr	r1, .L157+44
.LPIC90:
	add	ip, pc, ip
.LPIC91:
	add	r0, pc, r0
.LPIC88:
	add	r2, pc, r2
.LPIC89:
	add	r1, pc, r1
.L145:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	b	.L124
.L147:
	ldr	ip, .L157+48
	mvn	r4, #256
	ldr	r0, .L157+52
	movw	r3, #281
	ldr	r2, .L157+56
	ldr	r1, .L157+60
.LPIC73:
	add	ip, pc, ip
.LPIC74:
	add	r0, pc, r0
.LPIC71:
	add	r2, pc, r2
.LPIC72:
	add	r1, pc, r1
.L143:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	b	.L124
.L149:
	ldr	ip, .L157+64
	movw	r3, #310
	ldr	r0, .L157+68
	ldr	r2, .L157+72
	ldr	r1, .L157+76
.LPIC82:
	add	ip, pc, ip
.LPIC83:
	add	r0, pc, r0
.LPIC80:
	add	r2, pc, r2
.LPIC81:
	add	r1, pc, r1
	b	.L145
.L146:
	ldr	ip, .L157+80
	mvn	r4, #256
	ldr	r0, .L157+84
	mov	r3, #276
	ldr	r2, .L157+88
	ldr	r1, .L157+92
.LPIC69:
	add	ip, pc, ip
.LPIC70:
	add	r0, pc, r0
.LPIC67:
	add	r2, pc, r2
.LPIC68:
	add	r1, pc, r1
	b	.L143
.L151:
	ldr	ip, .L157+96
	mov	r3, #320
	ldr	r0, .L157+100
	ldr	r2, .L157+104
	ldr	r1, .L157+108
.LPIC94:
	add	ip, pc, ip
.LPIC95:
	add	r0, pc, r0
.LPIC92:
	add	r2, pc, r2
.LPIC93:
	add	r1, pc, r1
	b	.L145
.L152:
	ldr	r2, .L157+112
	mvn	r4, #256
	ldr	r6, .L157+116
	mov	r3, #192
	ldr	r5, .L157+120
	mov	r0, #69
.LPIC98:
	add	r2, pc, r2
	str	r2, [sp, #8]
.LPIC97:
	add	r6, pc, r6
	ldr	r2, .L157+124
.LPIC99:
	add	r5, pc, r5
	mov	r1, r6
	strd	r4, [sp]
.LPIC96:
	add	r2, pc, r2
	bl	siFormattedMessage_SC(PLT)
	ldr	r0, .L157+128
	movw	r3, #330
	ldr	r2, .L157+132
.LPIC102:
	add	r0, pc, r0
.LPIC100:
	add	r2, pc, r2
.L144:
	str	r0, [sp, #8]
	mov	r1, r6
	str	r5, [sp, #4]
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	b	.L124
.L156:
	ldr	r2, .L157+136
	mvn	r4, #256
	ldr	r6, .L157+140
	mov	r3, #192
	ldr	r5, .L157+144
	mov	r0, #69
.LPIC110:
	add	r2, pc, r2
	str	r2, [sp, #8]
.LPIC109:
	add	r6, pc, r6
	ldr	r2, .L157+148
.LPIC111:
	add	r5, pc, r5
	mov	r1, r6
	strd	r4, [sp]
.LPIC108:
	add	r2, pc, r2
	bl	siFormattedMessage_SC(PLT)
	ldr	r0, .L157+152
	movw	r3, #355
	ldr	r2, .L157+156
.LPIC114:
	add	r0, pc, r0
.LPIC112:
	add	r2, pc, r2
	b	.L144
.L155:
	ldr	ip, .L157+160
	mov	r3, #344
	ldr	r0, .L157+164
	ldr	r2, .L157+168
	ldr	r1, .L157+172
.LPIC106:
	add	ip, pc, ip
.LPIC107:
	add	r0, pc, r0
.LPIC104:
	add	r2, pc, r2
.LPIC105:
	add	r1, pc, r1
	b	.L145
.L154:
	bl	__stack_chk_fail(PLT)
.L148:
	ldr	ip, .L157+176
	mvn	r4, #2
	ldr	r0, .L157+180
	movw	r3, #289
	ldr	r2, .L157+184
	ldr	r1, .L157+188
.LPIC77:
	add	ip, pc, ip
.LPIC78:
	add	r0, pc, r0
.LPIC75:
	add	r2, pc, r2
.LPIC76:
	add	r1, pc, r1
	b	.L143
.L158:
	.align	2
.L157:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC117+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC19-(.LPIC79+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC116+8)
	.word	.LC9-(.LPIC86+8)
	.word	.LC5-(.LPIC87+8)
	.word	.LC10-(.LPIC84+8)
	.word	.LC3-(.LPIC85+8)
	.word	.LC27-(.LPIC90+8)
	.word	.LC5-(.LPIC91+8)
	.word	.LC25-(.LPIC88+8)
	.word	.LC3-(.LPIC89+8)
	.word	.LC23-(.LPIC73+8)
	.word	.LC5-(.LPIC74+8)
	.word	.LC21-(.LPIC71+8)
	.word	.LC3-(.LPIC72+8)
	.word	.LC26-(.LPIC82+8)
	.word	.LC5-(.LPIC83+8)
	.word	.LC25-(.LPIC80+8)
	.word	.LC3-(.LPIC81+8)
	.word	.LC22-(.LPIC69+8)
	.word	.LC5-(.LPIC70+8)
	.word	.LC21-(.LPIC67+8)
	.word	.LC3-(.LPIC68+8)
	.word	.LC28-(.LPIC94+8)
	.word	.LC5-(.LPIC95+8)
	.word	.LC25-(.LPIC92+8)
	.word	.LC3-(.LPIC93+8)
	.word	.LC9-(.LPIC98+8)
	.word	.LC3-(.LPIC97+8)
	.word	.LC5-(.LPIC99+8)
	.word	.LC10-(.LPIC96+8)
	.word	.LC29-(.LPIC102+8)
	.word	.LC25-(.LPIC100+8)
	.word	.LC9-(.LPIC110+8)
	.word	.LC3-(.LPIC109+8)
	.word	.LC5-(.LPIC111+8)
	.word	.LC10-(.LPIC108+8)
	.word	.LC31-(.LPIC114+8)
	.word	.LC25-(.LPIC112+8)
	.word	.LC30-(.LPIC106+8)
	.word	.LC5-(.LPIC107+8)
	.word	.LC25-(.LPIC104+8)
	.word	.LC3-(.LPIC105+8)
	.word	.LC24-(.LPIC77+8)
	.word	.LC5-(.LPIC78+8)
	.word	.LC21-(.LPIC75+8)
	.word	.LC3-(.LPIC76+8)
	.size	EeePCreateNewBuffer, .-EeePCreateNewBuffer
	.section	.rodata.str1.4
	.align	2
.LC32:
	.ascii	"EeePMapBuffer\000"
	.align	2
.LC33:
	.ascii	"EeePGetFirstDB(BHandel, &pCurBlock, &MaxDeviceLen)\000"
	.align	2
.LC34:
	.ascii	"(CurOffset>MaxDeviceLen)\000"
	.align	2
.LC35:
	.ascii	"More than 1 Empty Block in CRC Not Supported\000"
	.align	2
.LC36:
	.ascii	"More than 1 CRC Block Not Supported\000"
	.text
	.align	2
	.global	EeePMapBuffer
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeePMapBuffer, %function
EeePMapBuffer:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L199
	ldr	r3, .L199+4
	push	{r4, r5, r6, r7, r8, lr}
	subs	r4, r0, #0
.LPIC148:
	add	r2, pc, r2
	sub	sp, sp, #32
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #28]
	mov	r3, #0
	beq	.L191
	mov	r3, #0
	str	r4, [r1]
	str	r3, [r1, #4]	@ unaligned
	mov	r5, r1
	str	r3, [r1, #8]	@ unaligned
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	cmp	r3, #51
	beq	.L192
.L162:
	ldr	ip, .L199+8
	mvn	r7, #3840
	ldr	r0, .L199+12
	mov	r3, #456
	ldr	r2, .L199+16
	ldr	r1, .L199+20
.LPIC125:
	add	ip, pc, ip
.LPIC126:
	add	r0, pc, r0
.LPIC123:
	add	r2, pc, r2
.LPIC124:
	add	r1, pc, r1
.L190:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r7, [sp]
	bl	siFormattedMessage_SC(PLT)
.L167:
.L161:
.L159:
	ldr	r2, .L199+24
	ldr	r3, .L199+4
.LPIC147:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #28]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L193
	mov	r0, r7
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L192:
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	cmp	r3, #80
	bne	.L162
	add	r2, sp, #24
	add	r1, sp, #20
	bl	EeePGetFirstDB(PLT)
	subs	r7, r0, #0
	bne	.L194
	ldr	r0, [sp, #20]
	cmp	r0, #0
	beq	.L159
	ldr	r3, [sp, #24]
	sub	r2, r0, r4
	movw	r6, #65535
	cmp	r2, r3
	bhi	.L195
.L168:
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, #242
	beq	.L169
	cmp	r3, #255
	beq	.L170
	cmp	r3, #0
	beq	.L196
.L171:
	ldr	r8, [sp, #20]
.L174:
	cmp	r8, #0
	beq	.L177
	add	r0, r8, #1
	bl	EeeP_Get16BitValue_BE(PLT)
	cmp	r0, #0
	lsl	r3, r0, #1
	beq	.L159
	cmp	r0, r6
	beq	.L159
	add	r0, r8, r3
	ldr	r3, [sp, #24]
	sub	r2, r0, r4
	str	r0, [sp, #20]
	cmp	r2, r3
	bls	.L168
.L195:
	ldr	ip, .L199+28
	mvn	r7, #3840
	ldr	r0, .L199+32
	movw	r3, #483
	ldr	r2, .L199+36
	ldr	r1, .L199+40
.LPIC133:
	add	ip, pc, ip
.LPIC134:
	add	r0, pc, r0
.LPIC131:
	add	r2, pc, r2
.LPIC132:
	add	r1, pc, r1
	b	.L190
.L170:
	mov	r3, #0
	str	r3, [sp, #20]
.L177:
	ldr	r1, .L199+44
	mov	ip, #0
	ldr	r0, .L199+48
	mov	r3, #161
	ldr	r2, .L199+52
.LPIC146:
	add	r1, pc, r1
	str	ip, [sp]
	str	r1, [sp, #4]
.LPIC145:
	add	r0, pc, r0
	ldr	r1, .L199+56
.LPIC143:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC144:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L159
.L169:
	ldr	r3, [r5, #8]
	cmp	r3, #0
	bne	.L197
	ldr	r8, [sp, #20]
	str	r0, [r5, #8]
	b	.L174
.L196:
	add	r0, r0, #1
	bl	EeeP_Get16BitValue_BE(PLT)
	cmp	r0, #0
	beq	.L171
	cmp	r0, r6
	beq	.L171
	ldr	r3, [r5, #4]
	cmp	r3, #0
	bne	.L198
	ldr	r8, [sp, #20]
	str	r8, [r5, #4]
	b	.L174
.L194:
	ldr	ip, .L199+60
	movw	r3, #467
	ldr	r0, .L199+64
	ldr	r2, .L199+68
	ldr	r1, .L199+72
.LPIC129:
	add	ip, pc, ip
.LPIC130:
	add	r0, pc, r0
	str	r7, [sp]
	stmib	sp, {r0, ip}
.LPIC127:
	add	r2, pc, r2
.LPIC128:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L159
.L191:
	ldr	ip, .L199+76
	mvn	r7, #256
	ldr	r0, .L199+80
	movw	r3, #446
	ldr	r2, .L199+84
	ldr	r1, .L199+88
.LPIC120:
	add	ip, pc, ip
.LPIC121:
	add	r0, pc, r0
.LPIC118:
	add	r2, pc, r2
.LPIC119:
	add	r1, pc, r1
	b	.L190
.L197:
	ldr	ip, .L199+92
	mvn	r7, #3840
	ldr	r0, .L199+96
	mov	r3, #500
	ldr	r2, .L199+100
	ldr	r1, .L199+104
.LPIC141:
	add	ip, pc, ip
.LPIC142:
	add	r0, pc, r0
.LPIC139:
	add	r2, pc, r2
.LPIC140:
	add	r1, pc, r1
	b	.L190
.L198:
	ldr	ip, .L199+108
	mvn	r7, #3840
	ldr	r0, .L199+112
	movw	r3, #491
	ldr	r2, .L199+116
	ldr	r1, .L199+120
.LPIC137:
	add	ip, pc, ip
.LPIC138:
	add	r0, pc, r0
.LPIC135:
	add	r2, pc, r2
.LPIC136:
	add	r1, pc, r1
	b	.L190
.L193:
	bl	__stack_chk_fail(PLT)
.L200:
	.align	2
.L199:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC148+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC20-(.LPIC125+8)
	.word	.LC5-(.LPIC126+8)
	.word	.LC32-(.LPIC123+8)
	.word	.LC3-(.LPIC124+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC147+8)
	.word	.LC34-(.LPIC133+8)
	.word	.LC5-(.LPIC134+8)
	.word	.LC32-(.LPIC131+8)
	.word	.LC3-(.LPIC132+8)
	.word	.LC5-(.LPIC146+8)
	.word	.LC9-(.LPIC145+8)
	.word	.LC8-(.LPIC143+8)
	.word	.LC3-(.LPIC144+8)
	.word	.LC33-(.LPIC129+8)
	.word	.LC5-(.LPIC130+8)
	.word	.LC25-(.LPIC127+8)
	.word	.LC3-(.LPIC128+8)
	.word	.LC4-(.LPIC120+8)
	.word	.LC5-(.LPIC121+8)
	.word	.LC32-(.LPIC118+8)
	.word	.LC3-(.LPIC119+8)
	.word	.LC36-(.LPIC141+8)
	.word	.LC5-(.LPIC142+8)
	.word	.LC32-(.LPIC139+8)
	.word	.LC3-(.LPIC140+8)
	.word	.LC35-(.LPIC137+8)
	.word	.LC5-(.LPIC138+8)
	.word	.LC32-(.LPIC135+8)
	.word	.LC3-(.LPIC136+8)
	.size	EeePMapBuffer, .-EeePMapBuffer
	.section	.rodata.str1.4
	.align	2
.LC37:
	.ascii	"EeePListBlocks\000"
	.align	2
.LC38:
	.ascii	"LOG: Header Size: 0x%02lX\012\000"
	.align	2
.LC39:
	.ascii	"EeeP Common Header\000"
	.align	2
.LC40:
	.ascii	"EeeP Extended Header\000"
	.align	2
.LC41:
	.ascii	"\012LOG: BLOCK ID  : %s(0x%02X)\012LOG:   Length  :"
	.ascii	" 0x%04lX\012LOG:   Offset  : 0x%08lX\012\000"
	.align	2
.LC42:
	.ascii	"(CurOffset+BlockLen>MaxDeviceLen)\000"
	.text
	.align	2
	.global	EeePListBlocks
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeePListBlocks, %function
EeePListBlocks:
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L244
	mov	r3, #0
	ldr	r2, .L244+4
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subs	r6, r0, #0
.LPIC187:
	add	r1, pc, r1
	sub	sp, sp, #116
	ldr	r2, [r1, r2]
	ldr	r2, [r2]
	str	r2, [sp, #108]
	mov	r2, #0
	str	r3, [sp, #20]
	beq	.L235
	ldrb	r3, [r6, #1]	@ zero_extendqisi2
	cmp	r3, #51
	beq	.L236
.L204:
	ldr	ip, .L244+8
	mvn	r9, #3840
	ldr	r0, .L244+12
	mov	r3, #540
	ldr	r2, .L244+16
	ldr	r1, .L244+20
.LPIC156:
	add	ip, pc, ip
.LPIC157:
	add	r0, pc, r0
.LPIC154:
	add	r2, pc, r2
.LPIC155:
	add	r1, pc, r1
.L234:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r9, [sp]
	bl	siFormattedMessage_SC(PLT)
.L203:
.L201:
	ldr	r2, .L244+24
	ldr	r3, .L244+4
.LPIC186:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #108]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L237
	mov	r0, r9
	add	sp, sp, #116
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L236:
	ldrb	r3, [r6, #2]	@ zero_extendqisi2
	cmp	r3, #80
	bne	.L204
	add	r2, sp, #20
	add	r1, sp, #24
	bl	EeePGetFirstDB(PLT)
	subs	r9, r0, #0
	bne	.L238
	ldr	r1, [sp, #24]
	ldr	r0, .L244+28
	sub	r1, r1, r6
.LPIC162:
	add	r0, pc, r0
	bl	printf(PLT)
	ldr	r3, .L244+32
	mov	r1, #6
	mov	r2, r6
	mov	r0, r6
.LPIC163:
	add	r3, pc, r3
	bl	PrintHexAsciiTable(PLT)
	ldr	r4, [sp, #24]
	sub	r1, r4, r6
	cmp	r1, #6
	bhi	.L239
.L208:
	cmp	r4, #0
	beq	.L201
	ldr	r8, .L244+36
	add	r7, sp, #28
	ldr	r10, .L244+40
	ldr	fp, .L244+44
.LPIC165:
	add	r8, pc, r8
.LPIC168:
	add	r10, pc, r10
.LPIC167:
	add	fp, pc, fp
.L209:
	add	r0, r4, #1
	sub	r4, r4, r6
	bl	EeeP_Get16BitValue_BE(PLT)
	ldr	r3, [r8]
	lsl	r5, r0, #1
	ldr	r2, [sp, #24]
	cmp	r3, #0
	ldrb	r0, [r2]	@ zero_extendqisi2
	beq	.L210
	mov	r2, r8
	b	.L213
.L211:
	ldr	r3, [r2, #8]!
	cmp	r3, #0
	beq	.L210
.L213:
	ldr	r1, [r2, #4]
	cmp	r0, r1
	bne	.L211
	mov	r2, fp
	mov	r1, #80
	mov	r0, r7
	bl	EApiSprintf(PLT)
.L212:
	ldr	r2, [sp, #24]
	mov	r3, r5
	ldr	r0, .L244+48
	mov	r1, r7
	ldrb	r2, [r2]	@ zero_extendqisi2
.LPIC169:
	add	r0, pc, r0
	str	r4, [sp]
	bl	printf(PLT)
	ldr	r3, [sp, #20]
	cmp	r3, r4
	bcc	.L240
	add	r4, r4, r5
	cmp	r3, r4
	bcc	.L241
	ldr	r0, [sp, #24]
	cmp	r0, #0
	beq	.L242
	add	r0, r0, #1
	bl	EeeP_Get16BitValue_BE(PLT)
	cmp	r0, #0
	beq	.L217
	movw	r3, #65535
	cmp	r0, r3
	beq	.L217
	ldr	r0, [sp, #24]
	mov	r3, #0
	mov	r2, r6
	sub	r1, r5, #3
	add	r0, r0, #3
	bl	PrintHexAsciiTable(PLT)
.L217:
	ldr	r5, [sp, #24]
	cmp	r5, #0
	beq	.L243
.L218:
	add	r0, r5, #1
	bl	EeeP_Get16BitValue_BE(PLT)
	cmp	r0, #0
	lsl	r4, r0, #1
	beq	.L201
	movw	r3, #65535
	cmp	r0, r3
	beq	.L201
	add	r4, r5, r4
	str	r4, [sp, #24]
	b	.L209
.L210:
	mov	r2, r10
	mov	r1, #80
	mov	r0, r7
	bl	EApiSprintf(PLT)
	b	.L212
.L242:
	ldr	r3, .L244+52
	ldr	r2, .L244+56
	ldr	r1, .L244+60
.LPIC180:
	add	r3, pc, r3
	str	r0, [sp]
	str	r3, [sp, #8]
.LPIC178:
	add	r2, pc, r2
	ldr	r3, .L244+64
.LPIC179:
	add	r1, pc, r1
	mov	r0, #69
.LPIC181:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mov	r3, #161
	bl	siFormattedMessage_SC(PLT)
	ldr	r5, [sp, #24]
	cmp	r5, #0
	bne	.L218
.L243:
	ldr	r1, .L244+68
	mov	r3, #161
	ldr	r0, .L244+72
	ldr	r2, .L244+76
.LPIC185:
	add	r1, pc, r1
	str	r5, [sp]
	str	r1, [sp, #4]
.LPIC184:
	add	r0, pc, r0
	ldr	r1, .L244+80
.LPIC182:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC183:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L201
.L238:
	ldr	ip, .L244+84
	movw	r3, #551
	ldr	r0, .L244+88
	ldr	r2, .L244+92
	ldr	r1, .L244+96
.LPIC160:
	add	ip, pc, ip
.LPIC161:
	add	r0, pc, r0
	str	r9, [sp]
	stmib	sp, {r0, ip}
.LPIC158:
	add	r2, pc, r2
.LPIC159:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L201
.L239:
	ldr	r3, .L244+100
	mov	r2, r6
	sub	r1, r1, #6
	add	r0, r6, #6
.LPIC164:
	add	r3, pc, r3
	bl	PrintHexAsciiTable(PLT)
	ldr	r4, [sp, #24]
	b	.L208
.L240:
	ldr	ip, .L244+104
	mvn	r9, #3840
	ldr	r0, .L244+108
	movw	r3, #591
	ldr	r2, .L244+112
	ldr	r1, .L244+116
.LPIC172:
	add	ip, pc, ip
.LPIC173:
	add	r0, pc, r0
.LPIC170:
	add	r2, pc, r2
.LPIC171:
	add	r1, pc, r1
	b	.L234
.L241:
	ldr	ip, .L244+120
	mvn	r9, #3840
	ldr	r0, .L244+124
	mov	r3, #596
	ldr	r2, .L244+128
	ldr	r1, .L244+132
.LPIC176:
	add	ip, pc, ip
.LPIC177:
	add	r0, pc, r0
.LPIC174:
	add	r2, pc, r2
.LPIC175:
	add	r1, pc, r1
	b	.L234
.L235:
	ldr	ip, .L244+136
	mvn	r9, #256
	ldr	r0, .L244+140
	mov	r3, #532
	ldr	r2, .L244+144
	ldr	r1, .L244+148
.LPIC151:
	add	ip, pc, ip
.LPIC152:
	add	r0, pc, r0
.LPIC149:
	add	r2, pc, r2
.LPIC150:
	add	r1, pc, r1
	b	.L234
.L237:
	bl	__stack_chk_fail(PLT)
.L245:
	.align	2
.L244:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC187+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC20-(.LPIC156+8)
	.word	.LC5-(.LPIC157+8)
	.word	.LC37-(.LPIC154+8)
	.word	.LC3-(.LPIC155+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC186+8)
	.word	.LC38-(.LPIC162+8)
	.word	.LC39-(.LPIC163+8)
	.word	.LANCHOR0-(.LPIC165+8)
	.word	.LC1-(.LPIC168+8)
	.word	.LC0-(.LPIC167+8)
	.word	.LC41-(.LPIC169+8)
	.word	.LC9-(.LPIC180+8)
	.word	.LC8-(.LPIC178+8)
	.word	.LC3-(.LPIC179+8)
	.word	.LC5-(.LPIC181+8)
	.word	.LC5-(.LPIC185+8)
	.word	.LC9-(.LPIC184+8)
	.word	.LC8-(.LPIC182+8)
	.word	.LC3-(.LPIC183+8)
	.word	.LC33-(.LPIC160+8)
	.word	.LC5-(.LPIC161+8)
	.word	.LC25-(.LPIC158+8)
	.word	.LC3-(.LPIC159+8)
	.word	.LC40-(.LPIC164+8)
	.word	.LC34-(.LPIC172+8)
	.word	.LC5-(.LPIC173+8)
	.word	.LC37-(.LPIC170+8)
	.word	.LC3-(.LPIC171+8)
	.word	.LC42-(.LPIC176+8)
	.word	.LC5-(.LPIC177+8)
	.word	.LC37-(.LPIC174+8)
	.word	.LC3-(.LPIC175+8)
	.word	.LC4-(.LPIC151+8)
	.word	.LC5-(.LPIC152+8)
	.word	.LC37-(.LPIC149+8)
	.word	.LC3-(.LPIC150+8)
	.size	EeePListBlocks, .-EeePListBlocks
	.section	.rodata.str1.4
	.align	2
.LC43:
	.ascii	"EeePSetCRC\000"
	.align	2
.LC44:
	.ascii	"EeePMapBuffer(BHandel, &BufferMap)\000"
	.align	2
.LC45:
	.ascii	"No CRC Block Present\000"
	.align	2
.LC46:
	.ascii	"CRC_CCITT.init(&pContext)\000"
	.align	2
.LC47:
	.ascii	"CRC_CCITT.bytes( pContext, BufferMap.pCmnHdr, EAPI_"
	.ascii	"GET_PTR_OFFSET(BufferMap.pEeePCRCBlock->CrC16, Buff"
	.ascii	"erMap.pCmnHdr) )\000"
	.align	2
.LC48:
	.ascii	"CRC_CCITT.fini(&pContext, BufferMap.pEeePCRCBlock->"
	.ascii	"CrC16)\000"
	.text
	.align	2
	.global	EeePSetCRC
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeePSetCRC, %function
EeePSetCRC:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L267
	cmp	r0, #0
	ldr	r3, .L267+4
	push	{r4, r5, r6, lr}
	sub	sp, sp, #40
.LPIC214:
	add	r2, pc, r2
	ldr	r5, .L267+8
	ldr	r3, [r2, r3]
.LPIC200:
	add	r5, pc, r5
	ldr	r3, [r3]
	str	r3, [sp, #36]
	mov	r3, #0
	beq	.L260
	add	r1, sp, #24
	bl	EeePMapBuffer(PLT)
	subs	r4, r0, #0
	bne	.L261
	ldr	r3, [sp, #32]
	cmp	r3, #0
	beq	.L262
	ldr	r3, .L267+12
	add	r6, sp, #20
	mov	r0, r6
	ldr	r5, [r5, r3]
	ldr	r3, [r5]
	blx	r3
	subs	r4, r0, #0
	bne	.L263
	ldr	r2, [sp, #32]
	ldr	r1, [sp, #24]
	ldr	r3, [r5, #4]
	add	r2, r2, #3
	ldr	r0, [sp, #20]
	sub	r2, r2, r1
	blx	r3
	subs	r4, r0, #0
	bne	.L264
	ldr	r1, [sp, #32]
	mov	r0, r6
	ldr	r3, [r5, #8]
	add	r1, r1, #3
	blx	r3
	subs	r4, r0, #0
	bne	.L265
.L246:
	ldr	r2, .L267+16
	ldr	r3, .L267+4
.LPIC213:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #36]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L266
	mov	r0, r4
	add	sp, sp, #40
	@ sp needed
	pop	{r4, r5, r6, pc}
.L264:
	ldr	ip, .L267+20
	movw	r3, #638
	ldr	r0, .L267+24
	ldr	r2, .L267+28
	ldr	r1, .L267+32
.LPIC207:
	add	ip, pc, ip
.LPIC208:
	add	r0, pc, r0
.LPIC205:
	add	r2, pc, r2
.LPIC206:
	add	r1, pc, r1
.L259:
.L248:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	b	.L246
.L261:
	ldr	ip, .L267+36
	movw	r3, #629
	ldr	r0, .L267+40
	ldr	r2, .L267+44
	ldr	r1, .L267+48
.LPIC194:
	add	ip, pc, ip
.LPIC195:
	add	r0, pc, r0
.LPIC192:
	add	r2, pc, r2
.LPIC193:
	add	r1, pc, r1
	b	.L259
.L263:
	ldr	ip, .L267+52
	movw	r3, #637
	ldr	r0, .L267+56
	ldr	r2, .L267+60
	ldr	r1, .L267+64
.LPIC203:
	add	ip, pc, ip
.LPIC204:
	add	r0, pc, r0
.LPIC201:
	add	r2, pc, r2
.LPIC202:
	add	r1, pc, r1
	b	.L259
.L260:
	ldr	ip, .L267+68
	mvn	r4, #256
	ldr	r0, .L267+72
	mov	r3, #624
	ldr	r2, .L267+76
	ldr	r1, .L267+80
.LPIC190:
	add	ip, pc, ip
.LPIC191:
	add	r0, pc, r0
.LPIC188:
	add	r2, pc, r2
.LPIC189:
	add	r1, pc, r1
.L258:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	b	.L246
.L265:
	ldr	ip, .L267+84
	movw	r3, #643
	ldr	r0, .L267+88
	ldr	r2, .L267+92
	ldr	r1, .L267+96
.LPIC211:
	add	ip, pc, ip
.LPIC212:
	add	r0, pc, r0
.LPIC209:
	add	r2, pc, r2
.LPIC210:
	add	r1, pc, r1
	b	.L259
.L262:
	ldr	ip, .L267+100
	mvn	r4, #3840
	ldr	r0, .L267+104
	movw	r3, #631
	ldr	r2, .L267+108
	ldr	r1, .L267+112
.LPIC198:
	add	ip, pc, ip
.LPIC199:
	add	r0, pc, r0
.LPIC196:
	add	r2, pc, r2
.LPIC197:
	add	r1, pc, r1
	b	.L258
.L266:
	bl	__stack_chk_fail(PLT)
.L268:
	.align	2
.L267:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC214+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC200+8)
	.word	CRC_CCITT(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC213+8)
	.word	.LC47-(.LPIC207+8)
	.word	.LC5-(.LPIC208+8)
	.word	.LC25-(.LPIC205+8)
	.word	.LC3-(.LPIC206+8)
	.word	.LC44-(.LPIC194+8)
	.word	.LC5-(.LPIC195+8)
	.word	.LC25-(.LPIC192+8)
	.word	.LC3-(.LPIC193+8)
	.word	.LC46-(.LPIC203+8)
	.word	.LC5-(.LPIC204+8)
	.word	.LC25-(.LPIC201+8)
	.word	.LC3-(.LPIC202+8)
	.word	.LC4-(.LPIC190+8)
	.word	.LC5-(.LPIC191+8)
	.word	.LC43-(.LPIC188+8)
	.word	.LC3-(.LPIC189+8)
	.word	.LC48-(.LPIC211+8)
	.word	.LC5-(.LPIC212+8)
	.word	.LC25-(.LPIC209+8)
	.word	.LC3-(.LPIC210+8)
	.word	.LC45-(.LPIC198+8)
	.word	.LC5-(.LPIC199+8)
	.word	.LC43-(.LPIC196+8)
	.word	.LC3-(.LPIC197+8)
	.size	EeePSetCRC, .-EeePSetCRC
	.section	.rodata.str1.4
	.align	2
.LC49:
	.ascii	"EeePCheckCRC\000"
	.align	2
.LC50:
	.ascii	"CRC_CCITT.verify(&pContext, BufferMap.pEeePCRCBlock"
	.ascii	"->CrC16)\000"
	.text
	.align	2
	.global	EeePCheckCRC
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeePCheckCRC, %function
EeePCheckCRC:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L290
	cmp	r0, #0
	ldr	r3, .L290+4
	push	{r4, r5, r6, lr}
	sub	sp, sp, #40
.LPIC241:
	add	r2, pc, r2
	ldr	r5, .L290+8
	ldr	r3, [r2, r3]
.LPIC227:
	add	r5, pc, r5
	ldr	r3, [r3]
	str	r3, [sp, #36]
	mov	r3, #0
	beq	.L283
	add	r1, sp, #24
	bl	EeePMapBuffer(PLT)
	subs	r4, r0, #0
	bne	.L284
	ldr	r3, [sp, #32]
	cmp	r3, #0
	beq	.L285
	ldr	r2, [sp, #24]
	add	r6, sp, #20
	ldr	r3, .L290+12
	mov	r0, r6
	strb	r4, [r2]
	ldr	r5, [r5, r3]
	ldr	r3, [r5]
	blx	r3
	subs	r4, r0, #0
	bne	.L286
	ldr	r2, [sp, #32]
	ldr	r1, [sp, #24]
	ldr	r3, [r5, #4]
	add	r2, r2, #3
	ldr	r0, [sp, #20]
	sub	r2, r2, r1
	blx	r3
	subs	r4, r0, #0
	bne	.L287
	ldr	r1, [sp, #32]
	mov	r0, r6
	ldr	r3, [r5, #12]
	add	r1, r1, #3
	blx	r3
	subs	r4, r0, #0
	bne	.L288
.L269:
	ldr	r2, .L290+16
	ldr	r3, .L290+4
.LPIC240:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #36]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L289
	mov	r0, r4
	add	sp, sp, #40
	@ sp needed
	pop	{r4, r5, r6, pc}
.L287:
	ldr	ip, .L290+20
	movw	r3, #673
	ldr	r0, .L290+24
	ldr	r2, .L290+28
	ldr	r1, .L290+32
.LPIC234:
	add	ip, pc, ip
.LPIC235:
	add	r0, pc, r0
.LPIC232:
	add	r2, pc, r2
.LPIC233:
	add	r1, pc, r1
.L282:
.L271:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	b	.L269
.L284:
	ldr	ip, .L290+36
	movw	r3, #663
	ldr	r0, .L290+40
	ldr	r2, .L290+44
	ldr	r1, .L290+48
.LPIC221:
	add	ip, pc, ip
.LPIC222:
	add	r0, pc, r0
.LPIC219:
	add	r2, pc, r2
.LPIC220:
	add	r1, pc, r1
	b	.L282
.L286:
	ldr	ip, .L290+52
	mov	r3, #672
	ldr	r0, .L290+56
	ldr	r2, .L290+60
	ldr	r1, .L290+64
.LPIC230:
	add	ip, pc, ip
.LPIC231:
	add	r0, pc, r0
.LPIC228:
	add	r2, pc, r2
.LPIC229:
	add	r1, pc, r1
	b	.L282
.L283:
	ldr	ip, .L290+68
	mvn	r4, #256
	ldr	r0, .L290+72
	movw	r3, #658
	ldr	r2, .L290+76
	ldr	r1, .L290+80
.LPIC217:
	add	ip, pc, ip
.LPIC218:
	add	r0, pc, r0
.LPIC215:
	add	r2, pc, r2
.LPIC216:
	add	r1, pc, r1
.L281:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	b	.L269
.L288:
	ldr	ip, .L290+84
	movw	r3, #678
	ldr	r0, .L290+88
	ldr	r2, .L290+92
	ldr	r1, .L290+96
.LPIC238:
	add	ip, pc, ip
.LPIC239:
	add	r0, pc, r0
.LPIC236:
	add	r2, pc, r2
.LPIC237:
	add	r1, pc, r1
	b	.L282
.L285:
	ldr	ip, .L290+100
	mvn	r4, #3840
	ldr	r0, .L290+104
	movw	r3, #665
	ldr	r2, .L290+108
	ldr	r1, .L290+112
.LPIC225:
	add	ip, pc, ip
.LPIC226:
	add	r0, pc, r0
.LPIC223:
	add	r2, pc, r2
.LPIC224:
	add	r1, pc, r1
	b	.L281
.L289:
	bl	__stack_chk_fail(PLT)
.L291:
	.align	2
.L290:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC241+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC227+8)
	.word	CRC_CCITT(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC240+8)
	.word	.LC47-(.LPIC234+8)
	.word	.LC5-(.LPIC235+8)
	.word	.LC25-(.LPIC232+8)
	.word	.LC3-(.LPIC233+8)
	.word	.LC44-(.LPIC221+8)
	.word	.LC5-(.LPIC222+8)
	.word	.LC25-(.LPIC219+8)
	.word	.LC3-(.LPIC220+8)
	.word	.LC46-(.LPIC230+8)
	.word	.LC5-(.LPIC231+8)
	.word	.LC25-(.LPIC228+8)
	.word	.LC3-(.LPIC229+8)
	.word	.LC4-(.LPIC217+8)
	.word	.LC5-(.LPIC218+8)
	.word	.LC49-(.LPIC215+8)
	.word	.LC3-(.LPIC216+8)
	.word	.LC50-(.LPIC238+8)
	.word	.LC5-(.LPIC239+8)
	.word	.LC25-(.LPIC236+8)
	.word	.LC3-(.LPIC237+8)
	.word	.LC45-(.LPIC225+8)
	.word	.LC5-(.LPIC226+8)
	.word	.LC49-(.LPIC223+8)
	.word	.LC3-(.LPIC224+8)
	.size	EeePCheckCRC, .-EeePCheckCRC
	.section	.rodata.str1.4
	.align	2
.LC51:
	.ascii	"EeePAddBlock\000"
	.align	2
.LC52:
	.ascii	"(pcvBlock==NULL)\000"
	.align	2
.LC53:
	.ascii	"No Empty Block Present\000"
	.align	2
.LC54:
	.ascii	"(RequestBlockSize+EEEP_MIN_BLOCK_LENGTH>(GetBlockLe"
	.ascii	"ngth(BufferMap.pEmptyBlock)))\000"
	.align	2
.LC55:
	.ascii	"(cuiFlags&EEEP_ADDBLK_IN_CRC)&&(BufferMap.pEeePCRCB"
	.ascii	"lock==NULL)\000"
	.align	2
.LC56:
	.ascii	"ReduceBlockLength(&BufferMap.pEmptyBlock, RequestBl"
	.ascii	"ockSize, NULL, 0)\000"
	.align	2
.LC57:
	.ascii	"ReduceBlockLength(&BufferMap.pEmptyBlock, RequestBl"
	.ascii	"ockSize, &pvTmpBlock, EEEP_RBL_REDUCE_TOP_DOWN)\000"
	.text
	.align	2
	.global	EeePAddBlock
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeePAddBlock, %function
EeePAddBlock:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r7, r2
	ldr	r2, .L333
	mov	r8, r3
	subs	r4, r0, #0
	sub	sp, sp, #40
	ldr	r3, .L333+4
.LPIC275:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #36]
	mov	r3, #0
	beq	.L323
	cmp	r1, #0
	mov	r6, r1
	beq	.L324
	cmp	r7, #0
	add	r0, r1, #1
	movne	r3, #0
	strne	r3, [r7]
	bl	EeeP_Get16BitValue_BE(PLT)
	add	r1, sp, #24
	mov	r5, r0
	mov	r0, r4
	bl	EeePMapBuffer(PLT)
	subs	r4, r0, #0
	bne	.L325
	ldr	r0, [sp, #28]
	cmp	r0, #0
	beq	.L326
	lsl	r5, r5, #1
	add	r0, r0, #1
	bl	EeeP_Get16BitValue_BE(PLT)
	add	r3, r5, #4
	cmp	r3, r0, lsl #1
	bhi	.L327
	tst	r8, #1
	bne	.L328
	mov	r3, #1
	add	r2, sp, #20
	mov	r1, r5
	add	r0, sp, #28
	bl	ReduceBlockLength(PLT)
	subs	ip, r0, #0
	bne	.L329
.L304:
	ldr	r0, [sp, #20]
	mov	r2, r5
	mov	r1, r6
	bl	memcpy(PLT)
	cmp	r7, #0
	ldrne	r3, [sp, #20]
	strne	r3, [r7]
.L294:
.L292:
	ldr	r2, .L333+8
	ldr	r3, .L333+4
.LPIC274:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #36]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L330
	mov	r0, r4
	add	sp, sp, #40
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L328:
	ldr	r3, [sp, #32]
	cmp	r3, #0
	beq	.L331
	str	r3, [sp, #20]
	mov	r2, r4
	mov	r3, r4
	mov	r1, r5
	add	r0, sp, #28
	bl	ReduceBlockLength(PLT)
	subs	r9, r0, #0
	bne	.L332
	ldr	r8, [sp, #32]
	ldr	r10, [sp, #28]
	cmp	r8, #0
	beq	.L303
	add	r0, r8, #1
	bl	EeeP_Get16BitValue_BE(PLT)
	ldr	r8, [sp, #32]
	sub	r10, r10, r0, lsl #1
	cmp	r8, #0
	beq	.L303
	add	r0, r8, #1
	bl	EeeP_Get16BitValue_BE(PLT)
	lsl	r9, r0, #1
.L303:
	mov	r1, r8
	mov	r2, r9
	mov	r0, r10
	bl	memmove(PLT)
	ldr	r0, [sp, #20]
	mov	r2, r5
	mov	r1, #0
	bl	memset(PLT)
	b	.L304
.L325:
	ldr	ip, .L333+12
	movw	r3, #710
	ldr	r0, .L333+16
	ldr	r2, .L333+20
	ldr	r1, .L333+24
.LPIC252:
	add	ip, pc, ip
.LPIC253:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC250:
	add	r2, pc, r2
.LPIC251:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L292
.L327:
	ldr	ip, .L333+28
	mvn	r4, #3840
	ldr	r0, .L333+32
	movw	r3, #718
	ldr	r2, .L333+36
	ldr	r1, .L333+40
.LPIC260:
	add	ip, pc, ip
.LPIC261:
	add	r0, pc, r0
.LPIC258:
	add	r2, pc, r2
.LPIC259:
	add	r1, pc, r1
.L322:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	b	.L292
.L326:
	ldr	ip, .L333+44
	mvn	r4, #3840
	ldr	r0, .L333+48
	mov	r3, #712
	ldr	r2, .L333+52
	ldr	r1, .L333+56
.LPIC256:
	add	ip, pc, ip
.LPIC257:
	add	r0, pc, r0
.LPIC254:
	add	r2, pc, r2
.LPIC255:
	add	r1, pc, r1
	b	.L322
.L323:
	ldr	ip, .L333+60
	mvn	r4, #256
	ldr	r0, .L333+64
	movw	r3, #698
	ldr	r2, .L333+68
	ldr	r1, .L333+72
.LPIC244:
	add	ip, pc, ip
.LPIC245:
	add	r0, pc, r0
.LPIC242:
	add	r2, pc, r2
.LPIC243:
	add	r1, pc, r1
	b	.L322
.L332:
	ldr	ip, .L333+76
	movw	r3, #734
	ldr	r0, .L333+80
	mov	r4, r9
	ldr	r2, .L333+84
	ldr	r1, .L333+88
.LPIC268:
	add	ip, pc, ip
.LPIC269:
	add	r0, pc, r0
	str	r9, [sp]
	stmib	sp, {r0, ip}
.LPIC266:
	add	r2, pc, r2
.LPIC267:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L292
.L329:
	ldr	lr, .L333+92
	movw	r3, #755
	ldr	r0, .L333+96
	mov	r4, ip
	ldr	r2, .L333+100
	ldr	r1, .L333+104
.LPIC272:
	add	lr, pc, lr
.LPIC273:
	add	r0, pc, r0
	str	ip, [sp]
	stmib	sp, {r0, lr}
.LPIC270:
	add	r2, pc, r2
.LPIC271:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L292
.L324:
	ldr	ip, .L333+108
	mvn	r4, #256
	ldr	r0, .L333+112
	movw	r3, #703
	ldr	r2, .L333+116
	ldr	r1, .L333+120
.LPIC248:
	add	ip, pc, ip
.LPIC249:
	add	r0, pc, r0
.LPIC246:
	add	r2, pc, r2
.LPIC247:
	add	r1, pc, r1
	b	.L322
.L331:
	ldr	ip, .L333+124
	mvn	r4, #3840
	ldr	r0, .L333+128
	movw	r3, #723
	ldr	r2, .L333+132
	ldr	r1, .L333+136
.LPIC264:
	add	ip, pc, ip
.LPIC265:
	add	r0, pc, r0
.LPIC262:
	add	r2, pc, r2
.LPIC263:
	add	r1, pc, r1
	b	.L322
.L330:
	bl	__stack_chk_fail(PLT)
.L334:
	.align	2
.L333:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC275+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC274+8)
	.word	.LC44-(.LPIC252+8)
	.word	.LC5-(.LPIC253+8)
	.word	.LC25-(.LPIC250+8)
	.word	.LC3-(.LPIC251+8)
	.word	.LC54-(.LPIC260+8)
	.word	.LC5-(.LPIC261+8)
	.word	.LC51-(.LPIC258+8)
	.word	.LC3-(.LPIC259+8)
	.word	.LC53-(.LPIC256+8)
	.word	.LC5-(.LPIC257+8)
	.word	.LC51-(.LPIC254+8)
	.word	.LC3-(.LPIC255+8)
	.word	.LC4-(.LPIC244+8)
	.word	.LC5-(.LPIC245+8)
	.word	.LC51-(.LPIC242+8)
	.word	.LC3-(.LPIC243+8)
	.word	.LC56-(.LPIC268+8)
	.word	.LC5-(.LPIC269+8)
	.word	.LC25-(.LPIC266+8)
	.word	.LC3-(.LPIC267+8)
	.word	.LC57-(.LPIC272+8)
	.word	.LC5-(.LPIC273+8)
	.word	.LC25-(.LPIC270+8)
	.word	.LC3-(.LPIC271+8)
	.word	.LC52-(.LPIC248+8)
	.word	.LC5-(.LPIC249+8)
	.word	.LC51-(.LPIC246+8)
	.word	.LC3-(.LPIC247+8)
	.word	.LC55-(.LPIC264+8)
	.word	.LC5-(.LPIC265+8)
	.word	.LC51-(.LPIC262+8)
	.word	.LC3-(.LPIC263+8)
	.size	EeePAddBlock, .-EeePAddBlock
	.section	.rodata.str1.4
	.align	2
.LC58:
	.ascii	"EeePFindBlock\000"
	.align	2
.LC59:
	.ascii	"(pvFBlock==NULL)\000"
	.align	2
.LC60:
	.ascii	"(Instance==0)\000"
	.align	2
.LC61:
	.ascii	"Block Not Found\000"
	.text
	.align	2
	.global	EeePFindBlock
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeePFindBlock, %function
EeePFindBlock:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, r2
	ldr	r2, .L367
	mov	r10, r3
	subs	r6, r0, #0
	sub	sp, sp, #32
	ldr	r3, .L367+4
.LPIC301:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #28]
	mov	r3, #0
	beq	.L360
	cmp	r10, #0
	beq	.L361
	cmp	r5, #0
	beq	.L362
	mov	r7, r1
	add	r2, sp, #24
	add	r1, sp, #20
	bl	EeePGetFirstDB(PLT)
	subs	r8, r0, #0
	bne	.L340
	ldr	r4, [sp, #20]
	cmp	r4, #0
	beq	.L348
	ldr	r2, [sp, #24]
	sub	r3, r4, r6
	movw	r9, #65535
	cmp	r2, r3
	bcc	.L363
.L343:
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, r7
	bne	.L344
	subs	r5, r5, #1
	beq	.L364
	add	r0, r4, #1
	bl	EeeP_Get16BitValue_BE(PLT)
	cmp	r0, #0
	lsl	r3, r0, #1
	beq	.L365
.L358:
	cmp	r0, r9
	beq	.L349
	ldr	r2, [sp, #24]
	add	r4, r4, r3
	sub	r3, r4, r6
	str	r4, [sp, #20]
	cmp	r2, r3
	bcs	.L343
.L363:
	ldr	ip, .L367+8
	mvn	r8, #3840
	ldr	r0, .L367+12
	movw	r3, #798
	ldr	r2, .L367+16
	ldr	r1, .L367+20
.LPIC294:
	add	ip, pc, ip
.LPIC295:
	add	r0, pc, r0
.LPIC292:
	add	r2, pc, r2
.LPIC293:
	add	r1, pc, r1
.L359:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r8, [sp]
	bl	siFormattedMessage_SC(PLT)
.L335:
	ldr	r2, .L367+24
	ldr	r3, .L367+4
.LPIC300:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #28]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L366
	mov	r0, r8
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L344:
	add	r0, r4, #1
	bl	EeeP_Get16BitValue_BE(PLT)
	cmp	r0, #0
	lsl	r3, r0, #1
	bne	.L358
.L349:
	mov	r3, #0
	str	r3, [sp, #20]
.L348:
	ldr	ip, .L367+28
	mvn	r8, #3840
	ldr	r0, .L367+32
	movw	r3, #810
	ldr	r2, .L367+36
	ldr	r1, .L367+40
.LPIC298:
	add	ip, pc, ip
.LPIC299:
	add	r0, pc, r0
.LPIC296:
	add	r2, pc, r2
.LPIC297:
	add	r1, pc, r1
	b	.L359
.L365:
	str	r0, [sp, #20]
	b	.L348
.L362:
	ldr	ip, .L367+44
	mvn	r8, #256
	ldr	r0, .L367+48
	movw	r3, #789
	ldr	r2, .L367+52
	ldr	r1, .L367+56
.LPIC286:
	add	ip, pc, ip
.LPIC287:
	add	r0, pc, r0
.LPIC284:
	add	r2, pc, r2
.LPIC285:
	add	r1, pc, r1
	b	.L359
.L340:
	ldr	ip, .L367+60
	movw	r3, #795
	ldr	r0, .L367+64
	ldr	r2, .L367+68
	ldr	r1, .L367+72
.LPIC290:
	add	ip, pc, ip
.LPIC291:
	add	r0, pc, r0
	str	r8, [sp]
	stmib	sp, {r0, ip}
.LPIC288:
	add	r2, pc, r2
.LPIC289:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L335
.L364:
	str	r4, [r10]
	b	.L335
.L360:
	ldr	ip, .L367+76
	mvn	r8, #256
	ldr	r0, .L367+80
	movw	r3, #779
	ldr	r2, .L367+84
	ldr	r1, .L367+88
.LPIC278:
	add	ip, pc, ip
.LPIC279:
	add	r0, pc, r0
.LPIC276:
	add	r2, pc, r2
.LPIC277:
	add	r1, pc, r1
	b	.L359
.L361:
	ldr	ip, .L367+92
	mvn	r8, #256
	ldr	r0, .L367+96
	mov	r3, #784
	ldr	r2, .L367+100
	ldr	r1, .L367+104
.LPIC282:
	add	ip, pc, ip
.LPIC283:
	add	r0, pc, r0
.LPIC280:
	add	r2, pc, r2
.LPIC281:
	add	r1, pc, r1
	b	.L359
.L366:
	bl	__stack_chk_fail(PLT)
.L368:
	.align	2
.L367:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC301+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC34-(.LPIC294+8)
	.word	.LC5-(.LPIC295+8)
	.word	.LC58-(.LPIC292+8)
	.word	.LC3-(.LPIC293+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC300+8)
	.word	.LC61-(.LPIC298+8)
	.word	.LC5-(.LPIC299+8)
	.word	.LC58-(.LPIC296+8)
	.word	.LC3-(.LPIC297+8)
	.word	.LC60-(.LPIC286+8)
	.word	.LC5-(.LPIC287+8)
	.word	.LC58-(.LPIC284+8)
	.word	.LC3-(.LPIC285+8)
	.word	.LC33-(.LPIC290+8)
	.word	.LC5-(.LPIC291+8)
	.word	.LC25-(.LPIC288+8)
	.word	.LC3-(.LPIC289+8)
	.word	.LC4-(.LPIC278+8)
	.word	.LC5-(.LPIC279+8)
	.word	.LC58-(.LPIC276+8)
	.word	.LC3-(.LPIC277+8)
	.word	.LC59-(.LPIC282+8)
	.word	.LC5-(.LPIC283+8)
	.word	.LC58-(.LPIC280+8)
	.word	.LC3-(.LPIC281+8)
	.size	EeePFindBlock, .-EeePFindBlock
	.section	.rodata.str1.4
	.align	2
.LC62:
	.ascii	"EeePFindVendorBlock\000"
	.text
	.align	2
	.global	EeePFindVendorBlock
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeePFindVendorBlock, %function
EeePFindVendorBlock:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, r2
	ldr	r2, .L395
	mov	r9, r3
	subs	r5, r0, #0
	sub	sp, sp, #36
	ldr	r3, .L395+4
.LPIC331:
	add	r2, pc, r2
	ldr	fp, [sp, #72]
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #28]
	mov	r3, #0
	beq	.L387
	cmp	fp, #0
	beq	.L388
	cmp	r9, #0
	beq	.L389
	mov	r10, r1
	add	r2, sp, #24
	add	r1, sp, #20
	bl	EeePGetFirstDB(PLT)
	subs	r6, r0, #0
	bne	.L374
	ldr	r4, [sp, #20]
	cmp	r4, #0
	beq	.L380
	ldr	r2, [sp, #24]
	sub	r3, r4, r5
	movw	r7, #65535
	cmp	r2, r3
	bcc	.L390
.L376:
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #240
	bne	.L377
	ldrb	r3, [r4, #5]	@ zero_extendqisi2
	cmp	r3, r8
	beq	.L391
.L377:
	add	r0, r4, #1
	bl	EeeP_Get16BitValue_BE(PLT)
	cmp	r0, #0
	lsl	r3, r0, #1
	beq	.L392
	cmp	r0, r7
	beq	.L393
	ldr	r2, [sp, #24]
	add	r4, r4, r3
	sub	r3, r4, r5
	str	r4, [sp, #20]
	cmp	r2, r3
	bcs	.L376
.L390:
	ldr	ip, .L395+8
	mvn	r6, #3840
	ldr	r0, .L395+12
	movw	r3, #850
	ldr	r2, .L395+16
	ldr	r1, .L395+20
.LPIC324:
	add	ip, pc, ip
.LPIC325:
	add	r0, pc, r0
.LPIC322:
	add	r2, pc, r2
.LPIC323:
	add	r1, pc, r1
.L386:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r6, [sp]
	bl	siFormattedMessage_SC(PLT)
.L369:
	ldr	r2, .L395+24
	ldr	r3, .L395+4
.LPIC330:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #28]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L394
	mov	r0, r6
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L391:
	add	r0, r4, #3
	bl	EeeP_Get16BitValue_BE(PLT)
	cmp	r0, r10
	beq	.L378
	ldr	r4, [sp, #20]
.L379:
	cmp	r4, #0
	bne	.L377
	ldr	ip, .L395+28
	mov	r3, #161
	ldr	r0, .L395+32
	ldr	r2, .L395+36
	ldr	r1, .L395+40
.LPIC328:
	add	ip, pc, ip
.LPIC329:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC326:
	add	r2, pc, r2
.LPIC327:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	str	r4, [sp, #20]
	b	.L380
.L393:
	mov	r3, #0
	str	r3, [sp, #20]
.L380:
	ldr	ip, .L395+44
	mvn	r6, #3840
	ldr	r0, .L395+48
	movw	r3, #866
	ldr	r2, .L395+52
	ldr	r1, .L395+56
.LPIC316:
	add	ip, pc, ip
.LPIC317:
	add	r0, pc, r0
.LPIC314:
	add	r2, pc, r2
.LPIC315:
	add	r1, pc, r1
	b	.L386
.L392:
	str	r0, [sp, #20]
	b	.L380
.L378:
	subs	r9, r9, #1
	ldr	r4, [sp, #20]
	bne	.L379
	str	r4, [fp]
	b	.L369
.L389:
	ldr	ip, .L395+60
	mvn	r6, #256
	ldr	r0, .L395+64
	movw	r3, #841
	ldr	r2, .L395+68
	ldr	r1, .L395+72
.LPIC312:
	add	ip, pc, ip
.LPIC313:
	add	r0, pc, r0
.LPIC310:
	add	r2, pc, r2
.LPIC311:
	add	r1, pc, r1
	b	.L386
.L374:
	ldr	ip, .L395+76
	movw	r3, #847
	ldr	r0, .L395+80
	ldr	r2, .L395+84
	ldr	r1, .L395+88
.LPIC320:
	add	ip, pc, ip
.LPIC321:
	add	r0, pc, r0
	str	r6, [sp]
	stmib	sp, {r0, ip}
.LPIC318:
	add	r2, pc, r2
.LPIC319:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L369
.L387:
	ldr	ip, .L395+92
	mvn	r6, #256
	ldr	r0, .L395+96
	movw	r3, #831
	ldr	r2, .L395+100
	ldr	r1, .L395+104
.LPIC304:
	add	ip, pc, ip
.LPIC305:
	add	r0, pc, r0
.LPIC302:
	add	r2, pc, r2
.LPIC303:
	add	r1, pc, r1
	b	.L386
.L388:
	ldr	ip, .L395+108
	mvn	r6, #256
	ldr	r0, .L395+112
	mov	r3, #836
	ldr	r2, .L395+116
	ldr	r1, .L395+120
.LPIC308:
	add	ip, pc, ip
.LPIC309:
	add	r0, pc, r0
.LPIC306:
	add	r2, pc, r2
.LPIC307:
	add	r1, pc, r1
	b	.L386
.L394:
	bl	__stack_chk_fail(PLT)
.L396:
	.align	2
.L395:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC331+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC34-(.LPIC324+8)
	.word	.LC5-(.LPIC325+8)
	.word	.LC62-(.LPIC322+8)
	.word	.LC3-(.LPIC323+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC330+8)
	.word	.LC9-(.LPIC328+8)
	.word	.LC5-(.LPIC329+8)
	.word	.LC8-(.LPIC326+8)
	.word	.LC3-(.LPIC327+8)
	.word	.LC61-(.LPIC316+8)
	.word	.LC5-(.LPIC317+8)
	.word	.LC62-(.LPIC314+8)
	.word	.LC3-(.LPIC315+8)
	.word	.LC60-(.LPIC312+8)
	.word	.LC5-(.LPIC313+8)
	.word	.LC62-(.LPIC310+8)
	.word	.LC3-(.LPIC311+8)
	.word	.LC33-(.LPIC320+8)
	.word	.LC5-(.LPIC321+8)
	.word	.LC25-(.LPIC318+8)
	.word	.LC3-(.LPIC319+8)
	.word	.LC4-(.LPIC304+8)
	.word	.LC5-(.LPIC305+8)
	.word	.LC62-(.LPIC302+8)
	.word	.LC3-(.LPIC303+8)
	.word	.LC59-(.LPIC308+8)
	.word	.LC5-(.LPIC309+8)
	.word	.LC62-(.LPIC306+8)
	.word	.LC3-(.LPIC307+8)
	.size	EeePFindVendorBlock, .-EeePFindVendorBlock
	.section	.rodata.str1.4
	.align	2
.LC63:
	.ascii	"EeePFindSmbiosBlock\000"
	.text
	.align	2
	.global	EeePFindSmbiosBlock
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeePFindSmbiosBlock, %function
EeePFindSmbiosBlock:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r10, r2
	ldr	r2, .L421
	mov	r9, r3
	subs	r5, r0, #0
	sub	sp, sp, #32
	ldr	r3, .L421+4
.LPIC357:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #28]
	mov	r3, #0
	beq	.L414
	cmp	r9, #0
	beq	.L415
	mov	r8, r1
	add	r2, sp, #24
	add	r1, sp, #20
	bl	EeePGetFirstDB(PLT)
	subs	r7, r0, #0
	bne	.L401
	ldr	r4, [sp, #20]
	cmp	r4, #0
	beq	.L407
	ldr	r2, [sp, #24]
	sub	r3, r4, r5
	movw	r6, #65535
	cmp	r2, r3
	bcc	.L416
.L403:
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #208
	bne	.L404
	ldrb	r3, [r4, #3]	@ zero_extendqisi2
	cmp	r3, r8
	beq	.L417
.L404:
	add	r0, r4, #1
	bl	EeeP_Get16BitValue_BE(PLT)
	cmp	r0, #0
	lsl	r3, r0, #1
	beq	.L418
	cmp	r0, r6
	beq	.L419
	ldr	r2, [sp, #24]
	add	r4, r4, r3
	sub	r3, r4, r5
	str	r4, [sp, #20]
	cmp	r2, r3
	bcs	.L403
.L416:
	ldr	ip, .L421+8
	mvn	r7, #3840
	ldr	r0, .L421+12
	mov	r3, #900
	ldr	r2, .L421+16
	ldr	r1, .L421+20
.LPIC350:
	add	ip, pc, ip
.LPIC351:
	add	r0, pc, r0
.LPIC348:
	add	r2, pc, r2
.LPIC349:
	add	r1, pc, r1
.L413:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r7, [sp]
	bl	siFormattedMessage_SC(PLT)
.L397:
	ldr	r2, .L421+24
	ldr	r3, .L421+4
.LPIC356:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #28]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L420
	mov	r0, r7
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L417:
	add	r0, r4, #5
	bl	EeeP_Get16BitValue_BE(PLT)
	cmp	r0, r10
	beq	.L405
	ldr	r4, [sp, #20]
	cmp	r4, #0
	bne	.L404
	ldr	ip, .L421+28
	mov	r3, #161
	ldr	r0, .L421+32
	ldr	r2, .L421+36
	ldr	r1, .L421+40
.LPIC354:
	add	ip, pc, ip
.LPIC355:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC352:
	add	r2, pc, r2
.LPIC353:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	str	r4, [sp, #20]
.L407:
	ldr	ip, .L421+44
	mvn	r7, #3840
	ldr	r0, .L421+48
	movw	r3, #914
	ldr	r2, .L421+52
	ldr	r1, .L421+56
.LPIC342:
	add	ip, pc, ip
.LPIC343:
	add	r0, pc, r0
.LPIC340:
	add	r2, pc, r2
.LPIC341:
	add	r1, pc, r1
	b	.L413
.L419:
	mov	r3, #0
	str	r3, [sp, #20]
	b	.L407
.L418:
	str	r0, [sp, #20]
	b	.L407
.L401:
	ldr	ip, .L421+60
	movw	r3, #897
	ldr	r0, .L421+64
	ldr	r2, .L421+68
	ldr	r1, .L421+72
.LPIC346:
	add	ip, pc, ip
.LPIC347:
	add	r0, pc, r0
	str	r7, [sp]
	stmib	sp, {r0, ip}
.LPIC344:
	add	r2, pc, r2
.LPIC345:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L397
.L415:
	ldr	ip, .L421+76
	mvn	r7, #256
	ldr	r0, .L421+80
	movw	r3, #891
	ldr	r2, .L421+84
	ldr	r1, .L421+88
.LPIC338:
	add	ip, pc, ip
.LPIC339:
	add	r0, pc, r0
.LPIC336:
	add	r2, pc, r2
.LPIC337:
	add	r1, pc, r1
	b	.L413
.L414:
	ldr	ip, .L421+92
	mvn	r7, #256
	ldr	r0, .L421+96
	movw	r3, #886
	ldr	r2, .L421+100
	ldr	r1, .L421+104
.LPIC334:
	add	ip, pc, ip
.LPIC335:
	add	r0, pc, r0
.LPIC332:
	add	r2, pc, r2
.LPIC333:
	add	r1, pc, r1
	b	.L413
.L405:
	ldr	r3, [sp, #20]
	str	r3, [r9]
	b	.L397
.L420:
	bl	__stack_chk_fail(PLT)
.L422:
	.align	2
.L421:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC357+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC34-(.LPIC350+8)
	.word	.LC5-(.LPIC351+8)
	.word	.LC63-(.LPIC348+8)
	.word	.LC3-(.LPIC349+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC356+8)
	.word	.LC9-(.LPIC354+8)
	.word	.LC5-(.LPIC355+8)
	.word	.LC8-(.LPIC352+8)
	.word	.LC3-(.LPIC353+8)
	.word	.LC61-(.LPIC342+8)
	.word	.LC5-(.LPIC343+8)
	.word	.LC63-(.LPIC340+8)
	.word	.LC3-(.LPIC341+8)
	.word	.LC33-(.LPIC346+8)
	.word	.LC5-(.LPIC347+8)
	.word	.LC25-(.LPIC344+8)
	.word	.LC3-(.LPIC345+8)
	.word	.LC59-(.LPIC338+8)
	.word	.LC5-(.LPIC339+8)
	.word	.LC63-(.LPIC336+8)
	.word	.LC3-(.LPIC337+8)
	.word	.LC4-(.LPIC334+8)
	.word	.LC5-(.LPIC335+8)
	.word	.LC63-(.LPIC332+8)
	.word	.LC3-(.LPIC333+8)
	.size	EeePFindSmbiosBlock, .-EeePFindSmbiosBlock
	.section	.rodata.str1.4
	.align	2
.LC64:
	.ascii	"EeePWriteBufferToFile\000"
	.align	2
.LC65:
	.ascii	"(pszFilename==NULL)\000"
	.text
	.align	2
	.global	EeePWriteBufferToFile
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeePWriteBufferToFile, %function
EeePWriteBufferToFile:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r3, r0, #0
	push	{r4, lr}
	sub	sp, sp, #16
	beq	.L432
	cmp	r1, #0
	mov	r0, r1
	beq	.L433
	ldrb	r2, [r3, #1]	@ zero_extendqisi2
	cmp	r2, #51
	beq	.L434
.L427:
	ldr	ip, .L435
	mvn	r4, #3840
	ldr	r0, .L435+4
	movw	r3, #941
	ldr	r2, .L435+8
	ldr	r1, .L435+12
.LPIC369:
	add	ip, pc, ip
.LPIC370:
	add	r0, pc, r0
.LPIC367:
	add	r2, pc, r2
.LPIC368:
	add	r1, pc, r1
.L431:
.L425:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L434:
	ldrb	r2, [r3, #2]	@ zero_extendqisi2
	cmp	r2, #80
	bne	.L427
	ldrb	ip, [r3, #5]	@ zero_extendqisi2
	mov	r2, #256
	mov	r1, r3
	and	ip, ip, #15
	lsl	r2, r2, ip
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	b	WriteBinaryFile(PLT)
.L432:
	ldr	ip, .L435+16
	mvn	r4, #256
	ldr	r0, .L435+20
	movw	r3, #931
	ldr	r2, .L435+24
	ldr	r1, .L435+28
.LPIC360:
	add	ip, pc, ip
.LPIC361:
	add	r0, pc, r0
.LPIC358:
	add	r2, pc, r2
.LPIC359:
	add	r1, pc, r1
	b	.L431
.L433:
	ldr	ip, .L435+32
	mvn	r4, #256
	ldr	r0, .L435+36
	mov	r3, #936
	ldr	r2, .L435+40
	ldr	r1, .L435+44
.LPIC364:
	add	ip, pc, ip
.LPIC365:
	add	r0, pc, r0
.LPIC362:
	add	r2, pc, r2
.LPIC363:
	add	r1, pc, r1
	b	.L431
.L436:
	.align	2
.L435:
	.word	.LC20-(.LPIC369+8)
	.word	.LC5-(.LPIC370+8)
	.word	.LC64-(.LPIC367+8)
	.word	.LC3-(.LPIC368+8)
	.word	.LC4-(.LPIC360+8)
	.word	.LC5-(.LPIC361+8)
	.word	.LC64-(.LPIC358+8)
	.word	.LC3-(.LPIC359+8)
	.word	.LC65-(.LPIC364+8)
	.word	.LC5-(.LPIC365+8)
	.word	.LC64-(.LPIC362+8)
	.word	.LC3-(.LPIC363+8)
	.size	EeePWriteBufferToFile, .-EeePWriteBufferToFile
	.section	.rodata.str1.4
	.align	2
.LC66:
	.ascii	"EeePReadBufferFromFile\000"
	.align	2
.LC67:
	.ascii	"ReadBinaryFile( pszFilename, pBHandel, &stFileSize "
	.ascii	")\000"
	.align	2
.LC68:
	.ascii	"(stFileSize!=(size_t)(256<<(((EeePCmn_t*)*pBHandel)"
	.ascii	"->DeviceDesc&EEEP_DEVICE_SIZE_MASK)))\000"
	.text
	.align	2
	.global	EeePReadBufferFromFile
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeePReadBufferFromFile, %function
EeePReadBufferFromFile:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L455
	ldr	r3, .L455+4
	push	{r4, r5, lr}
	subs	r5, r0, #0
.LPIC393:
	add	r2, pc, r2
	sub	sp, sp, #28
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #20]
	mov	r3, #0
	beq	.L449
	cmp	r1, #0
	mov	r0, r1
	beq	.L450
	add	r2, sp, #16
	mov	r1, r5
	bl	ReadBinaryFile(PLT)
	subs	r4, r0, #0
	bne	.L451
	ldr	r3, [r5]
	mov	r0, #256
	ldr	r1, [sp, #16]
	ldrb	r2, [r3, #5]	@ zero_extendqisi2
	and	r2, r2, #15
	cmp	r1, r0, lsl r2
	bne	.L452
	ldrb	r2, [r3, #1]	@ zero_extendqisi2
	add	r3, r3, #1
	cmp	r2, #51
	beq	.L453
.L443:
	ldr	ip, .L455+8
	mvn	r4, #3840
	ldr	r0, .L455+12
	movw	r3, #997
	ldr	r2, .L455+16
	ldr	r1, .L455+20
.LPIC390:
	add	ip, pc, ip
.LPIC391:
	add	r0, pc, r0
.LPIC388:
	add	r2, pc, r2
.LPIC389:
	add	r1, pc, r1
.L448:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
.L439:
.L437:
	ldr	r2, .L455+24
	ldr	r3, .L455+4
.LPIC392:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #20]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L454
	mov	r0, r4
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, pc}
.L453:
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #80
	bne	.L443
	b	.L437
.L451:
	ldr	ip, .L455+28
	mov	r3, #980
	ldr	r0, .L455+32
	ldr	r2, .L455+36
	ldr	r1, .L455+40
.LPIC381:
	add	ip, pc, ip
.LPIC382:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC379:
	add	r2, pc, r2
.LPIC380:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L437
.L452:
	ldr	ip, .L455+44
	mvn	r4, #3840
	ldr	r0, .L455+48
	movw	r3, #986
	ldr	r2, .L455+52
	ldr	r1, .L455+56
.LPIC385:
	add	ip, pc, ip
.LPIC386:
	add	r0, pc, r0
.LPIC383:
	add	r2, pc, r2
.LPIC384:
	add	r1, pc, r1
	b	.L448
.L450:
	ldr	ip, .L455+60
	mvn	r4, #256
	ldr	r0, .L455+64
	movw	r3, #975
	ldr	r2, .L455+68
	ldr	r1, .L455+72
.LPIC377:
	add	ip, pc, ip
.LPIC378:
	add	r0, pc, r0
.LPIC375:
	add	r2, pc, r2
.LPIC376:
	add	r1, pc, r1
	b	.L448
.L449:
	ldr	ip, .L455+76
	mvn	r4, #256
	ldr	r0, .L455+80
	movw	r3, #970
	ldr	r2, .L455+84
	ldr	r1, .L455+88
.LPIC373:
	add	ip, pc, ip
.LPIC374:
	add	r0, pc, r0
.LPIC371:
	add	r2, pc, r2
.LPIC372:
	add	r1, pc, r1
	b	.L448
.L454:
	bl	__stack_chk_fail(PLT)
.L456:
	.align	2
.L455:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC393+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC20-(.LPIC390+8)
	.word	.LC5-(.LPIC391+8)
	.word	.LC66-(.LPIC388+8)
	.word	.LC3-(.LPIC389+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC392+8)
	.word	.LC67-(.LPIC381+8)
	.word	.LC5-(.LPIC382+8)
	.word	.LC25-(.LPIC379+8)
	.word	.LC3-(.LPIC380+8)
	.word	.LC68-(.LPIC385+8)
	.word	.LC5-(.LPIC386+8)
	.word	.LC66-(.LPIC383+8)
	.word	.LC3-(.LPIC384+8)
	.word	.LC65-(.LPIC377+8)
	.word	.LC5-(.LPIC378+8)
	.word	.LC66-(.LPIC375+8)
	.word	.LC3-(.LPIC376+8)
	.word	.LC16-(.LPIC373+8)
	.word	.LC5-(.LPIC374+8)
	.word	.LC66-(.LPIC371+8)
	.word	.LC3-(.LPIC372+8)
	.size	EeePReadBufferFromFile, .-EeePReadBufferFromFile
	.section	.rodata.str1.4
	.align	2
.LC69:
	.ascii	"EeePWriteBufferToEEP\000"
	.text
	.align	2
	.global	EeePSetI2CDeviceDesc
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeePSetI2CDeviceDesc, %function
EeePSetI2CDeviceDesc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	push	{r4, lr}
	sub	sp, sp, #16
	beq	.L467
	mov	ip, r0
	ldrb	r0, [r1, #1]	@ zero_extendqisi2
	cmp	r0, #51
	beq	.L468
.L460:
	ldr	ip, .L469
	mvn	r4, #3840
	ldr	r0, .L469+4
	movw	r3, #1023
	ldr	r2, .L469+8
	ldr	r1, .L469+12
.LPIC401:
	add	ip, pc, ip
.LPIC402:
	add	r0, pc, r0
.LPIC399:
	add	r2, pc, r2
.LPIC400:
	add	r1, pc, r1
.L466:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L468:
	ldrb	r0, [r1, #2]	@ zero_extendqisi2
	cmp	r0, #80
	bne	.L460
.L459:
	strh	r3, [ip]	@ movhi
	mov	r3, #256
	strh	r2, [ip, #6]	@ movhi
	mov	r0, #0
	ldrb	r1, [r1, #5]	@ zero_extendqisi2
	ldr	r2, .L469+16
	and	lr, r1, #15
	tst	r1, #16
	lsl	r3, r3, lr
	lsr	lr, r1, #5
.LPIC403:
	add	r2, pc, r2
	movne	r1, #2
	ldr	r2, [r2, lr, lsl #2]
	moveq	r1, #1
	str	r3, [ip, #8]
	strh	r1, [ip, #4]	@ movhi
	strh	r2, [ip, #2]	@ movhi
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L467:
	ldr	ip, .L469+20
	mvn	r4, #256
	ldr	r0, .L469+24
	movw	r3, #1018
	ldr	r2, .L469+28
	ldr	r1, .L469+32
.LPIC396:
	add	ip, pc, ip
.LPIC397:
	add	r0, pc, r0
.LPIC394:
	add	r2, pc, r2
.LPIC395:
	add	r1, pc, r1
	b	.L466
.L470:
	.align	2
.L469:
	.word	.LC20-(.LPIC401+8)
	.word	.LC5-(.LPIC402+8)
	.word	.LC69-(.LPIC399+8)
	.word	.LC3-(.LPIC400+8)
	.word	.LANCHOR1-(.LPIC403+8)
	.word	.LC4-(.LPIC396+8)
	.word	.LC5-(.LPIC397+8)
	.word	.LC69-(.LPIC394+8)
	.word	.LC3-(.LPIC395+8)
	.size	EeePSetI2CDeviceDesc, .-EeePSetI2CDeviceDesc
	.section	.rodata.str1.4
	.align	2
.LC70:
	.ascii	"EeePSetI2CDeviceDesc(&DDesc, BHandel, 5, u16DeviceA"
	.ascii	"ddr)\000"
	.text
	.align	2
	.global	EeePWriteBufferToEEP
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeePWriteBufferToEEP, %function
EeePWriteBufferToEEP:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L486
	subs	r3, r0, #0
	ldr	r0, .L486+4
	push	{r4, lr}
	sub	sp, sp, #32
.LPIC419:
	add	ip, pc, ip
	ldr	r0, [ip, r0]
	ldr	r0, [r0]
	str	r0, [sp, #28]
	mov	r0, #0
	beq	.L483
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	cmp	r0, #51
	beq	.L484
.L474:
	ldr	lr, .L486+8
	mvn	ip, #3840
	ldr	r0, .L486+12
	movw	r3, #1023
	ldr	r2, .L486+16
	ldr	r1, .L486+20
.LPIC411:
	add	lr, pc, lr
.LPIC412:
	add	r0, pc, r0
.LPIC409:
	add	r2, pc, r2
.LPIC410:
	add	r1, pc, r1
.L482:
	stmib	sp, {r0, lr}
	mov	r0, #69
	str	ip, [sp]
	mov	r4, ip
	bl	siFormattedMessage_SC(PLT)
	ldr	ip, .L486+24
	movw	r3, #1051
	ldr	r0, .L486+28
	ldr	r2, .L486+32
	ldr	r1, .L486+36
.LPIC416:
	add	ip, pc, ip
.LPIC417:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC414:
	add	r2, pc, r2
.LPIC415:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
.L478:
.L471:
	ldr	r2, .L486+40
	ldr	r3, .L486+4
.LPIC418:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #28]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L485
	mov	r0, r4
	add	sp, sp, #32
	@ sp needed
	pop	{r4, pc}
.L484:
	ldrb	r0, [r3, #2]	@ zero_extendqisi2
	cmp	r0, #80
	bne	.L474
	ldrb	ip, [r3, #5]	@ zero_extendqisi2
	mov	r0, #5
	ldr	lr, .L486+44
	strh	r2, [sp, #16]	@ movhi
	tst	ip, #16
	strh	r0, [sp, #22]	@ movhi
	lsr	r2, ip, #5
.LPIC413:
	add	lr, pc, lr
	and	ip, ip, #15
	ldr	lr, [lr, r2, lsl #2]
	mov	r2, #256
	lsl	r2, r2, ip
	mov	r0, r1
	movne	r1, #2
	moveq	r1, #1
	str	r2, [sp]
	strh	r1, [sp, #20]	@ movhi
	add	r1, sp, #16
	str	r2, [sp, #24]
	mov	r2, #0
	strh	lr, [sp, #18]	@ movhi
	bl	EApiAHI2CWriteEeprom(PLT)
	mov	r4, r0
	b	.L471
.L483:
	ldr	lr, .L486+48
	mvn	ip, #256
	ldr	r0, .L486+52
	movw	r3, #1018
	ldr	r2, .L486+56
	ldr	r1, .L486+60
.LPIC406:
	add	lr, pc, lr
.LPIC407:
	add	r0, pc, r0
.LPIC404:
	add	r2, pc, r2
.LPIC405:
	add	r1, pc, r1
	b	.L482
.L485:
	bl	__stack_chk_fail(PLT)
.L487:
	.align	2
.L486:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC419+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC20-(.LPIC411+8)
	.word	.LC5-(.LPIC412+8)
	.word	.LC69-(.LPIC409+8)
	.word	.LC3-(.LPIC410+8)
	.word	.LC70-(.LPIC416+8)
	.word	.LC5-(.LPIC417+8)
	.word	.LC25-(.LPIC414+8)
	.word	.LC3-(.LPIC415+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC418+8)
	.word	.LANCHOR1-(.LPIC413+8)
	.word	.LC4-(.LPIC406+8)
	.word	.LC5-(.LPIC407+8)
	.word	.LC69-(.LPIC404+8)
	.word	.LC3-(.LPIC405+8)
	.size	EeePWriteBufferToEEP, .-EeePWriteBufferToEEP
	.section	.rodata.str1.4
	.align	2
.LC71:
	.ascii	"EeePReadBufferFromEEP\000"
	.align	2
.LC72:
	.ascii	"EApiAHI2CReadEeprom( DeviceBus, &DDesc, 1, EeePCmnH"
	.ascii	"dr.EepId, sizeof(EeePCmnHdr)- 1, sizeof(EeePCmnHdr)"
	.ascii	"- 1 )\000"
	.align	2
.LC73:
	.ascii	"EeePSetI2CDeviceDesc(&DDesc, &EeePCmnHdr, 5, u16Dev"
	.ascii	"iceAddr)\000"
	.text
	.align	2
	.global	EeePReadBufferFromEEP
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeePReadBufferFromEEP, %function
EeePReadBufferFromEEP:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r8, r2
	ldr	r2, .L509
	subs	r6, r0, #0
	sub	sp, sp, #40
	ldr	r3, .L509+4
.LPIC443:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #36]
	mov	r3, #0
	beq	.L504
	mov	r3, #0
	mov	r7, r1
	str	r3, [r6]
	mov	r3, #2
	movt	r3, 5
	mov	r5, #5
	str	r3, [sp, #20]
	add	r10, sp, #29
	mov	r3, #6
	add	r9, sp, #16
	mov	r2, #1
	str	r3, [sp, #24]
	mov	r1, r9
	mov	r3, r10
	mov	r0, r7
	str	r5, [sp, #4]
	str	r5, [sp]
	strh	r8, [sp, #16]	@ movhi
	strh	r2, [sp, #18]	@ movhi
	bl	EApiAHI2CReadEeprom(PLT)
	subs	r4, r0, #0
	bne	.L505
	ldrb	r3, [sp, #29]	@ zero_extendqisi2
	cmp	r3, #51
	beq	.L506
.L493:
	ldr	r7, .L509+8
	mvn	r4, #3840
	ldr	r5, .L509+12
	mov	r0, #69
	ldr	r3, .L509+16
	ldr	r2, .L509+20
.LPIC430:
	add	r7, pc, r7
.LPIC432:
	add	r5, pc, r5
	mov	r1, r7
.LPIC431:
	add	r3, pc, r3
	strd	r4, [sp]
.LPIC429:
	add	r2, pc, r2
	str	r3, [sp, #8]
	movw	r3, #1023
	bl	siFormattedMessage_SC(PLT)
	ldr	r2, .L509+24
	mov	r1, r7
	movw	r3, #1095
	mov	r0, #69
	str	r5, [sp, #4]
.LPIC435:
	add	r2, pc, r2
	str	r4, [sp]
	str	r2, [sp, #8]
	ldr	r2, .L509+28
.LPIC433:
	add	r2, pc, r2
	bl	siFormattedMessage_SC(PLT)
.L492:
	ldr	r0, [r6]
	cmp	r0, #0
	beq	.L490
	bl	free(PLT)
.L490:
	mov	r3, #0
	str	r3, [r6]
.L488:
	ldr	r2, .L509+32
	ldr	r3, .L509+4
.LPIC442:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #36]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L507
	mov	r0, r4
	add	sp, sp, #40
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L505:
	ldr	r1, .L509+36
	movw	r3, #1086
	ldr	r0, .L509+40
	ldr	r2, .L509+44
.LPIC427:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC426:
	add	r0, pc, r0
	ldr	r1, .L509+48
.LPIC424:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC425:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L492
.L506:
	ldrb	r3, [r10, #1]	@ zero_extendqisi2
	cmp	r3, #80
	bne	.L493
	ldrb	r3, [sp, #33]	@ zero_extendqisi2
	ldr	r2, .L509+52
	strh	r5, [sp, #22]	@ movhi
	mov	r5, #256
	tst	r3, #16
	strh	r8, [sp, #16]	@ movhi
	lsr	r1, r3, #5
.LPIC437:
	add	r2, pc, r2
	and	r3, r3, #15
	lsl	r5, r5, r3
	ldr	r2, [r2, r1, lsl #2]
	movne	r3, #2
	moveq	r3, #1
	mov	r0, r5
	strh	r3, [sp, #20]	@ movhi
	strh	r2, [sp, #18]	@ movhi
	str	r5, [sp, #24]
	bl	malloc(PLT)
	cmp	r0, #0
	mov	r3, r0
	str	r0, [r6]
	beq	.L508
	mov	r2, r4
	mov	r1, r9
	mov	r0, r7
	str	r5, [sp, #4]
	str	r5, [sp]
	bl	EApiAHI2CReadEeprom(PLT)
	subs	r4, r0, #0
	beq	.L488
	b	.L492
.L504:
	ldr	r1, .L509+56
	mvn	r4, #256
	ldr	r2, .L509+60
	movw	r3, #1075
	str	r4, [sp]
	mov	r0, #69
.LPIC422:
	add	r1, pc, r1
.LPIC423:
	add	r2, pc, r2
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r1, .L509+64
	ldr	r2, .L509+68
.LPIC421:
	add	r1, pc, r1
.LPIC420:
	add	r2, pc, r2
	bl	siFormattedMessage_SC(PLT)
	b	.L490
.L507:
	bl	__stack_chk_fail(PLT)
.L508:
	ldr	r1, .L509+72
	mvn	r4, #2
	ldr	r2, .L509+76
	movw	r3, #1100
	str	r4, [sp]
	mov	r0, #69
.LPIC440:
	add	r1, pc, r1
.LPIC441:
	add	r2, pc, r2
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r1, .L509+80
	ldr	r2, .L509+84
.LPIC439:
	add	r1, pc, r1
.LPIC438:
	add	r2, pc, r2
	bl	siFormattedMessage_SC(PLT)
	b	.L492
.L510:
	.align	2
.L509:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC443+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC3-(.LPIC430+8)
	.word	.LC5-(.LPIC432+8)
	.word	.LC20-(.LPIC431+8)
	.word	.LC69-(.LPIC429+8)
	.word	.LC73-(.LPIC435+8)
	.word	.LC25-(.LPIC433+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC442+8)
	.word	.LC5-(.LPIC427+8)
	.word	.LC72-(.LPIC426+8)
	.word	.LC25-(.LPIC424+8)
	.word	.LC3-(.LPIC425+8)
	.word	.LANCHOR1-(.LPIC437+8)
	.word	.LC16-(.LPIC422+8)
	.word	.LC5-(.LPIC423+8)
	.word	.LC3-(.LPIC421+8)
	.word	.LC71-(.LPIC420+8)
	.word	.LC24-(.LPIC440+8)
	.word	.LC5-(.LPIC441+8)
	.word	.LC3-(.LPIC439+8)
	.word	.LC71-(.LPIC438+8)
	.size	EeePReadBufferFromEEP, .-EeePReadBufferFromEEP
	.global	WriteSizes
	.global	BlockIdLookup
	.section	.rodata.str1.4
	.align	2
.LC74:
	.ascii	"EEEP_BLOCK_ID_UNUSED\000"
	.align	2
.LC75:
	.ascii	"EEEP_BLOCK_ID_VENDOR_SPECIFIC\000"
	.align	2
.LC76:
	.ascii	"EEEP_BLOCK_ID_EXP_EEPROM\000"
	.align	2
.LC77:
	.ascii	"EEEP_BLOCK_ID_SMBIOS\000"
	.align	2
.LC78:
	.ascii	"EEEP_BLOCK_ID_LFP\000"
	.align	2
.LC79:
	.ascii	"EEEP_BLOCK_ID_CRC_CHK\000"
	.align	2
.LC80:
	.ascii	"EEEP_BLOCK_ID_IGNORE\000"
	.align	2
.LC81:
	.ascii	"COM0R20_BLOCK_ID_EXP_CARD_DESC\000"
	.align	2
.LC82:
	.ascii	"COM0R20_BLOCK_ID_SERIO_DESC\000"
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	WriteSizes, %object
	.size	WriteSizes, 32
WriteSizes:
	.word	1
	.word	8
	.word	16
	.word	32
	.word	64
	.word	128
	.word	256
	.word	512
	.section	.data.rel.local,"aw"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	BlockIdLookup, %object
	.size	BlockIdLookup, 80
BlockIdLookup:
	.word	.LC74
	.word	0
	.word	.LC75
	.word	240
	.word	.LC76
	.word	241
	.word	.LC77
	.word	208
	.word	.LC78
	.word	209
	.word	.LC79
	.word	242
	.word	.LC80
	.word	255
	.word	.LC81
	.word	224
	.word	.LC82
	.word	225
	.word	0
	.word	0
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
