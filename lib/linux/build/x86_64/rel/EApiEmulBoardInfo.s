	.file	"EApiEmulBoardInfo.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"PICMG"
.LC1:
	.string	"PICMGR2.0"
.LC2:
	.string	"SAMPLE API"
.LC3:
	.string	"Sample Serial Number"
.LC4:
	.string	"COMExpress"
.LC5:
	.string	"%s\n"
.LC6:
	.string	"EApiBoardGetStringAEmul"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC7:
	.string	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EApiEmulBoardInfo.c"
	.section	.rodata.str1.1
.LC8:
	.string	"Unrecognised String ID"
.LC9:
	.string	"pBuffer Overrun Prevented"
.LC10:
	.string	""
	.text
	.p2align 4
	.globl	EApiBoardGetStringAEmul
	.hidden	EApiBoardGetStringAEmul
	.type	EApiBoardGetStringAEmul, @function
EApiBoardGetStringAEmul:
.LFB66:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	%rsi, %rax
	testl	%edi, %edi
	je	.L15
	cmpl	$1, %edi
	je	.L16
	cmpl	$3, %edi
	je	.L17
	cmpl	$4, %edi
	je	.L18
	cmpl	$6, %edi
	je	.L19
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	movl	$-769, %r8d
	leaq	.LC8(%rip), %rax
	movl	$69, %edi
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC5(%rip), %r9
	xorl	%eax, %eax
	movl	$121, %ecx
	leaq	.LC6(%rip), %rdx
	leaq	.LC7(%rip), %rsi
	call	siFormattedMessage_SC@PLT
	popq	%rdi
	.cfi_def_cfa_offset 24
	movl	$-769, %eax
	popq	%r8
	.cfi_def_cfa_offset 16
.L1:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L15:
	.cfi_restore_state
	movl	$5, %r9d
	movl	$6, %edi
	movl	$6, %ecx
	leaq	.LC0(%rip), %rsi
.L2:
	movl	(%rdx), %r8d
	testq	%rax, %rax
	movl	%ecx, (%rdx)
	setne	%dl
	cmpl	%ecx, %r8d
	jnb	.L36
	testl	%r8d, %r8d
	je	.L8
	testb	%dl, %dl
	je	.L8
	leal	-1(%r8), %edx
	movl	%r8d, %ecx
	movq	%rax, %rdi
	rep movsb
	movb	$0, (%rax,%rdx)
.L8:
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	leaq	.LC9(%rip), %rax
	movl	$109, %ecx
	movl	$-1537, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC7(%rip), %rsi
	xorl	%eax, %eax
	leaq	.LC5(%rip), %r9
	leaq	.LC6(%rip), %rdx
	movl	$69, %edi
	call	siFormattedMessage_SC@PLT
	popq	%rcx
	.cfi_def_cfa_offset 24
	movl	$-1537, %eax
	popq	%rsi
	.cfi_def_cfa_offset 16
	jmp	.L1
	.p2align 4,,10
	.p2align 3
.L36:
	testq	%rax, %rax
	jne	.L37
.L7:
.L3:
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	xorl	%r8d, %r8d
	movl	$115, %ecx
	movl	$76, %edi
	leaq	.LC10(%rip), %rax
	leaq	.LC6(%rip), %rdx
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC5(%rip), %r9
	leaq	.LC7(%rip), %rsi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rax
	.cfi_def_cfa_offset 24
	popq	%rdx
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L16:
	.cfi_restore_state
	movl	$10, %r9d
	movl	$11, %edi
	movl	$11, %ecx
	leaq	.LC2(%rip), %rsi
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L17:
	movl	$20, %r9d
	movl	$21, %edi
	movl	$21, %ecx
	leaq	.LC3(%rip), %rsi
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L18:
	movl	$9, %r9d
	movl	$10, %edi
	movl	$10, %ecx
	leaq	.LC1(%rip), %rsi
	jmp	.L2
.L19:
	movl	$10, %r9d
	movl	$11, %edi
	movl	$11, %ecx
	leaq	.LC4(%rip), %rsi
	jmp	.L2
.L37:
	movl	%edi, %edx
	cmpl	$8, %edi
	jnb	.L9
	andl	$4, %edi
	jne	.L38
	testl	%edx, %edx
	je	.L10
	movzbl	(%rsi), %ecx
	movb	%cl, (%rax)
	testb	$2, %dl
	jne	.L39
.L10:
	movb	$0, (%rax,%r9)
	jmp	.L7
.L9:
	movq	(%rsi), %rdx
	leaq	8(%rax), %r8
	andq	$-8, %r8
	movq	%rdx, (%rax)
	movq	-8(%rsi,%rdi), %rdx
	movq	%rdx, -8(%rax,%rdi)
	movq	%rax, %rdx
	subq	%r8, %rdx
	subq	%rdx, %rsi
	addl	%edi, %edx
	andl	$-8, %edx
	cmpl	$8, %edx
	jb	.L10
	andl	$-8, %edx
	xorl	%ecx, %ecx
.L13:
	movl	%ecx, %edi
	addl	$8, %ecx
	movq	(%rsi,%rdi), %r10
	movq	%r10, (%r8,%rdi)
	cmpl	%edx, %ecx
	jb	.L13
	jmp	.L10
.L38:
	movl	(%rsi), %ecx
	movl	%ecx, (%rax)
	movl	-4(%rsi,%rdx), %ecx
	movl	%ecx, -4(%rax,%rdx)
	jmp	.L10
.L39:
	movzwl	-2(%rsi,%rdx), %ecx
	movw	%cx, -2(%rax,%rdx)
	jmp	.L10
	.cfi_endproc
.LFE66:
	.size	EApiBoardGetStringAEmul, .-EApiBoardGetStringAEmul
	.section	.rodata.str1.1
.LC11:
	.string	"EApiBoardGetValueEmul"
.LC12:
	.string	"Unrecognised Value ID"
	.text
	.p2align 4
	.globl	EApiBoardGetValueEmul
	.hidden	EApiBoardGetValueEmul
	.type	EApiBoardGetValueEmul, @function
EApiBoardGetValueEmul:
.LFB67:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	leaq	ValueLookup(%rip), %rdx
	.p2align 4,,10
	.p2align 3
.L43:
	movl	%eax, %ecx
	cmpl	%edi, (%rdx,%rax,8)
	je	.L46
	addq	$1, %rax
	cmpq	$18, %rax
	jne	.L43
.L42:
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	leaq	.LC12(%rip), %rax
	leaq	.LC11(%rip), %rdx
	movl	$-769, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC5(%rip), %r9
	xorl	%eax, %eax
	movl	$195, %ecx
	leaq	.LC7(%rip), %rsi
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
	.p2align 4,,10
	.p2align 3
.L46:
	.cfi_restore_state
	movl	4(%rdx,%rcx,8), %eax
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	movl	$192, %ecx
	xorl	%r8d, %r8d
	leaq	.LC5(%rip), %r9
	leaq	.LC11(%rip), %rdx
	movl	$76, %edi
	movl	%eax, (%rsi)
	leaq	.LC10(%rip), %rax
	leaq	.LC7(%rip), %rsi
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
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE67:
	.size	EApiBoardGetValueEmul, .-EApiBoardGetValueEmul
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
	.hidden	StringLookup
	.globl	StringLookup
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
	.quad	.LC2
	.long	3
	.zero	4
	.quad	.LC3
	.long	4
	.zero	4
	.quad	.LC1
	.long	6
	.zero	4
	.quad	.LC4
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
