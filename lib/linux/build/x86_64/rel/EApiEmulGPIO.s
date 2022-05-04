	.file	"EApiEmulGPIO.c"
	.text
	.p2align 4
	.globl	EApiReadIO32Delay
	.hidden	EApiReadIO32Delay
	.type	EApiReadIO32Delay, @function
EApiReadIO32Delay:
.LFB69:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%edi, %ebx
	movl	$1400, %edi
	call	EApiSleepns@PLT
	leal	4(%rbx), %edx
	xorl	%eax, %eax
	cmpl	$16, %edx
	ja	.L1
	leaq	EmulatedIoBlock(%rip), %rax
	movl	(%rax,%rbx), %eax
.L1:
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE69:
	.size	EApiReadIO32Delay, .-EApiReadIO32Delay
	.p2align 4
	.globl	EApiWriteIO32Delay
	.hidden	EApiWriteIO32Delay
	.type	EApiWriteIO32Delay, @function
EApiWriteIO32Delay:
.LFB68:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%esi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	%edi, %ebx
	movl	$1400, %edi
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	EApiSleepns@PLT
	leal	4(%rbx), %eax
	cmpl	$16, %eax
	ja	.L7
	leaq	EmulatedIoBlock(%rip), %rax
	movl	%ebp, (%rax,%rbx)
.L7:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE68:
	.size	EApiWriteIO32Delay, .-EApiWriteIO32Delay
	.p2align 4
	.globl	EApiReadIO32
	.hidden	EApiReadIO32
	.type	EApiReadIO32, @function
EApiReadIO32:
.LFB66:
	.cfi_startproc
	endbr64
	leal	4(%rdi), %edx
	xorl	%eax, %eax
	cmpl	$16, %edx
	ja	.L10
	movl	%edi, %edi
	leaq	EmulatedIoBlock(%rip), %rax
	movl	(%rax,%rdi), %eax
.L10:
	ret
	.cfi_endproc
.LFE66:
	.size	EApiReadIO32, .-EApiReadIO32
	.p2align 4
	.globl	EApiWriteIO32
	.hidden	EApiWriteIO32
	.type	EApiWriteIO32, @function
EApiWriteIO32:
.LFB67:
	.cfi_startproc
	endbr64
	leal	4(%rdi), %eax
	cmpl	$16, %eax
	ja	.L13
	movl	%edi, %edi
	leaq	EmulatedIoBlock(%rip), %rax
	movl	%esi, (%rax,%rdi)
.L13:
	ret
	.cfi_endproc
.LFE67:
	.size	EApiWriteIO32, .-EApiWriteIO32
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%s\n"
.LC1:
	.string	"EApiGPIOGetLevelEmul"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EApiEmulGPIO.c"
	.section	.rodata.str1.1
.LC3:
	.string	"Bit-mask Selects Invalid Bits"
.LC4:
	.string	"EApiGPIOGetLevel"
.LC5:
	.string	""
.LC6:
	.string	"Unrecognised GPIO ID"
	.text
	.p2align 4
	.globl	EApiGPIOGetLevelEmul
	.hidden	EApiGPIOGetLevelEmul
	.type	EApiGPIOGetLevelEmul, @function
EApiGPIOGetLevelEmul:
.LFB70:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%esi, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	cmpl	$65536, %edi
	je	.L28
	cmpl	$4, %edi
	je	.L29
	cmpl	$5, %edi
	je	.L30
	cmpl	$6, %edi
	je	.L31
	cmpl	$7, %edi
	je	.L32
	testl	%edi, %edi
	je	.L33
	cmpl	$1, %edi
	je	.L34
	cmpl	$2, %edi
	je	.L35
	movl	$8, %eax
	cmpl	$3, %edi
	je	.L16
	subq	$8, %rsp
	.cfi_def_cfa_offset 88
	leaq	.LC6(%rip), %rax
	leaq	.LC4(%rip), %rdx
	movl	$-769, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 96
	leaq	.LC0(%rip), %r9
	xorl	%eax, %eax
	movl	$348, %ecx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$-769, %r12d
	call	siFormattedMessage_SC@PLT
	popq	%rax
	.cfi_def_cfa_offset 88
	popq	%rdx
	.cfi_def_cfa_offset 80
.L22:
	endbr64
.L15:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%r12d, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L35:
	.cfi_restore_state
	movl	$7, %eax
	.p2align 4,,10
	.p2align 3
.L16:
	leaq	(%rax,%rax,2), %rdx
	leaq	GPIOIDMapping(%rip), %rax
	leaq	(%rax,%rdx,8), %rax
	movl	16(%rax), %r12d
	orl	20(%rax), %r12d
	notl	%r12d
	andl	%r14d, %r12d
	jne	.L18
	movq	8(%rax), %rdx
	xorl	%ecx, %ecx
	cmpl	$-1, (%rdx)
	movq	%rdx, %rax
	je	.L23
	.p2align 4,,10
	.p2align 3
.L19:
	movq	8(%rax), %rax
	movl	$0, (%rax)
	leal	1(%rcx), %eax
	movq	%rax, %rcx
	salq	$4, %rax
	addq	%rdx, %rax
	cmpl	$-1, (%rax)
	jne	.L19
.L23:
	movl	$0, (%r15)
	movl	(%rdx), %eax
	xorl	%r13d, %r13d
	movq	%rdx, %rbx
	movl	$1, %ebp
	cmpl	$-1, %eax
	je	.L21
	.p2align 4,,10
	.p2align 3
.L20:
	testl	%ebp, %r14d
	je	.L25
	movq	8(%rbx), %rcx
	movl	(%rcx), %esi
	testl	%esi, %esi
	jne	.L26
	movq	%rdx, 8(%rsp)
	movl	12(%rcx), %edi
	movq	%rcx, (%rsp)
	call	*32(%rcx)
	movq	(%rsp), %rcx
	movq	8(%rsp), %rdx
	movl	%eax, 4(%rcx)
	movq	8(%rbx), %rcx
	movl	(%rbx), %eax
	movl	$1, (%rcx)
.L26:
	testl	%eax, 4(%rcx)
	je	.L25
	orl	%ebp, (%r15)
.L25:
	leal	1(%r13), %ebx
	addl	%ebp, %ebp
	movq	%rbx, %r13
	salq	$4, %rbx
	addq	%rdx, %rbx
	movl	(%rbx), %eax
	cmpl	$-1, %eax
	jne	.L20
.L21:
	subq	$8, %rsp
	.cfi_def_cfa_offset 88
	leaq	.LC5(%rip), %rax
	xorl	%r8d, %r8d
	movl	$76, %edi
	pushq	%rax
	.cfi_def_cfa_offset 96
	leaq	.LC0(%rip), %r9
	xorl	%eax, %eax
	movl	$345, %ecx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	call	siFormattedMessage_SC@PLT
	popq	%rdi
	.cfi_def_cfa_offset 88
	popq	%r8
	.cfi_def_cfa_offset 80
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L18:
	subq	$8, %rsp
	.cfi_def_cfa_offset 88
	movl	$320, %ecx
	movl	$69, %edi
	movl	$-261, %r8d
	leaq	.LC3(%rip), %rax
	leaq	.LC0(%rip), %r9
	movl	$-261, %r12d
	pushq	%rax
	.cfi_def_cfa_offset 96
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%r9
	.cfi_def_cfa_offset 88
	popq	%r10
	.cfi_def_cfa_offset 80
	jmp	.L15
.L28:
	xorl	%eax, %eax
	jmp	.L16
.L29:
	movl	$1, %eax
	jmp	.L16
.L30:
	movl	$2, %eax
	jmp	.L16
.L31:
	movl	$3, %eax
	jmp	.L16
.L32:
	movl	$4, %eax
	jmp	.L16
.L33:
	movl	$5, %eax
	jmp	.L16
.L34:
	movl	$6, %eax
	jmp	.L16
	.cfi_endproc
.LFE70:
	.size	EApiGPIOGetLevelEmul, .-EApiGPIOGetLevelEmul
	.section	.rodata.str1.1
.LC7:
	.string	"EApiGPIOSetLevel"
.LC8:
	.string	"EApiGPIOSetLevelEmul"
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"Cant Set Level on Pin that is set to input"
	.text
	.p2align 4
	.globl	EApiGPIOSetLevelEmul
	.hidden	EApiGPIOSetLevelEmul
	.type	EApiGPIOSetLevelEmul, @function
EApiGPIOSetLevelEmul:
.LFB71:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	%esi, %r15d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	cmpl	$65536, %edi
	je	.L61
	cmpl	$4, %edi
	je	.L62
	cmpl	$5, %edi
	je	.L63
	cmpl	$6, %edi
	je	.L64
	cmpl	$7, %edi
	je	.L65
	testl	%edi, %edi
	je	.L66
	cmpl	$1, %edi
	je	.L67
	cmpl	$2, %edi
	je	.L68
	movl	$8, %eax
	cmpl	$3, %edi
	je	.L47
	subq	$8, %rsp
	.cfi_def_cfa_offset 88
	leaq	.LC6(%rip), %rax
	leaq	.LC7(%rip), %rdx
	movl	$-769, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 96
	leaq	.LC0(%rip), %r9
	xorl	%eax, %eax
	movl	$423, %ecx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$-769, %r12d
	call	siFormattedMessage_SC@PLT
	popq	%rax
	.cfi_def_cfa_offset 88
	popq	%rdx
	.cfi_def_cfa_offset 80
.L51:
	endbr64
.L46:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%r12d, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L68:
	.cfi_restore_state
	movl	$7, %eax
	.p2align 4,,10
	.p2align 3
.L47:
	leaq	(%rax,%rax,2), %rcx
	leaq	GPIOIDMapping(%rip), %rax
	leaq	(%rax,%rcx,8), %rax
	movl	16(%rax), %r12d
	orl	20(%rax), %r12d
	notl	%r12d
	andl	%r15d, %r12d
	jne	.L49
	movq	8(%rax), %r13
	xorl	%esi, %esi
	movl	0(%r13), %ecx
	movq	%r13, %rax
	cmpl	$-1, %ecx
	je	.L57
	.p2align 4,,10
	.p2align 3
.L50:
	movq	8(%rax), %rax
	movl	$0, (%rax)
	leal	1(%rsi), %eax
	movq	%rax, %rsi
	salq	$4, %rax
	addq	%r13, %rax
	cmpl	$-1, (%rax)
	jne	.L50
	xorl	%esi, %esi
	movq	%r13, %rbx
	movl	$1, %r14d
	.p2align 4,,10
	.p2align 3
.L56:
	testl	%r14d, %r15d
	je	.L52
	movq	8(%rbx), %rbp
	movl	0(%rbp), %edi
	testl	%edi, %edi
	jne	.L53
	movl	%edx, 12(%rsp)
	movl	12(%rbp), %edi
	movl	%esi, 8(%rsp)
	call	*32(%rbp)
	movl	%eax, 4(%rbp)
	movq	8(%rbx), %rbp
	movl	16(%rbp), %edi
	call	*32(%rbp)
	movl	(%rbx), %ecx
	movl	12(%rsp), %edx
	movl	%eax, 8(%rbp)
	movq	8(%rbx), %rbp
	movl	8(%rsp), %esi
	movl	$1, 0(%rbp)
.L53:
	testl	%ecx, 8(%rbp)
	jne	.L78
	movl	4(%rbp), %eax
	movl	%ecx, %edi
	notl	%edi
	andl	%eax, %edi
	orl	%eax, %ecx
	testl	%r14d, %edx
	movl	%edi, %eax
	cmovne	%ecx, %eax
	movl	%eax, 4(%rbp)
.L52:
	leal	1(%rsi), %ebx
	addl	%r14d, %r14d
	movq	%rbx, %rsi
	salq	$4, %rbx
	addq	%r13, %rbx
	movl	(%rbx), %ecx
	cmpl	$-1, %ecx
	jne	.L56
	cmpl	$-1, 0(%r13)
	je	.L57
	xorl	%ebp, %ebp
	movq	%r13, %rbx
	.p2align 4,,10
	.p2align 3
.L60:
	movq	8(%rbx), %rax
	cmpl	$1, (%rax)
	jne	.L58
	movl	4(%rax), %esi
	movl	12(%rax), %edi
	call	*24(%rax)
	movq	8(%rbx), %rax
	movl	$0, (%rax)
.L58:
	leal	1(%rbp), %ebx
	movq	%rbx, %rbp
	salq	$4, %rbx
	addq	%r13, %rbx
	cmpl	$-1, (%rbx)
	jne	.L60
.L57:
	subq	$8, %rsp
	.cfi_def_cfa_offset 88
	xorl	%r8d, %r8d
	movl	$420, %ecx
	movl	$76, %edi
	leaq	.LC5(%rip), %rax
	leaq	.LC0(%rip), %r9
	pushq	%rax
	.cfi_def_cfa_offset 96
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%r10
	.cfi_def_cfa_offset 88
	popq	%r11
	.cfi_def_cfa_offset 80
	jmp	.L46
	.p2align 4,,10
	.p2align 3
.L78:
	subq	$8, %rsp
	.cfi_def_cfa_offset 88
	leaq	.LC9(%rip), %rax
	movl	$397, %ecx
	movl	$-257, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 96
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	leaq	.LC0(%rip), %r9
	leaq	.LC7(%rip), %rdx
	movl	$69, %edi
	movl	$-257, %r12d
	call	siFormattedMessage_SC@PLT
	popq	%rcx
	.cfi_def_cfa_offset 88
	popq	%rsi
	.cfi_def_cfa_offset 80
	jmp	.L46
.L61:
	xorl	%eax, %eax
	jmp	.L47
.L62:
	movl	$1, %eax
	jmp	.L47
.L63:
	movl	$2, %eax
	jmp	.L47
.L64:
	movl	$3, %eax
	jmp	.L47
.L65:
	movl	$4, %eax
	jmp	.L47
.L66:
	movl	$5, %eax
	jmp	.L47
.L49:
	subq	$8, %rsp
	.cfi_def_cfa_offset 88
	movl	$372, %ecx
	movl	$69, %edi
	movl	$-261, %r8d
	leaq	.LC3(%rip), %rax
	leaq	.LC0(%rip), %r9
	movl	$-261, %r12d
	pushq	%rax
	.cfi_def_cfa_offset 96
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%r8
	.cfi_def_cfa_offset 88
	popq	%r9
	.cfi_def_cfa_offset 80
	jmp	.L46
.L67:
	movl	$6, %eax
	jmp	.L47
	.cfi_endproc
.LFE71:
	.size	EApiGPIOSetLevelEmul, .-EApiGPIOSetLevelEmul
	.section	.rodata.str1.1
.LC10:
	.string	"EApiGPIOGetDirectionEmul"
.LC11:
	.string	"EApiGPIOGetDirection"
	.text
	.p2align 4
	.globl	EApiGPIOGetDirectionEmul
	.hidden	EApiGPIOGetDirectionEmul
	.type	EApiGPIOGetDirectionEmul, @function
EApiGPIOGetDirectionEmul:
.LFB72:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%esi, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	cmpl	$65536, %edi
	je	.L92
	cmpl	$4, %edi
	je	.L93
	cmpl	$5, %edi
	je	.L94
	cmpl	$6, %edi
	je	.L95
	cmpl	$7, %edi
	je	.L96
	testl	%edi, %edi
	je	.L97
	cmpl	$1, %edi
	je	.L98
	cmpl	$2, %edi
	je	.L99
	movl	$8, %eax
	cmpl	$3, %edi
	je	.L80
	subq	$8, %rsp
	.cfi_def_cfa_offset 88
	leaq	.LC6(%rip), %rax
	leaq	.LC11(%rip), %rdx
	movl	$-769, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 96
	leaq	.LC0(%rip), %r9
	xorl	%eax, %eax
	movl	$475, %ecx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$-769, %r12d
	call	siFormattedMessage_SC@PLT
	popq	%rax
	.cfi_def_cfa_offset 88
	popq	%rdx
	.cfi_def_cfa_offset 80
.L86:
	endbr64
.L79:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%r12d, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L99:
	.cfi_restore_state
	movl	$7, %eax
	.p2align 4,,10
	.p2align 3
.L80:
	leaq	(%rax,%rax,2), %rdx
	leaq	GPIOIDMapping(%rip), %rax
	leaq	(%rax,%rdx,8), %rax
	movl	16(%rax), %r12d
	orl	20(%rax), %r12d
	notl	%r12d
	andl	%r14d, %r12d
	jne	.L82
	movq	8(%rax), %rdx
	xorl	%ecx, %ecx
	cmpl	$-1, (%rdx)
	movq	%rdx, %rax
	je	.L87
	.p2align 4,,10
	.p2align 3
.L83:
	movq	8(%rax), %rax
	movl	$0, (%rax)
	leal	1(%rcx), %eax
	movq	%rax, %rcx
	salq	$4, %rax
	addq	%rdx, %rax
	cmpl	$-1, (%rax)
	jne	.L83
.L87:
	movl	$0, (%r15)
	movl	(%rdx), %eax
	xorl	%r13d, %r13d
	movq	%rdx, %rbx
	movl	$1, %ebp
	cmpl	$-1, %eax
	je	.L85
	.p2align 4,,10
	.p2align 3
.L84:
	testl	%ebp, %r14d
	je	.L89
	movq	8(%rbx), %rcx
	movl	(%rcx), %esi
	testl	%esi, %esi
	jne	.L90
	movq	%rdx, 8(%rsp)
	movl	16(%rcx), %edi
	movq	%rcx, (%rsp)
	call	*32(%rcx)
	movq	(%rsp), %rcx
	movq	8(%rsp), %rdx
	movl	%eax, 4(%rcx)
	movq	8(%rbx), %rcx
	movl	(%rbx), %eax
	movl	$1, (%rcx)
.L90:
	testl	%eax, 4(%rcx)
	je	.L89
	orl	%ebp, (%r15)
.L89:
	leal	1(%r13), %ebx
	addl	%ebp, %ebp
	movq	%rbx, %r13
	salq	$4, %rbx
	addq	%rdx, %rbx
	movl	(%rbx), %eax
	cmpl	$-1, %eax
	jne	.L84
.L85:
	subq	$8, %rsp
	.cfi_def_cfa_offset 88
	leaq	.LC5(%rip), %rax
	xorl	%r8d, %r8d
	movl	$76, %edi
	pushq	%rax
	.cfi_def_cfa_offset 96
	leaq	.LC0(%rip), %r9
	xorl	%eax, %eax
	movl	$472, %ecx
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	call	siFormattedMessage_SC@PLT
	popq	%rdi
	.cfi_def_cfa_offset 88
	popq	%r8
	.cfi_def_cfa_offset 80
	jmp	.L79
	.p2align 4,,10
	.p2align 3
.L82:
	subq	$8, %rsp
	.cfi_def_cfa_offset 88
	movl	$448, %ecx
	movl	$69, %edi
	movl	$-261, %r8d
	leaq	.LC3(%rip), %rax
	leaq	.LC0(%rip), %r9
	movl	$-261, %r12d
	pushq	%rax
	.cfi_def_cfa_offset 96
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%r9
	.cfi_def_cfa_offset 88
	popq	%r10
	.cfi_def_cfa_offset 80
	jmp	.L79
.L92:
	xorl	%eax, %eax
	jmp	.L80
.L93:
	movl	$1, %eax
	jmp	.L80
.L94:
	movl	$2, %eax
	jmp	.L80
.L95:
	movl	$3, %eax
	jmp	.L80
.L96:
	movl	$4, %eax
	jmp	.L80
.L97:
	movl	$5, %eax
	jmp	.L80
.L98:
	movl	$6, %eax
	jmp	.L80
	.cfi_endproc
.LFE72:
	.size	EApiGPIOGetDirectionEmul, .-EApiGPIOGetDirectionEmul
	.section	.rodata.str1.1
.LC12:
	.string	"EApiGPIOSetDirectionEmul"
.LC13:
	.string	"Unsupported Input Bits"
.LC14:
	.string	"EApiGPIOSetDirection"
.LC15:
	.string	"Unsupported Output Bits"
	.text
	.p2align 4
	.globl	EApiGPIOSetDirectionEmul
	.hidden	EApiGPIOSetDirectionEmul
	.type	EApiGPIOSetDirectionEmul, @function
EApiGPIOSetDirectionEmul:
.LFB73:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	%edx, %r15d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%esi, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	cmpl	$65536, %edi
	je	.L126
	cmpl	$4, %edi
	je	.L127
	cmpl	$5, %edi
	je	.L128
	cmpl	$6, %edi
	je	.L129
	cmpl	$7, %edi
	je	.L130
	testl	%edi, %edi
	je	.L131
	cmpl	$1, %edi
	je	.L132
	cmpl	$2, %edi
	je	.L133
	movl	$8, %eax
	cmpl	$3, %edi
	je	.L111
	subq	$8, %rsp
	.cfi_def_cfa_offset 88
	leaq	.LC6(%rip), %rax
	leaq	.LC14(%rip), %rdx
	movl	$-769, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 96
	leaq	.LC0(%rip), %r9
	xorl	%eax, %eax
	movl	$553, %ecx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$-769, %r12d
	call	siFormattedMessage_SC@PLT
	popq	%rax
	.cfi_def_cfa_offset 88
	popq	%rdx
	.cfi_def_cfa_offset 80
.L114:
	endbr64
.L110:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%r12d, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L133:
	.cfi_restore_state
	movl	$7, %eax
	.p2align 4,,10
	.p2align 3
.L111:
	leaq	(%rax,%rax,2), %rdx
	leaq	GPIOIDMapping(%rip), %rax
	leaq	(%rax,%rdx,8), %rsi
	movl	16(%rsi), %eax
	movl	20(%rsi), %edx
	movl	%eax, %ecx
	orl	%edx, %ecx
	notl	%ecx
	testl	%r14d, %ecx
	jne	.L144
	movl	%r14d, %ecx
	notl	%edx
	andl	%r15d, %ecx
	testl	%edx, %ecx
	jne	.L145
	movl	%r15d, %r12d
	notl	%eax
	notl	%r12d
	andl	%r14d, %r12d
	andl	%eax, %r12d
	jne	.L116
	movq	8(%rsi), %rbp
	xorl	%edx, %edx
	movl	0(%rbp), %ecx
	movq	%rbp, %rax
	cmpl	$-1, %ecx
	je	.L122
	.p2align 4,,10
	.p2align 3
.L117:
	movq	8(%rax), %rax
	movl	$0, (%rax)
	leal	1(%rdx), %eax
	movq	%rax, %rdx
	salq	$4, %rax
	addq	%rbp, %rax
	cmpl	$-1, (%rax)
	jne	.L117
	xorl	%edx, %edx
	movq	%rbp, %rbx
	movl	$1, %r13d
	.p2align 4,,10
	.p2align 3
.L121:
	testl	%r13d, %r14d
	je	.L118
	movq	8(%rbx), %rsi
	movl	(%rsi), %edi
	testl	%edi, %edi
	jne	.L119
	movl	%edx, 12(%rsp)
	movl	16(%rsi), %edi
	movq	%rsi, (%rsp)
	call	*32(%rsi)
	movq	(%rsp), %rsi
	movl	(%rbx), %ecx
	movl	12(%rsp), %edx
	movl	%eax, 4(%rsi)
	movq	8(%rbx), %rsi
	movl	$1, (%rsi)
.L119:
	movl	4(%rsi), %eax
	movl	%ecx, %edi
	notl	%edi
	andl	%eax, %edi
	orl	%eax, %ecx
	testl	%r13d, %r15d
	movl	%edi, %eax
	cmovne	%ecx, %eax
	movl	%eax, 4(%rsi)
.L118:
	leal	1(%rdx), %ebx
	addl	%r13d, %r13d
	movq	%rbx, %rdx
	salq	$4, %rbx
	addq	%rbp, %rbx
	movl	(%rbx), %ecx
	cmpl	$-1, %ecx
	jne	.L121
	cmpl	$-1, 0(%rbp)
	je	.L122
	xorl	%r13d, %r13d
	movq	%rbp, %rbx
	.p2align 4,,10
	.p2align 3
.L125:
	movq	8(%rbx), %rax
	cmpl	$1, (%rax)
	jne	.L123
	movl	4(%rax), %esi
	movl	16(%rax), %edi
	call	*24(%rax)
	movq	8(%rbx), %rax
	movl	$0, (%rax)
.L123:
	leal	1(%r13), %ebx
	movq	%rbx, %r13
	salq	$4, %rbx
	addq	%rbp, %rbx
	cmpl	$-1, (%rbx)
	jne	.L125
.L122:
	subq	$8, %rsp
	.cfi_def_cfa_offset 88
	xorl	%r8d, %r8d
	movl	$550, %ecx
	movl	$76, %edi
	leaq	.LC5(%rip), %rax
	leaq	.LC0(%rip), %r9
	pushq	%rax
	.cfi_def_cfa_offset 96
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%r10
	.cfi_def_cfa_offset 88
	popq	%r11
	.cfi_def_cfa_offset 80
	jmp	.L110
.L126:
	xorl	%eax, %eax
	jmp	.L111
.L116:
	subq	$8, %rsp
	.cfi_def_cfa_offset 88
	leaq	.LC15(%rip), %rax
	movl	$511, %ecx
	movl	$-260, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 96
	leaq	.LC0(%rip), %r9
.L143:
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	movl	$-260, %r12d
	popq	%r8
	.cfi_def_cfa_offset 88
	popq	%r9
	.cfi_def_cfa_offset 80
	jmp	.L110
.L127:
	movl	$1, %eax
	jmp	.L111
.L128:
	movl	$2, %eax
	jmp	.L111
.L129:
	movl	$3, %eax
	jmp	.L111
.L130:
	movl	$4, %eax
	jmp	.L111
.L131:
	movl	$5, %eax
	jmp	.L111
.L144:
	subq	$8, %rsp
	.cfi_def_cfa_offset 88
	movl	$499, %ecx
	movl	$69, %edi
	movl	$-261, %r8d
	leaq	.LC3(%rip), %rax
	leaq	.LC0(%rip), %r9
	movl	$-261, %r12d
	pushq	%rax
	.cfi_def_cfa_offset 96
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rbx
	.cfi_def_cfa_offset 88
	popq	%rbp
	.cfi_def_cfa_offset 80
	jmp	.L110
.L132:
	movl	$6, %eax
	jmp	.L111
.L145:
	subq	$8, %rsp
	.cfi_def_cfa_offset 88
	leaq	.LC13(%rip), %rax
	movl	$505, %ecx
	movl	$-260, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 96
	leaq	.LC0(%rip), %r9
	jmp	.L143
	.cfi_endproc
.LFE73:
	.size	EApiGPIOSetDirectionEmul, .-EApiGPIOSetDirectionEmul
	.section	.rodata.str1.1
.LC16:
	.string	"EApiGPIOGetDirectionCaps"
	.text
	.p2align 4
	.globl	EApiGPIOGetDirectionCapsEmul
	.hidden	EApiGPIOGetDirectionCapsEmul
	.type	EApiGPIOGetDirectionCapsEmul, @function
EApiGPIOGetDirectionCapsEmul:
.LFB74:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	cmpl	$65536, %edi
	je	.L150
	cmpl	$4, %edi
	je	.L151
	cmpl	$5, %edi
	je	.L152
	cmpl	$6, %edi
	je	.L153
	cmpl	$7, %edi
	je	.L154
	testl	%edi, %edi
	je	.L155
	cmpl	$1, %edi
	je	.L156
	cmpl	$2, %edi
	je	.L157
	movl	$8, %eax
	cmpl	$3, %edi
	je	.L147
.L149:
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	leaq	.LC6(%rip), %rax
	leaq	.LC16(%rip), %rdx
	movl	$-769, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC0(%rip), %r9
	xorl	%eax, %eax
	movl	$582, %ecx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	call	siFormattedMessage_SC@PLT
	popq	%rax
	.cfi_def_cfa_offset 24
	popq	%rdx
	.cfi_def_cfa_offset 16
	movl	$-769, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L157:
	.cfi_restore_state
	movl	$7, %eax
.L147:
	leaq	(%rax,%rax,2), %rcx
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	xorl	%r8d, %r8d
	movl	$76, %edi
	leaq	GPIOIDMapping(%rip), %rax
	leaq	.LC0(%rip), %r9
	leaq	(%rax,%rcx,8), %rax
	movl	20(%rax), %ecx
	movl	16(%rax), %eax
	movl	%ecx, (%rsi)
	movl	$579, %ecx
	leaq	.LC2(%rip), %rsi
	movl	%eax, (%rdx)
	leaq	.LC5(%rip), %rax
	leaq	.LC16(%rip), %rdx
	pushq	%rax
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rcx
	.cfi_def_cfa_offset 24
	popq	%rsi
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L150:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	.L147
.L151:
	movl	$1, %eax
	jmp	.L147
.L152:
	movl	$2, %eax
	jmp	.L147
.L153:
	movl	$3, %eax
	jmp	.L147
.L154:
	movl	$4, %eax
	jmp	.L147
.L155:
	movl	$5, %eax
	jmp	.L147
.L156:
	movl	$6, %eax
	jmp	.L147
	.cfi_endproc
.LFE74:
	.size	EApiGPIOGetDirectionCapsEmul, .-EApiGPIOGetDirectionCapsEmul
	.hidden	GPIOIDMapping
	.globl	GPIOIDMapping
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	GPIOIDMapping, @object
	.size	GPIOIDMapping, 216
GPIOIDMapping:
	.long	65536
	.zero	4
	.quad	GpioMappingID0
	.long	240
	.long	15
	.long	4
	.zero	4
	.quad	GpioMappingID1
	.long	0
	.long	1
	.long	5
	.zero	4
	.quad	GpioMappingID2
	.long	0
	.long	1
	.long	6
	.zero	4
	.quad	GpioMappingID3
	.long	0
	.long	1
	.long	7
	.zero	4
	.quad	GpioMappingID4
	.long	0
	.long	1
	.long	0
	.zero	4
	.quad	GpioMappingID5
	.long	1
	.long	0
	.long	1
	.zero	4
	.quad	GpioMappingID6
	.long	1
	.long	0
	.long	2
	.zero	4
	.quad	GpioMappingID7
	.long	1
	.long	0
	.long	3
	.zero	4
	.quad	GpioMappingID8
	.long	1
	.long	0
	.hidden	GpioMappingID8
	.globl	GpioMappingID8
	.align 32
	.type	GpioMappingID8, @object
	.size	GpioMappingID8, 32
GpioMappingID8:
	.long	1
	.zero	4
	.quad	Port1Desc
	.long	-1
	.zero	4
	.quad	0
	.hidden	GpioMappingID7
	.globl	GpioMappingID7
	.align 32
	.type	GpioMappingID7, @object
	.size	GpioMappingID7, 32
GpioMappingID7:
	.long	-2147483648
	.zero	4
	.quad	Port1Desc
	.long	-1
	.zero	4
	.quad	0
	.hidden	GpioMappingID6
	.globl	GpioMappingID6
	.align 32
	.type	GpioMappingID6, @object
	.size	GpioMappingID6, 32
GpioMappingID6:
	.long	64
	.zero	4
	.quad	Port1Desc
	.long	-1
	.zero	4
	.quad	0
	.hidden	GpioMappingID5
	.globl	GpioMappingID5
	.align 32
	.type	GpioMappingID5, @object
	.size	GpioMappingID5, 32
GpioMappingID5:
	.long	16
	.zero	4
	.quad	Port1Desc
	.long	-1
	.zero	4
	.quad	0
	.hidden	GpioMappingID4
	.globl	GpioMappingID4
	.align 32
	.type	GpioMappingID4, @object
	.size	GpioMappingID4, 32
GpioMappingID4:
	.long	131072
	.zero	4
	.quad	Port1Desc
	.long	-1
	.zero	4
	.quad	0
	.hidden	GpioMappingID3
	.globl	GpioMappingID3
	.align 32
	.type	GpioMappingID3, @object
	.size	GpioMappingID3, 32
GpioMappingID3:
	.long	8192
	.zero	4
	.quad	Port1Desc
	.long	-1
	.zero	4
	.quad	0
	.hidden	GpioMappingID2
	.globl	GpioMappingID2
	.align 32
	.type	GpioMappingID2, @object
	.size	GpioMappingID2, 32
GpioMappingID2:
	.long	32768
	.zero	4
	.quad	Port1Desc
	.long	-1
	.zero	4
	.quad	0
	.hidden	GpioMappingID1
	.globl	GpioMappingID1
	.align 32
	.type	GpioMappingID1, @object
	.size	GpioMappingID1, 32
GpioMappingID1:
	.long	8388608
	.zero	4
	.quad	Port1Desc
	.long	-1
	.zero	4
	.quad	0
	.hidden	GpioMappingID0
	.globl	GpioMappingID0
	.align 32
	.type	GpioMappingID0, @object
	.size	GpioMappingID0, 144
GpioMappingID0:
	.long	8388608
	.zero	4
	.quad	Port1Desc
	.long	32768
	.zero	4
	.quad	Port1Desc
	.long	8192
	.zero	4
	.quad	Port1Desc
	.long	131072
	.zero	4
	.quad	Port1Desc
	.long	16
	.zero	4
	.quad	Port1Desc
	.long	64
	.zero	4
	.quad	Port1Desc
	.long	-2147483648
	.zero	4
	.quad	Port1Desc
	.long	1
	.zero	4
	.quad	Port1Desc
	.long	-1
	.zero	4
	.quad	0
	.hidden	Port2Desc
	.globl	Port2Desc
	.section	.data.rel.local,"aw"
	.align 32
	.type	Port2Desc, @object
	.size	Port2Desc, 40
Port2Desc:
	.long	0
	.long	0
	.long	0
	.long	12
	.long	8
	.zero	4
	.quad	EApiWriteIO32Delay
	.quad	EApiReadIO32Delay
	.hidden	Port1Desc
	.globl	Port1Desc
	.align 32
	.type	Port1Desc, @object
	.size	Port1Desc, 40
Port1Desc:
	.long	0
	.long	0
	.long	0
	.long	4
	.long	0
	.zero	4
	.quad	EApiWriteIO32Delay
	.quad	EApiReadIO32Delay
	.data
	.align 16
	.type	EmulatedIoBlock, @object
	.size	EmulatedIoBlock, 16
EmulatedIoBlock:
	.long	8560640
	.long	8519680
	.long	8560640
	.long	8519680
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
