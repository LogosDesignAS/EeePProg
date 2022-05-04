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
	.file	"EApiAPI.cpp"
	.text
	.section	.rodata.str1.4,"aMS",%progbits,1
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L10
	push	{r4, lr}
	sub	sp, sp, #16
.LPIC0:
	add	r3, pc, r3
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L8
	cmp	r1, #0
	beq	.L9
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	b	EApiI2CGetBusCapEmul(PLT)
.L8:
	ldr	ip, .L10+4
	mvn	r4, #0
	ldr	r0, .L10+8
	mov	r3, #76
	ldr	r2, .L10+12
	ldr	r1, .L10+16
.LPIC3:
	add	ip, pc, ip
.LPIC4:
	add	r0, pc, r0
.LPIC1:
	add	r2, pc, r2
.LPIC2:
	add	r1, pc, r1
.L6:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L3:
.L9:
	ldr	ip, .L10+20
	mvn	r4, #256
	ldr	r0, .L10+24
	mov	r3, #77
	ldr	r2, .L10+28
	ldr	r1, .L10+32
.LPIC7:
	add	ip, pc, ip
.LPIC8:
	add	r0, pc, r0
.LPIC5:
	add	r2, pc, r2
.LPIC6:
	add	r1, pc, r1
	b	.L6
.L11:
	.align	2
.L10:
	.word	.LANCHOR0-(.LPIC0+8)
	.word	.LC2-(.LPIC3+8)
	.word	.LC3-(.LPIC4+8)
	.word	.LC0-(.LPIC1+8)
	.word	.LC1-(.LPIC2+8)
	.word	.LC4-(.LPIC7+8)
	.word	.LC3-(.LPIC8+8)
	.word	.LC0-(.LPIC5+8)
	.word	.LC1-(.LPIC6+8)
	.size	EApiI2CGetBusCap, .-EApiI2CGetBusCap
	.section	.rodata.str1.4
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
	@ args = 12, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r3
	ldr	r3, .L33
	sub	sp, sp, #36
	ldr	fp, [sp, #76]
.LPIC9:
	add	r3, pc, r3
	ldr	r7, [sp, #80]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L27
	cmp	r5, #1
	mov	r6, r2
	movls	r3, #0
	movhi	r3, #1
	cmp	r2, #0
	movne	r3, #0
	cmp	r3, #0
	bne	.L28
	cmp	r5, #0
	ldr	r10, .L33+4
	ldrne	r3, [r2]
	moveq	r3, r5
	ldr	r2, .L33+8
	mov	r9, r0
.LPIC19:
	add	r10, pc, r10
	str	r1, [sp, #8]
	str	r3, [sp, #28]
	mov	r8, r1
	ldr	r3, .L33+12
.LPIC18:
	add	r2, pc, r2
	mov	r1, r10
	mov	r0, #76
	str	r7, [sp, #24]
.LPIC20:
	add	r3, pc, r3
	str	r5, [sp, #20]
	str	r3, [sp, #4]
	ldr	r3, .L33+16
	str	fp, [sp, #16]
	str	r5, [sp, #12]
.LPIC21:
	add	r3, pc, r3
	str	r3, [sp]
	mov	r3, #115
	bl	siFormattedMessage_M2(PLT)
	ldr	r3, [sp, #72]
	cmp	r7, #1
	movls	r4, #0
	movhi	r4, #1
	cmp	r3, #0
	movne	r3, #0
	andeq	r3, r4, #1
	cmp	r3, #0
	bne	.L29
	cmp	fp, #0
	movne	r4, #0
	andeq	r4, r4, #1
	cmp	r4, #0
	bne	.L30
	orrs	r3, r5, r7
	beq	.L31
	add	fp, fp, #1
	cmp	fp, r7
	bcc	.L32
.L20:
	ldr	r3, [sp, #72]
	mov	r2, r6
	mov	r1, r8
	mov	r0, r9
	str	r7, [sp, #4]
	str	r3, [sp]
	mov	r3, r5
	bl	EApiI2CWriteReadEmul(PLT)
	cmp	r0, #0
	movne	r4, r0
.L14:
.L12:
	mov	r0, r4
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L32:
	ldr	r3, .L33+20
	mvn	r4, #1536
	ldr	r2, .L33+24
	mov	r1, r10
	str	r4, [sp]
	mov	r0, #69
.LPIC36:
	add	r3, pc, r3
	mov	r7, fp
	str	r3, [sp, #8]
.LPIC34:
	add	r2, pc, r2
	ldr	r3, .L33+28
.LPIC37:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mov	r3, #140
	bl	siFormattedMessage_SC(PLT)
	b	.L20
.L27:
	ldr	ip, .L33+32
	mvn	r4, #0
	ldr	r0, .L33+36
	mov	r3, #104
	ldr	r2, .L33+40
	ldr	r1, .L33+44
.LPIC12:
	add	ip, pc, ip
.LPIC13:
	add	r0, pc, r0
.LPIC10:
	add	r2, pc, r2
.LPIC11:
	add	r1, pc, r1
.L26:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L28:
	ldr	ip, .L33+48
	mvn	r4, #256
	ldr	r0, .L33+52
	mov	r3, #105
	ldr	r2, .L33+56
	ldr	r1, .L33+60
.LPIC16:
	add	ip, pc, ip
.LPIC17:
	add	r0, pc, r0
.LPIC14:
	add	r2, pc, r2
.LPIC15:
	add	r1, pc, r1
	b	.L26
.L29:
	ldr	r2, .L33+64
	mvn	r4, #256
	ldr	r0, .L33+68
	mov	r3, #124
	mov	r1, r10
	str	r4, [sp]
.LPIC25:
	add	r2, pc, r2
	str	r2, [sp, #4]
.LPIC24:
	add	r0, pc, r0
	ldr	r2, .L33+72
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC22:
	add	r2, pc, r2
	bl	siFormattedMessage_SC(PLT)
	b	.L12
.L30:
	ldr	r2, .L33+76
	mvn	r4, #256
	ldr	r0, .L33+80
	mov	r3, #129
	mov	r1, r10
	str	r4, [sp]
.LPIC29:
	add	r2, pc, r2
	str	r2, [sp, #4]
.LPIC28:
	add	r0, pc, r0
	ldr	r2, .L33+84
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC26:
	add	r2, pc, r2
	bl	siFormattedMessage_SC(PLT)
	b	.L12
.L31:
	ldr	r2, .L33+88
	mvn	r4, #256
	ldr	r0, .L33+92
	mov	r3, #134
	mov	r1, r10
	str	r4, [sp]
.LPIC33:
	add	r2, pc, r2
	str	r2, [sp, #4]
.LPIC32:
	add	r0, pc, r0
	ldr	r2, .L33+96
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC30:
	add	r2, pc, r2
	bl	siFormattedMessage_SC(PLT)
	b	.L12
.L34:
	.align	2
.L33:
	.word	.LANCHOR0-(.LPIC9+8)
	.word	.LC1-(.LPIC19+8)
	.word	.LC7-(.LPIC18+8)
	.word	.LC8-(.LPIC20+8)
	.word	.LC9-(.LPIC21+8)
	.word	.LC13-(.LPIC36+8)
	.word	.LC5-(.LPIC34+8)
	.word	.LC3-(.LPIC37+8)
	.word	.LC2-(.LPIC12+8)
	.word	.LC3-(.LPIC13+8)
	.word	.LC5-(.LPIC10+8)
	.word	.LC1-(.LPIC11+8)
	.word	.LC6-(.LPIC16+8)
	.word	.LC3-(.LPIC17+8)
	.word	.LC5-(.LPIC14+8)
	.word	.LC1-(.LPIC15+8)
	.word	.LC3-(.LPIC25+8)
	.word	.LC10-(.LPIC24+8)
	.word	.LC5-(.LPIC22+8)
	.word	.LC3-(.LPIC29+8)
	.word	.LC11-(.LPIC28+8)
	.word	.LC5-(.LPIC26+8)
	.word	.LC3-(.LPIC33+8)
	.word	.LC12-(.LPIC32+8)
	.word	.LC5-(.LPIC30+8)
	.size	EApiI2CWriteReadRaw, .-EApiI2CWriteReadRaw
	.section	.rodata.str1.4
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
	@ args = 8, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r2
	ldr	r2, .L59
	mov	r9, r3
	sub	sp, sp, #44
	mov	r5, #0
	ldr	r3, .L59+4
.LPIC64:
	add	r2, pc, r2
	ldr	r10, [sp, #80]
	ldr	r8, [sp, #84]
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #36]
	mov	r3, #0
	ldr	r3, .L59+8
	str	r5, [sp, #28]
	str	r5, [sp, #32]
.LPIC38:
	add	r3, pc, r3
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L51
	ldr	r3, .L59+12
	mov	r6, r0
	ldr	fp, .L59+16
	mov	r4, r1
	ldr	r2, .L59+20
.LPIC45:
	add	r3, pc, r3
	str	r1, [sp, #12]
	str	r3, [sp, #4]
.LPIC44:
	add	fp, pc, fp
	ldr	r3, .L59+24
.LPIC43:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r1, fp
	mov	r0, #76
	str	r8, [sp, #20]
.LPIC46:
	add	r3, pc, r3
	str	r7, [sp, #16]
	str	r3, [sp]
	mov	r3, #188
	bl	siFormattedMessage_M2(PLT)
	cmp	r9, #0
	beq	.L52
	cmp	r10, #0
	beq	.L53
	cmp	r8, #0
	beq	.L54
	add	r1, sp, #24
	mov	r0, r6
	bl	EApiI2CGetBusCap(PLT)
	ldr	r3, [sp, #24]
	cmp	r3, r8
	bcc	.L55
	and	r3, r4, #63488
	cmp	r3, #61440
	beq	.L56
	mov	r3, #1
	mov	r1, #2
	mov	ip, #3
	mov	r0, r3
.L42:
	and	r2, r7, #-1073741824
	cmp	r2, #1073741824
	beq	.L43
	cmp	r2, #-2147483648
	beq	.L57
.L44:
	add	r2, r5, #40
	mov	r3, r1
	add	r5, sp, r2
	strb	r7, [r5, #-12]
.L43:
	add	r8, r8, #1
	uxtb	r1, r4
	add	r2, sp, #28
	str	r10, [sp, #4]
	mov	r0, r6
	str	r8, [sp, #8]
	str	r9, [sp]
	bl	EApiI2CWriteReadRaw(PLT)
.L37:
.L35:
	ldr	r2, .L59+28
	ldr	r3, .L59+4
.LPIC63:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #36]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L58
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L51:
	ldr	ip, .L59+32
	mvn	r4, #0
	ldr	r0, .L59+36
	mov	r3, #181
	ldr	r2, .L59+40
	ldr	r1, .L59+44
.LPIC41:
	add	ip, pc, ip
.LPIC42:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC39:
	add	r2, pc, r2
.LPIC40:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L35
.L57:
	add	r3, r5, #40
	lsr	r2, r7, #8
	add	r3, sp, r3
	mov	r1, ip
	mov	r5, r0
	strb	r2, [r3, #-12]
	b	.L44
.L55:
	ldr	r2, .L59+48
	mvn	r4, #256
	ldr	r0, .L59+52
	mov	r3, #202
	mov	r1, fp
	str	r4, [sp]
.LPIC62:
	add	r2, pc, r2
	str	r2, [sp, #4]
.LPIC61:
	add	r0, pc, r0
	ldr	r2, .L59+56
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC59:
	add	r2, pc, r2
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L35
.L56:
	mov	r3, #2
	strb	r4, [sp, #28]
	mov	r1, #3
	lsr	r4, r4, #8
	mov	ip, #4
	mov	r0, r3
	mov	r5, #1
	b	.L42
.L54:
	ldr	r2, .L59+60
	mvn	r4, #256
	ldr	r0, .L59+64
	mov	r3, #197
	mov	r1, fp
	str	r4, [sp]
.LPIC58:
	add	r2, pc, r2
	str	r2, [sp, #4]
.LPIC57:
	add	r0, pc, r0
	ldr	r2, .L59+68
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC55:
	add	r2, pc, r2
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L35
.L53:
	ldr	r2, .L59+72
	mvn	r4, #256
	ldr	r0, .L59+76
	mov	r3, #196
	mov	r1, fp
	str	r4, [sp]
.LPIC54:
	add	r2, pc, r2
	str	r2, [sp, #4]
.LPIC53:
	add	r0, pc, r0
	ldr	r2, .L59+80
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC51:
	add	r2, pc, r2
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L35
.L52:
	ldr	r2, .L59+84
	mvn	r4, #256
	ldr	r0, .L59+88
	mov	r3, #195
	mov	r1, fp
	str	r4, [sp]
.LPIC50:
	add	r2, pc, r2
	str	r2, [sp, #4]
.LPIC49:
	add	r0, pc, r0
	ldr	r2, .L59+92
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC47:
	add	r2, pc, r2
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L35
.L58:
	bl	__stack_chk_fail(PLT)
.L60:
	.align	2
.L59:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC64+8)
	.word	__stack_chk_guard(GOT)
	.word	.LANCHOR0-(.LPIC38+8)
	.word	.LC15-(.LPIC45+8)
	.word	.LC1-(.LPIC44+8)
	.word	.LC7-(.LPIC43+8)
	.word	.LC9-(.LPIC46+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC63+8)
	.word	.LC2-(.LPIC41+8)
	.word	.LC3-(.LPIC42+8)
	.word	.LC14-(.LPIC39+8)
	.word	.LC1-(.LPIC40+8)
	.word	.LC3-(.LPIC62+8)
	.word	.LC19-(.LPIC61+8)
	.word	.LC14-(.LPIC59+8)
	.word	.LC3-(.LPIC58+8)
	.word	.LC18-(.LPIC57+8)
	.word	.LC14-(.LPIC55+8)
	.word	.LC3-(.LPIC54+8)
	.word	.LC17-(.LPIC53+8)
	.word	.LC14-(.LPIC51+8)
	.word	.LC3-(.LPIC50+8)
	.word	.LC16-(.LPIC49+8)
	.word	.LC14-(.LPIC47+8)
	.size	EApiI2CReadTransfer, .-EApiI2CReadTransfer
	.section	.rodata.str1.4
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
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r2
	ldr	r2, .L84
	mov	r8, r3
	sub	sp, sp, #52
	ldr	r3, .L84+4
.LPIC99:
	add	r2, pc, r2
	ldr	r9, [sp, #88]
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #44]
	mov	r3, #0
	ldr	r3, .L84+8
.LPIC65:
	add	r3, pc, r3
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L78
	cmp	r8, #0
	beq	.L79
	str	r1, [sp, #12]
	mov	r7, r0
	str	r0, [sp, #8]
	mov	r5, r1
	str	r9, [sp, #20]
	mov	r0, #76
	str	r6, [sp, #16]
	ldr	r3, [r8]
	ldr	r4, .L84+12
	ldr	fp, .L84+16
	str	r3, [sp, #24]
	ldr	r3, .L84+20
.LPIC74:
	add	r4, pc, r4
.LPIC75:
	add	fp, pc, fp
	mov	r2, r4
	mov	r1, fp
.LPIC76:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, .L84+24
.LPIC77:
	add	r3, pc, r3
	str	r3, [sp]
	movw	r3, #261
	bl	siFormattedMessage_M2(PLT)
	cmp	r9, #0
	beq	.L80
	add	r0, r9, #3
	bl	malloc(PLT)
	subs	r10, r0, #0
	beq	.L81
	and	r3, r5, #63488
	cmp	r3, #61440
	and	r3, r6, #-1073741824
	strbeq	r5, [r10]
	moveq	r1, #3
	lsreq	r5, r5, #8
	moveq	r2, #2
	moveq	r4, #1
	movne	r1, #2
	movne	r2, #1
	movne	r4, #0
	cmp	r3, #1073741824
	beq	.L68
	cmp	r3, #-2147483648
	mov	r0, r7
	lsreq	r3, r6, #8
	strbeq	r3, [r10, r4]
	moveq	r4, r2
	strb	r6, [r10, r4]
	moveq	r2, r1
	add	r1, sp, #40
	str	r2, [sp, #36]
	bl	EApiI2CGetBusCap(PLT)
	ldrd	r2, [sp, #36]
	add	r1, r9, r2
	cmp	r1, r3
	str	r1, [sp, #36]
	uxtbls	fp, r5
	bhi	.L71
.L70:
	mov	r1, r8
	add	r0, r10, r2
	mov	r2, r9
	mov	r4, #0
	bl	memcpy(PLT)
	ldr	r3, [r10]
	mov	r0, #76
	ldr	r2, .L84+28
	ldr	r1, .L84+32
	str	r3, [sp, #24]
	ldr	r3, .L84+36
.LPIC90:
	add	r2, pc, r2
.LPIC91:
	add	r1, pc, r1
	str	r9, [sp, #20]
	str	r6, [sp, #16]
.LPIC92:
	add	r3, pc, r3
	str	r5, [sp, #12]
	stmib	sp, {r3, r7}
	ldr	r3, .L84+40
.LPIC93:
	add	r3, pc, r3
	str	r3, [sp]
	movw	r3, #313
	bl	siFormattedMessage_M2(PLT)
	ldr	r3, [sp, #36]
	mov	r1, fp
	mov	r0, r7
	mov	r2, r10
	str	r4, [sp, #8]
	add	r3, r3, #1
	str	r4, [sp, #4]
	str	r4, [sp]
	bl	EApiI2CWriteReadRaw(PLT)
	mov	r0, r10
	bl	free(PLT)
.L61:
	ldr	r2, .L84+44
	ldr	r3, .L84+4
.LPIC98:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #44]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L82
	mov	r0, r4
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L68:
	add	r1, sp, #40
	mov	r0, r7
	bl	EApiI2CGetBusCap(PLT)
	ldr	r3, [sp, #40]
	add	r2, r4, r9
	str	r2, [sp, #36]
	cmp	r2, r3
	bhi	.L71
	cmp	r4, #0
	uxtb	fp, r5
	bne	.L83
.L63:
	mov	r0, r10
	bl	free(PLT)
	str	r6, [sp, #16]
	mov	r0, #76
	str	r5, [sp, #12]
	str	r9, [sp, #20]
	str	r7, [sp, #8]
	ldr	r3, [r8]
	ldr	r2, .L84+48
	ldr	r1, .L84+52
	str	r3, [sp, #24]
	ldr	r3, .L84+56
.LPIC94:
	add	r2, pc, r2
.LPIC95:
	add	r1, pc, r1
.LPIC96:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, .L84+60
.LPIC97:
	add	r3, pc, r3
	str	r3, [sp]
	movw	r3, #313
	bl	siFormattedMessage_M2(PLT)
	add	r3, r9, #1
	mov	r2, r8
	mov	r1, fp
	mov	r0, r7
	str	r4, [sp, #8]
	str	r4, [sp, #4]
	str	r4, [sp]
	bl	EApiI2CWriteReadRaw(PLT)
	b	.L61
.L80:
	ldr	r0, .L84+64
	mvn	ip, #256
	ldr	r3, .L84+68
	mov	r2, r4
	mov	r1, fp
	str	ip, [sp]
.LPIC80:
	add	r0, pc, r0
	mov	r4, ip
.LPIC81:
	add	r3, pc, r3
	str	r0, [sp, #8]
	str	r3, [sp, #4]
	mov	r0, #69
	mov	r3, #268
	bl	siFormattedMessage_SC(PLT)
	b	.L61
.L71:
	ldr	ip, .L84+72
	mvn	r4, #256
	ldr	r0, .L84+76
	movw	r3, #294
	ldr	r2, .L84+80
	ldr	r1, .L84+84
.LPIC88:
	add	ip, pc, ip
.LPIC89:
	add	r0, pc, r0
.LPIC86:
	add	r2, pc, r2
.LPIC87:
	add	r1, pc, r1
.L77:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	b	.L61
.L78:
	ldr	ip, .L84+88
	mvn	r4, #0
	ldr	r0, .L84+92
	mov	r3, #253
	ldr	r2, .L84+96
	ldr	r1, .L84+100
.LPIC68:
	add	ip, pc, ip
.LPIC69:
	add	r0, pc, r0
.LPIC66:
	add	r2, pc, r2
.LPIC67:
	add	r1, pc, r1
	b	.L77
.L79:
	ldr	ip, .L84+104
	mvn	r4, #256
	ldr	r0, .L84+108
	mov	r3, #255
	ldr	r2, .L84+112
	ldr	r1, .L84+116
.LPIC72:
	add	ip, pc, ip
.LPIC73:
	add	r0, pc, r0
.LPIC70:
	add	r2, pc, r2
.LPIC71:
	add	r1, pc, r1
	b	.L77
.L82:
	bl	__stack_chk_fail(PLT)
.L81:
	ldr	r0, .L84+120
	mvn	ip, #2
	ldr	r3, .L84+124
	mov	r2, r4
	mov	r1, fp
	str	ip, [sp]
.LPIC84:
	add	r0, pc, r0
	mov	r4, ip
.LPIC85:
	add	r3, pc, r3
	str	r0, [sp, #8]
	str	r3, [sp, #4]
	mov	r0, #69
	movw	r3, #271
	bl	siFormattedMessage_SC(PLT)
	b	.L61
.L83:
	mov	r2, r4
	b	.L70
.L85:
	.align	2
.L84:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC99+8)
	.word	__stack_chk_guard(GOT)
	.word	.LANCHOR0-(.LPIC65+8)
	.word	.LC7-(.LPIC74+8)
	.word	.LC1-(.LPIC75+8)
	.word	.LC20-(.LPIC76+8)
	.word	.LC9-(.LPIC77+8)
	.word	.LC7-(.LPIC90+8)
	.word	.LC1-(.LPIC91+8)
	.word	.LC20-(.LPIC92+8)
	.word	.LC9-(.LPIC93+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC98+8)
	.word	.LC7-(.LPIC94+8)
	.word	.LC1-(.LPIC95+8)
	.word	.LC20-(.LPIC96+8)
	.word	.LC9-(.LPIC97+8)
	.word	.LC18-(.LPIC80+8)
	.word	.LC3-(.LPIC81+8)
	.word	.LC22-(.LPIC88+8)
	.word	.LC3-(.LPIC89+8)
	.word	.LC7-(.LPIC86+8)
	.word	.LC1-(.LPIC87+8)
	.word	.LC2-(.LPIC68+8)
	.word	.LC3-(.LPIC69+8)
	.word	.LC7-(.LPIC66+8)
	.word	.LC1-(.LPIC67+8)
	.word	.LC16-(.LPIC72+8)
	.word	.LC3-(.LPIC73+8)
	.word	.LC7-(.LPIC70+8)
	.word	.LC1-(.LPIC71+8)
	.word	.LC21-(.LPIC84+8)
	.word	.LC3-(.LPIC85+8)
	.size	EApiI2CWriteTransfer, .-EApiI2CWriteTransfer
	.align	2
	.global	EApiI2CProbeDevice
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiI2CProbeDevice, %function
EApiI2CProbeDevice:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L95
	mov	r2, #0
	push	{r4, lr}
	sub	sp, sp, #32
	ldr	lr, .L95+4
.LPIC100:
	add	r3, pc, r3
	ldr	ip, .L95+8
	ldr	r3, [r3]
.LPIC106:
	add	lr, pc, lr
	ldr	ip, [lr, ip]
	cmp	r3, r2
	ldr	ip, [ip]
	str	ip, [sp, #28]
	mov	ip, #0
	str	r2, [sp, #20]
	str	r2, [sp, #24]
	beq	.L93
	and	r3, r1, #63488
	mov	ip, #0
	cmp	r3, #61440
	add	r2, sp, #20
	strbeq	r1, [sp, #20]
	lsreq	r1, r1, #8
	moveq	r3, #2
	str	ip, [sp, #8]
	movne	r3, #1
	uxtb	r1, r1
	str	ip, [sp, #4]
	str	ip, [sp]
	bl	EApiI2CWriteReadRaw(PLT)
	movw	r3, #64254
	movt	r3, 65535
	cmp	r0, r3
	mvneq	r0, #1024
.L88:
.L86:
	ldr	r2, .L95+12
	ldr	r3, .L95+8
.LPIC105:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #28]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L94
	add	sp, sp, #32
	@ sp needed
	pop	{r4, pc}
.L93:
	ldr	ip, .L95+16
	mvn	r4, #0
	ldr	r0, .L95+20
	mov	r3, #348
	ldr	r2, .L95+24
	ldr	r1, .L95+28
.LPIC103:
	add	ip, pc, ip
.LPIC104:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC101:
	add	r2, pc, r2
.LPIC102:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L86
.L94:
	bl	__stack_chk_fail(PLT)
.L96:
	.align	2
.L95:
	.word	.LANCHOR0-(.LPIC100+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC106+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC105+8)
	.word	.LC2-(.LPIC103+8)
	.word	.LC3-(.LPIC104+8)
	.word	.LC7-(.LPIC101+8)
	.word	.LC1-(.LPIC102+8)
	.size	EApiI2CProbeDevice, .-EApiI2CProbeDevice
	.section	.rodata.str1.4
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	sub	sp, sp, #16
	ldr	lr, .L107
.LPIC107:
	add	lr, pc, lr
	ldr	lr, [lr]
	cmp	lr, #0
	beq	.L104
	cmp	r2, #0
	beq	.L105
	ldr	r3, [r2]
	subs	r3, r3, #0
	movne	r3, #1
	cmp	r1, #0
	movne	r3, #0
	cmp	r3, #0
	bne	.L106
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	b	EApiBoardGetStringAEmul(PLT)
.L104:
	ldr	ip, .L107+4
	mvn	r4, #0
	ldr	r0, .L107+8
	movw	r3, #387
	ldr	r2, .L107+12
	ldr	r1, .L107+16
.LPIC110:
	add	ip, pc, ip
.LPIC111:
	add	r0, pc, r0
.LPIC108:
	add	r2, pc, r2
.LPIC109:
	add	r1, pc, r1
.L103:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L99:
.L105:
	ldr	ip, .L107+20
	mvn	r4, #256
	ldr	r0, .L107+24
	mov	r3, #388
	ldr	r2, .L107+28
	ldr	r1, .L107+32
.LPIC114:
	add	ip, pc, ip
.LPIC115:
	add	r0, pc, r0
.LPIC112:
	add	r2, pc, r2
.LPIC113:
	add	r1, pc, r1
	b	.L103
.L106:
	ldr	ip, .L107+36
	mvn	r4, #256
	ldr	r0, .L107+40
	movw	r3, #389
	ldr	r2, .L107+44
	ldr	r1, .L107+48
.LPIC118:
	add	ip, pc, ip
.LPIC119:
	add	r0, pc, r0
.LPIC116:
	add	r2, pc, r2
.LPIC117:
	add	r1, pc, r1
	b	.L103
.L108:
	.align	2
.L107:
	.word	.LANCHOR0-(.LPIC107+8)
	.word	.LC2-(.LPIC110+8)
	.word	.LC3-(.LPIC111+8)
	.word	.LC23-(.LPIC108+8)
	.word	.LC1-(.LPIC109+8)
	.word	.LC24-(.LPIC114+8)
	.word	.LC3-(.LPIC115+8)
	.word	.LC23-(.LPIC112+8)
	.word	.LC1-(.LPIC113+8)
	.word	.LC25-(.LPIC118+8)
	.word	.LC3-(.LPIC119+8)
	.word	.LC23-(.LPIC116+8)
	.word	.LC1-(.LPIC117+8)
	.size	EApiBoardGetStringA, .-EApiBoardGetStringA
	.section	.rodata.str1.4
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L119
	push	{r4, lr}
	sub	sp, sp, #16
.LPIC120:
	add	r2, pc, r2
	ldr	r2, [r2]
	cmp	r2, #0
	beq	.L116
	cmp	r1, #0
	beq	.L117
	cmp	r0, #0
	mov	r4, r0
	beq	.L118
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	b	EApiBoardGetValueEmul(PLT)
.L118:
	mov	r2, #16777216
	ldr	ip, .L119+4
	ldr	r0, .L119+8
	movw	r3, #422
	str	r4, [sp]
	str	r2, [r1]
.LPIC131:
	add	ip, pc, ip
	ldr	r2, .L119+12
.LPIC132:
	add	r0, pc, r0
	ldr	r1, .L119+16
	stmib	sp, {r0, ip}
	mov	r0, #76
.LPIC129:
	add	r2, pc, r2
.LPIC130:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L111:
.L116:
	ldr	ip, .L119+20
	mvn	r4, #0
	ldr	r0, .L119+24
	movw	r3, #417
	ldr	r2, .L119+28
	ldr	r1, .L119+32
.LPIC123:
	add	ip, pc, ip
.LPIC124:
	add	r0, pc, r0
.LPIC121:
	add	r2, pc, r2
.LPIC122:
	add	r1, pc, r1
.L115:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L117:
	ldr	ip, .L119+36
	mvn	r4, #256
	ldr	r0, .L119+40
	movw	r3, #418
	ldr	r2, .L119+44
	ldr	r1, .L119+48
.LPIC127:
	add	ip, pc, ip
.LPIC128:
	add	r0, pc, r0
.LPIC125:
	add	r2, pc, r2
.LPIC126:
	add	r1, pc, r1
	b	.L115
.L120:
	.align	2
.L119:
	.word	.LANCHOR0-(.LPIC120+8)
	.word	.LC28-(.LPIC131+8)
	.word	.LC3-(.LPIC132+8)
	.word	.LC26-(.LPIC129+8)
	.word	.LC1-(.LPIC130+8)
	.word	.LC2-(.LPIC123+8)
	.word	.LC3-(.LPIC124+8)
	.word	.LC26-(.LPIC121+8)
	.word	.LC1-(.LPIC122+8)
	.word	.LC27-(.LPIC127+8)
	.word	.LC3-(.LPIC128+8)
	.word	.LC26-(.LPIC125+8)
	.word	.LC1-(.LPIC126+8)
	.size	EApiBoardGetValue, .-EApiBoardGetValue
	.section	.rodata.str1.4
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L129
	push	{r4, lr}
	sub	sp, sp, #16
.LPIC133:
	add	r3, pc, r3
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L127
	cmp	r1, #0
	beq	.L128
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	b	EApiVgaGetBacklightEnableEmul(PLT)
.L127:
	ldr	ip, .L129+4
	mvn	r4, #0
	ldr	r0, .L129+8
	mov	r3, #448
	ldr	r2, .L129+12
	ldr	r1, .L129+16
.LPIC136:
	add	ip, pc, ip
.LPIC137:
	add	r0, pc, r0
.LPIC134:
	add	r2, pc, r2
.LPIC135:
	add	r1, pc, r1
.L126:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L123:
.L128:
	ldr	ip, .L129+20
	mvn	r4, #256
	ldr	r0, .L129+24
	movw	r3, #449
	ldr	r2, .L129+28
	ldr	r1, .L129+32
.LPIC140:
	add	ip, pc, ip
.LPIC141:
	add	r0, pc, r0
.LPIC138:
	add	r2, pc, r2
.LPIC139:
	add	r1, pc, r1
	b	.L126
.L130:
	.align	2
.L129:
	.word	.LANCHOR0-(.LPIC133+8)
	.word	.LC2-(.LPIC136+8)
	.word	.LC3-(.LPIC137+8)
	.word	.LC29-(.LPIC134+8)
	.word	.LC1-(.LPIC135+8)
	.word	.LC30-(.LPIC140+8)
	.word	.LC3-(.LPIC141+8)
	.word	.LC29-(.LPIC138+8)
	.word	.LC1-(.LPIC139+8)
	.size	EApiVgaGetBacklightEnable, .-EApiVgaGetBacklightEnable
	.section	.rodata.str1.4
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L136
	push	{r4, lr}
	sub	sp, sp, #16
.LPIC142:
	add	r3, pc, r3
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L132
	ldr	ip, .L136+4
	mvn	r4, #0
	ldr	r0, .L136+8
	movw	r3, #465
	ldr	r2, .L136+12
	ldr	r1, .L136+16
.LPIC145:
	add	ip, pc, ip
.LPIC146:
	add	r0, pc, r0
.LPIC143:
	add	r2, pc, r2
.LPIC144:
	add	r1, pc, r1
.L135:
.L133:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L132:
	ldr	ip, .L136+20
	mvn	r4, #256
	ldr	r0, .L136+24
	movw	r3, #466
	ldr	r2, .L136+28
	ldr	r1, .L136+32
.LPIC149:
	add	ip, pc, ip
.LPIC150:
	add	r0, pc, r0
.LPIC147:
	add	r2, pc, r2
.LPIC148:
	add	r1, pc, r1
	b	.L135
.L137:
	.align	2
.L136:
	.word	.LANCHOR0-(.LPIC142+8)
	.word	.LC2-(.LPIC145+8)
	.word	.LC3-(.LPIC146+8)
	.word	.LC31-(.LPIC143+8)
	.word	.LC1-(.LPIC144+8)
	.word	.LC32-(.LPIC149+8)
	.word	.LC3-(.LPIC150+8)
	.word	.LC31-(.LPIC147+8)
	.word	.LC1-(.LPIC148+8)
	.size	EApiVgaSetBacklightEnable, .-EApiVgaSetBacklightEnable
	.section	.rodata.str1.4
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L146
	push	{r4, lr}
	sub	sp, sp, #16
.LPIC151:
	add	r3, pc, r3
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L144
	cmp	r1, #0
	beq	.L145
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	b	EApiVgaGetBacklightBrightnessEmul(PLT)
.L144:
	ldr	ip, .L146+4
	mvn	r4, #0
	ldr	r0, .L146+8
	mov	r3, #484
	ldr	r2, .L146+12
	ldr	r1, .L146+16
.LPIC154:
	add	ip, pc, ip
.LPIC155:
	add	r0, pc, r0
.LPIC152:
	add	r2, pc, r2
.LPIC153:
	add	r1, pc, r1
.L143:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L140:
.L145:
	ldr	ip, .L146+20
	mvn	r4, #256
	ldr	r0, .L146+24
	movw	r3, #485
	ldr	r2, .L146+28
	ldr	r1, .L146+32
.LPIC158:
	add	ip, pc, ip
.LPIC159:
	add	r0, pc, r0
.LPIC156:
	add	r2, pc, r2
.LPIC157:
	add	r1, pc, r1
	b	.L143
.L147:
	.align	2
.L146:
	.word	.LANCHOR0-(.LPIC151+8)
	.word	.LC2-(.LPIC154+8)
	.word	.LC3-(.LPIC155+8)
	.word	.LC33-(.LPIC152+8)
	.word	.LC1-(.LPIC153+8)
	.word	.LC34-(.LPIC158+8)
	.word	.LC3-(.LPIC159+8)
	.word	.LC33-(.LPIC156+8)
	.word	.LC1-(.LPIC157+8)
	.size	EApiVgaGetBacklightBrightness, .-EApiVgaGetBacklightBrightness
	.section	.rodata.str1.4
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L156
	push	{r4, lr}
	sub	sp, sp, #16
.LPIC160:
	add	r3, pc, r3
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L154
	cmp	r1, #255
	bhi	.L155
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	b	EApiVgaSetBacklightBrightnessEmul(PLT)
.L155:
	ldr	ip, .L156+4
	mvn	r4, #256
	ldr	r0, .L156+8
	movw	r3, #501
	ldr	r2, .L156+12
	ldr	r1, .L156+16
.LPIC167:
	add	ip, pc, ip
.LPIC168:
	add	r0, pc, r0
.LPIC165:
	add	r2, pc, r2
.LPIC166:
	add	r1, pc, r1
.L153:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L150:
.L154:
	ldr	ip, .L156+20
	mvn	r4, #0
	ldr	r0, .L156+24
	mov	r3, #500
	ldr	r2, .L156+28
	ldr	r1, .L156+32
.LPIC163:
	add	ip, pc, ip
.LPIC164:
	add	r0, pc, r0
.LPIC161:
	add	r2, pc, r2
.LPIC162:
	add	r1, pc, r1
	b	.L153
.L157:
	.align	2
.L156:
	.word	.LANCHOR0-(.LPIC160+8)
	.word	.LC36-(.LPIC167+8)
	.word	.LC3-(.LPIC168+8)
	.word	.LC35-(.LPIC165+8)
	.word	.LC1-(.LPIC166+8)
	.word	.LC2-(.LPIC163+8)
	.word	.LC3-(.LPIC164+8)
	.word	.LC35-(.LPIC161+8)
	.word	.LC1-(.LPIC162+8)
	.size	EApiVgaSetBacklightBrightness, .-EApiVgaSetBacklightBrightness
	.section	.rodata.str1.4
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	sub	sp, sp, #16
	ldr	lr, .L168
.LPIC169:
	add	lr, pc, lr
	ldr	lr, [lr]
	cmp	lr, #0
	beq	.L165
	cmp	r1, #0
	beq	.L166
	cmp	r2, #0
	beq	.L167
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	b	EApiGPIOGetLevelEmul(PLT)
.L165:
	ldr	ip, .L168+4
	mvn	r4, #0
	ldr	r0, .L168+8
	movw	r3, #535
	ldr	r2, .L168+12
	ldr	r1, .L168+16
.LPIC172:
	add	ip, pc, ip
.LPIC173:
	add	r0, pc, r0
.LPIC170:
	add	r2, pc, r2
.LPIC171:
	add	r1, pc, r1
.L164:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L160:
.L166:
	ldr	ip, .L168+20
	mvn	r4, #256
	ldr	r0, .L168+24
	mov	r3, #536
	ldr	r2, .L168+28
	ldr	r1, .L168+32
.LPIC176:
	add	ip, pc, ip
.LPIC177:
	add	r0, pc, r0
.LPIC174:
	add	r2, pc, r2
.LPIC175:
	add	r1, pc, r1
	b	.L164
.L167:
	ldr	ip, .L168+36
	mvn	r4, #256
	ldr	r0, .L168+40
	movw	r3, #537
	ldr	r2, .L168+44
	ldr	r1, .L168+48
.LPIC180:
	add	ip, pc, ip
.LPIC181:
	add	r0, pc, r0
.LPIC178:
	add	r2, pc, r2
.LPIC179:
	add	r1, pc, r1
	b	.L164
.L169:
	.align	2
.L168:
	.word	.LANCHOR0-(.LPIC169+8)
	.word	.LC2-(.LPIC172+8)
	.word	.LC3-(.LPIC173+8)
	.word	.LC37-(.LPIC170+8)
	.word	.LC1-(.LPIC171+8)
	.word	.LC38-(.LPIC176+8)
	.word	.LC3-(.LPIC177+8)
	.word	.LC37-(.LPIC174+8)
	.word	.LC1-(.LPIC175+8)
	.word	.LC39-(.LPIC180+8)
	.word	.LC3-(.LPIC181+8)
	.word	.LC37-(.LPIC178+8)
	.word	.LC1-(.LPIC179+8)
	.size	EApiGPIOGetLevel, .-EApiGPIOGetLevel
	.section	.rodata.str1.4
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L178
	push	{r4, lr}
	sub	sp, sp, #16
.LPIC182:
	add	r3, pc, r3
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L176
	cmp	r1, #0
	beq	.L177
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	b	EApiGPIOSetLevelEmul(PLT)
.L177:
	ldr	ip, .L178+4
	mvn	r4, #256
	ldr	r0, .L178+8
	mov	r3, #556
	ldr	r2, .L178+12
	ldr	r1, .L178+16
.LPIC189:
	add	ip, pc, ip
.LPIC190:
	add	r0, pc, r0
.LPIC187:
	add	r2, pc, r2
.LPIC188:
	add	r1, pc, r1
.L175:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L172:
.L176:
	ldr	ip, .L178+20
	mvn	r4, #0
	ldr	r0, .L178+24
	movw	r3, #555
	ldr	r2, .L178+28
	ldr	r1, .L178+32
.LPIC185:
	add	ip, pc, ip
.LPIC186:
	add	r0, pc, r0
.LPIC183:
	add	r2, pc, r2
.LPIC184:
	add	r1, pc, r1
	b	.L175
.L179:
	.align	2
.L178:
	.word	.LANCHOR0-(.LPIC182+8)
	.word	.LC38-(.LPIC189+8)
	.word	.LC3-(.LPIC190+8)
	.word	.LC40-(.LPIC187+8)
	.word	.LC1-(.LPIC188+8)
	.word	.LC2-(.LPIC185+8)
	.word	.LC3-(.LPIC186+8)
	.word	.LC40-(.LPIC183+8)
	.word	.LC1-(.LPIC184+8)
	.size	EApiGPIOSetLevel, .-EApiGPIOSetLevel
	.section	.rodata.str1.4
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	sub	sp, sp, #16
	ldr	lr, .L190
.LPIC191:
	add	lr, pc, lr
	ldr	lr, [lr]
	cmp	lr, #0
	beq	.L187
	cmp	r1, #0
	beq	.L188
	cmp	r2, #0
	beq	.L189
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	b	EApiGPIOGetDirectionEmul(PLT)
.L187:
	ldr	ip, .L190+4
	mvn	r4, #0
	ldr	r0, .L190+8
	movw	r3, #574
	ldr	r2, .L190+12
	ldr	r1, .L190+16
.LPIC194:
	add	ip, pc, ip
.LPIC195:
	add	r0, pc, r0
.LPIC192:
	add	r2, pc, r2
.LPIC193:
	add	r1, pc, r1
.L186:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L182:
.L188:
	ldr	ip, .L190+20
	mvn	r4, #256
	ldr	r0, .L190+24
	movw	r3, #575
	ldr	r2, .L190+28
	ldr	r1, .L190+32
.LPIC198:
	add	ip, pc, ip
.LPIC199:
	add	r0, pc, r0
.LPIC196:
	add	r2, pc, r2
.LPIC197:
	add	r1, pc, r1
	b	.L186
.L189:
	ldr	ip, .L190+36
	mvn	r4, #256
	ldr	r0, .L190+40
	mov	r3, #576
	ldr	r2, .L190+44
	ldr	r1, .L190+48
.LPIC202:
	add	ip, pc, ip
.LPIC203:
	add	r0, pc, r0
.LPIC200:
	add	r2, pc, r2
.LPIC201:
	add	r1, pc, r1
	b	.L186
.L191:
	.align	2
.L190:
	.word	.LANCHOR0-(.LPIC191+8)
	.word	.LC2-(.LPIC194+8)
	.word	.LC3-(.LPIC195+8)
	.word	.LC41-(.LPIC192+8)
	.word	.LC1-(.LPIC193+8)
	.word	.LC38-(.LPIC198+8)
	.word	.LC3-(.LPIC199+8)
	.word	.LC41-(.LPIC196+8)
	.word	.LC1-(.LPIC197+8)
	.word	.LC42-(.LPIC202+8)
	.word	.LC3-(.LPIC203+8)
	.word	.LC41-(.LPIC200+8)
	.word	.LC1-(.LPIC201+8)
	.size	EApiGPIOGetDirection, .-EApiGPIOGetDirection
	.section	.rodata.str1.4
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L200
	push	{r4, lr}
	sub	sp, sp, #16
.LPIC204:
	add	r3, pc, r3
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L198
	cmp	r1, #0
	beq	.L199
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	b	EApiGPIOSetDirectionEmul(PLT)
.L199:
	ldr	ip, .L200+4
	mvn	r4, #256
	ldr	r0, .L200+8
	movw	r3, #595
	ldr	r2, .L200+12
	ldr	r1, .L200+16
.LPIC211:
	add	ip, pc, ip
.LPIC212:
	add	r0, pc, r0
.LPIC209:
	add	r2, pc, r2
.LPIC210:
	add	r1, pc, r1
.L197:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L194:
.L198:
	ldr	ip, .L200+20
	mvn	r4, #0
	ldr	r0, .L200+24
	movw	r3, #594
	ldr	r2, .L200+28
	ldr	r1, .L200+32
.LPIC207:
	add	ip, pc, ip
.LPIC208:
	add	r0, pc, r0
.LPIC205:
	add	r2, pc, r2
.LPIC206:
	add	r1, pc, r1
	b	.L197
.L201:
	.align	2
.L200:
	.word	.LANCHOR0-(.LPIC204+8)
	.word	.LC38-(.LPIC211+8)
	.word	.LC3-(.LPIC212+8)
	.word	.LC43-(.LPIC209+8)
	.word	.LC1-(.LPIC210+8)
	.word	.LC2-(.LPIC207+8)
	.word	.LC3-(.LPIC208+8)
	.word	.LC43-(.LPIC205+8)
	.word	.LC1-(.LPIC206+8)
	.size	EApiGPIOSetDirection, .-EApiGPIOSetDirection
	.section	.rodata.str1.4
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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L214
	push	{r4, lr}
	sub	sp, sp, #24
	ldr	lr, .L214+4
.LPIC213:
	add	r3, pc, r3
	ldr	ip, .L214+8
	ldr	r3, [r3]
.LPIC223:
	add	lr, pc, lr
	ldr	ip, [lr, ip]
	cmp	r3, #0
	ldr	ip, [ip]
	str	ip, [sp, #20]
	mov	ip, #0
	beq	.L211
	orrs	r3, r2, r1
	beq	.L212
	cmp	r1, #0
	addeq	r1, sp, #16
	beq	.L206
	cmp	r2, #0
	addeq	r2, sp, #16
.L206:
	bl	EApiGPIOGetDirectionCapsEmul(PLT)
.L204:
.L202:
	ldr	r2, .L214+12
	ldr	r3, .L214+8
.LPIC222:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #20]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L213
	add	sp, sp, #24
	@ sp needed
	pop	{r4, pc}
.L211:
	ldr	ip, .L214+16
	mvn	r4, #0
	ldr	r0, .L214+20
	movw	r3, #617
	ldr	r2, .L214+24
	ldr	r1, .L214+28
.LPIC216:
	add	ip, pc, ip
.LPIC217:
	add	r0, pc, r0
.LPIC214:
	add	r2, pc, r2
.LPIC215:
	add	r1, pc, r1
.L210:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L202
.L212:
	ldr	ip, .L214+32
	mvn	r4, #256
	ldr	r0, .L214+36
	movw	r3, #618
	ldr	r2, .L214+40
	ldr	r1, .L214+44
.LPIC220:
	add	ip, pc, ip
.LPIC221:
	add	r0, pc, r0
.LPIC218:
	add	r2, pc, r2
.LPIC219:
	add	r1, pc, r1
	b	.L210
.L213:
	bl	__stack_chk_fail(PLT)
.L215:
	.align	2
.L214:
	.word	.LANCHOR0-(.LPIC213+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC223+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC222+8)
	.word	.LC2-(.LPIC216+8)
	.word	.LC3-(.LPIC217+8)
	.word	.LC44-(.LPIC214+8)
	.word	.LC1-(.LPIC215+8)
	.word	.LC45-(.LPIC220+8)
	.word	.LC3-(.LPIC221+8)
	.word	.LC44-(.LPIC218+8)
	.word	.LC1-(.LPIC219+8)
	.size	EApiGPIOGetDirectionCaps, .-EApiGPIOGetDirectionCaps
	.section	.rodata.str1.4
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L221
	push	{r4, lr}
	sub	sp, sp, #16
.LPIC224:
	add	r3, pc, r3
	ldr	r2, [r3]
	cmp	r2, #1
	beq	.L220
.L218:
	mov	r2, #1
	mov	r4, #0
	str	r2, [r3]
	bl	EApiInitLib(PLT)
	ldr	ip, .L221+4
	mov	r3, #652
	ldr	r0, .L221+8
	ldr	r2, .L221+12
	ldr	r1, .L221+16
.LPIC232:
	add	ip, pc, ip
.LPIC233:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC230:
	add	r2, pc, r2
.LPIC231:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L220:
	ldr	ip, .L221+20
	mvn	r4, #0
	ldr	r0, .L221+24
	movw	r3, #649
	ldr	r2, .L221+28
	ldr	r1, .L221+32
.LPIC227:
	add	ip, pc, ip
.LPIC228:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC225:
	add	r2, pc, r2
.LPIC226:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L222:
	.align	2
.L221:
	.word	.LANCHOR0-(.LPIC224+8)
	.word	.LC28-(.LPIC232+8)
	.word	.LC3-(.LPIC233+8)
	.word	.LC46-(.LPIC230+8)
	.word	.LC1-(.LPIC231+8)
	.word	.LC47-(.LPIC227+8)
	.word	.LC3-(.LPIC228+8)
	.word	.LC46-(.LPIC225+8)
	.word	.LC1-(.LPIC226+8)
	.size	EApiLibInitialize, .-EApiLibInitialize
	.section	.rodata.str1.4
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	sp, sp, #20
	ldr	r5, .L228
.LPIC234:
	add	r5, pc, r5
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L227
.L225:
	bl	EApiUninitLib(PLT)
	ldr	r1, .L228+4
	mov	r4, #0
	ldr	r0, .L228+8
	movw	r3, #665
	ldr	r2, .L228+12
.LPIC243:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC242:
	add	r0, pc, r0
	ldr	r1, .L228+16
.LPIC240:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #76
	str	r4, [r5]
.LPIC241:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, pc}
.L227:
	ldr	ip, .L228+20
	mvn	r4, #0
	ldr	r0, .L228+24
	movw	r3, #662
	ldr	r2, .L228+28
	ldr	r1, .L228+32
.LPIC237:
	add	ip, pc, ip
.LPIC238:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC235:
	add	r2, pc, r2
.LPIC236:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, pc}
.L229:
	.align	2
.L228:
	.word	.LANCHOR0-(.LPIC234+8)
	.word	.LC3-(.LPIC243+8)
	.word	.LC28-(.LPIC242+8)
	.word	.LC48-(.LPIC240+8)
	.word	.LC1-(.LPIC241+8)
	.word	.LC2-(.LPIC237+8)
	.word	.LC3-(.LPIC238+8)
	.word	.LC48-(.LPIC235+8)
	.word	.LC1-(.LPIC236+8)
	.size	EApiLibUnInitialize, .-EApiLibUnInitialize
	.section	.rodata.str1.4
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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L244
	push	{r4, lr}
	sub	sp, sp, #24
	ldr	lr, .L244+4
.LPIC244:
	add	r3, pc, r3
	ldr	ip, .L244+8
	ldr	r3, [r3]
.LPIC254:
	add	lr, pc, lr
	ldr	ip, [lr, ip]
	cmp	r3, #0
	ldr	ip, [ip]
	str	ip, [sp, #20]
	mov	ip, #0
	beq	.L241
	orrs	r3, r0, r1
	beq	.L242
	cmp	r0, #0
	beq	.L238
	cmp	r1, #0
	addeq	r1, sp, #16
.L235:
	cmp	r2, #0
	addeq	r2, sp, #16
.L234:
	bl	EApiWDogGetCapEmul(PLT)
.L232:
.L230:
	ldr	r2, .L244+12
	ldr	r3, .L244+8
.LPIC253:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #20]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L243
	add	sp, sp, #24
	@ sp needed
	pop	{r4, pc}
.L242:
	cmp	r2, #0
	addne	r0, sp, #16
	movne	r1, r0
	bne	.L234
	ldr	ip, .L244+16
	mvn	r4, #256
	ldr	r0, .L244+20
	movw	r3, #702
	ldr	r2, .L244+24
	ldr	r1, .L244+28
.LPIC251:
	add	ip, pc, ip
.LPIC252:
	add	r0, pc, r0
.LPIC249:
	add	r2, pc, r2
.LPIC250:
	add	r1, pc, r1
	b	.L240
.L241:
	ldr	ip, .L244+32
	mvn	r4, #0
	ldr	r0, .L244+36
	movw	r3, #701
	ldr	r2, .L244+40
	ldr	r1, .L244+44
.LPIC247:
	add	ip, pc, ip
.LPIC248:
	add	r0, pc, r0
.LPIC245:
	add	r2, pc, r2
.LPIC246:
	add	r1, pc, r1
.L240:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L230
.L243:
	bl	__stack_chk_fail(PLT)
.L238:
	add	r0, sp, #16
	b	.L235
.L245:
	.align	2
.L244:
	.word	.LANCHOR0-(.LPIC244+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC254+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC253+8)
	.word	.LC50-(.LPIC251+8)
	.word	.LC3-(.LPIC252+8)
	.word	.LC49-(.LPIC249+8)
	.word	.LC1-(.LPIC250+8)
	.word	.LC2-(.LPIC247+8)
	.word	.LC3-(.LPIC248+8)
	.word	.LC49-(.LPIC245+8)
	.word	.LC1-(.LPIC246+8)
	.size	EApiWDogGetCap, .-EApiWDogGetCap
	.section	.rodata.str1.4
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L253
.LPIC255:
	add	r3, pc, r3
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L250
	b	EApiWDogStartEmul(PLT)
.L250:
.L248:
	ldr	ip, .L253+4
	movw	r3, #729
	ldr	r0, .L253+8
	ldr	r2, .L253+12
	ldr	r1, .L253+16
.LPIC258:
	add	ip, pc, ip
	push	{r4, lr}
.LPIC259:
	add	r0, pc, r0
	sub	sp, sp, #16
	mvn	r4, #0
.LPIC256:
	add	r2, pc, r2
.LPIC257:
	add	r1, pc, r1
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L254:
	.align	2
.L253:
	.word	.LANCHOR0-(.LPIC255+8)
	.word	.LC2-(.LPIC258+8)
	.word	.LC3-(.LPIC259+8)
	.word	.LC51-(.LPIC256+8)
	.word	.LC1-(.LPIC257+8)
	.size	EApiWDogStart, .-EApiWDogStart
	.section	.rodata.str1.4
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L262
.LPIC260:
	add	r3, pc, r3
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L259
	b	EApiWDogTriggerEmul(PLT)
.L259:
.L257:
	ldr	ip, .L262+4
	movw	r3, #739
	ldr	r0, .L262+8
	ldr	r2, .L262+12
	ldr	r1, .L262+16
.LPIC263:
	add	ip, pc, ip
	push	{r4, lr}
.LPIC264:
	add	r0, pc, r0
	sub	sp, sp, #16
	mvn	r4, #0
.LPIC261:
	add	r2, pc, r2
.LPIC262:
	add	r1, pc, r1
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L263:
	.align	2
.L262:
	.word	.LANCHOR0-(.LPIC260+8)
	.word	.LC2-(.LPIC263+8)
	.word	.LC3-(.LPIC264+8)
	.word	.LC52-(.LPIC261+8)
	.word	.LC1-(.LPIC262+8)
	.size	EApiWDogTrigger, .-EApiWDogTrigger
	.section	.rodata.str1.4
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L271
.LPIC265:
	add	r3, pc, r3
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L268
	b	EApiWDogStopEmul(PLT)
.L268:
.L266:
	ldr	ip, .L271+4
	movw	r3, #749
	ldr	r0, .L271+8
	ldr	r2, .L271+12
	ldr	r1, .L271+16
.LPIC268:
	add	ip, pc, ip
	push	{r4, lr}
.LPIC269:
	add	r0, pc, r0
	sub	sp, sp, #16
	mvn	r4, #0
.LPIC266:
	add	r2, pc, r2
.LPIC267:
	add	r1, pc, r1
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L272:
	.align	2
.L271:
	.word	.LANCHOR0-(.LPIC265+8)
	.word	.LC2-(.LPIC268+8)
	.word	.LC3-(.LPIC269+8)
	.word	.LC53-(.LPIC266+8)
	.word	.LC1-(.LPIC267+8)
	.size	EApiWDogStop, .-EApiWDogStop
	.section	.rodata.str1.4
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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L285
	push	{r4, lr}
	sub	sp, sp, #24
	ldr	lr, .L285+4
.LPIC270:
	add	r3, pc, r3
	ldr	ip, .L285+8
	ldr	r3, [r3]
.LPIC280:
	add	lr, pc, lr
	ldr	ip, [lr, ip]
	cmp	r3, #0
	ldr	ip, [ip]
	str	ip, [sp, #20]
	mov	ip, #0
	beq	.L282
	orrs	r3, r2, r1
	beq	.L283
	cmp	r1, #0
	addeq	r1, sp, #16
	beq	.L277
	cmp	r2, #0
	addeq	r2, sp, #16
.L277:
	bl	EApiStorageCapEmul(PLT)
.L275:
.L273:
	ldr	r2, .L285+12
	ldr	r3, .L285+8
.LPIC279:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #20]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L284
	add	sp, sp, #24
	@ sp needed
	pop	{r4, pc}
.L282:
	ldr	ip, .L285+16
	mvn	r4, #0
	ldr	r0, .L285+20
	movw	r3, #775
	ldr	r2, .L285+24
	ldr	r1, .L285+28
.LPIC273:
	add	ip, pc, ip
.LPIC274:
	add	r0, pc, r0
.LPIC271:
	add	r2, pc, r2
.LPIC272:
	add	r1, pc, r1
.L281:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L273
.L283:
	ldr	ip, .L285+32
	mvn	r4, #256
	ldr	r0, .L285+36
	mov	r3, #776
	ldr	r2, .L285+40
	ldr	r1, .L285+44
.LPIC277:
	add	ip, pc, ip
.LPIC278:
	add	r0, pc, r0
.LPIC275:
	add	r2, pc, r2
.LPIC276:
	add	r1, pc, r1
	b	.L281
.L284:
	bl	__stack_chk_fail(PLT)
.L286:
	.align	2
.L285:
	.word	.LANCHOR0-(.LPIC270+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC280+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC279+8)
	.word	.LC2-(.LPIC273+8)
	.word	.LC3-(.LPIC274+8)
	.word	.LC54-(.LPIC271+8)
	.word	.LC1-(.LPIC272+8)
	.word	.LC55-(.LPIC277+8)
	.word	.LC3-(.LPIC278+8)
	.word	.LC54-(.LPIC275+8)
	.word	.LC1-(.LPIC276+8)
	.size	EApiStorageCap, .-EApiStorageCap
	.section	.rodata.str1.4
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
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r4, r3
	ldr	r3, .L303
	sub	sp, sp, #28
	ldr	r8, [sp, #56]
.LPIC281:
	add	r3, pc, r3
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L298
	ldr	r3, .L303+4
	mov	r7, r2
	ldr	r9, .L303+8
	mov	r5, r0
	ldr	r2, .L303+12
	mov	r6, r1
.LPIC288:
	add	r3, pc, r3
	str	r1, [sp, #12]
	str	r3, [sp, #4]
.LPIC287:
	add	r9, pc, r9
	ldr	r3, .L303+16
.LPIC286:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r1, r9
	mov	r0, #76
	str	r8, [sp, #20]
.LPIC289:
	add	r3, pc, r3
	str	r4, [sp, #16]
	str	r3, [sp]
	mov	r3, #808
	bl	siFormattedMessage_M2(PLT)
	cmp	r7, #0
	beq	.L299
	cmp	r8, #0
	beq	.L300
	cmp	r4, #0
	beq	.L301
	cmp	r4, r8
	movcs	r4, #0
	bcc	.L302
.L293:
	mov	r3, r8
	mov	r2, r7
	mov	r1, r6
	mov	r0, r5
	bl	EApiStorageAreaReadEmul(PLT)
	cmp	r0, #0
	movne	r4, r0
.L289:
.L287:
	mov	r0, r4
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L298:
	ldr	ip, .L303+20
	mvn	r4, #0
	ldr	r0, .L303+24
	movw	r3, #802
	ldr	r2, .L303+28
	ldr	r1, .L303+32
.LPIC284:
	add	ip, pc, ip
.LPIC285:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC282:
	add	r2, pc, r2
.LPIC283:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L302:
	ldr	r3, .L303+36
	mov	r8, r4
	ldr	r2, .L303+40
	mvn	r4, #1536
	mov	r1, r9
	str	r4, [sp]
.LPIC304:
	add	r3, pc, r3
	mov	r0, #69
	str	r3, [sp, #8]
.LPIC302:
	add	r2, pc, r2
	ldr	r3, .L303+44
.LPIC305:
	add	r3, pc, r3
	str	r3, [sp, #4]
	movw	r3, #819
	bl	siFormattedMessage_SC(PLT)
	b	.L293
.L300:
	ldr	r2, .L303+48
	mvn	r4, #256
	ldr	r0, .L303+52
	mov	r3, #816
	mov	r1, r9
	str	r4, [sp]
.LPIC297:
	add	r2, pc, r2
	str	r2, [sp, #4]
.LPIC296:
	add	r0, pc, r0
	ldr	r2, .L303+56
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC294:
	add	r2, pc, r2
	bl	siFormattedMessage_SC(PLT)
	b	.L287
.L301:
	ldr	r2, .L303+60
	mvn	r4, #256
	ldr	r0, .L303+64
	movw	r3, #817
	mov	r1, r9
	str	r4, [sp]
.LPIC301:
	add	r2, pc, r2
	str	r2, [sp, #4]
.LPIC300:
	add	r0, pc, r0
	ldr	r2, .L303+68
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC298:
	add	r2, pc, r2
	bl	siFormattedMessage_SC(PLT)
	b	.L287
.L299:
	ldr	r2, .L303+72
	mvn	r4, #256
	ldr	r0, .L303+76
	movw	r3, #815
	mov	r1, r9
	str	r4, [sp]
.LPIC293:
	add	r2, pc, r2
	str	r2, [sp, #4]
.LPIC292:
	add	r0, pc, r0
	ldr	r2, .L303+80
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC290:
	add	r2, pc, r2
	bl	siFormattedMessage_SC(PLT)
	b	.L287
.L304:
	.align	2
.L303:
	.word	.LANCHOR0-(.LPIC281+8)
	.word	.LC57-(.LPIC288+8)
	.word	.LC1-(.LPIC287+8)
	.word	.LC7-(.LPIC286+8)
	.word	.LC9-(.LPIC289+8)
	.word	.LC2-(.LPIC284+8)
	.word	.LC3-(.LPIC285+8)
	.word	.LC56-(.LPIC282+8)
	.word	.LC1-(.LPIC283+8)
	.word	.LC58-(.LPIC304+8)
	.word	.LC56-(.LPIC302+8)
	.word	.LC3-(.LPIC305+8)
	.word	.LC3-(.LPIC297+8)
	.word	.LC18-(.LPIC296+8)
	.word	.LC56-(.LPIC294+8)
	.word	.LC3-(.LPIC301+8)
	.word	.LC17-(.LPIC300+8)
	.word	.LC56-(.LPIC298+8)
	.word	.LC3-(.LPIC293+8)
	.word	.LC16-(.LPIC292+8)
	.word	.LC56-(.LPIC290+8)
	.size	EApiStorageAreaRead, .-EApiStorageAreaRead
	.section	.rodata.str1.4
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L314
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, r0
	sub	sp, sp, #24
.LPIC306:
	add	ip, pc, ip
	ldr	r0, [ip]
	cmp	r0, #0
	beq	.L311
	str	r3, [sp, #16]
	mov	r4, r3
	ldr	r3, .L314+4
	mov	r7, r2
	ldr	r8, .L314+8
	mov	r6, r1
	ldr	r2, .L314+12
	mov	r0, #76
.LPIC313:
	add	r3, pc, r3
	str	r1, [sp, #12]
	str	r3, [sp, #4]
.LPIC312:
	add	r8, pc, r8
	ldr	r3, .L314+16
.LPIC311:
	add	r2, pc, r2
	mov	r1, r8
	str	r5, [sp, #8]
.LPIC314:
	add	r3, pc, r3
	str	r3, [sp]
	movw	r3, #845
	bl	siFormattedMessage_M2(PLT)
	cmp	r7, #0
	beq	.L312
	cmp	r4, #0
	beq	.L313
	mov	r3, r4
	mov	r2, r7
	mov	r1, r6
	mov	r0, r5
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	b	EApiStorageAreaWriteEmul(PLT)
.L311:
	ldr	ip, .L314+20
	mvn	r4, #0
	ldr	r0, .L314+24
	movw	r3, #839
	ldr	r2, .L314+28
	ldr	r1, .L314+32
.LPIC309:
	add	ip, pc, ip
.LPIC310:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC307:
	add	r2, pc, r2
.LPIC308:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
.L307:
.L305:
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L313:
	ldr	r2, .L314+36
	mvn	r4, #256
	ldr	r0, .L314+40
	movw	r3, #853
	mov	r1, r8
	str	r4, [sp]
.LPIC322:
	add	r2, pc, r2
	str	r2, [sp, #4]
.LPIC321:
	add	r0, pc, r0
	ldr	r2, .L314+44
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC319:
	add	r2, pc, r2
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L312:
	ldr	r2, .L314+48
	mvn	r4, #256
	ldr	r0, .L314+52
	mov	r3, #852
	mov	r1, r8
	str	r4, [sp]
.LPIC318:
	add	r2, pc, r2
	str	r2, [sp, #4]
.LPIC317:
	add	r0, pc, r0
	ldr	r2, .L314+56
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC315:
	add	r2, pc, r2
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L305
.L315:
	.align	2
.L314:
	.word	.LANCHOR0-(.LPIC306+8)
	.word	.LC60-(.LPIC313+8)
	.word	.LC1-(.LPIC312+8)
	.word	.LC7-(.LPIC311+8)
	.word	.LC9-(.LPIC314+8)
	.word	.LC2-(.LPIC309+8)
	.word	.LC3-(.LPIC310+8)
	.word	.LC59-(.LPIC307+8)
	.word	.LC1-(.LPIC308+8)
	.word	.LC3-(.LPIC322+8)
	.word	.LC18-(.LPIC321+8)
	.word	.LC59-(.LPIC319+8)
	.word	.LC3-(.LPIC318+8)
	.word	.LC16-(.LPIC317+8)
	.word	.LC59-(.LPIC315+8)
	.size	EApiStorageAreaWrite, .-EApiStorageAreaWrite
	.hidden	Initialized
	.global	Initialized
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	Initialized, %object
	.size	Initialized, 4
Initialized:
	.space	4
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
