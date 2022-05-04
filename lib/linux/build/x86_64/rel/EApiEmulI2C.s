	.file	"EApiEmulI2C.c"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"%3s CCMD=%04lX Arg1=%1lX WLEN=%04lX RLEN=%04lX %02X,%02X,%02X,%02X\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"EmulateCmdDevice"
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EApiEmulI2C.c"
	.section	.rodata.str1.1
.LC3:
	.string	"%s\n"
.LC4:
	.string	"EmulateEepromFS"
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"STD INDEX Sent to EXT INDEX EEPROM"
	.section	.rodata.str1.1
.LC6:
	.string	""
	.text
	.p2align 4
	.globl	EmulateHWMonDevice
	.hidden	EmulateHWMonDevice
	.type	EmulateHWMonDevice, @function
EmulateHWMonDevice:
.LFB99:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	%edi, %edi
	leaq	.LC0(%rip), %r9
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rcx, %r13
	movl	$258, %ecx
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%r8d, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%edx, %ebp
	movq	%r12, %r14
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 72
	movzbl	3(%rsi), %eax
	movq	HWMon(%rip), %rdx
	movq	24+HWMon(%rip), %r8
	pushq	%rax
	.cfi_def_cfa_offset 80
	movzbl	2(%rsi), %eax
	pushq	%rax
	.cfi_def_cfa_offset 88
	movzbl	1(%rsi), %eax
	pushq	%rax
	.cfi_def_cfa_offset 96
	movzbl	(%rsi), %eax
	leaq	.LC2(%rip), %rsi
	pushq	%rax
	.cfi_def_cfa_offset 104
	leaq	StdExt(%rip), %rax
	pushq	%r12
	.cfi_def_cfa_offset 112
	pushq	%rbp
	.cfi_def_cfa_offset 120
	pushq	%rdi
	.cfi_def_cfa_offset 128
	movl	$76, %edi
	pushq	8+HWMon(%rip)
	.cfi_def_cfa_offset 136
	pushq	(%rax,%rdx,8)
	.cfi_def_cfa_offset 144
	leaq	.LC1(%rip), %rdx
	xorl	%eax, %eax
	call	siFormattedMessage_M2@PLT
	addq	$80, %rsp
	.cfi_def_cfa_offset 64
	testq	%rbp, %rbp
	je	.L11
	movq	HWMon(%rip), %rax
	cmpq	$1, %rax
	je	.L5
	cmpq	$2, %rax
	je	.L6
.L7:
	imulq	$90000, %rbp, %rdi
	movl	$4294967295, %ebp
	call	EApiSleepns@PLT
	movq	32+HWMon(%rip), %rbx
	movq	(%rbx), %rax
	cmpq	%rbp, %rax
	je	.L11
	.p2align 4,,10
	.p2align 3
.L14:
	cmpq	8+HWMon(%rip), %rax
	je	.L25
	movq	24(%rbx), %rax
	addq	$24, %rbx
	cmpq	%rbp, %rax
	jne	.L14
.L11:
	testq	%r12, %r12
	jne	.L26
.L4:
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	xorl	%r8d, %r8d
	movl	$330, %ecx
	movl	$76, %edi
	leaq	.LC6(%rip), %rax
	leaq	.LC4(%rip), %rdx
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rax
	.cfi_def_cfa_offset 72
	xorl	%eax, %eax
	popq	%rdx
	.cfi_def_cfa_offset 64
.L10:
.L1:
	addq	$8, %rsp
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
.L6:
	.cfi_restore_state
	cmpq	$1, %rbp
	je	.L27
	movzbl	(%rbx), %eax
	movl	$180000, %edi
	subq	$2, %rbp
	sall	$8, %eax
	cltq
	movq	%rax, 8+HWMon(%rip)
	movzbl	1(%rbx), %edx
	orq	%rdx, %rax
	movq	%rax, 8+HWMon(%rip)
	call	EApiSleepns@PLT
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L5:
	movzbl	(%rbx), %eax
	movl	$90000, %edi
	subq	$1, %rbp
	movq	%rax, 8+HWMon(%rip)
	call	EApiSleepns@PLT
.L8:
	testq	%rbp, %rbp
	jne	.L7
	testq	%r12, %r12
	je	.L4
.L26:
	imulq	$90000, %r12, %rdi
	movl	$4294967295, %ebx
	call	EApiSleepns@PLT
	movq	32+HWMon(%rip), %r15
	movq	(%r15), %rax
	cmpq	%rbx, %rax
	jne	.L17
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L15:
	movq	24(%r15), %rax
	addq	$24, %r15
	cmpq	%rbx, %rax
	je	.L4
.L17:
	cmpq	%rax, 8+HWMon(%rip)
	jne	.L15
	movq	8(%r15), %rbp
	movq	16(%r15), %rsi
	cmpq	%rbp, %r12
	jbe	.L16
	movq	%r13, %rdi
	movq	%rbp, %rdx
	call	memcpy@PLT
	movl	%r14d, %eax
	leaq	0(%r13,%rbp), %rcx
	movabsq	$72340172838076673, %rsi
	subl	%ebp, %eax
	leaq	8(%rcx), %rdi
	movzbl	%al, %eax
	andq	$-8, %rdi
	imulq	%rsi, %rax
	movq	%rax, (%rcx)
	movq	%rax, 247(%rcx)
	subq	%rdi, %rcx
	addl	$255, %ecx
	shrl	$3, %ecx
	rep stosq
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L16:
	movq	%r12, %rdx
	movq	%r13, %rdi
	call	memcpy@PLT
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L27:
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	leaq	.LC5(%rip), %rax
	movl	$284, %ecx
	movl	$-1281, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	leaq	.LC3(%rip), %r9
	leaq	.LC4(%rip), %rdx
	movl	$69, %edi
	call	siFormattedMessage_SC@PLT
	popq	%rcx
	.cfi_def_cfa_offset 72
	movl	$-1281, %eax
	popq	%rsi
	.cfi_def_cfa_offset 64
	jmp	.L1
	.p2align 4,,10
	.p2align 3
.L25:
	cmpq	%r12, 8(%rbx)
	movq	16(%rbx), %rdi
	movq	%r12, %rdx
	movq	%r13, %rsi
	cmovbe	8(%rbx), %rdx
	addq	$24, %rbx
	call	memcpy@PLT
	movq	(%rbx), %rax
	cmpq	%rbp, %rax
	jne	.L14
	jmp	.L11
	.cfi_endproc
.LFE99:
	.size	EmulateHWMonDevice, .-EmulateHWMonDevice
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"%3s CIDX=%04lX Arg1=%1lX DLEN=%04lX PLEN=%04lX WLEN=%04lX RLEN=%04lX %02X,%02X,%02X,%02X\n"
	.align 8
.LC8:
	.string	"CINDX=%04lX PLEN=%04lX EPLEN=%04lX\n"
	.section	.rodata.str1.1
.LC9:
	.string	"Device Page Wrap around"
.LC10:
	.string	"Device Write Wrap around"
.LC11:
	.string	"Device Write Error"
.LC12:
	.string	"Device Read Wrap around"
.LC13:
	.string	"Device Read Error"
	.text
	.p2align 4
	.globl	EmulateDIDEeprom
	.hidden	EmulateDIDEeprom
	.type	EmulateDIDEeprom, @function
EmulateDIDEeprom:
.LFB91:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leaq	.LC7(%rip), %r9
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rcx, %r14
	movl	$126, %ecx
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%edi, %r13d
	movl	$76, %edi
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%r8d, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%edx, %ebx
	subq	$16, %rsp
	.cfi_def_cfa_offset 72
	movzbl	3(%rsi), %eax
	movq	8+DIDEEPromData(%rip), %rdx
	movq	40+DIDEEPromData(%rip), %r8
	pushq	%rax
	.cfi_def_cfa_offset 80
	movzbl	2(%rsi), %eax
	pushq	%rax
	.cfi_def_cfa_offset 88
	movzbl	1(%rsi), %eax
	pushq	%rax
	.cfi_def_cfa_offset 96
	movzbl	(%rsi), %eax
	leaq	.LC2(%rip), %rsi
	pushq	%rax
	.cfi_def_cfa_offset 104
	leaq	StdExt(%rip), %rax
	pushq	%r12
	.cfi_def_cfa_offset 112
	pushq	%rbx
	.cfi_def_cfa_offset 120
	pushq	16+DIDEEPromData(%rip)
	.cfi_def_cfa_offset 128
	pushq	DIDEEPromData(%rip)
	.cfi_def_cfa_offset 136
	pushq	%r13
	.cfi_def_cfa_offset 144
	pushq	24+DIDEEPromData(%rip)
	.cfi_def_cfa_offset 152
	pushq	(%rax,%rdx,8)
	.cfi_def_cfa_offset 160
	leaq	.LC4(%rip), %rdx
	xorl	%eax, %eax
	call	siFormattedMessage_M2@PLT
	addq	$96, %rsp
	.cfi_def_cfa_offset 64
	testq	%rbx, %rbx
	je	.L30
	movq	8+DIDEEPromData(%rip), %rax
	cmpq	$1, %rax
	je	.L31
	cmpq	$2, %rax
	je	.L32
	movq	24+DIDEEPromData(%rip), %rcx
	xorl	%edx, %edx
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	movq	40+DIDEEPromData(%rip), %r8
	leaq	.LC8(%rip), %r9
	leaq	.LC2(%rip), %rsi
	movl	$76, %edi
	movq	%rcx, %rax
	divq	16+DIDEEPromData(%rip)
	leaq	(%rbx,%rdx), %rax
	pushq	%rax
	.cfi_def_cfa_offset 80
	xorl	%eax, %eax
	pushq	%rdx
	.cfi_def_cfa_offset 88
	leaq	.LC4(%rip), %rdx
	pushq	%rcx
	.cfi_def_cfa_offset 96
	movl	$178, %ecx
	call	siFormattedMessage_M2@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 64
.L44:
	movq	24+DIDEEPromData(%rip), %rcx
	movq	16+DIDEEPromData(%rip), %rsi
	xorl	%edx, %edx
	movq	%rcx, %rax
	divq	%rsi
	addq	%rbx, %rdx
	cmpq	%rdx, %rsi
	jb	.L55
	addq	%rbx, %rcx
	cmpq	DIDEEPromData(%rip), %rcx
	ja	.L56
	imulq	$90000, %rbx, %rdi
	call	EApiSleepns@PLT
	movq	24+DIDEEPromData(%rip), %rsi
	movq	48+DIDEEPromData(%rip), %rdi
	xorl	%edx, %edx
	call	fseek@PLT
	movq	%rbx, %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	movq	48+DIDEEPromData(%rip), %rcx
	call	fwrite@PLT
	cmpq	%rbx, %rax
	jne	.L57
	addq	%rbx, 24+DIDEEPromData(%rip)
	.p2align 4,,10
	.p2align 3
.L30:
	testq	%r12, %r12
	je	.L41
	movq	24+DIDEEPromData(%rip), %rax
	addq	%r12, %rax
	cmpq	DIDEEPromData(%rip), %rax
	ja	.L58
	imulq	$90000, %r12, %rdi
	call	EApiSleepns@PLT
	movq	24+DIDEEPromData(%rip), %rsi
	movq	48+DIDEEPromData(%rip), %rdi
	xorl	%edx, %edx
	call	fseek@PLT
	movq	%r12, %rdx
	movl	$1, %esi
	movq	%r14, %rdi
	movq	48+DIDEEPromData(%rip), %rcx
	call	fread@PLT
	cmpq	%rax, %r12
	jne	.L59
	addq	%r12, 24+DIDEEPromData(%rip)
.L41:
.L36:
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	xorl	%r8d, %r8d
	movl	$232, %ecx
	movl	$76, %edi
	leaq	.LC6(%rip), %rax
	leaq	.LC4(%rip), %rdx
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rax
	.cfi_def_cfa_offset 72
	popq	%rdx
	.cfi_def_cfa_offset 64
	xorl	%eax, %eax
	addq	$8, %rsp
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
.L32:
	.cfi_restore_state
	cmpq	$1, %rbx
	je	.L60
	movzbl	0(%rbp), %edi
	salq	$16, %r13
	leaq	2(%rbp), %r15
	subq	$2, %rbx
	sall	$8, %edi
	movslq	%edi, %rdi
	movq	%rdi, 24+DIDEEPromData(%rip)
	orq	%rdi, %r13
	movzbl	1(%rbp), %edi
	orq	%rdi, %r13
	movl	$180000, %edi
	movq	%r13, 24+DIDEEPromData(%rip)
	call	EApiSleepns@PLT
.L34:
	movq	24+DIDEEPromData(%rip), %rcx
	xorl	%edx, %edx
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	movq	40+DIDEEPromData(%rip), %r8
	leaq	.LC8(%rip), %r9
	leaq	.LC2(%rip), %rsi
	movl	$76, %edi
	movq	%rcx, %rax
	divq	16+DIDEEPromData(%rip)
	leaq	(%rdx,%rbx), %rax
	pushq	%rax
	.cfi_def_cfa_offset 80
	xorl	%eax, %eax
	pushq	%rdx
	.cfi_def_cfa_offset 88
	leaq	.LC4(%rip), %rdx
	pushq	%rcx
	.cfi_def_cfa_offset 96
	movl	$178, %ecx
	call	siFormattedMessage_M2@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 64
	testq	%rbx, %rbx
	je	.L30
	movq	%r15, %rbp
	jmp	.L44
	.p2align 4,,10
	.p2align 3
.L59:
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	leaq	.LC13(%rip), %rax
	movl	$224, %ecx
	movl	$-1281, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
.L53:
	leaq	.LC2(%rip), %rsi
	leaq	.LC4(%rip), %rdx
	movl	$69, %edi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rcx
	.cfi_def_cfa_offset 72
	popq	%rsi
	.cfi_def_cfa_offset 64
	movl	$-1281, %eax
	addq	$8, %rsp
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
.L31:
	.cfi_restore_state
	movzbl	0(%rbp), %eax
	salq	$8, %r13
	leaq	1(%rbp), %r15
	subq	$1, %rbx
	movl	$90000, %edi
	orq	%rax, %r13
	movq	%r13, 24+DIDEEPromData(%rip)
	call	EApiSleepns@PLT
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L58:
	subq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 72
	leaq	.LC12(%rip), %rax
	movl	$215, %ecx
	movl	$-1281, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
	jmp	.L53
	.p2align 4,,10
	.p2align 3
.L56:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	leaq	.LC10(%rip), %rax
	movl	$194, %ecx
	movl	$-1282, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
.L54:
	movl	$69, %edi
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rdi
	.cfi_def_cfa_offset 72
	popq	%r8
	.cfi_def_cfa_offset 64
	movl	$-1282, %eax
	addq	$8, %rsp
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
.L57:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 72
	leaq	.LC11(%rip), %rax
	movl	$203, %ecx
	movl	$-1282, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
	jmp	.L54
	.p2align 4,,10
	.p2align 3
.L55:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 72
	leaq	.LC9(%rip), %rax
	movl	$188, %ecx
	movl	$-1282, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
	jmp	.L54
	.p2align 4,,10
	.p2align 3
.L60:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	leaq	.LC5(%rip), %rax
	movl	$156, %ecx
	movl	$-1281, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
	jmp	.L53
	.cfi_endproc
.LFE91:
	.size	EmulateDIDEeprom, .-EmulateDIDEeprom
	.p2align 4
	.globl	EmulateUDSEeprom
	.hidden	EmulateUDSEeprom
	.type	EmulateUDSEeprom, @function
EmulateUDSEeprom:
.LFB92:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leaq	.LC7(%rip), %r9
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rcx, %r14
	movl	$126, %ecx
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%edi, %r13d
	movl	$76, %edi
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%r8d, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%edx, %ebx
	subq	$16, %rsp
	.cfi_def_cfa_offset 72
	movzbl	3(%rsi), %eax
	movq	8+UDSEEPromData(%rip), %rdx
	movq	40+UDSEEPromData(%rip), %r8
	pushq	%rax
	.cfi_def_cfa_offset 80
	movzbl	2(%rsi), %eax
	pushq	%rax
	.cfi_def_cfa_offset 88
	movzbl	1(%rsi), %eax
	pushq	%rax
	.cfi_def_cfa_offset 96
	movzbl	(%rsi), %eax
	leaq	.LC2(%rip), %rsi
	pushq	%rax
	.cfi_def_cfa_offset 104
	leaq	StdExt(%rip), %rax
	pushq	%r12
	.cfi_def_cfa_offset 112
	pushq	%rbx
	.cfi_def_cfa_offset 120
	pushq	16+UDSEEPromData(%rip)
	.cfi_def_cfa_offset 128
	pushq	UDSEEPromData(%rip)
	.cfi_def_cfa_offset 136
	pushq	%r13
	.cfi_def_cfa_offset 144
	pushq	24+UDSEEPromData(%rip)
	.cfi_def_cfa_offset 152
	pushq	(%rax,%rdx,8)
	.cfi_def_cfa_offset 160
	leaq	.LC4(%rip), %rdx
	xorl	%eax, %eax
	call	siFormattedMessage_M2@PLT
	addq	$96, %rsp
	.cfi_def_cfa_offset 64
	testq	%rbx, %rbx
	je	.L63
	movq	8+UDSEEPromData(%rip), %rax
	cmpq	$1, %rax
	je	.L64
	cmpq	$2, %rax
	je	.L65
	movq	24+UDSEEPromData(%rip), %rcx
	xorl	%edx, %edx
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	movq	40+UDSEEPromData(%rip), %r8
	leaq	.LC8(%rip), %r9
	leaq	.LC2(%rip), %rsi
	movl	$76, %edi
	movq	%rcx, %rax
	divq	16+UDSEEPromData(%rip)
	leaq	(%rbx,%rdx), %rax
	pushq	%rax
	.cfi_def_cfa_offset 80
	xorl	%eax, %eax
	pushq	%rdx
	.cfi_def_cfa_offset 88
	leaq	.LC4(%rip), %rdx
	pushq	%rcx
	.cfi_def_cfa_offset 96
	movl	$178, %ecx
	call	siFormattedMessage_M2@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 64
.L77:
	movq	24+UDSEEPromData(%rip), %rcx
	movq	16+UDSEEPromData(%rip), %rsi
	xorl	%edx, %edx
	movq	%rcx, %rax
	divq	%rsi
	addq	%rbx, %rdx
	cmpq	%rdx, %rsi
	jb	.L88
	addq	%rbx, %rcx
	cmpq	UDSEEPromData(%rip), %rcx
	ja	.L89
	imulq	$90000, %rbx, %rdi
	call	EApiSleepns@PLT
	movq	24+UDSEEPromData(%rip), %rsi
	movq	48+UDSEEPromData(%rip), %rdi
	xorl	%edx, %edx
	call	fseek@PLT
	movq	%rbx, %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	movq	48+UDSEEPromData(%rip), %rcx
	call	fwrite@PLT
	cmpq	%rbx, %rax
	jne	.L90
	addq	%rbx, 24+UDSEEPromData(%rip)
	.p2align 4,,10
	.p2align 3
.L63:
	testq	%r12, %r12
	je	.L74
	movq	24+UDSEEPromData(%rip), %rax
	addq	%r12, %rax
	cmpq	UDSEEPromData(%rip), %rax
	ja	.L91
	imulq	$90000, %r12, %rdi
	call	EApiSleepns@PLT
	movq	24+UDSEEPromData(%rip), %rsi
	movq	48+UDSEEPromData(%rip), %rdi
	xorl	%edx, %edx
	call	fseek@PLT
	movq	%r12, %rdx
	movl	$1, %esi
	movq	%r14, %rdi
	movq	48+UDSEEPromData(%rip), %rcx
	call	fread@PLT
	cmpq	%rax, %r12
	jne	.L92
	addq	%r12, 24+UDSEEPromData(%rip)
.L74:
.L69:
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	xorl	%r8d, %r8d
	movl	$232, %ecx
	movl	$76, %edi
	leaq	.LC6(%rip), %rax
	leaq	.LC4(%rip), %rdx
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rax
	.cfi_def_cfa_offset 72
	popq	%rdx
	.cfi_def_cfa_offset 64
	xorl	%eax, %eax
	addq	$8, %rsp
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
.L65:
	.cfi_restore_state
	cmpq	$1, %rbx
	je	.L93
	movzbl	0(%rbp), %edi
	salq	$16, %r13
	leaq	2(%rbp), %r15
	subq	$2, %rbx
	sall	$8, %edi
	movslq	%edi, %rdi
	movq	%rdi, 24+UDSEEPromData(%rip)
	orq	%rdi, %r13
	movzbl	1(%rbp), %edi
	orq	%rdi, %r13
	movl	$180000, %edi
	movq	%r13, 24+UDSEEPromData(%rip)
	call	EApiSleepns@PLT
.L67:
	movq	24+UDSEEPromData(%rip), %rcx
	xorl	%edx, %edx
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	movq	40+UDSEEPromData(%rip), %r8
	leaq	.LC8(%rip), %r9
	leaq	.LC2(%rip), %rsi
	movl	$76, %edi
	movq	%rcx, %rax
	divq	16+UDSEEPromData(%rip)
	leaq	(%rdx,%rbx), %rax
	pushq	%rax
	.cfi_def_cfa_offset 80
	xorl	%eax, %eax
	pushq	%rdx
	.cfi_def_cfa_offset 88
	leaq	.LC4(%rip), %rdx
	pushq	%rcx
	.cfi_def_cfa_offset 96
	movl	$178, %ecx
	call	siFormattedMessage_M2@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 64
	testq	%rbx, %rbx
	je	.L63
	movq	%r15, %rbp
	jmp	.L77
	.p2align 4,,10
	.p2align 3
.L92:
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	leaq	.LC13(%rip), %rax
	movl	$224, %ecx
	movl	$-1281, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
.L86:
	leaq	.LC2(%rip), %rsi
	leaq	.LC4(%rip), %rdx
	movl	$69, %edi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rcx
	.cfi_def_cfa_offset 72
	popq	%rsi
	.cfi_def_cfa_offset 64
	movl	$-1281, %eax
	addq	$8, %rsp
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
.L64:
	.cfi_restore_state
	movzbl	0(%rbp), %eax
	salq	$8, %r13
	leaq	1(%rbp), %r15
	subq	$1, %rbx
	movl	$90000, %edi
	orq	%rax, %r13
	movq	%r13, 24+UDSEEPromData(%rip)
	call	EApiSleepns@PLT
	jmp	.L67
	.p2align 4,,10
	.p2align 3
.L91:
	subq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 72
	leaq	.LC12(%rip), %rax
	movl	$215, %ecx
	movl	$-1281, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
	jmp	.L86
	.p2align 4,,10
	.p2align 3
.L89:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	leaq	.LC10(%rip), %rax
	movl	$194, %ecx
	movl	$-1282, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
.L87:
	movl	$69, %edi
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rdi
	.cfi_def_cfa_offset 72
	popq	%r8
	.cfi_def_cfa_offset 64
	movl	$-1282, %eax
	addq	$8, %rsp
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
.L90:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 72
	leaq	.LC11(%rip), %rax
	movl	$203, %ecx
	movl	$-1282, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
	jmp	.L87
	.p2align 4,,10
	.p2align 3
.L88:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 72
	leaq	.LC9(%rip), %rax
	movl	$188, %ecx
	movl	$-1282, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
	jmp	.L87
	.p2align 4,,10
	.p2align 3
.L93:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	leaq	.LC5(%rip), %rax
	movl	$156, %ecx
	movl	$-1281, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
	jmp	.L86
	.cfi_endproc
.LFE92:
	.size	EmulateUDSEeprom, .-EmulateUDSEeprom
	.p2align 4
	.globl	EmulateEPIEeprom
	.hidden	EmulateEPIEeprom
	.type	EmulateEPIEeprom, @function
EmulateEPIEeprom:
.LFB93:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leaq	.LC7(%rip), %r9
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rcx, %r14
	movl	$126, %ecx
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%edi, %r13d
	movl	$76, %edi
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%r8d, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%edx, %ebx
	subq	$16, %rsp
	.cfi_def_cfa_offset 72
	movzbl	3(%rsi), %eax
	movq	8+EPIEEPromData(%rip), %rdx
	movq	40+EPIEEPromData(%rip), %r8
	pushq	%rax
	.cfi_def_cfa_offset 80
	movzbl	2(%rsi), %eax
	pushq	%rax
	.cfi_def_cfa_offset 88
	movzbl	1(%rsi), %eax
	pushq	%rax
	.cfi_def_cfa_offset 96
	movzbl	(%rsi), %eax
	leaq	.LC2(%rip), %rsi
	pushq	%rax
	.cfi_def_cfa_offset 104
	leaq	StdExt(%rip), %rax
	pushq	%r12
	.cfi_def_cfa_offset 112
	pushq	%rbx
	.cfi_def_cfa_offset 120
	pushq	16+EPIEEPromData(%rip)
	.cfi_def_cfa_offset 128
	pushq	EPIEEPromData(%rip)
	.cfi_def_cfa_offset 136
	pushq	%r13
	.cfi_def_cfa_offset 144
	pushq	24+EPIEEPromData(%rip)
	.cfi_def_cfa_offset 152
	pushq	(%rax,%rdx,8)
	.cfi_def_cfa_offset 160
	leaq	.LC4(%rip), %rdx
	xorl	%eax, %eax
	call	siFormattedMessage_M2@PLT
	addq	$96, %rsp
	.cfi_def_cfa_offset 64
	testq	%rbx, %rbx
	je	.L96
	movq	8+EPIEEPromData(%rip), %rax
	cmpq	$1, %rax
	je	.L97
	cmpq	$2, %rax
	je	.L98
	movq	24+EPIEEPromData(%rip), %rcx
	xorl	%edx, %edx
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	movq	40+EPIEEPromData(%rip), %r8
	leaq	.LC8(%rip), %r9
	leaq	.LC2(%rip), %rsi
	movl	$76, %edi
	movq	%rcx, %rax
	divq	16+EPIEEPromData(%rip)
	leaq	(%rbx,%rdx), %rax
	pushq	%rax
	.cfi_def_cfa_offset 80
	xorl	%eax, %eax
	pushq	%rdx
	.cfi_def_cfa_offset 88
	leaq	.LC4(%rip), %rdx
	pushq	%rcx
	.cfi_def_cfa_offset 96
	movl	$178, %ecx
	call	siFormattedMessage_M2@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 64
.L110:
	movq	24+EPIEEPromData(%rip), %rcx
	movq	16+EPIEEPromData(%rip), %rsi
	xorl	%edx, %edx
	movq	%rcx, %rax
	divq	%rsi
	addq	%rbx, %rdx
	cmpq	%rdx, %rsi
	jb	.L121
	addq	%rbx, %rcx
	cmpq	EPIEEPromData(%rip), %rcx
	ja	.L122
	imulq	$90000, %rbx, %rdi
	call	EApiSleepns@PLT
	movq	24+EPIEEPromData(%rip), %rsi
	movq	48+EPIEEPromData(%rip), %rdi
	xorl	%edx, %edx
	call	fseek@PLT
	movq	%rbx, %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	movq	48+EPIEEPromData(%rip), %rcx
	call	fwrite@PLT
	cmpq	%rbx, %rax
	jne	.L123
	addq	%rbx, 24+EPIEEPromData(%rip)
	.p2align 4,,10
	.p2align 3
.L96:
	testq	%r12, %r12
	je	.L107
	movq	24+EPIEEPromData(%rip), %rax
	addq	%r12, %rax
	cmpq	EPIEEPromData(%rip), %rax
	ja	.L124
	imulq	$90000, %r12, %rdi
	call	EApiSleepns@PLT
	movq	24+EPIEEPromData(%rip), %rsi
	movq	48+EPIEEPromData(%rip), %rdi
	xorl	%edx, %edx
	call	fseek@PLT
	movq	%r12, %rdx
	movl	$1, %esi
	movq	%r14, %rdi
	movq	48+EPIEEPromData(%rip), %rcx
	call	fread@PLT
	cmpq	%rax, %r12
	jne	.L125
	addq	%r12, 24+EPIEEPromData(%rip)
.L107:
.L102:
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	xorl	%r8d, %r8d
	movl	$232, %ecx
	movl	$76, %edi
	leaq	.LC6(%rip), %rax
	leaq	.LC4(%rip), %rdx
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rax
	.cfi_def_cfa_offset 72
	popq	%rdx
	.cfi_def_cfa_offset 64
	xorl	%eax, %eax
	addq	$8, %rsp
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
.L98:
	.cfi_restore_state
	cmpq	$1, %rbx
	je	.L126
	movzbl	0(%rbp), %edi
	salq	$16, %r13
	leaq	2(%rbp), %r15
	subq	$2, %rbx
	sall	$8, %edi
	movslq	%edi, %rdi
	movq	%rdi, 24+EPIEEPromData(%rip)
	orq	%rdi, %r13
	movzbl	1(%rbp), %edi
	orq	%rdi, %r13
	movl	$180000, %edi
	movq	%r13, 24+EPIEEPromData(%rip)
	call	EApiSleepns@PLT
.L100:
	movq	24+EPIEEPromData(%rip), %rcx
	xorl	%edx, %edx
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	movq	40+EPIEEPromData(%rip), %r8
	leaq	.LC8(%rip), %r9
	leaq	.LC2(%rip), %rsi
	movl	$76, %edi
	movq	%rcx, %rax
	divq	16+EPIEEPromData(%rip)
	leaq	(%rdx,%rbx), %rax
	pushq	%rax
	.cfi_def_cfa_offset 80
	xorl	%eax, %eax
	pushq	%rdx
	.cfi_def_cfa_offset 88
	leaq	.LC4(%rip), %rdx
	pushq	%rcx
	.cfi_def_cfa_offset 96
	movl	$178, %ecx
	call	siFormattedMessage_M2@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 64
	testq	%rbx, %rbx
	je	.L96
	movq	%r15, %rbp
	jmp	.L110
	.p2align 4,,10
	.p2align 3
.L125:
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	leaq	.LC13(%rip), %rax
	movl	$224, %ecx
	movl	$-1281, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
.L119:
	leaq	.LC2(%rip), %rsi
	leaq	.LC4(%rip), %rdx
	movl	$69, %edi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rcx
	.cfi_def_cfa_offset 72
	popq	%rsi
	.cfi_def_cfa_offset 64
	movl	$-1281, %eax
	addq	$8, %rsp
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
.L97:
	.cfi_restore_state
	movzbl	0(%rbp), %eax
	salq	$8, %r13
	leaq	1(%rbp), %r15
	subq	$1, %rbx
	movl	$90000, %edi
	orq	%rax, %r13
	movq	%r13, 24+EPIEEPromData(%rip)
	call	EApiSleepns@PLT
	jmp	.L100
	.p2align 4,,10
	.p2align 3
.L124:
	subq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 72
	leaq	.LC12(%rip), %rax
	movl	$215, %ecx
	movl	$-1281, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
	jmp	.L119
	.p2align 4,,10
	.p2align 3
.L122:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	leaq	.LC10(%rip), %rax
	movl	$194, %ecx
	movl	$-1282, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
.L120:
	movl	$69, %edi
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rdi
	.cfi_def_cfa_offset 72
	popq	%r8
	.cfi_def_cfa_offset 64
	movl	$-1282, %eax
	addq	$8, %rsp
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
.L123:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 72
	leaq	.LC11(%rip), %rax
	movl	$203, %ecx
	movl	$-1282, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
	jmp	.L120
	.p2align 4,,10
	.p2align 3
.L121:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 72
	leaq	.LC9(%rip), %rax
	movl	$188, %ecx
	movl	$-1282, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
	jmp	.L120
	.p2align 4,,10
	.p2align 3
.L126:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	leaq	.LC5(%rip), %rax
	movl	$156, %ecx
	movl	$-1281, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
	jmp	.L119
	.cfi_endproc
.LFE93:
	.size	EmulateEPIEeprom, .-EmulateEPIEeprom
	.p2align 4
	.globl	EmulateEeePExpEeprom
	.hidden	EmulateEeePExpEeprom
	.type	EmulateEeePExpEeprom, @function
EmulateEeePExpEeprom:
.LFB96:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leaq	.LC7(%rip), %r9
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rcx, %r14
	movl	$126, %ecx
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%edi, %r13d
	movl	$76, %edi
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%r8d, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%edx, %ebx
	subq	$16, %rsp
	.cfi_def_cfa_offset 72
	movzbl	3(%rsi), %eax
	movq	8+EeePExpEEPromData(%rip), %rdx
	movq	40+EeePExpEEPromData(%rip), %r8
	pushq	%rax
	.cfi_def_cfa_offset 80
	movzbl	2(%rsi), %eax
	pushq	%rax
	.cfi_def_cfa_offset 88
	movzbl	1(%rsi), %eax
	pushq	%rax
	.cfi_def_cfa_offset 96
	movzbl	(%rsi), %eax
	leaq	.LC2(%rip), %rsi
	pushq	%rax
	.cfi_def_cfa_offset 104
	leaq	StdExt(%rip), %rax
	pushq	%r12
	.cfi_def_cfa_offset 112
	pushq	%rbx
	.cfi_def_cfa_offset 120
	pushq	16+EeePExpEEPromData(%rip)
	.cfi_def_cfa_offset 128
	pushq	EeePExpEEPromData(%rip)
	.cfi_def_cfa_offset 136
	pushq	%r13
	.cfi_def_cfa_offset 144
	pushq	24+EeePExpEEPromData(%rip)
	.cfi_def_cfa_offset 152
	pushq	(%rax,%rdx,8)
	.cfi_def_cfa_offset 160
	leaq	.LC4(%rip), %rdx
	xorl	%eax, %eax
	call	siFormattedMessage_M2@PLT
	addq	$96, %rsp
	.cfi_def_cfa_offset 64
	testq	%rbx, %rbx
	je	.L129
	movq	8+EeePExpEEPromData(%rip), %rax
	cmpq	$1, %rax
	je	.L130
	cmpq	$2, %rax
	je	.L131
	movq	24+EeePExpEEPromData(%rip), %rcx
	xorl	%edx, %edx
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	movq	40+EeePExpEEPromData(%rip), %r8
	leaq	.LC8(%rip), %r9
	leaq	.LC2(%rip), %rsi
	movl	$76, %edi
	movq	%rcx, %rax
	divq	16+EeePExpEEPromData(%rip)
	leaq	(%rbx,%rdx), %rax
	pushq	%rax
	.cfi_def_cfa_offset 80
	xorl	%eax, %eax
	pushq	%rdx
	.cfi_def_cfa_offset 88
	leaq	.LC4(%rip), %rdx
	pushq	%rcx
	.cfi_def_cfa_offset 96
	movl	$178, %ecx
	call	siFormattedMessage_M2@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 64
.L143:
	movq	24+EeePExpEEPromData(%rip), %rcx
	movq	16+EeePExpEEPromData(%rip), %rsi
	xorl	%edx, %edx
	movq	%rcx, %rax
	divq	%rsi
	addq	%rbx, %rdx
	cmpq	%rdx, %rsi
	jb	.L154
	addq	%rbx, %rcx
	cmpq	EeePExpEEPromData(%rip), %rcx
	ja	.L155
	imulq	$90000, %rbx, %rdi
	call	EApiSleepns@PLT
	movq	24+EeePExpEEPromData(%rip), %rsi
	movq	48+EeePExpEEPromData(%rip), %rdi
	xorl	%edx, %edx
	call	fseek@PLT
	movq	%rbx, %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	movq	48+EeePExpEEPromData(%rip), %rcx
	call	fwrite@PLT
	cmpq	%rbx, %rax
	jne	.L156
	addq	%rbx, 24+EeePExpEEPromData(%rip)
	.p2align 4,,10
	.p2align 3
.L129:
	testq	%r12, %r12
	je	.L140
	movq	24+EeePExpEEPromData(%rip), %rax
	addq	%r12, %rax
	cmpq	EeePExpEEPromData(%rip), %rax
	ja	.L157
	imulq	$90000, %r12, %rdi
	call	EApiSleepns@PLT
	movq	24+EeePExpEEPromData(%rip), %rsi
	movq	48+EeePExpEEPromData(%rip), %rdi
	xorl	%edx, %edx
	call	fseek@PLT
	movq	%r12, %rdx
	movl	$1, %esi
	movq	%r14, %rdi
	movq	48+EeePExpEEPromData(%rip), %rcx
	call	fread@PLT
	cmpq	%rax, %r12
	jne	.L158
	addq	%r12, 24+EeePExpEEPromData(%rip)
.L140:
.L135:
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	xorl	%r8d, %r8d
	movl	$232, %ecx
	movl	$76, %edi
	leaq	.LC6(%rip), %rax
	leaq	.LC4(%rip), %rdx
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rax
	.cfi_def_cfa_offset 72
	popq	%rdx
	.cfi_def_cfa_offset 64
	xorl	%eax, %eax
	addq	$8, %rsp
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
.L131:
	.cfi_restore_state
	cmpq	$1, %rbx
	je	.L159
	movzbl	0(%rbp), %edi
	salq	$16, %r13
	leaq	2(%rbp), %r15
	subq	$2, %rbx
	sall	$8, %edi
	movslq	%edi, %rdi
	movq	%rdi, 24+EeePExpEEPromData(%rip)
	orq	%rdi, %r13
	movzbl	1(%rbp), %edi
	orq	%rdi, %r13
	movl	$180000, %edi
	movq	%r13, 24+EeePExpEEPromData(%rip)
	call	EApiSleepns@PLT
.L133:
	movq	24+EeePExpEEPromData(%rip), %rcx
	xorl	%edx, %edx
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	movq	40+EeePExpEEPromData(%rip), %r8
	leaq	.LC8(%rip), %r9
	leaq	.LC2(%rip), %rsi
	movl	$76, %edi
	movq	%rcx, %rax
	divq	16+EeePExpEEPromData(%rip)
	leaq	(%rdx,%rbx), %rax
	pushq	%rax
	.cfi_def_cfa_offset 80
	xorl	%eax, %eax
	pushq	%rdx
	.cfi_def_cfa_offset 88
	leaq	.LC4(%rip), %rdx
	pushq	%rcx
	.cfi_def_cfa_offset 96
	movl	$178, %ecx
	call	siFormattedMessage_M2@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 64
	testq	%rbx, %rbx
	je	.L129
	movq	%r15, %rbp
	jmp	.L143
	.p2align 4,,10
	.p2align 3
.L158:
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	leaq	.LC13(%rip), %rax
	movl	$224, %ecx
	movl	$-1281, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
.L152:
	leaq	.LC2(%rip), %rsi
	leaq	.LC4(%rip), %rdx
	movl	$69, %edi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rcx
	.cfi_def_cfa_offset 72
	popq	%rsi
	.cfi_def_cfa_offset 64
	movl	$-1281, %eax
	addq	$8, %rsp
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
.L130:
	.cfi_restore_state
	movzbl	0(%rbp), %eax
	salq	$8, %r13
	leaq	1(%rbp), %r15
	subq	$1, %rbx
	movl	$90000, %edi
	orq	%rax, %r13
	movq	%r13, 24+EeePExpEEPromData(%rip)
	call	EApiSleepns@PLT
	jmp	.L133
	.p2align 4,,10
	.p2align 3
.L157:
	subq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 72
	leaq	.LC12(%rip), %rax
	movl	$215, %ecx
	movl	$-1281, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
	jmp	.L152
	.p2align 4,,10
	.p2align 3
.L155:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	leaq	.LC10(%rip), %rax
	movl	$194, %ecx
	movl	$-1282, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
.L153:
	movl	$69, %edi
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rdi
	.cfi_def_cfa_offset 72
	popq	%r8
	.cfi_def_cfa_offset 64
	movl	$-1282, %eax
	addq	$8, %rsp
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
.L156:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 72
	leaq	.LC11(%rip), %rax
	movl	$203, %ecx
	movl	$-1282, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
	jmp	.L153
	.p2align 4,,10
	.p2align 3
.L154:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 72
	leaq	.LC9(%rip), %rax
	movl	$188, %ecx
	movl	$-1282, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
	jmp	.L153
	.p2align 4,,10
	.p2align 3
.L159:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	leaq	.LC5(%rip), %rax
	movl	$156, %ecx
	movl	$-1281, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
	jmp	.L152
	.cfi_endproc
.LFE96:
	.size	EmulateEeePExpEeprom, .-EmulateEeePExpEeprom
	.p2align 4
	.globl	EmulateCOM0CBEeprom
	.hidden	EmulateCOM0CBEeprom
	.type	EmulateCOM0CBEeprom, @function
EmulateCOM0CBEeprom:
.LFB97:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leaq	.LC7(%rip), %r9
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rcx, %r14
	movl	$126, %ecx
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%edi, %r13d
	movl	$76, %edi
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%r8d, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%edx, %ebx
	subq	$16, %rsp
	.cfi_def_cfa_offset 72
	movzbl	3(%rsi), %eax
	movq	8+COM0CBEEPromData(%rip), %rdx
	movq	40+COM0CBEEPromData(%rip), %r8
	pushq	%rax
	.cfi_def_cfa_offset 80
	movzbl	2(%rsi), %eax
	pushq	%rax
	.cfi_def_cfa_offset 88
	movzbl	1(%rsi), %eax
	pushq	%rax
	.cfi_def_cfa_offset 96
	movzbl	(%rsi), %eax
	leaq	.LC2(%rip), %rsi
	pushq	%rax
	.cfi_def_cfa_offset 104
	leaq	StdExt(%rip), %rax
	pushq	%r12
	.cfi_def_cfa_offset 112
	pushq	%rbx
	.cfi_def_cfa_offset 120
	pushq	16+COM0CBEEPromData(%rip)
	.cfi_def_cfa_offset 128
	pushq	COM0CBEEPromData(%rip)
	.cfi_def_cfa_offset 136
	pushq	%r13
	.cfi_def_cfa_offset 144
	pushq	24+COM0CBEEPromData(%rip)
	.cfi_def_cfa_offset 152
	pushq	(%rax,%rdx,8)
	.cfi_def_cfa_offset 160
	leaq	.LC4(%rip), %rdx
	xorl	%eax, %eax
	call	siFormattedMessage_M2@PLT
	addq	$96, %rsp
	.cfi_def_cfa_offset 64
	testq	%rbx, %rbx
	je	.L162
	movq	8+COM0CBEEPromData(%rip), %rax
	cmpq	$1, %rax
	je	.L163
	cmpq	$2, %rax
	je	.L164
	movq	24+COM0CBEEPromData(%rip), %rcx
	xorl	%edx, %edx
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	movq	40+COM0CBEEPromData(%rip), %r8
	leaq	.LC8(%rip), %r9
	leaq	.LC2(%rip), %rsi
	movl	$76, %edi
	movq	%rcx, %rax
	divq	16+COM0CBEEPromData(%rip)
	leaq	(%rbx,%rdx), %rax
	pushq	%rax
	.cfi_def_cfa_offset 80
	xorl	%eax, %eax
	pushq	%rdx
	.cfi_def_cfa_offset 88
	leaq	.LC4(%rip), %rdx
	pushq	%rcx
	.cfi_def_cfa_offset 96
	movl	$178, %ecx
	call	siFormattedMessage_M2@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 64
.L176:
	movq	24+COM0CBEEPromData(%rip), %rcx
	movq	16+COM0CBEEPromData(%rip), %rsi
	xorl	%edx, %edx
	movq	%rcx, %rax
	divq	%rsi
	addq	%rbx, %rdx
	cmpq	%rdx, %rsi
	jb	.L187
	addq	%rbx, %rcx
	cmpq	COM0CBEEPromData(%rip), %rcx
	ja	.L188
	imulq	$90000, %rbx, %rdi
	call	EApiSleepns@PLT
	movq	24+COM0CBEEPromData(%rip), %rsi
	movq	48+COM0CBEEPromData(%rip), %rdi
	xorl	%edx, %edx
	call	fseek@PLT
	movq	%rbx, %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	movq	48+COM0CBEEPromData(%rip), %rcx
	call	fwrite@PLT
	cmpq	%rbx, %rax
	jne	.L189
	addq	%rbx, 24+COM0CBEEPromData(%rip)
	.p2align 4,,10
	.p2align 3
.L162:
	testq	%r12, %r12
	je	.L173
	movq	24+COM0CBEEPromData(%rip), %rax
	addq	%r12, %rax
	cmpq	COM0CBEEPromData(%rip), %rax
	ja	.L190
	imulq	$90000, %r12, %rdi
	call	EApiSleepns@PLT
	movq	24+COM0CBEEPromData(%rip), %rsi
	movq	48+COM0CBEEPromData(%rip), %rdi
	xorl	%edx, %edx
	call	fseek@PLT
	movq	%r12, %rdx
	movl	$1, %esi
	movq	%r14, %rdi
	movq	48+COM0CBEEPromData(%rip), %rcx
	call	fread@PLT
	cmpq	%rax, %r12
	jne	.L191
	addq	%r12, 24+COM0CBEEPromData(%rip)
.L173:
.L168:
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	xorl	%r8d, %r8d
	movl	$232, %ecx
	movl	$76, %edi
	leaq	.LC6(%rip), %rax
	leaq	.LC4(%rip), %rdx
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rax
	.cfi_def_cfa_offset 72
	popq	%rdx
	.cfi_def_cfa_offset 64
	xorl	%eax, %eax
	addq	$8, %rsp
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
.L164:
	.cfi_restore_state
	cmpq	$1, %rbx
	je	.L192
	movzbl	0(%rbp), %edi
	salq	$16, %r13
	leaq	2(%rbp), %r15
	subq	$2, %rbx
	sall	$8, %edi
	movslq	%edi, %rdi
	movq	%rdi, 24+COM0CBEEPromData(%rip)
	orq	%rdi, %r13
	movzbl	1(%rbp), %edi
	orq	%rdi, %r13
	movl	$180000, %edi
	movq	%r13, 24+COM0CBEEPromData(%rip)
	call	EApiSleepns@PLT
.L166:
	movq	24+COM0CBEEPromData(%rip), %rcx
	xorl	%edx, %edx
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	movq	40+COM0CBEEPromData(%rip), %r8
	leaq	.LC8(%rip), %r9
	leaq	.LC2(%rip), %rsi
	movl	$76, %edi
	movq	%rcx, %rax
	divq	16+COM0CBEEPromData(%rip)
	leaq	(%rdx,%rbx), %rax
	pushq	%rax
	.cfi_def_cfa_offset 80
	xorl	%eax, %eax
	pushq	%rdx
	.cfi_def_cfa_offset 88
	leaq	.LC4(%rip), %rdx
	pushq	%rcx
	.cfi_def_cfa_offset 96
	movl	$178, %ecx
	call	siFormattedMessage_M2@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 64
	testq	%rbx, %rbx
	je	.L162
	movq	%r15, %rbp
	jmp	.L176
	.p2align 4,,10
	.p2align 3
.L191:
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	leaq	.LC13(%rip), %rax
	movl	$224, %ecx
	movl	$-1281, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
.L185:
	leaq	.LC2(%rip), %rsi
	leaq	.LC4(%rip), %rdx
	movl	$69, %edi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rcx
	.cfi_def_cfa_offset 72
	popq	%rsi
	.cfi_def_cfa_offset 64
	movl	$-1281, %eax
	addq	$8, %rsp
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
.L163:
	.cfi_restore_state
	movzbl	0(%rbp), %eax
	salq	$8, %r13
	leaq	1(%rbp), %r15
	subq	$1, %rbx
	movl	$90000, %edi
	orq	%rax, %r13
	movq	%r13, 24+COM0CBEEPromData(%rip)
	call	EApiSleepns@PLT
	jmp	.L166
	.p2align 4,,10
	.p2align 3
.L190:
	subq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 72
	leaq	.LC12(%rip), %rax
	movl	$215, %ecx
	movl	$-1281, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
	jmp	.L185
	.p2align 4,,10
	.p2align 3
.L188:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	leaq	.LC10(%rip), %rax
	movl	$194, %ecx
	movl	$-1282, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
.L186:
	movl	$69, %edi
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rdi
	.cfi_def_cfa_offset 72
	popq	%r8
	.cfi_def_cfa_offset 64
	movl	$-1282, %eax
	addq	$8, %rsp
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
.L189:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 72
	leaq	.LC11(%rip), %rax
	movl	$203, %ecx
	movl	$-1282, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
	jmp	.L186
	.p2align 4,,10
	.p2align 3
.L187:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 72
	leaq	.LC9(%rip), %rax
	movl	$188, %ecx
	movl	$-1282, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
	jmp	.L186
	.p2align 4,,10
	.p2align 3
.L192:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	leaq	.LC5(%rip), %rax
	movl	$156, %ecx
	movl	$-1281, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
	jmp	.L185
	.cfi_endproc
.LFE97:
	.size	EmulateCOM0CBEeprom, .-EmulateCOM0CBEeprom
	.p2align 4
	.globl	EmulateCOM0MEeprom
	.hidden	EmulateCOM0MEeprom
	.type	EmulateCOM0MEeprom, @function
EmulateCOM0MEeprom:
.LFB98:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leaq	.LC7(%rip), %r9
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rcx, %r14
	movl	$126, %ecx
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%edi, %r13d
	movl	$76, %edi
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%r8d, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%edx, %ebx
	subq	$16, %rsp
	.cfi_def_cfa_offset 72
	movzbl	3(%rsi), %eax
	movq	8+COM0MEEPromData(%rip), %rdx
	movq	40+COM0MEEPromData(%rip), %r8
	pushq	%rax
	.cfi_def_cfa_offset 80
	movzbl	2(%rsi), %eax
	pushq	%rax
	.cfi_def_cfa_offset 88
	movzbl	1(%rsi), %eax
	pushq	%rax
	.cfi_def_cfa_offset 96
	movzbl	(%rsi), %eax
	leaq	.LC2(%rip), %rsi
	pushq	%rax
	.cfi_def_cfa_offset 104
	leaq	StdExt(%rip), %rax
	pushq	%r12
	.cfi_def_cfa_offset 112
	pushq	%rbx
	.cfi_def_cfa_offset 120
	pushq	16+COM0MEEPromData(%rip)
	.cfi_def_cfa_offset 128
	pushq	COM0MEEPromData(%rip)
	.cfi_def_cfa_offset 136
	pushq	%r13
	.cfi_def_cfa_offset 144
	pushq	24+COM0MEEPromData(%rip)
	.cfi_def_cfa_offset 152
	pushq	(%rax,%rdx,8)
	.cfi_def_cfa_offset 160
	leaq	.LC4(%rip), %rdx
	xorl	%eax, %eax
	call	siFormattedMessage_M2@PLT
	addq	$96, %rsp
	.cfi_def_cfa_offset 64
	testq	%rbx, %rbx
	je	.L195
	movq	8+COM0MEEPromData(%rip), %rax
	cmpq	$1, %rax
	je	.L196
	cmpq	$2, %rax
	je	.L197
	movq	24+COM0MEEPromData(%rip), %rcx
	xorl	%edx, %edx
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	movq	40+COM0MEEPromData(%rip), %r8
	leaq	.LC8(%rip), %r9
	leaq	.LC2(%rip), %rsi
	movl	$76, %edi
	movq	%rcx, %rax
	divq	16+COM0MEEPromData(%rip)
	leaq	(%rbx,%rdx), %rax
	pushq	%rax
	.cfi_def_cfa_offset 80
	xorl	%eax, %eax
	pushq	%rdx
	.cfi_def_cfa_offset 88
	leaq	.LC4(%rip), %rdx
	pushq	%rcx
	.cfi_def_cfa_offset 96
	movl	$178, %ecx
	call	siFormattedMessage_M2@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 64
.L209:
	movq	24+COM0MEEPromData(%rip), %rcx
	movq	16+COM0MEEPromData(%rip), %rsi
	xorl	%edx, %edx
	movq	%rcx, %rax
	divq	%rsi
	addq	%rbx, %rdx
	cmpq	%rdx, %rsi
	jb	.L220
	addq	%rbx, %rcx
	cmpq	COM0MEEPromData(%rip), %rcx
	ja	.L221
	imulq	$90000, %rbx, %rdi
	call	EApiSleepns@PLT
	movq	24+COM0MEEPromData(%rip), %rsi
	movq	48+COM0MEEPromData(%rip), %rdi
	xorl	%edx, %edx
	call	fseek@PLT
	movq	%rbx, %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	movq	48+COM0MEEPromData(%rip), %rcx
	call	fwrite@PLT
	cmpq	%rbx, %rax
	jne	.L222
	addq	%rbx, 24+COM0MEEPromData(%rip)
	.p2align 4,,10
	.p2align 3
.L195:
	testq	%r12, %r12
	je	.L206
	movq	24+COM0MEEPromData(%rip), %rax
	addq	%r12, %rax
	cmpq	COM0MEEPromData(%rip), %rax
	ja	.L223
	imulq	$90000, %r12, %rdi
	call	EApiSleepns@PLT
	movq	24+COM0MEEPromData(%rip), %rsi
	movq	48+COM0MEEPromData(%rip), %rdi
	xorl	%edx, %edx
	call	fseek@PLT
	movq	%r12, %rdx
	movl	$1, %esi
	movq	%r14, %rdi
	movq	48+COM0MEEPromData(%rip), %rcx
	call	fread@PLT
	cmpq	%rax, %r12
	jne	.L224
	addq	%r12, 24+COM0MEEPromData(%rip)
.L206:
.L201:
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	xorl	%r8d, %r8d
	movl	$232, %ecx
	movl	$76, %edi
	leaq	.LC6(%rip), %rax
	leaq	.LC4(%rip), %rdx
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rax
	.cfi_def_cfa_offset 72
	popq	%rdx
	.cfi_def_cfa_offset 64
	xorl	%eax, %eax
	addq	$8, %rsp
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
.L197:
	.cfi_restore_state
	cmpq	$1, %rbx
	je	.L225
	movzbl	0(%rbp), %edi
	salq	$16, %r13
	leaq	2(%rbp), %r15
	subq	$2, %rbx
	sall	$8, %edi
	movslq	%edi, %rdi
	movq	%rdi, 24+COM0MEEPromData(%rip)
	orq	%rdi, %r13
	movzbl	1(%rbp), %edi
	orq	%rdi, %r13
	movl	$180000, %edi
	movq	%r13, 24+COM0MEEPromData(%rip)
	call	EApiSleepns@PLT
.L199:
	movq	24+COM0MEEPromData(%rip), %rcx
	xorl	%edx, %edx
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	movq	40+COM0MEEPromData(%rip), %r8
	leaq	.LC8(%rip), %r9
	leaq	.LC2(%rip), %rsi
	movl	$76, %edi
	movq	%rcx, %rax
	divq	16+COM0MEEPromData(%rip)
	leaq	(%rdx,%rbx), %rax
	pushq	%rax
	.cfi_def_cfa_offset 80
	xorl	%eax, %eax
	pushq	%rdx
	.cfi_def_cfa_offset 88
	leaq	.LC4(%rip), %rdx
	pushq	%rcx
	.cfi_def_cfa_offset 96
	movl	$178, %ecx
	call	siFormattedMessage_M2@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 64
	testq	%rbx, %rbx
	je	.L195
	movq	%r15, %rbp
	jmp	.L209
	.p2align 4,,10
	.p2align 3
.L224:
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	leaq	.LC13(%rip), %rax
	movl	$224, %ecx
	movl	$-1281, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
.L218:
	leaq	.LC2(%rip), %rsi
	leaq	.LC4(%rip), %rdx
	movl	$69, %edi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rcx
	.cfi_def_cfa_offset 72
	popq	%rsi
	.cfi_def_cfa_offset 64
	movl	$-1281, %eax
	addq	$8, %rsp
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
.L196:
	.cfi_restore_state
	movzbl	0(%rbp), %eax
	salq	$8, %r13
	leaq	1(%rbp), %r15
	subq	$1, %rbx
	movl	$90000, %edi
	orq	%rax, %r13
	movq	%r13, 24+COM0MEEPromData(%rip)
	call	EApiSleepns@PLT
	jmp	.L199
	.p2align 4,,10
	.p2align 3
.L223:
	subq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 72
	leaq	.LC12(%rip), %rax
	movl	$215, %ecx
	movl	$-1281, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
	jmp	.L218
	.p2align 4,,10
	.p2align 3
.L221:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	leaq	.LC10(%rip), %rax
	movl	$194, %ecx
	movl	$-1282, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
.L219:
	movl	$69, %edi
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rdi
	.cfi_def_cfa_offset 72
	popq	%r8
	.cfi_def_cfa_offset 64
	movl	$-1282, %eax
	addq	$8, %rsp
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
.L222:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 72
	leaq	.LC11(%rip), %rax
	movl	$203, %ecx
	movl	$-1282, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
	jmp	.L219
	.p2align 4,,10
	.p2align 3
.L220:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 72
	leaq	.LC9(%rip), %rax
	movl	$188, %ecx
	movl	$-1282, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
	jmp	.L219
	.p2align 4,,10
	.p2align 3
.L225:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	leaq	.LC5(%rip), %rax
	movl	$156, %ecx
	movl	$-1281, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
	jmp	.L218
	.cfi_endproc
.LFE98:
	.size	EmulateCOM0MEeprom, .-EmulateCOM0MEeprom
	.p2align 4
	.globl	EmulateEepromFS
	.hidden	EmulateEepromFS
	.type	EmulateEepromFS, @function
EmulateEepromFS:
.LFB89:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%r8, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%r9, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rcx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$32, %rsp
	.cfi_def_cfa_offset 88
	movzbl	3(%rdx), %eax
	pushq	%rax
	.cfi_def_cfa_offset 96
	movzbl	2(%rdx), %eax
	pushq	%rax
	.cfi_def_cfa_offset 104
	movzbl	1(%rdx), %eax
	pushq	%rax
	.cfi_def_cfa_offset 112
	movzbl	(%rdx), %eax
	pushq	%rax
	.cfi_def_cfa_offset 120
	leaq	StdExt(%rip), %rax
	pushq	%r9
	.cfi_def_cfa_offset 128
	leaq	.LC7(%rip), %r9
	pushq	%rcx
	.cfi_def_cfa_offset 136
	movl	$126, %ecx
	pushq	16(%rsi)
	.cfi_def_cfa_offset 144
	pushq	(%rsi)
	.cfi_def_cfa_offset 152
	pushq	%rdi
	.cfi_def_cfa_offset 160
	movl	$76, %edi
	pushq	24(%rsi)
	.cfi_def_cfa_offset 168
	movq	8(%rsi), %rdx
	pushq	(%rax,%rdx,8)
	.cfi_def_cfa_offset 176
	movq	40(%rsi), %r8
	leaq	.LC4(%rip), %rdx
	xorl	%eax, %eax
	leaq	.LC2(%rip), %rsi
	call	siFormattedMessage_M2@PLT
	addq	$96, %rsp
	.cfi_def_cfa_offset 80
	testq	%r12, %r12
	je	.L228
	movq	8(%rbx), %rax
	cmpq	$1, %rax
	je	.L229
	cmpq	$2, %rax
	je	.L230
	movq	24(%rbx), %rcx
	xorl	%edx, %edx
	subq	$8, %rsp
	.cfi_def_cfa_offset 88
	movq	40(%rbx), %r8
	leaq	.LC8(%rip), %r9
	leaq	.LC2(%rip), %rsi
	movl	$76, %edi
	movq	%rcx, %rax
	divq	16(%rbx)
	leaq	(%r12,%rdx), %rax
	pushq	%rax
	.cfi_def_cfa_offset 96
	xorl	%eax, %eax
	pushq	%rdx
	.cfi_def_cfa_offset 104
	leaq	.LC4(%rip), %rdx
	pushq	%rcx
	.cfi_def_cfa_offset 112
	movl	$178, %ecx
	call	siFormattedMessage_M2@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 80
.L242:
	movq	24(%rbx), %rcx
	movq	16(%rbx), %rsi
	xorl	%edx, %edx
	movq	%rcx, %rax
	divq	%rsi
	addq	%r12, %rdx
	cmpq	%rdx, %rsi
	jb	.L253
	addq	%r12, %rcx
	cmpq	(%rbx), %rcx
	ja	.L254
	imulq	$90000, %r12, %rdi
	call	EApiSleepns@PLT
	movq	24(%rbx), %rsi
	movq	48(%rbx), %rdi
	xorl	%edx, %edx
	call	fseek@PLT
	movq	48(%rbx), %rcx
	movq	%r12, %rdx
	movq	%rbp, %rdi
	movl	$1, %esi
	call	fwrite@PLT
	cmpq	%r12, %rax
	jne	.L255
	addq	%r12, 24(%rbx)
	.p2align 4,,10
	.p2align 3
.L228:
	testq	%r13, %r13
	je	.L239
	movq	24(%rbx), %rax
	addq	%r13, %rax
	cmpq	(%rbx), %rax
	ja	.L256
	imulq	$90000, %r13, %rdi
	call	EApiSleepns@PLT
	movq	24(%rbx), %rsi
	movq	48(%rbx), %rdi
	xorl	%edx, %edx
	call	fseek@PLT
	movq	48(%rbx), %rcx
	movq	%r13, %rdx
	movq	%r14, %rdi
	movl	$1, %esi
	call	fread@PLT
	cmpq	%rax, %r13
	jne	.L257
	addq	%r13, 24(%rbx)
.L239:
.L234:
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 88
	xorl	%r8d, %r8d
	movl	$232, %ecx
	movl	$76, %edi
	leaq	.LC6(%rip), %rax
	leaq	.LC4(%rip), %rdx
	pushq	%rax
	.cfi_def_cfa_offset 96
	leaq	.LC3(%rip), %r9
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rax
	.cfi_def_cfa_offset 88
	popq	%rdx
	.cfi_def_cfa_offset 80
	xorl	%eax, %eax
	addq	$24, %rsp
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
.L230:
	.cfi_restore_state
	cmpq	$1, %r12
	jbe	.L258
	movzbl	0(%rbp), %eax
	movq	%r15, %r10
	leaq	2(%rbp), %rsi
	subq	$2, %r12
	salq	$16, %r10
	movq	%rsi, 8(%rsp)
	sall	$8, %eax
	cltq
	movq	%rax, 24(%rbx)
	movzbl	1(%rbp), %edi
	orq	%rdi, %r10
	movl	$180000, %edi
	orq	%r10, %rax
	movq	%rax, 24(%rbx)
	call	EApiSleepns@PLT
.L232:
	movq	24(%rbx), %rcx
	xorl	%edx, %edx
	subq	$8, %rsp
	.cfi_def_cfa_offset 88
	movq	40(%rbx), %r8
	leaq	.LC8(%rip), %r9
	leaq	.LC2(%rip), %rsi
	movl	$76, %edi
	movq	%rcx, %rax
	divq	16(%rbx)
	leaq	(%rdx,%r12), %rax
	pushq	%rax
	.cfi_def_cfa_offset 96
	xorl	%eax, %eax
	pushq	%rdx
	.cfi_def_cfa_offset 104
	leaq	.LC4(%rip), %rdx
	pushq	%rcx
	.cfi_def_cfa_offset 112
	movl	$178, %ecx
	call	siFormattedMessage_M2@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 80
	testq	%r12, %r12
	je	.L228
	movq	8(%rsp), %rbp
	jmp	.L242
	.p2align 4,,10
	.p2align 3
.L257:
	subq	$8, %rsp
	.cfi_def_cfa_offset 88
	leaq	.LC13(%rip), %rax
	movl	$224, %ecx
	movl	$-1281, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 96
	leaq	.LC3(%rip), %r9
.L251:
	leaq	.LC2(%rip), %rsi
	leaq	.LC4(%rip), %rdx
	movl	$69, %edi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rcx
	.cfi_def_cfa_offset 88
	popq	%rsi
	.cfi_def_cfa_offset 80
	movl	$-1281, %eax
	addq	$24, %rsp
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
.L229:
	.cfi_restore_state
	leaq	1(%rbp), %rax
	movq	%r15, %r10
	movl	$90000, %edi
	subq	$1, %r12
	movq	%rax, 8(%rsp)
	movzbl	0(%rbp), %eax
	salq	$8, %r10
	orq	%rax, %r10
	movq	%r10, 24(%rbx)
	call	EApiSleepns@PLT
	jmp	.L232
	.p2align 4,,10
	.p2align 3
.L256:
	subq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 88
	leaq	.LC12(%rip), %rax
	movl	$215, %ecx
	movl	$-1281, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 96
	leaq	.LC3(%rip), %r9
	jmp	.L251
	.p2align 4,,10
	.p2align 3
.L254:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 88
	leaq	.LC10(%rip), %rax
	movl	$194, %ecx
	movl	$-1282, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 96
	leaq	.LC3(%rip), %r9
.L252:
	movl	$69, %edi
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rdi
	.cfi_def_cfa_offset 88
	popq	%r8
	.cfi_def_cfa_offset 80
	movl	$-1282, %eax
	addq	$24, %rsp
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
.L255:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 88
	leaq	.LC11(%rip), %rax
	movl	$203, %ecx
	movl	$-1282, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 96
	leaq	.LC3(%rip), %r9
	jmp	.L252
	.p2align 4,,10
	.p2align 3
.L253:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 88
	leaq	.LC9(%rip), %rax
	movl	$188, %ecx
	movl	$-1282, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 96
	leaq	.LC3(%rip), %r9
	jmp	.L252
	.p2align 4,,10
	.p2align 3
.L258:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 88
	leaq	.LC5(%rip), %rax
	movl	$156, %ecx
	movl	$-1281, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 96
	leaq	.LC3(%rip), %r9
	jmp	.L251
	.cfi_endproc
.LFE89:
	.size	EmulateEepromFS, .-EmulateEepromFS
	.p2align 4
	.globl	EmulateCmdDevice
	.hidden	EmulateCmdDevice
	.type	EmulateCmdDevice, @function
EmulateCmdDevice:
.LFB90:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rcx, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%r8, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%r9, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 72
	movzbl	3(%rdx), %eax
	pushq	%rax
	.cfi_def_cfa_offset 80
	movzbl	2(%rdx), %eax
	pushq	%rax
	.cfi_def_cfa_offset 88
	movzbl	1(%rdx), %eax
	pushq	%rax
	.cfi_def_cfa_offset 96
	movzbl	(%rdx), %eax
	pushq	%rax
	.cfi_def_cfa_offset 104
	leaq	StdExt(%rip), %rax
	pushq	%r9
	.cfi_def_cfa_offset 112
	leaq	.LC0(%rip), %r9
	pushq	%rcx
	.cfi_def_cfa_offset 120
	movl	$258, %ecx
	pushq	%rdi
	.cfi_def_cfa_offset 128
	movl	$76, %edi
	pushq	8(%rsi)
	.cfi_def_cfa_offset 136
	movq	(%rsi), %rdx
	pushq	(%rax,%rdx,8)
	.cfi_def_cfa_offset 144
	movq	24(%rsi), %r8
	leaq	.LC1(%rip), %rdx
	xorl	%eax, %eax
	leaq	.LC2(%rip), %rsi
	call	siFormattedMessage_M2@PLT
	addq	$80, %rsp
	.cfi_def_cfa_offset 64
	testq	%r14, %r14
	je	.L269
	movq	(%rbx), %rax
	cmpq	$1, %rax
	je	.L263
	cmpq	$2, %rax
	je	.L264
.L265:
	imulq	$90000, %r14, %rdi
	movl	$4294967295, %r14d
	call	EApiSleepns@PLT
	movq	32(%rbx), %rbp
	movq	0(%rbp), %rax
	cmpq	%r14, %rax
	je	.L269
	.p2align 4,,10
	.p2align 3
.L272:
	cmpq	%rax, 8(%rbx)
	je	.L282
	movq	24(%rbp), %rax
	addq	$24, %rbp
	cmpq	%r14, %rax
	jne	.L272
.L269:
	testq	%r12, %r12
	jne	.L283
.L262:
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	xorl	%r8d, %r8d
	movl	$330, %ecx
	movl	$76, %edi
	leaq	.LC6(%rip), %rax
	leaq	.LC4(%rip), %rdx
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rax
	.cfi_def_cfa_offset 72
	xorl	%eax, %eax
	popq	%rdx
	.cfi_def_cfa_offset 64
.L268:
.L259:
	addq	$8, %rsp
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
.L264:
	.cfi_restore_state
	cmpq	$1, %r14
	jbe	.L284
	movzbl	0(%rbp), %eax
	movl	$180000, %edi
	subq	$2, %r14
	sall	$8, %eax
	cltq
	movq	%rax, 8(%rbx)
	movzbl	1(%rbp), %edx
	orq	%rdx, %rax
	movq	%rax, 8(%rbx)
	call	EApiSleepns@PLT
	jmp	.L266
	.p2align 4,,10
	.p2align 3
.L263:
	movzbl	0(%rbp), %eax
	movl	$90000, %edi
	subq	$1, %r14
	movq	%rax, 8(%rbx)
	call	EApiSleepns@PLT
.L266:
	testq	%r14, %r14
	jne	.L265
	testq	%r12, %r12
	je	.L262
.L283:
	imulq	$90000, %r12, %rdi
	movl	$4294967295, %r15d
	call	EApiSleepns@PLT
	movq	32(%rbx), %rbp
	movq	0(%rbp), %rax
	cmpq	%r15, %rax
	jne	.L275
	jmp	.L262
	.p2align 4,,10
	.p2align 3
.L273:
	movq	24(%rbp), %rax
	addq	$24, %rbp
	cmpq	%r15, %rax
	je	.L262
.L275:
	cmpq	%rax, 8(%rbx)
	jne	.L273
	movq	8(%rbp), %r14
	movq	16(%rbp), %rsi
	cmpq	%r14, %r12
	jbe	.L274
	movq	%r14, %rdx
	movq	%r13, %rdi
	call	memcpy@PLT
	movl	%r12d, %eax
	leaq	0(%r13,%r14), %rdx
	movabsq	$72340172838076673, %rcx
	subl	%r14d, %eax
	leaq	8(%rdx), %rdi
	movzbl	%al, %eax
	andq	$-8, %rdi
	imulq	%rcx, %rax
	movq	%rax, (%rdx)
	movq	%rax, 247(%rdx)
	subq	%rdi, %rdx
	leal	255(%rdx), %ecx
	shrl	$3, %ecx
	rep stosq
	jmp	.L273
	.p2align 4,,10
	.p2align 3
.L274:
	movq	%r12, %rdx
	movq	%r13, %rdi
	call	memcpy@PLT
	jmp	.L273
	.p2align 4,,10
	.p2align 3
.L284:
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	leaq	.LC5(%rip), %rax
	movl	$284, %ecx
	movl	$-1281, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	leaq	.LC3(%rip), %r9
	leaq	.LC4(%rip), %rdx
	movl	$69, %edi
	call	siFormattedMessage_SC@PLT
	popq	%rcx
	.cfi_def_cfa_offset 72
	movl	$-1281, %eax
	popq	%rsi
	.cfi_def_cfa_offset 64
	jmp	.L259
	.p2align 4,,10
	.p2align 3
.L282:
	cmpq	%r12, 8(%rbp)
	movq	16(%rbp), %rdi
	movq	%r12, %rdx
	movq	%r13, %rsi
	cmovbe	8(%rbp), %rdx
	addq	$24, %rbp
	call	memcpy@PLT
	movq	0(%rbp), %rax
	cmpq	%r14, %rax
	jne	.L272
	jmp	.L269
	.cfi_endproc
.LFE90:
	.size	EmulateCmdDevice, .-EmulateCmdDevice
	.section	.rodata.str1.1
.LC14:
	.string	"rb+"
.LC15:
	.string	"wb+"
	.text
	.p2align 4
	.globl	OpenI2CEepromFiles
	.hidden	OpenI2CEepromFiles
	.type	OpenI2CEepromFiles, @function
OpenI2CEepromFiles:
.LFB94:
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	leaq	.LC14(%rip), %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	leaq	OpenFiles(%rip), %rbx
	leaq	48(%rbx), %r13
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	jmp	.L289
	.p2align 4,,10
	.p2align 3
.L287:
	addq	$8, %rbx
	cmpq	%r13, %rbx
	je	.L292
.L289:
	movq	(%rbx), %rbp
	movq	%r12, %rsi
	movq	40(%rbp), %rdi
	call	fopen@PLT
	movq	%rax, 48(%rbp)
	movq	(%rbx), %rbp
	movq	48(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L293
.L286:
	movl	$2, %edx
	xorl	%esi, %esi
	call	fseek@PLT
	movq	(%rbx), %rax
	movq	48(%rax), %rdi
	call	ftell@PLT
	movq	%rax, %r8
	movq	(%rbx), %rax
	movslq	(%rax), %rdx
	cmpq	%rdx, %r8
	jge	.L287
	movq	48(%rax), %rdi
	addq	$8, %rbx
	call	rewind@PLT
	movq	-8(%rbx), %rax
	movl	$1, %esi
	movq	48(%rax), %rcx
	movq	32(%rax), %rdi
	movq	(%rax), %rdx
	call	fwrite@PLT
	cmpq	%r13, %rbx
	jne	.L289
.L292:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L293:
	.cfi_restore_state
	movq	40(%rbp), %rdi
	leaq	.LC15(%rip), %rsi
	call	fopen@PLT
	movq	%rax, 48(%rbp)
	movq	(%rbx), %rax
	movq	48(%rax), %rdi
	testq	%rdi, %rdi
	je	.L287
	jmp	.L286
	.cfi_endproc
.LFE94:
	.size	OpenI2CEepromFiles, .-OpenI2CEepromFiles
	.p2align 4
	.globl	CloseI2CEepromFiles
	.hidden	CloseI2CEepromFiles
	.type	CloseI2CEepromFiles, @function
CloseI2CEepromFiles:
.LFB95:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	leaq	OpenFiles(%rip), %rbx
	leaq	48(%rbx), %rbp
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	.p2align 4,,10
	.p2align 3
.L296:
	movq	(%rbx), %rax
	movq	48(%rax), %rdi
	testq	%rdi, %rdi
	je	.L295
	call	fclose@PLT
	movq	(%rbx), %rax
	movq	$0, 48(%rax)
.L295:
	addq	$8, %rbx
	cmpq	%rbp, %rbx
	jne	.L296
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE95:
	.size	CloseI2CEepromFiles, .-CloseI2CEepromFiles
	.section	.rodata.str1.1
.LC16:
	.string	"EApiI2CGetBusCapEmul"
.LC17:
	.string	"Unrecognised I2C ID"
	.text
	.p2align 4
	.globl	EApiI2CGetBusCapEmul
	.type	EApiI2CGetBusCapEmul, @function
EApiI2CGetBusCapEmul:
.LFB100:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testl	%edi, %edi
	je	.L305
	cmpl	$1, %edi
	je	.L306
	cmpl	$2, %edi
	je	.L307
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	leaq	.LC17(%rip), %rax
	movl	$663, %ecx
	movl	$-769, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	leaq	.LC3(%rip), %r9
	leaq	.LC16(%rip), %rdx
	movl	$69, %edi
	call	siFormattedMessage_SC@PLT
	popq	%rcx
	.cfi_def_cfa_offset 24
	popq	%rsi
	.cfi_def_cfa_offset 16
	movl	$-769, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L305:
	.cfi_restore_state
	movl	$65536, %eax
.L303:
.L304:
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	movl	%eax, (%rsi)
	leaq	.LC6(%rip), %rax
	xorl	%r8d, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 32
	leaq	.LC16(%rip), %rdx
	xorl	%eax, %eax
	leaq	.LC3(%rip), %r9
	movl	$656, %ecx
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
.L306:
	.cfi_restore_state
	movl	$256, %eax
	jmp	.L303
	.p2align 4,,10
	.p2align 3
.L307:
	movl	$32, %eax
	jmp	.L303
	.cfi_endproc
.LFE100:
	.size	EApiI2CGetBusCapEmul, .-EApiI2CGetBusCapEmul
	.section	.rodata.str1.1
.LC18:
	.string	"EApiI2CWriteReadEmul"
.LC19:
	.string	"WriteBCnt>(pMaxBlkLen+1)"
.LC20:
	.string	"ReadBCnt>(pMaxBlkLen+1)"
.LC21:
	.string	"ADDR=%02X\n"
.LC22:
	.string	"Info"
.LC23:
	.string	"Device Not Present"
	.text
	.p2align 4
	.globl	EApiI2CWriteReadEmul
	.type	EApiI2CWriteReadEmul, @function
EApiI2CWriteReadEmul:
.LFB101:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%r8, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%ecx, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%r9d, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%edi, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	testl	%ebx, %ebx
	je	.L321
	cmpl	$1, %ebx
	je	.L322
	cmpl	$2, %ebx
	je	.L323
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	movl	$757, %ecx
	movl	$69, %edi
	movl	$-769, %r8d
	leaq	.LC17(%rip), %rax
	leaq	.LC3(%rip), %r9
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%r9
	.cfi_def_cfa_offset 72
	movl	$-769, %eax
	popq	%r10
	.cfi_def_cfa_offset 64
.L309:
	addq	$8, %rsp
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
.L321:
	.cfi_restore_state
	movl	$65537, %eax
.L310:
	cmpl	%eax, %r12d
	ja	.L331
	cmpl	%eax, %ebp
	ja	.L332
	movzbl	%sil, %esi
	movl	%esi, %eax
	movl	%esi, %r15d
	sall	$8, %eax
	movl	%eax, %edx
	andl	$63488, %edx
	cmpl	$61440, %edx
	jne	.L315
	movzbl	0(%r13), %esi
	subl	$1, %r12d
	addq	$1, %r13
	orl	%eax, %esi
	movl	%esi, %r15d
.L315:
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	movl	$727, %ecx
	movl	$76, %edi
	xorl	%eax, %eax
	pushq	%r15
	.cfi_def_cfa_offset 80
	leaq	.LC22(%rip), %r8
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	leaq	.LC21(%rip), %r9
	call	siFormattedMessage_M2@PLT
	leaq	(%rbx,%rbx,2), %rdx
	movl	$4294967295, %edi
	popq	%rcx
	.cfi_def_cfa_offset 72
	leaq	EmulatedInterfaces(%rip), %rax
	popq	%rsi
	.cfi_def_cfa_offset 64
	movq	8(%rax,%rdx,8), %r8
	movq	(%r8), %rax
	cmpq	%rdi, %rax
	je	.L316
	movl	%r15d, %esi
	movq	%r8, %rcx
	xorl	%edx, %edx
	jmp	.L320
	.p2align 4,,10
	.p2align 3
.L317:
	leal	1(%rdx), %eax
	movq	%rax, %rdx
	leaq	(%rax,%rax,2), %rax
	leaq	(%r8,%rax,8), %rcx
	movq	(%rcx), %rax
	cmpq	%rdi, %rax
	je	.L316
.L320:
	cmpq	%rax, %rsi
	jne	.L317
	cmpl	$1, %ebp
	movq	8(%rcx), %rax
	movq	16(%rcx), %rdi
	movq	%r13, %rsi
	adcl	$-1, %ebp
	cmpl	$1, %r12d
	movq	%r14, %rcx
	adcl	$-1, %r12d
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%ebp, %r8d
	popq	%rbx
	.cfi_def_cfa_offset 48
	movl	%r12d, %edx
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
	jmp	*%rax
	.p2align 4,,10
	.p2align 3
.L316:
	.cfi_restore_state
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	leaq	.LC23(%rip), %rax
	leaq	.LC18(%rip), %rdx
	movl	$-1025, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
	xorl	%eax, %eax
	movl	$749, %ecx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	call	siFormattedMessage_SC@PLT
	popq	%rax
	.cfi_def_cfa_offset 72
	movl	$-1025, %eax
	popq	%rdx
	.cfi_def_cfa_offset 64
	jmp	.L309
	.p2align 4,,10
	.p2align 3
.L322:
	movl	$257, %eax
	jmp	.L310
	.p2align 4,,10
	.p2align 3
.L323:
	movl	$33, %eax
	jmp	.L310
.L331:
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	leaq	.LC19(%rip), %rax
	movl	$701, %ecx
	movl	$-259, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
.L330:
	movl	$69, %edi
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	call	siFormattedMessage_SC@PLT
	popq	%rdi
	.cfi_def_cfa_offset 72
	movl	$-259, %eax
	popq	%r8
	.cfi_def_cfa_offset 64
	jmp	.L309
.L332:
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	leaq	.LC20(%rip), %rax
	movl	$707, %ecx
	movl	$-259, %r8d
	pushq	%rax
	.cfi_def_cfa_offset 80
	leaq	.LC3(%rip), %r9
	jmp	.L330
	.cfi_endproc
.LFE101:
	.size	EApiI2CWriteReadEmul, .-EApiI2CWriteReadEmul
	.hidden	EmulatedInterfaces
	.globl	EmulatedInterfaces
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	EmulatedInterfaces, @object
	.size	EmulatedInterfaces, 72
EmulatedInterfaces:
	.long	0
	.zero	4
	.quad	ExternalI2CDevices
	.long	65536
	.zero	4
	.long	1
	.zero	4
	.quad	LVDS_1I2CDevices
	.long	256
	.zero	4
	.long	2
	.zero	4
	.quad	LVDS_2I2CDevices
	.long	32
	.zero	4
	.hidden	LVDS_2I2CDevices
	.globl	LVDS_2I2CDevices
	.align 32
	.type	LVDS_2I2CDevices, @object
	.size	LVDS_2I2CDevices, 72
LVDS_2I2CDevices:
	.quad	160
	.quad	EmulateEPIEeprom
	.quad	0
	.quad	164
	.quad	EmulateDIDEeprom
	.quad	0
	.quad	4294967295
	.quad	0
	.quad	0
	.hidden	LVDS_1I2CDevices
	.globl	LVDS_1I2CDevices
	.align 32
	.type	LVDS_1I2CDevices, @object
	.size	LVDS_1I2CDevices, 96
LVDS_1I2CDevices:
	.quad	160
	.quad	EmulateUDSEeprom
	.quad	0
	.quad	164
	.quad	EmulateDIDEeprom
	.quad	0
	.quad	62037
	.quad	EmulateDIDEeprom
	.quad	0
	.quad	4294967295
	.quad	0
	.quad	0
	.hidden	ExternalI2CDevices
	.globl	ExternalI2CDevices
	.align 32
	.type	ExternalI2CDevices, @object
	.size	ExternalI2CDevices, 192
ExternalI2CDevices:
	.quad	82
	.quad	EmulateHWMonDevice
	.quad	0
	.quad	160
	.quad	EmulateCOM0MEeprom
	.quad	0
	.quad	162
	.quad	EmulateEeePExpEeprom
	.quad	0
	.quad	164
	.quad	EmulateEeePExpEeprom
	.quad	1
	.quad	166
	.quad	EmulateEeePExpEeprom
	.quad	2
	.quad	168
	.quad	EmulateEeePExpEeprom
	.quad	3
	.quad	174
	.quad	EmulateCOM0CBEeprom
	.quad	0
	.quad	4294967295
	.quad	0
	.quad	0
	.hidden	HWMon
	.globl	HWMon
	.section	.rodata.str1.1
.LC24:
	.string	"ADT7447"
	.section	.data.rel.local,"aw"
	.align 32
	.type	HWMon, @object
	.size	HWMon, 40
HWMon:
	.quad	1
	.quad	0
	.quad	0
	.quad	.LC24
	.quad	HwmonCmdIndx
	.hidden	HwmonCmdIndx
	.globl	HwmonCmdIndx
	.align 32
	.type	HwmonCmdIndx, @object
	.size	HwmonCmdIndx, 96
HwmonCmdIndx:
	.quad	16
	.quad	1
	.quad	CpuTemp
	.quad	17
	.quad	1
	.quad	ChipsetTemp
	.quad	18
	.quad	1
	.quad	SystemTemp
	.quad	4294967295
	.quad	0
	.quad	0
	.hidden	SystemTemp
	.globl	SystemTemp
	.data
	.type	SystemTemp, @object
	.size	SystemTemp, 1
SystemTemp:
	.ascii	"\322"
	.hidden	ChipsetTemp
	.globl	ChipsetTemp
	.type	ChipsetTemp, @object
	.size	ChipsetTemp, 1
ChipsetTemp:
	.ascii	"."
	.hidden	CpuTemp
	.globl	CpuTemp
	.type	CpuTemp, @object
	.size	CpuTemp, 1
CpuTemp:
	.ascii	"8"
	.hidden	OpenFiles
	.globl	OpenFiles
	.section	.data.rel.local
	.align 32
	.type	OpenFiles, @object
	.size	OpenFiles, 48
OpenFiles:
	.quad	EeePExpEEPromData
	.quad	COM0CBEEPromData
	.quad	COM0MEEPromData
	.quad	EPIEEPromData
	.quad	UDSEEPromData
	.quad	DIDEEPromData
	.section	.rodata.str1.1
.LC25:
	.string	"EeePExp.EEPROM.EMUL"
	.section	.data.rel.local
	.align 32
	.type	EeePExpEEPromData, @object
	.size	EeePExpEEPromData, 56
EeePExpEEPromData:
	.quad	1024
	.quad	1
	.quad	8
	.quad	0
	.quad	EeePExpEEPROM
	.quad	.LC25
	.quad	0
	.hidden	EeePExpEEPROM
	.globl	EeePExpEEPROM
	.bss
	.align 32
	.type	EeePExpEEPROM, @object
	.size	EeePExpEEPROM, 1024
EeePExpEEPROM:
	.zero	1024
	.section	.rodata.str1.1
.LC26:
	.string	"COM0R20-CB.EEPROM.EMUL"
	.section	.data.rel.local
	.align 32
	.type	COM0CBEEPromData, @object
	.size	COM0CBEEPromData, 56
COM0CBEEPromData:
	.quad	4096
	.quad	2
	.quad	64
	.quad	0
	.quad	COM0CBEEPROM
	.quad	.LC26
	.quad	0
	.hidden	COM0CBEEPROM
	.globl	COM0CBEEPROM
	.bss
	.align 32
	.type	COM0CBEEPROM, @object
	.size	COM0CBEEPROM, 4096
COM0CBEEPROM:
	.zero	4096
	.section	.rodata.str1.1
.LC27:
	.string	"COM0R20-M.EEPROM.EMUL"
	.section	.data.rel.local
	.align 32
	.type	COM0MEEPromData, @object
	.size	COM0MEEPromData, 56
COM0MEEPromData:
	.quad	2048
	.quad	2
	.quad	16
	.quad	0
	.quad	COM0MEEPROM
	.quad	.LC27
	.quad	0
	.hidden	COM0MEEPROM
	.globl	COM0MEEPROM
	.bss
	.align 32
	.type	COM0MEEPROM, @object
	.size	COM0MEEPROM, 2048
COM0MEEPROM:
	.zero	2048
	.section	.rodata.str1.1
.LC28:
	.string	"EPI.EEPROM.EMUL"
	.section	.data.rel.local
	.align 32
	.type	EPIEEPromData, @object
	.size	EPIEEPromData, 56
EPIEEPromData:
	.quad	512
	.quad	2
	.quad	16
	.quad	0
	.quad	EPIEEPROM
	.quad	.LC28
	.quad	0
	.hidden	EPIEEPROM
	.globl	EPIEEPROM
	.data
	.align 32
	.type	EPIEEPROM, @object
	.size	EPIEEPROM, 512
EPIEEPROM:
	.byte	0
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	0
	.byte	12
	.byte	-12
	.byte	4
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	15
	.byte	1
	.byte	3
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-18
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-81
	.byte	-64
	.byte	0
	.byte	69
	.byte	64
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	-96
	.byte	15
	.byte	32
	.byte	-32
	.byte	48
	.byte	88
	.byte	25
	.byte	32
	.byte	24
	.byte	72
	.byte	18
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	-3
	.byte	0
	.byte	50
	.byte	120
	.byte	30
	.byte	50
	.byte	5
	.byte	0
	.byte	10
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	0
	.byte	0
	.byte	0
	.byte	-2
	.byte	0
	.byte	99
	.byte	111
	.byte	110
	.byte	103
	.byte	97
	.byte	116
	.byte	101
	.byte	99
	.byte	32
	.byte	65
	.byte	71
	.byte	10
	.byte	10
	.byte	0
	.byte	0
	.byte	0
	.byte	14
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-79
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.str1.1
.LC29:
	.string	"UDS.EEPROM.EMUL"
	.section	.data.rel.local
	.align 32
	.type	UDSEEPromData, @object
	.size	UDSEEPromData, 56
UDSEEPromData:
	.quad	512
	.quad	2
	.quad	16
	.quad	0
	.quad	UDSEEPROM
	.quad	.LC29
	.quad	0
	.hidden	UDSEEPROM
	.globl	UDSEEPROM
	.data
	.align 32
	.type	UDSEEPROM, @object
	.size	UDSEEPROM, 512
UDSEEPROM:
	.byte	0
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	0
	.byte	4
	.byte	33
	.byte	88
	.byte	89
	.byte	113
	.byte	-53
	.byte	-94
	.byte	4
	.byte	30
	.byte	17
	.byte	1
	.byte	3
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-10
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-84
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	-128
	.byte	12
	.byte	32
	.byte	0
	.byte	49
	.byte	-32
	.byte	45
	.byte	16
	.byte	42
	.byte	-128
	.byte	-94
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-2
	.byte	0
	.byte	75
	.byte	111
	.byte	110
	.byte	116
	.byte	114
	.byte	111
	.byte	110
	.byte	95
	.byte	68
	.byte	69
	.byte	71
	.byte	10
	.byte	32
	.byte	0
	.byte	0
	.byte	0
	.byte	15
	.byte	0
	.byte	0
	.byte	12
	.byte	0
	.byte	-36
	.byte	-2
	.byte	0
	.byte	-20
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	17
	.byte	0
	.byte	87
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.str1.1
.LC30:
	.string	"DID.EEPROM.EMUL"
	.section	.data.rel.local
	.align 32
	.type	DIDEEPromData, @object
	.size	DIDEEPromData, 56
DIDEEPromData:
	.quad	512
	.quad	2
	.quad	256
	.quad	0
	.quad	DIDEEPROM
	.quad	.LC30
	.quad	0
	.hidden	DIDEEPROM
	.globl	DIDEEPROM
	.data
	.align 32
	.type	DIDEEPROM, @object
	.size	DIDEEPROM, 512
DIDEEPROM:
	.byte	16
	.byte	76
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	12
	.byte	68
	.byte	69
	.byte	77
	.byte	86
	.byte	0
	.byte	22
	.byte	0
	.byte	0
	.byte	0
	.byte	28
	.byte	8
	.byte	0
	.byte	3
	.byte	0
	.byte	20
	.byte	47
	.byte	42
	.byte	0
	.byte	-128
	.byte	-1
	.byte	4
	.byte	-105
	.byte	1
	.byte	47
	.byte	-128
	.byte	111
	.byte	0
	.byte	-1
	.byte	3
	.byte	41
	.byte	0
	.byte	0
	.byte	-128
	.byte	2
	.byte	0
	.byte	12
	.byte	0
	.byte	13
	.byte	20
	.byte	80
	.byte	-1
	.byte	4
	.byte	-1
	.byte	3
	.byte	25
	.byte	3
	.byte	0
	.byte	30
	.byte	30
	.byte	7
	.byte	20
	.byte	13
	.byte	0
	.byte	6
	.byte	15
	.byte	15
	.byte	15
	.byte	100
	.byte	35
	.byte	35
	.byte	15
	.byte	0
	.byte	10
	.byte	18
	.byte	0
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	17
	.byte	0
	.byte	-68
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.hidden	StdExt
	.globl	StdExt
	.section	.rodata.str1.1
.LC31:
	.string	"   "
.LC32:
	.string	"Std"
.LC33:
	.string	"Ext"
	.section	.data.rel.local
	.align 16
	.type	StdExt, @object
	.size	StdExt, 24
StdExt:
	.quad	.LC31
	.quad	.LC32
	.quad	.LC33
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
