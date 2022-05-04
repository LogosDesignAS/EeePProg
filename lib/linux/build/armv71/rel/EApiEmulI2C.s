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
	.file	"EApiEmulI2C.c"
	.text
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"EmulateCmdDevice\000"
	.align	2
.LC1:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EA"
	.ascii	"piEmulI2C.c\000"
	.align	2
.LC2:
	.ascii	"%3s CCMD=%04lX Arg1=%1lX WLEN=%04lX RLEN=%04lX %02X"
	.ascii	",%02X,%02X,%02X\012\000"
	.align	2
.LC3:
	.ascii	"EmulateEepromFS\000"
	.align	2
.LC4:
	.ascii	"STD INDEX Sent to EXT INDEX EEPROM\000"
	.align	2
.LC5:
	.ascii	"%s\012\000"
	.align	2
.LC6:
	.ascii	"\000"
	.text
	.align	2
	.global	EmulateHWMonDevice
	.hidden	EmulateHWMonDevice
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EmulateHWMonDevice, %function
EmulateHWMonDevice:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	sub	sp, sp, #52
	ldr	r7, [sp, #80]
	mov	r5, r2
	mov	r8, r3
	mov	r4, r1
	ldr	r6, .L37
	str	r0, [sp, #16]
	mov	r0, #76
	str	r7, [sp, #24]
	str	r2, [sp, #20]
.LPIC2:
	add	r6, pc, r6
	ldrb	r2, [r1, #3]	@ zero_extendqisi2
	ldr	r3, [r6]
	ldr	r9, .L37+4
	str	r2, [sp, #40]
	ldrb	r2, [r1, #2]	@ zero_extendqisi2
	add	r3, r6, r3, lsl #2
.LPIC1:
	add	r9, pc, r9
	str	r2, [sp, #36]
	ldrb	r2, [r1, #1]	@ zero_extendqisi2
	str	r2, [sp, #32]
	ldrb	r2, [r1]	@ zero_extendqisi2
	mov	r1, r9
	str	r2, [sp, #28]
	ldr	r2, [r6, #4]
	str	r2, [sp, #12]
	ldr	r3, [r3, #20]
	ldr	r2, .L37+8
	str	r3, [sp, #8]
	ldr	r3, [r6, #12]
.LPIC0:
	add	r2, pc, r2
	str	r3, [sp]
	ldr	r3, .L37+12
.LPIC5:
	add	r3, pc, r3
	str	r3, [sp, #4]
	movw	r3, #258
	bl	siFormattedMessage_M2(PLT)
	cmp	r5, #0
	beq	.L11
	ldr	r3, [r6]
	cmp	r3, #1
	beq	.L5
	cmp	r3, #2
	beq	.L6
.L7:
	ldr	r6, .L37+16
	movw	r0, #24464
	movt	r0, 1
	mul	r0, r0, r5
.LPIC15:
	add	r6, pc, r6
	bl	EApiSleepns(PLT)
	ldr	r4, [r6, #16]
	ldr	r3, [r4]
	cmn	r3, #1
	beq	.L11
.L14:
	ldr	r2, [r6, #4]
	cmp	r2, r3
	beq	.L34
	ldr	r3, [r4, #12]!
	cmn	r3, #1
	bne	.L14
.L11:
	cmp	r7, #0
	bne	.L35
.L4:
	ldr	ip, .L37+20
	mov	r4, #0
	ldr	r0, .L37+24
	movw	r3, #330
	ldr	r2, .L37+28
	ldr	r1, .L37+32
.LPIC19:
	add	ip, pc, ip
.LPIC20:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC17:
	add	r2, pc, r2
.LPIC18:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
.L10:
.L1:
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L6:
	cmp	r5, #1
	beq	.L36
	ldrb	r3, [r4]	@ zero_extendqisi2
	movw	r0, #48928
	movt	r0, 2
	sub	r5, r5, #2
	lsl	r3, r3, #8
	str	r3, [r6, #4]
	ldrb	r2, [r4, #1]	@ zero_extendqisi2
	orr	r3, r2, r3
	str	r3, [r6, #4]
	bl	EApiSleepns(PLT)
	b	.L8
.L5:
	ldrb	r3, [r4]	@ zero_extendqisi2
	movw	r0, #24464
	movt	r0, 1
	sub	r5, r5, #1
	str	r3, [r6, #4]
	bl	EApiSleepns(PLT)
.L8:
	cmp	r5, #0
	bne	.L7
	cmp	r7, #0
	beq	.L4
.L35:
	ldr	r5, .L37+36
	movw	r0, #24464
	movt	r0, 1
	mul	r0, r0, r7
.LPIC21:
	add	r5, pc, r5
	bl	EApiSleepns(PLT)
	ldr	r4, [r5, #16]
	ldr	r2, [r4]
	cmn	r2, #1
	beq	.L4
	add	r4, r4, #60
	b	.L17
.L15:
	pld	[r4]
	add	r4, r4, #12
	ldr	r2, [r4, #-60]
	cmn	r2, #1
	beq	.L4
.L17:
	ldr	r3, [r5, #4]
	cmp	r3, r2
	bne	.L15
	ldr	r6, [r4, #-56]
	mov	r2, r7
	ldr	r1, [r4, #-52]
	cmp	r7, r6
	bls	.L16
	mov	r2, r6
	mov	r0, r8
	bl	memcpy(PLT)
	mov	r2, #255
	sub	r1, r7, r6
	add	r0, r8, r6
	bl	memset(PLT)
	b	.L15
.L34:
	ldr	r2, [r4, #4]
	mov	r1, r8
	ldr	r0, [r4, #8]
	cmp	r7, r2
	movcc	r2, r7
	bl	memcpy(PLT)
	ldr	r3, [r4, #12]!
	cmn	r3, #1
	bne	.L14
	b	.L11
.L16:
	mov	r0, r8
	bl	memcpy(PLT)
	b	.L15
.L36:
	ldr	r2, .L37+40
	mvn	r4, #1280
	ldr	r0, .L37+44
	mov	r3, #284
	mov	r1, r9
	str	r4, [sp]
.LPIC12:
	add	r2, pc, r2
	str	r2, [sp, #4]
.LPIC11:
	add	r0, pc, r0
	ldr	r2, .L37+48
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC9:
	add	r2, pc, r2
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L1
.L38:
	.align	2
.L37:
	.word	.LANCHOR0-(.LPIC2+8)
	.word	.LC1-(.LPIC1+8)
	.word	.LC0-(.LPIC0+8)
	.word	.LC2-(.LPIC5+8)
	.word	.LANCHOR0-(.LPIC15+8)
	.word	.LC6-(.LPIC19+8)
	.word	.LC5-(.LPIC20+8)
	.word	.LC3-(.LPIC17+8)
	.word	.LC1-(.LPIC18+8)
	.word	.LANCHOR0-(.LPIC21+8)
	.word	.LC5-(.LPIC12+8)
	.word	.LC4-(.LPIC11+8)
	.word	.LC3-(.LPIC9+8)
	.size	EmulateHWMonDevice, .-EmulateHWMonDevice
	.section	.rodata.str1.4
	.align	2
.LC7:
	.ascii	"%3s CIDX=%04lX Arg1=%1lX DLEN=%04lX PLEN=%04lX WLEN"
	.ascii	"=%04lX RLEN=%04lX %02X,%02X,%02X,%02X\012\000"
	.global	__aeabi_uidivmod
	.align	2
.LC8:
	.ascii	"CINDX=%04lX PLEN=%04lX EPLEN=%04lX\012\000"
	.align	2
.LC9:
	.ascii	"Device Page Wrap around\000"
	.align	2
.LC10:
	.ascii	"Device Write Wrap around\000"
	.align	2
.LC11:
	.ascii	"Device Write Error\000"
	.align	2
.LC12:
	.ascii	"Device Read Wrap around\000"
	.align	2
.LC13:
	.ascii	"Device Read Error\000"
	.text
	.align	2
	.global	EmulateDIDEeprom
	.hidden	EmulateDIDEeprom
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EmulateDIDEeprom, %function
EmulateDIDEeprom:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r9, r3
	ldrb	r3, [r1, #3]	@ zero_extendqisi2
	sub	sp, sp, #60
	mov	r5, r1
	mov	r6, r2
	ldr	r4, .L73
	mov	r8, r0
	str	r3, [sp, #48]
	ldrb	r3, [r1, #2]	@ zero_extendqisi2
.LPIC25:
	add	r4, pc, r4
	ldr	r7, [sp, #96]
	ldr	fp, .L73+4
	str	r3, [sp, #44]
	ldrb	r3, [r1, #1]	@ zero_extendqisi2
	ldr	r2, [r4, #36]
.LPIC23:
	add	fp, pc, fp
	ldr	r10, .L73+8
	str	r3, [sp, #40]
	ldr	r1, [r4, #40]
	ldrb	r3, [r5]	@ zero_extendqisi2
	add	r2, r4, r2, lsl #2
	str	r0, [sp, #16]
.LPIC24:
	add	r10, pc, r10
	str	r1, [sp, #24]
	mov	r0, #76
	str	r3, [sp, #36]
	mov	r1, r10
	strd	r6, [sp, #28]
	ldr	r3, [r4, #32]
	str	r3, [sp, #20]
	ldr	r3, [r4, #44]
	str	r3, [sp, #12]
	ldr	r3, [r2, #20]
	mov	r2, fp
	str	r3, [sp, #8]
	ldr	r3, [r4, #52]
	str	r3, [sp]
	ldr	r3, .L73+12
.LPIC30:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mov	r3, #126
	bl	siFormattedMessage_M2(PLT)
	cmp	r6, #0
	beq	.L41
	ldr	r3, [r4, #36]
	cmp	r3, #1
	beq	.L42
	cmp	r3, #2
	bne	.L65
	cmp	r6, #1
	beq	.L66
	mov	r10, r5
	movw	r0, #48928
	ldrb	r2, [r10], #2	@ zero_extendqisi2
	movt	r0, 2
	sub	r6, r6, #2
	lsl	r2, r2, #8
	str	r2, [r4, #44]
	ldrb	r3, [r5, #1]	@ zero_extendqisi2
	orr	r3, r3, r8, lsl #16
	orr	r3, r3, r2
	str	r3, [r4, #44]
	bl	EApiSleepns(PLT)
	b	.L45
.L42:
	mov	r10, r5
	movw	r0, #24464
	ldrb	r3, [r10], #1	@ zero_extendqisi2
	movt	r0, 1
	sub	r6, r6, #1
	orr	r3, r3, r8, lsl #8
	str	r3, [r4, #44]
	bl	EApiSleepns(PLT)
.L45:
	ldr	r4, .L73+16
.LPIC40:
	add	r4, pc, r4
	ldr	r5, [r4, #44]
	ldr	r1, [r4, #40]
	mov	r0, r5
	bl	__aeabi_uidivmod(PLT)
	str	r5, [sp, #8]
	mov	r0, #76
	ldr	r3, [r4, #52]
	str	r1, [sp, #12]
	add	r1, r1, r6
	str	r1, [sp, #16]
	str	r3, [sp]
	ldr	r3, .L73+20
	ldr	r2, .L73+24
	ldr	r1, .L73+28
.LPIC44:
	add	r3, pc, r3
	str	r3, [sp, #4]
.LPIC42:
	add	r2, pc, r2
.LPIC43:
	add	r1, pc, r1
	mov	r3, #178
	bl	siFormattedMessage_M2(PLT)
	cmp	r6, #0
	bne	.L67
.L41:
	cmp	r7, #0
	beq	.L52
	ldr	r4, .L73+32
.LPIC66:
	add	r4, pc, r4
	ldr	r3, [r4, #44]
	ldr	r2, [r4, #32]
	add	r3, r7, r3
	cmp	r3, r2
	bhi	.L68
	movw	r0, #24464
	movt	r0, 1
	mul	r0, r0, r7
	bl	EApiSleepns(PLT)
	ldr	r1, [r4, #44]
	mov	r2, #0
	ldr	r0, [r4, #56]
	bl	fseek(PLT)
	ldr	r3, [r4, #56]
	mov	r2, r7
	mov	r0, r9
	mov	r1, #1
	bl	fread(PLT)
	cmp	r7, r0
	bne	.L69
	ldr	r3, [r4, #44]
	add	r3, r3, r7
	str	r3, [r4, #44]
.L52:
.L47:
	ldr	ip, .L73+36
	mov	r4, #0
	ldr	r0, .L73+40
	mov	r3, #232
	ldr	r2, .L73+44
	ldr	r1, .L73+48
.LPIC83:
	add	ip, pc, ip
.LPIC84:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC81:
	add	r2, pc, r2
.LPIC82:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
.L39:
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L65:
	ldr	r8, [r4, #44]
	ldr	r1, [r4, #40]
	mov	r0, r8
	bl	__aeabi_uidivmod(PLT)
	str	r8, [sp, #8]
	mov	r2, fp
	ldr	r3, [r4, #52]
	mov	r0, #76
	str	r3, [sp]
	mov	r3, r1
	str	r3, [sp, #12]
	add	r3, r6, r3
	str	r3, [sp, #16]
	mov	r1, r10
	ldr	r3, .L73+52
.LPIC89:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mov	r3, #178
	bl	siFormattedMessage_M2(PLT)
.L55:
	ldr	r4, .L73+56
.LPIC46:
	add	r4, pc, r4
	ldr	r10, [r4, #40]
	ldr	r8, [r4, #44]
	mov	r1, r10
	mov	r0, r8
	bl	__aeabi_uidivmod(PLT)
	add	r1, r1, r6
	cmp	r10, r1
	bcc	.L70
	ldr	r3, [r4, #32]
	add	r8, r8, r6
	cmp	r8, r3
	bhi	.L71
	movw	r0, #24464
	movt	r0, 1
	mul	r0, r0, r6
	bl	EApiSleepns(PLT)
	ldr	r1, [r4, #44]
	mov	r2, #0
	ldr	r0, [r4, #56]
	bl	fseek(PLT)
	ldr	r3, [r4, #56]
	mov	r0, r5
	mov	r2, r6
	mov	r1, #1
	bl	fwrite(PLT)
	cmp	r0, r6
	bne	.L72
	ldr	r3, [r4, #44]
	add	r3, r3, r6
	str	r3, [r4, #44]
	b	.L41
.L69:
	ldr	ip, .L73+60
	mvn	r4, #1280
	ldr	r0, .L73+64
	mov	r3, #224
	ldr	r2, .L73+68
	ldr	r1, .L73+72
.LPIC77:
	add	ip, pc, ip
.LPIC78:
	add	r0, pc, r0
.LPIC75:
	add	r2, pc, r2
.LPIC76:
	add	r1, pc, r1
.L64:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L68:
	ldr	ip, .L73+76
	mvn	r4, #1280
	ldr	r0, .L73+80
	mov	r3, #215
	ldr	r2, .L73+84
	ldr	r1, .L73+88
.LPIC70:
	add	ip, pc, ip
.LPIC71:
	add	r0, pc, r0
.LPIC68:
	add	r2, pc, r2
.LPIC69:
	add	r1, pc, r1
	b	.L64
.L71:
	ldr	ip, .L73+92
	movw	r4, #64254
	ldr	r0, .L73+96
	movt	r4, 65535
	ldr	r2, .L73+100
	mov	r3, #194
	ldr	r1, .L73+104
.LPIC55:
	add	ip, pc, ip
.LPIC56:
	add	r0, pc, r0
.LPIC53:
	add	r2, pc, r2
.LPIC54:
	add	r1, pc, r1
	b	.L64
.L66:
	ldr	r0, .L73+108
	mvn	r4, #1280
	ldr	r3, .L73+112
	mov	r2, fp
	mov	r1, r10
	str	r4, [sp]
.LPIC36:
	add	r0, pc, r0
.LPIC37:
	add	r3, pc, r3
	str	r0, [sp, #8]
	str	r3, [sp, #4]
	mov	r0, #69
	mov	r3, #156
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L39
.L72:
	ldr	ip, .L73+116
	movw	r4, #64254
	ldr	r0, .L73+120
	movt	r4, 65535
	ldr	r2, .L73+124
	mov	r3, #203
	ldr	r1, .L73+128
.LPIC62:
	add	ip, pc, ip
.LPIC63:
	add	r0, pc, r0
.LPIC60:
	add	r2, pc, r2
.LPIC61:
	add	r1, pc, r1
	b	.L64
.L70:
	ldr	ip, .L73+132
	movw	r4, #64254
	ldr	r0, .L73+136
	movt	r4, 65535
	ldr	r2, .L73+140
	mov	r3, #188
	ldr	r1, .L73+144
.LPIC50:
	add	ip, pc, ip
.LPIC51:
	add	r0, pc, r0
.LPIC48:
	add	r2, pc, r2
.LPIC49:
	add	r1, pc, r1
	b	.L64
.L67:
	mov	r5, r10
	b	.L55
.L74:
	.align	2
.L73:
	.word	.LANCHOR0-(.LPIC25+8)
	.word	.LC3-(.LPIC23+8)
	.word	.LC1-(.LPIC24+8)
	.word	.LC7-(.LPIC30+8)
	.word	.LANCHOR0-(.LPIC40+8)
	.word	.LC8-(.LPIC44+8)
	.word	.LC3-(.LPIC42+8)
	.word	.LC1-(.LPIC43+8)
	.word	.LANCHOR0-(.LPIC66+8)
	.word	.LC6-(.LPIC83+8)
	.word	.LC5-(.LPIC84+8)
	.word	.LC3-(.LPIC81+8)
	.word	.LC1-(.LPIC82+8)
	.word	.LC8-(.LPIC89+8)
	.word	.LANCHOR0-(.LPIC46+8)
	.word	.LC13-(.LPIC77+8)
	.word	.LC5-(.LPIC78+8)
	.word	.LC3-(.LPIC75+8)
	.word	.LC1-(.LPIC76+8)
	.word	.LC12-(.LPIC70+8)
	.word	.LC5-(.LPIC71+8)
	.word	.LC3-(.LPIC68+8)
	.word	.LC1-(.LPIC69+8)
	.word	.LC10-(.LPIC55+8)
	.word	.LC5-(.LPIC56+8)
	.word	.LC3-(.LPIC53+8)
	.word	.LC1-(.LPIC54+8)
	.word	.LC4-(.LPIC36+8)
	.word	.LC5-(.LPIC37+8)
	.word	.LC11-(.LPIC62+8)
	.word	.LC5-(.LPIC63+8)
	.word	.LC3-(.LPIC60+8)
	.word	.LC1-(.LPIC61+8)
	.word	.LC9-(.LPIC50+8)
	.word	.LC5-(.LPIC51+8)
	.word	.LC3-(.LPIC48+8)
	.word	.LC1-(.LPIC49+8)
	.size	EmulateDIDEeprom, .-EmulateDIDEeprom
	.align	2
	.global	EmulateUDSEeprom
	.hidden	EmulateUDSEeprom
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EmulateUDSEeprom, %function
EmulateUDSEeprom:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r9, r3
	ldrb	r3, [r1, #3]	@ zero_extendqisi2
	sub	sp, sp, #60
	mov	r5, r1
	mov	r6, r2
	ldr	r4, .L109
	mov	r8, r0
	str	r3, [sp, #48]
	ldrb	r3, [r1, #2]	@ zero_extendqisi2
.LPIC93:
	add	r4, pc, r4
	ldr	r7, [sp, #96]
	ldr	fp, .L109+4
	str	r3, [sp, #44]
	ldrb	r3, [r1, #1]	@ zero_extendqisi2
	ldr	r2, [r4, #64]
.LPIC91:
	add	fp, pc, fp
	ldr	r10, .L109+8
	str	r3, [sp, #40]
	ldr	r1, [r4, #68]
	ldrb	r3, [r5]	@ zero_extendqisi2
	add	r2, r4, r2, lsl #2
	str	r0, [sp, #16]
.LPIC92:
	add	r10, pc, r10
	str	r1, [sp, #24]
	mov	r0, #76
	str	r3, [sp, #36]
	mov	r1, r10
	strd	r6, [sp, #28]
	ldr	r3, [r4, #60]
	str	r3, [sp, #20]
	ldr	r3, [r4, #72]
	str	r3, [sp, #12]
	ldr	r3, [r2, #20]
	mov	r2, fp
	str	r3, [sp, #8]
	ldr	r3, [r4, #80]
	str	r3, [sp]
	ldr	r3, .L109+12
.LPIC98:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mov	r3, #126
	bl	siFormattedMessage_M2(PLT)
	cmp	r6, #0
	beq	.L77
	ldr	r3, [r4, #64]
	cmp	r3, #1
	beq	.L78
	cmp	r3, #2
	bne	.L101
	cmp	r6, #1
	beq	.L102
	mov	r10, r5
	movw	r0, #48928
	ldrb	r2, [r10], #2	@ zero_extendqisi2
	movt	r0, 2
	sub	r6, r6, #2
	lsl	r2, r2, #8
	str	r2, [r4, #72]
	ldrb	r3, [r5, #1]	@ zero_extendqisi2
	orr	r3, r3, r8, lsl #16
	orr	r3, r3, r2
	str	r3, [r4, #72]
	bl	EApiSleepns(PLT)
	b	.L81
.L78:
	mov	r10, r5
	movw	r0, #24464
	ldrb	r3, [r10], #1	@ zero_extendqisi2
	movt	r0, 1
	sub	r6, r6, #1
	orr	r3, r3, r8, lsl #8
	str	r3, [r4, #72]
	bl	EApiSleepns(PLT)
.L81:
	ldr	r4, .L109+16
.LPIC108:
	add	r4, pc, r4
	ldr	r5, [r4, #72]
	ldr	r1, [r4, #68]
	mov	r0, r5
	bl	__aeabi_uidivmod(PLT)
	str	r5, [sp, #8]
	mov	r0, #76
	ldr	r3, [r4, #80]
	str	r1, [sp, #12]
	add	r1, r1, r6
	str	r1, [sp, #16]
	str	r3, [sp]
	ldr	r3, .L109+20
	ldr	r2, .L109+24
	ldr	r1, .L109+28
.LPIC112:
	add	r3, pc, r3
	str	r3, [sp, #4]
.LPIC110:
	add	r2, pc, r2
.LPIC111:
	add	r1, pc, r1
	mov	r3, #178
	bl	siFormattedMessage_M2(PLT)
	cmp	r6, #0
	bne	.L103
.L77:
	cmp	r7, #0
	beq	.L88
	ldr	r4, .L109+32
.LPIC134:
	add	r4, pc, r4
	ldr	r3, [r4, #72]
	ldr	r2, [r4, #60]
	add	r3, r7, r3
	cmp	r3, r2
	bhi	.L104
	movw	r0, #24464
	movt	r0, 1
	mul	r0, r0, r7
	bl	EApiSleepns(PLT)
	ldr	r1, [r4, #72]
	mov	r2, #0
	ldr	r0, [r4, #84]
	bl	fseek(PLT)
	ldr	r3, [r4, #84]
	mov	r2, r7
	mov	r0, r9
	mov	r1, #1
	bl	fread(PLT)
	cmp	r7, r0
	bne	.L105
	ldr	r3, [r4, #72]
	add	r3, r3, r7
	str	r3, [r4, #72]
.L88:
.L83:
	ldr	ip, .L109+36
	mov	r4, #0
	ldr	r0, .L109+40
	mov	r3, #232
	ldr	r2, .L109+44
	ldr	r1, .L109+48
.LPIC151:
	add	ip, pc, ip
.LPIC152:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC149:
	add	r2, pc, r2
.LPIC150:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
.L75:
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L101:
	ldr	r8, [r4, #72]
	ldr	r1, [r4, #68]
	mov	r0, r8
	bl	__aeabi_uidivmod(PLT)
	str	r8, [sp, #8]
	mov	r2, fp
	ldr	r3, [r4, #80]
	mov	r0, #76
	str	r3, [sp]
	mov	r3, r1
	str	r3, [sp, #12]
	add	r3, r6, r3
	str	r3, [sp, #16]
	mov	r1, r10
	ldr	r3, .L109+52
.LPIC157:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mov	r3, #178
	bl	siFormattedMessage_M2(PLT)
.L91:
	ldr	r4, .L109+56
.LPIC114:
	add	r4, pc, r4
	ldr	r10, [r4, #68]
	ldr	r8, [r4, #72]
	mov	r1, r10
	mov	r0, r8
	bl	__aeabi_uidivmod(PLT)
	add	r1, r1, r6
	cmp	r10, r1
	bcc	.L106
	ldr	r3, [r4, #60]
	add	r8, r8, r6
	cmp	r8, r3
	bhi	.L107
	movw	r0, #24464
	movt	r0, 1
	mul	r0, r0, r6
	bl	EApiSleepns(PLT)
	ldr	r1, [r4, #72]
	mov	r2, #0
	ldr	r0, [r4, #84]
	bl	fseek(PLT)
	ldr	r3, [r4, #84]
	mov	r0, r5
	mov	r2, r6
	mov	r1, #1
	bl	fwrite(PLT)
	cmp	r0, r6
	bne	.L108
	ldr	r3, [r4, #72]
	add	r3, r3, r6
	str	r3, [r4, #72]
	b	.L77
.L105:
	ldr	ip, .L109+60
	mvn	r4, #1280
	ldr	r0, .L109+64
	mov	r3, #224
	ldr	r2, .L109+68
	ldr	r1, .L109+72
.LPIC145:
	add	ip, pc, ip
.LPIC146:
	add	r0, pc, r0
.LPIC143:
	add	r2, pc, r2
.LPIC144:
	add	r1, pc, r1
.L100:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L104:
	ldr	ip, .L109+76
	mvn	r4, #1280
	ldr	r0, .L109+80
	mov	r3, #215
	ldr	r2, .L109+84
	ldr	r1, .L109+88
.LPIC138:
	add	ip, pc, ip
.LPIC139:
	add	r0, pc, r0
.LPIC136:
	add	r2, pc, r2
.LPIC137:
	add	r1, pc, r1
	b	.L100
.L107:
	ldr	ip, .L109+92
	movw	r4, #64254
	ldr	r0, .L109+96
	movt	r4, 65535
	ldr	r2, .L109+100
	mov	r3, #194
	ldr	r1, .L109+104
.LPIC123:
	add	ip, pc, ip
.LPIC124:
	add	r0, pc, r0
.LPIC121:
	add	r2, pc, r2
.LPIC122:
	add	r1, pc, r1
	b	.L100
.L102:
	ldr	r0, .L109+108
	mvn	r4, #1280
	ldr	r3, .L109+112
	mov	r2, fp
	mov	r1, r10
	str	r4, [sp]
.LPIC104:
	add	r0, pc, r0
.LPIC105:
	add	r3, pc, r3
	str	r0, [sp, #8]
	str	r3, [sp, #4]
	mov	r0, #69
	mov	r3, #156
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L75
.L108:
	ldr	ip, .L109+116
	movw	r4, #64254
	ldr	r0, .L109+120
	movt	r4, 65535
	ldr	r2, .L109+124
	mov	r3, #203
	ldr	r1, .L109+128
.LPIC130:
	add	ip, pc, ip
.LPIC131:
	add	r0, pc, r0
.LPIC128:
	add	r2, pc, r2
.LPIC129:
	add	r1, pc, r1
	b	.L100
.L106:
	ldr	ip, .L109+132
	movw	r4, #64254
	ldr	r0, .L109+136
	movt	r4, 65535
	ldr	r2, .L109+140
	mov	r3, #188
	ldr	r1, .L109+144
.LPIC118:
	add	ip, pc, ip
.LPIC119:
	add	r0, pc, r0
.LPIC116:
	add	r2, pc, r2
.LPIC117:
	add	r1, pc, r1
	b	.L100
.L103:
	mov	r5, r10
	b	.L91
.L110:
	.align	2
.L109:
	.word	.LANCHOR0-(.LPIC93+8)
	.word	.LC3-(.LPIC91+8)
	.word	.LC1-(.LPIC92+8)
	.word	.LC7-(.LPIC98+8)
	.word	.LANCHOR0-(.LPIC108+8)
	.word	.LC8-(.LPIC112+8)
	.word	.LC3-(.LPIC110+8)
	.word	.LC1-(.LPIC111+8)
	.word	.LANCHOR0-(.LPIC134+8)
	.word	.LC6-(.LPIC151+8)
	.word	.LC5-(.LPIC152+8)
	.word	.LC3-(.LPIC149+8)
	.word	.LC1-(.LPIC150+8)
	.word	.LC8-(.LPIC157+8)
	.word	.LANCHOR0-(.LPIC114+8)
	.word	.LC13-(.LPIC145+8)
	.word	.LC5-(.LPIC146+8)
	.word	.LC3-(.LPIC143+8)
	.word	.LC1-(.LPIC144+8)
	.word	.LC12-(.LPIC138+8)
	.word	.LC5-(.LPIC139+8)
	.word	.LC3-(.LPIC136+8)
	.word	.LC1-(.LPIC137+8)
	.word	.LC10-(.LPIC123+8)
	.word	.LC5-(.LPIC124+8)
	.word	.LC3-(.LPIC121+8)
	.word	.LC1-(.LPIC122+8)
	.word	.LC4-(.LPIC104+8)
	.word	.LC5-(.LPIC105+8)
	.word	.LC11-(.LPIC130+8)
	.word	.LC5-(.LPIC131+8)
	.word	.LC3-(.LPIC128+8)
	.word	.LC1-(.LPIC129+8)
	.word	.LC9-(.LPIC118+8)
	.word	.LC5-(.LPIC119+8)
	.word	.LC3-(.LPIC116+8)
	.word	.LC1-(.LPIC117+8)
	.size	EmulateUDSEeprom, .-EmulateUDSEeprom
	.align	2
	.global	EmulateEPIEeprom
	.hidden	EmulateEPIEeprom
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EmulateEPIEeprom, %function
EmulateEPIEeprom:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r9, r3
	ldrb	r3, [r1, #3]	@ zero_extendqisi2
	sub	sp, sp, #60
	mov	r5, r1
	mov	r6, r2
	ldr	r4, .L145
	mov	r8, r0
	str	r3, [sp, #48]
	ldrb	r3, [r1, #2]	@ zero_extendqisi2
.LPIC161:
	add	r4, pc, r4
	ldr	r7, [sp, #96]
	ldr	fp, .L145+4
	str	r3, [sp, #44]
	ldrb	r3, [r1, #1]	@ zero_extendqisi2
	ldr	r2, [r4, #92]
.LPIC159:
	add	fp, pc, fp
	ldr	r10, .L145+8
	str	r3, [sp, #40]
	ldr	r1, [r4, #96]
	ldrb	r3, [r5]	@ zero_extendqisi2
	add	r2, r4, r2, lsl #2
	str	r0, [sp, #16]
.LPIC160:
	add	r10, pc, r10
	str	r1, [sp, #24]
	mov	r0, #76
	str	r3, [sp, #36]
	mov	r1, r10
	strd	r6, [sp, #28]
	ldr	r3, [r4, #88]
	str	r3, [sp, #20]
	ldr	r3, [r4, #100]
	str	r3, [sp, #12]
	ldr	r3, [r2, #20]
	mov	r2, fp
	str	r3, [sp, #8]
	ldr	r3, [r4, #108]
	str	r3, [sp]
	ldr	r3, .L145+12
.LPIC166:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mov	r3, #126
	bl	siFormattedMessage_M2(PLT)
	cmp	r6, #0
	beq	.L113
	ldr	r3, [r4, #92]
	cmp	r3, #1
	beq	.L114
	cmp	r3, #2
	bne	.L137
	cmp	r6, #1
	beq	.L138
	mov	r10, r5
	movw	r0, #48928
	ldrb	r2, [r10], #2	@ zero_extendqisi2
	movt	r0, 2
	sub	r6, r6, #2
	lsl	r2, r2, #8
	str	r2, [r4, #100]
	ldrb	r3, [r5, #1]	@ zero_extendqisi2
	orr	r3, r3, r8, lsl #16
	orr	r3, r3, r2
	str	r3, [r4, #100]
	bl	EApiSleepns(PLT)
	b	.L117
.L114:
	mov	r10, r5
	movw	r0, #24464
	ldrb	r3, [r10], #1	@ zero_extendqisi2
	movt	r0, 1
	sub	r6, r6, #1
	orr	r3, r3, r8, lsl #8
	str	r3, [r4, #100]
	bl	EApiSleepns(PLT)
.L117:
	ldr	r4, .L145+16
.LPIC176:
	add	r4, pc, r4
	ldr	r5, [r4, #100]
	ldr	r1, [r4, #96]
	mov	r0, r5
	bl	__aeabi_uidivmod(PLT)
	str	r5, [sp, #8]
	mov	r0, #76
	ldr	r3, [r4, #108]
	str	r1, [sp, #12]
	add	r1, r1, r6
	str	r1, [sp, #16]
	str	r3, [sp]
	ldr	r3, .L145+20
	ldr	r2, .L145+24
	ldr	r1, .L145+28
.LPIC180:
	add	r3, pc, r3
	str	r3, [sp, #4]
.LPIC178:
	add	r2, pc, r2
.LPIC179:
	add	r1, pc, r1
	mov	r3, #178
	bl	siFormattedMessage_M2(PLT)
	cmp	r6, #0
	bne	.L139
.L113:
	cmp	r7, #0
	beq	.L124
	ldr	r4, .L145+32
.LPIC202:
	add	r4, pc, r4
	ldr	r3, [r4, #100]
	ldr	r2, [r4, #88]
	add	r3, r7, r3
	cmp	r3, r2
	bhi	.L140
	movw	r0, #24464
	movt	r0, 1
	mul	r0, r0, r7
	bl	EApiSleepns(PLT)
	ldr	r1, [r4, #100]
	mov	r2, #0
	ldr	r0, [r4, #112]
	bl	fseek(PLT)
	ldr	r3, [r4, #112]
	mov	r2, r7
	mov	r0, r9
	mov	r1, #1
	bl	fread(PLT)
	cmp	r7, r0
	bne	.L141
	ldr	r3, [r4, #100]
	add	r3, r3, r7
	str	r3, [r4, #100]
.L124:
.L119:
	ldr	ip, .L145+36
	mov	r4, #0
	ldr	r0, .L145+40
	mov	r3, #232
	ldr	r2, .L145+44
	ldr	r1, .L145+48
.LPIC219:
	add	ip, pc, ip
.LPIC220:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC217:
	add	r2, pc, r2
.LPIC218:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
.L111:
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L137:
	ldr	r8, [r4, #100]
	ldr	r1, [r4, #96]
	mov	r0, r8
	bl	__aeabi_uidivmod(PLT)
	str	r8, [sp, #8]
	mov	r2, fp
	ldr	r3, [r4, #108]
	mov	r0, #76
	str	r3, [sp]
	mov	r3, r1
	str	r3, [sp, #12]
	add	r3, r6, r3
	str	r3, [sp, #16]
	mov	r1, r10
	ldr	r3, .L145+52
.LPIC225:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mov	r3, #178
	bl	siFormattedMessage_M2(PLT)
.L127:
	ldr	r4, .L145+56
.LPIC182:
	add	r4, pc, r4
	ldr	r10, [r4, #96]
	ldr	r8, [r4, #100]
	mov	r1, r10
	mov	r0, r8
	bl	__aeabi_uidivmod(PLT)
	add	r1, r1, r6
	cmp	r10, r1
	bcc	.L142
	ldr	r3, [r4, #88]
	add	r8, r8, r6
	cmp	r8, r3
	bhi	.L143
	movw	r0, #24464
	movt	r0, 1
	mul	r0, r0, r6
	bl	EApiSleepns(PLT)
	ldr	r1, [r4, #100]
	mov	r2, #0
	ldr	r0, [r4, #112]
	bl	fseek(PLT)
	ldr	r3, [r4, #112]
	mov	r0, r5
	mov	r2, r6
	mov	r1, #1
	bl	fwrite(PLT)
	cmp	r0, r6
	bne	.L144
	ldr	r3, [r4, #100]
	add	r3, r3, r6
	str	r3, [r4, #100]
	b	.L113
.L141:
	ldr	ip, .L145+60
	mvn	r4, #1280
	ldr	r0, .L145+64
	mov	r3, #224
	ldr	r2, .L145+68
	ldr	r1, .L145+72
.LPIC213:
	add	ip, pc, ip
.LPIC214:
	add	r0, pc, r0
.LPIC211:
	add	r2, pc, r2
.LPIC212:
	add	r1, pc, r1
.L136:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L140:
	ldr	ip, .L145+76
	mvn	r4, #1280
	ldr	r0, .L145+80
	mov	r3, #215
	ldr	r2, .L145+84
	ldr	r1, .L145+88
.LPIC206:
	add	ip, pc, ip
.LPIC207:
	add	r0, pc, r0
.LPIC204:
	add	r2, pc, r2
.LPIC205:
	add	r1, pc, r1
	b	.L136
.L143:
	ldr	ip, .L145+92
	movw	r4, #64254
	ldr	r0, .L145+96
	movt	r4, 65535
	ldr	r2, .L145+100
	mov	r3, #194
	ldr	r1, .L145+104
.LPIC191:
	add	ip, pc, ip
.LPIC192:
	add	r0, pc, r0
.LPIC189:
	add	r2, pc, r2
.LPIC190:
	add	r1, pc, r1
	b	.L136
.L138:
	ldr	r0, .L145+108
	mvn	r4, #1280
	ldr	r3, .L145+112
	mov	r2, fp
	mov	r1, r10
	str	r4, [sp]
.LPIC172:
	add	r0, pc, r0
.LPIC173:
	add	r3, pc, r3
	str	r0, [sp, #8]
	str	r3, [sp, #4]
	mov	r0, #69
	mov	r3, #156
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L111
.L144:
	ldr	ip, .L145+116
	movw	r4, #64254
	ldr	r0, .L145+120
	movt	r4, 65535
	ldr	r2, .L145+124
	mov	r3, #203
	ldr	r1, .L145+128
.LPIC198:
	add	ip, pc, ip
.LPIC199:
	add	r0, pc, r0
.LPIC196:
	add	r2, pc, r2
.LPIC197:
	add	r1, pc, r1
	b	.L136
.L142:
	ldr	ip, .L145+132
	movw	r4, #64254
	ldr	r0, .L145+136
	movt	r4, 65535
	ldr	r2, .L145+140
	mov	r3, #188
	ldr	r1, .L145+144
.LPIC186:
	add	ip, pc, ip
.LPIC187:
	add	r0, pc, r0
.LPIC184:
	add	r2, pc, r2
.LPIC185:
	add	r1, pc, r1
	b	.L136
.L139:
	mov	r5, r10
	b	.L127
.L146:
	.align	2
.L145:
	.word	.LANCHOR0-(.LPIC161+8)
	.word	.LC3-(.LPIC159+8)
	.word	.LC1-(.LPIC160+8)
	.word	.LC7-(.LPIC166+8)
	.word	.LANCHOR0-(.LPIC176+8)
	.word	.LC8-(.LPIC180+8)
	.word	.LC3-(.LPIC178+8)
	.word	.LC1-(.LPIC179+8)
	.word	.LANCHOR0-(.LPIC202+8)
	.word	.LC6-(.LPIC219+8)
	.word	.LC5-(.LPIC220+8)
	.word	.LC3-(.LPIC217+8)
	.word	.LC1-(.LPIC218+8)
	.word	.LC8-(.LPIC225+8)
	.word	.LANCHOR0-(.LPIC182+8)
	.word	.LC13-(.LPIC213+8)
	.word	.LC5-(.LPIC214+8)
	.word	.LC3-(.LPIC211+8)
	.word	.LC1-(.LPIC212+8)
	.word	.LC12-(.LPIC206+8)
	.word	.LC5-(.LPIC207+8)
	.word	.LC3-(.LPIC204+8)
	.word	.LC1-(.LPIC205+8)
	.word	.LC10-(.LPIC191+8)
	.word	.LC5-(.LPIC192+8)
	.word	.LC3-(.LPIC189+8)
	.word	.LC1-(.LPIC190+8)
	.word	.LC4-(.LPIC172+8)
	.word	.LC5-(.LPIC173+8)
	.word	.LC11-(.LPIC198+8)
	.word	.LC5-(.LPIC199+8)
	.word	.LC3-(.LPIC196+8)
	.word	.LC1-(.LPIC197+8)
	.word	.LC9-(.LPIC186+8)
	.word	.LC5-(.LPIC187+8)
	.word	.LC3-(.LPIC184+8)
	.word	.LC1-(.LPIC185+8)
	.size	EmulateEPIEeprom, .-EmulateEPIEeprom
	.align	2
	.global	EmulateEeePExpEeprom
	.hidden	EmulateEeePExpEeprom
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EmulateEeePExpEeprom, %function
EmulateEeePExpEeprom:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r9, r3
	ldrb	r3, [r1, #3]	@ zero_extendqisi2
	sub	sp, sp, #60
	mov	r5, r1
	mov	r6, r2
	ldr	r4, .L181
	mov	r8, r0
	str	r3, [sp, #48]
	ldrb	r3, [r1, #2]	@ zero_extendqisi2
.LPIC229:
	add	r4, pc, r4
	ldr	r7, [sp, #96]
	ldr	fp, .L181+4
	str	r3, [sp, #44]
	ldrb	r3, [r1, #1]	@ zero_extendqisi2
	ldr	r2, [r4, #120]
.LPIC227:
	add	fp, pc, fp
	ldr	r10, .L181+8
	str	r3, [sp, #40]
	ldr	r1, [r4, #124]
	ldrb	r3, [r5]	@ zero_extendqisi2
	add	r2, r4, r2, lsl #2
	str	r0, [sp, #16]
.LPIC228:
	add	r10, pc, r10
	str	r1, [sp, #24]
	mov	r0, #76
	str	r3, [sp, #36]
	mov	r1, r10
	strd	r6, [sp, #28]
	ldr	r3, [r4, #116]
	str	r3, [sp, #20]
	ldr	r3, [r4, #128]
	str	r3, [sp, #12]
	ldr	r3, [r2, #20]
	mov	r2, fp
	str	r3, [sp, #8]
	ldr	r3, [r4, #136]
	str	r3, [sp]
	ldr	r3, .L181+12
.LPIC234:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mov	r3, #126
	bl	siFormattedMessage_M2(PLT)
	cmp	r6, #0
	beq	.L149
	ldr	r3, [r4, #120]
	cmp	r3, #1
	beq	.L150
	cmp	r3, #2
	bne	.L173
	cmp	r6, #1
	beq	.L174
	mov	r10, r5
	movw	r0, #48928
	ldrb	r2, [r10], #2	@ zero_extendqisi2
	movt	r0, 2
	sub	r6, r6, #2
	lsl	r2, r2, #8
	str	r2, [r4, #128]
	ldrb	r3, [r5, #1]	@ zero_extendqisi2
	orr	r3, r3, r8, lsl #16
	orr	r3, r3, r2
	str	r3, [r4, #128]
	bl	EApiSleepns(PLT)
	b	.L153
.L150:
	mov	r10, r5
	movw	r0, #24464
	ldrb	r3, [r10], #1	@ zero_extendqisi2
	movt	r0, 1
	sub	r6, r6, #1
	orr	r3, r3, r8, lsl #8
	str	r3, [r4, #128]
	bl	EApiSleepns(PLT)
.L153:
	ldr	r4, .L181+16
.LPIC244:
	add	r4, pc, r4
	ldr	r5, [r4, #128]
	ldr	r1, [r4, #124]
	mov	r0, r5
	bl	__aeabi_uidivmod(PLT)
	str	r5, [sp, #8]
	mov	r0, #76
	ldr	r3, [r4, #136]
	str	r1, [sp, #12]
	add	r1, r1, r6
	str	r1, [sp, #16]
	str	r3, [sp]
	ldr	r3, .L181+20
	ldr	r2, .L181+24
	ldr	r1, .L181+28
.LPIC248:
	add	r3, pc, r3
	str	r3, [sp, #4]
.LPIC246:
	add	r2, pc, r2
.LPIC247:
	add	r1, pc, r1
	mov	r3, #178
	bl	siFormattedMessage_M2(PLT)
	cmp	r6, #0
	bne	.L175
.L149:
	cmp	r7, #0
	beq	.L160
	ldr	r4, .L181+32
.LPIC270:
	add	r4, pc, r4
	ldr	r3, [r4, #128]
	ldr	r2, [r4, #116]
	add	r3, r7, r3
	cmp	r3, r2
	bhi	.L176
	movw	r0, #24464
	movt	r0, 1
	mul	r0, r0, r7
	bl	EApiSleepns(PLT)
	ldr	r1, [r4, #128]
	mov	r2, #0
	ldr	r0, [r4, #140]
	bl	fseek(PLT)
	ldr	r3, [r4, #140]
	mov	r2, r7
	mov	r0, r9
	mov	r1, #1
	bl	fread(PLT)
	cmp	r7, r0
	bne	.L177
	ldr	r3, [r4, #128]
	add	r3, r3, r7
	str	r3, [r4, #128]
.L160:
.L155:
	ldr	ip, .L181+36
	mov	r4, #0
	ldr	r0, .L181+40
	mov	r3, #232
	ldr	r2, .L181+44
	ldr	r1, .L181+48
.LPIC287:
	add	ip, pc, ip
.LPIC288:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC285:
	add	r2, pc, r2
.LPIC286:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
.L147:
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L173:
	ldr	r8, [r4, #128]
	ldr	r1, [r4, #124]
	mov	r0, r8
	bl	__aeabi_uidivmod(PLT)
	str	r8, [sp, #8]
	mov	r2, fp
	ldr	r3, [r4, #136]
	mov	r0, #76
	str	r3, [sp]
	mov	r3, r1
	str	r3, [sp, #12]
	add	r3, r6, r3
	str	r3, [sp, #16]
	mov	r1, r10
	ldr	r3, .L181+52
.LPIC293:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mov	r3, #178
	bl	siFormattedMessage_M2(PLT)
.L163:
	ldr	r4, .L181+56
.LPIC250:
	add	r4, pc, r4
	ldr	r10, [r4, #124]
	ldr	r8, [r4, #128]
	mov	r1, r10
	mov	r0, r8
	bl	__aeabi_uidivmod(PLT)
	add	r1, r1, r6
	cmp	r10, r1
	bcc	.L178
	ldr	r3, [r4, #116]
	add	r8, r8, r6
	cmp	r8, r3
	bhi	.L179
	movw	r0, #24464
	movt	r0, 1
	mul	r0, r0, r6
	bl	EApiSleepns(PLT)
	ldr	r1, [r4, #128]
	mov	r2, #0
	ldr	r0, [r4, #140]
	bl	fseek(PLT)
	ldr	r3, [r4, #140]
	mov	r0, r5
	mov	r2, r6
	mov	r1, #1
	bl	fwrite(PLT)
	cmp	r0, r6
	bne	.L180
	ldr	r3, [r4, #128]
	add	r3, r3, r6
	str	r3, [r4, #128]
	b	.L149
.L177:
	ldr	ip, .L181+60
	mvn	r4, #1280
	ldr	r0, .L181+64
	mov	r3, #224
	ldr	r2, .L181+68
	ldr	r1, .L181+72
.LPIC281:
	add	ip, pc, ip
.LPIC282:
	add	r0, pc, r0
.LPIC279:
	add	r2, pc, r2
.LPIC280:
	add	r1, pc, r1
.L172:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L176:
	ldr	ip, .L181+76
	mvn	r4, #1280
	ldr	r0, .L181+80
	mov	r3, #215
	ldr	r2, .L181+84
	ldr	r1, .L181+88
.LPIC274:
	add	ip, pc, ip
.LPIC275:
	add	r0, pc, r0
.LPIC272:
	add	r2, pc, r2
.LPIC273:
	add	r1, pc, r1
	b	.L172
.L179:
	ldr	ip, .L181+92
	movw	r4, #64254
	ldr	r0, .L181+96
	movt	r4, 65535
	ldr	r2, .L181+100
	mov	r3, #194
	ldr	r1, .L181+104
.LPIC259:
	add	ip, pc, ip
.LPIC260:
	add	r0, pc, r0
.LPIC257:
	add	r2, pc, r2
.LPIC258:
	add	r1, pc, r1
	b	.L172
.L174:
	ldr	r0, .L181+108
	mvn	r4, #1280
	ldr	r3, .L181+112
	mov	r2, fp
	mov	r1, r10
	str	r4, [sp]
.LPIC240:
	add	r0, pc, r0
.LPIC241:
	add	r3, pc, r3
	str	r0, [sp, #8]
	str	r3, [sp, #4]
	mov	r0, #69
	mov	r3, #156
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L147
.L180:
	ldr	ip, .L181+116
	movw	r4, #64254
	ldr	r0, .L181+120
	movt	r4, 65535
	ldr	r2, .L181+124
	mov	r3, #203
	ldr	r1, .L181+128
.LPIC266:
	add	ip, pc, ip
.LPIC267:
	add	r0, pc, r0
.LPIC264:
	add	r2, pc, r2
.LPIC265:
	add	r1, pc, r1
	b	.L172
.L178:
	ldr	ip, .L181+132
	movw	r4, #64254
	ldr	r0, .L181+136
	movt	r4, 65535
	ldr	r2, .L181+140
	mov	r3, #188
	ldr	r1, .L181+144
.LPIC254:
	add	ip, pc, ip
.LPIC255:
	add	r0, pc, r0
.LPIC252:
	add	r2, pc, r2
.LPIC253:
	add	r1, pc, r1
	b	.L172
.L175:
	mov	r5, r10
	b	.L163
.L182:
	.align	2
.L181:
	.word	.LANCHOR0-(.LPIC229+8)
	.word	.LC3-(.LPIC227+8)
	.word	.LC1-(.LPIC228+8)
	.word	.LC7-(.LPIC234+8)
	.word	.LANCHOR0-(.LPIC244+8)
	.word	.LC8-(.LPIC248+8)
	.word	.LC3-(.LPIC246+8)
	.word	.LC1-(.LPIC247+8)
	.word	.LANCHOR0-(.LPIC270+8)
	.word	.LC6-(.LPIC287+8)
	.word	.LC5-(.LPIC288+8)
	.word	.LC3-(.LPIC285+8)
	.word	.LC1-(.LPIC286+8)
	.word	.LC8-(.LPIC293+8)
	.word	.LANCHOR0-(.LPIC250+8)
	.word	.LC13-(.LPIC281+8)
	.word	.LC5-(.LPIC282+8)
	.word	.LC3-(.LPIC279+8)
	.word	.LC1-(.LPIC280+8)
	.word	.LC12-(.LPIC274+8)
	.word	.LC5-(.LPIC275+8)
	.word	.LC3-(.LPIC272+8)
	.word	.LC1-(.LPIC273+8)
	.word	.LC10-(.LPIC259+8)
	.word	.LC5-(.LPIC260+8)
	.word	.LC3-(.LPIC257+8)
	.word	.LC1-(.LPIC258+8)
	.word	.LC4-(.LPIC240+8)
	.word	.LC5-(.LPIC241+8)
	.word	.LC11-(.LPIC266+8)
	.word	.LC5-(.LPIC267+8)
	.word	.LC3-(.LPIC264+8)
	.word	.LC1-(.LPIC265+8)
	.word	.LC9-(.LPIC254+8)
	.word	.LC5-(.LPIC255+8)
	.word	.LC3-(.LPIC252+8)
	.word	.LC1-(.LPIC253+8)
	.size	EmulateEeePExpEeprom, .-EmulateEeePExpEeprom
	.align	2
	.global	EmulateCOM0CBEeprom
	.hidden	EmulateCOM0CBEeprom
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EmulateCOM0CBEeprom, %function
EmulateCOM0CBEeprom:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r9, r3
	ldrb	r3, [r1, #3]	@ zero_extendqisi2
	sub	sp, sp, #60
	mov	r5, r1
	mov	r6, r2
	ldr	r4, .L217
	mov	r8, r0
	str	r3, [sp, #48]
	ldrb	r3, [r1, #2]	@ zero_extendqisi2
.LPIC297:
	add	r4, pc, r4
	ldr	r7, [sp, #96]
	ldr	fp, .L217+4
	str	r3, [sp, #44]
	ldrb	r3, [r1, #1]	@ zero_extendqisi2
	ldr	r2, [r4, #148]
.LPIC295:
	add	fp, pc, fp
	ldr	r10, .L217+8
	str	r3, [sp, #40]
	ldr	r1, [r4, #152]
	ldrb	r3, [r5]	@ zero_extendqisi2
	add	r2, r4, r2, lsl #2
	str	r0, [sp, #16]
.LPIC296:
	add	r10, pc, r10
	str	r1, [sp, #24]
	mov	r0, #76
	str	r3, [sp, #36]
	mov	r1, r10
	strd	r6, [sp, #28]
	ldr	r3, [r4, #144]
	str	r3, [sp, #20]
	ldr	r3, [r4, #156]
	str	r3, [sp, #12]
	ldr	r3, [r2, #20]
	mov	r2, fp
	str	r3, [sp, #8]
	ldr	r3, [r4, #164]
	str	r3, [sp]
	ldr	r3, .L217+12
.LPIC302:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mov	r3, #126
	bl	siFormattedMessage_M2(PLT)
	cmp	r6, #0
	beq	.L185
	ldr	r3, [r4, #148]
	cmp	r3, #1
	beq	.L186
	cmp	r3, #2
	bne	.L209
	cmp	r6, #1
	beq	.L210
	mov	r10, r5
	movw	r0, #48928
	ldrb	r2, [r10], #2	@ zero_extendqisi2
	movt	r0, 2
	sub	r6, r6, #2
	lsl	r2, r2, #8
	str	r2, [r4, #156]
	ldrb	r3, [r5, #1]	@ zero_extendqisi2
	orr	r3, r3, r8, lsl #16
	orr	r3, r3, r2
	str	r3, [r4, #156]
	bl	EApiSleepns(PLT)
	b	.L189
.L186:
	mov	r10, r5
	movw	r0, #24464
	ldrb	r3, [r10], #1	@ zero_extendqisi2
	movt	r0, 1
	sub	r6, r6, #1
	orr	r3, r3, r8, lsl #8
	str	r3, [r4, #156]
	bl	EApiSleepns(PLT)
.L189:
	ldr	r4, .L217+16
.LPIC312:
	add	r4, pc, r4
	ldr	r5, [r4, #156]
	ldr	r1, [r4, #152]
	mov	r0, r5
	bl	__aeabi_uidivmod(PLT)
	str	r5, [sp, #8]
	mov	r0, #76
	ldr	r3, [r4, #164]
	str	r1, [sp, #12]
	add	r1, r1, r6
	str	r1, [sp, #16]
	str	r3, [sp]
	ldr	r3, .L217+20
	ldr	r2, .L217+24
	ldr	r1, .L217+28
.LPIC316:
	add	r3, pc, r3
	str	r3, [sp, #4]
.LPIC314:
	add	r2, pc, r2
.LPIC315:
	add	r1, pc, r1
	mov	r3, #178
	bl	siFormattedMessage_M2(PLT)
	cmp	r6, #0
	bne	.L211
.L185:
	cmp	r7, #0
	beq	.L196
	ldr	r4, .L217+32
.LPIC338:
	add	r4, pc, r4
	ldr	r3, [r4, #156]
	ldr	r2, [r4, #144]
	add	r3, r7, r3
	cmp	r3, r2
	bhi	.L212
	movw	r0, #24464
	movt	r0, 1
	mul	r0, r0, r7
	bl	EApiSleepns(PLT)
	ldr	r1, [r4, #156]
	mov	r2, #0
	ldr	r0, [r4, #168]
	bl	fseek(PLT)
	ldr	r3, [r4, #168]
	mov	r2, r7
	mov	r0, r9
	mov	r1, #1
	bl	fread(PLT)
	cmp	r7, r0
	bne	.L213
	ldr	r3, [r4, #156]
	add	r3, r3, r7
	str	r3, [r4, #156]
.L196:
.L191:
	ldr	ip, .L217+36
	mov	r4, #0
	ldr	r0, .L217+40
	mov	r3, #232
	ldr	r2, .L217+44
	ldr	r1, .L217+48
.LPIC355:
	add	ip, pc, ip
.LPIC356:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC353:
	add	r2, pc, r2
.LPIC354:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
.L183:
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L209:
	ldr	r8, [r4, #156]
	ldr	r1, [r4, #152]
	mov	r0, r8
	bl	__aeabi_uidivmod(PLT)
	str	r8, [sp, #8]
	mov	r2, fp
	ldr	r3, [r4, #164]
	mov	r0, #76
	str	r3, [sp]
	mov	r3, r1
	str	r3, [sp, #12]
	add	r3, r6, r3
	str	r3, [sp, #16]
	mov	r1, r10
	ldr	r3, .L217+52
.LPIC361:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mov	r3, #178
	bl	siFormattedMessage_M2(PLT)
.L199:
	ldr	r4, .L217+56
.LPIC318:
	add	r4, pc, r4
	ldr	r10, [r4, #152]
	ldr	r8, [r4, #156]
	mov	r1, r10
	mov	r0, r8
	bl	__aeabi_uidivmod(PLT)
	add	r1, r1, r6
	cmp	r10, r1
	bcc	.L214
	ldr	r3, [r4, #144]
	add	r8, r8, r6
	cmp	r8, r3
	bhi	.L215
	movw	r0, #24464
	movt	r0, 1
	mul	r0, r0, r6
	bl	EApiSleepns(PLT)
	ldr	r1, [r4, #156]
	mov	r2, #0
	ldr	r0, [r4, #168]
	bl	fseek(PLT)
	ldr	r3, [r4, #168]
	mov	r0, r5
	mov	r2, r6
	mov	r1, #1
	bl	fwrite(PLT)
	cmp	r0, r6
	bne	.L216
	ldr	r3, [r4, #156]
	add	r3, r3, r6
	str	r3, [r4, #156]
	b	.L185
.L213:
	ldr	ip, .L217+60
	mvn	r4, #1280
	ldr	r0, .L217+64
	mov	r3, #224
	ldr	r2, .L217+68
	ldr	r1, .L217+72
.LPIC349:
	add	ip, pc, ip
.LPIC350:
	add	r0, pc, r0
.LPIC347:
	add	r2, pc, r2
.LPIC348:
	add	r1, pc, r1
.L208:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L212:
	ldr	ip, .L217+76
	mvn	r4, #1280
	ldr	r0, .L217+80
	mov	r3, #215
	ldr	r2, .L217+84
	ldr	r1, .L217+88
.LPIC342:
	add	ip, pc, ip
.LPIC343:
	add	r0, pc, r0
.LPIC340:
	add	r2, pc, r2
.LPIC341:
	add	r1, pc, r1
	b	.L208
.L215:
	ldr	ip, .L217+92
	movw	r4, #64254
	ldr	r0, .L217+96
	movt	r4, 65535
	ldr	r2, .L217+100
	mov	r3, #194
	ldr	r1, .L217+104
.LPIC327:
	add	ip, pc, ip
.LPIC328:
	add	r0, pc, r0
.LPIC325:
	add	r2, pc, r2
.LPIC326:
	add	r1, pc, r1
	b	.L208
.L210:
	ldr	r0, .L217+108
	mvn	r4, #1280
	ldr	r3, .L217+112
	mov	r2, fp
	mov	r1, r10
	str	r4, [sp]
.LPIC308:
	add	r0, pc, r0
.LPIC309:
	add	r3, pc, r3
	str	r0, [sp, #8]
	str	r3, [sp, #4]
	mov	r0, #69
	mov	r3, #156
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L183
.L216:
	ldr	ip, .L217+116
	movw	r4, #64254
	ldr	r0, .L217+120
	movt	r4, 65535
	ldr	r2, .L217+124
	mov	r3, #203
	ldr	r1, .L217+128
.LPIC334:
	add	ip, pc, ip
.LPIC335:
	add	r0, pc, r0
.LPIC332:
	add	r2, pc, r2
.LPIC333:
	add	r1, pc, r1
	b	.L208
.L214:
	ldr	ip, .L217+132
	movw	r4, #64254
	ldr	r0, .L217+136
	movt	r4, 65535
	ldr	r2, .L217+140
	mov	r3, #188
	ldr	r1, .L217+144
.LPIC322:
	add	ip, pc, ip
.LPIC323:
	add	r0, pc, r0
.LPIC320:
	add	r2, pc, r2
.LPIC321:
	add	r1, pc, r1
	b	.L208
.L211:
	mov	r5, r10
	b	.L199
.L218:
	.align	2
.L217:
	.word	.LANCHOR0-(.LPIC297+8)
	.word	.LC3-(.LPIC295+8)
	.word	.LC1-(.LPIC296+8)
	.word	.LC7-(.LPIC302+8)
	.word	.LANCHOR0-(.LPIC312+8)
	.word	.LC8-(.LPIC316+8)
	.word	.LC3-(.LPIC314+8)
	.word	.LC1-(.LPIC315+8)
	.word	.LANCHOR0-(.LPIC338+8)
	.word	.LC6-(.LPIC355+8)
	.word	.LC5-(.LPIC356+8)
	.word	.LC3-(.LPIC353+8)
	.word	.LC1-(.LPIC354+8)
	.word	.LC8-(.LPIC361+8)
	.word	.LANCHOR0-(.LPIC318+8)
	.word	.LC13-(.LPIC349+8)
	.word	.LC5-(.LPIC350+8)
	.word	.LC3-(.LPIC347+8)
	.word	.LC1-(.LPIC348+8)
	.word	.LC12-(.LPIC342+8)
	.word	.LC5-(.LPIC343+8)
	.word	.LC3-(.LPIC340+8)
	.word	.LC1-(.LPIC341+8)
	.word	.LC10-(.LPIC327+8)
	.word	.LC5-(.LPIC328+8)
	.word	.LC3-(.LPIC325+8)
	.word	.LC1-(.LPIC326+8)
	.word	.LC4-(.LPIC308+8)
	.word	.LC5-(.LPIC309+8)
	.word	.LC11-(.LPIC334+8)
	.word	.LC5-(.LPIC335+8)
	.word	.LC3-(.LPIC332+8)
	.word	.LC1-(.LPIC333+8)
	.word	.LC9-(.LPIC322+8)
	.word	.LC5-(.LPIC323+8)
	.word	.LC3-(.LPIC320+8)
	.word	.LC1-(.LPIC321+8)
	.size	EmulateCOM0CBEeprom, .-EmulateCOM0CBEeprom
	.align	2
	.global	EmulateCOM0MEeprom
	.hidden	EmulateCOM0MEeprom
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EmulateCOM0MEeprom, %function
EmulateCOM0MEeprom:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r9, r3
	ldrb	r3, [r1, #3]	@ zero_extendqisi2
	sub	sp, sp, #60
	mov	r5, r1
	mov	r6, r2
	ldr	r4, .L253
	mov	r8, r0
	str	r3, [sp, #48]
	ldrb	r3, [r1, #2]	@ zero_extendqisi2
.LPIC365:
	add	r4, pc, r4
	ldr	r7, [sp, #96]
	ldr	fp, .L253+4
	str	r3, [sp, #44]
	ldrb	r3, [r1, #1]	@ zero_extendqisi2
	ldr	r2, [r4, #176]
.LPIC363:
	add	fp, pc, fp
	ldr	r10, .L253+8
	str	r3, [sp, #40]
	ldr	r1, [r4, #180]
	ldrb	r3, [r5]	@ zero_extendqisi2
	add	r2, r4, r2, lsl #2
	str	r0, [sp, #16]
.LPIC364:
	add	r10, pc, r10
	str	r1, [sp, #24]
	mov	r0, #76
	str	r3, [sp, #36]
	mov	r1, r10
	strd	r6, [sp, #28]
	ldr	r3, [r4, #172]
	str	r3, [sp, #20]
	ldr	r3, [r4, #184]
	str	r3, [sp, #12]
	ldr	r3, [r2, #20]
	mov	r2, fp
	str	r3, [sp, #8]
	ldr	r3, [r4, #192]
	str	r3, [sp]
	ldr	r3, .L253+12
.LPIC370:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mov	r3, #126
	bl	siFormattedMessage_M2(PLT)
	cmp	r6, #0
	beq	.L221
	ldr	r3, [r4, #176]
	cmp	r3, #1
	beq	.L222
	cmp	r3, #2
	bne	.L245
	cmp	r6, #1
	beq	.L246
	mov	r10, r5
	movw	r0, #48928
	ldrb	r2, [r10], #2	@ zero_extendqisi2
	movt	r0, 2
	sub	r6, r6, #2
	lsl	r2, r2, #8
	str	r2, [r4, #184]
	ldrb	r3, [r5, #1]	@ zero_extendqisi2
	orr	r3, r3, r8, lsl #16
	orr	r3, r3, r2
	str	r3, [r4, #184]
	bl	EApiSleepns(PLT)
	b	.L225
.L222:
	mov	r10, r5
	movw	r0, #24464
	ldrb	r3, [r10], #1	@ zero_extendqisi2
	movt	r0, 1
	sub	r6, r6, #1
	orr	r3, r3, r8, lsl #8
	str	r3, [r4, #184]
	bl	EApiSleepns(PLT)
.L225:
	ldr	r4, .L253+16
.LPIC380:
	add	r4, pc, r4
	ldr	r5, [r4, #184]
	ldr	r1, [r4, #180]
	mov	r0, r5
	bl	__aeabi_uidivmod(PLT)
	str	r5, [sp, #8]
	mov	r0, #76
	ldr	r3, [r4, #192]
	str	r1, [sp, #12]
	add	r1, r1, r6
	str	r1, [sp, #16]
	str	r3, [sp]
	ldr	r3, .L253+20
	ldr	r2, .L253+24
	ldr	r1, .L253+28
.LPIC384:
	add	r3, pc, r3
	str	r3, [sp, #4]
.LPIC382:
	add	r2, pc, r2
.LPIC383:
	add	r1, pc, r1
	mov	r3, #178
	bl	siFormattedMessage_M2(PLT)
	cmp	r6, #0
	bne	.L247
.L221:
	cmp	r7, #0
	beq	.L232
	ldr	r4, .L253+32
.LPIC406:
	add	r4, pc, r4
	ldr	r3, [r4, #184]
	ldr	r2, [r4, #172]
	add	r3, r7, r3
	cmp	r3, r2
	bhi	.L248
	movw	r0, #24464
	movt	r0, 1
	mul	r0, r0, r7
	bl	EApiSleepns(PLT)
	ldr	r1, [r4, #184]
	mov	r2, #0
	ldr	r0, [r4, #196]
	bl	fseek(PLT)
	ldr	r3, [r4, #196]
	mov	r2, r7
	mov	r0, r9
	mov	r1, #1
	bl	fread(PLT)
	cmp	r7, r0
	bne	.L249
	ldr	r3, [r4, #184]
	add	r3, r3, r7
	str	r3, [r4, #184]
.L232:
.L227:
	ldr	ip, .L253+36
	mov	r4, #0
	ldr	r0, .L253+40
	mov	r3, #232
	ldr	r2, .L253+44
	ldr	r1, .L253+48
.LPIC423:
	add	ip, pc, ip
.LPIC424:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC421:
	add	r2, pc, r2
.LPIC422:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
.L219:
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L245:
	ldr	r8, [r4, #184]
	ldr	r1, [r4, #180]
	mov	r0, r8
	bl	__aeabi_uidivmod(PLT)
	str	r8, [sp, #8]
	mov	r2, fp
	ldr	r3, [r4, #192]
	mov	r0, #76
	str	r3, [sp]
	mov	r3, r1
	str	r3, [sp, #12]
	add	r3, r6, r3
	str	r3, [sp, #16]
	mov	r1, r10
	ldr	r3, .L253+52
.LPIC429:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mov	r3, #178
	bl	siFormattedMessage_M2(PLT)
.L235:
	ldr	r4, .L253+56
.LPIC386:
	add	r4, pc, r4
	ldr	r10, [r4, #180]
	ldr	r8, [r4, #184]
	mov	r1, r10
	mov	r0, r8
	bl	__aeabi_uidivmod(PLT)
	add	r1, r1, r6
	cmp	r10, r1
	bcc	.L250
	ldr	r3, [r4, #172]
	add	r8, r8, r6
	cmp	r8, r3
	bhi	.L251
	movw	r0, #24464
	movt	r0, 1
	mul	r0, r0, r6
	bl	EApiSleepns(PLT)
	ldr	r1, [r4, #184]
	mov	r2, #0
	ldr	r0, [r4, #196]
	bl	fseek(PLT)
	ldr	r3, [r4, #196]
	mov	r0, r5
	mov	r2, r6
	mov	r1, #1
	bl	fwrite(PLT)
	cmp	r0, r6
	bne	.L252
	ldr	r3, [r4, #184]
	add	r3, r3, r6
	str	r3, [r4, #184]
	b	.L221
.L249:
	ldr	ip, .L253+60
	mvn	r4, #1280
	ldr	r0, .L253+64
	mov	r3, #224
	ldr	r2, .L253+68
	ldr	r1, .L253+72
.LPIC417:
	add	ip, pc, ip
.LPIC418:
	add	r0, pc, r0
.LPIC415:
	add	r2, pc, r2
.LPIC416:
	add	r1, pc, r1
.L244:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L248:
	ldr	ip, .L253+76
	mvn	r4, #1280
	ldr	r0, .L253+80
	mov	r3, #215
	ldr	r2, .L253+84
	ldr	r1, .L253+88
.LPIC410:
	add	ip, pc, ip
.LPIC411:
	add	r0, pc, r0
.LPIC408:
	add	r2, pc, r2
.LPIC409:
	add	r1, pc, r1
	b	.L244
.L251:
	ldr	ip, .L253+92
	movw	r4, #64254
	ldr	r0, .L253+96
	movt	r4, 65535
	ldr	r2, .L253+100
	mov	r3, #194
	ldr	r1, .L253+104
.LPIC395:
	add	ip, pc, ip
.LPIC396:
	add	r0, pc, r0
.LPIC393:
	add	r2, pc, r2
.LPIC394:
	add	r1, pc, r1
	b	.L244
.L246:
	ldr	r0, .L253+108
	mvn	r4, #1280
	ldr	r3, .L253+112
	mov	r2, fp
	mov	r1, r10
	str	r4, [sp]
.LPIC376:
	add	r0, pc, r0
.LPIC377:
	add	r3, pc, r3
	str	r0, [sp, #8]
	str	r3, [sp, #4]
	mov	r0, #69
	mov	r3, #156
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L219
.L252:
	ldr	ip, .L253+116
	movw	r4, #64254
	ldr	r0, .L253+120
	movt	r4, 65535
	ldr	r2, .L253+124
	mov	r3, #203
	ldr	r1, .L253+128
.LPIC402:
	add	ip, pc, ip
.LPIC403:
	add	r0, pc, r0
.LPIC400:
	add	r2, pc, r2
.LPIC401:
	add	r1, pc, r1
	b	.L244
.L250:
	ldr	ip, .L253+132
	movw	r4, #64254
	ldr	r0, .L253+136
	movt	r4, 65535
	ldr	r2, .L253+140
	mov	r3, #188
	ldr	r1, .L253+144
.LPIC390:
	add	ip, pc, ip
.LPIC391:
	add	r0, pc, r0
.LPIC388:
	add	r2, pc, r2
.LPIC389:
	add	r1, pc, r1
	b	.L244
.L247:
	mov	r5, r10
	b	.L235
.L254:
	.align	2
.L253:
	.word	.LANCHOR0-(.LPIC365+8)
	.word	.LC3-(.LPIC363+8)
	.word	.LC1-(.LPIC364+8)
	.word	.LC7-(.LPIC370+8)
	.word	.LANCHOR0-(.LPIC380+8)
	.word	.LC8-(.LPIC384+8)
	.word	.LC3-(.LPIC382+8)
	.word	.LC1-(.LPIC383+8)
	.word	.LANCHOR0-(.LPIC406+8)
	.word	.LC6-(.LPIC423+8)
	.word	.LC5-(.LPIC424+8)
	.word	.LC3-(.LPIC421+8)
	.word	.LC1-(.LPIC422+8)
	.word	.LC8-(.LPIC429+8)
	.word	.LANCHOR0-(.LPIC386+8)
	.word	.LC13-(.LPIC417+8)
	.word	.LC5-(.LPIC418+8)
	.word	.LC3-(.LPIC415+8)
	.word	.LC1-(.LPIC416+8)
	.word	.LC12-(.LPIC410+8)
	.word	.LC5-(.LPIC411+8)
	.word	.LC3-(.LPIC408+8)
	.word	.LC1-(.LPIC409+8)
	.word	.LC10-(.LPIC395+8)
	.word	.LC5-(.LPIC396+8)
	.word	.LC3-(.LPIC393+8)
	.word	.LC1-(.LPIC394+8)
	.word	.LC4-(.LPIC376+8)
	.word	.LC5-(.LPIC377+8)
	.word	.LC11-(.LPIC402+8)
	.word	.LC5-(.LPIC403+8)
	.word	.LC3-(.LPIC400+8)
	.word	.LC1-(.LPIC401+8)
	.word	.LC9-(.LPIC390+8)
	.word	.LC5-(.LPIC391+8)
	.word	.LC3-(.LPIC388+8)
	.word	.LC1-(.LPIC389+8)
	.size	EmulateCOM0MEeprom, .-EmulateCOM0MEeprom
	.align	2
	.global	EmulateEepromFS
	.hidden	EmulateEepromFS
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EmulateEepromFS, %function
EmulateEepromFS:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r6, r3
	ldrb	r3, [r2, #3]	@ zero_extendqisi2
	sub	sp, sp, #56
	mov	r5, r2
	mov	r4, r1
	ldr	r7, [sp, #92]
	mov	r8, r0
	str	r3, [sp, #48]
	ldrb	r3, [r2, #2]	@ zero_extendqisi2
	ldr	r10, .L289
	ldr	r9, .L289+4
	str	r3, [sp, #44]
	ldrb	r3, [r5, #1]	@ zero_extendqisi2
.LPIC431:
	add	r10, pc, r10
	ldr	r2, [r1, #4]
.LPIC432:
	add	r9, pc, r9
	str	r3, [sp, #40]
	ldr	r3, .L289+8
.LPIC433:
	add	r3, pc, r3
	add	r3, r3, r2, lsl #2
	ldrb	r2, [r5]	@ zero_extendqisi2
	str	r0, [sp, #16]
	mov	r0, #76
	strd	r6, [sp, #28]
	str	r2, [sp, #36]
	ldr	r2, [r1, #8]
	str	r2, [sp, #24]
	ldr	r2, [r1]
	str	r2, [sp, #20]
	ldr	r2, [r1, #12]
	str	r2, [sp, #12]
	mov	r2, r10
	ldr	r3, [r3, #20]
	str	r3, [sp, #8]
	ldr	r3, [r1, #20]
	mov	r1, r9
	str	r3, [sp]
	ldr	r3, .L289+12
.LPIC434:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mov	r3, #126
	bl	siFormattedMessage_M2(PLT)
	cmp	r6, #0
	beq	.L257
	ldr	r3, [r4, #4]
	cmp	r3, #1
	beq	.L258
	cmp	r3, #2
	bne	.L281
	cmp	r6, #1
	beq	.L282
	mov	r9, r5
	movw	r0, #48928
	ldrb	r2, [r9], #2	@ zero_extendqisi2
	movt	r0, 2
	sub	r6, r6, #2
	lsl	r2, r2, #8
	str	r2, [r4, #12]
	ldrb	r3, [r5, #1]	@ zero_extendqisi2
	orr	r3, r3, r8, lsl #16
	orr	r3, r3, r2
	str	r3, [r4, #12]
	bl	EApiSleepns(PLT)
	b	.L261
.L258:
	mov	r9, r5
	movw	r0, #24464
	ldrb	r3, [r9], #1	@ zero_extendqisi2
	movt	r0, 1
	sub	r6, r6, #1
	orr	r3, r3, r8, lsl #8
	str	r3, [r4, #12]
	bl	EApiSleepns(PLT)
.L261:
	ldr	r5, [r4, #12]
	ldr	r1, [r4, #8]
	mov	r0, r5
	bl	__aeabi_uidivmod(PLT)
	str	r1, [sp, #12]
	add	r1, r1, r6
	str	r1, [sp, #16]
	mov	r0, #76
	str	r5, [sp, #8]
	ldr	r3, [r4, #20]
	ldr	r2, .L289+16
	ldr	r1, .L289+20
	str	r3, [sp]
	ldr	r3, .L289+24
.LPIC439:
	add	r2, pc, r2
.LPIC440:
	add	r1, pc, r1
.LPIC441:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mov	r3, #178
	bl	siFormattedMessage_M2(PLT)
	cmp	r6, #0
	bne	.L283
.L257:
	cmp	r7, #0
	beq	.L268
	ldr	r3, [r4, #12]
	ldr	r2, [r4]
	add	r3, r7, r3
	cmp	r3, r2
	bhi	.L284
	movw	r0, #24464
	movt	r0, 1
	mul	r0, r0, r7
	bl	EApiSleepns(PLT)
	ldr	r1, [r4, #12]
	mov	r2, #0
	ldr	r0, [r4, #24]
	bl	fseek(PLT)
	ldr	r3, [r4, #24]
	mov	r2, r7
	ldr	r0, [sp, #88]
	mov	r1, #1
	bl	fread(PLT)
	cmp	r0, r7
	bne	.L285
	ldr	r3, [r4, #12]
	add	r3, r3, r7
	str	r3, [r4, #12]
.L268:
.L263:
	ldr	ip, .L289+28
	mov	r4, #0
	ldr	r0, .L289+32
	mov	r3, #232
	ldr	r2, .L289+36
	ldr	r1, .L289+40
.LPIC464:
	add	ip, pc, ip
.LPIC465:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC462:
	add	r2, pc, r2
.LPIC463:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
.L255:
	add	sp, sp, #56
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L281:
	ldr	r8, [r4, #12]
	ldr	r1, [r4, #8]
	mov	r0, r8
	bl	__aeabi_uidivmod(PLT)
	mov	r3, r1
	str	r8, [sp, #8]
	str	r3, [sp, #12]
	add	r3, r6, r3
	str	r3, [sp, #16]
	mov	r2, r10
	ldr	r3, .L289+44
	mov	r1, r9
	mov	r0, #76
.LPIC468:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [r4, #20]
	str	r3, [sp]
	mov	r3, #178
	bl	siFormattedMessage_M2(PLT)
.L271:
	ldr	r9, [r4, #8]
	ldr	r8, [r4, #12]
	mov	r1, r9
	mov	r0, r8
	bl	__aeabi_uidivmod(PLT)
	add	r1, r1, r6
	cmp	r9, r1
	bcc	.L286
	ldr	r3, [r4]
	add	r8, r8, r6
	cmp	r8, r3
	bhi	.L287
	movw	r0, #24464
	movt	r0, 1
	mul	r0, r0, r6
	bl	EApiSleepns(PLT)
	ldr	r1, [r4, #12]
	mov	r2, #0
	ldr	r0, [r4, #24]
	bl	fseek(PLT)
	ldr	r3, [r4, #24]
	mov	r0, r5
	mov	r2, r6
	mov	r1, #1
	bl	fwrite(PLT)
	cmp	r0, r6
	bne	.L288
	ldr	r3, [r4, #12]
	add	r3, r3, r6
	str	r3, [r4, #12]
	b	.L257
.L285:
	ldr	ip, .L289+48
	mvn	r4, #1280
	ldr	r0, .L289+52
	mov	r3, #224
	ldr	r2, .L289+56
	ldr	r1, .L289+60
.LPIC460:
	add	ip, pc, ip
.LPIC461:
	add	r0, pc, r0
.LPIC458:
	add	r2, pc, r2
.LPIC459:
	add	r1, pc, r1
.L280:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #56
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L284:
	ldr	ip, .L289+64
	mvn	r4, #1280
	ldr	r0, .L289+68
	mov	r3, #215
	ldr	r2, .L289+72
	ldr	r1, .L289+76
.LPIC456:
	add	ip, pc, ip
.LPIC457:
	add	r0, pc, r0
.LPIC454:
	add	r2, pc, r2
.LPIC455:
	add	r1, pc, r1
	b	.L280
.L287:
	ldr	ip, .L289+80
	movw	r4, #64254
	ldr	r0, .L289+84
	movt	r4, 65535
	ldr	r2, .L289+88
	mov	r3, #194
	ldr	r1, .L289+92
.LPIC448:
	add	ip, pc, ip
.LPIC449:
	add	r0, pc, r0
.LPIC446:
	add	r2, pc, r2
.LPIC447:
	add	r1, pc, r1
	b	.L280
.L282:
	ldr	r0, .L289+96
	mvn	r4, #1280
	ldr	r3, .L289+100
	mov	r2, r10
	mov	r1, r9
	str	r4, [sp]
.LPIC437:
	add	r0, pc, r0
.LPIC438:
	add	r3, pc, r3
	str	r0, [sp, #8]
	str	r3, [sp, #4]
	mov	r0, #69
	mov	r3, #156
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L255
.L288:
	ldr	ip, .L289+104
	movw	r4, #64254
	ldr	r0, .L289+108
	movt	r4, 65535
	ldr	r2, .L289+112
	mov	r3, #203
	ldr	r1, .L289+116
.LPIC452:
	add	ip, pc, ip
.LPIC453:
	add	r0, pc, r0
.LPIC450:
	add	r2, pc, r2
.LPIC451:
	add	r1, pc, r1
	b	.L280
.L286:
	ldr	ip, .L289+120
	movw	r4, #64254
	ldr	r0, .L289+124
	movt	r4, 65535
	ldr	r2, .L289+128
	mov	r3, #188
	ldr	r1, .L289+132
.LPIC444:
	add	ip, pc, ip
.LPIC445:
	add	r0, pc, r0
.LPIC442:
	add	r2, pc, r2
.LPIC443:
	add	r1, pc, r1
	b	.L280
.L283:
	mov	r5, r9
	b	.L271
.L290:
	.align	2
.L289:
	.word	.LC3-(.LPIC431+8)
	.word	.LC1-(.LPIC432+8)
	.word	.LANCHOR0-(.LPIC433+8)
	.word	.LC7-(.LPIC434+8)
	.word	.LC3-(.LPIC439+8)
	.word	.LC1-(.LPIC440+8)
	.word	.LC8-(.LPIC441+8)
	.word	.LC6-(.LPIC464+8)
	.word	.LC5-(.LPIC465+8)
	.word	.LC3-(.LPIC462+8)
	.word	.LC1-(.LPIC463+8)
	.word	.LC8-(.LPIC468+8)
	.word	.LC13-(.LPIC460+8)
	.word	.LC5-(.LPIC461+8)
	.word	.LC3-(.LPIC458+8)
	.word	.LC1-(.LPIC459+8)
	.word	.LC12-(.LPIC456+8)
	.word	.LC5-(.LPIC457+8)
	.word	.LC3-(.LPIC454+8)
	.word	.LC1-(.LPIC455+8)
	.word	.LC10-(.LPIC448+8)
	.word	.LC5-(.LPIC449+8)
	.word	.LC3-(.LPIC446+8)
	.word	.LC1-(.LPIC447+8)
	.word	.LC4-(.LPIC437+8)
	.word	.LC5-(.LPIC438+8)
	.word	.LC11-(.LPIC452+8)
	.word	.LC5-(.LPIC453+8)
	.word	.LC3-(.LPIC450+8)
	.word	.LC1-(.LPIC451+8)
	.word	.LC9-(.LPIC444+8)
	.word	.LC5-(.LPIC445+8)
	.word	.LC3-(.LPIC442+8)
	.word	.LC1-(.LPIC443+8)
	.size	EmulateEepromFS, .-EmulateEepromFS
	.align	2
	.global	EmulateCmdDevice
	.hidden	EmulateCmdDevice
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EmulateCmdDevice, %function
EmulateCmdDevice:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	sub	sp, sp, #52
	str	r0, [sp, #16]
	mov	r4, r2
	mov	r5, r1
	mov	r6, r3
	ldr	r1, [r1]
	ldr	r2, .L328
	ldr	r0, [r5, #4]
	ldr	r7, [sp, #84]
.LPIC471:
	add	r2, pc, r2
	ldr	r9, .L328+4
	str	r0, [sp, #12]
	add	r2, r2, r1, lsl #2
	ldr	r1, [r5, #12]
	str	r3, [sp, #20]
.LPIC470:
	add	r9, pc, r9
	str	r7, [sp, #24]
	ldrb	r0, [r4, #3]	@ zero_extendqisi2
	ldr	r3, .L328+8
	ldr	r8, [sp, #80]
	str	r0, [sp, #40]
	ldrb	r0, [r4, #2]	@ zero_extendqisi2
.LPIC472:
	add	r3, pc, r3
	str	r0, [sp, #36]
	ldrb	r0, [r4, #1]	@ zero_extendqisi2
	str	r0, [sp, #32]
	ldrb	r0, [r4]	@ zero_extendqisi2
	str	r0, [sp, #28]
	mov	r0, #76
	ldr	r2, [r2, #20]
	stm	sp, {r1, r3}
	movw	r3, #258
	mov	r1, r9
	str	r2, [sp, #8]
	ldr	r2, .L328+12
.LPIC469:
	add	r2, pc, r2
	bl	siFormattedMessage_M2(PLT)
	cmp	r6, #0
	beq	.L301
	ldr	r3, [r5]
	cmp	r3, #1
	beq	.L295
	cmp	r3, #2
	beq	.L296
.L297:
	movw	r0, #24464
	movt	r0, 1
	mul	r0, r0, r6
	bl	EApiSleepns(PLT)
	ldr	r4, [r5, #16]
	ldr	r3, [r4]
	cmn	r3, #1
	beq	.L301
.L323:
	ldr	r2, [r5, #4]
.L304:
	cmp	r2, r3
	beq	.L325
	ldr	r3, [r4, #12]!
	cmn	r3, #1
	bne	.L304
.L301:
	cmp	r7, #0
	bne	.L326
.L294:
	ldr	ip, .L328+16
	mov	r4, #0
	ldr	r0, .L328+20
	movw	r3, #330
	ldr	r2, .L328+24
	ldr	r1, .L328+28
.LPIC479:
	add	ip, pc, ip
.LPIC480:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC477:
	add	r2, pc, r2
.LPIC478:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
.L300:
.L291:
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L296:
	cmp	r6, #1
	beq	.L327
	ldrb	r3, [r4]	@ zero_extendqisi2
	movw	r0, #48928
	movt	r0, 2
	sub	r6, r6, #2
	lsl	r3, r3, #8
	str	r3, [r5, #4]
	ldrb	r2, [r4, #1]	@ zero_extendqisi2
	orr	r3, r2, r3
	str	r3, [r5, #4]
	bl	EApiSleepns(PLT)
	b	.L298
.L295:
	ldrb	r3, [r4]	@ zero_extendqisi2
	movw	r0, #24464
	movt	r0, 1
	sub	r6, r6, #1
	str	r3, [r5, #4]
	bl	EApiSleepns(PLT)
.L298:
	cmp	r6, #0
	bne	.L297
	cmp	r7, #0
	beq	.L294
.L326:
	movw	r0, #24464
	movt	r0, 1
	mul	r0, r0, r7
	bl	EApiSleepns(PLT)
	ldr	r4, [r5, #16]
	ldr	r3, [r4]
	cmn	r3, #1
	beq	.L294
	add	r4, r4, #60
	b	.L307
.L305:
	pld	[r4]
	add	r4, r4, #12
	ldr	r3, [r4, #-60]
	cmn	r3, #1
	beq	.L294
.L307:
	ldr	r2, [r5, #4]
	cmp	r2, r3
	bne	.L305
	ldr	r6, [r4, #-56]
	mov	r2, r7
	ldr	r1, [r4, #-52]
	cmp	r7, r6
	bls	.L306
	mov	r2, r6
	mov	r0, r8
	bl	memcpy(PLT)
	mov	r2, #255
	sub	r1, r7, r6
	add	r0, r8, r6
	bl	memset(PLT)
	b	.L305
.L325:
	ldr	r2, [r4, #4]
	mov	r1, r8
	ldr	r0, [r4, #8]
	cmp	r7, r2
	movcc	r2, r7
	bl	memcpy(PLT)
	ldr	r3, [r4, #12]!
	cmn	r3, #1
	bne	.L323
	b	.L301
.L306:
	mov	r0, r8
	bl	memcpy(PLT)
	b	.L305
.L327:
	ldr	r2, .L328+32
	mvn	r4, #1280
	ldr	r0, .L328+36
	mov	r3, #284
	mov	r1, r9
	str	r4, [sp]
.LPIC476:
	add	r2, pc, r2
	str	r2, [sp, #4]
.LPIC475:
	add	r0, pc, r0
	ldr	r2, .L328+40
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC473:
	add	r2, pc, r2
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L291
.L329:
	.align	2
.L328:
	.word	.LANCHOR0-(.LPIC471+8)
	.word	.LC1-(.LPIC470+8)
	.word	.LC2-(.LPIC472+8)
	.word	.LC0-(.LPIC469+8)
	.word	.LC6-(.LPIC479+8)
	.word	.LC5-(.LPIC480+8)
	.word	.LC3-(.LPIC477+8)
	.word	.LC1-(.LPIC478+8)
	.word	.LC5-(.LPIC476+8)
	.word	.LC4-(.LPIC475+8)
	.word	.LC3-(.LPIC473+8)
	.size	EmulateCmdDevice, .-EmulateCmdDevice
	.section	.rodata.str1.4
	.align	2
.LC14:
	.ascii	"rb+\000"
	.align	2
.LC15:
	.ascii	"wb+\000"
	.text
	.align	2
	.global	OpenI2CEepromFiles
	.hidden	OpenI2CEepromFiles
	.syntax unified
	.arm
	.fpu vfpv3
	.type	OpenI2CEepromFiles, %function
OpenI2CEepromFiles:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r7, .L339
	ldr	r8, .L339+4
	ldr	r9, .L339+8
.LPIC481:
	add	r7, pc, r7
	add	r4, r7, #200
	add	r7, r7, #224
.LPIC482:
	add	r8, pc, r8
.LPIC483:
	add	r9, pc, r9
	b	.L334
.L332:
	cmp	r4, r7
	beq	.L337
.L334:
	ldr	r5, [r4]
	mov	r1, r8
	ldr	r0, [r5, #20]
	bl	fopen(PLT)
	ldr	r6, [r4], #4
	str	r0, [r5, #24]
	ldr	r0, [r6, #24]
	cmp	r0, #0
	beq	.L338
.L331:
	mov	r2, #2
	mov	r1, #0
	bl	fseek(PLT)
	ldr	r3, [r4, #-4]
	ldr	r0, [r3, #24]
	bl	ftell(PLT)
	ldr	r3, [r4, #-4]
	ldr	r2, [r3]
	cmp	r0, r2
	bge	.L332
	ldr	r0, [r3, #24]
	bl	rewind(PLT)
	ldr	r1, [r4, #-4]
	ldr	r3, [r1, #24]
	ldr	r2, [r1]
	ldr	r0, [r1, #16]
	mov	r1, #1
	bl	fwrite(PLT)
	cmp	r4, r7
	bne	.L334
.L337:
	mov	r0, #0
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L338:
	ldr	r0, [r6, #20]
	mov	r1, r9
	bl	fopen(PLT)
	ldr	r3, [r4, #-4]
	str	r0, [r6, #24]
	ldr	r0, [r3, #24]
	cmp	r0, #0
	beq	.L332
	b	.L331
.L340:
	.align	2
.L339:
	.word	.LANCHOR0-(.LPIC481+8)
	.word	.LC14-(.LPIC482+8)
	.word	.LC15-(.LPIC483+8)
	.size	OpenI2CEepromFiles, .-OpenI2CEepromFiles
	.align	2
	.global	CloseI2CEepromFiles
	.hidden	CloseI2CEepromFiles
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CloseI2CEepromFiles, %function
CloseI2CEepromFiles:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, #0
	ldr	r5, .L349
.LPIC484:
	add	r5, pc, r5
	add	r4, r5, #200
	add	r5, r5, #224
.L343:
	ldr	r3, [r4], #4
	ldr	r0, [r3, #24]
	cmp	r0, #0
	beq	.L342
	bl	fclose(PLT)
	ldr	r3, [r4, #-4]
	str	r6, [r3, #24]
.L342:
	cmp	r4, r5
	bne	.L343
	mov	r0, #0
	pop	{r4, r5, r6, pc}
.L350:
	.align	2
.L349:
	.word	.LANCHOR0-(.LPIC484+8)
	.size	CloseI2CEepromFiles, .-CloseI2CEepromFiles
	.section	.rodata.str1.4
	.align	2
.LC16:
	.ascii	"EApiI2CGetBusCapEmul\000"
	.align	2
.LC17:
	.ascii	"Unrecognised I2C ID\000"
	.text
	.align	2
	.global	EApiI2CGetBusCapEmul
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiI2CGetBusCapEmul, %function
EApiI2CGetBusCapEmul:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0
	push	{r4, lr}
	sub	sp, sp, #16
	beq	.L354
	cmp	r0, #1
	beq	.L355
	cmp	r0, #2
	beq	.L356
	ldr	ip, .L358
	mvn	r4, #768
	ldr	r0, .L358+4
	movw	r3, #663
	ldr	r2, .L358+8
	ldr	r1, .L358+12
.LPIC487:
	add	ip, pc, ip
.LPIC488:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC485:
	add	r2, pc, r2
.LPIC486:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L354:
	mov	r2, #65536
.L352:
.L353:
	ldr	r3, .L358+16
	mov	r4, #0
	ldr	r0, .L358+20
	str	r2, [r1]
	ldr	r2, .L358+24
.LPIC491:
	add	r3, pc, r3
	ldr	r1, .L358+28
.LPIC492:
	add	r0, pc, r0
	str	r3, [sp, #8]
	mov	r3, #656
	str	r0, [sp, #4]
.LPIC489:
	add	r2, pc, r2
.LPIC490:
	add	r1, pc, r1
	str	r4, [sp]
	mov	r0, #76
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L355:
	mov	r2, #256
	b	.L352
.L356:
	mov	r2, #32
	b	.L352
.L359:
	.align	2
.L358:
	.word	.LC17-(.LPIC487+8)
	.word	.LC5-(.LPIC488+8)
	.word	.LC16-(.LPIC485+8)
	.word	.LC1-(.LPIC486+8)
	.word	.LC6-(.LPIC491+8)
	.word	.LC5-(.LPIC492+8)
	.word	.LC16-(.LPIC489+8)
	.word	.LC1-(.LPIC490+8)
	.size	EApiI2CGetBusCapEmul, .-EApiI2CGetBusCapEmul
	.section	.rodata.str1.4
	.align	2
.LC18:
	.ascii	"EApiI2CWriteReadEmul\000"
	.align	2
.LC19:
	.ascii	"WriteBCnt>(pMaxBlkLen+1)\000"
	.align	2
.LC20:
	.ascii	"ReadBCnt>(pMaxBlkLen+1)\000"
	.align	2
.LC21:
	.ascii	"ADDR=%02X\012\000"
	.align	2
.LC22:
	.ascii	"Info\000"
	.align	2
.LC23:
	.ascii	"Device Not Present\000"
	.text
	.align	2
	.global	EApiI2CWriteReadEmul
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiI2CWriteReadEmul, %function
EApiI2CWriteReadEmul:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	subs	r4, r0, #0
	sub	sp, sp, #20
	mov	r6, r2
	mov	r5, r3
	ldr	r7, [sp, #48]
	ldr	r8, [sp, #52]
	beq	.L372
	cmp	r4, #1
	beq	.L373
	cmp	r4, #2
	beq	.L374
	ldr	ip, .L389
	mvn	r4, #768
	ldr	r0, .L389+4
	movw	r3, #757
	ldr	r2, .L389+8
	ldr	r1, .L389+12
.LPIC495:
	add	ip, pc, ip
.LPIC496:
	add	r0, pc, r0
.LPIC493:
	add	r2, pc, r2
.LPIC494:
	add	r1, pc, r1
.L386:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L372:
	mov	r3, #1
	movt	r3, 1
.L361:
	cmp	r5, r3
	bhi	.L387
	cmp	r8, r3
	bhi	.L388
	lsl	r3, r1, #8
	mov	r0, #76
	add	r4, r4, r4, lsl #1
	and	r2, r3, #63488
	cmp	r2, #61440
	ldr	r2, .L389+16
	ldrbeq	r1, [r6], #1	@ zero_extendqisi2
	movne	r9, r1
	subeq	r5, r5, #1
.LPIC505:
	add	r2, pc, r2
	orreq	r9, r1, r3
	ldr	r3, .L389+20
	ldr	r1, .L389+24
	str	r9, [sp, #8]
.LPIC507:
	add	r3, pc, r3
	str	r3, [sp, #4]
.LPIC506:
	add	r1, pc, r1
	ldr	r3, .L389+28
.LPIC508:
	add	r3, pc, r3
	str	r3, [sp]
	movw	r3, #727
	bl	siFormattedMessage_M2(PLT)
	ldr	r3, .L389+32
.LPIC509:
	add	r3, pc, r3
	add	r3, r3, r4, lsl #2
	ldr	r3, [r3, #4]
	ldr	r0, [r3]
	cmn	r0, #1
	bne	.L371
	b	.L367
.L368:
	ldr	r0, [r3, #12]!
	cmn	r0, #1
	beq	.L367
.L371:
	cmp	r0, r9
	bne	.L368
	ldr	lr, [r3, #4]
	cmp	r5, #0
	subne	r5, r5, #1
	cmp	r8, #0
	subne	r8, r8, #1
	ldr	r0, [r3, #8]
	mov	r2, r5
	mov	r3, r7
	mov	r1, r6
	mov	ip, lr
	str	r8, [sp, #48]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	ip
.L367:
	ldr	ip, .L389+36
	mvn	r4, #1024
	ldr	r0, .L389+40
	movw	r3, #749
	ldr	r2, .L389+44
	ldr	r1, .L389+48
.LPIC512:
	add	ip, pc, ip
.LPIC513:
	add	r0, pc, r0
.LPIC510:
	add	r2, pc, r2
.LPIC511:
	add	r1, pc, r1
	b	.L386
.L373:
	movw	r3, #257
	b	.L361
.L374:
	mov	r3, #33
	b	.L361
.L387:
	ldr	ip, .L389+52
	movw	r4, #65277
	ldr	r0, .L389+56
	movt	r4, 65535
	ldr	r2, .L389+60
	movw	r3, #701
	ldr	r1, .L389+64
.LPIC499:
	add	ip, pc, ip
.LPIC500:
	add	r0, pc, r0
.LPIC497:
	add	r2, pc, r2
.LPIC498:
	add	r1, pc, r1
	b	.L386
.L388:
	ldr	ip, .L389+68
	movw	r4, #65277
	ldr	r0, .L389+72
	movt	r4, 65535
	ldr	r2, .L389+76
	movw	r3, #707
	ldr	r1, .L389+80
.LPIC503:
	add	ip, pc, ip
.LPIC504:
	add	r0, pc, r0
.LPIC501:
	add	r2, pc, r2
.LPIC502:
	add	r1, pc, r1
	b	.L386
.L390:
	.align	2
.L389:
	.word	.LC17-(.LPIC495+8)
	.word	.LC5-(.LPIC496+8)
	.word	.LC18-(.LPIC493+8)
	.word	.LC1-(.LPIC494+8)
	.word	.LC18-(.LPIC505+8)
	.word	.LC21-(.LPIC507+8)
	.word	.LC1-(.LPIC506+8)
	.word	.LC22-(.LPIC508+8)
	.word	.LANCHOR1-(.LPIC509+8)
	.word	.LC23-(.LPIC512+8)
	.word	.LC5-(.LPIC513+8)
	.word	.LC18-(.LPIC510+8)
	.word	.LC1-(.LPIC511+8)
	.word	.LC19-(.LPIC499+8)
	.word	.LC5-(.LPIC500+8)
	.word	.LC18-(.LPIC497+8)
	.word	.LC1-(.LPIC498+8)
	.word	.LC20-(.LPIC503+8)
	.word	.LC5-(.LPIC504+8)
	.word	.LC18-(.LPIC501+8)
	.word	.LC1-(.LPIC502+8)
	.size	EApiI2CWriteReadEmul, .-EApiI2CWriteReadEmul
	.hidden	EmulatedInterfaces
	.global	EmulatedInterfaces
	.hidden	LVDS_2I2CDevices
	.global	LVDS_2I2CDevices
	.hidden	LVDS_1I2CDevices
	.global	LVDS_1I2CDevices
	.hidden	ExternalI2CDevices
	.global	ExternalI2CDevices
	.hidden	HWMon
	.global	HWMon
	.section	.rodata.str1.4
	.align	2
.LC24:
	.ascii	"ADT7447\000"
	.hidden	HwmonCmdIndx
	.global	HwmonCmdIndx
	.hidden	SystemTemp
	.global	SystemTemp
	.hidden	ChipsetTemp
	.global	ChipsetTemp
	.hidden	CpuTemp
	.global	CpuTemp
	.hidden	OpenFiles
	.global	OpenFiles
	.align	2
.LC25:
	.ascii	"EeePExp.EEPROM.EMUL\000"
	.hidden	EeePExpEEPROM
	.global	EeePExpEEPROM
	.align	2
.LC26:
	.ascii	"COM0R20-CB.EEPROM.EMUL\000"
	.hidden	COM0CBEEPROM
	.global	COM0CBEEPROM
	.align	2
.LC27:
	.ascii	"COM0R20-M.EEPROM.EMUL\000"
	.hidden	COM0MEEPROM
	.global	COM0MEEPROM
	.align	2
.LC28:
	.ascii	"EPI.EEPROM.EMUL\000"
	.hidden	EPIEEPROM
	.global	EPIEEPROM
	.align	2
.LC29:
	.ascii	"UDS.EEPROM.EMUL\000"
	.hidden	UDSEEPROM
	.global	UDSEEPROM
	.align	2
.LC30:
	.ascii	"DID.EEPROM.EMUL\000"
	.hidden	DIDEEPROM
	.global	DIDEEPROM
	.hidden	StdExt
	.global	StdExt
	.align	2
.LC31:
	.ascii	"   \000"
	.align	2
.LC32:
	.ascii	"Std\000"
	.align	2
.LC33:
	.ascii	"Ext\000"
	.data
	.align	2
	.type	SystemTemp, %object
	.size	SystemTemp, 1
SystemTemp:
	.ascii	"\322"
	.space	3
	.type	ChipsetTemp, %object
	.size	ChipsetTemp, 1
ChipsetTemp:
	.ascii	"."
	.space	3
	.type	CpuTemp, %object
	.size	CpuTemp, 1
CpuTemp:
	.ascii	"8"
	.space	3
	.type	EPIEEPROM, %object
	.size	EPIEEPROM, 512
EPIEEPROM:
	.byte	0
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	0
	.byte	12
	.byte	-12
	.byte	4
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	15
	.byte	1
	.byte	3
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-18
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-81
	.byte	-64
	.byte	0
	.byte	69
	.byte	64
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	-96
	.byte	15
	.byte	32
	.byte	-32
	.byte	48
	.byte	88
	.byte	25
	.byte	32
	.byte	24
	.byte	72
	.byte	18
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	-3
	.byte	0
	.byte	50
	.byte	120
	.byte	30
	.byte	50
	.byte	5
	.byte	0
	.byte	10
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	0
	.byte	0
	.byte	0
	.byte	-2
	.byte	0
	.byte	99
	.byte	111
	.byte	110
	.byte	103
	.byte	97
	.byte	116
	.byte	101
	.byte	99
	.byte	32
	.byte	65
	.byte	71
	.byte	10
	.byte	10
	.byte	0
	.byte	0
	.byte	0
	.byte	14
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-79
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	UDSEEPROM, %object
	.size	UDSEEPROM, 512
UDSEEPROM:
	.byte	0
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	0
	.byte	4
	.byte	33
	.byte	88
	.byte	89
	.byte	113
	.byte	-53
	.byte	-94
	.byte	4
	.byte	30
	.byte	17
	.byte	1
	.byte	3
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-10
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-84
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	-128
	.byte	12
	.byte	32
	.byte	0
	.byte	49
	.byte	-32
	.byte	45
	.byte	16
	.byte	42
	.byte	-128
	.byte	-94
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-2
	.byte	0
	.byte	75
	.byte	111
	.byte	110
	.byte	116
	.byte	114
	.byte	111
	.byte	110
	.byte	95
	.byte	68
	.byte	69
	.byte	71
	.byte	10
	.byte	32
	.byte	0
	.byte	0
	.byte	0
	.byte	15
	.byte	0
	.byte	0
	.byte	12
	.byte	0
	.byte	-36
	.byte	-2
	.byte	0
	.byte	-20
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	17
	.byte	0
	.byte	87
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	DIDEEPROM, %object
	.size	DIDEEPROM, 512
DIDEEPROM:
	.byte	16
	.byte	76
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	12
	.byte	68
	.byte	69
	.byte	77
	.byte	86
	.byte	0
	.byte	22
	.byte	0
	.byte	0
	.byte	0
	.byte	28
	.byte	8
	.byte	0
	.byte	3
	.byte	0
	.byte	20
	.byte	47
	.byte	42
	.byte	0
	.byte	-128
	.byte	-1
	.byte	4
	.byte	-105
	.byte	1
	.byte	47
	.byte	-128
	.byte	111
	.byte	0
	.byte	-1
	.byte	3
	.byte	41
	.byte	0
	.byte	0
	.byte	-128
	.byte	2
	.byte	0
	.byte	12
	.byte	0
	.byte	13
	.byte	20
	.byte	80
	.byte	-1
	.byte	4
	.byte	-1
	.byte	3
	.byte	25
	.byte	3
	.byte	0
	.byte	30
	.byte	30
	.byte	7
	.byte	20
	.byte	13
	.byte	0
	.byte	6
	.byte	15
	.byte	15
	.byte	15
	.byte	100
	.byte	35
	.byte	35
	.byte	15
	.byte	0
	.byte	10
	.byte	18
	.byte	0
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	17
	.byte	0
	.byte	-68
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.bss
	.align	2
	.type	EeePExpEEPROM, %object
	.size	EeePExpEEPROM, 1024
EeePExpEEPROM:
	.space	1024
	.type	COM0CBEEPROM, %object
	.size	COM0CBEEPROM, 4096
COM0CBEEPROM:
	.space	4096
	.type	COM0MEEPROM, %object
	.size	COM0MEEPROM, 2048
COM0MEEPROM:
	.space	2048
	.section	.data.rel.local,"aw"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	HWMon, %object
	.size	HWMon, 20
HWMon:
	.word	1
	.word	0
	.word	0
	.word	.LC24
	.word	HwmonCmdIndx
	.type	StdExt, %object
	.size	StdExt, 12
StdExt:
	.word	.LC31
	.word	.LC32
	.word	.LC33
	.type	DIDEEPromData, %object
	.size	DIDEEPromData, 28
DIDEEPromData:
	.word	512
	.word	2
	.word	256
	.word	0
	.word	DIDEEPROM
	.word	.LC30
	.word	0
	.type	UDSEEPromData, %object
	.size	UDSEEPromData, 28
UDSEEPromData:
	.word	512
	.word	2
	.word	16
	.word	0
	.word	UDSEEPROM
	.word	.LC29
	.word	0
	.type	EPIEEPromData, %object
	.size	EPIEEPromData, 28
EPIEEPromData:
	.word	512
	.word	2
	.word	16
	.word	0
	.word	EPIEEPROM
	.word	.LC28
	.word	0
	.type	EeePExpEEPromData, %object
	.size	EeePExpEEPromData, 28
EeePExpEEPromData:
	.word	1024
	.word	1
	.word	8
	.word	0
	.word	EeePExpEEPROM
	.word	.LC25
	.word	0
	.type	COM0CBEEPromData, %object
	.size	COM0CBEEPromData, 28
COM0CBEEPromData:
	.word	4096
	.word	2
	.word	64
	.word	0
	.word	COM0CBEEPROM
	.word	.LC26
	.word	0
	.type	COM0MEEPromData, %object
	.size	COM0MEEPromData, 28
COM0MEEPromData:
	.word	2048
	.word	2
	.word	16
	.word	0
	.word	COM0MEEPROM
	.word	.LC27
	.word	0
	.type	OpenFiles, %object
	.size	OpenFiles, 24
OpenFiles:
	.word	EeePExpEEPromData
	.word	COM0CBEEPromData
	.word	COM0MEEPromData
	.word	EPIEEPromData
	.word	UDSEEPromData
	.word	DIDEEPromData
	.type	HwmonCmdIndx, %object
	.size	HwmonCmdIndx, 48
HwmonCmdIndx:
	.word	16
	.word	1
	.word	CpuTemp
	.word	17
	.word	1
	.word	ChipsetTemp
	.word	18
	.word	1
	.word	SystemTemp
	.word	-1
	.word	0
	.word	0
	.section	.data.rel.ro.local,"aw"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	EmulatedInterfaces, %object
	.size	EmulatedInterfaces, 36
EmulatedInterfaces:
	.word	0
	.word	ExternalI2CDevices
	.word	65536
	.word	1
	.word	LVDS_1I2CDevices
	.word	256
	.word	2
	.word	LVDS_2I2CDevices
	.word	32
	.type	LVDS_2I2CDevices, %object
	.size	LVDS_2I2CDevices, 36
LVDS_2I2CDevices:
	.word	160
	.word	EmulateEPIEeprom
	.word	0
	.word	164
	.word	EmulateDIDEeprom
	.word	0
	.word	-1
	.word	0
	.word	0
	.type	LVDS_1I2CDevices, %object
	.size	LVDS_1I2CDevices, 48
LVDS_1I2CDevices:
	.word	160
	.word	EmulateUDSEeprom
	.word	0
	.word	164
	.word	EmulateDIDEeprom
	.word	0
	.word	62037
	.word	EmulateDIDEeprom
	.word	0
	.word	-1
	.word	0
	.word	0
	.type	ExternalI2CDevices, %object
	.size	ExternalI2CDevices, 96
ExternalI2CDevices:
	.word	82
	.word	EmulateHWMonDevice
	.word	0
	.word	160
	.word	EmulateCOM0MEeprom
	.word	0
	.word	162
	.word	EmulateEeePExpEeprom
	.word	0
	.word	164
	.word	EmulateEeePExpEeprom
	.word	1
	.word	166
	.word	EmulateEeePExpEeprom
	.word	2
	.word	168
	.word	EmulateEeePExpEeprom
	.word	3
	.word	174
	.word	EmulateCOM0CBEeprom
	.word	0
	.word	-1
	.word	0
	.word	0
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
