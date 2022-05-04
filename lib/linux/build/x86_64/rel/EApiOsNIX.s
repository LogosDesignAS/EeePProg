	.file	"EApiOsNIX.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"initializing"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.type	init, @function
init:
.LFB89:
	.cfi_startproc
	endbr64
	leaq	.LC0(%rip), %rdi
	jmp	puts@PLT
	.cfi_endproc
.LFE89:
	.size	init, .-init
	.section	.init_array,"aw"
	.align 8
	.quad	init
	.section	.rodata.str1.1
.LC1:
	.string	"finishing"
	.section	.text.exit,"ax",@progbits
	.p2align 4
	.type	fini, @function
fini:
.LFB90:
	.cfi_startproc
	endbr64
	leaq	.LC1(%rip), %rdi
	jmp	puts@PLT
	.cfi_endproc
.LFE90:
	.size	fini, .-fini
	.section	.fini_array,"aw"
	.align 8
	.quad	fini
	.text
	.p2align 4
	.globl	EApiSleepns
	.hidden	EApiSleepns
	.type	EApiSleepns, @function
EApiSleepns:
.LFB91:
	.cfi_startproc
	endbr64
	movq	%rdi, %rdx
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movabsq	$19342813113834067, %rcx
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	shrq	$9, %rdx
	leaq	16(%rsp), %rsi
	movq	%rdx, %rax
	mulq	%rcx
	shrq	$11, %rdx
	movq	%rdx, (%rsp)
	imulq	$1000000000, %rdx, %rdx
	subq	%rdx, %rdi
	movq	%rdi, 8(%rsp)
	movq	%rsp, %rdi
	call	nanosleep@PLT
	movq	40(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L7
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L7:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE91:
	.size	EApiSleepns, .-EApiSleepns
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
