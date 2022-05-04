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
	.file	"StrPrint.c"
	.text
	.align	2
	.global	StringBlock
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	StringBlock, %function
StringBlock:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	ip, #0
	ldr	r5, [sp, #24]
	str	ip, [r3]
	str	ip, [r5]
	ldrb	lr, [r0]	@ zero_extendqisi2
	cmp	lr, #10
	ldrbeq	lr, [r0, #1]	@ zero_extendqisi2
	addeq	r4, r0, #1
	movne	r4, r0
	cmp	r2, #0
	sub	r2, r2, #1
	beq	.L21
.L13:
	mov	ip, r4
	ldrb	lr, [ip], #1	@ zero_extendqisi2
	cmp	lr, #47
	addls	pc, pc, lr, asl #2
	b	.L4
.L6:
	b	.L9
	b	.L4
	b	.L4
	b	.L4
	b	.L4
	b	.L4
	b	.L4
	b	.L4
	b	.L4
	b	.L8
	b	.L7
	b	.L4
	b	.L4
	b	.L7
	b	.L4
	b	.L4
	b	.L4
	b	.L4
	b	.L4
	b	.L4
	b	.L4
	b	.L4
	b	.L4
	b	.L4
	b	.L4
	b	.L4
	b	.L4
	b	.L4
	b	.L4
	b	.L4
	b	.L4
	b	.L4
	b	.L5
	b	.L4
	b	.L4
	b	.L4
	b	.L4
	b	.L4
	b	.L4
	b	.L4
	b	.L4
	b	.L4
	b	.L4
	b	.L4
	b	.L4
	b	.L4
	b	.L4
	b	.L5
	.p2align 1
.L5:
	sub	lr, ip, r0
.L10:
	sub	lr, lr, #1
	str	lr, [r3]
.L4:
	cmp	r2, #0
	sub	r2, r2, #1
	beq	.L22
	mov	r4, ip
	b	.L13
.L7:
	sub	ip, ip, r0
	mvn	r0, #1536
	sub	ip, ip, #1
	str	ip, [r3]
	pop	{r4, r5, r6, r7, r8, pc}
.L8:
	sub	lr, ip, r0
	add	r6, lr, r1
	add	r7, r6, #7
	add	r8, r6, r2
	bic	r7, r7, #7
	sub	r6, r7, r6
	cmp	r6, r2
	sub	r2, r8, r7
	bls	.L11
	sub	lr, lr, #1
	str	lr, [r3]
	ldrb	lr, [r4, #1]	@ zero_extendqisi2
.L3:
	cmp	lr, #0
	beq	.L23
	ldr	r2, [r3]
	cmp	r2, #0
	subeq	ip, ip, r0
	mvneq	r0, #1536
	streq	ip, [r3]
	mvnne	r0, #1536
	pop	{r4, r5, r6, r7, r8, pc}
.L9:
	sub	ip, ip, r0
	mov	r0, #0
	sub	ip, ip, #1
	str	ip, [r3]
	pop	{r4, r5, r6, r7, r8, pc}
.L11:
	ldr	r7, [r5]
	add	r6, r7, r6
	str	r6, [r5]
	b	.L10
.L23:
	sub	ip, ip, r0
	mov	r0, lr
	str	ip, [r3]
	pop	{r4, r5, r6, r7, r8, pc}
.L22:
	ldrb	lr, [r4, #1]	@ zero_extendqisi2
	b	.L3
.L21:
	mov	ip, r4
	b	.L3
	.size	StringBlock, .-StringBlock
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"%-*.*s%s\000"
	.align	2
.LC1:
	.ascii	"%*s%-*s%s\000"
	.align	2
.LC2:
	.ascii	"\000"
	.align	2
.LC3:
	.ascii	"%*s%-*.*s%s\000"
	.text
	.align	2
	.global	PrintStringBlock
	.syntax unified
	.arm
	.fpu vfpv3
	.type	PrintStringBlock, %function
PrintStringBlock:
	@ args = 8, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r2
	ldr	r2, .L47
	mov	r9, r3
	sub	sp, sp, #60
	mov	r8, r0
	ldr	r3, .L47+4
	mov	r0, r9
.LPIC5:
	add	r2, pc, r2
	ldr	r10, [sp, #96]
	mov	r5, r1
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #52]
	mov	r3, #0
	bl	strlen(PLT)
	ldr	r3, [sp, #100]
	cmp	r10, #0
	str	r0, [sp, #28]
	str	r3, [sp, #20]
	blt	.L25
	cmp	r0, r10
	movge	r3, r0
	movlt	r3, r10
	mov	r1, r3
	str	r3, [sp, #28]
.L26:
	add	r2, sp, #48
	add	r3, sp, #44
	str	r2, [sp, #36]
	mov	r0, r5
	str	r2, [sp]
	mov	r2, r7
	str	r3, [sp, #32]
	bl	StringBlock(PLT)
	ldr	r3, [sp, #20]
	mov	r0, r8
	ldr	r4, [sp, #44]
	ldr	r2, [sp, #48]
	ldr	r1, .L47+8
	str	r3, [sp, #4]
	mov	r3, r4
	sub	r2, r7, r2
	str	r5, [sp]
.LPIC0:
	add	r1, pc, r1
	bl	fprintf(PLT)
	cmp	r4, #0
	beq	.L27
	ldr	fp, .L47+12
	ldr	r3, .L47+16
.LPIC1:
	add	fp, pc, fp
.LPIC2:
	add	r3, pc, r3
	str	r3, [sp, #24]
.L34:
	add	r4, r5, r4
	mov	r6, #0
.L33:
	mov	r5, r4
	add	r4, r4, #1
	ldrb	r0, [r5]	@ zero_extendqisi2
	sub	r0, r0, #9
	cmp	r0, #23
	addls	pc, pc, r0, asl #2
	b	.L28
.L30:
	b	.L29
	b	.L32
	b	.L28
	b	.L28
	b	.L33
	b	.L28
	b	.L28
	b	.L28
	b	.L28
	b	.L28
	b	.L28
	b	.L28
	b	.L28
	b	.L28
	b	.L28
	b	.L28
	b	.L28
	b	.L28
	b	.L28
	b	.L28
	b	.L28
	b	.L28
	b	.L28
	b	.L29
	.p2align 1
.L29:
	add	r5, r5, #1
.L28:
	ldr	r1, [sp, #36]
	mov	r2, r7
	ldr	r3, [sp, #32]
	mov	r0, r5
	str	r1, [sp]
	ldr	r1, [sp, #28]
	bl	StringBlock(PLT)
	ldr	r4, [sp, #44]
	cmp	r4, #0
	bne	.L45
.L27:
	ldr	r2, .L47+20
	ldr	r3, .L47+4
.LPIC4:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #52]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L46
	mov	r0, #0
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L32:
	cmp	r6, #0
	moveq	r6, #1
	beq	.L33
	ldr	r2, [sp, #20]
	mov	r3, r9
	mov	r1, fp
	mov	r0, r8
	str	r7, [sp]
	add	r6, r6, #1
	str	r2, [sp, #8]
	ldr	r2, [sp, #24]
	str	r2, [sp, #4]
	mov	r2, r10
	bl	fprintf(PLT)
	b	.L33
.L45:
	ldr	r3, [sp, #20]
	mov	r2, r10
	ldr	r1, .L47+24
	mov	r0, r8
	strd	r4, [sp, #4]
	str	r3, [sp, #12]
	ldr	r3, [sp, #48]
.LPIC3:
	add	r1, pc, r1
	sub	r3, r7, r3
	str	r3, [sp]
	mov	r3, r9
	bl	fprintf(PLT)
	b	.L34
.L25:
	rsb	r3, r10, #0
	cmp	r0, r3
	movge	r3, r0
	mov	r1, r3
	str	r3, [sp, #28]
	b	.L26
.L46:
	bl	__stack_chk_fail(PLT)
.L48:
	.align	2
.L47:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC5+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC0-(.LPIC0+8)
	.word	.LC1-(.LPIC1+8)
	.word	.LC2-(.LPIC2+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC4+8)
	.word	.LC3-(.LPIC3+8)
	.size	PrintStringBlock, .-PrintStringBlock
	.section	.rodata.str1.4
	.align	2
.LC4:
	.ascii	"%*s\000"
	.text
	.align	2
	.global	PrintStringBlockA
	.syntax unified
	.arm
	.fpu vfpv3
	.type	PrintStringBlockA, %function
PrintStringBlockA:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, r1
	ldrd	r8, [sp, #32]
	mov	r4, r0
	mov	r6, r2
	mov	r7, r3
	ldr	r1, .L51
	mov	r2, r8
.LPIC6:
	add	r1, pc, r1
	bl	fprintf(PLT)
	mov	r3, r7
	mov	r2, r6
	mov	r1, r5
	mov	r0, r4
	str	r9, [sp, #36]
	str	r8, [sp, #32]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	PrintStringBlock(PLT)
.L52:
	.align	2
.L51:
	.word	.LC4-(.LPIC6+8)
	.size	PrintStringBlockA, .-PrintStringBlockA
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
