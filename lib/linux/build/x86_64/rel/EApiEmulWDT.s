	.file	"EApiEmulWDT.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%s\n"
.LC1:
	.string	"EApiWDogGetCapEmul"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EApiEmulWDT.c"
	.section	.rodata.str1.1
.LC3:
	.string	""
	.text
	.p2align 4
	.globl	EApiWDogGetCapEmul
	.type	EApiWDogGetCapEmul, @function
EApiWDogGetCapEmul:
.LFB66:
	.cfi_startproc
	endbr64
	subq	$16, %rsp
	.cfi_def_cfa_offset 24
	leaq	.LC3(%rip), %rax
	movl	$600000, (%rdi)
	xorl	%r8d, %r8d
	movl	$600000, (%rsi)
	movl	$79, %ecx
	leaq	.LC0(%rip), %r9
	leaq	.LC2(%rip), %rsi
	movl	$600000, (%rdx)
	movl	$76, %edi
	leaq	.LC1(%rip), %rdx
	pushq	%rax
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	xorl	%eax, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE66:
	.size	EApiWDogGetCapEmul, .-EApiWDogGetCapEmul
	.section	.rodata.str1.1
.LC4:
	.string	"EApiWDogStartEmul"
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"Watchdog alread runing, need to stop before starting"
	.section	.rodata.str1.1
.LC6:
	.string	"(Delay>pMaxDelay)"
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"(EventTimeout>pMaxEventTimeout)"
	.align 8
.LC8:
	.string	"(ResetTimeout>pMaxResetTimeout)"
	.text
	.p2align 4
	.globl	EApiWDogStartEmul
	.hidden	EApiWDogStartEmul
	.type	EApiWDogStartEmul, @function
EApiWDogStartEmul:
.LFB67:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	cmpl	$-1, WatchdogState(%rip)
	je	.L12
	cmpl	$600000, %edi
	ja	.L13
	cmpl	$600000, %esi
	ja	.L14
	cmpl	$600000, %edx
	ja	.L15
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	xorl	%r8d, %r8d
	movl	$119, %ecx
	movl	$76, %edi
	leaq	.LC3(%rip), %rax
	leaq	.LC4(%rip), %rdx
	movl	$-1, WatchdogState(%rip)
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC0(%rip), %r9
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rax
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rdx
	.cfi_def_cfa_offset 16
.L6:
	endbr64
.L4:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L15:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	leaq	.LC8(%rip), %rax
	movl	$113, %ecx
	movl	$-257, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC0(%rip), %r9
.L11:
	leaq	.LC2(%rip), %rsi
	leaq	.LC4(%rip), %rdx
	movl	$69, %edi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rcx
	.cfi_def_cfa_offset 24
	popq	%rsi
	.cfi_def_cfa_offset 16
	movl	$-257, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L13:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	leaq	.LC6(%rip), %rax
	movl	$103, %ecx
	movl	$-257, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC0(%rip), %r9
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L14:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	leaq	.LC7(%rip), %rax
	movl	$108, %ecx
	movl	$-257, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC0(%rip), %r9
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L12:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	movl	$-262, %r8d
	leaq	.LC5(%rip), %rax
	movl	$69, %edi
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC0(%rip), %r9
	xorl	%eax, %eax
	movl	$97, %ecx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	call	siFormattedMessage_SC@PLT
	popq	%rdi
	.cfi_def_cfa_offset 24
	movl	$-262, %eax
	popq	%r8
	.cfi_def_cfa_offset 16
	jmp	.L4
	.cfi_endproc
.LFE67:
	.size	EApiWDogStartEmul, .-EApiWDogStartEmul
	.section	.rodata.str1.1
.LC9:
	.string	"EApiWDogTriggerEmul"
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"Watchdog Disabled therefore not possible to trigger"
	.text
	.p2align 4
	.globl	EApiWDogTriggerEmul
	.hidden	EApiWDogTriggerEmul
	.type	EApiWDogTriggerEmul, @function
EApiWDogTriggerEmul:
.LFB68:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	WatchdogState(%rip), %edi
	testl	%edi, %edi
	je	.L20
.L18:
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	xorl	%r8d, %r8d
	movl	$135, %ecx
	movl	$76, %edi
	leaq	.LC3(%rip), %rax
	leaq	.LC9(%rip), %rdx
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC0(%rip), %r9
	leaq	.LC2(%rip), %rsi
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
.L20:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	leaq	.LC10(%rip), %rax
	movl	$128, %ecx
	movl	$-3841, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	leaq	.LC0(%rip), %r9
	leaq	.LC9(%rip), %rdx
	movl	$69, %edi
	call	siFormattedMessage_SC@PLT
	popq	%rcx
	.cfi_def_cfa_offset 24
	popq	%rsi
	.cfi_def_cfa_offset 16
	movl	$-3841, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE68:
	.size	EApiWDogTriggerEmul, .-EApiWDogTriggerEmul
	.section	.rodata.str1.1
.LC11:
	.string	"EApiWDogStopEmul"
	.text
	.p2align 4
	.globl	EApiWDogStopEmul
	.hidden	EApiWDogStopEmul
	.type	EApiWDogStopEmul, @function
EApiWDogStopEmul:
.LFB69:
	.cfi_startproc
	endbr64
	subq	$16, %rsp
	.cfi_def_cfa_offset 24
	xorl	%r8d, %r8d
	movl	$148, %ecx
	movl	$76, %edi
	leaq	.LC3(%rip), %rax
	leaq	.LC0(%rip), %r9
	movl	$0, WatchdogState(%rip)
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	xorl	%eax, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE69:
	.size	EApiWDogStopEmul, .-EApiWDogStopEmul
	.local	WatchdogState
	.comm	WatchdogState,4,4
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
