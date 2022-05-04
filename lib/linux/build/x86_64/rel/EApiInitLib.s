	.file	"EApiInitLib.c"
	.text
	.p2align 4
	.globl	DebugMsg
	.hidden	DebugMsg
	.type	DebugMsg, @function
DebugMsg:
.LFB89:
	.cfi_startproc
	endbr64
	subq	$216, %rsp
	.cfi_def_cfa_offset 224
	movq	%rdi, %r10
	movq	%rsi, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rcx, 56(%rsp)
	movq	%r8, 64(%rsp)
	movq	%r9, 72(%rsp)
	testb	%al, %al
	je	.L2
	movaps	%xmm0, 80(%rsp)
	movaps	%xmm1, 96(%rsp)
	movaps	%xmm2, 112(%rsp)
	movaps	%xmm3, 128(%rsp)
	movaps	%xmm4, 144(%rsp)
	movaps	%xmm5, 160(%rsp)
	movaps	%xmm6, 176(%rsp)
	movaps	%xmm7, 192(%rsp)
.L2:
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movq	OutputStream(%rip), %rdi
	movq	%rsp, %rcx
	movq	%r10, %rdx
	leaq	224(%rsp), %rax
	movl	$8, (%rsp)
	movl	$1, %esi
	movq	%rax, 8(%rsp)
	leaq	32(%rsp), %rax
	movl	$48, 4(%rsp)
	movq	%rax, 16(%rsp)
	testq	%rdi, %rdi
	je	.L3
.L7:
	call	__vfprintf_chk@PLT
	movq	OutputStream(%rip), %rdi
	call	fflush@PLT
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L9
	addq	$216, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3:
	.cfi_restore_state
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	jmp	.L7
.L9:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE89:
	.size	DebugMsg, .-DebugMsg
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"w"
.LC1:
	.string	"EApi.log"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"#\n# Embedded API EApi\n# Version %u.%u\n# Lib Version %u.%u.%u\n#\n"
	.text
	.p2align 4
	.globl	EApiInitLib
	.hidden	EApiInitLib
	.type	EApiInitLib, @function
EApiInitLib:
.LFB90:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	cmpq	$0, OutputStream(%rip)
	je	.L13
.L11:
	call	OpenEepromFiles@PLT
	call	OpenI2CEepromFiles@PLT
	xorl	%eax, %eax
	movl	$977, %r9d
	xorl	%ecx, %ecx
	movl	$5, %r8d
	xorl	%edx, %edx
	movl	$1, %esi
	leaq	.LC2(%rip), %rdi
	call	DebugMsg
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L13:
	.cfi_restore_state
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	call	fopen@PLT
	movq	%rax, OutputStream(%rip)
	jmp	.L11
	.cfi_endproc
.LFE90:
	.size	EApiInitLib, .-EApiInitLib
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"#\n# Embedded API EApi\n# Exit \n#\n"
	.text
	.p2align 4
	.globl	EApiUninitLib
	.hidden	EApiUninitLib
	.type	EApiUninitLib, @function
EApiUninitLib:
.LFB91:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	leaq	.LC3(%rip), %rdi
	xorl	%eax, %eax
	call	DebugMsg
	call	CloseEepromFiles@PLT
	call	CloseI2CEepromFiles@PLT
	movq	OutputStream(%rip), %rdi
	testq	%rdi, %rdi
	je	.L18
	movq	stdout@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rax
	cmpq	%rax, %rdi
	je	.L16
	movq	stderr@GOTPCREL(%rip), %rdx
	cmpq	(%rdx), %rdi
	je	.L16
	call	fclose@PLT
	movq	(%rbx), %rax
.L16:
	movq	%rax, OutputStream(%rip)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L18:
	.cfi_restore_state
	movq	stdout@GOTPCREL(%rip), %rax
	popq	%rbx
	.cfi_def_cfa_offset 8
	movq	(%rax), %rax
	movq	%rax, OutputStream(%rip)
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE91:
	.size	EApiUninitLib, .-EApiUninitLib
	.hidden	OutputStream
	.globl	OutputStream
	.bss
	.align 8
	.type	OutputStream, @object
	.size	OutputStream, 8
OutputStream:
	.zero	8
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
