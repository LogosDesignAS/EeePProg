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
	.file	"EApiInitLib.c"
	.text
	.align	2
	.global	DebugMsg
	.hidden	DebugMsg
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	DebugMsg, %function
DebugMsg:
	@ args = 4, pretend = 16, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 1
	push	{r0, r1, r2, r3}
	str	lr, [sp, #-4]!
	sub	sp, sp, #12
	add	r2, sp, #20
	ldr	lr, .L9
	ldr	r0, .L9+4
	ldr	r3, .L9+8
.LPIC4:
	add	lr, pc, lr
	ldr	ip, .L9+12
	ldr	r0, [lr, r0]
.LPIC0:
	add	r3, pc, r3
	ldr	r1, [sp, #16]
.LPIC1:
	add	ip, pc, ip
	ldr	r0, [r0]
	str	r0, [sp, #4]
	mov	r0, #0
	ldr	r0, [r3]
	str	r2, [sp]
	cmp	r0, #0
	beq	.L2
.L6:
	bl	vfprintf(PLT)
	ldr	r3, .L9+16
.LPIC2:
	ldr	r0, [pc, r3]		@ tls_load_dot_plus_eight
	bl	fflush(PLT)
	ldr	r2, .L9+20
	ldr	r3, .L9+4
.LPIC3:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #4]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L8
	add	sp, sp, #12
	@ sp needed
	ldr	lr, [sp], #4
	add	sp, sp, #16
	bx	lr
.L2:
	ldr	r3, .L9+24
	ldr	r3, [ip, r3]
	ldr	r0, [r3]
	b	.L6
.L8:
	bl	__stack_chk_fail(PLT)
.L10:
	.align	2
.L9:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC4+8)
	.word	__stack_chk_guard(GOT)
	.word	.LANCHOR0-(.LPIC0+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+8)
	.word	.LANCHOR0-(.LPIC2+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC3+8)
	.word	stdout(GOT)
	.size	DebugMsg, .-DebugMsg
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"w\000"
	.align	2
.LC1:
	.ascii	"EApi.log\000"
	.align	2
.LC2:
	.ascii	"#\012# Embedded API EApi\012# Version %u.%u\012# Li"
	.ascii	"b Version %u.%u.%u\012#\012\000"
	.text
	.align	2
	.global	EApiInitLib
	.hidden	EApiInitLib
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiInitLib, %function
EApiInitLib:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	sub	sp, sp, #8
	ldr	r4, .L15
.LPIC5:
	add	r4, pc, r4
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L14
.L12:
	bl	OpenEepromFiles(PLT)
	bl	OpenI2CEepromFiles(PLT)
	ldr	r0, .L15+4
	mov	r3, #0
	mov	ip, #5
	movw	r1, #991
	str	r1, [sp, #4]
	mov	r2, r3
.LPIC9:
	add	r0, pc, r0
	mov	r1, #1
	str	ip, [sp]
	bl	DebugMsg(PLT)
	mov	r0, #0
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
.L14:
	ldr	r1, .L15+8
	ldr	r0, .L15+12
.LPIC6:
	add	r1, pc, r1
.LPIC7:
	add	r0, pc, r0
	bl	fopen(PLT)
	str	r0, [r4]
	b	.L12
.L16:
	.align	2
.L15:
	.word	.LANCHOR0-(.LPIC5+8)
	.word	.LC2-(.LPIC9+8)
	.word	.LC0-(.LPIC6+8)
	.word	.LC1-(.LPIC7+8)
	.size	EApiInitLib, .-EApiInitLib
	.section	.rodata.str1.4
	.align	2
.LC3:
	.ascii	"#\012# Embedded API EApi\012# Exit \012#\012\000"
	.text
	.align	2
	.global	EApiUninitLib
	.hidden	EApiUninitLib
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiUninitLib, %function
EApiUninitLib:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L23
	push	{r4, r5, r6, lr}
	ldr	r4, .L23+4
.LPIC10:
	add	r0, pc, r0
	bl	DebugMsg(PLT)
	bl	CloseEepromFiles(PLT)
	bl	CloseI2CEepromFiles(PLT)
	ldr	r2, .L23+8
.LPIC12:
	add	r4, pc, r4
	ldr	r3, .L23+12
.LPIC11:
	add	r2, pc, r2
	ldr	r0, [r2]
	ldr	r3, [r4, r3]
	cmp	r0, #0
	ldr	r5, [r3]
	beq	.L18
	cmp	r0, r5
	beq	.L18
	ldr	r3, .L23+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	cmp	r0, r3
	beq	.L18
	bl	fclose(PLT)
.L18:
	ldr	r3, .L23+20
	mov	r0, #0
.LPIC13:
	add	r3, pc, r3
	str	r5, [r3]
	pop	{r4, r5, r6, pc}
.L24:
	.align	2
.L23:
	.word	.LC3-(.LPIC10+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC12+8)
	.word	.LANCHOR0-(.LPIC11+8)
	.word	stdout(GOT)
	.word	stderr(GOT)
	.word	.LANCHOR0-(.LPIC13+8)
	.size	EApiUninitLib, .-EApiUninitLib
	.hidden	OutputStream
	.global	OutputStream
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	OutputStream, %object
	.size	OutputStream, 4
OutputStream:
	.space	4
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
