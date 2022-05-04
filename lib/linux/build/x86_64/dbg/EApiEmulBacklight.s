	.file	"EApiEmulBacklight.c"
	.text
.Ltext0:
	.data
	.align 16
	.type	BacklightLookup, @object
	.size	BacklightLookup, 24
BacklightLookup:
	.long	0
	.long	0
	.long	0
	.long	1
	.long	-1
	.long	255
	.section	.rodata
.LC0:
	.string	"%s\n"
.LC1:
	.string	"EApiVgaGetBacklightEnableEmul"
	.align 8
.LC2:
	.string	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EApiEmulBacklight.c"
.LC3:
	.string	""
.LC4:
	.string	"Unrecognised Backlight ID"
	.text
	.globl	EApiVgaGetBacklightEnableEmul
	.hidden	EApiVgaGetBacklightEnableEmul
	.type	EApiVgaGetBacklightEnableEmul, @function
EApiVgaGetBacklightEnableEmul:
.LFB6:
	.file 1 "/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EApiEmulBacklight.c"
	.loc 1 64 1
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
	.loc 1 65 16
	movl	$0, -8(%rbp)
	.loc 1 68 8
	movl	$0, -4(%rbp)
	.loc 1 68 3
	jmp	.L2
.L5:
	.loc 1 70 28
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	leaq	BacklightLookup(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 1 70 9
	cmpl	%eax, -20(%rbp)
	jne	.L3
	.loc 1 72 36
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	leaq	4+BacklightLookup(%rip), %rax
	movl	(%rdx,%rax), %edx
	.loc 1 72 17
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	.loc 1 73 9
	subq	$8, %rsp
	leaq	.LC3(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$0, %r8d
	movl	$73, %ecx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$76, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$0, -8(%rbp)
	jmp	.L4
.L3:
	.loc 1 68 42 discriminator 2
	addl	$1, -4(%rbp)
.L2:
	.loc 1 68 3 discriminator 1
	cmpl	$1, -4(%rbp)
	jbe	.L5
	.loc 1 79 3
	subq	$8, %rsp
	leaq	.LC4(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-769, %r8d
	movl	$79, %ecx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-769, -8(%rbp)
	nop
.L4:
	.loc 1 86 10
	movl	-8(%rbp), %eax
	.loc 1 87 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	EApiVgaGetBacklightEnableEmul, .-EApiVgaGetBacklightEnableEmul
	.section	.rodata
.LC5:
	.string	"EApiVgaSetBacklightEnableEmul"
	.text
	.globl	EApiVgaSetBacklightEnableEmul
	.hidden	EApiVgaSetBacklightEnableEmul
	.type	EApiVgaSetBacklightEnableEmul, @function
EApiVgaSetBacklightEnableEmul:
.LFB7:
	.loc 1 94 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	.loc 1 95 16
	movl	$0, -8(%rbp)
	.loc 1 98 8
	movl	$0, -4(%rbp)
	.loc 1 98 3
	jmp	.L8
.L11:
	.loc 1 100 28
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	leaq	BacklightLookup(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 1 100 9
	cmpl	%eax, -20(%rbp)
	jne	.L9
	.loc 1 102 35
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rcx
	leaq	4+BacklightLookup(%rip), %rdx
	movl	-24(%rbp), %eax
	movl	%eax, (%rcx,%rdx)
	.loc 1 103 9
	subq	$8, %rsp
	leaq	.LC3(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$0, %r8d
	movl	$103, %ecx
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$76, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$0, -8(%rbp)
	jmp	.L10
.L9:
	.loc 1 98 42 discriminator 2
	addl	$1, -4(%rbp)
.L8:
	.loc 1 98 3 discriminator 1
	cmpl	$1, -4(%rbp)
	jbe	.L11
	.loc 1 109 3
	subq	$8, %rsp
	leaq	.LC4(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-769, %r8d
	movl	$109, %ecx
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-769, -8(%rbp)
	nop
.L10:
	.loc 1 116 10
	movl	-8(%rbp), %eax
	.loc 1 117 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	EApiVgaSetBacklightEnableEmul, .-EApiVgaSetBacklightEnableEmul
	.section	.rodata
	.align 8
.LC6:
	.string	"EApiVgaGetBacklightBrightnessEmul"
	.text
	.globl	EApiVgaGetBacklightBrightnessEmul
	.hidden	EApiVgaGetBacklightBrightnessEmul
	.type	EApiVgaGetBacklightBrightnessEmul, @function
EApiVgaGetBacklightBrightnessEmul:
.LFB8:
	.loc 1 123 1
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
	.loc 1 124 16
	movl	$0, -8(%rbp)
	.loc 1 127 8
	movl	$0, -4(%rbp)
	.loc 1 127 3
	jmp	.L14
.L17:
	.loc 1 129 28
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	leaq	BacklightLookup(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 1 129 9
	cmpl	%eax, -20(%rbp)
	jne	.L15
	.loc 1 131 40
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	leaq	8+BacklightLookup(%rip), %rax
	movl	(%rdx,%rax), %edx
	.loc 1 131 21
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	.loc 1 132 9
	subq	$8, %rsp
	leaq	.LC3(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$0, %r8d
	movl	$132, %ecx
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$76, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$0, -8(%rbp)
	jmp	.L16
.L15:
	.loc 1 127 42 discriminator 2
	addl	$1, -4(%rbp)
.L14:
	.loc 1 127 3 discriminator 1
	cmpl	$1, -4(%rbp)
	jbe	.L17
	.loc 1 138 3
	subq	$8, %rsp
	leaq	.LC4(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-769, %r8d
	movl	$138, %ecx
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-769, -8(%rbp)
	nop
.L16:
	.loc 1 145 10
	movl	-8(%rbp), %eax
	.loc 1 146 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	EApiVgaGetBacklightBrightnessEmul, .-EApiVgaGetBacklightBrightnessEmul
	.section	.rodata
.LC7:
	.string	"EApiVgaSetBacklightBrightness"
	.align 8
.LC8:
	.string	"EApiVgaSetBacklightBrightnessEmul"
	.text
	.globl	EApiVgaSetBacklightBrightnessEmul
	.hidden	EApiVgaSetBacklightBrightnessEmul
	.type	EApiVgaSetBacklightBrightnessEmul, @function
EApiVgaSetBacklightBrightnessEmul:
.LFB9:
	.loc 1 153 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	.loc 1 154 16
	movl	$0, -8(%rbp)
	.loc 1 157 8
	movl	$0, -4(%rbp)
	.loc 1 157 3
	jmp	.L20
.L23:
	.loc 1 159 28
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	leaq	BacklightLookup(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 1 159 9
	cmpl	%eax, -20(%rbp)
	jne	.L21
	.loc 1 161 38
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rcx
	leaq	8+BacklightLookup(%rip), %rdx
	movl	-24(%rbp), %eax
	movl	%eax, (%rcx,%rdx)
	.loc 1 162 9
	subq	$8, %rsp
	leaq	.LC3(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$0, %r8d
	movl	$162, %ecx
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$76, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$0, -8(%rbp)
	jmp	.L22
.L21:
	.loc 1 157 42 discriminator 2
	addl	$1, -4(%rbp)
.L20:
	.loc 1 157 3 discriminator 1
	cmpl	$1, -4(%rbp)
	jbe	.L23
	.loc 1 168 3
	subq	$8, %rsp
	leaq	.LC4(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-769, %r8d
	movl	$168, %ecx
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-769, -8(%rbp)
	nop
.L22:
	.loc 1 175 10
	movl	-8(%rbp), %eax
	.loc 1 176 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	EApiVgaSetBacklightBrightnessEmul, .-EApiVgaSetBacklightBrightnessEmul
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
	.long	0x36c
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF38
	.byte	0xc
	.long	.LASF39
	.long	.LASF40
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
	.long	.LASF10
	.byte	0x2
	.byte	0x2a
	.byte	0x16
	.long	0x3b
	.uleb128 0x5
	.byte	0x8
	.long	0x7e
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x4
	.long	.LASF11
	.byte	0x3
	.byte	0x1a
	.byte	0x14
	.long	0x6c
	.uleb128 0x4
	.long	.LASF12
	.byte	0x4
	.byte	0x5a
	.byte	0x1b
	.long	0x2d
	.uleb128 0x6
	.long	.LASF13
	.byte	0x5
	.value	0x21f
	.byte	0xf
	.long	0xb1
	.uleb128 0x5
	.byte	0x8
	.long	0x78
	.uleb128 0x7
	.long	.LASF14
	.byte	0x6
	.byte	0x24
	.byte	0xe
	.long	0x78
	.uleb128 0x7
	.long	.LASF15
	.byte	0x6
	.byte	0x32
	.byte	0xc
	.long	0x34
	.uleb128 0x7
	.long	.LASF16
	.byte	0x6
	.byte	0x37
	.byte	0xc
	.long	0x34
	.uleb128 0x7
	.long	.LASF17
	.byte	0x6
	.byte	0x3b
	.byte	0xc
	.long	0x34
	.uleb128 0x8
	.long	0x78
	.long	0xf7
	.uleb128 0x9
	.long	0x2d
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF18
	.byte	0x7
	.byte	0x9f
	.byte	0xe
	.long	0xe7
	.uleb128 0x7
	.long	.LASF19
	.byte	0x7
	.byte	0xa0
	.byte	0xc
	.long	0x34
	.uleb128 0x7
	.long	.LASF20
	.byte	0x7
	.byte	0xa1
	.byte	0x11
	.long	0x42
	.uleb128 0x7
	.long	.LASF21
	.byte	0x7
	.byte	0xa6
	.byte	0xe
	.long	0xe7
	.uleb128 0x7
	.long	.LASF22
	.byte	0x7
	.byte	0xae
	.byte	0xc
	.long	0x34
	.uleb128 0x7
	.long	.LASF23
	.byte	0x7
	.byte	0xaf
	.byte	0x11
	.long	0x42
	.uleb128 0x4
	.long	.LASF24
	.byte	0x8
	.byte	0x91
	.byte	0x12
	.long	0x8c
	.uleb128 0x4
	.long	.LASF25
	.byte	0x8
	.byte	0x92
	.byte	0x12
	.long	0x8c
	.uleb128 0xa
	.long	.LASF41
	.byte	0xc
	.byte	0x1
	.byte	0x31
	.byte	0x10
	.long	0x18b
	.uleb128 0xb
	.string	"Id"
	.byte	0x1
	.byte	0x32
	.byte	0xc
	.long	0x14b
	.byte	0
	.uleb128 0xc
	.long	.LASF26
	.byte	0x1
	.byte	0x33
	.byte	0xc
	.long	0x8c
	.byte	0x4
	.uleb128 0xc
	.long	.LASF27
	.byte	0x1
	.byte	0x34
	.byte	0xc
	.long	0x8c
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	.LASF28
	.byte	0x1
	.byte	0x35
	.byte	0x2
	.long	0x157
	.uleb128 0x8
	.long	0x18b
	.long	0x1a7
	.uleb128 0x9
	.long	0x2d
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.long	.LASF29
	.byte	0x1
	.byte	0x36
	.byte	0x1a
	.long	0x197
	.uleb128 0x9
	.byte	0x3
	.quad	BacklightLookup
	.uleb128 0xe
	.long	.LASF31
	.byte	0x1
	.byte	0x95
	.byte	0x1
	.long	0x13f
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x229
	.uleb128 0xf
	.string	"Id"
	.byte	0x1
	.byte	0x96
	.byte	0x14
	.long	0x14b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.long	.LASF27
	.byte	0x1
	.byte	0x97
	.byte	0x14
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.long	.LASF30
	.byte	0x1
	.byte	0x9a
	.byte	0x10
	.long	0x13f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x9b
	.byte	0xc
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.long	.LASF34
	.byte	0x1
	.byte	0xad
	.byte	0x1
	.quad	.L22
	.byte	0
	.uleb128 0xe
	.long	.LASF32
	.byte	0x1
	.byte	0x77
	.byte	0x1
	.long	0x13f
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x295
	.uleb128 0xf
	.string	"Id"
	.byte	0x1
	.byte	0x78
	.byte	0x14
	.long	0x14b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.long	.LASF33
	.byte	0x1
	.byte	0x79
	.byte	0x15
	.long	0x295
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xd
	.long	.LASF30
	.byte	0x1
	.byte	0x7c
	.byte	0x10
	.long	0x13f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x7d
	.byte	0xc
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.long	.LASF34
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.quad	.L16
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x8c
	.uleb128 0xe
	.long	.LASF35
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.long	0x13f
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x307
	.uleb128 0xf
	.string	"Id"
	.byte	0x1
	.byte	0x5b
	.byte	0x14
	.long	0x14b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.long	.LASF36
	.byte	0x1
	.byte	0x5c
	.byte	0x14
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.long	.LASF30
	.byte	0x1
	.byte	0x5f
	.byte	0x10
	.long	0x13f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x60
	.byte	0xc
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.long	.LASF34
	.byte	0x1
	.byte	0x72
	.byte	0x1
	.quad	.L10
	.byte	0
	.uleb128 0x13
	.long	.LASF42
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.long	0x13f
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xf
	.string	"Id"
	.byte	0x1
	.byte	0x3d
	.byte	0x14
	.long	0x14b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.long	.LASF37
	.byte	0x1
	.byte	0x3e
	.byte	0x15
	.long	0x295
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xd
	.long	.LASF30
	.byte	0x1
	.byte	0x41
	.byte	0x10
	.long	0x13f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x42
	.byte	0xc
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.long	.LASF34
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.quad	.L4
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
.LASF37:
	.string	"pEnable"
.LASF26:
	.string	"Enabled"
.LASF24:
	.string	"EApiStatus_t"
.LASF33:
	.string	"pBrightness"
.LASF19:
	.string	"__daylight"
.LASF12:
	.string	"uintptr_t"
.LASF36:
	.string	"Enable"
.LASF2:
	.string	"long int"
.LASF41:
	.string	"BackLightDevice_s"
.LASF34:
	.string	"ExitPoint"
.LASF16:
	.string	"opterr"
.LASF27:
	.string	"Brightness"
.LASF39:
	.string	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EApiEmulBacklight.c"
.LASF13:
	.string	"__environ"
.LASF23:
	.string	"timezone"
.LASF4:
	.string	"unsigned char"
.LASF28:
	.string	"BackLightDevice_t"
.LASF15:
	.string	"optind"
.LASF5:
	.string	"short unsigned int"
.LASF29:
	.string	"BacklightLookup"
.LASF25:
	.string	"EApiId_t"
.LASF0:
	.string	"long unsigned int"
.LASF10:
	.string	"__uint32_t"
.LASF40:
	.string	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux"
.LASF32:
	.string	"EApiVgaGetBacklightBrightnessEmul"
.LASF42:
	.string	"EApiVgaGetBacklightEnableEmul"
.LASF14:
	.string	"optarg"
.LASF22:
	.string	"daylight"
.LASF9:
	.string	"long long unsigned int"
.LASF17:
	.string	"optopt"
.LASF18:
	.string	"__tzname"
.LASF35:
	.string	"EApiVgaSetBacklightEnableEmul"
.LASF20:
	.string	"__timezone"
.LASF3:
	.string	"long long int"
.LASF31:
	.string	"EApiVgaSetBacklightBrightnessEmul"
.LASF8:
	.string	"char"
.LASF38:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fvisibility=hidden -fPIC -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF1:
	.string	"unsigned int"
.LASF7:
	.string	"short int"
.LASF11:
	.string	"uint32_t"
.LASF21:
	.string	"tzname"
.LASF6:
	.string	"signed char"
.LASF30:
	.string	"StatusCode"
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
