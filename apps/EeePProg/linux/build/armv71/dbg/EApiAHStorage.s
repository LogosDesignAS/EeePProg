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
	.file	"EApiAHStorage.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata
	.align	2
.LC0:
	.ascii	"EApiAHWriteStorage\000"
	.align	2
.LC1:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux/../../common/EApiAHStorage.c\000"
	.align	2
.LC2:
	.ascii	"(pBuffer==NULL)\000"
	.align	2
.LC3:
	.ascii	"%s\012\000"
	.align	2
.LC4:
	.ascii	"(ByteCnt==0)\000"
	.align	2
.LC5:
	.ascii	"((ByteOffset+ByteCnt)>MaxLen)\000"
	.global	__aeabi_uidivmod
	.align	2
.LC6:
	.ascii	"((AdjOffset+AdjLength)>MaxLen)\000"
	.align	2
.LC7:
	.ascii	"Allocating Page Buffer\000"
	.text
	.align	2
	.global	EApiAHWriteStorage
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiAHWriteStorage, %function
EApiAHWriteStorage:
.LFB1:
	.file 1 "/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/linux/../../common/EApiAHStorage.c"
	.loc 1 46 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #64
	str	r0, [fp, #-40]
	str	r1, [fp, #-44]
	str	r2, [fp, #-48]
	str	r3, [fp, #-52]
	.loc 1 46 1
	ldr	r2, .L19
.LPIC20:
	add	r2, pc, r2
	ldr	r3, .L19+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 47 18
	mov	r3, #0
	str	r3, [fp, #-28]
	.loc 1 49 14
	ldr	r3, [fp, #-44]
	str	r3, [fp, #-24]
	.loc 1 49 36
	ldr	r3, [fp, #-52]
	str	r3, [fp, #-20]
	.loc 1 50 20
	mov	r3, #0
	str	r3, [fp, #-16]
	.loc 1 51 14
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 53 5
	ldr	r3, [fp, #-48]
	cmp	r3, #0
	bne	.L2
	.loc 1 53 5 is_stmt 0 discriminator 1
	ldr	r3, .L19+8
.LPIC0:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L19+12
.LPIC1:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #53
	ldr	r2, .L19+16
.LPIC2:
	add	r2, pc, r2
	ldr	r1, .L19+20
.LPIC3:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-28]
	b	.L3
.L2:
	.loc 1 58 5 is_stmt 1
	ldr	r3, [fp, #-52]
	cmp	r3, #0
	bne	.L4
	.loc 1 58 5 is_stmt 0 discriminator 1
	ldr	r3, .L19+24
.LPIC4:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L19+28
.LPIC5:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #58
	ldr	r2, .L19+32
.LPIC6:
	add	r2, pc, r2
	ldr	r1, .L19+36
.LPIC7:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-28]
	b	.L3
.L4:
	.loc 1 64 16 is_stmt 1
	sub	r2, fp, #32
	sub	r3, fp, #36
	mov	r1, r3
	ldr	r0, [fp, #-40]
	bl	EApiStorageCap(PLT)
	str	r0, [fp, #-28]
	.loc 1 65 7
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L17
	.loc 1 69 5
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-52]
	add	r2, r2, r3
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	bls	.L7
	.loc 1 69 5 is_stmt 0 discriminator 1
	ldr	r3, .L19+40
.LPIC8:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L19+44
.LPIC9:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #69
	ldr	r2, .L19+48
.LPIC10:
	add	r2, pc, r2
	ldr	r1, .L19+52
.LPIC11:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-28]
	b	.L3
.L7:
	.loc 1 75 18 is_stmt 1
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-44]
	mov	r1, r2
	mov	r0, r3
	bl	__aeabi_uidivmod(PLT)
	mov	r3, r1
	.loc 1 75 7
	cmp	r3, #0
	beq	.L8
	.loc 1 76 30
	ldr	r2, [fp, #-32]
	.loc 1 76 19
	ldr	r3, [fp, #-44]
	mov	r1, r2
	mov	r0, r3
	bl	__aeabi_uidivmod(PLT)
	mov	r3, r1
	str	r3, [fp, #-12]
	.loc 1 77 16
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-12]
	sub	r3, r2, r3
	str	r3, [fp, #-24]
	.loc 1 78 16
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	str	r3, [fp, #-20]
.L8:
	.loc 1 80 17
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-20]
	mov	r1, r2
	mov	r0, r3
	bl	__aeabi_uidivmod(PLT)
	mov	r3, r1
	.loc 1 80 7
	cmp	r3, #0
	beq	.L9
	.loc 1 82 37
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-20]
	mov	r1, r2
	mov	r0, r3
	bl	__aeabi_uidivmod(PLT)
	mov	r3, r1
	mov	r2, r3
	.loc 1 82 26
	ldr	r3, [fp, #-20]
	sub	r2, r3, r2
	.loc 1 82 48
	ldr	r3, [fp, #-32]
	.loc 1 82 16
	add	r3, r2, r3
	str	r3, [fp, #-20]
.L9:
	.loc 1 84 7
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-52]
	cmp	r2, r3
	beq	.L10
	.loc 1 88 7
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-20]
	add	r2, r2, r3
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	bls	.L11
	.loc 1 88 7 is_stmt 0 discriminator 1
	ldr	r3, .L19+56
.LPIC12:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L19+60
.LPIC13:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #3840
	str	r3, [sp]
	mov	r3, #88
	ldr	r2, .L19+64
.LPIC14:
	add	r2, pc, r2
	ldr	r1, .L19+68
.LPIC15:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #3840
	str	r3, [fp, #-28]
	b	.L3
.L11:
	.loc 1 93 18 is_stmt 1
	ldr	r0, [fp, #-20]
	bl	malloc(PLT)
	mov	r3, r0
	str	r3, [fp, #-16]
	.loc 1 94 7
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L12
	.loc 1 94 7 is_stmt 0 discriminator 1
	ldr	r3, .L19+72
.LPIC16:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L19+76
.LPIC17:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #2
	str	r3, [sp]
	mov	r3, #94
	ldr	r2, .L19+80
.LPIC18:
	add	r2, pc, r2
	ldr	r1, .L19+84
.LPIC19:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #2
	str	r3, [fp, #-28]
	b	.L3
.L12:
	.loc 1 100 18 is_stmt 1
	ldr	r3, [fp, #-20]
	str	r3, [sp]
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-24]
	ldr	r0, [fp, #-40]
	bl	EApiStorageAreaRead(PLT)
	str	r0, [fp, #-28]
	.loc 1 101 9
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L18
	.loc 1 103 14
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	.loc 1 103 7
	ldr	r2, [fp, #-52]
	ldr	r1, [fp, #-48]
	mov	r0, r3
	bl	memcpy(PLT)
	.loc 1 104 18
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-24]
	ldr	r0, [fp, #-40]
	bl	EApiStorageAreaWrite(PLT)
	str	r0, [fp, #-28]
	b	.L3
.L10:
	.loc 1 106 18
	ldr	r3, [fp, #-52]
	ldr	r2, [fp, #-48]
	ldr	r1, [fp, #-44]
	ldr	r0, [fp, #-40]
	bl	EApiStorageAreaWrite(PLT)
	str	r0, [fp, #-28]
	b	.L3
.L6:
.L17:
	.loc 1 66 7
	nop
	b	.L3
.L18:
	.loc 1 102 9
	nop
.L3:
	.loc 1 110 7
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L14
	.loc 1 110 25 discriminator 1
	ldr	r0, [fp, #-16]
	bl	free(PLT)
.L14:
	.loc 1 112 12
	ldr	r3, [fp, #-28]
	.loc 1 46 1
	ldr	r1, .L19+88
.LPIC21:
	add	r1, pc, r1
	.loc 1 113 1
	ldr	r2, .L19+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L16
	bl	__stack_chk_fail(PLT)
.L16:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L20:
	.align	2
.L19:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC20+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC2-(.LPIC0+8)
	.word	.LC3-(.LPIC1+8)
	.word	.LC0-(.LPIC2+8)
	.word	.LC1-(.LPIC3+8)
	.word	.LC4-(.LPIC4+8)
	.word	.LC3-(.LPIC5+8)
	.word	.LC0-(.LPIC6+8)
	.word	.LC1-(.LPIC7+8)
	.word	.LC5-(.LPIC8+8)
	.word	.LC3-(.LPIC9+8)
	.word	.LC0-(.LPIC10+8)
	.word	.LC1-(.LPIC11+8)
	.word	.LC6-(.LPIC12+8)
	.word	.LC3-(.LPIC13+8)
	.word	.LC0-(.LPIC14+8)
	.word	.LC1-(.LPIC15+8)
	.word	.LC7-(.LPIC16+8)
	.word	.LC3-(.LPIC17+8)
	.word	.LC0-(.LPIC18+8)
	.word	.LC1-(.LPIC19+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC21+8)
	.cfi_endproc
.LFE1:
	.size	EApiAHWriteStorage, .-EApiAHWriteStorage
.Letext0:
	.file 2 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/bits/alltypes.h"
	.file 3 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/stdint.h"
	.file 4 "../../../include/EApi.h"
	.file 5 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/string.h"
	.file 6 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/stdlib.h"
	.file 7 "../../include/DbgChk.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x296
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0xc
	.4byte	.LASF37
	.4byte	.LASF38
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2b
	.byte	0x18
	.4byte	0x26
	.uleb128 0xc
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
	.uleb128 0x9
	.4byte	0x4e
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x30
	.byte	0x18
	.4byte	0x26
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x59
	.byte	0x19
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x2
	.byte	0x7c
	.byte	0x19
	.4byte	0x26
	.uleb128 0x9
	.4byte	0x97
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x19
	.byte	0x11
	.4byte	0x6f
	.uleb128 0x5
	.4byte	0x55
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x91
	.byte	0x12
	.4byte	0x97
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x92
	.byte	0x12
	.4byte	0x97
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0x6
	.byte	0x29
	.byte	0x6
	.4byte	0xf1
	.uleb128 0x1
	.4byte	0x5a
	.byte	0
	.uleb128 0x6
	.4byte	.LASF18
	.2byte	0x2a0
	.4byte	0xc7
	.4byte	0x115
	.uleb128 0x1
	.4byte	0xd3
	.uleb128 0x1
	.4byte	0x97
	.uleb128 0x1
	.4byte	0x5a
	.uleb128 0x1
	.4byte	0x97
	.byte	0
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.byte	0x19
	.byte	0x7
	.4byte	0x5a
	.4byte	0x135
	.uleb128 0x1
	.4byte	0x5a
	.uleb128 0x1
	.4byte	0x135
	.uleb128 0x1
	.4byte	0x2d
	.byte	0
	.uleb128 0x5
	.4byte	0x13a
	.uleb128 0xf
	.uleb128 0x6
	.4byte	.LASF20
	.2byte	0x285
	.4byte	0xc7
	.4byte	0x164
	.uleb128 0x1
	.4byte	0xd3
	.uleb128 0x1
	.4byte	0x97
	.uleb128 0x1
	.4byte	0x5a
	.uleb128 0x1
	.4byte	0x97
	.uleb128 0x1
	.4byte	0x97
	.byte	0
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x6
	.byte	0x26
	.byte	0x7
	.4byte	0x5a
	.4byte	0x17a
	.uleb128 0x1
	.4byte	0x2d
	.byte	0
	.uleb128 0x6
	.4byte	.LASF22
	.2byte	0x26c
	.4byte	0xc7
	.4byte	0x199
	.uleb128 0x1
	.4byte	0xd3
	.uleb128 0x1
	.4byte	0x199
	.uleb128 0x1
	.4byte	0x199
	.byte	0
	.uleb128 0x5
	.4byte	0x97
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x7
	.byte	0x3e
	.byte	0x1
	.4byte	0x39
	.4byte	0x1ce
	.uleb128 0x1
	.4byte	0x4e
	.uleb128 0x1
	.4byte	0xbb
	.uleb128 0x1
	.4byte	0xbb
	.uleb128 0x1
	.4byte	0x26
	.uleb128 0x1
	.4byte	0xc7
	.uleb128 0x1
	.4byte	0xbb
	.uleb128 0x10
	.byte	0
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0x1
	.byte	0x28
	.byte	0x1
	.4byte	0xc7
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x294
	.uleb128 0x12
	.ascii	"Id\000"
	.byte	0x1
	.byte	0x29
	.byte	0x1c
	.4byte	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x2a
	.4byte	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x2b
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x2c
	.4byte	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x2f
	.byte	0x12
	.4byte	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x30
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x30
	.byte	0x16
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x31
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x31
	.byte	0x24
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x32
	.byte	0x14
	.4byte	0x294
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x33
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x6d
	.4byte	.L3
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x6c
	.4byte	.L6
	.byte	0
	.uleb128 0x5
	.4byte	0xaf
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x8
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
	.uleb128 0x21
	.sleb128 28
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x12
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
.LASF24:
	.ascii	"ByteOffset\000"
.LASF7:
	.ascii	"int8_t\000"
.LASF9:
	.ascii	"short int\000"
.LASF5:
	.ascii	"size_t\000"
.LASF21:
	.ascii	"malloc\000"
.LASF19:
	.ascii	"memcpy\000"
.LASF40:
	.ascii	"EApiAHWriteStorage\000"
.LASF33:
	.ascii	"BufferOffset\000"
.LASF6:
	.ascii	"uintptr_t\000"
.LASF39:
	.ascii	"free\000"
.LASF2:
	.ascii	"long long int\000"
.LASF20:
	.ascii	"EApiStorageAreaRead\000"
.LASF1:
	.ascii	"long int\000"
.LASF17:
	.ascii	"EApiId_t\000"
.LASF25:
	.ascii	"pBuffer\000"
.LASF26:
	.ascii	"ByteCnt\000"
.LASF23:
	.ascii	"siFormattedMessage_SC\000"
.LASF16:
	.ascii	"EApiStatus_t\000"
.LASF29:
	.ascii	"alignment\000"
.LASF18:
	.ascii	"EApiStorageAreaWrite\000"
.LASF10:
	.ascii	"unsigned char\000"
.LASF28:
	.ascii	"MaxLen\000"
.LASF34:
	.ascii	"ExitPoint\000"
.LASF8:
	.ascii	"signed char\000"
.LASF13:
	.ascii	"long long unsigned int\000"
.LASF12:
	.ascii	"uint32_t\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF11:
	.ascii	"short unsigned int\000"
.LASF30:
	.ascii	"AdjOffset\000"
.LASF3:
	.ascii	"char\000"
.LASF36:
	.ascii	"GNU C99 11.2.0 -mcpu=cortex-a9 -mfloat-abi=hard -mf"
	.ascii	"pu=vfpv3 -mabi=aapcs-linux -mtls-dialect=gnu -marm "
	.ascii	"-march=armv7-a+mp+sec+vfpv3 -g -O0 -std=gnu99 -fsta"
	.ascii	"ck-protector-strong -fPIE\000"
.LASF27:
	.ascii	"StatusCode\000"
.LASF32:
	.ascii	"pLclBuffer\000"
.LASF31:
	.ascii	"AdjLength\000"
.LASF14:
	.ascii	"int_least8_t\000"
.LASF15:
	.ascii	"long unsigned int\000"
.LASF4:
	.ascii	"double\000"
.LASF22:
	.ascii	"EApiStorageCap\000"
.LASF35:
	.ascii	"ErrorExit\000"
.LASF38:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux\000"
.LASF37:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux/../../common/EApiAHStorage.c\000"
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
