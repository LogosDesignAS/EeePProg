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
	.file	"RangeFunc.c"
	.text
	.align	2
	.global	RangeCheckAll
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	RangeCheckAll, %function
RangeCheckAll:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldm	r0, {r0, r3}
	cmp	r0, #0
	sub	ip, r0, #1
	bxeq	lr
	add	r3, r3, #88
.L9:
	ldr	r2, [r3, #-80]
	cmp	r2, #3
	addls	pc, pc, r2, asl #2
	b	.L3
.L5:
	b	.L8
	b	.L7
	b	.L6
	b	.L4
	.p2align 1
.L4:
	ldr	r2, [r3, #-88]
	tst	r1, r2
	bne	.L14
.L3:
	sub	ip, ip, #1
	add	r3, r3, #12
	cmn	ip, #1
	bne	.L9
	mov	r0, #0
	bx	lr
.L6:
	ldr	r2, [r3, #-88]
	tst	r1, r2
	bne	.L3
.L14:
	mvn	r0, #3840
	bx	lr
.L8:
	ldr	r2, [r3, #-88]
	pld	[r3]
	cmp	r2, r1
	bhi	.L3
	ldr	r2, [r3, #-84]
	cmp	r2, r1
	bcc	.L3
	b	.L14
.L7:
	ldr	r2, [r3, #-88]
	cmp	r2, r1
	bhi	.L14
	ldr	r2, [r3, #-84]
	cmp	r2, r1
	bcs	.L3
	mvn	r0, #3840
	bx	lr
	.size	RangeCheckAll, .-RangeCheckAll
	.align	2
	.global	RangeCheckAny
	.syntax unified
	.arm
	.fpu vfpv3
	.type	RangeCheckAny, %function
RangeCheckAny:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrd	r2, [r0]
	cmp	r2, #0
	sub	r2, r2, #1
	beq	.L29
	add	r3, r3, #88
.L28:
	ldr	r0, [r3, #-80]
	cmp	r0, #3
	addls	pc, pc, r0, asl #2
	b	.L22
.L24:
	b	.L27
	b	.L26
	b	.L25
	b	.L23
	.p2align 1
.L23:
	ldr	r0, [r3, #-88]
	ands	r0, r1, r0
	bxeq	lr
.L22:
	sub	r2, r2, #1
	add	r3, r3, #12
	cmn	r2, #1
	bne	.L28
.L29:
	mvn	r0, #3840
	bx	lr
.L26:
	ldr	r0, [r3, #-88]
	cmp	r0, r1
	bhi	.L22
	ldr	r0, [r3, #-84]
	cmp	r0, r1
	bcc	.L22
	mov	r0, #0
	bx	lr
.L27:
	ldr	ip, [r3, #-88]
	pld	[r3]
	cmp	ip, r1
	bxhi	lr
	ldr	ip, [r3, #-84]
	cmp	ip, r1
	bcs	.L22
	bx	lr
.L25:
	ldr	r0, [r3, #-88]
	tst	r1, r0
	beq	.L22
	mov	r0, #0
	bx	lr
	.size	RangeCheckAny, .-RangeCheckAny
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
