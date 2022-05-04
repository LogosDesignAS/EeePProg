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
	.file	"Str2Value.c"
	.text
	.align	2
	.global	ParseOpcodeTokensAscii
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	ParseOpcodeTokensAscii, %function
ParseOpcodeTokensAscii:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r5, r1
	mov	r1, r0
	ldr	r0, .L8
	mov	r7, r3
	sub	sp, sp, #12
	ldr	r3, .L8+4
	mov	r6, r2
.LPIC1:
	add	r0, pc, r0
	mov	r2, sp
	ldr	r3, [r0, r3]
	ldr	r0, [r5]
	ldr	r3, [r3]
	str	r3, [sp, #4]
	mov	r3, #0
	bl	szFindStr(PLT)
	subs	r4, r0, #0
	str	r0, [r6]
	streq	r4, [r5]
	streq	r4, [r7]
	beq	.L3
	ldr	r2, [sp]
	ldm	r2, {r0, r3}
	str	r3, [r7]
	bl	strlen(PLT)
	add	r4, r4, r0
	str	r4, [r5]
.L3:
	ldr	r2, .L8+8
	ldr	r3, .L8+4
.LPIC0:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #4]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L7
	mov	r0, #0
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L7:
	bl	__stack_chk_fail(PLT)
.L9:
	.align	2
.L8:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+8)
	.size	ParseOpcodeTokensAscii, .-ParseOpcodeTokensAscii
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"<>\000"
	.text
	.align	2
	.global	ParseAscii_8
	.syntax unified
	.arm
	.fpu vfpv3
	.type	ParseAscii_8, %function
ParseAscii_8:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L28
	push	{r4, r5, r6, r7, lr}
	mov	r5, r2
	ldr	r2, .L28+4
	mov	r6, r3
.LPIC2:
	add	ip, pc, ip
	mov	r4, r1
	ldr	r3, .L28+8
	sub	sp, sp, #12
.LPIC4:
	add	r2, pc, r2
	ldr	r0, [r1]
	ldr	r1, [ip]
	mov	r7, sp
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #4]
	mov	r3, #0
	strh	r1, [sp]	@ movhi
	lsr	r1, r1, #16
	strb	r1, [sp, #2]
.L11:
	mov	r1, r7
	bl	strpbrk(PLT)
	cmp	r0, #0
	beq	.L25
	ldrb	ip, [r0, #1]	@ zero_extendqisi2
	and	ip, ip, #253
	cmp	ip, #60
	beq	.L26
	mov	r3, r0
	str	r0, [r5]
	ldrb	r2, [r3], #1	@ zero_extendqisi2
	cmp	r2, #60
	beq	.L19
	cmp	r2, #62
	beq	.L20
.L16:
	str	r3, [r4]
.L18:
	ldr	r2, .L28+12
	ldr	r3, .L28+8
.LPIC3:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #4]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L27
	mov	r0, #0
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L20:
	ldrb	r2, [r0, #1]	@ zero_extendqisi2
	cmp	r2, #61
	moveq	r2, #6
	movne	r2, #5
	addeq	r3, r0, #2
	str	r2, [r6]
	b	.L16
.L26:
	add	r0, r0, #2
	b	.L11
.L19:
	ldrb	r2, [r0, #1]	@ zero_extendqisi2
	cmp	r2, #61
	moveq	r2, #8
	movne	r2, #7
	addeq	r3, r0, #2
	str	r2, [r6]
	b	.L16
.L25:
	str	r0, [r5]
	str	r0, [r4]
	str	r0, [r6]
	b	.L18
.L27:
	bl	__stack_chk_fail(PLT)
.L29:
	.align	2
.L28:
	.word	.LC0-(.LPIC2+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC4+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC3+8)
	.size	ParseAscii_8, .-ParseAscii_8
	.section	.rodata.str1.4
	.align	2
.LC1:
	.ascii	"TB \000"
	.align	2
.LC2:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux/../Str2Value.c\000"
	.align	2
.LC3:
	.ascii	"ParserWrapper(pContext, szString, szCondition , &Co"
	.ascii	"ndition)\000"
	.align	2
.LC4:
	.ascii	"%s\012\000"
	.align	2
.LC5:
	.ascii	"ParseAsciiEqu_2\000"
	.align	2
.LC6:
	.ascii	"Missing Right ':'\000"
	.align	2
.LC7:
	.ascii	"ParserWrapper(pContext, szCondition+1 , szSelBracke"
	.ascii	"t, psllValue)\000"
	.align	2
.LC8:
	.ascii	"ParserWrapper(pContext - 1, szSelBracket+1, NULL, p"
	.ascii	"sllValue)\000"
	.text
	.align	2
	.global	ParseAsciiEqu_2
	.syntax unified
	.arm
	.fpu vfpv3
	.type	ParseAsciiEqu_2, %function
ParseAsciiEqu_2:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r7, r2
	ldr	r2, .L50+8
	mov	r4, r1
	sub	sp, sp, #36
	mov	r6, r0
	ldr	r3, .L50+12
	mov	r1, #63
.LPIC22:
	add	r2, pc, r2
	vldr.64	d16, .L50	@ int
	mov	r0, r4
	add	r9, r6, #20
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #28]
	mov	r3, #0
	vstr.64	d16, [sp, #16]	@ int
	bl	strchr(PLT)
	subs	r5, r0, #0
	beq	.L31
	mov	r1, r4
	ldrb	r4, [r5]	@ zero_extendqisi2
	mov	r3, #0
	add	r2, sp, #16
	strb	r3, [r5]
	mov	r0, r9
	ldr	r3, [r6, #4]
	blx	r3
	strb	r4, [r5]
	subs	r4, r0, #0
	bne	.L45
	mov	r1, #58
	mov	r0, r5
	bl	strchr(PLT)
	subs	r8, r0, #0
	beq	.L46
	ldr	r3, [sp, #16]
	ldr	r2, [sp, #20]
	orrs	r3, r3, r2
	bne	.L47
	ldr	r3, [r6, #-16]
	mov	r2, r7
	add	r1, r8, #1
	mov	r0, r6
	blx	r3
	subs	r4, r0, #0
	bne	.L48
.L30:
	ldr	r2, .L50+16
	ldr	r3, .L50+12
.LPIC21:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #28]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L49
	mov	r0, r4
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L47:
	add	r1, r5, #1
	mov	r2, r7
	ldrb	r5, [r8]	@ zero_extendqisi2
	mov	r0, r9
	strb	r4, [r8]
	ldr	r3, [r6, #4]
	blx	r3
	subs	r4, r0, #0
	strb	r5, [r8]
	beq	.L30
	ldr	ip, .L50+20
	movw	r3, #583
	ldr	r0, .L50+24
	ldr	r2, .L50+28
	ldr	r1, .L50+32
.LPIC15:
	add	ip, pc, ip
.LPIC16:
	add	r0, pc, r0
.LPIC13:
	add	r2, pc, r2
.LPIC14:
	add	r1, pc, r1
.L44:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	b	.L30
.L31:
.L33:
	mov	r1, r4
	ldr	r3, [r6, #4]
	mov	r2, r7
	mov	r0, r9
	blx	r3
	mov	r4, r0
	b	.L30
.L45:
	ldr	ip, .L50+36
	mov	r3, #572
	ldr	r0, .L50+40
	ldr	r2, .L50+44
	ldr	r1, .L50+48
.LPIC7:
	add	ip, pc, ip
.LPIC8:
	add	r0, pc, r0
.LPIC5:
	add	r2, pc, r2
.LPIC6:
	add	r1, pc, r1
	b	.L44
.L48:
	ldr	ip, .L50+52
	movw	r3, #585
	ldr	r0, .L50+56
	ldr	r2, .L50+60
	ldr	r1, .L50+64
.LPIC19:
	add	ip, pc, ip
.LPIC20:
	add	r0, pc, r0
.LPIC17:
	add	r2, pc, r2
.LPIC18:
	add	r1, pc, r1
	b	.L44
.L46:
	ldr	ip, .L50+68
	mvn	r4, #3840
	ldr	r0, .L50+72
	movw	r3, #575
	ldr	r2, .L50+76
	ldr	r1, .L50+80
.LPIC11:
	add	ip, pc, ip
.LPIC12:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC9:
	add	r2, pc, r2
.LPIC10:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L30
.L49:
	bl	__stack_chk_fail(PLT)
.L51:
	.align	3
.L50:
	.word	0
	.word	0
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC22+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC21+8)
	.word	.LC7-(.LPIC15+8)
	.word	.LC4-(.LPIC16+8)
	.word	.LC1-(.LPIC13+8)
	.word	.LC2-(.LPIC14+8)
	.word	.LC3-(.LPIC7+8)
	.word	.LC4-(.LPIC8+8)
	.word	.LC1-(.LPIC5+8)
	.word	.LC2-(.LPIC6+8)
	.word	.LC8-(.LPIC19+8)
	.word	.LC4-(.LPIC20+8)
	.word	.LC1-(.LPIC17+8)
	.word	.LC2-(.LPIC18+8)
	.word	.LC6-(.LPIC11+8)
	.word	.LC4-(.LPIC12+8)
	.word	.LC5-(.LPIC9+8)
	.word	.LC2-(.LPIC10+8)
	.size	ParseAsciiEqu_2, .-ParseAsciiEqu_2
	.align	2
	.global	ReturnEnvVar
	.syntax unified
	.arm
	.fpu vfpv3
	.type	ReturnEnvVar, %function
ReturnEnvVar:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	getenv(PLT)
	cmp	r0, #0
	popeq	{r4, pc}
	pop	{r4, lr}
	b	strdup(PLT)
.L53:
	.size	ReturnEnvVar, .-ReturnEnvVar
	.section	.rodata.str1.4
	.align	2
.LC9:
	.ascii	"0x\000"
	.text
	.align	2
	.global	ulConvertStr2NumEx
	.syntax unified
	.arm
	.fpu vfpv3
	.type	ulConvertStr2NumEx, %function
ulConvertStr2NumEx:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L71
	ldr	r3, .L71+4
	push	{r4, r5, r6, lr}
	sub	sp, sp, #16
.LPIC25:
	add	r2, pc, r2
	subs	r5, r1, #0
	add	r6, sp, #8
	ldr	r3, [r2, r3]
	moveq	r5, r6
	ldr	r3, [r3]
	str	r3, [sp, #12]
	mov	r3, #0
	bl	skipWhiteSpaces(PLT)
	mov	r2, #16
	mov	r4, r0
	add	r1, sp, #4
	bl	strtoul(PLT)
	mov	r2, #2
	mov	r1, r6
	mov	r0, r4
	bl	strtoul(PLT)
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #48
	beq	.L68
.L57:
	ldrb	r6, [r4]	@ zero_extendqisi2
	sub	r6, r6, #48
	cmp	r6, #9
	bhi	.L61
	ldr	r3, [sp, #4]
	ldrb	r0, [r3]	@ zero_extendqisi2
	bl	toupper(PLT)
	cmp	r0, #72
	moveq	r2, #16
	beq	.L67
.L61:
	uxtb	r6, r6
	cmp	r6, #1
	bhi	.L62
	ldr	r3, [sp, #8]
	ldrb	r0, [r3]	@ zero_extendqisi2
	bl	toupper(PLT)
	cmp	r0, #66
	beq	.L69
.L62:
	mov	r2, #10
	mov	r1, r5
	mov	r0, r4
	bl	strtoul(PLT)
	ldr	r6, [r5]
	mov	r4, r0
	ldrb	r0, [r6]	@ zero_extendqisi2
	bl	toupper(PLT)
	cmp	r0, #84
	addeq	r6, r6, #1
	streq	r6, [r5]
.L55:
	ldr	r2, .L71+8
	ldr	r3, .L71+4
.LPIC24:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #12]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L70
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, pc}
.L68:
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	cmp	r3, #120
	bne	.L57
	add	r0, r4, #2
	mov	r2, #16
	mov	r1, r5
	bl	strtoul(PLT)
	mov	r4, r0
	b	.L55
.L69:
	mov	r2, #2
.L67:
	mov	r0, r4
	mov	r1, r5
	bl	strtoul(PLT)
	ldr	r3, [r5]
	mov	r4, r0
	add	r3, r3, #1
	str	r3, [r5]
	b	.L55
.L70:
	bl	__stack_chk_fail(PLT)
.L72:
	.align	2
.L71:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC25+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC24+8)
	.size	ulConvertStr2NumEx, .-ulConvertStr2NumEx
	.section	.rodata.str1.4
	.align	2
.LC10:
	.ascii	"ParseAsciiEqu_13(pContext, szString+1, &CurValue)\000"
	.align	2
.LC11:
	.ascii	"ParseAsciiEqu_13(pContext, szString+1, psllValue)\000"
	.align	2
.LC12:
	.ascii	"ParseAsciiEqu_13\000"
	.align	2
.LC13:
	.ascii	"^ Here\000"
	.align	2
.LC14:
	.ascii	"\000"
	.align	2
.LC15:
	.ascii	"%*s%s\012\000"
	.text
	.align	2
	.global	ParseAsciiEqu_13
	.syntax unified
	.arm
	.fpu vfpv3
	.type	ParseAsciiEqu_13, %function
ParseAsciiEqu_13:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r6, r2
	ldr	r2, .L96
	sub	sp, sp, #44
	mov	r4, r0
	mov	r0, r1
	ldr	r3, .L96+4
.LPIC51:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #36]
	mov	r3, #0
	bl	skipWhiteSpaces(PLT)
	ldrb	r3, [r0]	@ zero_extendqisi2
	mov	r5, r0
	cmp	r3, #45
	beq	.L74
	bhi	.L75
	cmp	r3, #33
	beq	.L76
	cmp	r3, #43
	bne	.L78
	add	r1, r0, #1
	mov	r2, r6
	mov	r0, r4
	bl	ParseAsciiEqu_13(PLT)
	subs	r4, r0, #0
	bne	.L91
.L73:
	ldr	r2, .L96+8
	ldr	r3, .L96+4
.LPIC50:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #36]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L92
	mov	r0, r4
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L75:
	cmp	r3, #126
	bne	.L78
	add	r1, r0, #1
	add	r2, sp, #24
	mov	r0, r4
	bl	ParseAsciiEqu_13(PLT)
	subs	r4, r0, #0
	bne	.L93
	ldrd	r2, [sp, #24]
	mvn	r2, r2
	mvn	r3, r3
	strd	r2, [r6]
	b	.L73
.L78:
	add	r1, sp, #24
	mov	r0, r5
	bl	ulConvertStr2NumEx(PLT)
	mov	r3, #0
	mov	r2, r0
	strd	r2, [r6]
	ldr	r0, [sp, #24]
	bl	skipWhiteSpaces(PLT)
	str	r0, [sp, #24]
	ldrb	r4, [r0]	@ zero_extendqisi2
	cmp	r4, #0
	beq	.L73
	ldr	r7, .L96+12
	mvn	r4, #3840
	ldr	r6, .L96+16
	mov	r0, #69
	ldr	r3, .L96+20
.LPIC42:
	add	r7, pc, r7
	str	r5, [sp, #8]
.LPIC43:
	add	r6, pc, r6
	mov	r2, r7
.LPIC44:
	add	r3, pc, r3
	mov	r1, r6
	str	r3, [sp, #4]
	movw	r3, #394
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	ldr	r3, .L96+24
	mov	r2, r7
	ldr	r0, [sp, #24]
	mov	r1, r6
	str	r4, [sp]
.LPIC47:
	add	r3, pc, r3
	str	r3, [sp, #16]
	sub	r0, r0, r5
	ldr	r3, .L96+28
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC48:
	add	r3, pc, r3
	str	r3, [sp, #12]
	ldr	r3, .L96+32
.LPIC49:
	add	r3, pc, r3
	str	r3, [sp, #4]
	movw	r3, #397
	bl	siFormattedMessage_SC(PLT)
	b	.L73
.L76:
	add	r1, r0, #1
	add	r2, sp, #24
	mov	r0, r4
	bl	ParseAsciiEqu_13(PLT)
	subs	r4, r0, #0
	bne	.L94
	ldr	r3, [sp, #24]
	ldr	r2, [sp, #28]
	str	r4, [r6, #4]
	orrs	r3, r3, r2
	moveq	r3, #1
	movne	r3, #0
	str	r3, [r6]
	b	.L73
.L74:
	add	r1, r0, #1
	add	r2, sp, #24
	mov	r0, r4
	bl	ParseAsciiEqu_13(PLT)
	subs	r4, r0, #0
	bne	.L95
	ldr	r3, [sp, #24]
	ldr	r2, [sp, #28]
	rsbs	r3, r3, #0
	rsc	r2, r2, #0
	str	r3, [r6]
	str	r2, [r6, #4]
	b	.L73
.L94:
	ldr	ip, .L96+36
	mov	r3, #364
	ldr	r0, .L96+40
	ldr	r2, .L96+44
	ldr	r1, .L96+48
.LPIC28:
	add	ip, pc, ip
.LPIC29:
	add	r0, pc, r0
.LPIC26:
	add	r2, pc, r2
.LPIC27:
	add	r1, pc, r1
.L90:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	b	.L73
.L93:
	ldr	ip, .L96+52
	mov	r3, #372
	ldr	r0, .L96+56
	ldr	r2, .L96+60
	ldr	r1, .L96+64
.LPIC32:
	add	ip, pc, ip
.LPIC33:
	add	r0, pc, r0
.LPIC30:
	add	r2, pc, r2
.LPIC31:
	add	r1, pc, r1
	b	.L90
.L91:
	ldr	ip, .L96+68
	mov	r3, #388
	ldr	r0, .L96+72
	ldr	r2, .L96+76
	ldr	r1, .L96+80
.LPIC40:
	add	ip, pc, ip
.LPIC41:
	add	r0, pc, r0
.LPIC38:
	add	r2, pc, r2
.LPIC39:
	add	r1, pc, r1
	b	.L90
.L95:
	ldr	ip, .L96+84
	mov	r3, #380
	ldr	r0, .L96+88
	ldr	r2, .L96+92
	ldr	r1, .L96+96
.LPIC36:
	add	ip, pc, ip
.LPIC37:
	add	r0, pc, r0
.LPIC34:
	add	r2, pc, r2
.LPIC35:
	add	r1, pc, r1
	b	.L90
.L92:
	bl	__stack_chk_fail(PLT)
.L97:
	.align	2
.L96:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC51+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC50+8)
	.word	.LC12-(.LPIC42+8)
	.word	.LC2-(.LPIC43+8)
	.word	.LC4-(.LPIC44+8)
	.word	.LC13-(.LPIC47+8)
	.word	.LC14-(.LPIC48+8)
	.word	.LC15-(.LPIC49+8)
	.word	.LC10-(.LPIC28+8)
	.word	.LC4-(.LPIC29+8)
	.word	.LC1-(.LPIC26+8)
	.word	.LC2-(.LPIC27+8)
	.word	.LC10-(.LPIC32+8)
	.word	.LC4-(.LPIC33+8)
	.word	.LC1-(.LPIC30+8)
	.word	.LC2-(.LPIC31+8)
	.word	.LC11-(.LPIC40+8)
	.word	.LC4-(.LPIC41+8)
	.word	.LC1-(.LPIC38+8)
	.word	.LC2-(.LPIC39+8)
	.word	.LC10-(.LPIC36+8)
	.word	.LC4-(.LPIC37+8)
	.word	.LC1-(.LPIC34+8)
	.word	.LC2-(.LPIC35+8)
	.size	ParseAsciiEqu_13, .-ParseAsciiEqu_13
	.global	__aeabi_ldivmod
	.section	.rodata.str1.4
	.align	2
.LC16:
	.ascii	"DoOperation\000"
	.align	2
.LC17:
	.ascii	"Invalid Operation\000"
	.text
	.align	2
	.global	DoOperation
	.syntax unified
	.arm
	.fpu vfpv3
	.type	DoOperation, %function
DoOperation:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r1
	sub	sp, sp, #16
	cmp	r0, #21
	addls	pc, pc, r0, asl #2
	b	.L99
.L101:
	b	.L98
	b	.L121
	b	.L120
	b	.L119
	b	.L118
	b	.L117
	b	.L116
	b	.L115
	b	.L114
	b	.L113
	b	.L112
	b	.L111
	b	.L110
	b	.L109
	b	.L108
	b	.L107
	b	.L106
	b	.L105
	b	.L104
	b	.L103
	b	.L102
	b	.L100
	.p2align 1
.L115:
	ldrd	r0, [r1]
	cmp	r0, r2
	mov	r2, #0
	sbcs	r1, r1, r3
.L126:
	mov	r0, r2
	movlt	r3, #1
	movge	r3, r2
	str	r2, [r4, #4]
	str	r3, [r4]
.L122:
.L98:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L100:
	ldr	r3, [r1]
	rsb	r0, r2, #32
	ldr	r1, [r1, #4]
	lsr	r3, r3, r2
	orr	r3, r3, r1, lsl r0
	subs	r0, r2, #32
	orrpl	r3, r3, r1, asr r0
	asr	r1, r1, r2
	mov	r0, #0
	str	r3, [r4]
	str	r1, [r4, #4]
	b	.L98
.L102:
	ldm	r1, {r1, r3}
	sub	r0, r2, #32
	lsl	r3, r3, r2
	lsl	ip, r1, r2
	orr	r3, r3, r1, lsl r0
	rsb	r2, r2, #32
	mov	r0, #0
	str	ip, [r4]
	orr	r3, r3, r1, lsr r2
	str	r3, [r4, #4]
	b	.L98
.L103:
	rsbs	r2, r2, #0
	mov	r0, #0
	rsc	r3, r3, #0
	strd	r2, [r1]
	b	.L98
.L104:
	ldm	r1, {r1, ip}
	mov	r0, #0
	subs	r1, r1, r2
	sbc	ip, ip, r3
	stm	r4, {r1, ip}
	b	.L98
.L105:
	ldm	r1, {r1, ip}
	mov	r0, #0
	adds	r1, r1, r2
	adc	ip, r3, ip
	stm	r4, {r1, ip}
	b	.L98
.L106:
	ldrd	r0, [r1]
	bl	__aeabi_ldivmod(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	strd	r2, [r4]
	b	.L98
.L107:
	ldrd	r0, [r1]
	bl	__aeabi_ldivmod(PLT)
	mov	r0, #0
	strd	r2, [r4]
	b	.L98
.L108:
	ldr	r1, [r1]
	ldr	r0, [r4, #4]
	mul	r3, r3, r1
	mla	r3, r2, r0, r3
	umull	r1, r2, r1, r2
	mov	r0, #0
	add	r3, r3, r2
	stm	r4, {r1, r3}
	b	.L98
.L109:
	mvn	r2, r2
	mvn	r3, r3
	mov	r0, #0
	strd	r2, [r1]
	b	.L98
.L110:
	ldrd	r0, [r1]
	eor	r2, r2, r0
	eor	r3, r3, r1
	mov	r0, #0
	strd	r2, [r4]
	b	.L98
.L111:
	ldrd	r0, [r1]
	orr	r2, r0, r2
	orr	r3, r1, r3
	mov	r0, #0
	strd	r2, [r4]
	b	.L98
.L112:
	ldrd	r0, [r1]
	and	r2, r2, r0
	and	r3, r3, r1
	mov	r0, #0
	strd	r2, [r4]
	b	.L98
.L113:
	orrs	r3, r2, r3
	mov	r3, #0
	moveq	r2, #1
	movne	r2, r3
	mov	r0, r3
	strd	r2, [r1]
	b	.L98
.L114:
	ldrd	r0, [r1]
	cmp	r2, r0
	mov	r2, #0
	sbcs	r1, r3, r1
.L127:
	movge	r3, #1
	movlt	r3, r2
	mov	r0, r2
	str	r2, [r4, #4]
	str	r3, [r4]
	b	.L98
.L116:
	ldrd	r0, [r1]
	cmp	r0, r2
	mov	r2, #0
	sbcs	r1, r1, r3
	b	.L127
.L117:
	ldrd	r0, [r1]
	cmp	r2, r0
	mov	r2, #0
	sbcs	r1, r3, r1
	b	.L126
.L118:
	ldr	r1, [r1]
	mov	ip, #0
	ldr	r0, [r4, #4]
	orrs	r1, r1, r0
	mov	r0, ip
	movne	r1, #1
	moveq	r1, ip
	orrs	r3, r2, r3
	moveq	r3, #0
	andne	r3, r1, #1
	stm	r4, {r3, ip}
	b	.L98
.L119:
	ldr	r1, [r1]
	ldr	r0, [r4, #4]
	orr	r1, r2, r1
	orr	r0, r3, r0
	mov	r3, #0
	orrs	r1, r1, r0
	mov	r0, r3
	movne	r2, #1
	moveq	r2, r3
	strd	r2, [r4]
	b	.L98
.L120:
	ldr	r1, [r1]
	ldr	r0, [r4, #4]
	cmp	r0, r3
	cmpeq	r1, r2
	mov	r2, #0
	movne	r3, #1
	moveq	r3, #0
	mov	r0, r2
	str	r3, [r4]
	str	r2, [r4, #4]
	b	.L98
.L121:
	ldrd	r0, [r1]
	cmp	r1, r3
	cmpeq	r0, r2
	mov	r3, #0
	moveq	r2, #1
	movne	r2, r3
	mov	r0, r3
	strd	r2, [r4]
	b	.L98
.L99:
	ldr	ip, .L128
	mvn	r4, #3840
	ldr	r0, .L128+4
	movw	r3, #281
	ldr	r2, .L128+8
	ldr	r1, .L128+12
.LPIC54:
	add	ip, pc, ip
.LPIC55:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC52:
	add	r2, pc, r2
.LPIC53:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L98
.L129:
	.align	2
.L128:
	.word	.LC17-(.LPIC54+8)
	.word	.LC4-(.LPIC55+8)
	.word	.LC16-(.LPIC52+8)
	.word	.LC2-(.LPIC53+8)
	.size	DoOperation, .-DoOperation
	.section	.rodata.str1.4
	.align	2
.LC18:
	.ascii	"pContext->pParser(pContext->pContext, &szPos2, &szO"
	.ascii	"pt, &OperationType)\000"
	.align	2
.LC19:
	.ascii	"ParserWrapper(pContext, szString, szOpt, psllValue)"
	.ascii	"\000"
	.align	2
.LC20:
	.ascii	"ParserWrapper(pContext, szPos1, szOpt, &CurValue)\000"
	.align	2
.LC21:
	.ascii	"DoOperation(LOperationType, psllValue, CurValue)\000"
	.text
	.align	2
	.global	ParseAsciiEqu_cmn
	.syntax unified
	.arm
	.fpu vfpv3
	.type	ParseAsciiEqu_cmn, %function
ParseAsciiEqu_cmn:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r0
	ldr	r4, [r0, #8]
	mov	r5, r1
	mov	r3, #0
	sub	sp, sp, #68
	ldr	r0, .L160
	mov	fp, r2
	ldr	r1, .L160+4
	cmp	r4, r3
.LPIC77:
	add	r0, pc, r0
	ldr	r1, [r0, r1]
	ldr	r1, [r1]
	str	r1, [sp, #60]
	mov	r1, #0
	str	r3, [sp, #44]
	str	r3, [sp, #36]
	addeq	r3, r6, #20
	moveq	r0, r3
	str	r5, [sp, #40]
	streq	r3, [sp, #20]
	beq	.L131
	add	r9, sp, #44
	add	r7, sp, #36
	add	r8, sp, #40
	ldr	r0, [r6, #12]
	mov	r3, r9
	mov	r2, r7
	mov	r1, r8
	blx	r4
	subs	r4, r0, #0
	bne	.L155
	ldr	r10, [sp, #36]
	add	r0, r6, #20
	str	r0, [sp, #20]
	cmp	r10, #0
	beq	.L131
	mov	r1, r5
	mov	r2, fp
	ldrb	r5, [r10]	@ zero_extendqisi2
	strb	r4, [r10]
	ldr	r3, [r6, #4]
	blx	r3
	subs	r4, r0, #0
	strb	r5, [r10]
	bne	.L151
	mov	r4, fp
	add	r3, sp, #48
	str	r3, [sp, #24]
.L134:
	ldr	r0, [sp, #40]
	ldr	fp, [sp, #44]
	bl	skipWhiteSpaces(PLT)
	mov	r10, r0
	b	.L136
.L135:
	ldr	r3, [sp, #36]
	cmp	r3, r5
	bne	.L156
.L136:
	ldr	r0, [sp, #40]
	bl	skipWhiteSpaces(PLT)
	ldr	ip, [r6, #8]
	mov	r3, r9
	mov	r2, r7
	mov	r5, r0
	mov	r1, r8
	ldr	r0, [r6, #12]
	blx	ip
	cmp	r0, #0
	beq	.L135
	ldr	ip, .L160+8
	mov	r4, r0
	ldr	r2, .L160+12
	mov	r3, #440
	ldr	r0, .L160+16
	ldr	r1, .L160+20
.LPIC66:
	add	ip, pc, ip
.LPIC64:
	add	r2, pc, r2
.LPIC67:
	add	r0, pc, r0
.LPIC65:
	add	r1, pc, r1
.L154:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
.L130:
	ldr	r2, .L160+24
	ldr	r3, .L160+4
.LPIC76:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #60]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L157
	mov	r0, r4
	add	sp, sp, #68
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L156:
	cmp	r3, #0
	mov	r1, r10
	beq	.L137
	ldrb	r5, [r3]	@ zero_extendqisi2
	ldr	r2, [sp, #24]
	strb	r0, [r3]
	ldr	r0, [sp, #20]
	ldr	r10, [r6, #4]
	str	r3, [sp, #28]
	blx	r10
	ldr	r3, [sp, #28]
	strb	r5, [r3]
.L140:
	cmp	r0, #0
	bne	.L158
	ldrd	r2, [sp, #48]
	mov	r0, fp
	mov	r1, r4
	bl	DoOperation(PLT)
	cmp	r0, #0
	bne	.L159
	ldr	r3, [sp, #36]
	cmp	r3, #0
	bne	.L134
	mov	r4, r0
	b	.L130
.L131:
.L133:
	ldr	r3, [r6, #4]
	mov	r2, fp
	mov	r1, r5
	blx	r3
	mov	r4, r0
	b	.L130
.L151:
	ldr	ip, .L160+28
	movw	r3, #433
	ldr	r0, .L160+32
	ldr	r2, .L160+36
	ldr	r1, .L160+40
.LPIC62:
	add	ip, pc, ip
.LPIC63:
	add	r0, pc, r0
.LPIC60:
	add	r2, pc, r2
.LPIC61:
	add	r1, pc, r1
	b	.L154
.L155:
	ldr	ip, .L160+44
	movw	r3, #426
	ldr	r0, .L160+48
	ldr	r2, .L160+52
	ldr	r1, .L160+56
.LPIC58:
	add	ip, pc, ip
.LPIC59:
	add	r0, pc, r0
.LPIC56:
	add	r2, pc, r2
.LPIC57:
	add	r1, pc, r1
	b	.L154
.L137:
	ldr	r3, [r6, #4]
	ldr	r2, [sp, #24]
	ldr	r0, [sp, #20]
	blx	r3
	b	.L140
.L158:
	ldr	ip, .L160+60
	mov	r4, r0
	ldr	r2, .L160+64
	movw	r3, #443
	ldr	r0, .L160+68
	ldr	r1, .L160+72
.LPIC70:
	add	ip, pc, ip
.LPIC68:
	add	r2, pc, r2
.LPIC71:
	add	r0, pc, r0
.LPIC69:
	add	r1, pc, r1
	b	.L154
.L159:
	ldr	ip, .L160+76
	mov	r4, r0
	ldr	r2, .L160+80
	movw	r3, #445
	ldr	r0, .L160+84
	ldr	r1, .L160+88
.LPIC74:
	add	ip, pc, ip
.LPIC72:
	add	r2, pc, r2
.LPIC75:
	add	r0, pc, r0
.LPIC73:
	add	r1, pc, r1
	b	.L154
.L157:
	bl	__stack_chk_fail(PLT)
.L161:
	.align	2
.L160:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC77+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC18-(.LPIC66+8)
	.word	.LC1-(.LPIC64+8)
	.word	.LC4-(.LPIC67+8)
	.word	.LC2-(.LPIC65+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC76+8)
	.word	.LC19-(.LPIC62+8)
	.word	.LC4-(.LPIC63+8)
	.word	.LC1-(.LPIC60+8)
	.word	.LC2-(.LPIC61+8)
	.word	.LC18-(.LPIC58+8)
	.word	.LC4-(.LPIC59+8)
	.word	.LC1-(.LPIC56+8)
	.word	.LC2-(.LPIC57+8)
	.word	.LC20-(.LPIC70+8)
	.word	.LC1-(.LPIC68+8)
	.word	.LC4-(.LPIC71+8)
	.word	.LC2-(.LPIC69+8)
	.word	.LC21-(.LPIC74+8)
	.word	.LC1-(.LPIC72+8)
	.word	.LC4-(.LPIC75+8)
	.word	.LC2-(.LPIC73+8)
	.size	ParseAsciiEqu_cmn, .-ParseAsciiEqu_cmn
	.align	2
	.global	ParserWrapper
	.syntax unified
	.arm
	.fpu vfpv3
	.type	ParserWrapper, %function
ParserWrapper:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	subs	r4, r2, #0
	mov	ip, r0
	mov	r2, r3
	add	r0, r0, #20
	beq	.L167
	ldrb	r5, [r4]	@ zero_extendqisi2
	mov	r3, #0
	strb	r3, [r4]
	ldr	r3, [ip, #4]
	blx	r3
	strb	r5, [r4]
	pop	{r4, r5, r6, pc}
.L167:
	pop	{r4, r5, r6, lr}
	ldr	r3, [ip, #4]
	bx	r3
	.size	ParserWrapper, .-ParserWrapper
	.section	.rodata.str1.4
	.align	2
.LC22:
	.ascii	"ParseAsciiEqu_cmn(cAS, szStartBracket+1, &CurValue)"
	.ascii	"\000"
	.align	2
.LC23:
	.ascii	"%lld\000"
	.align	2
.LC24:
	.ascii	"ReplaceSubStr(pStrDesc, szStartBracket - pStrDesc->"
	.ascii	"szStr, szEndBracket+1 - pStrDesc->szStr, szValue)\000"
	.align	2
.LC25:
	.ascii	"ParseAsciiEqu_1\000"
	.align	2
.LC26:
	.ascii	"Missing Right ')'\000"
	.text
	.align	2
	.global	ParseAsciiEqu_1
	.syntax unified
	.arm
	.fpu vfpv3
	.type	ParseAsciiEqu_1, %function
ParseAsciiEqu_1:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L182
	mov	r2, #0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r7, r1
	ldr	r1, .L182+4
	sub	sp, sp, #48
.LPIC94:
	add	ip, pc, ip
	mov	r3, #0
	ldr	r5, .L182+8
	mov	r4, r0
	ldr	r1, [ip, r1]
	ldr	r6, .L182+12
.LPIC78:
	add	r5, pc, r5
	ldr	r1, [r1]
	str	r1, [sp, #44]
	mov	r1, #0
	strd	r2, [r7]
.LPIC83:
	add	r6, pc, r6
	b	.L169
.L173:
	mov	r1, #41
	bl	strchr(PLT)
	subs	r10, r0, #0
	beq	.L170
	mov	r3, #0
	add	r2, sp, #16
	add	r1, r8, #1
	mov	r0, r5
	strb	r3, [r10]
	bl	ParseAsciiEqu_cmn(PLT)
	subs	r9, r0, #0
	bne	.L179
	vldr.64	d16, [sp, #16]	@ int
	add	r9, sp, #28
	mov	r2, r6
	mov	r1, #16
	mov	r0, r9
	vstr.64	d16, [sp]	@ int
	bl	EApiSprintfA(PLT)
	ldr	r1, [r4]
	add	r2, r10, #1
	mov	r3, r9
	mov	r0, r4
	sub	r2, r2, r1
	sub	r1, r8, r1
	bl	ReplaceSubStr(PLT)
	subs	r9, r0, #0
	bne	.L180
.L169:
	ldr	r9, [r4]
	mov	r1, #40
	mov	r0, r9
	bl	strrchr(PLT)
	subs	r8, r0, #0
	bne	.L173
	ldr	r0, .L182+16
	mov	r1, r9
	mov	r2, r7
.LPIC92:
	add	r0, pc, r0
	bl	ParseAsciiEqu_cmn(PLT)
	mov	r9, r0
.L172:
.L168:
	ldr	r2, .L182+20
	ldr	r3, .L182+4
.LPIC93:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #44]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L181
	mov	r0, r9
	add	sp, sp, #48
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L170:
	ldr	ip, .L182+24
	mvn	r9, #3840
	ldr	r0, .L182+28
	mov	r3, #640
	ldr	r2, .L182+32
	ldr	r1, .L182+36
.LPIC90:
	add	ip, pc, ip
.LPIC91:
	add	r0, pc, r0
	str	r9, [sp]
	stmib	sp, {r0, ip}
.LPIC88:
	add	r2, pc, r2
.LPIC89:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L168
.L179:
	ldr	ip, .L182+40
	movw	r3, #633
	ldr	r0, .L182+44
	ldr	r2, .L182+48
	ldr	r1, .L182+52
.LPIC81:
	add	ip, pc, ip
.LPIC82:
	add	r0, pc, r0
.LPIC79:
	add	r2, pc, r2
.LPIC80:
	add	r1, pc, r1
.L178:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r9, [sp]
	bl	siFormattedMessage_SC(PLT)
	b	.L168
.L180:
	ldr	ip, .L182+56
	mov	r3, #636
	ldr	r0, .L182+60
	ldr	r2, .L182+64
	ldr	r1, .L182+68
.LPIC86:
	add	ip, pc, ip
.LPIC87:
	add	r0, pc, r0
.LPIC84:
	add	r2, pc, r2
.LPIC85:
	add	r1, pc, r1
	b	.L178
.L181:
	bl	__stack_chk_fail(PLT)
.L183:
	.align	2
.L182:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC94+8)
	.word	__stack_chk_guard(GOT)
	.word	.LANCHOR0-(.LPIC78+8)
	.word	.LC23-(.LPIC83+8)
	.word	.LANCHOR0-(.LPIC92+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC93+8)
	.word	.LC26-(.LPIC90+8)
	.word	.LC4-(.LPIC91+8)
	.word	.LC25-(.LPIC88+8)
	.word	.LC2-(.LPIC89+8)
	.word	.LC22-(.LPIC81+8)
	.word	.LC4-(.LPIC82+8)
	.word	.LC1-(.LPIC79+8)
	.word	.LC2-(.LPIC80+8)
	.word	.LC24-(.LPIC86+8)
	.word	.LC4-(.LPIC87+8)
	.word	.LC1-(.LPIC84+8)
	.word	.LC2-(.LPIC85+8)
	.size	ParseAsciiEqu_1, .-ParseAsciiEqu_1
	.section	.rodata.str1.4
	.align	2
.LC27:
	.ascii	"ExpandEnviromentVariables\000"
	.align	2
.LC28:
	.ascii	"(pStrDesc==NULL)\000"
	.align	2
.LC29:
	.ascii	"(pStrDesc->szStr==NULL)\000"
	.align	2
.LC30:
	.ascii	"Missing Right Bracket '%s'\000"
	.align	2
.LC31:
	.ascii	"ReplaceSubStr(pStrDesc, szVarPosS - pStrDesc->szStr"
	.ascii	", szVarPosE - pStrDesc->szStr, szVarValue)\000"
	.text
	.align	2
	.global	ExpandEnviromentVariables
	.syntax unified
	.arm
	.fpu vfpv3
	.type	ExpandEnviromentVariables, %function
ExpandEnviromentVariables:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	subs	r7, r0, #0
	sub	sp, sp, #16
	beq	.L205
	ldr	r0, [r7]
	cmp	r0, #0
	beq	.L202
	ldr	r10, .L209
	mov	r9, #0
.LPIC115:
	add	r10, pc, r10
	add	r8, r10, #4
	b	.L193
.L208:
	bl	strdup(PLT)
	ldr	r1, [r7]
	mov	r6, r0
	mov	r3, r0
	mov	r0, r7
	sub	r2, r5, r1
	sub	r1, r4, r1
	bl	ReplaceSubStr(PLT)
	subs	r4, r0, #0
	mov	r0, r6
	bne	.L206
	cmp	r6, #0
	beq	.L192
	bl	free(PLT)
	ldr	r0, [r7]
.L193:
	mov	r1, r8
	bl	strrstr(PLT)
	subs	r4, r0, #0
	mov	r1, #41
	beq	.L184
	bl	strchr(PLT)
	mov	r5, r0
	add	r0, r4, #2
	cmp	r5, #0
	beq	.L207
	strb	r9, [r5]
	bl	getenv(PLT)
	subs	r3, r0, #0
	bne	.L208
	ldr	r1, [r7]
	mov	r0, r7
	sub	r2, r5, r1
	sub	r1, r4, r1
	bl	ReplaceSubStr(PLT)
	subs	r4, r0, #0
	beq	.L192
	ldr	ip, .L209+4
	movw	r3, #694
	ldr	r0, .L209+8
	ldr	r2, .L209+12
	ldr	r1, .L209+16
.LPIC118:
	add	ip, pc, ip
.LPIC119:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC116:
	add	r2, pc, r2
.LPIC117:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
.L184:
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L206:
	ldr	r1, .L209+20
	movw	r3, #694
	ldr	r0, .L209+24
	ldr	r2, .L209+28
.LPIC114:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC113:
	add	r0, pc, r0
	ldr	r1, .L209+32
.LPIC111:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC112:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	cmp	r6, #0
	beq	.L184
	mov	r0, r6
	bl	free(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L207:
	ldr	r6, .L209+36
	mvn	r4, #3840
	ldr	r5, .L209+40
	mov	r0, #69
	ldr	r3, .L209+44
.LPIC103:
	add	r6, pc, r6
	str	r10, [sp, #8]
.LPIC104:
	add	r5, pc, r5
	mov	r2, r6
.LPIC106:
	add	r3, pc, r3
	mov	r1, r5
	str	r3, [sp, #4]
	movw	r3, #683
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	ldr	r0, .L209+48
	mov	r2, r6
	ldr	r3, .L209+52
	mov	r1, r5
	str	r4, [sp]
.LPIC109:
	add	r0, pc, r0
.LPIC110:
	add	r3, pc, r3
	str	r0, [sp, #8]
	str	r3, [sp, #4]
	mov	r0, #69
	movw	r3, #686
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L205:
	ldr	ip, .L209+56
	mvn	r4, #256
	ldr	r0, .L209+60
	movw	r3, #663
	ldr	r2, .L209+64
	ldr	r1, .L209+68
.LPIC97:
	add	ip, pc, ip
.LPIC98:
	add	r0, pc, r0
.LPIC95:
	add	r2, pc, r2
.LPIC96:
	add	r1, pc, r1
.L204:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L202:
	ldr	ip, .L209+72
	mvn	r4, #256
	ldr	r0, .L209+76
	mov	r3, #668
	ldr	r2, .L209+80
	ldr	r1, .L209+84
.LPIC101:
	add	ip, pc, ip
.LPIC102:
	add	r0, pc, r0
.LPIC99:
	add	r2, pc, r2
.LPIC100:
	add	r1, pc, r1
	b	.L204
.L192:
	ldr	r0, [r7]
	b	.L193
.L210:
	.align	2
.L209:
	.word	.LANCHOR1-(.LPIC115+8)
	.word	.LC31-(.LPIC118+8)
	.word	.LC4-(.LPIC119+8)
	.word	.LC1-(.LPIC116+8)
	.word	.LC2-(.LPIC117+8)
	.word	.LC4-(.LPIC114+8)
	.word	.LC31-(.LPIC113+8)
	.word	.LC1-(.LPIC111+8)
	.word	.LC2-(.LPIC112+8)
	.word	.LC27-(.LPIC103+8)
	.word	.LC2-(.LPIC104+8)
	.word	.LC30-(.LPIC106+8)
	.word	.LC14-(.LPIC109+8)
	.word	.LC4-(.LPIC110+8)
	.word	.LC28-(.LPIC97+8)
	.word	.LC4-(.LPIC98+8)
	.word	.LC27-(.LPIC95+8)
	.word	.LC2-(.LPIC96+8)
	.word	.LC29-(.LPIC101+8)
	.word	.LC4-(.LPIC102+8)
	.word	.LC27-(.LPIC99+8)
	.word	.LC2-(.LPIC100+8)
	.size	ExpandEnviromentVariables, .-ExpandEnviromentVariables
	.section	.rodata.str1.4
	.align	2
.LC32:
	.ascii	"ExpandMacros\000"
	.align	2
.LC33:
	.ascii	"(pMacros==NULL)\000"
	.align	2
.LC34:
	.ascii	"ReplaceSubStr(pStrDesc, szVarPosS - pStrDesc->szStr"
	.ascii	", szVarPosS - pStrDesc->szStr + stMacroLen, pCurMac"
	.ascii	"ro->cszMacroValue)\000"
	.text
	.align	2
	.global	ExpandMacros
	.syntax unified
	.arm
	.fpu vfpv3
	.type	ExpandMacros, %function
ExpandMacros:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L227
	ldr	r3, .L227+4
	push	{r4, r5, r6, r7, r8, lr}
	subs	r5, r0, #0
.LPIC137:
	add	r2, pc, r2
	sub	sp, sp, #24
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #20]
	mov	r3, #0
	beq	.L224
	ldr	r0, [r5]
	cmp	r0, #0
	beq	.L225
	cmp	r1, #0
	mov	r6, r1
	beq	.L221
	add	r7, sp, #16
	b	.L215
.L218:
	ldr	r8, [sp, #16]
	ldr	r0, [r8]
	bl	strlen(PLT)
	ldr	r1, [r5]
	mov	r2, r0
	ldr	r3, [r8, #4]
	mov	r0, r5
	sub	r1, r4, r1
	add	r2, r2, r1
	bl	ReplaceSubStr(PLT)
	subs	r4, r0, #0
	bne	.L216
	ldr	r0, [r5]
.L215:
	mov	r2, r7
	mov	r1, r6
	bl	szFindWord(PLT)
	subs	r4, r0, #0
	bne	.L218
.L217:
.L213:
.L211:
	ldr	r2, .L227+8
	ldr	r3, .L227+4
.LPIC136:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #20]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L226
	mov	r0, r4
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L216:
	ldr	ip, .L227+12
	movw	r3, #757
	ldr	r0, .L227+16
	ldr	r2, .L227+20
	ldr	r1, .L227+24
.LPIC134:
	add	ip, pc, ip
.LPIC135:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC132:
	add	r2, pc, r2
.LPIC133:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L211
.L224:
	ldr	ip, .L227+28
	mvn	r4, #256
	ldr	r0, .L227+32
	mov	r3, #732
	ldr	r2, .L227+36
	ldr	r1, .L227+40
.LPIC122:
	add	ip, pc, ip
.LPIC123:
	add	r0, pc, r0
.LPIC120:
	add	r2, pc, r2
.LPIC121:
	add	r1, pc, r1
.L223:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	b	.L211
.L225:
	ldr	ip, .L227+44
	mvn	r4, #256
	ldr	r0, .L227+48
	movw	r3, #737
	ldr	r2, .L227+52
	ldr	r1, .L227+56
.LPIC126:
	add	ip, pc, ip
.LPIC127:
	add	r0, pc, r0
.LPIC124:
	add	r2, pc, r2
.LPIC125:
	add	r1, pc, r1
	b	.L223
.L221:
	ldr	ip, .L227+60
	mvn	r4, #256
	ldr	r0, .L227+64
	movw	r3, #742
	ldr	r2, .L227+68
	ldr	r1, .L227+72
.LPIC130:
	add	ip, pc, ip
.LPIC131:
	add	r0, pc, r0
.LPIC128:
	add	r2, pc, r2
.LPIC129:
	add	r1, pc, r1
	b	.L223
.L226:
	bl	__stack_chk_fail(PLT)
.L228:
	.align	2
.L227:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC137+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC136+8)
	.word	.LC34-(.LPIC134+8)
	.word	.LC4-(.LPIC135+8)
	.word	.LC1-(.LPIC132+8)
	.word	.LC2-(.LPIC133+8)
	.word	.LC28-(.LPIC122+8)
	.word	.LC4-(.LPIC123+8)
	.word	.LC32-(.LPIC120+8)
	.word	.LC2-(.LPIC121+8)
	.word	.LC29-(.LPIC126+8)
	.word	.LC4-(.LPIC127+8)
	.word	.LC32-(.LPIC124+8)
	.word	.LC2-(.LPIC125+8)
	.word	.LC33-(.LPIC130+8)
	.word	.LC4-(.LPIC131+8)
	.word	.LC32-(.LPIC128+8)
	.word	.LC2-(.LPIC129+8)
	.size	ExpandMacros, .-ExpandMacros
	.section	.rodata.str1.4
	.align	2
.LC35:
	.ascii	"ParseAsciiEqu\000"
	.align	2
.LC36:
	.ascii	"(cszString==NULL)\000"
	.align	2
.LC37:
	.ascii	"(psllValue==NULL)\000"
	.align	2
.LC38:
	.ascii	"InitStrDesc(&lclStrDesc, cszString)\000"
	.align	2
.LC39:
	.ascii	"ExpandEnviromentVariables(&lclStrDesc)\000"
	.align	2
.LC40:
	.ascii	"ExpandMacros(&lclStrDesc, pMacros)\000"
	.align	2
.LC41:
	.ascii	"ParseAsciiEqu_1(&lclStrDesc, psllValue)\000"
	.text
	.align	2
	.global	ParseAsciiEquEx
	.syntax unified
	.arm
	.fpu vfpv3
	.type	ParseAsciiEquEx, %function
ParseAsciiEquEx:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r6, r1
	ldr	r1, .L255
	mov	r5, r2
	cmp	r0, #0
	sub	sp, sp, #36
	ldr	r2, .L255+4
	mov	r3, #0
.LPIC163:
	add	r1, pc, r1
	ldr	r2, [r1, r2]
	ldr	r2, [r2]
	str	r2, [sp, #28]
	mov	r2, #0
	str	r3, [sp, #16]
	str	r3, [sp, #20]
	str	r3, [sp, #24]
	beq	.L248
	cmp	r5, #0
	beq	.L249
	mov	r2, #0
	mov	r3, #0
	add	r7, sp, #16
	mov	r1, r0
	strd	r2, [r5]
	mov	r0, r7
	bl	InitStrDesc(PLT)
	subs	r4, r0, #0
	bne	.L250
	mov	r0, r7
	bl	ExpandEnviromentVariables(PLT)
	subs	r4, r0, #0
	bne	.L251
	cmp	r6, #0
	beq	.L235
	mov	r1, r6
	mov	r0, r7
	bl	ExpandMacros(PLT)
	subs	r4, r0, #0
	bne	.L252
.L235:
	mov	r1, r5
	mov	r0, r7
	bl	ParseAsciiEqu_1(PLT)
	subs	r4, r0, #0
	bne	.L253
.L231:
	mov	r0, r7
	bl	FreeStrDesc(PLT)
	ldr	r2, .L255+8
	ldr	r3, .L255+4
.LPIC162:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #28]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L254
	mov	r0, r4
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L250:
	ldr	r1, .L255+12
	movw	r3, #801
	ldr	r0, .L255+16
	ldr	r2, .L255+20
.LPIC149:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC148:
	add	r0, pc, r0
	ldr	r1, .L255+24
.LPIC146:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC147:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L231
.L251:
	ldr	r1, .L255+28
	movw	r3, #803
	ldr	r0, .L255+32
	ldr	r2, .L255+36
.LPIC153:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC152:
	add	r0, pc, r0
	ldr	r1, .L255+40
.LPIC150:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC151:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L231
.L249:
	ldr	ip, .L255+44
	mvn	r4, #256
	ldr	r0, .L255+48
	movw	r3, #795
	ldr	r2, .L255+52
	ldr	r1, .L255+56
.LPIC144:
	add	ip, pc, ip
.LPIC145:
	add	r0, pc, r0
.LPIC142:
	add	r2, pc, r2
.LPIC143:
	add	r1, pc, r1
.L247:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	add	r7, sp, #16
	bl	siFormattedMessage_SC(PLT)
	b	.L231
.L253:
	ldr	r1, .L255+60
	mov	r3, #812
	ldr	r0, .L255+64
	ldr	r2, .L255+68
.LPIC161:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC160:
	add	r0, pc, r0
	ldr	r1, .L255+72
.LPIC158:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC159:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L231
.L252:
	ldr	r1, .L255+76
	movw	r3, #805
	ldr	r0, .L255+80
	ldr	r2, .L255+84
.LPIC157:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC156:
	add	r0, pc, r0
	ldr	r1, .L255+88
.LPIC154:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC155:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L231
.L248:
	ldr	ip, .L255+92
	mvn	r4, #256
	ldr	r0, .L255+96
	movw	r3, #790
	ldr	r2, .L255+100
	ldr	r1, .L255+104
.LPIC140:
	add	ip, pc, ip
.LPIC141:
	add	r0, pc, r0
.LPIC138:
	add	r2, pc, r2
.LPIC139:
	add	r1, pc, r1
	b	.L247
.L254:
	bl	__stack_chk_fail(PLT)
.L256:
	.align	2
.L255:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC163+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC162+8)
	.word	.LC4-(.LPIC149+8)
	.word	.LC38-(.LPIC148+8)
	.word	.LC1-(.LPIC146+8)
	.word	.LC2-(.LPIC147+8)
	.word	.LC4-(.LPIC153+8)
	.word	.LC39-(.LPIC152+8)
	.word	.LC1-(.LPIC150+8)
	.word	.LC2-(.LPIC151+8)
	.word	.LC37-(.LPIC144+8)
	.word	.LC4-(.LPIC145+8)
	.word	.LC35-(.LPIC142+8)
	.word	.LC2-(.LPIC143+8)
	.word	.LC4-(.LPIC161+8)
	.word	.LC41-(.LPIC160+8)
	.word	.LC1-(.LPIC158+8)
	.word	.LC2-(.LPIC159+8)
	.word	.LC4-(.LPIC157+8)
	.word	.LC40-(.LPIC156+8)
	.word	.LC1-(.LPIC154+8)
	.word	.LC2-(.LPIC155+8)
	.word	.LC36-(.LPIC140+8)
	.word	.LC4-(.LPIC141+8)
	.word	.LC35-(.LPIC138+8)
	.word	.LC2-(.LPIC139+8)
	.size	ParseAsciiEquEx, .-ParseAsciiEquEx
	.align	2
	.global	ParseAsciiEqu
	.syntax unified
	.arm
	.fpu vfpv3
	.type	ParseAsciiEqu, %function
ParseAsciiEqu:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, r1
	ldr	r1, .L275
	cmp	r0, #0
	sub	sp, sp, #32
	mov	r3, #0
	ldr	r2, .L275+4
.LPIC185:
	add	r1, pc, r1
	ldr	r2, [r1, r2]
	ldr	r2, [r2]
	str	r2, [sp, #28]
	mov	r2, #0
	str	r3, [sp, #16]
	str	r3, [sp, #20]
	str	r3, [sp, #24]
	beq	.L269
	cmp	r5, #0
	beq	.L270
	mov	r2, #0
	mov	r3, #0
	add	r6, sp, #16
	mov	r1, r0
	strd	r2, [r5]
	mov	r0, r6
	bl	InitStrDesc(PLT)
	subs	r4, r0, #0
	bne	.L271
	mov	r0, r6
	bl	ExpandEnviromentVariables(PLT)
	subs	r4, r0, #0
	bne	.L272
	mov	r1, r5
	mov	r0, r6
	bl	ParseAsciiEqu_1(PLT)
	subs	r4, r0, #0
	bne	.L273
.L259:
	mov	r0, r6
	bl	FreeStrDesc(PLT)
	ldr	r2, .L275+8
	ldr	r3, .L275+4
.LPIC184:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #28]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L274
	mov	r0, r4
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, pc}
.L271:
	ldr	r1, .L275+12
	movw	r3, #801
	ldr	r0, .L275+16
	ldr	r2, .L275+20
.LPIC175:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC174:
	add	r0, pc, r0
	ldr	r1, .L275+24
.LPIC172:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC173:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L259
.L272:
	ldr	r1, .L275+28
	movw	r3, #803
	ldr	r0, .L275+32
	ldr	r2, .L275+36
.LPIC179:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC178:
	add	r0, pc, r0
	ldr	r1, .L275+40
.LPIC176:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC177:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L259
.L270:
	ldr	ip, .L275+44
	mvn	r4, #256
	ldr	r0, .L275+48
	movw	r3, #795
	ldr	r2, .L275+52
	ldr	r1, .L275+56
.LPIC170:
	add	ip, pc, ip
.LPIC171:
	add	r0, pc, r0
.LPIC168:
	add	r2, pc, r2
.LPIC169:
	add	r1, pc, r1
.L268:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	add	r6, sp, #16
	bl	siFormattedMessage_SC(PLT)
	b	.L259
.L273:
	ldr	r1, .L275+60
	mov	r3, #812
	ldr	r0, .L275+64
	ldr	r2, .L275+68
.LPIC183:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC182:
	add	r0, pc, r0
	ldr	r1, .L275+72
.LPIC180:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC181:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L259
.L269:
	ldr	ip, .L275+76
	mvn	r4, #256
	ldr	r0, .L275+80
	movw	r3, #790
	ldr	r2, .L275+84
	ldr	r1, .L275+88
.LPIC166:
	add	ip, pc, ip
.LPIC167:
	add	r0, pc, r0
.LPIC164:
	add	r2, pc, r2
.LPIC165:
	add	r1, pc, r1
	b	.L268
.L274:
	bl	__stack_chk_fail(PLT)
.L276:
	.align	2
.L275:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC185+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC184+8)
	.word	.LC4-(.LPIC175+8)
	.word	.LC38-(.LPIC174+8)
	.word	.LC1-(.LPIC172+8)
	.word	.LC2-(.LPIC173+8)
	.word	.LC4-(.LPIC179+8)
	.word	.LC39-(.LPIC178+8)
	.word	.LC1-(.LPIC176+8)
	.word	.LC2-(.LPIC177+8)
	.word	.LC37-(.LPIC170+8)
	.word	.LC4-(.LPIC171+8)
	.word	.LC35-(.LPIC168+8)
	.word	.LC2-(.LPIC169+8)
	.word	.LC4-(.LPIC183+8)
	.word	.LC41-(.LPIC182+8)
	.word	.LC1-(.LPIC180+8)
	.word	.LC2-(.LPIC181+8)
	.word	.LC36-(.LPIC166+8)
	.word	.LC4-(.LPIC167+8)
	.word	.LC35-(.LPIC164+8)
	.word	.LC2-(.LPIC165+8)
	.size	ParseAsciiEqu, .-ParseAsciiEqu
	.section	.rodata.str1.4
	.align	2
.LC42:
	.ascii	"ParseAsciiEqu_VA\000"
	.align	2
.LC43:
	.ascii	"(pvalue==NULL)\000"
	.align	2
.LC44:
	.ascii	"(siElementSize==0)\000"
	.align	2
.LC45:
	.ascii	"Value Too Large for unsigned long\000"
	.align	2
.LC46:
	.ascii	"Value Too Large for unsigned short\000"
	.align	2
.LC47:
	.ascii	"Value Too Large for unsigned char\000"
	.align	2
.LC48:
	.ascii	"Unsupported Variable Lenght\000"
	.text
	.align	2
	.global	AssignValue_VA
	.syntax unified
	.arm
	.fpu vfpv3
	.type	AssignValue_VA, %function
AssignValue_VA:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	subs	r6, r2, #0
	sub	sp, sp, #20
	beq	.L290
	cmp	r3, #0
	mov	r4, r3
	beq	.L291
	mov	r5, r0
	mov	r7, r1
	mov	r2, r3
	mov	r1, #0
	mov	r0, r6
	bl	memset(PLT)
	cmp	r4, #8
	moveq	r0, #0
	stmeq	r6, {r5, r7}
	beq	.L277
	cmp	r4, #4
	beq	.L292
	cmp	r4, #2
	beq	.L293
	cmp	r4, #1
	bne	.L286
	adds	r2, r5, #255
	movw	r3, #511
	adc	r1, r7, #0
	cmp	r2, r3
	sbcs	r1, r1, #0
	movcc	r0, #0
	strbcc	r5, [r6]
	bcs	.L294
.L277:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L291:
	ldr	ip, .L295
	mvn	r4, #256
	ldr	r0, .L295+4
	movw	r3, #839
	ldr	r2, .L295+8
	ldr	r1, .L295+12
.LPIC192:
	add	ip, pc, ip
.LPIC193:
	add	r0, pc, r0
.LPIC190:
	add	r2, pc, r2
.LPIC191:
	add	r1, pc, r1
.L289:
.L279:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L292:
	subs	r3, r5, #-2147483647
	mvn	r2, #-2147483647
	adc	r1, r7, #0
	cmp	r2, r3
	mov	r3, #1
	sbcs	r3, r3, r1
	movcs	r0, #0
	strcs	r5, [r6]
	bcs	.L277
	ldr	ip, .L295+16
	mvn	r4, #1536
	ldr	r0, .L295+20
	movw	r3, #853
	ldr	r2, .L295+24
	ldr	r1, .L295+28
.LPIC196:
	add	ip, pc, ip
.LPIC197:
	add	r0, pc, r0
.LPIC194:
	add	r2, pc, r2
.LPIC195:
	add	r1, pc, r1
	b	.L289
.L293:
	movw	r3, #32767
	movw	r2, #32766
	adds	r3, r5, r3
	movt	r2, 1
	adc	r1, r7, #0
	mov	r0, #0
	cmp	r2, r3
	sbcs	r1, r0, r1
	strhcs	r5, [r6]	@ movhi
	bcs	.L277
	ldr	ip, .L295+32
	mvn	r4, #1536
	ldr	r0, .L295+36
	movw	r3, #877
	ldr	r2, .L295+40
	ldr	r1, .L295+44
.LPIC200:
	add	ip, pc, ip
.LPIC201:
	add	r0, pc, r0
.LPIC198:
	add	r2, pc, r2
.LPIC199:
	add	r1, pc, r1
	b	.L289
.L290:
	ldr	ip, .L295+48
	mvn	r4, #256
	ldr	r0, .L295+52
	movw	r3, #834
	ldr	r2, .L295+56
	ldr	r1, .L295+60
.LPIC188:
	add	ip, pc, ip
.LPIC189:
	add	r0, pc, r0
.LPIC186:
	add	r2, pc, r2
.LPIC187:
	add	r1, pc, r1
	b	.L289
.L286:
	ldr	ip, .L295+64
	mvn	r4, #3840
	ldr	r0, .L295+68
	movw	r3, #897
	ldr	r2, .L295+72
	ldr	r1, .L295+76
.LPIC208:
	add	ip, pc, ip
.LPIC209:
	add	r0, pc, r0
.LPIC206:
	add	r2, pc, r2
.LPIC207:
	add	r1, pc, r1
	b	.L289
.L294:
	ldr	ip, .L295+80
	mvn	r4, #1536
	ldr	r0, .L295+84
	movw	r3, #889
	ldr	r2, .L295+88
	ldr	r1, .L295+92
.LPIC204:
	add	ip, pc, ip
.LPIC205:
	add	r0, pc, r0
.LPIC202:
	add	r2, pc, r2
.LPIC203:
	add	r1, pc, r1
	b	.L289
.L296:
	.align	2
.L295:
	.word	.LC44-(.LPIC192+8)
	.word	.LC4-(.LPIC193+8)
	.word	.LC42-(.LPIC190+8)
	.word	.LC2-(.LPIC191+8)
	.word	.LC45-(.LPIC196+8)
	.word	.LC4-(.LPIC197+8)
	.word	.LC42-(.LPIC194+8)
	.word	.LC2-(.LPIC195+8)
	.word	.LC46-(.LPIC200+8)
	.word	.LC4-(.LPIC201+8)
	.word	.LC42-(.LPIC198+8)
	.word	.LC2-(.LPIC199+8)
	.word	.LC43-(.LPIC188+8)
	.word	.LC4-(.LPIC189+8)
	.word	.LC42-(.LPIC186+8)
	.word	.LC2-(.LPIC187+8)
	.word	.LC48-(.LPIC208+8)
	.word	.LC4-(.LPIC209+8)
	.word	.LC42-(.LPIC206+8)
	.word	.LC2-(.LPIC207+8)
	.word	.LC47-(.LPIC204+8)
	.word	.LC4-(.LPIC205+8)
	.word	.LC42-(.LPIC202+8)
	.word	.LC2-(.LPIC203+8)
	.size	AssignValue_VA, .-AssignValue_VA
	.section	.rodata.str1.4
	.align	2
.LC49:
	.ascii	"AssignValue_VAB\000"
	.align	2
.LC50:
	.ascii	"(pValue==NULL)\000"
	.align	2
.LC51:
	.ascii	"sizeof(unsigned long)*8<(unsigned)(siBitOffset+siBi"
	.ascii	"tLen)\000"
	.align	2
.LC52:
	.ascii	"(unsigned long long)csllValue>ulMask\000"
	.align	2
.LC53:
	.ascii	"AssignValue_VA(csllValue, pulValue, siBitLen/8)\000"
	.text
	.align	2
	.global	AssignValue_VAB
	.syntax unified
	.arm
	.fpu vfpv3
	.type	AssignValue_VAB, %function
AssignValue_VAB:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r3, #0
	add	ip, r3, #7
	movge	ip, r3
	cmp	r2, #0
	asr	ip, ip, #3
	push	{r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #16
	add	r8, r2, ip
	ldr	r7, [sp, #40]
	ldr	r4, [sp, #44]
	beq	.L310
	cmp	r4, #0
	beq	.L311
	ands	r6, r3, #7
	mov	lr, r0
	mov	r5, r1
	beq	.L312
.L301:
	rsbs	r3, r3, #0
	mov	r1, r6
	and	r3, r3, #7
	rsbpl	r1, r3, #0
	add	r3, r1, r7
	cmp	r3, #32
	mvn	r3, #0
	mvn	r3, r3, lsl r7
	bhi	.L313
	cmp	r3, lr
	mov	r4, #0
	sbcs	r5, r4, r5
	bcc	.L314
	and	r1, r3, lr
	ldr	lr, [r2, ip]
	bic	r3, lr, r3, lsl r6
	orr	lr, r3, r1, lsl r6
	str	lr, [r2, ip]
.L297:
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L312:
	lsl	r4, r4, #3
	cmp	r4, r7
	bne	.L301
	cmp	r4, #0
	add	r3, r4, #7
	movge	r3, r4
	mov	r2, r8
	asr	r3, r3, #3
	bl	AssignValue_VA(PLT)
	subs	r4, r0, #0
	beq	.L297
.L299:
	ldr	ip, .L315
	movw	r3, #946
	ldr	r0, .L315+4
	ldr	r2, .L315+8
	ldr	r1, .L315+12
.LPIC228:
	add	ip, pc, ip
.LPIC229:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC226:
	add	r2, pc, r2
.LPIC227:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L297
.L311:
	ldr	ip, .L315+16
	mvn	r4, #256
	ldr	r0, .L315+20
	movw	r3, #926
	ldr	r2, .L315+24
	ldr	r1, .L315+28
.LPIC216:
	add	ip, pc, ip
.LPIC217:
	add	r0, pc, r0
.LPIC214:
	add	r2, pc, r2
.LPIC215:
	add	r1, pc, r1
.L309:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L313:
	ldr	ip, .L315+32
	mvn	r4, #256
	ldr	r0, .L315+36
	movw	r3, #933
	ldr	r2, .L315+40
	ldr	r1, .L315+44
.LPIC220:
	add	ip, pc, ip
.LPIC221:
	add	r0, pc, r0
.LPIC218:
	add	r2, pc, r2
.LPIC219:
	add	r1, pc, r1
	b	.L309
.L314:
	ldr	ip, .L315+48
	mvn	r4, #1536
	ldr	r0, .L315+52
	movw	r3, #938
	ldr	r2, .L315+56
	ldr	r1, .L315+60
.LPIC224:
	add	ip, pc, ip
.LPIC225:
	add	r0, pc, r0
.LPIC222:
	add	r2, pc, r2
.LPIC223:
	add	r1, pc, r1
	b	.L309
.L310:
	ldr	ip, .L315+64
	mvn	r4, #256
	ldr	r0, .L315+68
	movw	r3, #921
	ldr	r2, .L315+72
	ldr	r1, .L315+76
.LPIC212:
	add	ip, pc, ip
.LPIC213:
	add	r0, pc, r0
.LPIC210:
	add	r2, pc, r2
.LPIC211:
	add	r1, pc, r1
	b	.L309
.L316:
	.align	2
.L315:
	.word	.LC53-(.LPIC228+8)
	.word	.LC4-(.LPIC229+8)
	.word	.LC1-(.LPIC226+8)
	.word	.LC2-(.LPIC227+8)
	.word	.LC44-(.LPIC216+8)
	.word	.LC4-(.LPIC217+8)
	.word	.LC49-(.LPIC214+8)
	.word	.LC2-(.LPIC215+8)
	.word	.LC51-(.LPIC220+8)
	.word	.LC4-(.LPIC221+8)
	.word	.LC49-(.LPIC218+8)
	.word	.LC2-(.LPIC219+8)
	.word	.LC52-(.LPIC224+8)
	.word	.LC4-(.LPIC225+8)
	.word	.LC49-(.LPIC222+8)
	.word	.LC2-(.LPIC223+8)
	.word	.LC50-(.LPIC212+8)
	.word	.LC4-(.LPIC213+8)
	.word	.LC49-(.LPIC210+8)
	.word	.LC2-(.LPIC211+8)
	.size	AssignValue_VAB, .-AssignValue_VAB
	.align	2
	.global	RecoverValue_VA
	.syntax unified
	.arm
	.fpu vfpv3
	.type	RecoverValue_VA, %function
RecoverValue_VA:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r3, r0, #0
	push	{r4, lr}
	sub	sp, sp, #16
	beq	.L330
	cmp	r1, #0
	beq	.L331
	cmp	r2, #8
	addls	pc, pc, r2, asl #2
	b	.L321
.L323:
	b	.L327
	b	.L326
	b	.L325
	b	.L321
	b	.L324
	b	.L321
	b	.L321
	b	.L321
	b	.L322
	.p2align 1
.L321:
	ldr	ip, .L332
	mvn	r4, #3840
	ldr	r0, .L332+4
	mov	r3, #988
	ldr	r2, .L332+8
	ldr	r1, .L332+12
.LPIC244:
	add	ip, pc, ip
.LPIC245:
	add	r0, pc, r0
.LPIC242:
	add	r2, pc, r2
.LPIC243:
	add	r1, pc, r1
.L329:
.L319:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L327:
	ldr	ip, .L332+16
	mvn	r4, #256
	ldr	r0, .L332+20
	mov	r3, #972
	ldr	r2, .L332+24
	ldr	r1, .L332+28
.LPIC240:
	add	ip, pc, ip
.LPIC241:
	add	r0, pc, r0
.LPIC238:
	add	r2, pc, r2
.LPIC239:
	add	r1, pc, r1
	b	.L329
.L326:
	ldrb	r1, [r1]	@ zero_extendqisi2
	mov	r2, #0
	mov	r0, r2
	stm	r3, {r1, r2}
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L325:
	ldrh	r1, [r1]
	mov	r2, #0
	mov	r0, r2
	stm	r3, {r1, r2}
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L324:
	ldr	r1, [r1]
	mov	r2, #0
	mov	r0, r2
	stm	r3, {r1, r2}
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L322:
	vldr.64	d16, [r1]	@ int
	mov	r0, #0
	vstr.64	d16, [r3]	@ int
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L330:
	ldr	ip, .L332+32
	mvn	r4, #256
	ldr	r0, .L332+36
	movw	r3, #962
	ldr	r2, .L332+40
	ldr	r1, .L332+44
.LPIC232:
	add	ip, pc, ip
.LPIC233:
	add	r0, pc, r0
.LPIC230:
	add	r2, pc, r2
.LPIC231:
	add	r1, pc, r1
	b	.L329
.L331:
	ldr	ip, .L332+48
	mvn	r4, #256
	ldr	r0, .L332+52
	movw	r3, #967
	ldr	r2, .L332+56
	ldr	r1, .L332+60
.LPIC236:
	add	ip, pc, ip
.LPIC237:
	add	r0, pc, r0
.LPIC234:
	add	r2, pc, r2
.LPIC235:
	add	r1, pc, r1
	b	.L329
.L333:
	.align	2
.L332:
	.word	.LC48-(.LPIC244+8)
	.word	.LC4-(.LPIC245+8)
	.word	.LC42-(.LPIC242+8)
	.word	.LC2-(.LPIC243+8)
	.word	.LC44-(.LPIC240+8)
	.word	.LC4-(.LPIC241+8)
	.word	.LC42-(.LPIC238+8)
	.word	.LC2-(.LPIC239+8)
	.word	.LC37-(.LPIC232+8)
	.word	.LC4-(.LPIC233+8)
	.word	.LC42-(.LPIC230+8)
	.word	.LC2-(.LPIC231+8)
	.word	.LC43-(.LPIC236+8)
	.word	.LC4-(.LPIC237+8)
	.word	.LC42-(.LPIC234+8)
	.word	.LC2-(.LPIC235+8)
	.size	RecoverValue_VA, .-RecoverValue_VA
	.section	.rodata.str1.4
	.align	2
.LC54:
	.ascii	"RecoverValue_VAB\000"
	.align	2
.LC55:
	.ascii	"RecoverValue_VA(psllValue, pulValue, siBitLen/8)\000"
	.text
	.align	2
	.global	RecoverValue_VAB
	.syntax unified
	.arm
	.fpu vfpv3
	.type	RecoverValue_VAB, %function
RecoverValue_VAB:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	add	ip, r2, #7
	movge	ip, r2
	push	{r4, r5, lr}
	asr	ip, ip, #3
	subs	r5, r0, #0
	mov	lr, r1
	sub	sp, sp, #20
	add	r1, r1, ip
	beq	.L346
	cmp	lr, #0
	beq	.L347
	ldr	r4, [sp, #32]
	cmp	r4, #0
	beq	.L348
	orr	r4, r2, r3
	tst	r4, #7
	beq	.L339
	rsbs	r0, r2, #0
	and	r2, r2, #7
	and	r0, r0, #7
	mov	r1, r2
	rsbpl	r1, r0, #0
	add	r1, r1, r3
	cmp	r1, #32
	bhi	.L349
	ldr	r0, [lr, ip]
	mvn	r1, #0
	mvn	r3, r1, lsl r3
	mov	r4, #0
	str	r4, [r5, #4]
	and	r3, r3, r0, lsr r2
	str	r3, [r5]
.L334:
	mov	r0, r4
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, pc}
.L339:
	cmp	r3, #0
	add	r2, r3, #7
	movge	r2, r3
	asr	r2, r2, #3
	bl	RecoverValue_VA(PLT)
	subs	r4, r0, #0
	beq	.L334
.L336:
	ldr	ip, .L350
	movw	r3, #1036
	ldr	r0, .L350+4
	ldr	r2, .L350+8
	ldr	r1, .L350+12
.LPIC264:
	add	ip, pc, ip
.LPIC265:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC262:
	add	r2, pc, r2
.LPIC263:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L334
.L348:
	ldr	ip, .L350+16
	mvn	r4, #256
	ldr	r0, .L350+20
	movw	r3, #1022
	ldr	r2, .L350+24
	ldr	r1, .L350+28
.LPIC256:
	add	ip, pc, ip
.LPIC257:
	add	r0, pc, r0
.LPIC254:
	add	r2, pc, r2
.LPIC255:
	add	r1, pc, r1
.L345:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, pc}
.L349:
	ldr	ip, .L350+32
	mvn	r4, #256
	ldr	r0, .L350+36
	movw	r3, #1029
	ldr	r2, .L350+40
	ldr	r1, .L350+44
.LPIC260:
	add	ip, pc, ip
.LPIC261:
	add	r0, pc, r0
.LPIC258:
	add	r2, pc, r2
.LPIC259:
	add	r1, pc, r1
	b	.L345
.L346:
	ldr	ip, .L350+48
	mvn	r4, #256
	ldr	r0, .L350+52
	mov	r3, #1012
	ldr	r2, .L350+56
	ldr	r1, .L350+60
.LPIC248:
	add	ip, pc, ip
.LPIC249:
	add	r0, pc, r0
.LPIC246:
	add	r2, pc, r2
.LPIC247:
	add	r1, pc, r1
	b	.L345
.L347:
	ldr	ip, .L350+64
	mvn	r4, #256
	ldr	r0, .L350+68
	movw	r3, #1017
	ldr	r2, .L350+72
	ldr	r1, .L350+76
.LPIC252:
	add	ip, pc, ip
.LPIC253:
	add	r0, pc, r0
.LPIC250:
	add	r2, pc, r2
.LPIC251:
	add	r1, pc, r1
	b	.L345
.L351:
	.align	2
.L350:
	.word	.LC55-(.LPIC264+8)
	.word	.LC4-(.LPIC265+8)
	.word	.LC1-(.LPIC262+8)
	.word	.LC2-(.LPIC263+8)
	.word	.LC44-(.LPIC256+8)
	.word	.LC4-(.LPIC257+8)
	.word	.LC54-(.LPIC254+8)
	.word	.LC2-(.LPIC255+8)
	.word	.LC51-(.LPIC260+8)
	.word	.LC4-(.LPIC261+8)
	.word	.LC54-(.LPIC258+8)
	.word	.LC2-(.LPIC259+8)
	.word	.LC37-(.LPIC248+8)
	.word	.LC4-(.LPIC249+8)
	.word	.LC54-(.LPIC246+8)
	.word	.LC2-(.LPIC247+8)
	.word	.LC50-(.LPIC252+8)
	.word	.LC4-(.LPIC253+8)
	.word	.LC54-(.LPIC250+8)
	.word	.LC2-(.LPIC251+8)
	.size	RecoverValue_VAB, .-RecoverValue_VAB
	.section	.rodata.str1.4
	.align	2
.LC56:
	.ascii	"AssignValue_VA(sllValue, pvalue, siElementSize)\000"
	.align	2
.LC57:
	.ascii	"ParseAsciiEquEx(cszString, NULL, &sllValue)\000"
	.text
	.align	2
	.global	ParseAsciiEqu_VA
	.syntax unified
	.arm
	.fpu vfpv3
	.type	ParseAsciiEqu_VA, %function
ParseAsciiEqu_VA:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r6, r1
	ldr	r1, .L370
	subs	r4, r0, #0
	sub	sp, sp, #44
	ldr	r3, .L370+4
.LPIC295:
	add	r1, pc, r1
	ldr	r3, [r1, r3]
	ldr	r3, [r3]
	str	r3, [sp, #36]
	mov	r3, #0
	beq	.L364
	cmp	r6, #0
	beq	.L365
	mov	r1, #0
	mov	r0, r6
	add	r5, sp, #24
	mov	r7, r2
	bl	memset(PLT)
	mov	ip, #0
	mov	r1, r4
	mov	r2, #0
	mov	r3, #0
	mov	r0, r5
	str	ip, [sp, #24]
	str	ip, [sp, #28]
	str	ip, [sp, #32]
	strd	r2, [sp, #16]
	bl	InitStrDesc(PLT)
	subs	r4, r0, #0
	bne	.L366
	mov	r0, r5
	bl	ExpandEnviromentVariables(PLT)
	subs	r4, r0, #0
	bne	.L367
	add	r1, sp, #16
	mov	r0, r5
	bl	ParseAsciiEqu_1(PLT)
	subs	r4, r0, #0
	bne	.L359
	mov	r0, r5
	bl	FreeStrDesc(PLT)
	ldrd	r0, [sp, #16]
	mov	r3, r7
	mov	r2, r6
	bl	AssignValue_VA(PLT)
	subs	r4, r0, #0
	bne	.L368
.L352:
	ldr	r2, .L370+8
	ldr	r3, .L370+4
.LPIC294:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #36]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L369
	mov	r0, r4
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L366:
	ldr	r1, .L370+12
	movw	r3, #801
	ldr	r0, .L370+16
	ldr	r2, .L370+20
.LPIC277:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC276:
	add	r0, pc, r0
	ldr	r1, .L370+24
.LPIC274:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC275:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
.L357:
	mov	r0, r5
	bl	FreeStrDesc(PLT)
	ldr	ip, .L370+28
	movw	r3, #1065
	ldr	r0, .L370+32
	ldr	r2, .L370+36
	ldr	r1, .L370+40
.LPIC292:
	add	ip, pc, ip
.LPIC293:
	add	r0, pc, r0
	str	ip, [sp, #8]
	str	r0, [sp, #4]
.LPIC290:
	add	r2, pc, r2
.LPIC291:
	add	r1, pc, r1
	str	r4, [sp]
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L352
.L367:
	ldr	r1, .L370+44
	movw	r3, #803
	ldr	r0, .L370+48
	ldr	r2, .L370+52
.LPIC281:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC280:
	add	r0, pc, r0
	ldr	r1, .L370+56
.LPIC278:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC279:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L357
.L368:
.L354:
	ldr	ip, .L370+60
	movw	r3, #1066
	ldr	r0, .L370+64
	ldr	r2, .L370+68
	ldr	r1, .L370+72
.LPIC288:
	add	ip, pc, ip
.LPIC289:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC286:
	add	r2, pc, r2
.LPIC287:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L352
.L365:
	ldr	ip, .L370+76
	mvn	r4, #256
	ldr	r0, .L370+80
	movw	r3, #1059
	ldr	r2, .L370+84
	ldr	r1, .L370+88
.LPIC272:
	add	ip, pc, ip
.LPIC273:
	add	r0, pc, r0
.LPIC270:
	add	r2, pc, r2
.LPIC271:
	add	r1, pc, r1
.L363:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	b	.L352
.L359:
	ldr	r1, .L370+92
	mov	r3, #812
	ldr	r0, .L370+96
	ldr	r2, .L370+100
.LPIC285:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC284:
	add	r0, pc, r0
	ldr	r1, .L370+104
.LPIC282:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC283:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L357
.L364:
	ldr	ip, .L370+108
	mvn	r4, #256
	ldr	r0, .L370+112
	movw	r3, #1054
	ldr	r2, .L370+116
	ldr	r1, .L370+120
.LPIC268:
	add	ip, pc, ip
.LPIC269:
	add	r0, pc, r0
.LPIC266:
	add	r2, pc, r2
.LPIC267:
	add	r1, pc, r1
	b	.L363
.L369:
	bl	__stack_chk_fail(PLT)
.L371:
	.align	2
.L370:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC295+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC294+8)
	.word	.LC4-(.LPIC277+8)
	.word	.LC38-(.LPIC276+8)
	.word	.LC1-(.LPIC274+8)
	.word	.LC2-(.LPIC275+8)
	.word	.LC57-(.LPIC292+8)
	.word	.LC4-(.LPIC293+8)
	.word	.LC1-(.LPIC290+8)
	.word	.LC2-(.LPIC291+8)
	.word	.LC4-(.LPIC281+8)
	.word	.LC39-(.LPIC280+8)
	.word	.LC1-(.LPIC278+8)
	.word	.LC2-(.LPIC279+8)
	.word	.LC56-(.LPIC288+8)
	.word	.LC4-(.LPIC289+8)
	.word	.LC1-(.LPIC286+8)
	.word	.LC2-(.LPIC287+8)
	.word	.LC43-(.LPIC272+8)
	.word	.LC4-(.LPIC273+8)
	.word	.LC42-(.LPIC270+8)
	.word	.LC2-(.LPIC271+8)
	.word	.LC4-(.LPIC285+8)
	.word	.LC41-(.LPIC284+8)
	.word	.LC1-(.LPIC282+8)
	.word	.LC2-(.LPIC283+8)
	.word	.LC36-(.LPIC268+8)
	.word	.LC4-(.LPIC269+8)
	.word	.LC42-(.LPIC266+8)
	.word	.LC2-(.LPIC267+8)
	.size	ParseAsciiEqu_VA, .-ParseAsciiEqu_VA
	.section	.rodata.str1.4
	.align	2
.LC58:
	.ascii	"ParseAsciiEquEx_VA\000"
	.align	2
.LC59:
	.ascii	"ParseAsciiEquEx(cszString, pMacros, &sllValue)\000"
	.text
	.align	2
	.global	ParseAsciiEquEx_VA
	.syntax unified
	.arm
	.fpu vfpv3
	.type	ParseAsciiEquEx_VA, %function
ParseAsciiEquEx_VA:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, r2
	ldr	r2, .L398
	mov	r6, r3
	subs	r4, r0, #0
	sub	sp, sp, #40
	ldr	r3, .L398+4
.LPIC329:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #36]
	mov	r3, #0
	beq	.L391
	cmp	r5, #0
	beq	.L392
	mov	r2, r6
	mov	r7, r1
	mov	r0, r5
	mov	r1, #0
	add	r8, sp, #24
	bl	memset(PLT)
	mov	ip, #0
	mov	r1, r4
	mov	r2, #0
	mov	r3, #0
	mov	r0, r8
	str	ip, [sp, #24]
	str	ip, [sp, #28]
	str	ip, [sp, #32]
	strd	r2, [sp, #16]
	bl	InitStrDesc(PLT)
	subs	r4, r0, #0
	bne	.L393
	mov	r0, r8
	bl	ExpandEnviromentVariables(PLT)
	subs	r4, r0, #0
	bne	.L394
	cmp	r7, #0
	beq	.L379
	mov	r1, r7
	mov	r0, r8
	bl	ExpandMacros(PLT)
	subs	r4, r0, #0
	bne	.L395
.L379:
	add	r1, sp, #16
	mov	r0, r8
	bl	ParseAsciiEqu_1(PLT)
	subs	r4, r0, #0
	bne	.L380
	mov	r0, r8
	bl	FreeStrDesc(PLT)
	ldrd	r0, [sp, #16]
	mov	r3, r6
	mov	r2, r5
	bl	AssignValue_VA(PLT)
	subs	r4, r0, #0
	bne	.L396
.L372:
	ldr	r2, .L398+8
	ldr	r3, .L398+4
.LPIC328:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #36]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L397
	mov	r0, r4
	add	sp, sp, #40
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L393:
	ldr	r1, .L398+12
	movw	r3, #801
	ldr	r0, .L398+16
	ldr	r2, .L398+20
.LPIC307:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC306:
	add	r0, pc, r0
	ldr	r1, .L398+24
.LPIC304:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC305:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
.L377:
	mov	r0, r8
	bl	FreeStrDesc(PLT)
	ldr	ip, .L398+28
	movw	r3, #1093
	ldr	r0, .L398+32
	ldr	r2, .L398+36
	ldr	r1, .L398+40
.LPIC326:
	add	ip, pc, ip
.LPIC327:
	add	r0, pc, r0
	str	ip, [sp, #8]
	str	r0, [sp, #4]
.LPIC324:
	add	r2, pc, r2
.LPIC325:
	add	r1, pc, r1
	str	r4, [sp]
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L372
.L394:
	ldr	r1, .L398+44
	movw	r3, #803
	ldr	r0, .L398+48
	ldr	r2, .L398+52
.LPIC311:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC310:
	add	r0, pc, r0
	ldr	r1, .L398+56
.LPIC308:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC309:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L377
.L396:
.L374:
	ldr	ip, .L398+60
	movw	r3, #1094
	ldr	r0, .L398+64
	ldr	r2, .L398+68
	ldr	r1, .L398+72
.LPIC322:
	add	ip, pc, ip
.LPIC323:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC320:
	add	r2, pc, r2
.LPIC321:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L372
.L392:
	ldr	ip, .L398+76
	mvn	r4, #256
	ldr	r0, .L398+80
	movw	r3, #1087
	ldr	r2, .L398+84
	ldr	r1, .L398+88
.LPIC302:
	add	ip, pc, ip
.LPIC303:
	add	r0, pc, r0
.LPIC300:
	add	r2, pc, r2
.LPIC301:
	add	r1, pc, r1
.L390:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	b	.L372
.L380:
	ldr	r1, .L398+92
	mov	r3, #812
	ldr	r0, .L398+96
	ldr	r2, .L398+100
.LPIC319:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC318:
	add	r0, pc, r0
	ldr	r1, .L398+104
.LPIC316:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC317:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L377
.L395:
	ldr	r1, .L398+108
	movw	r3, #805
	ldr	r0, .L398+112
	ldr	r2, .L398+116
.LPIC315:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC314:
	add	r0, pc, r0
	ldr	r1, .L398+120
.LPIC312:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC313:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L377
.L391:
	ldr	ip, .L398+124
	mvn	r4, #256
	ldr	r0, .L398+128
	movw	r3, #1082
	ldr	r2, .L398+132
	ldr	r1, .L398+136
.LPIC298:
	add	ip, pc, ip
.LPIC299:
	add	r0, pc, r0
.LPIC296:
	add	r2, pc, r2
.LPIC297:
	add	r1, pc, r1
	b	.L390
.L397:
	bl	__stack_chk_fail(PLT)
.L399:
	.align	2
.L398:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC329+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC328+8)
	.word	.LC4-(.LPIC307+8)
	.word	.LC38-(.LPIC306+8)
	.word	.LC1-(.LPIC304+8)
	.word	.LC2-(.LPIC305+8)
	.word	.LC59-(.LPIC326+8)
	.word	.LC4-(.LPIC327+8)
	.word	.LC1-(.LPIC324+8)
	.word	.LC2-(.LPIC325+8)
	.word	.LC4-(.LPIC311+8)
	.word	.LC39-(.LPIC310+8)
	.word	.LC1-(.LPIC308+8)
	.word	.LC2-(.LPIC309+8)
	.word	.LC56-(.LPIC322+8)
	.word	.LC4-(.LPIC323+8)
	.word	.LC1-(.LPIC320+8)
	.word	.LC2-(.LPIC321+8)
	.word	.LC43-(.LPIC302+8)
	.word	.LC4-(.LPIC303+8)
	.word	.LC58-(.LPIC300+8)
	.word	.LC2-(.LPIC301+8)
	.word	.LC4-(.LPIC319+8)
	.word	.LC41-(.LPIC318+8)
	.word	.LC1-(.LPIC316+8)
	.word	.LC2-(.LPIC317+8)
	.word	.LC4-(.LPIC315+8)
	.word	.LC40-(.LPIC314+8)
	.word	.LC1-(.LPIC312+8)
	.word	.LC2-(.LPIC313+8)
	.word	.LC36-(.LPIC298+8)
	.word	.LC4-(.LPIC299+8)
	.word	.LC58-(.LPIC296+8)
	.word	.LC2-(.LPIC297+8)
	.size	ParseAsciiEquEx_VA, .-ParseAsciiEquEx_VA
	.global	cszEnvEndMarker
	.global	cszEnvStartMarker
	.global	cAS
	.section	.rodata.str1.4
	.align	2
.LC60:
	.ascii	"()\000"
	.align	2
.LC61:
	.ascii	"cond?Vara:Varb\000"
	.align	2
.LC62:
	.ascii	"ParseAsciiEqu_3\000"
	.align	2
.LC63:
	.ascii	"||\000"
	.align	2
.LC64:
	.ascii	"ParseAsciiEqu_4\000"
	.align	2
.LC65:
	.ascii	"&&\000"
	.align	2
.LC66:
	.ascii	"ParseAsciiEqu_5\000"
	.align	2
.LC67:
	.ascii	"|\000"
	.align	2
.LC68:
	.ascii	"ParseAsciiEqu_6\000"
	.align	2
.LC69:
	.ascii	"^\000"
	.align	2
.LC70:
	.ascii	"ParseAsciiEqu_7\000"
	.align	2
.LC71:
	.ascii	"&\000"
	.align	2
.LC72:
	.ascii	"ParseAsciiEqu_8\000"
	.align	2
.LC73:
	.ascii	"==,!=\000"
	.align	2
.LC74:
	.ascii	"ParseAsciiEqu_9\000"
	.align	2
.LC75:
	.ascii	">,>=,<,<=\000"
	.align	2
.LC76:
	.ascii	"ParseAsciiEqu_10\000"
	.align	2
.LC77:
	.ascii	"<<,>>\000"
	.align	2
.LC78:
	.ascii	"ParseAsciiEqu_11\000"
	.align	2
.LC79:
	.ascii	"+,-\000"
	.align	2
.LC80:
	.ascii	"ParseAsciiEqu_12\000"
	.align	2
.LC81:
	.ascii	"*,/,%\000"
	.global	cLogicalOr_desc
	.global	cLogicalOr
	.global	cLogicalAnd_desc
	.global	cLogicalAnd
	.global	cBitwiseOr_desc
	.global	cBitwiseOr
	.global	cBitwiseXor_desc
	.global	cBitwiseXor
	.global	cBitwiseAnd_desc
	.global	cBitwiseAnd
	.global	cCompare_desc
	.global	cCompare
	.align	2
.LC82:
	.ascii	"==\000"
	.align	2
.LC83:
	.ascii	"!=\000"
	.global	cBitShift_desc
	.global	cBitShift
	.align	2
.LC84:
	.ascii	"<<\000"
	.align	2
.LC85:
	.ascii	">>\000"
	.global	cAddSub_desc
	.global	cAddSub
	.align	2
.LC86:
	.ascii	"+\000"
	.align	2
.LC87:
	.ascii	"-\000"
	.global	cMultDiv_desc
	.global	cMultDiv
	.align	2
.LC88:
	.ascii	"*\000"
	.align	2
.LC89:
	.ascii	"%\000"
	.align	2
.LC90:
	.ascii	"/\000"
	.section	.rodata
	.align	2
	.set	.LANCHOR1,. + 0
	.type	cszEnvEndMarker, %object
	.size	cszEnvEndMarker, 2
cszEnvEndMarker:
	.ascii	")\000"
	.space	2
	.type	cszEnvStartMarker, %object
	.size	cszEnvStartMarker, 3
cszEnvStartMarker:
	.ascii	"$(\000"
	.section	.data.rel.local,"aw"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	cAS, %object
	.size	cAS, 240
cAS:
	.word	.LC25
	.word	ParseAsciiEqu_2
	.word	0
	.word	0
	.word	.LC60
	.word	.LC5
	.word	ParseAsciiEqu_cmn
	.word	0
	.word	0
	.word	.LC61
	.word	.LC62
	.word	ParseAsciiEqu_cmn
	.word	ParseOpcodeTokensAscii
	.word	cLogicalOr_desc
	.word	.LC63
	.word	.LC64
	.word	ParseAsciiEqu_cmn
	.word	ParseOpcodeTokensAscii
	.word	cLogicalAnd_desc
	.word	.LC65
	.word	.LC66
	.word	ParseAsciiEqu_cmn
	.word	ParseOpcodeTokensAscii
	.word	cBitwiseOr_desc
	.word	.LC67
	.word	.LC68
	.word	ParseAsciiEqu_cmn
	.word	ParseOpcodeTokensAscii
	.word	cBitwiseXor_desc
	.word	.LC69
	.word	.LC70
	.word	ParseAsciiEqu_cmn
	.word	ParseOpcodeTokensAscii
	.word	cBitwiseAnd_desc
	.word	.LC71
	.word	.LC72
	.word	ParseAsciiEqu_cmn
	.word	ParseOpcodeTokensAscii
	.word	cCompare_desc
	.word	.LC73
	.word	.LC74
	.word	ParseAsciiEqu_cmn
	.word	ParseAscii_8
	.word	0
	.word	.LC75
	.word	.LC76
	.word	ParseAsciiEqu_cmn
	.word	ParseOpcodeTokensAscii
	.word	cBitShift_desc
	.word	.LC77
	.word	.LC78
	.word	ParseAsciiEqu_cmn
	.word	ParseOpcodeTokensAscii
	.word	cAddSub_desc
	.word	.LC79
	.word	.LC80
	.word	ParseAsciiEqu_13
	.word	ParseOpcodeTokensAscii
	.word	cMultDiv_desc
	.word	.LC81
	.type	cLogicalOr_desc, %object
	.size	cLogicalOr_desc, 8
cLogicalOr_desc:
	.word	1
	.word	cLogicalOr
	.type	cLogicalAnd_desc, %object
	.size	cLogicalAnd_desc, 8
cLogicalAnd_desc:
	.word	1
	.word	cLogicalAnd
	.type	cBitwiseOr_desc, %object
	.size	cBitwiseOr_desc, 8
cBitwiseOr_desc:
	.word	1
	.word	cBitwiseOr
	.type	cBitwiseXor_desc, %object
	.size	cBitwiseXor_desc, 8
cBitwiseXor_desc:
	.word	1
	.word	cBitwiseXor
	.type	cBitwiseAnd_desc, %object
	.size	cBitwiseAnd_desc, 8
cBitwiseAnd_desc:
	.word	1
	.word	cBitwiseAnd
	.type	cCompare_desc, %object
	.size	cCompare_desc, 8
cCompare_desc:
	.word	2
	.word	cCompare
	.type	cBitShift_desc, %object
	.size	cBitShift_desc, 8
cBitShift_desc:
	.word	2
	.word	cBitShift
	.type	cAddSub_desc, %object
	.size	cAddSub_desc, 8
cAddSub_desc:
	.word	2
	.word	cAddSub
	.type	cMultDiv_desc, %object
	.size	cMultDiv_desc, 8
cMultDiv_desc:
	.word	3
	.word	cMultDiv
	.section	.data.rel.ro.local,"aw"
	.align	2
	.type	cLogicalOr, %object
	.size	cLogicalOr, 8
cLogicalOr:
	.word	.LC63
	.word	3
	.type	cLogicalAnd, %object
	.size	cLogicalAnd, 8
cLogicalAnd:
	.word	.LC65
	.word	4
	.type	cBitwiseOr, %object
	.size	cBitwiseOr, 8
cBitwiseOr:
	.word	.LC67
	.word	11
	.type	cBitwiseXor, %object
	.size	cBitwiseXor, 8
cBitwiseXor:
	.word	.LC69
	.word	12
	.type	cBitwiseAnd, %object
	.size	cBitwiseAnd, 8
cBitwiseAnd:
	.word	.LC71
	.word	10
	.type	cCompare, %object
	.size	cCompare, 16
cCompare:
	.word	.LC82
	.word	1
	.word	.LC83
	.word	2
	.type	cBitShift, %object
	.size	cBitShift, 16
cBitShift:
	.word	.LC84
	.word	20
	.word	.LC85
	.word	21
	.type	cAddSub, %object
	.size	cAddSub, 16
cAddSub:
	.word	.LC86
	.word	17
	.word	.LC87
	.word	18
	.type	cMultDiv, %object
	.size	cMultDiv, 24
cMultDiv:
	.word	.LC88
	.word	14
	.word	.LC89
	.word	15
	.word	.LC90
	.word	16
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
