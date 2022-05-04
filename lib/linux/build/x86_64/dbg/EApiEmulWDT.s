	.file	"EApiEmulWDT.c"
	.text
.Ltext0:
	.local	WatchdogState
	.comm	WatchdogState,4,4
	.section	.rodata
.LC0:
	.string	"%s\n"
.LC1:
	.string	"EApiWDogGetCapEmul"
	.align 8
.LC2:
	.string	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EApiEmulWDT.c"
.LC3:
	.string	""
	.text
	.globl	EApiWDogGetCapEmul
	.type	EApiWDogGetCapEmul, @function
EApiWDogGetCapEmul:
.LFB6:
	.file 1 "/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EApiEmulWDT.c"
	.loc 1 74 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 1 75 16
	movl	$0, -4(%rbp)
	.loc 1 76 21
	movq	-24(%rbp), %rax
	movl	$600000, (%rax)
	.loc 1 77 21
	movq	-32(%rbp), %rax
	movl	$600000, (%rax)
	.loc 1 78 21
	movq	-40(%rbp), %rax
	movl	$600000, (%rax)
	.loc 1 79 3
	subq	$8, %rsp
	leaq	.LC3(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$0, %r8d
	movl	$79, %ecx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$76, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$0, -4(%rbp)
	nop
.L2:
	endbr64
	.loc 1 83 10
	movl	-4(%rbp), %eax
	.loc 1 84 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	EApiWDogGetCapEmul, .-EApiWDogGetCapEmul
	.section	.rodata
.LC4:
	.string	"EApiWDogStartEmul"
	.align 8
.LC5:
	.string	"Watchdog alread runing, need to stop before starting"
.LC6:
	.string	"(Delay>pMaxDelay)"
	.align 8
.LC7:
	.string	"(EventTimeout>pMaxEventTimeout)"
	.align 8
.LC8:
	.string	"(ResetTimeout>pMaxResetTimeout)"
	.text
	.globl	EApiWDogStartEmul
	.hidden	EApiWDogStartEmul
	.type	EApiWDogStartEmul, @function
EApiWDogStartEmul:
.LFB7:
	.loc 1 95 1
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
	movl	%edx, -28(%rbp)
	.loc 1 96 16
	movl	$0, -4(%rbp)
	.loc 1 97 3
	movl	WatchdogState(%rip), %eax
	cmpl	$-1, %eax
	jne	.L5
	.loc 1 97 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC5(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-262, %r8d
	movl	$97, %ecx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-262, -4(%rbp)
	jmp	.L6
.L5:
	.loc 1 103 3 is_stmt 1
	cmpl	$600000, -20(%rbp)
	jbe	.L7
	.loc 1 103 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC6(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-257, %r8d
	movl	$103, %ecx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-257, -4(%rbp)
	jmp	.L6
.L7:
	.loc 1 108 3 is_stmt 1
	cmpl	$600000, -24(%rbp)
	jbe	.L8
	.loc 1 108 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC7(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-257, %r8d
	movl	$108, %ecx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-257, -4(%rbp)
	jmp	.L6
.L8:
	.loc 1 113 3 is_stmt 1
	cmpl	$600000, -28(%rbp)
	jbe	.L9
	.loc 1 113 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC8(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-257, %r8d
	movl	$113, %ecx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-257, -4(%rbp)
	jmp	.L6
.L9:
	.loc 1 118 16 is_stmt 1
	movl	$-1, WatchdogState(%rip)
	.loc 1 119 3
	subq	$8, %rsp
	leaq	.LC3(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$0, %r8d
	movl	$119, %ecx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$76, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$0, -4(%rbp)
	nop
.L6:
	.loc 1 122 10
	movl	-4(%rbp), %eax
	.loc 1 123 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	EApiWDogStartEmul, .-EApiWDogStartEmul
	.section	.rodata
.LC9:
	.string	"EApiWDogTriggerEmul"
	.align 8
.LC10:
	.string	"Watchdog Disabled therefore not possible to trigger"
	.text
	.globl	EApiWDogTriggerEmul
	.hidden	EApiWDogTriggerEmul
	.type	EApiWDogTriggerEmul, @function
EApiWDogTriggerEmul:
.LFB8:
	.loc 1 126 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 127 16
	movl	$0, -4(%rbp)
	.loc 1 128 3
	movl	WatchdogState(%rip), %eax
	testl	%eax, %eax
	jne	.L12
	.loc 1 128 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC10(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-3841, %r8d
	movl	$128, %ecx
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-3841, -4(%rbp)
	jmp	.L13
.L12:
	.loc 1 135 3 is_stmt 1
	subq	$8, %rsp
	leaq	.LC3(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$0, %r8d
	movl	$135, %ecx
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$76, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$0, -4(%rbp)
	nop
.L13:
	.loc 1 141 10
	movl	-4(%rbp), %eax
	.loc 1 142 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	EApiWDogTriggerEmul, .-EApiWDogTriggerEmul
	.section	.rodata
.LC11:
	.string	"EApiWDogStopEmul"
	.text
	.globl	EApiWDogStopEmul
	.hidden	EApiWDogStopEmul
	.type	EApiWDogStopEmul, @function
EApiWDogStopEmul:
.LFB9:
	.loc 1 145 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 146 16
	movl	$0, -4(%rbp)
	.loc 1 147 16
	movl	$0, WatchdogState(%rip)
	.loc 1 148 3
	subq	$8, %rsp
	leaq	.LC3(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$0, %r8d
	movl	$148, %ecx
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$76, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$0, -4(%rbp)
	nop
.L16:
	endbr64
	.loc 1 154 10
	movl	-4(%rbp), %eax
	.loc 1 155 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	EApiWDogStopEmul, .-EApiWDogStopEmul
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
	.long	0x2c6
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
	.uleb128 0xa
	.long	.LASF25
	.byte	0x1
	.byte	0x33
	.byte	0x11
	.long	0x3b
	.uleb128 0x9
	.byte	0x3
	.quad	WatchdogState
	.uleb128 0xb
	.long	.LASF27
	.byte	0x1
	.byte	0x90
	.byte	0x1
	.long	0x13f
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a3
	.uleb128 0xa
	.long	.LASF26
	.byte	0x1
	.byte	0x92
	.byte	0x10
	.long	0x13f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.long	.LASF29
	.byte	0x1
	.byte	0x98
	.byte	0x1
	.quad	.L16
	.byte	0
	.uleb128 0xb
	.long	.LASF28
	.byte	0x1
	.byte	0x7d
	.byte	0x1
	.long	0x13f
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e5
	.uleb128 0xa
	.long	.LASF26
	.byte	0x1
	.byte	0x7f
	.byte	0x10
	.long	0x13f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.long	.LASF29
	.byte	0x1
	.byte	0x8b
	.byte	0x1
	.quad	.L13
	.byte	0
	.uleb128 0xb
	.long	.LASF30
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.long	0x13f
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x254
	.uleb128 0xd
	.long	.LASF31
	.byte	0x1
	.byte	0x57
	.byte	0x14
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.long	.LASF32
	.byte	0x1
	.byte	0x58
	.byte	0x14
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.long	.LASF33
	.byte	0x1
	.byte	0x5b
	.byte	0x14
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xa
	.long	.LASF26
	.byte	0x1
	.byte	0x60
	.byte	0x10
	.long	0x13f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.long	.LASF29
	.byte	0x1
	.byte	0x78
	.byte	0x1
	.quad	.L6
	.byte	0
	.uleb128 0xb
	.long	.LASF34
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.long	0x13f
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c3
	.uleb128 0xd
	.long	.LASF35
	.byte	0x1
	.byte	0x3d
	.byte	0x18
	.long	0x2c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.long	.LASF36
	.byte	0x1
	.byte	0x40
	.byte	0x18
	.long	0x2c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xd
	.long	.LASF37
	.byte	0x1
	.byte	0x45
	.byte	0x18
	.long	0x2c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xa
	.long	.LASF26
	.byte	0x1
	.byte	0x4b
	.byte	0x10
	.long	0x13f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.long	.LASF29
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.quad	.L2
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x8c
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
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
.LASF21:
	.string	"tzname"
.LASF24:
	.string	"EApiStatus_t"
.LASF19:
	.string	"__daylight"
.LASF12:
	.string	"uintptr_t"
.LASF2:
	.string	"long int"
.LASF23:
	.string	"timezone"
.LASF29:
	.string	"ExitPoint"
.LASF16:
	.string	"opterr"
.LASF25:
	.string	"WatchdogState"
.LASF13:
	.string	"__environ"
.LASF37:
	.string	"pMaxResetTimeout"
.LASF4:
	.string	"unsigned char"
.LASF15:
	.string	"optind"
.LASF5:
	.string	"short unsigned int"
.LASF33:
	.string	"ResetTimeout"
.LASF39:
	.string	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EApiEmulWDT.c"
.LASF0:
	.string	"long unsigned int"
.LASF31:
	.string	"Delay"
.LASF10:
	.string	"__uint32_t"
.LASF34:
	.string	"EApiWDogGetCapEmul"
.LASF40:
	.string	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux"
.LASF1:
	.string	"unsigned int"
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
.LASF27:
	.string	"EApiWDogStopEmul"
.LASF20:
	.string	"__timezone"
.LASF35:
	.string	"pMaxDelay"
.LASF30:
	.string	"EApiWDogStartEmul"
.LASF3:
	.string	"long long int"
.LASF36:
	.string	"pMaxEventTimeout"
.LASF8:
	.string	"char"
.LASF38:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fvisibility=hidden -fPIC -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF28:
	.string	"EApiWDogTriggerEmul"
.LASF7:
	.string	"short int"
.LASF11:
	.string	"uint32_t"
.LASF32:
	.string	"EventTimeout"
.LASF6:
	.string	"signed char"
.LASF26:
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
