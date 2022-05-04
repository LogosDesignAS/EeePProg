	.file	"DbgChk.c"
	.text
.Ltext0:
	.hidden	ErrorLookupA
	.globl	ErrorLookupA
	.section	.rodata
.LC0:
	.string	"NOT_INITIALIZED"
.LC1:
	.string	"INITIALIZED"
.LC2:
	.string	"ALLOC_ERROR"
.LC3:
	.string	"DRIVER_TIMEOUT"
.LC4:
	.string	"INVALID_PARAMETER"
.LC5:
	.string	"INVALID_BLOCK_ALIGNMENT"
.LC6:
	.string	"INVALID_BLOCK_LENGTH"
.LC7:
	.string	"INVALID_DIRECTION"
.LC8:
	.string	"INVALID_BITMASK"
.LC9:
	.string	"RUNNING"
.LC10:
	.string	"UNSUPPORTED"
.LC11:
	.string	"NOT_FOUND"
.LC12:
	.string	"TIMEOUT"
.LC13:
	.string	"BUSY_COLLISION"
.LC14:
	.string	"READ_ERROR"
.LC15:
	.string	"WRITE_ERROR"
.LC16:
	.string	"MORE_DATA"
.LC17:
	.string	"ERROR"
.LC18:
	.string	"SUCCESS"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ErrorLookupA, @object
	.size	ErrorLookupA, 304
ErrorLookupA:
	.long	-1
	.zero	4
	.quad	.LC0
	.long	-2
	.zero	4
	.quad	.LC1
	.long	-3
	.zero	4
	.quad	.LC2
	.long	-4
	.zero	4
	.quad	.LC3
	.long	-257
	.zero	4
	.quad	.LC4
	.long	-258
	.zero	4
	.quad	.LC5
	.long	-259
	.zero	4
	.quad	.LC6
	.long	-260
	.zero	4
	.quad	.LC7
	.long	-261
	.zero	4
	.quad	.LC8
	.long	-262
	.zero	4
	.quad	.LC9
	.long	-769
	.zero	4
	.quad	.LC10
	.long	-1025
	.zero	4
	.quad	.LC11
	.long	-1026
	.zero	4
	.quad	.LC12
	.long	-1027
	.zero	4
	.quad	.LC13
	.long	-1281
	.zero	4
	.quad	.LC14
	.long	-1282
	.zero	4
	.quad	.LC15
	.long	-1537
	.zero	4
	.quad	.LC16
	.long	-3841
	.zero	4
	.quad	.LC17
	.long	0
	.zero	4
	.quad	.LC18
	.text
	.globl	EApiGetErrorStringA
	.hidden	EApiGetErrorStringA
	.type	EApiGetErrorStringA, @function
EApiGetErrorStringA:
.LFB6:
	.file 1 "/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../DbgChk.c"
	.loc 1 72 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	.loc 1 78 13
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	.loc 1 79 8
	movl	$19, -12(%rbp)
	.loc 1 80 19
	leaq	ErrorLookupA(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 1 79 3
	jmp	.L2
.L5:
	.loc 1 85 20
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 85 7
	cmpl	%eax, -28(%rbp)
	jne	.L3
	.loc 1 86 30
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 86 17
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 1 87 14
	movl	$0, %eax
	jmp	.L4
.L3:
	.loc 1 81 23
	addq	$16, -8(%rbp)
.L2:
	.loc 1 81 8 discriminator 1
	movl	-12(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -12(%rbp)
	.loc 1 79 3 discriminator 1
	testl	%eax, %eax
	jne	.L5
	.loc 1 90 10
	movl	$-3841, %eax
.L4:
	.loc 1 91 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	EApiGetErrorStringA, .-EApiGetErrorStringA
	.globl	GetLastOccurance
	.hidden	GetLastOccurance
	.type	GetLastOccurance, @function
GetLastOccurance:
.LFB7:
	.loc 1 96 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	.loc 1 97 14
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 1 98 8
	jmp	.L7
.L10:
	.loc 1 99 23
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	.loc 1 99 12
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 1 99 5
	cmpl	$47, %eax
	je	.L8
	cmpl	$92, %eax
	jne	.L12
.L8:
	.loc 1 102 16
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.L12:
	.loc 1 104 9
	nop
.L7:
	.loc 1 98 9
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 98 8
	testb	%al, %al
	jne	.L10
	.loc 1 107 10
	movq	-8(%rbp), %rax
	.loc 1 108 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	GetLastOccurance, .-GetLastOccurance
	.hidden	cszLogFormat
	.globl	cszLogFormat
	.section	.rodata
	.align 16
	.type	cszLogFormat, @object
	.size	cszLogFormat, 25
cszLogFormat:
	.string	"%c%04i %-15.15s %-30s | "
.LC19:
	.string	"%-25s | "
	.text
	.globl	siFormattedMessage_M2
	.hidden	siFormattedMessage_M2
	.type	siFormattedMessage_M2, @function
siFormattedMessage_M2:
.LFB8:
	.loc 1 122 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movq	%rsi, -240(%rbp)
	movq	%rdx, -248(%rbp)
	movl	%ecx, -232(%rbp)
	movq	%r8, -256(%rbp)
	movq	%r9, -264(%rbp)
	testb	%al, %al
	je	.L14
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L14:
	movl	%edi, %eax
	movb	%al, -228(%rbp)
	.loc 1 122 1
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	.loc 1 126 3
	movl	$48, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	.loc 1 128 9
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	GetLastOccurance
	movq	%rax, %rsi
	movsbl	-228(%rbp), %edx
	movq	OutputStream@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-248(%rbp), %rdi
	movl	-232(%rbp), %ecx
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	cszLogFormat(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	%eax, -212(%rbp)
	.loc 1 136 3
	movq	OutputStream@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-256(%rbp), %rdx
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 137 10
	movq	OutputStream@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	-208(%rbp), %rdx
	movq	-264(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	vfprintf@PLT
	.loc 1 137 7
	addl	%eax, -212(%rbp)
	.loc 1 139 9
	movl	-212(%rbp), %eax
	.loc 1 140 1
	movq	-184(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L16
	call	__stack_chk_fail@PLT
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	siFormattedMessage_M2, .-siFormattedMessage_M2
	.section	.rodata
.LC20:
	.string	"               0x%08X | "
	.text
	.globl	siFormattedMessage_SC
	.hidden	siFormattedMessage_SC
	.type	siFormattedMessage_SC, @function
siFormattedMessage_SC:
.LFB9:
	.loc 1 154 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movq	%rsi, -240(%rbp)
	movq	%rdx, -248(%rbp)
	movl	%ecx, -232(%rbp)
	movl	%r8d, -252(%rbp)
	movq	%r9, -264(%rbp)
	testb	%al, %al
	je	.L18
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L18:
	movl	%edi, %eax
	movb	%al, -228(%rbp)
	.loc 1 154 1
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	.loc 1 158 3
	movl	$48, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	.loc 1 159 3
	movl	-252(%rbp), %edx
	leaq	-216(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EApiGetErrorStringA
	.loc 1 160 9
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	GetLastOccurance
	movq	%rax, %rsi
	movsbl	-228(%rbp), %edx
	movq	OutputStream@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-248(%rbp), %rdi
	movl	-232(%rbp), %ecx
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	cszLogFormat(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	%eax, -220(%rbp)
	.loc 1 168 18
	movq	-216(%rbp), %rax
	.loc 1 168 5
	testq	%rax, %rax
	jne	.L19
	.loc 1 169 5
	movq	OutputStream@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	-252(%rbp), %edx
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L20
.L19:
	.loc 1 171 5
	movq	-216(%rbp), %rdx
	movq	OutputStream@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L20:
	.loc 1 173 10
	movq	OutputStream@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	-208(%rbp), %rdx
	movq	-264(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	vfprintf@PLT
	.loc 1 173 7
	addl	%eax, -220(%rbp)
	.loc 1 175 9
	movl	-220(%rbp), %eax
	.loc 1 176 1
	movq	-184(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L22
	call	__stack_chk_fail@PLT
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	siFormattedMessage_SC, .-siFormattedMessage_SC
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
	.file 12 "../../include/EApi.h"
	.file 13 "/usr/include/stdio.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x6c1
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF95
	.byte	0xc
	.long	.LASF96
	.long	.LASF97
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
	.byte	0x2a
	.byte	0x16
	.long	0x47
	.uleb128 0x2
	.long	.LASF10
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x4e
	.uleb128 0x2
	.long	.LASF11
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x4e
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0xa4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x7
	.long	0xa4
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x2
	.long	.LASF14
	.byte	0x4
	.byte	0x1a
	.byte	0x14
	.long	0x78
	.uleb128 0x8
	.long	.LASF15
	.byte	0x5
	.value	0x21f
	.byte	0xf
	.long	0xd0
	.uleb128 0x6
	.byte	0x8
	.long	0x9e
	.uleb128 0x9
	.long	.LASF16
	.byte	0x6
	.byte	0x24
	.byte	0xe
	.long	0x9e
	.uleb128 0x9
	.long	.LASF17
	.byte	0x6
	.byte	0x32
	.byte	0xc
	.long	0x40
	.uleb128 0x9
	.long	.LASF18
	.byte	0x6
	.byte	0x37
	.byte	0xc
	.long	0x40
	.uleb128 0x9
	.long	.LASF19
	.byte	0x6
	.byte	0x3b
	.byte	0xc
	.long	0x40
	.uleb128 0x6
	.byte	0x8
	.long	0xab
	.uleb128 0x7
	.long	0x106
	.uleb128 0xa
	.long	0x9e
	.long	0x121
	.uleb128 0xb
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.long	.LASF20
	.byte	0x7
	.byte	0x9f
	.byte	0xe
	.long	0x111
	.uleb128 0x9
	.long	.LASF21
	.byte	0x7
	.byte	0xa0
	.byte	0xc
	.long	0x40
	.uleb128 0x9
	.long	.LASF22
	.byte	0x7
	.byte	0xa1
	.byte	0x11
	.long	0x4e
	.uleb128 0x9
	.long	.LASF23
	.byte	0x7
	.byte	0xa6
	.byte	0xe
	.long	0x111
	.uleb128 0x9
	.long	.LASF24
	.byte	0x7
	.byte	0xae
	.byte	0xc
	.long	0x40
	.uleb128 0x9
	.long	.LASF25
	.byte	0x7
	.byte	0xaf
	.byte	0x11
	.long	0x4e
	.uleb128 0x2
	.long	.LASF26
	.byte	0x8
	.byte	0x28
	.byte	0x1b
	.long	0x175
	.uleb128 0xc
	.long	.LASF98
	.long	0x17e
	.uleb128 0xa
	.long	0x18e
	.long	0x18e
	.uleb128 0xb
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	.LASF99
	.byte	0x18
	.byte	0x9
	.byte	0
	.long	0x1cb
	.uleb128 0xe
	.long	.LASF27
	.byte	0x9
	.byte	0
	.long	0x47
	.byte	0
	.uleb128 0xe
	.long	.LASF28
	.byte	0x9
	.byte	0
	.long	0x47
	.byte	0x4
	.uleb128 0xe
	.long	.LASF29
	.byte	0x9
	.byte	0
	.long	0x9c
	.byte	0x8
	.uleb128 0xe
	.long	.LASF30
	.byte	0x9
	.byte	0
	.long	0x9c
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.long	.LASF31
	.byte	0x8
	.byte	0x63
	.byte	0x18
	.long	0x169
	.uleb128 0xf
	.long	.LASF71
	.byte	0xd8
	.byte	0xa
	.byte	0x31
	.byte	0x8
	.long	0x35e
	.uleb128 0x10
	.long	.LASF32
	.byte	0xa
	.byte	0x33
	.byte	0x7
	.long	0x40
	.byte	0
	.uleb128 0x10
	.long	.LASF33
	.byte	0xa
	.byte	0x36
	.byte	0x9
	.long	0x9e
	.byte	0x8
	.uleb128 0x10
	.long	.LASF34
	.byte	0xa
	.byte	0x37
	.byte	0x9
	.long	0x9e
	.byte	0x10
	.uleb128 0x10
	.long	.LASF35
	.byte	0xa
	.byte	0x38
	.byte	0x9
	.long	0x9e
	.byte	0x18
	.uleb128 0x10
	.long	.LASF36
	.byte	0xa
	.byte	0x39
	.byte	0x9
	.long	0x9e
	.byte	0x20
	.uleb128 0x10
	.long	.LASF37
	.byte	0xa
	.byte	0x3a
	.byte	0x9
	.long	0x9e
	.byte	0x28
	.uleb128 0x10
	.long	.LASF38
	.byte	0xa
	.byte	0x3b
	.byte	0x9
	.long	0x9e
	.byte	0x30
	.uleb128 0x10
	.long	.LASF39
	.byte	0xa
	.byte	0x3c
	.byte	0x9
	.long	0x9e
	.byte	0x38
	.uleb128 0x10
	.long	.LASF40
	.byte	0xa
	.byte	0x3d
	.byte	0x9
	.long	0x9e
	.byte	0x40
	.uleb128 0x10
	.long	.LASF41
	.byte	0xa
	.byte	0x40
	.byte	0x9
	.long	0x9e
	.byte	0x48
	.uleb128 0x10
	.long	.LASF42
	.byte	0xa
	.byte	0x41
	.byte	0x9
	.long	0x9e
	.byte	0x50
	.uleb128 0x10
	.long	.LASF43
	.byte	0xa
	.byte	0x42
	.byte	0x9
	.long	0x9e
	.byte	0x58
	.uleb128 0x10
	.long	.LASF44
	.byte	0xa
	.byte	0x44
	.byte	0x16
	.long	0x388
	.byte	0x60
	.uleb128 0x10
	.long	.LASF45
	.byte	0xa
	.byte	0x46
	.byte	0x14
	.long	0x38e
	.byte	0x68
	.uleb128 0x10
	.long	.LASF46
	.byte	0xa
	.byte	0x48
	.byte	0x7
	.long	0x40
	.byte	0x70
	.uleb128 0x10
	.long	.LASF47
	.byte	0xa
	.byte	0x49
	.byte	0x7
	.long	0x40
	.byte	0x74
	.uleb128 0x10
	.long	.LASF48
	.byte	0xa
	.byte	0x4a
	.byte	0xb
	.long	0x84
	.byte	0x78
	.uleb128 0x10
	.long	.LASF49
	.byte	0xa
	.byte	0x4d
	.byte	0x12
	.long	0x63
	.byte	0x80
	.uleb128 0x10
	.long	.LASF50
	.byte	0xa
	.byte	0x4e
	.byte	0xf
	.long	0x6a
	.byte	0x82
	.uleb128 0x10
	.long	.LASF51
	.byte	0xa
	.byte	0x4f
	.byte	0x8
	.long	0x394
	.byte	0x83
	.uleb128 0x10
	.long	.LASF52
	.byte	0xa
	.byte	0x51
	.byte	0xf
	.long	0x3a4
	.byte	0x88
	.uleb128 0x10
	.long	.LASF53
	.byte	0xa
	.byte	0x59
	.byte	0xd
	.long	0x90
	.byte	0x90
	.uleb128 0x10
	.long	.LASF54
	.byte	0xa
	.byte	0x5b
	.byte	0x17
	.long	0x3af
	.byte	0x98
	.uleb128 0x10
	.long	.LASF55
	.byte	0xa
	.byte	0x5c
	.byte	0x19
	.long	0x3ba
	.byte	0xa0
	.uleb128 0x10
	.long	.LASF56
	.byte	0xa
	.byte	0x5d
	.byte	0x14
	.long	0x38e
	.byte	0xa8
	.uleb128 0x10
	.long	.LASF57
	.byte	0xa
	.byte	0x5e
	.byte	0x9
	.long	0x9c
	.byte	0xb0
	.uleb128 0x10
	.long	.LASF58
	.byte	0xa
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0x10
	.long	.LASF59
	.byte	0xa
	.byte	0x60
	.byte	0x7
	.long	0x40
	.byte	0xc0
	.uleb128 0x10
	.long	.LASF60
	.byte	0xa
	.byte	0x62
	.byte	0x8
	.long	0x3c0
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF61
	.byte	0xb
	.byte	0x7
	.byte	0x19
	.long	0x1d7
	.uleb128 0x2
	.long	.LASF62
	.byte	0xc
	.byte	0x91
	.byte	0x12
	.long	0xb7
	.uleb128 0x7
	.long	0x36a
	.uleb128 0x11
	.long	.LASF100
	.byte	0xa
	.byte	0x2b
	.byte	0xe
	.uleb128 0x12
	.long	.LASF63
	.uleb128 0x6
	.byte	0x8
	.long	0x383
	.uleb128 0x6
	.byte	0x8
	.long	0x1d7
	.uleb128 0xa
	.long	0xa4
	.long	0x3a4
	.uleb128 0xb
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x37b
	.uleb128 0x12
	.long	.LASF64
	.uleb128 0x6
	.byte	0x8
	.long	0x3aa
	.uleb128 0x12
	.long	.LASF65
	.uleb128 0x6
	.byte	0x8
	.long	0x3b5
	.uleb128 0xa
	.long	0xa4
	.long	0x3d0
	.uleb128 0xb
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x9
	.long	.LASF66
	.byte	0xd
	.byte	0x89
	.byte	0xe
	.long	0x3dc
	.uleb128 0x6
	.byte	0x8
	.long	0x35e
	.uleb128 0x9
	.long	.LASF67
	.byte	0xd
	.byte	0x8a
	.byte	0xe
	.long	0x3dc
	.uleb128 0x9
	.long	.LASF68
	.byte	0xd
	.byte	0x8b
	.byte	0xe
	.long	0x3dc
	.uleb128 0x9
	.long	.LASF69
	.byte	0xe
	.byte	0x1a
	.byte	0xc
	.long	0x40
	.uleb128 0xa
	.long	0x10c
	.long	0x411
	.uleb128 0x13
	.byte	0
	.uleb128 0x7
	.long	0x406
	.uleb128 0x9
	.long	.LASF70
	.byte	0xe
	.byte	0x1b
	.byte	0x1a
	.long	0x411
	.uleb128 0xf
	.long	.LASF72
	.byte	0x10
	.byte	0x1
	.byte	0x27
	.byte	0x10
	.long	0x44a
	.uleb128 0x10
	.long	.LASF73
	.byte	0x1
	.byte	0x28
	.byte	0x16
	.long	0x376
	.byte	0
	.uleb128 0x10
	.long	.LASF74
	.byte	0x1
	.byte	0x29
	.byte	0x17
	.long	0x10c
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF75
	.byte	0x1
	.byte	0x2a
	.byte	0x2
	.long	0x422
	.uleb128 0x7
	.long	0x44a
	.uleb128 0x9
	.long	.LASF76
	.byte	0x1
	.byte	0x2c
	.byte	0xe
	.long	0x3dc
	.uleb128 0xa
	.long	0x456
	.long	0x477
	.uleb128 0xb
	.long	0x39
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.long	0x467
	.uleb128 0x14
	.long	.LASF77
	.byte	0x1
	.byte	0x2e
	.byte	0x18
	.long	0x477
	.uleb128 0x9
	.byte	0x3
	.quad	ErrorLookupA
	.uleb128 0xa
	.long	0xab
	.long	0x4a2
	.uleb128 0xb
	.long	0x39
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.long	0x492
	.uleb128 0x14
	.long	.LASF78
	.byte	0x1
	.byte	0x6d
	.byte	0xc
	.long	0x4a2
	.uleb128 0x9
	.byte	0x3
	.quad	cszLogFormat
	.uleb128 0x15
	.long	.LASF86
	.byte	0x1
	.byte	0x91
	.byte	0x1
	.long	0x40
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x571
	.uleb128 0x16
	.long	.LASF79
	.byte	0x1
	.byte	0x92
	.byte	0x13
	.long	0xa4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x16
	.long	.LASF80
	.byte	0x1
	.byte	0x93
	.byte	0x13
	.long	0x106
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x16
	.long	.LASF81
	.byte	0x1
	.byte	0x94
	.byte	0x13
	.long	0x106
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x16
	.long	.LASF82
	.byte	0x1
	.byte	0x95
	.byte	0x13
	.long	0x47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x16
	.long	.LASF73
	.byte	0x1
	.byte	0x96
	.byte	0x13
	.long	0x36a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x16
	.long	.LASF83
	.byte	0x1
	.byte	0x97
	.byte	0x13
	.long	0x106
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x17
	.uleb128 0x18
	.string	"Ret"
	.byte	0x1
	.byte	0x9b
	.byte	0xe
	.long	0x40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x19
	.long	.LASF84
	.byte	0x1
	.byte	0x9c
	.byte	0xb
	.long	0x1cb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x19
	.long	.LASF85
	.byte	0x1
	.byte	0x9d
	.byte	0xf
	.long	0x106
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.byte	0
	.uleb128 0x15
	.long	.LASF87
	.byte	0x1
	.byte	0x71
	.byte	0x1
	.long	0x40
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x615
	.uleb128 0x16
	.long	.LASF79
	.byte	0x1
	.byte	0x72
	.byte	0x13
	.long	0xa4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x16
	.long	.LASF80
	.byte	0x1
	.byte	0x73
	.byte	0x13
	.long	0x106
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x16
	.long	.LASF81
	.byte	0x1
	.byte	0x74
	.byte	0x13
	.long	0x106
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x16
	.long	.LASF82
	.byte	0x1
	.byte	0x75
	.byte	0x13
	.long	0x47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x16
	.long	.LASF88
	.byte	0x1
	.byte	0x76
	.byte	0x13
	.long	0x106
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x16
	.long	.LASF83
	.byte	0x1
	.byte	0x77
	.byte	0x13
	.long	0x106
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x17
	.uleb128 0x18
	.string	"Ret"
	.byte	0x1
	.byte	0x7b
	.byte	0xe
	.long	0x40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x19
	.long	.LASF84
	.byte	0x1
	.byte	0x7c
	.byte	0xb
	.long	0x1cb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0x1a
	.long	.LASF89
	.byte	0x1
	.byte	0x5d
	.byte	0xd
	.long	0x106
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x656
	.uleb128 0x16
	.long	.LASF90
	.byte	0x1
	.byte	0x5e
	.byte	0x11
	.long	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.long	.LASF91
	.byte	0x1
	.byte	0x61
	.byte	0xe
	.long	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.long	.LASF92
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.long	0x36a
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x6b3
	.uleb128 0x16
	.long	.LASF93
	.byte	0x1
	.byte	0x45
	.byte	0x1f
	.long	0x6b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.long	.LASF73
	.byte	0x1
	.byte	0x46
	.byte	0x17
	.long	0x36a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x49
	.byte	0xc
	.long	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.long	.LASF94
	.byte	0x1
	.byte	0x4a
	.byte	0x1b
	.long	0x6be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x106
	.uleb128 0x7
	.long	0x6b3
	.uleb128 0x6
	.byte	0x8
	.long	0x456
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
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
.LASF79:
	.string	"cType"
.LASF16:
	.string	"optarg"
.LASF71:
	.string	"_IO_FILE"
.LASF78:
	.string	"cszLogFormat"
.LASF69:
	.string	"sys_nerr"
.LASF43:
	.string	"_IO_save_end"
.LASF7:
	.string	"short int"
.LASF8:
	.string	"size_t"
.LASF81:
	.string	"cszFuncName"
.LASF53:
	.string	"_offset"
.LASF83:
	.string	"cszFormat"
.LASF74:
	.string	"ErrorString"
.LASF62:
	.string	"EApiStatus_t"
.LASF84:
	.string	"_ArgList"
.LASF37:
	.string	"_IO_write_ptr"
.LASF32:
	.string	"_flags"
.LASF9:
	.string	"__uint32_t"
.LASF97:
	.string	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux"
.LASF39:
	.string	"_IO_buf_base"
.LASF31:
	.string	"va_list"
.LASF15:
	.string	"__environ"
.LASF44:
	.string	"_markers"
.LASF34:
	.string	"_IO_read_end"
.LASF57:
	.string	"_freeres_buf"
.LASF24:
	.string	"daylight"
.LASF88:
	.string	"csz2ndValue"
.LASF85:
	.string	"szStatusDesc"
.LASF98:
	.string	"__builtin_va_list"
.LASF25:
	.string	"timezone"
.LASF49:
	.string	"_cur_column"
.LASF82:
	.string	"uiLineNum"
.LASF99:
	.string	"__va_list_tag"
.LASF68:
	.string	"stderr"
.LASF3:
	.string	"long long int"
.LASF80:
	.string	"cszFileName"
.LASF90:
	.string	"czFilename"
.LASF52:
	.string	"_lock"
.LASF21:
	.string	"__daylight"
.LASF2:
	.string	"long int"
.LASF28:
	.string	"fp_offset"
.LASF96:
	.string	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../DbgChk.c"
.LASF27:
	.string	"gp_offset"
.LASF86:
	.string	"siFormattedMessage_SC"
.LASF89:
	.string	"GetLastOccurance"
.LASF36:
	.string	"_IO_write_base"
.LASF50:
	.string	"_vtable_offset"
.LASF48:
	.string	"_old_offset"
.LASF4:
	.string	"unsigned char"
.LASF6:
	.string	"signed char"
.LASF54:
	.string	"_codecvt"
.LASF13:
	.string	"long long unsigned int"
.LASF14:
	.string	"uint32_t"
.LASF72:
	.string	"ErrorLookupTbl_S"
.LASF1:
	.string	"unsigned int"
.LASF63:
	.string	"_IO_marker"
.LASF51:
	.string	"_shortbuf"
.LASF95:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fvisibility=hidden -fPIC -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF23:
	.string	"tzname"
.LASF60:
	.string	"_unused2"
.LASF18:
	.string	"opterr"
.LASF40:
	.string	"_IO_buf_end"
.LASF30:
	.string	"reg_save_area"
.LASF93:
	.string	"pszString"
.LASF12:
	.string	"char"
.LASF22:
	.string	"__timezone"
.LASF17:
	.string	"optind"
.LASF73:
	.string	"StatusCode"
.LASF55:
	.string	"_wide_data"
.LASF56:
	.string	"_freeres_list"
.LASF75:
	.string	"ErrorLookupTbl_t"
.LASF58:
	.string	"__pad5"
.LASF92:
	.string	"EApiGetErrorStringA"
.LASF5:
	.string	"short unsigned int"
.LASF91:
	.string	"cszLPos"
.LASF76:
	.string	"OutputStream"
.LASF0:
	.string	"long unsigned int"
.LASF87:
	.string	"siFormattedMessage_M2"
.LASF38:
	.string	"_IO_write_end"
.LASF11:
	.string	"__off64_t"
.LASF29:
	.string	"overflow_arg_area"
.LASF46:
	.string	"_fileno"
.LASF94:
	.string	"pErrorLookup"
.LASF45:
	.string	"_chain"
.LASF65:
	.string	"_IO_wide_data"
.LASF59:
	.string	"_mode"
.LASF20:
	.string	"__tzname"
.LASF10:
	.string	"__off_t"
.LASF42:
	.string	"_IO_backup_base"
.LASF66:
	.string	"stdin"
.LASF47:
	.string	"_flags2"
.LASF77:
	.string	"ErrorLookupA"
.LASF64:
	.string	"_IO_codecvt"
.LASF35:
	.string	"_IO_read_base"
.LASF26:
	.string	"__gnuc_va_list"
.LASF41:
	.string	"_IO_save_base"
.LASF70:
	.string	"sys_errlist"
.LASF19:
	.string	"optopt"
.LASF61:
	.string	"FILE"
.LASF33:
	.string	"_IO_read_ptr"
.LASF67:
	.string	"stdout"
.LASF100:
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
