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
	.file	"BinFuncs.c"
	.text
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"u16CRC_CCITT_bytes\000"
	.align	2
.LC1:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux/../BinFuncs.c\000"
	.align	2
.LC2:
	.ascii	"(pcvBuffer==NULL)\000"
	.align	2
.LC3:
	.ascii	"%s\012\000"
	.text
	.align	2
	.global	u16CRC_CCITT_bytes
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	u16CRC_CCITT_bytes, %function
u16CRC_CCITT_bytes:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	push	{r4, lr}
	ldr	r3, [r0]
	sub	sp, sp, #16
	beq	.L44
	mov	lr, r0
	ldr	r0, [r0, #4]
	cmp	r2, #0
	add	r0, r0, r2
	str	r0, [lr, #4]
	beq	.L4
	add	r0, r1, r2
	movw	r2, #4129
.L13:
	ldrb	ip, [r1], #1	@ zero_extendqisi2
	eor	r3, r3, ip, lsl #8
	tst	r3, #32768
	lsl	r3, r3, #1
	eorne	r3, r3, r2
	tst	r3, #32768
	lsl	r3, r3, #1
	eorne	r3, r3, r2
	tst	r3, #32768
	lsl	r3, r3, #1
	eorne	r3, r3, r2
	tst	r3, #32768
	lsl	r3, r3, #1
	eorne	r3, r3, r2
	tst	r3, #32768
	lsl	r3, r3, #1
	eorne	r3, r3, r2
	tst	r3, #32768
	lsl	r3, r3, #1
	eorne	r3, r3, r2
	tst	r3, #32768
	lsl	r3, r3, #1
	eorne	r3, r3, r2
	tst	r3, #32768
	lsl	r3, r3, #1
	eorne	r3, r3, r2
	cmp	r1, r0
	bne	.L13
.L4:
	mov	r0, #0
	str	r3, [lr]
.L3:
.L1:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L44:
	ldr	ip, .L45
	mvn	r4, #256
	ldr	r0, .L45+4
	mov	r3, #122
	ldr	r2, .L45+8
	ldr	r1, .L45+12
.LPIC2:
	add	ip, pc, ip
.LPIC3:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC0:
	add	r2, pc, r2
.LPIC1:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L1
.L46:
	.align	2
.L45:
	.word	.LC2-(.LPIC2+8)
	.word	.LC3-(.LPIC3+8)
	.word	.LC0-(.LPIC0+8)
	.word	.LC1-(.LPIC1+8)
	.size	u16CRC_CCITT_bytes, .-u16CRC_CCITT_bytes
	.section	.rodata.str1.4
	.align	2
.LC4:
	.ascii	"u16CRC_CCITT_init\000"
	.align	2
.LC5:
	.ascii	"(pContext==NULL)\000"
	.align	2
.LC6:
	.ascii	"(pCRC==NULL)\000"
	.text
	.align	2
	.global	u16CRC_CCITT_init
	.syntax unified
	.arm
	.fpu vfpv3
	.type	u16CRC_CCITT_init, %function
u16CRC_CCITT_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	subs	r4, r0, #0
	sub	sp, sp, #16
	beq	.L53
.L49:
	mov	r0, #8
	bl	malloc(PLT)
	cmp	r0, #0
	mov	r3, r0
	vldrne.64	d16, .L55	@ int
	str	r0, [r4]
	movne	r0, #0
	vstrne.64	d16, [r3]	@ int
	beq	.L54
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L53:
	ldr	ip, .L55+8
	mvn	r4, #256
	ldr	r0, .L55+12
	mov	r3, #83
	ldr	r2, .L55+16
	ldr	r1, .L55+20
.LPIC6:
	add	ip, pc, ip
.LPIC7:
	add	r0, pc, r0
.LPIC4:
	add	r2, pc, r2
.LPIC5:
	add	r1, pc, r1
.L52:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L54:
	ldr	ip, .L55+24
	mvn	r4, #2
	ldr	r0, .L55+28
	mov	r3, #89
	ldr	r2, .L55+32
	ldr	r1, .L55+36
.LPIC10:
	add	ip, pc, ip
.LPIC11:
	add	r0, pc, r0
.LPIC8:
	add	r2, pc, r2
.LPIC9:
	add	r1, pc, r1
	b	.L52
.L56:
	.align	3
.L55:
	.word	0
	.word	0
	.word	.LC5-(.LPIC6+8)
	.word	.LC3-(.LPIC7+8)
	.word	.LC4-(.LPIC4+8)
	.word	.LC1-(.LPIC5+8)
	.word	.LC6-(.LPIC10+8)
	.word	.LC3-(.LPIC11+8)
	.word	.LC4-(.LPIC8+8)
	.word	.LC1-(.LPIC9+8)
	.size	u16CRC_CCITT_init, .-u16CRC_CCITT_init
	.section	.rodata.str1.4
	.align	2
.LC7:
	.ascii	"u16CRC_CCITT_fini\000"
	.align	2
.LC8:
	.ascii	"(pvDigest==NULL)\000"
	.text
	.align	2
	.global	u16CRC_CCITT_fini
	.syntax unified
	.arm
	.fpu vfpv3
	.type	u16CRC_CCITT_fini, %function
u16CRC_CCITT_fini:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, r0
	ldr	r0, [r0]
	subs	r4, r1, #0
	sub	sp, sp, #16
	ldr	r6, [r0]
	beq	.L61
.L59:
	bl	free(PLT)
	mov	r3, #0
	ubfx	r2, r6, #8, #8
	str	r3, [r5]
	mov	r0, r3
	strb	r2, [r4]
	strb	r6, [r4, #1]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, pc}
.L61:
	ldr	ip, .L62
	mvn	r4, #256
	ldr	r0, .L62+4
	mov	r3, #157
	ldr	r2, .L62+8
	ldr	r1, .L62+12
.LPIC14:
	add	ip, pc, ip
.LPIC15:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC12:
	add	r2, pc, r2
.LPIC13:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, pc}
.L63:
	.align	2
.L62:
	.word	.LC8-(.LPIC14+8)
	.word	.LC3-(.LPIC15+8)
	.word	.LC7-(.LPIC12+8)
	.word	.LC1-(.LPIC13+8)
	.size	u16CRC_CCITT_fini, .-u16CRC_CCITT_fini
	.section	.rodata.str1.4
	.align	2
.LC9:
	.ascii	"u16CRC_CCITT_verify\000"
	.align	2
.LC10:
	.ascii	"Invalid CRC CCITT\000"
	.text
	.align	2
	.global	u16CRC_CCITT_verify
	.syntax unified
	.arm
	.fpu vfpv3
	.type	u16CRC_CCITT_verify, %function
u16CRC_CCITT_verify:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L74
	push	{r4, r5, r6, r7, lr}
	mov	r6, r0
	ldr	r3, .L74+4
	sub	sp, sp, #28
.LPIC21:
	add	r2, pc, r2
	mov	r7, r1
	ldr	r0, [r0]
	mov	r4, #0
	ldr	r3, [r2, r3]
	ldrh	r5, [r0]
	ldr	r3, [r3]
	str	r3, [sp, #20]
	mov	r3, #0
	bl	free(PLT)
	rev16	r5, r5
	str	r4, [r6]
	ldrb	r3, [r7]	@ zero_extendqisi2
	uxtb	r2, r5
	strh	r5, [sp, #16]	@ movhi
	cmp	r2, r3
	beq	.L72
.L67:
.L65:
	ldr	ip, .L74+8
	mvn	r4, #3840
	ldr	r0, .L74+12
	mov	r3, #181
	ldr	r2, .L74+16
	ldr	r1, .L74+20
.LPIC18:
	add	ip, pc, ip
.LPIC19:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC16:
	add	r2, pc, r2
.LPIC17:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
.L71:
	ldr	r2, .L74+24
	mov	r0, r4
	ldr	r3, .L74+4
.LPIC20:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #20]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L73
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L72:
	ldrb	r2, [sp, #17]	@ zero_extendqisi2
	ldrb	r3, [r7, #1]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L65
	b	.L71
.L73:
	bl	__stack_chk_fail(PLT)
.L75:
	.align	2
.L74:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC21+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC10-(.LPIC18+8)
	.word	.LC3-(.LPIC19+8)
	.word	.LC9-(.LPIC16+8)
	.word	.LC1-(.LPIC17+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC20+8)
	.size	u16CRC_CCITT_verify, .-u16CRC_CCITT_verify
	.align	2
	.global	u32ChecksumBlock
	.syntax unified
	.arm
	.fpu vfpv3
	.type	u32ChecksumBlock, %function
u32ChecksumBlock:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	beq	.L81
	sub	ip, r1, #1
	mov	r3, r0
	cmp	ip, #31
	bls	.L82
	add	r1, r0, #32
	mov	r0, #0
	str	lr, [sp, #-4]!
.L79:
	ldrb	lr, [r1, #-31]	@ zero_extendqisi2
	sub	ip, ip, #32
	cmp	ip, #31
	mov	r3, r1
	ldrb	r2, [r1, #-32]	@ zero_extendqisi2
	pld	[r1, #2]
	add	r1, r1, #32
	add	r2, r2, lr
	ldrb	lr, [r1, #-62]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-61]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-60]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-59]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-58]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-57]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-56]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-55]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-54]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-53]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-52]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-51]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-50]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-49]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-48]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-47]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-46]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-45]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-44]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-43]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-42]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-41]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-40]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-39]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-38]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-37]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-36]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-35]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-34]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-33]	@ zero_extendqisi2
	add	r2, r2, lr
	add	r0, r0, r2
	bhi	.L79
	add	r1, ip, #1
	add	r1, r3, r1
.L80:
	ldrb	r2, [r3], #1	@ zero_extendqisi2
	cmp	r3, r1
	add	r0, r0, r2
	bne	.L80
	ldr	pc, [sp], #4
.L81:
	mov	r0, r1
	bx	lr
.L82:
	add	r1, ip, #1
	mov	r0, #0
	add	r1, r3, r1
.L87:
	ldrb	r2, [r3], #1	@ zero_extendqisi2
	cmp	r3, r1
	add	r0, r0, r2
	bne	.L87
	bx	lr
	.size	u32ChecksumBlock, .-u32ChecksumBlock
	.align	2
	.global	u16ChecksumBlock
	.syntax unified
	.arm
	.fpu vfpv3
	.type	u16ChecksumBlock, %function
u16ChecksumBlock:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	beq	.L98
	sub	ip, r1, #1
	cmp	ip, #31
	bls	.L99
	add	r1, r0, #32
	mov	r3, #0
	str	lr, [sp, #-4]!
.L96:
	ldrb	lr, [r1, #-31]	@ zero_extendqisi2
	sub	ip, ip, #32
	cmp	ip, #31
	mov	r0, r1
	ldrb	r2, [r1, #-32]	@ zero_extendqisi2
	pld	[r1, #2]
	add	r1, r1, #32
	add	r2, r2, lr
	ldrb	lr, [r1, #-62]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-61]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-60]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-59]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-58]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-57]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-56]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-55]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-54]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-53]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-52]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-51]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-50]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-49]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-48]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-47]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-46]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-45]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-44]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-43]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-42]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-41]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-40]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-39]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-38]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-37]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-36]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-35]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-34]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-33]	@ zero_extendqisi2
	add	r2, r2, lr
	add	r3, r3, r2
	bhi	.L96
	add	r1, ip, #1
	add	r1, r0, r1
.L97:
	ldrb	r2, [r0], #1	@ zero_extendqisi2
	cmp	r0, r1
	add	r3, r3, r2
	bne	.L97
	uxth	r0, r3
	ldr	pc, [sp], #4
.L98:
	mov	r0, r1
	bx	lr
.L99:
	add	r1, ip, #1
	mov	r3, #0
	add	r1, r0, r1
.L104:
	ldrb	r2, [r0], #1	@ zero_extendqisi2
	cmp	r0, r1
	add	r3, r3, r2
	bne	.L104
	uxth	r0, r3
	bx	lr
	.size	u16ChecksumBlock, .-u16ChecksumBlock
	.align	2
	.global	u8ChecksumBlock
	.syntax unified
	.arm
	.fpu vfpv3
	.type	u8ChecksumBlock, %function
u8ChecksumBlock:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	beq	.L114
	sub	ip, r1, #1
	cmp	ip, #31
	bls	.L115
	add	r1, r0, #32
	mov	r3, #0
	str	lr, [sp, #-4]!
.L112:
	ldrb	lr, [r1, #-31]	@ zero_extendqisi2
	sub	ip, ip, #32
	cmp	ip, #31
	mov	r0, r1
	ldrb	r2, [r1, #-32]	@ zero_extendqisi2
	pld	[r1, #2]
	add	r1, r1, #32
	add	r2, r2, lr
	ldrb	lr, [r1, #-62]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-61]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-60]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-59]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-58]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-57]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-56]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-55]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-54]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-53]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-52]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-51]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-50]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-49]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-48]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-47]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-46]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-45]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-44]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-43]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-42]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-41]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-40]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-39]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-38]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-37]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-36]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-35]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-34]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	lr, [r1, #-33]	@ zero_extendqisi2
	add	r2, r2, lr
	add	r3, r3, r2
	bhi	.L112
	add	r1, ip, #1
	add	r1, r0, r1
.L113:
	ldrb	r2, [r0], #1	@ zero_extendqisi2
	cmp	r0, r1
	add	r3, r3, r2
	bne	.L113
	uxtb	r0, r3
	ldr	pc, [sp], #4
.L114:
	mov	r0, r1
	bx	lr
.L115:
	add	r1, ip, #1
	mov	r3, #0
	add	r1, r0, r1
.L120:
	ldrb	r2, [r0], #1	@ zero_extendqisi2
	cmp	r0, r1
	add	r3, r3, r2
	bne	.L120
	uxtb	r0, r3
	bx	lr
	.size	u8ChecksumBlock, .-u8ChecksumBlock
	.section	.rodata.str1.4
	.align	2
.LC11:
	.ascii	"TB \000"
	.align	2
.LC12:
	.ascii	"u16CRC_CCITT_init(&pContext)\000"
	.align	2
.LC13:
	.ascii	"u16CRC_CCITT_bytes(pContext, pcvBuffer, stCount)\000"
	.align	2
.LC14:
	.ascii	"u16CRC_CCITT_fini(&pContext, pvDigest)\000"
	.text
	.align	2
	.global	u16CRC_CCITT
	.syntax unified
	.arm
	.fpu vfpv3
	.type	u16CRC_CCITT, %function
u16CRC_CCITT:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, r0
	sub	sp, sp, #16
	mov	r0, #8
	mov	r6, r1
	mov	r4, r2
	bl	malloc(PLT)
	cmp	r0, #0
	beq	.L170
	cmp	r5, #0
	mov	r3, #0
	str	r3, [r0]
	beq	.L171
	cmp	r6, #0
	beq	.L129
	add	r2, r5, r6
	mov	r6, r3
	movw	r3, #4129
.L138:
	ldrb	r1, [r5], #1	@ zero_extendqisi2
	eor	r1, r6, r1, lsl #8
	tst	r1, #32768
	lsl	r1, r1, #1
	eorne	r1, r1, r3
	tst	r1, #32768
	lsl	r1, r1, #1
	eorne	r1, r1, r3
	tst	r1, #32768
	lsl	r1, r1, #1
	eorne	r1, r1, r3
	tst	r1, #32768
	lsl	r1, r1, #1
	eorne	r1, r1, r3
	tst	r1, #32768
	lsl	r1, r1, #1
	eorne	r1, r1, r3
	tst	r1, #32768
	lsl	r1, r1, #1
	eorne	r1, r1, r3
	tst	r1, #32768
	lsl	r1, r1, #1
	eorne	r1, r1, r3
	lsl	r6, r1, #1
	tst	r1, #32768
	eorne	r6, r6, r3
	cmp	r5, r2
	bne	.L138
.L129:
	cmp	r4, #0
	beq	.L172
.L127:
	bl	free(PLT)
	ubfx	r3, r6, #8, #8
	mov	r0, #0
	strb	r6, [r4, #1]
	strb	r3, [r4]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, pc}
.L170:
	ldr	r2, .L173
	mvn	r4, #2
	ldr	r6, .L173+4
	mov	r3, #89
	ldr	r5, .L173+8
	mov	r0, #69
.LPIC24:
	add	r2, pc, r2
	str	r2, [sp, #8]
.LPIC23:
	add	r6, pc, r6
	ldr	r2, .L173+12
.LPIC25:
	add	r5, pc, r5
	mov	r1, r6
	strd	r4, [sp]
.LPIC22:
	add	r2, pc, r2
	bl	siFormattedMessage_SC(PLT)
	ldr	r0, .L173+16
	mov	r3, #201
	ldr	r2, .L173+20
.LPIC28:
	add	r0, pc, r0
.LPIC26:
	add	r2, pc, r2
.L169:
	str	r0, [sp, #8]
	mov	r1, r6
	str	r5, [sp, #4]
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, pc}
.L171:
	ldr	r2, .L173+24
	mvn	r4, #256
	ldr	r6, .L173+28
	mov	r3, #122
	ldr	r5, .L173+32
	mov	r0, #69
.LPIC32:
	add	r2, pc, r2
	str	r2, [sp, #8]
.LPIC31:
	add	r6, pc, r6
	ldr	r2, .L173+36
.LPIC33:
	add	r5, pc, r5
	mov	r1, r6
	strd	r4, [sp]
.LPIC30:
	add	r2, pc, r2
	bl	siFormattedMessage_SC(PLT)
	ldr	r0, .L173+40
	mov	r3, #202
	ldr	r2, .L173+44
.LPIC36:
	add	r0, pc, r0
.LPIC34:
	add	r2, pc, r2
	b	.L169
.L172:
	ldr	r2, .L173+48
	mvn	r4, #256
	ldr	r6, .L173+52
	mov	r3, #157
	ldr	r5, .L173+56
	mov	r0, #69
.LPIC40:
	add	r2, pc, r2
	str	r2, [sp, #8]
.LPIC39:
	add	r6, pc, r6
	ldr	r2, .L173+60
.LPIC41:
	add	r5, pc, r5
	mov	r1, r6
	strd	r4, [sp]
.LPIC38:
	add	r2, pc, r2
	bl	siFormattedMessage_SC(PLT)
	ldr	r0, .L173+64
	mov	r3, #203
	ldr	r2, .L173+68
.LPIC44:
	add	r0, pc, r0
.LPIC42:
	add	r2, pc, r2
	b	.L169
.L174:
	.align	2
.L173:
	.word	.LC6-(.LPIC24+8)
	.word	.LC1-(.LPIC23+8)
	.word	.LC3-(.LPIC25+8)
	.word	.LC4-(.LPIC22+8)
	.word	.LC12-(.LPIC28+8)
	.word	.LC11-(.LPIC26+8)
	.word	.LC2-(.LPIC32+8)
	.word	.LC1-(.LPIC31+8)
	.word	.LC3-(.LPIC33+8)
	.word	.LC0-(.LPIC30+8)
	.word	.LC13-(.LPIC36+8)
	.word	.LC11-(.LPIC34+8)
	.word	.LC8-(.LPIC40+8)
	.word	.LC1-(.LPIC39+8)
	.word	.LC3-(.LPIC41+8)
	.word	.LC7-(.LPIC38+8)
	.word	.LC14-(.LPIC44+8)
	.word	.LC11-(.LPIC42+8)
	.size	u16CRC_CCITT, .-u16CRC_CCITT
	.align	2
	.global	cBin2Ascii
	.syntax unified
	.arm
	.fpu vfpv3
	.type	cBin2Ascii, %function
cBin2Ascii:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r3, r0, #32
	cmp	r3, #96
	movcs	r0, #46
	uxtb	r0, r0
	bx	lr
	.size	cBin2Ascii, .-cBin2Ascii
	.section	.rodata.str1.4
	.align	2
.LC15:
	.ascii	"%02X\000"
	.text
	.align	2
	.global	siBin2Ascii
	.syntax unified
	.arm
	.fpu vfpv3
	.type	siBin2Ascii, %function
siBin2Ascii:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	subs	r5, r3, #0
	beq	.L183
	ldr	r3, [sp, #32]
	mov	r7, r0
	mov	r8, r1
	mov	r6, r2
	ands	r4, r3, #256
	bne	.L179
	ldr	r9, .L187
	sub	r6, r2, #1
	add	r5, r6, r5
.LPIC46:
	add	r9, pc, r9
.L180:
	ldrb	r3, [r6, #1]!	@ zero_extendqisi2
	sub	r1, r8, r4
	add	r0, r7, r4
	mov	r2, r9
	bl	EApiSprintf(PLT)
	cmp	r6, r5
	add	r4, r4, r0
	bne	.L180
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L179:
	ldr	r9, .L187+4
	add	r5, r2, r5
	mov	r4, #0
.LPIC47:
	add	r9, pc, r9
.L182:
	ldrb	r3, [r5, #-1]!	@ zero_extendqisi2
	sub	r1, r8, r4
	add	r0, r7, r4
	mov	r2, r9
	bl	EApiSprintf(PLT)
	cmp	r6, r5
	add	r4, r4, r0
	bne	.L182
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L183:
	mov	r4, r5
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L188:
	.align	2
.L187:
	.word	.LC15-(.LPIC46+8)
	.word	.LC15-(.LPIC47+8)
	.size	siBin2Ascii, .-siBin2Ascii
	.section	.rodata.str1.4
	.align	2
.LC16:
	.ascii	"PrintHexAsciiTableEx\000"
	.align	2
.LC17:
	.ascii	"\012%s\012\000"
	.align	2
.LC18:
	.ascii	"\012\011OFFSET = 0x%08lX, LENGTH = 0x%08lX\012\000"
	.global	__aeabi_uidivmod
	.align	2
.LC19:
	.ascii	"         \000"
	.align	2
.LC20:
	.ascii	"%08lX \000"
	.align	2
.LC21:
	.ascii	"%0*lX \000"
	.align	2
.LC22:
	.ascii	"%lX\000"
	.align	2
.LC23:
	.ascii	"%s \000"
	.align	2
.LC24:
	.ascii	"\000"
	.align	2
.LC25:
	.ascii	"%*s \000"
	.text
	.align	2
	.global	PrintHexAsciiTableEx
	.syntax unified
	.arm
	.fpu vfpv3
	.type	PrintHexAsciiTableEx, %function
PrintHexAsciiTableEx:
	@ args = 4, pretend = 0, frame = 176
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	cmp	r0, #0
	sub	sp, sp, #196
	mov	r5, r1
	mov	r1, r3
	str	r0, [sp, #24]
	ldr	r0, .L254
	ldr	r3, .L254+4
	str	r2, [sp, #52]
.LPIC64:
	add	r0, pc, r0
	ldr	r4, [sp, #232]
	ldr	r3, [r0, r3]
	ldr	r3, [r3]
	str	r3, [sp, #188]
	mov	r3, #0
	beq	.L246
	cmp	r2, #0
	mov	r3, r2
	ldrne	r2, [sp, #24]
	moveq	r6, r2
	ldreq	r3, [sp, #24]
	subne	r6, r2, r3
	streq	r3, [sp, #52]
	cmp	r1, #0
	beq	.L193
	ldr	r0, .L254+8
.LPIC52:
	add	r0, pc, r0
	bl	printf(PLT)
.L193:
	tst	r4, #64
	bne	.L247
.L194:
	cmp	r5, #0
	beq	.L196
	ldr	r7, [sp, #24]
	and	r3, r4, #63
	ubfx	r10, r4, #12, #3
	mov	r0, r6
	str	r3, [sp, #80]
	add	r6, r7, r5
	lsl	r5, r3, r10
	str	r6, [sp, #20]
	mov	r1, r5
	str	r5, [sp, #16]
	bl	__aeabi_uidivmod(PLT)
	ldr	r2, [sp, #52]
	sub	r3, r7, r1
	cmp	r6, r3
	str	r3, [sp, #40]
	sub	r6, r3, r2
	str	r6, [sp, #60]
	bls	.L196
	mov	r3, #2
	mov	r9, #1
	lsl	r3, r3, r10
	lsl	r9, r9, r10
	str	r3, [sp, #28]
	ldr	r3, .L254+12
.LPIC55:
	add	r3, pc, r3
	str	r3, [sp, #72]
	ldr	r3, .L254+16
.LPIC56:
	add	r3, pc, r3
	str	r3, [sp, #84]
	ldr	r3, .L254+20
.LPIC61:
	add	r3, pc, r3
	str	r3, [sp, #32]
	ldr	r3, .L254+24
.LPIC62:
	add	r3, pc, r3
	str	r3, [sp, #36]
	lsl	r3, r5, #4
	str	r3, [sp, #64]
	and	r3, r4, #2048
	str	r3, [sp, #56]
	and	r3, r4, #128
	str	r3, [sp, #76]
	and	r3, r4, #1536
	str	r3, [sp, #68]
	and	r3, r4, #256
	str	r3, [sp, #48]
.L206:
	ldr	r3, [sp, #60]
	ldr	r1, [sp, #64]
	sub	r0, r6, r3
	bl	__aeabi_uidivmod(PLT)
	subs	r5, r1, #0
	beq	.L248
.L197:
	ldr	r3, [sp, #56]
	cmp	r3, #0
	bne	.L204
.L200:
	ldr	r3, [sp, #16]
	cmp	r3, #0
	beq	.L249
.L205:
	ldr	r3, .L254+28
	mov	r6, #0
	ldr	r4, [sp, #40]
.LPIC60:
	add	r3, pc, r3
	str	r3, [sp, #44]
	b	.L213
.L207:
	ldr	r2, [sp, #32]
	add	fp, r4, r9
	ldr	r1, [sp, #28]
	ldr	r0, [sp, #36]
	bl	printf(PLT)
.L212:
	ldr	r3, [sp, #16]
	add	r6, r6, r9
	mov	r4, fp
	cmp	r3, r6
	bls	.L250
.L213:
	ldrd	r2, [sp, #20]
	cmp	r3, r4
	movls	r3, #1
	movhi	r3, #0
	cmp	r2, r4
	movls	r3, #0
	cmp	r3, #0
	beq	.L207
	ldr	r5, [sp, #48]
	cmp	r5, #0
	bne	.L208
	ldr	r3, [sp, #40]
	sub	fp, r9, #1
	ldr	r10, .L254+32
	sub	r7, r4, #1
	add	r8, sp, #88
	add	fp, r3, fp
	add	fp, fp, r6
.LPIC58:
	add	r10, pc, r10
.L209:
	ldrb	r3, [r7, #1]!	@ zero_extendqisi2
	rsb	r1, r5, #100
	add	r0, r8, r5
	mov	r2, r10
	bl	EApiSprintf(PLT)
	cmp	fp, r7
	add	r5, r5, r0
	bne	.L209
	add	fp, r4, r9
.L210:
	ldr	r0, [sp, #44]
	mov	r1, r8
	bl	printf(PLT)
	b	.L212
.L208:
	ldr	r10, .L254+36
	add	fp, r4, r9
	mov	r7, fp
	mov	r5, #0
	add	r8, sp, #88
.LPIC59:
	add	r10, pc, r10
.L211:
	ldrb	r3, [r7, #-1]!	@ zero_extendqisi2
	rsb	r1, r5, #100
	add	r0, r8, r5
	mov	r2, r10
	bl	EApiSprintf(PLT)
	cmp	r4, r7
	add	r5, r5, r0
	bne	.L211
	b	.L210
.L191:
.L250:
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L224
	ldr	r3, [sp, #40]
	ldr	r2, [sp, #16]
	add	r4, r3, r2
.L219:
	mov	r0, #10
	str	r4, [sp, #40]
	bl	putchar(PLT)
	ldr	r2, [sp, #20]
	cmp	r2, r4
	bls	.L196
	ldr	r2, [sp, #52]
	sub	r6, r4, r2
	b	.L206
.L251:
	ldr	r0, .L254+40
.LPIC54:
	add	r0, pc, r0
	bl	printf(PLT)
	ldr	r3, [sp, #76]
	cmp	r3, #0
	bne	.L199
.L204:
	ldr	r0, [sp, #72]
	mov	r1, r6
	bl	printf(PLT)
	ldr	r3, [sp, #16]
	cmp	r3, #0
	bne	.L205
.L249:
	ldr	r4, [sp, #40]
	b	.L219
.L248:
	mov	r0, #10
	bl	putchar(PLT)
	ldr	r3, [sp, #56]
	cmp	r3, #0
	bne	.L251
	ldr	r3, [sp, #76]
	cmp	r3, #0
	beq	.L200
.L199:
	ldr	r3, [sp, #80]
	cmp	r3, #0
	beq	.L202
	ldr	r7, [sp, #28]
	mov	r8, r3
	ldr	r10, [sp, #84]
	mov	r4, #0
.L201:
	mov	r2, r4
	mov	r1, r7
	add	r4, r4, #1
	mov	r0, r10
	bl	printf(PLT)
	cmp	r8, r4
	bne	.L201
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L252
.L202:
	mov	r0, #10
	bl	putchar(PLT)
	b	.L197
.L224:
	ldr	r5, [sp, #40]
	ldr	r3, [sp, #16]
	ldrd	r6, [sp, #20]
	add	r4, r5, r3
	b	.L218
.L215:
	mov	r0, #32
	bl	putchar(PLT)
.L217:
	add	r5, r5, #1
	cmp	r5, r4
	beq	.L219
.L218:
	cmp	r6, r5
	movhi	r3, #1
	movls	r3, #0
	cmp	r7, r5
	movhi	r3, #0
	cmp	r3, #0
	beq	.L215
	ldrb	r0, [r5]	@ zero_extendqisi2
	sub	r3, r0, #32
	cmp	r3, #96
	movcs	r0, #46
	bl	putchar(PLT)
	b	.L217
.L196:
	mov	r0, #0
.L189:
	ldr	r2, .L254+44
	ldr	r3, .L254+4
.LPIC63:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #188]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L253
	add	sp, sp, #196
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L247:
	ldr	r0, .L254+48
	mov	r2, r5
	mov	r1, r6
.LPIC53:
	add	r0, pc, r0
	bl	printf(PLT)
	b	.L194
.L252:
	ldr	r7, [sp, #16]
	cmp	r7, #0
	beq	.L202
	ldr	r4, .L254+52
.LPIC57:
	add	r4, pc, r4
.L203:
	and	r1, r5, #15
	mov	r0, r4
	add	r5, r5, #1
	bl	printf(PLT)
	cmp	r7, r5
	bne	.L203
	b	.L202
.L246:
	ldr	ip, .L254+56
	mvn	r4, #256
	ldr	r0, .L254+60
	movw	r3, #286
	ldr	r2, .L254+64
	ldr	r1, .L254+68
.LPIC50:
	add	ip, pc, ip
.LPIC51:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC48:
	add	r2, pc, r2
.LPIC49:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L189
.L253:
	bl	__stack_chk_fail(PLT)
.L255:
	.align	2
.L254:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC64+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC17-(.LPIC52+8)
	.word	.LC20-(.LPIC55+8)
	.word	.LC21-(.LPIC56+8)
	.word	.LC24-(.LPIC61+8)
	.word	.LC25-(.LPIC62+8)
	.word	.LC23-(.LPIC60+8)
	.word	.LC15-(.LPIC58+8)
	.word	.LC15-(.LPIC59+8)
	.word	.LC19-(.LPIC54+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC63+8)
	.word	.LC18-(.LPIC53+8)
	.word	.LC22-(.LPIC57+8)
	.word	.LC2-(.LPIC50+8)
	.word	.LC3-(.LPIC51+8)
	.word	.LC16-(.LPIC48+8)
	.word	.LC1-(.LPIC49+8)
	.size	PrintHexAsciiTableEx, .-PrintHexAsciiTableEx
	.align	2
	.global	PrintHexAsciiTable
	.syntax unified
	.arm
	.fpu vfpv3
	.type	PrintHexAsciiTable, %function
PrintHexAsciiTable:
	@ args = 0, pretend = 0, frame = 128
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subs	r8, r0, #0
	ldr	r0, .L290
	mov	r6, r1
	mov	r1, r3
	sub	sp, sp, #148
	ldr	r3, .L290+4
.LPIC80:
	add	r0, pc, r0
	str	r2, [sp, #24]
	ldr	r3, [r0, r3]
	ldr	r3, [r3]
	str	r3, [sp, #140]
	mov	r3, #0
	beq	.L285
	cmp	r2, #0
	subne	r5, r8, r2
	moveq	r5, r2
	streq	r8, [sp, #24]
	cmp	r1, #0
	beq	.L260
	ldr	r0, .L290+8
.LPIC69:
	add	r0, pc, r0
	bl	printf(PLT)
.L260:
	ldr	r0, .L290+12
	mov	r2, r6
	mov	r1, r5
.LPIC70:
	add	r0, pc, r0
	bl	printf(PLT)
	cmp	r6, #0
	beq	.L256
	ldr	r3, [sp, #24]
	and	r5, r5, #15
	sub	r5, r8, r5
	add	r6, r8, r6
	cmp	r6, r5
	sub	r9, r5, r3
	str	r9, [sp, #28]
	bls	.L256
	ldr	r3, .L290+16
	add	fp, r5, #16
	mov	r7, fp
.LPIC71:
	add	r3, pc, r3
	str	r3, [sp, #36]
	ldr	r3, .L290+20
.LPIC77:
	add	r3, pc, r3
	str	r3, [sp, #16]
	ldr	r3, .L290+24
.LPIC78:
	add	r3, pc, r3
	str	r3, [sp, #20]
	ldr	r3, [sp, #28]
	sub	r4, r9, r3
	ands	r4, r4, #255
	beq	.L286
.L263:
	ldr	r0, .L290+28
	mov	r1, r9
	ldr	r10, .L290+32
	mov	r4, r5
.LPIC74:
	add	r0, pc, r0
.LPIC75:
	add	r10, pc, r10
	bl	printf(PLT)
	b	.L267
.L287:
	ldr	r0, .L290+36
	mov	r2, r10
	mov	r1, #2
.LPIC76:
	add	r0, pc, r0
	bl	printf(PLT)
.L273:
	add	r4, r4, #1
	cmp	r7, r4
	beq	.L271
.L267:
	cmp	r8, r4
	movls	r3, #1
	movhi	r3, #0
	cmp	r6, r4
	movls	r3, #0
	cmp	r3, #0
	beq	.L287
.L258:
	add	r9, sp, #40
	ldrb	r3, [r4]	@ zero_extendqisi2
	ldr	r2, [sp, #16]
	mov	r0, r9
	mov	r1, #100
	bl	EApiSprintf(PLT)
	ldr	r0, [sp, #20]
	mov	r1, r9
	bl	printf(PLT)
	b	.L273
.L268:
	mov	r0, #32
	add	r5, r5, #1
	bl	putchar(PLT)
	cmp	r7, r5
	beq	.L288
.L271:
	cmp	r6, r5
	movhi	r3, #1
	movls	r3, #0
	cmp	r8, r5
	movhi	r3, #0
	cmp	r3, #0
	beq	.L268
	ldrb	r0, [r5]	@ zero_extendqisi2
	add	r5, r5, #1
	sub	r3, r0, #32
	cmp	r3, #96
	movcs	r0, #46
	bl	putchar(PLT)
	cmp	r7, r5
	bne	.L271
.L288:
	mov	r0, #10
	mov	r5, fp
	bl	putchar(PLT)
	cmp	r6, fp
	add	r7, r7, #16
	bls	.L256
	ldr	r3, [sp, #24]
	sub	r9, fp, r3
	ldr	r3, [sp, #28]
	add	fp, fp, #16
	sub	r4, r9, r3
	ands	r4, r4, #255
	bne	.L263
.L286:
	ldr	r10, .L290+40
	mov	r0, #10
	bl	putchar(PLT)
	ldr	r0, [sp, #36]
.LPIC72:
	add	r10, pc, r10
	bl	printf(PLT)
	mov	r3, r4
	str	r4, [sp, #32]
	mov	r4, r10
	mov	r10, r3
.L264:
	mov	r2, r10
	mov	r1, #2
	add	r10, r10, #1
	mov	r0, r4
	bl	printf(PLT)
	cmp	r10, #16
	bne	.L264
	ldr	r10, .L290+44
	ldr	r4, [sp, #32]
.LPIC73:
	add	r10, pc, r10
.L265:
	mov	r1, r4
	mov	r0, r10
	add	r4, r4, #1
	bl	printf(PLT)
	cmp	r4, #16
	bne	.L265
	mov	r0, #10
	bl	putchar(PLT)
	b	.L263
.L285:
	ldr	ip, .L290+48
	mvn	lr, #256
	ldr	r0, .L290+52
	movw	r3, #286
	ldr	r2, .L290+56
	ldr	r1, .L290+60
.LPIC67:
	add	ip, pc, ip
.LPIC68:
	add	r0, pc, r0
	str	lr, [sp]
	stmib	sp, {r0, ip}
.LPIC65:
	add	r2, pc, r2
.LPIC66:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
.L256:
	ldr	r2, .L290+64
	ldr	r3, .L290+4
.LPIC79:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #140]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L289
	add	sp, sp, #148
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L289:
	bl	__stack_chk_fail(PLT)
.L291:
	.align	2
.L290:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC80+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC17-(.LPIC69+8)
	.word	.LC18-(.LPIC70+8)
	.word	.LC19-(.LPIC71+8)
	.word	.LC15-(.LPIC77+8)
	.word	.LC23-(.LPIC78+8)
	.word	.LC20-(.LPIC74+8)
	.word	.LC24-(.LPIC75+8)
	.word	.LC25-(.LPIC76+8)
	.word	.LC21-(.LPIC72+8)
	.word	.LC22-(.LPIC73+8)
	.word	.LC2-(.LPIC67+8)
	.word	.LC3-(.LPIC68+8)
	.word	.LC16-(.LPIC65+8)
	.word	.LC1-(.LPIC66+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC79+8)
	.size	PrintHexAsciiTable, .-PrintHexAsciiTable
	.section	.rodata.str1.4
	.align	2
.LC26:
	.ascii	"LclWriteFile\000"
	.align	2
.LC27:
	.ascii	"(cszFilename==NULL)\000"
	.align	2
.LC28:
	.ascii	"(stWriteBCnt==0)\000"
	.align	2
.LC29:
	.ascii	"Opening File %s(%s)\012\000"
	.align	2
.LC30:
	.ascii	"(stWriteBCnt!=fwrite(pcvBuffer, sizeof(uint8_t), st"
	.ascii	"WriteBCnt, LclFilePtr))\000"
	.text
	.align	2
	.global	LclWriteFile
	.syntax unified
	.arm
	.fpu vfpv3
	.type	LclWriteFile, %function
LclWriteFile:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	subs	r6, r0, #0
	sub	sp, sp, #16
	beq	.L301
	cmp	r1, #0
	mov	r5, r1
	beq	.L302
	cmp	r2, #0
	mov	r4, r2
	beq	.L303
	mov	r1, r3
	mov	r8, r3
	bl	fopen(PLT)
	subs	r7, r0, #0
	beq	.L304
	mov	r3, r7
	mov	r2, r4
	mov	r0, r5
	mov	r1, #1
	bl	fwrite(PLT)
	cmp	r4, r0
	bne	.L305
	mov	r0, r7
	bl	fclose(PLT)
	mov	r0, #0
.L294:
.L292:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L305:
	ldr	ip, .L306
	movw	r4, #64254
	ldr	r0, .L306+4
	movt	r4, 65535
	ldr	r2, .L306+8
	movw	r3, #438
	ldr	r1, .L306+12
.LPIC98:
	add	ip, pc, ip
.LPIC99:
	add	r0, pc, r0
.LPIC96:
	add	r2, pc, r2
.LPIC97:
	add	r1, pc, r1
.L300:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L303:
	ldr	ip, .L306+16
	mvn	r4, #256
	ldr	r0, .L306+20
	movw	r3, #425
	ldr	r2, .L306+24
	ldr	r1, .L306+28
.LPIC91:
	add	ip, pc, ip
.LPIC92:
	add	r0, pc, r0
.LPIC89:
	add	r2, pc, r2
.LPIC90:
	add	r1, pc, r1
	b	.L300
.L304:
	ldr	r0, .L306+32
	movw	r4, #64254
	ldr	r2, .L306+36
	movt	r4, 65535
	ldr	r1, .L306+40
	movw	r3, #434
.LPIC95:
	add	r0, pc, r0
	str	r8, [sp, #12]
	str	r0, [sp, #4]
.LPIC93:
	add	r2, pc, r2
.LPIC94:
	add	r1, pc, r1
	mov	r0, #76
	str	r6, [sp, #8]
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L292
.L301:
	ldr	ip, .L306+44
	mvn	r4, #256
	ldr	r0, .L306+48
	movw	r3, #415
	ldr	r2, .L306+52
	ldr	r1, .L306+56
.LPIC83:
	add	ip, pc, ip
.LPIC84:
	add	r0, pc, r0
.LPIC81:
	add	r2, pc, r2
.LPIC82:
	add	r1, pc, r1
	b	.L300
.L302:
	ldr	ip, .L306+60
	mvn	r4, #256
	ldr	r0, .L306+64
	mov	r3, #420
	ldr	r2, .L306+68
	ldr	r1, .L306+72
.LPIC87:
	add	ip, pc, ip
.LPIC88:
	add	r0, pc, r0
.LPIC85:
	add	r2, pc, r2
.LPIC86:
	add	r1, pc, r1
	b	.L300
.L307:
	.align	2
.L306:
	.word	.LC30-(.LPIC98+8)
	.word	.LC3-(.LPIC99+8)
	.word	.LC26-(.LPIC96+8)
	.word	.LC1-(.LPIC97+8)
	.word	.LC28-(.LPIC91+8)
	.word	.LC3-(.LPIC92+8)
	.word	.LC26-(.LPIC89+8)
	.word	.LC1-(.LPIC90+8)
	.word	.LC29-(.LPIC95+8)
	.word	.LC26-(.LPIC93+8)
	.word	.LC1-(.LPIC94+8)
	.word	.LC27-(.LPIC83+8)
	.word	.LC3-(.LPIC84+8)
	.word	.LC26-(.LPIC81+8)
	.word	.LC1-(.LPIC82+8)
	.word	.LC2-(.LPIC87+8)
	.word	.LC3-(.LPIC88+8)
	.word	.LC26-(.LPIC85+8)
	.word	.LC1-(.LPIC86+8)
	.size	LclWriteFile, .-LclWriteFile
	.section	.rodata.str1.4
	.align	2
.LC31:
	.ascii	"LclReadFile\000"
	.align	2
.LC32:
	.ascii	"(pvBuffer==NULL)\000"
	.align	2
.LC33:
	.ascii	"(pstReadBCnt==NULL)\000"
	.align	2
.LC34:
	.ascii	"(*pvBuffer==NULL)\000"
	.text
	.align	2
	.global	LclReadFile
	.syntax unified
	.arm
	.fpu vfpv3
	.type	LclReadFile, %function
LclReadFile:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	subs	r9, r0, #0
	sub	sp, sp, #20
	beq	.L317
	cmp	r1, #0
	mov	r7, r1
	beq	.L318
	cmp	r2, #0
	mov	r4, r2
	beq	.L319
	mov	r6, #0
	mov	r1, r3
	str	r6, [r2]
	mov	r8, r3
	bl	fopen(PLT)
	subs	r5, r0, #0
	beq	.L320
	mov	r2, #2
	mov	r1, r6
	bl	fseek(PLT)
	mov	r0, r5
	bl	ftell(PLT)
	mov	r8, r0
	bl	malloc(PLT)
	cmp	r0, #0
	str	r0, [r7]
	beq	.L321
	mov	r0, r5
	bl	rewind(PLT)
	ldr	r0, [r7]
	mov	r2, r8
	mov	r3, r5
	mov	r1, #1
	str	r8, [r4]
	bl	fread(PLT)
	str	r0, [r4]
	mov	r0, r5
	bl	fclose(PLT)
	mov	r0, r6
.L310:
.L308:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L319:
	ldr	ip, .L322
	mvn	r6, #256
	ldr	r0, .L322+4
	movw	r3, #469
	ldr	r2, .L322+8
	ldr	r1, .L322+12
.LPIC110:
	add	ip, pc, ip
.LPIC111:
	add	r0, pc, r0
.LPIC108:
	add	r2, pc, r2
.LPIC109:
	add	r1, pc, r1
.L316:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r6, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r6
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L320:
	ldr	r0, .L322+16
	mvn	r6, #1280
	ldr	r2, .L322+20
	movw	r3, #478
	ldr	r1, .L322+24
.LPIC114:
	add	r0, pc, r0
	str	r8, [sp, #12]
	str	r0, [sp, #4]
.LPIC112:
	add	r2, pc, r2
.LPIC113:
	add	r1, pc, r1
	mov	r0, #76
	str	r9, [sp, #8]
	str	r6, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r6
	b	.L308
.L317:
	ldr	ip, .L322+28
	mvn	r6, #256
	ldr	r0, .L322+32
	movw	r3, #459
	ldr	r2, .L322+36
	ldr	r1, .L322+40
.LPIC102:
	add	ip, pc, ip
.LPIC103:
	add	r0, pc, r0
.LPIC100:
	add	r2, pc, r2
.LPIC101:
	add	r1, pc, r1
	b	.L316
.L318:
	ldr	ip, .L322+44
	mvn	r6, #256
	ldr	r0, .L322+48
	mov	r3, #464
	ldr	r2, .L322+52
	ldr	r1, .L322+56
.LPIC106:
	add	ip, pc, ip
.LPIC107:
	add	r0, pc, r0
.LPIC104:
	add	r2, pc, r2
.LPIC105:
	add	r1, pc, r1
	b	.L316
.L321:
	ldr	ip, .L322+60
	mvn	r6, #2
	ldr	r0, .L322+64
	movw	r3, #486
	ldr	r2, .L322+68
	ldr	r1, .L322+72
.LPIC117:
	add	ip, pc, ip
.LPIC118:
	add	r0, pc, r0
.LPIC115:
	add	r2, pc, r2
.LPIC116:
	add	r1, pc, r1
	b	.L316
.L323:
	.align	2
.L322:
	.word	.LC33-(.LPIC110+8)
	.word	.LC3-(.LPIC111+8)
	.word	.LC31-(.LPIC108+8)
	.word	.LC1-(.LPIC109+8)
	.word	.LC29-(.LPIC114+8)
	.word	.LC31-(.LPIC112+8)
	.word	.LC1-(.LPIC113+8)
	.word	.LC27-(.LPIC102+8)
	.word	.LC3-(.LPIC103+8)
	.word	.LC31-(.LPIC100+8)
	.word	.LC1-(.LPIC101+8)
	.word	.LC32-(.LPIC106+8)
	.word	.LC3-(.LPIC107+8)
	.word	.LC31-(.LPIC104+8)
	.word	.LC1-(.LPIC105+8)
	.word	.LC34-(.LPIC117+8)
	.word	.LC3-(.LPIC118+8)
	.word	.LC31-(.LPIC115+8)
	.word	.LC1-(.LPIC116+8)
	.size	LclReadFile, .-LclReadFile
	.section	.rodata.str1.4
	.align	2
.LC35:
	.ascii	"wb\000"
	.text
	.align	2
	.global	WriteBinaryFile
	.syntax unified
	.arm
	.fpu vfpv3
	.type	WriteBinaryFile, %function
WriteBinaryFile:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	subs	r7, r0, #0
	sub	sp, sp, #16
	beq	.L333
	cmp	r1, #0
	mov	r5, r1
	beq	.L334
	cmp	r2, #0
	mov	r4, r2
	beq	.L335
	ldr	r8, .L338
.LPIC131:
	add	r8, pc, r8
	mov	r1, r8
	bl	fopen(PLT)
	subs	r6, r0, #0
	beq	.L336
	mov	r3, r6
	mov	r2, r4
	mov	r0, r5
	mov	r1, #1
	bl	fwrite(PLT)
	cmp	r4, r0
	bne	.L337
	mov	r0, r6
	bl	fclose(PLT)
	mov	r0, #0
.L326:
.L324:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L337:
	ldr	ip, .L338+4
	movw	r4, #64254
	ldr	r0, .L338+8
	movt	r4, 65535
	ldr	r2, .L338+12
	movw	r3, #438
	ldr	r1, .L338+16
.LPIC138:
	add	ip, pc, ip
.LPIC139:
	add	r0, pc, r0
.LPIC136:
	add	r2, pc, r2
.LPIC137:
	add	r1, pc, r1
.L332:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L335:
	ldr	ip, .L338+20
	mvn	r4, #256
	ldr	r0, .L338+24
	movw	r3, #425
	ldr	r2, .L338+28
	ldr	r1, .L338+32
.LPIC129:
	add	ip, pc, ip
.LPIC130:
	add	r0, pc, r0
.LPIC127:
	add	r2, pc, r2
.LPIC128:
	add	r1, pc, r1
	b	.L332
.L336:
	ldr	r0, .L338+36
	movw	r4, #64254
	ldr	r2, .L338+40
	movt	r4, 65535
	ldr	r1, .L338+44
	movw	r3, #434
.LPIC135:
	add	r0, pc, r0
	str	r8, [sp, #12]
	str	r0, [sp, #4]
.LPIC132:
	add	r2, pc, r2
.LPIC133:
	add	r1, pc, r1
	mov	r0, #76
	str	r7, [sp, #8]
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L324
.L333:
	ldr	ip, .L338+48
	mvn	r4, #256
	ldr	r0, .L338+52
	movw	r3, #415
	ldr	r2, .L338+56
	ldr	r1, .L338+60
.LPIC121:
	add	ip, pc, ip
.LPIC122:
	add	r0, pc, r0
.LPIC119:
	add	r2, pc, r2
.LPIC120:
	add	r1, pc, r1
	b	.L332
.L334:
	ldr	ip, .L338+64
	mvn	r4, #256
	ldr	r0, .L338+68
	mov	r3, #420
	ldr	r2, .L338+72
	ldr	r1, .L338+76
.LPIC125:
	add	ip, pc, ip
.LPIC126:
	add	r0, pc, r0
.LPIC123:
	add	r2, pc, r2
.LPIC124:
	add	r1, pc, r1
	b	.L332
.L339:
	.align	2
.L338:
	.word	.LC35-(.LPIC131+8)
	.word	.LC30-(.LPIC138+8)
	.word	.LC3-(.LPIC139+8)
	.word	.LC26-(.LPIC136+8)
	.word	.LC1-(.LPIC137+8)
	.word	.LC28-(.LPIC129+8)
	.word	.LC3-(.LPIC130+8)
	.word	.LC26-(.LPIC127+8)
	.word	.LC1-(.LPIC128+8)
	.word	.LC29-(.LPIC135+8)
	.word	.LC26-(.LPIC132+8)
	.word	.LC1-(.LPIC133+8)
	.word	.LC27-(.LPIC121+8)
	.word	.LC3-(.LPIC122+8)
	.word	.LC26-(.LPIC119+8)
	.word	.LC1-(.LPIC120+8)
	.word	.LC2-(.LPIC125+8)
	.word	.LC3-(.LPIC126+8)
	.word	.LC26-(.LPIC123+8)
	.word	.LC1-(.LPIC124+8)
	.size	WriteBinaryFile, .-WriteBinaryFile
	.section	.rodata.str1.4
	.align	2
.LC36:
	.ascii	"rb\000"
	.text
	.align	2
	.global	ReadBinaryFile
	.syntax unified
	.arm
	.fpu vfpv3
	.type	ReadBinaryFile, %function
ReadBinaryFile:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	subs	r8, r0, #0
	sub	sp, sp, #20
	beq	.L349
	cmp	r1, #0
	mov	r7, r1
	beq	.L350
	cmp	r2, #0
	mov	r4, r2
	beq	.L351
	ldr	r9, .L354
	mov	r6, #0
	str	r6, [r2]
.LPIC152:
	add	r9, pc, r9
	mov	r1, r9
	bl	fopen(PLT)
	subs	r5, r0, #0
	beq	.L352
	mov	r2, #2
	mov	r1, r6
	bl	fseek(PLT)
	mov	r0, r5
	bl	ftell(PLT)
	mov	r8, r0
	bl	malloc(PLT)
	cmp	r0, #0
	str	r0, [r7]
	beq	.L353
	mov	r0, r5
	bl	rewind(PLT)
	ldr	r0, [r7]
	mov	r2, r8
	mov	r3, r5
	mov	r1, #1
	str	r8, [r4]
	bl	fread(PLT)
	str	r0, [r4]
	mov	r0, r5
	bl	fclose(PLT)
	mov	r0, r6
.L342:
.L340:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L351:
	ldr	ip, .L354+4
	mvn	r6, #256
	ldr	r0, .L354+8
	movw	r3, #469
	ldr	r2, .L354+12
	ldr	r1, .L354+16
.LPIC150:
	add	ip, pc, ip
.LPIC151:
	add	r0, pc, r0
.LPIC148:
	add	r2, pc, r2
.LPIC149:
	add	r1, pc, r1
.L348:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r6, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r6
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L352:
	ldr	r0, .L354+20
	mvn	r6, #1280
	ldr	r2, .L354+24
	movw	r3, #478
	ldr	r1, .L354+28
.LPIC156:
	add	r0, pc, r0
	strd	r8, [sp, #8]
	str	r0, [sp, #4]
.LPIC153:
	add	r2, pc, r2
.LPIC154:
	add	r1, pc, r1
	mov	r0, #76
	str	r6, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r6
	b	.L340
.L349:
	ldr	ip, .L354+32
	mvn	r6, #256
	ldr	r0, .L354+36
	movw	r3, #459
	ldr	r2, .L354+40
	ldr	r1, .L354+44
.LPIC142:
	add	ip, pc, ip
.LPIC143:
	add	r0, pc, r0
.LPIC140:
	add	r2, pc, r2
.LPIC141:
	add	r1, pc, r1
	b	.L348
.L350:
	ldr	ip, .L354+48
	mvn	r6, #256
	ldr	r0, .L354+52
	mov	r3, #464
	ldr	r2, .L354+56
	ldr	r1, .L354+60
.LPIC146:
	add	ip, pc, ip
.LPIC147:
	add	r0, pc, r0
.LPIC144:
	add	r2, pc, r2
.LPIC145:
	add	r1, pc, r1
	b	.L348
.L353:
	ldr	ip, .L354+64
	mvn	r6, #2
	ldr	r0, .L354+68
	movw	r3, #486
	ldr	r2, .L354+72
	ldr	r1, .L354+76
.LPIC159:
	add	ip, pc, ip
.LPIC160:
	add	r0, pc, r0
.LPIC157:
	add	r2, pc, r2
.LPIC158:
	add	r1, pc, r1
	b	.L348
.L355:
	.align	2
.L354:
	.word	.LC36-(.LPIC152+8)
	.word	.LC33-(.LPIC150+8)
	.word	.LC3-(.LPIC151+8)
	.word	.LC31-(.LPIC148+8)
	.word	.LC1-(.LPIC149+8)
	.word	.LC29-(.LPIC156+8)
	.word	.LC31-(.LPIC153+8)
	.word	.LC1-(.LPIC154+8)
	.word	.LC27-(.LPIC142+8)
	.word	.LC3-(.LPIC143+8)
	.word	.LC31-(.LPIC140+8)
	.word	.LC1-(.LPIC141+8)
	.word	.LC32-(.LPIC146+8)
	.word	.LC3-(.LPIC147+8)
	.word	.LC31-(.LPIC144+8)
	.word	.LC1-(.LPIC145+8)
	.word	.LC34-(.LPIC159+8)
	.word	.LC3-(.LPIC160+8)
	.word	.LC31-(.LPIC157+8)
	.word	.LC1-(.LPIC158+8)
	.size	ReadBinaryFile, .-ReadBinaryFile
	.section	.rodata.str1.4
	.align	2
.LC37:
	.ascii	"w\000"
	.text
	.align	2
	.global	WriteTextFile
	.syntax unified
	.arm
	.fpu vfpv3
	.type	WriteTextFile, %function
WriteTextFile:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	subs	r7, r0, #0
	sub	sp, sp, #16
	beq	.L365
	cmp	r1, #0
	mov	r5, r1
	beq	.L366
	cmp	r2, #0
	mov	r4, r2
	beq	.L367
	ldr	r8, .L370
.LPIC173:
	add	r8, pc, r8
	mov	r1, r8
	bl	fopen(PLT)
	subs	r6, r0, #0
	beq	.L368
	mov	r3, r6
	mov	r2, r4
	mov	r0, r5
	mov	r1, #1
	bl	fwrite(PLT)
	cmp	r4, r0
	bne	.L369
	mov	r0, r6
	bl	fclose(PLT)
	mov	r0, #0
.L358:
.L356:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L369:
	ldr	ip, .L370+4
	movw	r4, #64254
	ldr	r0, .L370+8
	movt	r4, 65535
	ldr	r2, .L370+12
	movw	r3, #438
	ldr	r1, .L370+16
.LPIC180:
	add	ip, pc, ip
.LPIC181:
	add	r0, pc, r0
.LPIC178:
	add	r2, pc, r2
.LPIC179:
	add	r1, pc, r1
.L364:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L367:
	ldr	ip, .L370+20
	mvn	r4, #256
	ldr	r0, .L370+24
	movw	r3, #425
	ldr	r2, .L370+28
	ldr	r1, .L370+32
.LPIC171:
	add	ip, pc, ip
.LPIC172:
	add	r0, pc, r0
.LPIC169:
	add	r2, pc, r2
.LPIC170:
	add	r1, pc, r1
	b	.L364
.L368:
	ldr	r0, .L370+36
	movw	r4, #64254
	ldr	r2, .L370+40
	movt	r4, 65535
	ldr	r1, .L370+44
	movw	r3, #434
.LPIC177:
	add	r0, pc, r0
	str	r8, [sp, #12]
	str	r0, [sp, #4]
.LPIC174:
	add	r2, pc, r2
.LPIC175:
	add	r1, pc, r1
	mov	r0, #76
	str	r7, [sp, #8]
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L356
.L365:
	ldr	ip, .L370+48
	mvn	r4, #256
	ldr	r0, .L370+52
	movw	r3, #415
	ldr	r2, .L370+56
	ldr	r1, .L370+60
.LPIC163:
	add	ip, pc, ip
.LPIC164:
	add	r0, pc, r0
.LPIC161:
	add	r2, pc, r2
.LPIC162:
	add	r1, pc, r1
	b	.L364
.L366:
	ldr	ip, .L370+64
	mvn	r4, #256
	ldr	r0, .L370+68
	mov	r3, #420
	ldr	r2, .L370+72
	ldr	r1, .L370+76
.LPIC167:
	add	ip, pc, ip
.LPIC168:
	add	r0, pc, r0
.LPIC165:
	add	r2, pc, r2
.LPIC166:
	add	r1, pc, r1
	b	.L364
.L371:
	.align	2
.L370:
	.word	.LC37-(.LPIC173+8)
	.word	.LC30-(.LPIC180+8)
	.word	.LC3-(.LPIC181+8)
	.word	.LC26-(.LPIC178+8)
	.word	.LC1-(.LPIC179+8)
	.word	.LC28-(.LPIC171+8)
	.word	.LC3-(.LPIC172+8)
	.word	.LC26-(.LPIC169+8)
	.word	.LC1-(.LPIC170+8)
	.word	.LC29-(.LPIC177+8)
	.word	.LC26-(.LPIC174+8)
	.word	.LC1-(.LPIC175+8)
	.word	.LC27-(.LPIC163+8)
	.word	.LC3-(.LPIC164+8)
	.word	.LC26-(.LPIC161+8)
	.word	.LC1-(.LPIC162+8)
	.word	.LC2-(.LPIC167+8)
	.word	.LC3-(.LPIC168+8)
	.word	.LC26-(.LPIC165+8)
	.word	.LC1-(.LPIC166+8)
	.size	WriteTextFile, .-WriteTextFile
	.section	.rodata.str1.4
	.align	2
.LC38:
	.ascii	"r\000"
	.text
	.align	2
	.global	ReadTextFile
	.syntax unified
	.arm
	.fpu vfpv3
	.type	ReadTextFile, %function
ReadTextFile:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	subs	r8, r0, #0
	sub	sp, sp, #20
	beq	.L381
	cmp	r1, #0
	mov	r7, r1
	beq	.L382
	cmp	r2, #0
	mov	r4, r2
	beq	.L383
	ldr	r9, .L386
	mov	r6, #0
	str	r6, [r2]
.LPIC194:
	add	r9, pc, r9
	mov	r1, r9
	bl	fopen(PLT)
	subs	r5, r0, #0
	beq	.L384
	mov	r2, #2
	mov	r1, r6
	bl	fseek(PLT)
	mov	r0, r5
	bl	ftell(PLT)
	mov	r8, r0
	bl	malloc(PLT)
	cmp	r0, #0
	str	r0, [r7]
	beq	.L385
	mov	r0, r5
	bl	rewind(PLT)
	ldr	r0, [r7]
	mov	r2, r8
	mov	r3, r5
	mov	r1, #1
	str	r8, [r4]
	bl	fread(PLT)
	str	r0, [r4]
	mov	r0, r5
	bl	fclose(PLT)
	mov	r0, r6
.L374:
.L372:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L383:
	ldr	ip, .L386+4
	mvn	r6, #256
	ldr	r0, .L386+8
	movw	r3, #469
	ldr	r2, .L386+12
	ldr	r1, .L386+16
.LPIC192:
	add	ip, pc, ip
.LPIC193:
	add	r0, pc, r0
.LPIC190:
	add	r2, pc, r2
.LPIC191:
	add	r1, pc, r1
.L380:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r6, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r6
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L384:
	ldr	r0, .L386+20
	mvn	r6, #1280
	ldr	r2, .L386+24
	movw	r3, #478
	ldr	r1, .L386+28
.LPIC198:
	add	r0, pc, r0
	strd	r8, [sp, #8]
	str	r0, [sp, #4]
.LPIC195:
	add	r2, pc, r2
.LPIC196:
	add	r1, pc, r1
	mov	r0, #76
	str	r6, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r6
	b	.L372
.L381:
	ldr	ip, .L386+32
	mvn	r6, #256
	ldr	r0, .L386+36
	movw	r3, #459
	ldr	r2, .L386+40
	ldr	r1, .L386+44
.LPIC184:
	add	ip, pc, ip
.LPIC185:
	add	r0, pc, r0
.LPIC182:
	add	r2, pc, r2
.LPIC183:
	add	r1, pc, r1
	b	.L380
.L382:
	ldr	ip, .L386+48
	mvn	r6, #256
	ldr	r0, .L386+52
	mov	r3, #464
	ldr	r2, .L386+56
	ldr	r1, .L386+60
.LPIC188:
	add	ip, pc, ip
.LPIC189:
	add	r0, pc, r0
.LPIC186:
	add	r2, pc, r2
.LPIC187:
	add	r1, pc, r1
	b	.L380
.L385:
	ldr	ip, .L386+64
	mvn	r6, #2
	ldr	r0, .L386+68
	movw	r3, #486
	ldr	r2, .L386+72
	ldr	r1, .L386+76
.LPIC201:
	add	ip, pc, ip
.LPIC202:
	add	r0, pc, r0
.LPIC199:
	add	r2, pc, r2
.LPIC200:
	add	r1, pc, r1
	b	.L380
.L387:
	.align	2
.L386:
	.word	.LC38-(.LPIC194+8)
	.word	.LC33-(.LPIC192+8)
	.word	.LC3-(.LPIC193+8)
	.word	.LC31-(.LPIC190+8)
	.word	.LC1-(.LPIC191+8)
	.word	.LC29-(.LPIC198+8)
	.word	.LC31-(.LPIC195+8)
	.word	.LC1-(.LPIC196+8)
	.word	.LC27-(.LPIC184+8)
	.word	.LC3-(.LPIC185+8)
	.word	.LC31-(.LPIC182+8)
	.word	.LC1-(.LPIC183+8)
	.word	.LC32-(.LPIC188+8)
	.word	.LC3-(.LPIC189+8)
	.word	.LC31-(.LPIC186+8)
	.word	.LC1-(.LPIC187+8)
	.word	.LC34-(.LPIC201+8)
	.word	.LC3-(.LPIC202+8)
	.word	.LC31-(.LPIC199+8)
	.word	.LC1-(.LPIC200+8)
	.size	ReadTextFile, .-ReadTextFile
	.align	2
	.global	EeeP_Set16BitValue_BE
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeeP_Set16BitValue_BE, %function
EeeP_Set16BitValue_BE:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsr	r3, r1, #8
	strb	r1, [r0, #1]
	strb	r3, [r0]
	bx	lr
	.size	EeeP_Set16BitValue_BE, .-EeeP_Set16BitValue_BE
	.align	2
	.global	EeeP_Get16BitValue_BE
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeeP_Get16BitValue_BE, %function
EeeP_Get16BitValue_BE:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	r0, [r0]	@ unaligned
	rev16	r0, r0
	uxth	r0, r0
	bx	lr
	.size	EeeP_Get16BitValue_BE, .-EeeP_Get16BitValue_BE
	.align	2
	.global	EeeP_Set32BitValue_BE
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeeP_Set32BitValue_BE, %function
EeeP_Set32BitValue_BE:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	rev	r1, r1
	str	r1, [r0]	@ unaligned
	bx	lr
	.size	EeeP_Set32BitValue_BE, .-EeeP_Set32BitValue_BE
	.align	2
	.global	EeeP_Get32BitValue_BE
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeeP_Get32BitValue_BE, %function
EeeP_Get32BitValue_BE:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0]	@ unaligned
	rev	r0, r0
	bx	lr
	.size	EeeP_Get32BitValue_BE, .-EeeP_Get32BitValue_BE
	.align	2
	.global	EeeP_Set64BitValue_BE
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeeP_Set64BitValue_BE, %function
EeeP_Set64BitValue_BE:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsr	ip, r3, #24
	mov	r1, #0
	rev	r2, r2
	bfi	r1, ip, #0, #8
	lsr	ip, r3, #16
	str	r2, [r0, #4]	@ unaligned
	lsr	r2, r3, #8
	bfi	r1, ip, #8, #8
	bfi	r1, r2, #16, #8
	bfi	r1, r3, #24, #8
	str	r1, [r0]	@ unaligned
	bx	lr
	.size	EeeP_Set64BitValue_BE, .-EeeP_Set64BitValue_BE
	.align	2
	.global	EeeP_Get64BitValue_BE
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeeP_Get64BitValue_BE, %function
EeeP_Get64BitValue_BE:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r1, [r0, #3]	@ zero_extendqisi2
	ldrb	ip, [r0, #2]	@ zero_extendqisi2
	ldrb	r2, [r0, #1]	@ zero_extendqisi2
	ldrb	r3, [r0]	@ zero_extendqisi2
	ldr	r0, [r0, #4]	@ unaligned
	orr	r1, r1, ip, lsl #8
	orr	r1, r1, r2, lsl #16
	rev	r0, r0
	orr	r1, r1, r3, lsl #24
	orr	r1, r1, r0, asr #31
	bx	lr
	.size	EeeP_Get64BitValue_BE, .-EeeP_Get64BitValue_BE
	.align	2
	.global	EeeP_Set16BitValue_LE
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeeP_Set16BitValue_LE, %function
EeeP_Set16BitValue_LE:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsr	r3, r1, #8
	strb	r1, [r0]
	strb	r3, [r0, #1]
	bx	lr
	.size	EeeP_Set16BitValue_LE, .-EeeP_Set16BitValue_LE
	.align	2
	.global	EeeP_Get16BitValue_LE
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeeP_Get16BitValue_LE, %function
EeeP_Get16BitValue_LE:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	r0, [r0]	@ unaligned
	bx	lr
	.size	EeeP_Get16BitValue_LE, .-EeeP_Get16BitValue_LE
	.align	2
	.global	EeeP_Set32BitValue_LE
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeeP_Set32BitValue_LE, %function
EeeP_Set32BitValue_LE:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0]	@ unaligned
	bx	lr
	.size	EeeP_Set32BitValue_LE, .-EeeP_Set32BitValue_LE
	.align	2
	.global	EeeP_Get32BitValue_LE
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeeP_Get32BitValue_LE, %function
EeeP_Get32BitValue_LE:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0]	@ unaligned
	bx	lr
	.size	EeeP_Get32BitValue_LE, .-EeeP_Get32BitValue_LE
	.align	2
	.global	EeeP_Set64BitValue_LE
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeeP_Set64BitValue_LE, %function
EeeP_Set64BitValue_LE:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsr	ip, r3, #8
	mov	r1, #0
	bfi	r1, r3, #0, #8
	str	r2, [r0]	@ unaligned
	bfi	r1, ip, #8, #8
	lsr	ip, r3, #16
	lsr	r3, r3, #24
	bfi	r1, ip, #16, #8
	bfi	r1, r3, #24, #8
	str	r1, [r0, #4]	@ unaligned
	bx	lr
	.size	EeeP_Set64BitValue_LE, .-EeeP_Set64BitValue_LE
	.align	2
	.global	EeeP_Get64BitValue_LE
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeeP_Get64BitValue_LE, %function
EeeP_Get64BitValue_LE:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, r0
	str	lr, [sp, #-4]!
	ldr	r0, [r0]	@ unaligned
	ldrb	r3, [r2, #4]	@ zero_extendqisi2
	ldrb	lr, [r2, #5]	@ zero_extendqisi2
	ldrb	ip, [r2, #6]	@ zero_extendqisi2
	ldrb	r1, [r2, #7]	@ zero_extendqisi2
	orr	r3, r3, r0, asr #31
	orr	r3, r3, lr, lsl #8
	orr	r3, r3, ip, lsl #16
	orr	r1, r3, r1, lsl #24
	ldr	pc, [sp], #4
	.size	EeeP_Get64BitValue_LE, .-EeeP_Get64BitValue_LE
	.global	CRC_CCITT
	.section	.data.rel.local,"aw"
	.align	2
	.type	CRC_CCITT, %object
	.size	CRC_CCITT, 20
CRC_CCITT:
	.word	u16CRC_CCITT_init
	.word	u16CRC_CCITT_bytes
	.word	u16CRC_CCITT_fini
	.word	u16CRC_CCITT_verify
	.word	2
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
