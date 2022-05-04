	.file	"EApiEmulBoardInfo.c"
	.text
.Ltext0:
	.hidden	StringLookup
	.globl	StringLookup
	.section	.rodata
.LC0:
	.string	"PICMG"
.LC1:
	.string	"SAMPLE API"
.LC2:
	.string	"Sample Serial Number"
.LC3:
	.string	"PICMGR2.0"
.LC4:
	.string	"COMExpress"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	StringLookup, @object
	.size	StringLookup, 80
StringLookup:
	.long	0
	.zero	4
	.quad	.LC0
	.long	1
	.zero	4
	.quad	.LC1
	.long	3
	.zero	4
	.quad	.LC2
	.long	4
	.zero	4
	.quad	.LC3
	.long	6
	.zero	4
	.quad	.LC4
	.section	.rodata
.LC5:
	.string	"%s\n"
.LC6:
	.string	"EApiBoardGetStringAEmul"
	.align 8
.LC7:
	.string	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EApiEmulBoardInfo.c"
.LC8:
	.string	"pBuffer Overrun Prevented"
.LC9:
	.string	""
.LC10:
	.string	"Unrecognised String ID"
	.text
	.globl	EApiBoardGetStringAEmul
	.hidden	EApiBoardGetStringAEmul
	.type	EApiBoardGetStringAEmul, @function
EApiBoardGetStringAEmul:
.LFB6:
	.file 1 "/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EApiEmulBoardInfo.c"
	.loc 1 77 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 1 78 16
	movl	$0, -12(%rbp)
	.loc 1 82 12
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	.loc 1 84 8
	movl	$0, -8(%rbp)
	.loc 1 84 3
	jmp	.L2
.L9:
	.loc 1 86 25
	movl	-8(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	StringLookup(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 1 86 9
	cmpl	%eax, -20(%rbp)
	jne	.L3
	.loc 1 95 50
	movl	-8(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+StringLookup(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 95 28
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 1 95 61
	leal	1(%rax), %edx
	.loc 1 95 17
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	.loc 1 96 22
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 96 11
	cmpl	%eax, -4(%rbp)
	jnb	.L4
	.loc 1 98 21
	movl	$-1537, -12(%rbp)
	jmp	.L5
.L4:
	.loc 1 102 20
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
.L5:
	.loc 1 104 11
	cmpl	$0, -4(%rbp)
	je	.L6
	.loc 1 104 22 discriminator 1
	cmpq	$0, -32(%rbp)
	je	.L6
	.loc 1 106 11
	movl	-4(%rbp), %edx
	.loc 1 106 42
	movl	-8(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rcx
	leaq	8+StringLookup(%rip), %rax
	movq	(%rcx,%rax), %rcx
	.loc 1 106 11
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	.loc 1 107 28
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edx
	.loc 1 107 18
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 107 31
	movb	$0, (%rax)
.L6:
	.loc 1 109 9
	cmpl	$-1537, -12(%rbp)
	jne	.L7
	.loc 1 109 9 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC8(%rip), %rax
	pushq	%rax
	leaq	.LC5(%rip), %r9
	movl	$-1537, %r8d
	movl	$109, %ecx
	leaq	.LC6(%rip), %rdx
	leaq	.LC7(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-1537, -12(%rbp)
	jmp	.L8
.L7:
	.loc 1 115 9 is_stmt 1
	subq	$8, %rsp
	leaq	.LC9(%rip), %rax
	pushq	%rax
	leaq	.LC5(%rip), %r9
	movl	$0, %r8d
	movl	$115, %ecx
	leaq	.LC6(%rip), %rdx
	leaq	.LC7(%rip), %rsi
	movl	$76, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$0, -12(%rbp)
	jmp	.L8
.L3:
	.loc 1 84 39 discriminator 2
	addl	$1, -8(%rbp)
.L2:
	.loc 1 84 3 discriminator 1
	cmpl	$4, -8(%rbp)
	jbe	.L9
	.loc 1 121 3
	subq	$8, %rsp
	leaq	.LC10(%rip), %rax
	pushq	%rax
	leaq	.LC5(%rip), %r9
	movl	$-769, %r8d
	movl	$121, %ecx
	leaq	.LC6(%rip), %rdx
	leaq	.LC7(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-769, -12(%rbp)
	nop
.L8:
	.loc 1 128 10
	movl	-12(%rbp), %eax
	.loc 1 129 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	EApiBoardGetStringAEmul, .-EApiBoardGetStringAEmul
	.hidden	ValueLookup
	.globl	ValueLookup
	.section	.rodata
	.align 32
	.type	ValueLookup, @object
	.size	ValueLookup, 144
ValueLookup:
	.long	1
	.long	16
	.long	2
	.long	65536
	.long	3
	.long	42817
	.long	4
	.long	33554432
	.long	65536
	.long	0
	.long	65537
	.long	328657
	.long	131072
	.long	3732
	.long	131073
	.long	3193
	.long	131074
	.long	2278
	.long	135172
	.long	1300
	.long	135176
	.long	2500
	.long	135180
	.long	3300
	.long	135184
	.long	3000
	.long	135188
	.long	5000
	.long	135192
	.long	5000
	.long	135196
	.long	12000
	.long	139264
	.long	5000
	.long	139265
	.long	2500
.LC11:
	.string	"EApiBoardGetValueEmul"
.LC12:
	.string	"Unrecognised Value ID"
	.text
	.globl	EApiBoardGetValueEmul
	.hidden	EApiBoardGetValueEmul
	.type	EApiBoardGetValueEmul, @function
EApiBoardGetValueEmul:
.LFB7:
	.loc 1 183 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 184 16
	movl	$0, -8(%rbp)
	.loc 1 187 8
	movl	$0, -4(%rbp)
	.loc 1 187 3
	jmp	.L12
.L15:
	.loc 1 189 24
	movl	-4(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	ValueLookup(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 1 189 9
	cmpl	%eax, -20(%rbp)
	jne	.L13
	.loc 1 191 31
	movl	-4(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	4+ValueLookup(%rip), %rax
	movl	(%rdx,%rax), %edx
	.loc 1 191 16
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	.loc 1 192 9
	subq	$8, %rsp
	leaq	.LC9(%rip), %rax
	pushq	%rax
	leaq	.LC5(%rip), %r9
	movl	$0, %r8d
	movl	$192, %ecx
	leaq	.LC11(%rip), %rdx
	leaq	.LC7(%rip), %rsi
	movl	$76, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$0, -8(%rbp)
	jmp	.L14
.L13:
	.loc 1 187 38 discriminator 2
	addl	$1, -4(%rbp)
.L12:
	.loc 1 187 3 discriminator 1
	cmpl	$17, -4(%rbp)
	jbe	.L15
	.loc 1 195 3
	subq	$8, %rsp
	leaq	.LC12(%rip), %rax
	pushq	%rax
	leaq	.LC5(%rip), %r9
	movl	$-769, %r8d
	movl	$195, %ecx
	leaq	.LC11(%rip), %rdx
	leaq	.LC7(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-769, -8(%rbp)
	nop
.L14:
	.loc 1 202 10
	movl	-8(%rbp), %eax
	.loc 1 203 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	EApiBoardGetValueEmul, .-EApiBoardGetValueEmul
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 4 "/usr/include/stdint.h"
	.file 5 "/usr/include/unistd.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 7 "/usr/include/time.h"
	.file 8 "../../include/EApi.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x32a
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF42
	.byte	0xc
	.long	.LASF43
	.long	.LASF44
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF2
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x4
	.long	.LASF8
	.byte	0x2
	.byte	0x28
	.byte	0x1c
	.long	0x57
	.uleb128 0x4
	.long	.LASF9
	.byte	0x2
	.byte	0x2a
	.byte	0x16
	.long	0x3b
	.uleb128 0x5
	.byte	0x8
	.long	0x8a
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x4
	.long	.LASF12
	.byte	0x3
	.byte	0x19
	.byte	0x14
	.long	0x6c
	.uleb128 0x4
	.long	.LASF13
	.byte	0x3
	.byte	0x1a
	.byte	0x14
	.long	0x78
	.uleb128 0x4
	.long	.LASF14
	.byte	0x4
	.byte	0x5a
	.byte	0x1b
	.long	0x2d
	.uleb128 0x6
	.long	.LASF15
	.byte	0x5
	.value	0x21f
	.byte	0xf
	.long	0xc9
	.uleb128 0x5
	.byte	0x8
	.long	0x84
	.uleb128 0x7
	.long	.LASF16
	.byte	0x6
	.byte	0x24
	.byte	0xe
	.long	0x84
	.uleb128 0x7
	.long	.LASF17
	.byte	0x6
	.byte	0x32
	.byte	0xc
	.long	0x34
	.uleb128 0x7
	.long	.LASF18
	.byte	0x6
	.byte	0x37
	.byte	0xc
	.long	0x34
	.uleb128 0x7
	.long	.LASF19
	.byte	0x6
	.byte	0x3b
	.byte	0xc
	.long	0x34
	.uleb128 0x8
	.long	0x84
	.long	0x10f
	.uleb128 0x9
	.long	0x2d
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF20
	.byte	0x7
	.byte	0x9f
	.byte	0xe
	.long	0xff
	.uleb128 0x7
	.long	.LASF21
	.byte	0x7
	.byte	0xa0
	.byte	0xc
	.long	0x34
	.uleb128 0x7
	.long	.LASF22
	.byte	0x7
	.byte	0xa1
	.byte	0x11
	.long	0x42
	.uleb128 0x7
	.long	.LASF23
	.byte	0x7
	.byte	0xa6
	.byte	0xe
	.long	0xff
	.uleb128 0x7
	.long	.LASF24
	.byte	0x7
	.byte	0xae
	.byte	0xc
	.long	0x34
	.uleb128 0x7
	.long	.LASF25
	.byte	0x7
	.byte	0xaf
	.byte	0x11
	.long	0x42
	.uleb128 0x4
	.long	.LASF26
	.byte	0x8
	.byte	0x91
	.byte	0x12
	.long	0xa4
	.uleb128 0x4
	.long	.LASF27
	.byte	0x8
	.byte	0x92
	.byte	0x12
	.long	0xa4
	.uleb128 0xa
	.long	.LASF31
	.byte	0x10
	.byte	0x1
	.byte	0x31
	.byte	0x10
	.long	0x196
	.uleb128 0xb
	.string	"Id"
	.byte	0x1
	.byte	0x32
	.byte	0xc
	.long	0x163
	.byte	0
	.uleb128 0xc
	.long	.LASF28
	.byte	0x1
	.byte	0x33
	.byte	0xc
	.long	0x84
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	.LASF29
	.byte	0x1
	.byte	0x34
	.byte	0x2
	.long	0x16f
	.uleb128 0xd
	.long	0x196
	.uleb128 0x8
	.long	0x1a2
	.long	0x1b7
	.uleb128 0x9
	.long	0x2d
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.long	0x1a7
	.uleb128 0xe
	.long	.LASF30
	.byte	0x1
	.byte	0x35
	.byte	0x19
	.long	0x1b7
	.uleb128 0x9
	.byte	0x3
	.quad	StringLookup
	.uleb128 0xa
	.long	.LASF32
	.byte	0x8
	.byte	0x1
	.byte	0x8c
	.byte	0x10
	.long	0x1f9
	.uleb128 0xb
	.string	"Id"
	.byte	0x1
	.byte	0x8d
	.byte	0xc
	.long	0x163
	.byte	0
	.uleb128 0xc
	.long	.LASF33
	.byte	0x1
	.byte	0x8e
	.byte	0xc
	.long	0xa4
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.long	.LASF34
	.byte	0x1
	.byte	0x8f
	.byte	0x2
	.long	0x1d2
	.uleb128 0xd
	.long	0x1f9
	.uleb128 0x8
	.long	0x205
	.long	0x21a
	.uleb128 0x9
	.long	0x2d
	.byte	0x11
	.byte	0
	.uleb128 0xd
	.long	0x20a
	.uleb128 0xe
	.long	.LASF35
	.byte	0x1
	.byte	0x90
	.byte	0x18
	.long	0x21a
	.uleb128 0x9
	.byte	0x3
	.quad	ValueLookup
	.uleb128 0xf
	.long	.LASF45
	.byte	0x1
	.byte	0xb3
	.byte	0x1
	.long	0x157
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a1
	.uleb128 0x10
	.string	"Id"
	.byte	0x1
	.byte	0xb4
	.byte	0x14
	.long	0x163
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x11
	.long	.LASF36
	.byte	0x1
	.byte	0xb5
	.byte	0x15
	.long	0x2a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.long	.LASF37
	.byte	0x1
	.byte	0xb8
	.byte	0x10
	.long	0x157
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0xb9
	.byte	0xc
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.long	.LASF41
	.byte	0x1
	.byte	0xc8
	.byte	0x1
	.quad	.L14
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0xa4
	.uleb128 0x15
	.long	.LASF46
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.long	0x157
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x10
	.string	"Id"
	.byte	0x1
	.byte	0x49
	.byte	0x17
	.long	0x163
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x11
	.long	.LASF38
	.byte	0x1
	.byte	0x4a
	.byte	0x17
	.long	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.long	.LASF39
	.byte	0x1
	.byte	0x4b
	.byte	0x17
	.long	0x2a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x12
	.long	.LASF37
	.byte	0x1
	.byte	0x4e
	.byte	0x10
	.long	0x157
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x4f
	.byte	0xc
	.long	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.long	.LASF40
	.byte	0x1
	.byte	0x50
	.byte	0xc
	.long	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.long	.LASF41
	.byte	0x1
	.byte	0x7e
	.byte	0x1
	.quad	.L8
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
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
.LASF32:
	.string	"ValueLookupTbl_s"
.LASF34:
	.string	"ValueLookupTbl_t"
.LASF26:
	.string	"EApiStatus_t"
.LASF21:
	.string	"__daylight"
.LASF14:
	.string	"uintptr_t"
.LASF2:
	.string	"long int"
.LASF25:
	.string	"timezone"
.LASF41:
	.string	"ExitPoint"
.LASF18:
	.string	"opterr"
.LASF35:
	.string	"ValueLookup"
.LASF15:
	.string	"__environ"
.LASF40:
	.string	"BufLenSav"
.LASF46:
	.string	"EApiBoardGetStringAEmul"
.LASF4:
	.string	"unsigned char"
.LASF17:
	.string	"optind"
.LASF5:
	.string	"short unsigned int"
.LASF9:
	.string	"__uint32_t"
.LASF33:
	.string	"Value"
.LASF27:
	.string	"EApiId_t"
.LASF8:
	.string	"__uint16_t"
.LASF0:
	.string	"long unsigned int"
.LASF36:
	.string	"pValue"
.LASF7:
	.string	"short int"
.LASF44:
	.string	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux"
.LASF1:
	.string	"unsigned int"
.LASF16:
	.string	"optarg"
.LASF24:
	.string	"daylight"
.LASF11:
	.string	"long long unsigned int"
.LASF39:
	.string	"pBufLen"
.LASF19:
	.string	"optopt"
.LASF20:
	.string	"__tzname"
.LASF38:
	.string	"pBuffer"
.LASF22:
	.string	"__timezone"
.LASF31:
	.string	"StringLookupTbl_s"
.LASF29:
	.string	"StringLookupTbl_t"
.LASF3:
	.string	"long long int"
.LASF10:
	.string	"char"
.LASF42:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fvisibility=hidden -fPIC -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF30:
	.string	"StringLookup"
.LASF45:
	.string	"EApiBoardGetValueEmul"
.LASF12:
	.string	"uint16_t"
.LASF28:
	.string	"StringPtr"
.LASF13:
	.string	"uint32_t"
.LASF23:
	.string	"tzname"
.LASF6:
	.string	"signed char"
.LASF37:
	.string	"StatusCode"
.LASF43:
	.string	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EApiEmulBoardInfo.c"
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
