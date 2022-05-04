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
	.file	"EApiEmulWDT.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.local	WatchdogState
	.comm	WatchdogState,4,4
	.section	.rodata
	.align	2
.LC0:
	.ascii	"EApiWDogGetCapEmul\000"
	.align	2
.LC1:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EA"
	.ascii	"piEmulWDT.c\000"
	.align	2
.LC2:
	.ascii	"\000"
	.align	2
.LC3:
	.ascii	"%s\012\000"
	.text
	.align	2
	.global	EApiWDogGetCapEmul
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiWDogGetCapEmul, %function
EApiWDogGetCapEmul:
.LFB1:
	.file 1 "/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EApiEmulWDT.c"
	.loc 1 74 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #40
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	.loc 1 75 16
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 76 21
	ldr	r2, [fp, #-16]
	mov	r3, #10176
	movt	r3, 9
	str	r3, [r2]
	.loc 1 77 21
	ldr	r2, [fp, #-20]
	mov	r3, #10176
	movt	r3, 9
	str	r3, [r2]
	.loc 1 78 21
	ldr	r2, [fp, #-24]
	mov	r3, #10176
	movt	r3, 9
	str	r3, [r2]
	.loc 1 79 3
	ldr	r3, .L4
.LPIC0:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L4+4
.LPIC1:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mov	r3, #0
	str	r3, [sp]
	mov	r3, #79
	ldr	r2, .L4+8
.LPIC2:
	add	r2, pc, r2
	ldr	r1, .L4+12
.LPIC3:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_SC(PLT)
	mov	r3, #0
	str	r3, [fp, #-8]
	nop
.L2:
	.loc 1 83 10
	ldr	r3, [fp, #-8]
	.loc 1 84 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L5:
	.align	2
.L4:
	.word	.LC2-(.LPIC0+8)
	.word	.LC3-(.LPIC1+8)
	.word	.LC0-(.LPIC2+8)
	.word	.LC1-(.LPIC3+8)
	.cfi_endproc
.LFE1:
	.size	EApiWDogGetCapEmul, .-EApiWDogGetCapEmul
	.section	.rodata
	.align	2
.LC4:
	.ascii	"EApiWDogStartEmul\000"
	.align	2
.LC5:
	.ascii	"Watchdog alread runing, need to stop before startin"
	.ascii	"g\000"
	.align	2
.LC6:
	.ascii	"(Delay>pMaxDelay)\000"
	.align	2
.LC7:
	.ascii	"(EventTimeout>pMaxEventTimeout)\000"
	.align	2
.LC8:
	.ascii	"(ResetTimeout>pMaxResetTimeout)\000"
	.text
	.align	2
	.global	EApiWDogStartEmul
	.hidden	EApiWDogStartEmul
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiWDogStartEmul, %function
EApiWDogStartEmul:
.LFB2:
	.loc 1 95 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #40
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	.loc 1 96 16
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 97 3
	ldr	r3, .L13
.LPIC4:
	add	r3, pc, r3
	ldr	r3, [r3]
	cmn	r3, #1
	bne	.L7
	.loc 1 97 3 is_stmt 0 discriminator 1
	ldr	r3, .L13+4
.LPIC5:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L13+8
.LPIC6:
	add	r3, pc, r3
	str	r3, [sp, #4]
	movw	r3, #65274
	movt	r3, 65535
	str	r3, [sp]
	mov	r3, #97
	ldr	r2, .L13+12
.LPIC7:
	add	r2, pc, r2
	ldr	r1, .L13+16
.LPIC8:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	movw	r3, #65274
	movt	r3, 65535
	str	r3, [fp, #-8]
	b	.L8
.L7:
	.loc 1 103 3 is_stmt 1
	ldr	r2, [fp, #-16]
	mov	r3, #10176
	movt	r3, 9
	cmp	r2, r3
	bls	.L9
	.loc 1 103 3 is_stmt 0 discriminator 1
	ldr	r3, .L13+20
.LPIC9:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L13+24
.LPIC10:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #103
	ldr	r2, .L13+28
.LPIC11:
	add	r2, pc, r2
	ldr	r1, .L13+32
.LPIC12:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-8]
	b	.L8
.L9:
	.loc 1 108 3 is_stmt 1
	ldr	r2, [fp, #-20]
	mov	r3, #10176
	movt	r3, 9
	cmp	r2, r3
	bls	.L10
	.loc 1 108 3 is_stmt 0 discriminator 1
	ldr	r3, .L13+36
.LPIC13:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L13+40
.LPIC14:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #108
	ldr	r2, .L13+44
.LPIC15:
	add	r2, pc, r2
	ldr	r1, .L13+48
.LPIC16:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-8]
	b	.L8
.L10:
	.loc 1 113 3 is_stmt 1
	ldr	r2, [fp, #-24]
	mov	r3, #10176
	movt	r3, 9
	cmp	r2, r3
	bls	.L11
	.loc 1 113 3 is_stmt 0 discriminator 1
	ldr	r3, .L13+52
.LPIC17:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L13+56
.LPIC18:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #113
	ldr	r2, .L13+60
.LPIC19:
	add	r2, pc, r2
	ldr	r1, .L13+64
.LPIC20:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-8]
	b	.L8
.L11:
	.loc 1 118 16 is_stmt 1
	ldr	r3, .L13+68
.LPIC21:
	add	r3, pc, r3
	mvn	r2, #0
	str	r2, [r3]
	.loc 1 119 3
	ldr	r3, .L13+72
.LPIC22:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L13+76
.LPIC23:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mov	r3, #0
	str	r3, [sp]
	mov	r3, #119
	ldr	r2, .L13+80
.LPIC24:
	add	r2, pc, r2
	ldr	r1, .L13+84
.LPIC25:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_SC(PLT)
	mov	r3, #0
	str	r3, [fp, #-8]
	nop
.L8:
	.loc 1 122 10
	ldr	r3, [fp, #-8]
	.loc 1 123 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L14:
	.align	2
.L13:
	.word	WatchdogState-(.LPIC4+8)
	.word	.LC5-(.LPIC5+8)
	.word	.LC3-(.LPIC6+8)
	.word	.LC4-(.LPIC7+8)
	.word	.LC1-(.LPIC8+8)
	.word	.LC6-(.LPIC9+8)
	.word	.LC3-(.LPIC10+8)
	.word	.LC4-(.LPIC11+8)
	.word	.LC1-(.LPIC12+8)
	.word	.LC7-(.LPIC13+8)
	.word	.LC3-(.LPIC14+8)
	.word	.LC4-(.LPIC15+8)
	.word	.LC1-(.LPIC16+8)
	.word	.LC8-(.LPIC17+8)
	.word	.LC3-(.LPIC18+8)
	.word	.LC4-(.LPIC19+8)
	.word	.LC1-(.LPIC20+8)
	.word	WatchdogState-(.LPIC21+8)
	.word	.LC2-(.LPIC22+8)
	.word	.LC3-(.LPIC23+8)
	.word	.LC4-(.LPIC24+8)
	.word	.LC1-(.LPIC25+8)
	.cfi_endproc
.LFE2:
	.size	EApiWDogStartEmul, .-EApiWDogStartEmul
	.section	.rodata
	.align	2
.LC9:
	.ascii	"EApiWDogTriggerEmul\000"
	.align	2
.LC10:
	.ascii	"Watchdog Disabled therefore not possible to trigger"
	.ascii	"\000"
	.text
	.align	2
	.global	EApiWDogTriggerEmul
	.hidden	EApiWDogTriggerEmul
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiWDogTriggerEmul, %function
EApiWDogTriggerEmul:
.LFB3:
	.loc 1 126 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #24
	.loc 1 127 16
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 128 3
	ldr	r3, .L19
.LPIC26:
	add	r3, pc, r3
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L16
	.loc 1 128 3 is_stmt 0 discriminator 1
	ldr	r3, .L19+4
.LPIC27:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L19+8
.LPIC28:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #3840
	str	r3, [sp]
	mov	r3, #128
	ldr	r2, .L19+12
.LPIC29:
	add	r2, pc, r2
	ldr	r1, .L19+16
.LPIC30:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #3840
	str	r3, [fp, #-8]
	b	.L17
.L16:
	.loc 1 135 3 is_stmt 1
	ldr	r3, .L19+20
.LPIC31:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L19+24
.LPIC32:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mov	r3, #0
	str	r3, [sp]
	mov	r3, #135
	ldr	r2, .L19+28
.LPIC33:
	add	r2, pc, r2
	ldr	r1, .L19+32
.LPIC34:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_SC(PLT)
	mov	r3, #0
	str	r3, [fp, #-8]
	nop
.L17:
	.loc 1 141 10
	ldr	r3, [fp, #-8]
	.loc 1 142 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L20:
	.align	2
.L19:
	.word	WatchdogState-(.LPIC26+8)
	.word	.LC10-(.LPIC27+8)
	.word	.LC3-(.LPIC28+8)
	.word	.LC9-(.LPIC29+8)
	.word	.LC1-(.LPIC30+8)
	.word	.LC2-(.LPIC31+8)
	.word	.LC3-(.LPIC32+8)
	.word	.LC9-(.LPIC33+8)
	.word	.LC1-(.LPIC34+8)
	.cfi_endproc
.LFE3:
	.size	EApiWDogTriggerEmul, .-EApiWDogTriggerEmul
	.section	.rodata
	.align	2
.LC11:
	.ascii	"EApiWDogStopEmul\000"
	.text
	.align	2
	.global	EApiWDogStopEmul
	.hidden	EApiWDogStopEmul
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiWDogStopEmul, %function
EApiWDogStopEmul:
.LFB4:
	.loc 1 145 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #24
	.loc 1 146 16
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 147 16
	ldr	r3, .L24
.LPIC35:
	add	r3, pc, r3
	mov	r2, #0
	str	r2, [r3]
	.loc 1 148 3
	ldr	r3, .L24+4
.LPIC36:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L24+8
.LPIC37:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mov	r3, #0
	str	r3, [sp]
	mov	r3, #148
	ldr	r2, .L24+12
.LPIC38:
	add	r2, pc, r2
	ldr	r1, .L24+16
.LPIC39:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_SC(PLT)
	mov	r3, #0
	str	r3, [fp, #-8]
	nop
.L22:
	.loc 1 154 10
	ldr	r3, [fp, #-8]
	.loc 1 155 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L25:
	.align	2
.L24:
	.word	WatchdogState-(.LPIC35+8)
	.word	.LC2-(.LPIC36+8)
	.word	.LC3-(.LPIC37+8)
	.word	.LC11-(.LPIC38+8)
	.word	.LC1-(.LPIC39+8)
	.cfi_endproc
.LFE4:
	.size	EApiWDogStopEmul, .-EApiWDogStopEmul
.Letext0:
	.file 2 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/bits/alltypes.h"
	.file 3 "../../include/EApi.h"
	.file 4 "../include/DbgChk.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x1fc
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x7
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
	.uleb128 0x7
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
	.uleb128 0xb
	.4byte	0x7d
	.uleb128 0x8
	.4byte	0x84
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x7
	.4byte	.LASF12
	.byte	0x3
	.byte	0x91
	.byte	0x12
	.4byte	0x6a
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x33
	.byte	0x11
	.4byte	0x26
	.uleb128 0x5
	.byte	0x3
	.4byte	WatchdogState
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x4
	.byte	0x3e
	.byte	0x1
	.4byte	0x2d
	.4byte	0xe2
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x90
	.4byte	0x95
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x113
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x92
	.byte	0x10
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x98
	.4byte	.L22
	.byte	0
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x7d
	.4byte	0x95
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x144
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x7f
	.byte	0x10
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x8b
	.4byte	.L17
	.byte	0
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x56
	.4byte	0x95
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19f
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x57
	.byte	0x14
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x58
	.byte	0x14
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x5b
	.byte	0x14
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x60
	.byte	0x10
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x78
	.4byte	.L8
	.byte	0
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0x3c
	.4byte	0x95
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1fa
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x3d
	.byte	0x18
	.4byte	0x1fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x40
	.byte	0x18
	.4byte	0x1fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x45
	.byte	0x18
	.4byte	0x1fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x4b
	.byte	0x10
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x51
	.4byte	.L2
	.byte	0
	.uleb128 0x8
	.4byte	0x6a
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
	.uleb128 0x6
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xd
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
.LASF12:
	.ascii	"EApiStatus_t\000"
.LASF7:
	.ascii	"uintptr_t\000"
.LASF17:
	.ascii	"ExitPoint\000"
.LASF26:
	.ascii	"GNU C17 11.2.0 -mcpu=cortex-a9 -mfloat-abi=hard -mf"
	.ascii	"pu=vfpv3 -mabi=aapcs-linux -mtls-dialect=gnu -marm "
	.ascii	"-march=armv7-a+mp+sec+vfpv3 -g -fstack-protector-st"
	.ascii	"rong -fvisibility=hidden -fPIC\000"
.LASF13:
	.ascii	"WatchdogState\000"
.LASF25:
	.ascii	"pMaxResetTimeout\000"
.LASF5:
	.ascii	"unsigned char\000"
.LASF11:
	.ascii	"long unsigned int\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF21:
	.ascii	"ResetTimeout\000"
.LASF27:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EA"
	.ascii	"piEmulWDT.c\000"
.LASF19:
	.ascii	"Delay\000"
.LASF22:
	.ascii	"EApiWDogGetCapEmul\000"
.LASF28:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF24:
	.ascii	"pMaxEventTimeout\000"
.LASF15:
	.ascii	"EApiWDogStopEmul\000"
.LASF23:
	.ascii	"pMaxDelay\000"
.LASF18:
	.ascii	"EApiWDogStartEmul\000"
.LASF2:
	.ascii	"long long int\000"
.LASF10:
	.ascii	"char\000"
.LASF29:
	.ascii	"siFormattedMessage_SC\000"
.LASF16:
	.ascii	"EApiWDogTriggerEmul\000"
.LASF4:
	.ascii	"short int\000"
.LASF8:
	.ascii	"uint32_t\000"
.LASF1:
	.ascii	"long int\000"
.LASF3:
	.ascii	"signed char\000"
.LASF14:
	.ascii	"StatusCode\000"
.LASF20:
	.ascii	"EventTimeout\000"
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
