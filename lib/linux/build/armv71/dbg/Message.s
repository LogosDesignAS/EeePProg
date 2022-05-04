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
	.file	"Message.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.hidden	Header
	.global	Header
	.data
	.align	2
	.type	Header, %object
	.size	Header, 387
Header:
	.ascii	"\012+----------------------------------------------"
	.ascii	"------------------------------+\012I              C"
	.ascii	"opyright (C) Kontron Embedded Modules GmbH 2009    "
	.ascii	"          I\012+-----------------------------------"
	.ascii	"-----------------------------------------+\012SVers"
	.ascii	"ion=%u.%u\012LVersion=%u.%u.%u\012Manufacturer=PICM"
	.ascii	"G\012MPNPID=PMG\012OFilename=libEApiPMG.so.%u.%u\012"
	.ascii	"Description=Embedded Application Programming Interf"
	.ascii	"ace\012\000"
	.text
	.align	2
	.global	EApiMain
	.hidden	EApiMain
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiMain, %function
EApiMain:
.LFB1:
	.file 1 "Message.c"
	.loc 1 53 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #16
	.loc 1 54 3
	mov	r3, #0
	str	r3, [sp, #12]
	mov	r3, #1
	str	r3, [sp, #8]
	movw	r3, #991
	str	r3, [sp, #4]
	mov	r3, #5
	str	r3, [sp]
	mov	r3, #0
	mov	r2, #0
	mov	r1, #1
	ldr	r0, .L2
.LPIC0:
	add	r0, pc, r0
	bl	printf(PLT)
	.loc 1 60 3
	mov	r0, #0
	bl	exit(PLT)
.L3:
	.align	2
.L2:
	.word	Header-(.LPIC0+8)
	.cfi_endproc
.LFE1:
	.size	EApiMain, .-EApiMain
.Letext0:
	.file 2 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/stdlib.h"
	.file 3 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/stdio.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xe0
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x1d
	.4byte	.LASF14
	.4byte	.LASF15
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
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
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x5
	.4byte	0x65
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6c
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x1
	.byte	0x8
	.byte	0x4
	.4byte	.LASF10
	.uleb128 0x7
	.4byte	0x65
	.4byte	0x96
	.uleb128 0x8
	.4byte	0x26
	.2byte	0x182
	.byte	0
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x1
	.byte	0x29
	.byte	0x6
	.4byte	0x85
	.uleb128 0x5
	.byte	0x3
	.4byte	Header
	.uleb128 0xa
	.4byte	.LASF11
	.byte	0x2
	.byte	0x2e
	.byte	0x10
	.4byte	0xba
	.uleb128 0x2
	.4byte	0x2d
	.byte	0
	.uleb128 0xb
	.4byte	.LASF12
	.byte	0x3
	.byte	0x6b
	.byte	0x5
	.4byte	0x2d
	.4byte	0xd1
	.uleb128 0x2
	.4byte	0x71
	.uleb128 0xc
	.byte	0
	.uleb128 0xd
	.4byte	.LASF17
	.byte	0x1
	.byte	0x34
	.byte	0x6
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0
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
.LASF2:
	.ascii	"long long int\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF17:
	.ascii	"EApiMain\000"
.LASF16:
	.ascii	"Header\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF15:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF14:
	.ascii	"Message.c\000"
.LASF5:
	.ascii	"unsigned char\000"
.LASF8:
	.ascii	"char\000"
.LASF1:
	.ascii	"long int\000"
.LASF10:
	.ascii	"double\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF12:
	.ascii	"printf\000"
.LASF11:
	.ascii	"exit\000"
.LASF4:
	.ascii	"short int\000"
.LASF13:
	.ascii	"GNU C17 11.2.0 -mcpu=cortex-a9 -mfloat-abi=hard -mf"
	.ascii	"pu=vfpv3 -mabi=aapcs-linux -mtls-dialect=gnu -marm "
	.ascii	"-march=armv7-a+mp+sec+vfpv3 -g -fstack-protector-st"
	.ascii	"rong -fvisibility=hidden -fPIC\000"
.LASF3:
	.ascii	"signed char\000"
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
