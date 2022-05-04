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
	.file	"EeePDB.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.global	BlockIdLookup
	.section	.rodata
	.align	2
.LC0:
	.ascii	"EEEP_BLOCK_ID_UNUSED\000"
	.align	2
.LC1:
	.ascii	"EEEP_BLOCK_ID_VENDOR_SPECIFIC\000"
	.align	2
.LC2:
	.ascii	"EEEP_BLOCK_ID_EXP_EEPROM\000"
	.align	2
.LC3:
	.ascii	"EEEP_BLOCK_ID_SMBIOS\000"
	.align	2
.LC4:
	.ascii	"EEEP_BLOCK_ID_LFP\000"
	.align	2
.LC5:
	.ascii	"EEEP_BLOCK_ID_CRC_CHK\000"
	.align	2
.LC6:
	.ascii	"EEEP_BLOCK_ID_IGNORE\000"
	.align	2
.LC7:
	.ascii	"COM0R20_BLOCK_ID_EXP_CARD_DESC\000"
	.align	2
.LC8:
	.ascii	"COM0R20_BLOCK_ID_SERIO_DESC\000"
	.section	.data.rel.local,"aw"
	.align	2
	.type	BlockIdLookup, %object
	.size	BlockIdLookup, 80
BlockIdLookup:
	.word	.LC0
	.word	0
	.word	.LC1
	.word	240
	.word	.LC2
	.word	241
	.word	.LC3
	.word	208
	.word	.LC4
	.word	209
	.word	.LC5
	.word	242
	.word	.LC6
	.word	255
	.word	.LC7
	.word	224
	.word	.LC8
	.word	225
	.word	0
	.word	0
	.section	.rodata
	.align	2
.LC9:
	.ascii	"%s\000"
	.align	2
.LC10:
	.ascii	"UNKNOWN ID\000"
	.text
	.align	2
	.global	GetString
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	GetString, %function
GetString:
.LFB1:
	.file 1 "/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/linux/../EeePDB.c"
	.loc 1 65 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
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
	.loc 1 66 16
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 67 3
	b	.L2
.L5:
	.loc 1 68 15
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	.loc 1 68 7
	ldr	r2, [fp, #-28]
	cmp	r2, r3
	bne	.L3
	.loc 1 72 7
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	ldr	r2, .L7
.LPIC0:
	add	r2, pc, r2
	ldr	r1, [fp, #-24]
	ldr	r0, [fp, #-20]
	bl	EApiSprintf(PLT)
	.loc 1 74 7
	b	.L4
.L3:
	.loc 1 67 39
	ldr	r3, [fp, #-16]
	add	r3, r3, #8
	str	r3, [fp, #-16]
.L2:
	.loc 1 67 15 discriminator 1
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	.loc 1 67 25 discriminator 1
	cmp	r3, #0
	bne	.L5
	.loc 1 77 3
	ldr	r3, .L7+4
.LPIC1:
	add	r3, pc, r3
	mov	r2, r3
	ldr	r1, [fp, #-24]
	ldr	r0, [fp, #-20]
	bl	EApiSprintf(PLT)
	.loc 1 78 13
	mvn	r3, #3840
	str	r3, [fp, #-8]
.L4:
	.loc 1 80 10
	ldr	r3, [fp, #-8]
	.loc 1 81 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L8:
	.align	2
.L7:
	.word	.LC9-(.LPIC0+8)
	.word	.LC10-(.LPIC1+8)
	.cfi_endproc
.LFE1:
	.size	GetString, .-GetString
	.align	2
	.global	GetDBlckIdString
	.syntax unified
	.arm
	.fpu vfpv3
	.type	GetDBlckIdString, %function
GetDBlckIdString:
.LFB2:
	.loc 1 89 1
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
	.loc 1 90 10
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-12]
	ldr	r1, [fp, #-8]
	ldr	r0, .L11
.LPIC2:
	add	r0, pc, r0
	bl	GetString(PLT)
	mov	r3, r0
	.loc 1 91 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L12:
	.align	2
.L11:
	.word	BlockIdLookup-(.LPIC2+8)
	.cfi_endproc
.LFE2:
	.size	GetDBlckIdString, .-GetDBlckIdString
	.align	2
	.global	EeePAdjLength
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeePAdjLength, %function
EeePAdjLength:
.LFB3:
	.loc 1 96 1
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
	.loc 1 97 10
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	lsr	r3, r3, #1
	.loc 1 98 1
	mov	r0, r3
	add	sp, fp, #0
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	fp, [sp], #4
	.cfi_restore 11
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE3:
	.size	EeePAdjLength, .-EeePAdjLength
	.align	2
	.global	EeePAlignLength
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeePAlignLength, %function
EeePAlignLength:
.LFB4:
	.loc 1 103 1
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
	.loc 1 107 10
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	bic	r3, r3, #1
	.loc 1 109 1
	mov	r0, r3
	add	sp, fp, #0
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	fp, [sp], #4
	.cfi_restore 11
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE4:
	.size	EeePAlignLength, .-EeePAlignLength
	.section	.rodata
	.align	2
.LC11:
	.ascii	"SetBlockLength\000"
	.align	2
.LC12:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux/../EeePDB.c\000"
	.align	2
.LC13:
	.ascii	"(BHandel==NULL)\000"
	.align	2
.LC14:
	.ascii	"%s\012\000"
	.align	2
.LC15:
	.ascii	"(stBlockLength%EEEP_SIZE_UNITS)\000"
	.align	2
.LC16:
	.ascii	"(stBlockLength>(UINT16_MAX*EEEP_SIZE_UNITS))\000"
	.text
	.align	2
	.global	SetBlockLength
	.syntax unified
	.arm
	.fpu vfpv3
	.type	SetBlockLength, %function
SetBlockLength:
.LFB5:
	.loc 1 116 1
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
	str	r1, [fp, #-20]
	.loc 1 117 16
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 118 3
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L18
	.loc 1 118 3 is_stmt 0 discriminator 1
	ldr	r3, .L24
.LPIC3:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L24+4
.LPIC4:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #118
	ldr	r2, .L24+8
.LPIC5:
	add	r2, pc, r2
	ldr	r1, .L24+12
.LPIC6:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-8]
	b	.L23
.L18:
	.loc 1 123 3 is_stmt 1
	ldr	r3, [fp, #-20]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L20
	.loc 1 123 3 is_stmt 0 discriminator 1
	ldr	r3, .L24+16
.LPIC7:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L24+20
.LPIC8:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #123
	ldr	r2, .L24+24
.LPIC9:
	add	r2, pc, r2
	ldr	r1, .L24+28
.LPIC10:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-8]
	b	.L23
.L20:
	.loc 1 128 3 is_stmt 1
	ldr	r2, [fp, #-20]
	movw	r3, #65534
	movt	r3, 1
	cmp	r2, r3
	bls	.L21
	.loc 1 128 3 is_stmt 0 discriminator 1
	ldr	r3, .L24+32
.LPIC11:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L24+36
.LPIC12:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #128
	ldr	r2, .L24+40
.LPIC13:
	add	r2, pc, r2
	ldr	r1, .L24+44
.LPIC14:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-8]
	b	.L23
.L21:
	.loc 1 135 34 is_stmt 1
	ldr	r3, [fp, #-16]
	add	r2, r3, #1
	.loc 1 136 9
	ldr	r3, [fp, #-20]
	lsr	r3, r3, #1
	.loc 1 134 3
	uxth	r3, r3
	mov	r1, r3
	mov	r0, r2
	bl	EeeP_Set16BitValue_BE(PLT)
.L19:
.L23:
	.loc 1 141 10
	ldr	r3, [fp, #-8]
	.loc 1 142 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L25:
	.align	2
.L24:
	.word	.LC13-(.LPIC3+8)
	.word	.LC14-(.LPIC4+8)
	.word	.LC11-(.LPIC5+8)
	.word	.LC12-(.LPIC6+8)
	.word	.LC15-(.LPIC7+8)
	.word	.LC14-(.LPIC8+8)
	.word	.LC11-(.LPIC9+8)
	.word	.LC12-(.LPIC10+8)
	.word	.LC16-(.LPIC11+8)
	.word	.LC14-(.LPIC12+8)
	.word	.LC11-(.LPIC13+8)
	.word	.LC12-(.LPIC14+8)
	.cfi_endproc
.LFE5:
	.size	SetBlockLength, .-SetBlockLength
	.align	2
	.global	GetBlockLength
	.syntax unified
	.arm
	.fpu vfpv3
	.type	GetBlockLength, %function
GetBlockLength:
.LFB6:
	.loc 1 147 1
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
	str	r0, [fp, #-16]
	.loc 1 148 10
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 149 5
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L27
	.loc 1 149 26 discriminator 1
	ldr	r3, [fp, #-8]
	b	.L28
.L27:
	.loc 1 151 65
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	.loc 1 151 15
	mov	r0, r3
	bl	EeeP_Get16BitValue_BE(PLT)
	mov	r3, r0
	.loc 1 151 81
	lsl	r3, r3, #1
	.loc 1 151 14
	str	r3, [fp, #-8]
	.loc 1 152 10
	ldr	r3, [fp, #-8]
.L28:
	.loc 1 153 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE6:
	.size	GetBlockLength, .-GetBlockLength
	.section	.rodata
	.align	2
.LC17:
	.ascii	"GetNextBlock\000"
	.align	2
.LC18:
	.ascii	"(pCurBlock==NULL)\000"
	.text
	.align	2
	.global	GetNextBlock
	.syntax unified
	.arm
	.fpu vfpv3
	.type	GetNextBlock, %function
GetNextBlock:
.LFB7:
	.loc 1 158 1
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
	.loc 1 159 19
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 161 3
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L30
	.loc 1 161 3 is_stmt 0 discriminator 1
	ldr	r3, .L37
.LPIC15:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L37+4
.LPIC16:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mov	r3, #0
	str	r3, [sp]
	mov	r3, #161
	ldr	r2, .L37+8
.LPIC17:
	add	r2, pc, r2
	ldr	r1, .L37+12
.LPIC18:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L31
.L30:
	.loc 1 166 17 is_stmt 1
	ldr	r0, [fp, #-16]
	bl	GetBlockLength(PLT)
	str	r0, [fp, #-8]
	.loc 1 167 3
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L36
	ldr	r2, [fp, #-8]
	movw	r3, #65534
	movt	r3, 1
	cmp	r2, r3
	beq	.L36
	.loc 1 173 17
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	.loc 1 178 7
	b	.L31
.L34:
.L36:
	.loc 1 170 7
	nop
.L31:
	.loc 1 182 10
	ldr	r3, [fp, #-12]
	.loc 1 183 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L38:
	.align	2
.L37:
	.word	.LC18-(.LPIC15+8)
	.word	.LC14-(.LPIC16+8)
	.word	.LC17-(.LPIC17+8)
	.word	.LC12-(.LPIC18+8)
	.cfi_endproc
.LFE7:
	.size	GetNextBlock, .-GetNextBlock
	.section	.rodata
	.align	2
.LC19:
	.ascii	"SetDynBlockInfo\000"
	.text
	.align	2
	.global	SetDynBlockHeader
	.syntax unified
	.arm
	.fpu vfpv3
	.type	SetDynBlockHeader, %function
SetDynBlockHeader:
.LFB8:
	.loc 1 190 1
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
	mov	r3, r1
	str	r2, [fp, #-24]
	strb	r3, [fp, #-17]
	.loc 1 191 16
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 192 3
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L40
	.loc 1 192 3 is_stmt 0 discriminator 1
	ldr	r3, .L44
.LPIC19:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L44+4
.LPIC20:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #192
	ldr	r2, .L44+8
.LPIC21:
	add	r2, pc, r2
	ldr	r1, .L44+12
.LPIC22:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-8]
	b	.L43
.L40:
	.loc 1 197 41 is_stmt 1
	ldr	r3, [fp, #-16]
	ldrb	r2, [fp, #-17]
	strb	r2, [r3]
	.loc 1 198 14
	ldr	r1, [fp, #-24]
	ldr	r0, [fp, #-16]
	bl	SetBlockLength(PLT)
	str	r0, [fp, #-8]
.L41:
.L43:
	.loc 1 202 10
	ldr	r3, [fp, #-8]
	.loc 1 203 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L45:
	.align	2
.L44:
	.word	.LC18-(.LPIC19+8)
	.word	.LC14-(.LPIC20+8)
	.word	.LC19-(.LPIC21+8)
	.word	.LC12-(.LPIC22+8)
	.cfi_endproc
.LFE8:
	.size	SetDynBlockHeader, .-SetDynBlockHeader
	.section	.rodata
	.align	2
.LC20:
	.ascii	"ReduceBlockLength\000"
	.align	2
.LC21:
	.ascii	"(pvCurBlock==NULL)\000"
	.align	2
.LC22:
	.ascii	"(*pvCurBlock==NULL)\000"
	.align	2
.LC23:
	.ascii	"GetBlockLength(*pvCurBlock)<(EeePAlignLength(stRedu"
	.ascii	"ceBy)+EEEP_MIN_BLOCK_LENGTH)\000"
	.text
	.align	2
	.global	ReduceBlockLength
	.syntax unified
	.arm
	.fpu vfpv3
	.type	ReduceBlockLength, %function
ReduceBlockLength:
.LFB9:
	.loc 1 211 1
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
	str	r3, [fp, #-44]
	.loc 1 212 16
	mov	r3, #0
	str	r3, [fp, #-24]
	.loc 1 215 5
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	beq	.L47
	.loc 1 215 35 discriminator 1
	ldr	r3, [fp, #-40]
	mov	r2, #0
	str	r2, [r3]
.L47:
	.loc 1 217 3
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	bne	.L48
	.loc 1 217 3 is_stmt 0 discriminator 1
	ldr	r3, .L58
.LPIC23:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L58+4
.LPIC24:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #217
	ldr	r2, .L58+8
.LPIC25:
	add	r2, pc, r2
	ldr	r1, .L58+12
.LPIC26:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-24]
	b	.L57
.L48:
	.loc 1 222 3 is_stmt 1
	ldr	r3, [fp, #-32]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L50
	.loc 1 222 3 is_stmt 0 discriminator 1
	ldr	r3, .L58+16
.LPIC27:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L58+20
.LPIC28:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #222
	ldr	r2, .L58+24
.LPIC29:
	add	r2, pc, r2
	ldr	r1, .L58+28
.LPIC30:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-24]
	b	.L57
.L50:
	.loc 1 230 3 is_stmt 1
	ldr	r3, [fp, #-32]
	ldr	r3, [r3]
	mov	r0, r3
	bl	GetBlockLength(PLT)
	mov	r4, r0
	ldr	r0, [fp, #-36]
	bl	EeePAlignLength(PLT)
	mov	r3, r0
	add	r3, r3, #4
	cmp	r4, r3
	bcs	.L51
	.loc 1 230 3 is_stmt 0 discriminator 1
	ldr	r3, .L58+32
.LPIC31:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L58+36
.LPIC32:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #230
	ldr	r2, .L58+40
.LPIC33:
	add	r2, pc, r2
	ldr	r1, .L58+44
.LPIC34:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-24]
	b	.L57
.L51:
	.loc 1 235 13 is_stmt 1
	ldr	r3, [fp, #-32]
	ldr	r3, [r3]
	mov	r0, r3
	bl	GetBlockLength(PLT)
	mov	r4, r0
	.loc 1 235 42
	ldr	r0, [fp, #-36]
	bl	EeePAlignLength(PLT)
	mov	r3, r0
	.loc 1 235 12
	sub	r3, r4, r3
	str	r3, [fp, #-16]
	.loc 1 236 13
	ldr	r3, [fp, #-44]
	and	r3, r3, #1
	.loc 1 236 5
	cmp	r3, #0
	beq	.L52
	.loc 1 237 14
	ldr	r3, [fp, #-32]
	ldr	r3, [r3]
	str	r3, [fp, #-20]
	b	.L53
.L52:
	.loc 1 239 15
	ldr	r3, [fp, #-32]
	ldr	r4, [r3]
	ldr	r0, [fp, #-36]
	bl	EeePAlignLength(PLT)
	mov	r3, r0
	.loc 1 239 14
	add	r3, r4, r3
	str	r3, [fp, #-20]
	.loc 1 240 5
	ldr	r3, [fp, #-32]
	ldr	r3, [r3]
	ldr	r2, [fp, #-16]
	mov	r1, r3
	ldr	r0, [fp, #-20]
	bl	memmove(PLT)
.L53:
	.loc 1 242 14
	ldr	r1, [fp, #-16]
	ldr	r0, [fp, #-20]
	bl	SetBlockLength(PLT)
	str	r0, [fp, #-24]
	.loc 1 246 13
	ldr	r3, [fp, #-44]
	and	r3, r3, #1
	.loc 1 246 5
	cmp	r3, #0
	beq	.L54
	.loc 1 247 7
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	beq	.L57
	.loc 1 248 19
	ldr	r0, [fp, #-20]
	bl	GetNextBlock(PLT)
	mov	r2, r0
	.loc 1 248 18
	ldr	r3, [fp, #-40]
	str	r2, [r3]
	b	.L57
.L54:
	.loc 1 250 7
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	beq	.L55
	.loc 1 251 19
	ldr	r3, [fp, #-32]
	ldr	r2, [r3]
	.loc 1 251 18
	ldr	r3, [fp, #-40]
	str	r2, [r3]
.L55:
	.loc 1 252 16
	ldr	r3, [fp, #-32]
	ldr	r2, [fp, #-20]
	str	r2, [r3]
.L49:
.L57:
	.loc 1 257 10
	ldr	r3, [fp, #-24]
	.loc 1 258 1
	mov	r0, r3
	sub	sp, fp, #8
	.cfi_def_cfa 13, 12
	@ sp needed
	pop	{r4, fp, pc}
.L59:
	.align	2
.L58:
	.word	.LC21-(.LPIC23+8)
	.word	.LC14-(.LPIC24+8)
	.word	.LC20-(.LPIC25+8)
	.word	.LC12-(.LPIC26+8)
	.word	.LC22-(.LPIC27+8)
	.word	.LC14-(.LPIC28+8)
	.word	.LC20-(.LPIC29+8)
	.word	.LC12-(.LPIC30+8)
	.word	.LC23-(.LPIC31+8)
	.word	.LC14-(.LPIC32+8)
	.word	.LC20-(.LPIC33+8)
	.word	.LC12-(.LPIC34+8)
	.cfi_endproc
.LFE9:
	.size	ReduceBlockLength, .-ReduceBlockLength
	.section	.rodata
	.align	2
.LC24:
	.ascii	"EeePCreateNewBuffer\000"
	.align	2
.LC25:
	.ascii	"(stBufferSize<256)\000"
	.align	2
.LC26:
	.ascii	"(stHeaderSize<sizeof(*pEeePCmnHdr))\000"
	.align	2
.LC27:
	.ascii	"(*pBHandel==NULL)\000"
	.align	2
.LC28:
	.ascii	"3P\000"
	.align	2
.LC29:
	.ascii	"TB \000"
	.align	2
.LC30:
	.ascii	"EeePGetFirstDB(*pBHandel, &pEeePEmptyBlock, NULL)\000"
	.align	2
.LC31:
	.ascii	"SetDynBlockHeader( pEeePEmptyBlock, EEEP_BLOCK_ID_U"
	.ascii	"NUSED, stBufferSize - (pEeePCmnHdr->BlkOffset*EEEP_"
	.ascii	"SIZE_UNITS) )\000"
	.align	2
.LC32:
	.ascii	"ReduceBlockLength( &pEeePEmptyBlock , sizeof(*pEeeP"
	.ascii	"TBlock) , &pEeePTBlock , EEEP_RBL_REDUCE_TOP_DOWN )"
	.ascii	"\000"
	.align	2
.LC33:
	.ascii	"SetDynBlockHeader( pEeePTBlock, EEEP_BLOCK_ID_UNUSE"
	.ascii	"D, EEEP_OFFSET_VALUE_EOL )\000"
	.align	2
.LC34:
	.ascii	"ReduceBlockLength( &pEeePEmptyBlock , sizeof(*pEeeP"
	.ascii	"CRCBlock), &plclEeePBlock, 0 )\000"
	.align	2
.LC35:
	.ascii	"SetDynBlockHeader( pEeePCRCBlock , EEEP_BLOCK_ID_CR"
	.ascii	"C_CHK , sizeof(*pEeePCRCBlock) )\000"
	.text
	.align	2
	.global	EeePCreateNewBuffer
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeePCreateNewBuffer, %function
EeePCreateNewBuffer:
.LFB10:
	.loc 1 270 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #64
	str	r0, [fp, #-40]
	str	r1, [fp, #-44]
	str	r2, [fp, #-48]
	str	r3, [fp, #-52]
	.loc 1 270 1
	ldr	r2, .L75
.LPIC72:
	add	r2, pc, r2
	ldr	r3, .L75+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 273 16
	mov	r3, #0
	str	r3, [fp, #-20]
	.loc 1 276 3
	ldr	r3, [fp, #-44]
	cmp	r3, #255
	bhi	.L61
	.loc 1 276 3 is_stmt 0 discriminator 1
	ldr	r3, .L75+8
.LPIC35:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L75+12
.LPIC36:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #276
	ldr	r2, .L75+16
.LPIC37:
	add	r2, pc, r2
	ldr	r1, .L75+20
.LPIC38:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-20]
	b	.L62
.L61:
	.loc 1 281 3 is_stmt 1
	ldr	r3, [fp, #-48]
	cmp	r3, #5
	bhi	.L63
	.loc 1 281 3 is_stmt 0 discriminator 1
	ldr	r3, .L75+24
.LPIC39:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L75+28
.LPIC40:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #281
	ldr	r2, .L75+32
.LPIC41:
	add	r2, pc, r2
	ldr	r1, .L75+36
.LPIC42:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-20]
	b	.L62
.L63:
	.loc 1 287 25 is_stmt 1
	ldr	r0, [fp, #-44]
	bl	malloc(PLT)
	mov	r3, r0
	mov	r2, r3
	.loc 1 287 24
	ldr	r3, [fp, #-40]
	str	r2, [r3]
	.loc 1 287 14
	ldr	r3, [fp, #-40]
	ldr	r3, [r3]
	str	r3, [fp, #-16]
	.loc 1 289 3
	ldr	r3, [fp, #-40]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L64
	.loc 1 289 3 is_stmt 0 discriminator 1
	ldr	r3, .L75+40
.LPIC43:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L75+44
.LPIC44:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #2
	str	r3, [sp]
	movw	r3, #289
	ldr	r2, .L75+48
.LPIC45:
	add	r2, pc, r2
	ldr	r1, .L75+52
.LPIC46:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #2
	str	r3, [fp, #-20]
	b	.L62
.L64:
	.loc 1 294 3 is_stmt 1
	ldr	r2, [fp, #-44]
	mov	r1, #0
	ldr	r0, [fp, #-16]
	bl	memset(PLT)
	.loc 1 298 28
	ldr	r3, [fp, #-16]
	mov	r2, #0
	strb	r2, [r3]
	.loc 1 300 18
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	.loc 1 299 3
	mov	r2, #2
	ldr	r1, .L75+56
.LPIC47:
	add	r1, pc, r1
	mov	r0, r3
	bl	memcpy(PLT)
	.loc 1 304 23
	ldr	r3, [fp, #-16]
	mov	r2, #5
	strb	r2, [r3, #3]
	.loc 1 305 35
	ldr	r0, [fp, #-48]
	bl	EeePAdjLength(PLT)
	mov	r3, r0
	.loc 1 305 26
	uxtb	r2, r3
	.loc 1 305 25
	ldr	r3, [fp, #-16]
	strb	r2, [r3, #4]
	.loc 1 306 26
	ldr	r3, [fp, #-16]
	mov	r2, #0
	strb	r2, [r3, #5]
	.loc 1 310 3
	ldr	r3, [fp, #-40]
	ldr	r3, [r3]
	sub	r1, fp, #32
	mov	r2, #0
	mov	r0, r3
	bl	EeePGetFirstDB(PLT)
	str	r0, [fp, #-20]
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	beq	.L65
	.loc 1 310 3 is_stmt 0 discriminator 1
	ldr	r3, .L75+60
.LPIC48:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L75+64
.LPIC49:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-20]
	str	r3, [sp]
	movw	r3, #310
	ldr	r2, .L75+68
.LPIC50:
	add	r2, pc, r2
	ldr	r1, .L75+72
.LPIC51:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L62
.L65:
	.loc 1 312 3 is_stmt 1
	ldr	r0, [fp, #-32]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #-44]
	sub	r3, r3, r2
	mov	r2, r3
	mov	r1, #0
	bl	SetDynBlockHeader(PLT)
	str	r0, [fp, #-20]
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	beq	.L66
	.loc 1 312 3 is_stmt 0 discriminator 1
	ldr	r3, .L75+76
.LPIC52:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L75+80
.LPIC53:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-20]
	str	r3, [sp]
	mov	r3, #312
	ldr	r2, .L75+84
.LPIC54:
	add	r2, pc, r2
	ldr	r1, .L75+88
.LPIC55:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L62
.L66:
	.loc 1 320 3 is_stmt 1
	sub	r2, fp, #28
	sub	r0, fp, #32
	mov	r3, #1
	mov	r1, #3
	bl	ReduceBlockLength(PLT)
	str	r0, [fp, #-20]
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	beq	.L67
	.loc 1 320 3 is_stmt 0 discriminator 1
	ldr	r3, .L75+92
.LPIC56:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L75+96
.LPIC57:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-20]
	str	r3, [sp]
	mov	r3, #320
	ldr	r2, .L75+100
.LPIC58:
	add	r2, pc, r2
	ldr	r1, .L75+104
.LPIC59:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L62
.L67:
	.loc 1 330 3 is_stmt 1
	ldr	r3, [fp, #-28]
	mov	r2, #0
	mov	r1, #0
	mov	r0, r3
	bl	SetDynBlockHeader(PLT)
	str	r0, [fp, #-20]
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	beq	.L68
	.loc 1 330 3 is_stmt 0 discriminator 1
	ldr	r3, .L75+108
.LPIC60:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L75+112
.LPIC61:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-20]
	str	r3, [sp]
	movw	r3, #330
	ldr	r2, .L75+116
.LPIC62:
	add	r2, pc, r2
	ldr	r1, .L75+120
.LPIC63:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L62
.L68:
	.loc 1 338 14 is_stmt 1
	ldr	r3, [fp, #-52]
	and	r3, r3, #1
	.loc 1 338 5
	cmp	r3, #0
	beq	.L74
.LBB2:
	.loc 1 344 5
	sub	r2, fp, #24
	sub	r0, fp, #32
	mov	r3, #0
	mov	r1, #6
	bl	ReduceBlockLength(PLT)
	str	r0, [fp, #-20]
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	beq	.L69
	.loc 1 344 5 is_stmt 0 discriminator 1
	ldr	r3, .L75+124
.LPIC64:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L75+128
.LPIC65:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-20]
	str	r3, [sp]
	mov	r3, #344
	ldr	r2, .L75+132
.LPIC66:
	add	r2, pc, r2
	ldr	r1, .L75+136
.LPIC67:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L62
.L69:
	.loc 1 350 17 is_stmt 1
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-12]
	.loc 1 355 5
	mov	r2, #6
	mov	r1, #242
	ldr	r0, [fp, #-12]
	bl	SetDynBlockHeader(PLT)
	str	r0, [fp, #-20]
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	beq	.L71
	.loc 1 355 5 is_stmt 0 discriminator 1
	ldr	r3, .L75+140
.LPIC68:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L75+144
.LPIC69:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-20]
	str	r3, [sp]
	movw	r3, #355
	ldr	r2, .L75+148
.LPIC70:
	add	r2, pc, r2
	ldr	r1, .L75+152
.LPIC71:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L62
.L71:
	.loc 1 360 41 is_stmt 1
	ldr	r3, [fp, #-12]
	add	r3, r3, #3
	.loc 1 360 5
	mov	r1, #0
	mov	r0, r3
	bl	EeeP_Set16BitValue_BE(PLT)
	b	.L62
.L74:
.LBE2:
	.loc 1 362 1
	nop
.L62:
	.loc 1 363 10
	ldr	r3, [fp, #-20]
	.loc 1 270 1
	ldr	r1, .L75+156
.LPIC73:
	add	r1, pc, r1
	.loc 1 364 1
	ldr	r2, .L75+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L73
	bl	__stack_chk_fail(PLT)
.L73:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L76:
	.align	2
.L75:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC72+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC25-(.LPIC35+8)
	.word	.LC14-(.LPIC36+8)
	.word	.LC24-(.LPIC37+8)
	.word	.LC12-(.LPIC38+8)
	.word	.LC26-(.LPIC39+8)
	.word	.LC14-(.LPIC40+8)
	.word	.LC24-(.LPIC41+8)
	.word	.LC12-(.LPIC42+8)
	.word	.LC27-(.LPIC43+8)
	.word	.LC14-(.LPIC44+8)
	.word	.LC24-(.LPIC45+8)
	.word	.LC12-(.LPIC46+8)
	.word	.LC28-(.LPIC47+8)
	.word	.LC30-(.LPIC48+8)
	.word	.LC14-(.LPIC49+8)
	.word	.LC29-(.LPIC50+8)
	.word	.LC12-(.LPIC51+8)
	.word	.LC31-(.LPIC52+8)
	.word	.LC14-(.LPIC53+8)
	.word	.LC29-(.LPIC54+8)
	.word	.LC12-(.LPIC55+8)
	.word	.LC32-(.LPIC56+8)
	.word	.LC14-(.LPIC57+8)
	.word	.LC29-(.LPIC58+8)
	.word	.LC12-(.LPIC59+8)
	.word	.LC33-(.LPIC60+8)
	.word	.LC14-(.LPIC61+8)
	.word	.LC29-(.LPIC62+8)
	.word	.LC12-(.LPIC63+8)
	.word	.LC34-(.LPIC64+8)
	.word	.LC14-(.LPIC65+8)
	.word	.LC29-(.LPIC66+8)
	.word	.LC12-(.LPIC67+8)
	.word	.LC35-(.LPIC68+8)
	.word	.LC14-(.LPIC69+8)
	.word	.LC29-(.LPIC70+8)
	.word	.LC12-(.LPIC71+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC73+8)
	.cfi_endproc
.LFE10:
	.size	EeePCreateNewBuffer, .-EeePCreateNewBuffer
	.section	.rodata
	.align	2
.LC36:
	.ascii	"EeePFreeBuffer\000"
	.align	2
.LC37:
	.ascii	"(pBHandel==NULL)\000"
	.text
	.align	2
	.global	EeePFreeBuffer
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeePFreeBuffer, %function
EeePFreeBuffer:
.LFB11:
	.loc 1 369 1
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
	.loc 1 370 16
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 371 3
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L78
	.loc 1 371 3 is_stmt 0 discriminator 1
	ldr	r3, .L82
.LPIC74:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L82+4
.LPIC75:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #371
	ldr	r2, .L82+8
.LPIC76:
	add	r2, pc, r2
	ldr	r1, .L82+12
.LPIC77:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-8]
	b	.L79
.L78:
	.loc 1 377 6 is_stmt 1
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	.loc 1 377 5
	cmp	r3, #0
	beq	.L81
	.loc 1 378 3
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	mov	r0, r3
	bl	free(PLT)
	.loc 1 379 12
	ldr	r3, [fp, #-16]
	mov	r2, #0
	str	r2, [r3]
	b	.L79
.L81:
	.loc 1 381 1
	nop
.L79:
	.loc 1 382 10
	ldr	r3, [fp, #-8]
	.loc 1 383 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L83:
	.align	2
.L82:
	.word	.LC37-(.LPIC74+8)
	.word	.LC14-(.LPIC75+8)
	.word	.LC36-(.LPIC76+8)
	.word	.LC12-(.LPIC77+8)
	.cfi_endproc
.LFE11:
	.size	EeePFreeBuffer, .-EeePFreeBuffer
	.section	.rodata
	.align	2
.LC38:
	.ascii	"EeePGetFirstDB\000"
	.align	2
.LC39:
	.ascii	"(pFirstDB==NULL)\000"
	.align	2
.LC40:
	.ascii	"Invalid EeeP Buffer\000"
	.text
	.align	2
	.global	EeePGetFirstDB
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeePGetFirstDB, %function
EeePGetFirstDB:
.LFB12:
	.loc 1 390 1
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
	.loc 1 391 16
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 392 3
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L85
	.loc 1 392 3 is_stmt 0 discriminator 1
	ldr	r3, .L92
.LPIC78:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L92+4
.LPIC79:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #392
	ldr	r2, .L92+8
.LPIC80:
	add	r2, pc, r2
	ldr	r1, .L92+12
.LPIC81:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-8]
	b	.L86
.L85:
	.loc 1 397 3 is_stmt 1
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L87
	.loc 1 397 3 is_stmt 0 discriminator 1
	ldr	r3, .L92+16
.LPIC82:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L92+20
.LPIC83:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #397
	ldr	r2, .L92+24
.LPIC84:
	add	r2, pc, r2
	ldr	r1, .L92+28
.LPIC85:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-8]
	b	.L86
.L87:
	.loc 1 403 12 is_stmt 1
	ldr	r3, [fp, #-20]
	mov	r2, #0
	str	r2, [r3]
	.loc 1 405 3
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	mov	r2, #2
	ldr	r1, .L92+32
.LPIC86:
	add	r1, pc, r1
	mov	r0, r3
	bl	memcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L88
	.loc 1 405 3 is_stmt 0 discriminator 1
	ldr	r3, .L92+36
.LPIC87:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L92+40
.LPIC88:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #3840
	str	r3, [sp]
	movw	r3, #405
	ldr	r2, .L92+44
.LPIC89:
	add	r2, pc, r2
	ldr	r1, .L92+48
.LPIC90:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #3840
	str	r3, [fp, #-8]
	b	.L86
.L88:
	.loc 1 420 28 is_stmt 1
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	.loc 1 420 5
	cmp	r3, #0
	bne	.L89
	.loc 1 421 12
	mov	r3, #0
	b	.L90
.L89:
	.loc 1 423 13
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #-16]
	add	r2, r3, r2
	.loc 1 423 12
	ldr	r3, [fp, #-20]
	str	r2, [r3]
	.loc 1 428 5
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	beq	.L91
	.loc 1 429 45 discriminator 1
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	.loc 1 429 57 discriminator 1
	and	r3, r3, #15
	.loc 1 429 21 discriminator 1
	mov	r2, #256
	lsl	r3, r2, r3
	.loc 1 429 9 discriminator 1
	mov	r2, r3
	.loc 1 428 45 discriminator 1
	ldr	r3, [fp, #-24]
	str	r2, [r3]
	b	.L86
.L91:
	.loc 1 430 1
	nop
.L86:
	.loc 1 431 10
	ldr	r3, [fp, #-8]
.L90:
	.loc 1 432 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L93:
	.align	2
.L92:
	.word	.LC13-(.LPIC78+8)
	.word	.LC14-(.LPIC79+8)
	.word	.LC38-(.LPIC80+8)
	.word	.LC12-(.LPIC81+8)
	.word	.LC39-(.LPIC82+8)
	.word	.LC14-(.LPIC83+8)
	.word	.LC38-(.LPIC84+8)
	.word	.LC12-(.LPIC85+8)
	.word	.LC28-(.LPIC86+8)
	.word	.LC40-(.LPIC87+8)
	.word	.LC14-(.LPIC88+8)
	.word	.LC38-(.LPIC89+8)
	.word	.LC12-(.LPIC90+8)
	.cfi_endproc
.LFE12:
	.size	EeePGetFirstDB, .-EeePGetFirstDB
	.section	.rodata
	.align	2
.LC41:
	.ascii	"EeePMapBuffer\000"
	.align	2
.LC42:
	.ascii	"EeePGetFirstDB(BHandel, &pCurBlock, &MaxDeviceLen)\000"
	.align	2
.LC43:
	.ascii	"(CurOffset>MaxDeviceLen)\000"
	.align	2
.LC44:
	.ascii	"More than 1 Empty Block in CRC Not Supported\000"
	.align	2
.LC45:
	.ascii	"More than 1 CRC Block Not Supported\000"
	.text
	.align	2
	.global	EeePMapBuffer
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeePMapBuffer, %function
EeePMapBuffer:
.LFB13:
	.loc 1 439 1
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
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	.loc 1 439 1
	ldr	r2, .L114
.LPIC116:
	add	r2, pc, r2
	ldr	r3, .L114+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 442 16
	mov	r3, #0
	str	r3, [fp, #-16]
	.loc 1 446 3
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	bne	.L95
	.loc 1 446 3 is_stmt 0 discriminator 1
	ldr	r3, .L114+8
.LPIC91:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L114+12
.LPIC92:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #446
	ldr	r2, .L114+16
.LPIC93:
	add	r2, pc, r2
	ldr	r1, .L114+20
.LPIC94:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-16]
	b	.L96
.L95:
	.loc 1 452 3 is_stmt 1
	mov	r2, #12
	mov	r1, #0
	ldr	r0, [fp, #-36]
	bl	memset(PLT)
	.loc 1 454 19
	ldr	r3, [fp, #-36]
	ldr	r2, [fp, #-32]
	str	r2, [r3]
	.loc 1 456 3
	ldr	r3, [fp, #-36]
	ldr	r3, [r3]
	add	r3, r3, #1
	mov	r2, #2
	ldr	r1, .L114+24
.LPIC95:
	add	r1, pc, r1
	mov	r0, r3
	bl	memcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L97
	.loc 1 456 3 is_stmt 0 discriminator 1
	ldr	r3, .L114+28
.LPIC96:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L114+32
.LPIC97:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #3840
	str	r3, [sp]
	mov	r3, #456
	ldr	r2, .L114+36
.LPIC98:
	add	r2, pc, r2
	ldr	r1, .L114+40
.LPIC99:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #3840
	str	r3, [fp, #-16]
	b	.L96
.L97:
	.loc 1 467 3 is_stmt 1
	sub	r2, fp, #20
	sub	r3, fp, #24
	mov	r1, r3
	ldr	r0, [fp, #-32]
	bl	EeePGetFirstDB(PLT)
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L99
	.loc 1 467 3 is_stmt 0 discriminator 1
	ldr	r3, .L114+44
.LPIC100:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L114+48
.LPIC101:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-16]
	str	r3, [sp]
	movw	r3, #467
	ldr	r2, .L114+52
.LPIC102:
	add	r2, pc, r2
	ldr	r1, .L114+56
.LPIC103:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L96
.L109:
	.loc 1 471 15 is_stmt 1
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-32]
	sub	r3, r2, r3
	.loc 1 471 14
	str	r3, [fp, #-12]
	.loc 1 483 5
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-12]
	cmp	r2, r3
	bls	.L100
	.loc 1 483 5 is_stmt 0 discriminator 1
	ldr	r3, .L114+60
.LPIC104:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L114+64
.LPIC105:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #3840
	str	r3, [sp]
	movw	r3, #483
	ldr	r2, .L114+68
.LPIC106:
	add	r2, pc, r2
	ldr	r1, .L114+72
.LPIC107:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #3840
	str	r3, [fp, #-16]
	b	.L96
.L100:
	.loc 1 488 21 is_stmt 1
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 488 5
	cmp	r3, #255
	beq	.L101
	cmp	r3, #255
	bgt	.L112
	cmp	r3, #0
	beq	.L103
	cmp	r3, #242
	beq	.L104
	.loc 1 512 9
	b	.L112
.L103:
	.loc 1 490 12
	ldr	r3, [fp, #-24]
	mov	r0, r3
	bl	GetNextBlock(PLT)
	mov	r3, r0
	.loc 1 490 11
	cmp	r3, #0
	beq	.L113
	.loc 1 491 9
	ldr	r3, [fp, #-36]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L107
	.loc 1 491 9 is_stmt 0 discriminator 1
	ldr	r3, .L114+76
.LPIC108:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L114+80
.LPIC109:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #3840
	str	r3, [sp]
	movw	r3, #491
	ldr	r2, .L114+84
.LPIC110:
	add	r2, pc, r2
	ldr	r1, .L114+88
.LPIC111:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #3840
	str	r3, [fp, #-16]
	b	.L96
.L107:
	.loc 1 497 29 is_stmt 1
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-36]
	str	r2, [r3, #4]
	.loc 1 498 9
	b	.L106
.L104:
	.loc 1 500 9
	ldr	r3, [fp, #-36]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L108
	.loc 1 500 9 is_stmt 0 discriminator 1
	ldr	r3, .L114+92
.LPIC112:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L114+96
.LPIC113:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #3840
	str	r3, [sp]
	mov	r3, #500
	ldr	r2, .L114+100
.LPIC114:
	add	r2, pc, r2
	ldr	r1, .L114+104
.LPIC115:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #3840
	str	r3, [fp, #-16]
	b	.L96
.L108:
	.loc 1 506 31 is_stmt 1
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-36]
	str	r2, [r3, #8]
	.loc 1 507 9
	b	.L106
.L101:
	.loc 1 509 18
	mov	r3, #0
	str	r3, [fp, #-24]
	.loc 1 510 9
	b	.L106
.L112:
	.loc 1 512 9
	nop
	b	.L106
.L113:
	.loc 1 490 43
	nop
.L106:
	.loc 1 469 34
	ldr	r3, [fp, #-24]
	mov	r0, r3
	bl	GetNextBlock(PLT)
	mov	r3, r0
	.loc 1 469 33
	str	r3, [fp, #-24]
.L99:
	.loc 1 469 17 discriminator 1
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L109
	.loc 1 516 1
	nop
.L96:
	.loc 1 517 10
	ldr	r3, [fp, #-16]
	.loc 1 439 1
	ldr	r1, .L114+108
.LPIC117:
	add	r1, pc, r1
	.loc 1 518 1
	ldr	r2, .L114+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L111
	bl	__stack_chk_fail(PLT)
.L111:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L115:
	.align	2
.L114:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC116+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC13-(.LPIC91+8)
	.word	.LC14-(.LPIC92+8)
	.word	.LC41-(.LPIC93+8)
	.word	.LC12-(.LPIC94+8)
	.word	.LC28-(.LPIC95+8)
	.word	.LC40-(.LPIC96+8)
	.word	.LC14-(.LPIC97+8)
	.word	.LC41-(.LPIC98+8)
	.word	.LC12-(.LPIC99+8)
	.word	.LC42-(.LPIC100+8)
	.word	.LC14-(.LPIC101+8)
	.word	.LC29-(.LPIC102+8)
	.word	.LC12-(.LPIC103+8)
	.word	.LC43-(.LPIC104+8)
	.word	.LC14-(.LPIC105+8)
	.word	.LC41-(.LPIC106+8)
	.word	.LC12-(.LPIC107+8)
	.word	.LC44-(.LPIC108+8)
	.word	.LC14-(.LPIC109+8)
	.word	.LC41-(.LPIC110+8)
	.word	.LC12-(.LPIC111+8)
	.word	.LC45-(.LPIC112+8)
	.word	.LC14-(.LPIC113+8)
	.word	.LC41-(.LPIC114+8)
	.word	.LC12-(.LPIC115+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC117+8)
	.cfi_endproc
.LFE13:
	.size	EeePMapBuffer, .-EeePMapBuffer
	.section	.rodata
	.align	2
.LC46:
	.ascii	"EeePListBlocks\000"
	.align	2
.LC47:
	.ascii	"LOG: Header Size: 0x%02lX\012\000"
	.align	2
.LC48:
	.ascii	"EeeP Common Header\000"
	.align	2
.LC49:
	.ascii	"EeeP Extended Header\000"
	.align	2
.LC50:
	.ascii	"\012LOG: BLOCK ID  : %s(0x%02X)\012LOG:   Length  :"
	.ascii	" 0x%04lX\012LOG:   Offset  : 0x%08lX\012\000"
	.align	2
.LC51:
	.ascii	"(CurOffset+BlockLen>MaxDeviceLen)\000"
	.text
	.align	2
	.global	EeePListBlocks
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeePListBlocks, %function
EeePListBlocks:
.LFB14:
	.loc 1 525 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 120
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #136
	str	r0, [fp, #-120]
	str	r1, [fp, #-124]
	.loc 1 525 1
	ldr	r2, .L129
.LPIC143:
	add	r2, pc, r2
	ldr	r3, .L129+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 528 39
	mov	r3, #0
	str	r3, [fp, #-112]
	.loc 1 530 16
	mov	r3, #0
	str	r3, [fp, #-104]
	.loc 1 532 3
	ldr	r3, [fp, #-120]
	cmp	r3, #0
	bne	.L117
	.loc 1 532 3 is_stmt 0 discriminator 1
	ldr	r3, .L129+8
.LPIC118:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L129+12
.LPIC119:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #532
	ldr	r2, .L129+16
.LPIC120:
	add	r2, pc, r2
	ldr	r1, .L129+20
.LPIC121:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-104]
	b	.L118
.L117:
	.loc 1 537 14 is_stmt 1
	ldr	r3, [fp, #-120]
	str	r3, [fp, #-100]
	.loc 1 540 3
	ldr	r3, [fp, #-100]
	add	r3, r3, #1
	mov	r2, #2
	ldr	r1, .L129+24
.LPIC122:
	add	r1, pc, r1
	mov	r0, r3
	bl	memcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L119
	.loc 1 540 3 is_stmt 0 discriminator 1
	ldr	r3, .L129+28
.LPIC123:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L129+32
.LPIC124:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #3840
	str	r3, [sp]
	mov	r3, #540
	ldr	r2, .L129+36
.LPIC125:
	add	r2, pc, r2
	ldr	r1, .L129+40
.LPIC126:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #3840
	str	r3, [fp, #-104]
	b	.L118
.L119:
	.loc 1 551 3 is_stmt 1
	sub	r2, fp, #112
	sub	r3, fp, #108
	mov	r1, r3
	ldr	r0, [fp, #-120]
	bl	EeePGetFirstDB(PLT)
	str	r0, [fp, #-104]
	ldr	r3, [fp, #-104]
	cmp	r3, #0
	beq	.L120
	.loc 1 551 3 is_stmt 0 discriminator 1
	ldr	r3, .L129+44
.LPIC127:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L129+48
.LPIC128:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-104]
	str	r3, [sp]
	movw	r3, #551
	ldr	r2, .L129+52
.LPIC129:
	add	r2, pc, r2
	ldr	r1, .L129+56
.LPIC130:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L118
.L120:
	.loc 1 554 7 is_stmt 1
	ldr	r2, [fp, #-108]
	ldr	r3, [fp, #-120]
	sub	r3, r2, r3
	.loc 1 552 3
	mov	r1, r3
	ldr	r3, .L129+60
.LPIC131:
	add	r3, pc, r3
	mov	r0, r3
	bl	printf(PLT)
	.loc 1 556 3
	ldr	r3, .L129+64
.LPIC132:
	add	r3, pc, r3
	ldr	r2, [fp, #-120]
	mov	r1, #6
	ldr	r0, [fp, #-120]
	bl	PrintHexAsciiTable(PLT)
	.loc 1 563 6
	ldr	r2, [fp, #-108]
	ldr	r3, [fp, #-120]
	sub	r3, r2, r3
	.loc 1 563 5
	cmp	r3, #6
	bls	.L122
	.loc 1 564 5
	ldr	r3, [fp, #-120]
	add	r0, r3, #6
	.loc 1 566 9
	ldr	r2, [fp, #-108]
	ldr	r3, [fp, #-120]
	sub	r3, r2, r3
	.loc 1 566 49
	sub	r1, r3, #6
	.loc 1 564 5
	ldr	r3, .L129+68
.LPIC133:
	add	r3, pc, r3
	ldr	r2, [fp, #-120]
	bl	PrintHexAsciiTable(PLT)
	.loc 1 572 3
	b	.L122
.L126:
	.loc 1 574 15
	ldr	r2, [fp, #-108]
	ldr	r3, [fp, #-120]
	sub	r3, r2, r3
	.loc 1 574 14
	str	r3, [fp, #-96]
	.loc 1 575 14
	ldr	r3, [fp, #-108]
	mov	r0, r3
	bl	GetBlockLength(PLT)
	str	r0, [fp, #-92]
	.loc 1 576 65
	ldr	r3, [fp, #-108]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 576 5
	mov	r2, r3
	sub	r3, fp, #88
	mov	r1, #80
	mov	r0, r3
	bl	GetDBlckIdString(PLT)
	.loc 1 587 18
	ldr	r3, [fp, #-108]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 577 5
	mov	r2, r3
	sub	r1, fp, #88
	ldr	r3, [fp, #-96]
	str	r3, [sp]
	ldr	r3, [fp, #-92]
	ldr	r0, .L129+72
.LPIC134:
	add	r0, pc, r0
	bl	printf(PLT)
	.loc 1 591 5
	ldr	r3, [fp, #-112]
	ldr	r2, [fp, #-96]
	cmp	r2, r3
	bls	.L123
	.loc 1 591 5 is_stmt 0 discriminator 1
	ldr	r3, .L129+76
.LPIC135:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L129+80
.LPIC136:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #3840
	str	r3, [sp]
	movw	r3, #591
	ldr	r2, .L129+84
.LPIC137:
	add	r2, pc, r2
	ldr	r1, .L129+88
.LPIC138:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #3840
	str	r3, [fp, #-104]
	b	.L118
.L123:
	.loc 1 596 5 is_stmt 1
	ldr	r2, [fp, #-96]
	ldr	r3, [fp, #-92]
	add	r2, r2, r3
	ldr	r3, [fp, #-112]
	cmp	r2, r3
	bls	.L124
	.loc 1 596 5 is_stmt 0 discriminator 1
	ldr	r3, .L129+92
.LPIC139:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L129+96
.LPIC140:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #3840
	str	r3, [sp]
	mov	r3, #596
	ldr	r2, .L129+100
.LPIC141:
	add	r2, pc, r2
	ldr	r1, .L129+104
.LPIC142:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #3840
	str	r3, [fp, #-104]
	b	.L118
.L124:
	.loc 1 601 8 is_stmt 1
	ldr	r3, [fp, #-108]
	mov	r0, r3
	bl	GetNextBlock(PLT)
	mov	r3, r0
	.loc 1 601 7
	cmp	r3, #0
	beq	.L125
	.loc 1 603 13
	ldr	r3, [fp, #-108]
	.loc 1 602 7
	add	r0, r3, #3
	ldr	r3, [fp, #-92]
	sub	r1, r3, #3
	mov	r3, #0
	ldr	r2, [fp, #-120]
	bl	PrintHexAsciiTable(PLT)
.L125:
	.loc 1 572 34
	ldr	r3, [fp, #-108]
	mov	r0, r3
	bl	GetNextBlock(PLT)
	mov	r3, r0
	.loc 1 572 33
	str	r3, [fp, #-108]
.L122:
	.loc 1 572 17 discriminator 1
	ldr	r3, [fp, #-108]
	cmp	r3, #0
	bne	.L126
	.loc 1 611 1
	nop
.L118:
	.loc 1 612 10
	ldr	r3, [fp, #-104]
	.loc 1 525 1
	ldr	r1, .L129+108
.LPIC144:
	add	r1, pc, r1
	.loc 1 613 1
	ldr	r2, .L129+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L128
	bl	__stack_chk_fail(PLT)
.L128:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L130:
	.align	2
.L129:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC143+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC13-(.LPIC118+8)
	.word	.LC14-(.LPIC119+8)
	.word	.LC46-(.LPIC120+8)
	.word	.LC12-(.LPIC121+8)
	.word	.LC28-(.LPIC122+8)
	.word	.LC40-(.LPIC123+8)
	.word	.LC14-(.LPIC124+8)
	.word	.LC46-(.LPIC125+8)
	.word	.LC12-(.LPIC126+8)
	.word	.LC42-(.LPIC127+8)
	.word	.LC14-(.LPIC128+8)
	.word	.LC29-(.LPIC129+8)
	.word	.LC12-(.LPIC130+8)
	.word	.LC47-(.LPIC131+8)
	.word	.LC48-(.LPIC132+8)
	.word	.LC49-(.LPIC133+8)
	.word	.LC50-(.LPIC134+8)
	.word	.LC43-(.LPIC135+8)
	.word	.LC14-(.LPIC136+8)
	.word	.LC46-(.LPIC137+8)
	.word	.LC12-(.LPIC138+8)
	.word	.LC51-(.LPIC139+8)
	.word	.LC14-(.LPIC140+8)
	.word	.LC46-(.LPIC141+8)
	.word	.LC12-(.LPIC142+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC144+8)
	.cfi_endproc
.LFE14:
	.size	EeePListBlocks, .-EeePListBlocks
	.section	.rodata
	.align	2
.LC52:
	.ascii	"EeePSetCRC\000"
	.align	2
.LC53:
	.ascii	"EeePMapBuffer(BHandel, &BufferMap)\000"
	.align	2
.LC54:
	.ascii	"No CRC Block Present\000"
	.align	2
.LC55:
	.ascii	"CRC_CCITT.init(&pContext)\000"
	.align	2
.LC56:
	.ascii	"CRC_CCITT.bytes( pContext, BufferMap.pCmnHdr, EAPI_"
	.ascii	"GET_PTR_OFFSET(BufferMap.pEeePCRCBlock->CrC16, Buff"
	.ascii	"erMap.pCmnHdr) )\000"
	.align	2
.LC57:
	.ascii	"CRC_CCITT.fini(&pContext, BufferMap.pEeePCRCBlock->"
	.ascii	"CrC16)\000"
	.text
	.align	2
	.global	EeePSetCRC
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeePSetCRC, %function
EeePSetCRC:
.LFB15:
	.loc 1 619 1
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
	str	r0, [fp, #-40]
	ldr	r4, .L141
.LPIC157:
	add	r4, pc, r4
	.loc 1 619 1
	ldr	r2, .L141+4
.LPIC170:
	add	r2, pc, r2
	ldr	r3, .L141+8
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-16]
	mov	r3, #0
	.loc 1 621 16
	mov	r3, #0
	str	r3, [fp, #-32]
	.loc 1 624 3
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	bne	.L132
	.loc 1 624 3 is_stmt 0 discriminator 1
	ldr	r3, .L141+12
.LPIC145:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L141+16
.LPIC146:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #624
	ldr	r2, .L141+20
.LPIC147:
	add	r2, pc, r2
	ldr	r1, .L141+24
.LPIC148:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-32]
	b	.L133
.L132:
	.loc 1 629 3 is_stmt 1
	sub	r3, fp, #28
	mov	r1, r3
	ldr	r0, [fp, #-40]
	bl	EeePMapBuffer(PLT)
	str	r0, [fp, #-32]
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	beq	.L134
	.loc 1 629 3 is_stmt 0 discriminator 1
	ldr	r3, .L141+28
.LPIC149:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L141+32
.LPIC150:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-32]
	str	r3, [sp]
	movw	r3, #629
	ldr	r2, .L141+36
.LPIC151:
	add	r2, pc, r2
	ldr	r1, .L141+40
.LPIC152:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L133
.L134:
	.loc 1 631 3 is_stmt 1
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L135
	.loc 1 631 3 is_stmt 0 discriminator 1
	ldr	r3, .L141+44
.LPIC153:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L141+48
.LPIC154:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #3840
	str	r3, [sp]
	movw	r3, #631
	ldr	r2, .L141+52
.LPIC155:
	add	r2, pc, r2
	ldr	r1, .L141+56
.LPIC156:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #3840
	str	r3, [fp, #-32]
	b	.L133
.L135:
	.loc 1 637 5 is_stmt 1
	ldr	r3, .L141+60
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	sub	r2, fp, #36
	mov	r0, r2
	blx	r3
.LVL0:
	str	r0, [fp, #-32]
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	beq	.L136
	.loc 1 637 5 is_stmt 0 discriminator 1
	ldr	r3, .L141+64
.LPIC158:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L141+68
.LPIC159:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-32]
	str	r3, [sp]
	movw	r3, #637
	ldr	r2, .L141+72
.LPIC160:
	add	r2, pc, r2
	ldr	r1, .L141+76
.LPIC161:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L133
.L136:
	.loc 1 638 5 is_stmt 1
	ldr	r3, .L141+60
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #4]
	ldr	r0, [fp, #-36]
	ldr	ip, [fp, #-28]
	ldr	r2, [fp, #-20]
	add	r1, r2, #3
	ldr	r2, [fp, #-28]
	sub	r2, r1, r2
	mov	r1, ip
	blx	r3
.LVL1:
	str	r0, [fp, #-32]
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	beq	.L137
	.loc 1 638 5 is_stmt 0 discriminator 1
	ldr	r3, .L141+80
.LPIC162:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L141+84
.LPIC163:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-32]
	str	r3, [sp]
	movw	r3, #638
	ldr	r2, .L141+88
.LPIC164:
	add	r2, pc, r2
	ldr	r1, .L141+92
.LPIC165:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L133
.L137:
	.loc 1 643 5 is_stmt 1
	ldr	r3, .L141+60
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #8]
	ldr	r2, [fp, #-20]
	add	r1, r2, #3
	sub	r2, fp, #36
	mov	r0, r2
	blx	r3
.LVL2:
	str	r0, [fp, #-32]
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	beq	.L140
	.loc 1 643 5 is_stmt 0 discriminator 1
	ldr	r3, .L141+96
.LPIC166:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L141+100
.LPIC167:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-32]
	str	r3, [sp]
	movw	r3, #643
	ldr	r2, .L141+104
.LPIC168:
	add	r2, pc, r2
	ldr	r1, .L141+108
.LPIC169:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L133
.L140:
	.loc 1 646 1 is_stmt 1
	nop
.L133:
	.loc 1 647 10
	ldr	r3, [fp, #-32]
	.loc 1 619 1
	ldr	r1, .L141+112
.LPIC171:
	add	r1, pc, r1
	.loc 1 648 1
	ldr	r2, .L141+8
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-16]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L139
	bl	__stack_chk_fail(PLT)
.L139:
	mov	r0, r3
	sub	sp, fp, #8
	.cfi_def_cfa 13, 12
	@ sp needed
	pop	{r4, fp, pc}
.L142:
	.align	2
.L141:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC157+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC170+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC13-(.LPIC145+8)
	.word	.LC14-(.LPIC146+8)
	.word	.LC52-(.LPIC147+8)
	.word	.LC12-(.LPIC148+8)
	.word	.LC53-(.LPIC149+8)
	.word	.LC14-(.LPIC150+8)
	.word	.LC29-(.LPIC151+8)
	.word	.LC12-(.LPIC152+8)
	.word	.LC54-(.LPIC153+8)
	.word	.LC14-(.LPIC154+8)
	.word	.LC52-(.LPIC155+8)
	.word	.LC12-(.LPIC156+8)
	.word	CRC_CCITT(GOT)
	.word	.LC55-(.LPIC158+8)
	.word	.LC14-(.LPIC159+8)
	.word	.LC29-(.LPIC160+8)
	.word	.LC12-(.LPIC161+8)
	.word	.LC56-(.LPIC162+8)
	.word	.LC14-(.LPIC163+8)
	.word	.LC29-(.LPIC164+8)
	.word	.LC12-(.LPIC165+8)
	.word	.LC57-(.LPIC166+8)
	.word	.LC14-(.LPIC167+8)
	.word	.LC29-(.LPIC168+8)
	.word	.LC12-(.LPIC169+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC171+8)
	.cfi_endproc
.LFE15:
	.size	EeePSetCRC, .-EeePSetCRC
	.section	.rodata
	.align	2
.LC58:
	.ascii	"EeePCheckCRC\000"
	.align	2
.LC59:
	.ascii	"CRC_CCITT.verify(&pContext, BufferMap.pEeePCRCBlock"
	.ascii	"->CrC16)\000"
	.text
	.align	2
	.global	EeePCheckCRC
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeePCheckCRC, %function
EeePCheckCRC:
.LFB16:
	.loc 1 653 1
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
	str	r0, [fp, #-40]
	ldr	r4, .L153
.LPIC184:
	add	r4, pc, r4
	.loc 1 653 1
	ldr	r2, .L153+4
.LPIC197:
	add	r2, pc, r2
	ldr	r3, .L153+8
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-16]
	mov	r3, #0
	.loc 1 655 16
	mov	r3, #0
	str	r3, [fp, #-32]
	.loc 1 658 3
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	bne	.L144
	.loc 1 658 3 is_stmt 0 discriminator 1
	ldr	r3, .L153+12
.LPIC172:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L153+16
.LPIC173:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #658
	ldr	r2, .L153+20
.LPIC174:
	add	r2, pc, r2
	ldr	r1, .L153+24
.LPIC175:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-32]
	b	.L145
.L144:
	.loc 1 663 3 is_stmt 1
	sub	r3, fp, #28
	mov	r1, r3
	ldr	r0, [fp, #-40]
	bl	EeePMapBuffer(PLT)
	str	r0, [fp, #-32]
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	beq	.L146
	.loc 1 663 3 is_stmt 0 discriminator 1
	ldr	r3, .L153+28
.LPIC176:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L153+32
.LPIC177:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-32]
	str	r3, [sp]
	movw	r3, #663
	ldr	r2, .L153+36
.LPIC178:
	add	r2, pc, r2
	ldr	r1, .L153+40
.LPIC179:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L145
.L146:
	.loc 1 665 3 is_stmt 1
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L147
	.loc 1 665 3 is_stmt 0 discriminator 1
	ldr	r3, .L153+44
.LPIC180:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L153+48
.LPIC181:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #3840
	str	r3, [sp]
	movw	r3, #665
	ldr	r2, .L153+52
.LPIC182:
	add	r2, pc, r2
	ldr	r1, .L153+56
.LPIC183:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #3840
	str	r3, [fp, #-32]
	b	.L145
.L147:
	.loc 1 671 12 is_stmt 1
	ldr	r3, [fp, #-28]
	.loc 1 671 34
	mov	r2, #0
	strb	r2, [r3]
	.loc 1 672 3
	ldr	r3, .L153+60
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	sub	r2, fp, #36
	mov	r0, r2
	blx	r3
.LVL3:
	str	r0, [fp, #-32]
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	beq	.L148
	.loc 1 672 3 is_stmt 0 discriminator 1
	ldr	r3, .L153+64
.LPIC185:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L153+68
.LPIC186:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-32]
	str	r3, [sp]
	mov	r3, #672
	ldr	r2, .L153+72
.LPIC187:
	add	r2, pc, r2
	ldr	r1, .L153+76
.LPIC188:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L145
.L148:
	.loc 1 673 3 is_stmt 1
	ldr	r3, .L153+60
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #4]
	ldr	r0, [fp, #-36]
	ldr	ip, [fp, #-28]
	ldr	r2, [fp, #-20]
	add	r1, r2, #3
	ldr	r2, [fp, #-28]
	sub	r2, r1, r2
	mov	r1, ip
	blx	r3
.LVL4:
	str	r0, [fp, #-32]
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	beq	.L149
	.loc 1 673 3 is_stmt 0 discriminator 1
	ldr	r3, .L153+80
.LPIC189:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L153+84
.LPIC190:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-32]
	str	r3, [sp]
	movw	r3, #673
	ldr	r2, .L153+88
.LPIC191:
	add	r2, pc, r2
	ldr	r1, .L153+92
.LPIC192:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L145
.L149:
	.loc 1 678 3 is_stmt 1
	ldr	r3, .L153+60
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #12]
	ldr	r2, [fp, #-20]
	add	r1, r2, #3
	sub	r2, fp, #36
	mov	r0, r2
	blx	r3
.LVL5:
	str	r0, [fp, #-32]
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	beq	.L152
	.loc 1 678 3 is_stmt 0 discriminator 1
	ldr	r3, .L153+96
.LPIC193:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L153+100
.LPIC194:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-32]
	str	r3, [sp]
	movw	r3, #678
	ldr	r2, .L153+104
.LPIC195:
	add	r2, pc, r2
	ldr	r1, .L153+108
.LPIC196:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L145
.L152:
	.loc 1 680 1 is_stmt 1
	nop
.L145:
	.loc 1 681 10
	ldr	r3, [fp, #-32]
	.loc 1 653 1
	ldr	r1, .L153+112
.LPIC198:
	add	r1, pc, r1
	.loc 1 682 1
	ldr	r2, .L153+8
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-16]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L151
	bl	__stack_chk_fail(PLT)
.L151:
	mov	r0, r3
	sub	sp, fp, #8
	.cfi_def_cfa 13, 12
	@ sp needed
	pop	{r4, fp, pc}
.L154:
	.align	2
.L153:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC184+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC197+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC13-(.LPIC172+8)
	.word	.LC14-(.LPIC173+8)
	.word	.LC58-(.LPIC174+8)
	.word	.LC12-(.LPIC175+8)
	.word	.LC53-(.LPIC176+8)
	.word	.LC14-(.LPIC177+8)
	.word	.LC29-(.LPIC178+8)
	.word	.LC12-(.LPIC179+8)
	.word	.LC54-(.LPIC180+8)
	.word	.LC14-(.LPIC181+8)
	.word	.LC58-(.LPIC182+8)
	.word	.LC12-(.LPIC183+8)
	.word	CRC_CCITT(GOT)
	.word	.LC55-(.LPIC185+8)
	.word	.LC14-(.LPIC186+8)
	.word	.LC29-(.LPIC187+8)
	.word	.LC12-(.LPIC188+8)
	.word	.LC56-(.LPIC189+8)
	.word	.LC14-(.LPIC190+8)
	.word	.LC29-(.LPIC191+8)
	.word	.LC12-(.LPIC192+8)
	.word	.LC59-(.LPIC193+8)
	.word	.LC14-(.LPIC194+8)
	.word	.LC29-(.LPIC195+8)
	.word	.LC12-(.LPIC196+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC198+8)
	.cfi_endproc
.LFE16:
	.size	EeePCheckCRC, .-EeePCheckCRC
	.section	.rodata
	.align	2
.LC60:
	.ascii	"EeePAddBlock\000"
	.align	2
.LC61:
	.ascii	"(pcvBlock==NULL)\000"
	.align	2
.LC62:
	.ascii	"No Empty Block Present\000"
	.align	2
.LC63:
	.ascii	"(RequestBlockSize+EEEP_MIN_BLOCK_LENGTH>(GetBlockLe"
	.ascii	"ngth(BufferMap.pEmptyBlock)))\000"
	.align	2
.LC64:
	.ascii	"(cuiFlags&EEEP_ADDBLK_IN_CRC)&&(BufferMap.pEeePCRCB"
	.ascii	"lock==NULL)\000"
	.align	2
.LC65:
	.ascii	"ReduceBlockLength(&BufferMap.pEmptyBlock, RequestBl"
	.ascii	"ockSize, NULL, 0)\000"
	.align	2
.LC66:
	.ascii	"ReduceBlockLength(&BufferMap.pEmptyBlock, RequestBl"
	.ascii	"ockSize, &pvTmpBlock, EEEP_RBL_REDUCE_TOP_DOWN)\000"
	.text
	.align	2
	.global	EeePAddBlock
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeePAddBlock, %function
EeePAddBlock:
.LFB17:
	.loc 1 691 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #8
	.cfi_def_cfa 11, 4
	sub	sp, sp, #68
	str	r0, [fp, #-48]
	str	r1, [fp, #-52]
	str	r2, [fp, #-56]
	str	r3, [fp, #-60]
	.loc 1 691 1
	ldr	r2, .L170
.LPIC231:
	add	r2, pc, r2
	ldr	r3, .L170+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-16]
	mov	r3, #0
	.loc 1 693 16
	mov	r3, #0
	str	r3, [fp, #-40]
	.loc 1 698 3
	ldr	r3, [fp, #-48]
	cmp	r3, #0
	bne	.L156
	.loc 1 698 3 is_stmt 0 discriminator 1
	ldr	r3, .L170+8
.LPIC199:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L170+12
.LPIC200:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #698
	ldr	r2, .L170+16
.LPIC201:
	add	r2, pc, r2
	ldr	r1, .L170+20
.LPIC202:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-40]
	b	.L157
.L156:
	.loc 1 703 3 is_stmt 1
	ldr	r3, [fp, #-52]
	cmp	r3, #0
	bne	.L158
	.loc 1 703 3 is_stmt 0 discriminator 1
	ldr	r3, .L170+24
.LPIC203:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L170+28
.LPIC204:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #703
	ldr	r2, .L170+32
.LPIC205:
	add	r2, pc, r2
	ldr	r1, .L170+36
.LPIC206:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-40]
	b	.L157
.L158:
	.loc 1 708 5 is_stmt 1
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	beq	.L159
	.loc 1 708 31 discriminator 1
	ldr	r3, [fp, #-56]
	mov	r2, #0
	str	r2, [r3]
.L159:
	.loc 1 709 20
	ldr	r0, [fp, #-52]
	bl	GetBlockLength(PLT)
	str	r0, [fp, #-36]
	.loc 1 710 3
	sub	r3, fp, #28
	mov	r1, r3
	ldr	r0, [fp, #-48]
	bl	EeePMapBuffer(PLT)
	str	r0, [fp, #-40]
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	beq	.L160
	.loc 1 710 3 is_stmt 0 discriminator 1
	ldr	r3, .L170+40
.LPIC207:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L170+44
.LPIC208:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-40]
	str	r3, [sp]
	movw	r3, #710
	ldr	r2, .L170+48
.LPIC209:
	add	r2, pc, r2
	ldr	r1, .L170+52
.LPIC210:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L157
.L160:
	.loc 1 712 3 is_stmt 1
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L161
	.loc 1 712 3 is_stmt 0 discriminator 1
	ldr	r3, .L170+56
.LPIC211:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L170+60
.LPIC212:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #3840
	str	r3, [sp]
	mov	r3, #712
	ldr	r2, .L170+64
.LPIC213:
	add	r2, pc, r2
	ldr	r1, .L170+68
.LPIC214:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #3840
	str	r3, [fp, #-40]
	b	.L157
.L161:
	.loc 1 718 3 is_stmt 1
	ldr	r3, [fp, #-36]
	add	r4, r3, #4
	ldr	r3, [fp, #-24]
	mov	r0, r3
	bl	GetBlockLength(PLT)
	mov	r3, r0
	cmp	r4, r3
	bls	.L162
	.loc 1 718 3 is_stmt 0 discriminator 1
	ldr	r3, .L170+72
.LPIC215:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L170+76
.LPIC216:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #3840
	str	r3, [sp]
	movw	r3, #718
	ldr	r2, .L170+80
.LPIC217:
	add	r2, pc, r2
	ldr	r1, .L170+84
.LPIC218:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #3840
	str	r3, [fp, #-40]
	b	.L157
.L162:
	.loc 1 723 3 is_stmt 1
	ldr	r3, [fp, #-60]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L163
	.loc 1 723 3 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L163
	.loc 1 723 3 discriminator 2
	ldr	r3, .L170+88
.LPIC219:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L170+92
.LPIC220:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #3840
	str	r3, [sp]
	movw	r3, #723
	ldr	r2, .L170+96
.LPIC221:
	add	r2, pc, r2
	ldr	r1, .L170+100
.LPIC222:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #3840
	str	r3, [fp, #-40]
	b	.L157
.L163:
	.loc 1 729 14 is_stmt 1
	ldr	r3, [fp, #-60]
	and	r3, r3, #1
	.loc 1 729 5
	cmp	r3, #0
	beq	.L164
	.loc 1 733 41
	ldr	r3, [fp, #-20]
	.loc 1 733 15
	str	r3, [fp, #-44]
	.loc 1 734 5
	sub	r3, fp, #28
	add	r0, r3, #4
	mov	r3, #0
	mov	r2, #0
	ldr	r1, [fp, #-36]
	bl	ReduceBlockLength(PLT)
	str	r0, [fp, #-40]
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	beq	.L165
	.loc 1 734 5 is_stmt 0 discriminator 1
	ldr	r3, .L170+104
.LPIC223:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L170+108
.LPIC224:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-40]
	str	r3, [sp]
	movw	r3, #734
	ldr	r2, .L170+112
.LPIC225:
	add	r2, pc, r2
	ldr	r1, .L170+116
.LPIC226:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L157
.L165:
	.loc 1 738 15 is_stmt 1
	ldr	r4, [fp, #-24]
	ldr	r3, [fp, #-20]
	mov	r0, r3
	bl	GetBlockLength(PLT)
	mov	r3, r0
	rsb	r3, r3, #0
	.loc 1 738 14
	add	r3, r4, r3
	str	r3, [fp, #-32]
	.loc 1 747 33
	ldr	r4, [fp, #-20]
	.loc 1 747 73
	ldr	r3, [fp, #-20]
	.loc 1 747 5
	mov	r0, r3
	bl	GetBlockLength(PLT)
	mov	r3, r0
	mov	r2, r3
	mov	r1, r4
	ldr	r0, [fp, #-32]
	bl	memmove(PLT)
	.loc 1 748 5
	ldr	r3, [fp, #-44]
	ldr	r2, [fp, #-36]
	mov	r1, #0
	mov	r0, r3
	bl	memset(PLT)
	.loc 1 752 26
	ldr	r3, [fp, #-32]
	str	r3, [fp, #-24]
	b	.L166
.L164:
	.loc 1 755 5
	sub	r2, fp, #44
	sub	r3, fp, #28
	add	r0, r3, #4
	mov	r3, #1
	ldr	r1, [fp, #-36]
	bl	ReduceBlockLength(PLT)
	str	r0, [fp, #-40]
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	beq	.L166
	.loc 1 755 5 is_stmt 0 discriminator 1
	ldr	r3, .L170+120
.LPIC227:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L170+124
.LPIC228:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-40]
	str	r3, [sp]
	movw	r3, #755
	ldr	r2, .L170+128
.LPIC229:
	add	r2, pc, r2
	ldr	r1, .L170+132
.LPIC230:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L157
.L166:
	.loc 1 760 3 is_stmt 1
	ldr	r3, [fp, #-44]
	ldr	r2, [fp, #-36]
	ldr	r1, [fp, #-52]
	mov	r0, r3
	bl	memcpy(PLT)
	.loc 1 761 5
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	beq	.L169
	.loc 1 761 31 discriminator 1
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-56]
	str	r2, [r3]
	b	.L157
.L169:
	.loc 1 763 1
	nop
.L157:
	.loc 1 764 10
	ldr	r3, [fp, #-40]
	.loc 1 691 1
	ldr	r1, .L170+136
.LPIC232:
	add	r1, pc, r1
	.loc 1 765 1
	ldr	r2, .L170+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-16]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L168
	bl	__stack_chk_fail(PLT)
.L168:
	mov	r0, r3
	sub	sp, fp, #8
	.cfi_def_cfa 13, 12
	@ sp needed
	pop	{r4, fp, pc}
.L171:
	.align	2
.L170:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC231+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC13-(.LPIC199+8)
	.word	.LC14-(.LPIC200+8)
	.word	.LC60-(.LPIC201+8)
	.word	.LC12-(.LPIC202+8)
	.word	.LC61-(.LPIC203+8)
	.word	.LC14-(.LPIC204+8)
	.word	.LC60-(.LPIC205+8)
	.word	.LC12-(.LPIC206+8)
	.word	.LC53-(.LPIC207+8)
	.word	.LC14-(.LPIC208+8)
	.word	.LC29-(.LPIC209+8)
	.word	.LC12-(.LPIC210+8)
	.word	.LC62-(.LPIC211+8)
	.word	.LC14-(.LPIC212+8)
	.word	.LC60-(.LPIC213+8)
	.word	.LC12-(.LPIC214+8)
	.word	.LC63-(.LPIC215+8)
	.word	.LC14-(.LPIC216+8)
	.word	.LC60-(.LPIC217+8)
	.word	.LC12-(.LPIC218+8)
	.word	.LC64-(.LPIC219+8)
	.word	.LC14-(.LPIC220+8)
	.word	.LC60-(.LPIC221+8)
	.word	.LC12-(.LPIC222+8)
	.word	.LC65-(.LPIC223+8)
	.word	.LC14-(.LPIC224+8)
	.word	.LC29-(.LPIC225+8)
	.word	.LC12-(.LPIC226+8)
	.word	.LC66-(.LPIC227+8)
	.word	.LC14-(.LPIC228+8)
	.word	.LC29-(.LPIC229+8)
	.word	.LC12-(.LPIC230+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC232+8)
	.cfi_endproc
.LFE17:
	.size	EeePAddBlock, .-EeePAddBlock
	.section	.rodata
	.align	2
.LC67:
	.ascii	"EeePFindBlock\000"
	.align	2
.LC68:
	.ascii	"(pvFBlock==NULL)\000"
	.align	2
.LC69:
	.ascii	"(Instance==0)\000"
	.align	2
.LC70:
	.ascii	"Block Not Found\000"
	.text
	.align	2
	.global	EeePFindBlock
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeePFindBlock, %function
EeePFindBlock:
.LFB18:
	.loc 1 774 1
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
	str	r2, [fp, #-40]
	str	r3, [fp, #-44]
	mov	r3, r1
	strb	r3, [fp, #-33]
	.loc 1 774 1
	ldr	r2, .L185
.LPIC257:
	add	r2, pc, r2
	ldr	r3, .L185+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 776 16
	mov	r3, #0
	str	r3, [fp, #-16]
	.loc 1 779 3
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	bne	.L173
	.loc 1 779 3 is_stmt 0 discriminator 1
	ldr	r3, .L185+8
.LPIC233:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L185+12
.LPIC234:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #779
	ldr	r2, .L185+16
.LPIC235:
	add	r2, pc, r2
	ldr	r1, .L185+20
.LPIC236:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-16]
	b	.L174
.L173:
	.loc 1 784 3 is_stmt 1
	ldr	r3, [fp, #-44]
	cmp	r3, #0
	bne	.L175
	.loc 1 784 3 is_stmt 0 discriminator 1
	ldr	r3, .L185+24
.LPIC237:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L185+28
.LPIC238:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #784
	ldr	r2, .L185+32
.LPIC239:
	add	r2, pc, r2
	ldr	r1, .L185+36
.LPIC240:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-16]
	b	.L174
.L175:
	.loc 1 789 3 is_stmt 1
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	bne	.L176
	.loc 1 789 3 is_stmt 0 discriminator 1
	ldr	r3, .L185+40
.LPIC241:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L185+44
.LPIC242:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #789
	ldr	r2, .L185+48
.LPIC243:
	add	r2, pc, r2
	ldr	r1, .L185+52
.LPIC244:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-16]
	b	.L174
.L176:
	.loc 1 795 3 is_stmt 1
	sub	r2, fp, #20
	sub	r3, fp, #24
	mov	r1, r3
	ldr	r0, [fp, #-32]
	bl	EeePGetFirstDB(PLT)
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L178
	.loc 1 795 3 is_stmt 0 discriminator 1
	ldr	r3, .L185+56
.LPIC245:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L185+60
.LPIC246:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-16]
	str	r3, [sp]
	movw	r3, #795
	ldr	r2, .L185+64
.LPIC247:
	add	r2, pc, r2
	ldr	r1, .L185+68
.LPIC248:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L174
.L182:
	.loc 1 797 15 is_stmt 1
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-32]
	sub	r3, r2, r3
	.loc 1 797 14
	str	r3, [fp, #-12]
	.loc 1 798 5
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-12]
	cmp	r2, r3
	bls	.L179
	.loc 1 798 5 is_stmt 0 discriminator 1
	ldr	r3, .L185+72
.LPIC249:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L185+76
.LPIC250:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #3840
	str	r3, [sp]
	movw	r3, #798
	ldr	r2, .L185+80
.LPIC251:
	add	r2, pc, r2
	ldr	r1, .L185+84
.LPIC252:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #3840
	str	r3, [fp, #-16]
	b	.L174
.L179:
	.loc 1 803 17 is_stmt 1
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 803 7
	ldrb	r2, [fp, #-33]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L180
	.loc 1 804 9
	ldr	r3, [fp, #-40]
	sub	r3, r3, #1
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	bne	.L180
	.loc 1 805 18
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-44]
	str	r2, [r3]
	.loc 1 806 16
	mov	r3, #0
	b	.L183
.L180:
	.loc 1 796 34
	ldr	r3, [fp, #-24]
	mov	r0, r3
	bl	GetNextBlock(PLT)
	mov	r3, r0
	.loc 1 796 33
	str	r3, [fp, #-24]
.L178:
	.loc 1 796 17 discriminator 1
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L182
	.loc 1 810 3
	ldr	r3, .L185+88
.LPIC253:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L185+92
.LPIC254:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #3840
	str	r3, [sp]
	movw	r3, #810
	ldr	r2, .L185+96
.LPIC255:
	add	r2, pc, r2
	ldr	r1, .L185+100
.LPIC256:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #3840
	str	r3, [fp, #-16]
	nop
.L174:
	.loc 1 816 10
	ldr	r3, [fp, #-16]
.L183:
	.loc 1 774 1 discriminator 1
	ldr	r1, .L185+104
.LPIC258:
	add	r1, pc, r1
	.loc 1 817 1 discriminator 1
	ldr	r2, .L185+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L184
	.loc 1 817 1 is_stmt 0
	bl	__stack_chk_fail(PLT)
.L184:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L186:
	.align	2
.L185:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC257+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC13-(.LPIC233+8)
	.word	.LC14-(.LPIC234+8)
	.word	.LC67-(.LPIC235+8)
	.word	.LC12-(.LPIC236+8)
	.word	.LC68-(.LPIC237+8)
	.word	.LC14-(.LPIC238+8)
	.word	.LC67-(.LPIC239+8)
	.word	.LC12-(.LPIC240+8)
	.word	.LC69-(.LPIC241+8)
	.word	.LC14-(.LPIC242+8)
	.word	.LC67-(.LPIC243+8)
	.word	.LC12-(.LPIC244+8)
	.word	.LC42-(.LPIC245+8)
	.word	.LC14-(.LPIC246+8)
	.word	.LC29-(.LPIC247+8)
	.word	.LC12-(.LPIC248+8)
	.word	.LC43-(.LPIC249+8)
	.word	.LC14-(.LPIC250+8)
	.word	.LC67-(.LPIC251+8)
	.word	.LC12-(.LPIC252+8)
	.word	.LC70-(.LPIC253+8)
	.word	.LC14-(.LPIC254+8)
	.word	.LC67-(.LPIC255+8)
	.word	.LC12-(.LPIC256+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC258+8)
	.cfi_endproc
.LFE18:
	.size	EeePFindBlock, .-EeePFindBlock
	.section	.rodata
	.align	2
.LC71:
	.ascii	"EeePFindVendorBlock\000"
	.text
	.align	2
	.global	EeePFindVendorBlock
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeePFindVendorBlock, %function
EeePFindVendorBlock:
.LFB19:
	.loc 1 826 1 is_stmt 1
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #56
	str	r0, [fp, #-32]
	str	r3, [fp, #-40]
	mov	r3, r1	@ movhi
	strh	r3, [fp, #-34]	@ movhi
	mov	r3, r2
	strb	r3, [fp, #-35]
	ldr	r3, [fp, #4]
	str	r3, [fp, #-44]
	.loc 1 826 1
	ldr	r2, .L200
.LPIC283:
	add	r2, pc, r2
	ldr	r3, .L200+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 829 16
	mov	r3, #0
	str	r3, [fp, #-16]
	.loc 1 831 3
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	bne	.L188
	.loc 1 831 3 is_stmt 0 discriminator 1
	ldr	r3, .L200+8
.LPIC259:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L200+12
.LPIC260:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #831
	ldr	r2, .L200+16
.LPIC261:
	add	r2, pc, r2
	ldr	r1, .L200+20
.LPIC262:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-16]
	b	.L189
.L188:
	.loc 1 836 3 is_stmt 1
	ldr	r3, [fp, #-44]
	cmp	r3, #0
	bne	.L190
	.loc 1 836 3 is_stmt 0 discriminator 1
	ldr	r3, .L200+24
.LPIC263:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L200+28
.LPIC264:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #836
	ldr	r2, .L200+32
.LPIC265:
	add	r2, pc, r2
	ldr	r1, .L200+36
.LPIC266:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-16]
	b	.L189
.L190:
	.loc 1 841 3 is_stmt 1
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	bne	.L191
	.loc 1 841 3 is_stmt 0 discriminator 1
	ldr	r3, .L200+40
.LPIC267:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L200+44
.LPIC268:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #841
	ldr	r2, .L200+48
.LPIC269:
	add	r2, pc, r2
	ldr	r1, .L200+52
.LPIC270:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-16]
	b	.L189
.L191:
	.loc 1 847 3 is_stmt 1
	sub	r2, fp, #20
	sub	r3, fp, #24
	mov	r1, r3
	ldr	r0, [fp, #-32]
	bl	EeePGetFirstDB(PLT)
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L193
	.loc 1 847 3 is_stmt 0 discriminator 1
	ldr	r3, .L200+56
.LPIC271:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L200+60
.LPIC272:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-16]
	str	r3, [sp]
	movw	r3, #847
	ldr	r2, .L200+64
.LPIC273:
	add	r2, pc, r2
	ldr	r1, .L200+68
.LPIC274:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L189
.L197:
	.loc 1 849 15 is_stmt 1
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-32]
	sub	r3, r2, r3
	.loc 1 849 14
	str	r3, [fp, #-12]
	.loc 1 850 5
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-12]
	cmp	r2, r3
	bls	.L194
	.loc 1 850 5 is_stmt 0 discriminator 1
	ldr	r3, .L200+72
.LPIC275:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L200+76
.LPIC276:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #3840
	str	r3, [sp]
	movw	r3, #850
	ldr	r2, .L200+80
.LPIC277:
	add	r2, pc, r2
	ldr	r1, .L200+84
.LPIC278:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #3840
	str	r3, [fp, #-16]
	b	.L189
.L194:
	.loc 1 855 17 is_stmt 1
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 855 7
	cmp	r3, #240
	bne	.L195
	.loc 1 856 9 discriminator 1
	ldr	r3, [fp, #-24]
	.loc 1 856 40 discriminator 1
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	.loc 1 855 58 discriminator 1
	ldrb	r2, [fp, #-35]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L195
	.loc 1 857 31
	ldr	r3, [fp, #-24]
	.loc 1 857 62
	add	r3, r3, #3
	.loc 1 857 8
	mov	r0, r3
	bl	EeeP_Get16BitValue_BE(PLT)
	mov	r3, r0
	mov	r2, r3
	.loc 1 856 68
	ldrh	r3, [fp, #-34]
	cmp	r3, r2
	bne	.L195
	.loc 1 860 9
	ldr	r3, [fp, #-40]
	sub	r3, r3, #1
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	bne	.L195
	.loc 1 861 18
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-44]
	str	r2, [r3]
	.loc 1 862 16
	mov	r3, #0
	b	.L198
.L195:
	.loc 1 848 34
	ldr	r3, [fp, #-24]
	mov	r0, r3
	bl	GetNextBlock(PLT)
	mov	r3, r0
	.loc 1 848 33
	str	r3, [fp, #-24]
.L193:
	.loc 1 848 17 discriminator 1
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L197
	.loc 1 866 3
	ldr	r3, .L200+88
.LPIC279:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L200+92
.LPIC280:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #3840
	str	r3, [sp]
	movw	r3, #866
	ldr	r2, .L200+96
.LPIC281:
	add	r2, pc, r2
	ldr	r1, .L200+100
.LPIC282:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #3840
	str	r3, [fp, #-16]
	nop
.L189:
	.loc 1 872 10
	ldr	r3, [fp, #-16]
.L198:
	.loc 1 826 1 discriminator 1
	ldr	r1, .L200+104
.LPIC284:
	add	r1, pc, r1
	.loc 1 873 1 discriminator 1
	ldr	r2, .L200+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L199
	.loc 1 873 1 is_stmt 0
	bl	__stack_chk_fail(PLT)
.L199:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L201:
	.align	2
.L200:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC283+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC13-(.LPIC259+8)
	.word	.LC14-(.LPIC260+8)
	.word	.LC71-(.LPIC261+8)
	.word	.LC12-(.LPIC262+8)
	.word	.LC68-(.LPIC263+8)
	.word	.LC14-(.LPIC264+8)
	.word	.LC71-(.LPIC265+8)
	.word	.LC12-(.LPIC266+8)
	.word	.LC69-(.LPIC267+8)
	.word	.LC14-(.LPIC268+8)
	.word	.LC71-(.LPIC269+8)
	.word	.LC12-(.LPIC270+8)
	.word	.LC42-(.LPIC271+8)
	.word	.LC14-(.LPIC272+8)
	.word	.LC29-(.LPIC273+8)
	.word	.LC12-(.LPIC274+8)
	.word	.LC43-(.LPIC275+8)
	.word	.LC14-(.LPIC276+8)
	.word	.LC71-(.LPIC277+8)
	.word	.LC12-(.LPIC278+8)
	.word	.LC70-(.LPIC279+8)
	.word	.LC14-(.LPIC280+8)
	.word	.LC71-(.LPIC281+8)
	.word	.LC12-(.LPIC282+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC284+8)
	.cfi_endproc
.LFE19:
	.size	EeePFindVendorBlock, .-EeePFindVendorBlock
	.section	.rodata
	.align	2
.LC72:
	.ascii	"EeePFindSmbiosBlock\000"
	.text
	.align	2
	.global	EeePFindSmbiosBlock
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeePFindSmbiosBlock, %function
EeePFindSmbiosBlock:
.LFB20:
	.loc 1 881 1 is_stmt 1
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
	str	r3, [fp, #-40]
	mov	r3, r1
	strb	r3, [fp, #-33]
	mov	r3, r2	@ movhi
	strh	r3, [fp, #-36]	@ movhi
	.loc 1 881 1
	ldr	r2, .L214
.LPIC305:
	add	r2, pc, r2
	ldr	r3, .L214+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 884 16
	mov	r3, #0
	str	r3, [fp, #-16]
	.loc 1 886 3
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	bne	.L203
	.loc 1 886 3 is_stmt 0 discriminator 1
	ldr	r3, .L214+8
.LPIC285:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L214+12
.LPIC286:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #886
	ldr	r2, .L214+16
.LPIC287:
	add	r2, pc, r2
	ldr	r1, .L214+20
.LPIC288:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-16]
	b	.L204
.L203:
	.loc 1 891 3 is_stmt 1
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	bne	.L205
	.loc 1 891 3 is_stmt 0 discriminator 1
	ldr	r3, .L214+24
.LPIC289:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L214+28
.LPIC290:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #891
	ldr	r2, .L214+32
.LPIC291:
	add	r2, pc, r2
	ldr	r1, .L214+36
.LPIC292:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-16]
	b	.L204
.L205:
	.loc 1 897 3 is_stmt 1
	sub	r2, fp, #20
	sub	r3, fp, #24
	mov	r1, r3
	ldr	r0, [fp, #-32]
	bl	EeePGetFirstDB(PLT)
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L207
	.loc 1 897 3 is_stmt 0 discriminator 1
	ldr	r3, .L214+40
.LPIC293:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L214+44
.LPIC294:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-16]
	str	r3, [sp]
	movw	r3, #897
	ldr	r2, .L214+48
.LPIC295:
	add	r2, pc, r2
	ldr	r1, .L214+52
.LPIC296:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L204
.L211:
	.loc 1 899 15 is_stmt 1
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-32]
	sub	r3, r2, r3
	.loc 1 899 14
	str	r3, [fp, #-12]
	.loc 1 900 5
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-12]
	cmp	r2, r3
	bls	.L208
	.loc 1 900 5 is_stmt 0 discriminator 1
	ldr	r3, .L214+56
.LPIC297:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L214+60
.LPIC298:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #3840
	str	r3, [sp]
	mov	r3, #900
	ldr	r2, .L214+64
.LPIC299:
	add	r2, pc, r2
	ldr	r1, .L214+68
.LPIC300:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #3840
	str	r3, [fp, #-16]
	b	.L204
.L208:
	.loc 1 905 17 is_stmt 1
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 905 7
	cmp	r3, #208
	bne	.L209
	.loc 1 906 9 discriminator 1
	ldr	r3, [fp, #-24]
	.loc 1 906 37 discriminator 1
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	.loc 1 905 49 discriminator 1
	ldrb	r2, [fp, #-33]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L209
	.loc 1 907 31
	ldr	r3, [fp, #-24]
	.loc 1 907 67
	add	r3, r3, #5
	.loc 1 907 8
	mov	r0, r3
	bl	EeeP_Get16BitValue_BE(PLT)
	mov	r3, r0
	mov	r2, r3
	.loc 1 906 49
	ldrh	r3, [fp, #-36]
	cmp	r3, r2
	bne	.L209
	.loc 1 910 16
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-40]
	str	r2, [r3]
	.loc 1 911 14
	mov	r3, #0
	b	.L212
.L209:
	.loc 1 898 34
	ldr	r3, [fp, #-24]
	mov	r0, r3
	bl	GetNextBlock(PLT)
	mov	r3, r0
	.loc 1 898 33
	str	r3, [fp, #-24]
.L207:
	.loc 1 898 17 discriminator 1
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L211
	.loc 1 914 3
	ldr	r3, .L214+72
.LPIC301:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L214+76
.LPIC302:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #3840
	str	r3, [sp]
	movw	r3, #914
	ldr	r2, .L214+80
.LPIC303:
	add	r2, pc, r2
	ldr	r1, .L214+84
.LPIC304:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #3840
	str	r3, [fp, #-16]
	nop
.L204:
	.loc 1 920 10
	ldr	r3, [fp, #-16]
.L212:
	.loc 1 881 1 discriminator 1
	ldr	r1, .L214+88
.LPIC306:
	add	r1, pc, r1
	.loc 1 921 1 discriminator 1
	ldr	r2, .L214+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L213
	.loc 1 921 1 is_stmt 0
	bl	__stack_chk_fail(PLT)
.L213:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L215:
	.align	2
.L214:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC305+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC13-(.LPIC285+8)
	.word	.LC14-(.LPIC286+8)
	.word	.LC72-(.LPIC287+8)
	.word	.LC12-(.LPIC288+8)
	.word	.LC68-(.LPIC289+8)
	.word	.LC14-(.LPIC290+8)
	.word	.LC72-(.LPIC291+8)
	.word	.LC12-(.LPIC292+8)
	.word	.LC42-(.LPIC293+8)
	.word	.LC14-(.LPIC294+8)
	.word	.LC29-(.LPIC295+8)
	.word	.LC12-(.LPIC296+8)
	.word	.LC43-(.LPIC297+8)
	.word	.LC14-(.LPIC298+8)
	.word	.LC72-(.LPIC299+8)
	.word	.LC12-(.LPIC300+8)
	.word	.LC70-(.LPIC301+8)
	.word	.LC14-(.LPIC302+8)
	.word	.LC72-(.LPIC303+8)
	.word	.LC12-(.LPIC304+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC306+8)
	.cfi_endproc
.LFE20:
	.size	EeePFindSmbiosBlock, .-EeePFindSmbiosBlock
	.section	.rodata
	.align	2
.LC73:
	.ascii	"EeePWriteBufferToFile\000"
	.align	2
.LC74:
	.ascii	"(pszFilename==NULL)\000"
	.text
	.align	2
	.global	EeePWriteBufferToFile
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeePWriteBufferToFile, %function
EeePWriteBufferToFile:
.LFB21:
	.loc 1 929 1 is_stmt 1
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
	str	r1, [fp, #-20]
	.loc 1 930 16
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 931 3
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L217
	.loc 1 931 3 is_stmt 0 discriminator 1
	ldr	r3, .L222
.LPIC307:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L222+4
.LPIC308:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #931
	ldr	r2, .L222+8
.LPIC309:
	add	r2, pc, r2
	ldr	r1, .L222+12
.LPIC310:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-8]
	b	.L218
.L217:
	.loc 1 936 3 is_stmt 1
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L219
	.loc 1 936 3 is_stmt 0 discriminator 1
	ldr	r3, .L222+16
.LPIC311:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L222+20
.LPIC312:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #936
	ldr	r2, .L222+24
.LPIC313:
	add	r2, pc, r2
	ldr	r1, .L222+28
.LPIC314:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-8]
	b	.L218
.L219:
	.loc 1 941 3 is_stmt 1
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	mov	r2, #2
	ldr	r1, .L222+32
.LPIC315:
	add	r1, pc, r1
	mov	r0, r3
	bl	memcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L220
	.loc 1 941 3 is_stmt 0 discriminator 1
	ldr	r3, .L222+36
.LPIC316:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L222+40
.LPIC317:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #3840
	str	r3, [sp]
	movw	r3, #941
	ldr	r2, .L222+44
.LPIC318:
	add	r2, pc, r2
	ldr	r1, .L222+48
.LPIC319:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #3840
	str	r3, [fp, #-8]
	b	.L218
.L220:
	.loc 1 955 38 is_stmt 1
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	.loc 1 955 50
	and	r3, r3, #15
	.loc 1 955 14
	mov	r2, #256
	lsl	r3, r2, r3
	.loc 1 952 14
	mov	r2, r3
	ldr	r1, [fp, #-16]
	ldr	r0, [fp, #-20]
	bl	WriteBinaryFile(PLT)
	str	r0, [fp, #-8]
.L218:
	.loc 1 958 10
	ldr	r3, [fp, #-8]
	.loc 1 959 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L223:
	.align	2
.L222:
	.word	.LC13-(.LPIC307+8)
	.word	.LC14-(.LPIC308+8)
	.word	.LC73-(.LPIC309+8)
	.word	.LC12-(.LPIC310+8)
	.word	.LC74-(.LPIC311+8)
	.word	.LC14-(.LPIC312+8)
	.word	.LC73-(.LPIC313+8)
	.word	.LC12-(.LPIC314+8)
	.word	.LC28-(.LPIC315+8)
	.word	.LC40-(.LPIC316+8)
	.word	.LC14-(.LPIC317+8)
	.word	.LC73-(.LPIC318+8)
	.word	.LC12-(.LPIC319+8)
	.cfi_endproc
.LFE21:
	.size	EeePWriteBufferToFile, .-EeePWriteBufferToFile
	.section	.rodata
	.align	2
.LC75:
	.ascii	"EeePReadBufferFromFile\000"
	.align	2
.LC76:
	.ascii	"ReadBinaryFile( pszFilename, pBHandel, &stFileSize "
	.ascii	")\000"
	.align	2
.LC77:
	.ascii	"(stFileSize!=(size_t)(256<<(((EeePCmn_t*)*pBHandel)"
	.ascii	"->DeviceDesc&EEEP_DEVICE_SIZE_MASK)))\000"
	.text
	.align	2
	.global	EeePReadBufferFromFile
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeePReadBufferFromFile, %function
EeePReadBufferFromFile:
.LFB22:
	.loc 1 967 1
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
	.loc 1 967 1
	ldr	r2, .L233
.LPIC341:
	add	r2, pc, r2
	ldr	r3, .L233+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 968 16
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 970 3
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L225
	.loc 1 970 3 is_stmt 0 discriminator 1
	ldr	r3, .L233+8
.LPIC320:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L233+12
.LPIC321:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #970
	ldr	r2, .L233+16
.LPIC322:
	add	r2, pc, r2
	ldr	r1, .L233+20
.LPIC323:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-12]
	b	.L226
.L225:
	.loc 1 975 3 is_stmt 1
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L227
	.loc 1 975 3 is_stmt 0 discriminator 1
	ldr	r3, .L233+24
.LPIC324:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L233+28
.LPIC325:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #975
	ldr	r2, .L233+32
.LPIC326:
	add	r2, pc, r2
	ldr	r1, .L233+36
.LPIC327:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-12]
	b	.L226
.L227:
	.loc 1 980 3 is_stmt 1
	sub	r3, fp, #16
	mov	r2, r3
	ldr	r1, [fp, #-24]
	ldr	r0, [fp, #-28]
	bl	ReadBinaryFile(PLT)
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L228
	.loc 1 980 3 is_stmt 0 discriminator 1
	ldr	r3, .L233+40
.LPIC328:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L233+44
.LPIC329:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-12]
	str	r3, [sp]
	mov	r3, #980
	ldr	r2, .L233+48
.LPIC330:
	add	r2, pc, r2
	ldr	r1, .L233+52
.LPIC331:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L226
.L228:
	.loc 1 986 5 is_stmt 1
	ldr	r3, [fp, #-24]
	ldr	r3, [r3]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	and	r3, r3, #15
	mov	r2, #256
	lsl	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	beq	.L229
	.loc 1 986 5 is_stmt 0 discriminator 1
	ldr	r3, .L233+56
.LPIC332:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L233+60
.LPIC333:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #3840
	str	r3, [sp]
	movw	r3, #986
	ldr	r2, .L233+64
.LPIC334:
	add	r2, pc, r2
	ldr	r1, .L233+68
.LPIC335:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #3840
	str	r3, [fp, #-12]
	b	.L226
.L229:
	.loc 1 992 12 is_stmt 1
	ldr	r3, [fp, #-24]
	ldr	r3, [r3]
	.loc 1 992 34
	add	r3, r3, #1
	.loc 1 991 6
	mov	r2, #2
	ldr	r1, .L233+72
.LPIC336:
	add	r1, pc, r1
	mov	r0, r3
	bl	memcmp(PLT)
	mov	r3, r0
	.loc 1 991 5
	cmp	r3, #0
	beq	.L232
	.loc 1 997 5
	ldr	r3, .L233+76
.LPIC337:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L233+80
.LPIC338:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #3840
	str	r3, [sp]
	movw	r3, #997
	ldr	r2, .L233+84
.LPIC339:
	add	r2, pc, r2
	ldr	r1, .L233+88
.LPIC340:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #3840
	str	r3, [fp, #-12]
	b	.L226
.L232:
	.loc 1 1004 1
	nop
.L226:
	.loc 1 1005 10
	ldr	r3, [fp, #-12]
	.loc 1 967 1
	ldr	r1, .L233+92
.LPIC342:
	add	r1, pc, r1
	.loc 1 1006 1
	ldr	r2, .L233+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L231
	bl	__stack_chk_fail(PLT)
.L231:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L234:
	.align	2
.L233:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC341+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC37-(.LPIC320+8)
	.word	.LC14-(.LPIC321+8)
	.word	.LC75-(.LPIC322+8)
	.word	.LC12-(.LPIC323+8)
	.word	.LC74-(.LPIC324+8)
	.word	.LC14-(.LPIC325+8)
	.word	.LC75-(.LPIC326+8)
	.word	.LC12-(.LPIC327+8)
	.word	.LC76-(.LPIC328+8)
	.word	.LC14-(.LPIC329+8)
	.word	.LC29-(.LPIC330+8)
	.word	.LC12-(.LPIC331+8)
	.word	.LC77-(.LPIC332+8)
	.word	.LC14-(.LPIC333+8)
	.word	.LC75-(.LPIC334+8)
	.word	.LC12-(.LPIC335+8)
	.word	.LC28-(.LPIC336+8)
	.word	.LC40-(.LPIC337+8)
	.word	.LC14-(.LPIC338+8)
	.word	.LC75-(.LPIC339+8)
	.word	.LC12-(.LPIC340+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC342+8)
	.cfi_endproc
.LFE22:
	.size	EeePReadBufferFromFile, .-EeePReadBufferFromFile
	.global	WriteSizes
	.data
	.align	2
	.type	WriteSizes, %object
	.size	WriteSizes, 32
WriteSizes:
	.word	1
	.word	8
	.word	16
	.word	32
	.word	64
	.word	128
	.word	256
	.word	512
	.section	.rodata
	.align	2
.LC78:
	.ascii	"EeePWriteBufferToEEP\000"
	.text
	.align	2
	.global	EeePSetI2CDeviceDesc
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeePSetI2CDeviceDesc, %function
EeePSetI2CDeviceDesc:
.LFB23:
	.loc 1 1016 1
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
	mov	r1, r2
	mov	r2, r3
	mov	r3, r1	@ movhi
	strh	r3, [fp, #-22]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [fp, #-24]	@ movhi
	.loc 1 1017 16
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 1018 3
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L236
	.loc 1 1018 3 is_stmt 0 discriminator 1
	ldr	r3, .L242
.LPIC343:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L242+4
.LPIC344:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #1018
	ldr	r2, .L242+8
.LPIC345:
	add	r2, pc, r2
	ldr	r1, .L242+12
.LPIC346:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-8]
	b	.L237
.L236:
	.loc 1 1023 3 is_stmt 1
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	mov	r2, #2
	ldr	r1, .L242+16
.LPIC347:
	add	r1, pc, r1
	mov	r0, r3
	bl	memcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L238
	.loc 1 1023 3 is_stmt 0 discriminator 1
	ldr	r3, .L242+20
.LPIC348:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L242+24
.LPIC349:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #3840
	str	r3, [sp]
	movw	r3, #1023
	ldr	r2, .L242+28
.LPIC350:
	add	r2, pc, r2
	ldr	r1, .L242+32
.LPIC351:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #3840
	str	r3, [fp, #-8]
	b	.L237
.L238:
	.loc 1 1033 21 is_stmt 1
	ldr	r3, [fp, #-16]
	ldrh	r2, [fp, #-24]	@ movhi
	strh	r2, [r3]	@ movhi
	.loc 1 1034 21
	ldr	r3, [fp, #-16]
	ldrh	r2, [fp, #-22]	@ movhi
	strh	r2, [r3, #6]	@ movhi
	.loc 1 1035 65
	ldr	r3, [fp, #-20]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	.loc 1 1035 77
	lsr	r3, r3, #5
	uxtb	r3, r3
	mov	r2, r3
	.loc 1 1035 42
	ldr	r3, .L242+36
.LPIC352:
	add	r3, pc, r3
	ldr	r3, [r3, r2, lsl #2]
	.loc 1 1035 22
	uxth	r2, r3
	.loc 1 1035 21
	ldr	r3, [fp, #-16]
	strh	r2, [r3, #2]	@ movhi
	.loc 1 1036 55
	ldr	r3, [fp, #-20]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	.loc 1 1036 67
	and	r3, r3, #16
	.loc 1 1036 22
	cmp	r3, #0
	beq	.L239
	.loc 1 1036 22 is_stmt 0 discriminator 1
	mov	r2, #2
	b	.L240
.L239:
	.loc 1 1036 22 discriminator 2
	mov	r2, #1
.L240:
	.loc 1 1036 21 is_stmt 1 discriminator 4
	ldr	r3, [fp, #-16]
	strh	r2, [r3, #4]	@ movhi
	.loc 1 1037 49 discriminator 4
	ldr	r3, [fp, #-20]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	.loc 1 1037 61 discriminator 4
	and	r3, r3, #15
	.loc 1 1037 25 discriminator 4
	mov	r2, #256
	lsl	r3, r2, r3
	mov	r2, r3
	.loc 1 1037 21 discriminator 4
	ldr	r3, [fp, #-16]
	str	r2, [r3, #8]
.L237:
	.loc 1 1040 10
	ldr	r3, [fp, #-8]
	.loc 1 1041 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L243:
	.align	2
.L242:
	.word	.LC13-(.LPIC343+8)
	.word	.LC14-(.LPIC344+8)
	.word	.LC78-(.LPIC345+8)
	.word	.LC12-(.LPIC346+8)
	.word	.LC28-(.LPIC347+8)
	.word	.LC40-(.LPIC348+8)
	.word	.LC14-(.LPIC349+8)
	.word	.LC78-(.LPIC350+8)
	.word	.LC12-(.LPIC351+8)
	.word	WriteSizes-(.LPIC352+8)
	.cfi_endproc
.LFE23:
	.size	EeePSetI2CDeviceDesc, .-EeePSetI2CDeviceDesc
	.section	.rodata
	.align	2
.LC79:
	.ascii	"EeePSetI2CDeviceDesc(&DDesc, BHandel, 5, u16DeviceA"
	.ascii	"ddr)\000"
	.text
	.align	2
	.global	EeePWriteBufferToEEP
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeePWriteBufferToEEP, %function
EeePWriteBufferToEEP:
.LFB24:
	.loc 1 1048 1
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
	mov	r3, r2
	strh	r3, [fp, #-38]	@ movhi
	.loc 1 1048 1
	ldr	r2, .L249
.LPIC357:
	add	r2, pc, r2
	ldr	r3, .L249+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 1049 16
	mov	r3, #0
	str	r3, [fp, #-24]
	.loc 1 1051 3
	ldrh	r3, [fp, #-38]
	sub	r0, fp, #20
	mov	r2, #5
	ldr	r1, [fp, #-32]
	bl	EeePSetI2CDeviceDesc(PLT)
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	beq	.L245
	.loc 1 1051 3 is_stmt 0 discriminator 1
	ldr	r3, .L249+8
.LPIC353:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L249+12
.LPIC354:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-24]
	str	r3, [sp]
	movw	r3, #1051
	ldr	r2, .L249+16
.LPIC355:
	add	r2, pc, r2
	ldr	r1, .L249+20
.LPIC356:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L246
.L245:
	.loc 1 1052 14 is_stmt 1
	ldr	r3, [fp, #-12]
	sub	r1, fp, #20
	str	r3, [sp]
	ldr	r3, [fp, #-32]
	mov	r2, #0
	ldr	r0, [fp, #-36]
	bl	EApiAHI2CWriteEeprom(PLT)
	str	r0, [fp, #-24]
.L246:
	.loc 1 1060 10
	ldr	r3, [fp, #-24]
	.loc 1 1048 1
	ldr	r1, .L249+24
.LPIC358:
	add	r1, pc, r1
	.loc 1 1061 1
	ldr	r2, .L249+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L248
	bl	__stack_chk_fail(PLT)
.L248:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L250:
	.align	2
.L249:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC357+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC79-(.LPIC353+8)
	.word	.LC14-(.LPIC354+8)
	.word	.LC29-(.LPIC355+8)
	.word	.LC12-(.LPIC356+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC358+8)
	.cfi_endproc
.LFE24:
	.size	EeePWriteBufferToEEP, .-EeePWriteBufferToEEP
	.section	.rodata
	.align	2
.LC80:
	.ascii	"EeePReadBufferFromEEP\000"
	.align	2
.LC81:
	.ascii	"EApiAHI2CReadEeprom( DeviceBus, &DDesc, 1, EeePCmnH"
	.ascii	"dr.EepId, sizeof(EeePCmnHdr)- 1, sizeof(EeePCmnHdr)"
	.ascii	"- 1 )\000"
	.align	2
.LC82:
	.ascii	"EeePSetI2CDeviceDesc(&DDesc, &EeePCmnHdr, 5, u16Dev"
	.ascii	"iceAddr)\000"
	.text
	.align	2
	.global	EeePReadBufferFromEEP
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeePReadBufferFromEEP, %function
EeePReadBufferFromEEP:
.LFB25:
	.loc 1 1070 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #64
	str	r0, [fp, #-40]
	str	r1, [fp, #-44]
	mov	r3, r2
	strh	r3, [fp, #-46]	@ movhi
	.loc 1 1070 1
	ldr	r2, .L261
.LPIC375:
	add	r2, pc, r2
	ldr	r3, .L261+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 1071 16
	mov	r3, #0
	str	r3, [fp, #-36]
	.loc 1 1075 3
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	bne	.L252
	.loc 1 1075 3 is_stmt 0 discriminator 1
	ldr	r3, .L261+8
.LPIC359:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L261+12
.LPIC360:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #1075
	ldr	r2, .L261+16
.LPIC361:
	add	r2, pc, r2
	ldr	r1, .L261+20
.LPIC362:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-36]
	b	.L253
.L252:
	.loc 1 1080 12 is_stmt 1
	ldr	r3, [fp, #-40]
	mov	r2, #0
	str	r2, [r3]
	.loc 1 1081 19
	ldrh	r3, [fp, #-46]	@ movhi
	strh	r3, [fp, #-28]	@ movhi
	.loc 1 1082 19
	mov	r3, #5
	strh	r3, [fp, #-22]	@ movhi
	.loc 1 1083 19
	mov	r3, #1
	strh	r3, [fp, #-26]	@ movhi
	.loc 1 1084 19
	mov	r3, #2
	strh	r3, [fp, #-24]	@ movhi
	.loc 1 1085 19
	mov	r3, #6
	str	r3, [fp, #-20]
	.loc 1 1086 3
	sub	r3, fp, #16
	add	r3, r3, #1
	sub	r1, fp, #28
	mov	r2, #5
	str	r2, [sp, #4]
	mov	r2, #5
	str	r2, [sp]
	mov	r2, #1
	ldr	r0, [fp, #-44]
	bl	EApiAHI2CReadEeprom(PLT)
	str	r0, [fp, #-36]
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L254
	.loc 1 1086 3 is_stmt 0 discriminator 1
	ldr	r3, .L261+24
.LPIC363:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L261+28
.LPIC364:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-36]
	str	r3, [sp]
	movw	r3, #1086
	ldr	r2, .L261+32
.LPIC365:
	add	r2, pc, r2
	ldr	r1, .L261+36
.LPIC366:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L253
.L254:
	.loc 1 1095 3 is_stmt 1
	ldrh	r3, [fp, #-46]
	sub	r1, fp, #16
	sub	r0, fp, #28
	mov	r2, #5
	bl	EeePSetI2CDeviceDesc(PLT)
	str	r0, [fp, #-36]
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L255
	.loc 1 1095 3 is_stmt 0 discriminator 1
	ldr	r3, .L261+40
.LPIC367:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L261+44
.LPIC368:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-36]
	str	r3, [sp]
	movw	r3, #1095
	ldr	r2, .L261+48
.LPIC369:
	add	r2, pc, r2
	ldr	r1, .L261+52
.LPIC370:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L253
.L255:
	.loc 1 1097 29 is_stmt 1
	ldrb	r3, [fp, #-11]	@ zero_extendqisi2
	.loc 1 1097 40
	and	r3, r3, #15
	.loc 1 1097 16
	mov	r2, #256
	lsl	r3, r2, r3
	.loc 1 1097 12
	str	r3, [fp, #-32]
	.loc 1 1098 13
	ldr	r0, [fp, #-32]
	bl	malloc(PLT)
	mov	r3, r0
	mov	r2, r3
	.loc 1 1098 12
	ldr	r3, [fp, #-40]
	str	r2, [r3]
	.loc 1 1100 3
	ldr	r3, [fp, #-40]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L256
	.loc 1 1100 3 is_stmt 0 discriminator 1
	ldr	r3, .L261+56
.LPIC371:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L261+60
.LPIC372:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #2
	str	r3, [sp]
	movw	r3, #1100
	ldr	r2, .L261+64
.LPIC373:
	add	r2, pc, r2
	ldr	r1, .L261+68
.LPIC374:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #2
	str	r3, [fp, #-36]
	b	.L253
.L256:
	.loc 1 1105 14 is_stmt 1
	ldr	r3, [fp, #-40]
	ldr	r2, [r3]
	sub	r1, fp, #28
	ldr	r3, [fp, #-32]
	str	r3, [sp, #4]
	ldr	r3, [fp, #-32]
	str	r3, [sp]
	mov	r3, r2
	mov	r2, #0
	ldr	r0, [fp, #-44]
	bl	EApiAHI2CReadEeprom(PLT)
	str	r0, [fp, #-36]
.L253:
	.loc 1 1114 5
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L257
	.loc 1 1115 7
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	beq	.L258
	.loc 1 1115 24 discriminator 1
	ldr	r3, [fp, #-40]
	ldr	r3, [r3]
	.loc 1 1115 22 discriminator 1
	cmp	r3, #0
	beq	.L258
	.loc 1 1115 40 discriminator 2
	ldr	r3, [fp, #-40]
	ldr	r3, [r3]
	mov	r0, r3
	bl	free(PLT)
.L258:
	.loc 1 1116 14
	ldr	r3, [fp, #-40]
	mov	r2, #0
	str	r2, [r3]
.L257:
	.loc 1 1118 10
	ldr	r3, [fp, #-36]
	.loc 1 1070 1
	ldr	r1, .L261+72
.LPIC376:
	add	r1, pc, r1
	.loc 1 1119 1
	ldr	r2, .L261+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L260
	bl	__stack_chk_fail(PLT)
.L260:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L262:
	.align	2
.L261:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC375+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC37-(.LPIC359+8)
	.word	.LC14-(.LPIC360+8)
	.word	.LC80-(.LPIC361+8)
	.word	.LC12-(.LPIC362+8)
	.word	.LC81-(.LPIC363+8)
	.word	.LC14-(.LPIC364+8)
	.word	.LC29-(.LPIC365+8)
	.word	.LC12-(.LPIC366+8)
	.word	.LC82-(.LPIC367+8)
	.word	.LC14-(.LPIC368+8)
	.word	.LC29-(.LPIC369+8)
	.word	.LC12-(.LPIC370+8)
	.word	.LC27-(.LPIC371+8)
	.word	.LC14-(.LPIC372+8)
	.word	.LC80-(.LPIC373+8)
	.word	.LC12-(.LPIC374+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC376+8)
	.cfi_endproc
.LFE25:
	.size	EeePReadBufferFromEEP, .-EeePReadBufferFromEEP
.Letext0:
	.file 2 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/bits/alltypes.h"
	.file 3 "../../../include/EApi.h"
	.file 4 "../../include/EApiAHI2C.h"
	.file 5 "../BinFuncs.h"
	.file 6 "../../../include/EeeP.h"
	.file 7 "../EeePDB.h"
	.file 8 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/stdio.h"
	.file 9 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/string.h"
	.file 10 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/stdlib.h"
	.file 11 "../EeePApp.h"
	.file 12 "../../include/DbgChk.h"
	.file 13 "../../include/EApiAHStr.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x11e9
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1c
	.4byte	.LASF175
	.byte	0xc
	.4byte	.LASF176
	.4byte	.LASF177
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0xc
	.4byte	0x26
	.uleb128 0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2b
	.byte	0x18
	.4byte	0x26
	.uleb128 0xc
	.4byte	0x32
	.uleb128 0x1d
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0xc
	.4byte	0x58
	.uleb128 0x1e
	.byte	0x4
	.uleb128 0xb
	.byte	0x8
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0x7
	.4byte	.LASF6
	.byte	0x2
	.byte	0x30
	.byte	0x18
	.4byte	0x26
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.4byte	.LASF7
	.uleb128 0xb
	.byte	0x2
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x7
	.4byte	.LASF9
	.byte	0x2
	.byte	0x72
	.byte	0x19
	.4byte	0x98
	.uleb128 0xc
	.4byte	0x87
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x7
	.4byte	.LASF11
	.byte	0x2
	.byte	0x77
	.byte	0x19
	.4byte	0xab
	.uleb128 0xb
	.byte	0x2
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x2
	.byte	0x7c
	.byte	0x19
	.4byte	0x26
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.4byte	0x58
	.uleb128 0xc
	.4byte	0xc5
	.uleb128 0x5
	.4byte	0x5f
	.uleb128 0xc
	.4byte	0xcf
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x3
	.byte	0x91
	.byte	0x12
	.4byte	0xb2
	.uleb128 0x1f
	.4byte	.LASF178
	.byte	0x7
	.byte	0x4
	.4byte	0x26
	.byte	0x4
	.byte	0x2d
	.byte	0x6
	.4byte	0x10b
	.uleb128 0x18
	.4byte	.LASF17
	.byte	0x1
	.uleb128 0x18
	.4byte	.LASF18
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x4
	.byte	0x31
	.byte	0x12
	.4byte	0x9f
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0xc
	.byte	0x4
	.byte	0x33
	.4byte	0x165
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0x34
	.byte	0x13
	.4byte	0x9f
	.byte	0
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x4
	.byte	0x35
	.byte	0x13
	.4byte	0x9f
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x4
	.byte	0x36
	.byte	0x13
	.4byte	0x10b
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x4
	.byte	0x37
	.byte	0x13
	.4byte	0x9f
	.byte	0x6
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x4
	.byte	0x38
	.byte	0x13
	.4byte	0xb2
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x4
	.byte	0x39
	.byte	0x2
	.4byte	0x117
	.uleb128 0xc
	.4byte	0x165
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x5
	.byte	0x3e
	.byte	0x3
	.4byte	0x182
	.uleb128 0x15
	.4byte	0xe0
	.4byte	0x191
	.uleb128 0x1
	.4byte	0x191
	.byte	0
	.uleb128 0x5
	.4byte	0x64
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x5
	.byte	0x41
	.byte	0x3
	.4byte	0x1a2
	.uleb128 0x15
	.4byte	0xe0
	.4byte	0x1bb
	.uleb128 0x1
	.4byte	0x64
	.uleb128 0x1
	.4byte	0x1bb
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x5
	.4byte	0x1c5
	.uleb128 0xc
	.4byte	0x1bb
	.uleb128 0x20
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x5
	.byte	0x49
	.byte	0x3
	.4byte	0x1d2
	.uleb128 0x15
	.4byte	0xe0
	.4byte	0x1e6
	.uleb128 0x1
	.4byte	0x191
	.uleb128 0x1
	.4byte	0x64
	.byte	0
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x5
	.byte	0x50
	.byte	0x3
	.4byte	0x1d2
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x14
	.byte	0x5
	.byte	0x55
	.4byte	0x240
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x5
	.byte	0x56
	.byte	0x15
	.4byte	0x240
	.byte	0
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x5
	.byte	0x57
	.byte	0x15
	.4byte	0x245
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x5
	.byte	0x58
	.byte	0x15
	.4byte	0x24a
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x5
	.byte	0x59
	.byte	0x15
	.4byte	0x24f
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x5
	.byte	0x5a
	.byte	0x15
	.4byte	0x32
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.4byte	0x176
	.uleb128 0x5
	.4byte	0x196
	.uleb128 0x5
	.4byte	0x1c6
	.uleb128 0x5
	.4byte	0x1e6
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x5
	.byte	0x5b
	.byte	0x2
	.4byte	0x1f2
	.uleb128 0x21
	.4byte	.LASF76
	.byte	0x5
	.byte	0x5d
	.byte	0x13
	.4byte	0x254
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0x6
	.byte	0x6
	.byte	0x6b
	.4byte	0x2ba
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0x6
	.byte	0x6c
	.byte	0x11
	.4byte	0x87
	.byte	0
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0x6
	.byte	0x73
	.byte	0x11
	.4byte	0x2ba
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x6
	.byte	0x75
	.byte	0x11
	.4byte	0x87
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0x6
	.byte	0x7f
	.byte	0x11
	.4byte	0x87
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF43
	.byte	0x6
	.byte	0x83
	.byte	0x11
	.4byte	0x87
	.byte	0x5
	.byte	0
	.uleb128 0x13
	.4byte	0x87
	.4byte	0x2ca
	.uleb128 0x14
	.4byte	0x26
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF44
	.byte	0x6
	.byte	0xa6
	.byte	0x2
	.4byte	0x26c
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0x3
	.byte	0x6
	.byte	0xcc
	.4byte	0x2fd
	.uleb128 0x4
	.4byte	.LASF46
	.byte	0x6
	.byte	0xcd
	.byte	0xf
	.4byte	0x87
	.byte	0
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0x6
	.byte	0xce
	.byte	0xf
	.4byte	0x2ba
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF48
	.byte	0x6
	.byte	0xd2
	.byte	0x2
	.4byte	0x2d6
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x6
	.byte	0x6
	.byte	0xf9
	.4byte	0x33d
	.uleb128 0x4
	.4byte	.LASF50
	.byte	0x6
	.byte	0xfa
	.byte	0x13
	.4byte	0x2fd
	.byte	0
	.uleb128 0x4
	.4byte	.LASF51
	.byte	0x6
	.byte	0xfb
	.byte	0x13
	.4byte	0x2ba
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF52
	.byte	0x6
	.byte	0xfc
	.byte	0x13
	.4byte	0x87
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.4byte	.LASF53
	.byte	0x6
	.byte	0xfd
	.byte	0x2
	.4byte	0x309
	.uleb128 0x22
	.4byte	.LASF179
	.byte	0x2
	.byte	0x6
	.2byte	0x100
	.byte	0xf
	.4byte	0x36a
	.uleb128 0x19
	.ascii	"b\000"
	.2byte	0x101
	.4byte	0x2ba
	.uleb128 0x19
	.ascii	"n\000"
	.2byte	0x102
	.4byte	0x9f
	.byte	0
	.uleb128 0x12
	.4byte	.LASF54
	.2byte	0x103
	.byte	0x2
	.4byte	0x349
	.uleb128 0x12
	.4byte	.LASF55
	.2byte	0x112
	.byte	0x17
	.4byte	0x36a
	.uleb128 0x12
	.4byte	.LASF56
	.2byte	0x144
	.byte	0x11
	.4byte	0x87
	.uleb128 0x1a
	.4byte	.LASF57
	.byte	0x7
	.2byte	0x146
	.4byte	0x3cf
	.uleb128 0xf
	.4byte	.LASF50
	.2byte	0x147
	.byte	0x16
	.4byte	0x2fd
	.byte	0
	.uleb128 0xf
	.4byte	.LASF58
	.2byte	0x148
	.byte	0x16
	.4byte	0x382
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF59
	.2byte	0x149
	.byte	0x16
	.4byte	0x87
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF60
	.2byte	0x150
	.byte	0x16
	.4byte	0x376
	.byte	0x5
	.byte	0
	.uleb128 0x12
	.4byte	.LASF61
	.2byte	0x154
	.byte	0x2
	.4byte	0x38e
	.uleb128 0x1a
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x20c
	.4byte	0x40f
	.uleb128 0xf
	.4byte	.LASF50
	.2byte	0x20d
	.byte	0x13
	.4byte	0x2fd
	.byte	0
	.uleb128 0xf
	.4byte	.LASF63
	.2byte	0x20e
	.byte	0x13
	.4byte	0x2ba
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF64
	.2byte	0x212
	.byte	0x13
	.4byte	0x87
	.byte	0x5
	.byte	0
	.uleb128 0x12
	.4byte	.LASF65
	.2byte	0x214
	.byte	0x2
	.4byte	0x3db
	.uleb128 0x7
	.4byte	.LASF66
	.byte	0x7
	.byte	0x25
	.byte	0x10
	.4byte	0x64
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0xc
	.byte	0x7
	.byte	0x72
	.4byte	0x45b
	.uleb128 0x4
	.4byte	.LASF68
	.byte	0x7
	.byte	0x73
	.byte	0x14
	.4byte	0x45b
	.byte	0
	.uleb128 0x4
	.4byte	.LASF69
	.byte	0x7
	.byte	0x74
	.byte	0x14
	.4byte	0x460
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF70
	.byte	0x7
	.byte	0x75
	.byte	0x18
	.4byte	0x465
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.4byte	0x2ca
	.uleb128 0x5
	.4byte	0x2fd
	.uleb128 0x5
	.4byte	0x33d
	.uleb128 0x7
	.4byte	.LASF71
	.byte	0x7
	.byte	0x76
	.byte	0x2
	.4byte	0x427
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0x8
	.byte	0x1
	.byte	0x26
	.4byte	0x49d
	.uleb128 0x4
	.4byte	.LASF73
	.byte	0x1
	.byte	0x27
	.byte	0x9
	.4byte	0xc5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF74
	.byte	0x1
	.byte	0x28
	.byte	0x16
	.4byte	0x2d
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.4byte	.LASF75
	.byte	0x1
	.byte	0x29
	.byte	0x2
	.4byte	0x476
	.uleb128 0x13
	.4byte	0x49d
	.4byte	0x4b9
	.uleb128 0x14
	.4byte	0x26
	.byte	0x9
	.byte	0
	.uleb128 0x23
	.4byte	.LASF77
	.byte	0x1
	.byte	0x2b
	.byte	0x10
	.4byte	0x4a9
	.uleb128 0x5
	.byte	0x3
	.4byte	BlockIdLookup
	.uleb128 0x13
	.4byte	0x26
	.4byte	0x4db
	.uleb128 0x14
	.4byte	0x26
	.byte	0x7
	.byte	0
	.uleb128 0x24
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x3f0
	.byte	0xa
	.4byte	0x4cb
	.uleb128 0x5
	.byte	0x3
	.4byte	WriteSizes
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0x4
	.byte	0x44
	.byte	0x1
	.4byte	0xb2
	.4byte	0x51d
	.uleb128 0x1
	.4byte	0xb2
	.uleb128 0x1
	.4byte	0x522
	.uleb128 0x1
	.4byte	0x3e
	.uleb128 0x1
	.4byte	0x64
	.uleb128 0x1
	.4byte	0x3e
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x5
	.4byte	0x171
	.uleb128 0xc
	.4byte	0x51d
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0x4
	.byte	0x3c
	.byte	0x1
	.4byte	0xb2
	.4byte	0x551
	.uleb128 0x1
	.4byte	0xb2
	.uleb128 0x1
	.4byte	0x522
	.uleb128 0x1
	.4byte	0x3e
	.uleb128 0x1
	.4byte	0x64
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0x5
	.byte	0xab
	.byte	0x1
	.4byte	0xe0
	.4byte	0x571
	.uleb128 0x1
	.4byte	0xcf
	.uleb128 0x1
	.4byte	0x191
	.uleb128 0x1
	.4byte	0x571
	.byte	0
	.uleb128 0x5
	.4byte	0x32
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0x5
	.byte	0xa4
	.byte	0x1
	.4byte	0xe0
	.4byte	0x596
	.uleb128 0x1
	.4byte	0xcf
	.uleb128 0x1
	.4byte	0x1bb
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x16
	.4byte	.LASF85
	.byte	0x5
	.byte	0x9c
	.byte	0x1
	.4byte	0x5b7
	.uleb128 0x1
	.4byte	0x1c0
	.uleb128 0x1
	.4byte	0x3e
	.uleb128 0x1
	.4byte	0x1c0
	.uleb128 0x1
	.4byte	0xd4
	.byte	0
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0x8
	.byte	0x6b
	.byte	0x5
	.4byte	0x43
	.4byte	0x5ce
	.uleb128 0x1
	.4byte	0xcf
	.uleb128 0x17
	.byte	0
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0x9
	.byte	0x1c
	.byte	0x5
	.4byte	0x43
	.4byte	0x5ee
	.uleb128 0x1
	.4byte	0x1bb
	.uleb128 0x1
	.4byte	0x1bb
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x16
	.4byte	.LASF86
	.byte	0xa
	.byte	0x29
	.byte	0x6
	.4byte	0x600
	.uleb128 0x1
	.4byte	0x64
	.byte	0
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0x9
	.byte	0x19
	.byte	0x7
	.4byte	0x64
	.4byte	0x620
	.uleb128 0x1
	.4byte	0x64
	.uleb128 0x1
	.4byte	0x1bb
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0xa
	.4byte	.LASF88
	.byte	0x9
	.byte	0x1b
	.byte	0x7
	.4byte	0x64
	.4byte	0x640
	.uleb128 0x1
	.4byte	0x64
	.uleb128 0x1
	.4byte	0x43
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0xa
	.4byte	.LASF89
	.byte	0xa
	.byte	0x26
	.byte	0x7
	.4byte	0x64
	.4byte	0x656
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0xa
	.4byte	.LASF90
	.byte	0x9
	.byte	0x1a
	.byte	0x7
	.4byte	0x64
	.4byte	0x676
	.uleb128 0x1
	.4byte	0x64
	.uleb128 0x1
	.4byte	0x1bb
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0xa
	.4byte	.LASF91
	.byte	0xb
	.byte	0x58
	.byte	0x1
	.4byte	0x9f
	.4byte	0x68c
	.uleb128 0x1
	.4byte	0x68c
	.byte	0
	.uleb128 0x5
	.4byte	0x93
	.uleb128 0x16
	.4byte	.LASF92
	.byte	0xb
	.byte	0x53
	.byte	0x1
	.4byte	0x6a8
	.uleb128 0x1
	.4byte	0x6a8
	.uleb128 0x1
	.4byte	0x9f
	.byte	0
	.uleb128 0x5
	.4byte	0x87
	.uleb128 0xa
	.4byte	.LASF93
	.byte	0xc
	.byte	0x3e
	.byte	0x1
	.4byte	0x43
	.4byte	0x6dd
	.uleb128 0x1
	.4byte	0x58
	.uleb128 0x1
	.4byte	0xcf
	.uleb128 0x1
	.4byte	0xcf
	.uleb128 0x1
	.4byte	0x26
	.uleb128 0x1
	.4byte	0xe0
	.uleb128 0x1
	.4byte	0xcf
	.uleb128 0x17
	.byte	0
	.uleb128 0xa
	.4byte	.LASF94
	.byte	0xd
	.byte	0x55
	.byte	0x1
	.4byte	0x43
	.4byte	0x6fe
	.uleb128 0x1
	.4byte	0xca
	.uleb128 0x1
	.4byte	0x3e
	.uleb128 0x1
	.4byte	0xd4
	.uleb128 0x17
	.byte	0
	.uleb128 0x8
	.4byte	.LASF102
	.2byte	0x429
	.4byte	0xe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x78c
	.uleb128 0x3
	.4byte	.LASF95
	.2byte	0x42a
	.byte	0x1a
	.4byte	0x78c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF96
	.2byte	0x42b
	.byte	0x1d
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF97
	.2byte	0x42c
	.byte	0x1a
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -50
	.uleb128 0x2
	.4byte	.LASF98
	.2byte	0x42f
	.byte	0x10
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF99
	.2byte	0x430
	.byte	0x13
	.4byte	0x165
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF100
	.2byte	0x431
	.byte	0x11
	.4byte	0x2ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF101
	.2byte	0x432
	.byte	0x11
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.4byte	.LASF105
	.2byte	0x459
	.4byte	.L253
	.byte	0
	.uleb128 0x5
	.4byte	0x41b
	.uleb128 0x8
	.4byte	.LASF103
	.2byte	0x413
	.4byte	0xe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x801
	.uleb128 0x3
	.4byte	.LASF104
	.2byte	0x414
	.byte	0x1a
	.4byte	0x41b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF96
	.2byte	0x415
	.byte	0x1a
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF97
	.2byte	0x416
	.byte	0x1a
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x2
	.4byte	.LASF98
	.2byte	0x419
	.byte	0x10
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF99
	.2byte	0x41a
	.byte	0x13
	.4byte	0x165
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.4byte	.LASF105
	.2byte	0x423
	.4byte	.L246
	.byte	0
	.uleb128 0x8
	.4byte	.LASF106
	.2byte	0x3f2
	.4byte	0xe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x871
	.uleb128 0x3
	.4byte	.LASF107
	.2byte	0x3f3
	.byte	0x1c
	.4byte	0x871
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF104
	.2byte	0x3f4
	.byte	0x1c
	.4byte	0x41b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF23
	.2byte	0x3f5
	.byte	0x1c
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x3
	.4byte	.LASF97
	.2byte	0x3f6
	.byte	0x1c
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF98
	.2byte	0x3f9
	.byte	0x10
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x9
	.4byte	.LASF105
	.2byte	0x40f
	.4byte	.L237
	.byte	0
	.uleb128 0x5
	.4byte	0x165
	.uleb128 0x8
	.4byte	.LASF108
	.2byte	0x3c3
	.4byte	0xe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8d7
	.uleb128 0x3
	.4byte	.LASF95
	.2byte	0x3c4
	.byte	0x1a
	.4byte	0x78c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF109
	.2byte	0x3c5
	.byte	0x1a
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF98
	.2byte	0x3c8
	.byte	0x10
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2
	.4byte	.LASF110
	.2byte	0x3c9
	.byte	0xa
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF105
	.2byte	0x3ec
	.4byte	.L226
	.byte	0
	.uleb128 0x8
	.4byte	.LASF111
	.2byte	0x39d
	.4byte	0xe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x929
	.uleb128 0x3
	.4byte	.LASF104
	.2byte	0x39e
	.byte	0x1a
	.4byte	0x41b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF109
	.2byte	0x39f
	.byte	0x1a
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF98
	.2byte	0x3a2
	.byte	0x10
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x9
	.4byte	.LASF105
	.2byte	0x3bd
	.4byte	.L218
	.byte	0
	.uleb128 0x8
	.4byte	.LASF112
	.2byte	0x36b
	.4byte	0xe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9c6
	.uleb128 0x3
	.4byte	.LASF104
	.2byte	0x36c
	.byte	0x1a
	.4byte	0x41b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF58
	.2byte	0x36d
	.byte	0x1c
	.4byte	0x382
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x3
	.4byte	.LASF60
	.2byte	0x36e
	.byte	0x1a
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF113
	.2byte	0x36f
	.byte	0x1a
	.4byte	0x191
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF114
	.2byte	0x372
	.byte	0x14
	.4byte	0x460
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF115
	.2byte	0x373
	.byte	0x14
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2
	.4byte	.LASF116
	.2byte	0x373
	.byte	0x1f
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF98
	.2byte	0x374
	.byte	0x10
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF105
	.2byte	0x397
	.4byte	.L204
	.byte	0
	.uleb128 0x8
	.4byte	.LASF117
	.2byte	0x333
	.4byte	0xe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa72
	.uleb128 0x3
	.4byte	.LASF104
	.2byte	0x334
	.byte	0x1a
	.4byte	0x41b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF118
	.2byte	0x335
	.byte	0x1a
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x3
	.4byte	.LASF119
	.2byte	0x336
	.byte	0x1a
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -39
	.uleb128 0x3
	.4byte	.LASF120
	.2byte	0x337
	.byte	0x1a
	.4byte	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF113
	.2byte	0x338
	.byte	0x1a
	.4byte	0x191
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF114
	.2byte	0x33b
	.byte	0x14
	.4byte	0x460
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF115
	.2byte	0x33c
	.byte	0x12
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2
	.4byte	.LASF116
	.2byte	0x33c
	.byte	0x1d
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF98
	.2byte	0x33d
	.byte	0x10
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF105
	.2byte	0x367
	.4byte	.L189
	.byte	0
	.uleb128 0x8
	.4byte	.LASF121
	.2byte	0x300
	.4byte	0xe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb0f
	.uleb128 0x3
	.4byte	.LASF104
	.2byte	0x301
	.byte	0x1a
	.4byte	0x41b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF122
	.2byte	0x302
	.byte	0x1a
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x3
	.4byte	.LASF120
	.2byte	0x303
	.byte	0x1a
	.4byte	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF113
	.2byte	0x304
	.byte	0x1a
	.4byte	0x191
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.4byte	.LASF114
	.2byte	0x307
	.byte	0x15
	.4byte	0x460
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF98
	.2byte	0x308
	.byte	0x10
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF115
	.2byte	0x309
	.byte	0x12
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2
	.4byte	.LASF116
	.2byte	0x309
	.byte	0x1d
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.4byte	.LASF105
	.2byte	0x32f
	.4byte	.L174
	.byte	0
	.uleb128 0x8
	.4byte	.LASF123
	.2byte	0x2ad
	.4byte	0xe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbbb
	.uleb128 0x3
	.4byte	.LASF104
	.2byte	0x2ae
	.byte	0x14
	.4byte	0x41b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF124
	.2byte	0x2af
	.byte	0x14
	.4byte	0x1bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.4byte	.LASF125
	.2byte	0x2b0
	.byte	0x14
	.4byte	0x191
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.4byte	.LASF126
	.2byte	0x2b1
	.byte	0x14
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.4byte	.LASF127
	.2byte	0x2b4
	.byte	0x13
	.4byte	0x46a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF98
	.2byte	0x2b5
	.byte	0x10
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF128
	.2byte	0x2b6
	.byte	0xa
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF129
	.2byte	0x2b7
	.byte	0x15
	.4byte	0x460
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF130
	.2byte	0x2b8
	.byte	0x15
	.4byte	0x460
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.4byte	.LASF105
	.2byte	0x2fb
	.4byte	.L157
	.byte	0
	.uleb128 0x8
	.4byte	.LASF131
	.2byte	0x28a
	.4byte	0xe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc1c
	.uleb128 0x3
	.4byte	.LASF104
	.2byte	0x28b
	.byte	0x12
	.4byte	0x41b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF127
	.2byte	0x28e
	.byte	0x13
	.4byte	0x46a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF98
	.2byte	0x28f
	.byte	0x10
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF132
	.2byte	0x290
	.byte	0x9
	.4byte	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.4byte	.LASF105
	.2byte	0x2a8
	.4byte	.L145
	.byte	0
	.uleb128 0x8
	.4byte	.LASF133
	.2byte	0x268
	.4byte	0xe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc7d
	.uleb128 0x3
	.4byte	.LASF104
	.2byte	0x269
	.byte	0x12
	.4byte	0x41b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.4byte	.LASF127
	.2byte	0x26c
	.byte	0x13
	.4byte	0x46a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF98
	.2byte	0x26d
	.byte	0x10
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF132
	.2byte	0x26e
	.byte	0x9
	.4byte	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.4byte	.LASF105
	.2byte	0x286
	.4byte	.L133
	.byte	0
	.uleb128 0x8
	.4byte	.LASF134
	.2byte	0x209
	.4byte	0xe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd32
	.uleb128 0x3
	.4byte	.LASF104
	.2byte	0x20a
	.byte	0x12
	.4byte	0x41b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x3
	.4byte	.LASF135
	.2byte	0x20b
	.byte	0x12
	.4byte	0x26
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2
	.4byte	.LASF136
	.2byte	0x20e
	.byte	0x9
	.4byte	0xd32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2
	.4byte	.LASF137
	.2byte	0x20f
	.byte	0x12
	.4byte	0x45b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2
	.4byte	.LASF115
	.2byte	0x210
	.byte	0x12
	.4byte	0x32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2
	.4byte	.LASF138
	.2byte	0x210
	.byte	0x1d
	.4byte	0x32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2
	.4byte	.LASF116
	.2byte	0x210
	.byte	0x27
	.4byte	0x32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2
	.4byte	.LASF114
	.2byte	0x211
	.byte	0x15
	.4byte	0x460
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2
	.4byte	.LASF98
	.2byte	0x212
	.byte	0x10
	.4byte	0xe0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x9
	.4byte	.LASF105
	.2byte	0x263
	.4byte	.L118
	.byte	0
	.uleb128 0x13
	.4byte	0x58
	.4byte	0xd42
	.uleb128 0x14
	.4byte	0x26
	.byte	0x4f
	.byte	0
	.uleb128 0x8
	.4byte	.LASF139
	.2byte	0x1b3
	.4byte	0xe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdc1
	.uleb128 0x3
	.4byte	.LASF104
	.2byte	0x1b4
	.byte	0x16
	.4byte	0x41b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF140
	.2byte	0x1b5
	.byte	0x16
	.4byte	0xdc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF114
	.2byte	0x1b8
	.byte	0x15
	.4byte	0x460
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF115
	.2byte	0x1b9
	.byte	0x12
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2
	.4byte	.LASF116
	.2byte	0x1b9
	.byte	0x1d
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF98
	.2byte	0x1ba
	.byte	0x10
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF105
	.2byte	0x204
	.4byte	.L96
	.byte	0
	.uleb128 0x5
	.4byte	0x46a
	.uleb128 0x8
	.4byte	.LASF141
	.2byte	0x181
	.4byte	0xe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe27
	.uleb128 0x3
	.4byte	.LASF104
	.2byte	0x182
	.byte	0x16
	.4byte	0x41b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF142
	.2byte	0x183
	.byte	0x16
	.4byte	0xe27
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF143
	.2byte	0x184
	.byte	0x16
	.4byte	0x571
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF98
	.2byte	0x187
	.byte	0x10
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x9
	.4byte	.LASF105
	.2byte	0x1ae
	.4byte	.L86
	.byte	0
	.uleb128 0x5
	.4byte	0x460
	.uleb128 0x8
	.4byte	.LASF144
	.2byte	0x16e
	.4byte	0xe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe6f
	.uleb128 0x3
	.4byte	.LASF95
	.2byte	0x16f
	.byte	0x13
	.4byte	0x78c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF98
	.2byte	0x172
	.byte	0x10
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x9
	.4byte	.LASF105
	.2byte	0x17d
	.4byte	.L79
	.byte	0
	.uleb128 0x8
	.4byte	.LASF145
	.2byte	0x108
	.4byte	0xe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf34
	.uleb128 0x3
	.4byte	.LASF95
	.2byte	0x109
	.byte	0x13
	.4byte	0x78c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF146
	.2byte	0x10a
	.byte	0xe
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF147
	.2byte	0x10b
	.byte	0xe
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF148
	.2byte	0x10c
	.byte	0xe
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.4byte	.LASF137
	.2byte	0x10f
	.byte	0x12
	.4byte	0x45b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF149
	.2byte	0x110
	.byte	0x12
	.4byte	0x460
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF98
	.2byte	0x111
	.byte	0x10
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF150
	.2byte	0x112
	.byte	0x12
	.4byte	0x460
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.4byte	.LASF105
	.2byte	0x16a
	.4byte	.L62
	.uleb128 0x25
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x2
	.4byte	.LASF151
	.2byte	0x153
	.byte	0x16
	.4byte	0x460
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF70
	.2byte	0x154
	.byte	0x1a
	.4byte	0x465
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF152
	.byte	0xcd
	.4byte	0xe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfb9
	.uleb128 0x6
	.4byte	.LASF153
	.byte	0xce
	.byte	0x1d
	.4byte	0xe27
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF154
	.byte	0xcf
	.byte	0x1d
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF155
	.byte	0xd0
	.byte	0x1d
	.4byte	0xe27
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.4byte	.LASF135
	.byte	0xd1
	.byte	0x1d
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xd
	.4byte	.LASF98
	.byte	0xd4
	.byte	0x10
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xd
	.4byte	.LASF129
	.byte	0xd5
	.byte	0x15
	.4byte	0x460
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.4byte	.LASF156
	.byte	0xd6
	.byte	0xa
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.4byte	.LASF105
	.byte	0xfe
	.4byte	.L49
	.byte	0
	.uleb128 0x10
	.4byte	.LASF157
	.byte	0xb9
	.4byte	0xe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1014
	.uleb128 0x6
	.4byte	.LASF114
	.byte	0xba
	.byte	0x14
	.4byte	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF158
	.byte	0xbb
	.byte	0x14
	.4byte	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x6
	.4byte	.LASF159
	.byte	0xbc
	.byte	0x14
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xd
	.4byte	.LASF98
	.byte	0xbf
	.byte	0x10
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x11
	.4byte	.LASF105
	.byte	0xc7
	.4byte	.L41
	.byte	0
	.uleb128 0x10
	.4byte	.LASF160
	.byte	0x9b
	.4byte	0x460
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x106b
	.uleb128 0x6
	.4byte	.LASF114
	.byte	0x9c
	.byte	0x14
	.4byte	0x460
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.4byte	.LASF98
	.byte	0x9f
	.byte	0x13
	.4byte	0x460
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xd
	.4byte	.LASF159
	.byte	0xa0
	.byte	0xa
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x11
	.4byte	.LASF105
	.byte	0xb5
	.4byte	.L31
	.uleb128 0x11
	.4byte	.LASF161
	.byte	0xb4
	.4byte	.L34
	.byte	0
	.uleb128 0x10
	.4byte	.LASF162
	.byte	0x90
	.4byte	0x32
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10a0
	.uleb128 0x6
	.4byte	.LASF163
	.byte	0x91
	.byte	0x12
	.4byte	0x1bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.4byte	.LASF164
	.byte	0x94
	.byte	0xa
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x10
	.4byte	.LASF165
	.byte	0x70
	.4byte	0xe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10ed
	.uleb128 0x6
	.4byte	.LASF104
	.byte	0x71
	.byte	0x12
	.4byte	0x41b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF159
	.byte	0x72
	.byte	0x12
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.4byte	.LASF98
	.byte	0x75
	.byte	0x10
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x11
	.4byte	.LASF105
	.byte	0x8a
	.4byte	.L19
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF166
	.byte	0x64
	.4byte	0x32
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1114
	.uleb128 0x6
	.4byte	.LASF59
	.byte	0x65
	.byte	0xc
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF167
	.byte	0x5d
	.4byte	0x32
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x113b
	.uleb128 0x6
	.4byte	.LASF59
	.byte	0x5e
	.byte	0xc
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x10
	.4byte	.LASF168
	.byte	0x54
	.4byte	0xe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x117e
	.uleb128 0x6
	.4byte	.LASF169
	.byte	0x55
	.byte	0x1a
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x6
	.4byte	.LASF170
	.byte	0x56
	.byte	0x1a
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x6
	.4byte	.LASF171
	.byte	0x57
	.byte	0x1a
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF172
	.byte	0x3b
	.4byte	0xe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11e7
	.uleb128 0x6
	.4byte	.LASF173
	.byte	0x3c
	.byte	0x1b
	.4byte	0x11e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF169
	.byte	0x3d
	.byte	0x1a
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF170
	.byte	0x3e
	.byte	0x1a
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF171
	.byte	0x3f
	.byte	0x1a
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.4byte	.LASF98
	.byte	0x42
	.byte	0x10
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x11
	.4byte	.LASF174
	.byte	0x4f
	.4byte	.L4
	.byte	0
	.uleb128 0x5
	.4byte	0x49d
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x17
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
	.uleb128 0x23
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
.LASF116:
	.ascii	"MaxDeviceLen\000"
.LASF102:
	.ascii	"EeePReadBufferFromEEP\000"
.LASF27:
	.ascii	"HashFuncbytes_t\000"
.LASF109:
	.ascii	"pszFilename\000"
.LASF145:
	.ascii	"EeePCreateNewBuffer\000"
.LASF24:
	.ascii	"DevSize\000"
.LASF91:
	.ascii	"EeeP_Get16BitValue_BE\000"
.LASF125:
	.ascii	"pvIBlock\000"
.LASF166:
	.ascii	"EeePAlignLength\000"
.LASF50:
	.ascii	"CDBHdr\000"
.LASF46:
	.ascii	"DBlockId\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF171:
	.ascii	"uiValue\000"
.LASF49:
	.ascii	"EeePCRC16ChkBlock_s\000"
.LASF53:
	.ascii	"EeePCRC16ChkBlock_t\000"
.LASF144:
	.ascii	"EeePFreeBuffer\000"
.LASF97:
	.ascii	"u16DeviceAddr\000"
.LASF178:
	.ascii	"EApiCmdTypes_e\000"
.LASF175:
	.ascii	"GNU C99 11.2.0 -mcpu=cortex-a9 -mfloat-abi=hard -mf"
	.ascii	"pu=vfpv3 -mabi=aapcs-linux -mtls-dialect=gnu -marm "
	.ascii	"-march=armv7-a+mp+sec+vfpv3 -g -O0 -std=gnu99 -fsta"
	.ascii	"ck-protector-strong -fPIE\000"
.LASF68:
	.ascii	"pCmnHdr\000"
.LASF143:
	.ascii	"pstImageMaxSize\000"
.LASF19:
	.ascii	"EApiCmdTypes_t\000"
.LASF162:
	.ascii	"GetBlockLength\000"
.LASF151:
	.ascii	"plclEeePBlock\000"
.LASF119:
	.ascii	"VendorBlockId\000"
.LASF101:
	.ascii	"stEEPSize\000"
.LASF98:
	.ascii	"StatusCode\000"
.LASF99:
	.ascii	"DDesc\000"
.LASF13:
	.ascii	"uint32_t\000"
.LASF100:
	.ascii	"EeePCmnHdr\000"
.LASF108:
	.ascii	"EeePReadBufferFromFile\000"
.LASF29:
	.ascii	"HashFuncverify_t\000"
.LASF51:
	.ascii	"CrC16\000"
.LASF90:
	.ascii	"memmove\000"
.LASF28:
	.ascii	"HashFuncfini_t\000"
.LASF39:
	.ascii	"DontCareByte\000"
.LASF160:
	.ascii	"GetNextBlock\000"
.LASF152:
	.ascii	"ReduceBlockLength\000"
.LASF14:
	.ascii	"long long unsigned int\000"
.LASF66:
	.ascii	"EeePHandel_t\000"
.LASF157:
	.ascii	"SetDynBlockHeader\000"
.LASF113:
	.ascii	"pvFBlock\000"
.LASF129:
	.ascii	"pTmpBlock\000"
.LASF72:
	.ascii	"StringLookup_s\000"
.LASF75:
	.ascii	"StringLookup_t\000"
.LASF154:
	.ascii	"stReduceBy\000"
.LASF156:
	.ascii	"NewLength\000"
.LASF153:
	.ascii	"pvCurBlock\000"
.LASF36:
	.ascii	"stDigestLen\000"
.LASF141:
	.ascii	"EeePGetFirstDB\000"
.LASF105:
	.ascii	"ExitPoint\000"
.LASF172:
	.ascii	"GetString\000"
.LASF132:
	.ascii	"pContext\000"
.LASF96:
	.ascii	"DeviceBus\000"
.LASF18:
	.ascii	"EApiAPI2CExtIndex\000"
.LASF42:
	.ascii	"BlkOffset\000"
.LASF59:
	.ascii	"Length\000"
.LASF5:
	.ascii	"size_t\000"
.LASF106:
	.ascii	"EeePSetI2CDeviceDesc\000"
.LASF92:
	.ascii	"EeeP_Set16BitValue_BE\000"
.LASF159:
	.ascii	"stBlockLength\000"
.LASF167:
	.ascii	"EeePAdjLength\000"
.LASF137:
	.ascii	"pEeePCmnHdr\000"
.LASF81:
	.ascii	"ReadBinaryFile\000"
.LASF20:
	.ascii	"DeviceAddr\000"
.LASF176:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux/../EeePDB.c\000"
.LASF155:
	.ascii	"pvNewBlock\000"
.LASF78:
	.ascii	"WriteSizes\000"
.LASF33:
	.ascii	"bytes\000"
.LASF86:
	.ascii	"free\000"
.LASF114:
	.ascii	"pCurBlock\000"
.LASF63:
	.ascii	"VendId\000"
.LASF173:
	.ascii	"pStrTbl\000"
.LASF34:
	.ascii	"fini\000"
.LASF17:
	.ascii	"EApiAPI2CStdIndex\000"
.LASF57:
	.ascii	"EeePSmbiosHdr_s\000"
.LASF61:
	.ascii	"EeePSmbiosHdr_t\000"
.LASF139:
	.ascii	"EeePMapBuffer\000"
.LASF3:
	.ascii	"char\000"
.LASF122:
	.ascii	"BlockId\000"
.LASF30:
	.ascii	"I2CDeviceDesc_s\000"
.LASF25:
	.ascii	"I2CDeviceDesc_t\000"
.LASF43:
	.ascii	"DeviceDesc\000"
.LASF21:
	.ascii	"PageSize\000"
.LASF16:
	.ascii	"EApiStatus_t\000"
.LASF9:
	.ascii	"uint8_t\000"
.LASF58:
	.ascii	"Type\000"
.LASF136:
	.ascii	"BlockName\000"
.LASF169:
	.ascii	"pszString\000"
.LASF40:
	.ascii	"EepId\000"
.LASF2:
	.ascii	"long long int\000"
.LASF121:
	.ascii	"EeePFindBlock\000"
.LASF83:
	.ascii	"printf\000"
.LASF45:
	.ascii	"DBlockIdHdr_s\000"
.LASF48:
	.ascii	"DBlockIdHdr_t\000"
.LASF95:
	.ascii	"pBHandel\000"
.LASF163:
	.ascii	"pcvBHandel\000"
.LASF93:
	.ascii	"siFormattedMessage_SC\000"
.LASF47:
	.ascii	"DBlockLength\000"
.LASF126:
	.ascii	"cuiFlags\000"
.LASF131:
	.ascii	"EeePCheckCRC\000"
.LASF77:
	.ascii	"BlockIdLookup\000"
.LASF88:
	.ascii	"memset\000"
.LASF147:
	.ascii	"stHeaderSize\000"
.LASF60:
	.ascii	"Handle\000"
.LASF107:
	.ascii	"pDDesc\000"
.LASF52:
	.ascii	"Reserved0\000"
.LASF135:
	.ascii	"uiFlags\000"
.LASF54:
	.ascii	"EeePuint16u_t\000"
.LASF179:
	.ascii	"EeePuint16u_u\000"
.LASF128:
	.ascii	"RequestBlockSize\000"
.LASF22:
	.ascii	"ExtIndx\000"
.LASF110:
	.ascii	"stFileSize\000"
.LASF31:
	.ascii	"HashFunc_s\000"
.LASF37:
	.ascii	"HashFunc_t\000"
.LASF11:
	.ascii	"uint16_t\000"
.LASF127:
	.ascii	"BufferMap\000"
.LASF79:
	.ascii	"EApiAHI2CReadEeprom\000"
.LASF62:
	.ascii	"EeePVendBlockHdr_s\000"
.LASF65:
	.ascii	"EeePVendBlockHdr_t\000"
.LASF161:
	.ascii	"ErrorExit\000"
.LASF146:
	.ascii	"stBufferSize\000"
.LASF8:
	.ascii	"short int\000"
.LASF69:
	.ascii	"pEmptyBlock\000"
.LASF1:
	.ascii	"long int\000"
.LASF164:
	.ascii	"stBlockSize\000"
.LASF123:
	.ascii	"EeePAddBlock\000"
.LASF124:
	.ascii	"pcvBlock\000"
.LASF120:
	.ascii	"Instance\000"
.LASF84:
	.ascii	"memcmp\000"
.LASF56:
	.ascii	"SMBIOS_BlockId_t\000"
.LASF64:
	.ascii	"VendBlockId\000"
.LASF130:
	.ascii	"pvTmpBlock\000"
.LASF38:
	.ascii	"EeePCmn_s\000"
.LASF44:
	.ascii	"EeePCmn_t\000"
.LASF112:
	.ascii	"EeePFindSmbiosBlock\000"
.LASF26:
	.ascii	"HashFuncinit_t\000"
.LASF73:
	.ascii	"szString\000"
.LASF6:
	.ascii	"uintptr_t\000"
.LASF117:
	.ascii	"EeePFindVendorBlock\000"
.LASF32:
	.ascii	"init\000"
.LASF41:
	.ascii	"SpecRev\000"
.LASF85:
	.ascii	"PrintHexAsciiTable\000"
.LASF15:
	.ascii	"long unsigned int\000"
.LASF111:
	.ascii	"EeePWriteBufferToFile\000"
.LASF23:
	.ascii	"WRecTimems\000"
.LASF76:
	.ascii	"CRC_CCITT\000"
.LASF103:
	.ascii	"EeePWriteBufferToEEP\000"
.LASF115:
	.ascii	"CurOffset\000"
.LASF80:
	.ascii	"EApiAHI2CWriteEeprom\000"
.LASF82:
	.ascii	"WriteBinaryFile\000"
.LASF10:
	.ascii	"unsigned char\000"
.LASF67:
	.ascii	"EeePBufferMap_s\000"
.LASF71:
	.ascii	"EeePBufferMap_t\000"
.LASF149:
	.ascii	"pEeePEmptyBlock\000"
.LASF118:
	.ascii	"VendorId\000"
.LASF94:
	.ascii	"EApiSprintf\000"
.LASF170:
	.ascii	"stArrayLen\000"
.LASF74:
	.ascii	"cuiValue\000"
.LASF165:
	.ascii	"SetBlockLength\000"
.LASF177:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux\000"
.LASF142:
	.ascii	"pFirstDB\000"
.LASF89:
	.ascii	"malloc\000"
.LASF104:
	.ascii	"BHandel\000"
.LASF150:
	.ascii	"pEeePTBlock\000"
.LASF174:
	.ascii	"ExitSuccess\000"
.LASF55:
	.ascii	"SmbiosHandle_t\000"
.LASF7:
	.ascii	"signed char\000"
.LASF12:
	.ascii	"short unsigned int\000"
.LASF87:
	.ascii	"memcpy\000"
.LASF133:
	.ascii	"EeePSetCRC\000"
.LASF158:
	.ascii	"u8BlockId\000"
.LASF140:
	.ascii	"pBufMap\000"
.LASF148:
	.ascii	"u32Flags\000"
.LASF168:
	.ascii	"GetDBlckIdString\000"
.LASF134:
	.ascii	"EeePListBlocks\000"
.LASF4:
	.ascii	"double\000"
.LASF70:
	.ascii	"pEeePCRCBlock\000"
.LASF35:
	.ascii	"verify\000"
.LASF138:
	.ascii	"BlockLen\000"
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
