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
	.file	"TokenFunc.c"
	.text
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"\000"
	.text
	.align	2
	.global	GetTokenFlags
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	GetTokenFlags, %function
GetTokenFlags:
	@ args = 12, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #20
	str	r3, [sp, #12]
	mov	r7, r0
	mov	r9, r1
	mov	r10, r2
	ldr	r3, [sp, #60]
	ldr	fp, [sp, #56]
	ldr	r8, [sp, #64]
	ldr	r5, [r3]
	ldr	r4, [r3, #4]
	cmp	r5, #0
	beq	.L2
	sub	r5, r5, #1
	add	r4, r4, #44
	mov	r6, #0
	b	.L5
.L20:
	add	r0, r7, r6
	sub	r1, r1, r6
	ldr	r2, [sp, #12]
	mov	r3, ip
	bl	EApiSprintfA(PLT)
	add	r6, r6, r0
.L3:
	sub	r5, r5, #1
	add	r4, r4, #8
	cmn	r5, #1
	beq	.L19
.L5:
	ldr	r3, [r4, #-40]
	pld	[r4]
	tst	r8, r3
	beq	.L3
	cmp	r6, #0
	ldr	ip, [r4, #-44]
	ldr	r1, [r9]
	mov	r3, fp
	mov	r2, r10
	mov	r0, r7
	bne	.L20
	sub	r5, r5, #1
	str	ip, [sp]
	bl	EApiSprintfA(PLT)
	cmn	r5, #1
	mov	r6, r0
	add	r4, r4, #8
	bne	.L5
.L19:
	cmp	r6, #0
	beq	.L2
	mov	r0, #0
	str	r6, [r9]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L2:
	ldr	r1, .L21
	mov	r3, fp
	mov	r2, r10
	mov	r0, r7
.LPIC0:
	add	r1, pc, r1
	str	r1, [sp]
	ldr	r1, [r9]
	bl	EApiSprintfA(PLT)
	mov	r6, r0
	mov	r0, #0
	str	r6, [r9]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L22:
	.align	2
.L21:
	.word	.LC0-(.LPIC0+8)
	.size	GetTokenFlags, .-GetTokenFlags
	.section	.rodata.str1.4
	.align	2
.LC1:
	.ascii	"%s\000"
	.align	2
.LC2:
	.ascii	"UNKNOWN VALUE(0x%08lX)\000"
	.text
	.align	2
	.global	GetValueToken
	.syntax unified
	.arm
	.fpu vfpv3
	.type	GetValueToken, %function
GetValueToken:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldm	r2, {r2, ip}
	push	{r4, lr}
	cmp	r2, #0
	beq	.L24
	sub	r2, r2, #1
	b	.L27
.L25:
	cmn	r2, #1
	add	ip, ip, #8
	beq	.L24
.L27:
	ldr	lr, [ip, #4]
	sub	r2, r2, #1
	cmp	lr, r3
	bne	.L25
	ldr	r2, .L33
	ldr	r3, [ip]
.LPIC1:
	add	r2, pc, r2
	bl	EApiSprintfA(PLT)
	mov	r0, #0
	pop	{r4, pc}
.L24:
	ldr	r2, .L33+4
.LPIC2:
	add	r2, pc, r2
	bl	EApiSprintfA(PLT)
	mvn	r0, #3840
	pop	{r4, pc}
.L34:
	.align	2
.L33:
	.word	.LC1-(.LPIC1+8)
	.word	.LC2-(.LPIC2+8)
	.size	GetValueToken, .-GetValueToken
	.align	2
	.global	GetTokenValue
	.syntax unified
	.arm
	.fpu vfpv3
	.type	GetTokenValue, %function
GetTokenValue:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r3, #0
	ldr	r4, [r0]
	ldr	r5, [r0, #4]
	cmp	r4, r3
	str	r3, [r2]
	beq	.L39
	mov	r7, r2
	mov	r6, r1
	sub	r4, r4, #1
	b	.L38
.L37:
	cmn	r4, #1
	add	r5, r5, #8
	beq	.L39
.L38:
	ldr	r0, [r5]
	mov	r1, r6
	bl	strcmp(PLT)
	cmp	r0, #0
	sub	r4, r4, #1
	bne	.L37
	ldr	r3, [r5, #4]
	str	r3, [r7]
	pop	{r4, r5, r6, r7, r8, pc}
.L39:
	mvn	r0, #3840
	pop	{r4, r5, r6, r7, r8, pc}
	.size	GetTokenValue, .-GetTokenValue
	.align	2
	.global	GetTokenValueStrip
	.syntax unified
	.arm
	.fpu vfpv3
	.type	GetTokenValueStrip, %function
GetTokenValueStrip:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, r0
	mov	r0, r1
	mov	r7, r2
	bl	skipWhiteSpaces(PLT)
	mov	r6, r0
	bl	stripWhiteSpaces(PLT)
	ldr	r4, [r5]
	mov	r3, #0
	ldr	r5, [r5, #4]
	str	r3, [r7]
	cmp	r4, r3
	beq	.L46
	sub	r4, r4, #1
	b	.L45
.L44:
	cmn	r4, #1
	add	r5, r5, #8
	beq	.L46
.L45:
	ldr	r0, [r5]
	mov	r1, r6
	bl	strcmp(PLT)
	cmp	r0, #0
	sub	r4, r4, #1
	bne	.L44
	ldr	r3, [r5, #4]
	str	r3, [r7]
	pop	{r4, r5, r6, r7, r8, pc}
.L46:
	mvn	r0, #3840
	pop	{r4, r5, r6, r7, r8, pc}
	.size	GetTokenValueStrip, .-GetTokenValueStrip
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
