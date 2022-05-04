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
	.file	"EApiEmulBacklight.c"
	.text
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"EApiVgaGetBacklightEnableEmul\000"
	.align	2
.LC1:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EA"
	.ascii	"piEmulBacklight.c\000"
	.align	2
.LC2:
	.ascii	"Unrecognised Backlight ID\000"
	.align	2
.LC3:
	.ascii	"%s\012\000"
	.align	2
.LC4:
	.ascii	"\000"
	.text
	.align	2
	.global	EApiVgaGetBacklightEnableEmul
	.hidden	EApiVgaGetBacklightEnableEmul
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiVgaGetBacklightEnableEmul, %function
EApiVgaGetBacklightEnableEmul:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L8
	push	{r4, lr}
	sub	sp, sp, #16
.LPIC0:
	add	r3, pc, r3
	ldr	r2, [r3]
	cmp	r0, r2
	beq	.L4
	ldr	r3, [r3, #12]
	cmp	r0, r3
	beq	.L5
	ldr	ip, .L8+4
	mvn	r4, #768
	ldr	r0, .L8+8
	mov	r3, #79
	ldr	r2, .L8+12
	ldr	r1, .L8+16
.LPIC4:
	add	ip, pc, ip
.LPIC5:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC2:
	add	r2, pc, r2
.LPIC3:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
.L1:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L4:
	mov	r2, #0
.L2:
.L3:
	ldr	r3, .L8+20
	add	r2, r2, r2, lsl #1
	ldr	ip, .L8+24
	mov	r4, #0
	ldr	r0, .L8+28
.LPIC6:
	add	r3, pc, r3
	add	r3, r3, r2, lsl #2
.LPIC9:
	add	ip, pc, ip
.LPIC10:
	add	r0, pc, r0
	ldr	r2, .L8+32
	ldr	lr, [r3, #4]
	mov	r3, #73
	str	r0, [sp, #4]
	mov	r0, #76
	str	ip, [sp, #8]
.LPIC7:
	add	r2, pc, r2
	str	r4, [sp]
	str	lr, [r1]
	ldr	r1, .L8+36
.LPIC8:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L1
.L5:
	mov	r2, #1
	b	.L2
.L9:
	.align	2
.L8:
	.word	.LANCHOR0-(.LPIC0+8)
	.word	.LC2-(.LPIC4+8)
	.word	.LC3-(.LPIC5+8)
	.word	.LC0-(.LPIC2+8)
	.word	.LC1-(.LPIC3+8)
	.word	.LANCHOR0-(.LPIC6+8)
	.word	.LC4-(.LPIC9+8)
	.word	.LC3-(.LPIC10+8)
	.word	.LC0-(.LPIC7+8)
	.word	.LC1-(.LPIC8+8)
	.size	EApiVgaGetBacklightEnableEmul, .-EApiVgaGetBacklightEnableEmul
	.section	.rodata.str1.4
	.align	2
.LC5:
	.ascii	"EApiVgaSetBacklightEnableEmul\000"
	.text
	.align	2
	.global	EApiVgaSetBacklightEnableEmul
	.hidden	EApiVgaSetBacklightEnableEmul
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiVgaSetBacklightEnableEmul, %function
EApiVgaSetBacklightEnableEmul:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L16
	push	{r4, lr}
	sub	sp, sp, #16
.LPIC11:
	add	r3, pc, r3
	ldr	r2, [r3]
	cmp	r0, r2
	beq	.L13
	ldr	r3, [r3, #12]
	cmp	r0, r3
	beq	.L14
	ldr	ip, .L16+4
	mvn	r4, #768
	ldr	r0, .L16+8
	mov	r3, #109
	ldr	r2, .L16+12
	ldr	r1, .L16+16
.LPIC15:
	add	ip, pc, ip
.LPIC16:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC13:
	add	r2, pc, r2
.LPIC14:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
.L10:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L13:
	mov	r2, #0
.L11:
.L12:
	ldr	r3, .L16+20
	add	r2, r2, r2, lsl #1
	ldr	ip, .L16+24
	mov	r4, #0
	ldr	r0, .L16+28
.LPIC17:
	add	r3, pc, r3
	add	r3, r3, r2, lsl #2
	ldr	r2, .L16+32
.LPIC20:
	add	ip, pc, ip
	str	r1, [r3, #4]
.LPIC21:
	add	r0, pc, r0
	ldr	r1, .L16+36
.LPIC18:
	add	r2, pc, r2
	stmib	sp, {r0, ip}
	mov	r3, #103
	mov	r0, #76
	str	r4, [sp]
.LPIC19:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L10
.L14:
	mov	r2, #1
	b	.L11
.L17:
	.align	2
.L16:
	.word	.LANCHOR0-(.LPIC11+8)
	.word	.LC2-(.LPIC15+8)
	.word	.LC3-(.LPIC16+8)
	.word	.LC5-(.LPIC13+8)
	.word	.LC1-(.LPIC14+8)
	.word	.LANCHOR0-(.LPIC17+8)
	.word	.LC4-(.LPIC20+8)
	.word	.LC3-(.LPIC21+8)
	.word	.LC5-(.LPIC18+8)
	.word	.LC1-(.LPIC19+8)
	.size	EApiVgaSetBacklightEnableEmul, .-EApiVgaSetBacklightEnableEmul
	.section	.rodata.str1.4
	.align	2
.LC6:
	.ascii	"EApiVgaGetBacklightBrightnessEmul\000"
	.text
	.align	2
	.global	EApiVgaGetBacklightBrightnessEmul
	.hidden	EApiVgaGetBacklightBrightnessEmul
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiVgaGetBacklightBrightnessEmul, %function
EApiVgaGetBacklightBrightnessEmul:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L24
	push	{r4, lr}
	sub	sp, sp, #16
.LPIC22:
	add	r3, pc, r3
	ldr	r2, [r3]
	cmp	r0, r2
	beq	.L21
	ldr	r3, [r3, #12]
	cmp	r0, r3
	beq	.L22
	ldr	ip, .L24+4
	mvn	r4, #768
	ldr	r0, .L24+8
	mov	r3, #138
	ldr	r2, .L24+12
	ldr	r1, .L24+16
.LPIC26:
	add	ip, pc, ip
.LPIC27:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC24:
	add	r2, pc, r2
.LPIC25:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
.L18:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L21:
	mov	r2, #0
.L19:
.L20:
	ldr	r3, .L24+20
	add	r2, r2, r2, lsl #1
	ldr	ip, .L24+24
	mov	r4, #0
	ldr	r0, .L24+28
.LPIC28:
	add	r3, pc, r3
	add	r3, r3, r2, lsl #2
.LPIC31:
	add	ip, pc, ip
.LPIC32:
	add	r0, pc, r0
	ldr	r2, .L24+32
	ldr	lr, [r3, #8]
	mov	r3, #132
	str	r0, [sp, #4]
	mov	r0, #76
	str	ip, [sp, #8]
.LPIC29:
	add	r2, pc, r2
	str	r4, [sp]
	str	lr, [r1]
	ldr	r1, .L24+36
.LPIC30:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L18
.L22:
	mov	r2, #1
	b	.L19
.L25:
	.align	2
.L24:
	.word	.LANCHOR0-(.LPIC22+8)
	.word	.LC2-(.LPIC26+8)
	.word	.LC3-(.LPIC27+8)
	.word	.LC6-(.LPIC24+8)
	.word	.LC1-(.LPIC25+8)
	.word	.LANCHOR0-(.LPIC28+8)
	.word	.LC4-(.LPIC31+8)
	.word	.LC3-(.LPIC32+8)
	.word	.LC6-(.LPIC29+8)
	.word	.LC1-(.LPIC30+8)
	.size	EApiVgaGetBacklightBrightnessEmul, .-EApiVgaGetBacklightBrightnessEmul
	.section	.rodata.str1.4
	.align	2
.LC7:
	.ascii	"EApiVgaSetBacklightBrightnessEmul\000"
	.align	2
.LC8:
	.ascii	"EApiVgaSetBacklightBrightness\000"
	.text
	.align	2
	.global	EApiVgaSetBacklightBrightnessEmul
	.hidden	EApiVgaSetBacklightBrightnessEmul
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiVgaSetBacklightBrightnessEmul, %function
EApiVgaSetBacklightBrightnessEmul:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L32
	push	{r4, lr}
	sub	sp, sp, #16
.LPIC33:
	add	r3, pc, r3
	ldr	r2, [r3]
	cmp	r0, r2
	beq	.L29
	ldr	r3, [r3, #12]
	cmp	r0, r3
	beq	.L30
	ldr	ip, .L32+4
	mvn	r4, #768
	ldr	r0, .L32+8
	mov	r3, #168
	ldr	r2, .L32+12
	ldr	r1, .L32+16
.LPIC37:
	add	ip, pc, ip
.LPIC38:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC35:
	add	r2, pc, r2
.LPIC36:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
.L26:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L29:
	mov	r2, #0
.L27:
.L28:
	ldr	r3, .L32+20
	add	r2, r2, r2, lsl #1
	ldr	ip, .L32+24
	mov	r4, #0
	ldr	r0, .L32+28
.LPIC39:
	add	r3, pc, r3
	add	r3, r3, r2, lsl #2
	ldr	r2, .L32+32
.LPIC42:
	add	ip, pc, ip
	str	r1, [r3, #8]
.LPIC43:
	add	r0, pc, r0
	ldr	r1, .L32+36
.LPIC40:
	add	r2, pc, r2
	stmib	sp, {r0, ip}
	mov	r3, #162
	mov	r0, #76
	str	r4, [sp]
.LPIC41:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L26
.L30:
	mov	r2, #1
	b	.L27
.L33:
	.align	2
.L32:
	.word	.LANCHOR0-(.LPIC33+8)
	.word	.LC2-(.LPIC37+8)
	.word	.LC3-(.LPIC38+8)
	.word	.LC7-(.LPIC35+8)
	.word	.LC1-(.LPIC36+8)
	.word	.LANCHOR0-(.LPIC39+8)
	.word	.LC4-(.LPIC42+8)
	.word	.LC3-(.LPIC43+8)
	.word	.LC8-(.LPIC40+8)
	.word	.LC1-(.LPIC41+8)
	.size	EApiVgaSetBacklightBrightnessEmul, .-EApiVgaSetBacklightBrightnessEmul
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	BacklightLookup, %object
	.size	BacklightLookup, 24
BacklightLookup:
	.word	0
	.word	0
	.word	0
	.word	1
	.word	-1
	.word	255
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
