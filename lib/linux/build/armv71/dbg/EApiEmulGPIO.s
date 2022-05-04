	.cpu cortex-a9
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"EApiEmulGPIO.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.data
	.align	2
	.type	EmulatedIoBlock, %object
	.size	EmulatedIoBlock, 16
EmulatedIoBlock:
	.word	8560640
	.word	8519680
	.word	8560640
	.word	8519680
	.text
	.align	2
	.global	EApiReadIO32
	.hidden	EApiReadIO32
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiReadIO32, %function
EApiReadIO32:
.LFB1:
	.file 1 "/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EApiEmulGPIO.c"
	.loc 1 102 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -4
	add	fp, sp, #0
	.cfi_def_cfa_register 11
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	.loc 1 103 40
	ldr	r3, [fp, #-8]
	add	r3, r3, #4
	.loc 1 103 5
	cmp	r3, #16
	bls	.L2
	.loc 1 105 14
	mov	r3, #0
	b	.L3
.L2:
	.loc 1 107 11
	ldr	r3, [fp, #-8]
	ldr	r2, .L4
.LPIC0:
	add	r2, pc, r2
	add	r3, r3, r2
	.loc 1 107 10
	ldr	r3, [r3]
.L3:
	.loc 1 108 1
	mov	r0, r3
	add	sp, fp, #0
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	fp, [sp], #4
	.cfi_restore 11
	.cfi_def_cfa_offset 0
	bx	lr
.L5:
	.align	2
.L4:
	.word	EmulatedIoBlock-(.LPIC0+8)
	.cfi_endproc
.LFE1:
	.size	EApiReadIO32, .-EApiReadIO32
	.align	2
	.global	EApiWriteIO32
	.hidden	EApiWriteIO32
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiWriteIO32, %function
EApiWriteIO32:
.LFB2:
	.loc 1 111 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -4
	add	fp, sp, #0
	.cfi_def_cfa_register 11
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	.loc 1 112 40
	ldr	r3, [fp, #-8]
	add	r3, r3, #4
	.loc 1 112 5
	cmp	r3, #16
	bhi	.L9
	.loc 1 116 4
	ldr	r3, [fp, #-8]
	ldr	r2, .L10
.LPIC1:
	add	r2, pc, r2
	add	r3, r3, r2
	.loc 1 116 57
	ldr	r2, [fp, #-12]
	str	r2, [r3]
	.loc 1 117 3
	b	.L6
.L9:
	.loc 1 114 7
	nop
.L6:
	.loc 1 118 1
	add	sp, fp, #0
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	fp, [sp], #4
	.cfi_restore 11
	.cfi_def_cfa_offset 0
	bx	lr
.L11:
	.align	2
.L10:
	.word	EmulatedIoBlock-(.LPIC1+8)
	.cfi_endproc
.LFE2:
	.size	EApiWriteIO32, .-EApiWriteIO32
	.align	2
	.global	EApiWriteIO32Delay
	.hidden	EApiWriteIO32Delay
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiWriteIO32Delay, %function
EApiWriteIO32Delay:
.LFB3:
	.loc 1 120 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	.loc 1 121 3
	movw	r0, #1400
	bl	EApiSleepns(PLT)
	.loc 1 122 3
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	EApiWriteIO32(PLT)
	.loc 1 123 3
	nop
	.loc 1 124 1
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE3:
	.size	EApiWriteIO32Delay, .-EApiWriteIO32Delay
	.align	2
	.global	EApiReadIO32Delay
	.hidden	EApiReadIO32Delay
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiReadIO32Delay, %function
EApiReadIO32Delay:
.LFB4:
	.loc 1 126 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	.loc 1 127 3
	movw	r0, #1400
	bl	EApiSleepns(PLT)
	.loc 1 128 10
	ldr	r0, [fp, #-8]
	bl	EApiReadIO32(PLT)
	mov	r3, r0
	.loc 1 129 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE4:
	.size	EApiReadIO32Delay, .-EApiReadIO32Delay
	.hidden	Port1Desc
	.global	Port1Desc
	.section	.data.rel.local,"aw"
	.align	2
	.type	Port1Desc, %object
	.size	Port1Desc, 28
Port1Desc:
	.word	0
	.word	0
	.word	0
	.word	4
	.word	0
	.word	EApiWriteIO32Delay
	.word	EApiReadIO32Delay
	.hidden	Port2Desc
	.global	Port2Desc
	.align	2
	.type	Port2Desc, %object
	.size	Port2Desc, 28
Port2Desc:
	.word	0
	.word	0
	.word	0
	.word	12
	.word	8
	.word	EApiWriteIO32Delay
	.word	EApiReadIO32Delay
	.hidden	GpioMappingID0
	.global	GpioMappingID0
	.section	.data.rel.ro.local,"aw"
	.align	2
	.type	GpioMappingID0, %object
	.size	GpioMappingID0, 72
GpioMappingID0:
	.word	8388608
	.word	Port1Desc
	.word	32768
	.word	Port1Desc
	.word	8192
	.word	Port1Desc
	.word	131072
	.word	Port1Desc
	.word	16
	.word	Port1Desc
	.word	64
	.word	Port1Desc
	.word	-2147483648
	.word	Port1Desc
	.word	1
	.word	Port1Desc
	.word	-1
	.word	0
	.hidden	GpioMappingID1
	.global	GpioMappingID1
	.align	2
	.type	GpioMappingID1, %object
	.size	GpioMappingID1, 16
GpioMappingID1:
	.word	8388608
	.word	Port1Desc
	.word	-1
	.word	0
	.hidden	GpioMappingID2
	.global	GpioMappingID2
	.align	2
	.type	GpioMappingID2, %object
	.size	GpioMappingID2, 16
GpioMappingID2:
	.word	32768
	.word	Port1Desc
	.word	-1
	.word	0
	.hidden	GpioMappingID3
	.global	GpioMappingID3
	.align	2
	.type	GpioMappingID3, %object
	.size	GpioMappingID3, 16
GpioMappingID3:
	.word	8192
	.word	Port1Desc
	.word	-1
	.word	0
	.hidden	GpioMappingID4
	.global	GpioMappingID4
	.align	2
	.type	GpioMappingID4, %object
	.size	GpioMappingID4, 16
GpioMappingID4:
	.word	131072
	.word	Port1Desc
	.word	-1
	.word	0
	.hidden	GpioMappingID5
	.global	GpioMappingID5
	.align	2
	.type	GpioMappingID5, %object
	.size	GpioMappingID5, 16
GpioMappingID5:
	.word	16
	.word	Port1Desc
	.word	-1
	.word	0
	.hidden	GpioMappingID6
	.global	GpioMappingID6
	.align	2
	.type	GpioMappingID6, %object
	.size	GpioMappingID6, 16
GpioMappingID6:
	.word	64
	.word	Port1Desc
	.word	-1
	.word	0
	.hidden	GpioMappingID7
	.global	GpioMappingID7
	.align	2
	.type	GpioMappingID7, %object
	.size	GpioMappingID7, 16
GpioMappingID7:
	.word	-2147483648
	.word	Port1Desc
	.word	-1
	.word	0
	.hidden	GpioMappingID8
	.global	GpioMappingID8
	.align	2
	.type	GpioMappingID8, %object
	.size	GpioMappingID8, 16
GpioMappingID8:
	.word	1
	.word	Port1Desc
	.word	-1
	.word	0
	.hidden	GPIOIDMapping
	.global	GPIOIDMapping
	.align	2
	.type	GPIOIDMapping, %object
	.size	GPIOIDMapping, 144
GPIOIDMapping:
	.word	65536
	.word	GpioMappingID0
	.word	240
	.word	15
	.word	4
	.word	GpioMappingID1
	.word	0
	.word	1
	.word	5
	.word	GpioMappingID2
	.word	0
	.word	1
	.word	6
	.word	GpioMappingID3
	.word	0
	.word	1
	.word	7
	.word	GpioMappingID4
	.word	0
	.word	1
	.word	0
	.word	GpioMappingID5
	.word	1
	.word	0
	.word	1
	.word	GpioMappingID6
	.word	1
	.word	0
	.word	2
	.word	GpioMappingID7
	.word	1
	.word	0
	.word	3
	.word	GpioMappingID8
	.word	1
	.word	0
	.section	.rodata
	.align	2
.LC0:
	.ascii	"EApiGPIOGetLevelEmul\000"
	.align	2
.LC1:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EA"
	.ascii	"piEmulGPIO.c\000"
	.align	2
.LC2:
	.ascii	"Bit-mask Selects Invalid Bits\000"
	.align	2
.LC3:
	.ascii	"%s\012\000"
	.align	2
.LC4:
	.ascii	"EApiGPIOGetLevel\000"
	.align	2
.LC5:
	.ascii	"\000"
	.align	2
.LC6:
	.ascii	"Unrecognised GPIO ID\000"
	.text
	.align	2
	.global	EApiGPIOGetLevelEmul
	.hidden	EApiGPIOGetLevelEmul
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiGPIOGetLevelEmul, %function
EApiGPIOGetLevelEmul:
.LFB5:
	.loc 1 311 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #8
	.cfi_def_cfa 11, 4
	sub	sp, sp, #52
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	str	r2, [fp, #-40]
	.loc 1 312 16
	mov	r3, #0
	str	r3, [fp, #-28]
	.loc 1 314 12
	mov	r3, #1
	str	r3, [fp, #-16]
	.loc 1 316 8
	mov	r3, #0
	str	r3, [fp, #-24]
	.loc 1 316 3
	b	.L17
.L27:
	.loc 1 318 26
	ldr	r3, .L29
.LPIC2:
	add	r3, pc, r3
	ldr	r2, [fp, #-24]
	ldr	r3, [r3, r2, lsl #4]
	.loc 1 318 9
	ldr	r2, [fp, #-32]
	cmp	r2, r3
	bne	.L18
	.loc 1 320 9
	ldr	r2, .L29+4
.LPIC3:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #8]
	ldr	r1, .L29+8
.LPIC4:
	add	r1, pc, r1
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r1, r3
	ldr	r3, [r3, #12]
	orr	r3, r2, r3
	mvn	r2, r3
	ldr	r3, [fp, #-36]
	and	r3, r3, r2
	cmp	r3, #0
	beq	.L19
	.loc 1 320 9 is_stmt 0 discriminator 1
	ldr	r3, .L29+12
.LPIC5:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L29+16
.LPIC6:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #260
	str	r3, [sp]
	mov	r3, #320
	ldr	r2, .L29+20
.LPIC7:
	add	r2, pc, r2
	ldr	r1, .L29+24
.LPIC8:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #260
	str	r3, [fp, #-28]
	b	.L20
.L19:
	.loc 1 326 15 is_stmt 1
	mov	r3, #0
	str	r3, [fp, #-20]
	.loc 1 326 9
	b	.L21
.L22:
	.loc 1 327 27 discriminator 3
	ldr	r2, .L29+28
.LPIC9:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 327 34 discriminator 3
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	.loc 1 327 38 discriminator 3
	ldr	r3, [r3, #4]
	.loc 1 327 50 discriminator 3
	mov	r2, #0
	str	r2, [r3]
	.loc 1 326 75 discriminator 3
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L21:
	.loc 1 326 34 discriminator 1
	ldr	r2, .L29+32
.LPIC10:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 326 41 discriminator 1
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	.loc 1 326 45 discriminator 1
	ldr	r3, [r3]
	.loc 1 326 54 discriminator 1
	cmn	r3, #1
	bne	.L22
	.loc 1 329 16
	ldr	r3, [fp, #-40]
	mov	r2, #0
	str	r2, [r3]
	.loc 1 330 15
	mov	r3, #0
	str	r3, [fp, #-20]
	.loc 1 330 9
	b	.L23
.L26:
	.loc 1 331 22
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-16]
	and	r3, r3, r2
	.loc 1 331 13
	cmp	r3, #0
	beq	.L24
	.loc 1 333 32
	ldr	r2, .L29+36
.LPIC11:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 333 39
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	.loc 1 333 43
	ldr	r3, [r3, #4]
	.loc 1 333 48
	ldr	r3, [r3]
	.loc 1 333 15
	cmp	r3, #0
	bne	.L25
	.loc 1 334 71
	ldr	r2, .L29+40
.LPIC12:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 334 78
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	.loc 1 334 82
	ldr	r3, [r3, #4]
	.loc 1 334 87
	ldr	r2, [r3, #24]
	.loc 1 335 33
	ldr	r1, .L29+44
.LPIC13:
	add	r1, pc, r1
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r1, r3
	ldr	r1, [r3, #4]
	.loc 1 335 40
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r1, r3
	.loc 1 335 44
	ldr	r3, [r3, #4]
	.loc 1 334 55
	ldr	r0, [r3, #12]
	.loc 1 334 31
	ldr	r1, .L29+48
.LPIC14:
	add	r1, pc, r1
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r1, r3
	ldr	r1, [r3, #4]
	.loc 1 334 38
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r1, r3
	.loc 1 334 42
	ldr	r4, [r3, #4]
	.loc 1 334 55
	blx	r2
.LVL0:
	mov	r3, r0
	.loc 1 334 54
	str	r3, [r4, #4]
	.loc 1 337 31
	ldr	r2, .L29+52
.LPIC15:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 337 38
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	.loc 1 337 42
	ldr	r3, [r3, #4]
	.loc 1 337 54
	mov	r2, #1
	str	r2, [r3]
.L25:
	.loc 1 339 32
	ldr	r2, .L29+56
.LPIC16:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 339 39
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	.loc 1 339 43
	ldr	r3, [r3, #4]
	.loc 1 339 48
	ldr	r2, [r3, #4]
	.loc 1 339 72
	ldr	r1, .L29+60
.LPIC17:
	add	r1, pc, r1
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r1, r3
	ldr	r1, [r3, #4]
	.loc 1 339 79
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r1, r3
	.loc 1 339 83
	ldr	r3, [r3]
	.loc 1 339 55
	and	r3, r3, r2
	.loc 1 339 15
	cmp	r3, #0
	beq	.L24
	.loc 1 340 22
	ldr	r3, [fp, #-40]
	ldr	r2, [r3]
	ldr	r3, [fp, #-16]
	orr	r2, r2, r3
	ldr	r3, [fp, #-40]
	str	r2, [r3]
.L24:
	.loc 1 343 21 discriminator 2
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #1
	str	r3, [fp, #-16]
	.loc 1 330 75 discriminator 2
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L23:
	.loc 1 330 34 discriminator 1
	ldr	r2, .L29+64
.LPIC18:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 330 41 discriminator 1
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	.loc 1 330 45 discriminator 1
	ldr	r3, [r3]
	.loc 1 330 54 discriminator 1
	cmn	r3, #1
	bne	.L26
	.loc 1 345 9
	ldr	r3, .L29+68
.LPIC19:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L29+72
.LPIC20:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mov	r3, #0
	str	r3, [sp]
	movw	r3, #345
	ldr	r2, .L29+76
.LPIC21:
	add	r2, pc, r2
	ldr	r1, .L29+80
.LPIC22:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_SC(PLT)
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L20
.L18:
	.loc 1 316 40 discriminator 2
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L17:
	.loc 1 316 12 discriminator 1
	ldr	r3, [fp, #-24]
	cmp	r3, #8
	bls	.L27
	.loc 1 348 3
	ldr	r3, .L29+84
.LPIC23:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L29+88
.LPIC24:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #768
	str	r3, [sp]
	mov	r3, #348
	ldr	r2, .L29+92
.LPIC25:
	add	r2, pc, r2
	ldr	r1, .L29+96
.LPIC26:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #768
	str	r3, [fp, #-28]
	nop
.L20:
	.loc 1 355 10
	ldr	r3, [fp, #-28]
	.loc 1 356 1
	mov	r0, r3
	sub	sp, fp, #8
	.cfi_def_cfa 13, 12
	@ sp needed
	pop	{r4, fp, pc}
.L30:
	.align	2
.L29:
	.word	GPIOIDMapping-(.LPIC2+8)
	.word	GPIOIDMapping-(.LPIC3+8)
	.word	GPIOIDMapping-(.LPIC4+8)
	.word	.LC2-(.LPIC5+8)
	.word	.LC3-(.LPIC6+8)
	.word	.LC0-(.LPIC7+8)
	.word	.LC1-(.LPIC8+8)
	.word	GPIOIDMapping-(.LPIC9+8)
	.word	GPIOIDMapping-(.LPIC10+8)
	.word	GPIOIDMapping-(.LPIC11+8)
	.word	GPIOIDMapping-(.LPIC12+8)
	.word	GPIOIDMapping-(.LPIC13+8)
	.word	GPIOIDMapping-(.LPIC14+8)
	.word	GPIOIDMapping-(.LPIC15+8)
	.word	GPIOIDMapping-(.LPIC16+8)
	.word	GPIOIDMapping-(.LPIC17+8)
	.word	GPIOIDMapping-(.LPIC18+8)
	.word	.LC5-(.LPIC19+8)
	.word	.LC3-(.LPIC20+8)
	.word	.LC4-(.LPIC21+8)
	.word	.LC1-(.LPIC22+8)
	.word	.LC6-(.LPIC23+8)
	.word	.LC3-(.LPIC24+8)
	.word	.LC4-(.LPIC25+8)
	.word	.LC1-(.LPIC26+8)
	.cfi_endproc
.LFE5:
	.size	EApiGPIOGetLevelEmul, .-EApiGPIOGetLevelEmul
	.section	.rodata
	.align	2
.LC7:
	.ascii	"EApiGPIOSetLevelEmul\000"
	.align	2
.LC8:
	.ascii	"EApiGPIOSetLevel\000"
	.align	2
.LC9:
	.ascii	"Cant Set Level on Pin that is set to input\000"
	.text
	.align	2
	.global	EApiGPIOSetLevelEmul
	.hidden	EApiGPIOSetLevelEmul
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiGPIOSetLevelEmul, %function
EApiGPIOSetLevelEmul:
.LFB6:
	.loc 1 364 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #8
	.cfi_def_cfa 11, 4
	sub	sp, sp, #52
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	str	r2, [fp, #-40]
	.loc 1 365 16
	mov	r3, #0
	str	r3, [fp, #-28]
	.loc 1 367 12
	mov	r3, #1
	str	r3, [fp, #-16]
	.loc 1 368 8
	mov	r3, #0
	str	r3, [fp, #-24]
	.loc 1 368 3
	b	.L32
.L47:
	.loc 1 370 26
	ldr	r3, .L49
.LPIC27:
	add	r3, pc, r3
	ldr	r2, [fp, #-24]
	ldr	r3, [r3, r2, lsl #4]
	.loc 1 370 9
	ldr	r2, [fp, #-32]
	cmp	r2, r3
	bne	.L33
	.loc 1 372 9
	ldr	r2, .L49+4
.LPIC28:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #8]
	ldr	r1, .L49+8
.LPIC29:
	add	r1, pc, r1
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r1, r3
	ldr	r3, [r3, #12]
	orr	r3, r2, r3
	mvn	r2, r3
	ldr	r3, [fp, #-36]
	and	r3, r3, r2
	cmp	r3, #0
	beq	.L34
	.loc 1 372 9 is_stmt 0 discriminator 1
	ldr	r3, .L49+12
.LPIC30:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L49+16
.LPIC31:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #260
	str	r3, [sp]
	mov	r3, #372
	ldr	r2, .L49+20
.LPIC32:
	add	r2, pc, r2
	ldr	r1, .L49+24
.LPIC33:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #260
	str	r3, [fp, #-28]
	b	.L35
.L34:
	.loc 1 378 15 is_stmt 1
	mov	r3, #0
	str	r3, [fp, #-20]
	.loc 1 378 9
	b	.L36
.L37:
	.loc 1 379 27 discriminator 3
	ldr	r2, .L49+28
.LPIC34:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 379 34 discriminator 3
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	.loc 1 379 38 discriminator 3
	ldr	r3, [r3, #4]
	.loc 1 379 50 discriminator 3
	mov	r2, #0
	str	r2, [r3]
	.loc 1 378 75 discriminator 3
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L36:
	.loc 1 378 34 discriminator 1
	ldr	r2, .L49+32
.LPIC35:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 378 41 discriminator 1
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	.loc 1 378 45 discriminator 1
	ldr	r3, [r3]
	.loc 1 378 54 discriminator 1
	cmn	r3, #1
	bne	.L37
	.loc 1 381 15
	mov	r3, #0
	str	r3, [fp, #-20]
	.loc 1 381 9
	b	.L38
.L43:
	.loc 1 383 22
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-16]
	and	r3, r3, r2
	.loc 1 383 13
	cmp	r3, #0
	beq	.L39
	.loc 1 385 32
	ldr	r2, .L49+36
.LPIC36:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 385 39
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	.loc 1 385 43
	ldr	r3, [r3, #4]
	.loc 1 385 48
	ldr	r3, [r3]
	.loc 1 385 15
	cmp	r3, #0
	bne	.L40
	.loc 1 386 71
	ldr	r2, .L49+40
.LPIC37:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 386 78
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	.loc 1 386 82
	ldr	r3, [r3, #4]
	.loc 1 386 87
	ldr	r2, [r3, #24]
	.loc 1 387 33
	ldr	r1, .L49+44
.LPIC38:
	add	r1, pc, r1
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r1, r3
	ldr	r1, [r3, #4]
	.loc 1 387 40
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r1, r3
	.loc 1 387 44
	ldr	r3, [r3, #4]
	.loc 1 386 55
	ldr	r0, [r3, #12]
	.loc 1 386 31
	ldr	r1, .L49+48
.LPIC39:
	add	r1, pc, r1
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r1, r3
	ldr	r1, [r3, #4]
	.loc 1 386 38
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r1, r3
	.loc 1 386 42
	ldr	r4, [r3, #4]
	.loc 1 386 55
	blx	r2
.LVL1:
	mov	r3, r0
	.loc 1 386 54
	str	r3, [r4, #4]
	.loc 1 390 72
	ldr	r2, .L49+52
.LPIC40:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 390 79
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	.loc 1 390 83
	ldr	r3, [r3, #4]
	.loc 1 390 88
	ldr	r2, [r3, #24]
	.loc 1 391 33
	ldr	r1, .L49+56
.LPIC41:
	add	r1, pc, r1
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r1, r3
	ldr	r1, [r3, #4]
	.loc 1 391 40
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r1, r3
	.loc 1 391 44
	ldr	r3, [r3, #4]
	.loc 1 390 56
	ldr	r0, [r3, #16]
	.loc 1 390 31
	ldr	r1, .L49+60
.LPIC42:
	add	r1, pc, r1
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r1, r3
	ldr	r1, [r3, #4]
	.loc 1 390 38
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r1, r3
	.loc 1 390 42
	ldr	r4, [r3, #4]
	.loc 1 390 56
	blx	r2
.LVL2:
	mov	r3, r0
	.loc 1 390 55
	str	r3, [r4, #8]
	.loc 1 394 31
	ldr	r2, .L49+64
.LPIC43:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 394 38
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	.loc 1 394 42
	ldr	r3, [r3, #4]
	.loc 1 394 54
	mov	r2, #1
	str	r2, [r3]
.L40:
	.loc 1 397 13
	ldr	r2, .L49+68
.LPIC44:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #8]
	ldr	r1, .L49+72
.LPIC45:
	add	r1, pc, r1
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r1, r3
	ldr	r1, [r3, #4]
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r1, r3
	ldr	r3, [r3]
	and	r3, r3, r2
	cmp	r3, #0
	beq	.L41
	.loc 1 397 13 is_stmt 0 discriminator 1
	ldr	r3, .L49+76
.LPIC46:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L49+80
.LPIC47:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #397
	ldr	r2, .L49+84
.LPIC48:
	add	r2, pc, r2
	ldr	r1, .L49+88
.LPIC49:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-28]
	b	.L35
.L41:
	.loc 1 404 21 is_stmt 1
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-16]
	and	r3, r3, r2
	.loc 1 404 15
	cmp	r3, #0
	beq	.L42
	.loc 1 405 31
	ldr	r2, .L49+92
.LPIC50:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 405 38
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	.loc 1 405 42
	ldr	r3, [r3, #4]
	.loc 1 405 54
	ldr	r1, [r3, #4]
	.loc 1 405 72
	ldr	r2, .L49+96
.LPIC51:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 405 79
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	.loc 1 405 83
	ldr	r2, [r3]
	.loc 1 405 31
	ldr	r0, .L49+100
.LPIC52:
	add	r0, pc, r0
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r0, r3
	ldr	r0, [r3, #4]
	.loc 1 405 38
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r0, r3
	.loc 1 405 42
	ldr	r3, [r3, #4]
	.loc 1 405 54
	orr	r2, r1, r2
	str	r2, [r3, #4]
	b	.L39
.L42:
	.loc 1 407 31
	ldr	r2, .L49+104
.LPIC53:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 407 38
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	.loc 1 407 42
	ldr	r3, [r3, #4]
	.loc 1 407 54
	ldr	r1, [r3, #4]
	.loc 1 407 73
	ldr	r2, .L49+108
.LPIC54:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 407 80
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	.loc 1 407 84
	ldr	r3, [r3]
	.loc 1 407 56
	mvn	r2, r3
	.loc 1 407 31
	ldr	r0, .L49+112
.LPIC55:
	add	r0, pc, r0
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r0, r3
	ldr	r0, [r3, #4]
	.loc 1 407 38
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r0, r3
	.loc 1 407 42
	ldr	r3, [r3, #4]
	.loc 1 407 54
	and	r2, r2, r1
	str	r2, [r3, #4]
.L39:
	.loc 1 409 21 discriminator 2
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #1
	str	r3, [fp, #-16]
	.loc 1 381 75 discriminator 2
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L38:
	.loc 1 381 34 discriminator 1
	ldr	r2, .L49+116
.LPIC56:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 381 41 discriminator 1
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	.loc 1 381 45 discriminator 1
	ldr	r3, [r3]
	.loc 1 381 54 discriminator 1
	cmn	r3, #1
	bne	.L43
	.loc 1 411 15
	mov	r3, #0
	str	r3, [fp, #-20]
	.loc 1 411 9
	b	.L44
.L46:
	.loc 1 412 30
	ldr	r2, .L49+120
.LPIC57:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 412 37
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	.loc 1 412 41
	ldr	r3, [r3, #4]
	.loc 1 412 46
	ldr	r3, [r3]
	.loc 1 412 13
	cmp	r3, #1
	bne	.L45
	.loc 1 413 29
	ldr	r2, .L49+124
.LPIC58:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 413 36
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	.loc 1 413 40
	ldr	r3, [r3, #4]
	.loc 1 413 45
	ldr	r2, [r3, #20]
	.loc 1 414 31
	ldr	r1, .L49+128
.LPIC59:
	add	r1, pc, r1
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r1, r3
	ldr	r1, [r3, #4]
	.loc 1 414 38
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r1, r3
	.loc 1 414 42
	ldr	r3, [r3, #4]
	.loc 1 413 13
	ldr	r0, [r3, #12]
	.loc 1 415 31
	ldr	r1, .L49+132
.LPIC60:
	add	r1, pc, r1
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r1, r3
	ldr	r1, [r3, #4]
	.loc 1 415 38
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r1, r3
	.loc 1 415 42
	ldr	r3, [r3, #4]
	.loc 1 413 13
	ldr	r3, [r3, #4]
	mov	r1, r3
	blx	r2
.LVL3:
	.loc 1 417 29
	ldr	r2, .L49+136
.LPIC61:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 417 36
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	.loc 1 417 40
	ldr	r3, [r3, #4]
	.loc 1 417 52
	mov	r2, #0
	str	r2, [r3]
.L45:
	.loc 1 411 75 discriminator 2
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L44:
	.loc 1 411 34 discriminator 1
	ldr	r2, .L49+140
.LPIC62:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 411 41 discriminator 1
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	.loc 1 411 45 discriminator 1
	ldr	r3, [r3]
	.loc 1 411 54 discriminator 1
	cmn	r3, #1
	bne	.L46
	.loc 1 420 9
	ldr	r3, .L49+144
.LPIC63:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L49+148
.LPIC64:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mov	r3, #0
	str	r3, [sp]
	mov	r3, #420
	ldr	r2, .L49+152
.LPIC65:
	add	r2, pc, r2
	ldr	r1, .L49+156
.LPIC66:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_SC(PLT)
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L35
.L33:
	.loc 1 368 40 discriminator 2
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L32:
	.loc 1 368 12 discriminator 1
	ldr	r3, [fp, #-24]
	cmp	r3, #8
	bls	.L47
	.loc 1 423 3
	ldr	r3, .L49+160
.LPIC67:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L49+164
.LPIC68:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #768
	str	r3, [sp]
	movw	r3, #423
	ldr	r2, .L49+168
.LPIC69:
	add	r2, pc, r2
	ldr	r1, .L49+172
.LPIC70:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #768
	str	r3, [fp, #-28]
	nop
.L35:
	.loc 1 430 10
	ldr	r3, [fp, #-28]
	.loc 1 431 1
	mov	r0, r3
	sub	sp, fp, #8
	.cfi_def_cfa 13, 12
	@ sp needed
	pop	{r4, fp, pc}
.L50:
	.align	2
.L49:
	.word	GPIOIDMapping-(.LPIC27+8)
	.word	GPIOIDMapping-(.LPIC28+8)
	.word	GPIOIDMapping-(.LPIC29+8)
	.word	.LC2-(.LPIC30+8)
	.word	.LC3-(.LPIC31+8)
	.word	.LC7-(.LPIC32+8)
	.word	.LC1-(.LPIC33+8)
	.word	GPIOIDMapping-(.LPIC34+8)
	.word	GPIOIDMapping-(.LPIC35+8)
	.word	GPIOIDMapping-(.LPIC36+8)
	.word	GPIOIDMapping-(.LPIC37+8)
	.word	GPIOIDMapping-(.LPIC38+8)
	.word	GPIOIDMapping-(.LPIC39+8)
	.word	GPIOIDMapping-(.LPIC40+8)
	.word	GPIOIDMapping-(.LPIC41+8)
	.word	GPIOIDMapping-(.LPIC42+8)
	.word	GPIOIDMapping-(.LPIC43+8)
	.word	GPIOIDMapping-(.LPIC44+8)
	.word	GPIOIDMapping-(.LPIC45+8)
	.word	.LC9-(.LPIC46+8)
	.word	.LC3-(.LPIC47+8)
	.word	.LC8-(.LPIC48+8)
	.word	.LC1-(.LPIC49+8)
	.word	GPIOIDMapping-(.LPIC50+8)
	.word	GPIOIDMapping-(.LPIC51+8)
	.word	GPIOIDMapping-(.LPIC52+8)
	.word	GPIOIDMapping-(.LPIC53+8)
	.word	GPIOIDMapping-(.LPIC54+8)
	.word	GPIOIDMapping-(.LPIC55+8)
	.word	GPIOIDMapping-(.LPIC56+8)
	.word	GPIOIDMapping-(.LPIC57+8)
	.word	GPIOIDMapping-(.LPIC58+8)
	.word	GPIOIDMapping-(.LPIC59+8)
	.word	GPIOIDMapping-(.LPIC60+8)
	.word	GPIOIDMapping-(.LPIC61+8)
	.word	GPIOIDMapping-(.LPIC62+8)
	.word	.LC5-(.LPIC63+8)
	.word	.LC3-(.LPIC64+8)
	.word	.LC8-(.LPIC65+8)
	.word	.LC1-(.LPIC66+8)
	.word	.LC6-(.LPIC67+8)
	.word	.LC3-(.LPIC68+8)
	.word	.LC8-(.LPIC69+8)
	.word	.LC1-(.LPIC70+8)
	.cfi_endproc
.LFE6:
	.size	EApiGPIOSetLevelEmul, .-EApiGPIOSetLevelEmul
	.section	.rodata
	.align	2
.LC10:
	.ascii	"EApiGPIOGetDirectionEmul\000"
	.align	2
.LC11:
	.ascii	"EApiGPIOGetDirection\000"
	.text
	.align	2
	.global	EApiGPIOGetDirectionEmul
	.hidden	EApiGPIOGetDirectionEmul
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiGPIOGetDirectionEmul, %function
EApiGPIOGetDirectionEmul:
.LFB7:
	.loc 1 439 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #8
	.cfi_def_cfa 11, 4
	sub	sp, sp, #52
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	str	r2, [fp, #-40]
	.loc 1 440 16
	mov	r3, #0
	str	r3, [fp, #-28]
	.loc 1 442 12
	mov	r3, #1
	str	r3, [fp, #-16]
	.loc 1 444 8
	mov	r3, #0
	str	r3, [fp, #-24]
	.loc 1 444 3
	b	.L52
.L62:
	.loc 1 446 26
	ldr	r3, .L64
.LPIC71:
	add	r3, pc, r3
	ldr	r2, [fp, #-24]
	ldr	r3, [r3, r2, lsl #4]
	.loc 1 446 9
	ldr	r2, [fp, #-32]
	cmp	r2, r3
	bne	.L53
	.loc 1 448 9
	ldr	r2, .L64+4
.LPIC72:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #8]
	ldr	r1, .L64+8
.LPIC73:
	add	r1, pc, r1
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r1, r3
	ldr	r3, [r3, #12]
	orr	r3, r2, r3
	mvn	r2, r3
	ldr	r3, [fp, #-36]
	and	r3, r3, r2
	cmp	r3, #0
	beq	.L54
	.loc 1 448 9 is_stmt 0 discriminator 1
	ldr	r3, .L64+12
.LPIC74:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L64+16
.LPIC75:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #260
	str	r3, [sp]
	mov	r3, #448
	ldr	r2, .L64+20
.LPIC76:
	add	r2, pc, r2
	ldr	r1, .L64+24
.LPIC77:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #260
	str	r3, [fp, #-28]
	b	.L55
.L54:
	.loc 1 454 15 is_stmt 1
	mov	r3, #0
	str	r3, [fp, #-20]
	.loc 1 454 9
	b	.L56
.L57:
	.loc 1 455 27 discriminator 3
	ldr	r2, .L64+28
.LPIC78:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 455 34 discriminator 3
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	.loc 1 455 38 discriminator 3
	ldr	r3, [r3, #4]
	.loc 1 455 50 discriminator 3
	mov	r2, #0
	str	r2, [r3]
	.loc 1 454 75 discriminator 3
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L56:
	.loc 1 454 34 discriminator 1
	ldr	r2, .L64+32
.LPIC79:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 454 41 discriminator 1
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	.loc 1 454 45 discriminator 1
	ldr	r3, [r3]
	.loc 1 454 54 discriminator 1
	cmn	r3, #1
	bne	.L57
	.loc 1 457 20
	ldr	r3, [fp, #-40]
	mov	r2, #0
	str	r2, [r3]
	.loc 1 458 15
	mov	r3, #0
	str	r3, [fp, #-20]
	.loc 1 458 9
	b	.L58
.L61:
	.loc 1 459 22
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-16]
	and	r3, r3, r2
	.loc 1 459 13
	cmp	r3, #0
	beq	.L59
	.loc 1 461 32
	ldr	r2, .L64+36
.LPIC80:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 461 39
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	.loc 1 461 43
	ldr	r3, [r3, #4]
	.loc 1 461 48
	ldr	r3, [r3]
	.loc 1 461 15
	cmp	r3, #0
	bne	.L60
	.loc 1 462 71
	ldr	r2, .L64+40
.LPIC81:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 462 78
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	.loc 1 462 82
	ldr	r3, [r3, #4]
	.loc 1 462 87
	ldr	r2, [r3, #24]
	.loc 1 463 33
	ldr	r1, .L64+44
.LPIC82:
	add	r1, pc, r1
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r1, r3
	ldr	r1, [r3, #4]
	.loc 1 463 40
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r1, r3
	.loc 1 463 44
	ldr	r3, [r3, #4]
	.loc 1 462 55
	ldr	r0, [r3, #16]
	.loc 1 462 31
	ldr	r1, .L64+48
.LPIC83:
	add	r1, pc, r1
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r1, r3
	ldr	r1, [r3, #4]
	.loc 1 462 38
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r1, r3
	.loc 1 462 42
	ldr	r4, [r3, #4]
	.loc 1 462 55
	blx	r2
.LVL4:
	mov	r3, r0
	.loc 1 462 54
	str	r3, [r4, #4]
	.loc 1 465 31
	ldr	r2, .L64+52
.LPIC84:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 465 38
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	.loc 1 465 42
	ldr	r3, [r3, #4]
	.loc 1 465 54
	mov	r2, #1
	str	r2, [r3]
.L60:
	.loc 1 467 32
	ldr	r2, .L64+56
.LPIC85:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 467 39
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	.loc 1 467 43
	ldr	r3, [r3, #4]
	.loc 1 467 48
	ldr	r2, [r3, #4]
	.loc 1 467 72
	ldr	r1, .L64+60
.LPIC86:
	add	r1, pc, r1
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r1, r3
	ldr	r1, [r3, #4]
	.loc 1 467 79
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r1, r3
	.loc 1 467 83
	ldr	r3, [r3]
	.loc 1 467 55
	and	r3, r3, r2
	.loc 1 467 15
	cmp	r3, #0
	beq	.L59
	.loc 1 468 26
	ldr	r3, [fp, #-40]
	ldr	r2, [r3]
	ldr	r3, [fp, #-16]
	orr	r2, r2, r3
	ldr	r3, [fp, #-40]
	str	r2, [r3]
.L59:
	.loc 1 470 21 discriminator 2
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #1
	str	r3, [fp, #-16]
	.loc 1 458 75 discriminator 2
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L58:
	.loc 1 458 34 discriminator 1
	ldr	r2, .L64+64
.LPIC87:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 458 41 discriminator 1
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	.loc 1 458 45 discriminator 1
	ldr	r3, [r3]
	.loc 1 458 54 discriminator 1
	cmn	r3, #1
	bne	.L61
	.loc 1 472 9
	ldr	r3, .L64+68
.LPIC88:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L64+72
.LPIC89:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mov	r3, #0
	str	r3, [sp]
	mov	r3, #472
	ldr	r2, .L64+76
.LPIC90:
	add	r2, pc, r2
	ldr	r1, .L64+80
.LPIC91:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_SC(PLT)
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L55
.L53:
	.loc 1 444 40 discriminator 2
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L52:
	.loc 1 444 12 discriminator 1
	ldr	r3, [fp, #-24]
	cmp	r3, #8
	bls	.L62
	.loc 1 475 3
	ldr	r3, .L64+84
.LPIC92:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L64+88
.LPIC93:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #768
	str	r3, [sp]
	movw	r3, #475
	ldr	r2, .L64+92
.LPIC94:
	add	r2, pc, r2
	ldr	r1, .L64+96
.LPIC95:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #768
	str	r3, [fp, #-28]
	nop
.L55:
	.loc 1 482 10
	ldr	r3, [fp, #-28]
	.loc 1 483 1
	mov	r0, r3
	sub	sp, fp, #8
	.cfi_def_cfa 13, 12
	@ sp needed
	pop	{r4, fp, pc}
.L65:
	.align	2
.L64:
	.word	GPIOIDMapping-(.LPIC71+8)
	.word	GPIOIDMapping-(.LPIC72+8)
	.word	GPIOIDMapping-(.LPIC73+8)
	.word	.LC2-(.LPIC74+8)
	.word	.LC3-(.LPIC75+8)
	.word	.LC10-(.LPIC76+8)
	.word	.LC1-(.LPIC77+8)
	.word	GPIOIDMapping-(.LPIC78+8)
	.word	GPIOIDMapping-(.LPIC79+8)
	.word	GPIOIDMapping-(.LPIC80+8)
	.word	GPIOIDMapping-(.LPIC81+8)
	.word	GPIOIDMapping-(.LPIC82+8)
	.word	GPIOIDMapping-(.LPIC83+8)
	.word	GPIOIDMapping-(.LPIC84+8)
	.word	GPIOIDMapping-(.LPIC85+8)
	.word	GPIOIDMapping-(.LPIC86+8)
	.word	GPIOIDMapping-(.LPIC87+8)
	.word	.LC5-(.LPIC88+8)
	.word	.LC3-(.LPIC89+8)
	.word	.LC11-(.LPIC90+8)
	.word	.LC1-(.LPIC91+8)
	.word	.LC6-(.LPIC92+8)
	.word	.LC3-(.LPIC93+8)
	.word	.LC11-(.LPIC94+8)
	.word	.LC1-(.LPIC95+8)
	.cfi_endproc
.LFE7:
	.size	EApiGPIOGetDirectionEmul, .-EApiGPIOGetDirectionEmul
	.section	.rodata
	.align	2
.LC12:
	.ascii	"EApiGPIOSetDirectionEmul\000"
	.align	2
.LC13:
	.ascii	"Unsupported Input Bits\000"
	.align	2
.LC14:
	.ascii	"Unsupported Output Bits\000"
	.align	2
.LC15:
	.ascii	"EApiGPIOSetDirection\000"
	.text
	.align	2
	.global	EApiGPIOSetDirectionEmul
	.hidden	EApiGPIOSetDirectionEmul
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiGPIOSetDirectionEmul, %function
EApiGPIOSetDirectionEmul:
.LFB8:
	.loc 1 491 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #8
	.cfi_def_cfa 11, 4
	sub	sp, sp, #52
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	str	r2, [fp, #-40]
	.loc 1 492 16
	mov	r3, #0
	str	r3, [fp, #-28]
	.loc 1 494 12
	mov	r3, #1
	str	r3, [fp, #-16]
	.loc 1 495 8
	mov	r3, #0
	str	r3, [fp, #-24]
	.loc 1 495 3
	b	.L67
.L83:
	.loc 1 497 26
	ldr	r3, .L85
.LPIC96:
	add	r3, pc, r3
	ldr	r2, [fp, #-24]
	ldr	r3, [r3, r2, lsl #4]
	.loc 1 497 9
	ldr	r2, [fp, #-32]
	cmp	r2, r3
	bne	.L68
	.loc 1 499 9
	ldr	r2, .L85+4
.LPIC97:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #8]
	ldr	r1, .L85+8
.LPIC98:
	add	r1, pc, r1
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r1, r3
	ldr	r3, [r3, #12]
	orr	r3, r2, r3
	mvn	r2, r3
	ldr	r3, [fp, #-36]
	and	r3, r3, r2
	cmp	r3, #0
	beq	.L69
	.loc 1 499 9 is_stmt 0 discriminator 1
	ldr	r3, .L85+12
.LPIC99:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L85+16
.LPIC100:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #260
	str	r3, [sp]
	movw	r3, #499
	ldr	r2, .L85+20
.LPIC101:
	add	r2, pc, r2
	ldr	r1, .L85+24
.LPIC102:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #260
	str	r3, [fp, #-28]
	b	.L70
.L69:
	.loc 1 505 9 is_stmt 1
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-40]
	and	r2, r2, r3
	ldr	r1, .L85+28
.LPIC103:
	add	r1, pc, r1
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r1, r3
	ldr	r3, [r3, #12]
	mvn	r3, r3
	and	r3, r3, r2
	cmp	r3, #0
	beq	.L71
	.loc 1 505 9 is_stmt 0 discriminator 1
	ldr	r3, .L85+32
.LPIC104:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L85+36
.LPIC105:
	add	r3, pc, r3
	str	r3, [sp, #4]
	movw	r3, #65276
	movt	r3, 65535
	str	r3, [sp]
	movw	r3, #505
	ldr	r2, .L85+40
.LPIC106:
	add	r2, pc, r2
	ldr	r1, .L85+44
.LPIC107:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	movw	r3, #65276
	movt	r3, 65535
	str	r3, [fp, #-28]
	b	.L70
.L71:
	.loc 1 511 9 is_stmt 1
	ldr	r3, [fp, #-40]
	mvn	r2, r3
	ldr	r3, [fp, #-36]
	and	r2, r2, r3
	ldr	r1, .L85+48
.LPIC108:
	add	r1, pc, r1
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r1, r3
	ldr	r3, [r3, #8]
	mvn	r3, r3
	and	r3, r3, r2
	cmp	r3, #0
	beq	.L72
	.loc 1 511 9 is_stmt 0 discriminator 1
	ldr	r3, .L85+52
.LPIC109:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L85+56
.LPIC110:
	add	r3, pc, r3
	str	r3, [sp, #4]
	movw	r3, #65276
	movt	r3, 65535
	str	r3, [sp]
	movw	r3, #511
	ldr	r2, .L85+60
.LPIC111:
	add	r2, pc, r2
	ldr	r1, .L85+64
.LPIC112:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	movw	r3, #65276
	movt	r3, 65535
	str	r3, [fp, #-28]
	b	.L70
.L72:
	.loc 1 517 15 is_stmt 1
	mov	r3, #0
	str	r3, [fp, #-20]
	.loc 1 517 9
	b	.L73
.L74:
	.loc 1 518 27 discriminator 3
	ldr	r2, .L85+68
.LPIC113:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 518 34 discriminator 3
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	.loc 1 518 38 discriminator 3
	ldr	r3, [r3, #4]
	.loc 1 518 50 discriminator 3
	mov	r2, #0
	str	r2, [r3]
	.loc 1 517 75 discriminator 3
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L73:
	.loc 1 517 34 discriminator 1
	ldr	r2, .L85+72
.LPIC114:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 517 41 discriminator 1
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	.loc 1 517 45 discriminator 1
	ldr	r3, [r3]
	.loc 1 517 54 discriminator 1
	cmn	r3, #1
	bne	.L74
	.loc 1 520 15
	mov	r3, #0
	str	r3, [fp, #-20]
	.loc 1 520 9
	b	.L75
.L79:
	.loc 1 522 22
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-16]
	and	r3, r3, r2
	.loc 1 522 13
	cmp	r3, #0
	beq	.L76
	.loc 1 524 32
	ldr	r2, .L85+76
.LPIC115:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 524 39
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	.loc 1 524 43
	ldr	r3, [r3, #4]
	.loc 1 524 48
	ldr	r3, [r3]
	.loc 1 524 15
	cmp	r3, #0
	bne	.L77
	.loc 1 525 71
	ldr	r2, .L85+80
.LPIC116:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 525 78
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	.loc 1 525 82
	ldr	r3, [r3, #4]
	.loc 1 525 87
	ldr	r2, [r3, #24]
	.loc 1 526 33
	ldr	r1, .L85+84
.LPIC117:
	add	r1, pc, r1
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r1, r3
	ldr	r1, [r3, #4]
	.loc 1 526 40
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r1, r3
	.loc 1 526 44
	ldr	r3, [r3, #4]
	.loc 1 525 55
	ldr	r0, [r3, #16]
	.loc 1 525 31
	ldr	r1, .L85+88
.LPIC118:
	add	r1, pc, r1
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r1, r3
	ldr	r1, [r3, #4]
	.loc 1 525 38
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r1, r3
	.loc 1 525 42
	ldr	r4, [r3, #4]
	.loc 1 525 55
	blx	r2
.LVL5:
	mov	r3, r0
	.loc 1 525 54
	str	r3, [r4, #4]
	.loc 1 528 31
	ldr	r2, .L85+92
.LPIC119:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 528 38
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	.loc 1 528 42
	ldr	r3, [r3, #4]
	.loc 1 528 54
	mov	r2, #1
	str	r2, [r3]
.L77:
	.loc 1 530 25
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-16]
	and	r3, r3, r2
	.loc 1 530 15
	cmp	r3, #0
	beq	.L78
	.loc 1 532 31
	ldr	r2, .L85+96
.LPIC120:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 532 38
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	.loc 1 532 42
	ldr	r3, [r3, #4]
	.loc 1 532 54
	ldr	r1, [r3, #4]
	.loc 1 532 72
	ldr	r2, .L85+100
.LPIC121:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 532 79
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	.loc 1 532 83
	ldr	r2, [r3]
	.loc 1 532 31
	ldr	r0, .L85+104
.LPIC122:
	add	r0, pc, r0
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r0, r3
	ldr	r0, [r3, #4]
	.loc 1 532 38
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r0, r3
	.loc 1 532 42
	ldr	r3, [r3, #4]
	.loc 1 532 54
	orr	r2, r1, r2
	str	r2, [r3, #4]
	b	.L76
.L78:
	.loc 1 536 31
	ldr	r2, .L85+108
.LPIC123:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 536 38
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	.loc 1 536 42
	ldr	r3, [r3, #4]
	.loc 1 536 54
	ldr	r1, [r3, #4]
	.loc 1 536 73
	ldr	r2, .L85+112
.LPIC124:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 536 80
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	.loc 1 536 84
	ldr	r3, [r3]
	.loc 1 536 56
	mvn	r2, r3
	.loc 1 536 31
	ldr	r0, .L85+116
.LPIC125:
	add	r0, pc, r0
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r0, r3
	ldr	r0, [r3, #4]
	.loc 1 536 38
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r0, r3
	.loc 1 536 42
	ldr	r3, [r3, #4]
	.loc 1 536 54
	and	r2, r2, r1
	str	r2, [r3, #4]
.L76:
	.loc 1 539 21 discriminator 2
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #1
	str	r3, [fp, #-16]
	.loc 1 520 75 discriminator 2
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L75:
	.loc 1 520 34 discriminator 1
	ldr	r2, .L85+120
.LPIC126:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 520 41 discriminator 1
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	.loc 1 520 45 discriminator 1
	ldr	r3, [r3]
	.loc 1 520 54 discriminator 1
	cmn	r3, #1
	bne	.L79
	.loc 1 541 15
	mov	r3, #0
	str	r3, [fp, #-20]
	.loc 1 541 9
	b	.L80
.L82:
	.loc 1 542 30
	ldr	r2, .L85+124
.LPIC127:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 542 37
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	.loc 1 542 41
	ldr	r3, [r3, #4]
	.loc 1 542 46
	ldr	r3, [r3]
	.loc 1 542 13
	cmp	r3, #1
	bne	.L81
	.loc 1 543 29
	ldr	r2, .L85+128
.LPIC128:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 543 36
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	.loc 1 543 40
	ldr	r3, [r3, #4]
	.loc 1 543 45
	ldr	r2, [r3, #20]
	.loc 1 544 31
	ldr	r1, .L85+132
.LPIC129:
	add	r1, pc, r1
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r1, r3
	ldr	r1, [r3, #4]
	.loc 1 544 38
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r1, r3
	.loc 1 544 42
	ldr	r3, [r3, #4]
	.loc 1 543 13
	ldr	r0, [r3, #16]
	.loc 1 545 31
	ldr	r1, .L85+136
.LPIC130:
	add	r1, pc, r1
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r1, r3
	ldr	r1, [r3, #4]
	.loc 1 545 38
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r1, r3
	.loc 1 545 42
	ldr	r3, [r3, #4]
	.loc 1 543 13
	ldr	r3, [r3, #4]
	mov	r1, r3
	blx	r2
.LVL6:
	.loc 1 547 29
	ldr	r2, .L85+140
.LPIC131:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 547 36
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	.loc 1 547 40
	ldr	r3, [r3, #4]
	.loc 1 547 52
	mov	r2, #0
	str	r2, [r3]
.L81:
	.loc 1 541 75 discriminator 2
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L80:
	.loc 1 541 34 discriminator 1
	ldr	r2, .L85+144
.LPIC132:
	add	r2, pc, r2
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 541 41 discriminator 1
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	.loc 1 541 45 discriminator 1
	ldr	r3, [r3]
	.loc 1 541 54 discriminator 1
	cmn	r3, #1
	bne	.L82
	.loc 1 550 9
	ldr	r3, .L85+148
.LPIC133:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L85+152
.LPIC134:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mov	r3, #0
	str	r3, [sp]
	movw	r3, #550
	ldr	r2, .L85+156
.LPIC135:
	add	r2, pc, r2
	ldr	r1, .L85+160
.LPIC136:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_SC(PLT)
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L70
.L68:
	.loc 1 495 40 discriminator 2
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L67:
	.loc 1 495 12 discriminator 1
	ldr	r3, [fp, #-24]
	cmp	r3, #8
	bls	.L83
	.loc 1 553 3
	ldr	r3, .L85+164
.LPIC137:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L85+168
.LPIC138:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #768
	str	r3, [sp]
	movw	r3, #553
	ldr	r2, .L85+172
.LPIC139:
	add	r2, pc, r2
	ldr	r1, .L85+176
.LPIC140:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #768
	str	r3, [fp, #-28]
	nop
.L70:
	.loc 1 560 10
	ldr	r3, [fp, #-28]
	.loc 1 561 1
	mov	r0, r3
	sub	sp, fp, #8
	.cfi_def_cfa 13, 12
	@ sp needed
	pop	{r4, fp, pc}
.L86:
	.align	2
.L85:
	.word	GPIOIDMapping-(.LPIC96+8)
	.word	GPIOIDMapping-(.LPIC97+8)
	.word	GPIOIDMapping-(.LPIC98+8)
	.word	.LC2-(.LPIC99+8)
	.word	.LC3-(.LPIC100+8)
	.word	.LC12-(.LPIC101+8)
	.word	.LC1-(.LPIC102+8)
	.word	GPIOIDMapping-(.LPIC103+8)
	.word	.LC13-(.LPIC104+8)
	.word	.LC3-(.LPIC105+8)
	.word	.LC12-(.LPIC106+8)
	.word	.LC1-(.LPIC107+8)
	.word	GPIOIDMapping-(.LPIC108+8)
	.word	.LC14-(.LPIC109+8)
	.word	.LC3-(.LPIC110+8)
	.word	.LC12-(.LPIC111+8)
	.word	.LC1-(.LPIC112+8)
	.word	GPIOIDMapping-(.LPIC113+8)
	.word	GPIOIDMapping-(.LPIC114+8)
	.word	GPIOIDMapping-(.LPIC115+8)
	.word	GPIOIDMapping-(.LPIC116+8)
	.word	GPIOIDMapping-(.LPIC117+8)
	.word	GPIOIDMapping-(.LPIC118+8)
	.word	GPIOIDMapping-(.LPIC119+8)
	.word	GPIOIDMapping-(.LPIC120+8)
	.word	GPIOIDMapping-(.LPIC121+8)
	.word	GPIOIDMapping-(.LPIC122+8)
	.word	GPIOIDMapping-(.LPIC123+8)
	.word	GPIOIDMapping-(.LPIC124+8)
	.word	GPIOIDMapping-(.LPIC125+8)
	.word	GPIOIDMapping-(.LPIC126+8)
	.word	GPIOIDMapping-(.LPIC127+8)
	.word	GPIOIDMapping-(.LPIC128+8)
	.word	GPIOIDMapping-(.LPIC129+8)
	.word	GPIOIDMapping-(.LPIC130+8)
	.word	GPIOIDMapping-(.LPIC131+8)
	.word	GPIOIDMapping-(.LPIC132+8)
	.word	.LC5-(.LPIC133+8)
	.word	.LC3-(.LPIC134+8)
	.word	.LC15-(.LPIC135+8)
	.word	.LC1-(.LPIC136+8)
	.word	.LC6-(.LPIC137+8)
	.word	.LC3-(.LPIC138+8)
	.word	.LC15-(.LPIC139+8)
	.word	.LC1-(.LPIC140+8)
	.cfi_endproc
.LFE8:
	.size	EApiGPIOSetDirectionEmul, .-EApiGPIOSetDirectionEmul
	.section	.rodata
	.align	2
.LC16:
	.ascii	"EApiGPIOGetDirectionCaps\000"
	.text
	.align	2
	.global	EApiGPIOGetDirectionCapsEmul
	.hidden	EApiGPIOGetDirectionCapsEmul
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiGPIOGetDirectionCapsEmul, %function
EApiGPIOGetDirectionCapsEmul:
.LFB9:
	.loc 1 569 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #40
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	.loc 1 570 16
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 573 8
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 573 3
	b	.L88
.L91:
	.loc 1 575 26
	ldr	r3, .L93
.LPIC141:
	add	r3, pc, r3
	ldr	r2, [fp, #-8]
	ldr	r3, [r3, r2, lsl #4]
	.loc 1 575 9
	ldr	r2, [fp, #-16]
	cmp	r2, r3
	bne	.L89
	.loc 1 577 34
	ldr	r2, .L93+4
.LPIC142:
	add	r2, pc, r2
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #12]
	.loc 1 577 17
	ldr	r3, [fp, #-20]
	str	r2, [r3]
	.loc 1 578 35
	ldr	r2, .L93+8
.LPIC143:
	add	r2, pc, r2
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #4
	add	r3, r2, r3
	ldr	r2, [r3, #8]
	.loc 1 578 18
	ldr	r3, [fp, #-24]
	str	r2, [r3]
	.loc 1 579 9
	ldr	r3, .L93+12
.LPIC144:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L93+16
.LPIC145:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mov	r3, #0
	str	r3, [sp]
	movw	r3, #579
	ldr	r2, .L93+20
.LPIC146:
	add	r2, pc, r2
	ldr	r1, .L93+24
.LPIC147:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_SC(PLT)
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L90
.L89:
	.loc 1 573 40 discriminator 2
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L88:
	.loc 1 573 12 discriminator 1
	ldr	r3, [fp, #-8]
	cmp	r3, #8
	bls	.L91
	.loc 1 582 3
	ldr	r3, .L93+28
.LPIC148:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L93+32
.LPIC149:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #768
	str	r3, [sp]
	movw	r3, #582
	ldr	r2, .L93+36
.LPIC150:
	add	r2, pc, r2
	ldr	r1, .L93+40
.LPIC151:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #768
	str	r3, [fp, #-12]
	nop
.L90:
	.loc 1 589 10
	ldr	r3, [fp, #-12]
	.loc 1 590 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L94:
	.align	2
.L93:
	.word	GPIOIDMapping-(.LPIC141+8)
	.word	GPIOIDMapping-(.LPIC142+8)
	.word	GPIOIDMapping-(.LPIC143+8)
	.word	.LC5-(.LPIC144+8)
	.word	.LC3-(.LPIC145+8)
	.word	.LC16-(.LPIC146+8)
	.word	.LC1-(.LPIC147+8)
	.word	.LC6-(.LPIC148+8)
	.word	.LC3-(.LPIC149+8)
	.word	.LC16-(.LPIC150+8)
	.word	.LC1-(.LPIC151+8)
	.cfi_endproc
.LFE9:
	.size	EApiGPIOGetDirectionCapsEmul, .-EApiGPIOGetDirectionCapsEmul
.Letext0:
	.file 2 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/bits/alltypes.h"
	.file 3 "../../include/EApi.h"
	.file 4 "../include/DbgChk.h"
	.file 5 "../../include/linux/EApiOs.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x6c7
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0x1d
	.4byte	.LASF70
	.4byte	.LASF71
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x15
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x30
	.byte	0x18
	.4byte	0x26
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x72
	.byte	0x19
	.4byte	0x68
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x7c
	.byte	0x19
	.4byte	0x26
	.uleb128 0x5
	.4byte	0x76
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.uleb128 0x5
	.4byte	0x8e
	.uleb128 0xa
	.4byte	0x95
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x91
	.byte	0x12
	.4byte	0x76
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x92
	.byte	0x12
	.4byte	0x76
	.uleb128 0x5
	.4byte	0xb2
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x1
	.byte	0x44
	.byte	0x12
	.4byte	0xcf
	.uleb128 0x16
	.4byte	0x76
	.4byte	0xde
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x1
	.byte	0x45
	.byte	0x12
	.4byte	0xea
	.uleb128 0x17
	.4byte	0xfa
	.uleb128 0x2
	.4byte	0x76
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0xf
	.4byte	0x76
	.4byte	0x10a
	.uleb128 0x10
	.4byte	0x26
	.byte	0x3
	.byte	0
	.uleb128 0x18
	.4byte	.LASF49
	.byte	0x1
	.byte	0x57
	.byte	0x11
	.4byte	0xfa
	.uleb128 0x5
	.byte	0x3
	.4byte	EmulatedIoBlock
	.uleb128 0x13
	.4byte	.LASF25
	.byte	0x1c
	.byte	0x8b
	.4byte	0x17c
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x8c
	.byte	0xe
	.4byte	0x76
	.byte	0
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x8d
	.byte	0xe
	.4byte	0x76
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x8f
	.byte	0xe
	.4byte	0x76
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x91
	.byte	0xe
	.4byte	0x76
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x92
	.byte	0xe
	.4byte	0x76
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x93
	.byte	0x18
	.4byte	0x17c
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x94
	.byte	0x17
	.4byte	0x181
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.4byte	0xde
	.uleb128 0xa
	.4byte	0xc3
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x1
	.byte	0x95
	.byte	0x2
	.4byte	0x11c
	.uleb128 0x13
	.4byte	.LASF26
	.byte	0x8
	.byte	0x96
	.4byte	0x1b6
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x97
	.byte	0xc
	.4byte	0x76
	.byte	0
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x98
	.byte	0x15
	.4byte	0x1b6
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.4byte	0x186
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x1
	.byte	0x99
	.byte	0x2
	.4byte	0x192
	.uleb128 0x5
	.4byte	0x1bb
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x9a
	.byte	0x12
	.4byte	0x186
	.uleb128 0x5
	.byte	0x3
	.4byte	Port1Desc
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0xa4
	.byte	0x12
	.4byte	0x186
	.uleb128 0x5
	.byte	0x3
	.4byte	Port2Desc
	.uleb128 0xf
	.4byte	0x1c7
	.4byte	0x1fe
	.uleb128 0x10
	.4byte	0x26
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.4byte	0x1ee
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0xae
	.byte	0x19
	.4byte	0x1fe
	.uleb128 0x5
	.byte	0x3
	.4byte	GpioMappingID0
	.uleb128 0xf
	.4byte	0x1c7
	.4byte	0x224
	.uleb128 0x10
	.4byte	0x26
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	0x214
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0xd9
	.byte	0x19
	.4byte	0x224
	.uleb128 0x5
	.byte	0x3
	.4byte	GpioMappingID1
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0xe1
	.byte	0x19
	.4byte	0x224
	.uleb128 0x5
	.byte	0x3
	.4byte	GpioMappingID2
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0xe9
	.byte	0x19
	.4byte	0x224
	.uleb128 0x5
	.byte	0x3
	.4byte	GpioMappingID3
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0xf1
	.byte	0x19
	.4byte	0x224
	.uleb128 0x5
	.byte	0x3
	.4byte	GpioMappingID4
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0xf9
	.byte	0x19
	.4byte	0x224
	.uleb128 0x5
	.byte	0x3
	.4byte	GpioMappingID5
	.uleb128 0x11
	.4byte	.LASF38
	.2byte	0x101
	.byte	0x19
	.4byte	0x224
	.uleb128 0x5
	.byte	0x3
	.4byte	GpioMappingID6
	.uleb128 0x11
	.4byte	.LASF39
	.2byte	0x109
	.byte	0x19
	.4byte	0x224
	.uleb128 0x5
	.byte	0x3
	.4byte	GpioMappingID7
	.uleb128 0x11
	.4byte	.LASF40
	.2byte	0x111
	.byte	0x19
	.4byte	0x224
	.uleb128 0x5
	.byte	0x3
	.4byte	GpioMappingID8
	.uleb128 0x19
	.4byte	.LASF41
	.byte	0x10
	.byte	0x1
	.2byte	0x119
	.byte	0x10
	.4byte	0x2f7
	.uleb128 0x1a
	.ascii	"Id\000"
	.byte	0x1
	.2byte	0x11a
	.byte	0x12
	.4byte	0xbe
	.byte	0
	.uleb128 0x12
	.4byte	.LASF42
	.2byte	0x11b
	.byte	0x22
	.4byte	0x2fc
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF43
	.2byte	0x11c
	.byte	0x12
	.4byte	0x82
	.byte	0x8
	.uleb128 0x12
	.4byte	.LASF44
	.2byte	0x11d
	.byte	0x12
	.4byte	0x82
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.4byte	0x1c7
	.uleb128 0x5
	.4byte	0x2f7
	.uleb128 0x1b
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x11e
	.byte	0x2
	.4byte	0x2b4
	.uleb128 0x5
	.4byte	0x301
	.uleb128 0xf
	.4byte	0x30e
	.4byte	0x323
	.uleb128 0x10
	.4byte	0x26
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.4byte	0x313
	.uleb128 0x11
	.4byte	.LASF46
	.2byte	0x11f
	.byte	0x1b
	.4byte	0x323
	.uleb128 0x5
	.byte	0x3
	.4byte	GPIOIDMapping
	.uleb128 0x1c
	.4byte	.LASF72
	.byte	0x4
	.byte	0x3e
	.byte	0x1
	.4byte	0x2d
	.4byte	0x36a
	.uleb128 0x2
	.4byte	0x8e
	.uleb128 0x2
	.4byte	0x9a
	.uleb128 0x2
	.4byte	0x9a
	.uleb128 0x2
	.4byte	0x26
	.uleb128 0x2
	.4byte	0xa6
	.uleb128 0x2
	.4byte	0x9a
	.uleb128 0x1d
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF73
	.byte	0x5
	.byte	0x6e
	.byte	0x6
	.4byte	0x37c
	.uleb128 0x2
	.4byte	0x9f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF51
	.2byte	0x234
	.4byte	0xa6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3e9
	.uleb128 0xd
	.ascii	"Id\000"
	.2byte	0x235
	.byte	0x17
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF47
	.2byte	0x236
	.byte	0x17
	.4byte	0x3e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF48
	.2byte	0x237
	.byte	0x17
	.4byte	0x3e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.4byte	.LASF50
	.2byte	0x23a
	.byte	0x10
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x8
	.ascii	"i\000"
	.2byte	0x23b
	.byte	0xc
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xe
	.4byte	.LASF56
	.2byte	0x24b
	.4byte	.L90
	.byte	0
	.uleb128 0xa
	.4byte	0x76
	.uleb128 0xc
	.4byte	.LASF52
	.2byte	0x1e6
	.4byte	0xa6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x478
	.uleb128 0xd
	.ascii	"Id\000"
	.2byte	0x1e7
	.byte	0x13
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF53
	.2byte	0x1e8
	.byte	0x13
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF54
	.2byte	0x1e9
	.byte	0x13
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.4byte	.LASF50
	.2byte	0x1ec
	.byte	0x10
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.ascii	"i\000"
	.2byte	0x1ed
	.byte	0xc
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.ascii	"i2\000"
	.2byte	0x1ed
	.byte	0xe
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.4byte	.LASF55
	.2byte	0x1ee
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.4byte	.LASF56
	.2byte	0x22e
	.4byte	.L70
	.byte	0
	.uleb128 0xc
	.4byte	.LASF57
	.2byte	0x1b2
	.4byte	0xa6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x502
	.uleb128 0xd
	.ascii	"Id\000"
	.2byte	0x1b3
	.byte	0x13
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF53
	.2byte	0x1b4
	.byte	0x13
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF58
	.2byte	0x1b5
	.byte	0x13
	.4byte	0x3e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.4byte	.LASF50
	.2byte	0x1b8
	.byte	0x10
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.ascii	"i\000"
	.2byte	0x1b9
	.byte	0xc
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.ascii	"i2\000"
	.2byte	0x1b9
	.byte	0xe
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.4byte	.LASF55
	.2byte	0x1ba
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.4byte	.LASF56
	.2byte	0x1e0
	.4byte	.L55
	.byte	0
	.uleb128 0xc
	.4byte	.LASF59
	.2byte	0x167
	.4byte	0xa6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x58c
	.uleb128 0xd
	.ascii	"Id\000"
	.2byte	0x168
	.byte	0x11
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF53
	.2byte	0x169
	.byte	0x11
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF60
	.2byte	0x16a
	.byte	0x11
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.4byte	.LASF50
	.2byte	0x16d
	.byte	0x10
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.ascii	"i\000"
	.2byte	0x16e
	.byte	0xc
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.ascii	"i2\000"
	.2byte	0x16e
	.byte	0xe
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.4byte	.LASF55
	.2byte	0x16f
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.4byte	.LASF56
	.2byte	0x1ac
	.4byte	.L35
	.byte	0
	.uleb128 0xc
	.4byte	.LASF61
	.2byte	0x132
	.4byte	0xa6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x616
	.uleb128 0xd
	.ascii	"Id\000"
	.2byte	0x133
	.byte	0x15
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF53
	.2byte	0x134
	.byte	0x15
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF62
	.2byte	0x135
	.byte	0x15
	.4byte	0x3e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.4byte	.LASF50
	.2byte	0x138
	.byte	0x10
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.ascii	"i\000"
	.2byte	0x139
	.byte	0xc
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.ascii	"i2\000"
	.2byte	0x139
	.byte	0xe
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.4byte	.LASF55
	.2byte	0x13a
	.byte	0xc
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.4byte	.LASF56
	.2byte	0x161
	.4byte	.L20
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF63
	.byte	0x1
	.byte	0x7d
	.byte	0xa
	.4byte	0x76
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x63f
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x7d
	.byte	0x25
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x20
	.4byte	.LASF66
	.byte	0x1
	.byte	0x77
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x672
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x77
	.byte	0x22
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0x77
	.byte	0x37
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x21
	.4byte	.LASF67
	.byte	0x1
	.byte	0x6e
	.byte	0x6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6a5
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x6e
	.byte	0x1d
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0x6e
	.byte	0x32
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x22
	.4byte	.LASF68
	.byte	0x1
	.byte	0x65
	.byte	0xa
	.4byte	0x76
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x65
	.byte	0x20
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF54:
	.ascii	"Direction\000"
.LASF64:
	.ascii	"ByteOffset\000"
.LASF43:
	.ascii	"OutputMask\000"
.LASF44:
	.ascii	"InputMask\000"
.LASF41:
	.ascii	"GPIOIDMappingsTbl_s\000"
.LASF45:
	.ascii	"GPIOIDMappingsTbl_t\000"
.LASF4:
	.ascii	"short int\000"
.LASF67:
	.ascii	"EApiWriteIO32\000"
.LASF32:
	.ascii	"GpioMappingID0\000"
.LASF33:
	.ascii	"GpioMappingID1\000"
.LASF34:
	.ascii	"GpioMappingID2\000"
.LASF35:
	.ascii	"GpioMappingID3\000"
.LASF36:
	.ascii	"GpioMappingID4\000"
.LASF37:
	.ascii	"GpioMappingID5\000"
.LASF38:
	.ascii	"GpioMappingID6\000"
.LASF39:
	.ascii	"GpioMappingID7\000"
.LASF40:
	.ascii	"GpioMappingID8\000"
.LASF27:
	.ascii	"PortMask\000"
.LASF71:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux\000"
.LASF51:
	.ascii	"EApiGPIOGetDirectionCapsEmul\000"
.LASF52:
	.ascii	"EApiGPIOSetDirectionEmul\000"
.LASF19:
	.ascii	"Value2\000"
.LASF25:
	.ascii	"PortDescriptor_s\000"
.LASF6:
	.ascii	"uint8_t\000"
.LASF5:
	.ascii	"uintptr_t\000"
.LASF60:
	.ascii	"Level\000"
.LASF47:
	.ascii	"pInputs\000"
.LASF31:
	.ascii	"Port2Desc\000"
.LASF59:
	.ascii	"EApiGPIOSetLevelEmul\000"
.LASF22:
	.ascii	"Write\000"
.LASF2:
	.ascii	"long long int\000"
.LASF17:
	.ascii	"Dirty\000"
.LASF1:
	.ascii	"long int\000"
.LASF14:
	.ascii	"EApiId_t\000"
.LASF61:
	.ascii	"EApiGPIOGetLevelEmul\000"
.LASF63:
	.ascii	"EApiReadIO32Delay\000"
.LASF65:
	.ascii	"Data\000"
.LASF72:
	.ascii	"siFormattedMessage_SC\000"
.LASF13:
	.ascii	"EApiStatus_t\000"
.LASF26:
	.ascii	"GPIOMappingsTbl_s\000"
.LASF29:
	.ascii	"GPIOMappingsTbl_t\000"
.LASF28:
	.ascii	"Port\000"
.LASF7:
	.ascii	"unsigned char\000"
.LASF18:
	.ascii	"Value\000"
.LASF57:
	.ascii	"EApiGPIOGetDirectionEmul\000"
.LASF70:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EA"
	.ascii	"piEmulGPIO.c\000"
.LASF21:
	.ascii	"DirectionArg1\000"
.LASF16:
	.ascii	"WritePortFunction\000"
.LASF56:
	.ascii	"ExitPoint\000"
.LASF3:
	.ascii	"signed char\000"
.LASF23:
	.ascii	"Read\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF9:
	.ascii	"uint32_t\000"
.LASF46:
	.ascii	"GPIOIDMapping\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF68:
	.ascii	"EApiReadIO32\000"
.LASF62:
	.ascii	"pLevel\000"
.LASF24:
	.ascii	"PortDescriptor_t\000"
.LASF58:
	.ascii	"pDirection\000"
.LASF8:
	.ascii	"short unsigned int\000"
.LASF49:
	.ascii	"EmulatedIoBlock\000"
.LASF20:
	.ascii	"LevelArg1\000"
.LASF11:
	.ascii	"char\000"
.LASF53:
	.ascii	"BitMask\000"
.LASF50:
	.ascii	"StatusCode\000"
.LASF42:
	.ascii	"MapTbl\000"
.LASF15:
	.ascii	"ReadPortFunction\000"
.LASF12:
	.ascii	"long unsigned int\000"
.LASF66:
	.ascii	"EApiWriteIO32Delay\000"
.LASF69:
	.ascii	"GNU C17 11.2.0 -mcpu=cortex-a9 -mfloat-abi=hard -mf"
	.ascii	"pu=vfpv3 -mabi=aapcs-linux -mtls-dialect=gnu -marm "
	.ascii	"-march=armv7-a+mp+sec+vfpv3 -g -fstack-protector-st"
	.ascii	"rong -fvisibility=hidden -fPIC\000"
.LASF48:
	.ascii	"pOutputs\000"
.LASF30:
	.ascii	"Port1Desc\000"
.LASF55:
	.ascii	"APIBitMask\000"
.LASF73:
	.ascii	"EApiSleepns\000"
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
