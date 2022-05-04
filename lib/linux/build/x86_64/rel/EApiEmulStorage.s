	.file	"EApiEmulStorage.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%s\n"
.LC1:
	.string	"EApiStorageCapEmul"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EApiEmulStorage.c"
	.section	.rodata.str1.1
.LC3:
	.string	"Unrecognised Storage ID"
.LC4:
	.string	"EApiStorageCap"
.LC5:
	.string	""
	.text
	.p2align 4
	.globl	EApiStorageCapEmul
	.hidden	EApiStorageCapEmul
	.type	EApiStorageCapEmul, @function
EApiStorageCapEmul:
.LFB89:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	cmpl	StorageAreaTbl(%rip), %edi
	je	.L4
	cmpl	40+StorageAreaTbl(%rip), %edi
	je	.L5
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	leaq	.LC3(%rip), %rax
	movl	$105, %ecx
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
	leaq	StorageAreaTbl(%rip), %rax
.L2:
.L3:
	endbr64
	movl	4(%rax), %ecx
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	xorl	%r8d, %r8d
	movl	$76, %edi
	leaq	.LC0(%rip), %r9
	movl	%ecx, (%rsi)
	movl	8(%rax), %eax
	movl	$102, %ecx
	leaq	.LC2(%rip), %rsi
	movl	%eax, (%rdx)
	leaq	.LC5(%rip), %rax
	leaq	.LC4(%rip), %rdx
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
	leaq	40+StorageAreaTbl(%rip), %rax
	jmp	.L2
	.cfi_endproc
.LFE89:
	.size	EApiStorageCapEmul, .-EApiStorageCapEmul
	.section	.rodata.str1.1
.LC6:
	.string	"EApiStorageAreaReadEmul"
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"Read Len extends beyond End of Storage Area"
	.section	.rodata.str1.1
.LC8:
	.string	"EApiStorageAreaRead"
	.text
	.p2align 4
	.globl	EApiStorageAreaReadEmul
	.hidden	EApiStorageAreaReadEmul
	.type	EApiStorageAreaReadEmul, @function
EApiStorageAreaReadEmul:
.LFB90:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	cmpl	StorageAreaTbl(%rip), %edi
	je	.L12
	cmpl	40+StorageAreaTbl(%rip), %edi
	je	.L13
	subq	$8, %rsp
	.cfi_def_cfa_offset 56
	movl	$-769, %r8d
	leaq	.LC3(%rip), %rax
	movl	$69, %edi
	pushq	%rax
	.cfi_def_cfa_offset 64
	leaq	.LC0(%rip), %r9
	xorl	%eax, %eax
	movl	$152, %ecx
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	call	siFormattedMessage_SC@PLT
	popq	%rdi
	.cfi_def_cfa_offset 56
	movl	$-769, %eax
	popq	%r8
	.cfi_def_cfa_offset 48
.L8:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L12:
	.cfi_restore_state
	leaq	StorageAreaTbl(%rip), %rbx
.L9:
	leal	(%rsi,%rcx), %eax
	cmpl	4(%rbx), %eax
	ja	.L15
.L10:
	endbr64
	movq	32(%rbx), %rdi
	movl	%esi, %esi
	xorl	%edx, %edx
	movl	%ecx, 12(%rsp)
	call	fseek@PLT
	movq	32(%rbx), %r8
	movl	12(%rsp), %edx
	movq	%rbp, %rdi
	movl	$1, %esi
	movq	%r8, %rcx
	call	fread@PLT
	subq	$8, %rsp
	.cfi_def_cfa_offset 56
	xorl	%r8d, %r8d
	leaq	.LC5(%rip), %rax
	pushq	%rax
	.cfi_def_cfa_offset 64
	leaq	.LC8(%rip), %rdx
	xorl	%eax, %eax
	leaq	.LC0(%rip), %r9
	movl	$149, %ecx
	leaq	.LC2(%rip), %rsi
	movl	$76, %edi
	call	siFormattedMessage_SC@PLT
	popq	%rax
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rdx
	.cfi_def_cfa_offset 48
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L13:
	leaq	40+StorageAreaTbl(%rip), %rbx
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L15:
	subq	$8, %rsp
	.cfi_def_cfa_offset 56
	leaq	.LC7(%rip), %rax
	movl	$134, %ecx
	movl	$-259, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 64
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	leaq	.LC0(%rip), %r9
	leaq	.LC6(%rip), %rdx
	movl	$69, %edi
	call	siFormattedMessage_SC@PLT
	popq	%rcx
	.cfi_def_cfa_offset 56
	movl	$-259, %eax
	popq	%rsi
	.cfi_def_cfa_offset 48
	jmp	.L8
	.cfi_endproc
.LFE90:
	.size	EApiStorageAreaReadEmul, .-EApiStorageAreaReadEmul
	.section	.rodata.str1.1
.LC9:
	.string	"EApiStorageAreaWrite"
.LC10:
	.string	"EApiStorageAreaWriteEmul"
.LC11:
	.string	"Write length Not Aligned"
	.section	.rodata.str1.8
	.align 8
.LC12:
	.string	"Write Base Address Not Aligned"
	.align 8
.LC13:
	.string	"Write Len extends beyond End of Storage Area"
	.text
	.p2align 4
	.globl	EApiStorageAreaWriteEmul
	.hidden	EApiStorageAreaWriteEmul
	.type	EApiStorageAreaWriteEmul, @function
EApiStorageAreaWriteEmul:
.LFB91:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	cmpl	StorageAreaTbl(%rip), %edi
	je	.L22
	cmpl	40+StorageAreaTbl(%rip), %edi
	je	.L23
	subq	$8, %rsp
	.cfi_def_cfa_offset 56
	movl	$209, %ecx
	movl	$69, %edi
	movl	$-769, %r8d
	leaq	.LC3(%rip), %rax
	leaq	.LC0(%rip), %r9
	movl	$-769, %r12d
	pushq	%rax
	.cfi_def_cfa_offset 64
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%r9
	.cfi_def_cfa_offset 56
	popq	%r10
	.cfi_def_cfa_offset 48
.L16:
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movl	%r12d, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L22:
	.cfi_restore_state
	leaq	StorageAreaTbl(%rip), %rbx
.L17:
	movl	8(%rbx), %edi
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	%edi
	testl	%edx, %edx
	jne	.L26
	movl	%esi, %eax
	xorl	%edx, %edx
	divl	%edi
	movl	%edx, %r12d
	testl	%edx, %edx
	jne	.L27
	leal	(%rcx,%rsi), %eax
	cmpl	4(%rbx), %eax
	ja	.L28
.L18:
	endbr64
	movq	32(%rbx), %rdi
	movl	%esi, %esi
	xorl	%edx, %edx
	movl	%ecx, 12(%rsp)
	call	fseek@PLT
	movq	32(%rbx), %r8
	movl	12(%rsp), %edx
	movq	%rbp, %rdi
	movl	$1, %esi
	movq	%r8, %rcx
	call	fwrite@PLT
	subq	$8, %rsp
	.cfi_def_cfa_offset 56
	xorl	%r8d, %r8d
	leaq	.LC5(%rip), %rax
	pushq	%rax
	.cfi_def_cfa_offset 64
	leaq	.LC10(%rip), %rdx
	xorl	%eax, %eax
	leaq	.LC0(%rip), %r9
	movl	$206, %ecx
	leaq	.LC2(%rip), %rsi
	movl	$76, %edi
	call	siFormattedMessage_SC@PLT
	popq	%rax
	.cfi_def_cfa_offset 56
	popq	%rdx
	.cfi_def_cfa_offset 48
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L23:
	leaq	40+StorageAreaTbl(%rip), %rbx
	jmp	.L17
.L28:
	subq	$8, %rsp
	.cfi_def_cfa_offset 56
	leaq	.LC13(%rip), %rax
	movl	$193, %ecx
	movl	$-259, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 64
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	leaq	.LC0(%rip), %r9
	leaq	.LC10(%rip), %rdx
	movl	$69, %edi
	movl	$-259, %r12d
	call	siFormattedMessage_SC@PLT
	popq	%rcx
	.cfi_def_cfa_offset 56
	popq	%rsi
	.cfi_def_cfa_offset 48
	jmp	.L16
.L26:
	subq	$8, %rsp
	.cfi_def_cfa_offset 56
	leaq	.LC11(%rip), %rax
	movl	$181, %ecx
	movl	$-258, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 64
	leaq	.LC0(%rip), %r9
.L25:
	movl	$69, %edi
	leaq	.LC10(%rip), %rdx
	xorl	%eax, %eax
	movl	$-258, %r12d
	leaq	.LC2(%rip), %rsi
	call	siFormattedMessage_SC@PLT
	popq	%rdi
	.cfi_def_cfa_offset 56
	popq	%r8
	.cfi_def_cfa_offset 48
	jmp	.L16
.L27:
	subq	$8, %rsp
	.cfi_def_cfa_offset 56
	leaq	.LC12(%rip), %rax
	movl	$187, %ecx
	movl	$-258, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 64
	leaq	.LC0(%rip), %r9
	jmp	.L25
	.cfi_endproc
.LFE91:
	.size	EApiStorageAreaWriteEmul, .-EApiStorageAreaWriteEmul
	.section	.rodata.str1.1
.LC14:
	.string	"rb+"
.LC15:
	.string	"wb+"
	.text
	.p2align 4
	.globl	OpenEepromFiles
	.hidden	OpenEepromFiles
	.type	OpenEepromFiles, @function
OpenEepromFiles:
.LFB92:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	leaq	.LC14(%rip), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	leaq	StorageAreaTbl(%rip), %rbx
	leaq	80(%rbx), %r12
.L33:
	movq	24(%rbx), %rdi
	movq	%rbp, %rsi
	call	fopen@PLT
	movq	%rax, 32(%rbx)
	testq	%rax, %rax
	je	.L36
.L30:
	movl	$2, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	fseek@PLT
	movq	32(%rbx), %rdi
	call	ftell@PLT
	movq	%rax, %r8
	movslq	4(%rbx), %rax
	cmpq	%rax, %r8
	jl	.L37
.L31:
	addq	$40, %rbx
	cmpq	%r12, %rbx
	jne	.L33
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L36:
	.cfi_restore_state
	movq	24(%rbx), %rdi
	leaq	.LC15(%rip), %rsi
	call	fopen@PLT
	movq	%rax, 32(%rbx)
	testq	%rax, %rax
	je	.L31
	jmp	.L30
	.p2align 4,,10
	.p2align 3
.L37:
	movq	32(%rbx), %rdi
	call	rewind@PLT
	movq	32(%rbx), %rcx
	movl	4(%rbx), %edx
	movl	$1, %esi
	movq	16(%rbx), %rdi
	call	fwrite@PLT
	jmp	.L31
	.cfi_endproc
.LFE92:
	.size	OpenEepromFiles, .-OpenEepromFiles
	.p2align 4
	.globl	CloseEepromFiles
	.hidden	CloseEepromFiles
	.type	CloseEepromFiles, @function
CloseEepromFiles:
.LFB93:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	32+StorageAreaTbl(%rip), %rdi
	testq	%rdi, %rdi
	je	.L39
	call	fclose@PLT
	movq	$0, 32+StorageAreaTbl(%rip)
.L39:
	movq	72+StorageAreaTbl(%rip), %rdi
	testq	%rdi, %rdi
	je	.L40
	call	fclose@PLT
	movq	$0, 72+StorageAreaTbl(%rip)
.L40:
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE93:
	.size	CloseEepromFiles, .-CloseEepromFiles
	.hidden	StorageAreaTbl
	.globl	StorageAreaTbl
	.section	.rodata.str1.1
.LC16:
	.string	"EApiStorage0.EMUL"
.LC17:
	.string	"EApiStorage1.EMUL"
	.section	.data.rel.local,"aw"
	.align 32
	.type	StorageAreaTbl, @object
	.size	StorageAreaTbl, 80
StorageAreaTbl:
	.long	0
	.long	32
	.long	1
	.zero	4
	.quad	StorageID0
	.quad	.LC16
	.quad	0
	.long	-93057024
	.long	4096
	.long	1024
	.zero	4
	.quad	StorageID1
	.quad	.LC17
	.quad	0
	.local	StorageID1
	.comm	StorageID1,4096,32
	.local	StorageID0
	.comm	StorageID0,32,32
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
