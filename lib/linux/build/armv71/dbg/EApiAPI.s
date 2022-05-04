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
	.file	"EApiAPI.cpp"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.hidden	Initialized
	.global	Initialized
	.bss
	.align	2
	.type	Initialized, %object
	.size	Initialized, 4
Initialized:
	.space	4
	.section	.rodata
	.align	2
.LC0:
	.ascii	"EApiI2CGetBusCap\000"
	.align	2
.LC1:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EA"
	.ascii	"piAPI.cpp\000"
	.align	2
.LC2:
	.ascii	"Library Uninitialized\000"
	.align	2
.LC3:
	.ascii	"%s\012\000"
	.align	2
.LC4:
	.ascii	"(pMaxBlkLen==NULL)\000"
	.text
	.align	2
	.global	EApiI2CGetBusCap
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiI2CGetBusCap, %function
EApiI2CGetBusCap:
.LFB1:
	.file 1 "/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EApiAPI.cpp"
	.loc 1 74 1
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
	.loc 1 76 3
	ldr	r3, .L6
.LPIC0:
	add	r3, pc, r3
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L2
	.loc 1 76 3 is_stmt 0 discriminator 1
	ldr	r3, .L6+4
.LPIC1:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L6+8
.LPIC2:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	mov	r3, #76
	ldr	r2, .L6+12
.LPIC3:
	add	r2, pc, r2
	ldr	r1, .L6+16
.LPIC4:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-8]
	b	.L3
.L2:
	.loc 1 77 3 is_stmt 1
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L4
	.loc 1 77 3 is_stmt 0 discriminator 1
	ldr	r3, .L6+20
.LPIC5:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L6+24
.LPIC6:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #77
	ldr	r2, .L6+28
.LPIC7:
	add	r2, pc, r2
	ldr	r1, .L6+32
.LPIC8:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-8]
	b	.L3
.L4:
	.loc 1 79 14 is_stmt 1
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	EApiI2CGetBusCapEmul(PLT)
	str	r0, [fp, #-8]
.L3:
	.loc 1 81 10
	ldr	r3, [fp, #-8]
	.loc 1 82 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L7:
	.align	2
.L6:
	.word	Initialized-(.LPIC0+8)
	.word	.LC2-(.LPIC1+8)
	.word	.LC3-(.LPIC2+8)
	.word	.LC0-(.LPIC3+8)
	.word	.LC1-(.LPIC4+8)
	.word	.LC4-(.LPIC5+8)
	.word	.LC3-(.LPIC6+8)
	.word	.LC0-(.LPIC7+8)
	.word	.LC1-(.LPIC8+8)
	.cfi_endproc
.LFE1:
	.size	EApiI2CGetBusCap, .-EApiI2CGetBusCap
	.section	.rodata
	.align	2
.LC5:
	.ascii	"EApiI2CWriteReadRaw\000"
	.align	2
.LC6:
	.ascii	"pWBuffer is NULL\000"
	.align	2
.LC7:
	.ascii	"EApiI2CWriteTransfer\000"
	.align	2
.LC8:
	.ascii	"ADDR=%02X WriteBCnt=%04X RBufLen=%04X WriteBCnt=%04"
	.ascii	"X ReadBCnt=%04X %08X\012\000"
	.align	2
.LC9:
	.ascii	"Info\000"
	.align	2
.LC10:
	.ascii	"pRBuffer is NULL\000"
	.align	2
.LC11:
	.ascii	"RBufLen is ZERO\000"
	.align	2
.LC12:
	.ascii	"NO READ NO WRITE\000"
	.align	2
.LC13:
	.ascii	" pBuffer Overflow PreventedReadBCnt>RBufLen+1\000"
	.text
	.align	2
	.global	EApiI2CWriteReadRaw
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiI2CWriteReadRaw, %function
EApiI2CWriteReadRaw:
.LFB2:
	.loc 1 101 1
	.cfi_startproc
	@ args = 12, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #56
	str	r0, [fp, #-16]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	mov	r3, r1
	strb	r3, [fp, #-17]
	.loc 1 102 16
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 104 3
	ldr	r3, .L20
.LPIC9:
	add	r3, pc, r3
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L9
	.loc 1 104 3 is_stmt 0 discriminator 1
	ldr	r3, .L20+4
.LPIC10:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L20+8
.LPIC11:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	mov	r3, #104
	ldr	r2, .L20+12
.LPIC12:
	add	r2, pc, r2
	ldr	r1, .L20+16
.LPIC13:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-12]
	b	.L10
.L9:
	.loc 1 105 3 is_stmt 1
	ldr	r3, [fp, #-28]
	cmp	r3, #1
	bls	.L11
	.loc 1 105 3 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L11
	.loc 1 105 3 discriminator 2
	ldr	r3, .L20+20
.LPIC14:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L20+24
.LPIC15:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #105
	ldr	r2, .L20+28
.LPIC16:
	add	r2, pc, r2
	ldr	r1, .L20+32
.LPIC17:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-12]
	b	.L10
.L11:
	.loc 1 111 3 is_stmt 1
	ldrb	r2, [fp, #-17]	@ zero_extendqisi2
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	beq	.L12
	.loc 1 111 3 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-24]
	ldr	r3, [r3]
	b	.L13
.L12:
	.loc 1 111 3 discriminator 2
	mov	r3, #0
.L13:
	.loc 1 111 3 discriminator 4
	str	r3, [sp, #28]
	ldr	r3, [fp, #12]
	str	r3, [sp, #24]
	ldr	r3, [fp, #-28]
	str	r3, [sp, #20]
	ldr	r3, [fp, #8]
	str	r3, [sp, #16]
	ldr	r3, [fp, #-28]
	str	r3, [sp, #12]
	str	r2, [sp, #8]
	ldr	r3, .L20+36
.LPIC18:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, .L20+40
.LPIC19:
	add	r3, pc, r3
	str	r3, [sp]
	mov	r3, #115
	ldr	r2, .L20+44
.LPIC20:
	add	r2, pc, r2
	ldr	r1, .L20+48
.LPIC21:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_M2(PLT)
	.loc 1 124 3 is_stmt 1 discriminator 4
	ldr	r3, [fp, #12]
	cmp	r3, #1
	bls	.L14
	.loc 1 124 3 is_stmt 0 discriminator 1
	ldr	r3, [fp, #4]
	cmp	r3, #0
	bne	.L14
	.loc 1 124 3 discriminator 2
	ldr	r3, .L20+52
.LPIC22:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L20+56
.LPIC23:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #124
	ldr	r2, .L20+60
.LPIC24:
	add	r2, pc, r2
	ldr	r1, .L20+64
.LPIC25:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-12]
	b	.L10
.L14:
	.loc 1 129 3 is_stmt 1
	ldr	r3, [fp, #12]
	cmp	r3, #1
	bls	.L15
	.loc 1 129 3 is_stmt 0 discriminator 1
	ldr	r3, [fp, #8]
	cmp	r3, #0
	bne	.L15
	.loc 1 129 3 discriminator 2
	ldr	r3, .L20+68
.LPIC26:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L20+72
.LPIC27:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #129
	ldr	r2, .L20+76
.LPIC28:
	add	r2, pc, r2
	ldr	r1, .L20+80
.LPIC29:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-12]
	b	.L10
.L15:
	.loc 1 134 3 is_stmt 1
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L16
	.loc 1 134 3 is_stmt 0 discriminator 1
	ldr	r3, [fp, #12]
	cmp	r3, #0
	bne	.L16
	.loc 1 134 3 discriminator 2
	ldr	r3, .L20+84
.LPIC30:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L20+88
.LPIC31:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #134
	ldr	r2, .L20+92
.LPIC32:
	add	r2, pc, r2
	ldr	r1, .L20+96
.LPIC33:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-12]
	b	.L10
.L16:
	.loc 1 140 3 is_stmt 1
	ldr	r3, [fp, #8]
	add	r3, r3, #1
	ldr	r2, [fp, #12]
	cmp	r2, r3
	bls	.L17
	.loc 1 140 3 is_stmt 0 discriminator 1
	ldr	r3, .L20+100
.LPIC34:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L20+104
.LPIC35:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #1536
	str	r3, [sp]
	mov	r3, #140
	ldr	r2, .L20+108
.LPIC36:
	add	r2, pc, r2
	ldr	r1, .L20+112
.LPIC37:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	ldr	r3, [fp, #8]
	add	r3, r3, #1
	str	r3, [fp, #12]
	mvn	r3, #1536
	str	r3, [fp, #-12]
.L17:
	.loc 1 146 14 is_stmt 1
	ldrb	r1, [fp, #-17]	@ zero_extendqisi2
	ldr	r3, [fp, #12]
	str	r3, [sp, #4]
	ldr	r3, [fp, #4]
	str	r3, [sp]
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-24]
	ldr	r0, [fp, #-16]
	bl	EApiI2CWriteReadEmul(PLT)
	str	r0, [fp, #-8]
	.loc 1 154 5
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L19
	.loc 1 155 15
	ldr	r3, [fp, #-8]
	str	r3, [fp, #-12]
	b	.L10
.L19:
	.loc 1 156 1
	nop
.L10:
	.loc 1 157 10
	ldr	r3, [fp, #-12]
	.loc 1 159 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L21:
	.align	2
.L20:
	.word	Initialized-(.LPIC9+8)
	.word	.LC2-(.LPIC10+8)
	.word	.LC3-(.LPIC11+8)
	.word	.LC5-(.LPIC12+8)
	.word	.LC1-(.LPIC13+8)
	.word	.LC6-(.LPIC14+8)
	.word	.LC3-(.LPIC15+8)
	.word	.LC5-(.LPIC16+8)
	.word	.LC1-(.LPIC17+8)
	.word	.LC8-(.LPIC18+8)
	.word	.LC9-(.LPIC19+8)
	.word	.LC7-(.LPIC20+8)
	.word	.LC1-(.LPIC21+8)
	.word	.LC10-(.LPIC22+8)
	.word	.LC3-(.LPIC23+8)
	.word	.LC5-(.LPIC24+8)
	.word	.LC1-(.LPIC25+8)
	.word	.LC11-(.LPIC26+8)
	.word	.LC3-(.LPIC27+8)
	.word	.LC5-(.LPIC28+8)
	.word	.LC1-(.LPIC29+8)
	.word	.LC12-(.LPIC30+8)
	.word	.LC3-(.LPIC31+8)
	.word	.LC5-(.LPIC32+8)
	.word	.LC1-(.LPIC33+8)
	.word	.LC13-(.LPIC34+8)
	.word	.LC3-(.LPIC35+8)
	.word	.LC5-(.LPIC36+8)
	.word	.LC1-(.LPIC37+8)
	.cfi_endproc
.LFE2:
	.size	EApiI2CWriteReadRaw, .-EApiI2CWriteReadRaw
	.section	.rodata
	.align	2
.LC14:
	.ascii	"EApiI2CReadTransfer\000"
	.align	2
.LC15:
	.ascii	"Id=%08X ADDR=%04X CMD=%04X BCNT=%04X\012\000"
	.align	2
.LC16:
	.ascii	"(pBuffer==NULL)\000"
	.align	2
.LC17:
	.ascii	"(BufLen==0)\000"
	.align	2
.LC18:
	.ascii	"(ByteCnt==0)\000"
	.align	2
.LC19:
	.ascii	" Transfer Length too long for interface\000"
	.text
	.align	2
	.global	EApiI2CReadTransfer
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiI2CReadTransfer, %function
EApiI2CReadTransfer:
.LFB3:
	.loc 1 174 1
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #64
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	str	r2, [fp, #-40]
	str	r3, [fp, #-44]
	.loc 1 174 1
	ldr	r2, .L35
.LPIC67:
	add	r2, pc, r2
	ldr	r3, .L35+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 175 16
	mov	r3, #0
	str	r3, [fp, #-24]
	.loc 1 176 11
	mov	r3, #0
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 177 7
	mov	r3, #0
	str	r3, [fp, #-20]
	.loc 1 181 3
	ldr	r3, .L35+8
.LPIC38:
	add	r3, pc, r3
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L23
	.loc 1 181 3 is_stmt 0 discriminator 1
	ldr	r3, .L35+12
.LPIC39:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L35+16
.LPIC40:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	mov	r3, #181
	ldr	r2, .L35+20
.LPIC41:
	add	r2, pc, r2
	ldr	r1, .L35+24
.LPIC42:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-24]
	b	.L24
.L23:
	.loc 1 184 3 is_stmt 1
	ldr	r3, [fp, #8]
	str	r3, [sp, #20]
	ldr	r3, [fp, #-40]
	str	r3, [sp, #16]
	ldr	r3, [fp, #-36]
	str	r3, [sp, #12]
	ldr	r3, [fp, #-32]
	str	r3, [sp, #8]
	ldr	r3, .L35+28
.LPIC43:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, .L35+32
.LPIC44:
	add	r3, pc, r3
	str	r3, [sp]
	mov	r3, #188
	ldr	r2, .L35+36
.LPIC45:
	add	r2, pc, r2
	ldr	r1, .L35+40
.LPIC46:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_M2(PLT)
	.loc 1 195 3
	ldr	r3, [fp, #-44]
	cmp	r3, #0
	bne	.L25
	.loc 1 195 3 is_stmt 0 discriminator 1
	ldr	r3, .L35+44
.LPIC47:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L35+48
.LPIC48:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #195
	ldr	r2, .L35+52
.LPIC49:
	add	r2, pc, r2
	ldr	r1, .L35+56
.LPIC50:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-24]
	b	.L24
.L25:
	.loc 1 196 3 is_stmt 1
	ldr	r3, [fp, #4]
	cmp	r3, #0
	bne	.L26
	.loc 1 196 3 is_stmt 0 discriminator 1
	ldr	r3, .L35+60
.LPIC51:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L35+64
.LPIC52:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #196
	ldr	r2, .L35+68
.LPIC53:
	add	r2, pc, r2
	ldr	r1, .L35+72
.LPIC54:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-24]
	b	.L24
.L26:
	.loc 1 197 3 is_stmt 1
	ldr	r3, [fp, #8]
	cmp	r3, #0
	bne	.L27
	.loc 1 197 3 is_stmt 0 discriminator 1
	ldr	r3, .L35+76
.LPIC55:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L35+80
.LPIC56:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #197
	ldr	r2, .L35+84
.LPIC57:
	add	r2, pc, r2
	ldr	r1, .L35+88
.LPIC58:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-24]
	b	.L24
.L27:
	.loc 1 198 3 is_stmt 1
	ldr	r3, [fp, #4]
	cmp	r3, #0
	bne	.L28
	.loc 1 198 3 is_stmt 0 discriminator 1
	ldr	r3, .L35+92
.LPIC59:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L35+96
.LPIC60:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #198
	ldr	r2, .L35+100
.LPIC61:
	add	r2, pc, r2
	ldr	r1, .L35+104
.LPIC62:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-24]
	b	.L24
.L28:
	.loc 1 201 5 is_stmt 1
	sub	r3, fp, #28
	mov	r1, r3
	ldr	r0, [fp, #-32]
	bl	EApiI2CGetBusCap(PLT)
	.loc 1 202 5
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #8]
	cmp	r2, r3
	bls	.L29
	.loc 1 202 5 is_stmt 0 discriminator 1
	ldr	r3, .L35+108
.LPIC63:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L35+112
.LPIC64:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #202
	ldr	r2, .L35+116
.LPIC65:
	add	r2, pc, r2
	ldr	r1, .L35+120
.LPIC66:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-24]
	b	.L24
.L29:
	.loc 1 209 6 is_stmt 1
	ldr	r3, [fp, #-36]
	and	r3, r3, #63488
	.loc 1 209 5
	cmp	r3, #61440
	bne	.L30
	.loc 1 211 26
	ldr	r3, [fp, #-20]
	add	r2, r3, #1
	str	r2, [fp, #-20]
	.loc 1 211 30
	ldr	r2, [fp, #-36]
	uxtb	r2, r2
	.loc 1 211 29
	sub	r3, r3, #4
	add	r3, r3, fp
	strb	r2, [r3, #-12]
	.loc 1 212 9
	ldr	r3, [fp, #-36]
	lsr	r3, r3, #8
	str	r3, [fp, #-36]
.L30:
	.loc 1 215 7
	ldr	r3, [fp, #-40]
	and	r3, r3, #-1073741824
	.loc 1 215 5
	cmp	r3, #1073741824
	beq	.L31
	.loc 1 216 8
	ldr	r3, [fp, #-40]
	and	r3, r3, #-1073741824
	.loc 1 216 7
	cmp	r3, #-2147483648
	bne	.L32
	.loc 1 217 46
	ldr	r3, [fp, #-40]
	lsr	r1, r3, #8
	.loc 1 217 28
	ldr	r3, [fp, #-20]
	add	r2, r3, #1
	str	r2, [fp, #-20]
	.loc 1 217 32
	uxtb	r2, r1
	.loc 1 217 31
	sub	r3, r3, #4
	add	r3, r3, fp
	strb	r2, [r3, #-12]
.L32:
	.loc 1 218 26
	ldr	r3, [fp, #-20]
	add	r2, r3, #1
	str	r2, [fp, #-20]
	.loc 1 218 30
	ldr	r2, [fp, #-40]
	uxtb	r2, r2
	.loc 1 218 29
	sub	r3, r3, #4
	add	r3, r3, fp
	strb	r2, [r3, #-12]
.L31:
	.loc 1 221 14
	ldr	r3, [fp, #-36]
	uxtb	r1, r3
	.loc 1 225 17
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	.loc 1 221 14
	mov	r0, r3
	ldr	r3, [fp, #8]
	add	r3, r3, #1
	sub	r2, fp, #16
	str	r3, [sp, #8]
	ldr	r3, [fp, #4]
	str	r3, [sp, #4]
	ldr	r3, [fp, #-44]
	str	r3, [sp]
	mov	r3, r0
	ldr	r0, [fp, #-32]
	bl	EApiI2CWriteReadRaw(PLT)
	str	r0, [fp, #-24]
.L24:
	.loc 1 231 10
	ldr	r3, [fp, #-24]
	.loc 1 174 1
	ldr	r1, .L35+124
.LPIC68:
	add	r1, pc, r1
	.loc 1 232 1
	ldr	r2, .L35+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L34
	bl	__stack_chk_fail(PLT)
.L34:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L36:
	.align	2
.L35:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC67+8)
	.word	__stack_chk_guard(GOT)
	.word	Initialized-(.LPIC38+8)
	.word	.LC2-(.LPIC39+8)
	.word	.LC3-(.LPIC40+8)
	.word	.LC14-(.LPIC41+8)
	.word	.LC1-(.LPIC42+8)
	.word	.LC15-(.LPIC43+8)
	.word	.LC9-(.LPIC44+8)
	.word	.LC7-(.LPIC45+8)
	.word	.LC1-(.LPIC46+8)
	.word	.LC16-(.LPIC47+8)
	.word	.LC3-(.LPIC48+8)
	.word	.LC14-(.LPIC49+8)
	.word	.LC1-(.LPIC50+8)
	.word	.LC17-(.LPIC51+8)
	.word	.LC3-(.LPIC52+8)
	.word	.LC14-(.LPIC53+8)
	.word	.LC1-(.LPIC54+8)
	.word	.LC18-(.LPIC55+8)
	.word	.LC3-(.LPIC56+8)
	.word	.LC14-(.LPIC57+8)
	.word	.LC1-(.LPIC58+8)
	.word	.LC17-(.LPIC59+8)
	.word	.LC3-(.LPIC60+8)
	.word	.LC14-(.LPIC61+8)
	.word	.LC1-(.LPIC62+8)
	.word	.LC19-(.LPIC63+8)
	.word	.LC3-(.LPIC64+8)
	.word	.LC14-(.LPIC65+8)
	.word	.LC1-(.LPIC66+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC68+8)
	.cfi_endproc
.LFE3:
	.size	EApiI2CReadTransfer, .-EApiI2CReadTransfer
	.section	.rodata
	.align	2
.LC20:
	.ascii	"Id=%08X ADDR=%04X CMD=%04X BCNT=%04X %08X\012\000"
	.align	2
.LC21:
	.ascii	"Error Allocating Memory\000"
	.align	2
.LC22:
	.ascii	"Transfer Length too long for interface\000"
	.text
	.align	2
	.global	EApiI2CWriteTransfer
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiI2CWriteTransfer, %function
EApiI2CWriteTransfer:
.LFB4:
	.loc 1 247 1
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #72
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	str	r2, [fp, #-40]
	str	r3, [fp, #-44]
	.loc 1 247 1
	ldr	r2, .L52
.LPIC98:
	add	r2, pc, r2
	ldr	r3, .L52+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 248 16
	mov	r3, #0
	str	r3, [fp, #-24]
	.loc 1 250 12
	mov	r3, #0
	str	r3, [fp, #-16]
	.loc 1 253 3
	ldr	r3, .L52+8
.LPIC69:
	add	r3, pc, r3
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L38
	.loc 1 253 3 is_stmt 0 discriminator 1
	ldr	r3, .L52+12
.LPIC70:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L52+16
.LPIC71:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	mov	r3, #253
	ldr	r2, .L52+20
.LPIC72:
	add	r2, pc, r2
	ldr	r1, .L52+24
.LPIC73:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-24]
	b	.L39
.L38:
	.loc 1 255 3 is_stmt 1
	ldr	r3, [fp, #-44]
	cmp	r3, #0
	bne	.L40
	.loc 1 255 3 is_stmt 0 discriminator 1
	ldr	r3, .L52+28
.LPIC74:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L52+32
.LPIC75:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #255
	ldr	r2, .L52+36
.LPIC76:
	add	r2, pc, r2
	ldr	r1, .L52+40
.LPIC77:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-24]
	b	.L39
.L40:
	.loc 1 257 3 is_stmt 1
	ldr	r3, [fp, #-44]
	ldr	r3, [r3]
	str	r3, [sp, #24]
	ldr	r3, [fp, #4]
	str	r3, [sp, #20]
	ldr	r3, [fp, #-40]
	str	r3, [sp, #16]
	ldr	r3, [fp, #-36]
	str	r3, [sp, #12]
	ldr	r3, [fp, #-32]
	str	r3, [sp, #8]
	ldr	r3, .L52+44
.LPIC78:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, .L52+48
.LPIC79:
	add	r3, pc, r3
	str	r3, [sp]
	movw	r3, #261
	ldr	r2, .L52+52
.LPIC80:
	add	r2, pc, r2
	ldr	r1, .L52+56
.LPIC81:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_M2(PLT)
	.loc 1 268 3
	ldr	r3, [fp, #4]
	cmp	r3, #0
	bne	.L41
	.loc 1 268 3 is_stmt 0 discriminator 1
	ldr	r3, .L52+60
.LPIC82:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L52+64
.LPIC83:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #268
	ldr	r2, .L52+68
.LPIC84:
	add	r2, pc, r2
	ldr	r1, .L52+72
.LPIC85:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-24]
	b	.L39
.L41:
	.loc 1 270 25 is_stmt 1
	ldr	r3, [fp, #4]
	add	r3, r3, #3
	mov	r0, r3
	bl	malloc(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	.loc 1 271 3
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L42
	.loc 1 271 3 is_stmt 0 discriminator 1
	ldr	r3, .L52+76
.LPIC86:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L52+80
.LPIC87:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #2
	str	r3, [sp]
	movw	r3, #271
	ldr	r2, .L52+84
.LPIC88:
	add	r2, pc, r2
	ldr	r1, .L52+88
.LPIC89:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #2
	str	r3, [fp, #-24]
	b	.L39
.L42:
	.loc 1 278 6 is_stmt 1
	ldr	r3, [fp, #-36]
	and	r3, r3, #63488
	.loc 1 278 5
	cmp	r3, #61440
	bne	.L43
	.loc 1 280 17
	ldr	r3, [fp, #-36]
	uxtb	r2, r3
	.loc 1 280 16
	ldr	r3, [fp, #-20]
	strb	r2, [r3]
	.loc 1 281 9
	ldr	r3, [fp, #-36]
	lsr	r3, r3, #8
	str	r3, [fp, #-36]
	.loc 1 282 15
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L43:
	.loc 1 285 7
	ldr	r3, [fp, #-40]
	and	r3, r3, #-1073741824
	.loc 1 285 5
	cmp	r3, #1073741824
	beq	.L44
	.loc 1 286 8
	ldr	r3, [fp, #-40]
	and	r3, r3, #-1073741824
	.loc 1 286 7
	cmp	r3, #-2147483648
	bne	.L45
	.loc 1 287 46
	ldr	r3, [fp, #-40]
	lsr	r1, r3, #8
	.loc 1 287 28
	ldr	r3, [fp, #-16]
	add	r2, r3, #1
	str	r2, [fp, #-16]
	.loc 1 287 17
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	.loc 1 287 32
	uxtb	r2, r1
	.loc 1 287 31
	strb	r2, [r3]
.L45:
	.loc 1 289 26
	ldr	r3, [fp, #-16]
	add	r2, r3, #1
	str	r2, [fp, #-16]
	.loc 1 289 15
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	.loc 1 289 30
	ldr	r2, [fp, #-40]
	uxtb	r2, r2
	.loc 1 289 29
	strb	r2, [r3]
.L44:
	.loc 1 293 3
	sub	r3, fp, #28
	mov	r1, r3
	ldr	r0, [fp, #-32]
	bl	EApiI2CGetBusCap(PLT)
	.loc 1 294 3
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #4]
	add	r2, r2, r3
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	bls	.L46
	.loc 1 294 3 is_stmt 0 discriminator 1
	ldr	r3, .L52+92
.LPIC90:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L52+96
.LPIC91:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #294
	ldr	r2, .L52+100
.LPIC92:
	add	r2, pc, r2
	ldr	r1, .L52+104
.LPIC93:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-24]
	b	.L39
.L46:
	.loc 1 301 5 is_stmt 1
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L47
	.loc 1 302 22
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	.loc 1 302 5
	ldr	r2, [fp, #4]
	ldr	r1, [fp, #-44]
	mov	r0, r3
	bl	memcpy(PLT)
	b	.L48
.L47:
	.loc 1 305 5
	ldr	r0, [fp, #-20]
	bl	free(PLT)
	.loc 1 306 15
	ldr	r3, [fp, #-44]
	str	r3, [fp, #-20]
.L48:
	.loc 1 309 3
	ldr	r3, [fp, #-20]
	ldr	r3, [r3]
	str	r3, [sp, #24]
	ldr	r3, [fp, #4]
	str	r3, [sp, #20]
	ldr	r3, [fp, #-40]
	str	r3, [sp, #16]
	ldr	r3, [fp, #-36]
	str	r3, [sp, #12]
	ldr	r3, [fp, #-32]
	str	r3, [sp, #8]
	ldr	r3, .L52+108
.LPIC94:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, .L52+112
.LPIC95:
	add	r3, pc, r3
	str	r3, [sp]
	movw	r3, #313
	ldr	r2, .L52+116
.LPIC96:
	add	r2, pc, r2
	ldr	r1, .L52+120
.LPIC97:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_M2(PLT)
	.loc 1 321 15
	ldr	r3, [fp, #-36]
	uxtb	r1, r3
	.loc 1 325 17
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #4]
	add	r3, r2, r3
	.loc 1 321 15
	add	r3, r3, #1
	mov	r2, #0
	str	r2, [sp, #8]
	mov	r2, #0
	str	r2, [sp, #4]
	mov	r2, #0
	str	r2, [sp]
	ldr	r2, [fp, #-20]
	ldr	r0, [fp, #-32]
	bl	EApiI2CWriteReadRaw(PLT)
	str	r0, [fp, #-12]
	.loc 1 330 5
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L51
	.loc 1 331 5
	ldr	r0, [fp, #-20]
	bl	free(PLT)
	b	.L39
.L51:
	.loc 1 332 1
	nop
.L39:
	.loc 1 333 10
	ldr	r3, [fp, #-24]
	.loc 1 247 1
	ldr	r1, .L52+124
.LPIC99:
	add	r1, pc, r1
	.loc 1 334 1
	ldr	r2, .L52+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L50
	bl	__stack_chk_fail(PLT)
.L50:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L53:
	.align	2
.L52:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC98+8)
	.word	__stack_chk_guard(GOT)
	.word	Initialized-(.LPIC69+8)
	.word	.LC2-(.LPIC70+8)
	.word	.LC3-(.LPIC71+8)
	.word	.LC7-(.LPIC72+8)
	.word	.LC1-(.LPIC73+8)
	.word	.LC16-(.LPIC74+8)
	.word	.LC3-(.LPIC75+8)
	.word	.LC7-(.LPIC76+8)
	.word	.LC1-(.LPIC77+8)
	.word	.LC20-(.LPIC78+8)
	.word	.LC9-(.LPIC79+8)
	.word	.LC7-(.LPIC80+8)
	.word	.LC1-(.LPIC81+8)
	.word	.LC18-(.LPIC82+8)
	.word	.LC3-(.LPIC83+8)
	.word	.LC7-(.LPIC84+8)
	.word	.LC1-(.LPIC85+8)
	.word	.LC21-(.LPIC86+8)
	.word	.LC3-(.LPIC87+8)
	.word	.LC7-(.LPIC88+8)
	.word	.LC1-(.LPIC89+8)
	.word	.LC22-(.LPIC90+8)
	.word	.LC3-(.LPIC91+8)
	.word	.LC7-(.LPIC92+8)
	.word	.LC1-(.LPIC93+8)
	.word	.LC20-(.LPIC94+8)
	.word	.LC9-(.LPIC95+8)
	.word	.LC7-(.LPIC96+8)
	.word	.LC1-(.LPIC97+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC99+8)
	.cfi_endproc
.LFE4:
	.size	EApiI2CWriteTransfer, .-EApiI2CWriteTransfer
	.align	2
	.global	EApiI2CProbeDevice
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiI2CProbeDevice, %function
EApiI2CProbeDevice:
.LFB5:
	.loc 1 344 1
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
	.loc 1 344 1
	ldr	r2, .L61
.LPIC105:
	add	r2, pc, r2
	ldr	r3, .L61+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 345 16
	mov	r3, #0
	str	r3, [fp, #-24]
	.loc 1 346 11
	mov	r3, #0
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 347 7
	mov	r3, #0
	str	r3, [fp, #-20]
	.loc 1 348 3
	ldr	r3, .L61+8
.LPIC100:
	add	r3, pc, r3
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L55
	.loc 1 348 3 is_stmt 0 discriminator 1
	ldr	r3, .L61+12
.LPIC101:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L61+16
.LPIC102:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	mov	r3, #348
	ldr	r2, .L61+20
.LPIC103:
	add	r2, pc, r2
	ldr	r1, .L61+24
.LPIC104:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-24]
	b	.L56
.L55:
	.loc 1 349 6 is_stmt 1
	ldr	r3, [fp, #-36]
	and	r3, r3, #63488
	.loc 1 349 5
	cmp	r3, #61440
	bne	.L57
	.loc 1 351 26
	ldr	r3, [fp, #-20]
	add	r2, r3, #1
	str	r2, [fp, #-20]
	.loc 1 351 30
	ldr	r2, [fp, #-36]
	uxtb	r2, r2
	.loc 1 351 29
	sub	r3, r3, #4
	add	r3, r3, fp
	strb	r2, [r3, #-12]
	.loc 1 352 9
	ldr	r3, [fp, #-36]
	lsr	r3, r3, #8
	str	r3, [fp, #-36]
.L57:
	.loc 1 354 14
	ldr	r3, [fp, #-36]
	uxtb	r1, r3
	.loc 1 358 17
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	.loc 1 354 14
	mov	r0, r3
	sub	r2, fp, #16
	mov	r3, #0
	str	r3, [sp, #8]
	mov	r3, #0
	str	r3, [sp, #4]
	mov	r3, #0
	str	r3, [sp]
	mov	r3, r0
	ldr	r0, [fp, #-32]
	bl	EApiI2CWriteReadRaw(PLT)
	str	r0, [fp, #-24]
	.loc 1 363 5
	ldr	r2, [fp, #-24]
	movw	r3, #64254
	movt	r3, 65535
	cmp	r2, r3
	bne	.L60
	.loc 1 364 15
	mvn	r3, #1024
	str	r3, [fp, #-24]
	b	.L56
.L60:
	.loc 1 365 1
	nop
.L56:
	.loc 1 366 10
	ldr	r3, [fp, #-24]
	.loc 1 344 1
	ldr	r1, .L61+28
.LPIC106:
	add	r1, pc, r1
	.loc 1 367 1
	ldr	r2, .L61+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L59
	bl	__stack_chk_fail(PLT)
.L59:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L62:
	.align	2
.L61:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC105+8)
	.word	__stack_chk_guard(GOT)
	.word	Initialized-(.LPIC100+8)
	.word	.LC2-(.LPIC101+8)
	.word	.LC3-(.LPIC102+8)
	.word	.LC7-(.LPIC103+8)
	.word	.LC1-(.LPIC104+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC106+8)
	.cfi_endproc
.LFE5:
	.size	EApiI2CProbeDevice, .-EApiI2CProbeDevice
	.section	.rodata
	.align	2
.LC23:
	.ascii	"EApiBoardGetStringA\000"
	.align	2
.LC24:
	.ascii	"(pBufLen==NULL)\000"
	.align	2
.LC25:
	.ascii	"pBuffer is NULL\000"
	.text
	.align	2
	.global	EApiBoardGetStringA
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiBoardGetStringA, %function
EApiBoardGetStringA:
.LFB6:
	.loc 1 385 1
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
	.loc 1 386 16
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 387 3
	ldr	r3, .L69
.LPIC107:
	add	r3, pc, r3
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L64
	.loc 1 387 3 is_stmt 0 discriminator 1
	ldr	r3, .L69+4
.LPIC108:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L69+8
.LPIC109:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	movw	r3, #387
	ldr	r2, .L69+12
.LPIC110:
	add	r2, pc, r2
	ldr	r1, .L69+16
.LPIC111:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-8]
	b	.L65
.L64:
	.loc 1 388 3 is_stmt 1
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L66
	.loc 1 388 3 is_stmt 0 discriminator 1
	ldr	r3, .L69+20
.LPIC112:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L69+24
.LPIC113:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #388
	ldr	r2, .L69+28
.LPIC114:
	add	r2, pc, r2
	ldr	r1, .L69+32
.LPIC115:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-8]
	b	.L65
.L66:
	.loc 1 389 3 is_stmt 1
	ldr	r3, [fp, #-24]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L67
	.loc 1 389 3 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L67
	.loc 1 389 3 discriminator 2
	ldr	r3, .L69+36
.LPIC116:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L69+40
.LPIC117:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #389
	ldr	r2, .L69+44
.LPIC118:
	add	r2, pc, r2
	ldr	r1, .L69+48
.LPIC119:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-8]
	b	.L65
.L67:
	.loc 1 395 14 is_stmt 1
	ldr	r2, [fp, #-24]
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	EApiBoardGetStringAEmul(PLT)
	str	r0, [fp, #-8]
.L65:
	.loc 1 397 10
	ldr	r3, [fp, #-8]
	.loc 1 398 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L70:
	.align	2
.L69:
	.word	Initialized-(.LPIC107+8)
	.word	.LC2-(.LPIC108+8)
	.word	.LC3-(.LPIC109+8)
	.word	.LC23-(.LPIC110+8)
	.word	.LC1-(.LPIC111+8)
	.word	.LC24-(.LPIC112+8)
	.word	.LC3-(.LPIC113+8)
	.word	.LC23-(.LPIC114+8)
	.word	.LC1-(.LPIC115+8)
	.word	.LC25-(.LPIC116+8)
	.word	.LC3-(.LPIC117+8)
	.word	.LC23-(.LPIC118+8)
	.word	.LC1-(.LPIC119+8)
	.cfi_endproc
.LFE6:
	.size	EApiBoardGetStringA, .-EApiBoardGetStringA
	.section	.rodata
	.align	2
.LC26:
	.ascii	"EApiBoardGetValue\000"
	.align	2
.LC27:
	.ascii	"(pValue==NULL)\000"
	.align	2
.LC28:
	.ascii	"\000"
	.text
	.align	2
	.global	EApiBoardGetValue
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiBoardGetValue, %function
EApiBoardGetValue:
.LFB7:
	.loc 1 415 1
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
	.loc 1 416 16
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 417 3
	ldr	r3, .L77
.LPIC120:
	add	r3, pc, r3
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L72
	.loc 1 417 3 is_stmt 0 discriminator 1
	ldr	r3, .L77+4
.LPIC121:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L77+8
.LPIC122:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	movw	r3, #417
	ldr	r2, .L77+12
.LPIC123:
	add	r2, pc, r2
	ldr	r1, .L77+16
.LPIC124:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-8]
	b	.L73
.L72:
	.loc 1 418 3 is_stmt 1
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L74
	.loc 1 418 3 is_stmt 0 discriminator 1
	ldr	r3, .L77+20
.LPIC125:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L77+24
.LPIC126:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #418
	ldr	r2, .L77+28
.LPIC127:
	add	r2, pc, r2
	ldr	r1, .L77+32
.LPIC128:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-8]
	b	.L73
.L74:
	.loc 1 420 5 is_stmt 1
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L75
	.loc 1 421 12
	ldr	r3, [fp, #-20]
	mov	r2, #16777216
	str	r2, [r3]
	.loc 1 422 5
	ldr	r3, .L77+36
.LPIC129:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L77+40
.LPIC130:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mov	r3, #0
	str	r3, [sp]
	movw	r3, #422
	ldr	r2, .L77+44
.LPIC131:
	add	r2, pc, r2
	ldr	r1, .L77+48
.LPIC132:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_SC(PLT)
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L73
.L75:
	.loc 1 425 14
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	EApiBoardGetValueEmul(PLT)
	str	r0, [fp, #-8]
.L73:
	.loc 1 428 10
	ldr	r3, [fp, #-8]
	.loc 1 429 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L78:
	.align	2
.L77:
	.word	Initialized-(.LPIC120+8)
	.word	.LC2-(.LPIC121+8)
	.word	.LC3-(.LPIC122+8)
	.word	.LC26-(.LPIC123+8)
	.word	.LC1-(.LPIC124+8)
	.word	.LC27-(.LPIC125+8)
	.word	.LC3-(.LPIC126+8)
	.word	.LC26-(.LPIC127+8)
	.word	.LC1-(.LPIC128+8)
	.word	.LC28-(.LPIC129+8)
	.word	.LC3-(.LPIC130+8)
	.word	.LC26-(.LPIC131+8)
	.word	.LC1-(.LPIC132+8)
	.cfi_endproc
.LFE7:
	.size	EApiBoardGetValue, .-EApiBoardGetValue
	.section	.rodata
	.align	2
.LC29:
	.ascii	"EApiVgaGetBacklightEnable\000"
	.align	2
.LC30:
	.ascii	"(pEnable==NULL)\000"
	.text
	.align	2
	.global	EApiVgaGetBacklightEnable
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiVgaGetBacklightEnable, %function
EApiVgaGetBacklightEnable:
.LFB8:
	.loc 1 446 1
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
	.loc 1 447 16
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 448 3
	ldr	r3, .L84
.LPIC133:
	add	r3, pc, r3
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L80
	.loc 1 448 3 is_stmt 0 discriminator 1
	ldr	r3, .L84+4
.LPIC134:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L84+8
.LPIC135:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	mov	r3, #448
	ldr	r2, .L84+12
.LPIC136:
	add	r2, pc, r2
	ldr	r1, .L84+16
.LPIC137:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-8]
	b	.L81
.L80:
	.loc 1 449 3 is_stmt 1
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L82
	.loc 1 449 3 is_stmt 0 discriminator 1
	ldr	r3, .L84+20
.LPIC138:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L84+24
.LPIC139:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #449
	ldr	r2, .L84+28
.LPIC140:
	add	r2, pc, r2
	ldr	r1, .L84+32
.LPIC141:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-8]
	b	.L81
.L82:
	.loc 1 451 14 is_stmt 1
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	EApiVgaGetBacklightEnableEmul(PLT)
	str	r0, [fp, #-8]
.L81:
	.loc 1 453 10
	ldr	r3, [fp, #-8]
	.loc 1 454 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L85:
	.align	2
.L84:
	.word	Initialized-(.LPIC133+8)
	.word	.LC2-(.LPIC134+8)
	.word	.LC3-(.LPIC135+8)
	.word	.LC29-(.LPIC136+8)
	.word	.LC1-(.LPIC137+8)
	.word	.LC30-(.LPIC138+8)
	.word	.LC3-(.LPIC139+8)
	.word	.LC29-(.LPIC140+8)
	.word	.LC1-(.LPIC141+8)
	.cfi_endproc
.LFE8:
	.size	EApiVgaGetBacklightEnable, .-EApiVgaGetBacklightEnable
	.section	.rodata
	.align	2
.LC31:
	.ascii	"EApiVgaSetBacklightEnable\000"
	.align	2
.LC32:
	.ascii	"Enable Invalid Value\000"
	.text
	.align	2
	.global	EApiVgaSetBacklightEnable
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiVgaSetBacklightEnable, %function
EApiVgaSetBacklightEnable:
.LFB9:
	.loc 1 462 1
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
	.loc 1 463 16
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 465 3
	ldr	r3, .L92
.LPIC142:
	add	r3, pc, r3
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L87
	.loc 1 465 3 is_stmt 0 discriminator 1
	ldr	r3, .L92+4
.LPIC143:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L92+8
.LPIC144:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	movw	r3, #465
	ldr	r2, .L92+12
.LPIC145:
	add	r2, pc, r2
	ldr	r1, .L92+16
.LPIC146:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-8]
	b	.L88
.L87:
	.loc 1 466 3 is_stmt 1
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L89
	.loc 1 466 3 is_stmt 0 discriminator 2
	ldr	r3, [fp, #-20]
	cmn	r3, #1
	beq	.L90
.L89:
	.loc 1 466 3 discriminator 3
	ldr	r3, .L92+20
.LPIC147:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L92+24
.LPIC148:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #466
	ldr	r2, .L92+28
.LPIC149:
	add	r2, pc, r2
	ldr	r1, .L92+32
.LPIC150:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-8]
	b	.L88
.L90:
	.loc 1 472 14 is_stmt 1
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	EApiVgaSetBacklightEnableEmul(PLT)
	str	r0, [fp, #-8]
.L88:
	.loc 1 474 10
	ldr	r3, [fp, #-8]
	.loc 1 475 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L93:
	.align	2
.L92:
	.word	Initialized-(.LPIC142+8)
	.word	.LC2-(.LPIC143+8)
	.word	.LC3-(.LPIC144+8)
	.word	.LC31-(.LPIC145+8)
	.word	.LC1-(.LPIC146+8)
	.word	.LC32-(.LPIC147+8)
	.word	.LC3-(.LPIC148+8)
	.word	.LC31-(.LPIC149+8)
	.word	.LC1-(.LPIC150+8)
	.cfi_endproc
.LFE9:
	.size	EApiVgaSetBacklightEnable, .-EApiVgaSetBacklightEnable
	.section	.rodata
	.align	2
.LC33:
	.ascii	"EApiVgaGetBacklightBrightness\000"
	.align	2
.LC34:
	.ascii	"(pBright==NULL)\000"
	.text
	.align	2
	.global	EApiVgaGetBacklightBrightness
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiVgaGetBacklightBrightness, %function
EApiVgaGetBacklightBrightness:
.LFB10:
	.loc 1 482 1
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
	.loc 1 483 16
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 484 3
	ldr	r3, .L99
.LPIC151:
	add	r3, pc, r3
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L95
	.loc 1 484 3 is_stmt 0 discriminator 1
	ldr	r3, .L99+4
.LPIC152:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L99+8
.LPIC153:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	mov	r3, #484
	ldr	r2, .L99+12
.LPIC154:
	add	r2, pc, r2
	ldr	r1, .L99+16
.LPIC155:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-8]
	b	.L96
.L95:
	.loc 1 485 3 is_stmt 1
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L97
	.loc 1 485 3 is_stmt 0 discriminator 1
	ldr	r3, .L99+20
.LPIC156:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L99+24
.LPIC157:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #485
	ldr	r2, .L99+28
.LPIC158:
	add	r2, pc, r2
	ldr	r1, .L99+32
.LPIC159:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-8]
	b	.L96
.L97:
	.loc 1 487 14 is_stmt 1
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	EApiVgaGetBacklightBrightnessEmul(PLT)
	str	r0, [fp, #-8]
.L96:
	.loc 1 489 10
	ldr	r3, [fp, #-8]
	.loc 1 490 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L100:
	.align	2
.L99:
	.word	Initialized-(.LPIC151+8)
	.word	.LC2-(.LPIC152+8)
	.word	.LC3-(.LPIC153+8)
	.word	.LC33-(.LPIC154+8)
	.word	.LC1-(.LPIC155+8)
	.word	.LC34-(.LPIC156+8)
	.word	.LC3-(.LPIC157+8)
	.word	.LC33-(.LPIC158+8)
	.word	.LC1-(.LPIC159+8)
	.cfi_endproc
.LFE10:
	.size	EApiVgaGetBacklightBrightness, .-EApiVgaGetBacklightBrightness
	.section	.rodata
	.align	2
.LC35:
	.ascii	"EApiVgaSetBacklightBrightness\000"
	.align	2
.LC36:
	.ascii	"Brightness Invalid Value\000"
	.text
	.align	2
	.global	EApiVgaSetBacklightBrightness
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiVgaSetBacklightBrightness, %function
EApiVgaSetBacklightBrightness:
.LFB11:
	.loc 1 498 1
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
	.loc 1 499 16
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 500 3
	ldr	r3, .L106
.LPIC160:
	add	r3, pc, r3
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L102
	.loc 1 500 3 is_stmt 0 discriminator 1
	ldr	r3, .L106+4
.LPIC161:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L106+8
.LPIC162:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	mov	r3, #500
	ldr	r2, .L106+12
.LPIC163:
	add	r2, pc, r2
	ldr	r1, .L106+16
.LPIC164:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-8]
	b	.L103
.L102:
	.loc 1 501 3 is_stmt 1
	ldr	r3, [fp, #-20]
	cmp	r3, #255
	bls	.L104
	.loc 1 501 3 is_stmt 0 discriminator 1
	ldr	r3, .L106+20
.LPIC165:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L106+24
.LPIC166:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #501
	ldr	r2, .L106+28
.LPIC167:
	add	r2, pc, r2
	ldr	r1, .L106+32
.LPIC168:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-8]
	b	.L103
.L104:
	.loc 1 507 14 is_stmt 1
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	EApiVgaSetBacklightBrightnessEmul(PLT)
	str	r0, [fp, #-8]
.L103:
	.loc 1 509 10
	ldr	r3, [fp, #-8]
	.loc 1 510 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L107:
	.align	2
.L106:
	.word	Initialized-(.LPIC160+8)
	.word	.LC2-(.LPIC161+8)
	.word	.LC3-(.LPIC162+8)
	.word	.LC35-(.LPIC163+8)
	.word	.LC1-(.LPIC164+8)
	.word	.LC36-(.LPIC165+8)
	.word	.LC3-(.LPIC166+8)
	.word	.LC35-(.LPIC167+8)
	.word	.LC1-(.LPIC168+8)
	.cfi_endproc
.LFE11:
	.size	EApiVgaSetBacklightBrightness, .-EApiVgaSetBacklightBrightness
	.section	.rodata
	.align	2
.LC37:
	.ascii	"EApiGPIOGetLevel\000"
	.align	2
.LC38:
	.ascii	"(Bitmask==0)\000"
	.align	2
.LC39:
	.ascii	"(pLevel==NULL)\000"
	.text
	.align	2
	.global	EApiGPIOGetLevel
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiGPIOGetLevel, %function
EApiGPIOGetLevel:
.LFB12:
	.loc 1 533 1
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
	.loc 1 534 16
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 535 3
	ldr	r3, .L114
.LPIC169:
	add	r3, pc, r3
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L109
	.loc 1 535 3 is_stmt 0 discriminator 1
	ldr	r3, .L114+4
.LPIC170:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L114+8
.LPIC171:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	movw	r3, #535
	ldr	r2, .L114+12
.LPIC172:
	add	r2, pc, r2
	ldr	r1, .L114+16
.LPIC173:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-8]
	b	.L110
.L109:
	.loc 1 536 3 is_stmt 1
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L111
	.loc 1 536 3 is_stmt 0 discriminator 1
	ldr	r3, .L114+20
.LPIC174:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L114+24
.LPIC175:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #536
	ldr	r2, .L114+28
.LPIC176:
	add	r2, pc, r2
	ldr	r1, .L114+32
.LPIC177:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-8]
	b	.L110
.L111:
	.loc 1 537 3 is_stmt 1
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L112
	.loc 1 537 3 is_stmt 0 discriminator 1
	ldr	r3, .L114+36
.LPIC178:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L114+40
.LPIC179:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #537
	ldr	r2, .L114+44
.LPIC180:
	add	r2, pc, r2
	ldr	r1, .L114+48
.LPIC181:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-8]
	b	.L110
.L112:
	.loc 1 539 14 is_stmt 1
	ldr	r2, [fp, #-24]
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	EApiGPIOGetLevelEmul(PLT)
	str	r0, [fp, #-8]
.L110:
	.loc 1 541 10
	ldr	r3, [fp, #-8]
	.loc 1 542 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L115:
	.align	2
.L114:
	.word	Initialized-(.LPIC169+8)
	.word	.LC2-(.LPIC170+8)
	.word	.LC3-(.LPIC171+8)
	.word	.LC37-(.LPIC172+8)
	.word	.LC1-(.LPIC173+8)
	.word	.LC38-(.LPIC174+8)
	.word	.LC3-(.LPIC175+8)
	.word	.LC37-(.LPIC176+8)
	.word	.LC1-(.LPIC177+8)
	.word	.LC39-(.LPIC178+8)
	.word	.LC3-(.LPIC179+8)
	.word	.LC37-(.LPIC180+8)
	.word	.LC1-(.LPIC181+8)
	.cfi_endproc
.LFE12:
	.size	EApiGPIOGetLevel, .-EApiGPIOGetLevel
	.section	.rodata
	.align	2
.LC40:
	.ascii	"EApiGPIOSetLevel\000"
	.text
	.align	2
	.global	EApiGPIOSetLevel
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiGPIOSetLevel, %function
EApiGPIOSetLevel:
.LFB13:
	.loc 1 553 1
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
	.loc 1 554 16
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 555 3
	ldr	r3, .L121
.LPIC182:
	add	r3, pc, r3
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L117
	.loc 1 555 3 is_stmt 0 discriminator 1
	ldr	r3, .L121+4
.LPIC183:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L121+8
.LPIC184:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	movw	r3, #555
	ldr	r2, .L121+12
.LPIC185:
	add	r2, pc, r2
	ldr	r1, .L121+16
.LPIC186:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-8]
	b	.L118
.L117:
	.loc 1 556 3 is_stmt 1
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L119
	.loc 1 556 3 is_stmt 0 discriminator 1
	ldr	r3, .L121+20
.LPIC187:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L121+24
.LPIC188:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #556
	ldr	r2, .L121+28
.LPIC189:
	add	r2, pc, r2
	ldr	r1, .L121+32
.LPIC190:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-8]
	b	.L118
.L119:
	.loc 1 558 14 is_stmt 1
	ldr	r2, [fp, #-24]
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	EApiGPIOSetLevelEmul(PLT)
	str	r0, [fp, #-8]
.L118:
	.loc 1 560 10
	ldr	r3, [fp, #-8]
	.loc 1 561 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L122:
	.align	2
.L121:
	.word	Initialized-(.LPIC182+8)
	.word	.LC2-(.LPIC183+8)
	.word	.LC3-(.LPIC184+8)
	.word	.LC40-(.LPIC185+8)
	.word	.LC1-(.LPIC186+8)
	.word	.LC38-(.LPIC187+8)
	.word	.LC3-(.LPIC188+8)
	.word	.LC40-(.LPIC189+8)
	.word	.LC1-(.LPIC190+8)
	.cfi_endproc
.LFE13:
	.size	EApiGPIOSetLevel, .-EApiGPIOSetLevel
	.section	.rodata
	.align	2
.LC41:
	.ascii	"EApiGPIOGetDirection\000"
	.align	2
.LC42:
	.ascii	"(pDirection==NULL)\000"
	.text
	.align	2
	.global	EApiGPIOGetDirection
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiGPIOGetDirection, %function
EApiGPIOGetDirection:
.LFB14:
	.loc 1 572 1
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
	.loc 1 573 16
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 574 3
	ldr	r3, .L129
.LPIC191:
	add	r3, pc, r3
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L124
	.loc 1 574 3 is_stmt 0 discriminator 1
	ldr	r3, .L129+4
.LPIC192:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L129+8
.LPIC193:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	movw	r3, #574
	ldr	r2, .L129+12
.LPIC194:
	add	r2, pc, r2
	ldr	r1, .L129+16
.LPIC195:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-8]
	b	.L125
.L124:
	.loc 1 575 3 is_stmt 1
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L126
	.loc 1 575 3 is_stmt 0 discriminator 1
	ldr	r3, .L129+20
.LPIC196:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L129+24
.LPIC197:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #575
	ldr	r2, .L129+28
.LPIC198:
	add	r2, pc, r2
	ldr	r1, .L129+32
.LPIC199:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-8]
	b	.L125
.L126:
	.loc 1 576 3 is_stmt 1
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L127
	.loc 1 576 3 is_stmt 0 discriminator 1
	ldr	r3, .L129+36
.LPIC200:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L129+40
.LPIC201:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #576
	ldr	r2, .L129+44
.LPIC202:
	add	r2, pc, r2
	ldr	r1, .L129+48
.LPIC203:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-8]
	b	.L125
.L127:
	.loc 1 578 14 is_stmt 1
	ldr	r2, [fp, #-24]
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	EApiGPIOGetDirectionEmul(PLT)
	str	r0, [fp, #-8]
.L125:
	.loc 1 580 10
	ldr	r3, [fp, #-8]
	.loc 1 581 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L130:
	.align	2
.L129:
	.word	Initialized-(.LPIC191+8)
	.word	.LC2-(.LPIC192+8)
	.word	.LC3-(.LPIC193+8)
	.word	.LC41-(.LPIC194+8)
	.word	.LC1-(.LPIC195+8)
	.word	.LC38-(.LPIC196+8)
	.word	.LC3-(.LPIC197+8)
	.word	.LC41-(.LPIC198+8)
	.word	.LC1-(.LPIC199+8)
	.word	.LC42-(.LPIC200+8)
	.word	.LC3-(.LPIC201+8)
	.word	.LC41-(.LPIC202+8)
	.word	.LC1-(.LPIC203+8)
	.cfi_endproc
.LFE14:
	.size	EApiGPIOGetDirection, .-EApiGPIOGetDirection
	.section	.rodata
	.align	2
.LC43:
	.ascii	"EApiGPIOSetDirection\000"
	.text
	.align	2
	.global	EApiGPIOSetDirection
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiGPIOSetDirection, %function
EApiGPIOSetDirection:
.LFB15:
	.loc 1 592 1
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
	.loc 1 593 16
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 594 3
	ldr	r3, .L136
.LPIC204:
	add	r3, pc, r3
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L132
	.loc 1 594 3 is_stmt 0 discriminator 1
	ldr	r3, .L136+4
.LPIC205:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L136+8
.LPIC206:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	movw	r3, #594
	ldr	r2, .L136+12
.LPIC207:
	add	r2, pc, r2
	ldr	r1, .L136+16
.LPIC208:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-8]
	b	.L133
.L132:
	.loc 1 595 3 is_stmt 1
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L134
	.loc 1 595 3 is_stmt 0 discriminator 1
	ldr	r3, .L136+20
.LPIC209:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L136+24
.LPIC210:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #595
	ldr	r2, .L136+28
.LPIC211:
	add	r2, pc, r2
	ldr	r1, .L136+32
.LPIC212:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-8]
	b	.L133
.L134:
	.loc 1 597 14 is_stmt 1
	ldr	r2, [fp, #-24]
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	EApiGPIOSetDirectionEmul(PLT)
	str	r0, [fp, #-8]
.L133:
	.loc 1 599 10
	ldr	r3, [fp, #-8]
	.loc 1 600 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L137:
	.align	2
.L136:
	.word	Initialized-(.LPIC204+8)
	.word	.LC2-(.LPIC205+8)
	.word	.LC3-(.LPIC206+8)
	.word	.LC43-(.LPIC207+8)
	.word	.LC1-(.LPIC208+8)
	.word	.LC38-(.LPIC209+8)
	.word	.LC3-(.LPIC210+8)
	.word	.LC43-(.LPIC211+8)
	.word	.LC1-(.LPIC212+8)
	.cfi_endproc
.LFE15:
	.size	EApiGPIOSetDirection, .-EApiGPIOSetDirection
	.section	.rodata
	.align	2
.LC44:
	.ascii	"EApiGPIOGetDirectionCaps\000"
	.align	2
.LC45:
	.ascii	"((pOutputs==NULL)&&(pInputs==NULL))\000"
	.text
	.align	2
	.global	EApiGPIOGetDirectionCaps
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiGPIOGetDirectionCaps, %function
EApiGPIOGetDirectionCaps:
.LFB16:
	.loc 1 613 1
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
	.loc 1 613 1
	ldr	r2, .L146
.LPIC222:
	add	r2, pc, r2
	ldr	r3, .L146+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 614 16
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 617 3
	ldr	r3, .L146+8
.LPIC213:
	add	r3, pc, r3
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L139
	.loc 1 617 3 is_stmt 0 discriminator 1
	ldr	r3, .L146+12
.LPIC214:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L146+16
.LPIC215:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	movw	r3, #617
	ldr	r2, .L146+20
.LPIC216:
	add	r2, pc, r2
	ldr	r1, .L146+24
.LPIC217:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-12]
	b	.L140
.L139:
	.loc 1 618 3 is_stmt 1
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	bne	.L141
	.loc 1 618 3 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L141
	.loc 1 618 3 discriminator 2
	ldr	r3, .L146+28
.LPIC218:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L146+32
.LPIC219:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #618
	ldr	r2, .L146+36
.LPIC220:
	add	r2, pc, r2
	ldr	r1, .L146+40
.LPIC221:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-12]
	b	.L140
.L141:
	.loc 1 624 5 is_stmt 1
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L142
	.loc 1 625 12
	sub	r3, fp, #16
	str	r3, [fp, #-28]
.L142:
	.loc 1 626 5
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	bne	.L143
	.loc 1 627 13
	sub	r3, fp, #16
	str	r3, [fp, #-32]
.L143:
	.loc 1 629 14
	ldr	r2, [fp, #-32]
	ldr	r1, [fp, #-28]
	ldr	r0, [fp, #-24]
	bl	EApiGPIOGetDirectionCapsEmul(PLT)
	str	r0, [fp, #-12]
.L140:
	.loc 1 631 10
	ldr	r3, [fp, #-12]
	.loc 1 613 1
	ldr	r1, .L146+44
.LPIC223:
	add	r1, pc, r1
	.loc 1 632 1
	ldr	r2, .L146+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L145
	bl	__stack_chk_fail(PLT)
.L145:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L147:
	.align	2
.L146:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC222+8)
	.word	__stack_chk_guard(GOT)
	.word	Initialized-(.LPIC213+8)
	.word	.LC2-(.LPIC214+8)
	.word	.LC3-(.LPIC215+8)
	.word	.LC44-(.LPIC216+8)
	.word	.LC1-(.LPIC217+8)
	.word	.LC45-(.LPIC218+8)
	.word	.LC3-(.LPIC219+8)
	.word	.LC44-(.LPIC220+8)
	.word	.LC1-(.LPIC221+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC223+8)
	.cfi_endproc
.LFE16:
	.size	EApiGPIOGetDirectionCaps, .-EApiGPIOGetDirectionCaps
	.section	.rodata
	.align	2
.LC46:
	.ascii	"EApiLibInitialize\000"
	.align	2
.LC47:
	.ascii	"Library Already Initialized\000"
	.text
	.align	2
	.global	EApiLibInitialize
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiLibInitialize, %function
EApiLibInitialize:
.LFB17:
	.loc 1 647 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #24
	.loc 1 648 16
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 649 3
	ldr	r3, .L152
.LPIC224:
	add	r3, pc, r3
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L149
	.loc 1 649 3 is_stmt 0 discriminator 1
	ldr	r3, .L152+4
.LPIC225:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L152+8
.LPIC226:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	movw	r3, #649
	ldr	r2, .L152+12
.LPIC227:
	add	r2, pc, r2
	ldr	r1, .L152+16
.LPIC228:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-8]
	b	.L150
.L149:
	.loc 1 650 14 is_stmt 1
	ldr	r3, .L152+20
.LPIC229:
	add	r3, pc, r3
	mov	r2, #1
	str	r2, [r3]
	.loc 1 651 3
	bl	EApiInitLib(PLT)
	.loc 1 652 3
	ldr	r3, .L152+24
.LPIC230:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L152+28
.LPIC231:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mov	r3, #0
	str	r3, [sp]
	mov	r3, #652
	ldr	r2, .L152+32
.LPIC232:
	add	r2, pc, r2
	ldr	r1, .L152+36
.LPIC233:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_SC(PLT)
	mov	r3, #0
	str	r3, [fp, #-8]
	nop
.L150:
	.loc 1 655 10
	ldr	r3, [fp, #-8]
	.loc 1 656 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L153:
	.align	2
.L152:
	.word	Initialized-(.LPIC224+8)
	.word	.LC47-(.LPIC225+8)
	.word	.LC3-(.LPIC226+8)
	.word	.LC46-(.LPIC227+8)
	.word	.LC1-(.LPIC228+8)
	.word	Initialized-(.LPIC229+8)
	.word	.LC28-(.LPIC230+8)
	.word	.LC3-(.LPIC231+8)
	.word	.LC46-(.LPIC232+8)
	.word	.LC1-(.LPIC233+8)
	.cfi_endproc
.LFE17:
	.size	EApiLibInitialize, .-EApiLibInitialize
	.section	.rodata
	.align	2
.LC48:
	.ascii	"EApiLibUnInitialize\000"
	.text
	.align	2
	.global	EApiLibUnInitialize
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiLibUnInitialize, %function
EApiLibUnInitialize:
.LFB18:
	.loc 1 660 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #24
	.loc 1 661 16
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 662 3
	ldr	r3, .L158
.LPIC234:
	add	r3, pc, r3
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L155
	.loc 1 662 3 is_stmt 0 discriminator 1
	ldr	r3, .L158+4
.LPIC235:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L158+8
.LPIC236:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	movw	r3, #662
	ldr	r2, .L158+12
.LPIC237:
	add	r2, pc, r2
	ldr	r1, .L158+16
.LPIC238:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-8]
	b	.L156
.L155:
	.loc 1 663 3 is_stmt 1
	bl	EApiUninitLib(PLT)
	.loc 1 664 14
	ldr	r3, .L158+20
.LPIC239:
	add	r3, pc, r3
	mov	r2, #0
	str	r2, [r3]
	.loc 1 665 3
	ldr	r3, .L158+24
.LPIC240:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L158+28
.LPIC241:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mov	r3, #0
	str	r3, [sp]
	movw	r3, #665
	ldr	r2, .L158+32
.LPIC242:
	add	r2, pc, r2
	ldr	r1, .L158+36
.LPIC243:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_SC(PLT)
	mov	r3, #0
	str	r3, [fp, #-8]
	nop
.L156:
	.loc 1 668 10
	ldr	r3, [fp, #-8]
	.loc 1 669 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L159:
	.align	2
.L158:
	.word	Initialized-(.LPIC234+8)
	.word	.LC2-(.LPIC235+8)
	.word	.LC3-(.LPIC236+8)
	.word	.LC48-(.LPIC237+8)
	.word	.LC1-(.LPIC238+8)
	.word	Initialized-(.LPIC239+8)
	.word	.LC28-(.LPIC240+8)
	.word	.LC3-(.LPIC241+8)
	.word	.LC48-(.LPIC242+8)
	.word	.LC1-(.LPIC243+8)
	.cfi_endproc
.LFE18:
	.size	EApiLibUnInitialize, .-EApiLibUnInitialize
	.section	.rodata
	.align	2
.LC49:
	.ascii	"EApiWDogGetCap\000"
	.align	2
.LC50:
	.ascii	"((pMaxDelay==NULL)&&(pMaxEventTimeout==NULL)&&(pMax"
	.ascii	"ResetTimeout==NULL))\000"
	.text
	.align	2
	.global	EApiWDogGetCap
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiWDogGetCap, %function
EApiWDogGetCap:
.LFB19:
	.loc 1 698 1
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
	.loc 1 698 1
	ldr	r2, .L169
.LPIC253:
	add	r2, pc, r2
	ldr	r3, .L169+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 699 16
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 701 3
	ldr	r3, .L169+8
.LPIC244:
	add	r3, pc, r3
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L161
	.loc 1 701 3 is_stmt 0 discriminator 1
	ldr	r3, .L169+12
.LPIC245:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L169+16
.LPIC246:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	movw	r3, #701
	ldr	r2, .L169+20
.LPIC247:
	add	r2, pc, r2
	ldr	r1, .L169+24
.LPIC248:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-12]
	b	.L162
.L161:
	.loc 1 702 3 is_stmt 1
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L163
	.loc 1 702 3 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L163
	.loc 1 702 3 discriminator 2
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	bne	.L163
	.loc 1 702 3 discriminator 3
	ldr	r3, .L169+28
.LPIC249:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L169+32
.LPIC250:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #702
	ldr	r2, .L169+36
.LPIC251:
	add	r2, pc, r2
	ldr	r1, .L169+40
.LPIC252:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-12]
	b	.L162
.L163:
	.loc 1 708 6 is_stmt 1
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L164
	.loc 1 708 47 discriminator 1
	sub	r3, fp, #16
	str	r3, [fp, #-24]
.L164:
	.loc 1 709 6
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L165
	.loc 1 709 47 discriminator 1
	sub	r3, fp, #16
	str	r3, [fp, #-28]
.L165:
	.loc 1 710 6
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	bne	.L166
	.loc 1 710 47 discriminator 1
	sub	r3, fp, #16
	str	r3, [fp, #-32]
.L166:
	.loc 1 711 14
	ldr	r2, [fp, #-32]
	ldr	r1, [fp, #-28]
	ldr	r0, [fp, #-24]
	bl	EApiWDogGetCapEmul(PLT)
	str	r0, [fp, #-12]
.L162:
	.loc 1 713 10
	ldr	r3, [fp, #-12]
	.loc 1 698 1
	ldr	r1, .L169+44
.LPIC254:
	add	r1, pc, r1
	.loc 1 714 1
	ldr	r2, .L169+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L168
	bl	__stack_chk_fail(PLT)
.L168:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L170:
	.align	2
.L169:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC253+8)
	.word	__stack_chk_guard(GOT)
	.word	Initialized-(.LPIC244+8)
	.word	.LC2-(.LPIC245+8)
	.word	.LC3-(.LPIC246+8)
	.word	.LC49-(.LPIC247+8)
	.word	.LC1-(.LPIC248+8)
	.word	.LC50-(.LPIC249+8)
	.word	.LC3-(.LPIC250+8)
	.word	.LC49-(.LPIC251+8)
	.word	.LC1-(.LPIC252+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC254+8)
	.cfi_endproc
.LFE19:
	.size	EApiWDogGetCap, .-EApiWDogGetCap
	.section	.rodata
	.align	2
.LC51:
	.ascii	"EApiWDogStart\000"
	.text
	.align	2
	.global	EApiWDogStart
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiWDogStart, %function
EApiWDogStart:
.LFB20:
	.loc 1 727 1
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
	.loc 1 728 16
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 729 3
	ldr	r3, .L175
.LPIC255:
	add	r3, pc, r3
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L172
	.loc 1 729 3 is_stmt 0 discriminator 1
	ldr	r3, .L175+4
.LPIC256:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L175+8
.LPIC257:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	movw	r3, #729
	ldr	r2, .L175+12
.LPIC258:
	add	r2, pc, r2
	ldr	r1, .L175+16
.LPIC259:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-8]
	b	.L173
.L172:
	.loc 1 730 14 is_stmt 1
	ldr	r2, [fp, #-24]
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	EApiWDogStartEmul(PLT)
	str	r0, [fp, #-8]
.L173:
	.loc 1 732 10
	ldr	r3, [fp, #-8]
	.loc 1 733 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L176:
	.align	2
.L175:
	.word	Initialized-(.LPIC255+8)
	.word	.LC2-(.LPIC256+8)
	.word	.LC3-(.LPIC257+8)
	.word	.LC51-(.LPIC258+8)
	.word	.LC1-(.LPIC259+8)
	.cfi_endproc
.LFE20:
	.size	EApiWDogStart, .-EApiWDogStart
	.section	.rodata
	.align	2
.LC52:
	.ascii	"EApiWDogTrigger\000"
	.text
	.align	2
	.global	EApiWDogTrigger
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiWDogTrigger, %function
EApiWDogTrigger:
.LFB21:
	.loc 1 737 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #24
	.loc 1 738 16
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 739 3
	ldr	r3, .L181
.LPIC260:
	add	r3, pc, r3
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L178
	.loc 1 739 3 is_stmt 0 discriminator 1
	ldr	r3, .L181+4
.LPIC261:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L181+8
.LPIC262:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	movw	r3, #739
	ldr	r2, .L181+12
.LPIC263:
	add	r2, pc, r2
	ldr	r1, .L181+16
.LPIC264:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-8]
	b	.L179
.L178:
	.loc 1 740 14 is_stmt 1
	bl	EApiWDogTriggerEmul(PLT)
	str	r0, [fp, #-8]
.L179:
	.loc 1 742 10
	ldr	r3, [fp, #-8]
	.loc 1 743 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L182:
	.align	2
.L181:
	.word	Initialized-(.LPIC260+8)
	.word	.LC2-(.LPIC261+8)
	.word	.LC3-(.LPIC262+8)
	.word	.LC52-(.LPIC263+8)
	.word	.LC1-(.LPIC264+8)
	.cfi_endproc
.LFE21:
	.size	EApiWDogTrigger, .-EApiWDogTrigger
	.section	.rodata
	.align	2
.LC53:
	.ascii	"EApiWDogStop\000"
	.text
	.align	2
	.global	EApiWDogStop
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiWDogStop, %function
EApiWDogStop:
.LFB22:
	.loc 1 747 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #24
	.loc 1 748 16
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 749 3
	ldr	r3, .L187
.LPIC265:
	add	r3, pc, r3
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L184
	.loc 1 749 3 is_stmt 0 discriminator 1
	ldr	r3, .L187+4
.LPIC266:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L187+8
.LPIC267:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	movw	r3, #749
	ldr	r2, .L187+12
.LPIC268:
	add	r2, pc, r2
	ldr	r1, .L187+16
.LPIC269:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-8]
	b	.L185
.L184:
	.loc 1 750 14 is_stmt 1
	bl	EApiWDogStopEmul(PLT)
	str	r0, [fp, #-8]
.L185:
	.loc 1 752 10
	ldr	r3, [fp, #-8]
	.loc 1 753 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L188:
	.align	2
.L187:
	.word	Initialized-(.LPIC265+8)
	.word	.LC2-(.LPIC266+8)
	.word	.LC3-(.LPIC267+8)
	.word	.LC53-(.LPIC268+8)
	.word	.LC1-(.LPIC269+8)
	.cfi_endproc
.LFE22:
	.size	EApiWDogStop, .-EApiWDogStop
	.section	.rodata
	.align	2
.LC54:
	.ascii	"EApiStorageCap\000"
	.align	2
.LC55:
	.ascii	"((pBlockLength==NULL)&&(pStorageSize==NULL))\000"
	.text
	.align	2
	.global	EApiStorageCap
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiStorageCap, %function
EApiStorageCap:
.LFB23:
	.loc 1 771 1
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
	.loc 1 771 1
	ldr	r2, .L197
.LPIC279:
	add	r2, pc, r2
	ldr	r3, .L197+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 772 16
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 775 3
	ldr	r3, .L197+8
.LPIC270:
	add	r3, pc, r3
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L190
	.loc 1 775 3 is_stmt 0 discriminator 1
	ldr	r3, .L197+12
.LPIC271:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L197+16
.LPIC272:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	movw	r3, #775
	ldr	r2, .L197+20
.LPIC273:
	add	r2, pc, r2
	ldr	r1, .L197+24
.LPIC274:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-12]
	b	.L191
.L190:
	.loc 1 776 3 is_stmt 1
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	bne	.L192
	.loc 1 776 3 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L192
	.loc 1 776 3 discriminator 2
	ldr	r3, .L197+28
.LPIC275:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L197+32
.LPIC276:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #776
	ldr	r2, .L197+36
.LPIC277:
	add	r2, pc, r2
	ldr	r1, .L197+40
.LPIC278:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-12]
	b	.L191
.L192:
	.loc 1 781 5 is_stmt 1
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L193
	.loc 1 782 17
	sub	r3, fp, #16
	str	r3, [fp, #-28]
.L193:
	.loc 1 783 5
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	bne	.L194
	.loc 1 784 17
	sub	r3, fp, #16
	str	r3, [fp, #-32]
.L194:
	.loc 1 786 14
	ldr	r2, [fp, #-32]
	ldr	r1, [fp, #-28]
	ldr	r0, [fp, #-24]
	bl	EApiStorageCapEmul(PLT)
	str	r0, [fp, #-12]
.L191:
	.loc 1 788 10
	ldr	r3, [fp, #-12]
	.loc 1 771 1
	ldr	r1, .L197+44
.LPIC280:
	add	r1, pc, r1
	.loc 1 789 1
	ldr	r2, .L197+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L196
	bl	__stack_chk_fail(PLT)
.L196:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L198:
	.align	2
.L197:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC279+8)
	.word	__stack_chk_guard(GOT)
	.word	Initialized-(.LPIC270+8)
	.word	.LC2-(.LPIC271+8)
	.word	.LC3-(.LPIC272+8)
	.word	.LC54-(.LPIC273+8)
	.word	.LC1-(.LPIC274+8)
	.word	.LC55-(.LPIC275+8)
	.word	.LC3-(.LPIC276+8)
	.word	.LC54-(.LPIC277+8)
	.word	.LC1-(.LPIC278+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC280+8)
	.cfi_endproc
.LFE23:
	.size	EApiStorageCap, .-EApiStorageCap
	.section	.rodata
	.align	2
.LC56:
	.ascii	"EApiStorageAreaRead\000"
	.align	2
.LC57:
	.ascii	"Id=%08X Offset=%04X BufLen=%04X ByteCnt=%04X\012\000"
	.align	2
.LC58:
	.ascii	" pBuffer Overflow PreventedByteCnt>BufLen\000"
	.text
	.align	2
	.global	EApiStorageAreaRead
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiStorageAreaRead, %function
EApiStorageAreaRead:
.LFB24:
	.loc 1 799 1
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #48
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	.loc 1 800 16
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 802 3
	ldr	r3, .L208
.LPIC281:
	add	r3, pc, r3
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L200
	.loc 1 802 3 is_stmt 0 discriminator 1
	ldr	r3, .L208+4
.LPIC282:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L208+8
.LPIC283:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	movw	r3, #802
	ldr	r2, .L208+12
.LPIC284:
	add	r2, pc, r2
	ldr	r1, .L208+16
.LPIC285:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-12]
	b	.L201
.L200:
	.loc 1 804 3 is_stmt 1
	ldr	r3, [fp, #4]
	str	r3, [sp, #20]
	ldr	r3, [fp, #-28]
	str	r3, [sp, #16]
	ldr	r3, [fp, #-20]
	str	r3, [sp, #12]
	ldr	r3, [fp, #-16]
	str	r3, [sp, #8]
	ldr	r3, .L208+20
.LPIC286:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, .L208+24
.LPIC287:
	add	r3, pc, r3
	str	r3, [sp]
	mov	r3, #808
	ldr	r2, .L208+28
.LPIC288:
	add	r2, pc, r2
	ldr	r1, .L208+32
.LPIC289:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_M2(PLT)
	.loc 1 815 3
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L202
	.loc 1 815 3 is_stmt 0 discriminator 1
	ldr	r3, .L208+36
.LPIC290:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L208+40
.LPIC291:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #815
	ldr	r2, .L208+44
.LPIC292:
	add	r2, pc, r2
	ldr	r1, .L208+48
.LPIC293:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-12]
	b	.L201
.L202:
	.loc 1 816 3 is_stmt 1
	ldr	r3, [fp, #4]
	cmp	r3, #0
	bne	.L203
	.loc 1 816 3 is_stmt 0 discriminator 1
	ldr	r3, .L208+52
.LPIC294:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L208+56
.LPIC295:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #816
	ldr	r2, .L208+60
.LPIC296:
	add	r2, pc, r2
	ldr	r1, .L208+64
.LPIC297:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-12]
	b	.L201
.L203:
	.loc 1 817 3 is_stmt 1
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L204
	.loc 1 817 3 is_stmt 0 discriminator 1
	ldr	r3, .L208+68
.LPIC298:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L208+72
.LPIC299:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #817
	ldr	r2, .L208+76
.LPIC300:
	add	r2, pc, r2
	ldr	r1, .L208+80
.LPIC301:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-12]
	b	.L201
.L204:
	.loc 1 819 3 is_stmt 1
	ldr	r2, [fp, #4]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	bls	.L205
	.loc 1 819 3 is_stmt 0 discriminator 1
	ldr	r3, .L208+84
.LPIC302:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L208+88
.LPIC303:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #1536
	str	r3, [sp]
	movw	r3, #819
	ldr	r2, .L208+92
.LPIC304:
	add	r2, pc, r2
	ldr	r1, .L208+96
.LPIC305:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	ldr	r3, [fp, #-28]
	str	r3, [fp, #4]
	mvn	r3, #1536
	str	r3, [fp, #-12]
.L205:
	.loc 1 821 14 is_stmt 1
	ldr	r3, [fp, #4]
	ldr	r2, [fp, #-24]
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	EApiStorageAreaReadEmul(PLT)
	str	r0, [fp, #-8]
	.loc 1 822 5
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L207
	.loc 1 823 15
	ldr	r3, [fp, #-8]
	str	r3, [fp, #-12]
	b	.L201
.L207:
	.loc 1 824 1
	nop
.L201:
	.loc 1 825 10
	ldr	r3, [fp, #-12]
	.loc 1 826 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L209:
	.align	2
.L208:
	.word	Initialized-(.LPIC281+8)
	.word	.LC2-(.LPIC282+8)
	.word	.LC3-(.LPIC283+8)
	.word	.LC56-(.LPIC284+8)
	.word	.LC1-(.LPIC285+8)
	.word	.LC57-(.LPIC286+8)
	.word	.LC9-(.LPIC287+8)
	.word	.LC7-(.LPIC288+8)
	.word	.LC1-(.LPIC289+8)
	.word	.LC16-(.LPIC290+8)
	.word	.LC3-(.LPIC291+8)
	.word	.LC56-(.LPIC292+8)
	.word	.LC1-(.LPIC293+8)
	.word	.LC18-(.LPIC294+8)
	.word	.LC3-(.LPIC295+8)
	.word	.LC56-(.LPIC296+8)
	.word	.LC1-(.LPIC297+8)
	.word	.LC17-(.LPIC298+8)
	.word	.LC3-(.LPIC299+8)
	.word	.LC56-(.LPIC300+8)
	.word	.LC1-(.LPIC301+8)
	.word	.LC58-(.LPIC302+8)
	.word	.LC3-(.LPIC303+8)
	.word	.LC56-(.LPIC304+8)
	.word	.LC1-(.LPIC305+8)
	.cfi_endproc
.LFE24:
	.size	EApiStorageAreaRead, .-EApiStorageAreaRead
	.section	.rodata
	.align	2
.LC59:
	.ascii	"EApiStorageAreaWrite\000"
	.align	2
.LC60:
	.ascii	"Id=%08X Offset=%04X ByteCnt=%04X\012\000"
	.text
	.align	2
	.global	EApiStorageAreaWrite
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiStorageAreaWrite, %function
EApiStorageAreaWrite:
.LFB25:
	.loc 1 836 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #48
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	.loc 1 837 16
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 839 3
	ldr	r3, .L216
.LPIC306:
	add	r3, pc, r3
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L211
	.loc 1 839 3 is_stmt 0 discriminator 1
	ldr	r3, .L216+4
.LPIC307:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L216+8
.LPIC308:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	movw	r3, #839
	ldr	r2, .L216+12
.LPIC309:
	add	r2, pc, r2
	ldr	r1, .L216+16
.LPIC310:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-8]
	b	.L212
.L211:
	.loc 1 841 3 is_stmt 1
	ldr	r3, [fp, #-28]
	str	r3, [sp, #16]
	ldr	r3, [fp, #-20]
	str	r3, [sp, #12]
	ldr	r3, [fp, #-16]
	str	r3, [sp, #8]
	ldr	r3, .L216+20
.LPIC311:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, .L216+24
.LPIC312:
	add	r3, pc, r3
	str	r3, [sp]
	movw	r3, #845
	ldr	r2, .L216+28
.LPIC313:
	add	r2, pc, r2
	ldr	r1, .L216+32
.LPIC314:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_M2(PLT)
	.loc 1 852 3
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L213
	.loc 1 852 3 is_stmt 0 discriminator 1
	ldr	r3, .L216+36
.LPIC315:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L216+40
.LPIC316:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #852
	ldr	r2, .L216+44
.LPIC317:
	add	r2, pc, r2
	ldr	r1, .L216+48
.LPIC318:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-8]
	b	.L212
.L213:
	.loc 1 853 3 is_stmt 1
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L214
	.loc 1 853 3 is_stmt 0 discriminator 1
	ldr	r3, .L216+52
.LPIC319:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L216+56
.LPIC320:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #853
	ldr	r2, .L216+60
.LPIC321:
	add	r2, pc, r2
	ldr	r1, .L216+64
.LPIC322:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-8]
	b	.L212
.L214:
	.loc 1 855 14 is_stmt 1
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-24]
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	EApiStorageAreaWriteEmul(PLT)
	str	r0, [fp, #-8]
.L212:
	.loc 1 857 10
	ldr	r3, [fp, #-8]
	.loc 1 858 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L217:
	.align	2
.L216:
	.word	Initialized-(.LPIC306+8)
	.word	.LC2-(.LPIC307+8)
	.word	.LC3-(.LPIC308+8)
	.word	.LC59-(.LPIC309+8)
	.word	.LC1-(.LPIC310+8)
	.word	.LC60-(.LPIC311+8)
	.word	.LC9-(.LPIC312+8)
	.word	.LC7-(.LPIC313+8)
	.word	.LC1-(.LPIC314+8)
	.word	.LC16-(.LPIC315+8)
	.word	.LC3-(.LPIC316+8)
	.word	.LC59-(.LPIC317+8)
	.word	.LC1-(.LPIC318+8)
	.word	.LC18-(.LPIC319+8)
	.word	.LC3-(.LPIC320+8)
	.word	.LC59-(.LPIC321+8)
	.word	.LC1-(.LPIC322+8)
	.cfi_endproc
.LFE25:
	.size	EApiStorageAreaWrite, .-EApiStorageAreaWrite
.Letext0:
	.file 2 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/bits/alltypes.h"
	.file 3 "../../include/EApi.h"
	.file 4 "../include/EApiEmulStorage.h"
	.file 5 "../include/EApiEmulWDT.h"
	.file 6 "../include/EApiInitLib.h"
	.file 7 "../include/EApiEmulGPIO.h"
	.file 8 "../include/EApiEmulBacklight.h"
	.file 9 "../include/EApiEmulBoardInfo.h"
	.file 10 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/stdlib.h"
	.file 11 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/string.h"
	.file 12 "../include/EApiEmulI2C.h"
	.file 13 "../include/DbgChk.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xdb8
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x13
	.4byte	.LASF110
	.byte	0x1d
	.4byte	.LASF111
	.4byte	.LASF112
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0xb
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2b
	.byte	0x18
	.4byte	0x26
	.uleb128 0x14
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0xb
	.4byte	.LASF4
	.byte	0x2
	.byte	0x30
	.byte	0x18
	.4byte	0x26
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0xa
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0xb
	.4byte	.LASF7
	.byte	0x2
	.byte	0x72
	.byte	0x19
	.4byte	0x74
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0xa
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0xb
	.4byte	.LASF10
	.byte	0x2
	.byte	0x7c
	.byte	0x19
	.4byte	0x26
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0xd
	.4byte	0x9a
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x15
	.4byte	0x9a
	.uleb128 0x16
	.byte	0x4
	.uleb128 0xd
	.4byte	0xa1
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0xb
	.4byte	.LASF14
	.byte	0x3
	.byte	0x91
	.byte	0x12
	.4byte	0x82
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x3
	.byte	0x92
	.byte	0x12
	.4byte	0x82
	.uleb128 0x17
	.4byte	.LASF113
	.byte	0x1
	.byte	0x28
	.byte	0x5
	.4byte	0x39
	.uleb128 0x5
	.byte	0x3
	.4byte	Initialized
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x2e
	.byte	0x1
	.4byte	0x82
	.4byte	0x103
	.uleb128 0x1
	.4byte	0x82
	.uleb128 0x1
	.4byte	0x82
	.uleb128 0x1
	.4byte	0xa6
	.uleb128 0x1
	.4byte	0x82
	.byte	0
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x35
	.byte	0x1
	.4byte	0x82
	.4byte	0x128
	.uleb128 0x1
	.4byte	0x82
	.uleb128 0x1
	.4byte	0x82
	.uleb128 0x1
	.4byte	0xa6
	.uleb128 0x1
	.4byte	0x82
	.byte	0
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x3c
	.byte	0x1
	.4byte	0x82
	.4byte	0x148
	.uleb128 0x1
	.4byte	0x82
	.uleb128 0x1
	.4byte	0x148
	.uleb128 0x1
	.4byte	0x148
	.byte	0
	.uleb128 0xd
	.4byte	0x82
	.uleb128 0x11
	.4byte	.LASF19
	.byte	0x4b
	.4byte	0x82
	.uleb128 0x11
	.4byte	.LASF20
	.byte	0x49
	.4byte	0x82
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x5
	.byte	0x3f
	.byte	0x1
	.4byte	0x82
	.4byte	0x181
	.uleb128 0x1
	.4byte	0x82
	.uleb128 0x1
	.4byte	0x82
	.uleb128 0x1
	.4byte	0x82
	.byte	0
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x5
	.byte	0x2f
	.byte	0x1
	.4byte	0x82
	.4byte	0x1a1
	.uleb128 0x1
	.4byte	0x148
	.uleb128 0x1
	.4byte	0x148
	.uleb128 0x1
	.4byte	0x148
	.byte	0
	.uleb128 0x12
	.4byte	.LASF23
	.byte	0x39
	.4byte	0x82
	.4byte	0x1b1
	.uleb128 0xe
	.byte	0
	.uleb128 0x12
	.4byte	.LASF24
	.byte	0x37
	.4byte	0x82
	.4byte	0x1c1
	.uleb128 0xe
	.byte	0
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x7
	.byte	0x2e
	.byte	0x1
	.4byte	0x82
	.4byte	0x1e1
	.uleb128 0x1
	.4byte	0x82
	.uleb128 0x1
	.4byte	0x148
	.uleb128 0x1
	.4byte	0x148
	.byte	0
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x7
	.byte	0x3a
	.byte	0x1
	.4byte	0x82
	.4byte	0x201
	.uleb128 0x1
	.4byte	0x82
	.uleb128 0x1
	.4byte	0x82
	.uleb128 0x1
	.4byte	0x82
	.byte	0
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x7
	.byte	0x34
	.byte	0x1
	.4byte	0x82
	.4byte	0x221
	.uleb128 0x1
	.4byte	0x82
	.uleb128 0x1
	.4byte	0x82
	.uleb128 0x1
	.4byte	0x148
	.byte	0
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x7
	.byte	0x46
	.byte	0x1
	.4byte	0x82
	.4byte	0x241
	.uleb128 0x1
	.4byte	0x82
	.uleb128 0x1
	.4byte	0x82
	.uleb128 0x1
	.4byte	0x82
	.byte	0
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x7
	.byte	0x40
	.byte	0x1
	.4byte	0x82
	.4byte	0x261
	.uleb128 0x1
	.4byte	0x82
	.uleb128 0x1
	.4byte	0x82
	.uleb128 0x1
	.4byte	0x148
	.byte	0
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x8
	.byte	0x3d
	.byte	0x1
	.4byte	0x82
	.4byte	0x27c
	.uleb128 0x1
	.4byte	0x82
	.uleb128 0x1
	.4byte	0x82
	.byte	0
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x8
	.byte	0x38
	.byte	0x1
	.4byte	0x82
	.4byte	0x297
	.uleb128 0x1
	.4byte	0x82
	.uleb128 0x1
	.4byte	0x148
	.byte	0
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x8
	.byte	0x33
	.byte	0x1
	.4byte	0x82
	.4byte	0x2b2
	.uleb128 0x1
	.4byte	0x82
	.uleb128 0x1
	.4byte	0x82
	.byte	0
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x8
	.byte	0x2e
	.byte	0x1
	.4byte	0x82
	.4byte	0x2cd
	.uleb128 0x1
	.4byte	0x82
	.uleb128 0x1
	.4byte	0x148
	.byte	0
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x9
	.byte	0x2e
	.byte	0x1
	.4byte	0x82
	.4byte	0x2e8
	.uleb128 0x1
	.4byte	0x82
	.uleb128 0x1
	.4byte	0x148
	.byte	0
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x9
	.byte	0x33
	.byte	0x1
	.4byte	0x82
	.4byte	0x308
	.uleb128 0x1
	.4byte	0x82
	.uleb128 0x1
	.4byte	0x95
	.uleb128 0x1
	.4byte	0x148
	.byte	0
	.uleb128 0x18
	.4byte	.LASF36
	.byte	0xa
	.byte	0x29
	.byte	0x6
	.4byte	0x31a
	.uleb128 0x1
	.4byte	0xa6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0xb
	.byte	0x19
	.byte	0x7
	.4byte	0xa6
	.4byte	0x33a
	.uleb128 0x1
	.4byte	0xa6
	.uleb128 0x1
	.4byte	0x33a
	.uleb128 0x1
	.4byte	0x2d
	.byte	0
	.uleb128 0xd
	.4byte	0x33f
	.uleb128 0x19
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0xa
	.byte	0x26
	.byte	0x7
	.4byte	0xa6
	.4byte	0x356
	.uleb128 0x1
	.4byte	0x2d
	.byte	0
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0xc
	.byte	0x35
	.byte	0x1
	.4byte	0x82
	.4byte	0x385
	.uleb128 0x1
	.4byte	0x82
	.uleb128 0x1
	.4byte	0x68
	.uleb128 0x1
	.4byte	0xa6
	.uleb128 0x1
	.4byte	0x82
	.uleb128 0x1
	.4byte	0xa6
	.uleb128 0x1
	.4byte	0x82
	.byte	0
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0xd
	.byte	0x30
	.byte	0x1
	.4byte	0x39
	.4byte	0x3b5
	.uleb128 0x1
	.4byte	0x9a
	.uleb128 0x1
	.4byte	0xa8
	.uleb128 0x1
	.4byte	0xa8
	.uleb128 0x1
	.4byte	0x26
	.uleb128 0x1
	.4byte	0xa8
	.uleb128 0x1
	.4byte	0xa8
	.uleb128 0xe
	.byte	0
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0xc
	.byte	0x2f
	.byte	0xf
	.4byte	0x82
	.4byte	0x3d0
	.uleb128 0x1
	.4byte	0x82
	.uleb128 0x1
	.4byte	0x148
	.byte	0
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0xd
	.byte	0x3e
	.byte	0x1
	.4byte	0x39
	.4byte	0x400
	.uleb128 0x1
	.4byte	0x9a
	.uleb128 0x1
	.4byte	0xa8
	.uleb128 0x1
	.4byte	0xa8
	.uleb128 0x1
	.4byte	0x26
	.uleb128 0x1
	.4byte	0xb4
	.uleb128 0x1
	.4byte	0xa8
	.uleb128 0xe
	.byte	0
	.uleb128 0x6
	.4byte	.LASF46
	.2byte	0x33e
	.4byte	0xb4
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x46f
	.uleb128 0x7
	.ascii	"Id\000"
	.2byte	0x33f
	.byte	0x15
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF43
	.2byte	0x340
	.byte	0x15
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF44
	.2byte	0x341
	.byte	0x15
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF45
	.2byte	0x342
	.byte	0x15
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF49
	.2byte	0x345
	.byte	0x10
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x5
	.4byte	.LASF51
	.2byte	0x358
	.4byte	.L212
	.byte	0
	.uleb128 0x6
	.4byte	.LASF47
	.2byte	0x318
	.4byte	0xb4
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4fc
	.uleb128 0x7
	.ascii	"Id\000"
	.2byte	0x319
	.byte	0x15
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF43
	.2byte	0x31a
	.byte	0x15
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF44
	.2byte	0x31b
	.byte	0x15
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF48
	.2byte	0x31c
	.byte	0x15
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF45
	.2byte	0x31d
	.byte	0x15
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.4byte	.LASF49
	.2byte	0x320
	.byte	0x10
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3
	.4byte	.LASF50
	.2byte	0x321
	.byte	0x10
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x5
	.4byte	.LASF51
	.2byte	0x338
	.4byte	.L201
	.byte	0
	.uleb128 0x6
	.4byte	.LASF52
	.2byte	0x2fe
	.4byte	0xb4
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x56b
	.uleb128 0x7
	.ascii	"Id\000"
	.2byte	0x2ff
	.byte	0x15
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF53
	.2byte	0x300
	.byte	0x16
	.4byte	0x148
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF54
	.2byte	0x301
	.byte	0x16
	.4byte	0x148
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF49
	.2byte	0x304
	.byte	0x10
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3
	.4byte	.LASF55
	.2byte	0x305
	.byte	0xc
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF51
	.2byte	0x313
	.4byte	.L191
	.byte	0
	.uleb128 0x6
	.4byte	.LASF56
	.2byte	0x2ea
	.4byte	0xb4
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x59f
	.uleb128 0x3
	.4byte	.LASF49
	.2byte	0x2ec
	.byte	0x10
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x5
	.4byte	.LASF51
	.2byte	0x2ef
	.4byte	.L185
	.byte	0
	.uleb128 0x6
	.4byte	.LASF57
	.2byte	0x2e0
	.4byte	0xb4
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d3
	.uleb128 0x3
	.4byte	.LASF49
	.2byte	0x2e2
	.byte	0x10
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x5
	.4byte	.LASF51
	.2byte	0x2e5
	.4byte	.L179
	.byte	0
	.uleb128 0x6
	.4byte	.LASF58
	.2byte	0x2ce
	.4byte	0xb4
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x634
	.uleb128 0x2
	.4byte	.LASF59
	.2byte	0x2cf
	.byte	0x14
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF60
	.2byte	0x2d0
	.byte	0x14
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF61
	.2byte	0x2d3
	.byte	0x14
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF49
	.2byte	0x2d8
	.byte	0x10
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x5
	.4byte	.LASF51
	.2byte	0x2db
	.4byte	.L173
	.byte	0
	.uleb128 0x6
	.4byte	.LASF62
	.2byte	0x2ac
	.4byte	0xb4
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6a4
	.uleb128 0x2
	.4byte	.LASF63
	.2byte	0x2ad
	.byte	0x18
	.4byte	0x148
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF64
	.2byte	0x2b0
	.byte	0x18
	.4byte	0x148
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF65
	.2byte	0x2b5
	.byte	0x18
	.4byte	0x148
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF49
	.2byte	0x2bb
	.byte	0x10
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3
	.4byte	.LASF66
	.2byte	0x2bc
	.byte	0xc
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF51
	.2byte	0x2c8
	.4byte	.L162
	.byte	0
	.uleb128 0x6
	.4byte	.LASF67
	.2byte	0x293
	.4byte	0xb4
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6d8
	.uleb128 0x3
	.4byte	.LASF49
	.2byte	0x295
	.byte	0x10
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x5
	.4byte	.LASF51
	.2byte	0x29a
	.4byte	.L156
	.byte	0
	.uleb128 0x6
	.4byte	.LASF68
	.2byte	0x286
	.4byte	0xb4
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x70c
	.uleb128 0x3
	.4byte	.LASF49
	.2byte	0x288
	.byte	0x10
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x5
	.4byte	.LASF51
	.2byte	0x28d
	.4byte	.L150
	.byte	0
	.uleb128 0x6
	.4byte	.LASF69
	.2byte	0x25c
	.4byte	0xb4
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x77b
	.uleb128 0x7
	.ascii	"Id\000"
	.2byte	0x25d
	.byte	0x17
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF70
	.2byte	0x25e
	.byte	0x18
	.4byte	0x148
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF71
	.2byte	0x261
	.byte	0x18
	.4byte	0x148
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF49
	.2byte	0x266
	.byte	0x10
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3
	.4byte	.LASF72
	.2byte	0x267
	.byte	0xc
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF51
	.2byte	0x276
	.4byte	.L140
	.byte	0
	.uleb128 0x6
	.4byte	.LASF73
	.2byte	0x249
	.4byte	0xb4
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7db
	.uleb128 0x7
	.ascii	"Id\000"
	.2byte	0x24a
	.byte	0x14
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF74
	.2byte	0x24b
	.byte	0x14
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF75
	.2byte	0x24e
	.byte	0x14
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF49
	.2byte	0x251
	.byte	0x10
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x5
	.4byte	.LASF51
	.2byte	0x256
	.4byte	.L133
	.byte	0
	.uleb128 0x6
	.4byte	.LASF76
	.2byte	0x235
	.4byte	0xb4
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x83b
	.uleb128 0x7
	.ascii	"Id\000"
	.2byte	0x236
	.byte	0x14
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF74
	.2byte	0x237
	.byte	0x14
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF77
	.2byte	0x23a
	.byte	0x15
	.4byte	0x148
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF49
	.2byte	0x23d
	.byte	0x10
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x5
	.4byte	.LASF51
	.2byte	0x243
	.4byte	.L125
	.byte	0
	.uleb128 0x6
	.4byte	.LASF78
	.2byte	0x222
	.4byte	0xb4
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x89b
	.uleb128 0x7
	.ascii	"Id\000"
	.2byte	0x223
	.byte	0x14
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF74
	.2byte	0x224
	.byte	0x14
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF79
	.2byte	0x227
	.byte	0x14
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF49
	.2byte	0x22a
	.byte	0x10
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x5
	.4byte	.LASF51
	.2byte	0x22f
	.4byte	.L118
	.byte	0
	.uleb128 0x6
	.4byte	.LASF80
	.2byte	0x20e
	.4byte	0xb4
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8fb
	.uleb128 0x7
	.ascii	"Id\000"
	.2byte	0x20f
	.byte	0x14
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF74
	.2byte	0x210
	.byte	0x14
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF81
	.2byte	0x213
	.byte	0x15
	.4byte	0x148
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF49
	.2byte	0x216
	.byte	0x10
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x5
	.4byte	.LASF51
	.2byte	0x21c
	.4byte	.L110
	.byte	0
	.uleb128 0x6
	.4byte	.LASF82
	.2byte	0x1ee
	.4byte	0xb4
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x94c
	.uleb128 0x7
	.ascii	"Id\000"
	.2byte	0x1ef
	.byte	0x15
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF83
	.2byte	0x1f0
	.byte	0x15
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF49
	.2byte	0x1f3
	.byte	0x10
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x5
	.4byte	.LASF51
	.2byte	0x1fc
	.4byte	.L103
	.byte	0
	.uleb128 0x6
	.4byte	.LASF84
	.2byte	0x1de
	.4byte	0xb4
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x99d
	.uleb128 0x7
	.ascii	"Id\000"
	.2byte	0x1df
	.byte	0x15
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF85
	.2byte	0x1e0
	.byte	0x15
	.4byte	0x148
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF49
	.2byte	0x1e3
	.byte	0x10
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x5
	.4byte	.LASF51
	.2byte	0x1e8
	.4byte	.L96
	.byte	0
	.uleb128 0x6
	.4byte	.LASF86
	.2byte	0x1ca
	.4byte	0xb4
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9ee
	.uleb128 0x7
	.ascii	"Id\000"
	.2byte	0x1cb
	.byte	0x15
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF87
	.2byte	0x1cc
	.byte	0x15
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF49
	.2byte	0x1cf
	.byte	0x10
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x5
	.4byte	.LASF51
	.2byte	0x1d9
	.4byte	.L88
	.byte	0
	.uleb128 0x6
	.4byte	.LASF88
	.2byte	0x1ba
	.4byte	0xb4
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa3f
	.uleb128 0x7
	.ascii	"Id\000"
	.2byte	0x1bb
	.byte	0x15
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF89
	.2byte	0x1bc
	.byte	0x15
	.4byte	0x148
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF49
	.2byte	0x1bf
	.byte	0x10
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x5
	.4byte	.LASF51
	.2byte	0x1c4
	.4byte	.L81
	.byte	0
	.uleb128 0x6
	.4byte	.LASF90
	.2byte	0x19b
	.4byte	0xb4
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa90
	.uleb128 0x7
	.ascii	"Id\000"
	.2byte	0x19c
	.byte	0x15
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF91
	.2byte	0x19d
	.byte	0x15
	.4byte	0x148
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF49
	.2byte	0x1a0
	.byte	0x10
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x5
	.4byte	.LASF51
	.2byte	0x1aa
	.4byte	.L73
	.byte	0
	.uleb128 0x6
	.4byte	.LASF92
	.2byte	0x17c
	.4byte	0xb4
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaf0
	.uleb128 0x7
	.ascii	"Id\000"
	.2byte	0x17d
	.byte	0x19
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF44
	.2byte	0x17e
	.byte	0x19
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF93
	.2byte	0x17f
	.byte	0x19
	.4byte	0x148
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF49
	.2byte	0x182
	.byte	0x10
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x5
	.4byte	.LASF51
	.2byte	0x18c
	.4byte	.L65
	.byte	0
	.uleb128 0x6
	.4byte	.LASF94
	.2byte	0x152
	.4byte	0xb4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb5f
	.uleb128 0x7
	.ascii	"Id\000"
	.2byte	0x153
	.byte	0x15
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF95
	.2byte	0x154
	.byte	0x15
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF49
	.2byte	0x159
	.byte	0x10
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF96
	.2byte	0x15a
	.byte	0xb
	.4byte	0xb5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF97
	.2byte	0x15b
	.byte	0x7
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF51
	.2byte	0x16d
	.4byte	.L56
	.byte	0
	.uleb128 0x1a
	.4byte	0x68
	.4byte	0xb6f
	.uleb128 0x1b
	.4byte	0x26
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.4byte	.LASF98
	.byte	0xee
	.4byte	0xb4
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc1e
	.uleb128 0xc
	.ascii	"Id\000"
	.byte	0xef
	.byte	0x15
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF95
	.byte	0xf0
	.byte	0x15
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.ascii	"Cmd\000"
	.byte	0xf3
	.byte	0x15
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0xf4
	.byte	0x15
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0xf5
	.byte	0x15
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0xf8
	.byte	0x10
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.4byte	.LASF99
	.byte	0xf9
	.byte	0xd
	.4byte	0xc1e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0xfa
	.byte	0xc
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0xfb
	.byte	0xc
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x9
	.4byte	.LASF101
	.byte	0xfc
	.byte	0xc
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.4byte	.LASF51
	.2byte	0x14c
	.4byte	.L39
	.byte	0
	.uleb128 0xd
	.4byte	0x68
	.uleb128 0xf
	.4byte	.LASF102
	.byte	0xa4
	.4byte	0xb4
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcd1
	.uleb128 0xc
	.ascii	"Id\000"
	.byte	0xa5
	.byte	0x15
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF95
	.byte	0xa6
	.byte	0x15
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.ascii	"Cmd\000"
	.byte	0xa9
	.byte	0x15
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0xaa
	.byte	0x15
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0xab
	.byte	0x15
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0xac
	.byte	0x15
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0xaf
	.byte	0x10
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.4byte	.LASF96
	.byte	0xb0
	.byte	0xb
	.4byte	0xb5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0xb1
	.byte	0x7
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.4byte	.LASF101
	.byte	0xb3
	.byte	0xc
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.4byte	.LASF51
	.byte	0xe6
	.4byte	.L24
	.byte	0
	.uleb128 0xf
	.4byte	.LASF103
	.byte	0x56
	.4byte	0xb4
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd71
	.uleb128 0xc
	.ascii	"Id\000"
	.byte	0x57
	.byte	0x18
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF95
	.byte	0x58
	.byte	0x18
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x8
	.4byte	.LASF104
	.byte	0x5b
	.byte	0x18
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.4byte	.LASF105
	.byte	0x5c
	.byte	0x18
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.4byte	.LASF106
	.byte	0x5f
	.byte	0x18
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF107
	.byte	0x60
	.byte	0x18
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x8
	.4byte	.LASF108
	.byte	0x61
	.byte	0x18
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x66
	.byte	0x10
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x67
	.byte	0x10
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x10
	.4byte	.LASF51
	.byte	0x9c
	.4byte	.L10
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF114
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.4byte	0x82
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.ascii	"Id\000"
	.byte	0x44
	.byte	0x15
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF109
	.byte	0x45
	.byte	0x15
	.4byte	0x148
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x4b
	.byte	0x10
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x10
	.4byte	.LASF51
	.byte	0x50
	.4byte	.L3
	.byte	0
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x5
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
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
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
.LASF107:
	.ascii	"RBufLen\000"
.LASF30:
	.ascii	"EApiVgaSetBacklightBrightnessEmul\000"
.LASF38:
	.ascii	"malloc\000"
.LASF3:
	.ascii	"size_t\000"
.LASF4:
	.ascii	"uintptr_t\000"
.LASF93:
	.ascii	"pBufLen\000"
.LASF14:
	.ascii	"EApiStatus_t\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF35:
	.ascii	"EApiBoardGetStringAEmul\000"
.LASF15:
	.ascii	"EApiId_t\000"
.LASF36:
	.ascii	"free\000"
.LASF33:
	.ascii	"EApiVgaGetBacklightEnableEmul\000"
.LASF17:
	.ascii	"EApiStorageAreaReadEmul\000"
.LASF81:
	.ascii	"pLevel\000"
.LASF2:
	.ascii	"long long int\000"
.LASF5:
	.ascii	"signed char\000"
.LASF108:
	.ascii	"ReadBCnt\000"
.LASF23:
	.ascii	"EApiUninitLib\000"
.LASF104:
	.ascii	"pWBuffer\000"
.LASF29:
	.ascii	"EApiGPIOGetLevelEmul\000"
.LASF112:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux\000"
.LASF1:
	.ascii	"long int\000"
.LASF18:
	.ascii	"EApiStorageCapEmul\000"
.LASF25:
	.ascii	"EApiGPIOGetDirectionCapsEmul\000"
.LASF37:
	.ascii	"memcpy\000"
.LASF20:
	.ascii	"EApiWDogTriggerEmul\000"
.LASF103:
	.ascii	"EApiI2CWriteReadRaw\000"
.LASF96:
	.ascii	"LclpBuffer\000"
.LASF55:
	.ascii	"DummyValue\000"
.LASF114:
	.ascii	"EApiI2CGetBusCap\000"
.LASF79:
	.ascii	"Level\000"
.LASF53:
	.ascii	"pStorageSize\000"
.LASF111:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EA"
	.ascii	"piAPI.cpp\000"
.LASF75:
	.ascii	"Direction\000"
.LASF110:
	.ascii	"GNU C17 11.2.0 -mcpu=cortex-a9 -mfloat-abi=hard -mf"
	.ascii	"pu=vfpv3 -mabi=aapcs-linux -mtls-dialect=gnu -marm "
	.ascii	"-march=armv7-a+mp+sec+vfpv3 -g -fstack-protector-st"
	.ascii	"rong -fvisibility=hidden -fPIC\000"
.LASF87:
	.ascii	"Enable\000"
.LASF73:
	.ascii	"EApiGPIOSetDirection\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF92:
	.ascii	"EApiBoardGetStringA\000"
.LASF13:
	.ascii	"long unsigned int\000"
.LASF44:
	.ascii	"pBuffer\000"
.LASF85:
	.ascii	"pBright\000"
.LASF16:
	.ascii	"EApiStorageAreaWriteEmul\000"
.LASF41:
	.ascii	"EApiI2CGetBusCapEmul\000"
.LASF82:
	.ascii	"EApiVgaSetBacklightBrightness\000"
.LASF9:
	.ascii	"short unsigned int\000"
.LASF51:
	.ascii	"ExitPoint\000"
.LASF99:
	.ascii	"pLclBuffer\000"
.LASF54:
	.ascii	"pBlockLength\000"
.LASF34:
	.ascii	"EApiBoardGetValueEmul\000"
.LASF52:
	.ascii	"EApiStorageCap\000"
.LASF77:
	.ascii	"pDirection\000"
.LASF78:
	.ascii	"EApiGPIOSetLevel\000"
.LASF24:
	.ascii	"EApiInitLib\000"
.LASF69:
	.ascii	"EApiGPIOGetDirectionCaps\000"
.LASF66:
	.ascii	"DummyData\000"
.LASF57:
	.ascii	"EApiWDogTrigger\000"
.LASF31:
	.ascii	"EApiVgaGetBacklightBrightnessEmul\000"
.LASF67:
	.ascii	"EApiLibUnInitialize\000"
.LASF74:
	.ascii	"Bitmask\000"
.LASF84:
	.ascii	"EApiVgaGetBacklightBrightness\000"
.LASF100:
	.ascii	"ReturnValue\000"
.LASF21:
	.ascii	"EApiWDogStartEmul\000"
.LASF59:
	.ascii	"Delay\000"
.LASF48:
	.ascii	"BufLen\000"
.LASF94:
	.ascii	"EApiI2CProbeDevice\000"
.LASF98:
	.ascii	"EApiI2CWriteTransfer\000"
.LASF70:
	.ascii	"pInputs\000"
.LASF46:
	.ascii	"EApiStorageAreaWrite\000"
.LASF65:
	.ascii	"pMaxResetTimeout\000"
.LASF19:
	.ascii	"EApiWDogStopEmul\000"
.LASF45:
	.ascii	"ByteCnt\000"
.LASF106:
	.ascii	"pRBuffer\000"
.LASF105:
	.ascii	"WriteBCnt\000"
.LASF95:
	.ascii	"Addr\000"
.LASF50:
	.ascii	"ErrorCode2\000"
.LASF90:
	.ascii	"EApiBoardGetValue\000"
.LASF102:
	.ascii	"EApiI2CReadTransfer\000"
.LASF8:
	.ascii	"unsigned char\000"
.LASF72:
	.ascii	"DpBuffer\000"
.LASF71:
	.ascii	"pOutputs\000"
.LASF6:
	.ascii	"short int\000"
.LASF28:
	.ascii	"EApiGPIOSetLevelEmul\000"
.LASF60:
	.ascii	"EventTimeout\000"
.LASF42:
	.ascii	"siFormattedMessage_SC\000"
.LASF27:
	.ascii	"EApiGPIOGetDirectionEmul\000"
.LASF22:
	.ascii	"EApiWDogGetCapEmul\000"
.LASF32:
	.ascii	"EApiVgaSetBacklightEnableEmul\000"
.LASF68:
	.ascii	"EApiLibInitialize\000"
.LASF10:
	.ascii	"uint32_t\000"
.LASF88:
	.ascii	"EApiVgaGetBacklightEnable\000"
.LASF80:
	.ascii	"EApiGPIOGetLevel\000"
.LASF49:
	.ascii	"StatusCode\000"
.LASF12:
	.ascii	"char\000"
.LASF86:
	.ascii	"EApiVgaSetBacklightEnable\000"
.LASF91:
	.ascii	"pValue\000"
.LASF64:
	.ascii	"pMaxEventTimeout\000"
.LASF39:
	.ascii	"EApiI2CWriteReadEmul\000"
.LASF89:
	.ascii	"pEnable\000"
.LASF97:
	.ascii	"LclByteCnt\000"
.LASF61:
	.ascii	"ResetTimeout\000"
.LASF62:
	.ascii	"EApiWDogGetCap\000"
.LASF109:
	.ascii	"pMaxBlkLen\000"
.LASF101:
	.ascii	"MaxBlkLen\000"
.LASF76:
	.ascii	"EApiGPIOGetDirection\000"
.LASF83:
	.ascii	"Bright\000"
.LASF40:
	.ascii	"siFormattedMessage_M2\000"
.LASF26:
	.ascii	"EApiGPIOSetDirectionEmul\000"
.LASF58:
	.ascii	"EApiWDogStart\000"
.LASF43:
	.ascii	"Offset\000"
.LASF7:
	.ascii	"uint8_t\000"
.LASF56:
	.ascii	"EApiWDogStop\000"
.LASF113:
	.ascii	"Initialized\000"
.LASF47:
	.ascii	"EApiStorageAreaRead\000"
.LASF63:
	.ascii	"pMaxDelay\000"
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
