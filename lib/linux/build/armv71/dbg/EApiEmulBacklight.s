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
	.file	"EApiEmulBacklight.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.data
	.align	2
	.type	BacklightLookup, %object
	.size	BacklightLookup, 24
BacklightLookup:
	.word	0
	.word	0
	.word	0
	.word	1
	.word	-1
	.word	255
	.section	.rodata
	.align	2
.LC0:
	.ascii	"EApiVgaGetBacklightEnableEmul\000"
	.align	2
.LC1:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EA"
	.ascii	"piEmulBacklight.c\000"
	.align	2
.LC2:
	.ascii	"\000"
	.align	2
.LC3:
	.ascii	"%s\012\000"
	.align	2
.LC4:
	.ascii	"Unrecognised Backlight ID\000"
	.text
	.align	2
	.global	EApiVgaGetBacklightEnableEmul
	.hidden	EApiVgaGetBacklightEnableEmul
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiVgaGetBacklightEnableEmul, %function
EApiVgaGetBacklightEnableEmul:
.LFB1:
	.file 1 "/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EApiEmulBacklight.c"
	.loc 1 64 1
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
	.loc 1 65 16
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 68 8
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 68 3
	b	.L2
.L5:
	.loc 1 70 28
	ldr	r1, .L7
.LPIC0:
	add	r1, pc, r1
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r1, r3
	ldr	r3, [r3]
	.loc 1 70 9
	ldr	r2, [fp, #-16]
	cmp	r2, r3
	bne	.L3
	.loc 1 72 36
	ldr	r1, .L7+4
.LPIC1:
	add	r1, pc, r1
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r1, r3
	add	r3, r3, #4
	ldr	r2, [r3]
	.loc 1 72 17
	ldr	r3, [fp, #-20]
	str	r2, [r3]
	.loc 1 73 9
	ldr	r3, .L7+8
.LPIC2:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L7+12
.LPIC3:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mov	r3, #0
	str	r3, [sp]
	mov	r3, #73
	ldr	r2, .L7+16
.LPIC4:
	add	r2, pc, r2
	ldr	r1, .L7+20
.LPIC5:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_SC(PLT)
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L4
.L3:
	.loc 1 68 42 discriminator 2
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L2:
	.loc 1 68 12 discriminator 1
	ldr	r3, [fp, #-8]
	cmp	r3, #1
	bls	.L5
	.loc 1 79 3
	ldr	r3, .L7+24
.LPIC6:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L7+28
.LPIC7:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #768
	str	r3, [sp]
	mov	r3, #79
	ldr	r2, .L7+32
.LPIC8:
	add	r2, pc, r2
	ldr	r1, .L7+36
.LPIC9:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #768
	str	r3, [fp, #-12]
	nop
.L4:
	.loc 1 86 10
	ldr	r3, [fp, #-12]
	.loc 1 87 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L8:
	.align	2
.L7:
	.word	BacklightLookup-(.LPIC0+8)
	.word	BacklightLookup-(.LPIC1+8)
	.word	.LC2-(.LPIC2+8)
	.word	.LC3-(.LPIC3+8)
	.word	.LC0-(.LPIC4+8)
	.word	.LC1-(.LPIC5+8)
	.word	.LC4-(.LPIC6+8)
	.word	.LC3-(.LPIC7+8)
	.word	.LC0-(.LPIC8+8)
	.word	.LC1-(.LPIC9+8)
	.cfi_endproc
.LFE1:
	.size	EApiVgaGetBacklightEnableEmul, .-EApiVgaGetBacklightEnableEmul
	.section	.rodata
	.align	2
.LC5:
	.ascii	"EApiVgaSetBacklightEnableEmul\000"
	.text
	.align	2
	.global	EApiVgaSetBacklightEnableEmul
	.hidden	EApiVgaSetBacklightEnableEmul
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiVgaSetBacklightEnableEmul, %function
EApiVgaSetBacklightEnableEmul:
.LFB2:
	.loc 1 94 1
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
	.loc 1 95 16
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 98 8
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 98 3
	b	.L10
.L13:
	.loc 1 100 28
	ldr	r1, .L15
.LPIC10:
	add	r1, pc, r1
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r1, r3
	ldr	r3, [r3]
	.loc 1 100 9
	ldr	r2, [fp, #-16]
	cmp	r2, r3
	bne	.L11
	.loc 1 102 35
	ldr	r1, .L15+4
.LPIC11:
	add	r1, pc, r1
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r1, r3
	add	r3, r3, #4
	ldr	r2, [fp, #-20]
	str	r2, [r3]
	.loc 1 103 9
	ldr	r3, .L15+8
.LPIC12:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L15+12
.LPIC13:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mov	r3, #0
	str	r3, [sp]
	mov	r3, #103
	ldr	r2, .L15+16
.LPIC14:
	add	r2, pc, r2
	ldr	r1, .L15+20
.LPIC15:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_SC(PLT)
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L12
.L11:
	.loc 1 98 42 discriminator 2
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L10:
	.loc 1 98 12 discriminator 1
	ldr	r3, [fp, #-8]
	cmp	r3, #1
	bls	.L13
	.loc 1 109 3
	ldr	r3, .L15+24
.LPIC16:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L15+28
.LPIC17:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #768
	str	r3, [sp]
	mov	r3, #109
	ldr	r2, .L15+32
.LPIC18:
	add	r2, pc, r2
	ldr	r1, .L15+36
.LPIC19:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #768
	str	r3, [fp, #-12]
	nop
.L12:
	.loc 1 116 10
	ldr	r3, [fp, #-12]
	.loc 1 117 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L16:
	.align	2
.L15:
	.word	BacklightLookup-(.LPIC10+8)
	.word	BacklightLookup-(.LPIC11+8)
	.word	.LC2-(.LPIC12+8)
	.word	.LC3-(.LPIC13+8)
	.word	.LC5-(.LPIC14+8)
	.word	.LC1-(.LPIC15+8)
	.word	.LC4-(.LPIC16+8)
	.word	.LC3-(.LPIC17+8)
	.word	.LC5-(.LPIC18+8)
	.word	.LC1-(.LPIC19+8)
	.cfi_endproc
.LFE2:
	.size	EApiVgaSetBacklightEnableEmul, .-EApiVgaSetBacklightEnableEmul
	.section	.rodata
	.align	2
.LC6:
	.ascii	"EApiVgaGetBacklightBrightnessEmul\000"
	.text
	.align	2
	.global	EApiVgaGetBacklightBrightnessEmul
	.hidden	EApiVgaGetBacklightBrightnessEmul
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiVgaGetBacklightBrightnessEmul, %function
EApiVgaGetBacklightBrightnessEmul:
.LFB3:
	.loc 1 123 1
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
	.loc 1 124 16
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 127 8
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 127 3
	b	.L18
.L21:
	.loc 1 129 28
	ldr	r1, .L23
.LPIC20:
	add	r1, pc, r1
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r1, r3
	ldr	r3, [r3]
	.loc 1 129 9
	ldr	r2, [fp, #-16]
	cmp	r2, r3
	bne	.L19
	.loc 1 131 40
	ldr	r1, .L23+4
.LPIC21:
	add	r1, pc, r1
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r1, r3
	add	r3, r3, #8
	ldr	r2, [r3]
	.loc 1 131 21
	ldr	r3, [fp, #-20]
	str	r2, [r3]
	.loc 1 132 9
	ldr	r3, .L23+8
.LPIC22:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L23+12
.LPIC23:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mov	r3, #0
	str	r3, [sp]
	mov	r3, #132
	ldr	r2, .L23+16
.LPIC24:
	add	r2, pc, r2
	ldr	r1, .L23+20
.LPIC25:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_SC(PLT)
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L20
.L19:
	.loc 1 127 42 discriminator 2
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L18:
	.loc 1 127 12 discriminator 1
	ldr	r3, [fp, #-8]
	cmp	r3, #1
	bls	.L21
	.loc 1 138 3
	ldr	r3, .L23+24
.LPIC26:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L23+28
.LPIC27:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #768
	str	r3, [sp]
	mov	r3, #138
	ldr	r2, .L23+32
.LPIC28:
	add	r2, pc, r2
	ldr	r1, .L23+36
.LPIC29:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #768
	str	r3, [fp, #-12]
	nop
.L20:
	.loc 1 145 10
	ldr	r3, [fp, #-12]
	.loc 1 146 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L24:
	.align	2
.L23:
	.word	BacklightLookup-(.LPIC20+8)
	.word	BacklightLookup-(.LPIC21+8)
	.word	.LC2-(.LPIC22+8)
	.word	.LC3-(.LPIC23+8)
	.word	.LC6-(.LPIC24+8)
	.word	.LC1-(.LPIC25+8)
	.word	.LC4-(.LPIC26+8)
	.word	.LC3-(.LPIC27+8)
	.word	.LC6-(.LPIC28+8)
	.word	.LC1-(.LPIC29+8)
	.cfi_endproc
.LFE3:
	.size	EApiVgaGetBacklightBrightnessEmul, .-EApiVgaGetBacklightBrightnessEmul
	.section	.rodata
	.align	2
.LC7:
	.ascii	"EApiVgaSetBacklightBrightness\000"
	.align	2
.LC8:
	.ascii	"EApiVgaSetBacklightBrightnessEmul\000"
	.text
	.align	2
	.global	EApiVgaSetBacklightBrightnessEmul
	.hidden	EApiVgaSetBacklightBrightnessEmul
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiVgaSetBacklightBrightnessEmul, %function
EApiVgaSetBacklightBrightnessEmul:
.LFB4:
	.loc 1 153 1
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
	.loc 1 154 16
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 157 8
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 157 3
	b	.L26
.L29:
	.loc 1 159 28
	ldr	r1, .L31
.LPIC30:
	add	r1, pc, r1
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r1, r3
	ldr	r3, [r3]
	.loc 1 159 9
	ldr	r2, [fp, #-16]
	cmp	r2, r3
	bne	.L27
	.loc 1 161 38
	ldr	r1, .L31+4
.LPIC31:
	add	r1, pc, r1
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r1, r3
	add	r3, r3, #8
	ldr	r2, [fp, #-20]
	str	r2, [r3]
	.loc 1 162 9
	ldr	r3, .L31+8
.LPIC32:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L31+12
.LPIC33:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mov	r3, #0
	str	r3, [sp]
	mov	r3, #162
	ldr	r2, .L31+16
.LPIC34:
	add	r2, pc, r2
	ldr	r1, .L31+20
.LPIC35:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_SC(PLT)
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L28
.L27:
	.loc 1 157 42 discriminator 2
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L26:
	.loc 1 157 12 discriminator 1
	ldr	r3, [fp, #-8]
	cmp	r3, #1
	bls	.L29
	.loc 1 168 3
	ldr	r3, .L31+24
.LPIC36:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L31+28
.LPIC37:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #768
	str	r3, [sp]
	mov	r3, #168
	ldr	r2, .L31+32
.LPIC38:
	add	r2, pc, r2
	ldr	r1, .L31+36
.LPIC39:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #768
	str	r3, [fp, #-12]
	nop
.L28:
	.loc 1 175 10
	ldr	r3, [fp, #-12]
	.loc 1 176 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L32:
	.align	2
.L31:
	.word	BacklightLookup-(.LPIC30+8)
	.word	BacklightLookup-(.LPIC31+8)
	.word	.LC2-(.LPIC32+8)
	.word	.LC3-(.LPIC33+8)
	.word	.LC7-(.LPIC34+8)
	.word	.LC1-(.LPIC35+8)
	.word	.LC4-(.LPIC36+8)
	.word	.LC3-(.LPIC37+8)
	.word	.LC8-(.LPIC38+8)
	.word	.LC1-(.LPIC39+8)
	.cfi_endproc
.LFE4:
	.size	EApiVgaSetBacklightBrightnessEmul, .-EApiVgaSetBacklightBrightnessEmul
.Letext0:
	.file 2 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/bits/alltypes.h"
	.file 3 "../../include/EApi.h"
	.file 4 "../include/DbgChk.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x292
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x1d
	.4byte	.LASF27
	.4byte	.LASF28
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
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x30
	.byte	0x18
	.4byte	0x26
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
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
	.uleb128 0xe
	.4byte	0x7d
	.uleb128 0xa
	.4byte	0x84
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x91
	.byte	0x12
	.4byte	0x6a
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x92
	.byte	0x12
	.4byte	0x6a
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0xc
	.byte	0x1
	.byte	0x31
	.byte	0x10
	.4byte	0xdd
	.uleb128 0x10
	.ascii	"Id\000"
	.byte	0x1
	.byte	0x32
	.byte	0xc
	.4byte	0xa1
	.byte	0
	.uleb128 0xb
	.4byte	.LASF14
	.byte	0x33
	.4byte	0x6a
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x34
	.4byte	0x6a
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x1
	.byte	0x35
	.byte	0x2
	.4byte	0xad
	.uleb128 0x11
	.4byte	0xdd
	.4byte	0xf9
	.uleb128 0x12
	.4byte	0x26
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x36
	.byte	0x1a
	.4byte	0xe9
	.uleb128 0x5
	.byte	0x3
	.4byte	BacklightLookup
	.uleb128 0x13
	.4byte	.LASF30
	.byte	0x4
	.byte	0x3e
	.byte	0x1
	.4byte	0x2d
	.4byte	0x13a
	.uleb128 0x2
	.4byte	0x7d
	.uleb128 0x2
	.4byte	0x89
	.uleb128 0x2
	.4byte	0x89
	.uleb128 0x2
	.4byte	0x26
	.uleb128 0x2
	.4byte	0x95
	.uleb128 0x2
	.4byte	0x89
	.uleb128 0x14
	.byte	0
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x95
	.4byte	0x95
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x190
	.uleb128 0x5
	.ascii	"Id\000"
	.byte	0x96
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x97
	.byte	0x14
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x9a
	.byte	0x10
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x7
	.ascii	"i\000"
	.byte	0x9b
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0xad
	.4byte	.L28
	.byte	0
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x77
	.4byte	0x95
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e6
	.uleb128 0x5
	.ascii	"Id\000"
	.byte	0x78
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x79
	.byte	0x15
	.4byte	0x1e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x7c
	.byte	0x10
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x7
	.ascii	"i\000"
	.byte	0x7d
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x8f
	.4byte	.L20
	.byte	0
	.uleb128 0xa
	.4byte	0x6a
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x5a
	.4byte	0x95
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x241
	.uleb128 0x5
	.ascii	"Id\000"
	.byte	0x5b
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x5c
	.byte	0x14
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x5f
	.byte	0x10
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x7
	.ascii	"i\000"
	.byte	0x60
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x72
	.4byte	.L12
	.byte	0
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.4byte	0x95
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.ascii	"Id\000"
	.byte	0x3d
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x3e
	.byte	0x15
	.4byte	0x1e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x41
	.byte	0x10
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x7
	.ascii	"i\000"
	.byte	0x42
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x54
	.4byte	.L4
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
	.uleb128 0x21
	.sleb128 20
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
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
.LASF23:
	.ascii	"EApiVgaSetBacklightEnableEmul\000"
.LASF4:
	.ascii	"short int\000"
.LASF17:
	.ascii	"BacklightLookup\000"
.LASF28:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux\000"
.LASF15:
	.ascii	"Brightness\000"
.LASF7:
	.ascii	"uintptr_t\000"
.LASF16:
	.ascii	"BackLightDevice_t\000"
.LASF29:
	.ascii	"BackLightDevice_s\000"
.LASF2:
	.ascii	"long long int\000"
.LASF21:
	.ascii	"pBrightness\000"
.LASF18:
	.ascii	"StatusCode\000"
.LASF1:
	.ascii	"long int\000"
.LASF19:
	.ascii	"EApiVgaSetBacklightBrightnessEmul\000"
.LASF13:
	.ascii	"EApiId_t\000"
.LASF30:
	.ascii	"siFormattedMessage_SC\000"
.LASF12:
	.ascii	"EApiStatus_t\000"
.LASF24:
	.ascii	"Enable\000"
.LASF14:
	.ascii	"Enabled\000"
.LASF5:
	.ascii	"unsigned char\000"
.LASF22:
	.ascii	"ExitPoint\000"
.LASF3:
	.ascii	"signed char\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF8:
	.ascii	"uint32_t\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF10:
	.ascii	"char\000"
.LASF27:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EA"
	.ascii	"piEmulBacklight.c\000"
.LASF11:
	.ascii	"long unsigned int\000"
.LASF26:
	.ascii	"GNU C17 11.2.0 -mcpu=cortex-a9 -mfloat-abi=hard -mf"
	.ascii	"pu=vfpv3 -mabi=aapcs-linux -mtls-dialect=gnu -marm "
	.ascii	"-march=armv7-a+mp+sec+vfpv3 -g -fstack-protector-st"
	.ascii	"rong -fvisibility=hidden -fPIC\000"
.LASF20:
	.ascii	"EApiVgaGetBacklightBrightnessEmul\000"
.LASF31:
	.ascii	"EApiVgaGetBacklightEnableEmul\000"
.LASF25:
	.ascii	"pEnable\000"
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
