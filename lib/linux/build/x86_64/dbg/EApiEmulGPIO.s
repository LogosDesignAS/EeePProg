	.file	"EApiEmulGPIO.c"
	.text
.Ltext0:
	.data
	.align 16
	.type	EmulatedIoBlock, @object
	.size	EmulatedIoBlock, 16
EmulatedIoBlock:
	.long	8560640
	.long	8519680
	.long	8560640
	.long	8519680
	.text
	.globl	EApiReadIO32
	.hidden	EApiReadIO32
	.type	EApiReadIO32, @function
EApiReadIO32:
.LFB6:
	.file 1 "/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EApiEmulGPIO.c"
	.loc 1 102 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 1 103 40
	movl	-4(%rbp), %eax
	addl	$4, %eax
	.loc 1 103 5
	cmpl	$16, %eax
	jbe	.L2
	.loc 1 105 14
	movl	$0, %eax
	jmp	.L3
.L2:
	.loc 1 107 11
	movl	-4(%rbp), %eax
	leaq	EmulatedIoBlock(%rip), %rdx
	addq	%rdx, %rax
	.loc 1 107 10
	movl	(%rax), %eax
.L3:
	.loc 1 108 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	EApiReadIO32, .-EApiReadIO32
	.globl	EApiWriteIO32
	.hidden	EApiWriteIO32
	.type	EApiWriteIO32, @function
EApiWriteIO32:
.LFB7:
	.loc 1 111 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	.loc 1 112 40
	movl	-4(%rbp), %eax
	addl	$4, %eax
	.loc 1 112 5
	cmpl	$16, %eax
	ja	.L7
	.loc 1 116 4
	movl	-4(%rbp), %eax
	leaq	EmulatedIoBlock(%rip), %rdx
	addq	%rax, %rdx
	.loc 1 116 57
	movl	-8(%rbp), %eax
	movl	%eax, (%rdx)
	.loc 1 117 3
	jmp	.L4
.L7:
	.loc 1 114 7
	nop
.L4:
	.loc 1 118 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	EApiWriteIO32, .-EApiWriteIO32
	.globl	EApiWriteIO32Delay
	.hidden	EApiWriteIO32Delay
	.type	EApiWriteIO32Delay, @function
EApiWriteIO32Delay:
.LFB8:
	.loc 1 120 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	.loc 1 121 3
	movl	$1400, %edi
	call	EApiSleepns@PLT
	.loc 1 122 3
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	EApiWriteIO32
	.loc 1 123 3
	nop
	.loc 1 124 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	EApiWriteIO32Delay, .-EApiWriteIO32Delay
	.globl	EApiReadIO32Delay
	.hidden	EApiReadIO32Delay
	.type	EApiReadIO32Delay, @function
EApiReadIO32Delay:
.LFB9:
	.loc 1 126 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	.loc 1 127 3
	movl	$1400, %edi
	call	EApiSleepns@PLT
	.loc 1 128 10
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	EApiReadIO32
	.loc 1 129 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	EApiReadIO32Delay, .-EApiReadIO32Delay
	.hidden	Port1Desc
	.globl	Port1Desc
	.section	.data.rel.local,"aw"
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
	.hidden	Port2Desc
	.globl	Port2Desc
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
	.hidden	GpioMappingID0
	.globl	GpioMappingID0
	.section	.data.rel.ro.local,"aw"
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
	.hidden	GPIOIDMapping
	.globl	GPIOIDMapping
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
	.section	.rodata
.LC0:
	.string	"%s\n"
.LC1:
	.string	"EApiGPIOGetLevelEmul"
	.align 8
.LC2:
	.string	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EApiEmulGPIO.c"
.LC3:
	.string	"Bit-mask Selects Invalid Bits"
.LC4:
	.string	"EApiGPIOGetLevel"
.LC5:
	.string	""
.LC6:
	.string	"Unrecognised GPIO ID"
	.text
	.globl	EApiGPIOGetLevelEmul
	.hidden	EApiGPIOGetLevelEmul
	.type	EApiGPIOGetLevelEmul, @function
EApiGPIOGetLevelEmul:
.LFB10:
	.loc 1 311 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	.loc 1 312 16
	movl	$0, -32(%rbp)
	.loc 1 314 12
	movl	$1, -20(%rbp)
	.loc 1 316 8
	movl	$0, -28(%rbp)
	.loc 1 316 3
	jmp	.L13
.L23:
	.loc 1 318 26
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	GPIOIDMapping(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 1 318 9
	cmpl	%eax, -36(%rbp)
	jne	.L14
	.loc 1 320 9
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+GPIOIDMapping(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	20+GPIOIDMapping(%rip), %rax
	movl	(%rdx,%rax), %eax
	orl	%ecx, %eax
	notl	%eax
	andl	-40(%rbp), %eax
	testl	%eax, %eax
	je	.L15
	.loc 1 320 9 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC3(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-261, %r8d
	movl	$320, %ecx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-261, -32(%rbp)
	jmp	.L16
.L15:
	.loc 1 326 15 is_stmt 1
	movl	$0, -24(%rbp)
	.loc 1 326 9
	jmp	.L17
.L18:
	.loc 1 327 27 discriminator 3
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 327 34 discriminator 3
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 327 38 discriminator 3
	movq	8(%rax), %rax
	.loc 1 327 50 discriminator 3
	movl	$0, (%rax)
	.loc 1 326 75 discriminator 3
	addl	$1, -24(%rbp)
.L17:
	.loc 1 326 34 discriminator 1
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 326 41 discriminator 1
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 326 45 discriminator 1
	movl	(%rax), %eax
	.loc 1 326 9 discriminator 1
	cmpl	$-1, %eax
	jne	.L18
	.loc 1 329 16
	movq	-48(%rbp), %rax
	movl	$0, (%rax)
	.loc 1 330 15
	movl	$0, -24(%rbp)
	.loc 1 330 9
	jmp	.L19
.L22:
	.loc 1 331 22
	movl	-40(%rbp), %eax
	andl	-20(%rbp), %eax
	.loc 1 331 13
	testl	%eax, %eax
	je	.L20
	.loc 1 333 32
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 333 39
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 333 43
	movq	8(%rax), %rax
	.loc 1 333 48
	movl	(%rax), %eax
	.loc 1 333 15
	testl	%eax, %eax
	jne	.L21
	.loc 1 334 71
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 334 78
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 334 82
	movq	8(%rax), %rax
	.loc 1 334 87
	movq	32(%rax), %rsi
	.loc 1 335 33
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 335 40
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 335 44
	movq	8(%rax), %rax
	.loc 1 334 55
	movl	12(%rax), %ecx
	.loc 1 334 31
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 334 38
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 334 42
	movq	8(%rax), %rbx
	.loc 1 334 55
	movl	%ecx, %edi
	call	*%rsi
.LVL0:
	.loc 1 334 54
	movl	%eax, 4(%rbx)
	.loc 1 337 31
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 337 38
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 337 42
	movq	8(%rax), %rax
	.loc 1 337 54
	movl	$1, (%rax)
.L21:
	.loc 1 339 32
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 339 39
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 339 43
	movq	8(%rax), %rax
	.loc 1 339 48
	movl	4(%rax), %ecx
	.loc 1 339 72
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 339 79
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 339 83
	movl	(%rax), %eax
	.loc 1 339 55
	andl	%ecx, %eax
	.loc 1 339 15
	testl	%eax, %eax
	je	.L20
	.loc 1 340 22
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	orl	-20(%rbp), %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
.L20:
	.loc 1 343 21 discriminator 2
	sall	-20(%rbp)
	.loc 1 330 75 discriminator 2
	addl	$1, -24(%rbp)
.L19:
	.loc 1 330 34 discriminator 1
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 330 41 discriminator 1
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 330 45 discriminator 1
	movl	(%rax), %eax
	.loc 1 330 9 discriminator 1
	cmpl	$-1, %eax
	jne	.L22
	.loc 1 345 9
	subq	$8, %rsp
	leaq	.LC5(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$0, %r8d
	movl	$345, %ecx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$76, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$0, -32(%rbp)
	jmp	.L16
.L14:
	.loc 1 316 40 discriminator 2
	addl	$1, -28(%rbp)
.L13:
	.loc 1 316 3 discriminator 1
	cmpl	$8, -28(%rbp)
	jbe	.L23
	.loc 1 348 3
	subq	$8, %rsp
	leaq	.LC6(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-769, %r8d
	movl	$348, %ecx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-769, -32(%rbp)
	nop
.L16:
	.loc 1 355 10
	movl	-32(%rbp), %eax
	.loc 1 356 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	EApiGPIOGetLevelEmul, .-EApiGPIOGetLevelEmul
	.section	.rodata
.LC7:
	.string	"EApiGPIOSetLevelEmul"
.LC8:
	.string	"EApiGPIOSetLevel"
	.align 8
.LC9:
	.string	"Cant Set Level on Pin that is set to input"
	.text
	.globl	EApiGPIOSetLevelEmul
	.hidden	EApiGPIOSetLevelEmul
	.type	EApiGPIOSetLevelEmul, @function
EApiGPIOSetLevelEmul:
.LFB11:
	.loc 1 364 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	%edx, -44(%rbp)
	.loc 1 365 16
	movl	$0, -32(%rbp)
	.loc 1 367 12
	movl	$1, -20(%rbp)
	.loc 1 368 8
	movl	$0, -28(%rbp)
	.loc 1 368 3
	jmp	.L26
.L41:
	.loc 1 370 26
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	GPIOIDMapping(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 1 370 9
	cmpl	%eax, -36(%rbp)
	jne	.L27
	.loc 1 372 9
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+GPIOIDMapping(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	20+GPIOIDMapping(%rip), %rax
	movl	(%rdx,%rax), %eax
	orl	%ecx, %eax
	notl	%eax
	andl	-40(%rbp), %eax
	testl	%eax, %eax
	je	.L28
	.loc 1 372 9 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC3(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-261, %r8d
	movl	$372, %ecx
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-261, -32(%rbp)
	jmp	.L29
.L28:
	.loc 1 378 15 is_stmt 1
	movl	$0, -24(%rbp)
	.loc 1 378 9
	jmp	.L30
.L31:
	.loc 1 379 27 discriminator 3
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 379 34 discriminator 3
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 379 38 discriminator 3
	movq	8(%rax), %rax
	.loc 1 379 50 discriminator 3
	movl	$0, (%rax)
	.loc 1 378 75 discriminator 3
	addl	$1, -24(%rbp)
.L30:
	.loc 1 378 34 discriminator 1
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 378 41 discriminator 1
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 378 45 discriminator 1
	movl	(%rax), %eax
	.loc 1 378 9 discriminator 1
	cmpl	$-1, %eax
	jne	.L31
	.loc 1 381 15
	movl	$0, -24(%rbp)
	.loc 1 381 9
	jmp	.L32
.L37:
	.loc 1 383 22
	movl	-40(%rbp), %eax
	andl	-20(%rbp), %eax
	.loc 1 383 13
	testl	%eax, %eax
	je	.L33
	.loc 1 385 32
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 385 39
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 385 43
	movq	8(%rax), %rax
	.loc 1 385 48
	movl	(%rax), %eax
	.loc 1 385 15
	testl	%eax, %eax
	jne	.L34
	.loc 1 386 71
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 386 78
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 386 82
	movq	8(%rax), %rax
	.loc 1 386 87
	movq	32(%rax), %rsi
	.loc 1 387 33
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 387 40
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 387 44
	movq	8(%rax), %rax
	.loc 1 386 55
	movl	12(%rax), %ecx
	.loc 1 386 31
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 386 38
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 386 42
	movq	8(%rax), %rbx
	.loc 1 386 55
	movl	%ecx, %edi
	call	*%rsi
.LVL1:
	.loc 1 386 54
	movl	%eax, 4(%rbx)
	.loc 1 390 72
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 390 79
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 390 83
	movq	8(%rax), %rax
	.loc 1 390 88
	movq	32(%rax), %rsi
	.loc 1 391 33
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 391 40
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 391 44
	movq	8(%rax), %rax
	.loc 1 390 56
	movl	16(%rax), %ecx
	.loc 1 390 31
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 390 38
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 390 42
	movq	8(%rax), %rbx
	.loc 1 390 56
	movl	%ecx, %edi
	call	*%rsi
.LVL2:
	.loc 1 390 55
	movl	%eax, 8(%rbx)
	.loc 1 394 31
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 394 38
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 394 42
	movq	8(%rax), %rax
	.loc 1 394 54
	movl	$1, (%rax)
.L34:
	.loc 1 397 13
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movl	8(%rax), %ecx
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	%ecx, %eax
	testl	%eax, %eax
	je	.L35
	.loc 1 397 13 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC9(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-257, %r8d
	movl	$397, %ecx
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-257, -32(%rbp)
	jmp	.L29
.L35:
	.loc 1 404 21 is_stmt 1
	movl	-44(%rbp), %eax
	andl	-20(%rbp), %eax
	.loc 1 404 15
	testl	%eax, %eax
	je	.L36
	.loc 1 405 31
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 405 38
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 405 42
	movq	8(%rax), %rax
	.loc 1 405 54
	movl	4(%rax), %esi
	.loc 1 405 72
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 405 79
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 405 83
	movl	(%rax), %ecx
	.loc 1 405 31
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 405 38
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 405 42
	movq	8(%rax), %rax
	.loc 1 405 54
	orl	%ecx, %esi
	movl	%esi, %edx
	movl	%edx, 4(%rax)
	jmp	.L33
.L36:
	.loc 1 407 31
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 407 38
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 407 42
	movq	8(%rax), %rax
	.loc 1 407 54
	movl	4(%rax), %ecx
	.loc 1 407 73
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 407 80
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 407 84
	movl	(%rax), %eax
	.loc 1 407 56
	notl	%eax
	movl	%eax, %esi
	.loc 1 407 31
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 407 38
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 407 42
	movq	8(%rax), %rax
	.loc 1 407 54
	andl	%esi, %ecx
	movl	%ecx, %edx
	movl	%edx, 4(%rax)
.L33:
	.loc 1 409 21 discriminator 2
	sall	-20(%rbp)
	.loc 1 381 75 discriminator 2
	addl	$1, -24(%rbp)
.L32:
	.loc 1 381 34 discriminator 1
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 381 41 discriminator 1
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 381 45 discriminator 1
	movl	(%rax), %eax
	.loc 1 381 9 discriminator 1
	cmpl	$-1, %eax
	jne	.L37
	.loc 1 411 15
	movl	$0, -24(%rbp)
	.loc 1 411 9
	jmp	.L38
.L40:
	.loc 1 412 30
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 412 37
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 412 41
	movq	8(%rax), %rax
	.loc 1 412 46
	movl	(%rax), %eax
	.loc 1 412 13
	cmpl	$1, %eax
	jne	.L39
	.loc 1 413 29
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 413 36
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 413 40
	movq	8(%rax), %rax
	.loc 1 413 45
	movq	24(%rax), %r8
	.loc 1 415 31
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 415 38
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 415 42
	movq	8(%rax), %rax
	.loc 1 413 13
	movl	4(%rax), %ecx
	.loc 1 414 31
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 414 38
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 414 42
	movq	8(%rax), %rax
	.loc 1 413 13
	movl	12(%rax), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	*%r8
.LVL3:
	.loc 1 417 29
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 417 36
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 417 40
	movq	8(%rax), %rax
	.loc 1 417 52
	movl	$0, (%rax)
.L39:
	.loc 1 411 75 discriminator 2
	addl	$1, -24(%rbp)
.L38:
	.loc 1 411 34 discriminator 1
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 411 41 discriminator 1
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 411 45 discriminator 1
	movl	(%rax), %eax
	.loc 1 411 9 discriminator 1
	cmpl	$-1, %eax
	jne	.L40
	.loc 1 420 9
	subq	$8, %rsp
	leaq	.LC5(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$0, %r8d
	movl	$420, %ecx
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$76, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$0, -32(%rbp)
	jmp	.L29
.L27:
	.loc 1 368 40 discriminator 2
	addl	$1, -28(%rbp)
.L26:
	.loc 1 368 3 discriminator 1
	cmpl	$8, -28(%rbp)
	jbe	.L41
	.loc 1 423 3
	subq	$8, %rsp
	leaq	.LC6(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-769, %r8d
	movl	$423, %ecx
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-769, -32(%rbp)
	nop
.L29:
	.loc 1 430 10
	movl	-32(%rbp), %eax
	.loc 1 431 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	EApiGPIOSetLevelEmul, .-EApiGPIOSetLevelEmul
	.section	.rodata
.LC10:
	.string	"EApiGPIOGetDirectionEmul"
.LC11:
	.string	"EApiGPIOGetDirection"
	.text
	.globl	EApiGPIOGetDirectionEmul
	.hidden	EApiGPIOGetDirectionEmul
	.type	EApiGPIOGetDirectionEmul, @function
EApiGPIOGetDirectionEmul:
.LFB12:
	.loc 1 439 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	.loc 1 440 16
	movl	$0, -32(%rbp)
	.loc 1 442 12
	movl	$1, -20(%rbp)
	.loc 1 444 8
	movl	$0, -28(%rbp)
	.loc 1 444 3
	jmp	.L44
.L54:
	.loc 1 446 26
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	GPIOIDMapping(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 1 446 9
	cmpl	%eax, -36(%rbp)
	jne	.L45
	.loc 1 448 9
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+GPIOIDMapping(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	20+GPIOIDMapping(%rip), %rax
	movl	(%rdx,%rax), %eax
	orl	%ecx, %eax
	notl	%eax
	andl	-40(%rbp), %eax
	testl	%eax, %eax
	je	.L46
	.loc 1 448 9 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC3(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-261, %r8d
	movl	$448, %ecx
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-261, -32(%rbp)
	jmp	.L47
.L46:
	.loc 1 454 15 is_stmt 1
	movl	$0, -24(%rbp)
	.loc 1 454 9
	jmp	.L48
.L49:
	.loc 1 455 27 discriminator 3
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 455 34 discriminator 3
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 455 38 discriminator 3
	movq	8(%rax), %rax
	.loc 1 455 50 discriminator 3
	movl	$0, (%rax)
	.loc 1 454 75 discriminator 3
	addl	$1, -24(%rbp)
.L48:
	.loc 1 454 34 discriminator 1
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 454 41 discriminator 1
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 454 45 discriminator 1
	movl	(%rax), %eax
	.loc 1 454 9 discriminator 1
	cmpl	$-1, %eax
	jne	.L49
	.loc 1 457 20
	movq	-48(%rbp), %rax
	movl	$0, (%rax)
	.loc 1 458 15
	movl	$0, -24(%rbp)
	.loc 1 458 9
	jmp	.L50
.L53:
	.loc 1 459 22
	movl	-40(%rbp), %eax
	andl	-20(%rbp), %eax
	.loc 1 459 13
	testl	%eax, %eax
	je	.L51
	.loc 1 461 32
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 461 39
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 461 43
	movq	8(%rax), %rax
	.loc 1 461 48
	movl	(%rax), %eax
	.loc 1 461 15
	testl	%eax, %eax
	jne	.L52
	.loc 1 462 71
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 462 78
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 462 82
	movq	8(%rax), %rax
	.loc 1 462 87
	movq	32(%rax), %rsi
	.loc 1 463 33
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 463 40
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 463 44
	movq	8(%rax), %rax
	.loc 1 462 55
	movl	16(%rax), %ecx
	.loc 1 462 31
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 462 38
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 462 42
	movq	8(%rax), %rbx
	.loc 1 462 55
	movl	%ecx, %edi
	call	*%rsi
.LVL4:
	.loc 1 462 54
	movl	%eax, 4(%rbx)
	.loc 1 465 31
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 465 38
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 465 42
	movq	8(%rax), %rax
	.loc 1 465 54
	movl	$1, (%rax)
.L52:
	.loc 1 467 32
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 467 39
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 467 43
	movq	8(%rax), %rax
	.loc 1 467 48
	movl	4(%rax), %ecx
	.loc 1 467 72
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 467 79
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 467 83
	movl	(%rax), %eax
	.loc 1 467 55
	andl	%ecx, %eax
	.loc 1 467 15
	testl	%eax, %eax
	je	.L51
	.loc 1 468 26
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	orl	-20(%rbp), %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
.L51:
	.loc 1 470 21 discriminator 2
	sall	-20(%rbp)
	.loc 1 458 75 discriminator 2
	addl	$1, -24(%rbp)
.L50:
	.loc 1 458 34 discriminator 1
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 458 41 discriminator 1
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 458 45 discriminator 1
	movl	(%rax), %eax
	.loc 1 458 9 discriminator 1
	cmpl	$-1, %eax
	jne	.L53
	.loc 1 472 9
	subq	$8, %rsp
	leaq	.LC5(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$0, %r8d
	movl	$472, %ecx
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$76, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$0, -32(%rbp)
	jmp	.L47
.L45:
	.loc 1 444 40 discriminator 2
	addl	$1, -28(%rbp)
.L44:
	.loc 1 444 3 discriminator 1
	cmpl	$8, -28(%rbp)
	jbe	.L54
	.loc 1 475 3
	subq	$8, %rsp
	leaq	.LC6(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-769, %r8d
	movl	$475, %ecx
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-769, -32(%rbp)
	nop
.L47:
	.loc 1 482 10
	movl	-32(%rbp), %eax
	.loc 1 483 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	EApiGPIOGetDirectionEmul, .-EApiGPIOGetDirectionEmul
	.section	.rodata
.LC12:
	.string	"EApiGPIOSetDirectionEmul"
.LC13:
	.string	"Unsupported Input Bits"
.LC14:
	.string	"Unsupported Output Bits"
.LC15:
	.string	"EApiGPIOSetDirection"
	.text
	.globl	EApiGPIOSetDirectionEmul
	.hidden	EApiGPIOSetDirectionEmul
	.type	EApiGPIOSetDirectionEmul, @function
EApiGPIOSetDirectionEmul:
.LFB13:
	.loc 1 491 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	%edx, -44(%rbp)
	.loc 1 492 16
	movl	$0, -32(%rbp)
	.loc 1 494 12
	movl	$1, -20(%rbp)
	.loc 1 495 8
	movl	$0, -28(%rbp)
	.loc 1 495 3
	jmp	.L57
.L73:
	.loc 1 497 26
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	GPIOIDMapping(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 1 497 9
	cmpl	%eax, -36(%rbp)
	jne	.L58
	.loc 1 499 9
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+GPIOIDMapping(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	20+GPIOIDMapping(%rip), %rax
	movl	(%rdx,%rax), %eax
	orl	%ecx, %eax
	notl	%eax
	andl	-40(%rbp), %eax
	testl	%eax, %eax
	je	.L59
	.loc 1 499 9 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC3(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-261, %r8d
	movl	$499, %ecx
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-261, -32(%rbp)
	jmp	.L60
.L59:
	.loc 1 505 9 is_stmt 1
	movl	-40(%rbp), %eax
	andl	-44(%rbp), %eax
	movl	%eax, %ecx
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	20+GPIOIDMapping(%rip), %rax
	movl	(%rdx,%rax), %eax
	notl	%eax
	andl	%ecx, %eax
	testl	%eax, %eax
	je	.L61
	.loc 1 505 9 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC13(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-260, %r8d
	movl	$505, %ecx
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-260, -32(%rbp)
	jmp	.L60
.L61:
	.loc 1 511 9 is_stmt 1
	movl	-44(%rbp), %eax
	notl	%eax
	andl	-40(%rbp), %eax
	movl	%eax, %ecx
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+GPIOIDMapping(%rip), %rax
	movl	(%rdx,%rax), %eax
	notl	%eax
	andl	%ecx, %eax
	testl	%eax, %eax
	je	.L62
	.loc 1 511 9 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC14(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-260, %r8d
	movl	$511, %ecx
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-260, -32(%rbp)
	jmp	.L60
.L62:
	.loc 1 517 15 is_stmt 1
	movl	$0, -24(%rbp)
	.loc 1 517 9
	jmp	.L63
.L64:
	.loc 1 518 27 discriminator 3
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 518 34 discriminator 3
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 518 38 discriminator 3
	movq	8(%rax), %rax
	.loc 1 518 50 discriminator 3
	movl	$0, (%rax)
	.loc 1 517 75 discriminator 3
	addl	$1, -24(%rbp)
.L63:
	.loc 1 517 34 discriminator 1
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 517 41 discriminator 1
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 517 45 discriminator 1
	movl	(%rax), %eax
	.loc 1 517 9 discriminator 1
	cmpl	$-1, %eax
	jne	.L64
	.loc 1 520 15
	movl	$0, -24(%rbp)
	.loc 1 520 9
	jmp	.L65
.L69:
	.loc 1 522 22
	movl	-40(%rbp), %eax
	andl	-20(%rbp), %eax
	.loc 1 522 13
	testl	%eax, %eax
	je	.L66
	.loc 1 524 32
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 524 39
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 524 43
	movq	8(%rax), %rax
	.loc 1 524 48
	movl	(%rax), %eax
	.loc 1 524 15
	testl	%eax, %eax
	jne	.L67
	.loc 1 525 71
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 525 78
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 525 82
	movq	8(%rax), %rax
	.loc 1 525 87
	movq	32(%rax), %rsi
	.loc 1 526 33
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 526 40
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 526 44
	movq	8(%rax), %rax
	.loc 1 525 55
	movl	16(%rax), %ecx
	.loc 1 525 31
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 525 38
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 525 42
	movq	8(%rax), %rbx
	.loc 1 525 55
	movl	%ecx, %edi
	call	*%rsi
.LVL5:
	.loc 1 525 54
	movl	%eax, 4(%rbx)
	.loc 1 528 31
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 528 38
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 528 42
	movq	8(%rax), %rax
	.loc 1 528 54
	movl	$1, (%rax)
.L67:
	.loc 1 530 25
	movl	-44(%rbp), %eax
	andl	-20(%rbp), %eax
	.loc 1 530 15
	testl	%eax, %eax
	je	.L68
	.loc 1 532 31
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 532 38
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 532 42
	movq	8(%rax), %rax
	.loc 1 532 54
	movl	4(%rax), %esi
	.loc 1 532 72
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 532 79
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 532 83
	movl	(%rax), %ecx
	.loc 1 532 31
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 532 38
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 532 42
	movq	8(%rax), %rax
	.loc 1 532 54
	orl	%ecx, %esi
	movl	%esi, %edx
	movl	%edx, 4(%rax)
	jmp	.L66
.L68:
	.loc 1 536 31
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 536 38
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 536 42
	movq	8(%rax), %rax
	.loc 1 536 54
	movl	4(%rax), %ecx
	.loc 1 536 73
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 536 80
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 536 84
	movl	(%rax), %eax
	.loc 1 536 56
	notl	%eax
	movl	%eax, %esi
	.loc 1 536 31
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 536 38
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 536 42
	movq	8(%rax), %rax
	.loc 1 536 54
	andl	%esi, %ecx
	movl	%ecx, %edx
	movl	%edx, 4(%rax)
.L66:
	.loc 1 539 21 discriminator 2
	sall	-20(%rbp)
	.loc 1 520 75 discriminator 2
	addl	$1, -24(%rbp)
.L65:
	.loc 1 520 34 discriminator 1
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 520 41 discriminator 1
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 520 45 discriminator 1
	movl	(%rax), %eax
	.loc 1 520 9 discriminator 1
	cmpl	$-1, %eax
	jne	.L69
	.loc 1 541 15
	movl	$0, -24(%rbp)
	.loc 1 541 9
	jmp	.L70
.L72:
	.loc 1 542 30
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 542 37
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 542 41
	movq	8(%rax), %rax
	.loc 1 542 46
	movl	(%rax), %eax
	.loc 1 542 13
	cmpl	$1, %eax
	jne	.L71
	.loc 1 543 29
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 543 36
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 543 40
	movq	8(%rax), %rax
	.loc 1 543 45
	movq	24(%rax), %r8
	.loc 1 545 31
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 545 38
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 545 42
	movq	8(%rax), %rax
	.loc 1 543 13
	movl	4(%rax), %ecx
	.loc 1 544 31
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 544 38
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 544 42
	movq	8(%rax), %rax
	.loc 1 543 13
	movl	16(%rax), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	*%r8
.LVL6:
	.loc 1 547 29
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 547 36
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 547 40
	movq	8(%rax), %rax
	.loc 1 547 52
	movl	$0, (%rax)
.L71:
	.loc 1 541 75 discriminator 2
	addl	$1, -24(%rbp)
.L70:
	.loc 1 541 34 discriminator 1
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+GPIOIDMapping(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 1 541 41 discriminator 1
	movl	-24(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 1 541 45 discriminator 1
	movl	(%rax), %eax
	.loc 1 541 9 discriminator 1
	cmpl	$-1, %eax
	jne	.L72
	.loc 1 550 9
	subq	$8, %rsp
	leaq	.LC5(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$0, %r8d
	movl	$550, %ecx
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$76, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$0, -32(%rbp)
	jmp	.L60
.L58:
	.loc 1 495 40 discriminator 2
	addl	$1, -28(%rbp)
.L57:
	.loc 1 495 3 discriminator 1
	cmpl	$8, -28(%rbp)
	jbe	.L73
	.loc 1 553 3
	subq	$8, %rsp
	leaq	.LC6(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-769, %r8d
	movl	$553, %ecx
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-769, -32(%rbp)
	nop
.L60:
	.loc 1 560 10
	movl	-32(%rbp), %eax
	.loc 1 561 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	EApiGPIOSetDirectionEmul, .-EApiGPIOSetDirectionEmul
	.section	.rodata
.LC16:
	.string	"EApiGPIOGetDirectionCaps"
	.text
	.globl	EApiGPIOGetDirectionCapsEmul
	.hidden	EApiGPIOGetDirectionCapsEmul
	.type	EApiGPIOGetDirectionCapsEmul, @function
EApiGPIOGetDirectionCapsEmul:
.LFB14:
	.loc 1 569 1
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
	.loc 1 570 16
	movl	$0, -8(%rbp)
	.loc 1 573 8
	movl	$0, -4(%rbp)
	.loc 1 573 3
	jmp	.L76
.L79:
	.loc 1 575 26
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	GPIOIDMapping(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 1 575 9
	cmpl	%eax, -20(%rbp)
	jne	.L77
	.loc 1 577 34
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	20+GPIOIDMapping(%rip), %rax
	movl	(%rdx,%rax), %edx
	.loc 1 577 17
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	.loc 1 578 35
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+GPIOIDMapping(%rip), %rax
	movl	(%rdx,%rax), %edx
	.loc 1 578 18
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	.loc 1 579 9
	subq	$8, %rsp
	leaq	.LC5(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$0, %r8d
	movl	$579, %ecx
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$76, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$0, -8(%rbp)
	jmp	.L78
.L77:
	.loc 1 573 40 discriminator 2
	addl	$1, -4(%rbp)
.L76:
	.loc 1 573 3 discriminator 1
	cmpl	$8, -4(%rbp)
	jbe	.L79
	.loc 1 582 3
	subq	$8, %rsp
	leaq	.LC6(%rip), %rax
	pushq	%rax
	leaq	.LC0(%rip), %r9
	movl	$-769, %r8d
	movl	$582, %ecx
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-769, -8(%rbp)
	nop
.L78:
	.loc 1 589 10
	movl	-8(%rbp), %eax
	.loc 1 590 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	EApiGPIOGetDirectionCapsEmul, .-EApiGPIOGetDirectionCapsEmul
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
	.long	0x827
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF82
	.byte	0xc
	.long	.LASF83
	.long	.LASF84
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
	.long	0x8a
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
	.uleb128 0x6
	.long	0xa4
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
	.long	0xce
	.uleb128 0x5
	.byte	0x8
	.long	0x84
	.uleb128 0x8
	.long	.LASF16
	.byte	0x6
	.byte	0x24
	.byte	0xe
	.long	0x84
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
	.long	0x84
	.long	0x114
	.uleb128 0xa
	.long	0x2d
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.long	.LASF20
	.byte	0x7
	.byte	0x9f
	.byte	0xe
	.long	0x104
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
	.long	0x104
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
	.long	0xa4
	.uleb128 0x4
	.long	.LASF27
	.byte	0x8
	.byte	0x92
	.byte	0x12
	.long	0xa4
	.uleb128 0x6
	.long	0x168
	.uleb128 0x4
	.long	.LASF28
	.byte	0x1
	.byte	0x44
	.byte	0x12
	.long	0x185
	.uleb128 0xb
	.long	0xa4
	.long	0x194
	.uleb128 0xc
	.long	0xa4
	.byte	0
	.uleb128 0x4
	.long	.LASF29
	.byte	0x1
	.byte	0x45
	.byte	0x12
	.long	0x1a0
	.uleb128 0xd
	.long	0x1b0
	.uleb128 0xc
	.long	0xa4
	.uleb128 0xc
	.long	0xa4
	.byte	0
	.uleb128 0x9
	.long	0xa4
	.long	0x1c0
	.uleb128 0xa
	.long	0x2d
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.long	.LASF62
	.byte	0x1
	.byte	0x57
	.byte	0x11
	.long	0x1b0
	.uleb128 0x9
	.byte	0x3
	.quad	EmulatedIoBlock
	.uleb128 0xf
	.long	.LASF38
	.byte	0x28
	.byte	0x1
	.byte	0x8b
	.byte	0x10
	.long	0x23f
	.uleb128 0x10
	.long	.LASF30
	.byte	0x1
	.byte	0x8c
	.byte	0xe
	.long	0xa4
	.byte	0
	.uleb128 0x10
	.long	.LASF31
	.byte	0x1
	.byte	0x8d
	.byte	0xe
	.long	0xa4
	.byte	0x4
	.uleb128 0x10
	.long	.LASF32
	.byte	0x1
	.byte	0x8f
	.byte	0xe
	.long	0xa4
	.byte	0x8
	.uleb128 0x10
	.long	.LASF33
	.byte	0x1
	.byte	0x91
	.byte	0xe
	.long	0xa4
	.byte	0xc
	.uleb128 0x10
	.long	.LASF34
	.byte	0x1
	.byte	0x92
	.byte	0xe
	.long	0xa4
	.byte	0x10
	.uleb128 0x10
	.long	.LASF35
	.byte	0x1
	.byte	0x93
	.byte	0x18
	.long	0x23f
	.byte	0x18
	.uleb128 0x10
	.long	.LASF36
	.byte	0x1
	.byte	0x94
	.byte	0x17
	.long	0x245
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x194
	.uleb128 0x5
	.byte	0x8
	.long	0x179
	.uleb128 0x4
	.long	.LASF37
	.byte	0x1
	.byte	0x95
	.byte	0x2
	.long	0x1d6
	.uleb128 0xf
	.long	.LASF39
	.byte	0x10
	.byte	0x1
	.byte	0x96
	.byte	0x10
	.long	0x27f
	.uleb128 0x10
	.long	.LASF40
	.byte	0x1
	.byte	0x97
	.byte	0xc
	.long	0xa4
	.byte	0
	.uleb128 0x10
	.long	.LASF41
	.byte	0x1
	.byte	0x98
	.byte	0x15
	.long	0x27f
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x24b
	.uleb128 0x4
	.long	.LASF42
	.byte	0x1
	.byte	0x99
	.byte	0x2
	.long	0x257
	.uleb128 0x6
	.long	0x285
	.uleb128 0x11
	.long	.LASF43
	.byte	0x1
	.byte	0x9a
	.byte	0x12
	.long	0x24b
	.uleb128 0x9
	.byte	0x3
	.quad	Port1Desc
	.uleb128 0x11
	.long	.LASF44
	.byte	0x1
	.byte	0xa4
	.byte	0x12
	.long	0x24b
	.uleb128 0x9
	.byte	0x3
	.quad	Port2Desc
	.uleb128 0x9
	.long	0x291
	.long	0x2d2
	.uleb128 0xa
	.long	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.long	0x2c2
	.uleb128 0x11
	.long	.LASF45
	.byte	0x1
	.byte	0xae
	.byte	0x19
	.long	0x2d2
	.uleb128 0x9
	.byte	0x3
	.quad	GpioMappingID0
	.uleb128 0x9
	.long	0x291
	.long	0x2fd
	.uleb128 0xa
	.long	0x2d
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.long	0x2ed
	.uleb128 0x11
	.long	.LASF46
	.byte	0x1
	.byte	0xd9
	.byte	0x19
	.long	0x2fd
	.uleb128 0x9
	.byte	0x3
	.quad	GpioMappingID1
	.uleb128 0x11
	.long	.LASF47
	.byte	0x1
	.byte	0xe1
	.byte	0x19
	.long	0x2fd
	.uleb128 0x9
	.byte	0x3
	.quad	GpioMappingID2
	.uleb128 0x11
	.long	.LASF48
	.byte	0x1
	.byte	0xe9
	.byte	0x19
	.long	0x2fd
	.uleb128 0x9
	.byte	0x3
	.quad	GpioMappingID3
	.uleb128 0x11
	.long	.LASF49
	.byte	0x1
	.byte	0xf1
	.byte	0x19
	.long	0x2fd
	.uleb128 0x9
	.byte	0x3
	.quad	GpioMappingID4
	.uleb128 0x11
	.long	.LASF50
	.byte	0x1
	.byte	0xf9
	.byte	0x19
	.long	0x2fd
	.uleb128 0x9
	.byte	0x3
	.quad	GpioMappingID5
	.uleb128 0x12
	.long	.LASF51
	.byte	0x1
	.value	0x101
	.byte	0x19
	.long	0x2fd
	.uleb128 0x9
	.byte	0x3
	.quad	GpioMappingID6
	.uleb128 0x12
	.long	.LASF52
	.byte	0x1
	.value	0x109
	.byte	0x19
	.long	0x2fd
	.uleb128 0x9
	.byte	0x3
	.quad	GpioMappingID7
	.uleb128 0x12
	.long	.LASF53
	.byte	0x1
	.value	0x111
	.byte	0x19
	.long	0x2fd
	.uleb128 0x9
	.byte	0x3
	.quad	GpioMappingID8
	.uleb128 0x13
	.long	.LASF54
	.byte	0x18
	.byte	0x1
	.value	0x119
	.byte	0x10
	.long	0x3fb
	.uleb128 0x14
	.string	"Id"
	.byte	0x1
	.value	0x11a
	.byte	0x12
	.long	0x174
	.byte	0
	.uleb128 0x15
	.long	.LASF55
	.byte	0x1
	.value	0x11b
	.byte	0x22
	.long	0x401
	.byte	0x8
	.uleb128 0x15
	.long	.LASF56
	.byte	0x1
	.value	0x11c
	.byte	0x12
	.long	0xb0
	.byte	0x10
	.uleb128 0x15
	.long	.LASF57
	.byte	0x1
	.value	0x11d
	.byte	0x12
	.long	0xb0
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x291
	.uleb128 0x6
	.long	0x3fb
	.uleb128 0x16
	.long	.LASF58
	.byte	0x1
	.value	0x11e
	.byte	0x2
	.long	0x3b5
	.uleb128 0x6
	.long	0x406
	.uleb128 0x9
	.long	0x413
	.long	0x428
	.uleb128 0xa
	.long	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.long	0x418
	.uleb128 0x12
	.long	.LASF59
	.byte	0x1
	.value	0x11f
	.byte	0x1b
	.long	0x428
	.uleb128 0x9
	.byte	0x3
	.quad	GPIOIDMapping
	.uleb128 0x17
	.long	.LASF64
	.byte	0x1
	.value	0x234
	.byte	0x1
	.long	0x15c
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x4c6
	.uleb128 0x18
	.string	"Id"
	.byte	0x1
	.value	0x235
	.byte	0x17
	.long	0x168
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.long	.LASF60
	.byte	0x1
	.value	0x236
	.byte	0x17
	.long	0x4c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.long	.LASF61
	.byte	0x1
	.value	0x237
	.byte	0x17
	.long	0x4c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.long	.LASF63
	.byte	0x1
	.value	0x23a
	.byte	0x10
	.long	0x15c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.value	0x23b
	.byte	0xc
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.long	.LASF69
	.byte	0x1
	.value	0x24b
	.byte	0x1
	.quad	.L78
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0xa4
	.uleb128 0x17
	.long	.LASF65
	.byte	0x1
	.value	0x1e6
	.byte	0x1
	.long	0x15c
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x56d
	.uleb128 0x18
	.string	"Id"
	.byte	0x1
	.value	0x1e7
	.byte	0x13
	.long	0x168
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x19
	.long	.LASF66
	.byte	0x1
	.value	0x1e8
	.byte	0x13
	.long	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.long	.LASF67
	.byte	0x1
	.value	0x1e9
	.byte	0x13
	.long	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1a
	.long	.LASF63
	.byte	0x1
	.value	0x1ec
	.byte	0x10
	.long	0x15c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.value	0x1ed
	.byte	0xc
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1b
	.string	"i2"
	.byte	0x1
	.value	0x1ed
	.byte	0xe
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x1
	.value	0x1ee
	.byte	0xc
	.long	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.long	.LASF69
	.byte	0x1
	.value	0x22e
	.byte	0x1
	.quad	.L60
	.byte	0
	.uleb128 0x17
	.long	.LASF70
	.byte	0x1
	.value	0x1b2
	.byte	0x1
	.long	0x15c
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x60e
	.uleb128 0x18
	.string	"Id"
	.byte	0x1
	.value	0x1b3
	.byte	0x13
	.long	0x168
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x19
	.long	.LASF66
	.byte	0x1
	.value	0x1b4
	.byte	0x13
	.long	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.long	.LASF71
	.byte	0x1
	.value	0x1b5
	.byte	0x13
	.long	0x4c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.long	.LASF63
	.byte	0x1
	.value	0x1b8
	.byte	0x10
	.long	0x15c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.value	0x1b9
	.byte	0xc
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1b
	.string	"i2"
	.byte	0x1
	.value	0x1b9
	.byte	0xe
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x1
	.value	0x1ba
	.byte	0xc
	.long	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.long	.LASF69
	.byte	0x1
	.value	0x1e0
	.byte	0x1
	.quad	.L47
	.byte	0
	.uleb128 0x17
	.long	.LASF72
	.byte	0x1
	.value	0x167
	.byte	0x1
	.long	0x15c
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x6af
	.uleb128 0x18
	.string	"Id"
	.byte	0x1
	.value	0x168
	.byte	0x11
	.long	0x168
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x19
	.long	.LASF66
	.byte	0x1
	.value	0x169
	.byte	0x11
	.long	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.long	.LASF73
	.byte	0x1
	.value	0x16a
	.byte	0x11
	.long	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1a
	.long	.LASF63
	.byte	0x1
	.value	0x16d
	.byte	0x10
	.long	0x15c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.value	0x16e
	.byte	0xc
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1b
	.string	"i2"
	.byte	0x1
	.value	0x16e
	.byte	0xe
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x1
	.value	0x16f
	.byte	0xc
	.long	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.long	.LASF69
	.byte	0x1
	.value	0x1ac
	.byte	0x1
	.quad	.L29
	.byte	0
	.uleb128 0x17
	.long	.LASF74
	.byte	0x1
	.value	0x132
	.byte	0x1
	.long	0x15c
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x750
	.uleb128 0x18
	.string	"Id"
	.byte	0x1
	.value	0x133
	.byte	0x15
	.long	0x168
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x19
	.long	.LASF66
	.byte	0x1
	.value	0x134
	.byte	0x15
	.long	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.long	.LASF75
	.byte	0x1
	.value	0x135
	.byte	0x15
	.long	0x4c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.long	.LASF63
	.byte	0x1
	.value	0x138
	.byte	0x10
	.long	0x15c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.value	0x139
	.byte	0xc
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1b
	.string	"i2"
	.byte	0x1
	.value	0x139
	.byte	0xe
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x1
	.value	0x13a
	.byte	0xc
	.long	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.long	.LASF69
	.byte	0x1
	.value	0x161
	.byte	0x1
	.quad	.L16
	.byte	0
	.uleb128 0x1d
	.long	.LASF76
	.byte	0x1
	.byte	0x7d
	.byte	0xa
	.long	0xa4
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x782
	.uleb128 0x1e
	.long	.LASF77
	.byte	0x1
	.byte	0x7d
	.byte	0x25
	.long	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.long	.LASF79
	.byte	0x1
	.byte	0x77
	.byte	0x6
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x7bf
	.uleb128 0x1e
	.long	.LASF77
	.byte	0x1
	.byte	0x77
	.byte	0x22
	.long	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.long	.LASF78
	.byte	0x1
	.byte	0x77
	.byte	0x37
	.long	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x20
	.long	.LASF80
	.byte	0x1
	.byte	0x6e
	.byte	0x6
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x7fc
	.uleb128 0x1e
	.long	.LASF77
	.byte	0x1
	.byte	0x6e
	.byte	0x1d
	.long	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.long	.LASF78
	.byte	0x1
	.byte	0x6e
	.byte	0x32
	.long	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x21
	.long	.LASF81
	.byte	0x1
	.byte	0x65
	.byte	0xa
	.long	0xa4
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.long	.LASF77
	.byte	0x1
	.byte	0x65
	.byte	0x20
	.long	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x34
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x2117
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
.LASF67:
	.string	"Direction"
.LASF17:
	.string	"optind"
.LASF16:
	.string	"optarg"
.LASF71:
	.string	"pDirection"
.LASF56:
	.string	"OutputMask"
.LASF57:
	.string	"InputMask"
.LASF54:
	.string	"GPIOIDMappingsTbl_s"
.LASF58:
	.string	"GPIOIDMappingsTbl_t"
.LASF7:
	.string	"short int"
.LASF80:
	.string	"EApiWriteIO32"
.LASF45:
	.string	"GpioMappingID0"
.LASF46:
	.string	"GpioMappingID1"
.LASF47:
	.string	"GpioMappingID2"
.LASF48:
	.string	"GpioMappingID3"
.LASF49:
	.string	"GpioMappingID4"
.LASF50:
	.string	"GpioMappingID5"
.LASF51:
	.string	"GpioMappingID6"
.LASF52:
	.string	"GpioMappingID7"
.LASF53:
	.string	"GpioMappingID8"
.LASF40:
	.string	"PortMask"
.LASF9:
	.string	"__uint32_t"
.LASF84:
	.string	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux"
.LASF64:
	.string	"EApiGPIOGetDirectionCapsEmul"
.LASF65:
	.string	"EApiGPIOSetDirectionEmul"
.LASF25:
	.string	"timezone"
.LASF24:
	.string	"daylight"
.LASF38:
	.string	"PortDescriptor_s"
.LASF12:
	.string	"uint8_t"
.LASF14:
	.string	"uintptr_t"
.LASF60:
	.string	"pInputs"
.LASF44:
	.string	"Port2Desc"
.LASF72:
	.string	"EApiGPIOSetLevelEmul"
.LASF33:
	.string	"LevelArg1"
.LASF35:
	.string	"Write"
.LASF77:
	.string	"ByteOffset"
.LASF3:
	.string	"long long int"
.LASF22:
	.string	"__timezone"
.LASF32:
	.string	"Value2"
.LASF2:
	.string	"long int"
.LASF27:
	.string	"EApiId_t"
.LASF74:
	.string	"EApiGPIOGetLevelEmul"
.LASF8:
	.string	"__uint8_t"
.LASF76:
	.string	"EApiReadIO32Delay"
.LASF78:
	.string	"Data"
.LASF26:
	.string	"EApiStatus_t"
.LASF39:
	.string	"GPIOMappingsTbl_s"
.LASF42:
	.string	"GPIOMappingsTbl_t"
.LASF41:
	.string	"Port"
.LASF4:
	.string	"unsigned char"
.LASF31:
	.string	"Value"
.LASF83:
	.string	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EApiEmulGPIO.c"
.LASF34:
	.string	"DirectionArg1"
.LASF29:
	.string	"WritePortFunction"
.LASF69:
	.string	"ExitPoint"
.LASF6:
	.string	"signed char"
.LASF36:
	.string	"Read"
.LASF11:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint32_t"
.LASF59:
	.string	"GPIOIDMapping"
.LASF1:
	.string	"unsigned int"
.LASF82:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fvisibility=hidden -fPIC -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF23:
	.string	"tzname"
.LASF75:
	.string	"pLevel"
.LASF18:
	.string	"opterr"
.LASF37:
	.string	"PortDescriptor_t"
.LASF81:
	.string	"EApiReadIO32"
.LASF73:
	.string	"Level"
.LASF62:
	.string	"EmulatedIoBlock"
.LASF70:
	.string	"EApiGPIOGetDirectionEmul"
.LASF10:
	.string	"char"
.LASF66:
	.string	"BitMask"
.LASF63:
	.string	"StatusCode"
.LASF5:
	.string	"short unsigned int"
.LASF15:
	.string	"__environ"
.LASF55:
	.string	"MapTbl"
.LASF21:
	.string	"__daylight"
.LASF28:
	.string	"ReadPortFunction"
.LASF0:
	.string	"long unsigned int"
.LASF79:
	.string	"EApiWriteIO32Delay"
.LASF61:
	.string	"pOutputs"
.LASF19:
	.string	"optopt"
.LASF43:
	.string	"Port1Desc"
.LASF68:
	.string	"APIBitMask"
.LASF30:
	.string	"Dirty"
.LASF20:
	.string	"__tzname"
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
