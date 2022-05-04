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
	.file	"EApiAHStr.c"
	.text
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"EApiAHCreatePNPIDString\000"
	.align	2
.LC1:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux/../../common/EApiAHStr.c\000"
	.align	2
.LC2:
	.ascii	"(pString==NULL)\000"
	.align	2
.LC3:
	.ascii	"%s\012\000"
	.align	2
.LC4:
	.ascii	"pBuffer Too Short\000"
	.text
	.align	2
	.global	EApiAHCreatePNPIDString
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiAHCreatePNPIDString, %function
EApiAHCreatePNPIDString:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	push	{r4, lr}
	sub	sp, sp, #16
	beq	.L10
	cmp	r2, #3
	bls	.L11
	rev16	r0, r0
	tst	r0, #32768
	bne	.L6
	ldr	r3, .L12
	uxth	ip, r0
	and	r0, ip, #31
	ubfx	r2, ip, #5, #5
.LPIC8:
	add	r3, pc, r3
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	strb	r0, [r1, #2]
	mov	r0, #3
	ldrb	r2, [r3, r2]	@ zero_extendqisi2
	strb	r2, [r1, #1]
	mov	r2, #0
	ldrb	r3, [r3, ip, asr #10]	@ zero_extendqisi2
	strb	r2, [r1, #3]
	strb	r3, [r1]
.L1:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L6:
.L3:
.L5:
	mvn	r0, #0
	b	.L1
.L11:
	ldr	ip, .L12+4
	mvn	r4, #0
	ldr	r0, .L12+8
	movw	r3, #411
	ldr	r2, .L12+12
	ldr	r1, .L12+16
.LPIC6:
	add	ip, pc, ip
.LPIC7:
	add	r0, pc, r0
.LPIC4:
	add	r2, pc, r2
.LPIC5:
	add	r1, pc, r1
.L8:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L1
.L10:
	ldr	ip, .L12+20
	mvn	r4, #0
	ldr	r0, .L12+24
	movw	r3, #409
	ldr	r2, .L12+28
	ldr	r1, .L12+32
.LPIC2:
	add	ip, pc, ip
.LPIC3:
	add	r0, pc, r0
.LPIC0:
	add	r2, pc, r2
.LPIC1:
	add	r1, pc, r1
	b	.L8
.L13:
	.align	2
.L12:
	.word	.LANCHOR0-(.LPIC8+8)
	.word	.LC4-(.LPIC6+8)
	.word	.LC3-(.LPIC7+8)
	.word	.LC0-(.LPIC4+8)
	.word	.LC1-(.LPIC5+8)
	.word	.LC2-(.LPIC2+8)
	.word	.LC3-(.LPIC3+8)
	.word	.LC0-(.LPIC0+8)
	.word	.LC1-(.LPIC1+8)
	.size	EApiAHCreatePNPIDString, .-EApiAHCreatePNPIDString
	.align	2
	.global	EApiStrLenA
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiStrLenA, %function
EApiStrLenA:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	cmpne	r1, #0
	beq	.L18
	mov	r3, r0
	add	r1, r0, r1
	b	.L17
.L23:
	cmp	r3, r1
	mov	r2, r3
	beq	.L16
.L17:
	mov	r2, r3
	add	r3, r3, #1
	ldrb	ip, [r2]	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L23
.L16:
	sub	r0, r2, r0
	bx	lr
.L18:
	mov	r0, #0
	bx	lr
	.size	EApiStrLenA, .-EApiStrLenA
	.align	2
	.global	EApiStrCpyA
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiStrCpyA, %function
EApiStrCpyA:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	cmpne	r1, #0
	push	{r4, r5, r6, lr}
	moveq	r6, #1
	movne	r6, #0
	cmp	r0, #0
	orreq	r6, r6, #1
	mov	r4, r0
	cmp	r6, #0
	beq	.L27
	mov	r0, r4
	pop	{r4, r5, r6, pc}
.L27:
	mov	r5, r1
	mov	r1, r2
	mov	r2, r5
	add	r5, r4, r5
	bl	strncpy(PLT)
	mov	r0, r4
	strb	r6, [r5, #-1]
	pop	{r4, r5, r6, pc}
	.size	EApiStrCpyA, .-EApiStrCpyA
	.align	2
	.global	EApiSprintfA
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiSprintfA, %function
EApiSprintfA:
	@ args = 4, pretend = 8, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 1
	push	{r2, r3}
	push	{r4, r5, r6, lr}
	sub	sp, sp, #8
	ldr	r2, [sp, #24]
	ldr	lr, .L34
	ldr	ip, .L34+4
	cmp	r1, #0
	cmpne	r2, #0
.LPIC12:
	add	lr, pc, lr
	moveq	r5, #1
	movne	r5, #0
	ldr	ip, [lr, ip]
	cmp	r0, #0
	orreq	r5, r5, #1
	cmp	r5, #0
	ldr	ip, [ip]
	str	ip, [sp, #4]
	mov	ip, #0
	bne	.L31
	add	r3, sp, #28
	mov	r4, r0
	mov	r6, r1
	str	r3, [sp]
	bl	vsnprintf(PLT)
	add	r3, r4, r6
	strb	r5, [r3, #-1]
.L28:
	ldr	r2, .L34+8
	ldr	r3, .L34+4
.LPIC11:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #4]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L33
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	add	sp, sp, #8
	bx	lr
.L31:
	mvn	r0, #0
	b	.L28
.L33:
	bl	__stack_chk_fail(PLT)
.L35:
	.align	2
.L34:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC12+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC11+8)
	.size	EApiSprintfA, .-EApiSprintfA
	.align	2
	.global	EApiStrLen
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiStrLen, %function
EApiStrLen:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0
	cmpne	r0, #0
	beq	.L40
	mov	r3, r0
	add	r1, r0, r1
	b	.L39
.L45:
	cmp	r3, r1
	mov	r2, r3
	beq	.L38
.L39:
	mov	r2, r3
	add	r3, r3, #1
	ldrb	ip, [r2]	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L45
.L38:
	sub	r0, r2, r0
	bx	lr
.L40:
	mov	r0, #0
	bx	lr
	.size	EApiStrLen, .-EApiStrLen
	.align	2
	.global	EApiStrCpy
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiStrCpy, %function
EApiStrCpy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	cmpne	r1, #0
	push	{r4, r5, r6, lr}
	moveq	r6, #1
	movne	r6, #0
	cmp	r0, #0
	orreq	r6, r6, #1
	mov	r4, r0
	cmp	r6, #0
	beq	.L49
	mov	r0, r4
	pop	{r4, r5, r6, pc}
.L49:
	mov	r5, r1
	mov	r1, r2
	mov	r2, r5
	add	r5, r4, r5
	bl	strncpy(PLT)
	mov	r0, r4
	strb	r6, [r5, #-1]
	pop	{r4, r5, r6, pc}
	.size	EApiStrCpy, .-EApiStrCpy
	.align	2
	.global	EApiSprintf
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiSprintf, %function
EApiSprintf:
	@ args = 4, pretend = 8, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 1
	push	{r2, r3}
	push	{r4, r5, r6, lr}
	sub	sp, sp, #8
	ldr	r2, [sp, #24]
	ldr	lr, .L56
	ldr	ip, .L56+4
	cmp	r1, #0
	cmpne	r2, #0
.LPIC14:
	add	lr, pc, lr
	moveq	r5, #1
	movne	r5, #0
	ldr	ip, [lr, ip]
	cmp	r0, #0
	orreq	r5, r5, #1
	cmp	r5, #0
	ldr	ip, [ip]
	str	ip, [sp, #4]
	mov	ip, #0
	bne	.L53
	add	r3, sp, #28
	mov	r4, r0
	mov	r6, r1
	str	r3, [sp]
	bl	vsnprintf(PLT)
	add	r3, r4, r6
	strb	r5, [r3, #-1]
.L50:
	ldr	r2, .L56+8
	ldr	r3, .L56+4
.LPIC13:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #4]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L55
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	add	sp, sp, #8
	bx	lr
.L53:
	mvn	r0, #0
	b	.L50
.L55:
	bl	__stack_chk_fail(PLT)
.L57:
	.align	2
.L56:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC14+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC13+8)
	.size	EApiSprintf, .-EApiSprintf
	.section	.rodata.str1.4
	.align	2
.LC5:
	.ascii	"EApiAHCreateErrorString\000"
	.align	2
.LC6:
	.ascii	"(StrBufLen==0)\000"
	.align	2
.LC7:
	.ascii	"UNKNOWN ERROR(0x%08X)\000"
	.text
	.align	2
	.global	EApiAHCreateErrorString
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiAHCreateErrorString, %function
EApiAHCreateErrorString:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	subs	r4, r1, #0
	sub	sp, sp, #20
	beq	.L73
	cmp	r2, #0
	mov	r5, r2
	beq	.L74
	mov	r3, r0
	ldr	r0, .L76
	mov	ip, #0
.LPIC23:
	add	r0, pc, r0
	b	.L61
.L62:
	add	ip, ip, #1
	cmp	ip, #19
	beq	.L75
.L61:
	ldr	lr, [r0, ip, lsl #3]
	cmp	lr, r3
	bne	.L62
	add	r0, r0, ip, lsl #3
	ldr	r1, [r0, #4]
	cmp	r1, #0
	beq	.L72
	mov	r2, r5
	mov	r0, r4
	bl	strncpy(PLT)
	add	r5, r4, r5
	mov	r3, #0
	strb	r3, [r5, #-1]
.L72:
	mov	r0, r4
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	b	strlen(PLT)
.L75:
	ldr	r2, .L76+4
	mov	r1, r5
	mov	r0, r4
.LPIC25:
	add	r2, pc, r2
	bl	EApiSprintf(PLT)
	mov	r0, r4
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	b	strlen(PLT)
.L74:
	ldr	ip, .L76+8
	mvn	lr, #0
	ldr	r0, .L76+12
	mov	r3, #80
	ldr	r2, .L76+16
	ldr	r1, .L76+20
.LPIC21:
	add	ip, pc, ip
.LPIC22:
	add	r0, pc, r0
.LPIC19:
	add	r2, pc, r2
.LPIC20:
	add	r1, pc, r1
.L71:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	lr, [sp]
	bl	siFormattedMessage_SC(PLT)
	mvn	r0, #0
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, pc}
.L60:
.L64:
.L73:
	ldr	ip, .L76+24
	mvn	lr, #0
	ldr	r0, .L76+28
	mov	r3, #75
	ldr	r2, .L76+32
	ldr	r1, .L76+36
.LPIC17:
	add	ip, pc, ip
.LPIC18:
	add	r0, pc, r0
.LPIC15:
	add	r2, pc, r2
.LPIC16:
	add	r1, pc, r1
	b	.L71
.L77:
	.align	2
.L76:
	.word	.LANCHOR1-(.LPIC23+8)
	.word	.LC7-(.LPIC25+8)
	.word	.LC6-(.LPIC21+8)
	.word	.LC3-(.LPIC22+8)
	.word	.LC5-(.LPIC19+8)
	.word	.LC1-(.LPIC20+8)
	.word	.LC2-(.LPIC17+8)
	.word	.LC3-(.LPIC18+8)
	.word	.LC5-(.LPIC15+8)
	.word	.LC1-(.LPIC16+8)
	.size	EApiAHCreateErrorString, .-EApiAHCreateErrorString
	.section	.rodata.str1.4
	.align	2
.LC8:
	.ascii	"EApiAHGetString\000"
	.align	2
.LC9:
	.ascii	"EApiAHGetStringAlloc\000"
	.align	2
.LC10:
	.ascii	"Interface Returning Different String Lengths\000"
	.align	2
.LC11:
	.ascii	"Returned String Missing Terminating \\0 Character.\000"
	.text
	.align	2
	.global	EApiAHGetString
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiAHGetString, %function
EApiAHGetString:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r2
	ldr	r2, .L100
	subs	r5, r1, #0
	sub	sp, sp, #24
	ldr	r3, .L100+4
.LPIC43:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #20]
	mov	r3, #0
	str	r4, [sp, #16]
	beq	.L95
	cmp	r4, #0
	beq	.L96
	add	r2, sp, #16
	bl	EApiBoardGetStringA(PLT)
	cmp	r0, #0
	bne	.L82
	ldr	r0, [sp, #16]
.L83:
	cmp	r4, r0
	bcc	.L84
	sub	r6, r4, #1
	mov	r3, r5
	add	r2, r4, r5
	b	.L85
.L97:
	cmp	r3, r2
	mov	ip, r3
	beq	.L86
.L85:
	mov	ip, r3
	add	r3, r3, #1
	ldrb	lr, [ip]	@ zero_extendqisi2
	cmp	lr, #0
	bne	.L97
.L86:
	sub	ip, ip, r5
	cmp	r4, ip
	beq	.L98
.L78:
	ldr	r2, .L100+8
	ldr	r3, .L100+4
.LPIC42:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #20]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L99
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, pc}
.L82:
	mov	r2, r4
	mov	r1, r5
	bl	EApiAHCreateErrorString(PLT)
	str	r0, [sp, #16]
	b	.L83
.L96:
	ldr	ip, .L100+12
	mvn	r4, #0
	ldr	r0, .L100+16
	mov	r3, #158
	ldr	r2, .L100+20
	ldr	r1, .L100+24
.LPIC32:
	add	ip, pc, ip
.LPIC33:
	add	r0, pc, r0
.LPIC30:
	add	r2, pc, r2
.LPIC31:
	add	r1, pc, r1
.L94:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L78
.L98:
.L80:
	ldr	r1, .L100+28
	mvn	r3, #0
	ldr	r2, .L100+32
	mov	r0, #69
	str	r3, [sp]
	mov	r3, #172
.LPIC40:
	add	r1, pc, r1
.LPIC41:
	add	r2, pc, r2
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r1, .L100+36
	ldr	r2, .L100+40
.LPIC39:
	add	r1, pc, r1
.LPIC38:
	add	r2, pc, r2
	bl	siFormattedMessage_SC(PLT)
	mov	r3, #0
	ldr	r0, [sp, #16]
	strb	r3, [r5, r6]
	b	.L78
.L84:
	ldr	ip, .L100+44
	mvn	r4, #0
	ldr	r0, .L100+48
	mov	r3, #164
	ldr	r2, .L100+52
	ldr	r1, .L100+56
.LPIC36:
	add	ip, pc, ip
.LPIC37:
	add	r0, pc, r0
.LPIC34:
	add	r2, pc, r2
.LPIC35:
	add	r1, pc, r1
	b	.L94
.L95:
	ldr	ip, .L100+60
	mvn	r4, #0
	ldr	r0, .L100+64
	mov	r3, #157
	ldr	r2, .L100+68
	ldr	r1, .L100+72
.LPIC28:
	add	ip, pc, ip
.LPIC29:
	add	r0, pc, r0
.LPIC26:
	add	r2, pc, r2
.LPIC27:
	add	r1, pc, r1
	b	.L94
.L99:
	bl	__stack_chk_fail(PLT)
.L101:
	.align	2
.L100:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC43+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC42+8)
	.word	.LC6-(.LPIC32+8)
	.word	.LC3-(.LPIC33+8)
	.word	.LC8-(.LPIC30+8)
	.word	.LC1-(.LPIC31+8)
	.word	.LC11-(.LPIC40+8)
	.word	.LC3-(.LPIC41+8)
	.word	.LC1-(.LPIC39+8)
	.word	.LC8-(.LPIC38+8)
	.word	.LC10-(.LPIC36+8)
	.word	.LC3-(.LPIC37+8)
	.word	.LC9-(.LPIC34+8)
	.word	.LC1-(.LPIC35+8)
	.word	.LC2-(.LPIC28+8)
	.word	.LC3-(.LPIC29+8)
	.word	.LC8-(.LPIC26+8)
	.word	.LC1-(.LPIC27+8)
	.size	EApiAHGetString, .-EApiAHGetString
	.section	.rodata.str1.4
	.align	2
.LC12:
	.ascii	"EApiAHCreateErrorStringAlloc\000"
	.text
	.align	2
	.global	EApiAHCreateErrorStringAlloc
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiAHCreateErrorStringAlloc, %function
EApiAHCreateErrorStringAlloc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	subs	r5, r1, #0
	sub	sp, sp, #16
	beq	.L116
	ldr	r3, .L118
	mov	r4, r0
	mov	r2, #0
.LPIC48:
	add	r3, pc, r3
	b	.L103
.L105:
	add	r2, r2, #1
	cmp	r2, #19
	beq	.L117
.L103:
	ldr	ip, [r3, r2, lsl #3]
	cmp	ip, r4
	bne	.L105
	add	r3, r3, r2, lsl #3
	ldr	r7, [r3, #4]
	mov	r0, r7
	bl	strlen(PLT)
	add	r8, r0, #1
	mov	r6, r0
	mov	r0, r8
	bl	malloc(PLT)
	cmp	r0, #0
	mov	r4, r0
	str	r0, [r5]
	beq	.L115
	mov	r2, r8
	mov	r1, r7
	bl	strncpy(PLT)
	mov	r3, #0
	mov	r0, r3
	strb	r3, [r4, r6]
.L102:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L117:
	mov	r0, #26
	bl	malloc(PLT)
	cmp	r0, #0
	str	r0, [r5]
	beq	.L115
	ldr	r2, .L118+4
	mov	r3, r4
	mov	r1, #26
.LPIC50:
	add	r2, pc, r2
	bl	EApiSprintf(PLT)
.L115:
.L104:
.L108:
	mov	r0, #0
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L116:
	ldr	ip, .L118+8
	mvn	r4, #256
	ldr	r0, .L118+12
	mov	r3, #122
	ldr	r2, .L118+16
	ldr	r1, .L118+20
.LPIC46:
	add	ip, pc, ip
.LPIC47:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC44:
	add	r2, pc, r2
.LPIC45:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L102
.L119:
	.align	2
.L118:
	.word	.LANCHOR1-(.LPIC48+8)
	.word	.LC7-(.LPIC50+8)
	.word	.LC2-(.LPIC46+8)
	.word	.LC3-(.LPIC47+8)
	.word	.LC12-(.LPIC44+8)
	.word	.LC1-(.LPIC45+8)
	.size	EApiAHCreateErrorStringAlloc, .-EApiAHCreateErrorStringAlloc
	.section	.rodata.str1.4
	.align	2
.LC13:
	.ascii	"Memory Allocation Error\000"
	.text
	.align	2
	.global	EApiAHGetStringAlloc
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiAHGetStringAlloc, %function
EApiAHGetStringAlloc:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L143
	ldr	r3, .L143+4
	push	{r4, r5, r6, r7, r8, r9, lr}
	subs	r5, r1, #0
.LPIC68:
	add	r2, pc, r2
	sub	sp, sp, #28
	mov	r4, #0
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #20]
	mov	r3, #0
	str	r4, [sp, #16]
	beq	.L137
	add	r8, sp, #16
	mov	r1, r4
	mov	r2, r8
	str	r4, [r5]
	mov	r9, r0
	bl	EApiBoardGetStringA(PLT)
	mvn	r3, #1536
	mov	r6, r0
	cmp	r0, r3
	beq	.L138
	mov	r1, r5
	bl	EApiAHCreateErrorStringAlloc(PLT)
.L122:
.L120:
	ldr	r2, .L143+8
	ldr	r3, .L143+4
.LPIC67:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #20]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L139
	mov	r0, r6
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L138:
	ldr	r7, [sp, #16]
	mov	r0, r7
	bl	malloc(PLT)
	cmp	r0, #0
	mov	r1, r0
	str	r0, [r5]
	beq	.L140
	mov	r2, r8
	mov	r0, r9
	bl	EApiBoardGetStringA(PLT)
	ldr	r3, [sp, #16]
	mov	r6, r0
	cmp	r3, r7
	bhi	.L141
	ldr	r0, [r5]
	cmp	r0, #0
	cmpne	r7, #0
	beq	.L126
	mov	r3, r0
	add	r1, r0, r7
	b	.L128
.L142:
	cmp	r3, r1
	mov	r4, r3
	beq	.L127
.L128:
	mov	r4, r3
	add	r3, r3, #1
	ldrb	r2, [r4]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L142
.L127:
	sub	r4, r4, r0
.L126:
	cmp	r7, r4
	bne	.L120
	ldr	r2, .L143+12
	mvn	r1, #3840
	ldr	r3, .L143+16
	mov	r0, #69
	str	r1, [sp]
.LPIC65:
	add	r2, pc, r2
	ldr	r1, .L143+20
	str	r2, [sp, #8]
.LPIC66:
	add	r3, pc, r3
	ldr	r2, .L143+24
	str	r3, [sp, #4]
.LPIC64:
	add	r1, pc, r1
	mov	r3, #222
.LPIC63:
	add	r2, pc, r2
	bl	siFormattedMessage_SC(PLT)
	ldr	r3, [r5]
	mov	r2, #0
	add	r3, r3, r7
	strb	r2, [r3, #-1]
	b	.L120
.L137:
	ldr	ip, .L143+28
	mvn	r6, #256
	ldr	r0, .L143+32
	mov	r3, #197
	ldr	r2, .L143+36
	ldr	r1, .L143+40
.LPIC53:
	add	ip, pc, ip
.LPIC54:
	add	r0, pc, r0
.LPIC51:
	add	r2, pc, r2
.LPIC52:
	add	r1, pc, r1
.L136:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r6, [sp]
	bl	siFormattedMessage_SC(PLT)
	b	.L120
.L141:
	ldr	ip, .L143+44
	mvn	r6, #3840
	ldr	r0, .L143+48
	mov	r3, #214
	ldr	r2, .L143+52
	ldr	r1, .L143+56
.LPIC61:
	add	ip, pc, ip
.LPIC62:
	add	r0, pc, r0
.LPIC59:
	add	r2, pc, r2
.LPIC60:
	add	r1, pc, r1
	b	.L136
.L139:
	bl	__stack_chk_fail(PLT)
.L140:
	ldr	ip, .L143+60
	mvn	r6, #2
	ldr	r0, .L143+64
	mov	r3, #205
	ldr	r2, .L143+68
	ldr	r1, .L143+72
.LPIC57:
	add	ip, pc, ip
.LPIC58:
	add	r0, pc, r0
.LPIC55:
	add	r2, pc, r2
.LPIC56:
	add	r1, pc, r1
	b	.L136
.L144:
	.align	2
.L143:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC68+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC67+8)
	.word	.LC11-(.LPIC65+8)
	.word	.LC3-(.LPIC66+8)
	.word	.LC1-(.LPIC64+8)
	.word	.LC9-(.LPIC63+8)
	.word	.LC2-(.LPIC53+8)
	.word	.LC3-(.LPIC54+8)
	.word	.LC8-(.LPIC51+8)
	.word	.LC1-(.LPIC52+8)
	.word	.LC10-(.LPIC61+8)
	.word	.LC3-(.LPIC62+8)
	.word	.LC9-(.LPIC59+8)
	.word	.LC1-(.LPIC60+8)
	.word	.LC13-(.LPIC57+8)
	.word	.LC3-(.LPIC58+8)
	.word	.LC9-(.LPIC55+8)
	.word	.LC1-(.LPIC56+8)
	.size	EApiAHGetStringAlloc, .-EApiAHGetStringAlloc
	.section	.rodata.str1.4
	.align	2
.LC14:
	.ascii	"EApiAHCreateDecimalString\000"
	.align	2
.LC15:
	.ascii	"%u\000"
	.text
	.align	2
	.global	EApiAHCreateDecimalString
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiAHCreateDecimalString, %function
EApiAHCreateDecimalString:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	ip, r1, #0
	str	lr, [sp, #-4]!
	sub	sp, sp, #20
	beq	.L151
	cmp	r2, #0
	mov	r1, r2
	beq	.L152
	ldr	r2, .L153
	mov	r3, r0
	mov	r0, ip
.LPIC77:
	add	r2, pc, r2
	add	sp, sp, #20
	@ sp needed
	ldr	lr, [sp], #4
	b	EApiSprintf(PLT)
.L152:
	ldr	ip, .L153+4
	mvn	lr, #0
	ldr	r0, .L153+8
	mov	r3, #248
	ldr	r2, .L153+12
	ldr	r1, .L153+16
.LPIC75:
	add	ip, pc, ip
.LPIC76:
	add	r0, pc, r0
.LPIC73:
	add	r2, pc, r2
.LPIC74:
	add	r1, pc, r1
.L150:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	lr, [sp]
	bl	siFormattedMessage_SC(PLT)
	mvn	r0, #0
	add	sp, sp, #20
	@ sp needed
	ldr	pc, [sp], #4
.L147:
.L151:
	ldr	ip, .L153+20
	mvn	lr, #0
	ldr	r0, .L153+24
	mov	r3, #247
	ldr	r2, .L153+28
	ldr	r1, .L153+32
.LPIC71:
	add	ip, pc, ip
.LPIC72:
	add	r0, pc, r0
.LPIC69:
	add	r2, pc, r2
.LPIC70:
	add	r1, pc, r1
	b	.L150
.L154:
	.align	2
.L153:
	.word	.LC15-(.LPIC77+8)
	.word	.LC6-(.LPIC75+8)
	.word	.LC3-(.LPIC76+8)
	.word	.LC14-(.LPIC73+8)
	.word	.LC1-(.LPIC74+8)
	.word	.LC2-(.LPIC71+8)
	.word	.LC3-(.LPIC72+8)
	.word	.LC14-(.LPIC69+8)
	.word	.LC1-(.LPIC70+8)
	.size	EApiAHCreateDecimalString, .-EApiAHCreateDecimalString
	.section	.rodata.str1.4
	.align	2
.LC16:
	.ascii	"0x%08X\000"
	.text
	.align	2
	.global	EApiAHCreateHexString
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiAHCreateHexString, %function
EApiAHCreateHexString:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	ip, r1, #0
	str	lr, [sp, #-4]!
	sub	sp, sp, #20
	beq	.L161
	cmp	r2, #0
	mov	r1, r2
	beq	.L162
	ldr	r2, .L163
	mov	r3, r0
	mov	r0, ip
.LPIC86:
	add	r2, pc, r2
	add	sp, sp, #20
	@ sp needed
	ldr	lr, [sp], #4
	b	EApiSprintf(PLT)
.L162:
	ldr	ip, .L163+4
	mvn	lr, #0
	ldr	r0, .L163+8
	movw	r3, #263
	ldr	r2, .L163+12
	ldr	r1, .L163+16
.LPIC84:
	add	ip, pc, ip
.LPIC85:
	add	r0, pc, r0
.LPIC82:
	add	r2, pc, r2
.LPIC83:
	add	r1, pc, r1
.L160:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	lr, [sp]
	bl	siFormattedMessage_SC(PLT)
	mvn	r0, #0
	add	sp, sp, #20
	@ sp needed
	ldr	pc, [sp], #4
.L157:
.L161:
	ldr	ip, .L163+20
	mvn	lr, #0
	ldr	r0, .L163+24
	movw	r3, #262
	ldr	r2, .L163+28
	ldr	r1, .L163+32
.LPIC80:
	add	ip, pc, ip
.LPIC81:
	add	r0, pc, r0
.LPIC78:
	add	r2, pc, r2
.LPIC79:
	add	r1, pc, r1
	b	.L160
.L164:
	.align	2
.L163:
	.word	.LC16-(.LPIC86+8)
	.word	.LC6-(.LPIC84+8)
	.word	.LC3-(.LPIC85+8)
	.word	.LC14-(.LPIC82+8)
	.word	.LC1-(.LPIC83+8)
	.word	.LC2-(.LPIC80+8)
	.word	.LC3-(.LPIC81+8)
	.word	.LC14-(.LPIC78+8)
	.word	.LC1-(.LPIC79+8)
	.size	EApiAHCreateHexString, .-EApiAHCreateHexString
	.section	.rodata.str1.4
	.align	2
.LC17:
	.ascii	"%u.%02u Volts\000"
	.text
	.align	2
	.global	EApiAHCreateVoltageString
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiAHCreateVoltageString, %function
EApiAHCreateVoltageString:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	subs	lr, r1, #0
	sub	sp, sp, #16
	beq	.L171
	cmp	r2, #0
	mov	r1, r2
	beq	.L172
	movw	r2, #52429
	movw	r3, #34079
	movt	r2, 52428
	movt	r3, 20971
	umull	r2, ip, r2, r0
	mov	r0, lr
	lsr	r2, ip, #3
	umull	ip, r3, r3, r2
	mov	ip, #100
	lsr	r3, r3, #5
	mls	ip, ip, r3, r2
	ldr	r2, .L173
.LPIC95:
	add	r2, pc, r2
	str	ip, [sp]
	bl	EApiSprintf(PLT)
.L167:
.L165:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L172:
	ldr	ip, .L173+4
	mvn	r4, #0
	ldr	r0, .L173+8
	movw	r3, #278
	ldr	r2, .L173+12
	ldr	r1, .L173+16
.LPIC93:
	add	ip, pc, ip
.LPIC94:
	add	r0, pc, r0
.LPIC91:
	add	r2, pc, r2
.LPIC92:
	add	r1, pc, r1
.L170:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L165
.L171:
	ldr	ip, .L173+20
	mvn	r4, #0
	ldr	r0, .L173+24
	movw	r3, #277
	ldr	r2, .L173+28
	ldr	r1, .L173+32
.LPIC89:
	add	ip, pc, ip
.LPIC90:
	add	r0, pc, r0
.LPIC87:
	add	r2, pc, r2
.LPIC88:
	add	r1, pc, r1
	b	.L170
.L174:
	.align	2
.L173:
	.word	.LC17-(.LPIC95+8)
	.word	.LC6-(.LPIC93+8)
	.word	.LC3-(.LPIC94+8)
	.word	.LC14-(.LPIC91+8)
	.word	.LC1-(.LPIC92+8)
	.word	.LC2-(.LPIC89+8)
	.word	.LC3-(.LPIC90+8)
	.word	.LC14-(.LPIC87+8)
	.word	.LC1-(.LPIC88+8)
	.size	EApiAHCreateVoltageString, .-EApiAHCreateVoltageString
	.section	.rodata.str1.4
	.align	2
.LC18:
	.ascii	"%u RPM\000"
	.text
	.align	2
	.global	EApiAHCreateRotationsString
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiAHCreateRotationsString, %function
EApiAHCreateRotationsString:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	ip, r1, #0
	str	lr, [sp, #-4]!
	sub	sp, sp, #20
	beq	.L181
	cmp	r2, #0
	mov	r1, r2
	beq	.L182
	ldr	r2, .L183
	mov	r3, r0
	mov	r0, ip
.LPIC104:
	add	r2, pc, r2
	add	sp, sp, #20
	@ sp needed
	ldr	lr, [sp], #4
	b	EApiSprintf(PLT)
.L182:
	ldr	ip, .L183+4
	mvn	lr, #0
	ldr	r0, .L183+8
	movw	r3, #295
	ldr	r2, .L183+12
	ldr	r1, .L183+16
.LPIC102:
	add	ip, pc, ip
.LPIC103:
	add	r0, pc, r0
.LPIC100:
	add	r2, pc, r2
.LPIC101:
	add	r1, pc, r1
.L180:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	lr, [sp]
	bl	siFormattedMessage_SC(PLT)
	mvn	r0, #0
	add	sp, sp, #20
	@ sp needed
	ldr	pc, [sp], #4
.L177:
.L181:
	ldr	ip, .L183+20
	mvn	lr, #0
	ldr	r0, .L183+24
	movw	r3, #294
	ldr	r2, .L183+28
	ldr	r1, .L183+32
.LPIC98:
	add	ip, pc, ip
.LPIC99:
	add	r0, pc, r0
.LPIC96:
	add	r2, pc, r2
.LPIC97:
	add	r1, pc, r1
	b	.L180
.L184:
	.align	2
.L183:
	.word	.LC18-(.LPIC104+8)
	.word	.LC6-(.LPIC102+8)
	.word	.LC3-(.LPIC103+8)
	.word	.LC14-(.LPIC100+8)
	.word	.LC1-(.LPIC101+8)
	.word	.LC2-(.LPIC98+8)
	.word	.LC3-(.LPIC99+8)
	.word	.LC14-(.LPIC96+8)
	.word	.LC1-(.LPIC97+8)
	.size	EApiAHCreateRotationsString, .-EApiAHCreateRotationsString
	.section	.rodata.str1.4
	.align	2
.LC19:
	.ascii	"% i.%i Celcius\000"
	.text
	.align	2
	.global	EApiAHCreateTempString
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiAHCreateTempString, %function
EApiAHCreateTempString:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	subs	lr, r1, #0
	sub	sp, sp, #16
	beq	.L191
	cmp	r2, #0
	mov	r1, r2
	beq	.L192
	sub	ip, r0, #2720
	mov	r0, lr
	movw	lr, #52429
	sub	ip, ip, #11
	movt	lr, 52428
	movw	r3, #26215
	umull	r4, lr, lr, ip
	movt	r3, 26214
	smull	r2, r3, r3, ip
	asr	r2, ip, #31
	lsr	lr, lr, #3
	add	lr, lr, lr, lsl #2
	rsb	r3, r2, r3, asr #2
	ldr	r2, .L193
	sub	ip, ip, lr, lsl #1
.LPIC113:
	add	r2, pc, r2
	str	ip, [sp]
	bl	EApiSprintf(PLT)
.L187:
.L185:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L192:
	ldr	ip, .L193+4
	mvn	r4, #0
	ldr	r0, .L193+8
	movw	r3, #311
	ldr	r2, .L193+12
	ldr	r1, .L193+16
.LPIC111:
	add	ip, pc, ip
.LPIC112:
	add	r0, pc, r0
.LPIC109:
	add	r2, pc, r2
.LPIC110:
	add	r1, pc, r1
.L190:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L185
.L191:
	ldr	ip, .L193+20
	mvn	r4, #0
	ldr	r0, .L193+24
	movw	r3, #310
	ldr	r2, .L193+28
	ldr	r1, .L193+32
.LPIC107:
	add	ip, pc, ip
.LPIC108:
	add	r0, pc, r0
.LPIC105:
	add	r2, pc, r2
.LPIC106:
	add	r1, pc, r1
	b	.L190
.L194:
	.align	2
.L193:
	.word	.LC19-(.LPIC113+8)
	.word	.LC6-(.LPIC111+8)
	.word	.LC3-(.LPIC112+8)
	.word	.LC14-(.LPIC109+8)
	.word	.LC1-(.LPIC110+8)
	.word	.LC2-(.LPIC107+8)
	.word	.LC3-(.LPIC108+8)
	.word	.LC14-(.LPIC105+8)
	.word	.LC1-(.LPIC106+8)
	.size	EApiAHCreateTempString, .-EApiAHCreateTempString
	.section	.rodata.str1.4
	.align	2
.LC20:
	.ascii	"EApiAHCreateTimeString\000"
	.align	2
.LC21:
	.ascii	"%u Years \000"
	.align	2
.LC22:
	.ascii	"%u Days \000"
	.align	2
.LC23:
	.ascii	"%u Hours \000"
	.align	2
.LC24:
	.ascii	"%u Mins\000"
	.text
	.align	2
	.global	EApiAHCreateTimeString
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiAHCreateTimeString, %function
EApiAHCreateTimeString:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	subs	r6, r1, #0
	sub	sp, sp, #16
	beq	.L215
	cmp	r2, #0
	mov	r7, r2
	beq	.L216
	lsr	r3, r0, #5
	movw	r2, #23302
	movt	r2, 1456
	umull	r2, r3, r2, r3
	movw	r4, #62305
	movt	r4, 26393
	mov	r5, r0
	umull	r2, r4, r4, r3
	mov	r2, #1312
	movt	r2, 8
	cmp	r0, r2
	movw	r2, #365
	sub	r1, r3, r4
	add	r4, r4, r1, lsr #1
	lsr	r4, r4, #8
	mls	r4, r2, r4, r3
	bcs	.L217
.L199:
	cmp	r4, #0
	beq	.L201
	mov	r1, r7
	mov	r0, r6
	mov	r8, #0
.L200:
	ldr	r2, .L218
	mov	r3, r4
.LPIC123:
	add	r2, pc, r2
	bl	EApiSprintf(PLT)
	adds	r8, r8, r0
	beq	.L201
	movw	r2, #34953
	add	r0, r6, r8
	movt	r2, 34952
	umull	r3, r2, r2, r5
	movw	r3, #43691
	movt	r3, 43690
	lsr	r2, r2, #5
	umull	r1, r3, r3, r2
	sub	r1, r7, r8
	lsr	r3, r3, #4
	add	r3, r3, r3, lsl #1
	sub	r3, r2, r3, lsl #3
.L202:
	ldr	r2, .L218+4
.LPIC124:
	add	r2, pc, r2
	bl	EApiSprintf(PLT)
	movw	r3, #34953
	add	r8, r0, r8
	movt	r3, 34952
	sub	r1, r7, r8
	umull	r2, r3, r3, r5
	ldr	r2, .L218+8
	add	r0, r6, r8
.LPIC125:
	add	r2, pc, r2
	lsr	r3, r3, #5
	rsb	r3, r3, r3, lsl #4
	sub	r3, r5, r3, lsl #2
	bl	EApiSprintf(PLT)
	add	r0, r8, r0
.L195:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L201:
.L197:
	movw	r2, #34953
	movw	r3, #43691
	movt	r2, 34952
	movt	r3, 43690
	umull	r1, r2, r2, r5
	lsr	r2, r2, #5
	umull	r1, r3, r3, r2
	lsr	r3, r3, #4
	add	r3, r3, r3, lsl #1
	subs	r3, r2, r3, lsl #3
	moveq	r0, r3
	beq	.L195
	mov	r1, r7
	mov	r0, r6
	mov	r8, #0
	b	.L202
.L217:
	movw	r3, #26829
	mov	r1, r7
	movt	r3, 65372
	umull	r2, r3, r3, r0
	ldr	r2, .L218+12
	mov	r0, r6
.LPIC122:
	add	r2, pc, r2
	lsr	r3, r3, #19
	bl	EApiSprintf(PLT)
	subs	r8, r0, #0
	addne	r0, r6, r8
	subne	r1, r7, r8
	bne	.L200
	b	.L199
.L216:
	ldr	ip, .L218+16
	mvn	r4, #0
	ldr	r0, .L218+20
	movw	r3, #329
	ldr	r2, .L218+24
	ldr	r1, .L218+28
.LPIC120:
	add	ip, pc, ip
.LPIC121:
	add	r0, pc, r0
.LPIC118:
	add	r2, pc, r2
.LPIC119:
	add	r1, pc, r1
.L214:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L195
.L215:
	ldr	ip, .L218+32
	mvn	r4, #0
	ldr	r0, .L218+36
	mov	r3, #328
	ldr	r2, .L218+40
	ldr	r1, .L218+44
.LPIC116:
	add	ip, pc, ip
.LPIC117:
	add	r0, pc, r0
.LPIC114:
	add	r2, pc, r2
.LPIC115:
	add	r1, pc, r1
	b	.L214
.L219:
	.align	2
.L218:
	.word	.LC22-(.LPIC123+8)
	.word	.LC23-(.LPIC124+8)
	.word	.LC24-(.LPIC125+8)
	.word	.LC21-(.LPIC122+8)
	.word	.LC6-(.LPIC120+8)
	.word	.LC3-(.LPIC121+8)
	.word	.LC20-(.LPIC118+8)
	.word	.LC1-(.LPIC119+8)
	.word	.LC2-(.LPIC116+8)
	.word	.LC3-(.LPIC117+8)
	.word	.LC20-(.LPIC114+8)
	.word	.LC1-(.LPIC115+8)
	.size	EApiAHCreateTimeString, .-EApiAHCreateTimeString
	.section	.rodata.str1.4
	.align	2
.LC25:
	.ascii	"EApiAHCreateSVersionString\000"
	.align	2
.LC26:
	.ascii	"%u.%u\000"
	.text
	.align	2
	.global	EApiAHCreateSVersionString
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiAHCreateSVersionString, %function
EApiAHCreateSVersionString:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	ip, r1, #0
	push	{r4, lr}
	sub	sp, sp, #16
	beq	.L226
	cmp	r2, #0
	mov	r1, r2
	beq	.L227
	ldr	r2, .L228
	ubfx	lr, r0, #16, #8
	lsr	r3, r0, #24
	str	lr, [sp]
	mov	r0, ip
.LPIC134:
	add	r2, pc, r2
	bl	EApiSprintf(PLT)
.L222:
.L220:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L227:
	ldr	ip, .L228+4
	mvn	r4, #0
	ldr	r0, .L228+8
	movw	r3, #357
	ldr	r2, .L228+12
	ldr	r1, .L228+16
.LPIC132:
	add	ip, pc, ip
.LPIC133:
	add	r0, pc, r0
.LPIC130:
	add	r2, pc, r2
.LPIC131:
	add	r1, pc, r1
.L225:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L220
.L226:
	ldr	ip, .L228+20
	mvn	r4, #0
	ldr	r0, .L228+24
	mov	r3, #356
	ldr	r2, .L228+28
	ldr	r1, .L228+32
.LPIC128:
	add	ip, pc, ip
.LPIC129:
	add	r0, pc, r0
.LPIC126:
	add	r2, pc, r2
.LPIC127:
	add	r1, pc, r1
	b	.L225
.L229:
	.align	2
.L228:
	.word	.LC26-(.LPIC134+8)
	.word	.LC6-(.LPIC132+8)
	.word	.LC3-(.LPIC133+8)
	.word	.LC25-(.LPIC130+8)
	.word	.LC1-(.LPIC131+8)
	.word	.LC2-(.LPIC128+8)
	.word	.LC3-(.LPIC129+8)
	.word	.LC25-(.LPIC126+8)
	.word	.LC1-(.LPIC127+8)
	.size	EApiAHCreateSVersionString, .-EApiAHCreateSVersionString
	.section	.rodata.str1.4
	.align	2
.LC27:
	.ascii	"EApiAHCreateVersionString\000"
	.align	2
.LC28:
	.ascii	"%u.%u.%u\000"
	.text
	.align	2
	.global	EApiAHCreateVersionString
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiAHCreateVersionString, %function
EApiAHCreateVersionString:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, r0
	subs	r0, r1, #0
	push	{r4, lr}
	sub	sp, sp, #16
	beq	.L236
	cmp	r2, #0
	mov	r1, r2
	beq	.L237
	uxth	ip, r3
	ubfx	r2, r3, #16, #8
	lsr	r3, r3, #24
	stm	sp, {r2, ip}
	ldr	r2, .L238
.LPIC143:
	add	r2, pc, r2
	bl	EApiSprintf(PLT)
.L232:
.L230:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L237:
	ldr	ip, .L238+4
	mvn	r4, #0
	ldr	r0, .L238+8
	movw	r3, #374
	ldr	r2, .L238+12
	ldr	r1, .L238+16
.LPIC141:
	add	ip, pc, ip
.LPIC142:
	add	r0, pc, r0
.LPIC139:
	add	r2, pc, r2
.LPIC140:
	add	r1, pc, r1
.L235:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L230
.L236:
	ldr	ip, .L238+20
	mvn	r4, #0
	ldr	r0, .L238+24
	movw	r3, #373
	ldr	r2, .L238+28
	ldr	r1, .L238+32
.LPIC137:
	add	ip, pc, ip
.LPIC138:
	add	r0, pc, r0
.LPIC135:
	add	r2, pc, r2
.LPIC136:
	add	r1, pc, r1
	b	.L235
.L239:
	.align	2
.L238:
	.word	.LC28-(.LPIC143+8)
	.word	.LC6-(.LPIC141+8)
	.word	.LC3-(.LPIC142+8)
	.word	.LC27-(.LPIC139+8)
	.word	.LC1-(.LPIC140+8)
	.word	.LC2-(.LPIC137+8)
	.word	.LC3-(.LPIC138+8)
	.word	.LC27-(.LPIC135+8)
	.word	.LC1-(.LPIC136+8)
	.size	EApiAHCreateVersionString, .-EApiAHCreateVersionString
	.global	CompressedAsciiLookup
	.global	ErrorLookup
	.section	.rodata.str1.4
	.align	2
.LC29:
	.ascii	"EAPI_STATUS_NOT_INITIALIZED\000"
	.align	2
.LC30:
	.ascii	"EAPI_STATUS_INITIALIZED\000"
	.align	2
.LC31:
	.ascii	"EAPI_STATUS_ALLOC_ERROR\000"
	.align	2
.LC32:
	.ascii	"EAPI_STATUS_DRIVER_TIMEOUT\000"
	.align	2
.LC33:
	.ascii	"EAPI_STATUS_INVALID_PARAMETER\000"
	.align	2
.LC34:
	.ascii	"EAPI_STATUS_INVALID_BLOCK_ALIGNMENT\000"
	.align	2
.LC35:
	.ascii	"EAPI_STATUS_INVALID_BLOCK_LENGTH\000"
	.align	2
.LC36:
	.ascii	"EAPI_STATUS_INVALID_DIRECTION\000"
	.align	2
.LC37:
	.ascii	"EAPI_STATUS_INVALID_BITMASK\000"
	.align	2
.LC38:
	.ascii	"EAPI_STATUS_RUNNING\000"
	.align	2
.LC39:
	.ascii	"EAPI_STATUS_UNSUPPORTED\000"
	.align	2
.LC40:
	.ascii	"EAPI_STATUS_NOT_FOUND\000"
	.align	2
.LC41:
	.ascii	"EAPI_STATUS_TIMEOUT\000"
	.align	2
.LC42:
	.ascii	"EAPI_STATUS_BUSY_COLLISION\000"
	.align	2
.LC43:
	.ascii	"EAPI_STATUS_READ_ERROR\000"
	.align	2
.LC44:
	.ascii	"EAPI_STATUS_WRITE_ERROR\000"
	.align	2
.LC45:
	.ascii	"EAPI_STATUS_MORE_DATA\000"
	.align	2
.LC46:
	.ascii	"EAPI_STATUS_ERROR\000"
	.align	2
.LC47:
	.ascii	"EAPI_STATUS_SUCCESS\000"
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	CompressedAsciiLookup, %object
	.size	CompressedAsciiLookup, 32
CompressedAsciiLookup:
	.ascii	" ABCDEFGHIJKLMNOPQRSTUVWXYZ*****"
	.section	.data.rel.ro.local,"aw"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	ErrorLookup, %object
	.size	ErrorLookup, 152
ErrorLookup:
	.word	-1
	.word	.LC29
	.word	-2
	.word	.LC30
	.word	-3
	.word	.LC31
	.word	-4
	.word	.LC32
	.word	-257
	.word	.LC33
	.word	-258
	.word	.LC34
	.word	-259
	.word	.LC35
	.word	-260
	.word	.LC36
	.word	-261
	.word	.LC37
	.word	-262
	.word	.LC38
	.word	-769
	.word	.LC39
	.word	-1025
	.word	.LC40
	.word	-1026
	.word	.LC41
	.word	-1027
	.word	.LC42
	.word	-1281
	.word	.LC43
	.word	-1282
	.word	.LC44
	.word	-1537
	.word	.LC45
	.word	-3841
	.word	.LC46
	.word	0
	.word	.LC47
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
