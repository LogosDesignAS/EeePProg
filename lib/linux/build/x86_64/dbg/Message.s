	.file	"Message.c"
	.text
.Ltext0:
	.hidden	Header
	.globl	Header
	.data
	.align 32
	.type	Header, @object
	.size	Header, 387
Header:
	.ascii	"\n+---------------------------------------------------------"
	.ascii	"-------------------+\nI              Copyright (C) Kontron E"
	.ascii	"mbedded Modu"
	.string	"les GmbH 2009              I\n+----------------------------------------------------------------------------+\nSVersion=%u.%u\nLVersion=%u.%u.%u\nManufacturer=PICMG\nMPNPID=PMG\nOFilename=libEApiPMG.so.%u.%u\nDescription=Embedded Application Programming Interface\n"
	.text
	.globl	EApiMain
	.hidden	EApiMain
	.type	EApiMain, @function
EApiMain:
.LFB6:
	.file 1 "Message.c"
	.loc 1 53 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 54 3
	pushq	$0
	pushq	$1
	movl	$977, %r9d
	movl	$5, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1, %esi
	leaq	Header(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$16, %rsp
	.loc 1 60 3
	movl	$0, %edi
	call	exit@PLT
	.cfi_endproc
.LFE6:
	.size	EApiMain, .-EApiMain
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/unistd.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 6 "/usr/include/time.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 9 "/usr/include/stdio.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3c9
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF63
	.byte	0xc
	.long	.LASF64
	.long	.LASF65
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF8
	.byte	0x2
	.byte	0xd1
	.byte	0x17
	.long	0x39
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF2
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x4e
	.uleb128 0x2
	.long	.LASF10
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x4e
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x98
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x7
	.long	0x98
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x8
	.long	.LASF13
	.byte	0x4
	.value	0x21f
	.byte	0xf
	.long	0xb8
	.uleb128 0x6
	.byte	0x8
	.long	0x92
	.uleb128 0x9
	.long	.LASF14
	.byte	0x5
	.byte	0x24
	.byte	0xe
	.long	0x92
	.uleb128 0x9
	.long	.LASF15
	.byte	0x5
	.byte	0x32
	.byte	0xc
	.long	0x40
	.uleb128 0x9
	.long	.LASF16
	.byte	0x5
	.byte	0x37
	.byte	0xc
	.long	0x40
	.uleb128 0x9
	.long	.LASF17
	.byte	0x5
	.byte	0x3b
	.byte	0xc
	.long	0x40
	.uleb128 0x6
	.byte	0x8
	.long	0x9f
	.uleb128 0x7
	.long	0xee
	.uleb128 0xa
	.long	0x92
	.long	0x109
	.uleb128 0xb
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.long	.LASF18
	.byte	0x6
	.byte	0x9f
	.byte	0xe
	.long	0xf9
	.uleb128 0x9
	.long	.LASF19
	.byte	0x6
	.byte	0xa0
	.byte	0xc
	.long	0x40
	.uleb128 0x9
	.long	.LASF20
	.byte	0x6
	.byte	0xa1
	.byte	0x11
	.long	0x4e
	.uleb128 0x9
	.long	.LASF21
	.byte	0x6
	.byte	0xa6
	.byte	0xe
	.long	0xf9
	.uleb128 0x9
	.long	.LASF22
	.byte	0x6
	.byte	0xae
	.byte	0xc
	.long	0x40
	.uleb128 0x9
	.long	.LASF23
	.byte	0x6
	.byte	0xaf
	.byte	0x11
	.long	0x4e
	.uleb128 0xc
	.long	.LASF66
	.byte	0xd8
	.byte	0x7
	.byte	0x31
	.byte	0x8
	.long	0x2d8
	.uleb128 0xd
	.long	.LASF24
	.byte	0x7
	.byte	0x33
	.byte	0x7
	.long	0x40
	.byte	0
	.uleb128 0xd
	.long	.LASF25
	.byte	0x7
	.byte	0x36
	.byte	0x9
	.long	0x92
	.byte	0x8
	.uleb128 0xd
	.long	.LASF26
	.byte	0x7
	.byte	0x37
	.byte	0x9
	.long	0x92
	.byte	0x10
	.uleb128 0xd
	.long	.LASF27
	.byte	0x7
	.byte	0x38
	.byte	0x9
	.long	0x92
	.byte	0x18
	.uleb128 0xd
	.long	.LASF28
	.byte	0x7
	.byte	0x39
	.byte	0x9
	.long	0x92
	.byte	0x20
	.uleb128 0xd
	.long	.LASF29
	.byte	0x7
	.byte	0x3a
	.byte	0x9
	.long	0x92
	.byte	0x28
	.uleb128 0xd
	.long	.LASF30
	.byte	0x7
	.byte	0x3b
	.byte	0x9
	.long	0x92
	.byte	0x30
	.uleb128 0xd
	.long	.LASF31
	.byte	0x7
	.byte	0x3c
	.byte	0x9
	.long	0x92
	.byte	0x38
	.uleb128 0xd
	.long	.LASF32
	.byte	0x7
	.byte	0x3d
	.byte	0x9
	.long	0x92
	.byte	0x40
	.uleb128 0xd
	.long	.LASF33
	.byte	0x7
	.byte	0x40
	.byte	0x9
	.long	0x92
	.byte	0x48
	.uleb128 0xd
	.long	.LASF34
	.byte	0x7
	.byte	0x41
	.byte	0x9
	.long	0x92
	.byte	0x50
	.uleb128 0xd
	.long	.LASF35
	.byte	0x7
	.byte	0x42
	.byte	0x9
	.long	0x92
	.byte	0x58
	.uleb128 0xd
	.long	.LASF36
	.byte	0x7
	.byte	0x44
	.byte	0x16
	.long	0x2f1
	.byte	0x60
	.uleb128 0xd
	.long	.LASF37
	.byte	0x7
	.byte	0x46
	.byte	0x14
	.long	0x2f7
	.byte	0x68
	.uleb128 0xd
	.long	.LASF38
	.byte	0x7
	.byte	0x48
	.byte	0x7
	.long	0x40
	.byte	0x70
	.uleb128 0xd
	.long	.LASF39
	.byte	0x7
	.byte	0x49
	.byte	0x7
	.long	0x40
	.byte	0x74
	.uleb128 0xd
	.long	.LASF40
	.byte	0x7
	.byte	0x4a
	.byte	0xb
	.long	0x78
	.byte	0x78
	.uleb128 0xd
	.long	.LASF41
	.byte	0x7
	.byte	0x4d
	.byte	0x12
	.long	0x63
	.byte	0x80
	.uleb128 0xd
	.long	.LASF42
	.byte	0x7
	.byte	0x4e
	.byte	0xf
	.long	0x6a
	.byte	0x82
	.uleb128 0xd
	.long	.LASF43
	.byte	0x7
	.byte	0x4f
	.byte	0x8
	.long	0x2fd
	.byte	0x83
	.uleb128 0xd
	.long	.LASF44
	.byte	0x7
	.byte	0x51
	.byte	0xf
	.long	0x30d
	.byte	0x88
	.uleb128 0xd
	.long	.LASF45
	.byte	0x7
	.byte	0x59
	.byte	0xd
	.long	0x84
	.byte	0x90
	.uleb128 0xd
	.long	.LASF46
	.byte	0x7
	.byte	0x5b
	.byte	0x17
	.long	0x318
	.byte	0x98
	.uleb128 0xd
	.long	.LASF47
	.byte	0x7
	.byte	0x5c
	.byte	0x19
	.long	0x323
	.byte	0xa0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x7
	.byte	0x5d
	.byte	0x14
	.long	0x2f7
	.byte	0xa8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x7
	.byte	0x5e
	.byte	0x9
	.long	0x90
	.byte	0xb0
	.uleb128 0xd
	.long	.LASF50
	.byte	0x7
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xd
	.long	.LASF51
	.byte	0x7
	.byte	0x60
	.byte	0x7
	.long	0x40
	.byte	0xc0
	.uleb128 0xd
	.long	.LASF52
	.byte	0x7
	.byte	0x62
	.byte	0x8
	.long	0x329
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF53
	.byte	0x8
	.byte	0x7
	.byte	0x19
	.long	0x151
	.uleb128 0xe
	.long	.LASF67
	.byte	0x7
	.byte	0x2b
	.byte	0xe
	.uleb128 0xf
	.long	.LASF54
	.uleb128 0x6
	.byte	0x8
	.long	0x2ec
	.uleb128 0x6
	.byte	0x8
	.long	0x151
	.uleb128 0xa
	.long	0x98
	.long	0x30d
	.uleb128 0xb
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2e4
	.uleb128 0xf
	.long	.LASF55
	.uleb128 0x6
	.byte	0x8
	.long	0x313
	.uleb128 0xf
	.long	.LASF56
	.uleb128 0x6
	.byte	0x8
	.long	0x31e
	.uleb128 0xa
	.long	0x98
	.long	0x339
	.uleb128 0xb
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x9
	.long	.LASF57
	.byte	0x9
	.byte	0x89
	.byte	0xe
	.long	0x345
	.uleb128 0x6
	.byte	0x8
	.long	0x2d8
	.uleb128 0x9
	.long	.LASF58
	.byte	0x9
	.byte	0x8a
	.byte	0xe
	.long	0x345
	.uleb128 0x9
	.long	.LASF59
	.byte	0x9
	.byte	0x8b
	.byte	0xe
	.long	0x345
	.uleb128 0x9
	.long	.LASF60
	.byte	0xa
	.byte	0x1a
	.byte	0xc
	.long	0x40
	.uleb128 0xa
	.long	0xf4
	.long	0x37a
	.uleb128 0x10
	.byte	0
	.uleb128 0x7
	.long	0x36f
	.uleb128 0x9
	.long	.LASF61
	.byte	0xa
	.byte	0x1b
	.byte	0x1a
	.long	0x37a
	.uleb128 0xa
	.long	0x98
	.long	0x39c
	.uleb128 0x11
	.long	0x39
	.value	0x182
	.byte	0
	.uleb128 0x12
	.long	.LASF62
	.byte	0x1
	.byte	0x29
	.byte	0x6
	.long	0x38b
	.uleb128 0x9
	.byte	0x3
	.quad	Header
	.uleb128 0x13
	.long	.LASF68
	.byte	0x1
	.byte	0x34
	.byte	0x6
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0xe
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
	.uleb128 0xe
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
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF15:
	.string	"optind"
.LASF14:
	.string	"optarg"
.LASF66:
	.string	"_IO_FILE"
.LASF60:
	.string	"sys_nerr"
.LASF35:
	.string	"_IO_save_end"
.LASF7:
	.string	"short int"
.LASF8:
	.string	"size_t"
.LASF45:
	.string	"_offset"
.LASF18:
	.string	"__tzname"
.LASF29:
	.string	"_IO_write_ptr"
.LASF24:
	.string	"_flags"
.LASF65:
	.string	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux"
.LASF31:
	.string	"_IO_buf_base"
.LASF13:
	.string	"__environ"
.LASF36:
	.string	"_markers"
.LASF26:
	.string	"_IO_read_end"
.LASF49:
	.string	"_freeres_buf"
.LASF22:
	.string	"daylight"
.LASF62:
	.string	"Header"
.LASF23:
	.string	"timezone"
.LASF59:
	.string	"stderr"
.LASF3:
	.string	"long long int"
.LASF20:
	.string	"__timezone"
.LASF44:
	.string	"_lock"
.LASF19:
	.string	"__daylight"
.LASF2:
	.string	"long int"
.LASF41:
	.string	"_cur_column"
.LASF64:
	.string	"Message.c"
.LASF68:
	.string	"EApiMain"
.LASF28:
	.string	"_IO_write_base"
.LASF40:
	.string	"_old_offset"
.LASF4:
	.string	"unsigned char"
.LASF6:
	.string	"signed char"
.LASF46:
	.string	"_codecvt"
.LASF12:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned int"
.LASF54:
	.string	"_IO_marker"
.LASF43:
	.string	"_shortbuf"
.LASF63:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fvisibility=hidden -fPIC -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF21:
	.string	"tzname"
.LASF52:
	.string	"_unused2"
.LASF16:
	.string	"opterr"
.LASF32:
	.string	"_IO_buf_end"
.LASF11:
	.string	"char"
.LASF47:
	.string	"_wide_data"
.LASF48:
	.string	"_freeres_list"
.LASF50:
	.string	"__pad5"
.LASF5:
	.string	"short unsigned int"
.LASF0:
	.string	"long unsigned int"
.LASF30:
	.string	"_IO_write_end"
.LASF10:
	.string	"__off64_t"
.LASF38:
	.string	"_fileno"
.LASF37:
	.string	"_chain"
.LASF56:
	.string	"_IO_wide_data"
.LASF51:
	.string	"_mode"
.LASF9:
	.string	"__off_t"
.LASF34:
	.string	"_IO_backup_base"
.LASF57:
	.string	"stdin"
.LASF39:
	.string	"_flags2"
.LASF55:
	.string	"_IO_codecvt"
.LASF27:
	.string	"_IO_read_base"
.LASF42:
	.string	"_vtable_offset"
.LASF33:
	.string	"_IO_save_base"
.LASF61:
	.string	"sys_errlist"
.LASF17:
	.string	"optopt"
.LASF53:
	.string	"FILE"
.LASF25:
	.string	"_IO_read_ptr"
.LASF58:
	.string	"stdout"
.LASF67:
	.string	"_IO_lock_t"
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
