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
	.file	"BinFuncs.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	u32ChecksumBlock
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	u32ChecksumBlock, %function
u32ChecksumBlock:
.LFB1:
	.file 1 "/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/linux/../BinFuncs.c"
	.loc 1 46 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -4
	add	fp, sp, #0
	.cfi_def_cfa_register 11
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	.loc 1 47 12
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 48 8
	b	.L2
.L3:
	.loc 1 49 24
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 49 13
	mov	r2, r3
	.loc 1 49 11
	ldr	r3, [fp, #-8]
	add	r3, r3, r2
	str	r3, [fp, #-8]
	.loc 1 50 14
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L2:
	.loc 1 48 17
	ldr	r3, [fp, #-20]
	sub	r2, r3, #1
	str	r2, [fp, #-20]
	.loc 1 48 9
	cmp	r3, #0
	bne	.L3
	.loc 1 52 10
	ldr	r3, [fp, #-8]
	.loc 1 53 1
	mov	r0, r3
	add	sp, fp, #0
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	fp, [sp], #4
	.cfi_restore 11
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE1:
	.size	u32ChecksumBlock, .-u32ChecksumBlock
	.align	2
	.global	u16ChecksumBlock
	.syntax unified
	.arm
	.fpu vfpv3
	.type	u16ChecksumBlock, %function
u16ChecksumBlock:
.LFB2:
	.loc 1 59 1
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
	.loc 1 60 10
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	u32ChecksumBlock(PLT)
	mov	r3, r0
	uxth	r3, r3
	.loc 1 61 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE2:
	.size	u16ChecksumBlock, .-u16ChecksumBlock
	.align	2
	.global	u8ChecksumBlock
	.syntax unified
	.arm
	.fpu vfpv3
	.type	u8ChecksumBlock, %function
u8ChecksumBlock:
.LFB3:
	.loc 1 67 1
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
	.loc 1 68 10
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	u32ChecksumBlock(PLT)
	mov	r3, r0
	uxtb	r3, r3
	.loc 1 69 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE3:
	.size	u8ChecksumBlock, .-u8ChecksumBlock
	.section	.rodata
	.align	2
.LC0:
	.ascii	"u16CRC_CCITT_init\000"
	.align	2
.LC1:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux/../BinFuncs.c\000"
	.align	2
.LC2:
	.ascii	"(pContext==NULL)\000"
	.align	2
.LC3:
	.ascii	"%s\012\000"
	.align	2
.LC4:
	.ascii	"(pCRC==NULL)\000"
	.text
	.align	2
	.global	u16CRC_CCITT_init
	.syntax unified
	.arm
	.fpu vfpv3
	.type	u16CRC_CCITT_init, %function
u16CRC_CCITT_init:
.LFB4:
	.loc 1 80 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #32
	str	r0, [fp, #-16]
	.loc 1 81 16
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 83 3
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L10
	.loc 1 83 3 is_stmt 0 discriminator 1
	ldr	r3, .L14
.LPIC0:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L14+4
.LPIC1:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #83
	ldr	r2, .L14+8
.LPIC2:
	add	r2, pc, r2
	ldr	r1, .L14+12
.LPIC3:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-12]
	b	.L11
.L10:
	.loc 1 88 18 is_stmt 1
	mov	r0, #8
	bl	malloc(PLT)
	mov	r3, r0
	str	r3, [fp, #-8]
	.loc 1 88 12
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-8]
	str	r2, [r3]
	.loc 1 89 3
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L12
	.loc 1 89 3 is_stmt 0 discriminator 1
	ldr	r3, .L14+16
.LPIC4:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L14+20
.LPIC5:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #2
	str	r3, [sp]
	mov	r3, #89
	ldr	r2, .L14+24
.LPIC6:
	add	r2, pc, r2
	ldr	r1, .L14+28
.LPIC7:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #2
	str	r3, [fp, #-12]
	b	.L11
.L12:
	.loc 1 94 12 is_stmt 1
	ldr	r3, [fp, #-8]
	mov	r2, #0
	str	r2, [r3]
	.loc 1 95 12
	ldr	r3, [fp, #-8]
	mov	r2, #0
	str	r2, [r3, #4]
.L11:
	.loc 1 98 10
	ldr	r3, [fp, #-12]
	.loc 1 99 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L15:
	.align	2
.L14:
	.word	.LC2-(.LPIC0+8)
	.word	.LC3-(.LPIC1+8)
	.word	.LC0-(.LPIC2+8)
	.word	.LC1-(.LPIC3+8)
	.word	.LC4-(.LPIC4+8)
	.word	.LC3-(.LPIC5+8)
	.word	.LC0-(.LPIC6+8)
	.word	.LC1-(.LPIC7+8)
	.cfi_endproc
.LFE4:
	.size	u16CRC_CCITT_init, .-u16CRC_CCITT_init
	.section	.rodata
	.align	2
.LC5:
	.ascii	"u16CRC_CCITT_bytes\000"
	.align	2
.LC6:
	.ascii	"(pcvBuffer==NULL)\000"
	.text
	.align	2
	.global	u16CRC_CCITT_bytes
	.syntax unified
	.arm
	.fpu vfpv3
	.type	u16CRC_CCITT_bytes, %function
u16CRC_CCITT_bytes:
.LFB5:
	.loc 1 116 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #56
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	str	r2, [fp, #-40]
	.loc 1 117 16
	mov	r3, #0
	str	r3, [fp, #-24]
	.loc 1 118 18
	ldr	r3, [fp, #-36]
	str	r3, [fp, #-20]
	.loc 1 119 18
	ldr	r3, [fp, #-32]
	str	r3, [fp, #-8]
	.loc 1 120 18
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	str	r3, [fp, #-16]
	.loc 1 122 3
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	bne	.L17
	.loc 1 122 3 is_stmt 0 discriminator 1
	ldr	r3, .L26
.LPIC8:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L26+4
.LPIC9:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #122
	ldr	r2, .L26+8
.LPIC10:
	add	r2, pc, r2
	ldr	r1, .L26+12
.LPIC11:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-24]
	b	.L18
.L17:
	.loc 1 131 12 is_stmt 1
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-40]
	add	r2, r2, r3
	ldr	r3, [fp, #-8]
	str	r2, [r3, #4]
	.loc 1 132 9
	b	.L19
.L24:
	.loc 1 133 22
	ldr	r3, [fp, #-20]
	add	r2, r3, #1
	str	r2, [fp, #-20]
	.loc 1 133 11
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 133 25
	lsl	r3, r3, #8
	mov	r2, r3
	.loc 1 133 8
	ldr	r3, [fp, #-16]
	eor	r3, r3, r2
	str	r3, [fp, #-16]
	.loc 1 134 12
	mov	r3, #8
	str	r3, [fp, #-12]
	.loc 1 134 5
	b	.L20
.L23:
	.loc 1 135 15
	ldr	r3, [fp, #-16]
	and	r3, r3, #32768
	.loc 1 135 10
	cmp	r3, #0
	beq	.L21
	.loc 1 136 12
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #1
	str	r3, [fp, #-16]
	.loc 1 137 12
	ldr	r3, [fp, #-16]
	eor	r3, r3, #4096
	eor	r3, r3, #33
	str	r3, [fp, #-16]
	b	.L22
.L21:
	.loc 1 139 12
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #1
	str	r3, [fp, #-16]
.L22:
	.loc 1 134 23 discriminator 2
	ldr	r3, [fp, #-12]
	sub	r3, r3, #1
	str	r3, [fp, #-12]
.L20:
	.loc 1 134 17 discriminator 1
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bne	.L23
.L19:
	.loc 1 132 18
	ldr	r3, [fp, #-40]
	sub	r2, r3, #1
	str	r2, [fp, #-40]
	.loc 1 132 10
	cmp	r3, #0
	bne	.L24
	.loc 1 143 12
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-16]
	str	r2, [r3]
.L18:
	.loc 1 146 10
	ldr	r3, [fp, #-24]
	.loc 1 147 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L27:
	.align	2
.L26:
	.word	.LC6-(.LPIC8+8)
	.word	.LC3-(.LPIC9+8)
	.word	.LC5-(.LPIC10+8)
	.word	.LC1-(.LPIC11+8)
	.cfi_endproc
.LFE5:
	.size	u16CRC_CCITT_bytes, .-u16CRC_CCITT_bytes
	.section	.rodata
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
.LFB6:
	.loc 1 153 1
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
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	.loc 1 154 16
	mov	r3, #0
	str	r3, [fp, #-16]
	.loc 1 155 17
	ldr	r3, [fp, #-24]
	ldr	r3, [r3]
	str	r3, [fp, #-12]
	.loc 1 156 17
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	.loc 1 157 3
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L29
	.loc 1 157 3 is_stmt 0 discriminator 1
	ldr	r3, .L32
.LPIC12:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L32+4
.LPIC13:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #157
	ldr	r2, .L32+8
.LPIC14:
	add	r2, pc, r2
	ldr	r1, .L32+12
.LPIC15:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-16]
	b	.L30
.L29:
	.loc 1 163 3 is_stmt 1
	ldr	r3, [fp, #-24]
	ldr	r3, [r3]
	mov	r0, r3
	bl	free(PLT)
	.loc 1 164 12
	ldr	r3, [fp, #-24]
	mov	r2, #0
	str	r2, [r3]
	.loc 1 166 3
	ldr	r3, [fp, #-8]
	uxth	r3, r3
	mov	r1, r3
	ldr	r0, [fp, #-28]
	bl	EeeP_Set16BitValue_BE(PLT)
.L30:
	.loc 1 168 10
	ldr	r3, [fp, #-16]
	.loc 1 169 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L33:
	.align	2
.L32:
	.word	.LC8-(.LPIC12+8)
	.word	.LC3-(.LPIC13+8)
	.word	.LC7-(.LPIC14+8)
	.word	.LC1-(.LPIC15+8)
	.cfi_endproc
.LFE6:
	.size	u16CRC_CCITT_fini, .-u16CRC_CCITT_fini
	.section	.rodata
	.align	2
.LC9:
	.ascii	"TB \000"
	.align	2
.LC10:
	.ascii	"u16CRC_CCITT_fini(pContext, Digest)\000"
	.align	2
.LC11:
	.ascii	"u16CRC_CCITT_verify\000"
	.align	2
.LC12:
	.ascii	"Invalid CRC CCITT\000"
	.text
	.align	2
	.global	u16CRC_CCITT_verify
	.syntax unified
	.arm
	.fpu vfpv3
	.type	u16CRC_CCITT_verify, %function
u16CRC_CCITT_verify:
.LFB7:
	.loc 1 175 1
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
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	.loc 1 175 1
	ldr	r2, .L40
.LPIC24:
	add	r2, pc, r2
	ldr	r3, .L40+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 176 16
	mov	r3, #0
	str	r3, [fp, #-16]
	.loc 1 179 3
	sub	r3, fp, #12
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	u16CRC_CCITT_fini(PLT)
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L35
	.loc 1 179 3 is_stmt 0 discriminator 1
	ldr	r3, .L40+8
.LPIC16:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L40+12
.LPIC17:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-16]
	str	r3, [sp]
	mov	r3, #179
	ldr	r2, .L40+16
.LPIC18:
	add	r2, pc, r2
	ldr	r1, .L40+20
.LPIC19:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L36
.L35:
	.loc 1 181 3 is_stmt 1
	sub	r3, fp, #12
	mov	r2, #2
	ldr	r1, [fp, #-28]
	mov	r0, r3
	bl	memcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L39
	.loc 1 181 3 is_stmt 0 discriminator 1
	ldr	r3, .L40+24
.LPIC20:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L40+28
.LPIC21:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #3840
	str	r3, [sp]
	mov	r3, #181
	ldr	r2, .L40+32
.LPIC22:
	add	r2, pc, r2
	ldr	r1, .L40+36
.LPIC23:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #3840
	str	r3, [fp, #-16]
	b	.L36
.L39:
	.loc 1 188 1 is_stmt 1
	nop
.L36:
	.loc 1 189 10
	ldr	r3, [fp, #-16]
	.loc 1 175 1
	ldr	r1, .L40+40
.LPIC25:
	add	r1, pc, r1
	.loc 1 190 1
	ldr	r2, .L40+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L38
	bl	__stack_chk_fail(PLT)
.L38:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L41:
	.align	2
.L40:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC24+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC10-(.LPIC16+8)
	.word	.LC3-(.LPIC17+8)
	.word	.LC9-(.LPIC18+8)
	.word	.LC1-(.LPIC19+8)
	.word	.LC12-(.LPIC20+8)
	.word	.LC3-(.LPIC21+8)
	.word	.LC11-(.LPIC22+8)
	.word	.LC1-(.LPIC23+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC25+8)
	.cfi_endproc
.LFE7:
	.size	u16CRC_CCITT_verify, .-u16CRC_CCITT_verify
	.section	.rodata
	.align	2
.LC13:
	.ascii	"u16CRC_CCITT_init(&pContext)\000"
	.align	2
.LC14:
	.ascii	"u16CRC_CCITT_bytes(pContext, pcvBuffer, stCount)\000"
	.align	2
.LC15:
	.ascii	"u16CRC_CCITT_fini(&pContext, pvDigest)\000"
	.text
	.align	2
	.global	u16CRC_CCITT
	.syntax unified
	.arm
	.fpu vfpv3
	.type	u16CRC_CCITT, %function
u16CRC_CCITT:
.LFB8:
	.loc 1 198 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #48
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	.loc 1 198 1
	ldr	r2, .L49
.LPIC38:
	add	r2, pc, r2
	ldr	r3, .L49+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 199 16
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 201 3
	sub	r3, fp, #16
	mov	r0, r3
	bl	u16CRC_CCITT_init(PLT)
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L43
	.loc 1 201 3 is_stmt 0 discriminator 1
	ldr	r3, .L49+8
.LPIC26:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L49+12
.LPIC27:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-12]
	str	r3, [sp]
	mov	r3, #201
	ldr	r2, .L49+16
.LPIC28:
	add	r2, pc, r2
	ldr	r1, .L49+20
.LPIC29:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L44
.L43:
	.loc 1 202 3 is_stmt 1
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	ldr	r1, [fp, #-24]
	mov	r0, r3
	bl	u16CRC_CCITT_bytes(PLT)
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L45
	.loc 1 202 3 is_stmt 0 discriminator 1
	ldr	r3, .L49+24
.LPIC30:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L49+28
.LPIC31:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-12]
	str	r3, [sp]
	mov	r3, #202
	ldr	r2, .L49+32
.LPIC32:
	add	r2, pc, r2
	ldr	r1, .L49+36
.LPIC33:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L44
.L45:
	.loc 1 203 3 is_stmt 1
	sub	r3, fp, #16
	ldr	r1, [fp, #-32]
	mov	r0, r3
	bl	u16CRC_CCITT_fini(PLT)
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L48
	.loc 1 203 3 is_stmt 0 discriminator 1
	ldr	r3, .L49+40
.LPIC34:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L49+44
.LPIC35:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-12]
	str	r3, [sp]
	mov	r3, #203
	ldr	r2, .L49+48
.LPIC36:
	add	r2, pc, r2
	ldr	r1, .L49+52
.LPIC37:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L44
.L48:
	.loc 1 204 1 is_stmt 1
	nop
.L44:
	.loc 1 205 10
	ldr	r3, [fp, #-12]
	.loc 1 198 1
	ldr	r1, .L49+56
.LPIC39:
	add	r1, pc, r1
	.loc 1 206 1
	ldr	r2, .L49+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L47
	bl	__stack_chk_fail(PLT)
.L47:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L50:
	.align	2
.L49:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC38+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC13-(.LPIC26+8)
	.word	.LC3-(.LPIC27+8)
	.word	.LC9-(.LPIC28+8)
	.word	.LC1-(.LPIC29+8)
	.word	.LC14-(.LPIC30+8)
	.word	.LC3-(.LPIC31+8)
	.word	.LC9-(.LPIC32+8)
	.word	.LC1-(.LPIC33+8)
	.word	.LC15-(.LPIC34+8)
	.word	.LC3-(.LPIC35+8)
	.word	.LC9-(.LPIC36+8)
	.word	.LC1-(.LPIC37+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC39+8)
	.cfi_endproc
.LFE8:
	.size	u16CRC_CCITT, .-u16CRC_CCITT
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
	.text
	.align	2
	.global	cBin2Ascii
	.syntax unified
	.arm
	.fpu vfpv3
	.type	cBin2Ascii, %function
cBin2Ascii:
.LFB9:
	.loc 1 228 1
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
	.loc 1 229 5
	ldr	r3, [fp, #-8]
	cmp	r3, #31
	bls	.L52
	.loc 1 229 19 discriminator 1
	ldr	r3, [fp, #-8]
	cmp	r3, #127
	bhi	.L52
	.loc 1 230 12
	ldr	r3, [fp, #-8]
	uxtb	r3, r3
	b	.L53
.L52:
	.loc 1 232 12
	mov	r3, #46
.L53:
	.loc 1 234 1
	mov	r0, r3
	add	sp, fp, #0
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	fp, [sp], #4
	.cfi_restore 11
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE9:
	.size	cBin2Ascii, .-cBin2Ascii
	.section	.rodata
	.align	2
.LC16:
	.ascii	"%02X\000"
	.text
	.align	2
	.global	siBin2Ascii
	.syntax unified
	.arm
	.fpu vfpv3
	.type	siBin2Ascii, %function
siBin2Ascii:
.LFB10:
	.loc 1 243 1
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	.loc 1 244 16
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 246 15
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 246 5
	b	.L55
.L58:
	.loc 1 247 16
	ldr	r3, [fp, #4]
	and	r3, r3, #256
	.loc 1 247 9
	cmp	r3, #0
	beq	.L56
	.loc 1 248 20
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-16]
	add	r0, r2, r3
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-20]
	sub	r1, r2, r3
	.loc 1 252 35
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-8]
	sub	r3, r2, r3
	sub	r3, r3, #1
	.loc 1 252 22
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 248 20
	ldr	r2, .L60
.LPIC40:
	add	r2, pc, r2
	bl	EApiSprintf(PLT)
	mov	r2, r0
	.loc 1 248 18
	ldr	r3, [fp, #-12]
	add	r3, r3, r2
	str	r3, [fp, #-12]
	b	.L57
.L56:
	.loc 1 255 20
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-16]
	add	r0, r2, r3
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-20]
	sub	r1, r2, r3
	.loc 1 259 22
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 255 20
	ldr	r2, .L60+4
.LPIC41:
	add	r2, pc, r2
	bl	EApiSprintf(PLT)
	mov	r2, r0
	.loc 1 255 18
	ldr	r3, [fp, #-12]
	add	r3, r3, r2
	str	r3, [fp, #-12]
.L57:
	.loc 1 246 39 discriminator 2
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L55:
	.loc 1 246 24 discriminator 1
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	bcc	.L58
	.loc 1 263 12
	ldr	r3, [fp, #-12]
	.loc 1 264 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L61:
	.align	2
.L60:
	.word	.LC16-(.LPIC40+8)
	.word	.LC16-(.LPIC41+8)
	.cfi_endproc
.LFE10:
	.size	siBin2Ascii, .-siBin2Ascii
	.section	.rodata
	.align	2
.LC17:
	.ascii	"PrintHexAsciiTableEx\000"
	.align	2
.LC18:
	.ascii	"\012%s\012\000"
	.align	2
.LC19:
	.ascii	"\012\011OFFSET = 0x%08lX, LENGTH = 0x%08lX\012\000"
	.global	__aeabi_uidivmod
	.align	2
.LC20:
	.ascii	"         \000"
	.align	2
.LC21:
	.ascii	"%0*lX \000"
	.align	2
.LC22:
	.ascii	"%lX\000"
	.align	2
.LC23:
	.ascii	"%08lX \000"
	.align	2
.LC24:
	.ascii	"%s \000"
	.align	2
.LC25:
	.ascii	"\000"
	.align	2
.LC26:
	.ascii	"%*s \000"
	.text
	.align	2
	.global	PrintHexAsciiTableEx
	.syntax unified
	.arm
	.fpu vfpv3
	.type	PrintHexAsciiTableEx, %function
PrintHexAsciiTableEx:
.LFB11:
	.loc 1 274 1
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 152
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #168
	str	r0, [fp, #-144]
	str	r1, [fp, #-148]
	str	r2, [fp, #-152]
	str	r3, [fp, #-156]
	.loc 1 274 1
	ldr	r2, .L92
.LPIC55:
	add	r2, pc, r2
	ldr	r3, .L92+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 275 16
	mov	r3, #0
	str	r3, [fp, #-140]
	.loc 1 286 5
	ldr	r3, [fp, #-144]
	cmp	r3, #0
	bne	.L63
	.loc 1 286 5 is_stmt 0 discriminator 1
	ldr	r3, .L92+8
.LPIC42:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L92+12
.LPIC43:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #286
	ldr	r2, .L92+16
.LPIC44:
	add	r2, pc, r2
	ldr	r1, .L92+20
.LPIC45:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-140]
	b	.L64
.L63:
	.loc 1 291 7 is_stmt 1
	ldr	r3, [fp, #-152]
	cmp	r3, #0
	bne	.L65
	.loc 1 292 14
	ldr	r3, [fp, #-144]
	str	r3, [fp, #-152]
.L65:
	.loc 1 294 12
	ldr	r3, [fp, #-152]
	str	r3, [fp, #-132]
	.loc 1 296 51
	ldr	r3, [fp, #4]
	lsr	r3, r3, #12
	and	r3, r3, #7
	.loc 1 296 20
	mov	r2, #1
	lsl	r3, r2, r3
	.loc 1 296 18
	str	r3, [fp, #-128]
	.loc 1 297 19
	ldr	r3, [fp, #4]
	and	r3, r3, #63
	str	r3, [fp, #-124]
	.loc 1 298 14
	ldr	r3, [fp, #-124]
	ldr	r2, [fp, #-128]
	mul	r3, r2, r3
	str	r3, [fp, #-120]
	.loc 1 299 16
	ldr	r2, [fp, #-144]
	ldr	r3, [fp, #-148]
	add	r3, r2, r3
	str	r3, [fp, #-116]
	.loc 1 301 7
	ldr	r3, [fp, #-156]
	cmp	r3, #0
	beq	.L66
	.loc 1 302 7
	ldr	r1, [fp, #-156]
	ldr	r3, .L92+24
.LPIC46:
	add	r3, pc, r3
	mov	r0, r3
	bl	printf(PLT)
.L66:
	.loc 1 303 35
	ldr	r2, [fp, #-144]
	ldr	r3, [fp, #-132]
	sub	r3, r2, r3
	.loc 1 303 13
	str	r3, [fp, #-136]
	.loc 1 305 16
	ldr	r3, [fp, #4]
	and	r3, r3, #64
	.loc 1 305 7
	cmp	r3, #0
	beq	.L67
	.loc 1 306 7
	ldr	r2, [fp, #-148]
	ldr	r1, [fp, #-136]
	ldr	r3, .L92+28
.LPIC47:
	add	r3, pc, r3
	mov	r0, r3
	bl	printf(PLT)
.L67:
	.loc 1 308 7
	ldr	r3, [fp, #-148]
	cmp	r3, #0
	beq	.L91
	.loc 1 310 46
	ldr	r3, [fp, #-136]
	ldr	r1, [fp, #-120]
	mov	r0, r3
	bl	__aeabi_uidivmod(PLT)
	mov	r3, r1
	.loc 1 310 35
	rsb	r3, r3, #0
	.loc 1 310 12
	ldr	r2, [fp, #-144]
	add	r3, r2, r3
	str	r3, [fp, #-132]
	.loc 1 312 26
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-152]
	sub	r3, r2, r3
	.loc 1 312 17
	str	r3, [fp, #-112]
	.loc 1 313 10
	b	.L69
.L88:
	.loc 1 315 24
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-152]
	sub	r3, r2, r3
	.loc 1 315 15
	str	r3, [fp, #-136]
	.loc 1 316 22
	ldr	r2, [fp, #-136]
	ldr	r3, [fp, #-112]
	sub	r2, r2, r3
	.loc 1 316 48
	ldr	r3, [fp, #-120]
	lsl	r3, r3, #4
	.loc 1 316 37
	mov	r1, r3
	mov	r0, r2
	bl	__aeabi_uidivmod(PLT)
	mov	r3, r1
	.loc 1 316 9
	cmp	r3, #0
	bne	.L70
	.loc 1 320 9
	mov	r0, #10
	bl	putchar(PLT)
	.loc 1 321 20
	ldr	r3, [fp, #4]
	and	r3, r3, #2048
	.loc 1 321 11
	cmp	r3, #0
	beq	.L71
	.loc 1 322 11
	ldr	r3, .L92+32
.LPIC48:
	add	r3, pc, r3
	mov	r0, r3
	bl	printf(PLT)
.L71:
	.loc 1 323 20
	ldr	r3, [fp, #4]
	and	r3, r3, #128
	.loc 1 323 11
	cmp	r3, #0
	beq	.L72
	.loc 1 324 23
	mov	r3, #0
	str	r3, [fp, #-136]
	.loc 1 324 11
	b	.L73
.L74:
	.loc 1 325 48 discriminator 3
	ldr	r3, [fp, #-128]
	lsl	r3, r3, #1
	.loc 1 325 13 discriminator 3
	ldr	r2, [fp, #-136]
	mov	r1, r3
	ldr	r3, .L92+36
.LPIC49:
	add	r3, pc, r3
	mov	r0, r3
	bl	printf(PLT)
	.loc 1 324 58 discriminator 3
	ldr	r3, [fp, #-136]
	add	r3, r3, #1
	str	r3, [fp, #-136]
.L73:
	.loc 1 324 34 discriminator 1
	ldr	r2, [fp, #-136]
	ldr	r3, [fp, #-124]
	cmp	r2, r3
	bcc	.L74
	.loc 1 327 22
	ldr	r3, [fp, #4]
	and	r3, r3, #1536
	.loc 1 327 13
	cmp	r3, #0
	beq	.L75
	.loc 1 328 25
	mov	r3, #0
	str	r3, [fp, #-136]
	.loc 1 328 13
	b	.L76
.L77:
	.loc 1 329 15 discriminator 3
	ldr	r3, [fp, #-136]
	and	r3, r3, #15
	mov	r1, r3
	ldr	r3, .L92+40
.LPIC50:
	add	r3, pc, r3
	mov	r0, r3
	bl	printf(PLT)
	.loc 1 328 57 discriminator 3
	ldr	r3, [fp, #-136]
	add	r3, r3, #1
	str	r3, [fp, #-136]
.L76:
	.loc 1 328 36 discriminator 1
	ldr	r2, [fp, #-136]
	ldr	r3, [fp, #-120]
	cmp	r2, r3
	bcc	.L77
.L75:
	.loc 1 332 11
	mov	r0, #10
	bl	putchar(PLT)
.L72:
	.loc 1 334 26
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-152]
	sub	r3, r2, r3
	.loc 1 334 17
	str	r3, [fp, #-136]
.L70:
	.loc 1 336 18
	ldr	r3, [fp, #4]
	and	r3, r3, #2048
	.loc 1 336 9
	cmp	r3, #0
	beq	.L78
	.loc 1 337 9
	ldr	r1, [fp, #-136]
	ldr	r3, .L92+44
.LPIC51:
	add	r3, pc, r3
	mov	r0, r3
	bl	printf(PLT)
.L78:
	.loc 1 342 19
	mov	r3, #0
	str	r3, [fp, #-136]
	.loc 1 342 7
	b	.L79
.L82:
	.loc 1 344 33
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-136]
	add	r3, r2, r3
	.loc 1 344 11
	ldr	r2, [fp, #-116]
	cmp	r2, r3
	bls	.L80
	.loc 1 344 56 discriminator 1
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-136]
	add	r3, r2, r3
	.loc 1 344 44 discriminator 1
	ldr	r2, [fp, #-144]
	cmp	r2, r3
	bhi	.L80
	.loc 1 345 11
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-136]
	add	r2, r2, r3
	sub	r0, fp, #108
	ldr	r3, [fp, #4]
	str	r3, [sp]
	ldr	r3, [fp, #-128]
	mov	r1, #100
	bl	siBin2Ascii(PLT)
	.loc 1 352 11
	sub	r3, fp, #108
	mov	r1, r3
	ldr	r3, .L92+48
.LPIC52:
	add	r3, pc, r3
	mov	r0, r3
	bl	printf(PLT)
	b	.L81
.L80:
	.loc 1 354 44
	ldr	r3, [fp, #-128]
	lsl	r3, r3, #1
	.loc 1 354 11
	mov	r1, r3
	ldr	r3, .L92+52
.LPIC53:
	add	r3, pc, r3
	mov	r2, r3
	ldr	r3, .L92+56
.LPIC54:
	add	r3, pc, r3
	mov	r0, r3
	bl	printf(PLT)
.L81:
	.loc 1 342 51 discriminator 2
	ldr	r2, [fp, #-136]
	ldr	r3, [fp, #-128]
	add	r3, r2, r3
	str	r3, [fp, #-136]
.L79:
	.loc 1 342 31 discriminator 1
	ldr	r2, [fp, #-136]
	ldr	r3, [fp, #-120]
	cmp	r2, r3
	bcc	.L82
	.loc 1 357 18
	ldr	r3, [fp, #4]
	and	r3, r3, #1536
	.loc 1 357 9
	cmp	r3, #0
	beq	.L83
	.loc 1 361 21
	mov	r3, #0
	str	r3, [fp, #-136]
	.loc 1 361 9
	b	.L84
.L87:
	.loc 1 363 35
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-136]
	add	r3, r2, r3
	.loc 1 363 13
	ldr	r2, [fp, #-116]
	cmp	r2, r3
	bls	.L85
	.loc 1 363 58 discriminator 1
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-136]
	add	r3, r2, r3
	.loc 1 363 46 discriminator 1
	ldr	r2, [fp, #-144]
	cmp	r2, r3
	bhi	.L85
	.loc 1 364 55
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-136]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 364 37
	mov	r0, r3
	bl	cBin2Ascii(PLT)
	mov	r3, r0
	.loc 1 364 13
	mov	r0, r3
	bl	putchar(PLT)
	b	.L86
.L85:
	.loc 1 366 13
	mov	r0, #32
	bl	putchar(PLT)
.L86:
	.loc 1 361 51 discriminator 2
	ldr	r3, [fp, #-136]
	add	r3, r3, #1
	str	r3, [fp, #-136]
.L84:
	.loc 1 361 32 discriminator 1
	ldr	r2, [fp, #-136]
	ldr	r3, [fp, #-120]
	cmp	r2, r3
	bcc	.L87
.L83:
	.loc 1 370 14
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-120]
	add	r3, r2, r3
	str	r3, [fp, #-132]
	.loc 1 371 7
	mov	r0, #10
	bl	putchar(PLT)
.L69:
	.loc 1 313 18
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-116]
	cmp	r2, r3
	bcc	.L88
	.loc 1 373 1
	b	.L64
.L91:
	.loc 1 308 22
	nop
.L64:
	.loc 1 374 10
	ldr	r3, [fp, #-140]
	.loc 1 274 1
	ldr	r1, .L92+60
.LPIC56:
	add	r1, pc, r1
	.loc 1 375 1
	ldr	r2, .L92+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L90
	bl	__stack_chk_fail(PLT)
.L90:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L93:
	.align	2
.L92:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC55+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC6-(.LPIC42+8)
	.word	.LC3-(.LPIC43+8)
	.word	.LC17-(.LPIC44+8)
	.word	.LC1-(.LPIC45+8)
	.word	.LC18-(.LPIC46+8)
	.word	.LC19-(.LPIC47+8)
	.word	.LC20-(.LPIC48+8)
	.word	.LC21-(.LPIC49+8)
	.word	.LC22-(.LPIC50+8)
	.word	.LC23-(.LPIC51+8)
	.word	.LC24-(.LPIC52+8)
	.word	.LC25-(.LPIC53+8)
	.word	.LC26-(.LPIC54+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC56+8)
	.cfi_endproc
.LFE11:
	.size	PrintHexAsciiTableEx, .-PrintHexAsciiTableEx
	.align	2
	.global	PrintHexAsciiTable
	.syntax unified
	.arm
	.fpu vfpv3
	.type	PrintHexAsciiTable, %function
PrintHexAsciiTable:
.LFB12:
	.loc 1 384 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #24
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	str	r3, [fp, #-20]
	.loc 1 385 3
	mov	r3, #3024
	str	r3, [sp]
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	PrintHexAsciiTableEx(PLT)
	.loc 1 392 1
	nop
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE12:
	.size	PrintHexAsciiTable, .-PrintHexAsciiTable
	.section	.rodata
	.align	2
.LC27:
	.ascii	"LclWriteFile\000"
	.align	2
.LC28:
	.ascii	"(cszFilename==NULL)\000"
	.align	2
.LC29:
	.ascii	"(stWriteBCnt==0)\000"
	.align	2
.LC30:
	.ascii	"Opening File %s(%s)\012\000"
	.align	2
.LC31:
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
.LFB13:
	.loc 1 412 1
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
	str	r3, [fp, #-28]
	.loc 1 413 16
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 415 3
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L96
	.loc 1 415 3 is_stmt 0 discriminator 1
	ldr	r3, .L103
.LPIC57:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L103+4
.LPIC58:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #415
	ldr	r2, .L103+8
.LPIC59:
	add	r2, pc, r2
	ldr	r1, .L103+12
.LPIC60:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-12]
	b	.L97
.L96:
	.loc 1 420 3 is_stmt 1
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L98
	.loc 1 420 3 is_stmt 0 discriminator 1
	ldr	r3, .L103+16
.LPIC61:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L103+20
.LPIC62:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #420
	ldr	r2, .L103+24
.LPIC63:
	add	r2, pc, r2
	ldr	r1, .L103+28
.LPIC64:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-12]
	b	.L97
.L98:
	.loc 1 425 3 is_stmt 1
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L99
	.loc 1 425 3 is_stmt 0 discriminator 1
	ldr	r3, .L103+32
.LPIC65:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L103+36
.LPIC66:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #425
	ldr	r2, .L103+40
.LPIC67:
	add	r2, pc, r2
	ldr	r1, .L103+44
.LPIC68:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-12]
	b	.L97
.L99:
	.loc 1 431 14 is_stmt 1
	ldr	r1, [fp, #-28]
	ldr	r0, [fp, #-16]
	bl	fopen(PLT)
	str	r0, [fp, #-8]
	.loc 1 432 5
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L100
	.loc 1 433 15
	movw	r3, #64254
	movt	r3, 65535
	str	r3, [fp, #-12]
	.loc 1 434 5
	ldr	r3, [fp, #-28]
	str	r3, [sp, #12]
	ldr	r3, [fp, #-16]
	str	r3, [sp, #8]
	ldr	r3, .L103+48
.LPIC69:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-12]
	str	r3, [sp]
	movw	r3, #434
	ldr	r2, .L103+52
.LPIC70:
	add	r2, pc, r2
	ldr	r1, .L103+56
.LPIC71:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_SC(PLT)
	.loc 1 436 5
	b	.L97
.L100:
	.loc 1 438 3
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-24]
	mov	r1, #1
	ldr	r0, [fp, #-20]
	bl	fwrite(PLT)
	mov	r2, r0
	ldr	r3, [fp, #-24]
	cmp	r3, r2
	beq	.L101
	.loc 1 438 3 is_stmt 0 discriminator 1
	ldr	r3, .L103+60
.LPIC72:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L103+64
.LPIC73:
	add	r3, pc, r3
	str	r3, [sp, #4]
	movw	r3, #64254
	movt	r3, 65535
	str	r3, [sp]
	movw	r3, #438
	ldr	r2, .L103+68
.LPIC74:
	add	r2, pc, r2
	ldr	r1, .L103+72
.LPIC75:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	movw	r3, #64254
	movt	r3, 65535
	str	r3, [fp, #-12]
	b	.L97
.L101:
	.loc 1 443 3 is_stmt 1
	ldr	r0, [fp, #-8]
	bl	fclose(PLT)
.L97:
	.loc 1 445 10
	ldr	r3, [fp, #-12]
	.loc 1 446 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L104:
	.align	2
.L103:
	.word	.LC28-(.LPIC57+8)
	.word	.LC3-(.LPIC58+8)
	.word	.LC27-(.LPIC59+8)
	.word	.LC1-(.LPIC60+8)
	.word	.LC6-(.LPIC61+8)
	.word	.LC3-(.LPIC62+8)
	.word	.LC27-(.LPIC63+8)
	.word	.LC1-(.LPIC64+8)
	.word	.LC29-(.LPIC65+8)
	.word	.LC3-(.LPIC66+8)
	.word	.LC27-(.LPIC67+8)
	.word	.LC1-(.LPIC68+8)
	.word	.LC30-(.LPIC69+8)
	.word	.LC27-(.LPIC70+8)
	.word	.LC1-(.LPIC71+8)
	.word	.LC31-(.LPIC72+8)
	.word	.LC3-(.LPIC73+8)
	.word	.LC27-(.LPIC74+8)
	.word	.LC1-(.LPIC75+8)
	.cfi_endproc
.LFE13:
	.size	LclWriteFile, .-LclWriteFile
	.section	.rodata
	.align	2
.LC32:
	.ascii	"LclReadFile\000"
	.align	2
.LC33:
	.ascii	"(pvBuffer==NULL)\000"
	.align	2
.LC34:
	.ascii	"(pstReadBCnt==NULL)\000"
	.align	2
.LC35:
	.ascii	"(*pvBuffer==NULL)\000"
	.text
	.align	2
	.global	LclReadFile
	.syntax unified
	.arm
	.fpu vfpv3
	.type	LclReadFile, %function
LclReadFile:
.LFB14:
	.loc 1 455 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #48
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	str	r3, [fp, #-36]
	.loc 1 456 16
	mov	r3, #0
	str	r3, [fp, #-16]
	.loc 1 459 3
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L106
	.loc 1 459 3 is_stmt 0 discriminator 1
	ldr	r3, .L113
.LPIC76:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L113+4
.LPIC77:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #459
	ldr	r2, .L113+8
.LPIC78:
	add	r2, pc, r2
	ldr	r1, .L113+12
.LPIC79:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-16]
	b	.L107
.L106:
	.loc 1 464 3 is_stmt 1
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L108
	.loc 1 464 3 is_stmt 0 discriminator 1
	ldr	r3, .L113+16
.LPIC80:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L113+20
.LPIC81:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #464
	ldr	r2, .L113+24
.LPIC82:
	add	r2, pc, r2
	ldr	r1, .L113+28
.LPIC83:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-16]
	b	.L107
.L108:
	.loc 1 469 3 is_stmt 1
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	bne	.L109
	.loc 1 469 3 is_stmt 0 discriminator 1
	ldr	r3, .L113+32
.LPIC84:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L113+36
.LPIC85:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #469
	ldr	r2, .L113+40
.LPIC86:
	add	r2, pc, r2
	ldr	r1, .L113+44
.LPIC87:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-16]
	b	.L107
.L109:
	.loc 1 474 15 is_stmt 1
	ldr	r3, [fp, #-32]
	mov	r2, #0
	str	r2, [r3]
	.loc 1 475 14
	ldr	r1, [fp, #-36]
	ldr	r0, [fp, #-24]
	bl	fopen(PLT)
	str	r0, [fp, #-12]
	.loc 1 476 5
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bne	.L110
	.loc 1 477 15
	mvn	r3, #1280
	str	r3, [fp, #-16]
	.loc 1 478 5
	ldr	r3, [fp, #-36]
	str	r3, [sp, #12]
	ldr	r3, [fp, #-24]
	str	r3, [sp, #8]
	ldr	r3, .L113+48
.LPIC88:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-16]
	str	r3, [sp]
	movw	r3, #478
	ldr	r2, .L113+52
.LPIC89:
	add	r2, pc, r2
	ldr	r1, .L113+56
.LPIC90:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_SC(PLT)
	.loc 1 480 5
	b	.L107
.L110:
	.loc 1 483 3
	mov	r2, #2
	mov	r1, #0
	ldr	r0, [fp, #-12]
	bl	fseek(PLT)
	.loc 1 484 13
	ldr	r0, [fp, #-12]
	bl	ftell(PLT)
	mov	r3, r0
	.loc 1 484 12
	str	r3, [fp, #-8]
	.loc 1 485 13
	ldr	r0, [fp, #-8]
	bl	malloc(PLT)
	mov	r3, r0
	mov	r2, r3
	.loc 1 485 12
	ldr	r3, [fp, #-28]
	str	r2, [r3]
	.loc 1 486 3
	ldr	r3, [fp, #-28]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L111
	.loc 1 486 3 is_stmt 0 discriminator 1
	ldr	r3, .L113+60
.LPIC91:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L113+64
.LPIC92:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #2
	str	r3, [sp]
	movw	r3, #486
	ldr	r2, .L113+68
.LPIC93:
	add	r2, pc, r2
	ldr	r1, .L113+72
.LPIC94:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #2
	str	r3, [fp, #-16]
	b	.L107
.L111:
	.loc 1 492 3 is_stmt 1
	ldr	r0, [fp, #-12]
	bl	rewind(PLT)
	.loc 1 493 15
	ldr	r3, [fp, #-32]
	ldr	r2, [fp, #-8]
	str	r2, [r3]
	.loc 1 505 13
	ldr	r3, [fp, #-28]
	ldr	r0, [r3]
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-8]
	mov	r1, #1
	bl	fread(PLT)
	str	r0, [fp, #-8]
	.loc 1 507 15
	ldr	r3, [fp, #-32]
	ldr	r2, [fp, #-8]
	str	r2, [r3]
	.loc 1 508 3
	ldr	r0, [fp, #-12]
	bl	fclose(PLT)
.L107:
	.loc 1 511 10
	ldr	r3, [fp, #-16]
	.loc 1 512 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L114:
	.align	2
.L113:
	.word	.LC28-(.LPIC76+8)
	.word	.LC3-(.LPIC77+8)
	.word	.LC32-(.LPIC78+8)
	.word	.LC1-(.LPIC79+8)
	.word	.LC33-(.LPIC80+8)
	.word	.LC3-(.LPIC81+8)
	.word	.LC32-(.LPIC82+8)
	.word	.LC1-(.LPIC83+8)
	.word	.LC34-(.LPIC84+8)
	.word	.LC3-(.LPIC85+8)
	.word	.LC32-(.LPIC86+8)
	.word	.LC1-(.LPIC87+8)
	.word	.LC30-(.LPIC88+8)
	.word	.LC32-(.LPIC89+8)
	.word	.LC1-(.LPIC90+8)
	.word	.LC35-(.LPIC91+8)
	.word	.LC3-(.LPIC92+8)
	.word	.LC32-(.LPIC93+8)
	.word	.LC1-(.LPIC94+8)
	.cfi_endproc
.LFE14:
	.size	LclReadFile, .-LclReadFile
	.section	.rodata
	.align	2
.LC36:
	.ascii	"wb\000"
	.text
	.align	2
	.global	WriteBinaryFile
	.syntax unified
	.arm
	.fpu vfpv3
	.type	WriteBinaryFile, %function
WriteBinaryFile:
.LFB15:
	.loc 1 520 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	.loc 1 521 10
	ldr	r3, .L117
.LPIC95:
	add	r3, pc, r3
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	LclWriteFile(PLT)
	mov	r3, r0
	.loc 1 522 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L118:
	.align	2
.L117:
	.word	.LC36-(.LPIC95+8)
	.cfi_endproc
.LFE15:
	.size	WriteBinaryFile, .-WriteBinaryFile
	.section	.rodata
	.align	2
.LC37:
	.ascii	"rb\000"
	.text
	.align	2
	.global	ReadBinaryFile
	.syntax unified
	.arm
	.fpu vfpv3
	.type	ReadBinaryFile, %function
ReadBinaryFile:
.LFB16:
	.loc 1 530 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	.loc 1 531 10
	ldr	r3, .L121
.LPIC96:
	add	r3, pc, r3
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	LclReadFile(PLT)
	mov	r3, r0
	.loc 1 532 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L122:
	.align	2
.L121:
	.word	.LC37-(.LPIC96+8)
	.cfi_endproc
.LFE16:
	.size	ReadBinaryFile, .-ReadBinaryFile
	.section	.rodata
	.align	2
.LC38:
	.ascii	"w\000"
	.text
	.align	2
	.global	WriteTextFile
	.syntax unified
	.arm
	.fpu vfpv3
	.type	WriteTextFile, %function
WriteTextFile:
.LFB17:
	.loc 1 539 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	.loc 1 540 10
	ldr	r3, .L125
.LPIC97:
	add	r3, pc, r3
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	LclWriteFile(PLT)
	mov	r3, r0
	.loc 1 541 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L126:
	.align	2
.L125:
	.word	.LC38-(.LPIC97+8)
	.cfi_endproc
.LFE17:
	.size	WriteTextFile, .-WriteTextFile
	.section	.rodata
	.align	2
.LC39:
	.ascii	"r\000"
	.text
	.align	2
	.global	ReadTextFile
	.syntax unified
	.arm
	.fpu vfpv3
	.type	ReadTextFile, %function
ReadTextFile:
.LFB18:
	.loc 1 549 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	.loc 1 550 10
	ldr	r3, .L129
.LPIC98:
	add	r3, pc, r3
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	LclReadFile(PLT)
	mov	r3, r0
	.loc 1 551 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L130:
	.align	2
.L129:
	.word	.LC39-(.LPIC98+8)
	.cfi_endproc
.LFE18:
	.size	ReadTextFile, .-ReadTextFile
	.align	2
	.global	EeeP_Set16BitValue_BE
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeeP_Set16BitValue_BE, %function
EeeP_Set16BitValue_BE:
.LFB19:
	.loc 1 571 1
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
	mov	r3, r1
	strh	r3, [fp, #-10]	@ movhi
	.loc 1 572 10
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	.loc 1 572 14
	ldrh	r2, [fp, #-10]	@ movhi
	uxtb	r2, r2
	.loc 1 572 13
	strb	r2, [r3]
	.loc 1 573 14
	ldrh	r3, [fp, #-10]
	lsr	r3, r3, #8
	uxth	r3, r3
	uxtb	r2, r3
	.loc 1 573 13
	ldr	r3, [fp, #-8]
	strb	r2, [r3]
	.loc 1 574 1
	nop
	add	sp, fp, #0
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	fp, [sp], #4
	.cfi_restore 11
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE19:
	.size	EeeP_Set16BitValue_BE, .-EeeP_Set16BitValue_BE
	.align	2
	.global	EeeP_Get16BitValue_BE
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeeP_Get16BitValue_BE, %function
EeeP_Get16BitValue_BE:
.LFB20:
	.loc 1 579 1
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
	.loc 1 580 18
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	sxth	r2, r3
	.loc 1 581 18
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 581 21
	lsl	r3, r3, #8
	.loc 1 580 30
	sxth	r3, r3
	orr	r3, r2, r3
	sxth	r3, r3
	uxth	r3, r3
	.loc 1 582 1
	mov	r0, r3
	add	sp, fp, #0
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	fp, [sp], #4
	.cfi_restore 11
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE20:
	.size	EeeP_Get16BitValue_BE, .-EeeP_Get16BitValue_BE
	.align	2
	.global	EeeP_Set32BitValue_BE
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeeP_Set32BitValue_BE, %function
EeeP_Set32BitValue_BE:
.LFB21:
	.loc 1 588 1
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
	.loc 1 589 10
	ldr	r3, [fp, #-8]
	add	r3, r3, #3
	.loc 1 589 14
	ldr	r2, [fp, #-12]
	uxtb	r2, r2
	.loc 1 589 13
	strb	r2, [r3]
	.loc 1 590 14
	ldr	r3, [fp, #-12]
	lsr	r2, r3, #8
	.loc 1 590 10
	ldr	r3, [fp, #-8]
	add	r3, r3, #2
	.loc 1 590 14
	uxtb	r2, r2
	.loc 1 590 13
	strb	r2, [r3]
	.loc 1 591 14
	ldr	r3, [fp, #-12]
	lsr	r2, r3, #16
	.loc 1 591 10
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	.loc 1 591 14
	uxtb	r2, r2
	.loc 1 591 13
	strb	r2, [r3]
	.loc 1 592 14
	ldr	r3, [fp, #-12]
	lsr	r3, r3, #24
	uxtb	r2, r3
	.loc 1 592 13
	ldr	r3, [fp, #-8]
	strb	r2, [r3]
	.loc 1 593 1
	nop
	add	sp, fp, #0
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	fp, [sp], #4
	.cfi_restore 11
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE21:
	.size	EeeP_Set32BitValue_BE, .-EeeP_Set32BitValue_BE
	.align	2
	.global	EeeP_Get32BitValue_BE
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeeP_Get32BitValue_BE, %function
EeeP_Get32BitValue_BE:
.LFB22:
	.loc 1 598 1
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
	.loc 1 599 18
	ldr	r3, [fp, #-8]
	add	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	.loc 1 600 18
	ldr	r3, [fp, #-8]
	add	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 600 21
	lsl	r3, r3, #8
	.loc 1 599 30
	orr	r2, r2, r3
	.loc 1 601 18
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 601 21
	lsl	r3, r3, #16
	.loc 1 600 30
	orr	r2, r2, r3
	.loc 1 602 18
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 602 21
	lsl	r3, r3, #24
	.loc 1 601 30
	orr	r3, r2, r3
	.loc 1 603 1
	mov	r0, r3
	add	sp, fp, #0
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	fp, [sp], #4
	.cfi_restore 11
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE22:
	.size	EeeP_Get32BitValue_BE, .-EeeP_Get32BitValue_BE
	.align	2
	.global	EeeP_Set64BitValue_BE
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeeP_Set64BitValue_BE, %function
EeeP_Set64BitValue_BE:
.LFB23:
	.loc 1 609 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -4
	add	fp, sp, #0
	.cfi_def_cfa_register 11
	sub	sp, sp, #20
	str	r0, [fp, #-8]
	strd	r2, [fp, #-20]
	.loc 1 610 10
	ldr	r3, [fp, #-8]
	add	r3, r3, #7
	.loc 1 610 14
	ldrb	r2, [fp, #-20]	@ zero_extendqisi2
	.loc 1 610 13
	strb	r2, [r3]
	.loc 1 611 14
	ldrd	r0, [fp, #-20]
	mov	r2, #0
	mov	r3, #0
	lsr	r2, r0, #8
	orr	r2, r2, r1, lsl #24
	lsr	r3, r1, #8
	.loc 1 611 10
	ldr	r1, [fp, #-8]
	add	r1, r1, #6
	.loc 1 611 14
	uxtb	r3, r2
	.loc 1 611 13
	strb	r3, [r1]
	.loc 1 612 14
	ldrd	r0, [fp, #-20]
	mov	r2, #0
	mov	r3, #0
	lsr	r2, r0, #16
	orr	r2, r2, r1, lsl #16
	lsr	r3, r1, #16
	.loc 1 612 10
	ldr	r1, [fp, #-8]
	add	r1, r1, #5
	.loc 1 612 14
	uxtb	r3, r2
	.loc 1 612 13
	strb	r3, [r1]
	.loc 1 613 14
	ldrd	r0, [fp, #-20]
	mov	r2, #0
	mov	r3, #0
	lsr	r2, r0, #24
	orr	r2, r2, r1, lsl #8
	lsr	r3, r1, #24
	.loc 1 613 10
	ldr	r1, [fp, #-8]
	add	r1, r1, #4
	.loc 1 613 14
	uxtb	r3, r2
	.loc 1 613 13
	strb	r3, [r1]
	.loc 1 614 14
	ldrd	r0, [fp, #-20]
	mov	r2, #0
	mov	r3, #0
	mov	r2, r1
	mov	r3, #0
	.loc 1 614 10
	ldr	r1, [fp, #-8]
	add	r1, r1, #3
	.loc 1 614 14
	uxtb	r3, r2
	.loc 1 614 13
	strb	r3, [r1]
	.loc 1 615 14
	ldrd	r0, [fp, #-20]
	mov	r2, #0
	mov	r3, #0
	lsr	r2, r1, #8
	mov	r3, #0
	.loc 1 615 10
	ldr	r1, [fp, #-8]
	add	r1, r1, #2
	.loc 1 615 14
	uxtb	r3, r2
	.loc 1 615 13
	strb	r3, [r1]
	.loc 1 616 14
	ldrd	r0, [fp, #-20]
	mov	r2, #0
	mov	r3, #0
	lsr	r2, r1, #16
	mov	r3, #0
	.loc 1 616 10
	ldr	r1, [fp, #-8]
	add	r1, r1, #1
	.loc 1 616 14
	uxtb	r3, r2
	.loc 1 616 13
	strb	r3, [r1]
	.loc 1 617 14
	ldrd	r0, [fp, #-20]
	mov	r2, #0
	mov	r3, #0
	lsr	r2, r1, #24
	mov	r3, #0
	uxtb	r2, r2
	.loc 1 617 13
	ldr	r3, [fp, #-8]
	strb	r2, [r3]
	.loc 1 618 1
	nop
	add	sp, fp, #0
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	fp, [sp], #4
	.cfi_restore 11
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE23:
	.size	EeeP_Set64BitValue_BE, .-EeeP_Set64BitValue_BE
	.align	2
	.global	EeeP_Get64BitValue_BE
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeeP_Get64BitValue_BE, %function
EeeP_Get64BitValue_BE:
.LFB24:
	.loc 1 623 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7, r8, r9, fp}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 11, -4
	add	fp, sp, #24
	.cfi_def_cfa 11, 4
	sub	sp, sp, #60
	str	r0, [fp, #-32]
	.loc 1 624 18
	ldr	r3, [fp, #-32]
	add	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	.loc 1 625 18
	ldr	r3, [fp, #-32]
	add	r3, r3, #6
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 625 21
	lsl	r3, r3, #8
	.loc 1 624 30
	orr	r2, r2, r3
	.loc 1 626 18
	ldr	r3, [fp, #-32]
	add	r3, r3, #5
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 626 21
	lsl	r3, r3, #16
	.loc 1 625 30
	orr	r2, r2, r3
	.loc 1 627 18
	ldr	r3, [fp, #-32]
	add	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 627 21
	lsl	r3, r3, #24
	.loc 1 626 30
	orr	r3, r2, r3
	asr	r2, r3, #31
	str	r3, [fp, #-44]
	str	r2, [fp, #-40]
	.loc 1 628 28
	ldr	r3, [fp, #-32]
	add	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 628 11
	uxtb	r3, r3
	mov	r2, #0
	str	r3, [fp, #-52]
	str	r2, [fp, #-48]
	.loc 1 628 31
	mov	r2, #0
	mov	r3, #0
	ldr	r1, [fp, #-52]
	mov	r3, r1
	mov	r2, #0
	.loc 1 627 30
	ldrd	r0, [fp, #-44]
	mov	ip, r0
	orr	r8, ip, r2
	orr	r9, r1, r3
	.loc 1 629 28
	ldr	r3, [fp, #-32]
	add	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 629 11
	uxtb	r3, r3
	mov	r2, #0
	str	r3, [fp, #-60]
	str	r2, [fp, #-56]
	.loc 1 629 31
	mov	r2, #0
	mov	r3, #0
	ldr	r1, [fp, #-60]
	lsl	r3, r1, #8
	mov	r2, #0
	.loc 1 628 40
	orr	r6, r8, r2
	orr	r7, r9, r3
	.loc 1 630 28
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 630 11
	uxtb	r3, r3
	mov	r2, #0
	str	r3, [fp, #-68]
	str	r2, [fp, #-64]
	.loc 1 630 31
	mov	r2, #0
	mov	r3, #0
	ldr	r1, [fp, #-68]
	lsl	r3, r1, #16
	mov	r2, #0
	.loc 1 629 40
	orr	r4, r6, r2
	orr	r5, r7, r3
	.loc 1 631 28
	ldr	r3, [fp, #-32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 631 11
	uxtb	r3, r3
	mov	r2, #0
	str	r3, [fp, #-76]
	str	r2, [fp, #-72]
	.loc 1 631 31
	mov	r2, #0
	mov	r3, #0
	ldr	r1, [fp, #-76]
	lsl	r3, r1, #24
	mov	r2, #0
	.loc 1 630 40
	orr	r1, r4, r2
	str	r1, [fp, #-84]
	orr	r3, r5, r3
	str	r3, [fp, #-80]
	ldrd	r2, [fp, #-84]
	.loc 1 632 1
	mov	r0, r2
	mov	r1, r3
	sub	sp, fp, #24
	.cfi_def_cfa 13, 28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, fp}
	.cfi_restore 11
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE24:
	.size	EeeP_Get64BitValue_BE, .-EeeP_Get64BitValue_BE
	.align	2
	.global	EeeP_Set16BitValue_LE
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeeP_Set16BitValue_LE, %function
EeeP_Set16BitValue_LE:
.LFB25:
	.loc 1 642 1
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
	mov	r3, r1
	strh	r3, [fp, #-10]	@ movhi
	.loc 1 643 14
	ldrh	r3, [fp, #-10]	@ movhi
	uxtb	r2, r3
	.loc 1 643 13
	ldr	r3, [fp, #-8]
	strb	r2, [r3]
	.loc 1 644 14
	ldrh	r3, [fp, #-10]
	lsr	r3, r3, #8
	uxth	r2, r3
	.loc 1 644 10
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	.loc 1 644 14
	uxtb	r2, r2
	.loc 1 644 13
	strb	r2, [r3]
	.loc 1 645 1
	nop
	add	sp, fp, #0
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	fp, [sp], #4
	.cfi_restore 11
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE25:
	.size	EeeP_Set16BitValue_LE, .-EeeP_Set16BitValue_LE
	.align	2
	.global	EeeP_Get16BitValue_LE
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeeP_Get16BitValue_LE, %function
EeeP_Get16BitValue_LE:
.LFB26:
	.loc 1 650 1
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
	.loc 1 651 18
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sxth	r2, r3
	.loc 1 652 18
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 652 21
	lsl	r3, r3, #8
	.loc 1 651 30
	sxth	r3, r3
	orr	r3, r2, r3
	sxth	r3, r3
	uxth	r3, r3
	.loc 1 653 1
	mov	r0, r3
	add	sp, fp, #0
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	fp, [sp], #4
	.cfi_restore 11
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE26:
	.size	EeeP_Get16BitValue_LE, .-EeeP_Get16BitValue_LE
	.align	2
	.global	EeeP_Set32BitValue_LE
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeeP_Set32BitValue_LE, %function
EeeP_Set32BitValue_LE:
.LFB27:
	.loc 1 659 1
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
	.loc 1 660 14
	ldr	r3, [fp, #-12]
	uxtb	r2, r3
	.loc 1 660 13
	ldr	r3, [fp, #-8]
	strb	r2, [r3]
	.loc 1 661 14
	ldr	r3, [fp, #-12]
	lsr	r2, r3, #8
	.loc 1 661 10
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	.loc 1 661 14
	uxtb	r2, r2
	.loc 1 661 13
	strb	r2, [r3]
	.loc 1 662 14
	ldr	r3, [fp, #-12]
	lsr	r2, r3, #16
	.loc 1 662 10
	ldr	r3, [fp, #-8]
	add	r3, r3, #2
	.loc 1 662 14
	uxtb	r2, r2
	.loc 1 662 13
	strb	r2, [r3]
	.loc 1 663 14
	ldr	r3, [fp, #-12]
	lsr	r2, r3, #24
	.loc 1 663 10
	ldr	r3, [fp, #-8]
	add	r3, r3, #3
	.loc 1 663 14
	uxtb	r2, r2
	.loc 1 663 13
	strb	r2, [r3]
	.loc 1 664 1
	nop
	add	sp, fp, #0
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	fp, [sp], #4
	.cfi_restore 11
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE27:
	.size	EeeP_Set32BitValue_LE, .-EeeP_Set32BitValue_LE
	.align	2
	.global	EeeP_Get32BitValue_LE
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeeP_Get32BitValue_LE, %function
EeeP_Get32BitValue_LE:
.LFB28:
	.loc 1 669 1
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
	.loc 1 670 18
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	.loc 1 671 18
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 671 21
	lsl	r3, r3, #8
	.loc 1 670 30
	orr	r2, r2, r3
	.loc 1 672 18
	ldr	r3, [fp, #-8]
	add	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 672 21
	lsl	r3, r3, #16
	.loc 1 671 30
	orr	r2, r2, r3
	.loc 1 673 18
	ldr	r3, [fp, #-8]
	add	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 673 21
	lsl	r3, r3, #24
	.loc 1 672 30
	orr	r3, r2, r3
	.loc 1 674 1
	mov	r0, r3
	add	sp, fp, #0
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	fp, [sp], #4
	.cfi_restore 11
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE28:
	.size	EeeP_Get32BitValue_LE, .-EeeP_Get32BitValue_LE
	.align	2
	.global	EeeP_Set64BitValue_LE
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeeP_Set64BitValue_LE, %function
EeeP_Set64BitValue_LE:
.LFB29:
	.loc 1 680 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -4
	add	fp, sp, #0
	.cfi_def_cfa_register 11
	sub	sp, sp, #20
	str	r0, [fp, #-8]
	strd	r2, [fp, #-20]
	.loc 1 681 14
	ldrb	r2, [fp, #-20]	@ zero_extendqisi2
	.loc 1 681 13
	ldr	r3, [fp, #-8]
	strb	r2, [r3]
	.loc 1 682 14
	ldrd	r0, [fp, #-20]
	mov	r2, #0
	mov	r3, #0
	lsr	r2, r0, #8
	orr	r2, r2, r1, lsl #24
	lsr	r3, r1, #8
	.loc 1 682 10
	ldr	r1, [fp, #-8]
	add	r1, r1, #1
	.loc 1 682 14
	uxtb	r3, r2
	.loc 1 682 13
	strb	r3, [r1]
	.loc 1 683 14
	ldrd	r0, [fp, #-20]
	mov	r2, #0
	mov	r3, #0
	lsr	r2, r0, #16
	orr	r2, r2, r1, lsl #16
	lsr	r3, r1, #16
	.loc 1 683 10
	ldr	r1, [fp, #-8]
	add	r1, r1, #2
	.loc 1 683 14
	uxtb	r3, r2
	.loc 1 683 13
	strb	r3, [r1]
	.loc 1 684 14
	ldrd	r0, [fp, #-20]
	mov	r2, #0
	mov	r3, #0
	lsr	r2, r0, #24
	orr	r2, r2, r1, lsl #8
	lsr	r3, r1, #24
	.loc 1 684 10
	ldr	r1, [fp, #-8]
	add	r1, r1, #3
	.loc 1 684 14
	uxtb	r3, r2
	.loc 1 684 13
	strb	r3, [r1]
	.loc 1 685 14
	ldrd	r0, [fp, #-20]
	mov	r2, #0
	mov	r3, #0
	mov	r2, r1
	mov	r3, #0
	.loc 1 685 10
	ldr	r1, [fp, #-8]
	add	r1, r1, #4
	.loc 1 685 14
	uxtb	r3, r2
	.loc 1 685 13
	strb	r3, [r1]
	.loc 1 686 14
	ldrd	r0, [fp, #-20]
	mov	r2, #0
	mov	r3, #0
	lsr	r2, r1, #8
	mov	r3, #0
	.loc 1 686 10
	ldr	r1, [fp, #-8]
	add	r1, r1, #5
	.loc 1 686 14
	uxtb	r3, r2
	.loc 1 686 13
	strb	r3, [r1]
	.loc 1 687 14
	ldrd	r0, [fp, #-20]
	mov	r2, #0
	mov	r3, #0
	lsr	r2, r1, #16
	mov	r3, #0
	.loc 1 687 10
	ldr	r1, [fp, #-8]
	add	r1, r1, #6
	.loc 1 687 14
	uxtb	r3, r2
	.loc 1 687 13
	strb	r3, [r1]
	.loc 1 688 14
	ldrd	r0, [fp, #-20]
	mov	r2, #0
	mov	r3, #0
	lsr	r2, r1, #24
	mov	r3, #0
	.loc 1 688 10
	ldr	r1, [fp, #-8]
	add	r1, r1, #7
	.loc 1 688 14
	uxtb	r3, r2
	.loc 1 688 13
	strb	r3, [r1]
	.loc 1 689 1
	nop
	add	sp, fp, #0
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	fp, [sp], #4
	.cfi_restore 11
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE29:
	.size	EeeP_Set64BitValue_LE, .-EeeP_Set64BitValue_LE
	.align	2
	.global	EeeP_Get64BitValue_LE
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeeP_Get64BitValue_LE, %function
EeeP_Get64BitValue_LE:
.LFB30:
	.loc 1 694 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7, r8, r9, fp}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 11, -4
	add	fp, sp, #24
	.cfi_def_cfa 11, 4
	sub	sp, sp, #60
	str	r0, [fp, #-32]
	.loc 1 695 18
	ldr	r3, [fp, #-32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	.loc 1 696 18
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 696 21
	lsl	r3, r3, #8
	.loc 1 695 30
	orr	r2, r2, r3
	.loc 1 697 18
	ldr	r3, [fp, #-32]
	add	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 697 21
	lsl	r3, r3, #16
	.loc 1 696 30
	orr	r2, r2, r3
	.loc 1 698 18
	ldr	r3, [fp, #-32]
	add	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 698 21
	lsl	r3, r3, #24
	.loc 1 697 30
	orr	r3, r2, r3
	asr	r2, r3, #31
	str	r3, [fp, #-44]
	str	r2, [fp, #-40]
	.loc 1 699 28
	ldr	r3, [fp, #-32]
	add	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 699 11
	uxtb	r3, r3
	mov	r2, #0
	str	r3, [fp, #-52]
	str	r2, [fp, #-48]
	.loc 1 699 31
	mov	r2, #0
	mov	r3, #0
	ldr	r1, [fp, #-52]
	mov	r3, r1
	mov	r2, #0
	.loc 1 698 30
	ldrd	r0, [fp, #-44]
	mov	ip, r0
	orr	r8, ip, r2
	orr	r9, r1, r3
	.loc 1 700 28
	ldr	r3, [fp, #-32]
	add	r3, r3, #5
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 700 11
	uxtb	r3, r3
	mov	r2, #0
	str	r3, [fp, #-60]
	str	r2, [fp, #-56]
	.loc 1 700 31
	mov	r2, #0
	mov	r3, #0
	ldr	r1, [fp, #-60]
	lsl	r3, r1, #8
	mov	r2, #0
	.loc 1 699 40
	orr	r6, r8, r2
	orr	r7, r9, r3
	.loc 1 701 28
	ldr	r3, [fp, #-32]
	add	r3, r3, #6
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 701 11
	uxtb	r3, r3
	mov	r2, #0
	str	r3, [fp, #-68]
	str	r2, [fp, #-64]
	.loc 1 701 31
	mov	r2, #0
	mov	r3, #0
	ldr	r1, [fp, #-68]
	lsl	r3, r1, #16
	mov	r2, #0
	.loc 1 700 40
	orr	r4, r6, r2
	orr	r5, r7, r3
	.loc 1 702 28
	ldr	r3, [fp, #-32]
	add	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 702 11
	uxtb	r3, r3
	mov	r2, #0
	str	r3, [fp, #-76]
	str	r2, [fp, #-72]
	.loc 1 702 31
	mov	r2, #0
	mov	r3, #0
	ldr	r1, [fp, #-76]
	lsl	r3, r1, #24
	mov	r2, #0
	.loc 1 701 40
	orr	r1, r4, r2
	str	r1, [fp, #-84]
	orr	r3, r5, r3
	str	r3, [fp, #-80]
	ldrd	r2, [fp, #-84]
	.loc 1 703 1
	mov	r0, r2
	mov	r1, r3
	sub	sp, fp, #24
	.cfi_def_cfa 13, 28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, fp}
	.cfi_restore 11
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE30:
	.size	EeeP_Get64BitValue_LE, .-EeeP_Get64BitValue_LE
.Letext0:
	.file 2 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/bits/alltypes.h"
	.file 3 "../../../include/EApi.h"
	.file 4 "../BinFuncs.h"
	.file 5 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/stdio.h"
	.file 6 "../../include/EApiAHStr.h"
	.file 7 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/string.h"
	.file 8 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/stdlib.h"
	.file 9 "../../include/DbgChk.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xd0f
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1b
	.4byte	.LASF118
	.byte	0xc
	.4byte	.LASF119
	.4byte	.LASF120
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0xb
	.4byte	0x26
	.uleb128 0x6
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2b
	.byte	0x18
	.4byte	0x26
	.uleb128 0xb
	.4byte	0x32
	.uleb128 0x1c
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x1d
	.4byte	.LASF23
	.byte	0x1
	.byte	0x2
	.2byte	0x134
	.byte	0x8
	.4byte	0x75
	.uleb128 0x1e
	.ascii	"__x\000"
	.byte	0x2
	.2byte	0x134
	.byte	0x18
	.4byte	0x75
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0xb
	.4byte	0x75
	.uleb128 0x1f
	.4byte	.LASF5
	.byte	0x2
	.2byte	0x139
	.byte	0x19
	.4byte	0x58
	.uleb128 0x20
	.byte	0x4
	.uleb128 0x11
	.4byte	0x8e
	.uleb128 0x8
	.byte	0x8
	.byte	0x4
	.4byte	.LASF6
	.uleb128 0x7
	.4byte	0x81
	.uleb128 0x11
	.4byte	0x9c
	.uleb128 0x6
	.4byte	.LASF7
	.byte	0x2
	.byte	0x30
	.byte	0x18
	.4byte	0x26
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.4byte	.LASF8
	.uleb128 0x8
	.byte	0x2
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x6
	.4byte	.LASF10
	.byte	0x2
	.byte	0x72
	.byte	0x19
	.4byte	0xd1
	.uleb128 0xb
	.4byte	0xc0
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x2
	.byte	0x77
	.byte	0x19
	.4byte	0xe4
	.uleb128 0x8
	.byte	0x2
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x2
	.byte	0x7c
	.byte	0x19
	.4byte	0x26
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x2
	.byte	0x81
	.byte	0x19
	.4byte	0x103
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x7
	.4byte	0x75
	.uleb128 0xb
	.4byte	0x10a
	.uleb128 0x7
	.4byte	0x7c
	.uleb128 0x11
	.4byte	0x114
	.uleb128 0xb
	.4byte	0x114
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x3
	.byte	0x91
	.byte	0x12
	.4byte	0xeb
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x4
	.byte	0x3e
	.byte	0x3
	.4byte	0x142
	.uleb128 0x12
	.4byte	0x12a
	.4byte	0x151
	.uleb128 0x2
	.4byte	0x151
	.byte	0
	.uleb128 0x7
	.4byte	0x8e
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x4
	.byte	0x41
	.byte	0x3
	.4byte	0x162
	.uleb128 0x12
	.4byte	0x12a
	.4byte	0x17b
	.uleb128 0x2
	.4byte	0x8e
	.uleb128 0x2
	.4byte	0x17b
	.uleb128 0x2
	.4byte	0x32
	.byte	0
	.uleb128 0x7
	.4byte	0x18a
	.uleb128 0x11
	.4byte	0x17b
	.uleb128 0xb
	.4byte	0x17b
	.uleb128 0x21
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x4
	.byte	0x49
	.byte	0x3
	.4byte	0x197
	.uleb128 0x12
	.4byte	0x12a
	.4byte	0x1ab
	.uleb128 0x2
	.4byte	0x151
	.uleb128 0x2
	.4byte	0x8e
	.byte	0
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x4
	.byte	0x50
	.byte	0x3
	.4byte	0x197
	.uleb128 0x16
	.4byte	.LASF24
	.byte	0x14
	.byte	0x4
	.byte	0x55
	.4byte	0x1fb
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x56
	.4byte	0x1fb
	.byte	0
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x57
	.4byte	0x200
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x58
	.4byte	0x205
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x59
	.4byte	0x20a
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x5a
	.4byte	0x32
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.4byte	0x136
	.uleb128 0x7
	.4byte	0x156
	.uleb128 0x7
	.4byte	0x18b
	.uleb128 0x7
	.4byte	0x1ab
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x4
	.byte	0x5b
	.byte	0x2
	.4byte	0x1b7
	.uleb128 0x22
	.4byte	.LASF121
	.byte	0x4
	.byte	0x5d
	.byte	0x13
	.4byte	0x20f
	.uleb128 0x17
	.4byte	0xc0
	.4byte	0x237
	.uleb128 0x18
	.4byte	0x26
	.byte	0x1
	.byte	0
	.uleb128 0x16
	.4byte	.LASF31
	.byte	0x8
	.byte	0x1
	.byte	0x47
	.4byte	0x25a
	.uleb128 0x19
	.ascii	"CRC\000"
	.byte	0x48
	.4byte	0x26
	.byte	0
	.uleb128 0x19
	.ascii	"Cnt\000"
	.byte	0x49
	.4byte	0x32
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x1
	.byte	0x4a
	.byte	0x2
	.4byte	0x237
	.uleb128 0x23
	.4byte	0x21b
	.byte	0x1
	.byte	0xcf
	.byte	0xc
	.uleb128 0x5
	.byte	0x3
	.4byte	CRC_CCITT
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x5
	.byte	0x57
	.byte	0x8
	.4byte	0x32
	.4byte	0x299
	.uleb128 0x2
	.4byte	0x90
	.uleb128 0x2
	.4byte	0x32
	.uleb128 0x2
	.4byte	0x32
	.uleb128 0x2
	.4byte	0xa1
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF42
	.byte	0x5
	.byte	0x52
	.4byte	0x2aa
	.uleb128 0x2
	.4byte	0x9c
	.byte	0
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x5
	.byte	0x51
	.byte	0x6
	.4byte	0x4a
	.4byte	0x2c0
	.uleb128 0x2
	.4byte	0x9c
	.byte	0
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x5
	.byte	0x50
	.byte	0x5
	.4byte	0x43
	.4byte	0x2e0
	.uleb128 0x2
	.4byte	0x9c
	.uleb128 0x2
	.4byte	0x4a
	.uleb128 0x2
	.4byte	0x43
	.byte	0
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x5
	.byte	0x46
	.byte	0x5
	.4byte	0x43
	.4byte	0x2f6
	.uleb128 0x2
	.4byte	0x9c
	.byte	0
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x5
	.byte	0x58
	.byte	0x8
	.4byte	0x32
	.4byte	0x31b
	.uleb128 0x2
	.4byte	0x180
	.uleb128 0x2
	.4byte	0x32
	.uleb128 0x2
	.4byte	0x32
	.uleb128 0x2
	.4byte	0xa1
	.byte	0
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x5
	.byte	0x44
	.byte	0x7
	.4byte	0x9c
	.4byte	0x336
	.uleb128 0x2
	.4byte	0x119
	.uleb128 0x2
	.4byte	0x119
	.byte	0
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x5
	.byte	0x6b
	.byte	0x5
	.4byte	0x43
	.4byte	0x34d
	.uleb128 0x2
	.4byte	0x114
	.uleb128 0x13
	.byte	0
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x6
	.byte	0x55
	.byte	0x1
	.4byte	0x43
	.4byte	0x36e
	.uleb128 0x2
	.4byte	0x10f
	.uleb128 0x2
	.4byte	0x3e
	.uleb128 0x2
	.4byte	0x11e
	.uleb128 0x13
	.byte	0
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x7
	.byte	0x1c
	.byte	0x5
	.4byte	0x43
	.4byte	0x38e
	.uleb128 0x2
	.4byte	0x17b
	.uleb128 0x2
	.4byte	0x17b
	.uleb128 0x2
	.4byte	0x32
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF43
	.byte	0x8
	.byte	0x29
	.4byte	0x39f
	.uleb128 0x2
	.4byte	0x8e
	.byte	0
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x8
	.byte	0x26
	.byte	0x7
	.4byte	0x8e
	.4byte	0x3b5
	.uleb128 0x2
	.4byte	0x32
	.byte	0
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x9
	.byte	0x3e
	.byte	0x1
	.4byte	0x43
	.4byte	0x3e5
	.uleb128 0x2
	.4byte	0x75
	.uleb128 0x2
	.4byte	0x114
	.uleb128 0x2
	.4byte	0x114
	.uleb128 0x2
	.4byte	0x26
	.uleb128 0x2
	.4byte	0x12a
	.uleb128 0x2
	.4byte	0x114
	.uleb128 0x13
	.byte	0
	.uleb128 0xd
	.4byte	.LASF48
	.2byte	0x2b3
	.4byte	0xf7
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x40e
	.uleb128 0x1
	.4byte	.LASF46
	.2byte	0x2b4
	.byte	0x14
	.4byte	0x40e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x7
	.4byte	0xcc
	.uleb128 0xe
	.4byte	.LASF50
	.2byte	0x2a4
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x447
	.uleb128 0x1
	.4byte	.LASF46
	.2byte	0x2a5
	.byte	0xe
	.4byte	0x447
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1
	.4byte	.LASF47
	.2byte	0x2a6
	.byte	0xe
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.4byte	0xc0
	.uleb128 0xd
	.4byte	.LASF49
	.2byte	0x29a
	.4byte	0xeb
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x475
	.uleb128 0x1
	.4byte	.LASF46
	.2byte	0x29b
	.byte	0x14
	.4byte	0x40e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xe
	.4byte	.LASF51
	.2byte	0x28f
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4a9
	.uleb128 0x1
	.4byte	.LASF46
	.2byte	0x290
	.byte	0xe
	.4byte	0x447
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1
	.4byte	.LASF47
	.2byte	0x291
	.byte	0xe
	.4byte	0xeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xd
	.4byte	.LASF52
	.2byte	0x287
	.4byte	0xd8
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4d2
	.uleb128 0x1
	.4byte	.LASF46
	.2byte	0x288
	.byte	0x14
	.4byte	0x40e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xe
	.4byte	.LASF53
	.2byte	0x27e
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x506
	.uleb128 0x1
	.4byte	.LASF46
	.2byte	0x27f
	.byte	0xe
	.4byte	0x447
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1
	.4byte	.LASF47
	.2byte	0x280
	.byte	0xe
	.4byte	0xd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.uleb128 0xd
	.4byte	.LASF54
	.2byte	0x26c
	.4byte	0xf7
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x52f
	.uleb128 0x1
	.4byte	.LASF46
	.2byte	0x26d
	.byte	0x14
	.4byte	0x40e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0xe
	.4byte	.LASF55
	.2byte	0x25d
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x563
	.uleb128 0x1
	.4byte	.LASF46
	.2byte	0x25e
	.byte	0xe
	.4byte	0x447
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1
	.4byte	.LASF47
	.2byte	0x25f
	.byte	0xe
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.4byte	.LASF56
	.2byte	0x253
	.4byte	0xeb
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x58c
	.uleb128 0x1
	.4byte	.LASF46
	.2byte	0x254
	.byte	0x14
	.4byte	0x40e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xe
	.4byte	.LASF57
	.2byte	0x248
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5c0
	.uleb128 0x1
	.4byte	.LASF46
	.2byte	0x249
	.byte	0xe
	.4byte	0x447
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1
	.4byte	.LASF47
	.2byte	0x24a
	.byte	0xe
	.4byte	0xeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xd
	.4byte	.LASF58
	.2byte	0x240
	.4byte	0xd8
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5e9
	.uleb128 0x1
	.4byte	.LASF46
	.2byte	0x241
	.byte	0x14
	.4byte	0x40e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xe
	.4byte	.LASF59
	.2byte	0x237
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x61d
	.uleb128 0x1
	.4byte	.LASF46
	.2byte	0x238
	.byte	0xe
	.4byte	0x447
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1
	.4byte	.LASF47
	.2byte	0x239
	.byte	0xe
	.4byte	0xd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.uleb128 0xc
	.4byte	.LASF60
	.2byte	0x220
	.4byte	0x12a
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x664
	.uleb128 0x1
	.4byte	.LASF61
	.2byte	0x221
	.byte	0x17
	.4byte	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1
	.4byte	.LASF62
	.2byte	0x222
	.byte	0x17
	.4byte	0x151
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1
	.4byte	.LASF63
	.2byte	0x223
	.byte	0x17
	.4byte	0x664
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x7
	.4byte	0x32
	.uleb128 0xc
	.4byte	.LASF64
	.2byte	0x216
	.4byte	0x12a
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6b0
	.uleb128 0x1
	.4byte	.LASF61
	.2byte	0x217
	.byte	0x16
	.4byte	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1
	.4byte	.LASF65
	.2byte	0x218
	.byte	0x16
	.4byte	0x17b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1
	.4byte	.LASF66
	.2byte	0x219
	.byte	0x16
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF67
	.2byte	0x20d
	.4byte	0x12a
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6f7
	.uleb128 0x1
	.4byte	.LASF61
	.2byte	0x20e
	.byte	0x17
	.4byte	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1
	.4byte	.LASF62
	.2byte	0x20f
	.byte	0x17
	.4byte	0x151
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1
	.4byte	.LASF63
	.2byte	0x210
	.byte	0x17
	.4byte	0x664
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF68
	.2byte	0x203
	.4byte	0x12a
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x73e
	.uleb128 0x1
	.4byte	.LASF61
	.2byte	0x204
	.byte	0x16
	.4byte	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1
	.4byte	.LASF65
	.2byte	0x205
	.byte	0x16
	.4byte	0x17b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1
	.4byte	.LASF66
	.2byte	0x206
	.byte	0x16
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF69
	.2byte	0x1c1
	.4byte	0x12a
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7cc
	.uleb128 0x1
	.4byte	.LASF61
	.2byte	0x1c2
	.byte	0x17
	.4byte	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF62
	.2byte	0x1c3
	.byte	0x17
	.4byte	0x151
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF63
	.2byte	0x1c4
	.byte	0x17
	.4byte	0x664
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF70
	.2byte	0x1c5
	.byte	0x17
	.4byte	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF71
	.2byte	0x1c8
	.byte	0x10
	.4byte	0x12a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF72
	.2byte	0x1c9
	.byte	0x9
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x4
	.4byte	.LASF73
	.2byte	0x1ca
	.byte	0xa
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x14
	.4byte	.LASF76
	.2byte	0x1fe
	.4byte	.L107
	.byte	0
	.uleb128 0xc
	.4byte	.LASF74
	.2byte	0x196
	.4byte	0x12a
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x84b
	.uleb128 0x1
	.4byte	.LASF61
	.2byte	0x197
	.byte	0x16
	.4byte	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF65
	.2byte	0x198
	.byte	0x16
	.4byte	0x17b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF66
	.2byte	0x199
	.byte	0x16
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF75
	.2byte	0x19a
	.byte	0x16
	.4byte	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.4byte	.LASF71
	.2byte	0x19d
	.byte	0x10
	.4byte	0x12a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x4
	.4byte	.LASF72
	.2byte	0x19e
	.byte	0x9
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x14
	.4byte	.LASF76
	.2byte	0x1bc
	.4byte	.L97
	.byte	0
	.uleb128 0x24
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x17a
	.byte	0x1
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x89f
	.uleb128 0x1
	.4byte	.LASF65
	.2byte	0x17b
	.byte	0x1c
	.4byte	0x185
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1
	.4byte	.LASF78
	.2byte	0x17c
	.byte	0x1c
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1
	.4byte	.LASF79
	.2byte	0x17d
	.byte	0x1c
	.4byte	0x185
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF80
	.2byte	0x17e
	.byte	0x1d
	.4byte	0x11e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.4byte	.LASF81
	.2byte	0x10b
	.4byte	0x12a
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9a3
	.uleb128 0x1
	.4byte	.LASF65
	.2byte	0x10c
	.byte	0x11
	.4byte	0x17b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x1
	.4byte	.LASF82
	.2byte	0x10d
	.byte	0x11
	.4byte	0x3e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x1
	.4byte	.LASF79
	.2byte	0x10e
	.byte	0x11
	.4byte	0x17b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x1
	.4byte	.LASF80
	.2byte	0x10f
	.byte	0x11
	.4byte	0x114
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1
	.4byte	.LASF83
	.2byte	0x110
	.byte	0x11
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x4
	.4byte	.LASF71
	.2byte	0x113
	.byte	0x10
	.4byte	0x12a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x4
	.4byte	.LASF84
	.2byte	0x114
	.byte	0x13
	.4byte	0x32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x4
	.4byte	.LASF85
	.2byte	0x115
	.byte	0x13
	.4byte	0x32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x4
	.4byte	.LASF86
	.2byte	0x116
	.byte	0x14
	.4byte	0x40e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x4
	.4byte	.LASF87
	.2byte	0x117
	.byte	0x14
	.4byte	0x40e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x4
	.4byte	.LASF88
	.2byte	0x118
	.byte	0x13
	.4byte	0x32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x4
	.4byte	.LASF89
	.2byte	0x119
	.byte	0x13
	.4byte	0x32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x4
	.4byte	.LASF90
	.2byte	0x11a
	.byte	0x13
	.4byte	0x32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x4
	.4byte	.LASF91
	.2byte	0x11b
	.byte	0xc
	.4byte	0x9a3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x14
	.4byte	.LASF76
	.2byte	0x175
	.4byte	.L64
	.byte	0
	.uleb128 0x17
	.4byte	0x75
	.4byte	0x9b3
	.uleb128 0x18
	.4byte	0x26
	.byte	0x63
	.byte	0
	.uleb128 0xa
	.4byte	.LASF92
	.byte	0xec
	.4byte	0x43
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa2e
	.uleb128 0x3
	.4byte	.LASF93
	.byte	0xed
	.byte	0x1b
	.4byte	0x10a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF94
	.byte	0xee
	.byte	0x1b
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF95
	.byte	0xef
	.byte	0x1b
	.4byte	0x40e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF96
	.byte	0xf0
	.byte	0x1b
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF97
	.byte	0xf1
	.byte	0x1b
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x5
	.4byte	.LASF98
	.byte	0xf4
	.byte	0x10
	.4byte	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x5
	.4byte	.LASF99
	.byte	0xf5
	.byte	0xc
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x25
	.4byte	.LASF100
	.byte	0x1
	.byte	0xe1
	.byte	0x1
	.4byte	0x75
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa57
	.uleb128 0x3
	.4byte	.LASF101
	.byte	0xe2
	.byte	0x18
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xa
	.4byte	.LASF102
	.byte	0xc1
	.4byte	0x12a
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xac0
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0xc2
	.byte	0x19
	.4byte	0x17b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF103
	.byte	0xc3
	.byte	0x19
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF104
	.byte	0xc4
	.byte	0x19
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF71
	.byte	0xc7
	.byte	0x10
	.4byte	0x12a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x5
	.4byte	.LASF105
	.byte	0xc8
	.byte	0xa
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.4byte	.LASF76
	.byte	0xcc
	.4byte	.L44
	.byte	0
	.uleb128 0xa
	.4byte	.LASF106
	.byte	0xab
	.4byte	0x12a
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb1b
	.uleb128 0x3
	.4byte	.LASF105
	.byte	0xac
	.byte	0x16
	.4byte	0x151
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF104
	.byte	0xad
	.byte	0x16
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.4byte	.LASF71
	.byte	0xb0
	.byte	0x10
	.4byte	0x12a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF107
	.byte	0xb1
	.byte	0xb
	.4byte	0x227
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x10
	.4byte	.LASF76
	.byte	0xbc
	.4byte	.L36
	.byte	0
	.uleb128 0xa
	.4byte	.LASF108
	.byte	0x95
	.4byte	0x12a
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb84
	.uleb128 0x3
	.4byte	.LASF105
	.byte	0x96
	.byte	0x16
	.4byte	0x151
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF104
	.byte	0x97
	.byte	0x16
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.4byte	.LASF71
	.byte	0x9a
	.byte	0x10
	.4byte	0x12a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF109
	.byte	0x9b
	.byte	0x11
	.4byte	0xb84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x15
	.ascii	"CRC\000"
	.byte	0x9c
	.byte	0x11
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x10
	.4byte	.LASF76
	.byte	0xa7
	.4byte	.L30
	.byte	0
	.uleb128 0x7
	.4byte	0x25a
	.uleb128 0xa
	.4byte	.LASF110
	.byte	0x6f
	.4byte	0x12a
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc1a
	.uleb128 0x3
	.4byte	.LASF105
	.byte	0x70
	.byte	0x16
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0x71
	.byte	0x16
	.4byte	0x17b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF103
	.byte	0x72
	.byte	0x16
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.4byte	.LASF71
	.byte	0x75
	.byte	0x10
	.4byte	0x12a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LASF111
	.byte	0x76
	.byte	0x12
	.4byte	0x40e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF109
	.byte	0x77
	.byte	0x12
	.4byte	0xb84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x15
	.ascii	"CRC\000"
	.byte	0x78
	.byte	0x12
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.ascii	"i\000"
	.byte	0x79
	.byte	0x12
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x10
	.4byte	.LASF76
	.byte	0x91
	.4byte	.L18
	.byte	0
	.uleb128 0xa
	.4byte	.LASF112
	.byte	0x4d
	.4byte	0x12a
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc67
	.uleb128 0x3
	.4byte	.LASF105
	.byte	0x4e
	.byte	0xb
	.4byte	0x151
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF71
	.byte	0x51
	.byte	0x10
	.4byte	0x12a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x5
	.4byte	.LASF109
	.byte	0x52
	.byte	0x11
	.4byte	0xb84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x10
	.4byte	.LASF76
	.byte	0x61
	.4byte	.L11
	.byte	0
	.uleb128 0xa
	.4byte	.LASF113
	.byte	0x3f
	.4byte	0xc0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc9c
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0x40
	.byte	0xf
	.4byte	0x17b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x3
	.4byte	.LASF114
	.byte	0x41
	.byte	0xf
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xa
	.4byte	.LASF115
	.byte	0x37
	.4byte	0xd8
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcd1
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0x38
	.byte	0xf
	.4byte	0x17b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x3
	.4byte	.LASF114
	.byte	0x39
	.byte	0xf
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x26
	.4byte	.LASF116
	.byte	0x1
	.byte	0x2a
	.byte	0x1
	.4byte	0xeb
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0x2b
	.byte	0xe
	.4byte	0x17b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF114
	.byte	0x2c
	.byte	0xd
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF117
	.byte	0x2f
	.byte	0xc
	.4byte	0xeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 21
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x25
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
.LASF39:
	.ascii	"printf\000"
.LASF44:
	.ascii	"malloc\000"
.LASF82:
	.ascii	"stBufSize\000"
.LASF4:
	.ascii	"size_t\000"
.LASF7:
	.ascii	"uintptr_t\000"
.LASF54:
	.ascii	"EeeP_Get64BitValue_BE\000"
.LASF15:
	.ascii	"uint64_t\000"
.LASF73:
	.ascii	"stFileLen\000"
.LASF105:
	.ascii	"pContext\000"
.LASF42:
	.ascii	"rewind\000"
.LASF92:
	.ascii	"siBin2Ascii\000"
.LASF25:
	.ascii	"init\000"
.LASF18:
	.ascii	"EApiStatus_t\000"
.LASF16:
	.ascii	"long long unsigned int\000"
.LASF59:
	.ascii	"EeeP_Set16BitValue_BE\000"
.LASF81:
	.ascii	"PrintHexAsciiTableEx\000"
.LASF77:
	.ascii	"PrintHexAsciiTable\000"
.LASF43:
	.ascii	"free\000"
.LASF35:
	.ascii	"fseek\000"
.LASF100:
	.ascii	"cBin2Ascii\000"
.LASF8:
	.ascii	"signed char\000"
.LASF69:
	.ascii	"LclReadFile\000"
.LASF53:
	.ascii	"EeeP_Set16BitValue_LE\000"
.LASF27:
	.ascii	"fini\000"
.LASF98:
	.ascii	"StringPos\000"
.LASF119:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux/../BinFuncs.c\000"
.LASF87:
	.ascii	"pcu8PageEnd\000"
.LASF1:
	.ascii	"long int\000"
.LASF121:
	.ascii	"CRC_CCITT\000"
.LASF55:
	.ascii	"EeeP_Set64BitValue_BE\000"
.LASF115:
	.ascii	"u16ChecksumBlock\000"
.LASF22:
	.ascii	"HashFuncverify_t\000"
.LASF2:
	.ascii	"long long int\000"
.LASF12:
	.ascii	"uint16_t\000"
.LASF6:
	.ascii	"double\000"
.LASF67:
	.ascii	"ReadBinaryFile\000"
.LASF56:
	.ascii	"EeeP_Get32BitValue_BE\000"
.LASF26:
	.ascii	"bytes\000"
.LASF28:
	.ascii	"verify\000"
.LASF40:
	.ascii	"EApiSprintf\000"
.LASF19:
	.ascii	"HashFuncinit_t\000"
.LASF93:
	.ascii	"pszString\000"
.LASF70:
	.ascii	"cszReadType\000"
.LASF111:
	.ascii	"pcu8Buffer\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF95:
	.ascii	"pcu8Value\000"
.LASF17:
	.ascii	"long unsigned int\000"
.LASF48:
	.ascii	"EeeP_Get64BitValue_LE\000"
.LASF46:
	.ascii	"pBuffer\000"
.LASF101:
	.ascii	"uiValue\000"
.LASF51:
	.ascii	"EeeP_Set32BitValue_LE\000"
.LASF99:
	.ascii	"Bufpos\000"
.LASF78:
	.ascii	"cstBufSize\000"
.LASF13:
	.ascii	"short unsigned int\000"
.LASF76:
	.ascii	"ExitPoint\000"
.LASF106:
	.ascii	"u16CRC_CCITT_verify\000"
.LASF74:
	.ascii	"LclWriteFile\000"
.LASF116:
	.ascii	"u32ChecksumBlock\000"
.LASF60:
	.ascii	"ReadTextFile\000"
.LASF57:
	.ascii	"EeeP_Set32BitValue_BE\000"
.LASF107:
	.ascii	"Digest\000"
.LASF29:
	.ascii	"stDigestLen\000"
.LASF66:
	.ascii	"stWriteBCnt\000"
.LASF50:
	.ascii	"EeeP_Set64BitValue_LE\000"
.LASF89:
	.ascii	"stElementCount\000"
.LASF23:
	.ascii	"_IO_FILE\000"
.LASF110:
	.ascii	"u16CRC_CCITT_bytes\000"
.LASF96:
	.ascii	"VarSize\000"
.LASF49:
	.ascii	"EeeP_Get32BitValue_LE\000"
.LASF103:
	.ascii	"stCount\000"
.LASF118:
	.ascii	"GNU C99 11.2.0 -mcpu=cortex-a9 -mfloat-abi=hard -mf"
	.ascii	"pu=vfpv3 -mabi=aapcs-linux -mtls-dialect=gnu -marm "
	.ascii	"-march=armv7-a+mp+sec+vfpv3 -g -O0 -std=gnu99 -fsta"
	.ascii	"ck-protector-strong -fPIE\000"
.LASF21:
	.ascii	"HashFuncfini_t\000"
.LASF38:
	.ascii	"fopen\000"
.LASF58:
	.ascii	"EeeP_Get16BitValue_BE\000"
.LASF11:
	.ascii	"unsigned char\000"
.LASF31:
	.ascii	"CRC_State_s\000"
.LASF32:
	.ascii	"CRC_State_t\000"
.LASF24:
	.ascii	"HashFunc_s\000"
.LASF30:
	.ascii	"HashFunc_t\000"
.LASF45:
	.ascii	"siFormattedMessage_SC\000"
.LASF9:
	.ascii	"short int\000"
.LASF104:
	.ascii	"pvDigest\000"
.LASF80:
	.ascii	"pcszDescription\000"
.LASF113:
	.ascii	"u8ChecksumBlock\000"
.LASF88:
	.ascii	"stElementSize\000"
.LASF120:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux\000"
.LASF33:
	.ascii	"fread\000"
.LASF79:
	.ascii	"pcvBase\000"
.LASF14:
	.ascii	"uint32_t\000"
.LASF108:
	.ascii	"u16CRC_CCITT_fini\000"
.LASF91:
	.ascii	"szAsciiBufer\000"
.LASF62:
	.ascii	"pvBuffer\000"
.LASF71:
	.ascii	"StatusCode\000"
.LASF3:
	.ascii	"char\000"
.LASF68:
	.ascii	"WriteBinaryFile\000"
.LASF114:
	.ascii	"stLength\000"
.LASF85:
	.ascii	"stOffsetBase\000"
.LASF72:
	.ascii	"LclFilePtr\000"
.LASF117:
	.ascii	"ChkSum\000"
.LASF41:
	.ascii	"memcmp\000"
.LASF84:
	.ascii	"stOffset\000"
.LASF75:
	.ascii	"cszWriteType\000"
.LASF63:
	.ascii	"pstReadBCnt\000"
.LASF64:
	.ascii	"WriteTextFile\000"
.LASF61:
	.ascii	"cszFilename\000"
.LASF112:
	.ascii	"u16CRC_CCITT_init\000"
.LASF97:
	.ascii	"cFlags\000"
.LASF47:
	.ascii	"Value\000"
.LASF10:
	.ascii	"uint8_t\000"
.LASF83:
	.ascii	"cuiFlags\000"
.LASF102:
	.ascii	"u16CRC_CCITT\000"
.LASF65:
	.ascii	"pcvBuffer\000"
.LASF37:
	.ascii	"fwrite\000"
.LASF52:
	.ascii	"EeeP_Get16BitValue_LE\000"
.LASF94:
	.ascii	"BufLength\000"
.LASF109:
	.ascii	"pCRC\000"
.LASF34:
	.ascii	"ftell\000"
.LASF5:
	.ascii	"FILE\000"
.LASF90:
	.ascii	"stRowSize\000"
.LASF86:
	.ascii	"pcu8Mem\000"
.LASF36:
	.ascii	"fclose\000"
.LASF20:
	.ascii	"HashFuncbytes_t\000"
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
