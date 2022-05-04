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
	.file	"StrFuncs.c"
	.text
	.align	2
	.global	skipWhiteSpaces
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	skipWhiteSpaces, %function
skipWhiteSpaces:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	bxeq	lr
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, #10
	cmpne	r3, #13
	bxeq	lr
.L3:
	cmp	r3, #9
	cmpne	r3, #32
	bxne	lr
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2
	cmp	r3, #10
	cmpne	r3, #13
	bne	.L3
	bx	lr
	.size	skipWhiteSpaces, .-skipWhiteSpaces
	.align	2
	.global	stripWhiteSpaces
	.syntax unified
	.arm
	.fpu vfpv3
	.type	stripWhiteSpaces, %function
stripWhiteSpaces:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	subs	r4, r0, #0
	popeq	{r4, pc}
	bl	strlen(PLT)
	sub	r0, r0, #1
	ldrb	r3, [r4, r0]	@ zero_extendqisi2
	add	r0, r4, r0
	cmp	r3, #9
	cmpne	r3, #32
	bne	.L14
.L15:
	ldrb	r3, [r0, #-1]!	@ zero_extendqisi2
	cmp	r3, #9
	cmpne	r3, #32
	beq	.L15
.L14:
	mov	r3, #0
	strb	r3, [r0, #1]
	pop	{r4, pc}
	.size	stripWhiteSpaces, .-stripWhiteSpaces
	.align	2
	.global	szFindStr
	.syntax unified
	.arm
	.fpu vfpv3
	.type	szFindStr, %function
szFindStr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r8, [r1]
	ldr	r4, [r1, #4]
	cmp	r8, #0
	beq	.L24
	cmp	r2, #0
	sub	r5, r8, #1
	mov	r6, r0
	mov	r7, r2
	add	r4, r4, #64
	movne	r8, #0
	beq	.L47
.L31:
	ldr	r1, [r4, #-64]
	mov	r0, r6
	bl	strstr(PLT)
	cmp	r0, #0
	pld	[r4]
	sub	r5, r5, #1
	sub	r2, r4, #64
	beq	.L30
	cmp	r0, r8
	movcs	r3, #0
	movcc	r3, #1
	cmp	r8, #0
	orreq	r3, r3, #1
	cmp	r3, #0
	movne	r8, r0
	strne	r2, [r7]
.L30:
	cmn	r5, #1
	add	r4, r4, #8
	bne	.L31
.L24:
	mov	r0, r8
	pop	{r4, r5, r6, r7, r8, pc}
.L47:
	mov	r8, r2
.L28:
	ldr	r1, [r4, #-64]
	mov	r0, r6
	bl	strstr(PLT)
	cmp	r0, #0
	pld	[r4]
	sub	r5, r5, #1
	add	r4, r4, #8
	beq	.L27
	cmp	r8, r0
	movls	r3, #0
	movhi	r3, #1
	cmp	r8, #0
	orreq	r3, r3, #1
	cmp	r3, #0
	movne	r8, r0
.L27:
	cmn	r5, #1
	bne	.L28
	mov	r0, r8
	pop	{r4, r5, r6, r7, r8, pc}
	.size	szFindStr, .-szFindStr
	.align	2
	.global	szFindCharMap
	.syntax unified
	.arm
	.fpu vfpv3
	.type	szFindCharMap, %function
szFindCharMap:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L61
	push	{r4, lr}
	b	.L49
.L51:
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L55
.L49:
	ldrb	ip, [r1, r3, lsr #3]	@ zero_extendqisi2
	and	r4, r3, #7
	lsr	r2, r3, #3
	mov	lr, r4
	asr	r3, ip, r4
	tst	r3, #1
	beq	.L51
.L52:
	uxtb	r2, r2
	ldrb	r3, [r1, r2]	@ zero_extendqisi2
	asr	r3, r3, lr
	tst	r3, #1
	popeq	{r4, pc}
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	and	lr, r3, #7
	lsr	r2, r3, #3
	bne	.L52
.L55:
	mov	r0, r3
	pop	{r4, pc}
.L61:
	mov	r0, r3
	bx	lr
	.size	szFindCharMap, .-szFindCharMap
	.align	2
	.global	szStrCmp
	.syntax unified
	.arm
	.fpu vfpv3
	.type	szStrCmp, %function
szStrCmp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, #0
	ldrbeq	r2, [r1]	@ zero_extendqisi2
	bne	.L65
	b	.L64
.L66:
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L71
.L65:
	mov	ip, r1
	ldrb	r2, [r1], #1	@ zero_extendqisi2
	sub	r3, r2, r3
	cmp	r2, #0
	clz	r3, r3
	lsr	r3, r3, #5
	moveq	r3, #0
	cmp	r3, #0
	bne	.L66
.L64:
	cmp	r2, #0
	movne	r0, #0
	bx	lr
.L71:
	ldrb	r2, [ip, #1]	@ zero_extendqisi2
	b	.L64
	.size	szStrCmp, .-szStrCmp
	.align	2
	.global	szFindWord
	.syntax unified
	.arm
	.fpu vfpv3
	.type	szFindWord, %function
szFindWord:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0
	ldr	r0, .L107
	sub	sp, sp, #52
	mov	r6, #1
	ldr	r3, .L107+4
	str	r2, [sp, #4]
.LPIC2:
	add	r0, pc, r0
	mov	r2, #0
	ldr	lr, .L107+8
	str	r2, [sp, #12]
	str	r2, [sp, #16]
	ldr	r3, [r0, r3]
.LPIC0:
	add	lr, pc, lr
	add	lr, lr, r6
	ldr	r3, [r3]
	str	r3, [sp, #44]
	mov	r3, #0
	mov	r3, #41
	str	r2, [sp, #20]
	str	r2, [sp, #24]
	str	r2, [sp, #28]
	str	r2, [sp, #32]
	str	r2, [sp, #36]
	str	r2, [sp, #40]
	strb	r6, [sp, #12]
	strb	r6, [sp, #17]
.L73:
	add	r2, sp, #48
	and	ip, r3, #7
	add	r0, r2, r3, lsr #3
	ldrb	r3, [lr, #1]!	@ zero_extendqisi2
	ldrb	r2, [r0, #-36]	@ zero_extendqisi2
	cmp	r3, #0
	orr	r2, r2, r6, lsl ip
	strb	r2, [r0, #-36]
	bne	.L73
	ldr	r9, [r1, #4]
	ldr	fp, [r1]
	sub	r10, r9, #1
.L86:
	cmp	r9, #0
	beq	.L74
	ldrb	r5, [r4]	@ zero_extendqisi2
	add	ip, fp, #56
	mov	lr, r10
.L81:
	ldr	r3, [ip, #-56]
	subs	r2, r5, #0
	pld	[ip]
	sub	r8, ip, #56
	movne	r6, r4
	ldrb	r1, [r3]	@ zero_extendqisi2
	bne	.L77
	b	.L76
.L78:
	ldrb	r2, [r6, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L104
.L77:
	mov	r7, r3
	ldrb	r1, [r3], #1	@ zero_extendqisi2
	subs	r0, r1, #0
	movne	r0, #1
	cmp	r1, r2
	movne	r0, #0
	cmp	r0, #0
	bne	.L78
.L76:
	cmp	r1, #0
	bne	.L79
	add	r3, sp, #48
	add	r3, r3, r2, lsr #3
	and	r2, r2, #7
	ldrb	r3, [r3, #-36]	@ zero_extendqisi2
	asr	r3, r3, r2
	tst	r3, #1
	bne	.L105
.L79:
	sub	lr, lr, #1
	add	ip, ip, #8
	cmn	lr, #1
	bne	.L81
.L74:
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	add	r4, r4, #1
	cmp	r3, #0
	bne	.L82
	b	.L89
.L83:
	ldrb	r3, [r4, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L89
.L82:
	add	r2, sp, #48
	add	r2, r2, r3, lsr #3
	and	r3, r3, #7
	ldrb	r2, [r2, #-36]	@ zero_extendqisi2
	asr	r3, r2, r3
	tst	r3, #1
	beq	.L83
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L89
.L84:
	add	r2, sp, #48
	add	r2, r2, r3, lsr #3
	and	r3, r3, #7
	ldrb	r2, [r2, #-36]	@ zero_extendqisi2
	asr	r3, r2, r3
	tst	r3, #1
	beq	.L86
	ldrb	r3, [r4, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L84
.L89:
	mov	r4, r3
.L72:
	ldr	r2, .L107+12
	ldr	r3, .L107+4
.LPIC1:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #44]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L106
	mov	r0, r4
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L104:
	ldrb	r1, [r7, #1]	@ zero_extendqisi2
	b	.L76
.L105:
	ldr	r3, [sp, #4]
	str	r8, [r3]
	b	.L72
.L106:
	bl	__stack_chk_fail(PLT)
.L108:
	.align	2
.L107:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC2+8)
	.word	__stack_chk_guard(GOT)
	.word	.LANCHOR0-(.LPIC0+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+8)
	.size	szFindWord, .-szFindWord
	.align	2
	.global	strrstr
	.syntax unified
	.arm
	.fpu vfpv3
	.type	strrstr, %function
strrstr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	cmpne	r0, #0
	push	{r4, r5, r6, lr}
	moveq	r4, #1
	movne	r4, #0
	moveq	r6, #0
	beq	.L109
	mov	r5, r1
	bl	strstr(PLT)
	subs	r3, r0, #0
	beq	.L113
.L111:
	add	r0, r3, #1
	mov	r1, r5
	mov	r6, r3
	add	r4, r4, #1
	bl	strstr(PLT)
	subs	r3, r0, #0
	bne	.L111
	cmp	r4, #0
	moveq	r6, #0
.L109:
	mov	r0, r6
	pop	{r4, r5, r6, pc}
.L113:
	mov	r6, r3
	b	.L109
	.size	strrstr, .-strrstr
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"ReplaceSubStr\000"
	.align	2
.LC1:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux/../StrFuncs.c\000"
	.align	2
.LC2:
	.ascii	"(pStrDesc==NULL)\000"
	.align	2
.LC3:
	.ascii	"%s\012\000"
	.align	2
.LC4:
	.ascii	"(pStrDesc->szStr==NULL)\000"
	.text
	.align	2
	.global	InitStrDesc
	.syntax unified
	.arm
	.fpu vfpv3
	.type	InitStrDesc, %function
InitStrDesc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	subs	r4, r0, #0
	sub	sp, sp, #16
	beq	.L126
	cmp	r1, #0
	mov	r5, r1
	beq	.L120
	mov	r0, r1
	bl	strlen(PLT)
	movw	r2, #52429
	add	r3, r0, #20
	movt	r2, 52428
	add	r6, r0, #1
	umull	r2, r3, r2, r3
	str	r6, [r4, #4]
	lsr	r3, r3, #4
	add	r3, r3, r3, lsl #2
	lsl	r0, r3, #2
	str	r0, [r4, #8]
	bl	malloc(PLT)
	cmp	r0, #0
	str	r0, [r4]
	beq	.L123
	mov	r2, r6
	mov	r1, r5
	bl	memcpy(PLT)
	mov	r0, #0
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, pc}
.L120:
	mov	r0, #20
	mov	r3, #1
	str	r3, [r4, #4]
	str	r0, [r4, #8]
	bl	malloc(PLT)
	cmp	r0, #0
	streq	r0, [r4]
	beq	.L123
.L119:
	mov	r0, r5
	str	r5, [r4]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, pc}
.L123:
	ldr	ip, .L127
	mvn	r4, #2
	ldr	r0, .L127+4
	mov	r3, #182
	ldr	r2, .L127+8
	ldr	r1, .L127+12
.LPIC9:
	add	ip, pc, ip
.LPIC10:
	add	r0, pc, r0
.LPIC7:
	add	r2, pc, r2
.LPIC8:
	add	r1, pc, r1
.L125:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, pc}
.L126:
	ldr	ip, .L127+16
	mvn	r4, #256
	ldr	r0, .L127+20
	mov	r3, #172
	ldr	r2, .L127+24
	ldr	r1, .L127+28
.LPIC5:
	add	ip, pc, ip
.LPIC6:
	add	r0, pc, r0
.LPIC3:
	add	r2, pc, r2
.LPIC4:
	add	r1, pc, r1
	b	.L125
.L128:
	.align	2
.L127:
	.word	.LC4-(.LPIC9+8)
	.word	.LC3-(.LPIC10+8)
	.word	.LC0-(.LPIC7+8)
	.word	.LC1-(.LPIC8+8)
	.word	.LC2-(.LPIC5+8)
	.word	.LC3-(.LPIC6+8)
	.word	.LC0-(.LPIC3+8)
	.word	.LC1-(.LPIC4+8)
	.size	InitStrDesc, .-InitStrDesc
	.align	2
	.global	FreeStrDesc
	.syntax unified
	.arm
	.fpu vfpv3
	.type	FreeStrDesc, %function
FreeStrDesc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	subs	r4, r0, #0
	sub	sp, sp, #16
	beq	.L137
	ldr	r0, [r4]
	cmp	r0, #0
	beq	.L132
	bl	free(PLT)
.L132:
	mov	r3, #0
	mov	r0, r3
	str	r3, [r4]	@ unaligned
.L131:
.L129:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L137:
	ldr	ip, .L138
	mvn	r4, #256
	ldr	r0, .L138+4
	mov	r3, #201
	ldr	r2, .L138+8
	ldr	r1, .L138+12
.LPIC13:
	add	ip, pc, ip
.LPIC14:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC11:
	add	r2, pc, r2
.LPIC12:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L129
.L139:
	.align	2
.L138:
	.word	.LC2-(.LPIC13+8)
	.word	.LC3-(.LPIC14+8)
	.word	.LC0-(.LPIC11+8)
	.word	.LC1-(.LPIC12+8)
	.size	FreeStrDesc, .-FreeStrDesc
	.align	2
	.global	ReplaceSubStr
	.syntax unified
	.arm
	.fpu vfpv3
	.type	ReplaceSubStr, %function
ReplaceSubStr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	subs	r4, r0, #0
	sub	sp, sp, #20
	beq	.L149
	cmp	r3, #0
	mov	r7, r1
	mov	r9, r2
	mov	r6, r3
	moveq	r8, r3
	beq	.L143
	mov	r0, r3
	bl	strlen(PLT)
	mov	r8, r0
.L143:
	ldr	r3, [r4, #4]
	sub	r5, r7, r9
	add	r5, r5, r3
	movw	r3, #26215
	add	r5, r5, r8
	movt	r3, 26214
	add	ip, r5, #19
	smull	r2, r3, r3, ip
	asr	ip, ip, #31
	rsb	ip, ip, r3, asr #3
	ldr	r3, [r4, #8]
	add	ip, ip, ip, lsl #2
	lsl	r1, ip, #2
	cmp	r3, r1
	ldr	r3, [r4]
	blt	.L150
.L144:
	add	r0, r8, r7
	cmp	r0, r9
	bne	.L151
.L145:
	add	r0, r3, r7
	mov	r2, r8
	mov	r1, r6
	bl	memmove(PLT)
	mov	r0, #0
	str	r5, [r4, #4]
.L142:
.L140:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L151:
	ldr	r2, [r4, #4]
	add	r0, r3, r0
	add	r1, r3, r9
	sub	r2, r2, r9
	bl	memmove(PLT)
	ldr	r3, [r4]
	b	.L145
.L150:
	mov	r0, r3
	str	r1, [r4, #8]
	bl	realloc(PLT)
	cmp	r0, #0
	mov	r3, r0
	str	r0, [r4]
	bne	.L144
	ldr	ip, .L152
	mvn	r4, #2
	ldr	r0, .L152+4
	mov	r3, #236
	ldr	r2, .L152+8
	ldr	r1, .L152+12
.LPIC21:
	add	ip, pc, ip
.LPIC22:
	add	r0, pc, r0
.LPIC19:
	add	r2, pc, r2
.LPIC20:
	add	r1, pc, r1
	b	.L148
.L149:
	ldr	ip, .L152+16
	mvn	r4, #256
	ldr	r0, .L152+20
	mov	r3, #225
	ldr	r2, .L152+24
	ldr	r1, .L152+28
.LPIC17:
	add	ip, pc, ip
.LPIC18:
	add	r0, pc, r0
.LPIC15:
	add	r2, pc, r2
.LPIC16:
	add	r1, pc, r1
.L148:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L140
.L153:
	.align	2
.L152:
	.word	.LC4-(.LPIC21+8)
	.word	.LC3-(.LPIC22+8)
	.word	.LC0-(.LPIC19+8)
	.word	.LC1-(.LPIC20+8)
	.word	.LC2-(.LPIC17+8)
	.word	.LC3-(.LPIC18+8)
	.word	.LC0-(.LPIC15+8)
	.word	.LC1-(.LPIC16+8)
	.size	ReplaceSubStr, .-ReplaceSubStr
	.global	szWordDelimns
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
	.type	szWordDelimns, %object
	.size	szWordDelimns, 31
szWordDelimns:
	.ascii	"()\\/!\"$%&=?`\264*+~ \011<>;:,.'#^\260-\000\000"
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
