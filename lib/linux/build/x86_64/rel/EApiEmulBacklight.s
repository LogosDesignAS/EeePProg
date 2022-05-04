	.file	"EApiEmulBacklight.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%s\n"
.LC1:
	.string	"EApiVgaGetBacklightEnableEmul"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EApiEmulBacklight.c"
	.section	.rodata.str1.1
.LC3:
	.string	"Unrecognised Backlight ID"
.LC4:
	.string	""
	.text
	.p2align 4
	.globl	EApiVgaGetBacklightEnableEmul
	.hidden	EApiVgaGetBacklightEnableEmul
	.type	EApiVgaGetBacklightEnableEmul, @function
EApiVgaGetBacklightEnableEmul:
.LFB66:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	cmpl	BacklightLookup(%rip), %edi
	je	.L4
	cmpl	12+BacklightLookup(%rip), %edi
	je	.L5
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	leaq	.LC3(%rip), %rax
	movl	$79, %ecx
	movl	$-769, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	leaq	.LC0(%rip), %r9
	leaq	.LC1(%rip), %rdx
	movl	$69, %edi
	call	siFormattedMessage_SC@PLT
	popq	%rcx
	.cfi_def_cfa_offset 24
	movl	$-769, %eax
	popq	%rsi
	.cfi_def_cfa_offset 16
.L1:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	.cfi_restore_state
	xorl	%eax, %eax
.L2:
.L3:
	endbr64
	leaq	(%rax,%rax), %rdx
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	xorl	%r8d, %r8d
	movl	$73, %ecx
	addq	%rdx, %rax
	leaq	BacklightLookup(%rip), %rdx
	leaq	.LC0(%rip), %r9
	movl	$76, %edi
	movl	4(%rdx,%rax,4), %eax
	leaq	.LC1(%rip), %rdx
	movl	%eax, (%rsi)
	leaq	.LC4(%rip), %rax
	leaq	.LC2(%rip), %rsi
	pushq	%rax
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rax
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rdx
	.cfi_def_cfa_offset 16
	jmp	.L1
	.p2align 4,,10
	.p2align 3
.L5:
	movl	$1, %eax
	jmp	.L2
	.cfi_endproc
.LFE66:
	.size	EApiVgaGetBacklightEnableEmul, .-EApiVgaGetBacklightEnableEmul
	.section	.rodata.str1.1
.LC5:
	.string	"EApiVgaSetBacklightEnableEmul"
	.text
	.p2align 4
	.globl	EApiVgaSetBacklightEnableEmul
	.hidden	EApiVgaSetBacklightEnableEmul
	.type	EApiVgaSetBacklightEnableEmul, @function
EApiVgaSetBacklightEnableEmul:
.LFB67:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	cmpl	BacklightLookup(%rip), %edi
	je	.L11
	cmpl	12+BacklightLookup(%rip), %edi
	je	.L12
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	leaq	.LC3(%rip), %rax
	movl	$109, %ecx
	movl	$-769, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	leaq	.LC0(%rip), %r9
	leaq	.LC5(%rip), %rdx
	movl	$69, %edi
	call	siFormattedMessage_SC@PLT
	popq	%rcx
	.cfi_def_cfa_offset 24
	movl	$-769, %eax
	popq	%rsi
	.cfi_def_cfa_offset 16
.L8:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L11:
	.cfi_restore_state
	xorl	%eax, %eax
.L9:
.L10:
	endbr64
	leaq	(%rax,%rax), %rdx
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	xorl	%r8d, %r8d
	movl	$103, %ecx
	addq	%rdx, %rax
	leaq	BacklightLookup(%rip), %rdx
	leaq	.LC0(%rip), %r9
	movl	$76, %edi
	movl	%esi, 4(%rdx,%rax,4)
	leaq	.LC4(%rip), %rax
	leaq	.LC5(%rip), %rdx
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rax
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rdx
	.cfi_def_cfa_offset 16
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L12:
	movl	$1, %eax
	jmp	.L9
	.cfi_endproc
.LFE67:
	.size	EApiVgaSetBacklightEnableEmul, .-EApiVgaSetBacklightEnableEmul
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"EApiVgaGetBacklightBrightnessEmul"
	.text
	.p2align 4
	.globl	EApiVgaGetBacklightBrightnessEmul
	.hidden	EApiVgaGetBacklightBrightnessEmul
	.type	EApiVgaGetBacklightBrightnessEmul, @function
EApiVgaGetBacklightBrightnessEmul:
.LFB68:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	cmpl	BacklightLookup(%rip), %edi
	je	.L17
	cmpl	12+BacklightLookup(%rip), %edi
	je	.L18
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	leaq	.LC3(%rip), %rax
	movl	$138, %ecx
	movl	$-769, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	leaq	.LC0(%rip), %r9
	leaq	.LC6(%rip), %rdx
	movl	$69, %edi
	call	siFormattedMessage_SC@PLT
	popq	%rcx
	.cfi_def_cfa_offset 24
	movl	$-769, %eax
	popq	%rsi
	.cfi_def_cfa_offset 16
.L14:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L17:
	.cfi_restore_state
	xorl	%eax, %eax
.L15:
.L16:
	endbr64
	leaq	(%rax,%rax), %rdx
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	xorl	%r8d, %r8d
	movl	$132, %ecx
	addq	%rdx, %rax
	leaq	BacklightLookup(%rip), %rdx
	leaq	.LC0(%rip), %r9
	movl	$76, %edi
	movl	8(%rdx,%rax,4), %eax
	leaq	.LC6(%rip), %rdx
	movl	%eax, (%rsi)
	leaq	.LC4(%rip), %rax
	leaq	.LC2(%rip), %rsi
	pushq	%rax
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rax
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rdx
	.cfi_def_cfa_offset 16
	jmp	.L14
	.p2align 4,,10
	.p2align 3
.L18:
	movl	$1, %eax
	jmp	.L15
	.cfi_endproc
.LFE68:
	.size	EApiVgaGetBacklightBrightnessEmul, .-EApiVgaGetBacklightBrightnessEmul
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"EApiVgaSetBacklightBrightnessEmul"
	.section	.rodata.str1.1
.LC8:
	.string	"EApiVgaSetBacklightBrightness"
	.text
	.p2align 4
	.globl	EApiVgaSetBacklightBrightnessEmul
	.hidden	EApiVgaSetBacklightBrightnessEmul
	.type	EApiVgaSetBacklightBrightnessEmul, @function
EApiVgaSetBacklightBrightnessEmul:
.LFB69:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	cmpl	BacklightLookup(%rip), %edi
	je	.L23
	cmpl	12+BacklightLookup(%rip), %edi
	je	.L24
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	leaq	.LC3(%rip), %rax
	movl	$168, %ecx
	movl	$-769, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	leaq	.LC0(%rip), %r9
	leaq	.LC7(%rip), %rdx
	movl	$69, %edi
	call	siFormattedMessage_SC@PLT
	popq	%rcx
	.cfi_def_cfa_offset 24
	movl	$-769, %eax
	popq	%rsi
	.cfi_def_cfa_offset 16
.L20:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L23:
	.cfi_restore_state
	xorl	%eax, %eax
.L21:
.L22:
	endbr64
	leaq	(%rax,%rax), %rdx
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	xorl	%r8d, %r8d
	movl	$162, %ecx
	addq	%rdx, %rax
	leaq	BacklightLookup(%rip), %rdx
	leaq	.LC0(%rip), %r9
	movl	$76, %edi
	movl	%esi, 8(%rdx,%rax,4)
	leaq	.LC4(%rip), %rax
	leaq	.LC8(%rip), %rdx
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rax
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rdx
	.cfi_def_cfa_offset 16
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L24:
	movl	$1, %eax
	jmp	.L21
	.cfi_endproc
.LFE69:
	.size	EApiVgaSetBacklightBrightnessEmul, .-EApiVgaSetBacklightBrightnessEmul
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
