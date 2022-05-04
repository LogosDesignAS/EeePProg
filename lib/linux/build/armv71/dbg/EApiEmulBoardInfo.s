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
	.file	"EApiEmulBoardInfo.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.hidden	StringLookup
	.global	StringLookup
	.section	.rodata
	.align	2
.LC0:
	.ascii	"PICMG\000"
	.align	2
.LC1:
	.ascii	"SAMPLE API\000"
	.align	2
.LC2:
	.ascii	"Sample Serial Number\000"
	.align	2
.LC3:
	.ascii	"PICMGR2.0\000"
	.align	2
.LC4:
	.ascii	"COMExpress\000"
	.section	.data.rel.ro.local,"aw"
	.align	2
	.type	StringLookup, %object
	.size	StringLookup, 40
StringLookup:
	.word	0
	.word	.LC0
	.word	1
	.word	.LC1
	.word	3
	.word	.LC2
	.word	4
	.word	.LC3
	.word	6
	.word	.LC4
	.section	.rodata
	.align	2
.LC5:
	.ascii	"EApiBoardGetStringAEmul\000"
	.align	2
.LC6:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EA"
	.ascii	"piEmulBoardInfo.c\000"
	.align	2
.LC7:
	.ascii	"pBuffer Overrun Prevented\000"
	.align	2
.LC8:
	.ascii	"%s\012\000"
	.align	2
.LC9:
	.ascii	"\000"
	.align	2
.LC10:
	.ascii	"Unrecognised String ID\000"
	.text
	.align	2
	.global	EApiBoardGetStringAEmul
	.hidden	EApiBoardGetStringAEmul
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiBoardGetStringAEmul, %function
EApiBoardGetStringAEmul:
.LFB1:
	.file 1 "/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EApiEmulBoardInfo.c"
	.loc 1 77 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #48
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	.loc 1 78 16
	mov	r3, #0
	str	r3, [fp, #-16]
	.loc 1 82 12
	ldr	r3, [fp, #-32]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	.loc 1 84 8
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 84 3
	b	.L2
.L9:
	.loc 1 86 25
	ldr	r3, .L11
.LPIC0:
	add	r3, pc, r3
	ldr	r2, [fp, #-12]
	ldr	r3, [r3, r2, lsl #3]
	.loc 1 86 9
	ldr	r2, [fp, #-24]
	cmp	r2, r3
	bne	.L3
	.loc 1 95 50
	ldr	r2, .L11+4
.LPIC1:
	add	r2, pc, r2
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #3
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	.loc 1 95 28
	mov	r0, r3
	bl	strlen(PLT)
	mov	r3, r0
	.loc 1 95 61
	add	r2, r3, #1
	.loc 1 95 17
	ldr	r3, [fp, #-32]
	str	r2, [r3]
	.loc 1 96 22
	ldr	r3, [fp, #-32]
	ldr	r3, [r3]
	.loc 1 96 11
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	bcs	.L4
	.loc 1 98 21
	mvn	r3, #1536
	str	r3, [fp, #-16]
	b	.L5
.L4:
	.loc 1 102 20
	ldr	r3, [fp, #-32]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
.L5:
	.loc 1 104 11
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L6
	.loc 1 104 22 discriminator 1
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	beq	.L6
	.loc 1 106 42
	ldr	r2, .L11+8
.LPIC2:
	add	r2, pc, r2
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #3
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	.loc 1 106 11
	ldr	r2, [fp, #-8]
	mov	r1, r3
	ldr	r0, [fp, #-28]
	bl	memcpy(PLT)
	.loc 1 107 18
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	.loc 1 107 31
	mov	r2, #0
	strb	r2, [r3]
.L6:
	.loc 1 109 9
	ldr	r3, [fp, #-16]
	mvn	r2, #1536
	cmp	r3, r2
	bne	.L7
	.loc 1 109 9 is_stmt 0 discriminator 1
	ldr	r3, .L11+12
.LPIC3:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L11+16
.LPIC4:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #1536
	str	r3, [sp]
	mov	r3, #109
	ldr	r2, .L11+20
.LPIC5:
	add	r2, pc, r2
	ldr	r1, .L11+24
.LPIC6:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #1536
	str	r3, [fp, #-16]
	b	.L8
.L7:
	.loc 1 115 9 is_stmt 1
	ldr	r3, .L11+28
.LPIC7:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L11+32
.LPIC8:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mov	r3, #0
	str	r3, [sp]
	mov	r3, #115
	ldr	r2, .L11+36
.LPIC9:
	add	r2, pc, r2
	ldr	r1, .L11+40
.LPIC10:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_SC(PLT)
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L8
.L3:
	.loc 1 84 39 discriminator 2
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L2:
	.loc 1 84 12 discriminator 1
	ldr	r3, [fp, #-12]
	cmp	r3, #4
	bls	.L9
	.loc 1 121 3
	ldr	r3, .L11+44
.LPIC11:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L11+48
.LPIC12:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #768
	str	r3, [sp]
	mov	r3, #121
	ldr	r2, .L11+52
.LPIC13:
	add	r2, pc, r2
	ldr	r1, .L11+56
.LPIC14:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #768
	str	r3, [fp, #-16]
	nop
.L8:
	.loc 1 128 10
	ldr	r3, [fp, #-16]
	.loc 1 129 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L12:
	.align	2
.L11:
	.word	StringLookup-(.LPIC0+8)
	.word	StringLookup-(.LPIC1+8)
	.word	StringLookup-(.LPIC2+8)
	.word	.LC7-(.LPIC3+8)
	.word	.LC8-(.LPIC4+8)
	.word	.LC5-(.LPIC5+8)
	.word	.LC6-(.LPIC6+8)
	.word	.LC9-(.LPIC7+8)
	.word	.LC8-(.LPIC8+8)
	.word	.LC5-(.LPIC9+8)
	.word	.LC6-(.LPIC10+8)
	.word	.LC10-(.LPIC11+8)
	.word	.LC8-(.LPIC12+8)
	.word	.LC5-(.LPIC13+8)
	.word	.LC6-(.LPIC14+8)
	.cfi_endproc
.LFE1:
	.size	EApiBoardGetStringAEmul, .-EApiBoardGetStringAEmul
	.hidden	ValueLookup
	.global	ValueLookup
	.section	.rodata
	.align	2
	.type	ValueLookup, %object
	.size	ValueLookup, 144
ValueLookup:
	.word	1
	.word	16
	.word	2
	.word	65536
	.word	3
	.word	42817
	.word	4
	.word	33554432
	.word	65536
	.word	0
	.word	65537
	.word	328671
	.word	131072
	.word	3732
	.word	131073
	.word	3193
	.word	131074
	.word	2278
	.word	135172
	.word	1300
	.word	135176
	.word	2500
	.word	135180
	.word	3300
	.word	135184
	.word	3000
	.word	135188
	.word	5000
	.word	135192
	.word	5000
	.word	135196
	.word	12000
	.word	139264
	.word	5000
	.word	139265
	.word	2500
	.align	2
.LC11:
	.ascii	"EApiBoardGetValueEmul\000"
	.align	2
.LC12:
	.ascii	"Unrecognised Value ID\000"
	.text
	.align	2
	.global	EApiBoardGetValueEmul
	.hidden	EApiBoardGetValueEmul
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiBoardGetValueEmul, %function
EApiBoardGetValueEmul:
.LFB2:
	.loc 1 183 1
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
	.loc 1 184 16
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 187 8
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 187 3
	b	.L14
.L17:
	.loc 1 189 24
	ldr	r3, .L19
.LPIC15:
	add	r3, pc, r3
	ldr	r2, [fp, #-8]
	ldr	r3, [r3, r2, lsl #3]
	.loc 1 189 9
	ldr	r2, [fp, #-16]
	cmp	r2, r3
	bne	.L15
	.loc 1 191 31
	ldr	r2, .L19+4
.LPIC16:
	add	r2, pc, r2
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #3
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	.loc 1 191 16
	ldr	r3, [fp, #-20]
	str	r2, [r3]
	.loc 1 192 9
	ldr	r3, .L19+8
.LPIC17:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L19+12
.LPIC18:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mov	r3, #0
	str	r3, [sp]
	mov	r3, #192
	ldr	r2, .L19+16
.LPIC19:
	add	r2, pc, r2
	ldr	r1, .L19+20
.LPIC20:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_SC(PLT)
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L16
.L15:
	.loc 1 187 38 discriminator 2
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L14:
	.loc 1 187 12 discriminator 1
	ldr	r3, [fp, #-8]
	cmp	r3, #17
	bls	.L17
	.loc 1 195 3
	ldr	r3, .L19+24
.LPIC21:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L19+28
.LPIC22:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #768
	str	r3, [sp]
	mov	r3, #195
	ldr	r2, .L19+32
.LPIC23:
	add	r2, pc, r2
	ldr	r1, .L19+36
.LPIC24:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #768
	str	r3, [fp, #-12]
	nop
.L16:
	.loc 1 202 10
	ldr	r3, [fp, #-12]
	.loc 1 203 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L20:
	.align	2
.L19:
	.word	ValueLookup-(.LPIC15+8)
	.word	ValueLookup-(.LPIC16+8)
	.word	.LC9-(.LPIC17+8)
	.word	.LC8-(.LPIC18+8)
	.word	.LC11-(.LPIC19+8)
	.word	.LC6-(.LPIC20+8)
	.word	.LC12-(.LPIC21+8)
	.word	.LC8-(.LPIC22+8)
	.word	.LC11-(.LPIC23+8)
	.word	.LC6-(.LPIC24+8)
	.cfi_endproc
.LFE2:
	.size	EApiBoardGetValueEmul, .-EApiBoardGetValueEmul
.Letext0:
	.file 2 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/bits/alltypes.h"
	.file 3 "../../include/EApi.h"
	.file 4 "../include/DbgChk.h"
	.file 5 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/string.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x2ae
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x12
	.4byte	.LASF33
	.byte	0x1d
	.4byte	.LASF34
	.4byte	.LASF35
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2b
	.byte	0x18
	.4byte	0x26
	.uleb128 0x13
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
	.4byte	.LASF4
	.byte	0x2
	.byte	0x30
	.byte	0x18
	.4byte	0x26
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x77
	.byte	0x19
	.4byte	0x7b
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x7c
	.byte	0x19
	.4byte	0x26
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.4byte	0x9a
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	0x9a
	.uleb128 0x14
	.byte	0x4
	.uleb128 0x5
	.4byte	0xa1
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x91
	.byte	0x12
	.4byte	0x82
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x92
	.byte	0x12
	.4byte	0x82
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x31
	.4byte	0xea
	.uleb128 0xa
	.ascii	"Id\000"
	.byte	0x32
	.4byte	0xc0
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x33
	.4byte	0x95
	.byte	0
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x1
	.byte	0x34
	.byte	0x2
	.4byte	0xcc
	.uleb128 0x4
	.4byte	0xea
	.uleb128 0xc
	.4byte	0xf6
	.4byte	0x10b
	.uleb128 0xd
	.4byte	0x26
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	0xfb
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x35
	.byte	0x19
	.4byte	0x10b
	.uleb128 0x5
	.byte	0x3
	.4byte	StringLookup
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x8c
	.4byte	0x13f
	.uleb128 0xa
	.ascii	"Id\000"
	.byte	0x8d
	.4byte	0xc0
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x8e
	.4byte	0x82
	.byte	0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x1
	.byte	0x8f
	.byte	0x2
	.4byte	0x121
	.uleb128 0x4
	.4byte	0x13f
	.uleb128 0xc
	.4byte	0x14b
	.4byte	0x160
	.uleb128 0xd
	.4byte	0x26
	.byte	0x11
	.byte	0
	.uleb128 0x4
	.4byte	0x150
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x90
	.byte	0x18
	.4byte	0x160
	.uleb128 0x5
	.byte	0x3
	.4byte	ValueLookup
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x4
	.byte	0x3e
	.byte	0x1
	.4byte	0x39
	.4byte	0x1a6
	.uleb128 0x2
	.4byte	0x9a
	.uleb128 0x2
	.4byte	0xa8
	.uleb128 0x2
	.4byte	0xa8
	.uleb128 0x2
	.4byte	0x26
	.uleb128 0x2
	.4byte	0xb4
	.uleb128 0x2
	.4byte	0xa8
	.uleb128 0x15
	.byte	0
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x5
	.byte	0x19
	.byte	0x7
	.4byte	0xa6
	.4byte	0x1c6
	.uleb128 0x2
	.4byte	0xa6
	.uleb128 0x2
	.4byte	0x1c6
	.uleb128 0x2
	.4byte	0x2d
	.byte	0
	.uleb128 0x5
	.4byte	0x1cb
	.uleb128 0x16
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x5
	.byte	0x34
	.byte	0x8
	.4byte	0x2d
	.4byte	0x1e2
	.uleb128 0x2
	.4byte	0xa8
	.byte	0
	.uleb128 0x17
	.4byte	.LASF36
	.byte	0x1
	.byte	0xb3
	.byte	0x1
	.4byte	0xb4
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23b
	.uleb128 0xf
	.ascii	"Id\000"
	.byte	0xb4
	.byte	0x14
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0xb5
	.byte	0x15
	.4byte	0x23b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0xb8
	.byte	0x10
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x10
	.ascii	"i\000"
	.byte	0xb9
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x11
	.4byte	.LASF32
	.byte	0xc8
	.4byte	.L16
	.byte	0
	.uleb128 0x5
	.4byte	0x82
	.uleb128 0x18
	.4byte	.LASF37
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.4byte	0xb4
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xf
	.ascii	"Id\000"
	.byte	0x49
	.byte	0x17
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x4a
	.byte	0x17
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x4b
	.byte	0x17
	.4byte	0x23b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x4e
	.byte	0x10
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.ascii	"i\000"
	.byte	0x4f
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x50
	.byte	0xc
	.4byte	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x11
	.4byte	.LASF32
	.byte	0x7e
	.4byte	.L8
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0xa
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0x21
	.sleb128 0
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
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
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
.LASF36:
	.ascii	"EApiBoardGetValueEmul\000"
.LASF16:
	.ascii	"StringPtr\000"
.LASF6:
	.ascii	"short int\000"
.LASF3:
	.ascii	"size_t\000"
.LASF25:
	.ascii	"memcpy\000"
.LASF35:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux\000"
.LASF4:
	.ascii	"uintptr_t\000"
.LASF18:
	.ascii	"StringLookupTbl_s\000"
.LASF17:
	.ascii	"StringLookupTbl_t\000"
.LASF2:
	.ascii	"long long int\000"
.LASF1:
	.ascii	"long int\000"
.LASF15:
	.ascii	"EApiId_t\000"
.LASF30:
	.ascii	"pBufLen\000"
.LASF29:
	.ascii	"pBuffer\000"
.LASF37:
	.ascii	"EApiBoardGetStringAEmul\000"
.LASF24:
	.ascii	"siFormattedMessage_SC\000"
.LASF14:
	.ascii	"EApiStatus_t\000"
.LASF20:
	.ascii	"Value\000"
.LASF7:
	.ascii	"unsigned char\000"
.LASF34:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EA"
	.ascii	"piEmulBoardInfo.c\000"
.LASF32:
	.ascii	"ExitPoint\000"
.LASF5:
	.ascii	"signed char\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF10:
	.ascii	"uint32_t\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF8:
	.ascii	"uint16_t\000"
.LASF9:
	.ascii	"short unsigned int\000"
.LASF12:
	.ascii	"char\000"
.LASF22:
	.ascii	"StringLookup\000"
.LASF26:
	.ascii	"strlen\000"
.LASF23:
	.ascii	"ValueLookup\000"
.LASF28:
	.ascii	"StatusCode\000"
.LASF31:
	.ascii	"BufLenSav\000"
.LASF13:
	.ascii	"long unsigned int\000"
.LASF33:
	.ascii	"GNU C17 11.2.0 -mcpu=cortex-a9 -mfloat-abi=hard -mf"
	.ascii	"pu=vfpv3 -mabi=aapcs-linux -mtls-dialect=gnu -marm "
	.ascii	"-march=armv7-a+mp+sec+vfpv3 -g -fstack-protector-st"
	.ascii	"rong -fvisibility=hidden -fPIC\000"
.LASF19:
	.ascii	"ValueLookupTbl_s\000"
.LASF21:
	.ascii	"ValueLookupTbl_t\000"
.LASF27:
	.ascii	"pValue\000"
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
