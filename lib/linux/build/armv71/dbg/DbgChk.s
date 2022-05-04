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
	.hidden	ErrorLookupA
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
	.hidden	EApiGetErrorStringA
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiGetErrorStringA, %function
EApiGetErrorStringA:
.LFB1:
	.file 1 "/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../DbgChk.c"
	.loc 1 72 1
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
	.loc 1 78 13
	ldr	r3, [fp, #-16]
	mov	r2, #0
	str	r2, [r3]
	.loc 1 79 8
	mov	r3, #19
	str	r3, [fp, #-12]
	.loc 1 80 19
	ldr	r3, .L6
.LPIC0:
	add	r3, pc, r3
	str	r3, [fp, #-8]
	.loc 1 79 3
	b	.L2
.L5:
	.loc 1 85 20
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	.loc 1 85 7
	ldr	r2, [fp, #-20]
	cmp	r2, r3
	bne	.L3
	.loc 1 86 30
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #4]
	.loc 1 86 17
	ldr	r3, [fp, #-16]
	str	r2, [r3]
	.loc 1 87 14
	mov	r3, #0
	b	.L4
.L3:
	.loc 1 81 23
	ldr	r3, [fp, #-8]
	add	r3, r3, #8
	str	r3, [fp, #-8]
.L2:
	.loc 1 81 8 discriminator 1
	ldr	r3, [fp, #-12]
	sub	r2, r3, #1
	str	r2, [fp, #-12]
	.loc 1 81 7 discriminator 1
	cmp	r3, #0
	bne	.L5
	.loc 1 90 10
	mvn	r3, #3840
.L4:
	.loc 1 91 1
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
	.hidden	GetLastOccurance
	.syntax unified
	.arm
	.fpu vfpv3
	.type	GetLastOccurance, %function
GetLastOccurance:
.LFB2:
	.loc 1 96 1
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
	.loc 1 97 14
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-8]
	.loc 1 98 8
	b	.L9
.L12:
	.loc 1 99 23
	ldr	r3, [fp, #-16]
	add	r2, r3, #1
	str	r2, [fp, #-16]
	.loc 1 99 12
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 99 5
	cmp	r3, #47
	beq	.L10
	cmp	r3, #92
	bne	.L14
.L10:
	.loc 1 102 16
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-8]
.L14:
	.loc 1 104 9
	nop
.L9:
	.loc 1 98 9
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 98 20
	cmp	r3, #0
	bne	.L12
	.loc 1 107 10
	ldr	r3, [fp, #-8]
	.loc 1 108 1
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
	.hidden	cszLogFormat
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
	.hidden	siFormattedMessage_M2
	.syntax unified
	.arm
	.fpu vfpv3
	.type	siFormattedMessage_M2, %function
siFormattedMessage_M2:
.LFB3:
	.loc 1 122 1
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 1
	push	{r4, r5, r6, fp, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #16
	.cfi_def_cfa 11, 4
	sub	sp, sp, #52
	str	r1, [fp, #-44]
	str	r2, [fp, #-48]
	str	r3, [fp, #-52]
	mov	r3, r0
	strb	r3, [fp, #-37]
	ldr	r3, [fp, #4]
	str	r3, [fp, #-56]
	ldr	r3, [fp, #8]
	str	r3, [fp, #-60]
	ldr	r4, .L18
.LPIC1:
	add	r4, pc, r4
	.loc 1 122 1
	ldr	r2, .L18+4
.LPIC4:
	add	r2, pc, r2
	ldr	r3, .L18+8
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-24]
	mov	r3, #0
	.loc 1 126 3
	add	r3, fp, #12
	str	r3, [fp, #-32]
	.loc 1 128 9
	ldr	r3, .L18+12
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldrb	r6, [fp, #-37]	@ zero_extendqisi2
	ldr	r0, [fp, #-44]
	bl	GetLastOccurance(PLT)
	mov	r2, r0
	ldr	r3, [fp, #-48]
	str	r3, [sp, #4]
	str	r2, [sp]
	ldr	r3, [fp, #-52]
	mov	r2, r6
	ldr	r1, .L18+16
.LPIC2:
	add	r1, pc, r1
	mov	r0, r5
	bl	fprintf(PLT)
	str	r0, [fp, #-28]
	.loc 1 136 3
	ldr	r3, .L18+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	ldr	r2, [fp, #-56]
	ldr	r1, .L18+20
.LPIC3:
	add	r1, pc, r1
	mov	r0, r3
	bl	fprintf(PLT)
	.loc 1 137 10
	ldr	r3, .L18+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	ldr	r2, [fp, #-32]
	ldr	r1, [fp, #-60]
	mov	r0, r3
	bl	vfprintf(PLT)
	mov	r2, r0
	.loc 1 137 7
	ldr	r3, [fp, #-28]
	add	r3, r3, r2
	str	r3, [fp, #-28]
	.loc 1 139 9
	ldr	r3, [fp, #-28]
	.loc 1 122 1
	ldr	r1, .L18+24
.LPIC5:
	add	r1, pc, r1
	.loc 1 140 1
	ldr	r2, .L18+8
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-24]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L17
	bl	__stack_chk_fail(PLT)
.L17:
	mov	r0, r3
	sub	sp, fp, #16
	.cfi_def_cfa 13, 20
	@ sp needed
	pop	{r4, r5, r6, fp, pc}
.L19:
	.align	2
.L18:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC4+8)
	.word	__stack_chk_guard(GOT)
	.word	OutputStream(GOT)
	.word	cszLogFormat-(.LPIC2+8)
	.word	.LC19-(.LPIC3+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC5+8)
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
	.hidden	siFormattedMessage_SC
	.syntax unified
	.arm
	.fpu vfpv3
	.type	siFormattedMessage_SC, %function
siFormattedMessage_SC:
.LFB4:
	.loc 1 154 1
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 1
	push	{r4, r5, r6, fp, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #16
	.cfi_def_cfa 11, 4
	sub	sp, sp, #52
	str	r1, [fp, #-44]
	str	r2, [fp, #-48]
	str	r3, [fp, #-52]
	mov	r3, r0
	strb	r3, [fp, #-37]
	ldr	r3, [fp, #8]
	str	r3, [fp, #-56]
	ldr	r4, .L25
.LPIC6:
	add	r4, pc, r4
	.loc 1 154 1
	ldr	r2, .L25+4
.LPIC10:
	add	r2, pc, r2
	ldr	r3, .L25+8
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-24]
	mov	r3, #0
	.loc 1 158 3
	add	r3, fp, #12
	str	r3, [fp, #-36]
	.loc 1 159 3
	sub	r3, fp, #32
	ldr	r1, [fp, #4]
	mov	r0, r3
	bl	EApiGetErrorStringA(PLT)
	.loc 1 160 9
	ldr	r3, .L25+12
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldrb	r6, [fp, #-37]	@ zero_extendqisi2
	ldr	r0, [fp, #-44]
	bl	GetLastOccurance(PLT)
	mov	r2, r0
	ldr	r3, [fp, #-48]
	str	r3, [sp, #4]
	str	r2, [sp]
	ldr	r3, [fp, #-52]
	mov	r2, r6
	ldr	r1, .L25+16
.LPIC7:
	add	r1, pc, r1
	mov	r0, r5
	bl	fprintf(PLT)
	str	r0, [fp, #-28]
	.loc 1 168 18
	ldr	r3, [fp, #-32]
	.loc 1 168 5
	cmp	r3, #0
	bne	.L21
	.loc 1 169 5
	ldr	r3, .L25+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	ldr	r2, [fp, #4]
	ldr	r1, .L25+20
.LPIC8:
	add	r1, pc, r1
	mov	r0, r3
	bl	fprintf(PLT)
	b	.L22
.L21:
	.loc 1 171 5
	ldr	r3, .L25+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	ldr	r2, [fp, #-32]
	ldr	r1, .L25+24
.LPIC9:
	add	r1, pc, r1
	mov	r0, r3
	bl	fprintf(PLT)
.L22:
	.loc 1 173 10
	ldr	r3, .L25+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	ldr	r2, [fp, #-36]
	ldr	r1, [fp, #-56]
	mov	r0, r3
	bl	vfprintf(PLT)
	mov	r2, r0
	.loc 1 173 7
	ldr	r3, [fp, #-28]
	add	r3, r3, r2
	str	r3, [fp, #-28]
	.loc 1 175 9
	ldr	r3, [fp, #-28]
	.loc 1 154 1
	ldr	r1, .L25+28
.LPIC11:
	add	r1, pc, r1
	.loc 1 176 1
	ldr	r2, .L25+8
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-24]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L24
	bl	__stack_chk_fail(PLT)
.L24:
	mov	r0, r3
	sub	sp, fp, #16
	.cfi_def_cfa 13, 20
	@ sp needed
	pop	{r4, r5, r6, fp, pc}
.L26:
	.align	2
.L25:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC6+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC10+8)
	.word	__stack_chk_guard(GOT)
	.word	OutputStream(GOT)
	.word	cszLogFormat-(.LPIC7+8)
	.word	.LC20-(.LPIC8+8)
	.word	.LC19-(.LPIC9+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC11+8)
	.cfi_endproc
.LFE4:
	.size	siFormattedMessage_SC, .-siFormattedMessage_SC
.Letext0:
	.file 2 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/bits/alltypes.h"
	.file 3 "../../include/EApi.h"
	.file 4 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/stdio.h"
	.file 5 "<built-in>"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x372
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x13
	.4byte	.LASF40
	.byte	0x1d
	.4byte	.LASF41
	.4byte	.LASF42
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x14
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
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x7
	.4byte	.LASF9
	.byte	0x2
	.byte	0x7c
	.byte	0x19
	.4byte	0x26
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	0x71
	.uleb128 0x15
	.byte	0x4
	.uleb128 0x6
	.4byte	0x78
	.uleb128 0x3
	.4byte	0x7f
	.uleb128 0xb
	.4byte	0x7f
	.uleb128 0x8
	.4byte	.LASF10
	.2byte	0x13f
	.byte	0x1b
	.4byte	0x9a
	.uleb128 0x16
	.4byte	.LASF43
	.byte	0x4
	.byte	0x5
	.byte	0
	.4byte	0xb1
	.uleb128 0x17
	.4byte	.LASF44
	.4byte	0x7d
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x8
	.4byte	.LASF12
	.2byte	0x139
	.byte	0x19
	.4byte	0xc4
	.uleb128 0x18
	.4byte	.LASF45
	.uleb128 0x8
	.4byte	.LASF13
	.2byte	0x144
	.byte	0x1b
	.4byte	0x9a
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x3
	.byte	0x91
	.byte	0x12
	.4byte	0x5e
	.uleb128 0x3
	.4byte	0xd5
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF15
	.uleb128 0x6
	.4byte	0xb8
	.uleb128 0xb
	.4byte	0xed
	.uleb128 0x19
	.4byte	.LASF46
	.byte	0x8
	.byte	0x1
	.byte	0x27
	.byte	0x10
	.4byte	0x11d
	.uleb128 0xc
	.4byte	.LASF16
	.byte	0x28
	.byte	0x16
	.4byte	0xe1
	.byte	0
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x29
	.byte	0x17
	.4byte	0x84
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x1
	.byte	0x2a
	.byte	0x2
	.4byte	0xf7
	.uleb128 0x3
	.4byte	0x11d
	.uleb128 0x1a
	.4byte	.LASF19
	.byte	0x1
	.byte	0x2c
	.byte	0xe
	.4byte	0xed
	.uleb128 0xd
	.4byte	0x129
	.4byte	0x14a
	.uleb128 0xe
	.4byte	0x26
	.byte	0x12
	.byte	0
	.uleb128 0x3
	.4byte	0x13a
	.uleb128 0xf
	.4byte	.LASF20
	.byte	0x2e
	.byte	0x18
	.4byte	0x14a
	.uleb128 0x5
	.byte	0x3
	.4byte	ErrorLookupA
	.uleb128 0xd
	.4byte	0x78
	.4byte	0x170
	.uleb128 0xe
	.4byte	0x26
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	0x160
	.uleb128 0xf
	.4byte	.LASF21
	.byte	0x6d
	.byte	0xc
	.4byte	0x170
	.uleb128 0x5
	.byte	0x3
	.4byte	cszLogFormat
	.uleb128 0x10
	.4byte	.LASF22
	.byte	0x71
	.4byte	0x2d
	.4byte	0x1a4
	.uleb128 0x4
	.4byte	0xf2
	.uleb128 0x4
	.4byte	0x89
	.uleb128 0x4
	.4byte	0xc9
	.byte	0
	.uleb128 0x10
	.4byte	.LASF23
	.byte	0x6c
	.4byte	0x2d
	.4byte	0x1be
	.uleb128 0x4
	.4byte	0xf2
	.uleb128 0x4
	.4byte	0x89
	.uleb128 0x9
	.byte	0
	.uleb128 0x11
	.4byte	.LASF31
	.byte	0x91
	.4byte	0x2d
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x256
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x92
	.byte	0x13
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x93
	.byte	0x13
	.4byte	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x94
	.byte	0x13
	.4byte	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x95
	.byte	0x13
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0x96
	.byte	0x13
	.4byte	0xd5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x97
	.byte	0x13
	.4byte	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x9
	.uleb128 0xa
	.ascii	"Ret\000"
	.byte	0x9b
	.byte	0xe
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.4byte	.LASF29
	.byte	0x9c
	.byte	0xb
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.4byte	.LASF30
	.byte	0x9d
	.byte	0xf
	.4byte	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x11
	.4byte	.LASF32
	.byte	0x71
	.4byte	0x2d
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2e0
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x72
	.byte	0x13
	.4byte	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x73
	.byte	0x13
	.4byte	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x74
	.byte	0x13
	.4byte	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x75
	.byte	0x13
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x76
	.byte	0x13
	.4byte	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x77
	.byte	0x13
	.4byte	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x9
	.uleb128 0xa
	.ascii	"Ret\000"
	.byte	0x7b
	.byte	0xe
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.4byte	.LASF29
	.byte	0x7c
	.byte	0xb
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x12
	.4byte	.LASF34
	.byte	0x5d
	.byte	0xd
	.4byte	0x7f
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x316
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x5e
	.byte	0x11
	.4byte	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF36
	.byte	0x61
	.byte	0xe
	.4byte	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x44
	.byte	0x1
	.4byte	0xd5
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x366
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x45
	.byte	0x1f
	.4byte	0x36b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0x46
	.byte	0x17
	.4byte	0xd5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.ascii	"i\000"
	.byte	0x49
	.byte	0xc
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x5
	.4byte	.LASF39
	.byte	0x4a
	.byte	0x1b
	.4byte	0x370
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x6
	.4byte	0x7f
	.uleb128 0x3
	.4byte	0x366
	.uleb128 0x6
	.4byte	0x129
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
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x10
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
	.uleb128 0x12
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
.LASF21:
	.ascii	"cszLogFormat\000"
.LASF4:
	.ascii	"short int\000"
.LASF26:
	.ascii	"cszFuncName\000"
.LASF28:
	.ascii	"cszFormat\000"
.LASF17:
	.ascii	"ErrorString\000"
.LASF22:
	.ascii	"vfprintf\000"
.LASF29:
	.ascii	"_ArgList\000"
.LASF42:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux\000"
.LASF10:
	.ascii	"va_list\000"
.LASF33:
	.ascii	"csz2ndValue\000"
.LASF30:
	.ascii	"szStatusDesc\000"
.LASF35:
	.ascii	"czFilename\000"
.LASF27:
	.ascii	"uiLineNum\000"
.LASF2:
	.ascii	"long long int\000"
.LASF25:
	.ascii	"cszFileName\000"
.LASF43:
	.ascii	"__va_list\000"
.LASF1:
	.ascii	"long int\000"
.LASF41:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../Db"
	.ascii	"gChk.c\000"
.LASF23:
	.ascii	"fprintf\000"
.LASF31:
	.ascii	"siFormattedMessage_SC\000"
.LASF14:
	.ascii	"EApiStatus_t\000"
.LASF45:
	.ascii	"_IO_FILE\000"
.LASF5:
	.ascii	"unsigned char\000"
.LASF3:
	.ascii	"signed char\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF9:
	.ascii	"uint32_t\000"
.LASF13:
	.ascii	"__isoc_va_list\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF38:
	.ascii	"pszString\000"
.LASF44:
	.ascii	"__ap\000"
.LASF8:
	.ascii	"char\000"
.LASF16:
	.ascii	"StatusCode\000"
.LASF18:
	.ascii	"ErrorLookupTbl_t\000"
.LASF37:
	.ascii	"EApiGetErrorStringA\000"
.LASF46:
	.ascii	"ErrorLookupTbl_S\000"
.LASF36:
	.ascii	"cszLPos\000"
.LASF19:
	.ascii	"OutputStream\000"
.LASF11:
	.ascii	"long unsigned int\000"
.LASF32:
	.ascii	"siFormattedMessage_M2\000"
.LASF15:
	.ascii	"double\000"
.LASF39:
	.ascii	"pErrorLookup\000"
.LASF40:
	.ascii	"GNU C17 11.2.0 -mcpu=cortex-a9 -mfloat-abi=hard -mf"
	.ascii	"pu=vfpv3 -mabi=aapcs-linux -mtls-dialect=gnu -marm "
	.ascii	"-march=armv7-a+mp+sec+vfpv3 -g -fstack-protector-st"
	.ascii	"rong -fvisibility=hidden -fPIC\000"
.LASF24:
	.ascii	"cType\000"
.LASF20:
	.ascii	"ErrorLookupA\000"
.LASF34:
	.ascii	"GetLastOccurance\000"
.LASF12:
	.ascii	"FILE\000"
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
