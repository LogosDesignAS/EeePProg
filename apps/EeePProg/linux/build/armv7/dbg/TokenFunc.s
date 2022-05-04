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
	.file	"TokenFunc.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata
	.align	2
.LC0:
	.ascii	"\000"
	.text
	.align	2
	.global	GetTokenFlags
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	GetTokenFlags, %function
GetTokenFlags:
.LFB1:
	.file 1 "/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/linux/../TokenFunc.c"
	.loc 1 43 1
	.cfi_startproc
	@ args = 12, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #40
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	str	r3, [fp, #-36]
	.loc 1 44 22
	ldr	r3, [fp, #8]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-16]
	.loc 1 45 22
	ldr	r3, [fp, #8]
	ldr	r3, [r3]
	str	r3, [fp, #-12]
	.loc 1 46 16
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 47 3
	b	.L2
.L5:
	.loc 1 48 27
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #4]
	.loc 1 48 15
	ldr	r3, [fp, #12]
	and	r3, r3, r2
	.loc 1 48 7
	cmp	r3, #0
	beq	.L3
	.loc 1 49 9
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L4
	.loc 1 50 19
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-8]
	add	r0, r2, r3
	.loc 1 52 13
	ldr	r3, [fp, #-28]
	ldr	r3, [r3]
	mov	r2, r3
	.loc 1 50 19
	ldr	r3, [fp, #-8]
	sub	r1, r2, r3
	.loc 1 54 24
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	.loc 1 50 19
	ldr	r2, [fp, #-36]
	bl	EApiSprintfA(PLT)
	mov	r3, r0
	mov	r2, r3
	.loc 1 50 17
	ldr	r3, [fp, #-8]
	add	r3, r3, r2
	str	r3, [fp, #-8]
	b	.L3
.L4:
	.loc 1 57 19
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-8]
	add	r0, r2, r3
	.loc 1 59 13
	ldr	r3, [fp, #-28]
	ldr	r3, [r3]
	mov	r2, r3
	.loc 1 57 19
	ldr	r3, [fp, #-8]
	sub	r1, r2, r3
	.loc 1 62 24
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	.loc 1 57 19
	str	r3, [sp]
	ldr	r3, [fp, #4]
	ldr	r2, [fp, #-32]
	bl	EApiSprintfA(PLT)
	mov	r3, r0
	mov	r2, r3
	.loc 1 57 17
	ldr	r3, [fp, #-8]
	add	r3, r3, r2
	str	r3, [fp, #-8]
.L3:
	.loc 1 47 34
	ldr	r3, [fp, #-16]
	add	r3, r3, #8
	str	r3, [fp, #-16]
.L2:
	.loc 1 47 20 discriminator 1
	ldr	r3, [fp, #-12]
	sub	r2, r3, #1
	str	r2, [fp, #-12]
	.loc 1 47 8 discriminator 1
	cmp	r3, #0
	bne	.L5
	.loc 1 67 5
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L6
	.loc 1 68 19
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-8]
	add	r0, r2, r3
	.loc 1 70 13
	ldr	r3, [fp, #-28]
	ldr	r3, [r3]
	mov	r2, r3
	.loc 1 68 19
	ldr	r3, [fp, #-8]
	sub	r1, r2, r3
	ldr	r3, .L8
.LPIC0:
	add	r3, pc, r3
	str	r3, [sp]
	ldr	r3, [fp, #4]
	ldr	r2, [fp, #-32]
	bl	EApiSprintfA(PLT)
	mov	r3, r0
	mov	r2, r3
	.loc 1 68 17
	ldr	r3, [fp, #-8]
	add	r3, r3, r2
	str	r3, [fp, #-8]
.L6:
	.loc 1 75 16
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-28]
	str	r2, [r3]
	.loc 1 76 10
	mov	r3, #0
	.loc 1 77 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L9:
	.align	2
.L8:
	.word	.LC0-(.LPIC0+8)
	.cfi_endproc
.LFE1:
	.size	GetTokenFlags, .-GetTokenFlags
	.section	.rodata
	.align	2
.LC1:
	.ascii	"%s\000"
	.align	2
.LC2:
	.ascii	"UNKNOWN VALUE(0x%08lX)\000"
	.text
	.align	2
	.global	GetValueToken
	.syntax unified
	.arm
	.fpu vfpv3
	.type	GetValueToken, %function
GetValueToken:
.LFB2:
	.loc 1 85 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	.loc 1 86 22
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-12]
	.loc 1 87 22
	ldr	r3, [fp, #-24]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	.loc 1 88 3
	b	.L11
.L14:
	.loc 1 89 28
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #4]
	.loc 1 89 7
	ldr	r2, [fp, #-28]
	cmp	r2, r3
	bne	.L12
	.loc 1 90 58
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	.loc 1 90 7
	ldr	r2, .L15
.LPIC1:
	add	r2, pc, r2
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	EApiSprintfA(PLT)
	.loc 1 91 14
	mov	r3, #0
	b	.L13
.L12:
	.loc 1 88 34
	ldr	r3, [fp, #-12]
	add	r3, r3, #8
	str	r3, [fp, #-12]
.L11:
	.loc 1 88 20 discriminator 1
	ldr	r3, [fp, #-8]
	sub	r2, r3, #1
	str	r2, [fp, #-8]
	.loc 1 88 8 discriminator 1
	cmp	r3, #0
	bne	.L14
	.loc 1 94 3
	ldr	r3, [fp, #-28]
	ldr	r2, .L15+4
.LPIC2:
	add	r2, pc, r2
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	EApiSprintfA(PLT)
	.loc 1 95 10
	mvn	r3, #3840
.L13:
	.loc 1 96 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L16:
	.align	2
.L15:
	.word	.LC1-(.LPIC1+8)
	.word	.LC2-(.LPIC2+8)
	.cfi_endproc
.LFE2:
	.size	GetValueToken, .-GetValueToken
	.align	2
	.global	GetTokenValue
	.syntax unified
	.arm
	.fpu vfpv3
	.type	GetTokenValue, %function
GetTokenValue:
.LFB3:
	.loc 1 104 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	.loc 1 105 22
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-12]
	.loc 1 106 22
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	.loc 1 107 12
	ldr	r3, [fp, #-24]
	mov	r2, #0
	str	r2, [r3]
	.loc 1 108 3
	b	.L18
.L21:
	.loc 1 109 27
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	.loc 1 109 9
	ldr	r1, [fp, #-20]
	mov	r0, r3
	bl	strcmp(PLT)
	mov	r3, r0
	.loc 1 109 7
	cmp	r3, #0
	bne	.L19
	.loc 1 110 28
	ldr	r3, [fp, #-12]
	ldr	r2, [r3, #4]
	.loc 1 110 16
	ldr	r3, [fp, #-24]
	str	r2, [r3]
	.loc 1 111 14
	mov	r3, #0
	b	.L20
.L19:
	.loc 1 108 34
	ldr	r3, [fp, #-12]
	add	r3, r3, #8
	str	r3, [fp, #-12]
.L18:
	.loc 1 108 20 discriminator 1
	ldr	r3, [fp, #-8]
	sub	r2, r3, #1
	str	r2, [fp, #-8]
	.loc 1 108 8 discriminator 1
	cmp	r3, #0
	bne	.L21
	.loc 1 114 10
	mvn	r3, #3840
.L20:
	.loc 1 116 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE3:
	.size	GetTokenValue, .-GetTokenValue
	.align	2
	.global	GetTokenValueStrip
	.syntax unified
	.arm
	.fpu vfpv3
	.type	GetTokenValueStrip, %function
GetTokenValueStrip:
.LFB4:
	.loc 1 124 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	.loc 1 125 11
	ldr	r0, [fp, #-12]
	bl	skipWhiteSpaces(PLT)
	str	r0, [fp, #-12]
	.loc 1 126 3
	ldr	r0, [fp, #-12]
	bl	stripWhiteSpaces(PLT)
	.loc 1 127 10
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	GetTokenValue(PLT)
	mov	r3, r0
	.loc 1 128 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE4:
	.size	GetTokenValueStrip, .-GetTokenValueStrip
.Letext0:
	.file 2 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/bits/alltypes.h"
	.file 3 "../../../include/EApi.h"
	.file 4 "../TokenFunc.h"
	.file 5 "../StrFuncs.h"
	.file 6 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/string.h"
	.file 7 "../../include/EApiAHStr.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x352
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0xc
	.4byte	.LASF44
	.4byte	.LASF45
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x7
	.4byte	.LASF9
	.byte	0x2
	.byte	0x2b
	.byte	0x18
	.4byte	0x26
	.uleb128 0x6
	.4byte	0x2d
	.uleb128 0xd
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
	.uleb128 0x6
	.4byte	0x53
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x7
	.4byte	.LASF10
	.byte	0x2
	.byte	0x7c
	.byte	0x19
	.4byte	0x26
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	0x53
	.uleb128 0x6
	.4byte	0x95
	.uleb128 0x3
	.4byte	0x5a
	.uleb128 0x6
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x3
	.byte	0x91
	.byte	0x12
	.4byte	0x82
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x27
	.4byte	0xdf
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x28
	.byte	0x12
	.4byte	0x95
	.byte	0
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x29
	.byte	0x12
	.4byte	0xa9
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x4
	.byte	0x2a
	.byte	0x2
	.4byte	0xbc
	.uleb128 0x6
	.4byte	0xdf
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x2c
	.4byte	0x113
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x2d
	.byte	0x10
	.4byte	0x26
	.byte	0
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x2e
	.byte	0x10
	.4byte	0x113
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	0xdf
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x4
	.byte	0x2f
	.byte	0x2
	.4byte	0xf0
	.uleb128 0x6
	.4byte	0x118
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x5
	.byte	0x32
	.byte	0x1
	.4byte	0x13b
	.uleb128 0x4
	.4byte	0x9a
	.byte	0
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x5
	.byte	0x2d
	.byte	0x1
	.4byte	0x95
	.4byte	0x151
	.uleb128 0x4
	.4byte	0x9f
	.byte	0
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x6
	.byte	0x25
	.byte	0x5
	.4byte	0x3e
	.4byte	0x16c
	.uleb128 0x4
	.4byte	0x9f
	.uleb128 0x4
	.4byte	0x9f
	.byte	0
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x7
	.byte	0x6c
	.byte	0x1
	.4byte	0x3e
	.4byte	0x18d
	.uleb128 0x4
	.4byte	0x9a
	.uleb128 0x4
	.4byte	0x39
	.uleb128 0x4
	.4byte	0xa4
	.uleb128 0xf
	.byte	0
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x77
	.4byte	0xb0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d0
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x78
	.byte	0x21
	.4byte	0x1d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x79
	.byte	0x13
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x7a
	.byte	0x19
	.4byte	0x1d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3
	.4byte	0x124
	.uleb128 0x3
	.4byte	0xa9
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x63
	.4byte	0xb0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x239
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x64
	.byte	0x21
	.4byte	0x1d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x65
	.byte	0x19
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x66
	.byte	0x19
	.4byte	0x1d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LASF30
	.byte	0x69
	.byte	0x16
	.4byte	0x239
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x5
	.4byte	.LASF31
	.byte	0x6a
	.byte	0x16
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x3
	.4byte	0xeb
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x4f
	.4byte	0xb0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2ab
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x50
	.byte	0x21
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x51
	.byte	0x21
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x52
	.byte	0x21
	.4byte	0x1d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x53
	.byte	0x21
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.4byte	.LASF30
	.byte	0x56
	.byte	0x16
	.4byte	0x239
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x5
	.4byte	.LASF31
	.byte	0x57
	.byte	0x16
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x22
	.4byte	0xb0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x350
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x23
	.byte	0x21
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x24
	.byte	0x21
	.4byte	0x350
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x25
	.byte	0x21
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x26
	.byte	0x21
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x27
	.byte	0x21
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x28
	.byte	0x21
	.4byte	0x1d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x29
	.byte	0x21
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x5
	.4byte	.LASF30
	.byte	0x2c
	.byte	0x16
	.4byte	0x239
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF31
	.byte	0x2d
	.byte	0x16
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x5
	.4byte	.LASF42
	.byte	0x2e
	.byte	0x10
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x3
	.4byte	0x3e
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xf
	.uleb128 0x18
	.byte	0
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
.LASF43:
	.ascii	"GNU C99 11.2.0 -mcpu=cortex-a9 -mfloat-abi=hard -mf"
	.ascii	"pu=vfpv3 -mabi=aapcs-linux -mtls-dialect=gnu -marm "
	.ascii	"-march=armv7-a+mp+sec+vfpv3 -g -O0 -std=gnu99 -fsta"
	.ascii	"ck-protector-strong -fPIE\000"
.LASF31:
	.ascii	"stTokenList\000"
.LASF9:
	.ascii	"size_t\000"
.LASF13:
	.ascii	"EApiStatus_t\000"
.LASF15:
	.ascii	"ulTokenValue\000"
.LASF22:
	.ascii	"skipWhiteSpaces\000"
.LASF38:
	.ascii	"psiStrBufLen\000"
.LASF5:
	.ascii	"signed char\000"
.LASF42:
	.ascii	"siStrLen\000"
.LASF7:
	.ascii	"unsigned char\000"
.LASF21:
	.ascii	"TokenListDesc_t\000"
.LASF27:
	.ascii	"pulValue\000"
.LASF18:
	.ascii	"TokenListDesc_s\000"
.LASF36:
	.ascii	"GetTokenFlags\000"
.LASF12:
	.ascii	"long unsigned int\000"
.LASF8:
	.ascii	"short unsigned int\000"
.LASF14:
	.ascii	"pszTokenList\000"
.LASF39:
	.ascii	"cszFirstLine\000"
.LASF26:
	.ascii	"szValue\000"
.LASF46:
	.ascii	"stripWhiteSpaces\000"
.LASF32:
	.ascii	"GetValueToken\000"
.LASF4:
	.ascii	"double\000"
.LASF44:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux/../TokenFunc.c\000"
.LASF40:
	.ascii	"cszOtherLines\000"
.LASF45:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux\000"
.LASF41:
	.ascii	"cszName\000"
.LASF30:
	.ascii	"pcTokenList\000"
.LASF24:
	.ascii	"EApiSprintfA\000"
.LASF35:
	.ascii	"stValue\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF34:
	.ascii	"stBufLen\000"
.LASF28:
	.ascii	"GetTokenValueStrip\000"
.LASF23:
	.ascii	"strcmp\000"
.LASF25:
	.ascii	"pcTokenDesc\000"
.LASF2:
	.ascii	"long long int\000"
.LASF33:
	.ascii	"pszBuffer\000"
.LASF3:
	.ascii	"char\000"
.LASF6:
	.ascii	"short int\000"
.LASF37:
	.ascii	"szStrBuf\000"
.LASF20:
	.ascii	"pTokenList\000"
.LASF10:
	.ascii	"uint32_t\000"
.LASF1:
	.ascii	"long int\000"
.LASF19:
	.ascii	"uiTokenCount\000"
.LASF17:
	.ascii	"TokenDesc_s\000"
.LASF16:
	.ascii	"TokenDesc_t\000"
.LASF29:
	.ascii	"GetTokenValue\000"
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
