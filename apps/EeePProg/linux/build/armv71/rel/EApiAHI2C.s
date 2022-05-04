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
	.file	"EApiAHI2C.c"
	.text
	.section	.rodata.str1.4,"aMS",%progbits,1
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0
	push	{r4, lr}
	sub	sp, sp, #16
	beq	.L13
	cmp	r2, #0
	beq	.L14
	cmp	r3, #0
	beq	.L15
	ldrh	ip, [r0]
	ldrh	r0, [r0, #4]
	and	lr, ip, #63488
	cmp	r0, #2
	lsr	r0, ip, #1
	beq	.L16
	cmp	lr, #61440
	uxtb	lr, r1
	ubfx	r1, r1, #8, #2
	str	lr, [r3]
	beq	.L11
.L8:
.L3:
	add	r3, r0, r1
	mov	r0, #0
	lsl	r3, r3, #1
	uxtb	r3, r3
	str	r3, [r2]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L16:
	cmp	lr, #61440
	uxth	lr, r1
	ubfx	r1, r1, #16, #2
	orr	lr, lr, #-2147483648
	str	lr, [r3]
	bne	.L8
.L11:
	uxtb	ip, ip
	and	r3, r0, #768
	mov	r0, #0
	orr	ip, ip, r3
	add	ip, ip, r1
	lsl	r3, ip, #1
	uxtb	ip, ip
	and	r3, r3, #1536
	orr	r3, r3, ip
	orr	r3, r3, #61440
	str	r3, [r2]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L13:
	ldr	ip, .L17
	mvn	r4, #256
	ldr	r0, .L17+4
	mov	r3, #47
	ldr	r2, .L17+8
	ldr	r1, .L17+12
.LPIC2:
	add	ip, pc, ip
.LPIC3:
	add	r0, pc, r0
.LPIC0:
	add	r2, pc, r2
.LPIC1:
	add	r1, pc, r1
.L10:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L14:
	ldr	ip, .L17+16
	mvn	r4, #256
	ldr	r0, .L17+20
	mov	r3, #52
	ldr	r2, .L17+24
	ldr	r1, .L17+28
.LPIC6:
	add	ip, pc, ip
.LPIC7:
	add	r0, pc, r0
.LPIC4:
	add	r2, pc, r2
.LPIC5:
	add	r1, pc, r1
	b	.L10
.L15:
	ldr	ip, .L17+32
	mvn	r4, #256
	ldr	r0, .L17+36
	mov	r3, #57
	ldr	r2, .L17+40
	ldr	r1, .L17+44
.LPIC10:
	add	ip, pc, ip
.LPIC11:
	add	r0, pc, r0
.LPIC8:
	add	r2, pc, r2
.LPIC9:
	add	r1, pc, r1
	b	.L10
.L18:
	.align	2
.L17:
	.word	.LC2-(.LPIC2+8)
	.word	.LC3-(.LPIC3+8)
	.word	.LC0-(.LPIC0+8)
	.word	.LC1-(.LPIC1+8)
	.word	.LC4-(.LPIC6+8)
	.word	.LC3-(.LPIC7+8)
	.word	.LC0-(.LPIC4+8)
	.word	.LC1-(.LPIC5+8)
	.word	.LC5-(.LPIC10+8)
	.word	.LC3-(.LPIC11+8)
	.word	.LC0-(.LPIC8+8)
	.word	.LC1-(.LPIC9+8)
	.size	EApiAHI2CCCreateAddrOffset, .-EApiAHI2CCCreateAddrOffset
	.align	2
	.global	ValidEEPDevDesc
	.syntax unified
	.arm
	.fpu vfpv3
	.type	ValidEEPDevDesc, %function
ValidEEPDevDesc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	r3, [r0, #4]
	mov	r2, r0
	cmp	r3, #2
	beq	.L21
	ldr	r3, [r0, #8]
	lsr	r3, r3, #8
	lsls	r0, r3, #1
	bxeq	lr
	ldrh	r3, [r2]
	add	r3, r3, r0
	cmp	r3, #176
	movlt	r0, #0
	mvnge	r0, #256
	bx	lr
.L21:
	mov	r0, #0
	bx	lr
	.size	ValidEEPDevDesc, .-ValidEEPDevDesc
	.section	.rodata.str1.4
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
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #60
	str	r2, [sp, #20]
	subs	r7, r1, #0
	ldr	r2, .L70
	str	r3, [sp, #28]
	ldr	r3, .L70+4
.LPIC33:
	add	r2, pc, r2
	ldr	r9, [sp, #96]
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #52]
	mov	r3, #0
	beq	.L62
	ldr	r3, [sp, #28]
	cmp	r3, #0
	beq	.L63
	cmp	r9, #0
	beq	.L64
	ldrh	r3, [r7, #4]
	mov	fp, r0
	ldr	r2, [r7, #8]
	cmp	r3, #2
	beq	.L31
	lsr	r3, r2, #8
	lsls	r3, r3, #1
	bne	.L65
.L31:
	ldr	r3, [sp, #20]
	add	r9, r9, r3
	cmp	r9, r2
	bhi	.L66
	add	r1, sp, #48
	mov	r0, fp
	bl	EApiI2CGetBusCap(PLT)
	subs	r3, r0, #0
	str	r3, [sp, #44]
	bne	.L26
	ldrh	r6, [r7]
	ldrh	r10, [r7, #4]
	ldrh	r3, [r7, #2]
	ldr	r0, [sp, #48]
	lsr	r4, r6, #1
	uxtb	ip, r6
	and	r2, r4, #768
	mov	r1, r3
	orr	r2, r2, ip
	cmp	r2, #0
	moveq	ip, r10
	addne	ip, r10, #1
	add	r2, r3, ip
	cmp	r2, r0
	subhi	r1, r0, ip
	cmp	r10, #2
	beq	.L67
	cmp	r1, #256
	movcc	r2, r1
	movcs	r2, #256
	str	r2, [sp, #24]
.L35:
	ldr	r5, [sp, #20]
	cmp	r9, r5
	bls	.L26
	mov	r2, #63488
	str	fp, [sp, #40]
	movt	r2, 65535
	mov	fp, r3
	str	r2, [sp, #36]
	b	.L36
.L39:
	cmp	r3, #61440
	ubfx	r3, r5, #8, #2
	addne	r1, r4, r3
	uxtb	r2, r5
	lslne	r1, r1, #1
	uxtbne	r1, r1
	beq	.L60
.L41:
	ldr	r3, [sp, #20]
	ldr	r0, [sp, #28]
	str	r8, [sp]
	sub	r3, r5, r3
	add	r3, r0, r3
	ldr	r0, [sp, #40]
	bl	EApiI2CWriteTransfer(PLT)
	cmp	r0, #0
	bne	.L49
	ldrh	r0, [r7, #6]
	add	r5, r5, r8
	cmp	r0, #0
	bne	.L68
.L43:
	cmp	r9, r5
	bls	.L26
	ldrh	r6, [r7]
	ldrh	fp, [r7, #2]
	ldrh	r10, [r7, #4]
	lsr	r4, r6, #1
.L36:
	ldr	r3, [sp, #24]
	mov	r1, fp
	mov	r0, r5
	add	r2, r3, r5
	cmp	r9, r2
	subcc	r8, r9, r5
	movcc	r2, r9
	movcs	r8, r3
	str	r2, [sp, #32]
	bl	__aeabi_uidivmod(PLT)
	add	r1, r1, r8
	cmp	fp, r1
	bcs	.L38
	ldr	r2, [sp, #32]
	mov	r1, fp
	mov	r0, r2
	bl	__aeabi_uidivmod(PLT)
	sub	r8, r8, r1
.L38:
	ldr	r3, [sp, #36]
	cmp	r10, #2
	uxth	r4, r4
	and	r3, r6, r3
	bne	.L39
	cmp	r3, #61440
	ubfx	r3, r5, #16, #2
	addne	r3, r4, r3
	uxth	r2, r5
	lslne	r3, r3, #1
	orr	r2, r2, #-2147483648
	uxtbne	r1, r3
	bne	.L41
.L60:
	uxtb	r6, r6
	and	r4, r4, #768
	orr	r6, r6, r4
	add	r6, r6, r3
	lsl	r1, r6, #1
	uxtb	r6, r6
	and	r1, r1, #1536
	orr	r1, r1, r6
	orr	r1, r1, #61440
	b	.L41
.L65:
	ldrh	r1, [r7]
	add	r3, r1, r3
	cmp	r3, #175
	ble	.L31
	ldr	ip, .L70+8
	mvn	lr, #256
	ldr	r0, .L70+12
	mov	r3, #151
	ldr	r2, .L70+16
	ldr	r1, .L70+20
.LPIC26:
	add	ip, pc, ip
.LPIC27:
	add	r0, pc, r0
.LPIC24:
	add	r2, pc, r2
.LPIC25:
	add	r1, pc, r1
.L61:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	lr, [sp]
	str	lr, [sp, #44]
	bl	siFormattedMessage_SC(PLT)
.L26:
	ldr	r2, .L70+24
	ldr	r3, .L70+4
.LPIC32:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #52]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L69
	ldr	r0, [sp, #44]
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L68:
	mov	r3, #1000
	mul	r0, r3, r0
	bl	usleep(PLT)
	b	.L43
.L66:
	ldr	ip, .L70+28
	mvn	lr, #256
	ldr	r0, .L70+32
	mov	r3, #157
	ldr	r2, .L70+36
	ldr	r1, .L70+40
.LPIC30:
	add	ip, pc, ip
.LPIC31:
	add	r0, pc, r0
.LPIC28:
	add	r2, pc, r2
.LPIC29:
	add	r1, pc, r1
	b	.L61
.L67:
	cmp	r1, #65536
	movcc	r2, r1
	movcs	r2, #65536
	str	r2, [sp, #24]
	b	.L35
.L49:
.L28:
.L45:
	str	r0, [sp, #44]
	b	.L26
.L64:
	ldr	ip, .L70+44
	mvn	lr, #256
	ldr	r0, .L70+48
	mov	r3, #146
	ldr	r2, .L70+52
	ldr	r1, .L70+56
.LPIC22:
	add	ip, pc, ip
.LPIC23:
	add	r0, pc, r0
.LPIC20:
	add	r2, pc, r2
.LPIC21:
	add	r1, pc, r1
	b	.L61
.L62:
	ldr	ip, .L70+60
	mvn	lr, #256
	ldr	r0, .L70+64
	mov	r3, #136
	ldr	r2, .L70+68
	ldr	r1, .L70+72
.LPIC14:
	add	ip, pc, ip
.LPIC15:
	add	r0, pc, r0
.LPIC12:
	add	r2, pc, r2
.LPIC13:
	add	r1, pc, r1
	b	.L61
.L63:
	ldr	ip, .L70+76
	mvn	lr, #256
	ldr	r0, .L70+80
	mov	r3, #141
	ldr	r2, .L70+84
	ldr	r1, .L70+88
.LPIC18:
	add	ip, pc, ip
.LPIC19:
	add	r0, pc, r0
.LPIC16:
	add	r2, pc, r2
.LPIC17:
	add	r1, pc, r1
	b	.L61
.L69:
	bl	__stack_chk_fail(PLT)
.L71:
	.align	2
.L70:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC33+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC9-(.LPIC26+8)
	.word	.LC3-(.LPIC27+8)
	.word	.LC6-(.LPIC24+8)
	.word	.LC1-(.LPIC25+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC32+8)
	.word	.LC10-(.LPIC30+8)
	.word	.LC3-(.LPIC31+8)
	.word	.LC6-(.LPIC28+8)
	.word	.LC1-(.LPIC29+8)
	.word	.LC8-(.LPIC22+8)
	.word	.LC3-(.LPIC23+8)
	.word	.LC6-(.LPIC20+8)
	.word	.LC1-(.LPIC21+8)
	.word	.LC2-(.LPIC14+8)
	.word	.LC3-(.LPIC15+8)
	.word	.LC6-(.LPIC12+8)
	.word	.LC1-(.LPIC13+8)
	.word	.LC7-(.LPIC18+8)
	.word	.LC3-(.LPIC19+8)
	.word	.LC6-(.LPIC16+8)
	.word	.LC1-(.LPIC17+8)
	.size	EApiAHI2CWriteEeprom, .-EApiAHI2CWriteEeprom
	.section	.rodata.str1.4
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
	@ args = 8, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, r2
	ldr	r2, .L113
	mov	r9, r3
	subs	r7, r1, #0
	sub	sp, sp, #36
	ldr	r3, .L113+4
.LPIC63:
	add	r2, pc, r2
	ldr	r4, [sp, #72]
	ldr	r6, [sp, #76]
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #28]
	mov	r3, #0
	beq	.L103
	cmp	r9, #0
	beq	.L104
	cmp	r4, #0
	beq	.L105
	cmp	r6, #0
	beq	.L106
	cmp	r4, r6
	mov	r10, r0
	bcc	.L107
	ldrh	r3, [r7, #4]
	ldr	r2, [r7, #8]
	cmp	r3, #2
	beq	.L79
.L111:
	lsr	r3, r2, #8
	lsls	r3, r3, #1
	beq	.L79
	ldrh	r1, [r7]
	add	r3, r1, r3
	cmp	r3, #175
	bgt	.L108
.L79:
	add	r6, r6, r8
	cmp	r6, r2
	bhi	.L109
	add	r1, sp, #24
	mov	r0, r10
	bl	EApiI2CGetBusCap(PLT)
	subs	r3, r0, #0
	str	r3, [sp, #20]
	bne	.L72
	ldrh	r3, [r7, #4]
	ldr	r5, [sp, #24]
	cmp	r3, #2
	beq	.L110
	cmp	r5, #256
	movcs	r5, #256
.L83:
	cmp	r6, r8
	movhi	fp, #63488
	movhi	r4, r8
	movthi	fp, 65535
	bhi	.L82
	b	.L72
.L85:
	cmp	r2, #61440
	ubfx	r0, r4, #8, #2
	addne	r1, r1, r0
	uxtb	r2, r4
	lslne	r1, r1, #1
	uxtbne	r1, r1
	beq	.L101
.L87:
	sub	r3, r4, r8
	str	r5, [sp, #4]
	add	r3, r9, r3
	mov	r0, r10
	str	r5, [sp]
	bl	EApiI2CReadTransfer(PLT)
	cmp	r0, #0
	bne	.L93
	add	r4, r4, r5
	cmp	r6, r4
	bls	.L72
	ldrh	r3, [r7, #4]
.L82:
	add	r2, r4, r5
	cmp	r6, r2
	subcc	r5, r6, r4
	cmp	r3, #2
	ldrh	r3, [r7]
	and	r2, r3, fp
	lsr	r1, r3, #1
	bne	.L85
	cmp	r2, #61440
	uxth	r2, r4
	ubfx	r0, r4, #16, #2
	addne	r0, r1, r0
	orr	r2, r2, #-2147483648
	lslne	r0, r0, #1
	uxtbne	r1, r0
	bne	.L87
.L101:
	uxtb	r3, r3
	and	r1, r1, #768
	orr	r3, r3, r1
	add	r3, r3, r0
	lsl	r1, r3, #1
	uxtb	r3, r3
	and	r1, r1, #1536
	orr	r1, r1, r3
	orr	r1, r1, #61440
	b	.L87
.L107:
	ldr	r3, .L113+8
	mov	r0, #69
	ldr	r2, .L113+12
	mov	r6, r4
	ldr	r1, .L113+16
.LPIC52:
	add	r3, pc, r3
	str	r3, [sp, #8]
.LPIC50:
	add	r2, pc, r2
	ldr	r3, .L113+20
.LPIC51:
	add	r1, pc, r1
.LPIC53:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #1536
	str	r3, [sp]
	movw	r3, #333
	bl	siFormattedMessage_SC(PLT)
	ldrh	r3, [r7, #4]
	ldr	r2, [r7, #8]
	cmp	r3, #2
	bne	.L111
	b	.L79
.L109:
	ldr	ip, .L113+24
	mvn	lr, #256
	ldr	r0, .L113+28
	mov	r3, #344
	ldr	r2, .L113+32
	ldr	r1, .L113+36
.LPIC60:
	add	ip, pc, ip
.LPIC61:
	add	r0, pc, r0
.LPIC58:
	add	r2, pc, r2
.LPIC59:
	add	r1, pc, r1
.L102:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	lr, [sp]
	str	lr, [sp, #20]
	bl	siFormattedMessage_SC(PLT)
.L72:
	ldr	r2, .L113+40
	ldr	r3, .L113+4
.LPIC62:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #28]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L112
	ldr	r0, [sp, #20]
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L108:
	ldr	ip, .L113+44
	mvn	lr, #256
	ldr	r0, .L113+48
	movw	r3, #338
	ldr	r2, .L113+52
	ldr	r1, .L113+56
.LPIC56:
	add	ip, pc, ip
.LPIC57:
	add	r0, pc, r0
.LPIC54:
	add	r2, pc, r2
.LPIC55:
	add	r1, pc, r1
	b	.L102
.L110:
	cmp	r5, #65536
	movcs	r5, #65536
	b	.L83
.L93:
.L74:
.L90:
	str	r0, [sp, #20]
	b	.L72
.L105:
	ldr	ip, .L113+60
	mvn	lr, #256
	ldr	r0, .L113+64
	movw	r3, #323
	ldr	r2, .L113+68
	ldr	r1, .L113+72
.LPIC44:
	add	ip, pc, ip
.LPIC45:
	add	r0, pc, r0
.LPIC42:
	add	r2, pc, r2
.LPIC43:
	add	r1, pc, r1
	b	.L102
.L106:
	ldr	ip, .L113+76
	mvn	lr, #256
	ldr	r0, .L113+80
	mov	r3, #328
	ldr	r2, .L113+84
	ldr	r1, .L113+88
.LPIC48:
	add	ip, pc, ip
.LPIC49:
	add	r0, pc, r0
.LPIC46:
	add	r2, pc, r2
.LPIC47:
	add	r1, pc, r1
	b	.L102
.L103:
	ldr	ip, .L113+92
	mvn	lr, #256
	ldr	r0, .L113+96
	movw	r3, #313
	ldr	r2, .L113+100
	ldr	r1, .L113+104
.LPIC36:
	add	ip, pc, ip
.LPIC37:
	add	r0, pc, r0
.LPIC34:
	add	r2, pc, r2
.LPIC35:
	add	r1, pc, r1
	b	.L102
.L104:
	ldr	ip, .L113+108
	mvn	lr, #256
	ldr	r0, .L113+112
	movw	r3, #318
	ldr	r2, .L113+116
	ldr	r1, .L113+120
.LPIC40:
	add	ip, pc, ip
.LPIC41:
	add	r0, pc, r0
.LPIC38:
	add	r2, pc, r2
.LPIC39:
	add	r1, pc, r1
	b	.L102
.L112:
	bl	__stack_chk_fail(PLT)
.L114:
	.align	2
.L113:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC63+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC13-(.LPIC52+8)
	.word	.LC11-(.LPIC50+8)
	.word	.LC1-(.LPIC51+8)
	.word	.LC3-(.LPIC53+8)
	.word	.LC10-(.LPIC60+8)
	.word	.LC3-(.LPIC61+8)
	.word	.LC11-(.LPIC58+8)
	.word	.LC1-(.LPIC59+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC62+8)
	.word	.LC9-(.LPIC56+8)
	.word	.LC3-(.LPIC57+8)
	.word	.LC11-(.LPIC54+8)
	.word	.LC1-(.LPIC55+8)
	.word	.LC12-(.LPIC44+8)
	.word	.LC3-(.LPIC45+8)
	.word	.LC11-(.LPIC42+8)
	.word	.LC1-(.LPIC43+8)
	.word	.LC8-(.LPIC48+8)
	.word	.LC3-(.LPIC49+8)
	.word	.LC11-(.LPIC46+8)
	.word	.LC1-(.LPIC47+8)
	.word	.LC2-(.LPIC36+8)
	.word	.LC3-(.LPIC37+8)
	.word	.LC11-(.LPIC34+8)
	.word	.LC1-(.LPIC35+8)
	.word	.LC7-(.LPIC40+8)
	.word	.LC3-(.LPIC41+8)
	.word	.LC11-(.LPIC38+8)
	.word	.LC1-(.LPIC39+8)
	.size	EApiAHI2CReadEeprom, .-EApiAHI2CReadEeprom
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
