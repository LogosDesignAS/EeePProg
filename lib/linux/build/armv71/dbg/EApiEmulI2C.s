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
	.file	"EApiEmulI2C.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.hidden	StdExt
	.global	StdExt
	.section	.rodata
	.align	2
.LC0:
	.ascii	"   \000"
	.align	2
.LC1:
	.ascii	"Std\000"
	.align	2
.LC2:
	.ascii	"Ext\000"
	.section	.data.rel.local,"aw"
	.align	2
	.type	StdExt, %object
	.size	StdExt, 12
StdExt:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.section	.rodata
	.align	2
.LC3:
	.ascii	"EmulateEepromFS\000"
	.align	2
.LC4:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EA"
	.ascii	"piEmulI2C.c\000"
	.align	2
.LC5:
	.ascii	"%3s CIDX=%04lX Arg1=%1lX DLEN=%04lX PLEN=%04lX WLEN"
	.ascii	"=%04lX RLEN=%04lX %02X,%02X,%02X,%02X\012\000"
	.align	2
.LC6:
	.ascii	"STD INDEX Sent to EXT INDEX EEPROM\000"
	.align	2
.LC7:
	.ascii	"%s\012\000"
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
	.align	2
.LC14:
	.ascii	"\000"
	.text
	.align	2
	.global	EmulateEepromFS
	.hidden	EmulateEepromFS
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EmulateEepromFS, %function
EmulateEepromFS:
.LFB1:
	.file 1 "/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EApiEmulI2C.c"
	.loc 1 118 1
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, fp, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #16
	.cfi_def_cfa 11, 4
	sub	sp, sp, #84
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	str	r2, [fp, #-40]
	str	r3, [fp, #-44]
	.loc 1 119 16
	mov	r3, #0
	str	r3, [fp, #-24]
	.loc 1 127 22
	ldr	r3, [fp, #-36]
	ldr	r3, [r3, #20]
	.loc 1 130 29
	ldr	r2, [fp, #-36]
	ldr	r1, [r2, #4]
	.loc 1 122 9
	ldr	r2, .L16
.LPIC0:
	add	r2, pc, r2
	ldr	r2, [r2, r1, lsl #2]
	ldr	r1, [fp, #-36]
	ldr	r1, [r1, #12]
	.loc 1 133 22
	ldr	r0, [fp, #-36]
	ldr	r0, [r0]
	.loc 1 134 22
	ldr	ip, [fp, #-36]
	ldr	ip, [ip, #8]
	.loc 1 137 23
	ldr	lr, [fp, #-40]
	ldrb	lr, [lr]	@ zero_extendqisi2
	.loc 1 122 9
	mov	r4, lr
	.loc 1 138 23
	ldr	lr, [fp, #-40]
	add	lr, lr, #1
	ldrb	lr, [lr]	@ zero_extendqisi2
	.loc 1 122 9
	mov	r5, lr
	.loc 1 139 23
	ldr	lr, [fp, #-40]
	add	lr, lr, #2
	ldrb	lr, [lr]	@ zero_extendqisi2
	.loc 1 122 9
	mov	r6, lr
	.loc 1 140 23
	ldr	lr, [fp, #-40]
	add	lr, lr, #3
	ldrb	lr, [lr]	@ zero_extendqisi2
	.loc 1 122 9
	str	lr, [sp, #48]
	str	r6, [sp, #44]
	str	r5, [sp, #40]
	str	r4, [sp, #36]
	ldr	lr, [fp, #8]
	str	lr, [sp, #32]
	ldr	lr, [fp, #-44]
	str	lr, [sp, #28]
	str	ip, [sp, #24]
	str	r0, [sp, #20]
	ldr	r0, [fp, #-32]
	str	r0, [sp, #16]
	str	r1, [sp, #12]
	str	r2, [sp, #8]
	ldr	r2, .L16+4
.LPIC1:
	add	r2, pc, r2
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, #126
	ldr	r2, .L16+8
.LPIC2:
	add	r2, pc, r2
	ldr	r1, .L16+12
.LPIC3:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_M2(PLT)
	.loc 1 143 5
	ldr	r3, [fp, #-44]
	cmp	r3, #0
	beq	.L2
	.loc 1 145 20
	ldr	r3, [fp, #-36]
	ldr	r3, [r3, #4]
	.loc 1 145 5
	cmp	r3, #1
	beq	.L3
	cmp	r3, #2
	beq	.L4
	.loc 1 171 9
	b	.L6
.L3:
	.loc 1 148 35
	ldr	r3, [fp, #-40]
	add	r2, r3, #1
	str	r2, [fp, #-40]
	.loc 1 148 26
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	.loc 1 148 25
	ldr	r3, [fp, #-36]
	str	r2, [r3, #12]
	.loc 1 149 18
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	.loc 1 150 25
	ldr	r3, [fp, #-36]
	ldr	r2, [r3, #12]
	.loc 1 150 31
	ldr	r3, [fp, #-32]
	lsl	r3, r3, #8
	.loc 1 150 25
	orr	r2, r2, r3
	ldr	r3, [fp, #-36]
	str	r2, [r3, #12]
	.loc 1 152 9
	movw	r0, #24464
	movt	r0, 1
	bl	EApiSleepns(PLT)
	.loc 1 153 9
	b	.L6
.L4:
	.loc 1 156 9
	ldr	r3, [fp, #-44]
	cmp	r3, #1
	bhi	.L7
	.loc 1 156 9 is_stmt 0 discriminator 1
	ldr	r3, .L16+16
.LPIC4:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L16+20
.LPIC5:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #1280
	str	r3, [sp]
	mov	r3, #156
	ldr	r2, .L16+24
.LPIC6:
	add	r2, pc, r2
	ldr	r1, .L16+28
.LPIC7:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #1280
	str	r3, [fp, #-24]
	b	.L8
.L7:
	.loc 1 163 35 is_stmt 1
	ldr	r3, [fp, #-40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 163 38
	lsl	r3, r3, #8
	mov	r2, r3
	.loc 1 163 26
	ldr	r3, [fp, #-36]
	str	r2, [r3, #12]
	.loc 1 164 25
	ldr	r3, [fp, #-36]
	ldr	r3, [r3, #12]
	.loc 1 164 35
	ldr	r2, [fp, #-40]
	add	r2, r2, #1
	ldrb	r2, [r2]	@ zero_extendqisi2
	.loc 1 164 25
	orr	r2, r3, r2
	ldr	r3, [fp, #-36]
	str	r2, [r3, #12]
	.loc 1 165 17
	ldr	r3, [fp, #-40]
	add	r3, r3, #2
	str	r3, [fp, #-40]
	.loc 1 166 18
	ldr	r3, [fp, #-44]
	sub	r3, r3, #2
	str	r3, [fp, #-44]
	.loc 1 167 25
	ldr	r3, [fp, #-36]
	ldr	r2, [r3, #12]
	.loc 1 167 31
	ldr	r3, [fp, #-32]
	lsl	r3, r3, #16
	.loc 1 167 25
	orr	r2, r2, r3
	ldr	r3, [fp, #-36]
	str	r2, [r3, #12]
	.loc 1 168 9
	movw	r0, #48928
	movt	r0, 2
	bl	EApiSleepns(PLT)
	.loc 1 169 9
	nop
.L6:
	.loc 1 179 22
	ldr	r3, [fp, #-36]
	ldr	r4, [r3, #20]
	.loc 1 174 9
	ldr	r3, [fp, #-36]
	ldr	r5, [r3, #12]
	.loc 1 182 22
	ldr	r3, [fp, #-36]
	ldr	r2, [r3, #12]
	.loc 1 182 39
	ldr	r3, [fp, #-36]
	ldr	r3, [r3, #8]
	.loc 1 174 9
	mov	r1, r3
	mov	r0, r2
	bl	__aeabi_uidivmod(PLT)
	mov	r3, r1
	mov	r6, r3
	.loc 1 183 23
	ldr	r3, [fp, #-36]
	ldr	r2, [r3, #12]
	.loc 1 183 40
	ldr	r3, [fp, #-36]
	ldr	r3, [r3, #8]
	.loc 1 183 32
	mov	r1, r3
	mov	r0, r2
	bl	__aeabi_uidivmod(PLT)
	mov	r3, r1
	mov	r2, r3
	.loc 1 174 9
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	str	r3, [sp, #16]
	str	r6, [sp, #12]
	str	r5, [sp, #8]
	ldr	r3, .L16+32
.LPIC8:
	add	r3, pc, r3
	str	r3, [sp, #4]
	str	r4, [sp]
	mov	r3, #178
	ldr	r2, .L16+36
.LPIC9:
	add	r2, pc, r2
	ldr	r1, .L16+40
.LPIC10:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_M2(PLT)
	.loc 1 186 7
	ldr	r3, [fp, #-44]
	cmp	r3, #0
	beq	.L2
	.loc 1 188 7
	ldr	r3, [fp, #-36]
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-36]
	ldr	r3, [r3, #8]
	mov	r1, r3
	mov	r0, r2
	bl	__aeabi_uidivmod(PLT)
	mov	r3, r1
	mov	r2, r3
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r3, [fp, #-36]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bls	.L9
	.loc 1 188 7 is_stmt 0 discriminator 1
	ldr	r3, .L16+44
.LPIC11:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L16+48
.LPIC12:
	add	r3, pc, r3
	str	r3, [sp, #4]
	movw	r3, #64254
	movt	r3, 65535
	str	r3, [sp]
	mov	r3, #188
	ldr	r2, .L16+52
.LPIC13:
	add	r2, pc, r2
	ldr	r1, .L16+56
.LPIC14:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	movw	r3, #64254
	movt	r3, 65535
	str	r3, [fp, #-24]
	b	.L8
.L9:
	.loc 1 194 7 is_stmt 1
	ldr	r3, [fp, #-36]
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r3, [fp, #-36]
	ldr	r3, [r3]
	cmp	r2, r3
	bls	.L10
	.loc 1 194 7 is_stmt 0 discriminator 1
	ldr	r3, .L16+60
.LPIC15:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L16+64
.LPIC16:
	add	r3, pc, r3
	str	r3, [sp, #4]
	movw	r3, #64254
	movt	r3, 65535
	str	r3, [sp]
	mov	r3, #194
	ldr	r2, .L16+68
.LPIC17:
	add	r2, pc, r2
	ldr	r1, .L16+72
.LPIC18:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	movw	r3, #64254
	movt	r3, 65535
	str	r3, [fp, #-24]
	b	.L8
.L10:
	.loc 1 201 7 is_stmt 1
	ldr	r2, [fp, #-44]
	movw	r3, #24464
	movt	r3, 1
	mul	r3, r3, r2
	mov	r0, r3
	bl	EApiSleepns(PLT)
	.loc 1 202 7
	ldr	r3, [fp, #-36]
	ldr	r0, [r3, #24]
	.loc 1 202 38
	ldr	r3, [fp, #-36]
	ldr	r3, [r3, #12]
	.loc 1 202 7
	mov	r2, #0
	mov	r1, r3
	bl	fseek(PLT)
	.loc 1 203 7
	ldr	r3, [fp, #-36]
	ldr	r3, [r3, #24]
	ldr	r2, [fp, #-44]
	mov	r1, #1
	ldr	r0, [fp, #-40]
	bl	fwrite(PLT)
	mov	r2, r0
	ldr	r3, [fp, #-44]
	cmp	r3, r2
	beq	.L11
	.loc 1 203 7 is_stmt 0 discriminator 1
	ldr	r3, .L16+76
.LPIC19:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L16+80
.LPIC20:
	add	r3, pc, r3
	str	r3, [sp, #4]
	movw	r3, #64254
	movt	r3, 65535
	str	r3, [sp]
	mov	r3, #203
	ldr	r2, .L16+84
.LPIC21:
	add	r2, pc, r2
	ldr	r1, .L16+88
.LPIC22:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	movw	r3, #64254
	movt	r3, 65535
	str	r3, [fp, #-24]
	b	.L8
.L11:
	.loc 1 209 23 is_stmt 1
	ldr	r3, [fp, #-36]
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r3, [fp, #-36]
	str	r2, [r3, #12]
.L2:
	.loc 1 213 5
	ldr	r3, [fp, #8]
	cmp	r3, #0
	beq	.L12
	.loc 1 215 5
	ldr	r3, [fp, #-36]
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #8]
	add	r2, r2, r3
	ldr	r3, [fp, #-36]
	ldr	r3, [r3]
	cmp	r2, r3
	bls	.L13
	.loc 1 215 5 is_stmt 0 discriminator 1
	ldr	r3, .L16+92
.LPIC23:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L16+96
.LPIC24:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #1280
	str	r3, [sp]
	mov	r3, #215
	ldr	r2, .L16+100
.LPIC25:
	add	r2, pc, r2
	ldr	r1, .L16+104
.LPIC26:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #1280
	str	r3, [fp, #-24]
	b	.L8
.L13:
	.loc 1 222 5 is_stmt 1
	ldr	r2, [fp, #8]
	movw	r3, #24464
	movt	r3, 1
	mul	r3, r3, r2
	mov	r0, r3
	bl	EApiSleepns(PLT)
	.loc 1 223 5
	ldr	r3, [fp, #-36]
	ldr	r0, [r3, #24]
	.loc 1 223 36
	ldr	r3, [fp, #-36]
	ldr	r3, [r3, #12]
	.loc 1 223 5
	mov	r2, #0
	mov	r1, r3
	bl	fseek(PLT)
	.loc 1 224 5
	ldr	r3, [fp, #-36]
	ldr	r3, [r3, #24]
	ldr	r2, [fp, #8]
	mov	r1, #1
	ldr	r0, [fp, #4]
	bl	fread(PLT)
	mov	r2, r0
	ldr	r3, [fp, #8]
	cmp	r3, r2
	beq	.L14
	.loc 1 224 5 is_stmt 0 discriminator 1
	ldr	r3, .L16+108
.LPIC27:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L16+112
.LPIC28:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #1280
	str	r3, [sp]
	mov	r3, #224
	ldr	r2, .L16+116
.LPIC29:
	add	r2, pc, r2
	ldr	r1, .L16+120
.LPIC30:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #1280
	str	r3, [fp, #-24]
	b	.L8
.L14:
	.loc 1 230 21 is_stmt 1
	ldr	r3, [fp, #-36]
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #8]
	add	r2, r2, r3
	ldr	r3, [fp, #-36]
	str	r2, [r3, #12]
.L12:
	.loc 1 232 3
	ldr	r3, .L16+124
.LPIC31:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L16+128
.LPIC32:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mov	r3, #0
	str	r3, [sp]
	mov	r3, #232
	ldr	r2, .L16+132
.LPIC33:
	add	r2, pc, r2
	ldr	r1, .L16+136
.LPIC34:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_SC(PLT)
	mov	r3, #0
	str	r3, [fp, #-24]
	nop
.L8:
	.loc 1 235 10
	ldr	r3, [fp, #-24]
	.loc 1 236 1
	mov	r0, r3
	sub	sp, fp, #16
	.cfi_def_cfa 13, 20
	@ sp needed
	pop	{r4, r5, r6, fp, pc}
.L17:
	.align	2
.L16:
	.word	StdExt-(.LPIC0+8)
	.word	.LC5-(.LPIC1+8)
	.word	.LC3-(.LPIC2+8)
	.word	.LC4-(.LPIC3+8)
	.word	.LC6-(.LPIC4+8)
	.word	.LC7-(.LPIC5+8)
	.word	.LC3-(.LPIC6+8)
	.word	.LC4-(.LPIC7+8)
	.word	.LC8-(.LPIC8+8)
	.word	.LC3-(.LPIC9+8)
	.word	.LC4-(.LPIC10+8)
	.word	.LC9-(.LPIC11+8)
	.word	.LC7-(.LPIC12+8)
	.word	.LC3-(.LPIC13+8)
	.word	.LC4-(.LPIC14+8)
	.word	.LC10-(.LPIC15+8)
	.word	.LC7-(.LPIC16+8)
	.word	.LC3-(.LPIC17+8)
	.word	.LC4-(.LPIC18+8)
	.word	.LC11-(.LPIC19+8)
	.word	.LC7-(.LPIC20+8)
	.word	.LC3-(.LPIC21+8)
	.word	.LC4-(.LPIC22+8)
	.word	.LC12-(.LPIC23+8)
	.word	.LC7-(.LPIC24+8)
	.word	.LC3-(.LPIC25+8)
	.word	.LC4-(.LPIC26+8)
	.word	.LC13-(.LPIC27+8)
	.word	.LC7-(.LPIC28+8)
	.word	.LC3-(.LPIC29+8)
	.word	.LC4-(.LPIC30+8)
	.word	.LC14-(.LPIC31+8)
	.word	.LC7-(.LPIC32+8)
	.word	.LC3-(.LPIC33+8)
	.word	.LC4-(.LPIC34+8)
	.cfi_endproc
.LFE1:
	.size	EmulateEepromFS, .-EmulateEepromFS
	.section	.rodata
	.align	2
.LC15:
	.ascii	"EmulateCmdDevice\000"
	.align	2
.LC16:
	.ascii	"%3s CCMD=%04lX Arg1=%1lX WLEN=%04lX RLEN=%04lX %02X"
	.ascii	",%02X,%02X,%02X\012\000"
	.text
	.align	2
	.global	EmulateCmdDevice
	.hidden	EmulateCmdDevice
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EmulateCmdDevice, %function
EmulateCmdDevice:
.LFB2:
	.loc 1 248 1
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #8
	.cfi_def_cfa 11, 4
	sub	sp, sp, #84
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	str	r2, [fp, #-40]
	str	r3, [fp, #-44]
	.loc 1 249 16
	mov	r3, #0
	str	r3, [fp, #-24]
	.loc 1 259 22
	ldr	r3, [fp, #-36]
	ldr	r3, [r3, #12]
	.loc 1 262 29
	ldr	r2, [fp, #-36]
	ldr	r1, [r2]
	.loc 1 254 9
	ldr	r2, .L35
.LPIC35:
	add	r2, pc, r2
	ldr	r2, [r2, r1, lsl #2]
	ldr	r1, [fp, #-36]
	ldr	r1, [r1, #4]
	.loc 1 267 23
	ldr	r0, [fp, #-40]
	ldrb	r0, [r0]	@ zero_extendqisi2
	.loc 1 254 9
	mov	ip, r0
	.loc 1 268 23
	ldr	r0, [fp, #-40]
	add	r0, r0, #1
	ldrb	r0, [r0]	@ zero_extendqisi2
	.loc 1 254 9
	mov	lr, r0
	.loc 1 269 23
	ldr	r0, [fp, #-40]
	add	r0, r0, #2
	ldrb	r0, [r0]	@ zero_extendqisi2
	.loc 1 254 9
	mov	r4, r0
	.loc 1 270 23
	ldr	r0, [fp, #-40]
	add	r0, r0, #3
	ldrb	r0, [r0]	@ zero_extendqisi2
	.loc 1 254 9
	str	r0, [sp, #40]
	str	r4, [sp, #36]
	str	lr, [sp, #32]
	str	ip, [sp, #28]
	ldr	r0, [fp, #8]
	str	r0, [sp, #24]
	ldr	r0, [fp, #-44]
	str	r0, [sp, #20]
	ldr	r0, [fp, #-32]
	str	r0, [sp, #16]
	str	r1, [sp, #12]
	str	r2, [sp, #8]
	ldr	r2, .L35+4
.LPIC36:
	add	r2, pc, r2
	str	r2, [sp, #4]
	str	r3, [sp]
	movw	r3, #258
	ldr	r2, .L35+8
.LPIC37:
	add	r2, pc, r2
	ldr	r1, .L35+12
.LPIC38:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_M2(PLT)
	.loc 1 273 5
	ldr	r3, [fp, #-44]
	cmp	r3, #0
	beq	.L19
	.loc 1 275 20
	ldr	r3, [fp, #-36]
	ldr	r3, [r3]
	.loc 1 275 5
	cmp	r3, #1
	beq	.L20
	cmp	r3, #2
	beq	.L21
	.loc 1 298 9
	b	.L23
.L20:
	.loc 1 278 38
	ldr	r3, [fp, #-40]
	add	r2, r3, #1
	str	r2, [fp, #-40]
	.loc 1 278 29
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	.loc 1 278 28
	ldr	r3, [fp, #-36]
	str	r2, [r3, #4]
	.loc 1 279 18
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	.loc 1 280 9
	movw	r0, #24464
	movt	r0, 1
	bl	EApiSleepns(PLT)
	.loc 1 281 9
	b	.L23
.L21:
	.loc 1 284 9
	ldr	r3, [fp, #-44]
	cmp	r3, #1
	bhi	.L24
	.loc 1 284 9 is_stmt 0 discriminator 1
	ldr	r3, .L35+16
.LPIC39:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L35+20
.LPIC40:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #1280
	str	r3, [sp]
	mov	r3, #284
	ldr	r2, .L35+24
.LPIC41:
	add	r2, pc, r2
	ldr	r1, .L35+28
.LPIC42:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #1280
	str	r3, [fp, #-24]
	b	.L25
.L24:
	.loc 1 291 38 is_stmt 1
	ldr	r3, [fp, #-40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 291 41
	lsl	r3, r3, #8
	mov	r2, r3
	.loc 1 291 29
	ldr	r3, [fp, #-36]
	str	r2, [r3, #4]
	.loc 1 292 28
	ldr	r3, [fp, #-36]
	ldr	r3, [r3, #4]
	.loc 1 292 38
	ldr	r2, [fp, #-40]
	add	r2, r2, #1
	ldrb	r2, [r2]	@ zero_extendqisi2
	.loc 1 292 28
	orr	r2, r3, r2
	ldr	r3, [fp, #-36]
	str	r2, [r3, #4]
	.loc 1 293 17
	ldr	r3, [fp, #-40]
	add	r3, r3, #2
	str	r3, [fp, #-40]
	.loc 1 294 18
	ldr	r3, [fp, #-44]
	sub	r3, r3, #2
	str	r3, [fp, #-44]
	.loc 1 295 9
	movw	r0, #48928
	movt	r0, 2
	bl	EApiSleepns(PLT)
	.loc 1 296 9
	nop
.L23:
	.loc 1 300 7
	ldr	r3, [fp, #-44]
	cmp	r3, #0
	beq	.L19
	.loc 1 302 7
	ldr	r2, [fp, #-44]
	movw	r3, #24464
	movt	r3, 1
	mul	r3, r3, r2
	mov	r0, r3
	bl	EApiSleepns(PLT)
	.loc 1 303 18
	ldr	r3, [fp, #-36]
	ldr	r3, [r3, #16]
	str	r3, [fp, #-20]
	.loc 1 303 7
	b	.L26
.L28:
	.loc 1 304 19
	ldr	r3, [fp, #-20]
	ldr	r2, [r3]
	.loc 1 304 33
	ldr	r3, [fp, #-36]
	ldr	r3, [r3, #4]
	.loc 1 304 11
	cmp	r2, r3
	bne	.L27
	.loc 1 305 20
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-16]
	.loc 1 307 20
	ldr	r3, [fp, #-20]
	ldr	r0, [r3, #8]
	.loc 1 309 42
	ldr	r2, [fp, #8]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	movcc	r3, r2
	movcs	r3, r3
	.loc 1 306 11
	mov	r2, r3
	ldr	r1, [fp, #4]
	bl	memcpy(PLT)
.L27:
	.loc 1 303 71 discriminator 2
	ldr	r3, [fp, #-20]
	add	r3, r3, #12
	str	r3, [fp, #-20]
.L26:
	.loc 1 303 40 discriminator 1
	ldr	r3, [fp, #-20]
	ldr	r3, [r3]
	.loc 1 303 45 discriminator 1
	cmn	r3, #1
	bne	.L28
.L19:
	.loc 1 315 5
	ldr	r3, [fp, #8]
	cmp	r3, #0
	beq	.L29
	.loc 1 317 5
	ldr	r2, [fp, #8]
	movw	r3, #24464
	movt	r3, 1
	mul	r3, r3, r2
	mov	r0, r3
	bl	EApiSleepns(PLT)
	.loc 1 318 16
	ldr	r3, [fp, #-36]
	ldr	r3, [r3, #16]
	str	r3, [fp, #-20]
	.loc 1 318 5
	b	.L30
.L33:
	.loc 1 319 17
	ldr	r3, [fp, #-20]
	ldr	r2, [r3]
	.loc 1 319 31
	ldr	r3, [fp, #-36]
	ldr	r3, [r3, #4]
	.loc 1 319 9
	cmp	r2, r3
	bne	.L31
	.loc 1 320 18
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-16]
	.loc 1 321 11
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #8]
	cmp	r2, r3
	bcs	.L32
	.loc 1 322 35
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #8]
	.loc 1 322 11
	ldr	r2, [fp, #-16]
	mov	r1, r3
	ldr	r0, [fp, #4]
	bl	memcpy(PLT)
	.loc 1 323 26
	ldr	r2, [fp, #4]
	ldr	r3, [fp, #-16]
	add	r0, r2, r3
	.loc 1 323 46
	ldr	r2, [fp, #8]
	ldr	r3, [fp, #-16]
	sub	r3, r2, r3
	.loc 1 323 11
	mov	r2, #255
	mov	r1, r3
	bl	memset(PLT)
	b	.L31
.L32:
	.loc 1 325 35
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #8]
	.loc 1 325 11
	ldr	r2, [fp, #8]
	mov	r1, r3
	ldr	r0, [fp, #4]
	bl	memcpy(PLT)
.L31:
	.loc 1 318 69 discriminator 2
	ldr	r3, [fp, #-20]
	add	r3, r3, #12
	str	r3, [fp, #-20]
.L30:
	.loc 1 318 38 discriminator 1
	ldr	r3, [fp, #-20]
	ldr	r3, [r3]
	.loc 1 318 43 discriminator 1
	cmn	r3, #1
	bne	.L33
.L29:
	.loc 1 330 3
	ldr	r3, .L35+32
.LPIC43:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L35+36
.LPIC44:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mov	r3, #0
	str	r3, [sp]
	movw	r3, #330
	ldr	r2, .L35+40
.LPIC45:
	add	r2, pc, r2
	ldr	r1, .L35+44
.LPIC46:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_SC(PLT)
	mov	r3, #0
	str	r3, [fp, #-24]
	nop
.L25:
	.loc 1 333 10
	ldr	r3, [fp, #-24]
	.loc 1 334 1
	mov	r0, r3
	sub	sp, fp, #8
	.cfi_def_cfa 13, 12
	@ sp needed
	pop	{r4, fp, pc}
.L36:
	.align	2
.L35:
	.word	StdExt-(.LPIC35+8)
	.word	.LC16-(.LPIC36+8)
	.word	.LC15-(.LPIC37+8)
	.word	.LC4-(.LPIC38+8)
	.word	.LC6-(.LPIC39+8)
	.word	.LC7-(.LPIC40+8)
	.word	.LC3-(.LPIC41+8)
	.word	.LC4-(.LPIC42+8)
	.word	.LC14-(.LPIC43+8)
	.word	.LC7-(.LPIC44+8)
	.word	.LC3-(.LPIC45+8)
	.word	.LC4-(.LPIC46+8)
	.cfi_endproc
.LFE2:
	.size	EmulateCmdDevice, .-EmulateCmdDevice
	.hidden	DIDEEPROM
	.global	DIDEEPROM
	.data
	.align	2
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
	.section	.rodata
	.align	2
.LC17:
	.ascii	"DID.EEPROM.EMUL\000"
	.section	.data.rel.local
	.align	2
	.type	DIDEEPromData, %object
	.size	DIDEEPromData, 28
DIDEEPromData:
	.word	512
	.word	2
	.word	256
	.word	0
	.word	DIDEEPROM
	.word	.LC17
	.word	0
	.text
	.align	2
	.global	EmulateDIDEeprom
	.hidden	EmulateDIDEeprom
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EmulateDIDEeprom, %function
EmulateDIDEeprom:
.LFB3:
	.loc 1 355 1
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 16
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
	.loc 1 356 10
	ldr	r3, [fp, #4]
	str	r3, [sp, #4]
	ldr	r3, [fp, #-20]
	str	r3, [sp]
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-12]
	ldr	r1, .L39
.LPIC47:
	add	r1, pc, r1
	ldr	r0, [fp, #-8]
	bl	EmulateEepromFS(PLT)
	mov	r3, r0
	.loc 1 364 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L40:
	.align	2
.L39:
	.word	DIDEEPromData-(.LPIC47+8)
	.cfi_endproc
.LFE3:
	.size	EmulateDIDEeprom, .-EmulateDIDEeprom
	.hidden	UDSEEPROM
	.global	UDSEEPROM
	.data
	.align	2
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
	.section	.rodata
	.align	2
.LC18:
	.ascii	"UDS.EEPROM.EMUL\000"
	.section	.data.rel.local
	.align	2
	.type	UDSEEPromData, %object
	.size	UDSEEPromData, 28
UDSEEPromData:
	.word	512
	.word	2
	.word	16
	.word	0
	.word	UDSEEPROM
	.word	.LC18
	.word	0
	.text
	.align	2
	.global	EmulateUDSEeprom
	.hidden	EmulateUDSEeprom
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EmulateUDSEeprom, %function
EmulateUDSEeprom:
.LFB4:
	.loc 1 385 1
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 16
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
	.loc 1 386 10
	ldr	r3, [fp, #4]
	str	r3, [sp, #4]
	ldr	r3, [fp, #-20]
	str	r3, [sp]
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-12]
	ldr	r1, .L43
.LPIC48:
	add	r1, pc, r1
	ldr	r0, [fp, #-8]
	bl	EmulateEepromFS(PLT)
	mov	r3, r0
	.loc 1 394 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L44:
	.align	2
.L43:
	.word	UDSEEPromData-(.LPIC48+8)
	.cfi_endproc
.LFE4:
	.size	EmulateUDSEeprom, .-EmulateUDSEeprom
	.hidden	EPIEEPROM
	.global	EPIEEPROM
	.data
	.align	2
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
	.section	.rodata
	.align	2
.LC19:
	.ascii	"EPI.EEPROM.EMUL\000"
	.section	.data.rel.local
	.align	2
	.type	EPIEEPromData, %object
	.size	EPIEEPromData, 28
EPIEEPromData:
	.word	512
	.word	2
	.word	16
	.word	0
	.word	EPIEEPROM
	.word	.LC19
	.word	0
	.text
	.align	2
	.global	EmulateEPIEeprom
	.hidden	EmulateEPIEeprom
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EmulateEPIEeprom, %function
EmulateEPIEeprom:
.LFB5:
	.loc 1 416 1
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 16
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
	.loc 1 417 10
	ldr	r3, [fp, #4]
	str	r3, [sp, #4]
	ldr	r3, [fp, #-20]
	str	r3, [sp]
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-12]
	ldr	r1, .L47
.LPIC49:
	add	r1, pc, r1
	ldr	r0, [fp, #-8]
	bl	EmulateEepromFS(PLT)
	mov	r3, r0
	.loc 1 425 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L48:
	.align	2
.L47:
	.word	EPIEEPromData-(.LPIC49+8)
	.cfi_endproc
.LFE5:
	.size	EmulateEPIEeprom, .-EmulateEPIEeprom
	.hidden	COM0MEEPROM
	.global	COM0MEEPROM
	.bss
	.align	2
	.type	COM0MEEPROM, %object
	.size	COM0MEEPROM, 2048
COM0MEEPROM:
	.space	2048
	.section	.rodata
	.align	2
.LC20:
	.ascii	"COM0R20-M.EEPROM.EMUL\000"
	.section	.data.rel.local
	.align	2
	.type	COM0MEEPromData, %object
	.size	COM0MEEPromData, 28
COM0MEEPromData:
	.word	2048
	.word	2
	.word	16
	.word	0
	.word	COM0MEEPROM
	.word	.LC20
	.word	0
	.hidden	COM0CBEEPROM
	.global	COM0CBEEPROM
	.bss
	.align	2
	.type	COM0CBEEPROM, %object
	.size	COM0CBEEPROM, 4096
COM0CBEEPROM:
	.space	4096
	.section	.rodata
	.align	2
.LC21:
	.ascii	"COM0R20-CB.EEPROM.EMUL\000"
	.section	.data.rel.local
	.align	2
	.type	COM0CBEEPromData, %object
	.size	COM0CBEEPromData, 28
COM0CBEEPromData:
	.word	4096
	.word	2
	.word	64
	.word	0
	.word	COM0CBEEPROM
	.word	.LC21
	.word	0
	.hidden	EeePExpEEPROM
	.global	EeePExpEEPROM
	.bss
	.align	2
	.type	EeePExpEEPROM, %object
	.size	EeePExpEEPROM, 1024
EeePExpEEPROM:
	.space	1024
	.section	.rodata
	.align	2
.LC22:
	.ascii	"EeePExp.EEPROM.EMUL\000"
	.section	.data.rel.local
	.align	2
	.type	EeePExpEEPromData, %object
	.size	EeePExpEEPromData, 28
EeePExpEEPromData:
	.word	1024
	.word	1
	.word	8
	.word	0
	.word	EeePExpEEPROM
	.word	.LC22
	.word	0
	.hidden	OpenFiles
	.global	OpenFiles
	.align	2
	.type	OpenFiles, %object
	.size	OpenFiles, 24
OpenFiles:
	.word	EeePExpEEPromData
	.word	COM0CBEEPromData
	.word	COM0MEEPromData
	.word	EPIEEPromData
	.word	UDSEEPromData
	.word	DIDEEPromData
	.section	.rodata
	.align	2
.LC23:
	.ascii	"rb+\000"
	.align	2
.LC24:
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
.LFB6:
	.loc 1 472 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #8
	.cfi_def_cfa 11, 4
	sub	sp, sp, #12
	.loc 1 474 21
	ldr	r3, .L55
.LPIC50:
	add	r3, pc, r3
	str	r3, [fp, #-16]
	.loc 1 475 8
	mov	r3, #6
	str	r3, [fp, #-20]
	.loc 1 475 3
	b	.L50
.L53:
	.loc 1 476 35
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	.loc 1 476 47
	ldr	r2, [r3, #20]
	.loc 1 476 6
	ldr	r3, [fp, #-16]
	ldr	r4, [r3]
	.loc 1 476 28
	ldr	r3, .L55+4
.LPIC51:
	add	r3, pc, r3
	mov	r1, r3
	mov	r0, r2
	bl	fopen(PLT)
	mov	r3, r0
	.loc 1 476 27
	str	r3, [r4, #24]
	.loc 1 477 9
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	.loc 1 477 21
	ldr	r3, [r3, #24]
	.loc 1 477 7
	cmp	r3, #0
	bne	.L51
	.loc 1 478 37
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	.loc 1 478 49
	ldr	r2, [r3, #20]
	.loc 1 478 8
	ldr	r3, [fp, #-16]
	ldr	r4, [r3]
	.loc 1 478 30
	ldr	r3, .L55+8
.LPIC52:
	add	r3, pc, r3
	mov	r1, r3
	mov	r0, r2
	bl	fopen(PLT)
	mov	r3, r0
	.loc 1 478 29
	str	r3, [r4, #24]
.L51:
	.loc 1 480 9
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	.loc 1 480 21
	ldr	r3, [r3, #24]
	.loc 1 480 7
	cmp	r3, #0
	beq	.L52
	.loc 1 481 16
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	.loc 1 481 9
	ldr	r3, [r3, #24]
	mov	r2, #2
	mov	r1, #0
	mov	r0, r3
	bl	fseek(PLT)
	.loc 1 482 19
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	.loc 1 482 12
	ldr	r3, [r3, #24]
	mov	r0, r3
	bl	ftell(PLT)
	mov	r2, r0
	.loc 1 482 51
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	.loc 1 482 63
	ldr	r3, [r3]
	.loc 1 482 11
	cmp	r2, r3
	bge	.L52
	.loc 1 483 19
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	.loc 1 483 11
	ldr	r3, [r3, #24]
	mov	r0, r3
	bl	rewind(PLT)
	.loc 1 484 19
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	.loc 1 484 31
	ldr	r0, [r3, #16]
	.loc 1 484 63
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	.loc 1 484 75
	ldr	r2, [r3]
	.loc 1 484 87
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	.loc 1 484 11
	ldr	r3, [r3, #24]
	mov	r1, #1
	bl	fwrite(PLT)
.L52:
	.loc 1 475 36 discriminator 2
	ldr	r3, [fp, #-20]
	sub	r3, r3, #1
	str	r3, [fp, #-20]
	.loc 1 475 50 discriminator 2
	ldr	r3, [fp, #-16]
	add	r3, r3, #4
	str	r3, [fp, #-16]
.L50:
	.loc 1 475 32 discriminator 1
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L53
	.loc 1 488 10
	mov	r3, #0
	.loc 1 489 1
	mov	r0, r3
	sub	sp, fp, #8
	.cfi_def_cfa 13, 12
	@ sp needed
	pop	{r4, fp, pc}
.L56:
	.align	2
.L55:
	.word	OpenFiles-(.LPIC50+8)
	.word	.LC23-(.LPIC51+8)
	.word	.LC24-(.LPIC52+8)
	.cfi_endproc
.LFE6:
	.size	OpenI2CEepromFiles, .-OpenI2CEepromFiles
	.align	2
	.global	CloseI2CEepromFiles
	.hidden	CloseI2CEepromFiles
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CloseI2CEepromFiles, %function
CloseI2CEepromFiles:
.LFB7:
	.loc 1 492 1
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
	.loc 1 494 21
	ldr	r3, .L62
.LPIC53:
	add	r3, pc, r3
	str	r3, [fp, #-8]
	.loc 1 495 8
	mov	r3, #6
	str	r3, [fp, #-12]
	.loc 1 495 3
	b	.L58
.L60:
	.loc 1 496 9
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	.loc 1 496 21
	ldr	r3, [r3, #24]
	.loc 1 496 7
	cmp	r3, #0
	beq	.L59
	.loc 1 497 15
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	.loc 1 497 7
	ldr	r3, [r3, #24]
	mov	r0, r3
	bl	fclose(PLT)
	.loc 1 498 8
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	.loc 1 498 29
	mov	r2, #0
	str	r2, [r3, #24]
.L59:
	.loc 1 495 36 discriminator 2
	ldr	r3, [fp, #-12]
	sub	r3, r3, #1
	str	r3, [fp, #-12]
	.loc 1 495 50 discriminator 2
	ldr	r3, [fp, #-8]
	add	r3, r3, #4
	str	r3, [fp, #-8]
.L58:
	.loc 1 495 32 discriminator 1
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bne	.L60
	.loc 1 501 10
	mov	r3, #0
	.loc 1 502 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L63:
	.align	2
.L62:
	.word	OpenFiles-(.LPIC53+8)
	.cfi_endproc
.LFE7:
	.size	CloseI2CEepromFiles, .-CloseI2CEepromFiles
	.align	2
	.global	EmulateEeePExpEeprom
	.hidden	EmulateEeePExpEeprom
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EmulateEeePExpEeprom, %function
EmulateEeePExpEeprom:
.LFB8:
	.loc 1 512 1
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 16
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
	.loc 1 513 10
	ldr	r3, [fp, #4]
	str	r3, [sp, #4]
	ldr	r3, [fp, #-20]
	str	r3, [sp]
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-12]
	ldr	r1, .L66
.LPIC54:
	add	r1, pc, r1
	ldr	r0, [fp, #-8]
	bl	EmulateEepromFS(PLT)
	mov	r3, r0
	.loc 1 521 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L67:
	.align	2
.L66:
	.word	EeePExpEEPromData-(.LPIC54+8)
	.cfi_endproc
.LFE8:
	.size	EmulateEeePExpEeprom, .-EmulateEeePExpEeprom
	.align	2
	.global	EmulateCOM0CBEeprom
	.hidden	EmulateCOM0CBEeprom
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EmulateCOM0CBEeprom, %function
EmulateCOM0CBEeprom:
.LFB9:
	.loc 1 532 1
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 16
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
	.loc 1 533 10
	ldr	r3, [fp, #4]
	str	r3, [sp, #4]
	ldr	r3, [fp, #-20]
	str	r3, [sp]
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-12]
	ldr	r1, .L70
.LPIC55:
	add	r1, pc, r1
	ldr	r0, [fp, #-8]
	bl	EmulateEepromFS(PLT)
	mov	r3, r0
	.loc 1 541 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L71:
	.align	2
.L70:
	.word	COM0CBEEPromData-(.LPIC55+8)
	.cfi_endproc
.LFE9:
	.size	EmulateCOM0CBEeprom, .-EmulateCOM0CBEeprom
	.align	2
	.global	EmulateCOM0MEeprom
	.hidden	EmulateCOM0MEeprom
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EmulateCOM0MEeprom, %function
EmulateCOM0MEeprom:
.LFB10:
	.loc 1 551 1
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 16
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
	.loc 1 552 10
	ldr	r3, [fp, #4]
	str	r3, [sp, #4]
	ldr	r3, [fp, #-20]
	str	r3, [sp]
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-12]
	ldr	r1, .L74
.LPIC56:
	add	r1, pc, r1
	ldr	r0, [fp, #-8]
	bl	EmulateEepromFS(PLT)
	mov	r3, r0
	.loc 1 560 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L75:
	.align	2
.L74:
	.word	COM0MEEPromData-(.LPIC56+8)
	.cfi_endproc
.LFE10:
	.size	EmulateCOM0MEeprom, .-EmulateCOM0MEeprom
	.hidden	CpuTemp
	.global	CpuTemp
	.data
	.align	2
	.type	CpuTemp, %object
	.size	CpuTemp, 1
CpuTemp:
	.ascii	"8"
	.hidden	ChipsetTemp
	.global	ChipsetTemp
	.align	2
	.type	ChipsetTemp, %object
	.size	ChipsetTemp, 1
ChipsetTemp:
	.ascii	"."
	.hidden	SystemTemp
	.global	SystemTemp
	.align	2
	.type	SystemTemp, %object
	.size	SystemTemp, 1
SystemTemp:
	.ascii	"\322"
	.hidden	HwmonCmdIndx
	.global	HwmonCmdIndx
	.section	.data.rel.local
	.align	2
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
	.hidden	HWMon
	.global	HWMon
	.section	.rodata
	.align	2
.LC25:
	.ascii	"ADT7447\000"
	.section	.data.rel.local
	.align	2
	.type	HWMon, %object
	.size	HWMon, 20
HWMon:
	.word	1
	.word	0
	.word	0
	.word	.LC25
	.word	HwmonCmdIndx
	.text
	.align	2
	.global	EmulateHWMonDevice
	.hidden	EmulateHWMonDevice
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EmulateHWMonDevice, %function
EmulateHWMonDevice:
.LFB11:
	.loc 1 586 1
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 16
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
	.loc 1 587 10
	ldr	r3, [fp, #4]
	str	r3, [sp, #4]
	ldr	r3, [fp, #-20]
	str	r3, [sp]
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-12]
	ldr	r1, .L78
.LPIC57:
	add	r1, pc, r1
	ldr	r0, [fp, #-8]
	bl	EmulateCmdDevice(PLT)
	mov	r3, r0
	.loc 1 595 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L79:
	.align	2
.L78:
	.word	HWMon-(.LPIC57+8)
	.cfi_endproc
.LFE11:
	.size	EmulateHWMonDevice, .-EmulateHWMonDevice
	.hidden	ExternalI2CDevices
	.global	ExternalI2CDevices
	.section	.data.rel.ro.local,"aw"
	.align	2
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
	.hidden	LVDS_1I2CDevices
	.global	LVDS_1I2CDevices
	.align	2
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
	.hidden	LVDS_2I2CDevices
	.global	LVDS_2I2CDevices
	.align	2
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
	.hidden	EmulatedInterfaces
	.global	EmulatedInterfaces
	.align	2
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
	.section	.rodata
	.align	2
.LC26:
	.ascii	"EApiI2CGetBusCapEmul\000"
	.align	2
.LC27:
	.ascii	"Unrecognised I2C ID\000"
	.text
	.align	2
	.global	EApiI2CGetBusCapEmul
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiI2CGetBusCapEmul, %function
EApiI2CGetBusCapEmul:
.LFB12:
	.loc 1 647 1
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
	.loc 1 648 16
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 651 8
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 651 3
	b	.L81
.L84:
	.loc 1 653 31
	ldr	r1, .L86
.LPIC58:
	add	r1, pc, r1
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r1, r3
	ldr	r3, [r3]
	.loc 1 653 9
	ldr	r2, [fp, #-16]
	cmp	r2, r3
	bne	.L82
	.loc 1 655 44
	ldr	r1, .L86+4
.LPIC59:
	add	r1, pc, r1
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r1, r3
	add	r3, r3, #8
	ldr	r2, [r3]
	.loc 1 655 22
	ldr	r3, [fp, #-20]
	str	r2, [r3]
	.loc 1 656 11
	ldr	r3, .L86+8
.LPIC60:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L86+12
.LPIC61:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mov	r3, #0
	str	r3, [sp]
	mov	r3, #656
	ldr	r2, .L86+16
.LPIC62:
	add	r2, pc, r2
	ldr	r1, .L86+20
.LPIC63:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_SC(PLT)
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L83
.L82:
	.loc 1 651 45 discriminator 2
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L81:
	.loc 1 651 12 discriminator 1
	ldr	r3, [fp, #-8]
	cmp	r3, #2
	bls	.L84
	.loc 1 663 3
	ldr	r3, .L86+24
.LPIC64:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L86+28
.LPIC65:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #768
	str	r3, [sp]
	movw	r3, #663
	ldr	r2, .L86+32
.LPIC66:
	add	r2, pc, r2
	ldr	r1, .L86+36
.LPIC67:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #768
	str	r3, [fp, #-12]
	nop
.L83:
	.loc 1 670 10
	ldr	r3, [fp, #-12]
	.loc 1 671 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L87:
	.align	2
.L86:
	.word	EmulatedInterfaces-(.LPIC58+8)
	.word	EmulatedInterfaces-(.LPIC59+8)
	.word	.LC14-(.LPIC60+8)
	.word	.LC7-(.LPIC61+8)
	.word	.LC26-(.LPIC62+8)
	.word	.LC4-(.LPIC63+8)
	.word	.LC27-(.LPIC64+8)
	.word	.LC7-(.LPIC65+8)
	.word	.LC26-(.LPIC66+8)
	.word	.LC4-(.LPIC67+8)
	.cfi_endproc
.LFE12:
	.size	EApiI2CGetBusCapEmul, .-EApiI2CGetBusCapEmul
	.section	.rodata
	.align	2
.LC28:
	.ascii	"EApiI2CWriteReadEmul\000"
	.align	2
.LC29:
	.ascii	"WriteBCnt>(pMaxBlkLen+1)\000"
	.align	2
.LC30:
	.ascii	"ReadBCnt>(pMaxBlkLen+1)\000"
	.align	2
.LC31:
	.ascii	"ADDR=%02X\012\000"
	.align	2
.LC32:
	.ascii	"Info\000"
	.align	2
.LC33:
	.ascii	"Device Not Present\000"
	.text
	.align	2
	.global	EApiI2CWriteReadEmul
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiI2CWriteReadEmul, %function
EApiI2CWriteReadEmul:
.LFB13:
	.loc 1 692 1
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 32
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
	str	r2, [fp, #-40]
	str	r3, [fp, #-44]
	mov	r3, r1
	strb	r3, [fp, #-33]
	.loc 1 693 16
	mov	r3, #0
	str	r3, [fp, #-28]
	.loc 1 697 8
	mov	r3, #0
	str	r3, [fp, #-24]
	.loc 1 697 3
	b	.L89
.L104:
	.loc 1 699 31
	ldr	r1, .L105
.LPIC68:
	add	r1, pc, r1
	ldr	r2, [fp, #-24]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r1, r3
	ldr	r3, [r3]
	.loc 1 699 9
	ldr	r2, [fp, #-32]
	cmp	r2, r3
	bne	.L90
	.loc 1 701 2
	ldr	r1, .L105+4
.LPIC69:
	add	r1, pc, r1
	ldr	r2, [fp, #-24]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r1, r3
	add	r3, r3, #8
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, [fp, #-44]
	cmp	r2, r3
	bls	.L91
	.loc 1 701 2 is_stmt 0 discriminator 1
	ldr	r3, .L105+8
.LPIC70:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L105+12
.LPIC71:
	add	r3, pc, r3
	str	r3, [sp, #4]
	movw	r3, #65277
	movt	r3, 65535
	str	r3, [sp]
	movw	r3, #701
	ldr	r2, .L105+16
.LPIC72:
	add	r2, pc, r2
	ldr	r1, .L105+20
.LPIC73:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	movw	r3, #65277
	movt	r3, 65535
	str	r3, [fp, #-28]
	b	.L92
.L91:
	.loc 1 707 2 is_stmt 1
	ldr	r1, .L105+24
.LPIC74:
	add	r1, pc, r1
	ldr	r2, [fp, #-24]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r1, r3
	add	r3, r3, #8
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, [fp, #8]
	cmp	r2, r3
	bls	.L93
	.loc 1 707 2 is_stmt 0 discriminator 1
	ldr	r3, .L105+28
.LPIC75:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L105+32
.LPIC76:
	add	r3, pc, r3
	str	r3, [sp, #4]
	movw	r3, #65277
	movt	r3, 65535
	str	r3, [sp]
	movw	r3, #707
	ldr	r2, .L105+36
.LPIC77:
	add	r2, pc, r2
	ldr	r1, .L105+40
.LPIC78:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	movw	r3, #65277
	movt	r3, 65535
	str	r3, [fp, #-28]
	b	.L92
.L93:
	.loc 1 713 12 is_stmt 1
	ldrb	r3, [fp, #-33]	@ zero_extendqisi2
	lsl	r3, r3, #8
	and	r3, r3, #63488
	.loc 1 713 11
	cmp	r3, #61440
	bne	.L94
	.loc 1 714 23
	ldrb	r3, [fp, #-33]	@ zero_extendqisi2
	lsl	r3, r3, #8
	.loc 1 714 18
	str	r3, [fp, #-16]
	.loc 1 715 20
	ldr	r3, [fp, #-40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	.loc 1 715 18
	ldr	r3, [fp, #-16]
	orr	r3, r3, r2
	str	r3, [fp, #-16]
	.loc 1 716 19
	ldr	r3, [fp, #-40]
	add	r3, r3, #1
	str	r3, [fp, #-40]
	.loc 1 717 20
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	b	.L95
.L94:
	.loc 1 720 18
	ldrb	r3, [fp, #-33]	@ zero_extendqisi2
	str	r3, [fp, #-16]
.L95:
	.loc 1 723 9
	ldr	r3, [fp, #-16]
	str	r3, [sp, #8]
	ldr	r3, .L105+44
.LPIC79:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, .L105+48
.LPIC80:
	add	r3, pc, r3
	str	r3, [sp]
	movw	r3, #727
	ldr	r2, .L105+52
.LPIC81:
	add	r2, pc, r2
	ldr	r1, .L105+56
.LPIC82:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_M2(PLT)
	.loc 1 733 15
	mov	r3, #0
	str	r3, [fp, #-20]
	.loc 1 733 9
	b	.L96
.L103:
	.loc 1 738 35
	ldr	r1, .L105+60
.LPIC83:
	add	r1, pc, r1
	ldr	r2, [fp, #-24]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r1, r3
	add	r3, r3, #4
	ldr	r1, [r3]
	.loc 1 738 47
	ldr	r2, [fp, #-20]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r1, r3
	.loc 1 738 51
	ldr	r3, [r3]
	.loc 1 738 13
	ldr	r2, [fp, #-16]
	cmp	r2, r3
	bne	.L97
	.loc 1 739 41
	ldr	r1, .L105+64
.LPIC84:
	add	r1, pc, r1
	ldr	r2, [fp, #-24]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r1, r3
	add	r3, r3, #4
	ldr	r1, [r3]
	.loc 1 739 53
	ldr	r2, [fp, #-20]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r1, r3
	.loc 1 739 57
	ldr	r4, [r3, #4]
	.loc 1 740 38
	ldr	r1, .L105+68
.LPIC85:
	add	r1, pc, r1
	ldr	r2, [fp, #-24]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r1, r3
	add	r3, r3, #4
	ldr	r1, [r3]
	.loc 1 740 50
	ldr	r2, [fp, #-20]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r1, r3
	.loc 1 740 54
	ldr	r0, [r3, #8]
	.loc 1 739 20
	ldr	r3, [fp, #-44]
	cmp	r3, #0
	beq	.L98
	.loc 1 739 20 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-44]
	sub	r2, r3, #1
	b	.L99
.L98:
	.loc 1 739 20 discriminator 2
	mov	r2, #0
.L99:
	.loc 1 739 20 discriminator 4
	ldr	r3, [fp, #8]
	cmp	r3, #0
	beq	.L100
	.loc 1 739 20 discriminator 5
	ldr	r3, [fp, #8]
	sub	r3, r3, #1
	b	.L101
.L100:
	.loc 1 739 20 discriminator 6
	mov	r3, #0
.L101:
	.loc 1 739 20 discriminator 8
	str	r3, [sp]
	ldr	r3, [fp, #4]
	ldr	r1, [fp, #-40]
	blx	r4
.LVL0:
	mov	r3, r0
	b	.L102
.L97:
	.loc 1 735 15 is_stmt 1
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L96:
	.loc 1 734 34
	ldr	r1, .L105+72
.LPIC86:
	add	r1, pc, r1
	ldr	r2, [fp, #-24]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r1, r3
	add	r3, r3, #4
	ldr	r1, [r3]
	.loc 1 734 46
	ldr	r2, [fp, #-20]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r1, r3
	.loc 1 734 50
	ldr	r3, [r3]
	.loc 1 734 58
	cmn	r3, #1
	bne	.L103
	.loc 1 749 9
	ldr	r3, .L105+76
.LPIC87:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L105+80
.LPIC88:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #1024
	str	r3, [sp]
	movw	r3, #749
	ldr	r2, .L105+84
.LPIC89:
	add	r2, pc, r2
	ldr	r1, .L105+88
.LPIC90:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #1024
	str	r3, [fp, #-28]
	b	.L92
.L90:
	.loc 1 697 45 discriminator 2
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L89:
	.loc 1 697 12 discriminator 1
	ldr	r3, [fp, #-24]
	cmp	r3, #2
	bls	.L104
	.loc 1 757 3
	ldr	r3, .L105+92
.LPIC91:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L105+96
.LPIC92:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #768
	str	r3, [sp]
	movw	r3, #757
	ldr	r2, .L105+100
.LPIC93:
	add	r2, pc, r2
	ldr	r1, .L105+104
.LPIC94:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #768
	str	r3, [fp, #-28]
	nop
.L92:
	.loc 1 764 10
	ldr	r3, [fp, #-28]
.L102:
	.loc 1 765 1
	mov	r0, r3
	sub	sp, fp, #8
	.cfi_def_cfa 13, 12
	@ sp needed
	pop	{r4, fp, pc}
.L106:
	.align	2
.L105:
	.word	EmulatedInterfaces-(.LPIC68+8)
	.word	EmulatedInterfaces-(.LPIC69+8)
	.word	.LC29-(.LPIC70+8)
	.word	.LC7-(.LPIC71+8)
	.word	.LC28-(.LPIC72+8)
	.word	.LC4-(.LPIC73+8)
	.word	EmulatedInterfaces-(.LPIC74+8)
	.word	.LC30-(.LPIC75+8)
	.word	.LC7-(.LPIC76+8)
	.word	.LC28-(.LPIC77+8)
	.word	.LC4-(.LPIC78+8)
	.word	.LC31-(.LPIC79+8)
	.word	.LC32-(.LPIC80+8)
	.word	.LC28-(.LPIC81+8)
	.word	.LC4-(.LPIC82+8)
	.word	EmulatedInterfaces-(.LPIC83+8)
	.word	EmulatedInterfaces-(.LPIC84+8)
	.word	EmulatedInterfaces-(.LPIC85+8)
	.word	EmulatedInterfaces-(.LPIC86+8)
	.word	.LC33-(.LPIC87+8)
	.word	.LC7-(.LPIC88+8)
	.word	.LC28-(.LPIC89+8)
	.word	.LC4-(.LPIC90+8)
	.word	.LC27-(.LPIC91+8)
	.word	.LC7-(.LPIC92+8)
	.word	.LC28-(.LPIC93+8)
	.word	.LC4-(.LPIC94+8)
	.cfi_endproc
.LFE13:
	.size	EApiI2CWriteReadEmul, .-EApiI2CWriteReadEmul
.Letext0:
	.file 2 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/bits/alltypes.h"
	.file 3 "../../include/EApi.h"
	.file 4 "/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../DIDData.h"
	.file 5 "/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../UDSData.h"
	.file 6 "/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EPIData.h"
	.file 7 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/stdio.h"
	.file 8 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/string.h"
	.file 9 "../include/DbgChk.h"
	.file 10 "../../include/linux/EApiOs.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xc61
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1b
	.4byte	.LASF108
	.byte	0x1d
	.4byte	.LASF109
	.4byte	.LASF110
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x6
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2b
	.byte	0x18
	.4byte	0x26
	.uleb128 0x1c
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
	.uleb128 0x6
	.4byte	.LASF4
	.byte	0x2
	.byte	0x30
	.byte	0x18
	.4byte	0x26
	.uleb128 0x6
	.4byte	.LASF5
	.byte	0x2
	.byte	0x59
	.byte	0x19
	.4byte	0x66
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.4byte	.LASF6
	.uleb128 0xa
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x6
	.4byte	.LASF8
	.byte	0x2
	.byte	0x72
	.byte	0x19
	.4byte	0x80
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.uleb128 0xa
	.byte	0x2
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x2
	.byte	0x7c
	.byte	0x19
	.4byte	0x26
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x7
	.4byte	0xa6
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x4
	.4byte	0xa6
	.uleb128 0x1d
	.byte	0x4
	.uleb128 0x4
	.4byte	0xb2
	.uleb128 0x10
	.4byte	0xb2
	.uleb128 0x7
	.4byte	0xad
	.uleb128 0x4
	.4byte	0xbe
	.uleb128 0x10
	.4byte	0xbe
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x4
	.4byte	0xcd
	.uleb128 0x16
	.4byte	.LASF15
	.byte	0x2
	.2byte	0x139
	.byte	0x19
	.4byte	0xe6
	.uleb128 0x1e
	.4byte	.LASF111
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x3
	.byte	0x91
	.byte	0x12
	.4byte	0x8e
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x3
	.byte	0x92
	.byte	0x12
	.4byte	0x8e
	.uleb128 0x4
	.4byte	0xf7
	.uleb128 0xa
	.byte	0x8
	.byte	0x4
	.4byte	.LASF18
	.uleb128 0x7
	.4byte	0xd9
	.uleb128 0x10
	.4byte	0x10f
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.4byte	0x125
	.uleb128 0x1f
	.4byte	0xeb
	.4byte	0x148
	.uleb128 0x2
	.4byte	0x8e
	.uleb128 0x2
	.4byte	0xb2
	.uleb128 0x2
	.4byte	0x8e
	.uleb128 0x2
	.4byte	0xb2
	.uleb128 0x2
	.4byte	0x8e
	.byte	0
	.uleb128 0x11
	.4byte	.LASF23
	.byte	0xc
	.byte	0x47
	.4byte	0x179
	.uleb128 0x20
	.ascii	"Cmd\000"
	.byte	0x1
	.byte	0x48
	.byte	0x17
	.4byte	0xd4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x49
	.byte	0x17
	.4byte	0xd4
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4a
	.byte	0x17
	.4byte	0xb4
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x1
	.byte	0x4b
	.byte	0x2
	.4byte	0x148
	.uleb128 0x11
	.4byte	.LASF24
	.byte	0x14
	.byte	0x4c
	.4byte	0x1cd
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x4d
	.byte	0x17
	.4byte	0xd4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x4e
	.byte	0x17
	.4byte	0xcd
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x4f
	.byte	0x17
	.4byte	0xcd
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x50
	.byte	0x17
	.4byte	0xc3
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x51
	.byte	0x17
	.4byte	0x1d2
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.4byte	0x179
	.uleb128 0x4
	.4byte	0x1cd
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.4byte	0x185
	.uleb128 0x11
	.4byte	.LASF31
	.byte	0x1c
	.byte	0x54
	.4byte	0x243
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x55
	.byte	0x17
	.4byte	0xd4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x56
	.byte	0x17
	.4byte	0xd4
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x57
	.byte	0x17
	.4byte	0xd4
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x5a
	.byte	0x17
	.4byte	0xcd
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x5b
	.byte	0x17
	.4byte	0x248
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x5c
	.byte	0x17
	.4byte	0xc3
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x5d
	.byte	0xd
	.4byte	0x10f
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.4byte	0x74
	.uleb128 0x4
	.4byte	0x243
	.uleb128 0x6
	.4byte	.LASF38
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.4byte	0x1e3
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0xc
	.byte	0x60
	.4byte	0x289
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x61
	.byte	0x1b
	.4byte	0xd4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x62
	.byte	0x1b
	.4byte	0x28e
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x63
	.byte	0x1b
	.4byte	0xd4
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.4byte	0x119
	.uleb128 0x4
	.4byte	0x289
	.uleb128 0x6
	.4byte	.LASF43
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.4byte	0x259
	.uleb128 0x4
	.4byte	0x293
	.uleb128 0x8
	.4byte	0xa1
	.4byte	0x2b4
	.uleb128 0xe
	.4byte	0x26
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0x1
	.byte	0x66
	.byte	0x8
	.4byte	0x2a4
	.uleb128 0x5
	.byte	0x3
	.4byte	StdExt
	.uleb128 0x8
	.4byte	0x74
	.4byte	0x2d7
	.uleb128 0x13
	.4byte	0x26
	.2byte	0x1ff
	.byte	0
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x4
	.byte	0x26
	.byte	0x9
	.4byte	0x2c6
	.uleb128 0x5
	.byte	0x3
	.4byte	DIDEEPROM
	.uleb128 0xb
	.4byte	.LASF47
	.2byte	0x152
	.byte	0x18
	.4byte	0x24d
	.uleb128 0x5
	.byte	0x3
	.4byte	DIDEEPromData
	.uleb128 0x12
	.4byte	.LASF46
	.byte	0x5
	.byte	0x26
	.byte	0x9
	.4byte	0x2c6
	.uleb128 0x5
	.byte	0x3
	.4byte	UDSEEPROM
	.uleb128 0xb
	.4byte	.LASF48
	.2byte	0x170
	.byte	0x18
	.4byte	0x24d
	.uleb128 0x5
	.byte	0x3
	.4byte	UDSEEPromData
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0x6
	.byte	0x26
	.byte	0x9
	.4byte	0x2c6
	.uleb128 0x5
	.byte	0x3
	.4byte	EPIEEPROM
	.uleb128 0xb
	.4byte	.LASF50
	.2byte	0x18e
	.byte	0x18
	.4byte	0x24d
	.uleb128 0x5
	.byte	0x3
	.4byte	EPIEEPromData
	.uleb128 0x8
	.4byte	0x74
	.4byte	0x354
	.uleb128 0x13
	.4byte	0x26
	.2byte	0x7ff
	.byte	0
	.uleb128 0x5
	.4byte	.LASF51
	.2byte	0x1ae
	.byte	0x9
	.4byte	0x343
	.uleb128 0x5
	.byte	0x3
	.4byte	COM0MEEPROM
	.uleb128 0xb
	.4byte	.LASF52
	.2byte	0x1af
	.byte	0x18
	.4byte	0x24d
	.uleb128 0x5
	.byte	0x3
	.4byte	COM0MEEPromData
	.uleb128 0x8
	.4byte	0x74
	.4byte	0x389
	.uleb128 0x13
	.4byte	0x26
	.2byte	0xfff
	.byte	0
	.uleb128 0x5
	.4byte	.LASF53
	.2byte	0x1b8
	.byte	0x9
	.4byte	0x378
	.uleb128 0x5
	.byte	0x3
	.4byte	COM0CBEEPROM
	.uleb128 0xb
	.4byte	.LASF54
	.2byte	0x1b9
	.byte	0x18
	.4byte	0x24d
	.uleb128 0x5
	.byte	0x3
	.4byte	COM0CBEEPromData
	.uleb128 0x8
	.4byte	0x74
	.4byte	0x3be
	.uleb128 0x13
	.4byte	0x26
	.2byte	0x3ff
	.byte	0
	.uleb128 0x5
	.4byte	.LASF55
	.2byte	0x1c2
	.byte	0x9
	.4byte	0x3ad
	.uleb128 0x5
	.byte	0x3
	.4byte	EeePExpEEPROM
	.uleb128 0xb
	.4byte	.LASF56
	.2byte	0x1c3
	.byte	0x18
	.4byte	0x24d
	.uleb128 0x5
	.byte	0x3
	.4byte	EeePExpEEPromData
	.uleb128 0x8
	.4byte	0x3f2
	.4byte	0x3f2
	.uleb128 0xe
	.4byte	0x26
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.4byte	0x24d
	.uleb128 0x5
	.4byte	.LASF57
	.2byte	0x1cc
	.byte	0x12
	.4byte	0x3e2
	.uleb128 0x5
	.byte	0x3
	.4byte	OpenFiles
	.uleb128 0x8
	.4byte	0x5a
	.4byte	0x419
	.uleb128 0xe
	.4byte	0x26
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF58
	.2byte	0x232
	.byte	0x8
	.4byte	0x409
	.uleb128 0x5
	.byte	0x3
	.4byte	CpuTemp
	.uleb128 0x5
	.4byte	.LASF59
	.2byte	0x233
	.byte	0x8
	.4byte	0x409
	.uleb128 0x5
	.byte	0x3
	.4byte	ChipsetTemp
	.uleb128 0x5
	.4byte	.LASF60
	.2byte	0x234
	.byte	0x8
	.4byte	0x409
	.uleb128 0x5
	.byte	0x3
	.4byte	SystemTemp
	.uleb128 0x8
	.4byte	0x179
	.4byte	0x45f
	.uleb128 0xe
	.4byte	0x26
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.4byte	.LASF61
	.2byte	0x235
	.byte	0xb
	.4byte	0x44f
	.uleb128 0x5
	.byte	0x3
	.4byte	HwmonCmdIndx
	.uleb128 0x5
	.4byte	.LASF62
	.2byte	0x23b
	.byte	0x14
	.4byte	0x1d7
	.uleb128 0x5
	.byte	0x3
	.4byte	HWMon
	.uleb128 0x8
	.4byte	0x29f
	.4byte	0x493
	.uleb128 0xe
	.4byte	0x26
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	0x483
	.uleb128 0x5
	.4byte	.LASF63
	.2byte	0x255
	.byte	0x17
	.4byte	0x493
	.uleb128 0x5
	.byte	0x3
	.4byte	ExternalI2CDevices
	.uleb128 0x8
	.4byte	0x29f
	.4byte	0x4ba
	.uleb128 0xe
	.4byte	0x26
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	0x4aa
	.uleb128 0x5
	.4byte	.LASF64
	.2byte	0x261
	.byte	0x17
	.4byte	0x4ba
	.uleb128 0x5
	.byte	0x3
	.4byte	LVDS_1I2CDevices
	.uleb128 0x8
	.4byte	0x29f
	.4byte	0x4e1
	.uleb128 0xe
	.4byte	0x26
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	0x4d1
	.uleb128 0x5
	.4byte	.LASF65
	.2byte	0x269
	.byte	0x17
	.4byte	0x4e1
	.uleb128 0x5
	.byte	0x3
	.4byte	LVDS_2I2CDevices
	.uleb128 0x21
	.4byte	.LASF66
	.byte	0xc
	.byte	0x1
	.2byte	0x271
	.byte	0x10
	.4byte	0x52c
	.uleb128 0x22
	.ascii	"Id\000"
	.byte	0x1
	.2byte	0x272
	.byte	0x1a
	.4byte	0x103
	.byte	0
	.uleb128 0x17
	.4byte	.LASF67
	.2byte	0x273
	.4byte	0x52c
	.byte	0x4
	.uleb128 0x17
	.4byte	.LASF68
	.2byte	0x275
	.4byte	0x8e
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.4byte	0x29f
	.uleb128 0x16
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x277
	.byte	0x2
	.4byte	0x4f8
	.uleb128 0x4
	.4byte	0x531
	.uleb128 0x8
	.4byte	0x53e
	.4byte	0x553
	.uleb128 0xe
	.4byte	0x26
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	0x543
	.uleb128 0x5
	.4byte	.LASF70
	.2byte	0x279
	.byte	0x19
	.4byte	0x553
	.uleb128 0x5
	.byte	0x3
	.4byte	EmulatedInterfaces
	.uleb128 0xd
	.4byte	.LASF71
	.byte	0x7
	.byte	0x46
	.byte	0x5
	.4byte	0x39
	.4byte	0x580
	.uleb128 0x2
	.4byte	0x10f
	.byte	0
	.uleb128 0x18
	.4byte	.LASF80
	.byte	0x7
	.byte	0x52
	.4byte	0x591
	.uleb128 0x2
	.4byte	0x10f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF72
	.byte	0x7
	.byte	0x51
	.byte	0x6
	.4byte	0x40
	.4byte	0x5a7
	.uleb128 0x2
	.4byte	0x10f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0x7
	.byte	0x44
	.byte	0x7
	.4byte	0x10f
	.4byte	0x5c2
	.uleb128 0x2
	.4byte	0xc8
	.uleb128 0x2
	.4byte	0xc8
	.byte	0
	.uleb128 0xd
	.4byte	.LASF74
	.byte	0x8
	.byte	0x1b
	.byte	0x7
	.4byte	0xb2
	.4byte	0x5e2
	.uleb128 0x2
	.4byte	0xb2
	.uleb128 0x2
	.4byte	0x39
	.uleb128 0x2
	.4byte	0x2d
	.byte	0
	.uleb128 0xd
	.4byte	.LASF75
	.byte	0x8
	.byte	0x19
	.byte	0x7
	.4byte	0xb2
	.4byte	0x602
	.uleb128 0x2
	.4byte	0xb2
	.uleb128 0x2
	.4byte	0x602
	.uleb128 0x2
	.4byte	0x2d
	.byte	0
	.uleb128 0x7
	.4byte	0x60c
	.uleb128 0x10
	.4byte	0x602
	.uleb128 0x23
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0x7
	.byte	0x57
	.byte	0x8
	.4byte	0x2d
	.4byte	0x632
	.uleb128 0x2
	.4byte	0xb9
	.uleb128 0x2
	.4byte	0x2d
	.uleb128 0x2
	.4byte	0x2d
	.uleb128 0x2
	.4byte	0x114
	.byte	0
	.uleb128 0xd
	.4byte	.LASF77
	.byte	0x7
	.byte	0x58
	.byte	0x8
	.4byte	0x2d
	.4byte	0x657
	.uleb128 0x2
	.4byte	0x607
	.uleb128 0x2
	.4byte	0x2d
	.uleb128 0x2
	.4byte	0x2d
	.uleb128 0x2
	.4byte	0x114
	.byte	0
	.uleb128 0xd
	.4byte	.LASF78
	.byte	0x7
	.byte	0x50
	.byte	0x5
	.4byte	0x39
	.4byte	0x677
	.uleb128 0x2
	.4byte	0x10f
	.uleb128 0x2
	.4byte	0x40
	.uleb128 0x2
	.4byte	0x39
	.byte	0
	.uleb128 0xd
	.4byte	.LASF79
	.byte	0x9
	.byte	0x3e
	.byte	0x1
	.4byte	0x39
	.4byte	0x6a7
	.uleb128 0x2
	.4byte	0xa6
	.uleb128 0x2
	.4byte	0xbe
	.uleb128 0x2
	.4byte	0xbe
	.uleb128 0x2
	.4byte	0x26
	.uleb128 0x2
	.4byte	0xeb
	.uleb128 0x2
	.4byte	0xbe
	.uleb128 0x19
	.byte	0
	.uleb128 0x18
	.4byte	.LASF81
	.byte	0xa
	.byte	0x6e
	.4byte	0x6b8
	.uleb128 0x2
	.4byte	0xcd
	.byte	0
	.uleb128 0xd
	.4byte	.LASF82
	.byte	0x9
	.byte	0x30
	.byte	0x1
	.4byte	0x39
	.4byte	0x6e8
	.uleb128 0x2
	.4byte	0xa6
	.uleb128 0x2
	.4byte	0xbe
	.uleb128 0x2
	.4byte	0xbe
	.uleb128 0x2
	.4byte	0x26
	.uleb128 0x2
	.4byte	0xbe
	.uleb128 0x2
	.4byte	0xbe
	.uleb128 0x19
	.byte	0
	.uleb128 0xc
	.4byte	.LASF90
	.2byte	0x2ac
	.4byte	0xeb
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x79f
	.uleb128 0x1a
	.ascii	"Id\000"
	.2byte	0x2ad
	.byte	0x18
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF83
	.2byte	0x2ae
	.byte	0x18
	.4byte	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x1
	.4byte	.LASF84
	.2byte	0x2af
	.byte	0x18
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF85
	.2byte	0x2b0
	.byte	0x18
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF86
	.2byte	0x2b1
	.byte	0x18
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1
	.4byte	.LASF87
	.2byte	0x2b2
	.byte	0x18
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xb
	.4byte	.LASF88
	.2byte	0x2b5
	.byte	0x10
	.4byte	0xeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.ascii	"i\000"
	.2byte	0x2b6
	.byte	0xc
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xf
	.ascii	"i2\000"
	.2byte	0x2b6
	.byte	0xe
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.4byte	.LASF89
	.2byte	0x2b7
	.byte	0xc
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF93
	.2byte	0x2fa
	.4byte	.L92
	.byte	0
	.uleb128 0xc
	.4byte	.LASF91
	.2byte	0x283
	.4byte	0xeb
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7fd
	.uleb128 0x1a
	.ascii	"Id\000"
	.2byte	0x284
	.byte	0x15
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF92
	.2byte	0x285
	.byte	0x15
	.4byte	0x7fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.4byte	.LASF88
	.2byte	0x288
	.byte	0x10
	.4byte	0xeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xf
	.ascii	"i\000"
	.2byte	0x289
	.byte	0xc
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x15
	.4byte	.LASF93
	.2byte	0x29c
	.4byte	.L83
	.byte	0
	.uleb128 0x7
	.4byte	0x8e
	.uleb128 0xc
	.4byte	.LASF94
	.2byte	0x243
	.4byte	0xeb
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x867
	.uleb128 0x1
	.4byte	.LASF42
	.2byte	0x244
	.byte	0x14
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1
	.4byte	.LASF84
	.2byte	0x245
	.byte	0x14
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1
	.4byte	.LASF85
	.2byte	0x246
	.byte	0x14
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF86
	.2byte	0x247
	.byte	0x14
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF87
	.2byte	0x248
	.byte	0x14
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF95
	.2byte	0x220
	.4byte	0xeb
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8cc
	.uleb128 0x1
	.4byte	.LASF42
	.2byte	0x221
	.byte	0x13
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1
	.4byte	.LASF84
	.2byte	0x222
	.byte	0x13
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1
	.4byte	.LASF85
	.2byte	0x223
	.byte	0x13
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF86
	.2byte	0x224
	.byte	0x13
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF87
	.2byte	0x225
	.byte	0x13
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF96
	.2byte	0x20d
	.4byte	0xeb
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x931
	.uleb128 0x1
	.4byte	.LASF42
	.2byte	0x20e
	.byte	0x13
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1
	.4byte	.LASF84
	.2byte	0x20f
	.byte	0x13
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1
	.4byte	.LASF85
	.2byte	0x210
	.byte	0x13
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF86
	.2byte	0x211
	.byte	0x13
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF87
	.2byte	0x212
	.byte	0x13
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF97
	.2byte	0x1f9
	.4byte	0xeb
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x996
	.uleb128 0x1
	.4byte	.LASF42
	.2byte	0x1fa
	.byte	0x13
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1
	.4byte	.LASF84
	.2byte	0x1fb
	.byte	0x13
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1
	.4byte	.LASF85
	.2byte	0x1fc
	.byte	0x13
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF86
	.2byte	0x1fd
	.byte	0x13
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF87
	.2byte	0x1fe
	.byte	0x13
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF98
	.2byte	0x1eb
	.4byte	0xeb
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9cc
	.uleb128 0xf
	.ascii	"i\000"
	.2byte	0x1ed
	.byte	0x7
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xb
	.4byte	.LASF99
	.2byte	0x1ee
	.byte	0x15
	.4byte	0x9cc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x7
	.4byte	0x3f2
	.uleb128 0xc
	.4byte	.LASF100
	.2byte	0x1d7
	.4byte	0xeb
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa07
	.uleb128 0xf
	.ascii	"i\000"
	.2byte	0x1d9
	.byte	0x7
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.4byte	.LASF99
	.2byte	0x1da
	.byte	0x15
	.4byte	0x9cc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.4byte	.LASF101
	.2byte	0x199
	.4byte	0xeb
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa6c
	.uleb128 0x1
	.4byte	.LASF42
	.2byte	0x19a
	.byte	0x13
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1
	.4byte	.LASF84
	.2byte	0x19b
	.byte	0x13
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1
	.4byte	.LASF85
	.2byte	0x19c
	.byte	0x13
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF86
	.2byte	0x19d
	.byte	0x13
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF87
	.2byte	0x19e
	.byte	0x13
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF102
	.2byte	0x17a
	.4byte	0xeb
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xad1
	.uleb128 0x1
	.4byte	.LASF42
	.2byte	0x17b
	.byte	0x13
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1
	.4byte	.LASF84
	.2byte	0x17c
	.byte	0x13
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1
	.4byte	.LASF85
	.2byte	0x17d
	.byte	0x13
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF86
	.2byte	0x17e
	.byte	0x13
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF87
	.2byte	0x17f
	.byte	0x13
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF103
	.2byte	0x15c
	.4byte	0xeb
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb36
	.uleb128 0x1
	.4byte	.LASF42
	.2byte	0x15d
	.byte	0x13
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1
	.4byte	.LASF84
	.2byte	0x15e
	.byte	0x13
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1
	.4byte	.LASF85
	.2byte	0x15f
	.byte	0x13
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF86
	.2byte	0x160
	.byte	0x13
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF87
	.2byte	0x161
	.byte	0x13
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF104
	.byte	0x1
	.byte	0xf0
	.byte	0x1
	.4byte	0xeb
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbda
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0xf1
	.byte	0x1f
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.4byte	.LASF105
	.byte	0xf2
	.byte	0x1f
	.4byte	0xbda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0xf3
	.byte	0x1f
	.4byte	0x243
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0xf4
	.byte	0x1f
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0xf5
	.byte	0x1f
	.4byte	0x243
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0xf6
	.byte	0x1f
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.4byte	.LASF88
	.byte	0xf9
	.byte	0x10
	.4byte	0xeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0xfa
	.byte	0x13
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF107
	.byte	0xfb
	.byte	0x10
	.4byte	0x1cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.4byte	.LASF93
	.2byte	0x14b
	.4byte	.L25
	.byte	0
	.uleb128 0x7
	.4byte	0x1d7
	.uleb128 0x25
	.4byte	.LASF112
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xeb
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x6f
	.byte	0x1b
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.4byte	.LASF105
	.byte	0x70
	.byte	0x1b
	.4byte	0x3f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0x71
	.byte	0x1b
	.4byte	0x243
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x72
	.byte	0x1b
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x73
	.byte	0x1b
	.4byte	0x243
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0x74
	.byte	0x1b
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.4byte	.LASF88
	.byte	0x77
	.byte	0x10
	.4byte	0xeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.4byte	.LASF93
	.byte	0x1
	.byte	0xe9
	.byte	0x1
	.4byte	.L8
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
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
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
	.uleb128 0x10
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0xd
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
	.sleb128 26
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x19
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x26
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
.LASF46:
	.ascii	"UDSEEPROM\000"
.LASF62:
	.ascii	"HWMon\000"
.LASF61:
	.ascii	"HwmonCmdIndx\000"
.LASF3:
	.ascii	"size_t\000"
.LASF4:
	.ascii	"uintptr_t\000"
.LASF41:
	.ascii	"Emulator\000"
.LASF48:
	.ascii	"UDSEEPromData\000"
.LASF16:
	.ascii	"EApiStatus_t\000"
.LASF34:
	.ascii	"CurIndx\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF104:
	.ascii	"EmulateCmdDevice\000"
.LASF37:
	.ascii	"FStream\000"
.LASF17:
	.ascii	"EApiId_t\000"
.LASF19:
	.ascii	"I2CDevEmulator_t\000"
.LASF49:
	.ascii	"EPIEEPROM\000"
.LASF78:
	.ascii	"fseek\000"
.LASF2:
	.ascii	"long long int\000"
.LASF6:
	.ascii	"signed char\000"
.LASF53:
	.ascii	"COM0CBEEPROM\000"
.LASF31:
	.ascii	"EepromCfgData_s\000"
.LASF38:
	.ascii	"EepromCfgData_t\000"
.LASF65:
	.ascii	"LVDS_2I2CDevices\000"
.LASF84:
	.ascii	"pWBuffer\000"
.LASF110:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux\000"
.LASF1:
	.ascii	"long int\000"
.LASF102:
	.ascii	"EmulateUDSEeprom\000"
.LASF99:
	.ascii	"pOpenFiles\000"
.LASF55:
	.ascii	"EeePExpEEPROM\000"
.LASF75:
	.ascii	"memcpy\000"
.LASF45:
	.ascii	"DIDEEPROM\000"
.LASF18:
	.ascii	"double\000"
.LASF66:
	.ascii	"InterfaceIdsTbl_s\000"
.LASF69:
	.ascii	"InterfaceIdsTbl_t\000"
.LASF57:
	.ascii	"OpenFiles\000"
.LASF108:
	.ascii	"GNU C17 11.2.0 -mcpu=cortex-a9 -mfloat-abi=hard -mf"
	.ascii	"pu=vfpv3 -mabi=aapcs-linux -mtls-dialect=gnu -marm "
	.ascii	"-march=armv7-a+mp+sec+vfpv3 -g -fstack-protector-st"
	.ascii	"rong -fvisibility=hidden -fPIC\000"
.LASF59:
	.ascii	"ChipsetTemp\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF47:
	.ascii	"DIDEEPromData\000"
.LASF68:
	.ascii	"MaxBlockLen\000"
.LASF58:
	.ascii	"CpuTemp\000"
.LASF56:
	.ascii	"EeePExpEEPromData\000"
.LASF101:
	.ascii	"EmulateEPIEeprom\000"
.LASF81:
	.ascii	"EApiSleepns\000"
.LASF14:
	.ascii	"long unsigned int\000"
.LASF42:
	.ascii	"Arg1\000"
.LASF21:
	.ascii	"pBuffer\000"
.LASF91:
	.ascii	"EApiI2CGetBusCapEmul\000"
.LASF50:
	.ascii	"EPIEEPromData\000"
.LASF10:
	.ascii	"short unsigned int\000"
.LASF106:
	.ascii	"ReadBCnt2\000"
.LASF93:
	.ascii	"ExitPoint\000"
.LASF98:
	.ascii	"CloseI2CEepromFiles\000"
.LASF64:
	.ascii	"LVDS_1I2CDevices\000"
.LASF28:
	.ascii	"cszDeviceName\000"
.LASF103:
	.ascii	"EmulateDIDEeprom\000"
.LASF96:
	.ascii	"EmulateCOM0CBEeprom\000"
.LASF94:
	.ascii	"EmulateHWMonDevice\000"
.LASF20:
	.ascii	"CmdBlockLen\000"
.LASF43:
	.ascii	"BusDevicesTbl_t\000"
.LASF109:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EA"
	.ascii	"piEmulI2C.c\000"
.LASF33:
	.ascii	"PageLength\000"
.LASF63:
	.ascii	"ExternalI2CDevices\000"
.LASF52:
	.ascii	"COM0MEEPromData\000"
.LASF107:
	.ascii	"pCurCmd\000"
.LASF44:
	.ascii	"StdExt\000"
.LASF35:
	.ascii	"pu8DBuffer\000"
.LASF111:
	.ascii	"_IO_FILE\000"
.LASF25:
	.ascii	"ExtendedCmd\000"
.LASF60:
	.ascii	"SystemTemp\000"
.LASF100:
	.ascii	"OpenI2CEepromFiles\000"
.LASF67:
	.ascii	"DevicesList\000"
.LASF73:
	.ascii	"fopen\000"
.LASF86:
	.ascii	"pRBuffer\000"
.LASF85:
	.ascii	"WriteBCnt\000"
.LASF83:
	.ascii	"Addr\000"
.LASF39:
	.ascii	"BusDevicesTbl_s\000"
.LASF9:
	.ascii	"unsigned char\000"
.LASF24:
	.ascii	"CmdDeviceCfgData_s\000"
.LASF30:
	.ascii	"CmdDeviceCfgData_t\000"
.LASF112:
	.ascii	"EmulateEepromFS\000"
.LASF7:
	.ascii	"short int\000"
.LASF95:
	.ascii	"EmulateCOM0MEeprom\000"
.LASF79:
	.ascii	"siFormattedMessage_SC\000"
.LASF15:
	.ascii	"FILE\000"
.LASF87:
	.ascii	"ReadBCnt\000"
.LASF76:
	.ascii	"fread\000"
.LASF26:
	.ascii	"CurrentCmd\000"
.LASF23:
	.ascii	"CmdDesc_s\000"
.LASF22:
	.ascii	"CmdDesc_t\000"
.LASF11:
	.ascii	"uint32_t\000"
.LASF54:
	.ascii	"COM0CBEEPromData\000"
.LASF88:
	.ascii	"StatusCode\000"
.LASF13:
	.ascii	"char\000"
.LASF29:
	.ascii	"Cmds\000"
.LASF97:
	.ascii	"EmulateEeePExpEeprom\000"
.LASF105:
	.ascii	"CfgData\000"
.LASF32:
	.ascii	"ByteLen\000"
.LASF90:
	.ascii	"EApiI2CWriteReadEmul\000"
.LASF51:
	.ascii	"COM0MEEPROM\000"
.LASF71:
	.ascii	"fclose\000"
.LASF92:
	.ascii	"pMaxBlkLen\000"
.LASF5:
	.ascii	"int8_t\000"
.LASF82:
	.ascii	"siFormattedMessage_M2\000"
.LASF36:
	.ascii	"cszFilename\000"
.LASF74:
	.ascii	"memset\000"
.LASF70:
	.ascii	"EmulatedInterfaces\000"
.LASF40:
	.ascii	"EncAddr\000"
.LASF8:
	.ascii	"uint8_t\000"
.LASF89:
	.ascii	"LclAddr\000"
.LASF77:
	.ascii	"fwrite\000"
.LASF27:
	.ascii	"CurrentOffset\000"
.LASF80:
	.ascii	"rewind\000"
.LASF72:
	.ascii	"ftell\000"
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
