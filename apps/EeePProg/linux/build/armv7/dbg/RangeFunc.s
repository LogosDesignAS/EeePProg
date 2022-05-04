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
	.file	"RangeFunc.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	RangeCheckAll
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	RangeCheckAll, %function
RangeCheckAll:
.LFB1:
	.file 1 "/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/linux/../RangeFunc.c"
	.loc 1 37 1
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
	.loc 1 38 18
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-12]
	.loc 1 39 18
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	.loc 1 40 8
	b	.L2
.L16:
	.loc 1 42 21
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #8]
	.loc 1 42 5
	cmp	r3, #3
	addls	pc, pc, r3, asl #2
	b	.L17
.L5:
	b	.L8
	b	.L7
	b	.L6
	b	.L4
	.p2align 1
.L7:
	.loc 1 44 33
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	.loc 1 44 11
	ldr	r2, [fp, #-20]
	cmp	r2, r3
	bcc	.L9
	.loc 1 44 69 discriminator 1
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #4]
	.loc 1 44 12 discriminator 1
	ldr	r2, [fp, #-20]
	cmp	r2, r3
	bls	.L18
.L9:
	.loc 1 45 18
	mvn	r3, #3840
	b	.L11
.L8:
	.loc 1 49 32
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	.loc 1 49 11
	ldr	r2, [fp, #-20]
	cmp	r2, r3
	bcc	.L19
	.loc 1 49 67 discriminator 1
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #4]
	.loc 1 49 12 discriminator 1
	ldr	r2, [fp, #-20]
	cmp	r2, r3
	bhi	.L19
	.loc 1 50 18
	mvn	r3, #3840
	b	.L11
.L6:
	.loc 1 54 31
	ldr	r3, [fp, #-12]
	ldr	r2, [r3]
	.loc 1 54 21
	ldr	r3, [fp, #-20]
	and	r3, r3, r2
	.loc 1 54 11
	cmp	r3, #0
	bne	.L20
	.loc 1 55 18
	mvn	r3, #3840
	b	.L11
.L4:
	.loc 1 59 30
	ldr	r3, [fp, #-12]
	ldr	r2, [r3]
	.loc 1 59 20
	ldr	r3, [fp, #-20]
	and	r3, r3, r2
	.loc 1 59 11
	cmp	r3, #0
	beq	.L21
	.loc 1 60 18
	mvn	r3, #3840
	b	.L11
.L17:
	.loc 1 64 9
	nop
	b	.L12
.L18:
	.loc 1 47 9
	nop
	b	.L12
.L19:
	.loc 1 52 9
	nop
	b	.L12
.L20:
	.loc 1 57 9
	nop
	b	.L12
.L21:
	.loc 1 62 9
	nop
.L12:
	.loc 1 66 14
	ldr	r3, [fp, #-12]
	add	r3, r3, #12
	str	r3, [fp, #-12]
.L2:
	.loc 1 40 19
	ldr	r3, [fp, #-8]
	sub	r2, r3, #1
	str	r2, [fp, #-8]
	.loc 1 40 9
	cmp	r3, #0
	bne	.L16
	.loc 1 68 10
	mov	r3, #0
.L11:
	.loc 1 70 1
	mov	r0, r3
	add	sp, fp, #0
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	fp, [sp], #4
	.cfi_restore 11
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE1:
	.size	RangeCheckAll, .-RangeCheckAll
	.align	2
	.global	RangeCheckAny
	.syntax unified
	.arm
	.fpu vfpv3
	.type	RangeCheckAny, %function
RangeCheckAny:
.LFB2:
	.loc 1 77 1
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
	.loc 1 78 18
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-12]
	.loc 1 79 18
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	.loc 1 80 8
	b	.L23
.L37:
	.loc 1 82 21
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #8]
	.loc 1 82 5
	cmp	r3, #3
	addls	pc, pc, r3, asl #2
	b	.L38
.L26:
	b	.L29
	b	.L28
	b	.L27
	b	.L25
	.p2align 1
.L28:
	.loc 1 84 32
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	.loc 1 84 11
	ldr	r2, [fp, #-20]
	cmp	r2, r3
	bcc	.L39
	.loc 1 84 68 discriminator 1
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #4]
	.loc 1 84 47 discriminator 1
	ldr	r2, [fp, #-20]
	cmp	r2, r3
	bhi	.L39
	.loc 1 85 18
	mov	r3, #0
	b	.L31
.L29:
	.loc 1 89 31
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	.loc 1 89 11
	ldr	r2, [fp, #-20]
	cmp	r2, r3
	bcc	.L33
	.loc 1 89 66 discriminator 1
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #4]
	.loc 1 89 46 discriminator 1
	ldr	r2, [fp, #-20]
	cmp	r2, r3
	bls	.L40
.L33:
	.loc 1 90 18
	mov	r3, #0
	b	.L31
.L27:
	.loc 1 94 30
	ldr	r3, [fp, #-12]
	ldr	r2, [r3]
	.loc 1 94 20
	ldr	r3, [fp, #-20]
	and	r3, r3, r2
	.loc 1 94 11
	cmp	r3, #0
	beq	.L41
	.loc 1 95 18
	mov	r3, #0
	b	.L31
.L25:
	.loc 1 99 31
	ldr	r3, [fp, #-12]
	ldr	r2, [r3]
	.loc 1 99 21
	ldr	r3, [fp, #-20]
	and	r3, r3, r2
	.loc 1 99 11
	cmp	r3, #0
	bne	.L42
	.loc 1 100 18
	mov	r3, #0
	b	.L31
.L38:
	.loc 1 104 9
	nop
	b	.L32
.L39:
	.loc 1 87 9
	nop
	b	.L32
.L40:
	.loc 1 92 9
	nop
	b	.L32
.L41:
	.loc 1 97 9
	nop
	b	.L32
.L42:
	.loc 1 102 9
	nop
.L32:
	.loc 1 106 14
	ldr	r3, [fp, #-12]
	add	r3, r3, #12
	str	r3, [fp, #-12]
.L23:
	.loc 1 80 19
	ldr	r3, [fp, #-8]
	sub	r2, r3, #1
	str	r2, [fp, #-8]
	.loc 1 80 9
	cmp	r3, #0
	bne	.L37
	.loc 1 108 10
	mvn	r3, #3840
.L31:
	.loc 1 110 1
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
	.size	RangeCheckAny, .-RangeCheckAny
.Letext0:
	.file 2 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/bits/alltypes.h"
	.file 3 "../../../include/EApi.h"
	.file 4 "../RangeFunc.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x1af
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0xc
	.4byte	.LASF28
	.4byte	.LASF29
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x2
	.byte	0x2b
	.byte	0x18
	.4byte	0x26
	.uleb128 0x9
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
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x1
	.byte	0x8
	.byte	0x4
	.4byte	.LASF4
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
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x2
	.byte	0x7c
	.byte	0x19
	.4byte	0x26
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x3
	.byte	0x91
	.byte	0x12
	.4byte	0x78
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0xc
	.byte	0x26
	.4byte	0xce
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x27
	.byte	0x10
	.4byte	0x26
	.byte	0
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x28
	.byte	0x10
	.4byte	0x26
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x29
	.byte	0x10
	.4byte	0x26
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x4
	.byte	0x2e
	.byte	0x2
	.4byte	0x9e
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x8
	.byte	0x2f
	.4byte	0xfe
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x30
	.byte	0x12
	.4byte	0x2d
	.byte	0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x31
	.byte	0x12
	.4byte	0xfe
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.4byte	0xce
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x4
	.byte	0x32
	.byte	0x2
	.4byte	0xda
	.uleb128 0x7
	.4byte	0x103
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x1
	.byte	0x49
	.byte	0x1
	.4byte	0x92
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x165
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x4a
	.byte	0x1e
	.4byte	0x10f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x4b
	.byte	0x18
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x4e
	.4byte	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x5
	.4byte	.LASF26
	.byte	0x4f
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x1
	.byte	0x21
	.byte	0x1
	.4byte	0x92
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x22
	.byte	0x18
	.4byte	0x10f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x23
	.byte	0x13
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x26
	.4byte	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x5
	.4byte	.LASF26
	.byte	0x27
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x21
	.sleb128 18
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x9
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
	.uleb128 0xb
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
	.uleb128 0x7a
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
.LASF27:
	.ascii	"GNU C99 11.2.0 -mcpu=cortex-a9 -mfloat-abi=hard -mf"
	.ascii	"pu=vfpv3 -mabi=aapcs-linux -mtls-dialect=gnu -marm "
	.ascii	"-march=armv7-a+mp+sec+vfpv3 -g -O0 -std=gnu99 -fsta"
	.ascii	"ck-protector-strong -fPIE\000"
.LASF25:
	.ascii	"pNumRange\000"
.LASF9:
	.ascii	"size_t\000"
.LASF28:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux/../RangeFunc.c\000"
.LASF24:
	.ascii	"ulValue\000"
.LASF23:
	.ascii	"pRangeDesc\000"
.LASF14:
	.ascii	"uiLowerLimit\000"
.LASF20:
	.ascii	"stRangeCount\000"
.LASF7:
	.ascii	"unsigned char\000"
.LASF16:
	.ascii	"uiType\000"
.LASF12:
	.ascii	"long unsigned int\000"
.LASF8:
	.ascii	"short unsigned int\000"
.LASF18:
	.ascii	"NumberRange_s\000"
.LASF17:
	.ascii	"NumberRange_t\000"
.LASF21:
	.ascii	"pNumberRange\000"
.LASF4:
	.ascii	"double\000"
.LASF13:
	.ascii	"EApiStatus_t\000"
.LASF19:
	.ascii	"NumberRangeDesc_s\000"
.LASF22:
	.ascii	"NumberRangeDesc_t\000"
.LASF29:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF31:
	.ascii	"RangeCheckAll\000"
.LASF2:
	.ascii	"long long int\000"
.LASF3:
	.ascii	"char\000"
.LASF6:
	.ascii	"short int\000"
.LASF30:
	.ascii	"RangeCheckAny\000"
.LASF10:
	.ascii	"uint32_t\000"
.LASF1:
	.ascii	"long int\000"
.LASF5:
	.ascii	"signed char\000"
.LASF26:
	.ascii	"stRangeCnt\000"
.LASF15:
	.ascii	"uiUpperLimit\000"
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
