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
	.file	"EApiAHI2C.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata
	.align	2
.LC0:
	.ascii	"EApiAHI2CCCreateAddrOffset\000"
	.align	2
.LC1:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux/../../common/EApiAHI2C.c\000"
	.align	2
.LC2:
	.ascii	"(pDDesc==NULL)\000"
	.align	2
.LC3:
	.ascii	"%s\012\000"
	.align	2
.LC4:
	.ascii	"(pEncAddr==NULL)\000"
	.align	2
.LC5:
	.ascii	"(pEncOffset==NULL)\000"
	.text
	.align	2
	.global	EApiAHI2CCCreateAddrOffset
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiAHI2CCCreateAddrOffset, %function
EApiAHI2CCCreateAddrOffset:
.LFB1:
	.file 1 "/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/linux/../../common/EApiAHI2C.c"
	.loc 1 45 1
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
	.loc 1 46 18
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 47 5
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L2
	.loc 1 47 5 is_stmt 0 discriminator 1
	ldr	r3, .L10
.LPIC0:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L10+4
.LPIC1:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #47
	ldr	r2, .L10+8
.LPIC2:
	add	r2, pc, r2
	ldr	r1, .L10+12
.LPIC3:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-8]
	b	.L3
.L2:
	.loc 1 52 5 is_stmt 1
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L4
	.loc 1 52 5 is_stmt 0 discriminator 1
	ldr	r3, .L10+16
.LPIC4:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L10+20
.LPIC5:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #52
	ldr	r2, .L10+24
.LPIC6:
	add	r2, pc, r2
	ldr	r1, .L10+28
.LPIC7:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-8]
	b	.L3
.L4:
	.loc 1 57 5 is_stmt 1
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L5
	.loc 1 57 5 is_stmt 0 discriminator 1
	ldr	r3, .L10+32
.LPIC8:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L10+36
.LPIC9:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #57
	ldr	r2, .L10+40
.LPIC10:
	add	r2, pc, r2
	ldr	r1, .L10+44
.LPIC11:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-8]
	b	.L3
.L5:
	.loc 1 62 14 is_stmt 1
	ldr	r3, [fp, #-16]
	ldrh	r3, [r3, #4]
	.loc 1 62 7
	cmp	r3, #2
	bne	.L6
	.loc 1 64 19
	ldr	r3, [fp, #-20]
	uxth	r3, r3
	orr	r2, r3, #-2147483648
	.loc 1 64 18
	ldr	r3, [fp, #-28]
	str	r2, [r3]
	.loc 1 65 13
	ldr	r3, [fp, #-20]
	lsr	r3, r3, #16
	str	r3, [fp, #-20]
	.loc 1 66 13
	ldr	r3, [fp, #-20]
	and	r3, r3, #3
	str	r3, [fp, #-20]
	.loc 1 67 10
	ldr	r3, [fp, #-16]
	ldrh	r3, [r3]
	and	r3, r3, #63488
	.loc 1 67 9
	cmp	r3, #61440
	bne	.L7
	.loc 1 68 19
	ldr	r3, [fp, #-16]
	ldrh	r3, [r3]
	uxtb	r2, r3
	ldr	r3, [fp, #-16]
	ldrh	r3, [r3]
	lsr	r3, r3, #1
	uxth	r3, r3
	and	r3, r3, #768
	orr	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	uxtb	r2, r3
	ldr	r3, [fp, #-16]
	ldrh	r3, [r3]
	uxtb	r1, r3
	ldr	r3, [fp, #-16]
	ldrh	r3, [r3]
	lsr	r3, r3, #1
	uxth	r3, r3
	and	r3, r3, #768
	orr	r3, r1, r3
	mov	r1, r3
	ldr	r3, [fp, #-20]
	add	r3, r1, r3
	lsl	r3, r3, #1
	and	r3, r3, #1536
	orr	r3, r2, r3
	orr	r2, r3, #61440
	.loc 1 68 18
	ldr	r3, [fp, #-24]
	str	r2, [r3]
	b	.L3
.L7:
	.loc 1 71 19
	ldr	r3, [fp, #-16]
	ldrh	r3, [r3]
	lsr	r3, r3, #1
	uxth	r3, r3
	uxtb	r2, r3
	ldr	r3, [fp, #-20]
	uxtb	r3, r3
	add	r3, r2, r3
	uxtb	r3, r3
	lsl	r3, r3, #1
	uxtb	r3, r3
	mov	r2, r3
	.loc 1 71 18
	ldr	r3, [fp, #-24]
	str	r2, [r3]
	b	.L3
.L6:
	.loc 1 76 19
	ldr	r3, [fp, #-20]
	uxtb	r2, r3
	.loc 1 76 18
	ldr	r3, [fp, #-28]
	str	r2, [r3]
	.loc 1 77 13
	ldr	r3, [fp, #-20]
	lsr	r3, r3, #8
	str	r3, [fp, #-20]
	.loc 1 78 13
	ldr	r3, [fp, #-20]
	and	r3, r3, #3
	str	r3, [fp, #-20]
	.loc 1 79 10
	ldr	r3, [fp, #-16]
	ldrh	r3, [r3]
	and	r3, r3, #63488
	.loc 1 79 9
	cmp	r3, #61440
	bne	.L8
	.loc 1 80 19
	ldr	r3, [fp, #-16]
	ldrh	r3, [r3]
	uxtb	r2, r3
	ldr	r3, [fp, #-16]
	ldrh	r3, [r3]
	lsr	r3, r3, #1
	uxth	r3, r3
	and	r3, r3, #768
	orr	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	uxtb	r2, r3
	ldr	r3, [fp, #-16]
	ldrh	r3, [r3]
	uxtb	r1, r3
	ldr	r3, [fp, #-16]
	ldrh	r3, [r3]
	lsr	r3, r3, #1
	uxth	r3, r3
	and	r3, r3, #768
	orr	r3, r1, r3
	mov	r1, r3
	ldr	r3, [fp, #-20]
	add	r3, r1, r3
	lsl	r3, r3, #1
	and	r3, r3, #1536
	orr	r3, r2, r3
	orr	r2, r3, #61440
	.loc 1 80 18
	ldr	r3, [fp, #-24]
	str	r2, [r3]
	b	.L3
.L8:
	.loc 1 83 19
	ldr	r3, [fp, #-16]
	ldrh	r3, [r3]
	lsr	r3, r3, #1
	uxth	r3, r3
	uxtb	r2, r3
	ldr	r3, [fp, #-20]
	uxtb	r3, r3
	add	r3, r2, r3
	uxtb	r3, r3
	lsl	r3, r3, #1
	uxtb	r3, r3
	mov	r2, r3
	.loc 1 83 18
	ldr	r3, [fp, #-24]
	str	r2, [r3]
.L3:
	.loc 1 88 10
	ldr	r3, [fp, #-8]
	.loc 1 89 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L11:
	.align	2
.L10:
	.word	.LC2-(.LPIC0+8)
	.word	.LC3-(.LPIC1+8)
	.word	.LC0-(.LPIC2+8)
	.word	.LC1-(.LPIC3+8)
	.word	.LC4-(.LPIC4+8)
	.word	.LC3-(.LPIC5+8)
	.word	.LC0-(.LPIC6+8)
	.word	.LC1-(.LPIC7+8)
	.word	.LC5-(.LPIC8+8)
	.word	.LC3-(.LPIC9+8)
	.word	.LC0-(.LPIC10+8)
	.word	.LC1-(.LPIC11+8)
	.cfi_endproc
.LFE1:
	.size	EApiAHI2CCCreateAddrOffset, .-EApiAHI2CCCreateAddrOffset
	.align	2
	.global	ValidEEPDevDesc
	.syntax unified
	.arm
	.fpu vfpv3
	.type	ValidEEPDevDesc, %function
ValidEEPDevDesc:
.LFB2:
	.loc 1 94 1
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
	.loc 1 95 18
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 97 14
	ldr	r3, [fp, #-16]
	ldrh	r3, [r3, #4]
	.loc 1 97 7
	cmp	r3, #2
	bne	.L13
	.loc 1 99 21
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #8]
	.loc 1 99 30
	lsr	r3, r3, #16
	.loc 1 99 34
	lsl	r3, r3, #1
	.loc 1 99 14
	str	r3, [fp, #-8]
	b	.L14
.L13:
	.loc 1 107 21
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #8]
	.loc 1 107 30
	lsr	r3, r3, #8
	.loc 1 107 33
	lsl	r3, r3, #1
	.loc 1 107 14
	str	r3, [fp, #-8]
	.loc 1 108 9
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L14
	.loc 1 110 19
	ldr	r3, [fp, #-16]
	ldrh	r3, [r3]
	mov	r2, r3
	.loc 1 110 31
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	.loc 1 110 11
	cmp	r3, #175
	ble	.L14
	.loc 1 112 18
	mvn	r3, #256
	b	.L15
.L14:
	.loc 1 116 12
	ldr	r3, [fp, #-12]
.L15:
	.loc 1 117 1
	mov	r0, r3
	add	sp, fp, #0
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	fp, [sp], #4
	.cfi_restore 11
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE2:
	.size	ValidEEPDevDesc, .-ValidEEPDevDesc
	.section	.rodata
	.align	2
.LC6:
	.ascii	"EApiAHI2CWriteEeprom\000"
	.align	2
.LC7:
	.ascii	"(pBuffer==NULL)\000"
	.align	2
.LC8:
	.ascii	"(ByteCnt==0)\000"
	.align	2
.LC9:
	.ascii	"Invalid EEPROM Device Descriptor\000"
	.align	2
.LC10:
	.ascii	"Prevented Write beyond Device Boundary\000"
	.global	__aeabi_uidivmod
	.text
	.align	2
	.global	EApiAHI2CWriteEeprom
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiAHI2CWriteEeprom, %function
EApiAHI2CWriteEeprom:
.LFB3:
	.loc 1 126 1
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #72
	str	r0, [fp, #-48]
	str	r1, [fp, #-52]
	str	r2, [fp, #-56]
	str	r3, [fp, #-60]
	.loc 1 126 1
	ldr	r2, .L41
.LPIC32:
	add	r2, pc, r2
	ldr	r3, .L41+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 127 18
	mov	r3, #0
	str	r3, [fp, #-28]
	.loc 1 136 5
	ldr	r3, [fp, #-52]
	cmp	r3, #0
	bne	.L17
	.loc 1 136 5 is_stmt 0 discriminator 1
	ldr	r3, .L41+8
.LPIC12:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L41+12
.LPIC13:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #136
	ldr	r2, .L41+16
.LPIC14:
	add	r2, pc, r2
	ldr	r1, .L41+20
.LPIC15:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-28]
	b	.L18
.L17:
	.loc 1 141 5 is_stmt 1
	ldr	r3, [fp, #-60]
	cmp	r3, #0
	bne	.L19
	.loc 1 141 5 is_stmt 0 discriminator 1
	ldr	r3, .L41+24
.LPIC16:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L41+28
.LPIC17:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #141
	ldr	r2, .L41+32
.LPIC18:
	add	r2, pc, r2
	ldr	r1, .L41+36
.LPIC19:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-28]
	b	.L18
.L19:
	.loc 1 146 5 is_stmt 1
	ldr	r3, [fp, #4]
	cmp	r3, #0
	bne	.L20
	.loc 1 146 5 is_stmt 0 discriminator 1
	ldr	r3, .L41+40
.LPIC20:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L41+44
.LPIC21:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #146
	ldr	r2, .L41+48
.LPIC22:
	add	r2, pc, r2
	ldr	r1, .L41+52
.LPIC23:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-28]
	b	.L18
.L20:
	.loc 1 151 5 is_stmt 1
	ldr	r0, [fp, #-52]
	bl	ValidEEPDevDesc(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L21
	.loc 1 151 5 is_stmt 0 discriminator 1
	ldr	r3, .L41+56
.LPIC24:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L41+60
.LPIC25:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #151
	ldr	r2, .L41+64
.LPIC26:
	add	r2, pc, r2
	ldr	r1, .L41+68
.LPIC27:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-28]
	b	.L18
.L21:
	.loc 1 157 5 is_stmt 1
	ldr	r2, [fp, #-56]
	ldr	r3, [fp, #4]
	add	r2, r2, r3
	ldr	r3, [fp, #-52]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bls	.L22
	.loc 1 157 5 is_stmt 0 discriminator 1
	ldr	r3, .L41+72
.LPIC28:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L41+76
.LPIC29:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #157
	ldr	r2, .L41+80
.LPIC30:
	add	r2, pc, r2
	ldr	r1, .L41+84
.LPIC31:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-28]
	b	.L18
.L22:
	.loc 1 164 18 is_stmt 1
	ldr	r2, [fp, #-56]
	ldr	r3, [fp, #4]
	add	r2, r2, r3
	.loc 1 164 33
	ldr	r3, [fp, #-52]
	ldr	r3, [r3, #8]
	.loc 1 164 7
	cmp	r2, r3
	bls	.L23
	.loc 1 166 21
	ldr	r3, [fp, #-52]
	ldr	r2, [r3, #8]
	.loc 1 166 14
	ldr	r3, [fp, #-56]
	sub	r3, r2, r3
	str	r3, [fp, #4]
.L23:
	.loc 1 189 16
	sub	r3, fp, #40
	mov	r1, r3
	ldr	r0, [fp, #-48]
	bl	EApiI2CGetBusCap(PLT)
	str	r0, [fp, #-28]
	.loc 1 190 7
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L38
	.loc 1 193 20
	ldr	r2, [fp, #-56]
	ldr	r3, [fp, #4]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	.loc 1 200 18
	ldr	r3, [fp, #-52]
	ldrh	r3, [r3]
	uxtb	r2, r3
	ldr	r3, [fp, #-52]
	ldrh	r3, [r3]
	lsr	r3, r3, #1
	uxth	r3, r3
	and	r3, r3, #768
	orr	r3, r2, r3
	.loc 1 200 63
	cmp	r3, #0
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	.loc 1 200 73
	ldr	r3, [fp, #-52]
	ldrh	r3, [r3, #4]
	.loc 1 200 66
	add	r3, r2, r3
	.loc 1 200 16
	str	r3, [fp, #-24]
	.loc 1 205 39
	ldr	r3, [fp, #-52]
	ldrh	r3, [r3, #2]
	mov	r2, r3
	.loc 1 205 49
	ldr	r3, [fp, #-24]
	add	r2, r2, r3
	.loc 1 205 31
	ldr	r3, [fp, #-40]
	.loc 1 205 88
	cmp	r2, r3
	bls	.L26
	.loc 1 205 76 discriminator 1
	ldr	r2, [fp, #-40]
	.loc 1 205 88 discriminator 1
	ldr	r3, [fp, #-24]
	sub	r3, r2, r3
	b	.L27
.L26:
	.loc 1 205 95 discriminator 2
	ldr	r3, [fp, #-52]
	ldrh	r3, [r3, #2]
.L27:
	.loc 1 205 16 discriminator 4
	str	r3, [fp, #-24]
	.loc 1 207 14 discriminator 4
	ldr	r3, [fp, #-52]
	ldrh	r3, [r3, #4]
	.loc 1 207 7 discriminator 4
	cmp	r3, #2
	bne	.L28
	.loc 1 209 18
	ldr	r3, [fp, #-24]
	cmp	r3, #65536
	movcc	r3, r3
	movcs	r3, #65536
	str	r3, [fp, #-24]
	b	.L29
.L28:
	.loc 1 212 18
	ldr	r3, [fp, #-24]
	cmp	r3, #256
	movcc	r3, r3
	movcs	r3, #256
	str	r3, [fp, #-24]
.L29:
	.loc 1 213 14
	ldr	r3, [fp, #-56]
	str	r3, [fp, #-20]
	.loc 1 214 19
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-12]
	.loc 1 215 10
	b	.L30
.L35:
	.loc 1 219 19
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	.loc 1 219 9
	ldr	r2, [fp, #-16]
	cmp	r2, r3
	bcs	.L31
	.loc 1 220 20
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	sub	r3, r2, r3
	str	r3, [fp, #-24]
.L31:
	.loc 1 269 28
	ldr	r3, [fp, #-52]
	ldrh	r3, [r3, #2]
	mov	r2, r3
	.loc 1 269 21
	ldr	r3, [fp, #-20]
	mov	r1, r2
	mov	r0, r3
	bl	__aeabi_uidivmod(PLT)
	mov	r3, r1
	mov	r2, r3
	.loc 1 269 39
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	.loc 1 269 59
	ldr	r2, [fp, #-52]
	ldrh	r2, [r2, #2]
	.loc 1 269 9
	cmp	r3, r2
	bls	.L32
	.loc 1 270 32
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-24]
	add	r2, r2, r3
	.loc 1 270 52
	ldr	r3, [fp, #-52]
	ldrh	r3, [r3, #2]
	.loc 1 270 45
	mov	r1, r3
	mov	r0, r2
	bl	__aeabi_uidivmod(PLT)
	mov	r3, r1
	mov	r2, r3
	.loc 1 270 20
	ldr	r3, [fp, #-24]
	sub	r3, r3, r2
	str	r3, [fp, #-24]
.L32:
	.loc 1 273 18
	sub	r3, fp, #32
	sub	r2, fp, #36
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-52]
	bl	EApiAHI2CCCreateAddrOffset(PLT)
	str	r0, [fp, #-28]
	.loc 1 274 9
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L39
	.loc 1 277 18
	ldr	r1, [fp, #-36]
	ldr	r0, [fp, #-32]
	.loc 1 281 41
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-56]
	sub	r3, r2, r3
	.loc 1 277 18
	ldr	r2, [fp, #-60]
	add	r2, r2, r3
	ldr	r3, [fp, #-24]
	str	r3, [sp]
	mov	r3, r2
	mov	r2, r0
	ldr	r0, [fp, #-48]
	bl	EApiI2CWriteTransfer(PLT)
	str	r0, [fp, #-28]
	.loc 1 284 9
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L40
	.loc 1 286 16
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-20]
	.loc 1 287 18
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-24]
	.loc 1 288 16
	ldr	r3, [fp, #-52]
	ldrh	r3, [r3, #6]
	.loc 1 288 9
	cmp	r3, #0
	beq	.L30
	.loc 1 289 9
	ldr	r3, [fp, #-52]
	ldrh	r3, [r3, #6]
	mov	r2, r3
	mov	r3, #1000
	mul	r3, r3, r2
	mov	r0, r3
	bl	usleep(PLT)
.L30:
	.loc 1 215 20
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	bcc	.L35
	.loc 1 291 1
	b	.L18
.L25:
.L38:
	.loc 1 191 7
	nop
	b	.L18
.L39:
	.loc 1 275 9
	nop
	b	.L18
.L40:
	.loc 1 285 9
	nop
.L18:
	.loc 1 293 10
	ldr	r3, [fp, #-28]
	.loc 1 126 1
	ldr	r1, .L41+88
.LPIC33:
	add	r1, pc, r1
	.loc 1 294 1
	ldr	r2, .L41+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L37
	bl	__stack_chk_fail(PLT)
.L37:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L42:
	.align	2
.L41:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC32+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC2-(.LPIC12+8)
	.word	.LC3-(.LPIC13+8)
	.word	.LC6-(.LPIC14+8)
	.word	.LC1-(.LPIC15+8)
	.word	.LC7-(.LPIC16+8)
	.word	.LC3-(.LPIC17+8)
	.word	.LC6-(.LPIC18+8)
	.word	.LC1-(.LPIC19+8)
	.word	.LC8-(.LPIC20+8)
	.word	.LC3-(.LPIC21+8)
	.word	.LC6-(.LPIC22+8)
	.word	.LC1-(.LPIC23+8)
	.word	.LC9-(.LPIC24+8)
	.word	.LC3-(.LPIC25+8)
	.word	.LC6-(.LPIC26+8)
	.word	.LC1-(.LPIC27+8)
	.word	.LC10-(.LPIC28+8)
	.word	.LC3-(.LPIC29+8)
	.word	.LC6-(.LPIC30+8)
	.word	.LC1-(.LPIC31+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC33+8)
	.cfi_endproc
.LFE3:
	.size	EApiAHI2CWriteEeprom, .-EApiAHI2CWriteEeprom
	.section	.rodata
	.align	2
.LC11:
	.ascii	"EApiAHI2CReadEeprom\000"
	.align	2
.LC12:
	.ascii	"(BufLength==0)\000"
	.align	2
.LC13:
	.ascii	" pBuffer Overflow PreventedByteCnt>BufLength\000"
	.text
	.align	2
	.global	EApiAHI2CReadEeprom
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiAHI2CReadEeprom, %function
EApiAHI2CReadEeprom:
.LFB4:
	.loc 1 304 1
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 48
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
	.loc 1 304 1
	ldr	r2, .L67
.LPIC62:
	add	r2, pc, r2
	ldr	r3, .L67+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 305 18
	mov	r3, #0
	str	r3, [fp, #-24]
	.loc 1 313 5
	ldr	r3, [fp, #-44]
	cmp	r3, #0
	bne	.L44
	.loc 1 313 5 is_stmt 0 discriminator 1
	ldr	r3, .L67+8
.LPIC34:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L67+12
.LPIC35:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #313
	ldr	r2, .L67+16
.LPIC36:
	add	r2, pc, r2
	ldr	r1, .L67+20
.LPIC37:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-24]
	b	.L45
.L44:
	.loc 1 318 5 is_stmt 1
	ldr	r3, [fp, #-52]
	cmp	r3, #0
	bne	.L46
	.loc 1 318 5 is_stmt 0 discriminator 1
	ldr	r3, .L67+24
.LPIC38:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L67+28
.LPIC39:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #318
	ldr	r2, .L67+32
.LPIC40:
	add	r2, pc, r2
	ldr	r1, .L67+36
.LPIC41:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-24]
	b	.L45
.L46:
	.loc 1 323 5 is_stmt 1
	ldr	r3, [fp, #4]
	cmp	r3, #0
	bne	.L47
	.loc 1 323 5 is_stmt 0 discriminator 1
	ldr	r3, .L67+40
.LPIC42:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L67+44
.LPIC43:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #323
	ldr	r2, .L67+48
.LPIC44:
	add	r2, pc, r2
	ldr	r1, .L67+52
.LPIC45:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-24]
	b	.L45
.L47:
	.loc 1 328 5 is_stmt 1
	ldr	r3, [fp, #8]
	cmp	r3, #0
	bne	.L48
	.loc 1 328 5 is_stmt 0 discriminator 1
	ldr	r3, .L67+56
.LPIC46:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L67+60
.LPIC47:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #328
	ldr	r2, .L67+64
.LPIC48:
	add	r2, pc, r2
	ldr	r1, .L67+68
.LPIC49:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-24]
	b	.L45
.L48:
	.loc 1 333 5 is_stmt 1
	ldr	r2, [fp, #8]
	ldr	r3, [fp, #4]
	cmp	r2, r3
	bls	.L49
	.loc 1 333 5 is_stmt 0 discriminator 1
	ldr	r3, .L67+72
.LPIC50:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L67+76
.LPIC51:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #1536
	str	r3, [sp]
	movw	r3, #333
	ldr	r2, .L67+80
.LPIC52:
	add	r2, pc, r2
	ldr	r1, .L67+84
.LPIC53:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	ldr	r3, [fp, #4]
	str	r3, [fp, #8]
.L49:
	.loc 1 338 5 is_stmt 1
	ldr	r0, [fp, #-44]
	bl	ValidEEPDevDesc(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L50
	.loc 1 338 5 is_stmt 0 discriminator 1
	ldr	r3, .L67+88
.LPIC54:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L67+92
.LPIC55:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #338
	ldr	r2, .L67+96
.LPIC56:
	add	r2, pc, r2
	ldr	r1, .L67+100
.LPIC57:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-24]
	b	.L45
.L50:
	.loc 1 344 5 is_stmt 1
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #8]
	add	r2, r2, r3
	ldr	r3, [fp, #-44]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bls	.L51
	.loc 1 344 5 is_stmt 0 discriminator 1
	ldr	r3, .L67+104
.LPIC58:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L67+108
.LPIC59:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #344
	ldr	r2, .L67+112
.LPIC60:
	add	r2, pc, r2
	ldr	r1, .L67+116
.LPIC61:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-24]
	b	.L45
.L51:
	.loc 1 351 18 is_stmt 1
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #8]
	add	r2, r2, r3
	.loc 1 351 33
	ldr	r3, [fp, #-44]
	ldr	r3, [r3, #8]
	.loc 1 351 7
	cmp	r2, r3
	bls	.L52
	.loc 1 353 21
	ldr	r3, [fp, #-44]
	ldr	r2, [r3, #8]
	.loc 1 353 14
	ldr	r3, [fp, #-48]
	sub	r3, r2, r3
	str	r3, [fp, #8]
.L52:
	.loc 1 358 16
	sub	r3, fp, #36
	mov	r1, r3
	ldr	r0, [fp, #-40]
	bl	EApiI2CGetBusCap(PLT)
	str	r0, [fp, #-24]
	.loc 1 359 7
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L64
	.loc 1 362 20
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #8]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	.loc 1 364 14
	ldr	r3, [fp, #-44]
	ldrh	r3, [r3, #4]
	.loc 1 364 7
	cmp	r3, #2
	bne	.L55
	.loc 1 366 55
	ldr	r3, [fp, #-36]
	.loc 1 366 18
	cmp	r3, #65536
	movcc	r3, r3
	movcs	r3, #65536
	str	r3, [fp, #-20]
	b	.L56
.L55:
	.loc 1 369 53
	ldr	r3, [fp, #-36]
	.loc 1 369 18
	cmp	r3, #256
	movcc	r3, r3
	movcs	r3, #256
	str	r3, [fp, #-20]
.L56:
	.loc 1 370 14
	ldr	r3, [fp, #-48]
	str	r3, [fp, #-16]
	.loc 1 371 10
	b	.L57
.L61:
	.loc 1 374 19
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	.loc 1 374 9
	ldr	r2, [fp, #-12]
	cmp	r2, r3
	bcs	.L58
	.loc 1 375 20
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-16]
	sub	r3, r2, r3
	str	r3, [fp, #-20]
.L58:
	.loc 1 378 18
	sub	r3, fp, #28
	sub	r2, fp, #32
	ldr	r1, [fp, #-16]
	ldr	r0, [fp, #-44]
	bl	EApiAHI2CCCreateAddrOffset(PLT)
	str	r0, [fp, #-24]
	.loc 1 379 9
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L65
	.loc 1 382 18
	ldr	r1, [fp, #-32]
	ldr	r0, [fp, #-28]
	.loc 1 386 41
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-48]
	sub	r3, r2, r3
	.loc 1 382 18
	ldr	r2, [fp, #-52]
	add	r2, r2, r3
	ldr	r3, [fp, #-20]
	str	r3, [sp, #4]
	ldr	r3, [fp, #-20]
	str	r3, [sp]
	mov	r3, r2
	mov	r2, r0
	ldr	r0, [fp, #-40]
	bl	EApiI2CReadTransfer(PLT)
	str	r0, [fp, #-24]
	.loc 1 390 9
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L66
	.loc 1 392 16
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-16]
.L57:
	.loc 1 371 20
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-12]
	cmp	r2, r3
	bcc	.L61
	.loc 1 396 1
	b	.L45
.L54:
.L64:
	.loc 1 360 7
	nop
	b	.L45
.L65:
	.loc 1 380 9
	nop
	b	.L45
.L66:
	.loc 1 391 9
	nop
.L45:
	.loc 1 398 10
	ldr	r3, [fp, #-24]
	.loc 1 304 1
	ldr	r1, .L67+120
.LPIC63:
	add	r1, pc, r1
	.loc 1 399 1
	ldr	r2, .L67+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L63
	bl	__stack_chk_fail(PLT)
.L63:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L68:
	.align	2
.L67:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC62+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC2-(.LPIC34+8)
	.word	.LC3-(.LPIC35+8)
	.word	.LC11-(.LPIC36+8)
	.word	.LC1-(.LPIC37+8)
	.word	.LC7-(.LPIC38+8)
	.word	.LC3-(.LPIC39+8)
	.word	.LC11-(.LPIC40+8)
	.word	.LC1-(.LPIC41+8)
	.word	.LC12-(.LPIC42+8)
	.word	.LC3-(.LPIC43+8)
	.word	.LC11-(.LPIC44+8)
	.word	.LC1-(.LPIC45+8)
	.word	.LC8-(.LPIC46+8)
	.word	.LC3-(.LPIC47+8)
	.word	.LC11-(.LPIC48+8)
	.word	.LC1-(.LPIC49+8)
	.word	.LC13-(.LPIC50+8)
	.word	.LC3-(.LPIC51+8)
	.word	.LC11-(.LPIC52+8)
	.word	.LC1-(.LPIC53+8)
	.word	.LC9-(.LPIC54+8)
	.word	.LC3-(.LPIC55+8)
	.word	.LC11-(.LPIC56+8)
	.word	.LC1-(.LPIC57+8)
	.word	.LC10-(.LPIC58+8)
	.word	.LC3-(.LPIC59+8)
	.word	.LC11-(.LPIC60+8)
	.word	.LC1-(.LPIC61+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC63+8)
	.cfi_endproc
.LFE4:
	.size	EApiAHI2CReadEeprom, .-EApiAHI2CReadEeprom
.Letext0:
	.file 2 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/bits/alltypes.h"
	.file 3 "../../../include/EApi.h"
	.file 4 "../../include/EApiAHI2C.h"
	.file 5 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/unistd.h"
	.file 6 "../../include/DbgChk.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x4be
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x10
	.4byte	.LASF56
	.byte	0xc
	.4byte	.LASF57
	.4byte	.LASF58
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2b
	.byte	0x18
	.4byte	0x26
	.uleb128 0x9
	.4byte	0x2d
	.uleb128 0x11
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x9
	.4byte	0x53
	.uleb128 0x12
	.byte	0x4
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x30
	.byte	0x18
	.4byte	0x26
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x59
	.byte	0x19
	.4byte	0x80
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x2
	.byte	0x72
	.byte	0x19
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x2
	.byte	0x77
	.byte	0x19
	.4byte	0xad
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x2
	.byte	0x7c
	.byte	0x19
	.4byte	0x26
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0xa
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x91
	.byte	0x12
	.4byte	0xb4
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0x92
	.byte	0x12
	.4byte	0xb4
	.uleb128 0x13
	.4byte	.LASF59
	.byte	0x7
	.byte	0x4
	.4byte	0x26
	.byte	0x4
	.byte	0x2d
	.byte	0x6
	.4byte	0x10a
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF20
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x4
	.byte	0x31
	.byte	0x12
	.4byte	0xa1
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0xc
	.byte	0x4
	.byte	0x33
	.byte	0x10
	.4byte	0x15b
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x34
	.4byte	0xa1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x35
	.4byte	0xa1
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x36
	.4byte	0x10a
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x37
	.4byte	0xa1
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x38
	.4byte	0xb4
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x4
	.byte	0x39
	.byte	0x2
	.4byte	0x116
	.uleb128 0x9
	.4byte	0x15b
	.uleb128 0xc
	.4byte	.LASF28
	.2byte	0x398
	.4byte	0xd3
	.4byte	0x19a
	.uleb128 0x1
	.4byte	0xdf
	.uleb128 0x1
	.4byte	0xb4
	.uleb128 0x1
	.4byte	0xb4
	.uleb128 0x1
	.4byte	0x5f
	.uleb128 0x1
	.4byte	0xb4
	.uleb128 0x1
	.4byte	0xb4
	.byte	0
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x5
	.byte	0x97
	.byte	0x5
	.4byte	0x3e
	.4byte	0x1b0
	.uleb128 0x1
	.4byte	0x26
	.byte	0
	.uleb128 0xc
	.4byte	.LASF30
	.2byte	0x3be
	.4byte	0xd3
	.4byte	0x1d9
	.uleb128 0x1
	.4byte	0xdf
	.uleb128 0x1
	.4byte	0xb4
	.uleb128 0x1
	.4byte	0xb4
	.uleb128 0x1
	.4byte	0x5f
	.uleb128 0x1
	.4byte	0xb4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF31
	.2byte	0x2e0
	.4byte	0xd3
	.4byte	0x1f3
	.uleb128 0x1
	.4byte	0xdf
	.uleb128 0x1
	.4byte	0x1f3
	.byte	0
	.uleb128 0xa
	.4byte	0xb4
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x6
	.byte	0x3e
	.byte	0x1
	.4byte	0x3e
	.4byte	0x228
	.uleb128 0x1
	.4byte	0x53
	.uleb128 0x1
	.4byte	0xc7
	.uleb128 0x1
	.4byte	0xc7
	.uleb128 0x1
	.4byte	0x26
	.uleb128 0x1
	.4byte	0xd3
	.uleb128 0x1
	.4byte	0xc7
	.uleb128 0x15
	.byte	0
	.uleb128 0x16
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x128
	.byte	0x1
	.4byte	0xd3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x31d
	.uleb128 0x17
	.ascii	"Id\000"
	.byte	0x1
	.2byte	0x129
	.byte	0x20
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.4byte	.LASF33
	.2byte	0x12a
	.byte	0x27
	.4byte	0x322
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.4byte	.LASF34
	.2byte	0x12b
	.byte	0x20
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.4byte	.LASF35
	.2byte	0x12c
	.byte	0x20
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.4byte	.LASF36
	.2byte	0x12d
	.byte	0x20
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF37
	.2byte	0x12e
	.byte	0x20
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x6
	.4byte	.LASF38
	.2byte	0x131
	.byte	0x12
	.4byte	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF39
	.2byte	0x132
	.byte	0xe
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF40
	.2byte	0x133
	.byte	0xe
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x6
	.4byte	.LASF41
	.2byte	0x134
	.byte	0xe
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF42
	.2byte	0x135
	.byte	0xe
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF43
	.2byte	0x136
	.byte	0xe
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF44
	.2byte	0x137
	.byte	0xe
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.4byte	.LASF45
	.2byte	0x18d
	.4byte	.L45
	.uleb128 0xb
	.4byte	.LASF46
	.2byte	0x18c
	.4byte	.L54
	.byte	0
	.uleb128 0xa
	.4byte	0x167
	.uleb128 0x9
	.4byte	0x31d
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x77
	.4byte	0xd3
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x40c
	.uleb128 0x18
	.ascii	"Id\000"
	.byte	0x1
	.byte	0x78
	.byte	0x21
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.4byte	.LASF33
	.byte	0x79
	.byte	0x27
	.4byte	0x322
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.4byte	.LASF34
	.byte	0x7a
	.byte	0x21
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x5
	.4byte	.LASF35
	.byte	0x7b
	.byte	0x21
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x5
	.4byte	.LASF37
	.byte	0x7c
	.byte	0x21
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x7f
	.byte	0x12
	.4byte	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x80
	.byte	0xe
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x81
	.byte	0xc
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x82
	.byte	0xc
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x83
	.byte	0xc
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x84
	.byte	0xc
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x85
	.byte	0xc
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x86
	.byte	0xc
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.4byte	.LASF45
	.2byte	0x124
	.4byte	.L18
	.uleb128 0xb
	.4byte	.LASF46
	.2byte	0x123
	.4byte	.L25
	.byte	0
	.uleb128 0x19
	.4byte	.LASF50
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.4byte	0xd3
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x451
	.uleb128 0x5
	.4byte	.LASF33
	.byte	0x5c
	.byte	0x27
	.4byte	0x322
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x5f
	.byte	0x12
	.4byte	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0x60
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0x27
	.4byte	0xd3
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4bc
	.uleb128 0x5
	.4byte	.LASF33
	.byte	0x28
	.byte	0x28
	.4byte	0x322
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF53
	.byte	0x29
	.byte	0x28
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF54
	.byte	0x2a
	.byte	0x28
	.4byte	0x4bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LASF55
	.byte	0x2b
	.byte	0x28
	.4byte	0x4bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x2e
	.byte	0x12
	.4byte	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1a
	.4byte	.LASF45
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.4byte	.L3
	.byte	0
	.uleb128 0xa
	.4byte	0x2d
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
	.uleb128 0x3
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.sleb128 19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x5
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
	.uleb128 0x17
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1a
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
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
	.ascii	"pEncAddr\000"
.LASF34:
	.ascii	"ByteOffset\000"
.LASF29:
	.ascii	"usleep\000"
.LASF7:
	.ascii	"int8_t\000"
.LASF41:
	.ascii	"BlockLength\000"
.LASF57:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux/../../common/EApiAHI2C.c\000"
.LASF9:
	.ascii	"short int\000"
.LASF5:
	.ascii	"size_t\000"
.LASF52:
	.ascii	"EApiAHI2CCCreateAddrOffset\000"
.LASF47:
	.ascii	"EApiAHI2CReadEeprom\000"
.LASF10:
	.ascii	"uint8_t\000"
.LASF6:
	.ascii	"uintptr_t\000"
.LASF20:
	.ascii	"EApiAPI2CExtIndex\000"
.LASF2:
	.ascii	"long long int\000"
.LASF43:
	.ascii	"EncAddr\000"
.LASF1:
	.ascii	"long int\000"
.LASF18:
	.ascii	"EApiId_t\000"
.LASF35:
	.ascii	"pBuffer\000"
.LASF36:
	.ascii	"BufLength\000"
.LASF37:
	.ascii	"ByteCnt\000"
.LASF33:
	.ascii	"pDDesc\000"
.LASF32:
	.ascii	"siFormattedMessage_SC\000"
.LASF26:
	.ascii	"DevSize\000"
.LASF17:
	.ascii	"EApiStatus_t\000"
.LASF11:
	.ascii	"unsigned char\000"
.LASF55:
	.ascii	"pEncOffset\000"
.LASF45:
	.ascii	"ExitPoint\000"
.LASF8:
	.ascii	"signed char\000"
.LASF15:
	.ascii	"long long unsigned int\000"
.LASF14:
	.ascii	"uint32_t\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF12:
	.ascii	"uint16_t\000"
.LASF30:
	.ascii	"EApiI2CWriteTransfer\000"
.LASF19:
	.ascii	"EApiAPI2CStdIndex\000"
.LASF53:
	.ascii	"Offset\000"
.LASF13:
	.ascii	"short unsigned int\000"
.LASF50:
	.ascii	"ValidEEPDevDesc\000"
.LASF3:
	.ascii	"char\000"
.LASF56:
	.ascii	"GNU C99 11.2.0 -mcpu=cortex-a9 -mfloat-abi=hard -mf"
	.ascii	"pu=vfpv3 -mabi=aapcs-linux -mtls-dialect=gnu -marm "
	.ascii	"-march=armv7-a+mp+sec+vfpv3 -g -O0 -std=gnu99 -fsta"
	.ascii	"ck-protector-strong -fPIE\000"
.LASF38:
	.ascii	"StatusCode\000"
.LASF60:
	.ascii	"I2CDeviceDesc_s\000"
.LASF27:
	.ascii	"I2CDeviceDesc_t\000"
.LASF24:
	.ascii	"ExtIndx\000"
.LASF48:
	.ascii	"EApiAHI2CWriteEeprom\000"
.LASF40:
	.ascii	"BlockEndAddress\000"
.LASF16:
	.ascii	"long unsigned int\000"
.LASF4:
	.ascii	"double\000"
.LASF51:
	.ascii	"AddrCnt\000"
.LASF49:
	.ascii	"BlockLengthStd\000"
.LASF31:
	.ascii	"EApiI2CGetBusCap\000"
.LASF23:
	.ascii	"PageSize\000"
.LASF46:
	.ascii	"ErrorExit\000"
.LASF58:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux\000"
.LASF42:
	.ascii	"CurOffset\000"
.LASF22:
	.ascii	"DeviceAddr\000"
.LASF44:
	.ascii	"EncOffset\000"
.LASF25:
	.ascii	"WRecTimems\000"
.LASF28:
	.ascii	"EApiI2CReadTransfer\000"
.LASF59:
	.ascii	"EApiCmdTypes_e\000"
.LASF39:
	.ascii	"IntMaxBlckLen\000"
.LASF21:
	.ascii	"EApiCmdTypes_t\000"
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
