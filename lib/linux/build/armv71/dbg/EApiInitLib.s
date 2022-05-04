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
	.file	"EApiInitLib.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.hidden	OutputStream
	.global	OutputStream
	.bss
	.align	2
	.type	OutputStream, %object
	.size	OutputStream, 4
OutputStream:
	.space	4
	.text
	.align	2
	.global	DebugMsg
	.hidden	DebugMsg
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	DebugMsg, %function
DebugMsg:
.LFB1:
	.file 1 "/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EApiInitLib.c"
	.loc 1 41 1
	.cfi_startproc
	@ args = 4, pretend = 16, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 1
	push	{r0, r1, r2, r3}
	.cfi_def_cfa_offset 16
	.cfi_offset 0, -16
	.cfi_offset 1, -12
	.cfi_offset 2, -8
	.cfi_offset 3, -4
	push	{fp, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 11, -24
	.cfi_offset 14, -20
	add	fp, sp, #4
	.cfi_def_cfa 11, 20
	sub	sp, sp, #16
	ldr	r3, [fp, #4]
	str	r3, [fp, #-16]
	ldr	r2, .L5
.LPIC2:
	add	r2, pc, r2
	.loc 1 41 1
	ldr	r1, .L5+4
.LPIC4:
	add	r1, pc, r1
	ldr	r3, .L5+8
	ldr	r3, [r1, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 43 3
	add	r3, fp, #8
	str	r3, [fp, #-12]
	.loc 1 44 18
	ldr	r3, .L5+12
.LPIC0:
	add	r3, pc, r3
	ldr	r3, [r3]
	.loc 1 44 5
	cmp	r3, #0
	beq	.L2
	.loc 1 45 5
	ldr	r3, .L5+16
.LPIC1:
	add	r3, pc, r3
	ldr	r3, [r3]
	ldr	r2, [fp, #-12]
	ldr	r1, [fp, #-16]
	mov	r0, r3
	bl	vfprintf(PLT)
	b	.L3
.L2:
	.loc 1 47 5
	ldr	r3, .L5+20
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	ldr	r2, [fp, #-12]
	ldr	r1, [fp, #-16]
	mov	r0, r3
	bl	vfprintf(PLT)
.L3:
	.loc 1 49 3
	ldr	r3, .L5+24
.LPIC3:
	add	r3, pc, r3
	ldr	r3, [r3]
	mov	r0, r3
	bl	fflush(PLT)
	.loc 1 51 1
	nop
	.loc 1 41 1
	ldr	r2, .L5+28
.LPIC5:
	add	r2, pc, r2
	.loc 1 51 1
	ldr	r3, .L5+8
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [fp, #-8]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L4
	bl	__stack_chk_fail(PLT)
.L4:
	sub	sp, fp, #4
	.cfi_def_cfa 13, 24
	@ sp needed
	pop	{fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_def_cfa_offset 16
	add	sp, sp, #16
	.cfi_restore 3
	.cfi_restore 2
	.cfi_restore 1
	.cfi_restore 0
	.cfi_def_cfa_offset 0
	bx	lr
.L6:
	.align	2
.L5:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC2+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC4+8)
	.word	__stack_chk_guard(GOT)
	.word	OutputStream-(.LPIC0+8)
	.word	OutputStream-(.LPIC1+8)
	.word	stdout(GOT)
	.word	OutputStream-(.LPIC3+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC5+8)
	.cfi_endproc
.LFE1:
	.size	DebugMsg, .-DebugMsg
	.section	.rodata
	.align	2
.LC0:
	.ascii	"w\000"
	.align	2
.LC1:
	.ascii	"EApi.log\000"
	.align	2
.LC2:
	.ascii	"#\012# Embedded API EApi\012# Version %u.%u\012# Li"
	.ascii	"b Version %u.%u.%u\012#\012\000"
	.text
	.align	2
	.global	EApiInitLib
	.hidden	EApiInitLib
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiInitLib, %function
EApiInitLib:
.LFB2:
	.loc 1 61 14
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #8
	.loc 1 62 18
	ldr	r3, .L10
.LPIC6:
	add	r3, pc, r3
	ldr	r3, [r3]
	.loc 1 62 5
	cmp	r3, #0
	bne	.L8
	.loc 1 64 18
	ldr	r3, .L10+4
.LPIC7:
	add	r3, pc, r3
	mov	r1, r3
	ldr	r3, .L10+8
.LPIC8:
	add	r3, pc, r3
	mov	r0, r3
	bl	fopen(PLT)
	mov	r2, r0
	.loc 1 64 17
	ldr	r3, .L10+12
.LPIC9:
	add	r3, pc, r3
	str	r2, [r3]
.L8:
	.loc 1 69 3
	bl	OpenEepromFiles(PLT)
	.loc 1 70 3
	bl	OpenI2CEepromFiles(PLT)
	.loc 1 71 5
	movw	r3, #991
	str	r3, [sp, #4]
	mov	r3, #5
	str	r3, [sp]
	mov	r3, #0
	mov	r2, #0
	mov	r1, #1
	ldr	r0, .L10+16
.LPIC10:
	add	r0, pc, r0
	bl	DebugMsg(PLT)
	.loc 1 79 10
	mov	r3, #0
	.loc 1 80 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L11:
	.align	2
.L10:
	.word	OutputStream-(.LPIC6+8)
	.word	.LC0-(.LPIC7+8)
	.word	.LC1-(.LPIC8+8)
	.word	OutputStream-(.LPIC9+8)
	.word	.LC2-(.LPIC10+8)
	.cfi_endproc
.LFE2:
	.size	EApiInitLib, .-EApiInitLib
	.section	.rodata
	.align	2
.LC3:
	.ascii	"#\012# Embedded API EApi\012# Exit \012#\012\000"
	.text
	.align	2
	.global	EApiUninitLib
	.hidden	EApiUninitLib
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiUninitLib, %function
EApiUninitLib:
.LFB3:
	.loc 1 85 16
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, fp, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #12
	.cfi_def_cfa 11, 4
	ldr	r4, .L15
.LPIC14:
	add	r4, pc, r4
	.loc 1 86 5
	ldr	r3, .L15+4
.LPIC11:
	add	r3, pc, r3
	mov	r0, r3
	bl	DebugMsg(PLT)
	.loc 1 91 3
	bl	CloseEepromFiles(PLT)
	.loc 1 92 3
	bl	CloseI2CEepromFiles(PLT)
	.loc 1 93 18
	ldr	r3, .L15+8
.LPIC12:
	add	r3, pc, r3
	ldr	r3, [r3]
	.loc 1 93 5
	cmp	r3, #0
	beq	.L13
	.loc 1 93 38 discriminator 1
	ldr	r3, .L15+12
.LPIC13:
	add	r3, pc, r3
	ldr	r2, [r3]
	ldr	r3, .L15+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	.loc 1 93 24 discriminator 1
	cmp	r2, r3
	beq	.L13
	.loc 1 93 60 discriminator 2
	ldr	r3, .L15+20
.LPIC15:
	add	r3, pc, r3
	ldr	r2, [r3]
	ldr	r3, .L15+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	.loc 1 93 46 discriminator 2
	cmp	r2, r3
	beq	.L13
	.loc 1 94 5
	ldr	r3, .L15+28
.LPIC16:
	add	r3, pc, r3
	ldr	r3, [r3]
	mov	r0, r3
	bl	fclose(PLT)
.L13:
	.loc 1 96 15
	ldr	r3, .L15+16
	ldr	r3, [r4, r3]
	ldr	r2, [r3]
	ldr	r3, .L15+32
.LPIC17:
	add	r3, pc, r3
	str	r2, [r3]
	.loc 1 97 10
	mov	r3, #0
	.loc 1 98 1
	mov	r0, r3
	pop	{r4, r5, fp, pc}
.L16:
	.align	2
.L15:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC14+8)
	.word	.LC3-(.LPIC11+8)
	.word	OutputStream-(.LPIC12+8)
	.word	OutputStream-(.LPIC13+8)
	.word	stdout(GOT)
	.word	OutputStream-(.LPIC15+8)
	.word	stderr(GOT)
	.word	OutputStream-(.LPIC16+8)
	.word	OutputStream-(.LPIC17+8)
	.cfi_endproc
.LFE3:
	.size	EApiUninitLib, .-EApiUninitLib
.Letext0:
	.file 2 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/bits/alltypes.h"
	.file 3 "../../include/EApi.h"
	.file 4 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/stdio.h"
	.file 5 "<built-in>"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x20b
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x1d
	.4byte	.LASF31
	.4byte	.LASF32
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0xd
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x2
	.byte	0x72
	.byte	0x19
	.4byte	0x5c
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x5
	.4byte	.LASF8
	.byte	0x2
	.byte	0x7c
	.byte	0x19
	.4byte	0x26
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x6
	.4byte	0x7d
	.uleb128 0xe
	.byte	0x4
	.uleb128 0x8
	.4byte	0x84
	.uleb128 0x9
	.4byte	0x8b
	.uleb128 0x6
	.4byte	0x8b
	.uleb128 0x7
	.4byte	.LASF11
	.2byte	0x13f
	.byte	0x1b
	.4byte	0xa6
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x4
	.byte	0x5
	.byte	0
	.4byte	0xbd
	.uleb128 0x10
	.4byte	.LASF34
	.4byte	0x89
	.byte	0
	.byte	0
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x7
	.4byte	.LASF13
	.2byte	0x139
	.byte	0x19
	.4byte	0xd0
	.uleb128 0x11
	.4byte	.LASF35
	.uleb128 0x7
	.4byte	.LASF14
	.2byte	0x144
	.byte	0x1b
	.4byte	0xa6
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x3
	.byte	0x91
	.byte	0x12
	.4byte	0x6a
	.uleb128 0x1
	.byte	0x8
	.byte	0x4
	.4byte	.LASF16
	.uleb128 0x8
	.4byte	0xc4
	.uleb128 0x6
	.4byte	0xf4
	.uleb128 0x9
	.4byte	0xf4
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x3d
	.4byte	0xf9
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x3e
	.4byte	0xf9
	.uleb128 0x12
	.4byte	.LASF19
	.byte	0x1
	.byte	0x26
	.byte	0x7
	.4byte	0xf4
	.uleb128 0x5
	.byte	0x3
	.4byte	OutputStream
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x46
	.byte	0x5
	.4byte	0x2d
	.4byte	0x13e
	.uleb128 0x2
	.4byte	0xf4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x39
	.4byte	0xe1
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x37
	.4byte	0xe1
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x38
	.4byte	0xe1
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x36
	.4byte	0xe1
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x44
	.byte	0x7
	.4byte	0xf4
	.4byte	0x180
	.uleb128 0x2
	.4byte	0x90
	.uleb128 0x2
	.4byte	0x90
	.byte	0
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x4d
	.byte	0x5
	.4byte	0x2d
	.4byte	0x195
	.uleb128 0x2
	.4byte	0xf4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x71
	.byte	0x5
	.4byte	0x2d
	.4byte	0x1b4
	.uleb128 0x2
	.4byte	0xfe
	.uleb128 0x2
	.4byte	0x90
	.uleb128 0x2
	.4byte	0xd5
	.byte	0
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x55
	.4byte	0x6a
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x3d
	.4byte	0x6a
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x13
	.4byte	.LASF36
	.byte	0x1
	.byte	0x28
	.byte	0xe
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.ascii	"fmt\000"
	.byte	0x1
	.byte	0x28
	.byte	0x2e
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x15
	.uleb128 0x16
	.ascii	"arg\000"
	.byte	0x1
	.byte	0x2a
	.byte	0xb
	.4byte	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x2e
	.byte	0
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
	.sleb128 14
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
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
	.sleb128 20
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
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
.LASF25:
	.ascii	"fopen\000"
.LASF29:
	.ascii	"EApiInitLib\000"
.LASF23:
	.ascii	"OpenEepromFiles\000"
.LASF24:
	.ascii	"fclose\000"
.LASF4:
	.ascii	"short int\000"
.LASF27:
	.ascii	"vfprintf\000"
.LASF32:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux\000"
.LASF11:
	.ascii	"va_list\000"
.LASF22:
	.ascii	"OpenI2CEepromFiles\000"
.LASF7:
	.ascii	"uint8_t\000"
.LASF18:
	.ascii	"stderr\000"
.LASF2:
	.ascii	"long long int\000"
.LASF31:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EA"
	.ascii	"piInitLib.c\000"
.LASF33:
	.ascii	"__va_list\000"
.LASF1:
	.ascii	"long int\000"
.LASF15:
	.ascii	"EApiStatus_t\000"
.LASF26:
	.ascii	"fflush\000"
.LASF35:
	.ascii	"_IO_FILE\000"
.LASF5:
	.ascii	"unsigned char\000"
.LASF3:
	.ascii	"signed char\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF8:
	.ascii	"uint32_t\000"
.LASF14:
	.ascii	"__isoc_va_list\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF20:
	.ascii	"CloseI2CEepromFiles\000"
.LASF36:
	.ascii	"DebugMsg\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF34:
	.ascii	"__ap\000"
.LASF10:
	.ascii	"char\000"
.LASF28:
	.ascii	"EApiUninitLib\000"
.LASF19:
	.ascii	"OutputStream\000"
.LASF12:
	.ascii	"long unsigned int\000"
.LASF16:
	.ascii	"double\000"
.LASF30:
	.ascii	"GNU C17 11.2.0 -mcpu=cortex-a9 -mfloat-abi=hard -mf"
	.ascii	"pu=vfpv3 -mabi=aapcs-linux -mtls-dialect=gnu -marm "
	.ascii	"-march=armv7-a+mp+sec+vfpv3 -g -fstack-protector-st"
	.ascii	"rong -fvisibility=hidden -fPIC\000"
.LASF21:
	.ascii	"CloseEepromFiles\000"
.LASF13:
	.ascii	"FILE\000"
.LASF17:
	.ascii	"stdout\000"
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
