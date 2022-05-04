	.file	"EApiEmulI2C.c"
	.text
.Ltext0:
	.hidden	StdExt
	.globl	StdExt
	.section	.rodata
.LC0:
	.string	"   "
.LC1:
	.string	"Std"
.LC2:
	.string	"Ext"
	.section	.data.rel.local,"aw"
	.align 16
	.type	StdExt, @object
	.size	StdExt, 24
StdExt:
	.quad	.LC0
	.quad	.LC1
	.quad	.LC2
	.section	.rodata
	.align 8
.LC3:
	.string	"%3s CIDX=%04lX Arg1=%1lX DLEN=%04lX PLEN=%04lX WLEN=%04lX RLEN=%04lX %02X,%02X,%02X,%02X\n"
.LC4:
	.string	"EmulateEepromFS"
	.align 8
.LC5:
	.string	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EApiEmulI2C.c"
.LC6:
	.string	"%s\n"
	.align 8
.LC7:
	.string	"STD INDEX Sent to EXT INDEX EEPROM"
	.align 8
.LC8:
	.string	"CINDX=%04lX PLEN=%04lX EPLEN=%04lX\n"
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
.LC14:
	.string	""
	.text
	.globl	EmulateEepromFS
	.hidden	EmulateEepromFS
	.type	EmulateEepromFS, @function
EmulateEepromFS:
.LFB6:
	.file 1 "/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EApiEmulI2C.c"
	.loc 1 118 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	.loc 1 119 16
	movl	$0, -4(%rbp)
	.loc 1 140 23
	movq	-40(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	.loc 1 122 9
	movzbl	%al, %r10d
	.loc 1 139 23
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	.loc 1 122 9
	movzbl	%al, %r9d
	.loc 1 138 23
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 1 122 9
	movzbl	%al, %r8d
	.loc 1 137 23
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 122 9
	movzbl	%al, %edi
	movq	-32(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 1 130 29
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 122 9
	leaq	0(,%rax,8), %r11
	leaq	StdExt(%rip), %rax
	movq	(%r11,%rax), %rax
	movq	-32(%rbp), %r11
	movq	40(%r11), %r11
	subq	$8, %rsp
	pushq	%r10
	pushq	%r9
	pushq	%r8
	pushq	%rdi
	pushq	-64(%rbp)
	pushq	-48(%rbp)
	pushq	%rsi
	pushq	%rcx
	pushq	-24(%rbp)
	pushq	%rdx
	pushq	%rax
	leaq	.LC3(%rip), %r9
	movq	%r11, %r8
	movl	$126, %ecx
	leaq	.LC4(%rip), %rdx
	leaq	.LC5(%rip), %rsi
	movl	$76, %edi
	movl	$0, %eax
	call	siFormattedMessage_M2@PLT
	addq	$96, %rsp
	.loc 1 143 5
	cmpq	$0, -48(%rbp)
	je	.L2
	.loc 1 145 20
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 145 5
	cmpq	$1, %rax
	je	.L3
	cmpq	$2, %rax
	je	.L4
	.loc 1 171 9
	jmp	.L6
.L3:
	.loc 1 148 35
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 1 148 26
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	.loc 1 148 25
	movq	-32(%rbp), %rax
	movq	%rdx, 24(%rax)
	.loc 1 149 18
	subq	$1, -48(%rbp)
	.loc 1 150 25
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 150 31
	movq	-24(%rbp), %rdx
	salq	$8, %rdx
	.loc 1 150 25
	orq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 24(%rax)
	.loc 1 152 9
	movl	$90000, %edi
	call	EApiSleepns@PLT
	.loc 1 153 9
	jmp	.L6
.L4:
	.loc 1 156 9
	cmpq	$1, -48(%rbp)
	ja	.L7
	.loc 1 156 9 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC7(%rip), %rax
	pushq	%rax
	leaq	.LC6(%rip), %r9
	movl	$-1281, %r8d
	movl	$156, %ecx
	leaq	.LC4(%rip), %rdx
	leaq	.LC5(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-1281, -4(%rbp)
	jmp	.L8
.L7:
	.loc 1 163 35 is_stmt 1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 163 38
	sall	$8, %eax
	movslq	%eax, %rdx
	.loc 1 163 26
	movq	-32(%rbp), %rax
	movq	%rdx, 24(%rax)
	.loc 1 164 25
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 1 164 35
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 164 25
	orq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 24(%rax)
	.loc 1 165 17
	addq	$2, -40(%rbp)
	.loc 1 166 18
	subq	$2, -48(%rbp)
	.loc 1 167 25
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 167 31
	movq	-24(%rbp), %rdx
	salq	$16, %rdx
	.loc 1 167 25
	orq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 24(%rax)
	.loc 1 168 9
	movl	$180000, %edi
	call	EApiSleepns@PLT
	.loc 1 169 9
	nop
.L6:
	.loc 1 183 23
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 183 40
	movq	-32(%rbp), %rdx
	movq	16(%rdx), %rcx
	.loc 1 183 32
	movl	$0, %edx
	divq	%rcx
	.loc 1 174 9
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	.loc 1 182 22
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 182 39
	movq	-32(%rbp), %rdx
	movq	16(%rdx), %rsi
	.loc 1 174 9
	movl	$0, %edx
	divq	%rsi
	movq	%rdx, %rsi
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	40(%rdx), %rdx
	subq	$8, %rsp
	pushq	%rcx
	pushq	%rsi
	pushq	%rax
	leaq	.LC8(%rip), %r9
	movq	%rdx, %r8
	movl	$178, %ecx
	leaq	.LC4(%rip), %rdx
	leaq	.LC5(%rip), %rsi
	movl	$76, %edi
	movl	$0, %eax
	call	siFormattedMessage_M2@PLT
	addq	$32, %rsp
	.loc 1 186 7
	cmpq	$0, -48(%rbp)
	je	.L2
	.loc 1 188 7
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	16(%rdx), %rcx
	movl	$0, %edx
	divq	%rcx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	jbe	.L9
	.loc 1 188 7 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC9(%rip), %rax
	pushq	%rax
	leaq	.LC6(%rip), %r9
	movl	$-1282, %r8d
	movl	$188, %ecx
	leaq	.LC4(%rip), %rdx
	leaq	.LC5(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-1282, -4(%rbp)
	jmp	.L8
.L9:
	.loc 1 194 7 is_stmt 1
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jbe	.L10
	.loc 1 194 7 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC10(%rip), %rax
	pushq	%rax
	leaq	.LC6(%rip), %r9
	movl	$-1282, %r8d
	movl	$194, %ecx
	leaq	.LC4(%rip), %rdx
	leaq	.LC5(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-1282, -4(%rbp)
	jmp	.L8
.L10:
	.loc 1 201 7 is_stmt 1
	movq	-48(%rbp), %rax
	imulq	$90000, %rax, %rax
	movq	%rax, %rdi
	call	EApiSleepns@PLT
	.loc 1 202 38
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 202 7
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fseek@PLT
	.loc 1 203 7
	movq	-32(%rbp), %rax
	movq	48(%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	cmpq	%rax, -48(%rbp)
	je	.L11
	.loc 1 203 7 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC11(%rip), %rax
	pushq	%rax
	leaq	.LC6(%rip), %r9
	movl	$-1282, %r8d
	movl	$203, %ecx
	leaq	.LC4(%rip), %rdx
	leaq	.LC5(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-1282, -4(%rbp)
	jmp	.L8
.L11:
	.loc 1 209 23 is_stmt 1
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 24(%rax)
.L2:
	.loc 1 213 5
	cmpq	$0, -64(%rbp)
	je	.L12
	.loc 1 215 5
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jbe	.L13
	.loc 1 215 5 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC12(%rip), %rax
	pushq	%rax
	leaq	.LC6(%rip), %r9
	movl	$-1281, %r8d
	movl	$215, %ecx
	leaq	.LC4(%rip), %rdx
	leaq	.LC5(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-1281, -4(%rbp)
	jmp	.L8
.L13:
	.loc 1 222 5 is_stmt 1
	movq	-64(%rbp), %rax
	imulq	$90000, %rax, %rax
	movq	%rax, %rdi
	call	EApiSleepns@PLT
	.loc 1 223 36
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 223 5
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fseek@PLT
	.loc 1 224 5
	movq	-32(%rbp), %rax
	movq	48(%rax), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread@PLT
	cmpq	%rax, -64(%rbp)
	je	.L14
	.loc 1 224 5 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC13(%rip), %rax
	pushq	%rax
	leaq	.LC6(%rip), %r9
	movl	$-1281, %r8d
	movl	$224, %ecx
	leaq	.LC4(%rip), %rdx
	leaq	.LC5(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-1281, -4(%rbp)
	jmp	.L8
.L14:
	.loc 1 230 21 is_stmt 1
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 24(%rax)
.L12:
	.loc 1 232 3
	subq	$8, %rsp
	leaq	.LC14(%rip), %rax
	pushq	%rax
	leaq	.LC6(%rip), %r9
	movl	$0, %r8d
	movl	$232, %ecx
	leaq	.LC4(%rip), %rdx
	leaq	.LC5(%rip), %rsi
	movl	$76, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$0, -4(%rbp)
	nop
.L8:
	.loc 1 235 10
	movl	-4(%rbp), %eax
	.loc 1 236 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	EmulateEepromFS, .-EmulateEepromFS
	.section	.rodata
	.align 8
.LC15:
	.string	"%3s CCMD=%04lX Arg1=%1lX WLEN=%04lX RLEN=%04lX %02X,%02X,%02X,%02X\n"
.LC16:
	.string	"EmulateCmdDevice"
	.text
	.globl	EmulateCmdDevice
	.hidden	EmulateCmdDevice
	.type	EmulateCmdDevice, @function
EmulateCmdDevice:
.LFB7:
	.loc 1 248 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	.loc 1 249 16
	movl	$0, -20(%rbp)
	.loc 1 270 23
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	.loc 1 254 9
	movzbl	%al, %r8d
	.loc 1 269 23
	movq	-56(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	.loc 1 254 9
	movzbl	%al, %edi
	.loc 1 268 23
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 1 254 9
	movzbl	%al, %esi
	.loc 1 267 23
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 254 9
	movzbl	%al, %ecx
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 262 29
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 254 9
	leaq	0(,%rax,8), %r9
	leaq	StdExt(%rip), %rax
	movq	(%r9,%rax), %rax
	movq	-48(%rbp), %r9
	movq	24(%r9), %r10
	subq	$8, %rsp
	pushq	%r8
	pushq	%rdi
	pushq	%rsi
	pushq	%rcx
	pushq	-80(%rbp)
	pushq	-64(%rbp)
	pushq	-40(%rbp)
	pushq	%rdx
	pushq	%rax
	leaq	.LC15(%rip), %r9
	movq	%r10, %r8
	movl	$258, %ecx
	leaq	.LC16(%rip), %rdx
	leaq	.LC5(%rip), %rsi
	movl	$76, %edi
	movl	$0, %eax
	call	siFormattedMessage_M2@PLT
	addq	$80, %rsp
	.loc 1 273 5
	cmpq	$0, -64(%rbp)
	je	.L17
	.loc 1 275 20
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 275 5
	cmpq	$1, %rax
	je	.L18
	cmpq	$2, %rax
	je	.L19
	.loc 1 298 9
	jmp	.L21
.L18:
	.loc 1 278 38
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	.loc 1 278 29
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	.loc 1 278 28
	movq	-48(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 1 279 18
	subq	$1, -64(%rbp)
	.loc 1 280 9
	movl	$90000, %edi
	call	EApiSleepns@PLT
	.loc 1 281 9
	jmp	.L21
.L19:
	.loc 1 284 9
	cmpq	$1, -64(%rbp)
	ja	.L22
	.loc 1 284 9 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC7(%rip), %rax
	pushq	%rax
	leaq	.LC6(%rip), %r9
	movl	$-1281, %r8d
	movl	$284, %ecx
	leaq	.LC4(%rip), %rdx
	leaq	.LC5(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-1281, -20(%rbp)
	jmp	.L23
.L22:
	.loc 1 291 38 is_stmt 1
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 291 41
	sall	$8, %eax
	movslq	%eax, %rdx
	.loc 1 291 29
	movq	-48(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 1 292 28
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 292 38
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 292 28
	orq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 1 293 17
	addq	$2, -56(%rbp)
	.loc 1 294 18
	subq	$2, -64(%rbp)
	.loc 1 295 9
	movl	$180000, %edi
	call	EApiSleepns@PLT
	.loc 1 296 9
	nop
.L21:
	.loc 1 300 7
	cmpq	$0, -64(%rbp)
	je	.L17
	.loc 1 302 7
	movq	-64(%rbp), %rax
	imulq	$90000, %rax, %rax
	movq	%rax, %rdi
	call	EApiSleepns@PLT
	.loc 1 303 18
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 1 303 7
	jmp	.L24
.L26:
	.loc 1 304 19
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	.loc 1 304 33
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 304 11
	cmpq	%rax, %rdx
	jne	.L25
	.loc 1 305 20
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 1 306 11
	movq	-8(%rbp), %rax
	cmpq	%rax, -80(%rbp)
	cmovbe	-80(%rbp), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-72(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L25:
	.loc 1 303 71 discriminator 2
	addq	$24, -16(%rbp)
.L24:
	.loc 1 303 40 discriminator 1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 303 7 discriminator 1
	movl	$4294967295, %edx
	cmpq	%rdx, %rax
	jne	.L26
.L17:
	.loc 1 315 5
	cmpq	$0, -80(%rbp)
	je	.L27
	.loc 1 317 5
	movq	-80(%rbp), %rax
	imulq	$90000, %rax, %rax
	movq	%rax, %rdi
	call	EApiSleepns@PLT
	.loc 1 318 16
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 1 318 5
	jmp	.L28
.L31:
	.loc 1 319 17
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	.loc 1 319 31
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 319 9
	cmpq	%rax, %rdx
	jne	.L29
	.loc 1 320 18
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 1 321 11
	movq	-8(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jnb	.L30
	.loc 1 322 35
	movq	-16(%rbp), %rax
	movq	16(%rax), %rcx
	.loc 1 322 11
	movq	-8(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	.loc 1 323 46
	movq	-80(%rbp), %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 1 323 11
	movl	%eax, %ecx
	.loc 1 323 26
	movq	-72(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 323 11
	movl	$255, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	memset@PLT
	jmp	.L29
.L30:
	.loc 1 325 35
	movq	-16(%rbp), %rax
	movq	16(%rax), %rcx
	.loc 1 325 11
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L29:
	.loc 1 318 69 discriminator 2
	addq	$24, -16(%rbp)
.L28:
	.loc 1 318 38 discriminator 1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 318 5 discriminator 1
	movl	$4294967295, %edx
	cmpq	%rdx, %rax
	jne	.L31
.L27:
	.loc 1 330 3
	subq	$8, %rsp
	leaq	.LC14(%rip), %rax
	pushq	%rax
	leaq	.LC6(%rip), %r9
	movl	$0, %r8d
	movl	$330, %ecx
	leaq	.LC4(%rip), %rdx
	leaq	.LC5(%rip), %rsi
	movl	$76, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$0, -20(%rbp)
	nop
.L23:
	.loc 1 333 10
	movl	-20(%rbp), %eax
	.loc 1 334 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	EmulateCmdDevice, .-EmulateCmdDevice
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
	.section	.rodata
.LC17:
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
	.quad	.LC17
	.quad	0
	.text
	.globl	EmulateDIDEeprom
	.hidden	EmulateDIDEeprom
	.type	EmulateDIDEeprom, @function
EmulateDIDEeprom:
.LFB8:
	.loc 1 355 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -8(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	.loc 1 356 10
	movl	-28(%rbp), %edi
	movl	-8(%rbp), %ecx
	movl	-4(%rbp), %eax
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	DIDEEPromData(%rip), %rsi
	movq	%rax, %rdi
	call	EmulateEepromFS
	.loc 1 364 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	EmulateDIDEeprom, .-EmulateDIDEeprom
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
	.section	.rodata
.LC18:
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
	.quad	.LC18
	.quad	0
	.text
	.globl	EmulateUDSEeprom
	.hidden	EmulateUDSEeprom
	.type	EmulateUDSEeprom, @function
EmulateUDSEeprom:
.LFB9:
	.loc 1 385 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -8(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	.loc 1 386 10
	movl	-28(%rbp), %edi
	movl	-8(%rbp), %ecx
	movl	-4(%rbp), %eax
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	UDSEEPromData(%rip), %rsi
	movq	%rax, %rdi
	call	EmulateEepromFS
	.loc 1 394 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	EmulateUDSEeprom, .-EmulateUDSEeprom
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
	.section	.rodata
.LC19:
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
	.quad	.LC19
	.quad	0
	.text
	.globl	EmulateEPIEeprom
	.hidden	EmulateEPIEeprom
	.type	EmulateEPIEeprom, @function
EmulateEPIEeprom:
.LFB10:
	.loc 1 416 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -8(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	.loc 1 417 10
	movl	-28(%rbp), %edi
	movl	-8(%rbp), %ecx
	movl	-4(%rbp), %eax
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	EPIEEPromData(%rip), %rsi
	movq	%rax, %rdi
	call	EmulateEepromFS
	.loc 1 425 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	EmulateEPIEeprom, .-EmulateEPIEeprom
	.hidden	COM0MEEPROM
	.globl	COM0MEEPROM
	.bss
	.align 32
	.type	COM0MEEPROM, @object
	.size	COM0MEEPROM, 2048
COM0MEEPROM:
	.zero	2048
	.section	.rodata
.LC20:
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
	.quad	.LC20
	.quad	0
	.hidden	COM0CBEEPROM
	.globl	COM0CBEEPROM
	.bss
	.align 32
	.type	COM0CBEEPROM, @object
	.size	COM0CBEEPROM, 4096
COM0CBEEPROM:
	.zero	4096
	.section	.rodata
.LC21:
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
	.quad	.LC21
	.quad	0
	.hidden	EeePExpEEPROM
	.globl	EeePExpEEPROM
	.bss
	.align 32
	.type	EeePExpEEPROM, @object
	.size	EeePExpEEPROM, 1024
EeePExpEEPROM:
	.zero	1024
	.section	.rodata
.LC22:
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
	.quad	.LC22
	.quad	0
	.hidden	OpenFiles
	.globl	OpenFiles
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
	.section	.rodata
.LC23:
	.string	"rb+"
.LC24:
	.string	"wb+"
	.text
	.globl	OpenI2CEepromFiles
	.hidden	OpenI2CEepromFiles
	.type	OpenI2CEepromFiles, @function
OpenI2CEepromFiles:
.LFB11:
	.loc 1 472 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	.loc 1 474 21
	leaq	OpenFiles(%rip), %rax
	movq	%rax, -24(%rbp)
	.loc 1 475 8
	movl	$6, -28(%rbp)
	.loc 1 475 3
	jmp	.L40
.L43:
	.loc 1 476 35
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 476 28
	movq	40(%rax), %rax
	.loc 1 476 6
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rbx
	.loc 1 476 28
	leaq	.LC23(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	.loc 1 476 27
	movq	%rax, 48(%rbx)
	.loc 1 477 9
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 477 21
	movq	48(%rax), %rax
	.loc 1 477 7
	testq	%rax, %rax
	jne	.L41
	.loc 1 478 37
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 478 30
	movq	40(%rax), %rax
	.loc 1 478 8
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rbx
	.loc 1 478 30
	leaq	.LC24(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	.loc 1 478 29
	movq	%rax, 48(%rbx)
.L41:
	.loc 1 480 9
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 480 21
	movq	48(%rax), %rax
	.loc 1 480 7
	testq	%rax, %rax
	je	.L42
	.loc 1 481 16
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 481 9
	movq	48(%rax), %rax
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	fseek@PLT
	.loc 1 482 19
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 482 12
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ftell@PLT
	.loc 1 482 51
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	.loc 1 482 63
	movq	(%rdx), %rdx
	.loc 1 482 42
	movslq	%edx, %rdx
	.loc 1 482 11
	cmpq	%rdx, %rax
	jge	.L42
	.loc 1 483 19
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 483 11
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	rewind@PLT
	.loc 1 484 87
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 484 11
	movq	48(%rax), %rcx
	.loc 1 484 63
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 484 11
	movq	(%rax), %rdx
	.loc 1 484 19
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 484 31
	movq	32(%rax), %rax
	.loc 1 484 11
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
.L42:
	.loc 1 475 36 discriminator 2
	subl	$1, -28(%rbp)
	.loc 1 475 50 discriminator 2
	addq	$8, -24(%rbp)
.L40:
	.loc 1 475 3 discriminator 1
	cmpl	$0, -28(%rbp)
	jne	.L43
	.loc 1 488 10
	movl	$0, %eax
	.loc 1 489 1
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	OpenI2CEepromFiles, .-OpenI2CEepromFiles
	.globl	CloseI2CEepromFiles
	.hidden	CloseI2CEepromFiles
	.type	CloseI2CEepromFiles, @function
CloseI2CEepromFiles:
.LFB12:
	.loc 1 492 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 494 21
	leaq	OpenFiles(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 1 495 8
	movl	$6, -12(%rbp)
	.loc 1 495 3
	jmp	.L46
.L48:
	.loc 1 496 9
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 496 21
	movq	48(%rax), %rax
	.loc 1 496 7
	testq	%rax, %rax
	je	.L47
	.loc 1 497 15
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 497 7
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	.loc 1 498 8
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 498 29
	movq	$0, 48(%rax)
.L47:
	.loc 1 495 36 discriminator 2
	subl	$1, -12(%rbp)
	.loc 1 495 50 discriminator 2
	addq	$8, -8(%rbp)
.L46:
	.loc 1 495 3 discriminator 1
	cmpl	$0, -12(%rbp)
	jne	.L48
	.loc 1 501 10
	movl	$0, %eax
	.loc 1 502 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	CloseI2CEepromFiles, .-CloseI2CEepromFiles
	.globl	EmulateEeePExpEeprom
	.hidden	EmulateEeePExpEeprom
	.type	EmulateEeePExpEeprom, @function
EmulateEeePExpEeprom:
.LFB13:
	.loc 1 512 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -8(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	.loc 1 513 10
	movl	-28(%rbp), %edi
	movl	-8(%rbp), %ecx
	movl	-4(%rbp), %eax
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	EeePExpEEPromData(%rip), %rsi
	movq	%rax, %rdi
	call	EmulateEepromFS
	.loc 1 521 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	EmulateEeePExpEeprom, .-EmulateEeePExpEeprom
	.globl	EmulateCOM0CBEeprom
	.hidden	EmulateCOM0CBEeprom
	.type	EmulateCOM0CBEeprom, @function
EmulateCOM0CBEeprom:
.LFB14:
	.loc 1 532 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -8(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	.loc 1 533 10
	movl	-28(%rbp), %edi
	movl	-8(%rbp), %ecx
	movl	-4(%rbp), %eax
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	COM0CBEEPromData(%rip), %rsi
	movq	%rax, %rdi
	call	EmulateEepromFS
	.loc 1 541 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	EmulateCOM0CBEeprom, .-EmulateCOM0CBEeprom
	.globl	EmulateCOM0MEeprom
	.hidden	EmulateCOM0MEeprom
	.type	EmulateCOM0MEeprom, @function
EmulateCOM0MEeprom:
.LFB15:
	.loc 1 551 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -8(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	.loc 1 552 10
	movl	-28(%rbp), %edi
	movl	-8(%rbp), %ecx
	movl	-4(%rbp), %eax
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	COM0MEEPromData(%rip), %rsi
	movq	%rax, %rdi
	call	EmulateEepromFS
	.loc 1 560 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	EmulateCOM0MEeprom, .-EmulateCOM0MEeprom
	.hidden	CpuTemp
	.globl	CpuTemp
	.data
	.type	CpuTemp, @object
	.size	CpuTemp, 1
CpuTemp:
	.ascii	"8"
	.hidden	ChipsetTemp
	.globl	ChipsetTemp
	.type	ChipsetTemp, @object
	.size	ChipsetTemp, 1
ChipsetTemp:
	.ascii	"."
	.hidden	SystemTemp
	.globl	SystemTemp
	.type	SystemTemp, @object
	.size	SystemTemp, 1
SystemTemp:
	.ascii	"\322"
	.hidden	HwmonCmdIndx
	.globl	HwmonCmdIndx
	.section	.data.rel.local
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
	.hidden	HWMon
	.globl	HWMon
	.section	.rodata
.LC25:
	.string	"ADT7447"
	.section	.data.rel.local
	.align 32
	.type	HWMon, @object
	.size	HWMon, 40
HWMon:
	.quad	1
	.quad	0
	.quad	0
	.quad	.LC25
	.quad	HwmonCmdIndx
	.text
	.globl	EmulateHWMonDevice
	.hidden	EmulateHWMonDevice
	.type	EmulateHWMonDevice, @function
EmulateHWMonDevice:
.LFB16:
	.loc 1 586 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -8(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	.loc 1 587 10
	movl	-28(%rbp), %edi
	movl	-8(%rbp), %ecx
	movl	-4(%rbp), %eax
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	HWMon(%rip), %rsi
	movq	%rax, %rdi
	call	EmulateCmdDevice
	.loc 1 595 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	EmulateHWMonDevice, .-EmulateHWMonDevice
	.hidden	ExternalI2CDevices
	.globl	ExternalI2CDevices
	.section	.data.rel.ro.local,"aw"
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
	.hidden	EmulatedInterfaces
	.globl	EmulatedInterfaces
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
	.section	.rodata
.LC26:
	.string	"EApiI2CGetBusCapEmul"
.LC27:
	.string	"Unrecognised I2C ID"
	.text
	.globl	EApiI2CGetBusCapEmul
	.type	EApiI2CGetBusCapEmul, @function
EApiI2CGetBusCapEmul:
.LFB17:
	.loc 1 647 1
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
	.loc 1 648 16
	movl	$0, -8(%rbp)
	.loc 1 651 8
	movl	$0, -4(%rbp)
	.loc 1 651 3
	jmp	.L59
.L62:
	.loc 1 653 31
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	EmulatedInterfaces(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 1 653 9
	cmpl	%eax, -20(%rbp)
	jne	.L60
	.loc 1 655 44
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+EmulatedInterfaces(%rip), %rax
	movl	(%rdx,%rax), %edx
	.loc 1 655 22
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	.loc 1 656 11
	subq	$8, %rsp
	leaq	.LC14(%rip), %rax
	pushq	%rax
	leaq	.LC6(%rip), %r9
	movl	$0, %r8d
	movl	$656, %ecx
	leaq	.LC26(%rip), %rdx
	leaq	.LC5(%rip), %rsi
	movl	$76, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$0, -8(%rbp)
	jmp	.L61
.L60:
	.loc 1 651 45 discriminator 2
	addl	$1, -4(%rbp)
.L59:
	.loc 1 651 3 discriminator 1
	cmpl	$2, -4(%rbp)
	jbe	.L62
	.loc 1 663 3
	subq	$8, %rsp
	leaq	.LC27(%rip), %rax
	pushq	%rax
	leaq	.LC6(%rip), %r9
	movl	$-769, %r8d
	movl	$663, %ecx
	leaq	.LC26(%rip), %rdx
	leaq	.LC5(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-769, -8(%rbp)
	nop
.L61:
	.loc 1 670 10
	movl	-8(%rbp), %eax
	.loc 1 671 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	EApiI2CGetBusCapEmul, .-EApiI2CGetBusCapEmul
	.section	.rodata
.LC28:
	.string	"EApiI2CWriteReadEmul"
.LC29:
	.string	"WriteBCnt>(pMaxBlkLen+1)"
.LC30:
	.string	"ReadBCnt>(pMaxBlkLen+1)"
.LC31:
	.string	"ADDR=%02X\n"
.LC32:
	.string	"Info"
.LC33:
	.string	"Device Not Present"
	.text
	.globl	EApiI2CWriteReadEmul
	.type	EApiI2CWriteReadEmul, @function
EApiI2CWriteReadEmul:
.LFB18:
	.loc 1 692 1
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
	.loc 1 693 16
	movl	$0, -16(%rbp)
	.loc 1 697 8
	movl	$0, -12(%rbp)
	.loc 1 697 3
	jmp	.L65
.L80:
	.loc 1 699 31
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	EmulatedInterfaces(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 1 699 9
	cmpl	%eax, -20(%rbp)
	jne	.L66
	.loc 1 701 2
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+EmulatedInterfaces(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	$1, %eax
	cmpl	%eax, -36(%rbp)
	jbe	.L67
	.loc 1 701 2 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC29(%rip), %rax
	pushq	%rax
	leaq	.LC6(%rip), %r9
	movl	$-259, %r8d
	movl	$701, %ecx
	leaq	.LC28(%rip), %rdx
	leaq	.LC5(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-259, -16(%rbp)
	jmp	.L68
.L67:
	.loc 1 707 2 is_stmt 1
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+EmulatedInterfaces(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	$1, %eax
	cmpl	%eax, -40(%rbp)
	jbe	.L69
	.loc 1 707 2 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC30(%rip), %rax
	pushq	%rax
	leaq	.LC6(%rip), %r9
	movl	$-259, %r8d
	movl	$707, %ecx
	leaq	.LC28(%rip), %rdx
	leaq	.LC5(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-259, -16(%rbp)
	jmp	.L68
.L69:
	.loc 1 713 12 is_stmt 1
	movzbl	-24(%rbp), %eax
	sall	$8, %eax
	andl	$63488, %eax
	.loc 1 713 11
	cmpl	$61440, %eax
	jne	.L70
	.loc 1 714 23
	movzbl	-24(%rbp), %eax
	sall	$8, %eax
	.loc 1 714 18
	movl	%eax, -4(%rbp)
	.loc 1 715 20
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 715 18
	orl	%eax, -4(%rbp)
	.loc 1 716 19
	addq	$1, -32(%rbp)
	.loc 1 717 20
	subl	$1, -36(%rbp)
	jmp	.L71
.L70:
	.loc 1 720 18
	movzbl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
.L71:
	.loc 1 723 9
	subq	$8, %rsp
	movl	-4(%rbp), %eax
	pushq	%rax
	leaq	.LC31(%rip), %r9
	leaq	.LC32(%rip), %r8
	movl	$727, %ecx
	leaq	.LC28(%rip), %rdx
	leaq	.LC5(%rip), %rsi
	movl	$76, %edi
	movl	$0, %eax
	call	siFormattedMessage_M2@PLT
	addq	$16, %rsp
	.loc 1 733 15
	movl	$0, -8(%rbp)
	.loc 1 733 9
	jmp	.L72
.L79:
	.loc 1 738 35
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+EmulatedInterfaces(%rip), %rax
	movq	(%rdx,%rax), %rcx
	.loc 1 738 47
	movl	-8(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 1 738 51
	movq	(%rax), %rdx
	.loc 1 738 59
	movl	-4(%rbp), %eax
	.loc 1 738 13
	cmpq	%rax, %rdx
	jne	.L73
	.loc 1 739 41
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+EmulatedInterfaces(%rip), %rax
	movq	(%rdx,%rax), %rcx
	.loc 1 739 53
	movl	-8(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 1 739 57
	movq	8(%rax), %r9
	.loc 1 739 20
	cmpl	$0, -40(%rbp)
	je	.L74
	.loc 1 739 20 is_stmt 0 discriminator 1
	movl	-40(%rbp), %eax
	leal	-1(%rax), %edi
	jmp	.L75
.L74:
	.loc 1 739 20 discriminator 2
	movl	$0, %edi
.L75:
	.loc 1 739 20 discriminator 4
	cmpl	$0, -36(%rbp)
	je	.L76
	.loc 1 739 20 discriminator 5
	movl	-36(%rbp), %eax
	leal	-1(%rax), %esi
	jmp	.L77
.L76:
	.loc 1 739 20 discriminator 6
	movl	$0, %esi
.L77:
	.loc 1 740 38 is_stmt 1 discriminator 8
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+EmulatedInterfaces(%rip), %rax
	movq	(%rdx,%rax), %rcx
	.loc 1 740 50 discriminator 8
	movl	-8(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 1 740 54 discriminator 8
	movq	16(%rax), %rax
	.loc 1 739 20 discriminator 8
	movl	%eax, %r10d
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	%edi, %r8d
	movq	%rdx, %rcx
	movl	%esi, %edx
	movq	%rax, %rsi
	movl	%r10d, %edi
	call	*%r9
.LVL0:
	jmp	.L78
.L73:
	.loc 1 735 15
	addl	$1, -8(%rbp)
.L72:
	.loc 1 734 34 discriminator 1
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+EmulatedInterfaces(%rip), %rax
	movq	(%rdx,%rax), %rcx
	.loc 1 734 46 discriminator 1
	movl	-8(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 1 734 50 discriminator 1
	movq	(%rax), %rax
	.loc 1 733 9 discriminator 1
	movl	$4294967295, %edx
	cmpq	%rdx, %rax
	jne	.L79
	.loc 1 749 9
	subq	$8, %rsp
	leaq	.LC33(%rip), %rax
	pushq	%rax
	leaq	.LC6(%rip), %r9
	movl	$-1025, %r8d
	movl	$749, %ecx
	leaq	.LC28(%rip), %rdx
	leaq	.LC5(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-1025, -16(%rbp)
	jmp	.L68
.L66:
	.loc 1 697 45 discriminator 2
	addl	$1, -12(%rbp)
.L65:
	.loc 1 697 3 discriminator 1
	cmpl	$2, -12(%rbp)
	jbe	.L80
	.loc 1 757 3
	subq	$8, %rsp
	leaq	.LC27(%rip), %rax
	pushq	%rax
	leaq	.LC6(%rip), %r9
	movl	$-769, %r8d
	movl	$757, %ecx
	leaq	.LC28(%rip), %rdx
	leaq	.LC5(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-769, -16(%rbp)
	nop
.L68:
	.loc 1 764 10
	movl	-16(%rbp), %eax
.L78:
	.loc 1 765 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	EApiI2CWriteReadEmul, .-EApiI2CWriteReadEmul
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 6 "/usr/include/stdint.h"
	.file 7 "/usr/include/unistd.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 9 "/usr/include/time.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 12 "../../include/EApi.h"
	.file 13 "/usr/include/stdio.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 15 "/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../DIDData.h"
	.file 16 "/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../UDSData.h"
	.file 17 "/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EPIData.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xf43
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF149
	.byte	0xc
	.long	.LASF150
	.long	.LASF151
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF6
	.byte	0x2
	.byte	0xd1
	.byte	0x17
	.long	0x39
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x4
	.long	0x39
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF2
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.long	.LASF7
	.byte	0x3
	.byte	0x25
	.byte	0x15
	.long	0x7b
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x26
	.byte	0x17
	.long	0x61
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF10
	.uleb128 0x2
	.long	.LASF11
	.byte	0x3
	.byte	0x2a
	.byte	0x16
	.long	0x4c
	.uleb128 0x2
	.long	.LASF12
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x53
	.uleb128 0x2
	.long	.LASF13
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x53
	.uleb128 0x6
	.byte	0x8
	.uleb128 0x4
	.long	0xb9
	.uleb128 0x7
	.byte	0x8
	.long	0xc6
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0x4
	.long	0xc6
	.uleb128 0x2
	.long	.LASF15
	.byte	0x4
	.byte	0x18
	.byte	0x12
	.long	0x6f
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF16
	.uleb128 0x2
	.long	.LASF17
	.byte	0x5
	.byte	0x18
	.byte	0x13
	.long	0x82
	.uleb128 0x2
	.long	.LASF18
	.byte	0x5
	.byte	0x1a
	.byte	0x14
	.long	0x95
	.uleb128 0x2
	.long	.LASF19
	.byte	0x6
	.byte	0x5a
	.byte	0x1b
	.long	0x39
	.uleb128 0x8
	.long	.LASF20
	.byte	0x7
	.value	0x21f
	.byte	0xf
	.long	0x116
	.uleb128 0x7
	.byte	0x8
	.long	0xc0
	.uleb128 0x9
	.long	.LASF21
	.byte	0x8
	.byte	0x24
	.byte	0xe
	.long	0xc0
	.uleb128 0x9
	.long	.LASF22
	.byte	0x8
	.byte	0x32
	.byte	0xc
	.long	0x45
	.uleb128 0x9
	.long	.LASF23
	.byte	0x8
	.byte	0x37
	.byte	0xc
	.long	0x45
	.uleb128 0x9
	.long	.LASF24
	.byte	0x8
	.byte	0x3b
	.byte	0xc
	.long	0x45
	.uleb128 0x7
	.byte	0x8
	.long	0xcd
	.uleb128 0x4
	.long	0x14c
	.uleb128 0xa
	.long	0xc0
	.long	0x167
	.uleb128 0xb
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.long	.LASF25
	.byte	0x9
	.byte	0x9f
	.byte	0xe
	.long	0x157
	.uleb128 0x9
	.long	.LASF26
	.byte	0x9
	.byte	0xa0
	.byte	0xc
	.long	0x45
	.uleb128 0x9
	.long	.LASF27
	.byte	0x9
	.byte	0xa1
	.byte	0x11
	.long	0x53
	.uleb128 0x9
	.long	.LASF28
	.byte	0x9
	.byte	0xa6
	.byte	0xe
	.long	0x157
	.uleb128 0x9
	.long	.LASF29
	.byte	0x9
	.byte	0xae
	.byte	0xc
	.long	0x45
	.uleb128 0x9
	.long	.LASF30
	.byte	0x9
	.byte	0xaf
	.byte	0x11
	.long	0x53
	.uleb128 0xc
	.long	.LASF72
	.byte	0xd8
	.byte	0xa
	.byte	0x31
	.byte	0x8
	.long	0x336
	.uleb128 0xd
	.long	.LASF31
	.byte	0xa
	.byte	0x33
	.byte	0x7
	.long	0x45
	.byte	0
	.uleb128 0xd
	.long	.LASF32
	.byte	0xa
	.byte	0x36
	.byte	0x9
	.long	0xc0
	.byte	0x8
	.uleb128 0xd
	.long	.LASF33
	.byte	0xa
	.byte	0x37
	.byte	0x9
	.long	0xc0
	.byte	0x10
	.uleb128 0xd
	.long	.LASF34
	.byte	0xa
	.byte	0x38
	.byte	0x9
	.long	0xc0
	.byte	0x18
	.uleb128 0xd
	.long	.LASF35
	.byte	0xa
	.byte	0x39
	.byte	0x9
	.long	0xc0
	.byte	0x20
	.uleb128 0xd
	.long	.LASF36
	.byte	0xa
	.byte	0x3a
	.byte	0x9
	.long	0xc0
	.byte	0x28
	.uleb128 0xd
	.long	.LASF37
	.byte	0xa
	.byte	0x3b
	.byte	0x9
	.long	0xc0
	.byte	0x30
	.uleb128 0xd
	.long	.LASF38
	.byte	0xa
	.byte	0x3c
	.byte	0x9
	.long	0xc0
	.byte	0x38
	.uleb128 0xd
	.long	.LASF39
	.byte	0xa
	.byte	0x3d
	.byte	0x9
	.long	0xc0
	.byte	0x40
	.uleb128 0xd
	.long	.LASF40
	.byte	0xa
	.byte	0x40
	.byte	0x9
	.long	0xc0
	.byte	0x48
	.uleb128 0xd
	.long	.LASF41
	.byte	0xa
	.byte	0x41
	.byte	0x9
	.long	0xc0
	.byte	0x50
	.uleb128 0xd
	.long	.LASF42
	.byte	0xa
	.byte	0x42
	.byte	0x9
	.long	0xc0
	.byte	0x58
	.uleb128 0xd
	.long	.LASF43
	.byte	0xa
	.byte	0x44
	.byte	0x16
	.long	0x36c
	.byte	0x60
	.uleb128 0xd
	.long	.LASF44
	.byte	0xa
	.byte	0x46
	.byte	0x14
	.long	0x372
	.byte	0x68
	.uleb128 0xd
	.long	.LASF45
	.byte	0xa
	.byte	0x48
	.byte	0x7
	.long	0x45
	.byte	0x70
	.uleb128 0xd
	.long	.LASF46
	.byte	0xa
	.byte	0x49
	.byte	0x7
	.long	0x45
	.byte	0x74
	.uleb128 0xd
	.long	.LASF47
	.byte	0xa
	.byte	0x4a
	.byte	0xb
	.long	0xa1
	.byte	0x78
	.uleb128 0xd
	.long	.LASF48
	.byte	0xa
	.byte	0x4d
	.byte	0x12
	.long	0x68
	.byte	0x80
	.uleb128 0xd
	.long	.LASF49
	.byte	0xa
	.byte	0x4e
	.byte	0xf
	.long	0x7b
	.byte	0x82
	.uleb128 0xd
	.long	.LASF50
	.byte	0xa
	.byte	0x4f
	.byte	0x8
	.long	0x378
	.byte	0x83
	.uleb128 0xd
	.long	.LASF51
	.byte	0xa
	.byte	0x51
	.byte	0xf
	.long	0x388
	.byte	0x88
	.uleb128 0xd
	.long	.LASF52
	.byte	0xa
	.byte	0x59
	.byte	0xd
	.long	0xad
	.byte	0x90
	.uleb128 0xd
	.long	.LASF53
	.byte	0xa
	.byte	0x5b
	.byte	0x17
	.long	0x393
	.byte	0x98
	.uleb128 0xd
	.long	.LASF54
	.byte	0xa
	.byte	0x5c
	.byte	0x19
	.long	0x39e
	.byte	0xa0
	.uleb128 0xd
	.long	.LASF55
	.byte	0xa
	.byte	0x5d
	.byte	0x14
	.long	0x372
	.byte	0xa8
	.uleb128 0xd
	.long	.LASF56
	.byte	0xa
	.byte	0x5e
	.byte	0x9
	.long	0xb9
	.byte	0xb0
	.uleb128 0xd
	.long	.LASF57
	.byte	0xa
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xd
	.long	.LASF58
	.byte	0xa
	.byte	0x60
	.byte	0x7
	.long	0x45
	.byte	0xc0
	.uleb128 0xd
	.long	.LASF59
	.byte	0xa
	.byte	0x62
	.byte	0x8
	.long	0x3a4
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF60
	.byte	0xb
	.byte	0x7
	.byte	0x19
	.long	0x1af
	.uleb128 0x2
	.long	.LASF61
	.byte	0xc
	.byte	0x91
	.byte	0x12
	.long	0xf1
	.uleb128 0x2
	.long	.LASF62
	.byte	0xc
	.byte	0x92
	.byte	0x12
	.long	0xf1
	.uleb128 0x4
	.long	0x34e
	.uleb128 0xe
	.long	.LASF152
	.byte	0xa
	.byte	0x2b
	.byte	0xe
	.uleb128 0xf
	.long	.LASF63
	.uleb128 0x7
	.byte	0x8
	.long	0x367
	.uleb128 0x7
	.byte	0x8
	.long	0x1af
	.uleb128 0xa
	.long	0xc6
	.long	0x388
	.uleb128 0xb
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x35f
	.uleb128 0xf
	.long	.LASF64
	.uleb128 0x7
	.byte	0x8
	.long	0x38e
	.uleb128 0xf
	.long	.LASF65
	.uleb128 0x7
	.byte	0x8
	.long	0x399
	.uleb128 0xa
	.long	0xc6
	.long	0x3b4
	.uleb128 0xb
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x9
	.long	.LASF66
	.byte	0xd
	.byte	0x89
	.byte	0xe
	.long	0x3c0
	.uleb128 0x7
	.byte	0x8
	.long	0x336
	.uleb128 0x9
	.long	.LASF67
	.byte	0xd
	.byte	0x8a
	.byte	0xe
	.long	0x3c0
	.uleb128 0x9
	.long	.LASF68
	.byte	0xd
	.byte	0x8b
	.byte	0xe
	.long	0x3c0
	.uleb128 0x9
	.long	.LASF69
	.byte	0xe
	.byte	0x1a
	.byte	0xc
	.long	0x45
	.uleb128 0xa
	.long	0x152
	.long	0x3f5
	.uleb128 0x10
	.byte	0
	.uleb128 0x4
	.long	0x3ea
	.uleb128 0x9
	.long	.LASF70
	.byte	0xe
	.byte	0x1b
	.byte	0x1a
	.long	0x3f5
	.uleb128 0x2
	.long	.LASF71
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.long	0x412
	.uleb128 0x11
	.long	0x342
	.long	0x435
	.uleb128 0x12
	.long	0xf1
	.uleb128 0x12
	.long	0xb9
	.uleb128 0x12
	.long	0xf1
	.uleb128 0x12
	.long	0xb9
	.uleb128 0x12
	.long	0xf1
	.byte	0
	.uleb128 0xc
	.long	.LASF73
	.byte	0x18
	.byte	0x1
	.byte	0x47
	.byte	0x10
	.long	0x46a
	.uleb128 0x13
	.string	"Cmd"
	.byte	0x1
	.byte	0x48
	.byte	0x17
	.long	0x40
	.byte	0
	.uleb128 0xd
	.long	.LASF74
	.byte	0x1
	.byte	0x49
	.byte	0x17
	.long	0x40
	.byte	0x8
	.uleb128 0xd
	.long	.LASF75
	.byte	0x1
	.byte	0x4a
	.byte	0x17
	.long	0xbb
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.long	.LASF76
	.byte	0x1
	.byte	0x4b
	.byte	0x2
	.long	0x435
	.uleb128 0xc
	.long	.LASF77
	.byte	0x28
	.byte	0x1
	.byte	0x4c
	.byte	0x10
	.long	0x4c5
	.uleb128 0xd
	.long	.LASF78
	.byte	0x1
	.byte	0x4d
	.byte	0x17
	.long	0x40
	.byte	0
	.uleb128 0xd
	.long	.LASF79
	.byte	0x1
	.byte	0x4e
	.byte	0x17
	.long	0x39
	.byte	0x8
	.uleb128 0xd
	.long	.LASF80
	.byte	0x1
	.byte	0x4f
	.byte	0x17
	.long	0x39
	.byte	0x10
	.uleb128 0xd
	.long	.LASF81
	.byte	0x1
	.byte	0x50
	.byte	0x17
	.long	0x152
	.byte	0x18
	.uleb128 0xd
	.long	.LASF82
	.byte	0x1
	.byte	0x51
	.byte	0x17
	.long	0x4cb
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x46a
	.uleb128 0x4
	.long	0x4c5
	.uleb128 0x2
	.long	.LASF83
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.long	0x476
	.uleb128 0xc
	.long	.LASF84
	.byte	0x38
	.byte	0x1
	.byte	0x54
	.byte	0x10
	.long	0x545
	.uleb128 0xd
	.long	.LASF85
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.long	0x40
	.byte	0
	.uleb128 0xd
	.long	.LASF78
	.byte	0x1
	.byte	0x56
	.byte	0x17
	.long	0x40
	.byte	0x8
	.uleb128 0xd
	.long	.LASF86
	.byte	0x1
	.byte	0x57
	.byte	0x17
	.long	0x40
	.byte	0x10
	.uleb128 0xd
	.long	.LASF87
	.byte	0x1
	.byte	0x5a
	.byte	0x17
	.long	0x39
	.byte	0x18
	.uleb128 0xd
	.long	.LASF88
	.byte	0x1
	.byte	0x5b
	.byte	0x17
	.long	0x54b
	.byte	0x20
	.uleb128 0xd
	.long	.LASF89
	.byte	0x1
	.byte	0x5c
	.byte	0x17
	.long	0x152
	.byte	0x28
	.uleb128 0xd
	.long	.LASF90
	.byte	0x1
	.byte	0x5d
	.byte	0xd
	.long	0x3c0
	.byte	0x30
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xe5
	.uleb128 0x4
	.long	0x545
	.uleb128 0x2
	.long	.LASF91
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.long	0x4dc
	.uleb128 0xc
	.long	.LASF92
	.byte	0x18
	.byte	0x1
	.byte	0x60
	.byte	0x10
	.long	0x591
	.uleb128 0xd
	.long	.LASF93
	.byte	0x1
	.byte	0x61
	.byte	0x1b
	.long	0x40
	.byte	0
	.uleb128 0xd
	.long	.LASF94
	.byte	0x1
	.byte	0x62
	.byte	0x1b
	.long	0x597
	.byte	0x8
	.uleb128 0xd
	.long	.LASF95
	.byte	0x1
	.byte	0x63
	.byte	0x1b
	.long	0x40
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x406
	.uleb128 0x4
	.long	0x591
	.uleb128 0x2
	.long	.LASF96
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.long	0x55c
	.uleb128 0x4
	.long	0x59c
	.uleb128 0xa
	.long	0xc0
	.long	0x5bd
	.uleb128 0xb
	.long	0x39
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.long	.LASF97
	.byte	0x1
	.byte	0x66
	.byte	0x8
	.long	0x5ad
	.uleb128 0x9
	.byte	0x3
	.quad	StdExt
	.uleb128 0xa
	.long	0xe5
	.long	0x5e4
	.uleb128 0x15
	.long	0x39
	.value	0x1ff
	.byte	0
	.uleb128 0x14
	.long	.LASF98
	.byte	0xf
	.byte	0x26
	.byte	0x9
	.long	0x5d3
	.uleb128 0x9
	.byte	0x3
	.quad	DIDEEPROM
	.uleb128 0x16
	.long	.LASF100
	.byte	0x1
	.value	0x152
	.byte	0x18
	.long	0x550
	.uleb128 0x9
	.byte	0x3
	.quad	DIDEEPromData
	.uleb128 0x14
	.long	.LASF99
	.byte	0x10
	.byte	0x26
	.byte	0x9
	.long	0x5d3
	.uleb128 0x9
	.byte	0x3
	.quad	UDSEEPROM
	.uleb128 0x16
	.long	.LASF101
	.byte	0x1
	.value	0x170
	.byte	0x18
	.long	0x550
	.uleb128 0x9
	.byte	0x3
	.quad	UDSEEPromData
	.uleb128 0x14
	.long	.LASF102
	.byte	0x11
	.byte	0x26
	.byte	0x9
	.long	0x5d3
	.uleb128 0x9
	.byte	0x3
	.quad	EPIEEPROM
	.uleb128 0x16
	.long	.LASF103
	.byte	0x1
	.value	0x18e
	.byte	0x18
	.long	0x550
	.uleb128 0x9
	.byte	0x3
	.quad	EPIEEPromData
	.uleb128 0xa
	.long	0xe5
	.long	0x67c
	.uleb128 0x15
	.long	0x39
	.value	0x7ff
	.byte	0
	.uleb128 0x17
	.long	.LASF104
	.byte	0x1
	.value	0x1ae
	.byte	0x9
	.long	0x66b
	.uleb128 0x9
	.byte	0x3
	.quad	COM0MEEPROM
	.uleb128 0x16
	.long	.LASF105
	.byte	0x1
	.value	0x1af
	.byte	0x18
	.long	0x550
	.uleb128 0x9
	.byte	0x3
	.quad	COM0MEEPromData
	.uleb128 0xa
	.long	0xe5
	.long	0x6bb
	.uleb128 0x15
	.long	0x39
	.value	0xfff
	.byte	0
	.uleb128 0x17
	.long	.LASF106
	.byte	0x1
	.value	0x1b8
	.byte	0x9
	.long	0x6aa
	.uleb128 0x9
	.byte	0x3
	.quad	COM0CBEEPROM
	.uleb128 0x16
	.long	.LASF107
	.byte	0x1
	.value	0x1b9
	.byte	0x18
	.long	0x550
	.uleb128 0x9
	.byte	0x3
	.quad	COM0CBEEPromData
	.uleb128 0xa
	.long	0xe5
	.long	0x6fa
	.uleb128 0x15
	.long	0x39
	.value	0x3ff
	.byte	0
	.uleb128 0x17
	.long	.LASF108
	.byte	0x1
	.value	0x1c2
	.byte	0x9
	.long	0x6e9
	.uleb128 0x9
	.byte	0x3
	.quad	EeePExpEEPROM
	.uleb128 0x16
	.long	.LASF109
	.byte	0x1
	.value	0x1c3
	.byte	0x18
	.long	0x550
	.uleb128 0x9
	.byte	0x3
	.quad	EeePExpEEPromData
	.uleb128 0xa
	.long	0x738
	.long	0x738
	.uleb128 0xb
	.long	0x39
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x550
	.uleb128 0x17
	.long	.LASF110
	.byte	0x1
	.value	0x1cc
	.byte	0x12
	.long	0x728
	.uleb128 0x9
	.byte	0x3
	.quad	OpenFiles
	.uleb128 0xa
	.long	0xd2
	.long	0x765
	.uleb128 0xb
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LASF111
	.byte	0x1
	.value	0x232
	.byte	0x8
	.long	0x755
	.uleb128 0x9
	.byte	0x3
	.quad	CpuTemp
	.uleb128 0x17
	.long	.LASF112
	.byte	0x1
	.value	0x233
	.byte	0x8
	.long	0x755
	.uleb128 0x9
	.byte	0x3
	.quad	ChipsetTemp
	.uleb128 0x17
	.long	.LASF113
	.byte	0x1
	.value	0x234
	.byte	0x8
	.long	0x755
	.uleb128 0x9
	.byte	0x3
	.quad	SystemTemp
	.uleb128 0xa
	.long	0x46a
	.long	0x7ba
	.uleb128 0xb
	.long	0x39
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.long	.LASF114
	.byte	0x1
	.value	0x235
	.byte	0xb
	.long	0x7aa
	.uleb128 0x9
	.byte	0x3
	.quad	HwmonCmdIndx
	.uleb128 0x17
	.long	.LASF115
	.byte	0x1
	.value	0x23b
	.byte	0x14
	.long	0x4d0
	.uleb128 0x9
	.byte	0x3
	.quad	HWMon
	.uleb128 0xa
	.long	0x5a8
	.long	0x7f8
	.uleb128 0xb
	.long	0x39
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.long	0x7e8
	.uleb128 0x17
	.long	.LASF116
	.byte	0x1
	.value	0x255
	.byte	0x17
	.long	0x7f8
	.uleb128 0x9
	.byte	0x3
	.quad	ExternalI2CDevices
	.uleb128 0xa
	.long	0x5a8
	.long	0x824
	.uleb128 0xb
	.long	0x39
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x814
	.uleb128 0x17
	.long	.LASF117
	.byte	0x1
	.value	0x261
	.byte	0x17
	.long	0x824
	.uleb128 0x9
	.byte	0x3
	.quad	LVDS_1I2CDevices
	.uleb128 0xa
	.long	0x5a8
	.long	0x850
	.uleb128 0xb
	.long	0x39
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.long	0x840
	.uleb128 0x17
	.long	.LASF118
	.byte	0x1
	.value	0x269
	.byte	0x17
	.long	0x850
	.uleb128 0x9
	.byte	0x3
	.quad	LVDS_2I2CDevices
	.uleb128 0x18
	.long	.LASF119
	.byte	0x18
	.byte	0x1
	.value	0x271
	.byte	0x10
	.long	0x8a4
	.uleb128 0x19
	.string	"Id"
	.byte	0x1
	.value	0x272
	.byte	0x1a
	.long	0x35a
	.byte	0
	.uleb128 0x1a
	.long	.LASF120
	.byte	0x1
	.value	0x273
	.byte	0x1a
	.long	0x8a4
	.byte	0x8
	.uleb128 0x1a
	.long	.LASF121
	.byte	0x1
	.value	0x275
	.byte	0x1a
	.long	0xf1
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x5a8
	.uleb128 0x1b
	.long	.LASF122
	.byte	0x1
	.value	0x277
	.byte	0x2
	.long	0x86c
	.uleb128 0x4
	.long	0x8aa
	.uleb128 0xa
	.long	0x8b7
	.long	0x8cc
	.uleb128 0xb
	.long	0x39
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.long	0x8bc
	.uleb128 0x17
	.long	.LASF123
	.byte	0x1
	.value	0x279
	.byte	0x19
	.long	0x8cc
	.uleb128 0x9
	.byte	0x3
	.quad	EmulatedInterfaces
	.uleb128 0x1c
	.long	.LASF131
	.byte	0x1
	.value	0x2ac
	.byte	0x1
	.long	0x342
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x9b9
	.uleb128 0x1d
	.string	"Id"
	.byte	0x1
	.value	0x2ad
	.byte	0x18
	.long	0x34e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1e
	.long	.LASF124
	.byte	0x1
	.value	0x2ae
	.byte	0x18
	.long	0xe5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.long	.LASF125
	.byte	0x1
	.value	0x2af
	.byte	0x18
	.long	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.long	.LASF126
	.byte	0x1
	.value	0x2b0
	.byte	0x18
	.long	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1e
	.long	.LASF127
	.byte	0x1
	.value	0x2b1
	.byte	0x18
	.long	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.long	.LASF128
	.byte	0x1
	.value	0x2b2
	.byte	0x18
	.long	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x16
	.long	.LASF129
	.byte	0x1
	.value	0x2b5
	.byte	0x10
	.long	0x342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.value	0x2b6
	.byte	0xc
	.long	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.string	"i2"
	.byte	0x1
	.value	0x2b6
	.byte	0xe
	.long	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.long	.LASF130
	.byte	0x1
	.value	0x2b7
	.byte	0xc
	.long	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x20
	.long	.LASF134
	.byte	0x1
	.value	0x2fa
	.byte	0x1
	.quad	.L68
	.byte	0
	.uleb128 0x1c
	.long	.LASF132
	.byte	0x1
	.value	0x283
	.byte	0x1
	.long	0x342
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0xa2b
	.uleb128 0x1d
	.string	"Id"
	.byte	0x1
	.value	0x284
	.byte	0x15
	.long	0x34e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1e
	.long	.LASF133
	.byte	0x1
	.value	0x285
	.byte	0x15
	.long	0xa2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.long	.LASF129
	.byte	0x1
	.value	0x288
	.byte	0x10
	.long	0x342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.value	0x289
	.byte	0xc
	.long	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x20
	.long	.LASF134
	.byte	0x1
	.value	0x29c
	.byte	0x1
	.quad	.L61
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xf1
	.uleb128 0x1c
	.long	.LASF135
	.byte	0x1
	.value	0x243
	.byte	0x1
	.long	0x342
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0xaa5
	.uleb128 0x1e
	.long	.LASF95
	.byte	0x1
	.value	0x244
	.byte	0x14
	.long	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.long	.LASF125
	.byte	0x1
	.value	0x245
	.byte	0x14
	.long	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.long	.LASF126
	.byte	0x1
	.value	0x246
	.byte	0x14
	.long	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF127
	.byte	0x1
	.value	0x247
	.byte	0x14
	.long	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.long	.LASF128
	.byte	0x1
	.value	0x248
	.byte	0x14
	.long	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x1c
	.long	.LASF136
	.byte	0x1
	.value	0x220
	.byte	0x1
	.long	0x342
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xb19
	.uleb128 0x1e
	.long	.LASF95
	.byte	0x1
	.value	0x221
	.byte	0x13
	.long	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.long	.LASF125
	.byte	0x1
	.value	0x222
	.byte	0x13
	.long	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.long	.LASF126
	.byte	0x1
	.value	0x223
	.byte	0x13
	.long	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF127
	.byte	0x1
	.value	0x224
	.byte	0x13
	.long	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.long	.LASF128
	.byte	0x1
	.value	0x225
	.byte	0x13
	.long	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x1c
	.long	.LASF137
	.byte	0x1
	.value	0x20d
	.byte	0x1
	.long	0x342
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xb8d
	.uleb128 0x1e
	.long	.LASF95
	.byte	0x1
	.value	0x20e
	.byte	0x13
	.long	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.long	.LASF125
	.byte	0x1
	.value	0x20f
	.byte	0x13
	.long	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.long	.LASF126
	.byte	0x1
	.value	0x210
	.byte	0x13
	.long	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF127
	.byte	0x1
	.value	0x211
	.byte	0x13
	.long	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.long	.LASF128
	.byte	0x1
	.value	0x212
	.byte	0x13
	.long	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x1c
	.long	.LASF138
	.byte	0x1
	.value	0x1f9
	.byte	0x1
	.long	0x342
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0xc01
	.uleb128 0x1e
	.long	.LASF95
	.byte	0x1
	.value	0x1fa
	.byte	0x13
	.long	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.long	.LASF125
	.byte	0x1
	.value	0x1fb
	.byte	0x13
	.long	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.long	.LASF126
	.byte	0x1
	.value	0x1fc
	.byte	0x13
	.long	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF127
	.byte	0x1
	.value	0x1fd
	.byte	0x13
	.long	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.long	.LASF128
	.byte	0x1
	.value	0x1fe
	.byte	0x13
	.long	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x1c
	.long	.LASF139
	.byte	0x1
	.value	0x1eb
	.byte	0x1
	.long	0x342
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xc43
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.value	0x1ed
	.byte	0x7
	.long	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x16
	.long	.LASF140
	.byte	0x1
	.value	0x1ee
	.byte	0x15
	.long	0xc43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x738
	.uleb128 0x1c
	.long	.LASF141
	.byte	0x1
	.value	0x1d7
	.byte	0x1
	.long	0x342
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xc8b
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.value	0x1d9
	.byte	0x7
	.long	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x16
	.long	.LASF140
	.byte	0x1
	.value	0x1da
	.byte	0x15
	.long	0xc43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1c
	.long	.LASF142
	.byte	0x1
	.value	0x199
	.byte	0x1
	.long	0x342
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xcff
	.uleb128 0x1e
	.long	.LASF95
	.byte	0x1
	.value	0x19a
	.byte	0x13
	.long	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.long	.LASF125
	.byte	0x1
	.value	0x19b
	.byte	0x13
	.long	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.long	.LASF126
	.byte	0x1
	.value	0x19c
	.byte	0x13
	.long	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF127
	.byte	0x1
	.value	0x19d
	.byte	0x13
	.long	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.long	.LASF128
	.byte	0x1
	.value	0x19e
	.byte	0x13
	.long	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x1c
	.long	.LASF143
	.byte	0x1
	.value	0x17a
	.byte	0x1
	.long	0x342
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xd73
	.uleb128 0x1e
	.long	.LASF95
	.byte	0x1
	.value	0x17b
	.byte	0x13
	.long	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.long	.LASF125
	.byte	0x1
	.value	0x17c
	.byte	0x13
	.long	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.long	.LASF126
	.byte	0x1
	.value	0x17d
	.byte	0x13
	.long	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF127
	.byte	0x1
	.value	0x17e
	.byte	0x13
	.long	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.long	.LASF128
	.byte	0x1
	.value	0x17f
	.byte	0x13
	.long	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x1c
	.long	.LASF144
	.byte	0x1
	.value	0x15c
	.byte	0x1
	.long	0x342
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0xde7
	.uleb128 0x1e
	.long	.LASF95
	.byte	0x1
	.value	0x15d
	.byte	0x13
	.long	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.long	.LASF125
	.byte	0x1
	.value	0x15e
	.byte	0x13
	.long	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.long	.LASF126
	.byte	0x1
	.value	0x15f
	.byte	0x13
	.long	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF127
	.byte	0x1
	.value	0x160
	.byte	0x13
	.long	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.long	.LASF128
	.byte	0x1
	.value	0x161
	.byte	0x13
	.long	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x21
	.long	.LASF145
	.byte	0x1
	.byte	0xf0
	.byte	0x1
	.long	0x342
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xea6
	.uleb128 0x22
	.long	.LASF95
	.byte	0x1
	.byte	0xf1
	.byte	0x1f
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.long	.LASF146
	.byte	0x1
	.byte	0xf2
	.byte	0x1f
	.long	0xea6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.long	.LASF125
	.byte	0x1
	.byte	0xf3
	.byte	0x1f
	.long	0x545
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.long	.LASF126
	.byte	0x1
	.byte	0xf4
	.byte	0x1f
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x22
	.long	.LASF127
	.byte	0x1
	.byte	0xf5
	.byte	0x1f
	.long	0x545
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x22
	.long	.LASF128
	.byte	0x1
	.byte	0xf6
	.byte	0x1f
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.long	.LASF129
	.byte	0x1
	.byte	0xf9
	.byte	0x10
	.long	0x342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.long	.LASF147
	.byte	0x1
	.byte	0xfa
	.byte	0x13
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.long	.LASF148
	.byte	0x1
	.byte	0xfb
	.byte	0x10
	.long	0x4c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.long	.LASF134
	.byte	0x1
	.value	0x14b
	.byte	0x1
	.quad	.L23
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x4d0
	.uleb128 0x24
	.long	.LASF153
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.long	0x342
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.long	.LASF95
	.byte	0x1
	.byte	0x6f
	.byte	0x1b
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.long	.LASF146
	.byte	0x1
	.byte	0x70
	.byte	0x1b
	.long	0x738
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.long	.LASF125
	.byte	0x1
	.byte	0x71
	.byte	0x1b
	.long	0x545
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.long	.LASF126
	.byte	0x1
	.byte	0x72
	.byte	0x1b
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.long	.LASF127
	.byte	0x1
	.byte	0x73
	.byte	0x1b
	.long	0x545
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.long	.LASF128
	.byte	0x1
	.byte	0x74
	.byte	0x1b
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.long	.LASF129
	.byte	0x1
	.byte	0x77
	.byte	0x10
	.long	0x342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.long	.LASF134
	.byte	0x1
	.byte	0xe9
	.byte	0x1
	.quad	.L8
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
.LASF110:
	.string	"OpenFiles"
.LASF113:
	.string	"SystemTemp"
.LASF50:
	.string	"_shortbuf"
.LASF107:
	.string	"COM0CBEEPromData"
.LASF152:
	.string	"_IO_lock_t"
.LASF127:
	.string	"pRBuffer"
.LASF68:
	.string	"stderr"
.LASF39:
	.string	"_IO_buf_end"
.LASF133:
	.string	"pMaxBlkLen"
.LASF24:
	.string	"optopt"
.LASF37:
	.string	"_IO_write_end"
.LASF151:
	.string	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux"
.LASF55:
	.string	"_freeres_list"
.LASF31:
	.string	"_flags"
.LASF95:
	.string	"Arg1"
.LASF62:
	.string	"EApiId_t"
.LASF117:
	.string	"LVDS_1I2CDevices"
.LASF43:
	.string	"_markers"
.LASF75:
	.string	"pBuffer"
.LASF146:
	.string	"CfgData"
.LASF99:
	.string	"UDSEEPROM"
.LASF82:
	.string	"Cmds"
.LASF27:
	.string	"__timezone"
.LASF129:
	.string	"StatusCode"
.LASF130:
	.string	"LclAddr"
.LASF104:
	.string	"COM0MEEPROM"
.LASF142:
	.string	"EmulateEPIEeprom"
.LASF18:
	.string	"uint32_t"
.LASF15:
	.string	"int8_t"
.LASF67:
	.string	"stdout"
.LASF42:
	.string	"_IO_save_end"
.LASF23:
	.string	"opterr"
.LASF138:
	.string	"EmulateEeePExpEeprom"
.LASF64:
	.string	"_IO_codecvt"
.LASF79:
	.string	"CurrentCmd"
.LASF16:
	.string	"long long unsigned int"
.LASF141:
	.string	"OpenI2CEepromFiles"
.LASF85:
	.string	"ByteLen"
.LASF150:
	.string	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EApiEmulI2C.c"
.LASF41:
	.string	"_IO_backup_base"
.LASF89:
	.string	"cszFilename"
.LASF52:
	.string	"_offset"
.LASF134:
	.string	"ExitPoint"
.LASF69:
	.string	"sys_nerr"
.LASF102:
	.string	"EPIEEPROM"
.LASF74:
	.string	"CmdBlockLen"
.LASF45:
	.string	"_fileno"
.LASF101:
	.string	"UDSEEPromData"
.LASF143:
	.string	"EmulateUDSEeprom"
.LASF148:
	.string	"pCurCmd"
.LASF6:
	.string	"size_t"
.LASF100:
	.string	"DIDEEPromData"
.LASF114:
	.string	"HwmonCmdIndx"
.LASF34:
	.string	"_IO_read_base"
.LASF112:
	.string	"ChipsetTemp"
.LASF153:
	.string	"EmulateEepromFS"
.LASF66:
	.string	"stdin"
.LASF87:
	.string	"CurIndx"
.LASF97:
	.string	"StdExt"
.LASF116:
	.string	"ExternalI2CDevices"
.LASF135:
	.string	"EmulateHWMonDevice"
.LASF124:
	.string	"Addr"
.LASF14:
	.string	"char"
.LASF58:
	.string	"_mode"
.LASF26:
	.string	"__daylight"
.LASF128:
	.string	"ReadBCnt"
.LASF120:
	.string	"DevicesList"
.LASF28:
	.string	"tzname"
.LASF63:
	.string	"_IO_marker"
.LASF32:
	.string	"_IO_read_ptr"
.LASF61:
	.string	"EApiStatus_t"
.LASF103:
	.string	"EPIEEPromData"
.LASF17:
	.string	"uint8_t"
.LASF121:
	.string	"MaxBlockLen"
.LASF35:
	.string	"_IO_write_base"
.LASF3:
	.string	"long long int"
.LASF40:
	.string	"_IO_save_base"
.LASF81:
	.string	"cszDeviceName"
.LASF22:
	.string	"optind"
.LASF73:
	.string	"CmdDesc_s"
.LASF76:
	.string	"CmdDesc_t"
.LASF78:
	.string	"ExtendedCmd"
.LASF105:
	.string	"COM0MEEPromData"
.LASF70:
	.string	"sys_errlist"
.LASF56:
	.string	"_freeres_buf"
.LASF57:
	.string	"__pad5"
.LASF92:
	.string	"BusDevicesTbl_s"
.LASF86:
	.string	"PageLength"
.LASF49:
	.string	"_vtable_offset"
.LASF149:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fvisibility=hidden -fPIC -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF7:
	.string	"__int8_t"
.LASF96:
	.string	"BusDevicesTbl_t"
.LASF21:
	.string	"optarg"
.LASF131:
	.string	"EApiI2CWriteReadEmul"
.LASF54:
	.string	"_wide_data"
.LASF30:
	.string	"timezone"
.LASF33:
	.string	"_IO_read_end"
.LASF98:
	.string	"DIDEEPROM"
.LASF10:
	.string	"short int"
.LASF90:
	.string	"FStream"
.LASF77:
	.string	"CmdDeviceCfgData_s"
.LASF83:
	.string	"CmdDeviceCfgData_t"
.LASF2:
	.string	"long int"
.LASF111:
	.string	"CpuTemp"
.LASF65:
	.string	"_IO_wide_data"
.LASF20:
	.string	"__environ"
.LASF119:
	.string	"InterfaceIdsTbl_s"
.LASF122:
	.string	"InterfaceIdsTbl_t"
.LASF136:
	.string	"EmulateCOM0MEeprom"
.LASF9:
	.string	"__uint8_t"
.LASF84:
	.string	"EepromCfgData_s"
.LASF91:
	.string	"EepromCfgData_t"
.LASF1:
	.string	"unsigned int"
.LASF123:
	.string	"EmulatedInterfaces"
.LASF19:
	.string	"uintptr_t"
.LASF140:
	.string	"pOpenFiles"
.LASF51:
	.string	"_lock"
.LASF0:
	.string	"long unsigned int"
.LASF115:
	.string	"HWMon"
.LASF47:
	.string	"_old_offset"
.LASF71:
	.string	"I2CDevEmulator_t"
.LASF72:
	.string	"_IO_FILE"
.LASF147:
	.string	"ReadBCnt2"
.LASF132:
	.string	"EApiI2CGetBusCapEmul"
.LASF4:
	.string	"unsigned char"
.LASF11:
	.string	"__uint32_t"
.LASF25:
	.string	"__tzname"
.LASF144:
	.string	"EmulateDIDEeprom"
.LASF36:
	.string	"_IO_write_ptr"
.LASF125:
	.string	"pWBuffer"
.LASF118:
	.string	"LVDS_2I2CDevices"
.LASF93:
	.string	"EncAddr"
.LASF53:
	.string	"_codecvt"
.LASF29:
	.string	"daylight"
.LASF137:
	.string	"EmulateCOM0CBEeprom"
.LASF88:
	.string	"pu8DBuffer"
.LASF94:
	.string	"Emulator"
.LASF80:
	.string	"CurrentOffset"
.LASF12:
	.string	"__off_t"
.LASF8:
	.string	"signed char"
.LASF5:
	.string	"short unsigned int"
.LASF106:
	.string	"COM0CBEEPROM"
.LASF139:
	.string	"CloseI2CEepromFiles"
.LASF145:
	.string	"EmulateCmdDevice"
.LASF109:
	.string	"EeePExpEEPromData"
.LASF126:
	.string	"WriteBCnt"
.LASF44:
	.string	"_chain"
.LASF60:
	.string	"FILE"
.LASF46:
	.string	"_flags2"
.LASF108:
	.string	"EeePExpEEPROM"
.LASF48:
	.string	"_cur_column"
.LASF13:
	.string	"__off64_t"
.LASF59:
	.string	"_unused2"
.LASF38:
	.string	"_IO_buf_base"
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
