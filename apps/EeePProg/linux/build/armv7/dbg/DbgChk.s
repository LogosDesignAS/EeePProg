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
	.file	"DbgChk.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.global	ErrorLookupA
	.section	.rodata
	.align	2
.LC0:
	.ascii	"NOT_INITIALIZED\000"
	.align	2
.LC1:
	.ascii	"INITIALIZED\000"
	.align	2
.LC2:
	.ascii	"ALLOC_ERROR\000"
	.align	2
.LC3:
	.ascii	"DRIVER_TIMEOUT\000"
	.align	2
.LC4:
	.ascii	"INVALID_PARAMETER\000"
	.align	2
.LC5:
	.ascii	"INVALID_BLOCK_ALIGNMENT\000"
	.align	2
.LC6:
	.ascii	"INVALID_BLOCK_LENGTH\000"
	.align	2
.LC7:
	.ascii	"INVALID_DIRECTION\000"
	.align	2
.LC8:
	.ascii	"INVALID_BITMASK\000"
	.align	2
.LC9:
	.ascii	"RUNNING\000"
	.align	2
.LC10:
	.ascii	"UNSUPPORTED\000"
	.align	2
.LC11:
	.ascii	"NOT_FOUND\000"
	.align	2
.LC12:
	.ascii	"TIMEOUT\000"
	.align	2
.LC13:
	.ascii	"BUSY_COLLISION\000"
	.align	2
.LC14:
	.ascii	"READ_ERROR\000"
	.align	2
.LC15:
	.ascii	"WRITE_ERROR\000"
	.align	2
.LC16:
	.ascii	"MORE_DATA\000"
	.align	2
.LC17:
	.ascii	"ERROR\000"
	.align	2
.LC18:
	.ascii	"SUCCESS\000"
	.section	.data.rel.ro.local,"aw"
	.align	2
	.type	ErrorLookupA, %object
	.size	ErrorLookupA, 152
ErrorLookupA:
	.word	-1
	.word	.LC0
	.word	-2
	.word	.LC1
	.word	-3
	.word	.LC2
	.word	-4
	.word	.LC3
	.word	-257
	.word	.LC4
	.word	-258
	.word	.LC5
	.word	-259
	.word	.LC6
	.word	-260
	.word	.LC7
	.word	-261
	.word	.LC8
	.word	-262
	.word	.LC9
	.word	-769
	.word	.LC10
	.word	-1025
	.word	.LC11
	.word	-1026
	.word	.LC12
	.word	-1027
	.word	.LC13
	.word	-1281
	.word	.LC14
	.word	-1282
	.word	.LC15
	.word	-1537
	.word	.LC16
	.word	-3841
	.word	.LC17
	.word	0
	.word	.LC18
	.text
	.align	2
	.global	EApiGetErrorStringA
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiGetErrorStringA, %function
EApiGetErrorStringA:
.LFB1:
	.file 1 "/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/linux/../../common/DbgChk.c"
	.loc 1 70 1
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
	.loc 1 76 13
	ldr	r3, [fp, #-16]
	mov	r2, #0
	str	r2, [r3]
	.loc 1 77 8
	mov	r3, #19
	str	r3, [fp, #-12]
	.loc 1 78 19
	ldr	r3, .L6
.LPIC0:
	add	r3, pc, r3
	str	r3, [fp, #-8]
	.loc 1 77 3
	b	.L2
.L5:
	.loc 1 83 20
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	.loc 1 83 7
	ldr	r2, [fp, #-20]
	cmp	r2, r3
	bne	.L3
	.loc 1 84 30
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #4]
	.loc 1 84 17
	ldr	r3, [fp, #-16]
	str	r2, [r3]
	.loc 1 85 14
	mov	r3, #0
	b	.L4
.L3:
	.loc 1 79 23
	ldr	r3, [fp, #-8]
	add	r3, r3, #8
	str	r3, [fp, #-8]
.L2:
	.loc 1 79 8 discriminator 1
	ldr	r3, [fp, #-12]
	sub	r2, r3, #1
	str	r2, [fp, #-12]
	.loc 1 79 7 discriminator 1
	cmp	r3, #0
	bne	.L5
	.loc 1 88 10
	mvn	r3, #3840
.L4:
	.loc 1 89 1
	mov	r0, r3
	add	sp, fp, #0
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	fp, [sp], #4
	.cfi_restore 11
	.cfi_def_cfa_offset 0
	bx	lr
.L7:
	.align	2
.L6:
	.word	ErrorLookupA-(.LPIC0+8)
	.cfi_endproc
.LFE1:
	.size	EApiGetErrorStringA, .-EApiGetErrorStringA
	.align	2
	.global	GetLastOccurance
	.syntax unified
	.arm
	.fpu vfpv3
	.type	GetLastOccurance, %function
GetLastOccurance:
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
	.loc 1 95 14
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-8]
	.loc 1 96 8
	b	.L9
.L12:
	.loc 1 97 23
	ldr	r3, [fp, #-16]
	add	r2, r3, #1
	str	r2, [fp, #-16]
	.loc 1 97 12
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 97 5
	cmp	r3, #47
	beq	.L10
	cmp	r3, #92
	bne	.L14
.L10:
	.loc 1 100 16
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-8]
.L14:
	.loc 1 102 9
	nop
.L9:
	.loc 1 96 9
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L12
	.loc 1 105 10
	ldr	r3, [fp, #-8]
	.loc 1 106 1
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
	.size	GetLastOccurance, .-GetLastOccurance
	.global	cszLogFormat
	.section	.rodata
	.align	2
	.type	cszLogFormat, %object
	.size	cszLogFormat, 25
cszLogFormat:
	.ascii	"%c%04i %-15.15s %-30s | \000"
	.align	2
.LC19:
	.ascii	"%-25s | \000"
	.text
	.align	2
	.global	siFormattedMessage_M2
	.syntax unified
	.arm
	.fpu vfpv3
	.type	siFormattedMessage_M2, %function
siFormattedMessage_M2:
.LFB3:
	.loc 1 120 1
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 1
	push	{r4, fp, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #8
	.cfi_def_cfa 11, 4
	sub	sp, sp, #52
	str	r1, [fp, #-36]
	str	r2, [fp, #-40]
	str	r3, [fp, #-44]
	mov	r3, r0
	strb	r3, [fp, #-29]
	ldr	r3, [fp, #4]
	str	r3, [fp, #-48]
	ldr	r3, [fp, #8]
	str	r3, [fp, #-52]
	.loc 1 120 1
	ldr	r2, .L18
.LPIC3:
	add	r2, pc, r2
	ldr	r3, .L18+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-16]
	mov	r3, #0
	.loc 1 124 3
	add	r3, fp, #12
	str	r3, [fp, #-24]
	.loc 1 126 8
	ldrb	r4, [fp, #-29]	@ zero_extendqisi2
	ldr	r0, [fp, #-36]
	bl	GetLastOccurance(PLT)
	mov	r2, r0
	ldr	r3, [fp, #-40]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [fp, #-44]
	mov	r1, r4
	ldr	r0, .L18+8
.LPIC1:
	add	r0, pc, r0
	bl	printf(PLT)
	str	r0, [fp, #-20]
	.loc 1 133 5
	ldr	r1, [fp, #-48]
	ldr	r3, .L18+12
.LPIC2:
	add	r3, pc, r3
	mov	r0, r3
	bl	printf(PLT)
	.loc 1 134 9
	ldr	r1, [fp, #-24]
	ldr	r0, [fp, #-52]
	bl	vprintf(PLT)
	mov	r2, r0
	.loc 1 134 6
	ldr	r3, [fp, #-20]
	add	r3, r3, r2
	str	r3, [fp, #-20]
	.loc 1 136 9
	ldr	r3, [fp, #-20]
	.loc 1 120 1
	ldr	r1, .L18+16
.LPIC4:
	add	r1, pc, r1
	.loc 1 137 1
	ldr	r2, .L18+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-16]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L17
	bl	__stack_chk_fail(PLT)
.L17:
	mov	r0, r3
	sub	sp, fp, #8
	.cfi_def_cfa 13, 12
	@ sp needed
	pop	{r4, fp, pc}
.L19:
	.align	2
.L18:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC3+8)
	.word	__stack_chk_guard(GOT)
	.word	cszLogFormat-(.LPIC1+8)
	.word	.LC19-(.LPIC2+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC4+8)
	.cfi_endproc
.LFE3:
	.size	siFormattedMessage_M2, .-siFormattedMessage_M2
	.section	.rodata
	.align	2
.LC20:
	.ascii	"               0x%08X | \000"
	.text
	.align	2
	.global	siFormattedMessage_SC
	.syntax unified
	.arm
	.fpu vfpv3
	.type	siFormattedMessage_SC, %function
siFormattedMessage_SC:
.LFB4:
	.loc 1 150 1
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 1
	push	{r4, fp, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #8
	.cfi_def_cfa 11, 4
	sub	sp, sp, #52
	str	r1, [fp, #-36]
	str	r2, [fp, #-40]
	str	r3, [fp, #-44]
	mov	r3, r0
	strb	r3, [fp, #-29]
	ldr	r3, [fp, #8]
	str	r3, [fp, #-48]
	.loc 1 150 1
	ldr	r2, .L25
.LPIC8:
	add	r2, pc, r2
	ldr	r3, .L25+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-16]
	mov	r3, #0
	.loc 1 154 3
	add	r3, fp, #12
	str	r3, [fp, #-28]
	.loc 1 155 3
	sub	r3, fp, #24
	ldr	r1, [fp, #4]
	mov	r0, r3
	bl	EApiGetErrorStringA(PLT)
	.loc 1 156 8
	ldrb	r4, [fp, #-29]	@ zero_extendqisi2
	ldr	r0, [fp, #-36]
	bl	GetLastOccurance(PLT)
	mov	r2, r0
	ldr	r3, [fp, #-40]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [fp, #-44]
	mov	r1, r4
	ldr	r0, .L25+8
.LPIC5:
	add	r0, pc, r0
	bl	printf(PLT)
	str	r0, [fp, #-20]
	.loc 1 163 18
	ldr	r3, [fp, #-24]
	.loc 1 163 5
	cmp	r3, #0
	bne	.L21
	.loc 1 164 5
	ldr	r1, [fp, #4]
	ldr	r3, .L25+12
.LPIC6:
	add	r3, pc, r3
	mov	r0, r3
	bl	printf(PLT)
	b	.L22
.L21:
	.loc 1 166 5
	ldr	r3, [fp, #-24]
	mov	r1, r3
	ldr	r3, .L25+16
.LPIC7:
	add	r3, pc, r3
	mov	r0, r3
	bl	printf(PLT)
.L22:
	.loc 1 168 9
	ldr	r1, [fp, #-28]
	ldr	r0, [fp, #-48]
	bl	vprintf(PLT)
	mov	r2, r0
	.loc 1 168 6
	ldr	r3, [fp, #-20]
	add	r3, r3, r2
	str	r3, [fp, #-20]
	.loc 1 170 9
	ldr	r3, [fp, #-20]
	.loc 1 150 1
	ldr	r1, .L25+20
.LPIC9:
	add	r1, pc, r1
	.loc 1 171 1
	ldr	r2, .L25+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-16]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L24
	bl	__stack_chk_fail(PLT)
.L24:
	mov	r0, r3
	sub	sp, fp, #8
	.cfi_def_cfa 13, 12
	@ sp needed
	pop	{r4, fp, pc}
.L26:
	.align	2
.L25:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC8+8)
	.word	__stack_chk_guard(GOT)
	.word	cszLogFormat-(.LPIC5+8)
	.word	.LC20-(.LPIC6+8)
	.word	.LC19-(.LPIC7+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC9+8)
	.cfi_endproc
.LFE4:
	.size	siFormattedMessage_SC, .-siFormattedMessage_SC
.Letext0:
	.file 2 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/bits/alltypes.h"
	.file 3 "../../../include/EApi.h"
	.file 4 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/stdio.h"
	.file 5 "<built-in>"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x33a
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0xc
	.4byte	.LASF39
	.4byte	.LASF40
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x13
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
	.uleb128 0x3
	.4byte	0x42
	.uleb128 0xa
	.4byte	.LASF4
	.2byte	0x13f
	.4byte	0x59
	.uleb128 0x14
	.4byte	.LASF41
	.byte	0x4
	.byte	0x5
	.byte	0
	.4byte	0x70
	.uleb128 0x15
	.4byte	.LASF42
	.4byte	0x70
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF5
	.2byte	0x144
	.4byte	0x59
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x2
	.byte	0x7c
	.byte	0x19
	.4byte	0x26
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x6
	.4byte	0x49
	.uleb128 0x3
	.4byte	0xb3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x3
	.byte	0x91
	.byte	0x12
	.4byte	0xa0
	.uleb128 0x3
	.4byte	0xc4
	.uleb128 0x17
	.4byte	.LASF43
	.byte	0x8
	.byte	0x1
	.byte	0x26
	.byte	0x10
	.4byte	0xfb
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x27
	.byte	0x16
	.4byte	0xd0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x28
	.byte	0x17
	.4byte	0xb8
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x1
	.byte	0x29
	.byte	0x2
	.4byte	0xd5
	.uleb128 0x3
	.4byte	0xfb
	.uleb128 0xc
	.4byte	0x107
	.4byte	0x11c
	.uleb128 0xd
	.4byte	0x26
	.byte	0x12
	.byte	0
	.uleb128 0x3
	.4byte	0x10c
	.uleb128 0xe
	.4byte	.LASF18
	.byte	0x2c
	.byte	0x18
	.4byte	0x11c
	.uleb128 0x5
	.byte	0x3
	.4byte	ErrorLookupA
	.uleb128 0xc
	.4byte	0x49
	.4byte	0x142
	.uleb128 0xd
	.4byte	0x26
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	0x132
	.uleb128 0xe
	.4byte	.LASF19
	.byte	0x6b
	.byte	0xc
	.4byte	0x142
	.uleb128 0x5
	.byte	0x3
	.4byte	cszLogFormat
	.uleb128 0xf
	.4byte	.LASF20
	.byte	0x70
	.4byte	0x2d
	.4byte	0x171
	.uleb128 0x7
	.4byte	0xb3
	.uleb128 0x7
	.4byte	0x72
	.byte	0
	.uleb128 0xf
	.4byte	.LASF21
	.byte	0x6b
	.4byte	0x2d
	.4byte	0x186
	.uleb128 0x7
	.4byte	0xb3
	.uleb128 0x8
	.byte	0
	.uleb128 0x10
	.4byte	.LASF29
	.byte	0x8d
	.4byte	0x2d
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x21e
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x8e
	.byte	0x13
	.4byte	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x8f
	.byte	0x13
	.4byte	0xb3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x90
	.byte	0x13
	.4byte	0xb3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x91
	.byte	0x13
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF15
	.byte	0x92
	.byte	0x13
	.4byte	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x93
	.byte	0x13
	.4byte	0xb3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.uleb128 0x9
	.ascii	"Ret\000"
	.byte	0x97
	.byte	0xe
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x98
	.byte	0xb
	.4byte	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x99
	.byte	0xf
	.4byte	0xb3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x10
	.4byte	.LASF30
	.byte	0x6f
	.4byte	0x2d
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a8
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x70
	.byte	0x13
	.4byte	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x71
	.byte	0x13
	.4byte	0xb3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x72
	.byte	0x13
	.4byte	0xb3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x73
	.byte	0x13
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x74
	.byte	0x13
	.4byte	0xb3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x75
	.byte	0x13
	.4byte	0xb3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.uleb128 0x9
	.ascii	"Ret\000"
	.byte	0x79
	.byte	0xe
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x7a
	.byte	0xb
	.4byte	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x11
	.4byte	.LASF32
	.byte	0x5b
	.byte	0xd
	.4byte	0xb3
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2de
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x5c
	.byte	0x11
	.4byte	0xb3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x5f
	.byte	0xe
	.4byte	0xb3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x11
	.4byte	.LASF35
	.byte	0x42
	.byte	0x1
	.4byte	0xc4
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x32e
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x43
	.byte	0x1f
	.4byte	0x333
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF15
	.byte	0x44
	.byte	0x17
	.4byte	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.ascii	"i\000"
	.byte	0x47
	.byte	0xc
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0x48
	.byte	0x1b
	.4byte	0x338
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x6
	.4byte	0xb3
	.uleb128 0x3
	.4byte	0x32e
	.uleb128 0x6
	.4byte	0x107
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 27
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
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
.LASF19:
	.ascii	"cszLogFormat\000"
.LASF20:
	.ascii	"vprintf\000"
.LASF8:
	.ascii	"short int\000"
.LASF24:
	.ascii	"cszFuncName\000"
.LASF26:
	.ascii	"cszFormat\000"
.LASF16:
	.ascii	"ErrorString\000"
.LASF27:
	.ascii	"_ArgList\000"
.LASF35:
	.ascii	"EApiGetErrorStringA\000"
.LASF4:
	.ascii	"va_list\000"
.LASF31:
	.ascii	"csz2ndValue\000"
.LASF28:
	.ascii	"szStatusDesc\000"
.LASF33:
	.ascii	"czFilename\000"
.LASF25:
	.ascii	"uiLineNum\000"
.LASF2:
	.ascii	"long long int\000"
.LASF23:
	.ascii	"cszFileName\000"
.LASF41:
	.ascii	"__va_list\000"
.LASF1:
	.ascii	"long int\000"
.LASF21:
	.ascii	"printf\000"
.LASF29:
	.ascii	"siFormattedMessage_SC\000"
.LASF14:
	.ascii	"EApiStatus_t\000"
.LASF9:
	.ascii	"unsigned char\000"
.LASF39:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux/../../common/DbgChk.c\000"
.LASF7:
	.ascii	"signed char\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF11:
	.ascii	"uint32_t\000"
.LASF5:
	.ascii	"__isoc_va_list\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF10:
	.ascii	"short unsigned int\000"
.LASF36:
	.ascii	"pszString\000"
.LASF42:
	.ascii	"__ap\000"
.LASF3:
	.ascii	"char\000"
.LASF38:
	.ascii	"GNU C99 11.2.0 -mcpu=cortex-a9 -mfloat-abi=hard -mf"
	.ascii	"pu=vfpv3 -mabi=aapcs-linux -mtls-dialect=gnu -marm "
	.ascii	"-march=armv7-a+mp+sec+vfpv3 -g -O0 -std=gnu99 -fsta"
	.ascii	"ck-protector-strong -fPIE\000"
.LASF15:
	.ascii	"StatusCode\000"
.LASF17:
	.ascii	"ErrorLookupTbl_t\000"
.LASF43:
	.ascii	"ErrorLookupTbl_S\000"
.LASF34:
	.ascii	"cszLPos\000"
.LASF13:
	.ascii	"long unsigned int\000"
.LASF30:
	.ascii	"siFormattedMessage_M2\000"
.LASF6:
	.ascii	"double\000"
.LASF37:
	.ascii	"pErrorLookup\000"
.LASF22:
	.ascii	"cType\000"
.LASF40:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux\000"
.LASF18:
	.ascii	"ErrorLookupA\000"
.LASF32:
	.ascii	"GetLastOccurance\000"
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
