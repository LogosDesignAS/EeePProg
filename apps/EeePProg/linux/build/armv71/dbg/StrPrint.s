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
	.file	"StrPrint.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.global	__aeabi_uidiv
	.align	2
	.global	StringBlock
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	StringBlock, %function
StringBlock:
.LFB1:
	.file 1 "/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/linux/../StrPrint.c"
	.loc 1 40 1
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #32
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	str	r3, [fp, #-36]
	.loc 1 41 15
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-20]
	.loc 1 42 10
	mov	r3, #8
	str	r3, [fp, #-16]
	.loc 1 45 14
	ldr	r3, [fp, #-36]
	mov	r2, #0
	str	r2, [r3]
	.loc 1 46 13
	ldr	r3, [fp, #4]
	mov	r2, #0
	str	r2, [r3]
	.loc 1 49 6
	ldr	r3, [fp, #-20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 49 5
	cmp	r3, #10
	bne	.L3
	.loc 1 50 15
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
	.loc 1 51 8
	b	.L3
.L12:
	.loc 1 53 23
	ldr	r3, [fp, #-20]
	add	r2, r3, #1
	str	r2, [fp, #-20]
	.loc 1 53 12
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 53 5
	cmp	r3, #47
	addls	pc, pc, r3, asl #2
	b	.L15
.L6:
	b	.L9
	b	.L15
	b	.L15
	b	.L15
	b	.L15
	b	.L15
	b	.L15
	b	.L15
	b	.L15
	b	.L8
	b	.L7
	b	.L15
	b	.L15
	b	.L7
	b	.L15
	b	.L15
	b	.L15
	b	.L15
	b	.L15
	b	.L15
	b	.L15
	b	.L15
	b	.L15
	b	.L15
	b	.L15
	b	.L15
	b	.L15
	b	.L15
	b	.L15
	b	.L15
	b	.L15
	b	.L15
	b	.L5
	b	.L15
	b	.L15
	b	.L15
	b	.L15
	b	.L15
	b	.L15
	b	.L15
	b	.L15
	b	.L15
	b	.L15
	b	.L15
	b	.L15
	b	.L15
	b	.L15
	b	.L5
	.p2align 1
.L8:
	.loc 1 55 32
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-24]
	sub	r3, r2, r3
	mov	r2, r3
	.loc 1 55 20
	ldr	r3, [fp, #-28]
	add	r3, r3, r2
	str	r3, [fp, #-12]
	.loc 1 56 33
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	.loc 1 56 45
	sub	r3, r3, #1
	.loc 1 56 48
	ldr	r1, [fp, #-16]
	mov	r0, r3
	bl	__aeabi_uidiv(PLT)
	mov	r3, r0
	mov	r2, r3
	.loc 1 56 18
	ldr	r3, [fp, #-16]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	.loc 1 57 18
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	sub	r3, r2, r3
	str	r3, [fp, #-8]
	.loc 1 58 11
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-8]
	cmp	r2, r3
	bcc	.L10
	.loc 1 59 22
	ldr	r3, [fp, #4]
	ldr	r2, [r3]
	.loc 1 59 24
	ldr	r3, [fp, #-8]
	.loc 1 59 22
	add	r2, r2, r3
	ldr	r3, [fp, #4]
	str	r2, [r3]
	.loc 1 60 25
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-8]
	sub	r3, r2, r3
	str	r3, [fp, #-32]
	b	.L5
.L10:
	.loc 1 62 24
	mov	r3, #0
	str	r3, [fp, #-32]
.L5:
	.loc 1 65 32
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-24]
	sub	r3, r2, r3
	.loc 1 65 41
	sub	r3, r3, #1
	mov	r2, r3
	.loc 1 65 20
	ldr	r3, [fp, #-36]
	str	r2, [r3]
	.loc 1 66 9
	b	.L3
.L9:
	.loc 1 68 32
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-24]
	sub	r3, r2, r3
	.loc 1 68 41
	sub	r3, r3, #1
	mov	r2, r3
	.loc 1 68 20
	ldr	r3, [fp, #-36]
	str	r2, [r3]
	.loc 1 69 16
	mov	r3, #0
	b	.L11
.L7:
	.loc 1 72 32
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-24]
	sub	r3, r2, r3
	.loc 1 72 41
	sub	r3, r3, #1
	mov	r2, r3
	.loc 1 72 20
	ldr	r3, [fp, #-36]
	str	r2, [r3]
	.loc 1 73 16
	mvn	r3, #1536
	b	.L11
.L15:
	.loc 1 75 9
	nop
.L3:
	.loc 1 51 23
	ldr	r3, [fp, #-32]
	sub	r2, r3, #1
	str	r2, [fp, #-32]
	.loc 1 51 9
	cmp	r3, #0
	bne	.L12
	.loc 1 79 7
	ldr	r3, [fp, #-20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 79 5
	cmp	r3, #0
	bne	.L13
	.loc 1 80 28
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-24]
	sub	r3, r2, r3
	mov	r2, r3
	.loc 1 80 16
	ldr	r3, [fp, #-36]
	str	r2, [r3]
	.loc 1 81 12
	mov	r3, #0
	b	.L11
.L13:
	.loc 1 82 14
	ldr	r3, [fp, #-36]
	ldr	r3, [r3]
	.loc 1 82 12
	cmp	r3, #0
	bne	.L14
	.loc 1 83 28
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-24]
	sub	r3, r2, r3
	mov	r2, r3
	.loc 1 83 16
	ldr	r3, [fp, #-36]
	str	r2, [r3]
.L14:
	.loc 1 85 10
	mvn	r3, #1536
.L11:
	.loc 1 86 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE1:
	.size	StringBlock, .-StringBlock
	.section	.rodata
	.align	2
.LC0:
	.ascii	"%-*.*s%s\000"
	.align	2
.LC1:
	.ascii	"%*s%-*s%s\000"
	.align	2
.LC2:
	.ascii	"\000"
	.align	2
.LC3:
	.ascii	"%*s%-*.*s%s\000"
	.text
	.align	2
	.global	PrintStringBlock
	.syntax unified
	.arm
	.fpu vfpv3
	.type	PrintStringBlock, %function
PrintStringBlock:
.LFB2:
	.loc 1 97 1
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #64
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	str	r2, [fp, #-40]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #8]
	str	r3, [fp, #-48]
	.loc 1 97 1
	ldr	r2, .L30
.LPIC4:
	add	r2, pc, r2
	ldr	r3, .L30+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 99 19
	ldr	r0, [fp, #-44]
	bl	strlen(PLT)
	str	r0, [fp, #-20]
	.loc 1 101 5
	ldr	r3, [fp, #4]
	cmp	r3, #0
	blt	.L17
	.loc 1 102 14
	ldr	r3, [fp, #-20]
	.loc 1 102 7
	ldr	r2, [fp, #4]
	cmp	r2, r3
	ble	.L18
	.loc 1 103 15
	ldr	r3, [fp, #4]
	str	r3, [fp, #-20]
	b	.L18
.L17:
	.loc 1 104 12
	ldr	r3, [fp, #4]
	rsb	r2, r3, #0
	.loc 1 104 20
	ldr	r3, [fp, #-20]
	.loc 1 104 11
	cmp	r2, r3
	ble	.L18
	.loc 1 105 17
	ldr	r3, [fp, #4]
	rsb	r3, r3, #0
	.loc 1 105 15
	str	r3, [fp, #-20]
.L18:
	.loc 1 107 3
	sub	r2, fp, #28
	sub	r3, fp, #24
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [fp, #-40]
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-36]
	bl	StringBlock(PLT)
	.loc 1 108 34
	ldr	r2, [fp, #-40]
	.loc 1 108 3
	ldr	r3, [fp, #-24]
	sub	r2, r2, r3
	ldr	r3, [fp, #-28]
	mov	r1, r3
	ldr	r3, [fp, #-48]
	str	r3, [sp, #4]
	ldr	r3, [fp, #-36]
	str	r3, [sp]
	mov	r3, r1
	ldr	r1, .L30+8
.LPIC0:
	add	r1, pc, r1
	ldr	r0, [fp, #-32]
	bl	fprintf(PLT)
	.loc 1 109 8
	b	.L19
.L27:
.LBB2:
	.loc 1 110 9
	mov	r3, #0
	str	r3, [fp, #-16]
	.loc 1 112 11
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	str	r3, [fp, #-36]
	.loc 1 114 20
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 114 5
	b	.L20
.L26:
	.loc 1 115 14
	ldr	r3, [fp, #-36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 115 7
	sub	r3, r3, #9
	cmp	r3, #23
	addls	pc, pc, r3, asl #2
	b	.L21
.L23:
	b	.L22
	b	.L25
	b	.L21
	b	.L21
	b	.L24
	b	.L21
	b	.L21
	b	.L21
	b	.L21
	b	.L21
	b	.L21
	b	.L21
	b	.L21
	b	.L21
	b	.L21
	b	.L21
	b	.L21
	b	.L21
	b	.L21
	b	.L21
	b	.L21
	b	.L21
	b	.L21
	b	.L22
	.p2align 1
.L25:
	.loc 1 117 24
	ldr	r3, [fp, #-16]
	add	r2, r3, #1
	str	r2, [fp, #-16]
	.loc 1 117 13
	cmp	r3, #0
	beq	.L24
	.loc 1 118 13
	ldr	r3, [fp, #-40]
	ldr	r2, [fp, #-48]
	str	r2, [sp, #8]
	ldr	r2, .L30+12
.LPIC1:
	add	r2, pc, r2
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r3, [fp, #-44]
	ldr	r2, [fp, #4]
	ldr	r1, .L30+16
.LPIC2:
	add	r1, pc, r1
	ldr	r0, [fp, #-32]
	bl	fprintf(PLT)
.L24:
	.loc 1 120 11
	ldr	r3, [fp, #-36]
	add	r3, r3, #1
	str	r3, [fp, #-36]
	.loc 1 121 11
	b	.L20
.L22:
	.loc 1 124 11
	ldr	r3, [fp, #-36]
	add	r3, r3, #1
	str	r3, [fp, #-36]
.L21:
	.loc 1 126 11
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
	.loc 1 127 11
	nop
.L20:
	.loc 1 114 23 discriminator 1
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L26
	.loc 1 130 5
	sub	r2, fp, #28
	sub	r3, fp, #24
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [fp, #-40]
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-36]
	bl	StringBlock(PLT)
	.loc 1 131 8
	ldr	r3, [fp, #-28]
	.loc 1 131 7
	cmp	r3, #0
	beq	.L19
	.loc 1 132 62
	ldr	r2, [fp, #-40]
	.loc 1 132 7
	ldr	r3, [fp, #-24]
	sub	r3, r2, r3
	ldr	r2, [fp, #-28]
	mov	r1, r2
	ldr	r2, [fp, #-48]
	str	r2, [sp, #12]
	ldr	r2, [fp, #-36]
	str	r2, [sp, #8]
	str	r1, [sp, #4]
	str	r3, [sp]
	ldr	r3, [fp, #-44]
	ldr	r2, [fp, #4]
	ldr	r1, .L30+20
.LPIC3:
	add	r1, pc, r1
	ldr	r0, [fp, #-32]
	bl	fprintf(PLT)
.L19:
.LBE2:
	.loc 1 109 9
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L27
	.loc 1 134 10
	mov	r3, #0
	.loc 1 97 1
	ldr	r1, .L30+24
.LPIC5:
	add	r1, pc, r1
	.loc 1 135 1
	ldr	r2, .L30+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L29
	bl	__stack_chk_fail(PLT)
.L29:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L31:
	.align	2
.L30:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC4+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC0-(.LPIC0+8)
	.word	.LC2-(.LPIC1+8)
	.word	.LC1-(.LPIC2+8)
	.word	.LC3-(.LPIC3+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC5+8)
	.cfi_endproc
.LFE2:
	.size	PrintStringBlock, .-PrintStringBlock
	.section	.rodata
	.align	2
.LC4:
	.ascii	"%*s\000"
	.text
	.align	2
	.global	PrintStringBlockA
	.syntax unified
	.arm
	.fpu vfpv3
	.type	PrintStringBlockA, %function
PrintStringBlockA:
.LFB3:
	.loc 1 145 1
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 16
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
	.loc 1 146 3
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #4]
	ldr	r1, .L34
.LPIC6:
	add	r1, pc, r1
	ldr	r0, [fp, #-8]
	bl	fprintf(PLT)
	.loc 1 147 10
	ldr	r3, [fp, #8]
	str	r3, [sp, #4]
	ldr	r3, [fp, #4]
	str	r3, [sp]
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	PrintStringBlock(PLT)
	mov	r3, r0
	.loc 1 151 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L35:
	.align	2
.L34:
	.word	.LC4-(.LPIC6+8)
	.cfi_endproc
.LFE3:
	.size	PrintStringBlockA, .-PrintStringBlockA
.Letext0:
	.file 2 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/bits/alltypes.h"
	.file 3 "../../../include/EApi.h"
	.file 4 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/stdio.h"
	.file 5 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/string.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x2ca
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0xc
	.4byte	.LASF38
	.4byte	.LASF39
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x5
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2b
	.byte	0x18
	.4byte	0x26
	.uleb128 0xb
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
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x1
	.byte	0x2
	.2byte	0x134
	.byte	0x8
	.4byte	0x6b
	.uleb128 0xd
	.ascii	"__x\000"
	.byte	0x2
	.2byte	0x134
	.byte	0x18
	.4byte	0x6b
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0xe
	.4byte	0x6b
	.uleb128 0xf
	.4byte	.LASF5
	.byte	0x2
	.2byte	0x139
	.byte	0x19
	.4byte	0x4e
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	0x77
	.uleb128 0x8
	.4byte	0x8b
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
	.uleb128 0x4
	.4byte	0x72
	.uleb128 0x8
	.4byte	0xc4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x3
	.byte	0x91
	.byte	0x12
	.4byte	0xb1
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x4
	.byte	0x6c
	.byte	0x5
	.4byte	0x39
	.4byte	0xfd
	.uleb128 0x6
	.4byte	0x90
	.uleb128 0x6
	.4byte	0xc9
	.uleb128 0x10
	.byte	0
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x5
	.byte	0x34
	.byte	0x8
	.4byte	0x2d
	.4byte	0x113
	.uleb128 0x6
	.4byte	0xc4
	.byte	0
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x89
	.4byte	0xd5
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17a
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0x8a
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x8b
	.4byte	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x8c
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x8d
	.4byte	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x8e
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x8f
	.4byte	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x59
	.4byte	0xd5
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x231
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0x5a
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x5b
	.4byte	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x5c
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x5d
	.4byte	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x5e
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x5f
	.4byte	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x62
	.byte	0xa
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x63
	.byte	0xa
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x64
	.byte	0xe
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x11
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x6e
	.byte	0x9
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x6f
	.byte	0x9
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x21
	.4byte	0xd5
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c3
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x22
	.4byte	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x23
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x24
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x25
	.4byte	0x2c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x26
	.4byte	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x29
	.byte	0xf
	.4byte	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x2a
	.byte	0xa
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x2b
	.byte	0xa
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x2c
	.byte	0xa
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x4
	.4byte	0x2d
	.uleb128 0x4
	.4byte	0x39
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
	.uleb128 0x21
	.sleb128 17
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
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x8
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
.LASF37:
	.ascii	"GNU C99 11.2.0 -mcpu=cortex-a9 -mfloat-abi=hard -mf"
	.ascii	"pu=vfpv3 -mabi=aapcs-linux -mtls-dialect=gnu -marm "
	.ascii	"-march=armv7-a+mp+sec+vfpv3 -g -O0 -std=gnu99 -fsta"
	.ascii	"ck-protector-strong -fPIE\000"
.LASF4:
	.ascii	"size_t\000"
.LASF38:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux/../StrPrint.c\000"
.LASF14:
	.ascii	"EApiStatus_t\000"
.LASF22:
	.ascii	"cszPostamble\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF27:
	.ascii	"siLenAdj\000"
.LASF35:
	.ascii	"stCurOffset\000"
.LASF5:
	.ascii	"FILE\000"
.LASF18:
	.ascii	"cszStr\000"
.LASF17:
	.ascii	"OutStream\000"
.LASF23:
	.ascii	"PrintStringBlockA\000"
.LASF9:
	.ascii	"unsigned char\000"
.LASF28:
	.ascii	"FirstEntry\000"
.LASF13:
	.ascii	"long unsigned int\000"
.LASF10:
	.ascii	"short unsigned int\000"
.LASF20:
	.ascii	"cszPreamble\000"
.LASF6:
	.ascii	"double\000"
.LASF8:
	.ascii	"short int\000"
.LASF34:
	.ascii	"stTabLen\000"
.LASF33:
	.ascii	"cszLastPos\000"
.LASF16:
	.ascii	"strlen\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF21:
	.ascii	"siLen\000"
.LASF26:
	.ascii	"stOffset\000"
.LASF25:
	.ascii	"stCurStrPos\000"
.LASF36:
	.ascii	"stTabStop\000"
.LASF19:
	.ascii	"stMaxBlockLen\000"
.LASF40:
	.ascii	"_IO_FILE\000"
.LASF2:
	.ascii	"long long int\000"
.LASF15:
	.ascii	"fprintf\000"
.LASF3:
	.ascii	"char\000"
.LASF30:
	.ascii	"StringBlock\000"
.LASF31:
	.ascii	"pstLastPos\000"
.LASF32:
	.ascii	"psiLenAdj\000"
.LASF39:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux\000"
.LASF11:
	.ascii	"uint32_t\000"
.LASF1:
	.ascii	"long int\000"
.LASF7:
	.ascii	"signed char\000"
.LASF29:
	.ascii	"KeepLooping\000"
.LASF24:
	.ascii	"PrintStringBlock\000"
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
