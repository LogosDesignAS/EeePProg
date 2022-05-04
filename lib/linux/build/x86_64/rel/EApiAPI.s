	.file	"EApiAPI.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%s\n"
.LC1:
	.string	"EApiI2CGetBusCap"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EApiAPI.cpp"
	.section	.rodata.str1.1
.LC3:
	.string	"Library Uninitialized"
.LC4:
	.string	"(pMaxBlkLen==NULL)"
	.text
	.p2align 4
	.globl	EApiI2CGetBusCap
	.type	EApiI2CGetBusCap, @function
EApiI2CGetBusCap:
.LFB66:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	Initialized(%rip), %r8d
	testl	%r8d, %r8d
	je	.L7
	testq	%rsi, %rsi
	je	.L8
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	EApiI2CGetBusCapEmul@PLT
	.p2align 4,,10
	.p2align 3
.L7:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	leaq	.LC3(%rip), %rax
	movl	$76, %ecx
	movl	$-1, %r8d
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
	movl	$-1, %eax
	popq	%rsi
	.cfi_def_cfa_offset 16
.L3:
.L1:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L8:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	leaq	.LC4(%rip), %rax
	leaq	.LC1(%rip), %rdx
	movl	$-257, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC0(%rip), %r9
	xorl	%eax, %eax
	movl	$77, %ecx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	call	siFormattedMessage_SC@PLT
	popq	%rax
	.cfi_def_cfa_offset 24
	movl	$-257, %eax
	popq	%rdx
	.cfi_def_cfa_offset 16
	jmp	.L1
	.cfi_endproc
.LFE66:
	.size	EApiI2CGetBusCap, .-EApiI2CGetBusCap
	.section	.rodata.str1.1
.LC5:
	.string	"EApiI2CWriteReadRaw"
.LC6:
	.string	"pWBuffer is NULL"
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"ADDR=%02X WriteBCnt=%04X RBufLen=%04X WriteBCnt=%04X ReadBCnt=%04X %08X\n"
	.section	.rodata.str1.1
.LC8:
	.string	"Info"
.LC9:
	.string	"EApiI2CWriteTransfer"
.LC10:
	.string	"pRBuffer is NULL"
.LC11:
	.string	"RBufLen is ZERO"
.LC12:
	.string	"NO READ NO WRITE"
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	" pBuffer Overflow PreventedReadBCnt>RBufLen+1"
	.text
	.p2align 4
	.globl	EApiI2CWriteReadRaw
	.type	EApiI2CWriteReadRaw, @function
EApiI2CWriteReadRaw:
.LFB67:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
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
	movl	Initialized(%rip), %r10d
	movl	%edi, 8(%rsp)
	movl	80(%rsp), %r15d
	testl	%r10d, %r10d
	je	.L43
	movq	%rdx, %r13
	movl	%ecx, %r12d
	movq	%r8, %r14
	movl	%r9d, %ebx
	cmpl	$1, %ecx
	jbe	.L12
	testq	%rdx, %rdx
	je	.L44
.L12:
	xorl	%eax, %eax
	testl	%r12d, %r12d
	je	.L13
	movl	0(%r13), %eax
.L13:
	movzbl	%sil, %ebp
	pushq	%rax
	.cfi_def_cfa_offset 88
	leaq	.LC7(%rip), %r9
	xorl	%eax, %eax
	pushq	%r15
	.cfi_def_cfa_offset 96
	leaq	.LC8(%rip), %r8
	movl	$115, %ecx
	leaq	.LC9(%rip), %rdx
	pushq	%r12
	.cfi_def_cfa_offset 104
	leaq	.LC2(%rip), %rsi
	movl	$76, %edi
	pushq	%rbx
	.cfi_def_cfa_offset 112
	pushq	%r12
	.cfi_def_cfa_offset 120
	pushq	%rbp
	.cfi_def_cfa_offset 128
	call	siFormattedMessage_M2@PLT
	addq	$48, %rsp
	.cfi_def_cfa_offset 80
	cmpl	$1, %r15d
	seta	%al
	testq	%r14, %r14
	jne	.L14
	testb	%al, %al
	jne	.L45
.L14:
	testl	%ebx, %ebx
	jne	.L15
	testb	%al, %al
	jne	.L46
.L15:
	movl	%r12d, %eax
	orl	%r15d, %eax
	je	.L47
	addl	$1, %ebx
	xorl	%r11d, %r11d
	cmpl	%r15d, %ebx
	jb	.L48
.L17:
	movl	8(%rsp), %edi
	movl	%r15d, %r9d
	movq	%r14, %r8
	movl	%r12d, %ecx
	movq	%r13, %rdx
	movl	%ebp, %esi
	movl	%r11d, 12(%rsp)
	call	EApiI2CWriteReadEmul@PLT
	movl	12(%rsp), %r11d
	testl	%eax, %eax
	cmovne	%eax, %r11d
.L11:
.L9:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%r11d, %eax
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
	.p2align 4,,10
	.p2align 3
.L48:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 88
	movl	$-1537, %r8d
	movl	%ebx, %r15d
	movl	$140, %ecx
	leaq	.LC13(%rip), %rax
	leaq	.LC5(%rip), %rdx
	movl	$69, %edi
	pushq	%rax
	.cfi_def_cfa_offset 96
	leaq	.LC0(%rip), %r9
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rax
	.cfi_def_cfa_offset 88
	movl	$-1537, %r11d
	popq	%rdx
	.cfi_def_cfa_offset 80
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L44:
	subq	$8, %rsp
	.cfi_def_cfa_offset 88
	leaq	.LC6(%rip), %rax
	movl	$105, %ecx
	movl	$-257, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 96
	leaq	.LC0(%rip), %r9
.L42:
	leaq	.LC2(%rip), %rsi
	leaq	.LC5(%rip), %rdx
	movl	$69, %edi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rcx
	.cfi_def_cfa_offset 88
	movl	$-257, %r11d
	popq	%rsi
	.cfi_def_cfa_offset 80
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L45:
	subq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 88
	leaq	.LC10(%rip), %rax
	movl	$124, %ecx
	movl	$-257, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 96
	leaq	.LC0(%rip), %r9
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L46:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 88
	leaq	.LC11(%rip), %rax
	movl	$129, %ecx
	movl	$-257, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 96
	leaq	.LC0(%rip), %r9
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L43:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 88
	movl	$-1, %r8d
	leaq	.LC3(%rip), %rax
	movl	$69, %edi
	pushq	%rax
	.cfi_def_cfa_offset 96
	leaq	.LC0(%rip), %r9
	xorl	%eax, %eax
	movl	$104, %ecx
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	call	siFormattedMessage_SC@PLT
	popq	%rdi
	.cfi_def_cfa_offset 88
	movl	$-1, %r11d
	popq	%r8
	.cfi_def_cfa_offset 80
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L47:
	subq	$8, %rsp
	.cfi_def_cfa_offset 88
	leaq	.LC12(%rip), %rax
	movl	$134, %ecx
	movl	$-257, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 96
	leaq	.LC0(%rip), %r9
	jmp	.L42
	.cfi_endproc
.LFE67:
	.size	EApiI2CWriteReadRaw, .-EApiI2CWriteReadRaw
	.section	.rodata.str1.1
.LC14:
	.string	"EApiI2CReadTransfer"
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"Id=%08X ADDR=%04X CMD=%04X BCNT=%04X\n"
	.section	.rodata.str1.1
.LC16:
	.string	"(pBuffer==NULL)"
.LC17:
	.string	"(BufLen==0)"
.LC18:
	.string	"(ByteCnt==0)"
	.section	.rodata.str1.8
	.align 8
.LC19:
	.string	" Transfer Length too long for interface"
	.text
	.p2align 4
	.globl	EApiI2CReadTransfer
	.type	EApiI2CReadTransfer, @function
EApiI2CReadTransfer:
.LFB68:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movl	Initialized(%rip), %r10d
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movq	$0, 16(%rsp)
	testl	%r10d, %r10d
	je	.L66
	pushq	%r9
	.cfi_def_cfa_offset 104
	movl	%edi, %r13d
	movl	%esi, %r15d
	movl	%edx, %r14d
	pushq	%rdx
	.cfi_def_cfa_offset 112
	movq	%rcx, %rbp
	movl	%r8d, %r12d
	movl	%r9d, %ebx
	pushq	%rsi
	.cfi_def_cfa_offset 120
	leaq	.LC15(%rip), %r9
	movl	$188, %ecx
	xorl	%eax, %eax
	pushq	%rdi
	.cfi_def_cfa_offset 128
	leaq	.LC8(%rip), %r8
	leaq	.LC9(%rip), %rdx
	movl	$76, %edi
	leaq	.LC2(%rip), %rsi
	call	siFormattedMessage_M2@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 96
	testq	%rbp, %rbp
	je	.L67
	testl	%r12d, %r12d
	je	.L68
	testl	%ebx, %ebx
	je	.L69
	leaq	12(%rsp), %rsi
	movl	%r13d, %edi
	call	EApiI2CGetBusCap@PLT
	cmpl	%ebx, 12(%rsp)
	jb	.L70
	movl	%r15d, %eax
	andl	$63488, %eax
	cmpl	$61440, %eax
	je	.L71
	movl	$3, %r8d
	movl	$2, %esi
	movl	$1, %ecx
	xorl	%eax, %eax
	movl	$1, %edi
.L56:
	movl	%r14d, %edx
	andl	$-1073741824, %edx
	cmpl	$1073741824, %edx
	je	.L57
	cmpl	$-2147483648, %edx
	je	.L72
.L58:
	movb	%r14b, 16(%rsp,%rax)
	movl	%esi, %ecx
.L57:
	leaq	16(%rsp), %rdx
	addl	$1, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 104
	movzbl	%r15b, %esi
	pushq	%rbx
	.cfi_def_cfa_offset 112
	movl	%r12d, %r9d
	movq	%rbp, %r8
	movl	%r13d, %edi
	call	EApiI2CWriteReadRaw@PLT
	popq	%rdx
	.cfi_def_cfa_offset 104
	popq	%rcx
	.cfi_def_cfa_offset 96
.L51:
	endbr64
.L49:
	movq	24(%rsp), %rbx
	xorq	%fs:40, %rbx
	jne	.L73
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
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
	.p2align 4,,10
	.p2align 3
.L66:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 104
	movl	$181, %ecx
	movl	$69, %edi
	movl	$-1, %r8d
	leaq	.LC3(%rip), %rax
	leaq	.LC0(%rip), %r9
	pushq	%rax
	.cfi_def_cfa_offset 112
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%r8
	.cfi_def_cfa_offset 104
	movl	$-1, %eax
	popq	%r9
	.cfi_def_cfa_offset 96
	jmp	.L49
	.p2align 4,,10
	.p2align 3
.L72:
	movl	%r14d, %ecx
	movl	%r8d, %esi
	movb	%ch, 16(%rsp,%rax)
	movslq	%edi, %rax
	jmp	.L58
	.p2align 4,,10
	.p2align 3
.L70:
	subq	$8, %rsp
	.cfi_def_cfa_offset 104
	leaq	.LC19(%rip), %rax
	movl	$202, %ecx
	movl	$-257, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 112
	leaq	.LC0(%rip), %r9
	.p2align 4,,10
	.p2align 3
.L65:
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	leaq	.LC14(%rip), %rdx
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rsi
	.cfi_def_cfa_offset 104
	movl	$-257, %eax
	popq	%rdi
	.cfi_def_cfa_offset 96
	jmp	.L49
	.p2align 4,,10
	.p2align 3
.L71:
	movb	%r15b, 16(%rsp)
	movl	$4, %r8d
	shrl	$8, %r15d
	movl	$3, %esi
	movl	$2, %ecx
	movl	$2, %edi
	movl	$1, %eax
	jmp	.L56
	.p2align 4,,10
	.p2align 3
.L69:
	subq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 104
	leaq	.LC18(%rip), %rax
	movl	$197, %ecx
	movl	$-257, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 112
	leaq	.LC0(%rip), %r9
	jmp	.L65
	.p2align 4,,10
	.p2align 3
.L68:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 104
	leaq	.LC17(%rip), %rax
	movl	$196, %ecx
	movl	$-257, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 112
	leaq	.LC0(%rip), %r9
	jmp	.L65
	.p2align 4,,10
	.p2align 3
.L67:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 104
	leaq	.LC16(%rip), %rax
	movl	$195, %ecx
	movl	$-257, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 112
	leaq	.LC0(%rip), %r9
	jmp	.L65
.L73:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE68:
	.size	EApiI2CReadTransfer, .-EApiI2CReadTransfer
	.section	.rodata.str1.8
	.align 8
.LC20:
	.string	"Id=%08X ADDR=%04X CMD=%04X BCNT=%04X %08X\n"
	.section	.rodata.str1.1
.LC21:
	.string	"Error Allocating Memory"
	.section	.rodata.str1.8
	.align 8
.LC22:
	.string	"Transfer Length too long for interface"
	.text
	.p2align 4
	.globl	EApiI2CWriteTransfer
	.type	EApiI2CWriteTransfer, @function
EApiI2CWriteTransfer:
.LFB69:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movl	Initialized(%rip), %r12d
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	testl	%r12d, %r12d
	je	.L91
	movq	%rcx, %r14
	testq	%rcx, %rcx
	je	.L92
	movl	(%rcx), %eax
	subq	$8, %rsp
	.cfi_def_cfa_offset 104
	movl	%edi, %r13d
	movl	%esi, %ebp
	movl	%edx, %r12d
	movl	%r8d, %ebx
	movl	$261, %ecx
	pushq	%rax
	.cfi_def_cfa_offset 112
	leaq	.LC20(%rip), %r9
	xorl	%eax, %eax
	pushq	%r8
	.cfi_def_cfa_offset 120
	leaq	.LC8(%rip), %r8
	pushq	%rdx
	.cfi_def_cfa_offset 128
	leaq	.LC9(%rip), %rdx
	pushq	%rsi
	.cfi_def_cfa_offset 136
	leaq	.LC2(%rip), %rsi
	pushq	%rdi
	.cfi_def_cfa_offset 144
	movl	$76, %edi
	call	siFormattedMessage_M2@PLT
	addq	$48, %rsp
	.cfi_def_cfa_offset 96
	testl	%ebx, %ebx
	je	.L93
	leal	3(%rbx), %edi
	call	malloc@PLT
	movq	%rax, %r15
	testq	%rax, %rax
	je	.L94
	movl	%ebp, %eax
	andl	$63488, %eax
	cmpl	$61440, %eax
	je	.L95
	movl	$2, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	xorl	%r10d, %r10d
	movl	$1, %edx
.L80:
	movl	%r12d, %ecx
	andl	$-1073741824, %ecx
	cmpl	$1073741824, %ecx
	je	.L81
	addq	%r15, %rax
	cmpl	$-2147483648, %ecx
	jne	.L82
	movl	%r12d, %ecx
	movl	%esi, %edx
	movb	%ch, (%rax)
	leaq	(%r15,%rdi), %rax
.L82:
	movb	%r12b, (%rax)
	leaq	20(%rsp), %rsi
	movl	%r13d, %edi
	movl	%edx, 8(%rsp)
	call	EApiI2CGetBusCap@PLT
	movl	8(%rsp), %edx
	movzbl	%bpl, %eax
	movl	%eax, 8(%rsp)
	leal	(%rbx,%rdx), %r11d
	cmpl	20(%rsp), %r11d
	ja	.L84
.L83:
	movl	%edx, %edi
	movq	%r14, %rsi
	movl	%ebx, %edx
	movl	%r11d, 12(%rsp)
	addq	%r15, %rdi
	call	memcpy@PLT
	movl	(%r15), %eax
	subq	$8, %rsp
	.cfi_def_cfa_offset 104
	leaq	.LC20(%rip), %r9
	leaq	.LC8(%rip), %r8
	movl	$313, %ecx
	leaq	.LC9(%rip), %rdx
	movl	$76, %edi
	pushq	%rax
	.cfi_def_cfa_offset 112
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	pushq	%rbx
	.cfi_def_cfa_offset 120
	pushq	%r12
	.cfi_def_cfa_offset 128
	pushq	%rbp
	.cfi_def_cfa_offset 136
	pushq	%r13
	.cfi_def_cfa_offset 144
	call	siFormattedMessage_M2@PLT
	addq	$40, %rsp
	.cfi_def_cfa_offset 104
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movl	20(%rsp), %r11d
	pushq	$0
	.cfi_def_cfa_offset 112
	movq	%r15, %rdx
	movl	%r13d, %edi
	movl	24(%rsp), %esi
	leal	1(%r11), %ecx
	call	EApiI2CWriteReadRaw@PLT
	movq	%r15, %rdi
	call	free@PLT
	popq	%rcx
	.cfi_def_cfa_offset 104
	xorl	%r10d, %r10d
	popq	%rsi
	.cfi_def_cfa_offset 96
.L74:
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L96
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%r10d, %eax
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
	.p2align 4,,10
	.p2align 3
.L95:
	.cfi_restore_state
	movb	%bpl, (%r15)
	movl	$3, %esi
	shrl	$8, %ebp
	movl	$2, %edi
	movl	$2, %edx
	movl	$1, %eax
	movl	$1, %r10d
	jmp	.L80
	.p2align 4,,10
	.p2align 3
.L81:
	leaq	20(%rsp), %rsi
	movl	%r13d, %edi
	movl	%r10d, 8(%rsp)
	call	EApiI2CGetBusCap@PLT
	movl	8(%rsp), %r10d
	leal	(%r10,%rbx), %r11d
	cmpl	20(%rsp), %r11d
	ja	.L84
	movzbl	%bpl, %eax
	movl	%eax, 8(%rsp)
	testl	%r10d, %r10d
	jne	.L97
.L76:
	endbr64
	movq	%r15, %rdi
	movl	%r10d, 12(%rsp)
	call	free@PLT
	movl	(%r14), %eax
	subq	$8, %rsp
	.cfi_def_cfa_offset 104
	leaq	.LC20(%rip), %r9
	leaq	.LC8(%rip), %r8
	movl	$313, %ecx
	leaq	.LC9(%rip), %rdx
	movl	$76, %edi
	pushq	%rax
	.cfi_def_cfa_offset 112
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	pushq	%rbx
	.cfi_def_cfa_offset 120
	pushq	%r12
	.cfi_def_cfa_offset 128
	pushq	%rbp
	.cfi_def_cfa_offset 136
	pushq	%r13
	.cfi_def_cfa_offset 144
	call	siFormattedMessage_M2@PLT
	addq	$40, %rsp
	.cfi_def_cfa_offset 104
	movq	%r14, %rdx
	leal	1(%rbx), %ecx
	pushq	$0
	.cfi_def_cfa_offset 112
	movl	24(%rsp), %esi
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movl	%r13d, %edi
	call	EApiI2CWriteReadRaw@PLT
	popq	%rax
	.cfi_def_cfa_offset 104
	popq	%rdx
	.cfi_def_cfa_offset 96
	movl	12(%rsp), %r10d
	jmp	.L74
	.p2align 4,,10
	.p2align 3
.L93:
	subq	$8, %rsp
	.cfi_def_cfa_offset 104
	leaq	.LC18(%rip), %rax
	movl	$268, %ecx
	movl	$-257, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 112
	leaq	.LC0(%rip), %r9
.L90:
	movl	$69, %edi
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rdi
	.cfi_def_cfa_offset 104
	movl	$-257, %r10d
	popq	%r8
	.cfi_def_cfa_offset 96
	jmp	.L74
	.p2align 4,,10
	.p2align 3
.L84:
	subq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 104
	leaq	.LC22(%rip), %rax
	movl	$294, %ecx
	movl	$-257, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 112
	leaq	.LC0(%rip), %r9
	jmp	.L90
	.p2align 4,,10
	.p2align 3
.L91:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 104
	movl	$253, %ecx
	movl	$69, %edi
	movl	$-1, %r8d
	leaq	.LC3(%rip), %rax
	leaq	.LC0(%rip), %r9
	pushq	%rax
	.cfi_def_cfa_offset 112
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rbx
	.cfi_def_cfa_offset 104
	movl	$-1, %r10d
	popq	%rbp
	.cfi_def_cfa_offset 96
	jmp	.L74
	.p2align 4,,10
	.p2align 3
.L92:
	subq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 104
	leaq	.LC16(%rip), %rax
	movl	$255, %ecx
	movl	$-257, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 112
	leaq	.LC0(%rip), %r9
	jmp	.L90
.L96:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L94:
	movl	$-3, %r8d
	leaq	.LC21(%rip), %rax
	pushq	%r9
	.cfi_def_cfa_offset 104
	movl	$271, %ecx
	pushq	%rax
	.cfi_def_cfa_offset 112
	leaq	.LC0(%rip), %r9
	xorl	%eax, %eax
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	call	siFormattedMessage_SC@PLT
	popq	%r10
	.cfi_def_cfa_offset 104
	movl	$-3, %r10d
	popq	%r11
	.cfi_def_cfa_offset 96
	jmp	.L74
.L97:
	movl	%r10d, %edx
	jmp	.L83
	.cfi_endproc
.LFE69:
	.size	EApiI2CWriteTransfer, .-EApiI2CWriteTransfer
	.p2align 4
	.globl	EApiI2CProbeDevice
	.type	EApiI2CProbeDevice, @function
EApiI2CProbeDevice:
.LFB70:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	Initialized(%rip), %r8d
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	movq	$0, (%rsp)
	testl	%r8d, %r8d
	je	.L105
	movl	%esi, %eax
	movl	$1, %ecx
	andl	$63488, %eax
	cmpl	$61440, %eax
	jne	.L101
	movb	%sil, (%rsp)
	movl	$2, %ecx
	shrl	$8, %esi
.L101:
	movq	%rsp, %rdx
	subq	$8, %rsp
	.cfi_def_cfa_offset 40
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	pushq	$0
	.cfi_def_cfa_offset 48
	movzbl	%sil, %esi
	call	EApiI2CWriteReadRaw@PLT
	popq	%rdx
	.cfi_def_cfa_offset 40
	movl	$-1025, %edx
	popq	%rcx
	.cfi_def_cfa_offset 32
	cmpl	$-1282, %eax
	cmove	%edx, %eax
.L100:
.L98:
	movq	8(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L106
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L105:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 40
	movl	$69, %edi
	leaq	.LC3(%rip), %rax
	movl	$-1, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 48
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	leaq	.LC0(%rip), %r9
	movl	$348, %ecx
	leaq	.LC9(%rip), %rdx
	call	siFormattedMessage_SC@PLT
	popq	%rsi
	.cfi_def_cfa_offset 40
	movl	$-1, %eax
	popq	%rdi
	.cfi_def_cfa_offset 32
	jmp	.L98
.L106:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE70:
	.size	EApiI2CProbeDevice, .-EApiI2CProbeDevice
	.section	.rodata.str1.1
.LC23:
	.string	"EApiBoardGetStringA"
.LC24:
	.string	"(pBufLen==NULL)"
.LC25:
	.string	"pBuffer is NULL"
	.text
	.p2align 4
	.globl	EApiBoardGetStringA
	.type	EApiBoardGetStringA, @function
EApiBoardGetStringA:
.LFB71:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	Initialized(%rip), %r8d
	testl	%r8d, %r8d
	je	.L120
	testq	%rdx, %rdx
	je	.L121
	movl	(%rdx), %ecx
	testl	%ecx, %ecx
	je	.L111
	testq	%rsi, %rsi
	je	.L122
.L111:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	EApiBoardGetStringAEmul@PLT
	.p2align 4,,10
	.p2align 3
.L120:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	movl	$69, %edi
	leaq	.LC3(%rip), %rax
	movl	$-1, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	leaq	.LC0(%rip), %r9
	movl	$387, %ecx
	leaq	.LC23(%rip), %rdx
	call	siFormattedMessage_SC@PLT
	popq	%rsi
	.cfi_def_cfa_offset 24
	movl	$-1, %eax
	popq	%rdi
	.cfi_def_cfa_offset 16
.L109:
.L107:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L122:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	leaq	.LC25(%rip), %rax
	movl	$389, %ecx
	movl	$-257, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC0(%rip), %r9
.L119:
	leaq	.LC23(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rax
	.cfi_def_cfa_offset 24
	movl	$-257, %eax
	popq	%rdx
	.cfi_def_cfa_offset 16
	jmp	.L107
	.p2align 4,,10
	.p2align 3
.L121:
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	leaq	.LC24(%rip), %rax
	movl	$388, %ecx
	movl	$-257, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC0(%rip), %r9
	jmp	.L119
	.cfi_endproc
.LFE71:
	.size	EApiBoardGetStringA, .-EApiBoardGetStringA
	.section	.rodata.str1.1
.LC26:
	.string	"EApiBoardGetValue"
.LC27:
	.string	"(pValue==NULL)"
.LC28:
	.string	""
	.text
	.p2align 4
	.globl	EApiBoardGetValue
	.type	EApiBoardGetValue, @function
EApiBoardGetValue:
.LFB72:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	Initialized(%rip), %r9d
	testl	%r9d, %r9d
	je	.L129
	testq	%rsi, %rsi
	je	.L130
	testl	%edi, %edi
	je	.L131
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	EApiBoardGetValueEmul@PLT
	.p2align 4,,10
	.p2align 3
.L131:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	movl	$16777216, (%rsi)
	leaq	.LC28(%rip), %rax
	leaq	.LC26(%rip), %rdx
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC0(%rip), %r9
	xorl	%r8d, %r8d
	movl	$422, %ecx
	leaq	.LC2(%rip), %rsi
	movl	$76, %edi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rax
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rdx
	.cfi_def_cfa_offset 16
.L125:
.L123:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L129:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	movl	$-1, %r8d
	leaq	.LC3(%rip), %rax
	movl	$69, %edi
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC0(%rip), %r9
	xorl	%eax, %eax
	movl	$417, %ecx
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	call	siFormattedMessage_SC@PLT
	popq	%rdi
	.cfi_def_cfa_offset 24
	popq	%r8
	.cfi_def_cfa_offset 16
	movl	$-1, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L130:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	leaq	.LC27(%rip), %rax
	movl	$418, %ecx
	movl	$-257, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	leaq	.LC0(%rip), %r9
	leaq	.LC26(%rip), %rdx
	movl	$69, %edi
	call	siFormattedMessage_SC@PLT
	popq	%rcx
	.cfi_def_cfa_offset 24
	movl	$-257, %eax
	popq	%rsi
	.cfi_def_cfa_offset 16
	jmp	.L123
	.cfi_endproc
.LFE72:
	.size	EApiBoardGetValue, .-EApiBoardGetValue
	.section	.rodata.str1.1
.LC29:
	.string	"EApiVgaGetBacklightEnable"
.LC30:
	.string	"(pEnable==NULL)"
	.text
	.p2align 4
	.globl	EApiVgaGetBacklightEnable
	.type	EApiVgaGetBacklightEnable, @function
EApiVgaGetBacklightEnable:
.LFB73:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	Initialized(%rip), %r8d
	testl	%r8d, %r8d
	je	.L137
	testq	%rsi, %rsi
	je	.L138
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	EApiVgaGetBacklightEnableEmul@PLT
	.p2align 4,,10
	.p2align 3
.L137:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	leaq	.LC3(%rip), %rax
	movl	$448, %ecx
	movl	$-1, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	leaq	.LC0(%rip), %r9
	leaq	.LC29(%rip), %rdx
	movl	$69, %edi
	call	siFormattedMessage_SC@PLT
	popq	%rcx
	.cfi_def_cfa_offset 24
	movl	$-1, %eax
	popq	%rsi
	.cfi_def_cfa_offset 16
.L134:
.L132:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L138:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	leaq	.LC30(%rip), %rax
	leaq	.LC29(%rip), %rdx
	movl	$-257, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC0(%rip), %r9
	xorl	%eax, %eax
	movl	$449, %ecx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	call	siFormattedMessage_SC@PLT
	popq	%rax
	.cfi_def_cfa_offset 24
	movl	$-257, %eax
	popq	%rdx
	.cfi_def_cfa_offset 16
	jmp	.L132
	.cfi_endproc
.LFE73:
	.size	EApiVgaGetBacklightEnable, .-EApiVgaGetBacklightEnable
	.section	.rodata.str1.1
.LC31:
	.string	"EApiVgaSetBacklightEnable"
.LC32:
	.string	"Enable Invalid Value"
	.text
	.p2align 4
	.globl	EApiVgaSetBacklightEnable
	.type	EApiVgaSetBacklightEnable, @function
EApiVgaSetBacklightEnable:
.LFB74:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	Initialized(%rip), %edi
	testl	%edi, %edi
	jne	.L140
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	leaq	.LC3(%rip), %rax
	movl	$465, %ecx
	movl	$-1, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	leaq	.LC0(%rip), %r9
	leaq	.LC31(%rip), %rdx
	movl	$69, %edi
	call	siFormattedMessage_SC@PLT
	popq	%rcx
	.cfi_def_cfa_offset 24
	popq	%rsi
	.cfi_def_cfa_offset 16
	movl	$-1, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L140:
	.cfi_restore_state
.L141:
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	leaq	.LC32(%rip), %rax
	leaq	.LC31(%rip), %rdx
	movl	$-257, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC0(%rip), %r9
	xorl	%eax, %eax
	movl	$466, %ecx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	call	siFormattedMessage_SC@PLT
	popq	%rax
	.cfi_def_cfa_offset 24
	popq	%rdx
	.cfi_def_cfa_offset 16
	movl	$-257, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE74:
	.size	EApiVgaSetBacklightEnable, .-EApiVgaSetBacklightEnable
	.section	.rodata.str1.1
.LC33:
	.string	"EApiVgaGetBacklightBrightness"
.LC34:
	.string	"(pBright==NULL)"
	.text
	.p2align 4
	.globl	EApiVgaGetBacklightBrightness
	.type	EApiVgaGetBacklightBrightness, @function
EApiVgaGetBacklightBrightness:
.LFB75:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	Initialized(%rip), %r8d
	testl	%r8d, %r8d
	je	.L148
	testq	%rsi, %rsi
	je	.L149
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	EApiVgaGetBacklightBrightnessEmul@PLT
	.p2align 4,,10
	.p2align 3
.L148:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	leaq	.LC3(%rip), %rax
	movl	$484, %ecx
	movl	$-1, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	leaq	.LC0(%rip), %r9
	leaq	.LC33(%rip), %rdx
	movl	$69, %edi
	call	siFormattedMessage_SC@PLT
	popq	%rcx
	.cfi_def_cfa_offset 24
	movl	$-1, %eax
	popq	%rsi
	.cfi_def_cfa_offset 16
.L145:
.L143:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L149:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	leaq	.LC34(%rip), %rax
	leaq	.LC33(%rip), %rdx
	movl	$-257, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC0(%rip), %r9
	xorl	%eax, %eax
	movl	$485, %ecx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	call	siFormattedMessage_SC@PLT
	popq	%rax
	.cfi_def_cfa_offset 24
	movl	$-257, %eax
	popq	%rdx
	.cfi_def_cfa_offset 16
	jmp	.L143
	.cfi_endproc
.LFE75:
	.size	EApiVgaGetBacklightBrightness, .-EApiVgaGetBacklightBrightness
	.section	.rodata.str1.1
.LC35:
	.string	"EApiVgaSetBacklightBrightness"
.LC36:
	.string	"Brightness Invalid Value"
	.text
	.p2align 4
	.globl	EApiVgaSetBacklightBrightness
	.type	EApiVgaSetBacklightBrightness, @function
EApiVgaSetBacklightBrightness:
.LFB76:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	Initialized(%rip), %r8d
	testl	%r8d, %r8d
	je	.L155
	cmpl	$255, %esi
	ja	.L156
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	EApiVgaSetBacklightBrightnessEmul@PLT
	.p2align 4,,10
	.p2align 3
.L156:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	leaq	.LC36(%rip), %rax
	leaq	.LC35(%rip), %rdx
	movl	$-257, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC0(%rip), %r9
	xorl	%eax, %eax
	movl	$501, %ecx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	call	siFormattedMessage_SC@PLT
	popq	%rax
	.cfi_def_cfa_offset 24
	popq	%rdx
	.cfi_def_cfa_offset 16
	movl	$-257, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L152:
	.p2align 4,,10
	.p2align 3
.L155:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	leaq	.LC3(%rip), %rax
	movl	$500, %ecx
	movl	$-1, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	leaq	.LC0(%rip), %r9
	leaq	.LC35(%rip), %rdx
	movl	$69, %edi
	call	siFormattedMessage_SC@PLT
	popq	%rcx
	.cfi_def_cfa_offset 24
	popq	%rsi
	.cfi_def_cfa_offset 16
	movl	$-1, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE76:
	.size	EApiVgaSetBacklightBrightness, .-EApiVgaSetBacklightBrightness
	.section	.rodata.str1.1
.LC37:
	.string	"EApiGPIOGetLevel"
.LC38:
	.string	"(Bitmask==0)"
.LC39:
	.string	"(pLevel==NULL)"
	.text
	.p2align 4
	.globl	EApiGPIOGetLevel
	.type	EApiGPIOGetLevel, @function
EApiGPIOGetLevel:
.LFB77:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	Initialized(%rip), %r8d
	testl	%r8d, %r8d
	je	.L164
	testl	%esi, %esi
	je	.L165
	testq	%rdx, %rdx
	je	.L166
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	EApiGPIOGetLevelEmul@PLT
	.p2align 4,,10
	.p2align 3
.L164:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	leaq	.LC3(%rip), %rax
	movl	$535, %ecx
	movl	$-1, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	leaq	.LC0(%rip), %r9
	leaq	.LC37(%rip), %rdx
	movl	$69, %edi
	call	siFormattedMessage_SC@PLT
	popq	%rcx
	.cfi_def_cfa_offset 24
	popq	%rsi
	.cfi_def_cfa_offset 16
	movl	$-1, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L159:
	.p2align 4,,10
	.p2align 3
.L165:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	leaq	.LC38(%rip), %rax
	movl	$536, %ecx
	movl	$-257, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC0(%rip), %r9
.L163:
	leaq	.LC37(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rax
	.cfi_def_cfa_offset 24
	popq	%rdx
	.cfi_def_cfa_offset 16
	movl	$-257, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L166:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	leaq	.LC39(%rip), %rax
	movl	$537, %ecx
	movl	$-257, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC0(%rip), %r9
	jmp	.L163
	.cfi_endproc
.LFE77:
	.size	EApiGPIOGetLevel, .-EApiGPIOGetLevel
	.section	.rodata.str1.1
.LC40:
	.string	"EApiGPIOSetLevel"
	.text
	.p2align 4
	.globl	EApiGPIOSetLevel
	.type	EApiGPIOSetLevel, @function
EApiGPIOSetLevel:
.LFB78:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	Initialized(%rip), %r8d
	testl	%r8d, %r8d
	je	.L172
	testl	%esi, %esi
	je	.L173
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	EApiGPIOSetLevelEmul@PLT
	.p2align 4,,10
	.p2align 3
.L173:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	leaq	.LC38(%rip), %rax
	leaq	.LC40(%rip), %rdx
	movl	$-257, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC0(%rip), %r9
	xorl	%eax, %eax
	movl	$556, %ecx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	call	siFormattedMessage_SC@PLT
	popq	%rax
	.cfi_def_cfa_offset 24
	popq	%rdx
	.cfi_def_cfa_offset 16
	movl	$-257, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L169:
	.p2align 4,,10
	.p2align 3
.L172:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	leaq	.LC3(%rip), %rax
	movl	$555, %ecx
	movl	$-1, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	leaq	.LC0(%rip), %r9
	leaq	.LC40(%rip), %rdx
	movl	$69, %edi
	call	siFormattedMessage_SC@PLT
	popq	%rcx
	.cfi_def_cfa_offset 24
	popq	%rsi
	.cfi_def_cfa_offset 16
	movl	$-1, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE78:
	.size	EApiGPIOSetLevel, .-EApiGPIOSetLevel
	.section	.rodata.str1.1
.LC41:
	.string	"EApiGPIOGetDirection"
.LC42:
	.string	"(pDirection==NULL)"
	.text
	.p2align 4
	.globl	EApiGPIOGetDirection
	.type	EApiGPIOGetDirection, @function
EApiGPIOGetDirection:
.LFB79:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	Initialized(%rip), %r8d
	testl	%r8d, %r8d
	je	.L181
	testl	%esi, %esi
	je	.L182
	testq	%rdx, %rdx
	je	.L183
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	EApiGPIOGetDirectionEmul@PLT
	.p2align 4,,10
	.p2align 3
.L181:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	leaq	.LC3(%rip), %rax
	movl	$574, %ecx
	movl	$-1, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	leaq	.LC0(%rip), %r9
	leaq	.LC41(%rip), %rdx
	movl	$69, %edi
	call	siFormattedMessage_SC@PLT
	popq	%rcx
	.cfi_def_cfa_offset 24
	popq	%rsi
	.cfi_def_cfa_offset 16
	movl	$-1, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L176:
	.p2align 4,,10
	.p2align 3
.L182:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	leaq	.LC38(%rip), %rax
	movl	$575, %ecx
	movl	$-257, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC0(%rip), %r9
.L180:
	leaq	.LC41(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rax
	.cfi_def_cfa_offset 24
	popq	%rdx
	.cfi_def_cfa_offset 16
	movl	$-257, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L183:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	leaq	.LC42(%rip), %rax
	movl	$576, %ecx
	movl	$-257, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC0(%rip), %r9
	jmp	.L180
	.cfi_endproc
.LFE79:
	.size	EApiGPIOGetDirection, .-EApiGPIOGetDirection
	.section	.rodata.str1.1
.LC43:
	.string	"EApiGPIOSetDirection"
	.text
	.p2align 4
	.globl	EApiGPIOSetDirection
	.type	EApiGPIOSetDirection, @function
EApiGPIOSetDirection:
.LFB80:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	Initialized(%rip), %r8d
	testl	%r8d, %r8d
	je	.L189
	testl	%esi, %esi
	je	.L190
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	EApiGPIOSetDirectionEmul@PLT
	.p2align 4,,10
	.p2align 3
.L190:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	leaq	.LC38(%rip), %rax
	leaq	.LC43(%rip), %rdx
	movl	$-257, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC0(%rip), %r9
	xorl	%eax, %eax
	movl	$595, %ecx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	call	siFormattedMessage_SC@PLT
	popq	%rax
	.cfi_def_cfa_offset 24
	popq	%rdx
	.cfi_def_cfa_offset 16
	movl	$-257, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L186:
	.p2align 4,,10
	.p2align 3
.L189:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	leaq	.LC3(%rip), %rax
	movl	$594, %ecx
	movl	$-1, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	leaq	.LC0(%rip), %r9
	leaq	.LC43(%rip), %rdx
	movl	$69, %edi
	call	siFormattedMessage_SC@PLT
	popq	%rcx
	.cfi_def_cfa_offset 24
	popq	%rsi
	.cfi_def_cfa_offset 16
	movl	$-1, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE80:
	.size	EApiGPIOSetDirection, .-EApiGPIOSetDirection
	.section	.rodata.str1.1
.LC44:
	.string	"EApiGPIOGetDirectionCaps"
	.section	.rodata.str1.8
	.align 8
.LC45:
	.string	"((pOutputs==NULL)&&(pInputs==NULL))"
	.text
	.p2align 4
	.globl	EApiGPIOGetDirectionCaps
	.type	EApiGPIOGetDirectionCaps, @function
EApiGPIOGetDirectionCaps:
.LFB81:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	Initialized(%rip), %r8d
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	testl	%r8d, %r8d
	je	.L199
	movq	%rdx, %rax
	orq	%rsi, %rax
	je	.L200
	testq	%rsi, %rsi
	je	.L197
	leaq	4(%rsp), %rax
	testq	%rdx, %rdx
	cmove	%rax, %rdx
.L195:
	call	EApiGPIOGetDirectionCapsEmul@PLT
.L193:
	endbr64
.L191:
	movq	8(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L201
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L197:
	.cfi_restore_state
	leaq	4(%rsp), %rsi
	jmp	.L195
	.p2align 4,,10
	.p2align 3
.L199:
	subq	$8, %rsp
	.cfi_def_cfa_offset 40
	leaq	.LC3(%rip), %rax
	movl	$617, %ecx
	movl	$-1, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 48
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	leaq	.LC0(%rip), %r9
	leaq	.LC44(%rip), %rdx
	movl	$69, %edi
	call	siFormattedMessage_SC@PLT
	popq	%rcx
	.cfi_def_cfa_offset 40
	movl	$-1, %eax
	popq	%rsi
	.cfi_def_cfa_offset 32
	jmp	.L191
	.p2align 4,,10
	.p2align 3
.L200:
	subq	$8, %rsp
	.cfi_def_cfa_offset 40
	leaq	.LC45(%rip), %rax
	leaq	.LC44(%rip), %rdx
	movl	$-257, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 48
	leaq	.LC0(%rip), %r9
	xorl	%eax, %eax
	movl	$618, %ecx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	call	siFormattedMessage_SC@PLT
	popq	%rax
	.cfi_def_cfa_offset 40
	movl	$-257, %eax
	popq	%rdx
	.cfi_def_cfa_offset 32
	jmp	.L191
.L201:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE81:
	.size	EApiGPIOGetDirectionCaps, .-EApiGPIOGetDirectionCaps
	.section	.rodata.str1.1
.LC46:
	.string	"EApiLibInitialize"
.LC47:
	.string	"Library Already Initialized"
	.text
	.p2align 4
	.globl	EApiLibInitialize
	.type	EApiLibInitialize, @function
EApiLibInitialize:
.LFB82:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	cmpl	$1, Initialized(%rip)
	je	.L206
.L204:
	endbr64
	movl	$1, Initialized(%rip)
	xorl	%eax, %eax
	call	EApiInitLib@PLT
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	xorl	%r8d, %r8d
	leaq	.LC28(%rip), %rax
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC46(%rip), %rdx
	xorl	%eax, %eax
	leaq	.LC0(%rip), %r9
	movl	$652, %ecx
	leaq	.LC2(%rip), %rsi
	movl	$76, %edi
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
.L206:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	leaq	.LC47(%rip), %rax
	movl	$649, %ecx
	movl	$-1, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	leaq	.LC0(%rip), %r9
	leaq	.LC46(%rip), %rdx
	movl	$69, %edi
	call	siFormattedMessage_SC@PLT
	popq	%rcx
	.cfi_def_cfa_offset 24
	popq	%rsi
	.cfi_def_cfa_offset 16
	movl	$-1, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE82:
	.size	EApiLibInitialize, .-EApiLibInitialize
	.section	.rodata.str1.1
.LC48:
	.string	"EApiLibUnInitialize"
	.text
	.p2align 4
	.globl	EApiLibUnInitialize
	.type	EApiLibUnInitialize, @function
EApiLibUnInitialize:
.LFB83:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	Initialized(%rip), %edi
	testl	%edi, %edi
	je	.L211
.L209:
	endbr64
	xorl	%eax, %eax
	call	EApiUninitLib@PLT
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	xorl	%r8d, %r8d
	leaq	.LC28(%rip), %rax
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC48(%rip), %rdx
	xorl	%eax, %eax
	leaq	.LC0(%rip), %r9
	movl	$665, %ecx
	movl	$76, %edi
	leaq	.LC2(%rip), %rsi
	movl	$0, Initialized(%rip)
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
.L211:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	leaq	.LC3(%rip), %rax
	movl	$662, %ecx
	movl	$-1, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	leaq	.LC0(%rip), %r9
	leaq	.LC48(%rip), %rdx
	movl	$69, %edi
	call	siFormattedMessage_SC@PLT
	popq	%rcx
	.cfi_def_cfa_offset 24
	popq	%rsi
	.cfi_def_cfa_offset 16
	movl	$-1, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE83:
	.size	EApiLibUnInitialize, .-EApiLibUnInitialize
	.section	.rodata.str1.1
.LC49:
	.string	"EApiWDogGetCap"
	.section	.rodata.str1.8
	.align 8
.LC50:
	.string	"((pMaxDelay==NULL)&&(pMaxEventTimeout==NULL)&&(pMaxResetTimeout==NULL))"
	.text
	.p2align 4
	.globl	EApiWDogGetCap
	.type	EApiWDogGetCap, @function
EApiWDogGetCap:
.LFB84:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	Initialized(%rip), %r8d
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	testl	%r8d, %r8d
	je	.L222
	movq	%rdi, %rax
	orq	%rsi, %rax
	je	.L223
	testq	%rdi, %rdi
	je	.L220
	testq	%rsi, %rsi
	je	.L224
.L217:
	leaq	4(%rsp), %rax
	testq	%rdx, %rdx
	cmove	%rax, %rdx
.L216:
	call	EApiWDogGetCapEmul@PLT
.L214:
	endbr64
.L212:
	movq	8(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L225
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L223:
	.cfi_restore_state
	leaq	4(%rsp), %rdi
	movq	%rdi, %rsi
	testq	%rdx, %rdx
	jne	.L216
	subq	$8, %rsp
	.cfi_def_cfa_offset 40
	leaq	.LC50(%rip), %rax
	leaq	.LC49(%rip), %rdx
	movl	$-257, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 48
	leaq	.LC0(%rip), %r9
	xorl	%eax, %eax
	movl	$702, %ecx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	call	siFormattedMessage_SC@PLT
	popq	%rax
	.cfi_def_cfa_offset 40
	movl	$-257, %eax
	popq	%rdx
	.cfi_def_cfa_offset 32
	jmp	.L212
	.p2align 4,,10
	.p2align 3
.L222:
	subq	$8, %rsp
	.cfi_def_cfa_offset 40
	leaq	.LC3(%rip), %rax
	movl	$701, %ecx
	movl	$-1, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 48
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	leaq	.LC0(%rip), %r9
	leaq	.LC49(%rip), %rdx
	movl	$69, %edi
	call	siFormattedMessage_SC@PLT
	popq	%rcx
	.cfi_def_cfa_offset 40
	movl	$-1, %eax
	popq	%rsi
	.cfi_def_cfa_offset 32
	jmp	.L212
.L225:
	call	__stack_chk_fail@PLT
.L224:
	leaq	4(%rsp), %rsi
	jmp	.L217
.L220:
	leaq	4(%rsp), %rdi
	jmp	.L217
	.cfi_endproc
.LFE84:
	.size	EApiWDogGetCap, .-EApiWDogGetCap
	.section	.rodata.str1.1
.LC51:
	.string	"EApiWDogStart"
	.text
	.p2align 4
	.globl	EApiWDogStart
	.type	EApiWDogStart, @function
EApiWDogStart:
.LFB85:
	.cfi_startproc
	endbr64
	movl	Initialized(%rip), %eax
	testl	%eax, %eax
	je	.L230
	jmp	EApiWDogStartEmul@PLT
	.p2align 4,,10
	.p2align 3
.L230:
.L228:
	endbr64
	subq	$16, %rsp
	.cfi_def_cfa_offset 24
	movl	$729, %ecx
	movl	$69, %edi
	movl	$-1, %r8d
	leaq	.LC3(%rip), %rax
	leaq	.LC0(%rip), %r9
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC51(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	movl	$-1, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE85:
	.size	EApiWDogStart, .-EApiWDogStart
	.section	.rodata.str1.1
.LC52:
	.string	"EApiWDogTrigger"
	.text
	.p2align 4
	.globl	EApiWDogTrigger
	.type	EApiWDogTrigger, @function
EApiWDogTrigger:
.LFB86:
	.cfi_startproc
	endbr64
	movl	Initialized(%rip), %eax
	testl	%eax, %eax
	je	.L237
	jmp	EApiWDogTriggerEmul@PLT
	.p2align 4,,10
	.p2align 3
.L237:
.L235:
	endbr64
	subq	$16, %rsp
	.cfi_def_cfa_offset 24
	movl	$739, %ecx
	movl	$69, %edi
	movl	$-1, %r8d
	leaq	.LC3(%rip), %rax
	leaq	.LC0(%rip), %r9
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC52(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	movl	$-1, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE86:
	.size	EApiWDogTrigger, .-EApiWDogTrigger
	.section	.rodata.str1.1
.LC53:
	.string	"EApiWDogStop"
	.text
	.p2align 4
	.globl	EApiWDogStop
	.type	EApiWDogStop, @function
EApiWDogStop:
.LFB87:
	.cfi_startproc
	endbr64
	movl	Initialized(%rip), %eax
	testl	%eax, %eax
	je	.L244
	jmp	EApiWDogStopEmul@PLT
	.p2align 4,,10
	.p2align 3
.L244:
.L242:
	endbr64
	subq	$16, %rsp
	.cfi_def_cfa_offset 24
	movl	$749, %ecx
	movl	$69, %edi
	movl	$-1, %r8d
	leaq	.LC3(%rip), %rax
	leaq	.LC0(%rip), %r9
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC53(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	movl	$-1, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE87:
	.size	EApiWDogStop, .-EApiWDogStop
	.section	.rodata.str1.1
.LC54:
	.string	"EApiStorageCap"
	.section	.rodata.str1.8
	.align 8
.LC55:
	.string	"((pBlockLength==NULL)&&(pStorageSize==NULL))"
	.text
	.p2align 4
	.globl	EApiStorageCap
	.type	EApiStorageCap, @function
EApiStorageCap:
.LFB88:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	Initialized(%rip), %r8d
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	testl	%r8d, %r8d
	je	.L255
	movq	%rdx, %rax
	orq	%rsi, %rax
	je	.L256
	testq	%rsi, %rsi
	je	.L253
	leaq	4(%rsp), %rax
	testq	%rdx, %rdx
	cmove	%rax, %rdx
.L251:
	call	EApiStorageCapEmul@PLT
.L249:
	endbr64
.L247:
	movq	8(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L257
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L253:
	.cfi_restore_state
	leaq	4(%rsp), %rsi
	jmp	.L251
	.p2align 4,,10
	.p2align 3
.L255:
	subq	$8, %rsp
	.cfi_def_cfa_offset 40
	leaq	.LC3(%rip), %rax
	movl	$775, %ecx
	movl	$-1, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 48
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	leaq	.LC0(%rip), %r9
	leaq	.LC54(%rip), %rdx
	movl	$69, %edi
	call	siFormattedMessage_SC@PLT
	popq	%rcx
	.cfi_def_cfa_offset 40
	movl	$-1, %eax
	popq	%rsi
	.cfi_def_cfa_offset 32
	jmp	.L247
	.p2align 4,,10
	.p2align 3
.L256:
	subq	$8, %rsp
	.cfi_def_cfa_offset 40
	leaq	.LC55(%rip), %rax
	leaq	.LC54(%rip), %rdx
	movl	$-257, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 48
	leaq	.LC0(%rip), %r9
	xorl	%eax, %eax
	movl	$776, %ecx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	call	siFormattedMessage_SC@PLT
	popq	%rax
	.cfi_def_cfa_offset 40
	movl	$-257, %eax
	popq	%rdx
	.cfi_def_cfa_offset 32
	jmp	.L247
.L257:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE88:
	.size	EApiStorageCap, .-EApiStorageCap
	.section	.rodata.str1.1
.LC56:
	.string	"EApiStorageAreaRead"
	.section	.rodata.str1.8
	.align 8
.LC57:
	.string	"Id=%08X Offset=%04X BufLen=%04X ByteCnt=%04X\n"
	.align 8
.LC58:
	.string	" pBuffer Overflow PreventedByteCnt>BufLen"
	.text
	.p2align 4
	.globl	EApiStorageAreaRead
	.type	EApiStorageAreaRead, @function
EApiStorageAreaRead:
.LFB89:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
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
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	movl	Initialized(%rip), %r9d
	testl	%r9d, %r9d
	je	.L270
	pushq	%r8
	.cfi_def_cfa_offset 72
	movl	%edi, %ebp
	movl	%esi, %r13d
	movq	%rdx, %r14
	pushq	%rcx
	.cfi_def_cfa_offset 80
	movl	%ecx, %ebx
	movl	%r8d, %r12d
	leaq	.LC57(%rip), %r9
	pushq	%rsi
	.cfi_def_cfa_offset 88
	leaq	.LC8(%rip), %r8
	movl	$808, %ecx
	xorl	%eax, %eax
	pushq	%rdi
	.cfi_def_cfa_offset 96
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$76, %edi
	call	siFormattedMessage_M2@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 64
	testq	%r14, %r14
	je	.L271
	testl	%r12d, %r12d
	je	.L272
	testl	%ebx, %ebx
	je	.L273
	xorl	%r15d, %r15d
	cmpl	%r12d, %ebx
	jb	.L274
.L264:
	movl	%r12d, %ecx
	movq	%r14, %rdx
	movl	%r13d, %esi
	movl	%ebp, %edi
	call	EApiStorageAreaReadEmul@PLT
	testl	%eax, %eax
	cmovne	%eax, %r15d
.L260:
.L258:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%r15d, %eax
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
	.p2align 4,,10
	.p2align 3
.L270:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	movl	$-1, %r8d
	leaq	.LC3(%rip), %rax
	movl	$69, %edi
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC0(%rip), %r9
	xorl	%eax, %eax
	movl	$802, %ecx
	leaq	.LC56(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$-1, %r15d
	call	siFormattedMessage_SC@PLT
	popq	%rdi
	.cfi_def_cfa_offset 72
	popq	%r8
	.cfi_def_cfa_offset 64
	jmp	.L258
	.p2align 4,,10
	.p2align 3
.L274:
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	movl	$-1537, %r8d
	movl	%ebx, %r12d
	movl	$819, %ecx
	leaq	.LC58(%rip), %rax
	leaq	.LC56(%rip), %rdx
	movl	$69, %edi
	movl	$-1537, %r15d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC0(%rip), %r9
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rax
	.cfi_def_cfa_offset 72
	popq	%rdx
	.cfi_def_cfa_offset 64
	jmp	.L264
	.p2align 4,,10
	.p2align 3
.L272:
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	leaq	.LC18(%rip), %rax
	movl	$816, %ecx
	movl	$-257, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC0(%rip), %r9
.L269:
	leaq	.LC2(%rip), %rsi
	leaq	.LC56(%rip), %rdx
	movl	$69, %edi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	movl	$-257, %r15d
	popq	%rcx
	.cfi_def_cfa_offset 72
	popq	%rsi
	.cfi_def_cfa_offset 64
	jmp	.L258
	.p2align 4,,10
	.p2align 3
.L273:
	subq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 72
	leaq	.LC17(%rip), %rax
	movl	$817, %ecx
	movl	$-257, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC0(%rip), %r9
	jmp	.L269
	.p2align 4,,10
	.p2align 3
.L271:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	leaq	.LC16(%rip), %rax
	movl	$815, %ecx
	movl	$-257, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC0(%rip), %r9
	jmp	.L269
	.cfi_endproc
.LFE89:
	.size	EApiStorageAreaRead, .-EApiStorageAreaRead
	.section	.rodata.str1.1
.LC59:
	.string	"EApiStorageAreaWrite"
	.section	.rodata.str1.8
	.align 8
.LC60:
	.string	"Id=%08X Offset=%04X ByteCnt=%04X\n"
	.text
	.p2align 4
	.globl	EApiStorageAreaWrite
	.type	EApiStorageAreaWrite, @function
EApiStorageAreaWrite:
.LFB90:
	.cfi_startproc
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	Initialized(%rip), %r8d
	testl	%r8d, %r8d
	je	.L282
	subq	$8, %rsp
	.cfi_def_cfa_offset 56
	movl	%edi, %ebp
	movl	%esi, %r13d
	movq	%rdx, %r14
	pushq	%rcx
	.cfi_def_cfa_offset 64
	movl	%ecx, %r12d
	leaq	.LC60(%rip), %r9
	movl	$845, %ecx
	pushq	%rsi
	.cfi_def_cfa_offset 72
	leaq	.LC8(%rip), %r8
	leaq	.LC9(%rip), %rdx
	xorl	%eax, %eax
	pushq	%rdi
	.cfi_def_cfa_offset 80
	leaq	.LC2(%rip), %rsi
	movl	$76, %edi
	call	siFormattedMessage_M2@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 48
	testq	%r14, %r14
	je	.L283
	testl	%r12d, %r12d
	je	.L284
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movl	%r12d, %ecx
	movq	%r14, %rdx
	movl	%r13d, %esi
	movl	%ebp, %edi
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	EApiStorageAreaWriteEmul@PLT
	.p2align 4,,10
	.p2align 3
.L282:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 56
	leaq	.LC3(%rip), %rax
	movl	$839, %ecx
	movl	$-1, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 64
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	leaq	.LC0(%rip), %r9
	leaq	.LC59(%rip), %rdx
	movl	$69, %edi
	call	siFormattedMessage_SC@PLT
	popq	%rcx
	.cfi_def_cfa_offset 56
	popq	%rsi
	.cfi_def_cfa_offset 48
	movl	$-1, %eax
	addq	$8, %rsp
	.cfi_remember_state
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
.L277:
	.p2align 4,,10
	.p2align 3
.L284:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 56
	leaq	.LC18(%rip), %rax
	movl	$853, %ecx
	movl	$-257, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 64
	leaq	.LC0(%rip), %r9
.L281:
	leaq	.LC59(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rax
	.cfi_def_cfa_offset 56
	popq	%rdx
	.cfi_def_cfa_offset 48
	movl	$-257, %eax
	addq	$8, %rsp
	.cfi_remember_state
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
.L283:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 56
	leaq	.LC16(%rip), %rax
	movl	$852, %ecx
	movl	$-257, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 64
	leaq	.LC0(%rip), %r9
	jmp	.L281
	.cfi_endproc
.LFE90:
	.size	EApiStorageAreaWrite, .-EApiStorageAreaWrite
	.hidden	Initialized
	.globl	Initialized
	.bss
	.align 4
	.type	Initialized, @object
	.size	Initialized, 4
Initialized:
	.zero	4
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
