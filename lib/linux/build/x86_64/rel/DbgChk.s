	.file	"DbgChk.c"
	.text
	.p2align 4
	.globl	EApiGetErrorStringA
	.hidden	EApiGetErrorStringA
	.type	EApiGetErrorStringA, @function
EApiGetErrorStringA:
.LFB89:
	.cfi_startproc
	endbr64
	leaq	ErrorLookupA(%rip), %rax
	movq	$0, (%rdi)
	leaq	304(%rax), %rdx
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L2:
	addq	$16, %rax
	cmpq	%rdx, %rax
	je	.L7
.L4:
	cmpl	%esi, (%rax)
	jne	.L2
	movq	8(%rax), %rax
	movq	%rax, (%rdi)
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	movl	$-3841, %eax
	ret
	.cfi_endproc
.LFE89:
	.size	EApiGetErrorStringA, .-EApiGetErrorStringA
	.p2align 4
	.globl	GetLastOccurance
	.hidden	GetLastOccurance
	.type	GetLastOccurance, @function
GetLastOccurance:
.LFB90:
	.cfi_startproc
	endbr64
	movzbl	(%rdi), %eax
	movq	%rdi, %r8
	testb	%al, %al
	jne	.L11
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L15:
	cmpb	$92, %al
	movzbl	(%rdi), %eax
	cmove	%rdi, %r8
	testb	%al, %al
	je	.L8
.L11:
	addq	$1, %rdi
	cmpb	$47, %al
	jne	.L15
	movzbl	(%rdi), %eax
	movq	%rdi, %r8
	testb	%al, %al
	jne	.L11
.L8:
	movq	%r8, %rax
	ret
	.cfi_endproc
.LFE90:
	.size	GetLastOccurance, .-GetLastOccurance
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%-25s | "
	.text
	.p2align 4
	.globl	siFormattedMessage_M2
	.hidden	siFormattedMessage_M2
	.type	siFormattedMessage_M2, @function
siFormattedMessage_M2:
.LFB91:
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movl	%ecx, %r10d
	movq	%r8, %r13
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%r9, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$216, %rsp
	.cfi_def_cfa_offset 256
	testb	%al, %al
	je	.L17
	movaps	%xmm0, 80(%rsp)
	movaps	%xmm1, 96(%rsp)
	movaps	%xmm2, 112(%rsp)
	movaps	%xmm3, 128(%rsp)
	movaps	%xmm4, 144(%rsp)
	movaps	%xmm5, 160(%rsp)
	movaps	%xmm6, 176(%rsp)
	movaps	%xmm7, 192(%rsp)
.L17:
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	leaq	256(%rsp), %rax
	movq	%rsi, %r9
	movl	$48, (%rsp)
	movq	%rax, 8(%rsp)
	leaq	32(%rsp), %rax
	movq	%rax, 16(%rsp)
	movzbl	(%rsi), %eax
	movl	$48, 4(%rsp)
	testb	%al, %al
	jne	.L20
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L26:
	cmpb	$92, %al
	movzbl	(%rsi), %eax
	cmove	%rsi, %r9
	testb	%al, %al
	je	.L18
.L20:
	addq	$1, %rsi
	cmpb	$47, %al
	jne	.L26
	movzbl	(%rsi), %eax
	movq	%rsi, %r9
	testb	%al, %al
	jne	.L20
	.p2align 4,,10
	.p2align 3
.L18:
	subq	$8, %rsp
	.cfi_def_cfa_offset 264
	movq	OutputStream@GOTPCREL(%rip), %rbp
	movl	%r10d, %r8d
	xorl	%eax, %eax
	pushq	%rdx
	.cfi_def_cfa_offset 272
	movsbl	%dil, %ecx
	leaq	cszLogFormat(%rip), %rdx
	movl	$1, %esi
	movq	0(%rbp), %rdi
	call	__fprintf_chk@PLT
	movq	0(%rbp), %rdi
	movq	%r13, %rcx
	leaq	.LC0(%rip), %rdx
	movl	%eax, %ebx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	movq	0(%rbp), %rdi
	leaq	16(%rsp), %rcx
	movq	%r12, %rdx
	movl	$1, %esi
	call	__vfprintf_chk@PLT
	popq	%rdx
	.cfi_def_cfa_offset 264
	popq	%rcx
	.cfi_def_cfa_offset 256
	addl	%ebx, %eax
	movq	24(%rsp), %rbx
	xorq	%fs:40, %rbx
	jne	.L27
	addq	$216, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L27:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE91:
	.size	siFormattedMessage_M2, .-siFormattedMessage_M2
	.section	.rodata.str1.1
.LC1:
	.string	"               0x%08X | "
	.text
	.p2align 4
	.globl	siFormattedMessage_SC
	.hidden	siFormattedMessage_SC
	.type	siFormattedMessage_SC, @function
siFormattedMessage_SC:
.LFB92:
	.cfi_startproc
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%r9, %r13
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movl	%r8d, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$208, %rsp
	.cfi_def_cfa_offset 256
	testb	%al, %al
	je	.L29
	movaps	%xmm0, 80(%rsp)
	movaps	%xmm1, 96(%rsp)
	movaps	%xmm2, 112(%rsp)
	movaps	%xmm3, 128(%rsp)
	movaps	%xmm4, 144(%rsp)
	movaps	%xmm5, 160(%rsp)
	movaps	%xmm6, 176(%rsp)
	movaps	%xmm7, 192(%rsp)
.L29:
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	leaq	256(%rsp), %rax
	movl	$48, (%rsp)
	movq	%rax, 8(%rsp)
	leaq	32(%rsp), %rax
	movq	%rax, 16(%rsp)
	leaq	ErrorLookupA(%rip), %rax
	movl	$48, 4(%rsp)
	leaq	304(%rax), %r8
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L30:
	addq	$16, %rax
	cmpq	%r8, %rax
	je	.L50
.L33:
	cmpl	(%rax), %r12d
	jne	.L30
	movq	8(%rax), %r14
	movzbl	(%rsi), %eax
	movsbl	%dil, %r10d
	movq	%rsi, %r9
	movq	OutputStream@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rdi
	testb	%al, %al
	je	.L32
.L31:
	movq	%rsi, %r9
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L51:
	cmpb	$92, %al
	movzbl	(%rsi), %eax
	cmove	%rsi, %r9
	testb	%al, %al
	je	.L32
.L36:
	addq	$1, %rsi
	cmpb	$47, %al
	jne	.L51
	movzbl	(%rsi), %eax
	movq	%rsi, %r9
	testb	%al, %al
	jne	.L36
	.p2align 4,,10
	.p2align 3
.L32:
	subq	$8, %rsp
	.cfi_def_cfa_offset 264
	movl	%ecx, %r8d
	movl	$1, %esi
	movl	%r10d, %ecx
	pushq	%rdx
	.cfi_def_cfa_offset 272
	xorl	%eax, %eax
	leaq	cszLogFormat(%rip), %rdx
	call	__fprintf_chk@PLT
	popq	%rcx
	.cfi_def_cfa_offset 264
	popq	%rsi
	.cfi_def_cfa_offset 256
	movl	%eax, %ebp
	testq	%r14, %r14
	je	.L39
	movq	(%rbx), %rdi
	movq	%r14, %rcx
	leaq	.LC0(%rip), %rdx
	xorl	%eax, %eax
	movl	$1, %esi
	call	__fprintf_chk@PLT
.L38:
	movq	(%rbx), %rdi
	movq	%rsp, %rcx
	movq	%r13, %rdx
	movl	$1, %esi
	call	__vfprintf_chk@PLT
	addl	%ebp, %eax
	movq	24(%rsp), %rbx
	xorq	%fs:40, %rbx
	jne	.L52
	addq	$208, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L50:
	.cfi_restore_state
	movq	OutputStream@GOTPCREL(%rip), %rbx
	movzbl	(%rsi), %eax
	movsbl	%dil, %r10d
	xorl	%r14d, %r14d
	movq	(%rbx), %rdi
	testb	%al, %al
	jne	.L31
	subq	$8, %rsp
	.cfi_def_cfa_offset 264
	movq	%rsi, %r9
	movl	%ecx, %r8d
	movl	$1, %esi
	pushq	%rdx
	.cfi_def_cfa_offset 272
	movl	%r10d, %ecx
	leaq	cszLogFormat(%rip), %rdx
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	movl	%eax, %ebp
	popq	%rax
	.cfi_def_cfa_offset 264
	popq	%rdx
	.cfi_def_cfa_offset 256
	.p2align 4,,10
	.p2align 3
.L39:
	movq	(%rbx), %rdi
	movl	%r12d, %ecx
	leaq	.LC1(%rip), %rdx
	xorl	%eax, %eax
	movl	$1, %esi
	call	__fprintf_chk@PLT
	jmp	.L38
.L52:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE92:
	.size	siFormattedMessage_SC, .-siFormattedMessage_SC
	.hidden	cszLogFormat
	.globl	cszLogFormat
	.section	.rodata
	.align 16
	.type	cszLogFormat, @object
	.size	cszLogFormat, 25
cszLogFormat:
	.string	"%c%04i %-15.15s %-30s | "
	.hidden	ErrorLookupA
	.globl	ErrorLookupA
	.section	.rodata.str1.1
.LC2:
	.string	"NOT_INITIALIZED"
.LC3:
	.string	"INITIALIZED"
.LC4:
	.string	"ALLOC_ERROR"
.LC5:
	.string	"DRIVER_TIMEOUT"
.LC6:
	.string	"INVALID_PARAMETER"
.LC7:
	.string	"INVALID_BLOCK_ALIGNMENT"
.LC8:
	.string	"INVALID_BLOCK_LENGTH"
.LC9:
	.string	"INVALID_DIRECTION"
.LC10:
	.string	"INVALID_BITMASK"
.LC11:
	.string	"RUNNING"
.LC12:
	.string	"UNSUPPORTED"
.LC13:
	.string	"NOT_FOUND"
.LC14:
	.string	"TIMEOUT"
.LC15:
	.string	"BUSY_COLLISION"
.LC16:
	.string	"READ_ERROR"
.LC17:
	.string	"WRITE_ERROR"
.LC18:
	.string	"MORE_DATA"
.LC19:
	.string	"ERROR"
.LC20:
	.string	"SUCCESS"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ErrorLookupA, @object
	.size	ErrorLookupA, 304
ErrorLookupA:
	.long	-1
	.zero	4
	.quad	.LC2
	.long	-2
	.zero	4
	.quad	.LC3
	.long	-3
	.zero	4
	.quad	.LC4
	.long	-4
	.zero	4
	.quad	.LC5
	.long	-257
	.zero	4
	.quad	.LC6
	.long	-258
	.zero	4
	.quad	.LC7
	.long	-259
	.zero	4
	.quad	.LC8
	.long	-260
	.zero	4
	.quad	.LC9
	.long	-261
	.zero	4
	.quad	.LC10
	.long	-262
	.zero	4
	.quad	.LC11
	.long	-769
	.zero	4
	.quad	.LC12
	.long	-1025
	.zero	4
	.quad	.LC13
	.long	-1026
	.zero	4
	.quad	.LC14
	.long	-1027
	.zero	4
	.quad	.LC15
	.long	-1281
	.zero	4
	.quad	.LC16
	.long	-1282
	.zero	4
	.quad	.LC17
	.long	-1537
	.zero	4
	.quad	.LC18
	.long	-3841
	.zero	4
	.quad	.LC19
	.long	0
	.zero	4
	.quad	.LC20
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
