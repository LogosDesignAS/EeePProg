	.file	"EApiAPI.cpp"
	.text
.Ltext0:
	.hidden	Initialized
	.globl	Initialized
	.bss
	.align 4
	.type	Initialized, @object
	.size	Initialized, 4
Initialized:
	.zero	4
	.section	.rodata
.LC0:
	.string	"%s\n"
.LC1:
	.string	"EApiI2CGetBusCap"
	.align 8
.LC2:
	.string	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EApiAPI.cpp"
.LC3:
	.string	"Library Uninitialized"
.LC4:
	.string	"(pMaxBlkLen==NULL)"
	.text
	.globl	EApiI2CGetBusCap
	.type	EApiI2CGetBusCap, @function
EApiI2CGetBusCap:
.LFB6:
	.file 1 "/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EApiAPI.cpp"
	.loc 1 74 1
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
	.loc 1 76 3
	movl	Initialized(%rip), %eax
	testl	%eax, %eax
	jne	.L2
	.loc 1 76 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC3(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-1, %r8d
	movl	$76, %ecx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-1, -4(%rbp)
	jmp	.L3
.L2:
	.loc 1 77 3 is_stmt 1
	cmpq	$0, -32(%rbp)
	jne	.L4
	.loc 1 77 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC4(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-257, %r8d
	movl	$77, %ecx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-257, -4(%rbp)
	jmp	.L3
.L4:
	.loc 1 79 14 is_stmt 1
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	EApiI2CGetBusCapEmul@PLT
	movl	%eax, -4(%rbp)
.L3:
	.loc 1 81 10
	movl	-4(%rbp), %eax
	.loc 1 82 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	EApiI2CGetBusCap, .-EApiI2CGetBusCap
	.section	.rodata
.LC5:
	.string	"EApiI2CWriteReadRaw"
.LC6:
	.string	"pWBuffer is NULL"
	.align 8
.LC7:
	.string	"ADDR=%02X WriteBCnt=%04X RBufLen=%04X WriteBCnt=%04X ReadBCnt=%04X %08X\n"
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
	.align 8
.LC13:
	.string	" pBuffer Overflow PreventedReadBCnt>RBufLen+1"
	.text
	.globl	EApiI2CWriteReadRaw
	.type	EApiI2CWriteReadRaw, @function
EApiI2CWriteReadRaw:
.LFB7:
	.loc 1 101 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, %eax
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -40(%rbp)
	movb	%al, -24(%rbp)
	.loc 1 102 16
	movl	$0, -8(%rbp)
	.loc 1 104 3
	movl	Initialized(%rip), %eax
	testl	%eax, %eax
	jne	.L7
	.loc 1 104 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC3(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-1, %r8d
	movl	$104, %ecx
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-1, -8(%rbp)
	jmp	.L8
.L7:
	.loc 1 105 3 is_stmt 1
	cmpl	$1, -36(%rbp)
	jbe	.L9
	.loc 1 105 3 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)
	jne	.L9
	.loc 1 105 3 discriminator 2
	subq	$8, %rsp
	leaq	.LC6(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-257, %r8d
	movl	$105, %ecx
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-257, -8(%rbp)
	jmp	.L8
.L9:
	.loc 1 111 3 is_stmt 1
	cmpl	$0, -36(%rbp)
	je	.L10
	.loc 1 111 3 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	jmp	.L11
.L10:
	.loc 1 111 3 discriminator 2
	movl	$0, %eax
.L11:
	.loc 1 111 3 discriminator 4
	movzbl	-24(%rbp), %edx
	pushq	%rax
	movl	16(%rbp), %eax
	pushq	%rax
	movl	-36(%rbp), %eax
	pushq	%rax
	movl	-40(%rbp), %eax
	pushq	%rax
	movl	-36(%rbp), %eax
	pushq	%rax
	pushq	%rdx
	leaq	.LC7(%rip), %r9
	leaq	.LC8(%rip), %r8
	movl	$115, %ecx
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$76, %edi
	movl	$0, %eax
	call	siFormattedMessage_M2@PLT
	addq	$48, %rsp
	.loc 1 124 3 is_stmt 1 discriminator 4
	cmpl	$1, 16(%rbp)
	jbe	.L12
	.loc 1 124 3 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)
	jne	.L12
	.loc 1 124 3 discriminator 2
	subq	$8, %rsp
	leaq	.LC10(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-257, %r8d
	movl	$124, %ecx
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-257, -8(%rbp)
	jmp	.L8
.L12:
	.loc 1 129 3 is_stmt 1
	cmpl	$1, 16(%rbp)
	jbe	.L13
	.loc 1 129 3 is_stmt 0 discriminator 1
	cmpl	$0, -40(%rbp)
	jne	.L13
	.loc 1 129 3 discriminator 2
	subq	$8, %rsp
	leaq	.LC11(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-257, %r8d
	movl	$129, %ecx
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-257, -8(%rbp)
	jmp	.L8
.L13:
	.loc 1 134 3 is_stmt 1
	cmpl	$0, -36(%rbp)
	jne	.L14
	.loc 1 134 3 is_stmt 0 discriminator 1
	cmpl	$0, 16(%rbp)
	jne	.L14
	.loc 1 134 3 discriminator 2
	subq	$8, %rsp
	leaq	.LC12(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-257, %r8d
	movl	$134, %ecx
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-257, -8(%rbp)
	jmp	.L8
.L14:
	.loc 1 140 3 is_stmt 1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, 16(%rbp)
	jbe	.L15
	.loc 1 140 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC13(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-1537, %r8d
	movl	$140, %ecx
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, 16(%rbp)
	movl	$-1537, -8(%rbp)
.L15:
	.loc 1 146 14 is_stmt 1
	movzbl	-24(%rbp), %esi
	movq	-48(%rbp), %rdi
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %eax
	movl	16(%rbp), %r9d
	movq	%rdi, %r8
	movl	%eax, %edi
	call	EApiI2CWriteReadEmul@PLT
	movl	%eax, -4(%rbp)
	.loc 1 154 5
	cmpl	$0, -4(%rbp)
	je	.L17
	.loc 1 155 15
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L8
.L17:
	.loc 1 156 1
	nop
.L8:
	.loc 1 157 10
	movl	-8(%rbp), %eax
	.loc 1 159 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	EApiI2CWriteReadRaw, .-EApiI2CWriteReadRaw
	.section	.rodata
.LC14:
	.string	"EApiI2CReadTransfer"
	.align 8
.LC15:
	.string	"Id=%08X ADDR=%04X CMD=%04X BCNT=%04X\n"
.LC16:
	.string	"(pBuffer==NULL)"
.LC17:
	.string	"(BufLen==0)"
.LC18:
	.string	"(ByteCnt==0)"
	.align 8
.LC19:
	.string	" Transfer Length too long for interface"
	.text
	.globl	EApiI2CReadTransfer
	.type	EApiI2CReadTransfer, @function
EApiI2CReadTransfer:
.LFB8:
	.loc 1 174 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	%edx, -44(%rbp)
	movq	%rcx, -56(%rbp)
	movl	%r8d, -48(%rbp)
	movl	%r9d, -60(%rbp)
	.loc 1 174 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 175 16
	movl	$0, -24(%rbp)
	.loc 1 176 11
	movq	$0, -16(%rbp)
	.loc 1 177 7
	movl	$0, -20(%rbp)
	.loc 1 181 3
	movl	Initialized(%rip), %eax
	testl	%eax, %eax
	jne	.L19
	.loc 1 181 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC3(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-1, %r8d
	movl	$181, %ecx
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-1, -24(%rbp)
	jmp	.L20
.L19:
	.loc 1 184 3 is_stmt 1
	movl	-60(%rbp), %eax
	pushq	%rax
	movl	-44(%rbp), %eax
	pushq	%rax
	movl	-40(%rbp), %eax
	pushq	%rax
	movl	-36(%rbp), %eax
	pushq	%rax
	leaq	.LC15(%rip), %r9
	leaq	.LC8(%rip), %r8
	movl	$188, %ecx
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$76, %edi
	movl	$0, %eax
	call	siFormattedMessage_M2@PLT
	addq	$32, %rsp
	.loc 1 195 3
	cmpq	$0, -56(%rbp)
	jne	.L21
	.loc 1 195 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC16(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-257, %r8d
	movl	$195, %ecx
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-257, -24(%rbp)
	jmp	.L20
.L21:
	.loc 1 196 3 is_stmt 1
	cmpl	$0, -48(%rbp)
	jne	.L22
	.loc 1 196 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC17(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-257, %r8d
	movl	$196, %ecx
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-257, -24(%rbp)
	jmp	.L20
.L22:
	.loc 1 197 3 is_stmt 1
	cmpl	$0, -60(%rbp)
	jne	.L23
	.loc 1 197 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC18(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-257, %r8d
	movl	$197, %ecx
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-257, -24(%rbp)
	jmp	.L20
.L23:
	.loc 1 198 3 is_stmt 1
	cmpl	$0, -48(%rbp)
	jne	.L24
	.loc 1 198 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC17(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-257, %r8d
	movl	$198, %ecx
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-257, -24(%rbp)
	jmp	.L20
.L24:
	.loc 1 201 5 is_stmt 1
	leaq	-28(%rbp), %rdx
	movl	-36(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	EApiI2CGetBusCap@PLT
	.loc 1 202 5
	movl	-28(%rbp), %eax
	cmpl	%eax, -60(%rbp)
	jbe	.L25
	.loc 1 202 5 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC19(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-257, %r8d
	movl	$202, %ecx
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-257, -24(%rbp)
	jmp	.L20
.L25:
	.loc 1 209 6 is_stmt 1
	movl	-40(%rbp), %eax
	andl	$63488, %eax
	.loc 1 209 5
	cmpl	$61440, %eax
	jne	.L26
	.loc 1 211 26
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -20(%rbp)
	.loc 1 211 30
	movl	-40(%rbp), %edx
	.loc 1 211 29
	cltq
	movb	%dl, -16(%rbp,%rax)
	.loc 1 212 9
	shrl	$8, -40(%rbp)
.L26:
	.loc 1 215 7
	movl	-44(%rbp), %eax
	andl	$-1073741824, %eax
	.loc 1 215 5
	cmpl	$1073741824, %eax
	je	.L27
	.loc 1 216 8
	movl	-44(%rbp), %eax
	andl	$-1073741824, %eax
	.loc 1 216 7
	cmpl	$-2147483648, %eax
	jne	.L28
	.loc 1 217 46
	movl	-44(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %ecx
	.loc 1 217 28
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -20(%rbp)
	.loc 1 217 32
	movl	%ecx, %edx
	.loc 1 217 31
	cltq
	movb	%dl, -16(%rbp,%rax)
.L28:
	.loc 1 218 26
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -20(%rbp)
	.loc 1 218 30
	movl	-44(%rbp), %edx
	.loc 1 218 29
	cltq
	movb	%dl, -16(%rbp,%rax)
.L27:
	.loc 1 221 14
	movl	-60(%rbp), %eax
	leal	1(%rax), %ecx
	.loc 1 225 17
	movl	-20(%rbp), %eax
	addl	$1, %eax
	.loc 1 221 14
	movl	%eax, %r10d
	.loc 1 223 7
	movl	-40(%rbp), %eax
	.loc 1 221 14
	movzbl	%al, %esi
	movl	-48(%rbp), %r8d
	movq	-56(%rbp), %rdi
	leaq	-16(%rbp), %rdx
	movl	-36(%rbp), %eax
	subq	$8, %rsp
	pushq	%rcx
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movl	%r10d, %ecx
	movl	%eax, %edi
	call	EApiI2CWriteReadRaw@PLT
	addq	$16, %rsp
	movl	%eax, -24(%rbp)
.L20:
	.loc 1 231 10
	movl	-24(%rbp), %eax
	.loc 1 232 1
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L30
	call	__stack_chk_fail@PLT
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	EApiI2CReadTransfer, .-EApiI2CReadTransfer
	.section	.rodata
	.align 8
.LC20:
	.string	"Id=%08X ADDR=%04X CMD=%04X BCNT=%04X %08X\n"
.LC21:
	.string	"Error Allocating Memory"
	.align 8
.LC22:
	.string	"Transfer Length too long for interface"
	.text
	.globl	EApiI2CWriteTransfer
	.type	EApiI2CWriteTransfer, @function
EApiI2CWriteTransfer:
.LFB9:
	.loc 1 247 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	%edx, -44(%rbp)
	movq	%rcx, -56(%rbp)
	movl	%r8d, -48(%rbp)
	.loc 1 247 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 248 16
	movl	$0, -28(%rbp)
	.loc 1 250 12
	movl	$0, -24(%rbp)
	.loc 1 253 3
	movl	Initialized(%rip), %eax
	testl	%eax, %eax
	jne	.L32
	.loc 1 253 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC3(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-1, %r8d
	movl	$253, %ecx
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-1, -28(%rbp)
	jmp	.L33
.L32:
	.loc 1 255 3 is_stmt 1
	cmpq	$0, -56(%rbp)
	jne	.L34
	.loc 1 255 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC16(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-257, %r8d
	movl	$255, %ecx
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-257, -28(%rbp)
	jmp	.L33
.L34:
	.loc 1 257 3 is_stmt 1
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	subq	$8, %rsp
	pushq	%rax
	movl	-48(%rbp), %eax
	pushq	%rax
	movl	-44(%rbp), %eax
	pushq	%rax
	movl	-40(%rbp), %eax
	pushq	%rax
	movl	-36(%rbp), %eax
	pushq	%rax
	leaq	.LC20(%rip), %r9
	leaq	.LC8(%rip), %r8
	movl	$261, %ecx
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$76, %edi
	movl	$0, %eax
	call	siFormattedMessage_M2@PLT
	addq	$48, %rsp
	.loc 1 268 3
	cmpl	$0, -48(%rbp)
	jne	.L35
	.loc 1 268 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC18(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-257, %r8d
	movl	$268, %ecx
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-257, -28(%rbp)
	jmp	.L33
.L35:
	.loc 1 270 39 is_stmt 1
	movl	-48(%rbp), %eax
	addl	$3, %eax
	.loc 1 270 25
	movl	%eax, %eax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -16(%rbp)
	.loc 1 271 3
	cmpq	$0, -16(%rbp)
	jne	.L36
	.loc 1 271 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC21(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-3, %r8d
	movl	$271, %ecx
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-3, -28(%rbp)
	jmp	.L33
.L36:
	.loc 1 278 6 is_stmt 1
	movl	-40(%rbp), %eax
	andl	$63488, %eax
	.loc 1 278 5
	cmpl	$61440, %eax
	jne	.L37
	.loc 1 280 17
	movl	-40(%rbp), %eax
	movl	%eax, %edx
	.loc 1 280 16
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	.loc 1 281 9
	shrl	$8, -40(%rbp)
	.loc 1 282 15
	addl	$1, -24(%rbp)
.L37:
	.loc 1 285 7
	movl	-44(%rbp), %eax
	andl	$-1073741824, %eax
	.loc 1 285 5
	cmpl	$1073741824, %eax
	je	.L38
	.loc 1 286 8
	movl	-44(%rbp), %eax
	andl	$-1073741824, %eax
	.loc 1 286 7
	cmpl	$-2147483648, %eax
	jne	.L39
	.loc 1 287 46
	movl	-44(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %ecx
	.loc 1 287 28
	movl	-24(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -24(%rbp)
	movl	%eax, %edx
	.loc 1 287 17
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 287 32
	movl	%ecx, %edx
	.loc 1 287 31
	movb	%dl, (%rax)
.L39:
	.loc 1 289 26
	movl	-24(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -24(%rbp)
	movl	%eax, %edx
	.loc 1 289 15
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 289 30
	movl	-44(%rbp), %edx
	.loc 1 289 29
	movb	%dl, (%rax)
.L38:
	.loc 1 293 3
	leaq	-32(%rbp), %rdx
	movl	-36(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	EApiI2CGetBusCap@PLT
	.loc 1 294 3
	movl	-24(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%eax, %edx
	movl	-32(%rbp), %eax
	cmpl	%eax, %edx
	jbe	.L40
	.loc 1 294 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC22(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-257, %r8d
	movl	$294, %ecx
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-257, -28(%rbp)
	jmp	.L33
.L40:
	.loc 1 301 5 is_stmt 1
	cmpl	$0, -24(%rbp)
	je	.L41
	.loc 1 302 5
	movl	-48(%rbp), %edx
	movl	-24(%rbp), %ecx
	.loc 1 302 22
	movq	-16(%rbp), %rax
	addq	%rax, %rcx
	.loc 1 302 5
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	jmp	.L42
.L41:
	.loc 1 305 5
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 306 15
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
.L42:
	.loc 1 309 3
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	subq	$8, %rsp
	pushq	%rax
	movl	-48(%rbp), %eax
	pushq	%rax
	movl	-44(%rbp), %eax
	pushq	%rax
	movl	-40(%rbp), %eax
	pushq	%rax
	movl	-36(%rbp), %eax
	pushq	%rax
	leaq	.LC20(%rip), %r9
	leaq	.LC8(%rip), %r8
	movl	$313, %ecx
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$76, %edi
	movl	$0, %eax
	call	siFormattedMessage_M2@PLT
	addq	$48, %rsp
	.loc 1 325 17
	movl	-24(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	.loc 1 321 15
	leal	1(%rax), %ecx
	.loc 1 323 7
	movl	-40(%rbp), %eax
	.loc 1 321 15
	movzbl	%al, %esi
	movq	-16(%rbp), %rdx
	movl	-36(%rbp), %eax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	%eax, %edi
	call	EApiI2CWriteReadRaw@PLT
	addq	$16, %rsp
	movl	%eax, -20(%rbp)
	.loc 1 330 5
	cmpl	$0, -24(%rbp)
	je	.L45
	.loc 1 331 5
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L33
.L45:
	.loc 1 332 1
	nop
.L33:
	.loc 1 333 10
	movl	-28(%rbp), %eax
	.loc 1 334 1
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L44
	call	__stack_chk_fail@PLT
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	EApiI2CWriteTransfer, .-EApiI2CWriteTransfer
	.globl	EApiI2CProbeDevice
	.type	EApiI2CProbeDevice, @function
EApiI2CProbeDevice:
.LFB10:
	.loc 1 344 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	.loc 1 344 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 345 16
	movl	$0, -24(%rbp)
	.loc 1 346 11
	movq	$0, -16(%rbp)
	.loc 1 347 7
	movl	$0, -20(%rbp)
	.loc 1 348 3
	movl	Initialized(%rip), %eax
	testl	%eax, %eax
	jne	.L47
	.loc 1 348 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC3(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-1, %r8d
	movl	$348, %ecx
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-1, -24(%rbp)
	jmp	.L48
.L47:
	.loc 1 349 6 is_stmt 1
	movl	-40(%rbp), %eax
	andl	$63488, %eax
	.loc 1 349 5
	cmpl	$61440, %eax
	jne	.L49
	.loc 1 351 26
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -20(%rbp)
	.loc 1 351 30
	movl	-40(%rbp), %edx
	.loc 1 351 29
	cltq
	movb	%dl, -16(%rbp,%rax)
	.loc 1 352 9
	shrl	$8, -40(%rbp)
.L49:
	.loc 1 358 17
	movl	-20(%rbp), %eax
	addl	$1, %eax
	.loc 1 354 14
	movl	%eax, %ecx
	.loc 1 356 7
	movl	-40(%rbp), %eax
	.loc 1 354 14
	movzbl	%al, %esi
	leaq	-16(%rbp), %rdx
	movl	-36(%rbp), %eax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	%eax, %edi
	call	EApiI2CWriteReadRaw@PLT
	addq	$16, %rsp
	movl	%eax, -24(%rbp)
	.loc 1 363 5
	cmpl	$-1282, -24(%rbp)
	jne	.L52
	.loc 1 364 15
	movl	$-1025, -24(%rbp)
	jmp	.L48
.L52:
	.loc 1 365 1
	nop
.L48:
	.loc 1 366 10
	movl	-24(%rbp), %eax
	.loc 1 367 1
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L51
	call	__stack_chk_fail@PLT
.L51:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	EApiI2CProbeDevice, .-EApiI2CProbeDevice
	.section	.rodata
.LC23:
	.string	"EApiBoardGetStringA"
.LC24:
	.string	"(pBufLen==NULL)"
.LC25:
	.string	"pBuffer is NULL"
	.text
	.globl	EApiBoardGetStringA
	.type	EApiBoardGetStringA, @function
EApiBoardGetStringA:
.LFB11:
	.loc 1 385 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 1 386 16
	movl	$0, -4(%rbp)
	.loc 1 387 3
	movl	Initialized(%rip), %eax
	testl	%eax, %eax
	jne	.L54
	.loc 1 387 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC3(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-1, %r8d
	movl	$387, %ecx
	leaq	.LC23(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-1, -4(%rbp)
	jmp	.L55
.L54:
	.loc 1 388 3 is_stmt 1
	cmpq	$0, -40(%rbp)
	jne	.L56
	.loc 1 388 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC24(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-257, %r8d
	movl	$388, %ecx
	leaq	.LC23(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-257, -4(%rbp)
	jmp	.L55
.L56:
	.loc 1 389 3 is_stmt 1
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L57
	.loc 1 389 3 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)
	jne	.L57
	.loc 1 389 3 discriminator 2
	subq	$8, %rsp
	leaq	.LC25(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-257, %r8d
	movl	$389, %ecx
	leaq	.LC23(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-257, -4(%rbp)
	jmp	.L55
.L57:
	.loc 1 395 14 is_stmt 1
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	EApiBoardGetStringAEmul@PLT
	movl	%eax, -4(%rbp)
.L55:
	.loc 1 397 10
	movl	-4(%rbp), %eax
	.loc 1 398 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	EApiBoardGetStringA, .-EApiBoardGetStringA
	.section	.rodata
.LC26:
	.string	"EApiBoardGetValue"
.LC27:
	.string	"(pValue==NULL)"
.LC28:
	.string	""
	.text
	.globl	EApiBoardGetValue
	.type	EApiBoardGetValue, @function
EApiBoardGetValue:
.LFB12:
	.loc 1 415 1
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
	.loc 1 416 16
	movl	$0, -4(%rbp)
	.loc 1 417 3
	movl	Initialized(%rip), %eax
	testl	%eax, %eax
	jne	.L60
	.loc 1 417 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC3(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-1, %r8d
	movl	$417, %ecx
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-1, -4(%rbp)
	jmp	.L61
.L60:
	.loc 1 418 3 is_stmt 1
	cmpq	$0, -32(%rbp)
	jne	.L62
	.loc 1 418 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC27(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-257, %r8d
	movl	$418, %ecx
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-257, -4(%rbp)
	jmp	.L61
.L62:
	.loc 1 420 5 is_stmt 1
	cmpl	$0, -20(%rbp)
	jne	.L63
	.loc 1 421 12
	movq	-32(%rbp), %rax
	movl	$16777216, (%rax)
	.loc 1 422 5
	subq	$8, %rsp
	leaq	.LC28(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$0, %r8d
	movl	$422, %ecx
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$76, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$0, -4(%rbp)
	jmp	.L61
.L63:
	.loc 1 425 14
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	EApiBoardGetValueEmul@PLT
	movl	%eax, -4(%rbp)
.L61:
	.loc 1 428 10
	movl	-4(%rbp), %eax
	.loc 1 429 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	EApiBoardGetValue, .-EApiBoardGetValue
	.section	.rodata
.LC29:
	.string	"EApiVgaGetBacklightEnable"
.LC30:
	.string	"(pEnable==NULL)"
	.text
	.globl	EApiVgaGetBacklightEnable
	.type	EApiVgaGetBacklightEnable, @function
EApiVgaGetBacklightEnable:
.LFB13:
	.loc 1 446 1
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
	.loc 1 447 16
	movl	$0, -4(%rbp)
	.loc 1 448 3
	movl	Initialized(%rip), %eax
	testl	%eax, %eax
	jne	.L66
	.loc 1 448 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC3(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-1, %r8d
	movl	$448, %ecx
	leaq	.LC29(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-1, -4(%rbp)
	jmp	.L67
.L66:
	.loc 1 449 3 is_stmt 1
	cmpq	$0, -32(%rbp)
	jne	.L68
	.loc 1 449 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC30(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-257, %r8d
	movl	$449, %ecx
	leaq	.LC29(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-257, -4(%rbp)
	jmp	.L67
.L68:
	.loc 1 451 14 is_stmt 1
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	EApiVgaGetBacklightEnableEmul@PLT
	movl	%eax, -4(%rbp)
.L67:
	.loc 1 453 10
	movl	-4(%rbp), %eax
	.loc 1 454 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	EApiVgaGetBacklightEnable, .-EApiVgaGetBacklightEnable
	.section	.rodata
.LC31:
	.string	"EApiVgaSetBacklightEnable"
.LC32:
	.string	"Enable Invalid Value"
	.text
	.globl	EApiVgaSetBacklightEnable
	.type	EApiVgaSetBacklightEnable, @function
EApiVgaSetBacklightEnable:
.LFB14:
	.loc 1 462 1
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
	.loc 1 463 16
	movl	$0, -4(%rbp)
	.loc 1 465 3
	movl	Initialized(%rip), %eax
	testl	%eax, %eax
	jne	.L71
	.loc 1 465 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC3(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-1, %r8d
	movl	$465, %ecx
	leaq	.LC31(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-1, -4(%rbp)
	jmp	.L72
.L71:
	.loc 1 466 3 is_stmt 1
	cmpl	$0, -24(%rbp)
	jne	.L73
	.loc 1 466 3 is_stmt 0 discriminator 2
	cmpl	$-1, -24(%rbp)
	je	.L74
.L73:
	.loc 1 466 3 discriminator 3
	subq	$8, %rsp
	leaq	.LC32(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-257, %r8d
	movl	$466, %ecx
	leaq	.LC31(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-257, -4(%rbp)
	jmp	.L72
.L74:
	.loc 1 472 14 is_stmt 1
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	EApiVgaSetBacklightEnableEmul@PLT
	movl	%eax, -4(%rbp)
.L72:
	.loc 1 474 10
	movl	-4(%rbp), %eax
	.loc 1 475 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	EApiVgaSetBacklightEnable, .-EApiVgaSetBacklightEnable
	.section	.rodata
.LC33:
	.string	"EApiVgaGetBacklightBrightness"
.LC34:
	.string	"(pBright==NULL)"
	.text
	.globl	EApiVgaGetBacklightBrightness
	.type	EApiVgaGetBacklightBrightness, @function
EApiVgaGetBacklightBrightness:
.LFB15:
	.loc 1 482 1
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
	.loc 1 483 16
	movl	$0, -4(%rbp)
	.loc 1 484 3
	movl	Initialized(%rip), %eax
	testl	%eax, %eax
	jne	.L77
	.loc 1 484 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC3(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-1, %r8d
	movl	$484, %ecx
	leaq	.LC33(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-1, -4(%rbp)
	jmp	.L78
.L77:
	.loc 1 485 3 is_stmt 1
	cmpq	$0, -32(%rbp)
	jne	.L79
	.loc 1 485 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC34(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-257, %r8d
	movl	$485, %ecx
	leaq	.LC33(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-257, -4(%rbp)
	jmp	.L78
.L79:
	.loc 1 487 14 is_stmt 1
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	EApiVgaGetBacklightBrightnessEmul@PLT
	movl	%eax, -4(%rbp)
.L78:
	.loc 1 489 10
	movl	-4(%rbp), %eax
	.loc 1 490 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	EApiVgaGetBacklightBrightness, .-EApiVgaGetBacklightBrightness
	.section	.rodata
.LC35:
	.string	"EApiVgaSetBacklightBrightness"
.LC36:
	.string	"Brightness Invalid Value"
	.text
	.globl	EApiVgaSetBacklightBrightness
	.type	EApiVgaSetBacklightBrightness, @function
EApiVgaSetBacklightBrightness:
.LFB16:
	.loc 1 498 1
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
	.loc 1 499 16
	movl	$0, -4(%rbp)
	.loc 1 500 3
	movl	Initialized(%rip), %eax
	testl	%eax, %eax
	jne	.L82
	.loc 1 500 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC3(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-1, %r8d
	movl	$500, %ecx
	leaq	.LC35(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-1, -4(%rbp)
	jmp	.L83
.L82:
	.loc 1 501 3 is_stmt 1
	cmpl	$255, -24(%rbp)
	jbe	.L84
	.loc 1 501 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC36(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-257, %r8d
	movl	$501, %ecx
	leaq	.LC35(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-257, -4(%rbp)
	jmp	.L83
.L84:
	.loc 1 507 14 is_stmt 1
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	EApiVgaSetBacklightBrightnessEmul@PLT
	movl	%eax, -4(%rbp)
.L83:
	.loc 1 509 10
	movl	-4(%rbp), %eax
	.loc 1 510 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	EApiVgaSetBacklightBrightness, .-EApiVgaSetBacklightBrightness
	.section	.rodata
.LC37:
	.string	"EApiGPIOGetLevel"
.LC38:
	.string	"(Bitmask==0)"
.LC39:
	.string	"(pLevel==NULL)"
	.text
	.globl	EApiGPIOGetLevel
	.type	EApiGPIOGetLevel, @function
EApiGPIOGetLevel:
.LFB17:
	.loc 1 533 1
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
	movq	%rdx, -32(%rbp)
	.loc 1 534 16
	movl	$0, -4(%rbp)
	.loc 1 535 3
	movl	Initialized(%rip), %eax
	testl	%eax, %eax
	jne	.L87
	.loc 1 535 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC3(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-1, %r8d
	movl	$535, %ecx
	leaq	.LC37(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-1, -4(%rbp)
	jmp	.L88
.L87:
	.loc 1 536 3 is_stmt 1
	cmpl	$0, -24(%rbp)
	jne	.L89
	.loc 1 536 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC38(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-257, %r8d
	movl	$536, %ecx
	leaq	.LC37(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-257, -4(%rbp)
	jmp	.L88
.L89:
	.loc 1 537 3 is_stmt 1
	cmpq	$0, -32(%rbp)
	jne	.L90
	.loc 1 537 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC39(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-257, %r8d
	movl	$537, %ecx
	leaq	.LC37(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-257, -4(%rbp)
	jmp	.L88
.L90:
	.loc 1 539 14 is_stmt 1
	movq	-32(%rbp), %rdx
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	EApiGPIOGetLevelEmul@PLT
	movl	%eax, -4(%rbp)
.L88:
	.loc 1 541 10
	movl	-4(%rbp), %eax
	.loc 1 542 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	EApiGPIOGetLevel, .-EApiGPIOGetLevel
	.section	.rodata
.LC40:
	.string	"EApiGPIOSetLevel"
	.text
	.globl	EApiGPIOSetLevel
	.type	EApiGPIOSetLevel, @function
EApiGPIOSetLevel:
.LFB18:
	.loc 1 553 1
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
	.loc 1 554 16
	movl	$0, -4(%rbp)
	.loc 1 555 3
	movl	Initialized(%rip), %eax
	testl	%eax, %eax
	jne	.L93
	.loc 1 555 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC3(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-1, %r8d
	movl	$555, %ecx
	leaq	.LC40(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-1, -4(%rbp)
	jmp	.L94
.L93:
	.loc 1 556 3 is_stmt 1
	cmpl	$0, -24(%rbp)
	jne	.L95
	.loc 1 556 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC38(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-257, %r8d
	movl	$556, %ecx
	leaq	.LC40(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-257, -4(%rbp)
	jmp	.L94
.L95:
	.loc 1 558 14 is_stmt 1
	movl	-28(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	EApiGPIOSetLevelEmul@PLT
	movl	%eax, -4(%rbp)
.L94:
	.loc 1 560 10
	movl	-4(%rbp), %eax
	.loc 1 561 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	EApiGPIOSetLevel, .-EApiGPIOSetLevel
	.section	.rodata
.LC41:
	.string	"EApiGPIOGetDirection"
.LC42:
	.string	"(pDirection==NULL)"
	.text
	.globl	EApiGPIOGetDirection
	.type	EApiGPIOGetDirection, @function
EApiGPIOGetDirection:
.LFB19:
	.loc 1 572 1
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
	movq	%rdx, -32(%rbp)
	.loc 1 573 16
	movl	$0, -4(%rbp)
	.loc 1 574 3
	movl	Initialized(%rip), %eax
	testl	%eax, %eax
	jne	.L98
	.loc 1 574 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC3(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-1, %r8d
	movl	$574, %ecx
	leaq	.LC41(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-1, -4(%rbp)
	jmp	.L99
.L98:
	.loc 1 575 3 is_stmt 1
	cmpl	$0, -24(%rbp)
	jne	.L100
	.loc 1 575 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC38(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-257, %r8d
	movl	$575, %ecx
	leaq	.LC41(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-257, -4(%rbp)
	jmp	.L99
.L100:
	.loc 1 576 3 is_stmt 1
	cmpq	$0, -32(%rbp)
	jne	.L101
	.loc 1 576 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC42(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-257, %r8d
	movl	$576, %ecx
	leaq	.LC41(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-257, -4(%rbp)
	jmp	.L99
.L101:
	.loc 1 578 14 is_stmt 1
	movq	-32(%rbp), %rdx
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	EApiGPIOGetDirectionEmul@PLT
	movl	%eax, -4(%rbp)
.L99:
	.loc 1 580 10
	movl	-4(%rbp), %eax
	.loc 1 581 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	EApiGPIOGetDirection, .-EApiGPIOGetDirection
	.section	.rodata
.LC43:
	.string	"EApiGPIOSetDirection"
	.text
	.globl	EApiGPIOSetDirection
	.type	EApiGPIOSetDirection, @function
EApiGPIOSetDirection:
.LFB20:
	.loc 1 592 1
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
	.loc 1 593 16
	movl	$0, -4(%rbp)
	.loc 1 594 3
	movl	Initialized(%rip), %eax
	testl	%eax, %eax
	jne	.L104
	.loc 1 594 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC3(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-1, %r8d
	movl	$594, %ecx
	leaq	.LC43(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-1, -4(%rbp)
	jmp	.L105
.L104:
	.loc 1 595 3 is_stmt 1
	cmpl	$0, -24(%rbp)
	jne	.L106
	.loc 1 595 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC38(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-257, %r8d
	movl	$595, %ecx
	leaq	.LC43(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-257, -4(%rbp)
	jmp	.L105
.L106:
	.loc 1 597 14 is_stmt 1
	movl	-28(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	EApiGPIOSetDirectionEmul@PLT
	movl	%eax, -4(%rbp)
.L105:
	.loc 1 599 10
	movl	-4(%rbp), %eax
	.loc 1 600 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	EApiGPIOSetDirection, .-EApiGPIOSetDirection
	.section	.rodata
.LC44:
	.string	"EApiGPIOGetDirectionCaps"
	.align 8
.LC45:
	.string	"((pOutputs==NULL)&&(pInputs==NULL))"
	.text
	.globl	EApiGPIOGetDirectionCaps
	.type	EApiGPIOGetDirectionCaps, @function
EApiGPIOGetDirectionCaps:
.LFB21:
	.loc 1 613 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 1 613 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 614 16
	movl	$0, -12(%rbp)
	.loc 1 617 3
	movl	Initialized(%rip), %eax
	testl	%eax, %eax
	jne	.L109
	.loc 1 617 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC3(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-1, %r8d
	movl	$617, %ecx
	leaq	.LC44(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-1, -12(%rbp)
	jmp	.L110
.L109:
	.loc 1 618 3 is_stmt 1
	cmpq	$0, -40(%rbp)
	jne	.L111
	.loc 1 618 3 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)
	jne	.L111
	.loc 1 618 3 discriminator 2
	subq	$8, %rsp
	leaq	.LC45(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-257, %r8d
	movl	$618, %ecx
	leaq	.LC44(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-257, -12(%rbp)
	jmp	.L110
.L111:
	.loc 1 624 5 is_stmt 1
	cmpq	$0, -32(%rbp)
	jne	.L112
	.loc 1 625 12
	leaq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.L112:
	.loc 1 626 5
	cmpq	$0, -40(%rbp)
	jne	.L113
	.loc 1 627 13
	leaq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
.L113:
	.loc 1 629 14
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	EApiGPIOGetDirectionCapsEmul@PLT
	movl	%eax, -12(%rbp)
.L110:
	.loc 1 631 10
	movl	-12(%rbp), %eax
	.loc 1 632 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L115
	call	__stack_chk_fail@PLT
.L115:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	EApiGPIOGetDirectionCaps, .-EApiGPIOGetDirectionCaps
	.section	.rodata
.LC46:
	.string	"EApiLibInitialize"
.LC47:
	.string	"Library Already Initialized"
	.text
	.globl	EApiLibInitialize
	.type	EApiLibInitialize, @function
EApiLibInitialize:
.LFB22:
	.loc 1 647 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 648 16
	movl	$0, -4(%rbp)
	.loc 1 649 3
	movl	Initialized(%rip), %eax
	cmpl	$1, %eax
	jne	.L117
	.loc 1 649 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC47(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-1, %r8d
	movl	$649, %ecx
	leaq	.LC46(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-1, -4(%rbp)
	jmp	.L118
.L117:
	.loc 1 650 14 is_stmt 1
	movl	$1, Initialized(%rip)
	.loc 1 651 3
	movl	$0, %eax
	call	EApiInitLib@PLT
	.loc 1 652 3
	subq	$8, %rsp
	leaq	.LC28(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$0, %r8d
	movl	$652, %ecx
	leaq	.LC46(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$76, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$0, -4(%rbp)
	nop
.L118:
	.loc 1 655 10
	movl	-4(%rbp), %eax
	.loc 1 656 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	EApiLibInitialize, .-EApiLibInitialize
	.section	.rodata
.LC48:
	.string	"EApiLibUnInitialize"
	.text
	.globl	EApiLibUnInitialize
	.type	EApiLibUnInitialize, @function
EApiLibUnInitialize:
.LFB23:
	.loc 1 660 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 661 16
	movl	$0, -4(%rbp)
	.loc 1 662 3
	movl	Initialized(%rip), %eax
	testl	%eax, %eax
	jne	.L121
	.loc 1 662 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC3(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-1, %r8d
	movl	$662, %ecx
	leaq	.LC48(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-1, -4(%rbp)
	jmp	.L122
.L121:
	.loc 1 663 3 is_stmt 1
	movl	$0, %eax
	call	EApiUninitLib@PLT
	.loc 1 664 14
	movl	$0, Initialized(%rip)
	.loc 1 665 3
	subq	$8, %rsp
	leaq	.LC28(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$0, %r8d
	movl	$665, %ecx
	leaq	.LC48(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$76, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$0, -4(%rbp)
	nop
.L122:
	.loc 1 668 10
	movl	-4(%rbp), %eax
	.loc 1 669 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	EApiLibUnInitialize, .-EApiLibUnInitialize
	.section	.rodata
.LC49:
	.string	"EApiWDogGetCap"
	.align 8
.LC50:
	.string	"((pMaxDelay==NULL)&&(pMaxEventTimeout==NULL)&&(pMaxResetTimeout==NULL))"
	.text
	.globl	EApiWDogGetCap
	.type	EApiWDogGetCap, @function
EApiWDogGetCap:
.LFB24:
	.loc 1 698 1
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
	.loc 1 698 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 699 16
	movl	$0, -12(%rbp)
	.loc 1 701 3
	movl	Initialized(%rip), %eax
	testl	%eax, %eax
	jne	.L125
	.loc 1 701 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC3(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-1, %r8d
	movl	$701, %ecx
	leaq	.LC49(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-1, -12(%rbp)
	jmp	.L126
.L125:
	.loc 1 702 3 is_stmt 1
	cmpq	$0, -24(%rbp)
	jne	.L127
	.loc 1 702 3 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)
	jne	.L127
	.loc 1 702 3 discriminator 2
	cmpq	$0, -40(%rbp)
	jne	.L127
	.loc 1 702 3 discriminator 3
	subq	$8, %rsp
	leaq	.LC50(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-257, %r8d
	movl	$702, %ecx
	leaq	.LC49(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-257, -12(%rbp)
	jmp	.L126
.L127:
	.loc 1 708 6 is_stmt 1
	cmpq	$0, -24(%rbp)
	jne	.L128
	.loc 1 708 47 discriminator 1
	leaq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.L128:
	.loc 1 709 6
	cmpq	$0, -32(%rbp)
	jne	.L129
	.loc 1 709 47 discriminator 1
	leaq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.L129:
	.loc 1 710 6
	cmpq	$0, -40(%rbp)
	jne	.L130
	.loc 1 710 47 discriminator 1
	leaq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
.L130:
	.loc 1 711 14
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EApiWDogGetCapEmul@PLT
	movl	%eax, -12(%rbp)
.L126:
	.loc 1 713 10
	movl	-12(%rbp), %eax
	.loc 1 714 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L132
	call	__stack_chk_fail@PLT
.L132:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	EApiWDogGetCap, .-EApiWDogGetCap
	.section	.rodata
.LC51:
	.string	"EApiWDogStart"
	.text
	.globl	EApiWDogStart
	.type	EApiWDogStart, @function
EApiWDogStart:
.LFB25:
	.loc 1 727 1
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
	.loc 1 728 16
	movl	$0, -4(%rbp)
	.loc 1 729 3
	movl	Initialized(%rip), %eax
	testl	%eax, %eax
	jne	.L134
	.loc 1 729 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC3(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-1, %r8d
	movl	$729, %ecx
	leaq	.LC51(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-1, -4(%rbp)
	jmp	.L135
.L134:
	.loc 1 730 14 is_stmt 1
	movl	-28(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	EApiWDogStartEmul@PLT
	movl	%eax, -4(%rbp)
.L135:
	.loc 1 732 10
	movl	-4(%rbp), %eax
	.loc 1 733 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	EApiWDogStart, .-EApiWDogStart
	.section	.rodata
.LC52:
	.string	"EApiWDogTrigger"
	.text
	.globl	EApiWDogTrigger
	.type	EApiWDogTrigger, @function
EApiWDogTrigger:
.LFB26:
	.loc 1 737 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 738 16
	movl	$0, -4(%rbp)
	.loc 1 739 3
	movl	Initialized(%rip), %eax
	testl	%eax, %eax
	jne	.L138
	.loc 1 739 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC3(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-1, %r8d
	movl	$739, %ecx
	leaq	.LC52(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-1, -4(%rbp)
	jmp	.L139
.L138:
	.loc 1 740 14 is_stmt 1
	call	EApiWDogTriggerEmul@PLT
	movl	%eax, -4(%rbp)
.L139:
	.loc 1 742 10
	movl	-4(%rbp), %eax
	.loc 1 743 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	EApiWDogTrigger, .-EApiWDogTrigger
	.section	.rodata
.LC53:
	.string	"EApiWDogStop"
	.text
	.globl	EApiWDogStop
	.type	EApiWDogStop, @function
EApiWDogStop:
.LFB27:
	.loc 1 747 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 748 16
	movl	$0, -4(%rbp)
	.loc 1 749 3
	movl	Initialized(%rip), %eax
	testl	%eax, %eax
	jne	.L142
	.loc 1 749 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC3(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-1, %r8d
	movl	$749, %ecx
	leaq	.LC53(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-1, -4(%rbp)
	jmp	.L143
.L142:
	.loc 1 750 14 is_stmt 1
	call	EApiWDogStopEmul@PLT
	movl	%eax, -4(%rbp)
.L143:
	.loc 1 752 10
	movl	-4(%rbp), %eax
	.loc 1 753 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	EApiWDogStop, .-EApiWDogStop
	.section	.rodata
.LC54:
	.string	"EApiStorageCap"
	.align 8
.LC55:
	.string	"((pBlockLength==NULL)&&(pStorageSize==NULL))"
	.text
	.globl	EApiStorageCap
	.type	EApiStorageCap, @function
EApiStorageCap:
.LFB28:
	.loc 1 771 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 1 771 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 772 16
	movl	$0, -12(%rbp)
	.loc 1 775 3
	movl	Initialized(%rip), %eax
	testl	%eax, %eax
	jne	.L146
	.loc 1 775 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC3(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-1, %r8d
	movl	$775, %ecx
	leaq	.LC54(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-1, -12(%rbp)
	jmp	.L147
.L146:
	.loc 1 776 3 is_stmt 1
	cmpq	$0, -40(%rbp)
	jne	.L148
	.loc 1 776 3 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)
	jne	.L148
	.loc 1 776 3 discriminator 2
	subq	$8, %rsp
	leaq	.LC55(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-257, %r8d
	movl	$776, %ecx
	leaq	.LC54(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-257, -12(%rbp)
	jmp	.L147
.L148:
	.loc 1 781 5 is_stmt 1
	cmpq	$0, -32(%rbp)
	jne	.L149
	.loc 1 782 17
	leaq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.L149:
	.loc 1 783 5
	cmpq	$0, -40(%rbp)
	jne	.L150
	.loc 1 784 17
	leaq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
.L150:
	.loc 1 786 14
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	EApiStorageCapEmul@PLT
	movl	%eax, -12(%rbp)
.L147:
	.loc 1 788 10
	movl	-12(%rbp), %eax
	.loc 1 789 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L152
	call	__stack_chk_fail@PLT
.L152:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	EApiStorageCap, .-EApiStorageCap
	.section	.rodata
.LC56:
	.string	"EApiStorageAreaRead"
	.align 8
.LC57:
	.string	"Id=%08X Offset=%04X BufLen=%04X ByteCnt=%04X\n"
	.align 8
.LC58:
	.string	" pBuffer Overflow PreventedByteCnt>BufLen"
	.text
	.globl	EApiStorageAreaRead
	.type	EApiStorageAreaRead, @function
EApiStorageAreaRead:
.LFB29:
	.loc 1 799 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	.loc 1 800 16
	movl	$0, -8(%rbp)
	.loc 1 802 3
	movl	Initialized(%rip), %eax
	testl	%eax, %eax
	jne	.L154
	.loc 1 802 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC3(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-1, %r8d
	movl	$802, %ecx
	leaq	.LC56(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-1, -8(%rbp)
	jmp	.L155
.L154:
	.loc 1 804 3 is_stmt 1
	movl	-40(%rbp), %eax
	pushq	%rax
	movl	-36(%rbp), %eax
	pushq	%rax
	movl	-24(%rbp), %eax
	pushq	%rax
	movl	-20(%rbp), %eax
	pushq	%rax
	leaq	.LC57(%rip), %r9
	leaq	.LC8(%rip), %r8
	movl	$808, %ecx
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$76, %edi
	movl	$0, %eax
	call	siFormattedMessage_M2@PLT
	addq	$32, %rsp
	.loc 1 815 3
	cmpq	$0, -32(%rbp)
	jne	.L156
	.loc 1 815 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC16(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-257, %r8d
	movl	$815, %ecx
	leaq	.LC56(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-257, -8(%rbp)
	jmp	.L155
.L156:
	.loc 1 816 3 is_stmt 1
	cmpl	$0, -40(%rbp)
	jne	.L157
	.loc 1 816 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC18(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-257, %r8d
	movl	$816, %ecx
	leaq	.LC56(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-257, -8(%rbp)
	jmp	.L155
.L157:
	.loc 1 817 3 is_stmt 1
	cmpl	$0, -36(%rbp)
	jne	.L158
	.loc 1 817 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC17(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-257, %r8d
	movl	$817, %ecx
	leaq	.LC56(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-257, -8(%rbp)
	jmp	.L155
.L158:
	.loc 1 819 3 is_stmt 1
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jbe	.L159
	.loc 1 819 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC58(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-1537, %r8d
	movl	$819, %ecx
	leaq	.LC56(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	$-1537, -8(%rbp)
.L159:
	.loc 1 821 14 is_stmt 1
	movl	-40(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	-24(%rbp), %esi
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	EApiStorageAreaReadEmul@PLT
	movl	%eax, -4(%rbp)
	.loc 1 822 5
	cmpl	$0, -4(%rbp)
	je	.L161
	.loc 1 823 15
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L155
.L161:
	.loc 1 824 1
	nop
.L155:
	.loc 1 825 10
	movl	-8(%rbp), %eax
	.loc 1 826 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	EApiStorageAreaRead, .-EApiStorageAreaRead
	.section	.rodata
.LC59:
	.string	"EApiStorageAreaWrite"
	.align 8
.LC60:
	.string	"Id=%08X Offset=%04X ByteCnt=%04X\n"
	.text
	.globl	EApiStorageAreaWrite
	.type	EApiStorageAreaWrite, @function
EApiStorageAreaWrite:
.LFB30:
	.loc 1 836 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	.loc 1 837 16
	movl	$0, -4(%rbp)
	.loc 1 839 3
	movl	Initialized(%rip), %eax
	testl	%eax, %eax
	jne	.L163
	.loc 1 839 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC3(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-1, %r8d
	movl	$839, %ecx
	leaq	.LC59(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-1, -4(%rbp)
	jmp	.L164
.L163:
	.loc 1 841 3 is_stmt 1
	subq	$8, %rsp
	movl	-36(%rbp), %eax
	pushq	%rax
	movl	-24(%rbp), %eax
	pushq	%rax
	movl	-20(%rbp), %eax
	pushq	%rax
	leaq	.LC60(%rip), %r9
	leaq	.LC8(%rip), %r8
	movl	$845, %ecx
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$76, %edi
	movl	$0, %eax
	call	siFormattedMessage_M2@PLT
	addq	$32, %rsp
	.loc 1 852 3
	cmpq	$0, -32(%rbp)
	jne	.L165
	.loc 1 852 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC16(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-257, %r8d
	movl	$852, %ecx
	leaq	.LC59(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-257, -4(%rbp)
	jmp	.L164
.L165:
	.loc 1 853 3 is_stmt 1
	cmpl	$0, -36(%rbp)
	jne	.L166
	.loc 1 853 3 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC18(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-257, %r8d
	movl	$853, %ecx
	leaq	.LC59(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-257, -4(%rbp)
	jmp	.L164
.L166:
	.loc 1 855 14 is_stmt 1
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	-24(%rbp), %esi
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	EApiStorageAreaWriteEmul@PLT
	movl	%eax, -4(%rbp)
.L164:
	.loc 1 857 10
	movl	-4(%rbp), %eax
	.loc 1 858 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	EApiStorageAreaWrite, .-EApiStorageAreaWrite
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
	.long	0xd42
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF96
	.byte	0xc
	.long	.LASF97
	.long	.LASF98
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
	.uleb128 0x4
	.long	.LASF8
	.byte	0x2
	.byte	0x26
	.byte	0x17
	.long	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x4
	.long	.LASF9
	.byte	0x2
	.byte	0x2a
	.byte	0x16
	.long	0x3b
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x8c
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x4
	.long	.LASF12
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.long	0x65
	.uleb128 0x4
	.long	.LASF13
	.byte	0x3
	.byte	0x1a
	.byte	0x14
	.long	0x78
	.uleb128 0x4
	.long	.LASF14
	.byte	0x4
	.byte	0x5a
	.byte	0x1b
	.long	0x2d
	.uleb128 0x7
	.long	.LASF15
	.byte	0x5
	.value	0x21f
	.byte	0xf
	.long	0xcb
	.uleb128 0x6
	.byte	0x8
	.long	0x86
	.uleb128 0x8
	.long	.LASF16
	.byte	0x6
	.byte	0x24
	.byte	0xe
	.long	0x86
	.uleb128 0x8
	.long	.LASF17
	.byte	0x6
	.byte	0x32
	.byte	0xc
	.long	0x34
	.uleb128 0x8
	.long	.LASF18
	.byte	0x6
	.byte	0x37
	.byte	0xc
	.long	0x34
	.uleb128 0x8
	.long	.LASF19
	.byte	0x6
	.byte	0x3b
	.byte	0xc
	.long	0x34
	.uleb128 0x9
	.long	0x86
	.long	0x111
	.uleb128 0xa
	.long	0x2d
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.long	.LASF20
	.byte	0x7
	.byte	0x9f
	.byte	0xe
	.long	0x101
	.uleb128 0x8
	.long	.LASF21
	.byte	0x7
	.byte	0xa0
	.byte	0xc
	.long	0x34
	.uleb128 0x8
	.long	.LASF22
	.byte	0x7
	.byte	0xa1
	.byte	0x11
	.long	0x42
	.uleb128 0x8
	.long	.LASF23
	.byte	0x7
	.byte	0xa6
	.byte	0xe
	.long	0x101
	.uleb128 0x8
	.long	.LASF24
	.byte	0x7
	.byte	0xae
	.byte	0xc
	.long	0x34
	.uleb128 0x8
	.long	.LASF25
	.byte	0x7
	.byte	0xaf
	.byte	0x11
	.long	0x42
	.uleb128 0x4
	.long	.LASF26
	.byte	0x8
	.byte	0x91
	.byte	0x12
	.long	0xa6
	.uleb128 0x4
	.long	.LASF27
	.byte	0x8
	.byte	0x92
	.byte	0x12
	.long	0xa6
	.uleb128 0xb
	.long	.LASF28
	.byte	0x1
	.byte	0x28
	.byte	0x5
	.long	0x34
	.uleb128 0x9
	.byte	0x3
	.quad	Initialized
	.uleb128 0xc
	.long	.LASF32
	.byte	0x1
	.value	0x33e
	.byte	0x1
	.long	0x159
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x20b
	.uleb128 0xd
	.string	"Id"
	.byte	0x1
	.value	0x33f
	.byte	0x15
	.long	0x165
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.long	.LASF29
	.byte	0x1
	.value	0x340
	.byte	0x15
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.long	.LASF30
	.byte	0x1
	.value	0x341
	.byte	0x15
	.long	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.long	.LASF31
	.byte	0x1
	.value	0x342
	.byte	0x15
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xf
	.long	.LASF35
	.byte	0x1
	.value	0x345
	.byte	0x10
	.long	0x159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.long	.LASF37
	.byte	0x1
	.value	0x358
	.byte	0x1
	.quad	.L164
	.byte	0
	.uleb128 0xc
	.long	.LASF33
	.byte	0x1
	.value	0x318
	.byte	0x1
	.long	0x159
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x2af
	.uleb128 0xd
	.string	"Id"
	.byte	0x1
	.value	0x319
	.byte	0x15
	.long	0x165
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.long	.LASF29
	.byte	0x1
	.value	0x31a
	.byte	0x15
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.long	.LASF30
	.byte	0x1
	.value	0x31b
	.byte	0x15
	.long	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.long	.LASF34
	.byte	0x1
	.value	0x31c
	.byte	0x15
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xe
	.long	.LASF31
	.byte	0x1
	.value	0x31d
	.byte	0x15
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.long	.LASF35
	.byte	0x1
	.value	0x320
	.byte	0x10
	.long	0x159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.long	.LASF36
	.byte	0x1
	.value	0x321
	.byte	0x10
	.long	0x159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.long	.LASF37
	.byte	0x1
	.value	0x338
	.byte	0x1
	.quad	.L155
	.byte	0
	.uleb128 0xc
	.long	.LASF38
	.byte	0x1
	.value	0x2fe
	.byte	0x1
	.long	0x159
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x333
	.uleb128 0xd
	.string	"Id"
	.byte	0x1
	.value	0x2ff
	.byte	0x15
	.long	0x165
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.long	.LASF39
	.byte	0x1
	.value	0x300
	.byte	0x16
	.long	0x333
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.long	.LASF40
	.byte	0x1
	.value	0x301
	.byte	0x16
	.long	0x333
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.long	.LASF35
	.byte	0x1
	.value	0x304
	.byte	0x10
	.long	0x159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xf
	.long	.LASF41
	.byte	0x1
	.value	0x305
	.byte	0xc
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.long	.LASF37
	.byte	0x1
	.value	0x313
	.byte	0x1
	.quad	.L147
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa6
	.uleb128 0xc
	.long	.LASF42
	.byte	0x1
	.value	0x2ea
	.byte	0x1
	.long	0x159
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x37e
	.uleb128 0xf
	.long	.LASF35
	.byte	0x1
	.value	0x2ec
	.byte	0x10
	.long	0x159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.long	.LASF37
	.byte	0x1
	.value	0x2ef
	.byte	0x1
	.quad	.L143
	.byte	0
	.uleb128 0xc
	.long	.LASF43
	.byte	0x1
	.value	0x2e0
	.byte	0x1
	.long	0x159
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c3
	.uleb128 0xf
	.long	.LASF35
	.byte	0x1
	.value	0x2e2
	.byte	0x10
	.long	0x159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.long	.LASF37
	.byte	0x1
	.value	0x2e5
	.byte	0x1
	.quad	.L139
	.byte	0
	.uleb128 0xc
	.long	.LASF44
	.byte	0x1
	.value	0x2ce
	.byte	0x1
	.long	0x159
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x438
	.uleb128 0xe
	.long	.LASF45
	.byte	0x1
	.value	0x2cf
	.byte	0x14
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.long	.LASF46
	.byte	0x1
	.value	0x2d0
	.byte	0x14
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.long	.LASF47
	.byte	0x1
	.value	0x2d3
	.byte	0x14
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xf
	.long	.LASF35
	.byte	0x1
	.value	0x2d8
	.byte	0x10
	.long	0x159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.long	.LASF37
	.byte	0x1
	.value	0x2db
	.byte	0x1
	.quad	.L135
	.byte	0
	.uleb128 0xc
	.long	.LASF48
	.byte	0x1
	.value	0x2ac
	.byte	0x1
	.long	0x159
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x4bd
	.uleb128 0xe
	.long	.LASF49
	.byte	0x1
	.value	0x2ad
	.byte	0x18
	.long	0x333
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.long	.LASF50
	.byte	0x1
	.value	0x2b0
	.byte	0x18
	.long	0x333
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.long	.LASF51
	.byte	0x1
	.value	0x2b5
	.byte	0x18
	.long	0x333
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.long	.LASF35
	.byte	0x1
	.value	0x2bb
	.byte	0x10
	.long	0x159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xf
	.long	.LASF52
	.byte	0x1
	.value	0x2bc
	.byte	0xc
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.long	.LASF37
	.byte	0x1
	.value	0x2c8
	.byte	0x1
	.quad	.L126
	.byte	0
	.uleb128 0xc
	.long	.LASF53
	.byte	0x1
	.value	0x293
	.byte	0x1
	.long	0x159
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x502
	.uleb128 0xf
	.long	.LASF35
	.byte	0x1
	.value	0x295
	.byte	0x10
	.long	0x159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.long	.LASF37
	.byte	0x1
	.value	0x29a
	.byte	0x1
	.quad	.L122
	.byte	0
	.uleb128 0xc
	.long	.LASF54
	.byte	0x1
	.value	0x286
	.byte	0x1
	.long	0x159
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x547
	.uleb128 0xf
	.long	.LASF35
	.byte	0x1
	.value	0x288
	.byte	0x10
	.long	0x159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.long	.LASF37
	.byte	0x1
	.value	0x28d
	.byte	0x1
	.quad	.L118
	.byte	0
	.uleb128 0xc
	.long	.LASF55
	.byte	0x1
	.value	0x25c
	.byte	0x1
	.long	0x159
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x5cb
	.uleb128 0xd
	.string	"Id"
	.byte	0x1
	.value	0x25d
	.byte	0x17
	.long	0x165
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.long	.LASF56
	.byte	0x1
	.value	0x25e
	.byte	0x18
	.long	0x333
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.long	.LASF57
	.byte	0x1
	.value	0x261
	.byte	0x18
	.long	0x333
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.long	.LASF35
	.byte	0x1
	.value	0x266
	.byte	0x10
	.long	0x159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xf
	.long	.LASF58
	.byte	0x1
	.value	0x267
	.byte	0xc
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.long	.LASF37
	.byte	0x1
	.value	0x276
	.byte	0x1
	.quad	.L110
	.byte	0
	.uleb128 0xc
	.long	.LASF59
	.byte	0x1
	.value	0x249
	.byte	0x1
	.long	0x159
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x63f
	.uleb128 0xd
	.string	"Id"
	.byte	0x1
	.value	0x24a
	.byte	0x14
	.long	0x165
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.long	.LASF60
	.byte	0x1
	.value	0x24b
	.byte	0x14
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.long	.LASF61
	.byte	0x1
	.value	0x24e
	.byte	0x14
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xf
	.long	.LASF35
	.byte	0x1
	.value	0x251
	.byte	0x10
	.long	0x159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.long	.LASF37
	.byte	0x1
	.value	0x256
	.byte	0x1
	.quad	.L105
	.byte	0
	.uleb128 0xc
	.long	.LASF62
	.byte	0x1
	.value	0x235
	.byte	0x1
	.long	0x159
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x6b3
	.uleb128 0xd
	.string	"Id"
	.byte	0x1
	.value	0x236
	.byte	0x14
	.long	0x165
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.long	.LASF60
	.byte	0x1
	.value	0x237
	.byte	0x14
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.long	.LASF63
	.byte	0x1
	.value	0x23a
	.byte	0x15
	.long	0x333
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.long	.LASF35
	.byte	0x1
	.value	0x23d
	.byte	0x10
	.long	0x159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.long	.LASF37
	.byte	0x1
	.value	0x243
	.byte	0x1
	.quad	.L99
	.byte	0
	.uleb128 0xc
	.long	.LASF64
	.byte	0x1
	.value	0x222
	.byte	0x1
	.long	0x159
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x727
	.uleb128 0xd
	.string	"Id"
	.byte	0x1
	.value	0x223
	.byte	0x14
	.long	0x165
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.long	.LASF60
	.byte	0x1
	.value	0x224
	.byte	0x14
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.long	.LASF65
	.byte	0x1
	.value	0x227
	.byte	0x14
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xf
	.long	.LASF35
	.byte	0x1
	.value	0x22a
	.byte	0x10
	.long	0x159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.long	.LASF37
	.byte	0x1
	.value	0x22f
	.byte	0x1
	.quad	.L94
	.byte	0
	.uleb128 0xc
	.long	.LASF66
	.byte	0x1
	.value	0x20e
	.byte	0x1
	.long	0x159
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x79b
	.uleb128 0xd
	.string	"Id"
	.byte	0x1
	.value	0x20f
	.byte	0x14
	.long	0x165
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.long	.LASF60
	.byte	0x1
	.value	0x210
	.byte	0x14
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.long	.LASF67
	.byte	0x1
	.value	0x213
	.byte	0x15
	.long	0x333
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.long	.LASF35
	.byte	0x1
	.value	0x216
	.byte	0x10
	.long	0x159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.long	.LASF37
	.byte	0x1
	.value	0x21c
	.byte	0x1
	.quad	.L88
	.byte	0
	.uleb128 0xc
	.long	.LASF68
	.byte	0x1
	.value	0x1ee
	.byte	0x1
	.long	0x159
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x7ff
	.uleb128 0xd
	.string	"Id"
	.byte	0x1
	.value	0x1ef
	.byte	0x15
	.long	0x165
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.long	.LASF69
	.byte	0x1
	.value	0x1f0
	.byte	0x15
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.long	.LASF35
	.byte	0x1
	.value	0x1f3
	.byte	0x10
	.long	0x159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.long	.LASF37
	.byte	0x1
	.value	0x1fc
	.byte	0x1
	.quad	.L83
	.byte	0
	.uleb128 0xc
	.long	.LASF70
	.byte	0x1
	.value	0x1de
	.byte	0x1
	.long	0x159
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x863
	.uleb128 0xd
	.string	"Id"
	.byte	0x1
	.value	0x1df
	.byte	0x15
	.long	0x165
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.long	.LASF71
	.byte	0x1
	.value	0x1e0
	.byte	0x15
	.long	0x333
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.long	.LASF35
	.byte	0x1
	.value	0x1e3
	.byte	0x10
	.long	0x159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.long	.LASF37
	.byte	0x1
	.value	0x1e8
	.byte	0x1
	.quad	.L78
	.byte	0
	.uleb128 0xc
	.long	.LASF72
	.byte	0x1
	.value	0x1ca
	.byte	0x1
	.long	0x159
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x8c7
	.uleb128 0xd
	.string	"Id"
	.byte	0x1
	.value	0x1cb
	.byte	0x15
	.long	0x165
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.long	.LASF73
	.byte	0x1
	.value	0x1cc
	.byte	0x15
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.long	.LASF35
	.byte	0x1
	.value	0x1cf
	.byte	0x10
	.long	0x159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.long	.LASF37
	.byte	0x1
	.value	0x1d9
	.byte	0x1
	.quad	.L72
	.byte	0
	.uleb128 0xc
	.long	.LASF74
	.byte	0x1
	.value	0x1ba
	.byte	0x1
	.long	0x159
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x92b
	.uleb128 0xd
	.string	"Id"
	.byte	0x1
	.value	0x1bb
	.byte	0x15
	.long	0x165
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.long	.LASF75
	.byte	0x1
	.value	0x1bc
	.byte	0x15
	.long	0x333
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.long	.LASF35
	.byte	0x1
	.value	0x1bf
	.byte	0x10
	.long	0x159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.long	.LASF37
	.byte	0x1
	.value	0x1c4
	.byte	0x1
	.quad	.L67
	.byte	0
	.uleb128 0xc
	.long	.LASF76
	.byte	0x1
	.value	0x19b
	.byte	0x1
	.long	0x159
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x98f
	.uleb128 0xd
	.string	"Id"
	.byte	0x1
	.value	0x19c
	.byte	0x15
	.long	0x165
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.long	.LASF77
	.byte	0x1
	.value	0x19d
	.byte	0x15
	.long	0x333
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.long	.LASF35
	.byte	0x1
	.value	0x1a0
	.byte	0x10
	.long	0x159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.long	.LASF37
	.byte	0x1
	.value	0x1aa
	.byte	0x1
	.quad	.L61
	.byte	0
	.uleb128 0xc
	.long	.LASF78
	.byte	0x1
	.value	0x17c
	.byte	0x1
	.long	0x159
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xa03
	.uleb128 0xd
	.string	"Id"
	.byte	0x1
	.value	0x17d
	.byte	0x19
	.long	0x165
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.long	.LASF30
	.byte	0x1
	.value	0x17e
	.byte	0x19
	.long	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.long	.LASF79
	.byte	0x1
	.value	0x17f
	.byte	0x19
	.long	0x333
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.long	.LASF35
	.byte	0x1
	.value	0x182
	.byte	0x10
	.long	0x159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.long	.LASF37
	.byte	0x1
	.value	0x18c
	.byte	0x1
	.quad	.L55
	.byte	0
	.uleb128 0xc
	.long	.LASF80
	.byte	0x1
	.value	0x152
	.byte	0x1
	.long	0x159
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xa87
	.uleb128 0xd
	.string	"Id"
	.byte	0x1
	.value	0x153
	.byte	0x15
	.long	0x165
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xe
	.long	.LASF81
	.byte	0x1
	.value	0x154
	.byte	0x15
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.long	.LASF35
	.byte	0x1
	.value	0x159
	.byte	0x10
	.long	0x159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.long	.LASF82
	.byte	0x1
	.value	0x15a
	.byte	0xb
	.long	0xa87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.long	.LASF83
	.byte	0x1
	.value	0x15b
	.byte	0x7
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.long	.LASF37
	.byte	0x1
	.value	0x16d
	.byte	0x1
	.quad	.L48
	.byte	0
	.uleb128 0x9
	.long	0x9a
	.long	0xa97
	.uleb128 0xa
	.long	0x2d
	.byte	0x7
	.byte	0
	.uleb128 0x11
	.long	.LASF84
	.byte	0x1
	.byte	0xee
	.byte	0x1
	.long	0x159
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xb61
	.uleb128 0x12
	.string	"Id"
	.byte	0x1
	.byte	0xef
	.byte	0x15
	.long	0x165
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x13
	.long	.LASF81
	.byte	0x1
	.byte	0xf0
	.byte	0x15
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x12
	.string	"Cmd"
	.byte	0x1
	.byte	0xf3
	.byte	0x15
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x13
	.long	.LASF30
	.byte	0x1
	.byte	0xf4
	.byte	0x15
	.long	0x84
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x13
	.long	.LASF31
	.byte	0x1
	.byte	0xf5
	.byte	0x15
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.long	.LASF35
	.byte	0x1
	.byte	0xf8
	.byte	0x10
	.long	0x159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x14
	.long	.LASF85
	.byte	0x1
	.byte	0xf9
	.byte	0xd
	.long	0xb61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.long	.LASF83
	.byte	0x1
	.byte	0xfa
	.byte	0xc
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.long	.LASF86
	.byte	0x1
	.byte	0xfb
	.byte	0xc
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.long	.LASF87
	.byte	0x1
	.byte	0xfc
	.byte	0xc
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.long	.LASF37
	.byte	0x1
	.value	0x14c
	.byte	0x1
	.quad	.L33
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9a
	.uleb128 0x11
	.long	.LASF88
	.byte	0x1
	.byte	0xa4
	.byte	0x1
	.long	0x159
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0xc31
	.uleb128 0x12
	.string	"Id"
	.byte	0x1
	.byte	0xa5
	.byte	0x15
	.long	0x165
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x13
	.long	.LASF81
	.byte	0x1
	.byte	0xa6
	.byte	0x15
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x12
	.string	"Cmd"
	.byte	0x1
	.byte	0xa9
	.byte	0x15
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x13
	.long	.LASF30
	.byte	0x1
	.byte	0xaa
	.byte	0x15
	.long	0x84
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x13
	.long	.LASF34
	.byte	0x1
	.byte	0xab
	.byte	0x15
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.long	.LASF31
	.byte	0x1
	.byte	0xac
	.byte	0x15
	.long	0xa6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x14
	.long	.LASF35
	.byte	0x1
	.byte	0xaf
	.byte	0x10
	.long	0x159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.long	.LASF82
	.byte	0x1
	.byte	0xb0
	.byte	0xb
	.long	0xa87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.long	.LASF83
	.byte	0x1
	.byte	0xb1
	.byte	0x7
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.long	.LASF87
	.byte	0x1
	.byte	0xb3
	.byte	0xc
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x15
	.long	.LASF37
	.byte	0x1
	.byte	0xe6
	.byte	0x1
	.quad	.L20
	.byte	0
	.uleb128 0x11
	.long	.LASF89
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.long	0x159
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xcea
	.uleb128 0x12
	.string	"Id"
	.byte	0x1
	.byte	0x57
	.byte	0x18
	.long	0x165
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.long	.LASF81
	.byte	0x1
	.byte	0x58
	.byte	0x18
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.long	.LASF90
	.byte	0x1
	.byte	0x5b
	.byte	0x18
	.long	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.long	.LASF91
	.byte	0x1
	.byte	0x5c
	.byte	0x18
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x13
	.long	.LASF92
	.byte	0x1
	.byte	0x5f
	.byte	0x18
	.long	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.long	.LASF93
	.byte	0x1
	.byte	0x60
	.byte	0x18
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x13
	.long	.LASF94
	.byte	0x1
	.byte	0x61
	.byte	0x18
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.long	.LASF35
	.byte	0x1
	.byte	0x66
	.byte	0x10
	.long	0x159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.long	.LASF36
	.byte	0x1
	.byte	0x67
	.byte	0x10
	.long	0x159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.long	.LASF37
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.quad	.L8
	.byte	0
	.uleb128 0x16
	.long	.LASF99
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.long	0xa6
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x12
	.string	"Id"
	.byte	0x1
	.byte	0x44
	.byte	0x15
	.long	0x165
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.long	.LASF95
	.byte	0x1
	.byte	0x45
	.byte	0x15
	.long	0x333
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.long	.LASF35
	.byte	0x1
	.byte	0x4b
	.byte	0x10
	.long	0x159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.long	.LASF37
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.quad	.L3
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
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
.LASF61:
	.string	"Direction"
.LASF17:
	.string	"optind"
.LASF16:
	.string	"optarg"
.LASF39:
	.string	"pStorageSize"
.LASF74:
	.string	"EApiVgaGetBacklightEnable"
.LASF40:
	.string	"pBlockLength"
.LASF28:
	.string	"Initialized"
.LASF51:
	.string	"pMaxResetTimeout"
.LASF87:
	.string	"MaxBlkLen"
.LASF97:
	.string	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EApiAPI.cpp"
.LASF59:
	.string	"EApiGPIOSetDirection"
.LASF81:
	.string	"Addr"
.LASF93:
	.string	"RBufLen"
.LASF67:
	.string	"pLevel"
.LASF20:
	.string	"__tzname"
.LASF3:
	.string	"long long int"
.LASF9:
	.string	"__uint32_t"
.LASF98:
	.string	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux"
.LASF55:
	.string	"EApiGPIOGetDirectionCaps"
.LASF62:
	.string	"EApiGPIOGetDirection"
.LASF7:
	.string	"short int"
.LASF25:
	.string	"timezone"
.LASF24:
	.string	"daylight"
.LASF12:
	.string	"uint8_t"
.LASF14:
	.string	"uintptr_t"
.LASF56:
	.string	"pInputs"
.LASF53:
	.string	"EApiLibUnInitialize"
.LASF6:
	.string	"signed char"
.LASF68:
	.string	"EApiVgaSetBacklightBrightness"
.LASF82:
	.string	"LclpBuffer"
.LASF80:
	.string	"EApiI2CProbeDevice"
.LASF33:
	.string	"EApiStorageAreaRead"
.LASF29:
	.string	"Offset"
.LASF22:
	.string	"__timezone"
.LASF75:
	.string	"pEnable"
.LASF21:
	.string	"__daylight"
.LASF69:
	.string	"Bright"
.LASF2:
	.string	"long int"
.LASF27:
	.string	"EApiId_t"
.LASF0:
	.string	"long unsigned int"
.LASF79:
	.string	"pBufLen"
.LASF85:
	.string	"pLclBuffer"
.LASF30:
	.string	"pBuffer"
.LASF31:
	.string	"ByteCnt"
.LASF95:
	.string	"pMaxBlkLen"
.LASF26:
	.string	"EApiStatus_t"
.LASF32:
	.string	"EApiStorageAreaWrite"
.LASF73:
	.string	"Enable"
.LASF63:
	.string	"pDirection"
.LASF43:
	.string	"EApiWDogTrigger"
.LASF4:
	.string	"unsigned char"
.LASF90:
	.string	"pWBuffer"
.LASF78:
	.string	"EApiBoardGetStringA"
.LASF37:
	.string	"ExitPoint"
.LASF70:
	.string	"EApiVgaGetBacklightBrightness"
.LASF11:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint32_t"
.LASF64:
	.string	"EApiGPIOSetLevel"
.LASF96:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fvisibility=hidden -fPIC -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF48:
	.string	"EApiWDogGetCap"
.LASF23:
	.string	"tzname"
.LASF54:
	.string	"EApiLibInitialize"
.LASF18:
	.string	"opterr"
.LASF76:
	.string	"EApiBoardGetValue"
.LASF65:
	.string	"Level"
.LASF47:
	.string	"ResetTimeout"
.LASF10:
	.string	"char"
.LASF35:
	.string	"StatusCode"
.LASF5:
	.string	"short unsigned int"
.LASF50:
	.string	"pMaxEventTimeout"
.LASF15:
	.string	"__environ"
.LASF91:
	.string	"WriteBCnt"
.LASF86:
	.string	"ReturnValue"
.LASF36:
	.string	"ErrorCode2"
.LASF94:
	.string	"ReadBCnt"
.LASF46:
	.string	"EventTimeout"
.LASF92:
	.string	"pRBuffer"
.LASF38:
	.string	"EApiStorageCap"
.LASF49:
	.string	"pMaxDelay"
.LASF71:
	.string	"pBright"
.LASF57:
	.string	"pOutputs"
.LASF99:
	.string	"EApiI2CGetBusCap"
.LASF83:
	.string	"LclByteCnt"
.LASF42:
	.string	"EApiWDogStop"
.LASF52:
	.string	"DummyData"
.LASF60:
	.string	"Bitmask"
.LASF89:
	.string	"EApiI2CWriteReadRaw"
.LASF72:
	.string	"EApiVgaSetBacklightEnable"
.LASF19:
	.string	"optopt"
.LASF88:
	.string	"EApiI2CReadTransfer"
.LASF58:
	.string	"DpBuffer"
.LASF66:
	.string	"EApiGPIOGetLevel"
.LASF34:
	.string	"BufLen"
.LASF1:
	.string	"unsigned int"
.LASF45:
	.string	"Delay"
.LASF41:
	.string	"DummyValue"
.LASF84:
	.string	"EApiI2CWriteTransfer"
.LASF8:
	.string	"__uint8_t"
.LASF77:
	.string	"pValue"
.LASF44:
	.string	"EApiWDogStart"
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
