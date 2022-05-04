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
	.file	"EeePProg.c"
	.text
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"TB \000"
	.align	2
.LC1:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux/../EeePProg.c\000"
	.align	2
.LC2:
	.ascii	"EeeP_CreateCOM0R20_CBImage( &BHandel , *(char**)pAr"
	.ascii	"gData )\000"
	.align	2
.LC3:
	.ascii	"%s\012\000"
	.align	2
.LC4:
	.ascii	"EeePWriteBufferToEEP(BHandel, EAPI_ID_I2C_EXTERNAL,"
	.ascii	" COM0R20_CB_EEP_DEV_ADDR)\000"
	.text
	.align	2
	.global	CMD_CreateCOM0R20CB_EEP
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CMD_CreateCOM0R20CB_EEP, %function
CMD_CreateCOM0R20CB_EEP:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L13
	mov	r3, #0
	ldr	r2, .L13+4
	push	{r4, r5, lr}
	sub	sp, sp, #28
.LPIC9:
	add	ip, pc, ip
	add	r5, sp, #16
	ldr	r2, [ip, r2]
	ldr	r1, [r0]
	mov	r0, r5
	ldr	r2, [r2]
	str	r2, [sp, #20]
	mov	r2, #0
	str	r3, [sp, #16]
	bl	EeeP_CreateCOM0R20_CBImage(PLT)
	subs	r4, r0, #0
	bne	.L10
	mov	r1, r4
	ldr	r0, [sp, #16]
	mov	r2, #174
	bl	EeePWriteBufferToEEP(PLT)
	subs	r4, r0, #0
	bne	.L11
.L3:
	mov	r0, r5
	bl	EeePFreeBuffer(PLT)
	ldr	r2, .L13+8
	ldr	r3, .L13+4
.LPIC8:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #20]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L12
	mov	r0, r4
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, pc}
.L10:
	ldr	r1, .L13+12
	movw	r3, #345
	ldr	r0, .L13+16
	ldr	r2, .L13+20
.LPIC3:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC2:
	add	r0, pc, r0
	ldr	r1, .L13+24
.LPIC0:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC1:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L3
.L11:
	ldr	r1, .L13+28
	movw	r3, #349
	ldr	r0, .L13+32
	ldr	r2, .L13+36
.LPIC7:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC6:
	add	r0, pc, r0
	ldr	r1, .L13+40
.LPIC4:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC5:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L3
.L12:
	bl	__stack_chk_fail(PLT)
.L14:
	.align	2
.L13:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC9+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC8+8)
	.word	.LC3-(.LPIC3+8)
	.word	.LC2-(.LPIC2+8)
	.word	.LC0-(.LPIC0+8)
	.word	.LC1-(.LPIC1+8)
	.word	.LC3-(.LPIC7+8)
	.word	.LC4-(.LPIC6+8)
	.word	.LC0-(.LPIC4+8)
	.word	.LC1-(.LPIC5+8)
	.size	CMD_CreateCOM0R20CB_EEP, .-CMD_CreateCOM0R20CB_EEP
	.section	.rodata.str1.4
	.align	2
.LC5:
	.ascii	"EeeP_CreateCOM0R20_MEEPImage( &BHandel , *(char**)p"
	.ascii	"ArgData )\000"
	.align	2
.LC6:
	.ascii	"EeePWriteBufferToEEP(BHandel, EAPI_ID_I2C_EXTERNAL,"
	.ascii	" COM0R20_M_EEP_DEV_ADDR)\000"
	.text
	.align	2
	.global	CMD_CreateCOM0R20M_EEP
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CMD_CreateCOM0R20M_EEP, %function
CMD_CreateCOM0R20M_EEP:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L26
	mov	r3, #0
	ldr	r2, .L26+4
	push	{r4, r5, lr}
	sub	sp, sp, #28
.LPIC19:
	add	ip, pc, ip
	add	r5, sp, #16
	ldr	r2, [ip, r2]
	ldr	r1, [r0]
	mov	r0, r5
	ldr	r2, [r2]
	str	r2, [sp, #20]
	mov	r2, #0
	str	r3, [sp, #16]
	bl	EeeP_CreateCOM0R20_MEEPImage(PLT)
	subs	r4, r0, #0
	bne	.L23
	mov	r1, r4
	ldr	r0, [sp, #16]
	mov	r2, #160
	bl	EeePWriteBufferToEEP(PLT)
	subs	r4, r0, #0
	bne	.L24
.L17:
	mov	r0, r5
	bl	EeePFreeBuffer(PLT)
	ldr	r2, .L26+8
	ldr	r3, .L26+4
.LPIC18:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #20]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L25
	mov	r0, r4
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, pc}
.L23:
	ldr	r1, .L26+12
	mov	r3, #364
	ldr	r0, .L26+16
	ldr	r2, .L26+20
.LPIC13:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC12:
	add	r0, pc, r0
	ldr	r1, .L26+24
.LPIC10:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC11:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L17
.L24:
	ldr	r1, .L26+28
	mov	r3, #368
	ldr	r0, .L26+32
	ldr	r2, .L26+36
.LPIC17:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC16:
	add	r0, pc, r0
	ldr	r1, .L26+40
.LPIC14:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC15:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L17
.L25:
	bl	__stack_chk_fail(PLT)
.L27:
	.align	2
.L26:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC19+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC18+8)
	.word	.LC3-(.LPIC13+8)
	.word	.LC5-(.LPIC12+8)
	.word	.LC0-(.LPIC10+8)
	.word	.LC1-(.LPIC11+8)
	.word	.LC3-(.LPIC17+8)
	.word	.LC6-(.LPIC16+8)
	.word	.LC0-(.LPIC14+8)
	.word	.LC1-(.LPIC15+8)
	.size	CMD_CreateCOM0R20M_EEP, .-CMD_CreateCOM0R20M_EEP
	.section	.rodata.str1.4
	.align	2
.LC7:
	.ascii	"EeeP_CreateEeePExtEEPImage( &BHandel , ((WriteEepCf"
	.ascii	"g_t*)pArgData)->FileName )\000"
	.align	2
.LC8:
	.ascii	"EeePWriteBufferToEEP(BHandel, (uint16_t)((WriteEepC"
	.ascii	"fg_t*)pArgData)->I2CBus, (uint16_t)((WriteEepCfg_t*"
	.ascii	")pArgData)->I2CDevAddr )\000"
	.text
	.align	2
	.global	CMD_CreateEeePExt_EEP
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CMD_CreateEeePExt_EEP, %function
CMD_CreateEeePExt_EEP:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L39
	mov	r3, #0
	ldr	r2, .L39+4
	push	{r4, r5, r6, lr}
	sub	sp, sp, #24
.LPIC29:
	add	ip, pc, ip
	add	r6, sp, #16
	mov	r5, r0
	ldr	r2, [ip, r2]
	ldr	r1, [r0]
	mov	r0, r6
	ldr	r2, [r2]
	str	r2, [sp, #20]
	mov	r2, #0
	str	r3, [sp, #16]
	bl	EeeP_CreateEeePExtEEPImage(PLT)
	subs	r4, r0, #0
	bne	.L36
	ldrh	r2, [r5, #8]
	ldrh	r1, [r5, #4]
	ldr	r0, [sp, #16]
	bl	EeePWriteBufferToEEP(PLT)
	subs	r4, r0, #0
	bne	.L37
.L30:
	mov	r0, r6
	bl	EeePFreeBuffer(PLT)
	ldr	r2, .L39+8
	ldr	r3, .L39+4
.LPIC28:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #20]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L38
	mov	r0, r4
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, pc}
.L36:
	ldr	r1, .L39+12
	movw	r3, #383
	ldr	r0, .L39+16
	ldr	r2, .L39+20
.LPIC23:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC22:
	add	r0, pc, r0
	ldr	r1, .L39+24
.LPIC20:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC21:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L30
.L37:
	ldr	r1, .L39+28
	movw	r3, #387
	ldr	r0, .L39+32
	ldr	r2, .L39+36
.LPIC27:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC26:
	add	r0, pc, r0
	ldr	r1, .L39+40
.LPIC24:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC25:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L30
.L38:
	bl	__stack_chk_fail(PLT)
.L40:
	.align	2
.L39:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC29+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC28+8)
	.word	.LC3-(.LPIC23+8)
	.word	.LC7-(.LPIC22+8)
	.word	.LC0-(.LPIC20+8)
	.word	.LC1-(.LPIC21+8)
	.word	.LC3-(.LPIC27+8)
	.word	.LC8-(.LPIC26+8)
	.word	.LC0-(.LPIC24+8)
	.word	.LC1-(.LPIC25+8)
	.size	CMD_CreateEeePExt_EEP, .-CMD_CreateEeePExt_EEP
	.section	.rodata.str1.4
	.align	2
.LC9:
	.ascii	"EeePReadBufferFromFile( &BHandel , *(char**)pArgDat"
	.ascii	"a )\000"
	.align	2
.LC10:
	.ascii	"Com0\000"
	.align	2
.LC11:
	.ascii	"CMD_ProgramCOM0R20CB_EEP\000"
	.align	2
.LC12:
	.ascii	"Not Valid COM0 R2.0 Carrier Board Image\000"
	.text
	.align	2
	.global	CMD_ProgramCOM0R20CB_EEP
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CMD_ProgramCOM0R20CB_EEP, %function
CMD_ProgramCOM0R20CB_EEP:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L56
	mov	r3, #0
	ldr	r2, .L56+4
	push	{r4, r5, lr}
	sub	sp, sp, #28
.LPIC44:
	add	ip, pc, ip
	add	r5, sp, #16
	ldr	r2, [ip, r2]
	ldr	r1, [r0]
	mov	r0, r5
	ldr	r2, [r2]
	str	r2, [sp, #20]
	mov	r2, #0
	str	r3, [sp, #16]
	bl	EeePReadBufferFromFile(PLT)
	subs	r4, r0, #0
	bne	.L53
	ldr	r0, [sp, #16]
	ldrb	r3, [r0, #6]	@ zero_extendqisi2
	cmp	r3, #67
	beq	.L54
.L44:
	ldr	r1, .L56+8
	mvn	r4, #3840
	ldr	r2, .L56+12
	mov	r3, #412
	mov	r0, #69
	str	r4, [sp]
.LPIC37:
	add	r1, pc, r1
.LPIC38:
	add	r2, pc, r2
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r1, .L56+16
	ldr	r2, .L56+20
.LPIC36:
	add	r1, pc, r1
.LPIC35:
	add	r2, pc, r2
	bl	siFormattedMessage_SC(PLT)
.L43:
	mov	r0, r5
	bl	EeePFreeBuffer(PLT)
	ldr	r2, .L56+24
	ldr	r3, .L56+4
.LPIC43:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #20]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L55
	mov	r0, r4
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, pc}
.L54:
	ldrb	r3, [r0, #7]	@ zero_extendqisi2
	cmp	r3, #111
	bne	.L44
	ldrb	r3, [r0, #8]	@ zero_extendqisi2
	cmp	r3, #109
	bne	.L44
	ldrb	r3, [r0, #9]	@ zero_extendqisi2
	cmp	r3, #48
	bne	.L44
	mov	r1, r4
	mov	r2, #174
	bl	EeePWriteBufferToEEP(PLT)
	subs	r4, r0, #0
	beq	.L43
	ldr	r1, .L56+28
	movw	r3, #418
	ldr	r0, .L56+32
	ldr	r2, .L56+36
.LPIC42:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC41:
	add	r0, pc, r0
	ldr	r1, .L56+40
.LPIC39:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC40:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L43
.L53:
	ldr	r1, .L56+44
	movw	r3, #407
	ldr	r0, .L56+48
	ldr	r2, .L56+52
.LPIC33:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC32:
	add	r0, pc, r0
	ldr	r1, .L56+56
.LPIC30:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC31:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L43
.L55:
	bl	__stack_chk_fail(PLT)
.L57:
	.align	2
.L56:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC44+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC12-(.LPIC37+8)
	.word	.LC3-(.LPIC38+8)
	.word	.LC1-(.LPIC36+8)
	.word	.LC11-(.LPIC35+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC43+8)
	.word	.LC3-(.LPIC42+8)
	.word	.LC4-(.LPIC41+8)
	.word	.LC0-(.LPIC39+8)
	.word	.LC1-(.LPIC40+8)
	.word	.LC3-(.LPIC33+8)
	.word	.LC9-(.LPIC32+8)
	.word	.LC0-(.LPIC30+8)
	.word	.LC1-(.LPIC31+8)
	.size	CMD_ProgramCOM0R20CB_EEP, .-CMD_ProgramCOM0R20CB_EEP
	.section	.rodata.str1.4
	.align	2
.LC13:
	.ascii	"coM0\000"
	.align	2
.LC14:
	.ascii	"CMD_ProgramCOM0R20M_EEP\000"
	.align	2
.LC15:
	.ascii	"Not Valid COM0 R2.0 Module Image\000"
	.text
	.align	2
	.global	CMD_ProgramCOM0R20M_EEP
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CMD_ProgramCOM0R20M_EEP, %function
CMD_ProgramCOM0R20M_EEP:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L73
	mov	r3, #0
	ldr	r2, .L73+4
	push	{r4, r5, lr}
	sub	sp, sp, #28
.LPIC59:
	add	ip, pc, ip
	add	r5, sp, #16
	ldr	r2, [ip, r2]
	ldr	r1, [r0]
	mov	r0, r5
	ldr	r2, [r2]
	str	r2, [sp, #20]
	mov	r2, #0
	str	r3, [sp, #16]
	bl	EeePReadBufferFromFile(PLT)
	subs	r4, r0, #0
	bne	.L70
	ldr	r0, [sp, #16]
	ldrb	r3, [r0, #6]	@ zero_extendqisi2
	cmp	r3, #99
	beq	.L71
.L61:
	ldr	r1, .L73+8
	mvn	r4, #3840
	ldr	r2, .L73+12
	movw	r3, #438
	mov	r0, #69
	str	r4, [sp]
.LPIC52:
	add	r1, pc, r1
.LPIC53:
	add	r2, pc, r2
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r1, .L73+16
	ldr	r2, .L73+20
.LPIC51:
	add	r1, pc, r1
.LPIC50:
	add	r2, pc, r2
	bl	siFormattedMessage_SC(PLT)
.L60:
	mov	r0, r5
	bl	EeePFreeBuffer(PLT)
	ldr	r2, .L73+24
	ldr	r3, .L73+4
.LPIC58:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #20]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L72
	mov	r0, r4
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, pc}
.L71:
	ldrb	r3, [r0, #7]	@ zero_extendqisi2
	cmp	r3, #111
	bne	.L61
	ldrb	r3, [r0, #8]	@ zero_extendqisi2
	cmp	r3, #77
	bne	.L61
	ldrb	r3, [r0, #9]	@ zero_extendqisi2
	cmp	r3, #48
	bne	.L61
	mov	r1, r4
	mov	r2, #160
	bl	EeePWriteBufferToEEP(PLT)
	subs	r4, r0, #0
	beq	.L60
	ldr	r1, .L73+28
	mov	r3, #444
	ldr	r0, .L73+32
	ldr	r2, .L73+36
.LPIC57:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC56:
	add	r0, pc, r0
	ldr	r1, .L73+40
.LPIC54:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC55:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L60
.L70:
	ldr	r1, .L73+44
	movw	r3, #433
	ldr	r0, .L73+48
	ldr	r2, .L73+52
.LPIC48:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC47:
	add	r0, pc, r0
	ldr	r1, .L73+56
.LPIC45:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC46:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L60
.L72:
	bl	__stack_chk_fail(PLT)
.L74:
	.align	2
.L73:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC59+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC15-(.LPIC52+8)
	.word	.LC3-(.LPIC53+8)
	.word	.LC1-(.LPIC51+8)
	.word	.LC14-(.LPIC50+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC58+8)
	.word	.LC3-(.LPIC57+8)
	.word	.LC6-(.LPIC56+8)
	.word	.LC0-(.LPIC54+8)
	.word	.LC1-(.LPIC55+8)
	.word	.LC3-(.LPIC48+8)
	.word	.LC9-(.LPIC47+8)
	.word	.LC0-(.LPIC45+8)
	.word	.LC1-(.LPIC46+8)
	.size	CMD_ProgramCOM0R20M_EEP, .-CMD_ProgramCOM0R20M_EEP
	.section	.rodata.str1.4
	.align	2
.LC16:
	.ascii	"EeePReadBufferFromFile( &BHandel , ((WriteEepCfg_t*"
	.ascii	")pArgData)->FileName )\000"
	.align	2
.LC17:
	.ascii	"EXP1\000"
	.align	2
.LC18:
	.ascii	"CMD_ProgramEeePExt_EEP\000"
	.align	2
.LC19:
	.ascii	"Not Valid EeeP Extended EEP Image\000"
	.align	2
.LC20:
	.ascii	"EeePWriteBufferToEEP( BHandel, (uint16_t)((WriteEep"
	.ascii	"Cfg_t*)pArgData)->I2CBus, (uint16_t)((WriteEepCfg_t"
	.ascii	"*)pArgData)->I2CDevAddr )\000"
	.text
	.align	2
	.global	CMD_ProgramEeePExt_EEP
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CMD_ProgramEeePExt_EEP, %function
CMD_ProgramEeePExt_EEP:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L90
	mov	r3, #0
	ldr	r2, .L90+4
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #28
.LPIC74:
	add	ip, pc, ip
	add	r6, sp, #16
	mov	r5, r0
	ldr	r2, [ip, r2]
	ldr	r1, [r0]
	mov	r0, r6
	ldr	r2, [r2]
	str	r2, [sp, #20]
	mov	r2, #0
	str	r3, [sp, #16]
	bl	EeePReadBufferFromFile(PLT)
	subs	r4, r0, #0
	bne	.L87
	ldr	r0, [sp, #16]
	ldrb	r7, [r0, #6]	@ zero_extendqisi2
	cmp	r7, #69
	beq	.L88
.L78:
	ldr	r1, .L90+8
	mvn	r4, #3840
	ldr	r2, .L90+12
	movw	r3, #465
	mov	r0, #69
	str	r4, [sp]
.LPIC67:
	add	r1, pc, r1
.LPIC68:
	add	r2, pc, r2
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r1, .L90+16
	ldr	r2, .L90+20
.LPIC66:
	add	r1, pc, r1
.LPIC65:
	add	r2, pc, r2
	bl	siFormattedMessage_SC(PLT)
.L77:
	mov	r0, r6
	bl	EeePFreeBuffer(PLT)
	ldr	r2, .L90+24
	ldr	r3, .L90+4
.LPIC73:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #20]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L89
	mov	r0, r4
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L88:
	ldrb	r3, [r0, #7]	@ zero_extendqisi2
	cmp	r3, #88
	bne	.L78
	ldrb	r3, [r0, #8]	@ zero_extendqisi2
	cmp	r3, #80
	bne	.L78
	ldrb	r3, [r0, #9]	@ zero_extendqisi2
	cmp	r3, #49
	bne	.L78
	ldrh	r2, [r5, #8]
	ldrh	r1, [r5, #4]
	bl	EeePWriteBufferToEEP(PLT)
	subs	r4, r0, #0
	beq	.L77
	ldr	r2, .L90+28
	mov	r0, r7
	ldr	r3, .L90+32
	ldr	r1, .L90+36
.LPIC71:
	add	r2, pc, r2
	str	r4, [sp]
	str	r2, [sp, #8]
.LPIC72:
	add	r3, pc, r3
	ldr	r2, .L90+40
.LPIC70:
	add	r1, pc, r1
	str	r3, [sp, #4]
	movw	r3, #471
.LPIC69:
	add	r2, pc, r2
	bl	siFormattedMessage_SC(PLT)
	b	.L77
.L87:
	ldr	r1, .L90+44
	mov	r3, #460
	ldr	r0, .L90+48
	ldr	r2, .L90+52
.LPIC63:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC62:
	add	r0, pc, r0
	ldr	r1, .L90+56
.LPIC60:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC61:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L77
.L89:
	bl	__stack_chk_fail(PLT)
.L91:
	.align	2
.L90:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC74+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC19-(.LPIC67+8)
	.word	.LC3-(.LPIC68+8)
	.word	.LC1-(.LPIC66+8)
	.word	.LC18-(.LPIC65+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC73+8)
	.word	.LC20-(.LPIC71+8)
	.word	.LC3-(.LPIC72+8)
	.word	.LC1-(.LPIC70+8)
	.word	.LC0-(.LPIC69+8)
	.word	.LC3-(.LPIC63+8)
	.word	.LC16-(.LPIC62+8)
	.word	.LC0-(.LPIC60+8)
	.word	.LC1-(.LPIC61+8)
	.size	CMD_ProgramEeePExt_EEP, .-CMD_ProgramEeePExt_EEP
	.section	.rodata.str1.4
	.align	2
.LC21:
	.ascii	"EeePReadBufferFromEEP( &BHandel, (uint16_t)((WriteE"
	.ascii	"epCfg_t*)pArgData)->I2CBus, (uint16_t)((WriteEepCfg"
	.ascii	"_t*)pArgData)->I2CDevAddr )\000"
	.align	2
.LC22:
	.ascii	"EeePWriteBufferToFile(BHandel, ((WriteEepCfg_t*)pAr"
	.ascii	"gData)->FileName)\000"
	.text
	.align	2
	.global	CMD_StoreEeePExt_EEP
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CMD_StoreEeePExt_EEP, %function
CMD_StoreEeePExt_EEP:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L103
	mov	r3, #0
	push	{r4, r5, r6, lr}
	mov	r5, r0
	ldrh	r2, [r0, #8]
	sub	sp, sp, #24
.LPIC84:
	add	ip, pc, ip
	add	r6, sp, #16
	ldrh	r1, [r0, #4]
	ldr	r0, .L103+4
	ldr	r0, [ip, r0]
	ldr	r0, [r0]
	str	r0, [sp, #20]
	mov	r0, #0
	mov	r0, r6
	str	r3, [sp, #16]
	bl	EeePReadBufferFromEEP(PLT)
	subs	r4, r0, #0
	bne	.L100
	ldr	r1, [r5]
	ldr	r0, [sp, #16]
	bl	EeePWriteBufferToFile(PLT)
	subs	r4, r0, #0
	bne	.L101
.L94:
	mov	r0, r6
	bl	EeePFreeBuffer(PLT)
	ldr	r2, .L103+8
	ldr	r3, .L103+4
.LPIC83:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #20]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L102
	mov	r0, r4
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, pc}
.L100:
	ldr	r1, .L103+12
	movw	r3, #489
	ldr	r0, .L103+16
	ldr	r2, .L103+20
.LPIC78:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC77:
	add	r0, pc, r0
	ldr	r1, .L103+24
.LPIC75:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC76:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L94
.L101:
	ldr	r1, .L103+28
	movw	r3, #494
	ldr	r0, .L103+32
	ldr	r2, .L103+36
.LPIC82:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC81:
	add	r0, pc, r0
	ldr	r1, .L103+40
.LPIC79:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC80:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L94
.L102:
	bl	__stack_chk_fail(PLT)
.L104:
	.align	2
.L103:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC84+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC83+8)
	.word	.LC3-(.LPIC78+8)
	.word	.LC21-(.LPIC77+8)
	.word	.LC0-(.LPIC75+8)
	.word	.LC1-(.LPIC76+8)
	.word	.LC3-(.LPIC82+8)
	.word	.LC22-(.LPIC81+8)
	.word	.LC0-(.LPIC79+8)
	.word	.LC1-(.LPIC80+8)
	.size	CMD_StoreEeePExt_EEP, .-CMD_StoreEeePExt_EEP
	.section	.rodata.str1.4
	.align	2
.LC23:
	.ascii	"EeeP_CreateEeePExtEEPImage( &BHandel , ((InOutFiles"
	.ascii	"_t*)pArgData)->InFile )\000"
	.align	2
.LC24:
	.ascii	"EeePWriteBufferToFile(BHandel, ((InOutFiles_t*)pArg"
	.ascii	"Data)->OutFile)\000"
	.text
	.align	2
	.global	CMD_CreateExtEepEEP_IMG
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CMD_CreateExtEepEEP_IMG, %function
CMD_CreateExtEepEEP_IMG:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L116
	mov	r3, #0
	ldr	r2, .L116+4
	push	{r4, r5, r6, lr}
	sub	sp, sp, #24
.LPIC94:
	add	ip, pc, ip
	add	r6, sp, #16
	mov	r5, r0
	ldr	r2, [ip, r2]
	ldr	r1, [r0]
	mov	r0, r6
	ldr	r2, [r2]
	str	r2, [sp, #20]
	mov	r2, #0
	str	r3, [sp, #16]
	bl	EeeP_CreateEeePExtEEPImage(PLT)
	subs	r4, r0, #0
	bne	.L113
	ldr	r1, [r5, #4]
	ldr	r0, [sp, #16]
	bl	EeePWriteBufferToFile(PLT)
	subs	r4, r0, #0
	bne	.L114
.L107:
	mov	r0, r6
	bl	EeePFreeBuffer(PLT)
	ldr	r2, .L116+8
	ldr	r3, .L116+4
.LPIC93:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #20]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L115
	mov	r0, r4
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, pc}
.L113:
	ldr	r1, .L116+12
	mov	r3, #568
	ldr	r0, .L116+16
	ldr	r2, .L116+20
.LPIC88:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC87:
	add	r0, pc, r0
	ldr	r1, .L116+24
.LPIC85:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC86:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L107
.L114:
	ldr	r1, .L116+28
	mov	r3, #572
	ldr	r0, .L116+32
	ldr	r2, .L116+36
.LPIC92:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC91:
	add	r0, pc, r0
	ldr	r1, .L116+40
.LPIC89:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC90:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L107
.L115:
	bl	__stack_chk_fail(PLT)
.L117:
	.align	2
.L116:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC94+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC93+8)
	.word	.LC3-(.LPIC88+8)
	.word	.LC23-(.LPIC87+8)
	.word	.LC0-(.LPIC85+8)
	.word	.LC1-(.LPIC86+8)
	.word	.LC3-(.LPIC92+8)
	.word	.LC24-(.LPIC91+8)
	.word	.LC0-(.LPIC89+8)
	.word	.LC1-(.LPIC90+8)
	.size	CMD_CreateExtEepEEP_IMG, .-CMD_CreateExtEepEEP_IMG
	.section	.rodata.str1.4
	.align	2
.LC25:
	.ascii	"EeeP_CreateCOM0R20_MEEPImage( &BHandel , ((InOutFil"
	.ascii	"es_t*)pArgData)->InFile )\000"
	.text
	.align	2
	.global	CMD_CreateCOM0R20M_IMG
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CMD_CreateCOM0R20M_IMG, %function
CMD_CreateCOM0R20M_IMG:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L129
	mov	r3, #0
	ldr	r2, .L129+4
	push	{r4, r5, r6, lr}
	sub	sp, sp, #24
.LPIC104:
	add	ip, pc, ip
	add	r6, sp, #16
	mov	r5, r0
	ldr	r2, [ip, r2]
	ldr	r1, [r0]
	mov	r0, r6
	ldr	r2, [r2]
	str	r2, [sp, #20]
	mov	r2, #0
	str	r3, [sp, #16]
	bl	EeeP_CreateCOM0R20_MEEPImage(PLT)
	subs	r4, r0, #0
	bne	.L126
	ldr	r1, [r5, #4]
	ldr	r0, [sp, #16]
	bl	EeePWriteBufferToFile(PLT)
	subs	r4, r0, #0
	bne	.L127
.L120:
	mov	r0, r6
	bl	EeePFreeBuffer(PLT)
	ldr	r2, .L129+8
	ldr	r3, .L129+4
.LPIC103:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #20]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L128
	mov	r0, r4
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, pc}
.L126:
	ldr	r1, .L129+12
	movw	r3, #586
	ldr	r0, .L129+16
	ldr	r2, .L129+20
.LPIC98:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC97:
	add	r0, pc, r0
	ldr	r1, .L129+24
.LPIC95:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC96:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L120
.L127:
	ldr	r1, .L129+28
	movw	r3, #590
	ldr	r0, .L129+32
	ldr	r2, .L129+36
.LPIC102:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC101:
	add	r0, pc, r0
	ldr	r1, .L129+40
.LPIC99:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC100:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L120
.L128:
	bl	__stack_chk_fail(PLT)
.L130:
	.align	2
.L129:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC104+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC103+8)
	.word	.LC3-(.LPIC98+8)
	.word	.LC25-(.LPIC97+8)
	.word	.LC0-(.LPIC95+8)
	.word	.LC1-(.LPIC96+8)
	.word	.LC3-(.LPIC102+8)
	.word	.LC24-(.LPIC101+8)
	.word	.LC0-(.LPIC99+8)
	.word	.LC1-(.LPIC100+8)
	.size	CMD_CreateCOM0R20M_IMG, .-CMD_CreateCOM0R20M_IMG
	.section	.rodata.str1.4
	.align	2
.LC26:
	.ascii	"EeeP_CreateCOM0R20_CBImage( &BHandel , ((InOutFiles"
	.ascii	"_t*)pArgData)->InFile )\000"
	.text
	.align	2
	.global	CMD_CreateCOM0R20CB_IMG
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CMD_CreateCOM0R20CB_IMG, %function
CMD_CreateCOM0R20CB_IMG:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L142
	mov	r3, #0
	ldr	r2, .L142+4
	push	{r4, r5, r6, lr}
	sub	sp, sp, #24
.LPIC114:
	add	ip, pc, ip
	add	r6, sp, #16
	mov	r5, r0
	ldr	r2, [ip, r2]
	ldr	r1, [r0]
	mov	r0, r6
	ldr	r2, [r2]
	str	r2, [sp, #20]
	mov	r2, #0
	str	r3, [sp, #16]
	bl	EeeP_CreateCOM0R20_CBImage(PLT)
	subs	r4, r0, #0
	bne	.L139
	ldr	r1, [r5, #4]
	ldr	r0, [sp, #16]
	bl	EeePWriteBufferToFile(PLT)
	subs	r4, r0, #0
	bne	.L140
.L133:
	mov	r0, r6
	bl	EeePFreeBuffer(PLT)
	ldr	r2, .L142+8
	ldr	r3, .L142+4
.LPIC113:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #20]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L141
	mov	r0, r4
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, pc}
.L139:
	ldr	r1, .L142+12
	mov	r3, #604
	ldr	r0, .L142+16
	ldr	r2, .L142+20
.LPIC108:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC107:
	add	r0, pc, r0
	ldr	r1, .L142+24
.LPIC105:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC106:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L133
.L140:
	ldr	r1, .L142+28
	mov	r3, #608
	ldr	r0, .L142+32
	ldr	r2, .L142+36
.LPIC112:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC111:
	add	r0, pc, r0
	ldr	r1, .L142+40
.LPIC109:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC110:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L133
.L141:
	bl	__stack_chk_fail(PLT)
.L143:
	.align	2
.L142:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC114+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC113+8)
	.word	.LC3-(.LPIC108+8)
	.word	.LC26-(.LPIC107+8)
	.word	.LC0-(.LPIC105+8)
	.word	.LC1-(.LPIC106+8)
	.word	.LC3-(.LPIC112+8)
	.word	.LC24-(.LPIC111+8)
	.word	.LC0-(.LPIC109+8)
	.word	.LC1-(.LPIC110+8)
	.size	CMD_CreateCOM0R20CB_IMG, .-CMD_CreateCOM0R20CB_IMG
	.section	.rodata.str1.4
	.align	2
.LC27:
	.ascii	"EeePReadBufferFromEEP( &BHandel, (uint16_t)((I2CAdd"
	.ascii	"rCfg_t*)pArgData)->I2CBus, (uint16_t)((I2CAddrCfg_t"
	.ascii	"*)pArgData)->I2CDevAddr )\000"
	.align	2
.LC28:
	.ascii	"EeePListBlocks( BHandel, 0)\000"
	.text
	.align	2
	.global	CMD_ListDBlocksEeePExt_EEP
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CMD_ListDBlocksEeePExt_EEP, %function
CMD_ListDBlocksEeePExt_EEP:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L155
	mov	r3, #0
	ldrh	r2, [r0, #4]
	ldrh	r1, [r0]
	ldr	r0, .L155+4
.LPIC124:
	add	ip, pc, ip
	push	{r4, r5, lr}
	sub	sp, sp, #28
	add	r5, sp, #16
	ldr	r0, [ip, r0]
	ldr	r0, [r0]
	str	r0, [sp, #20]
	mov	r0, #0
	mov	r0, r5
	str	r3, [sp, #16]
	bl	EeePReadBufferFromEEP(PLT)
	subs	r4, r0, #0
	bne	.L152
	mov	r1, r4
	ldr	r0, [sp, #16]
	bl	EeePListBlocks(PLT)
	subs	r4, r0, #0
	bne	.L153
.L146:
	mov	r0, r5
	bl	EeePFreeBuffer(PLT)
	ldr	r2, .L155+8
	ldr	r3, .L155+4
.LPIC123:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #20]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L154
	mov	r0, r4
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, pc}
.L152:
	ldr	r1, .L155+12
	mov	r3, #528
	ldr	r0, .L155+16
	ldr	r2, .L155+20
.LPIC118:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC117:
	add	r0, pc, r0
	ldr	r1, .L155+24
.LPIC115:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC116:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L146
.L153:
	ldr	r1, .L155+28
	movw	r3, #533
	ldr	r0, .L155+32
	ldr	r2, .L155+36
.LPIC122:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC121:
	add	r0, pc, r0
	ldr	r1, .L155+40
.LPIC119:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC120:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L146
.L154:
	bl	__stack_chk_fail(PLT)
.L156:
	.align	2
.L155:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC124+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC123+8)
	.word	.LC3-(.LPIC118+8)
	.word	.LC27-(.LPIC117+8)
	.word	.LC0-(.LPIC115+8)
	.word	.LC1-(.LPIC116+8)
	.word	.LC3-(.LPIC122+8)
	.word	.LC28-(.LPIC121+8)
	.word	.LC0-(.LPIC119+8)
	.word	.LC1-(.LPIC120+8)
	.size	CMD_ListDBlocksEeePExt_EEP, .-CMD_ListDBlocksEeePExt_EEP
	.align	2
	.global	CMD_ListDBlocks_IMG
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CMD_ListDBlocks_IMG, %function
CMD_ListDBlocks_IMG:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L168
	mov	r3, #0
	ldr	r2, .L168+4
	push	{r4, r5, lr}
	sub	sp, sp, #28
.LPIC134:
	add	ip, pc, ip
	add	r5, sp, #16
	ldr	r2, [ip, r2]
	ldr	r1, [r0]
	mov	r0, r5
	ldr	r2, [r2]
	str	r2, [sp, #20]
	mov	r2, #0
	str	r3, [sp, #16]
	bl	EeePReadBufferFromFile(PLT)
	subs	r4, r0, #0
	bne	.L165
	mov	r1, r4
	ldr	r0, [sp, #16]
	bl	EeePListBlocks(PLT)
	subs	r4, r0, #0
	bne	.L166
.L159:
	mov	r0, r5
	bl	EeePFreeBuffer(PLT)
	ldr	r2, .L168+8
	ldr	r3, .L168+4
.LPIC133:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #20]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L167
	mov	r0, r4
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, pc}
.L165:
	ldr	r1, .L168+12
	movw	r3, #623
	ldr	r0, .L168+16
	ldr	r2, .L168+20
.LPIC128:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC127:
	add	r0, pc, r0
	ldr	r1, .L168+24
.LPIC125:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC126:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L159
.L166:
	ldr	r1, .L168+28
	movw	r3, #627
	ldr	r0, .L168+32
	ldr	r2, .L168+36
.LPIC132:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC131:
	add	r0, pc, r0
	ldr	r1, .L168+40
.LPIC129:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC130:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L159
.L167:
	bl	__stack_chk_fail(PLT)
.L169:
	.align	2
.L168:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC134+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC133+8)
	.word	.LC3-(.LPIC128+8)
	.word	.LC9-(.LPIC127+8)
	.word	.LC0-(.LPIC125+8)
	.word	.LC1-(.LPIC126+8)
	.word	.LC3-(.LPIC132+8)
	.word	.LC28-(.LPIC131+8)
	.word	.LC0-(.LPIC129+8)
	.word	.LC1-(.LPIC130+8)
	.size	CMD_ListDBlocks_IMG, .-CMD_ListDBlocks_IMG
	.align	2
	.global	CMD_ListDBlocksCOM0R20_CB_EEP
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CMD_ListDBlocksCOM0R20_CB_EEP, %function
CMD_ListDBlocksCOM0R20_CB_EEP:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L181
	mov	r1, #0
	ldr	r3, .L181+4
	mov	r2, #174
	push	{r4, r5, lr}
	sub	sp, sp, #28
.LPIC144:
	add	ip, pc, ip
	add	r5, sp, #16
	mov	r0, r5
	ldr	r3, [ip, r3]
	ldr	r3, [r3]
	str	r3, [sp, #20]
	mov	r3, #0
	str	r1, [sp, #16]
	bl	EeePReadBufferFromEEP(PLT)
	subs	r4, r0, #0
	bne	.L178
	mov	r1, r4
	ldr	r0, [sp, #16]
	bl	EeePListBlocks(PLT)
	subs	r4, r0, #0
	bne	.L179
.L172:
	mov	r0, r5
	bl	EeePFreeBuffer(PLT)
	ldr	r2, .L181+8
	ldr	r3, .L181+4
.LPIC143:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #20]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L180
	mov	r0, r4
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, pc}
.L178:
	ldr	r1, .L181+12
	mov	r3, #528
	ldr	r0, .L181+16
	ldr	r2, .L181+20
.LPIC138:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC137:
	add	r0, pc, r0
	ldr	r1, .L181+24
.LPIC135:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC136:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L172
.L179:
	ldr	r1, .L181+28
	movw	r3, #533
	ldr	r0, .L181+32
	ldr	r2, .L181+36
.LPIC142:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC141:
	add	r0, pc, r0
	ldr	r1, .L181+40
.LPIC139:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC140:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L172
.L180:
	bl	__stack_chk_fail(PLT)
.L182:
	.align	2
.L181:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC144+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC143+8)
	.word	.LC3-(.LPIC138+8)
	.word	.LC27-(.LPIC137+8)
	.word	.LC0-(.LPIC135+8)
	.word	.LC1-(.LPIC136+8)
	.word	.LC3-(.LPIC142+8)
	.word	.LC28-(.LPIC141+8)
	.word	.LC0-(.LPIC139+8)
	.word	.LC1-(.LPIC140+8)
	.size	CMD_ListDBlocksCOM0R20_CB_EEP, .-CMD_ListDBlocksCOM0R20_CB_EEP
	.align	2
	.global	CMD_ListDBlocksCOM0R20_M_EEP
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CMD_ListDBlocksCOM0R20_M_EEP, %function
CMD_ListDBlocksCOM0R20_M_EEP:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L194
	mov	r1, #0
	ldr	r3, .L194+4
	mov	r2, #160
	push	{r4, r5, lr}
	sub	sp, sp, #28
.LPIC154:
	add	ip, pc, ip
	add	r5, sp, #16
	mov	r0, r5
	ldr	r3, [ip, r3]
	ldr	r3, [r3]
	str	r3, [sp, #20]
	mov	r3, #0
	str	r1, [sp, #16]
	bl	EeePReadBufferFromEEP(PLT)
	subs	r4, r0, #0
	bne	.L191
	mov	r1, r4
	ldr	r0, [sp, #16]
	bl	EeePListBlocks(PLT)
	subs	r4, r0, #0
	bne	.L192
.L185:
	mov	r0, r5
	bl	EeePFreeBuffer(PLT)
	ldr	r2, .L194+8
	ldr	r3, .L194+4
.LPIC153:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #20]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L193
	mov	r0, r4
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, pc}
.L191:
	ldr	r1, .L194+12
	mov	r3, #528
	ldr	r0, .L194+16
	ldr	r2, .L194+20
.LPIC148:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC147:
	add	r0, pc, r0
	ldr	r1, .L194+24
.LPIC145:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC146:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L185
.L192:
	ldr	r1, .L194+28
	movw	r3, #533
	ldr	r0, .L194+32
	ldr	r2, .L194+36
.LPIC152:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC151:
	add	r0, pc, r0
	ldr	r1, .L194+40
.LPIC149:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC150:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L185
.L193:
	bl	__stack_chk_fail(PLT)
.L195:
	.align	2
.L194:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC154+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC153+8)
	.word	.LC3-(.LPIC148+8)
	.word	.LC27-(.LPIC147+8)
	.word	.LC0-(.LPIC145+8)
	.word	.LC1-(.LPIC146+8)
	.word	.LC3-(.LPIC152+8)
	.word	.LC28-(.LPIC151+8)
	.word	.LC0-(.LPIC149+8)
	.word	.LC1-(.LPIC150+8)
	.size	CMD_ListDBlocksCOM0R20_M_EEP, .-CMD_ListDBlocksCOM0R20_M_EEP
	.align	2
	.global	CMD_StoreCOM0R20_CB_EEP
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CMD_StoreCOM0R20_CB_EEP, %function
CMD_StoreCOM0R20_CB_EEP:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	sub	sp, sp, #24
	ldr	r6, [r0]
	add	r5, sp, #16
	mov	r1, #0
	mov	r2, #174
	ldr	r0, .L207
	ldr	r3, .L207+4
.LPIC164:
	add	r0, pc, r0
	ldr	r3, [r0, r3]
	mov	r0, r5
	ldr	r3, [r3]
	str	r3, [sp, #20]
	mov	r3, #0
	str	r1, [sp, #16]
	bl	EeePReadBufferFromEEP(PLT)
	subs	r4, r0, #0
	bne	.L204
	ldr	r0, [sp, #16]
	mov	r1, r6
	bl	EeePWriteBufferToFile(PLT)
	subs	r4, r0, #0
	bne	.L205
.L198:
	mov	r0, r5
	bl	EeePFreeBuffer(PLT)
	ldr	r2, .L207+8
	ldr	r3, .L207+4
.LPIC163:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #20]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L206
	mov	r0, r4
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, pc}
.L204:
	ldr	r1, .L207+12
	movw	r3, #489
	ldr	r0, .L207+16
	ldr	r2, .L207+20
.LPIC158:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC157:
	add	r0, pc, r0
	ldr	r1, .L207+24
.LPIC155:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC156:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L198
.L205:
	ldr	r1, .L207+28
	movw	r3, #494
	ldr	r0, .L207+32
	ldr	r2, .L207+36
.LPIC162:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC161:
	add	r0, pc, r0
	ldr	r1, .L207+40
.LPIC159:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC160:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L198
.L206:
	bl	__stack_chk_fail(PLT)
.L208:
	.align	2
.L207:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC164+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC163+8)
	.word	.LC3-(.LPIC158+8)
	.word	.LC21-(.LPIC157+8)
	.word	.LC0-(.LPIC155+8)
	.word	.LC1-(.LPIC156+8)
	.word	.LC3-(.LPIC162+8)
	.word	.LC22-(.LPIC161+8)
	.word	.LC0-(.LPIC159+8)
	.word	.LC1-(.LPIC160+8)
	.size	CMD_StoreCOM0R20_CB_EEP, .-CMD_StoreCOM0R20_CB_EEP
	.align	2
	.global	CMD_StoreCOM0R20_M_EEP
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CMD_StoreCOM0R20_M_EEP, %function
CMD_StoreCOM0R20_M_EEP:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	sub	sp, sp, #24
	ldr	r6, [r0]
	add	r5, sp, #16
	mov	r1, #0
	mov	r2, #160
	ldr	r0, .L220
	ldr	r3, .L220+4
.LPIC174:
	add	r0, pc, r0
	ldr	r3, [r0, r3]
	mov	r0, r5
	ldr	r3, [r3]
	str	r3, [sp, #20]
	mov	r3, #0
	str	r1, [sp, #16]
	bl	EeePReadBufferFromEEP(PLT)
	subs	r4, r0, #0
	bne	.L217
	ldr	r0, [sp, #16]
	mov	r1, r6
	bl	EeePWriteBufferToFile(PLT)
	subs	r4, r0, #0
	bne	.L218
.L211:
	mov	r0, r5
	bl	EeePFreeBuffer(PLT)
	ldr	r2, .L220+8
	ldr	r3, .L220+4
.LPIC173:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #20]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L219
	mov	r0, r4
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, pc}
.L217:
	ldr	r1, .L220+12
	movw	r3, #489
	ldr	r0, .L220+16
	ldr	r2, .L220+20
.LPIC168:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC167:
	add	r0, pc, r0
	ldr	r1, .L220+24
.LPIC165:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC166:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L211
.L218:
	ldr	r1, .L220+28
	movw	r3, #494
	ldr	r0, .L220+32
	ldr	r2, .L220+36
.LPIC172:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC171:
	add	r0, pc, r0
	ldr	r1, .L220+40
.LPIC169:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC170:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L211
.L219:
	bl	__stack_chk_fail(PLT)
.L221:
	.align	2
.L220:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC174+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC173+8)
	.word	.LC3-(.LPIC168+8)
	.word	.LC21-(.LPIC167+8)
	.word	.LC0-(.LPIC165+8)
	.word	.LC1-(.LPIC166+8)
	.word	.LC3-(.LPIC172+8)
	.word	.LC22-(.LPIC171+8)
	.word	.LC0-(.LPIC169+8)
	.word	.LC1-(.LPIC170+8)
	.size	CMD_StoreCOM0R20_M_EEP, .-CMD_StoreCOM0R20_M_EEP
	.section	.rodata.str1.4
	.align	2
.LC29:
	.ascii	"stdout\000"
	.align	2
.LC30:
	.ascii	"stderr\000"
	.align	2
.LC31:
	.ascii	"w\000"
	.align	2
.LC32:
	.ascii	"CreateTxtFilePtr\000"
	.align	2
.LC33:
	.ascii	"(*FilePtr==NULL)\000"
	.align	2
.LC34:
	.ascii	"CreateTxtFilePtr(*(char**)pArgData, &lclStream)\000"
	.align	2
.LC35:
	.ascii	"EeeP_CreateCOM0R20_CBCfg(lclStream)\000"
	.text
	.align	2
	.global	CMD_CreateCOM0R20_CBCfg
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CMD_CreateCOM0R20_CBCfg, %function
CMD_CreateCOM0R20_CBCfg:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #20
	ldr	r1, .L253
	ldr	r4, [r0]
	ldr	r5, .L253+4
.LPIC175:
	add	r1, pc, r1
	mov	r0, r4
	bl	strcmp(PLT)
	ldr	r3, .L253+8
.LPIC176:
	add	r5, pc, r5
	cmp	r0, #0
	ldr	r3, [r5, r3]
	ldr	r6, [r3]
	beq	.L223
	ldrb	r7, [r4]	@ zero_extendqisi2
	cmp	r7, #38
	beq	.L251
.L233:
	ldr	r1, .L253+12
	mov	r0, r4
.LPIC177:
	add	r1, pc, r1
	bl	strcmp(PLT)
	cmp	r0, #0
	bne	.L225
.L228:
	ldr	r3, .L253+16
	ldr	r3, [r5, r3]
	ldr	r7, [r3]
.L226:
	mov	r0, r7
	bl	EeeP_CreateCOM0R20_CBCfg(PLT)
	subs	r4, r0, #0
	bne	.L231
.L230:
	cmp	r7, r6
	beq	.L222
	ldr	r3, .L253+16
	ldr	r3, [r5, r3]
	ldr	r3, [r3]
	cmp	r3, r7
	cmpne	r7, #0
	beq	.L222
	mov	r0, r7
	bl	fclose(PLT)
.L222:
	mov	r0, r4
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L251:
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	cmp	r3, #49
	bne	.L233
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L233
.L223:
	mov	r0, r6
	bl	EeeP_CreateCOM0R20_CBCfg(PLT)
	subs	r4, r0, #0
	movne	r7, r6
	beq	.L222
.L231:
	ldr	r3, .L253+20
	mov	r0, #69
	ldr	r2, .L253+24
	ldr	r1, .L253+28
.LPIC189:
	add	r3, pc, r3
	str	r4, [sp]
	str	r3, [sp, #8]
.LPIC187:
	add	r2, pc, r2
	ldr	r3, .L253+32
.LPIC188:
	add	r1, pc, r1
.LPIC190:
	add	r3, pc, r3
	str	r3, [sp, #4]
	movw	r3, #315
	bl	siFormattedMessage_SC(PLT)
	b	.L230
.L225:
	cmp	r7, #38
	beq	.L252
.L234:
	ldr	r1, .L253+36
	mov	r0, r4
.LPIC178:
	add	r1, pc, r1
	bl	fopen(PLT)
	subs	r7, r0, #0
	bne	.L226
	ldr	r2, .L253+40
	movw	r4, #64254
	ldr	r6, .L253+44
	movt	r4, 65535
	ldr	r5, .L253+48
	mov	r3, #264
.LPIC181:
	add	r2, pc, r2
	mov	r0, #69
	str	r2, [sp, #8]
.LPIC180:
	add	r6, pc, r6
	ldr	r2, .L253+52
.LPIC182:
	add	r5, pc, r5
	mov	r1, r6
	strd	r4, [sp]
.LPIC179:
	add	r2, pc, r2
	bl	siFormattedMessage_SC(PLT)
	ldr	r0, .L253+56
	movw	r3, #314
	ldr	r2, .L253+60
	mov	r1, r6
	str	r5, [sp, #4]
.LPIC185:
	add	r0, pc, r0
	str	r4, [sp]
	str	r0, [sp, #8]
.LPIC183:
	add	r2, pc, r2
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L252:
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	cmp	r3, #50
	bne	.L234
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L228
	b	.L234
.L254:
	.align	2
.L253:
	.word	.LC29-(.LPIC175+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC176+8)
	.word	stdout(GOT)
	.word	.LC30-(.LPIC177+8)
	.word	stderr(GOT)
	.word	.LC35-(.LPIC189+8)
	.word	.LC0-(.LPIC187+8)
	.word	.LC1-(.LPIC188+8)
	.word	.LC3-(.LPIC190+8)
	.word	.LC31-(.LPIC178+8)
	.word	.LC33-(.LPIC181+8)
	.word	.LC1-(.LPIC180+8)
	.word	.LC3-(.LPIC182+8)
	.word	.LC32-(.LPIC179+8)
	.word	.LC34-(.LPIC185+8)
	.word	.LC0-(.LPIC183+8)
	.size	CMD_CreateCOM0R20_CBCfg, .-CMD_CreateCOM0R20_CBCfg
	.section	.rodata.str1.4
	.align	2
.LC36:
	.ascii	"EeeP_CreateEeePExtEEPCfg(lclStream)\000"
	.text
	.align	2
	.global	CMD_CreateCOM0R20_EeePExtCfg
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CMD_CreateCOM0R20_EeePExtCfg, %function
CMD_CreateCOM0R20_EeePExtCfg:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #20
	ldr	r1, .L286
	ldr	r4, [r0]
	ldr	r5, .L286+4
.LPIC191:
	add	r1, pc, r1
	mov	r0, r4
	bl	strcmp(PLT)
	ldr	r3, .L286+8
.LPIC192:
	add	r5, pc, r5
	cmp	r0, #0
	ldr	r3, [r5, r3]
	ldr	r6, [r3]
	beq	.L256
	ldrb	r7, [r4]	@ zero_extendqisi2
	cmp	r7, #38
	beq	.L284
.L266:
	ldr	r1, .L286+12
	mov	r0, r4
.LPIC193:
	add	r1, pc, r1
	bl	strcmp(PLT)
	cmp	r0, #0
	bne	.L258
.L261:
	ldr	r3, .L286+16
	ldr	r3, [r5, r3]
	ldr	r7, [r3]
.L259:
	mov	r0, r7
	bl	EeeP_CreateEeePExtEEPCfg(PLT)
	subs	r4, r0, #0
	bne	.L264
.L263:
	cmp	r7, r6
	beq	.L255
	ldr	r3, .L286+16
	ldr	r3, [r5, r3]
	ldr	r3, [r3]
	cmp	r3, r7
	cmpne	r7, #0
	beq	.L255
	mov	r0, r7
	bl	fclose(PLT)
.L255:
	mov	r0, r4
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L284:
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	cmp	r3, #49
	bne	.L266
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L266
.L256:
	mov	r0, r6
	bl	EeeP_CreateEeePExtEEPCfg(PLT)
	subs	r4, r0, #0
	movne	r7, r6
	beq	.L255
.L264:
	ldr	r3, .L286+20
	mov	r0, #69
	ldr	r2, .L286+24
	ldr	r1, .L286+28
.LPIC205:
	add	r3, pc, r3
	str	r4, [sp]
	str	r3, [sp, #8]
.LPIC203:
	add	r2, pc, r2
	ldr	r3, .L286+32
.LPIC204:
	add	r1, pc, r1
.LPIC206:
	add	r3, pc, r3
	str	r3, [sp, #4]
	movw	r3, #330
	bl	siFormattedMessage_SC(PLT)
	b	.L263
.L258:
	cmp	r7, #38
	beq	.L285
.L267:
	ldr	r1, .L286+36
	mov	r0, r4
.LPIC194:
	add	r1, pc, r1
	bl	fopen(PLT)
	subs	r7, r0, #0
	bne	.L259
	ldr	r2, .L286+40
	movw	r4, #64254
	ldr	r6, .L286+44
	movt	r4, 65535
	ldr	r5, .L286+48
	mov	r3, #264
.LPIC197:
	add	r2, pc, r2
	mov	r0, #69
	str	r2, [sp, #8]
.LPIC196:
	add	r6, pc, r6
	ldr	r2, .L286+52
.LPIC198:
	add	r5, pc, r5
	mov	r1, r6
	strd	r4, [sp]
.LPIC195:
	add	r2, pc, r2
	bl	siFormattedMessage_SC(PLT)
	ldr	r0, .L286+56
	movw	r3, #329
	ldr	r2, .L286+60
	mov	r1, r6
	str	r5, [sp, #4]
.LPIC201:
	add	r0, pc, r0
	str	r4, [sp]
	str	r0, [sp, #8]
.LPIC199:
	add	r2, pc, r2
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L285:
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	cmp	r3, #50
	bne	.L267
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L261
	b	.L267
.L287:
	.align	2
.L286:
	.word	.LC29-(.LPIC191+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC192+8)
	.word	stdout(GOT)
	.word	.LC30-(.LPIC193+8)
	.word	stderr(GOT)
	.word	.LC36-(.LPIC205+8)
	.word	.LC0-(.LPIC203+8)
	.word	.LC1-(.LPIC204+8)
	.word	.LC3-(.LPIC206+8)
	.word	.LC31-(.LPIC194+8)
	.word	.LC33-(.LPIC197+8)
	.word	.LC1-(.LPIC196+8)
	.word	.LC3-(.LPIC198+8)
	.word	.LC32-(.LPIC195+8)
	.word	.LC34-(.LPIC201+8)
	.word	.LC0-(.LPIC199+8)
	.size	CMD_CreateCOM0R20_EeePExtCfg, .-CMD_CreateCOM0R20_EeePExtCfg
	.section	.rodata.str1.4
	.align	2
.LC37:
	.ascii	"EeeP_CreateCOM0R20_MEEPCfg(lclStream)\000"
	.text
	.align	2
	.global	CMD_CreateCOM0R20_MEEPCfg
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CMD_CreateCOM0R20_MEEPCfg, %function
CMD_CreateCOM0R20_MEEPCfg:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #20
	ldr	r1, .L319
	ldr	r4, [r0]
	ldr	r5, .L319+4
.LPIC207:
	add	r1, pc, r1
	mov	r0, r4
	bl	strcmp(PLT)
	ldr	r3, .L319+8
.LPIC208:
	add	r5, pc, r5
	cmp	r0, #0
	ldr	r3, [r5, r3]
	ldr	r6, [r3]
	beq	.L289
	ldrb	r7, [r4]	@ zero_extendqisi2
	cmp	r7, #38
	beq	.L317
.L299:
	ldr	r1, .L319+12
	mov	r0, r4
.LPIC209:
	add	r1, pc, r1
	bl	strcmp(PLT)
	cmp	r0, #0
	bne	.L291
.L294:
	ldr	r3, .L319+16
	ldr	r3, [r5, r3]
	ldr	r7, [r3]
.L292:
	mov	r0, r7
	bl	EeeP_CreateCOM0R20_MEEPCfg(PLT)
	subs	r4, r0, #0
	bne	.L297
.L296:
	cmp	r7, r6
	beq	.L288
	ldr	r3, .L319+16
	ldr	r3, [r5, r3]
	ldr	r3, [r3]
	cmp	r3, r7
	cmpne	r7, #0
	beq	.L288
	mov	r0, r7
	bl	fclose(PLT)
.L288:
	mov	r0, r4
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L317:
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	cmp	r3, #49
	bne	.L299
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L299
.L289:
	mov	r0, r6
	bl	EeeP_CreateCOM0R20_MEEPCfg(PLT)
	subs	r4, r0, #0
	movne	r7, r6
	beq	.L288
.L297:
	ldr	r3, .L319+20
	mov	r0, #69
	ldr	r2, .L319+24
	ldr	r1, .L319+28
.LPIC221:
	add	r3, pc, r3
	str	r4, [sp]
	str	r3, [sp, #8]
.LPIC219:
	add	r2, pc, r2
	ldr	r3, .L319+32
.LPIC220:
	add	r1, pc, r1
.LPIC222:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mov	r3, #300
	bl	siFormattedMessage_SC(PLT)
	b	.L296
.L291:
	cmp	r7, #38
	beq	.L318
.L300:
	ldr	r1, .L319+36
	mov	r0, r4
.LPIC210:
	add	r1, pc, r1
	bl	fopen(PLT)
	subs	r7, r0, #0
	bne	.L292
	ldr	r2, .L319+40
	movw	r4, #64254
	ldr	r6, .L319+44
	movt	r4, 65535
	ldr	r5, .L319+48
	mov	r3, #264
.LPIC213:
	add	r2, pc, r2
	mov	r0, #69
	str	r2, [sp, #8]
.LPIC212:
	add	r6, pc, r6
	ldr	r2, .L319+52
.LPIC214:
	add	r5, pc, r5
	mov	r1, r6
	strd	r4, [sp]
.LPIC211:
	add	r2, pc, r2
	bl	siFormattedMessage_SC(PLT)
	ldr	r0, .L319+56
	movw	r3, #299
	ldr	r2, .L319+60
	mov	r1, r6
	str	r5, [sp, #4]
.LPIC217:
	add	r0, pc, r0
	str	r4, [sp]
	str	r0, [sp, #8]
.LPIC215:
	add	r2, pc, r2
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L318:
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	cmp	r3, #50
	bne	.L300
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L294
	b	.L300
.L320:
	.align	2
.L319:
	.word	.LC29-(.LPIC207+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC208+8)
	.word	stdout(GOT)
	.word	.LC30-(.LPIC209+8)
	.word	stderr(GOT)
	.word	.LC37-(.LPIC221+8)
	.word	.LC0-(.LPIC219+8)
	.word	.LC1-(.LPIC220+8)
	.word	.LC3-(.LPIC222+8)
	.word	.LC31-(.LPIC210+8)
	.word	.LC33-(.LPIC213+8)
	.word	.LC1-(.LPIC212+8)
	.word	.LC3-(.LPIC214+8)
	.word	.LC32-(.LPIC211+8)
	.word	.LC34-(.LPIC217+8)
	.word	.LC0-(.LPIC215+8)
	.size	CMD_CreateCOM0R20_MEEPCfg, .-CMD_CreateCOM0R20_MEEPCfg
	.align	2
	.global	CreateTxtFilePtr
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CreateTxtFilePtr, %function
CreateTxtFilePtr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r5, r1
	ldr	r1, .L341
	sub	sp, sp, #20
	mov	r4, r0
	ldr	r6, .L341+4
.LPIC223:
	add	r1, pc, r1
	bl	strcmp(PLT)
	cmp	r0, #0
.LPIC224:
	add	r6, pc, r6
	beq	.L325
	ldrb	r7, [r4]	@ zero_extendqisi2
	cmp	r7, #38
	beq	.L339
.L330:
	ldr	r1, .L341+8
	mov	r0, r4
.LPIC225:
	add	r1, pc, r1
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L328
	cmp	r7, #38
	beq	.L340
.L331:
.L323:
	ldr	r1, .L341+12
	mov	r0, r4
.LPIC226:
	add	r1, pc, r1
	bl	fopen(PLT)
	cmp	r0, #0
	str	r0, [r5]
	movne	r0, #0
	bne	.L321
	ldr	ip, .L341+16
	movw	r4, #64254
	ldr	r0, .L341+20
	movt	r4, 65535
	ldr	r2, .L341+24
	mov	r3, #264
	ldr	r1, .L341+28
.LPIC229:
	add	ip, pc, ip
.LPIC230:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC227:
	add	r2, pc, r2
.LPIC228:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L321
.L339:
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	cmp	r3, #49
	bne	.L330
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L330
.L325:
	ldr	r3, .L341+32
	mov	r0, #0
	ldr	r3, [r6, r3]
	ldr	r3, [r3]
	str	r3, [r5]
.L321:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L340:
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	cmp	r3, #50
	bne	.L331
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L331
.L328:
	ldr	r3, .L341+36
	mov	r0, #0
	ldr	r3, [r6, r3]
	ldr	r3, [r3]
	str	r3, [r5]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L342:
	.align	2
.L341:
	.word	.LC29-(.LPIC223+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC224+8)
	.word	.LC30-(.LPIC225+8)
	.word	.LC31-(.LPIC226+8)
	.word	.LC33-(.LPIC229+8)
	.word	.LC3-(.LPIC230+8)
	.word	.LC32-(.LPIC227+8)
	.word	.LC1-(.LPIC228+8)
	.word	stdout(GOT)
	.word	stderr(GOT)
	.size	CreateTxtFilePtr, .-CreateTxtFilePtr
	.align	2
	.global	FreeFilePtr
	.syntax unified
	.arm
	.fpu vfpv3
	.type	FreeFilePtr, %function
FreeFilePtr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L350
	ldr	r3, .L350+4
	push	{r4, lr}
	mov	r4, r0
.LPIC231:
	add	r2, pc, r2
	ldr	r0, [r0]
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	cmp	r3, r0
	beq	.L344
	ldr	r3, .L350+8
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	cmp	r3, r0
	cmpne	r0, #0
	bne	.L349
.L344:
	mov	r0, #0
	str	r0, [r4]
	pop	{r4, pc}
.L349:
	bl	fclose(PLT)
	b	.L344
.L351:
	.align	2
.L350:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC231+8)
	.word	stdout(GOT)
	.word	stderr(GOT)
	.size	FreeFilePtr, .-FreeFilePtr
	.section	.rodata.str1.4
	.align	2
.LC38:
	.ascii	"main\000"
	.align	2
.LC39:
	.ascii	"EApiLibInitialize()\000"
	.align	2
.LC40:
	.ascii	"%s\000"
	.align	2
.LC41:
	.ascii	"ParseArgs(argc, argv, ArgsDesc, ARRAY_SIZE(ArgsDesc"
	.ascii	"))\000"
	.align	2
.LC42:
	.ascii	"EApiLibUnInitialize()\000"
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfpv3
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	sub	sp, sp, #16
	ldr	r6, .L369
	mov	r4, r0
	mov	r5, r1
	bl	EApiLibInitialize(PLT)
	subs	ip, r0, #0
.LPIC245:
	add	r6, pc, r6
	bne	.L364
	ldr	r2, .L369+4
	sub	r0, r4, #1
	mov	r3, #23
	add	r1, r5, #4
.LPIC236:
	add	r2, pc, r2
	bl	ParseArgs(PLT)
	subs	r4, r0, #0
	beq	.L355
	mvn	r3, #256
	cmp	r4, r3
	beq	.L365
	ldr	ip, .L369+8
	mov	r3, #904
	ldr	r0, .L369+12
	ldr	r2, .L369+16
	ldr	r1, .L369+20
.LPIC241:
	add	ip, pc, ip
.LPIC242:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC239:
	add	r2, pc, r2
.LPIC240:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	bl	exit(PLT)
.L365:
	ldr	r1, .L369+24
	ldr	r0, .L369+28
.LPIC237:
	add	r1, pc, r1
.LPIC238:
	add	r0, pc, r0
	bl	printf(PLT)
	mov	r0, r4
	bl	exit(PLT)
.L355:
	ldr	r3, .L369+32
.LPIC243:
	add	r3, pc, r3
	ldr	r2, [r3, #4]
	cmp	r2, #0
	beq	.L366
.L357:
	ldr	r3, .L369+36
.LPIC246:
	add	r3, pc, r3
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L367
.L354:
	ldr	r6, .L369+40
	ldr	r5, .L369+44
	ldr	r4, .L369+48
.LPIC248:
	add	r6, pc, r6
.LPIC249:
	add	r5, pc, r5
.LPIC250:
	add	r4, pc, r4
	b	.L359
.L368:
	ldr	r0, .L369+52
	movw	r3, #923
	mov	r2, r6
	mov	r1, r5
	str	r4, [sp, #8]
.LPIC251:
	add	r0, pc, r0
	str	ip, [sp]
	str	r0, [sp, #4]
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
.L359:
	bl	EApiLibUnInitialize(PLT)
	subs	ip, r0, #0
	bne	.L368
	bl	exit(PLT)
.L364:
	ldr	lr, .L369+56
	movw	r3, #893
	ldr	r0, .L369+60
	ldr	r2, .L369+64
	ldr	r1, .L369+68
.LPIC234:
	add	lr, pc, lr
.LPIC235:
	add	r0, pc, r0
	str	ip, [sp]
	mov	ip, lr
.LPIC232:
	add	r2, pc, r2
	stmib	sp, {r0, ip}
.LPIC233:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L354
.L366:
	ldr	r3, .L369+72
	movw	ip, #631
	ldr	r1, .L369+76
	ldr	r0, [r6, r3]
	mov	r3, #5
.LPIC244:
	add	r1, pc, r1
	str	ip, [sp]
	add	r1, r1, #32
	ldr	r0, [r0]
	bl	fprintf(PLT)
	b	.L357
.L367:
	ldr	r3, .L369+72
	mov	r2, #23
	ldr	r1, .L369+80
	ldr	r3, [r6, r3]
.LPIC247:
	add	r1, pc, r1
	ldr	r0, [r3]
	bl	PrintUsage(PLT)
	b	.L354
.L370:
	.align	2
.L369:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC245+8)
	.word	.LANCHOR0-(.LPIC236+8)
	.word	.LC41-(.LPIC241+8)
	.word	.LC3-(.LPIC242+8)
	.word	.LC38-(.LPIC239+8)
	.word	.LC1-(.LPIC240+8)
	.word	.LANCHOR1-(.LPIC237+8)
	.word	.LC40-(.LPIC238+8)
	.word	.LANCHOR2-(.LPIC243+8)
	.word	.LANCHOR2-(.LPIC246+8)
	.word	.LC38-(.LPIC248+8)
	.word	.LC1-(.LPIC249+8)
	.word	.LC42-(.LPIC250+8)
	.word	.LC3-(.LPIC251+8)
	.word	.LC39-(.LPIC234+8)
	.word	.LC3-(.LPIC235+8)
	.word	.LC38-(.LPIC232+8)
	.word	.LC1-(.LPIC233+8)
	.word	stderr(GOT)
	.word	.LANCHOR1-(.LPIC244+8)
	.word	.LANCHOR0-(.LPIC247+8)
	.size	main, .-main
	.global	ArgsDesc
	.section	.rodata.str1.4
	.align	2
.LC43:
	.ascii	"quiet\000"
	.align	2
.LC44:
	.ascii	"Minimises Output\000"
	.align	2
.LC45:
	.ascii	"help\000"
	.align	2
.LC46:
	.ascii	"Print this usage message\000"
	.align	2
.LC47:
	.ascii	"verbose\000"
	.align	2
.LC48:
	.ascii	"Increases Verbosity Level\000"
	.align	2
.LC49:
	.ascii	"CREATE-COM0R20M-CFG\000"
	.align	2
.LC50:
	.ascii	"Create COM0 Module Config File Template\000"
	.align	2
.LC51:
	.ascii	"CREATE-COM0R20M-IMG\000"
	.align	2
.LC52:
	.ascii	"Create COM0 Module Binary File\000"
	.align	2
.LC53:
	.ascii	"CREATE-COM0R20M-EEP\000"
	.align	2
.LC54:
	.ascii	"Create COM0 Module Content and Program over EApi\000"
	.align	2
.LC55:
	.ascii	"CREATE-COM0R20CB-CFG\000"
	.align	2
.LC56:
	.ascii	"Create COM0 Carrier Config File Template\000"
	.align	2
.LC57:
	.ascii	"CREATE-COM0R20CB-EEP\000"
	.align	2
.LC58:
	.ascii	"Create COM0 Carrier Content and Program over EApi\000"
	.align	2
.LC59:
	.ascii	"CREATE-COM0R20CB-IMG\000"
	.align	2
.LC60:
	.ascii	"Create COM0 Carrier Binary File\000"
	.align	2
.LC61:
	.ascii	"CREATE-EeePExpEEP-CFG\000"
	.align	2
.LC62:
	.ascii	"Create EeeP Expansion EEP Config File Template\000"
	.align	2
.LC63:
	.ascii	"CREATE-EeePExpEEP-IMG\000"
	.align	2
.LC64:
	.ascii	"Create EeeP Expansion EEP Binary File\000"
	.align	2
.LC65:
	.ascii	"CREATE-EeePExpEEP-EEP\000"
	.align	2
.LC66:
	.ascii	"Create EeeP Expansion EEP Image and Program over EA"
	.ascii	"pi\000"
	.align	2
.LC67:
	.ascii	"PROGRAM-EeePExpEEP-EEP\000"
	.align	2
.LC68:
	.ascii	"Program EeeP Expansion EEP Image file over EApi\000"
	.align	2
.LC69:
	.ascii	"PROGRAM-COM0R20CB-EEP\000"
	.align	2
.LC70:
	.ascii	"Program COM0 R2.0 Carrier Board EEP Image file over"
	.ascii	" EApi\000"
	.align	2
.LC71:
	.ascii	"PROGRAM-COM0R20M-EEP\000"
	.align	2
.LC72:
	.ascii	"Program COM0 R2.0 Module EEP Image file over EApi\000"
	.align	2
.LC73:
	.ascii	"SAVE-EeePExpEEP-IMG\000"
	.align	2
.LC74:
	.ascii	"Stores EeeP Expansion EEP to Image file over EApi\000"
	.align	2
.LC75:
	.ascii	"SAVE-COM0R20CB-IMG\000"
	.align	2
.LC76:
	.ascii	"Stores COM0 R2.0 Carrier Board EEP to Image file ov"
	.ascii	"er EApi\000"
	.align	2
.LC77:
	.ascii	"SAVE-COM0R20M-IMG\000"
	.align	2
.LC78:
	.ascii	"Stores COM0 R2.0 Module EEP to Image file over EApi"
	.ascii	"\000"
	.align	2
.LC79:
	.ascii	"LIST-DBLOCKS-IMG\000"
	.align	2
.LC80:
	.ascii	"Lists Dynamic Blocks in Binary Image file\000"
	.align	2
.LC81:
	.ascii	"LIST-DBLOCKS-EEP\000"
	.align	2
.LC82:
	.ascii	"LIST-DBLOCKS-COM0R20CBEEP\000"
	.align	2
.LC83:
	.ascii	"Lists Dynamic Blocks in COM0 R2.0 Carrier Board EEP"
	.ascii	"ROM\000"
	.align	2
.LC84:
	.ascii	"LIST-DBLOCKS-COM0R20MEEP\000"
	.align	2
.LC85:
	.ascii	"Lists Dynamic Blocks in COM0 R2.0 Module EEPROM\000"
	.global	GEN_LIST_DBLOCKS_EEP
	.align	2
.LC86:
	.ascii	"<EApi Id>      EApi Bus Id\000"
	.align	2
.LC87:
	.ascii	"<I2C Address>  EEPROM Device Address\000"
	.global	GEN_LIST_DBLOCKS_FILE
	.align	2
.LC88:
	.ascii	"<Filename>  Binary Image Filename\000"
	.global	COM0R20M_PEEP
	.global	COM0R20CB_PEEP
	.global	EeePExpEEP_IMG
	.global	COM0R20M_IMG
	.global	COM0R20CB_IMG
	.global	EeePExpEEP_PEEP
	.global	EeePExpEEP_EEP
	.align	2
.LC89:
	.ascii	"<Filename>  Configuration Filename\000"
	.global	EeePExpEEP_Img
	.align	2
.LC90:
	.ascii	"<Filename>  Destination File\000"
	.global	EeePExpEEP_Cfg
	.align	2
.LC91:
	.ascii	"<Filename|stdout>  Destination File\000"
	.global	COM0R20CB_EEP
	.global	COM0R20CB_Img
	.global	COM0R20CB_Cfg
	.global	COM0R20M_EEP
	.global	COM0R20M_Img
	.global	COM0R20M_Cfg
	.global	CurOptions
	.global	syntaxErrMes
	.global	cszTitle
	.section	.rodata
	.align	2
	.set	.LANCHOR1,. + 0
	.type	syntaxErrMes, %object
	.size	syntaxErrMes, 31
syntaxErrMes:
	.ascii	"Syntax error / Use -h for info\000"
	.space	1
	.type	cszTitle, %object
	.size	cszTitle, 244
cszTitle:
	.ascii	"+=================================================="
	.ascii	"===========================+\012| EeePProg.exe  Cop"
	.ascii	"yright (C) Kontron Embedded Modules GmbH 2010   V %"
	.ascii	"u.%u.%04u |\012+==================================="
	.ascii	"==========================================+\012\012"
	.ascii	"\000"
	.bss
	.align	2
	.set	.LANCHOR2,. + 0
	.type	CurOptions, %object
	.size	CurOptions, 196
CurOptions:
	.space	196
	.section	.data.rel,"aw"
	.align	2
	.type	GEN_LIST_DBLOCKS_EEP, %object
	.size	GEN_LIST_DBLOCKS_EEP, 32
GEN_LIST_DBLOCKS_EEP:
	.word	CurOptions+148
	.word	4
	.word	.LC86
	.word	NumberArg
	.word	CurOptions+152
	.word	4
	.word	.LC87
	.word	NumberArg
	.type	GEN_LIST_DBLOCKS_FILE, %object
	.size	GEN_LIST_DBLOCKS_FILE, 16
GEN_LIST_DBLOCKS_FILE:
	.word	CurOptions+140
	.word	4
	.word	.LC88
	.word	StringArg
	.type	COM0R20M_PEEP, %object
	.size	COM0R20M_PEEP, 16
COM0R20M_PEEP:
	.word	CurOptions+132
	.word	4
	.word	.LC88
	.word	StringArg
	.type	COM0R20CB_PEEP, %object
	.size	COM0R20CB_PEEP, 16
COM0R20CB_PEEP:
	.word	CurOptions+124
	.word	4
	.word	.LC88
	.word	StringArg
	.type	EeePExpEEP_IMG, %object
	.size	EeePExpEEP_IMG, 48
EeePExpEEP_IMG:
	.word	CurOptions+168
	.word	4
	.word	.LC88
	.word	StringArg
	.word	CurOptions+172
	.word	4
	.word	.LC86
	.word	NumberArg
	.word	CurOptions+176
	.word	4
	.word	.LC87
	.word	NumberArg
	.type	COM0R20M_IMG, %object
	.size	COM0R20M_IMG, 16
COM0R20M_IMG:
	.word	CurOptions+192
	.word	4
	.word	.LC88
	.word	StringArg
	.type	COM0R20CB_IMG, %object
	.size	COM0R20CB_IMG, 16
COM0R20CB_IMG:
	.word	CurOptions+184
	.word	4
	.word	.LC88
	.word	StringArg
	.type	EeePExpEEP_PEEP, %object
	.size	EeePExpEEP_PEEP, 48
EeePExpEEP_PEEP:
	.word	CurOptions+108
	.word	4
	.word	.LC88
	.word	StringArg
	.word	CurOptions+112
	.word	4
	.word	.LC86
	.word	NumberArg
	.word	CurOptions+116
	.word	4
	.word	.LC87
	.word	NumberArg
	.type	EeePExpEEP_EEP, %object
	.size	EeePExpEEP_EEP, 48
EeePExpEEP_EEP:
	.word	CurOptions+92
	.word	4
	.word	.LC89
	.word	StringArg
	.word	CurOptions+96
	.word	4
	.word	.LC86
	.word	NumberArg
	.word	CurOptions+100
	.word	4
	.word	.LC87
	.word	NumberArg
	.type	EeePExpEEP_Img, %object
	.size	EeePExpEEP_Img, 32
EeePExpEEP_Img:
	.word	CurOptions+80
	.word	4
	.word	.LC89
	.word	StringArg
	.word	CurOptions+84
	.word	4
	.word	.LC90
	.word	StringArg
	.type	EeePExpEEP_Cfg, %object
	.size	EeePExpEEP_Cfg, 16
EeePExpEEP_Cfg:
	.word	CurOptions+72
	.word	4
	.word	.LC91
	.word	StringArg
	.type	COM0R20CB_EEP, %object
	.size	COM0R20CB_EEP, 16
COM0R20CB_EEP:
	.word	CurOptions+64
	.word	4
	.word	.LC89
	.word	StringArg
	.type	COM0R20CB_Img, %object
	.size	COM0R20CB_Img, 32
COM0R20CB_Img:
	.word	CurOptions+52
	.word	4
	.word	.LC89
	.word	StringArg
	.word	CurOptions+56
	.word	4
	.word	.LC90
	.word	StringArg
	.type	COM0R20CB_Cfg, %object
	.size	COM0R20CB_Cfg, 16
COM0R20CB_Cfg:
	.word	CurOptions+44
	.word	4
	.word	.LC91
	.word	StringArg
	.type	COM0R20M_EEP, %object
	.size	COM0R20M_EEP, 16
COM0R20M_EEP:
	.word	CurOptions+36
	.word	4
	.word	.LC89
	.word	StringArg
	.type	COM0R20M_Img, %object
	.size	COM0R20M_Img, 32
COM0R20M_Img:
	.word	CurOptions+24
	.word	4
	.word	.LC89
	.word	StringArg
	.word	CurOptions+28
	.word	4
	.word	.LC90
	.word	StringArg
	.type	COM0R20M_Cfg, %object
	.size	COM0R20M_Cfg, 16
COM0R20M_Cfg:
	.word	CurOptions+16
	.word	4
	.word	.LC91
	.word	StringArg
	.section	.data.rel.local,"aw"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	ArgsDesc, %object
	.size	ArgsDesc, 736
ArgsDesc:
	.byte	113
	.space	3
	.word	.LC43
	.word	CurOptions+4
	.word	.LC44
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	104
	.space	3
	.word	.LC45
	.word	CurOptions
	.word	.LC46
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	63
	.space	3
	.word	0
	.word	CurOptions
	.word	.LC46
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	118
	.space	3
	.word	.LC47
	.word	CurOptions+8
	.word	.LC48
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	0
	.space	3
	.word	.LC49
	.word	CurOptions+12
	.word	.LC50
	.word	COM0R20M_Cfg
	.word	1
	.word	CurOptions+16
	.word	CMD_CreateCOM0R20_MEEPCfg
	.byte	0
	.space	3
	.word	.LC51
	.word	CurOptions+20
	.word	.LC52
	.word	COM0R20M_Img
	.word	2
	.word	CurOptions+24
	.word	CMD_CreateCOM0R20M_IMG
	.byte	0
	.space	3
	.word	.LC53
	.word	CurOptions+32
	.word	.LC54
	.word	COM0R20M_EEP
	.word	1
	.word	CurOptions+36
	.word	CMD_CreateCOM0R20M_EEP
	.byte	0
	.space	3
	.word	.LC55
	.word	CurOptions+40
	.word	.LC56
	.word	COM0R20CB_Cfg
	.word	1
	.word	CurOptions+44
	.word	CMD_CreateCOM0R20_CBCfg
	.byte	0
	.space	3
	.word	.LC57
	.word	CurOptions+60
	.word	.LC58
	.word	COM0R20CB_EEP
	.word	1
	.word	CurOptions+64
	.word	CMD_CreateCOM0R20CB_EEP
	.byte	0
	.space	3
	.word	.LC59
	.word	CurOptions+48
	.word	.LC60
	.word	COM0R20CB_Img
	.word	2
	.word	CurOptions+52
	.word	CMD_CreateCOM0R20CB_IMG
	.byte	0
	.space	3
	.word	.LC61
	.word	CurOptions+68
	.word	.LC62
	.word	EeePExpEEP_Cfg
	.word	1
	.word	CurOptions+72
	.word	CMD_CreateCOM0R20_EeePExtCfg
	.byte	0
	.space	3
	.word	.LC63
	.word	CurOptions+76
	.word	.LC64
	.word	EeePExpEEP_Img
	.word	2
	.word	CurOptions+80
	.word	CMD_CreateExtEepEEP_IMG
	.byte	0
	.space	3
	.word	.LC65
	.word	CurOptions+88
	.word	.LC66
	.word	EeePExpEEP_EEP
	.word	3
	.word	CurOptions+92
	.word	CMD_CreateEeePExt_EEP
	.byte	0
	.space	3
	.word	.LC67
	.word	CurOptions+104
	.word	.LC68
	.word	EeePExpEEP_PEEP
	.word	3
	.word	CurOptions+108
	.word	CMD_ProgramEeePExt_EEP
	.byte	0
	.space	3
	.word	.LC69
	.word	CurOptions+120
	.word	.LC70
	.word	COM0R20CB_PEEP
	.word	1
	.word	CurOptions+124
	.word	CMD_ProgramCOM0R20CB_EEP
	.byte	0
	.space	3
	.word	.LC71
	.word	CurOptions+128
	.word	.LC72
	.word	COM0R20M_PEEP
	.word	1
	.word	CurOptions+132
	.word	CMD_ProgramCOM0R20M_EEP
	.byte	0
	.space	3
	.word	.LC73
	.word	CurOptions+164
	.word	.LC74
	.word	EeePExpEEP_IMG
	.word	3
	.word	CurOptions+168
	.word	CMD_StoreEeePExt_EEP
	.byte	0
	.space	3
	.word	.LC75
	.word	CurOptions+180
	.word	.LC76
	.word	COM0R20CB_IMG
	.word	1
	.word	CurOptions+184
	.word	CMD_StoreCOM0R20_CB_EEP
	.byte	0
	.space	3
	.word	.LC77
	.word	CurOptions+188
	.word	.LC78
	.word	COM0R20M_IMG
	.word	1
	.word	CurOptions+192
	.word	CMD_StoreCOM0R20_M_EEP
	.byte	0
	.space	3
	.word	.LC79
	.word	CurOptions+136
	.word	.LC80
	.word	GEN_LIST_DBLOCKS_FILE
	.word	1
	.word	CurOptions+140
	.word	CMD_ListDBlocks_IMG
	.byte	0
	.space	3
	.word	.LC81
	.word	CurOptions+144
	.word	.LC80
	.word	GEN_LIST_DBLOCKS_EEP
	.word	2
	.word	CurOptions+148
	.word	CMD_ListDBlocksEeePExt_EEP
	.byte	0
	.space	3
	.word	.LC82
	.word	CurOptions+156
	.word	.LC83
	.word	0
	.word	0
	.word	0
	.word	CMD_ListDBlocksCOM0R20_CB_EEP
	.byte	0
	.space	3
	.word	.LC84
	.word	CurOptions+160
	.word	.LC85
	.word	0
	.word	0
	.word	0
	.word	CMD_ListDBlocksCOM0R20_M_EEP
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
