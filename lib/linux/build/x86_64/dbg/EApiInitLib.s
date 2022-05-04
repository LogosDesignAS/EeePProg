	.file	"EApiInitLib.c"
	.text
.Ltext0:
	.hidden	OutputStream
	.globl	OutputStream
	.bss
	.align 8
	.type	OutputStream, @object
	.size	OutputStream, 8
OutputStream:
	.zero	8
	.text
	.globl	DebugMsg
	.hidden	DebugMsg
	.type	DebugMsg, @function
DebugMsg:
.LFB6:
	.file 1 "/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EApiInitLib.c"
	.loc 1 41 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -216(%rbp)
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L2
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L2:
	.loc 1 41 1
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	.loc 1 43 3
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	.loc 1 44 18
	movq	OutputStream(%rip), %rax
	.loc 1 44 5
	testq	%rax, %rax
	je	.L3
	.loc 1 45 5
	movq	OutputStream(%rip), %rax
	leaq	-208(%rbp), %rdx
	movq	-216(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	vfprintf@PLT
	jmp	.L4
.L3:
	.loc 1 47 5
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	-208(%rbp), %rdx
	movq	-216(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	vfprintf@PLT
.L4:
	.loc 1 49 3
	movq	OutputStream(%rip), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	.loc 1 51 1
	nop
	movq	-184(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	DebugMsg, .-DebugMsg
	.section	.rodata
.LC0:
	.string	"w"
.LC1:
	.string	"EApi.log"
	.align 8
.LC2:
	.string	"#\n# Embedded API EApi\n# Version %u.%u\n# Lib Version %u.%u.%u\n#\n"
	.text
	.globl	EApiInitLib
	.hidden	EApiInitLib
	.type	EApiInitLib, @function
EApiInitLib:
.LFB7:
	.loc 1 61 14
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 62 18
	movq	OutputStream(%rip), %rax
	.loc 1 62 5
	testq	%rax, %rax
	jne	.L7
	.loc 1 64 18
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	call	fopen@PLT
	.loc 1 64 17
	movq	%rax, OutputStream(%rip)
.L7:
	.loc 1 69 3
	call	OpenEepromFiles@PLT
	.loc 1 70 3
	call	OpenI2CEepromFiles@PLT
	.loc 1 71 5
	movl	$977, %r9d
	movl	$5, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	DebugMsg
	.loc 1 79 10
	movl	$0, %eax
	.loc 1 80 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	EApiInitLib, .-EApiInitLib
	.section	.rodata
	.align 8
.LC3:
	.string	"#\n# Embedded API EApi\n# Exit \n#\n"
	.text
	.globl	EApiUninitLib
	.hidden	EApiUninitLib
	.type	EApiUninitLib, @function
EApiUninitLib:
.LFB8:
	.loc 1 85 16
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 86 5
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	DebugMsg
	.loc 1 91 3
	call	CloseEepromFiles@PLT
	.loc 1 92 3
	call	CloseI2CEepromFiles@PLT
	.loc 1 93 18
	movq	OutputStream(%rip), %rax
	.loc 1 93 5
	testq	%rax, %rax
	je	.L10
	.loc 1 93 38 discriminator 1
	movq	OutputStream(%rip), %rdx
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	.loc 1 93 24 discriminator 1
	cmpq	%rax, %rdx
	je	.L10
	.loc 1 93 60 discriminator 2
	movq	OutputStream(%rip), %rdx
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	.loc 1 93 46 discriminator 2
	cmpq	%rax, %rdx
	je	.L10
	.loc 1 94 5
	movq	OutputStream(%rip), %rax
	movq	%rax, %rdi
	call	fclose@PLT
.L10:
	.loc 1 96 15
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, OutputStream(%rip)
	.loc 1 97 10
	movl	$0, %eax
	.loc 1 98 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	EApiUninitLib, .-EApiUninitLib
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 5 "/usr/include/unistd.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 7 "/usr/include/time.h"
	.file 8 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h"
	.file 9 "<built-in>"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 12 "/usr/include/stdio.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x4b4
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF75
	.byte	0xc
	.long	.LASF76
	.long	.LASF77
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
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
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x26
	.byte	0x17
	.long	0x5c
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.long	.LASF10
	.byte	0x3
	.byte	0x2a
	.byte	0x16
	.long	0x47
	.uleb128 0x2
	.long	.LASF11
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x4e
	.uleb128 0x2
	.long	.LASF12
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x4e
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0xb0
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x7
	.long	0xb0
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF14
	.uleb128 0x2
	.long	.LASF15
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.long	0x71
	.uleb128 0x2
	.long	.LASF16
	.byte	0x4
	.byte	0x1a
	.byte	0x14
	.long	0x84
	.uleb128 0x8
	.long	.LASF17
	.byte	0x5
	.value	0x21f
	.byte	0xf
	.long	0xe8
	.uleb128 0x6
	.byte	0x8
	.long	0xaa
	.uleb128 0x9
	.long	.LASF18
	.byte	0x6
	.byte	0x24
	.byte	0xe
	.long	0xaa
	.uleb128 0x9
	.long	.LASF19
	.byte	0x6
	.byte	0x32
	.byte	0xc
	.long	0x40
	.uleb128 0x9
	.long	.LASF20
	.byte	0x6
	.byte	0x37
	.byte	0xc
	.long	0x40
	.uleb128 0x9
	.long	.LASF21
	.byte	0x6
	.byte	0x3b
	.byte	0xc
	.long	0x40
	.uleb128 0x6
	.byte	0x8
	.long	0xb7
	.uleb128 0x7
	.long	0x11e
	.uleb128 0xa
	.long	0xaa
	.long	0x139
	.uleb128 0xb
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.long	.LASF22
	.byte	0x7
	.byte	0x9f
	.byte	0xe
	.long	0x129
	.uleb128 0x9
	.long	.LASF23
	.byte	0x7
	.byte	0xa0
	.byte	0xc
	.long	0x40
	.uleb128 0x9
	.long	.LASF24
	.byte	0x7
	.byte	0xa1
	.byte	0x11
	.long	0x4e
	.uleb128 0x9
	.long	.LASF25
	.byte	0x7
	.byte	0xa6
	.byte	0xe
	.long	0x129
	.uleb128 0x9
	.long	.LASF26
	.byte	0x7
	.byte	0xae
	.byte	0xc
	.long	0x40
	.uleb128 0x9
	.long	.LASF27
	.byte	0x7
	.byte	0xaf
	.byte	0x11
	.long	0x4e
	.uleb128 0x2
	.long	.LASF28
	.byte	0x8
	.byte	0x28
	.byte	0x1b
	.long	0x18d
	.uleb128 0xc
	.long	.LASF78
	.long	0x196
	.uleb128 0xa
	.long	0x1a6
	.long	0x1a6
	.uleb128 0xb
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	.LASF79
	.byte	0x18
	.byte	0x9
	.byte	0
	.long	0x1e3
	.uleb128 0xe
	.long	.LASF29
	.byte	0x9
	.byte	0
	.long	0x47
	.byte	0
	.uleb128 0xe
	.long	.LASF30
	.byte	0x9
	.byte	0
	.long	0x47
	.byte	0x4
	.uleb128 0xe
	.long	.LASF31
	.byte	0x9
	.byte	0
	.long	0xa8
	.byte	0x8
	.uleb128 0xe
	.long	.LASF32
	.byte	0x9
	.byte	0
	.long	0xa8
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.long	.LASF33
	.byte	0x8
	.byte	0x63
	.byte	0x18
	.long	0x181
	.uleb128 0xf
	.long	.LASF80
	.byte	0xd8
	.byte	0xa
	.byte	0x31
	.byte	0x8
	.long	0x376
	.uleb128 0x10
	.long	.LASF34
	.byte	0xa
	.byte	0x33
	.byte	0x7
	.long	0x40
	.byte	0
	.uleb128 0x10
	.long	.LASF35
	.byte	0xa
	.byte	0x36
	.byte	0x9
	.long	0xaa
	.byte	0x8
	.uleb128 0x10
	.long	.LASF36
	.byte	0xa
	.byte	0x37
	.byte	0x9
	.long	0xaa
	.byte	0x10
	.uleb128 0x10
	.long	.LASF37
	.byte	0xa
	.byte	0x38
	.byte	0x9
	.long	0xaa
	.byte	0x18
	.uleb128 0x10
	.long	.LASF38
	.byte	0xa
	.byte	0x39
	.byte	0x9
	.long	0xaa
	.byte	0x20
	.uleb128 0x10
	.long	.LASF39
	.byte	0xa
	.byte	0x3a
	.byte	0x9
	.long	0xaa
	.byte	0x28
	.uleb128 0x10
	.long	.LASF40
	.byte	0xa
	.byte	0x3b
	.byte	0x9
	.long	0xaa
	.byte	0x30
	.uleb128 0x10
	.long	.LASF41
	.byte	0xa
	.byte	0x3c
	.byte	0x9
	.long	0xaa
	.byte	0x38
	.uleb128 0x10
	.long	.LASF42
	.byte	0xa
	.byte	0x3d
	.byte	0x9
	.long	0xaa
	.byte	0x40
	.uleb128 0x10
	.long	.LASF43
	.byte	0xa
	.byte	0x40
	.byte	0x9
	.long	0xaa
	.byte	0x48
	.uleb128 0x10
	.long	.LASF44
	.byte	0xa
	.byte	0x41
	.byte	0x9
	.long	0xaa
	.byte	0x50
	.uleb128 0x10
	.long	.LASF45
	.byte	0xa
	.byte	0x42
	.byte	0x9
	.long	0xaa
	.byte	0x58
	.uleb128 0x10
	.long	.LASF46
	.byte	0xa
	.byte	0x44
	.byte	0x16
	.long	0x38f
	.byte	0x60
	.uleb128 0x10
	.long	.LASF47
	.byte	0xa
	.byte	0x46
	.byte	0x14
	.long	0x395
	.byte	0x68
	.uleb128 0x10
	.long	.LASF48
	.byte	0xa
	.byte	0x48
	.byte	0x7
	.long	0x40
	.byte	0x70
	.uleb128 0x10
	.long	.LASF49
	.byte	0xa
	.byte	0x49
	.byte	0x7
	.long	0x40
	.byte	0x74
	.uleb128 0x10
	.long	.LASF50
	.byte	0xa
	.byte	0x4a
	.byte	0xb
	.long	0x90
	.byte	0x78
	.uleb128 0x10
	.long	.LASF51
	.byte	0xa
	.byte	0x4d
	.byte	0x12
	.long	0x63
	.byte	0x80
	.uleb128 0x10
	.long	.LASF52
	.byte	0xa
	.byte	0x4e
	.byte	0xf
	.long	0x6a
	.byte	0x82
	.uleb128 0x10
	.long	.LASF53
	.byte	0xa
	.byte	0x4f
	.byte	0x8
	.long	0x39b
	.byte	0x83
	.uleb128 0x10
	.long	.LASF54
	.byte	0xa
	.byte	0x51
	.byte	0xf
	.long	0x3ab
	.byte	0x88
	.uleb128 0x10
	.long	.LASF55
	.byte	0xa
	.byte	0x59
	.byte	0xd
	.long	0x9c
	.byte	0x90
	.uleb128 0x10
	.long	.LASF56
	.byte	0xa
	.byte	0x5b
	.byte	0x17
	.long	0x3b6
	.byte	0x98
	.uleb128 0x10
	.long	.LASF57
	.byte	0xa
	.byte	0x5c
	.byte	0x19
	.long	0x3c1
	.byte	0xa0
	.uleb128 0x10
	.long	.LASF58
	.byte	0xa
	.byte	0x5d
	.byte	0x14
	.long	0x395
	.byte	0xa8
	.uleb128 0x10
	.long	.LASF59
	.byte	0xa
	.byte	0x5e
	.byte	0x9
	.long	0xa8
	.byte	0xb0
	.uleb128 0x10
	.long	.LASF60
	.byte	0xa
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0x10
	.long	.LASF61
	.byte	0xa
	.byte	0x60
	.byte	0x7
	.long	0x40
	.byte	0xc0
	.uleb128 0x10
	.long	.LASF62
	.byte	0xa
	.byte	0x62
	.byte	0x8
	.long	0x3c7
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF63
	.byte	0xb
	.byte	0x7
	.byte	0x19
	.long	0x1ef
	.uleb128 0x11
	.long	.LASF81
	.byte	0xa
	.byte	0x2b
	.byte	0xe
	.uleb128 0x12
	.long	.LASF64
	.uleb128 0x6
	.byte	0x8
	.long	0x38a
	.uleb128 0x6
	.byte	0x8
	.long	0x1ef
	.uleb128 0xa
	.long	0xb0
	.long	0x3ab
	.uleb128 0xb
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x382
	.uleb128 0x12
	.long	.LASF65
	.uleb128 0x6
	.byte	0x8
	.long	0x3b1
	.uleb128 0x12
	.long	.LASF66
	.uleb128 0x6
	.byte	0x8
	.long	0x3bc
	.uleb128 0xa
	.long	0xb0
	.long	0x3d7
	.uleb128 0xb
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x9
	.long	.LASF67
	.byte	0xc
	.byte	0x89
	.byte	0xe
	.long	0x3e3
	.uleb128 0x6
	.byte	0x8
	.long	0x376
	.uleb128 0x9
	.long	.LASF68
	.byte	0xc
	.byte	0x8a
	.byte	0xe
	.long	0x3e3
	.uleb128 0x9
	.long	.LASF69
	.byte	0xc
	.byte	0x8b
	.byte	0xe
	.long	0x3e3
	.uleb128 0x9
	.long	.LASF70
	.byte	0xd
	.byte	0x1a
	.byte	0xc
	.long	0x40
	.uleb128 0xa
	.long	0x124
	.long	0x418
	.uleb128 0x13
	.byte	0
	.uleb128 0x7
	.long	0x40d
	.uleb128 0x9
	.long	.LASF71
	.byte	0xd
	.byte	0x1b
	.byte	0x1a
	.long	0x418
	.uleb128 0x14
	.long	.LASF72
	.byte	0x1
	.byte	0x26
	.byte	0x7
	.long	0x3e3
	.uleb128 0x9
	.byte	0x3
	.quad	OutputStream
	.uleb128 0x15
	.long	.LASF73
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.long	0xcf
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.long	.LASF74
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.long	0xcf
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.long	.LASF82
	.byte	0x1
	.byte	0x28
	.byte	0xe
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.string	"fmt"
	.byte	0x1
	.byte	0x28
	.byte	0x2e
	.long	0x124
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x18
	.uleb128 0x19
	.string	"arg"
	.byte	0x1
	.byte	0x2a
	.byte	0xb
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
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
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x16
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
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
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
.LASF19:
	.string	"optind"
.LASF18:
	.string	"optarg"
.LASF80:
	.string	"_IO_FILE"
.LASF74:
	.string	"EApiInitLib"
.LASF70:
	.string	"sys_nerr"
.LASF45:
	.string	"_IO_save_end"
.LASF9:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF55:
	.string	"_offset"
.LASF22:
	.string	"__tzname"
.LASF39:
	.string	"_IO_write_ptr"
.LASF34:
	.string	"_flags"
.LASF10:
	.string	"__uint32_t"
.LASF77:
	.string	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux"
.LASF41:
	.string	"_IO_buf_base"
.LASF33:
	.string	"va_list"
.LASF17:
	.string	"__environ"
.LASF46:
	.string	"_markers"
.LASF36:
	.string	"_IO_read_end"
.LASF59:
	.string	"_freeres_buf"
.LASF26:
	.string	"daylight"
.LASF15:
	.string	"uint8_t"
.LASF27:
	.string	"timezone"
.LASF78:
	.string	"__builtin_va_list"
.LASF69:
	.string	"stderr"
.LASF3:
	.string	"long long int"
.LASF76:
	.string	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EApiInitLib.c"
.LASF24:
	.string	"__timezone"
.LASF54:
	.string	"_lock"
.LASF23:
	.string	"__daylight"
.LASF2:
	.string	"long int"
.LASF30:
	.string	"fp_offset"
.LASF51:
	.string	"_cur_column"
.LASF8:
	.string	"__uint8_t"
.LASF29:
	.string	"gp_offset"
.LASF38:
	.string	"_IO_write_base"
.LASF50:
	.string	"_old_offset"
.LASF4:
	.string	"unsigned char"
.LASF6:
	.string	"signed char"
.LASF56:
	.string	"_codecvt"
.LASF14:
	.string	"long long unsigned int"
.LASF16:
	.string	"uint32_t"
.LASF1:
	.string	"unsigned int"
.LASF64:
	.string	"_IO_marker"
.LASF53:
	.string	"_shortbuf"
.LASF75:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fvisibility=hidden -fPIC -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF25:
	.string	"tzname"
.LASF82:
	.string	"DebugMsg"
.LASF20:
	.string	"opterr"
.LASF42:
	.string	"_IO_buf_end"
.LASF32:
	.string	"reg_save_area"
.LASF13:
	.string	"char"
.LASF57:
	.string	"_wide_data"
.LASF58:
	.string	"_freeres_list"
.LASF62:
	.string	"_unused2"
.LASF60:
	.string	"__pad5"
.LASF73:
	.string	"EApiUninitLib"
.LASF5:
	.string	"short unsigned int"
.LASF72:
	.string	"OutputStream"
.LASF0:
	.string	"long unsigned int"
.LASF79:
	.string	"__va_list_tag"
.LASF40:
	.string	"_IO_write_end"
.LASF12:
	.string	"__off64_t"
.LASF31:
	.string	"overflow_arg_area"
.LASF48:
	.string	"_fileno"
.LASF47:
	.string	"_chain"
.LASF66:
	.string	"_IO_wide_data"
.LASF61:
	.string	"_mode"
.LASF11:
	.string	"__off_t"
.LASF44:
	.string	"_IO_backup_base"
.LASF67:
	.string	"stdin"
.LASF49:
	.string	"_flags2"
.LASF65:
	.string	"_IO_codecvt"
.LASF37:
	.string	"_IO_read_base"
.LASF28:
	.string	"__gnuc_va_list"
.LASF52:
	.string	"_vtable_offset"
.LASF43:
	.string	"_IO_save_base"
.LASF71:
	.string	"sys_errlist"
.LASF21:
	.string	"optopt"
.LASF63:
	.string	"FILE"
.LASF35:
	.string	"_IO_read_ptr"
.LASF68:
	.string	"stdout"
.LASF81:
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
