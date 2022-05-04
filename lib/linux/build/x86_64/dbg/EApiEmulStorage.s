	.file	"EApiEmulStorage.c"
	.text
.Ltext0:
	.local	StorageID0
	.comm	StorageID0,32,32
	.local	StorageID1
	.comm	StorageID1,4096,32
	.hidden	StorageAreaTbl
	.globl	StorageAreaTbl
	.section	.rodata
.LC0:
	.string	"EApiStorage0.EMUL"
.LC1:
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
	.quad	.LC0
	.quad	0
	.long	-93057024
	.long	4096
	.long	1024
	.zero	4
	.quad	StorageID1
	.quad	.LC1
	.quad	0
	.section	.rodata
.LC2:
	.string	"%s\n"
.LC3:
	.string	"EApiStorageCap"
	.align 8
.LC4:
	.string	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EApiEmulStorage.c"
.LC5:
	.string	""
.LC6:
	.string	"EApiStorageCapEmul"
.LC7:
	.string	"Unrecognised Storage ID"
	.text
	.globl	EApiStorageCapEmul
	.hidden	EApiStorageCapEmul
	.type	EApiStorageCapEmul, @function
EApiStorageCapEmul:
.LFB6:
	.file 1 "/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EApiEmulStorage.c"
	.loc 1 87 1
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
	.loc 1 88 16
	movl	$0, -16(%rbp)
	.loc 1 93 8
	movl	$2, -12(%rbp)
	.loc 1 94 22
	leaq	StorageAreaTbl(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 1 92 3
	jmp	.L2
.L5:
	.loc 1 98 25
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 98 9
	cmpl	%eax, -20(%rbp)
	jne	.L3
	.loc 1 100 38
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	.loc 1 100 22
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	.loc 1 101 38
	movq	-8(%rbp), %rax
	movl	8(%rax), %edx
	.loc 1 101 22
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	.loc 1 102 9
	subq	$8, %rsp
	leaq	.LC5(%rip), %rax
	pushq	%rax
	leaq	.LC2(%rip), %r9
	movl	$0, %r8d
	movl	$102, %ecx
	leaq	.LC3(%rip), %rdx
	leaq	.LC4(%rip), %rsi
	movl	$76, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$0, -16(%rbp)
	jmp	.L4
.L3:
	.loc 1 96 22
	addq	$40, -8(%rbp)
.L2:
	.loc 1 95 8
	movl	-12(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -12(%rbp)
	.loc 1 92 3
	testl	%eax, %eax
	jne	.L5
	.loc 1 105 3
	subq	$8, %rsp
	leaq	.LC7(%rip), %rax
	pushq	%rax
	leaq	.LC2(%rip), %r9
	movl	$-769, %r8d
	movl	$105, %ecx
	leaq	.LC6(%rip), %rdx
	leaq	.LC4(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-769, -16(%rbp)
	nop
.L4:
	.loc 1 112 10
	movl	-16(%rbp), %eax
	.loc 1 113 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	EApiStorageCapEmul, .-EApiStorageCapEmul
	.section	.rodata
.LC8:
	.string	"EApiStorageAreaReadEmul"
	.align 8
.LC9:
	.string	"Read Len extends beyond End of Storage Area"
.LC10:
	.string	"EApiStorageAreaRead"
	.text
	.globl	EApiStorageAreaReadEmul
	.hidden	EApiStorageAreaReadEmul
	.type	EApiStorageAreaReadEmul, @function
EApiStorageAreaReadEmul:
.LFB7:
	.loc 1 121 1
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
	.loc 1 122 16
	movl	$0, -16(%rbp)
	.loc 1 127 8
	movl	$2, -12(%rbp)
	.loc 1 128 22
	leaq	StorageAreaTbl(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 1 126 3
	jmp	.L8
.L12:
	.loc 1 132 25
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 132 9
	cmpl	%eax, -20(%rbp)
	jne	.L9
	.loc 1 134 9
	movl	-24(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jbe	.L10
	.loc 1 134 9 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC9(%rip), %rax
	pushq	%rax
	leaq	.LC2(%rip), %r9
	movl	$-259, %r8d
	movl	$134, %ecx
	leaq	.LC8(%rip), %rdx
	leaq	.LC4(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-259, -16(%rbp)
	jmp	.L11
.L10:
	.loc 1 144 9 is_stmt 1
	movl	-24(%rbp), %ecx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fseek@PLT
	.loc 1 145 21
	movq	-8(%rbp), %rax
	movq	32(%rax), %rcx
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread@PLT
	.loc 1 149 9
	subq	$8, %rsp
	leaq	.LC5(%rip), %rax
	pushq	%rax
	leaq	.LC2(%rip), %r9
	movl	$0, %r8d
	movl	$149, %ecx
	leaq	.LC10(%rip), %rdx
	leaq	.LC4(%rip), %rsi
	movl	$76, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$0, -16(%rbp)
	jmp	.L11
.L9:
	.loc 1 130 22
	addq	$40, -8(%rbp)
.L8:
	.loc 1 129 8
	movl	-12(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -12(%rbp)
	.loc 1 126 3
	testl	%eax, %eax
	jne	.L12
	.loc 1 152 3
	subq	$8, %rsp
	leaq	.LC7(%rip), %rax
	pushq	%rax
	leaq	.LC2(%rip), %r9
	movl	$-769, %r8d
	movl	$152, %ecx
	leaq	.LC8(%rip), %rdx
	leaq	.LC4(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-769, -16(%rbp)
	nop
.L11:
	.loc 1 159 10
	movl	-16(%rbp), %eax
	.loc 1 160 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	EApiStorageAreaReadEmul, .-EApiStorageAreaReadEmul
	.section	.rodata
.LC11:
	.string	"EApiStorageAreaWriteEmul"
.LC12:
	.string	"Write length Not Aligned"
	.align 8
.LC13:
	.string	"Write Base Address Not Aligned"
	.align 8
.LC14:
	.string	"Write Len extends beyond End of Storage Area"
.LC15:
	.string	"EApiStorageAreaWrite"
	.text
	.globl	EApiStorageAreaWriteEmul
	.hidden	EApiStorageAreaWriteEmul
	.type	EApiStorageAreaWriteEmul, @function
EApiStorageAreaWriteEmul:
.LFB8:
	.loc 1 169 1
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
	.loc 1 170 16
	movl	$0, -16(%rbp)
	.loc 1 174 8
	movl	$2, -12(%rbp)
	.loc 1 175 22
	leaq	StorageAreaTbl(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 1 173 3
	jmp	.L15
.L21:
	.loc 1 179 25
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 179 9
	cmpl	%eax, -20(%rbp)
	jne	.L16
	.loc 1 181 9
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	movl	-36(%rbp), %eax
	movl	$0, %edx
	divl	%ecx
	movl	%edx, %eax
	testl	%eax, %eax
	je	.L17
	.loc 1 181 9 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC12(%rip), %rax
	pushq	%rax
	leaq	.LC2(%rip), %r9
	movl	$-258, %r8d
	movl	$181, %ecx
	leaq	.LC11(%rip), %rdx
	leaq	.LC4(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-258, -16(%rbp)
	jmp	.L18
.L17:
	.loc 1 187 9 is_stmt 1
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	movl	-24(%rbp), %eax
	movl	$0, %edx
	divl	%ecx
	movl	%edx, %eax
	testl	%eax, %eax
	je	.L19
	.loc 1 187 9 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC13(%rip), %rax
	pushq	%rax
	leaq	.LC2(%rip), %r9
	movl	$-258, %r8d
	movl	$187, %ecx
	leaq	.LC11(%rip), %rdx
	leaq	.LC4(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-258, -16(%rbp)
	jmp	.L18
.L19:
	.loc 1 193 9 is_stmt 1
	movl	-24(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jbe	.L20
	.loc 1 193 9 is_stmt 0 discriminator 1
	subq	$8, %rsp
	leaq	.LC14(%rip), %rax
	pushq	%rax
	leaq	.LC2(%rip), %r9
	movl	$-259, %r8d
	movl	$193, %ecx
	leaq	.LC11(%rip), %rdx
	leaq	.LC4(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-259, -16(%rbp)
	jmp	.L18
.L20:
	.loc 1 203 9 is_stmt 1
	movl	-24(%rbp), %ecx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fseek@PLT
	.loc 1 204 9
	movq	-8(%rbp), %rax
	movq	32(%rax), %rcx
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	.loc 1 206 9
	subq	$8, %rsp
	leaq	.LC5(%rip), %rax
	pushq	%rax
	leaq	.LC2(%rip), %r9
	movl	$0, %r8d
	movl	$206, %ecx
	leaq	.LC11(%rip), %rdx
	leaq	.LC4(%rip), %rsi
	movl	$76, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$0, -16(%rbp)
	jmp	.L18
.L16:
	.loc 1 177 22
	addq	$40, -8(%rbp)
.L15:
	.loc 1 176 8
	movl	-12(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -12(%rbp)
	.loc 1 173 3
	testl	%eax, %eax
	jne	.L21
	.loc 1 209 3
	subq	$8, %rsp
	leaq	.LC7(%rip), %rax
	pushq	%rax
	leaq	.LC2(%rip), %r9
	movl	$-769, %r8d
	movl	$209, %ecx
	leaq	.LC15(%rip), %rdx
	leaq	.LC4(%rip), %rsi
	movl	$69, %edi
	movl	$0, %eax
	call	siFormattedMessage_SC@PLT
	addq	$16, %rsp
	movl	$-769, -16(%rbp)
	nop
.L18:
	.loc 1 216 10
	movl	-16(%rbp), %eax
	.loc 1 217 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	EApiStorageAreaWriteEmul, .-EApiStorageAreaWriteEmul
	.section	.rodata
.LC16:
	.string	"rb+"
.LC17:
	.string	"wb+"
	.text
	.globl	OpenEepromFiles
	.hidden	OpenEepromFiles
	.type	OpenEepromFiles, @function
OpenEepromFiles:
.LFB9:
	.loc 1 227 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 231 8
	movl	$2, -12(%rbp)
	.loc 1 232 22
	leaq	StorageAreaTbl(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 1 230 3
	jmp	.L24
.L27:
	.loc 1 236 30
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	.loc 1 236 29
	movq	-8(%rbp), %rdx
	movq	%rax, 32(%rdx)
	.loc 1 237 23
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	.loc 1 237 7
	testq	%rax, %rax
	jne	.L25
	.loc 1 238 32
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC17(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	.loc 1 238 31
	movq	-8(%rbp), %rdx
	movq	%rax, 32(%rdx)
.L25:
	.loc 1 240 23
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	.loc 1 240 7
	testq	%rax, %rax
	je	.L26
	.loc 1 241 9
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	fseek@PLT
	.loc 1 242 12
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	ftell@PLT
	.loc 1 242 67
	movq	-8(%rbp), %rdx
	movl	4(%rdx), %edx
	.loc 1 242 44
	movslq	%edx, %rdx
	.loc 1 242 11
	cmpq	%rdx, %rax
	jge	.L26
	.loc 1 243 11
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	rewind@PLT
	.loc 1 244 11
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	.loc 1 244 78
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	.loc 1 244 11
	movl	%eax, %esi
	.loc 1 244 33
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 244 11
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
.L26:
	.loc 1 234 22
	addq	$40, -8(%rbp)
.L24:
	.loc 1 233 8
	movl	-12(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -12(%rbp)
	.loc 1 230 3
	testl	%eax, %eax
	jne	.L27
	.loc 1 248 10
	movl	$0, %eax
	.loc 1 249 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	OpenEepromFiles, .-OpenEepromFiles
	.globl	CloseEepromFiles
	.hidden	CloseEepromFiles
	.type	CloseEepromFiles, @function
CloseEepromFiles:
.LFB10:
	.loc 1 252 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 256 8
	movl	$2, -12(%rbp)
	.loc 1 257 22
	leaq	StorageAreaTbl(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 1 255 3
	jmp	.L30
.L32:
	.loc 1 261 23
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	.loc 1 261 7
	testq	%rax, %rax
	je	.L31
	.loc 1 262 7
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	.loc 1 263 31
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
.L31:
	.loc 1 259 22
	addq	$40, -8(%rbp)
.L30:
	.loc 1 258 8
	movl	-12(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -12(%rbp)
	.loc 1 255 3
	testl	%eax, %eax
	jne	.L32
	.loc 1 266 10
	movl	$0, %eax
	.loc 1 267 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	CloseEepromFiles, .-CloseEepromFiles
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 5 "/usr/include/stdint.h"
	.file 6 "/usr/include/unistd.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 8 "/usr/include/time.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 11 "../../include/EApi.h"
	.file 12 "/usr/include/stdio.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x71a
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF95
	.byte	0xc
	.long	.LASF96
	.long	.LASF97
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
	.byte	0xd1
	.byte	0x17
	.long	0x39
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x4
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
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x26
	.byte	0x17
	.long	0x5c
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.long	.LASF10
	.byte	0x3
	.byte	0x28
	.byte	0x1c
	.long	0x63
	.uleb128 0x2
	.long	.LASF11
	.byte	0x3
	.byte	0x2a
	.byte	0x16
	.long	0x47
	.uleb128 0x2
	.long	.LASF12
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x4e
	.uleb128 0x2
	.long	.LASF13
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x4e
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0xbc
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0x7
	.long	0xbc
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF15
	.uleb128 0x2
	.long	.LASF16
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.long	0x71
	.uleb128 0x2
	.long	.LASF17
	.byte	0x4
	.byte	0x19
	.byte	0x14
	.long	0x84
	.uleb128 0x2
	.long	.LASF18
	.byte	0x4
	.byte	0x1a
	.byte	0x14
	.long	0x90
	.uleb128 0x2
	.long	.LASF19
	.byte	0x5
	.byte	0x5a
	.byte	0x1b
	.long	0x39
	.uleb128 0x8
	.long	.LASF20
	.byte	0x6
	.value	0x21f
	.byte	0xf
	.long	0x10c
	.uleb128 0x6
	.byte	0x8
	.long	0xb6
	.uleb128 0x9
	.long	.LASF21
	.byte	0x7
	.byte	0x24
	.byte	0xe
	.long	0xb6
	.uleb128 0x9
	.long	.LASF22
	.byte	0x7
	.byte	0x32
	.byte	0xc
	.long	0x40
	.uleb128 0x9
	.long	.LASF23
	.byte	0x7
	.byte	0x37
	.byte	0xc
	.long	0x40
	.uleb128 0x9
	.long	.LASF24
	.byte	0x7
	.byte	0x3b
	.byte	0xc
	.long	0x40
	.uleb128 0x6
	.byte	0x8
	.long	0xc3
	.uleb128 0x7
	.long	0x142
	.uleb128 0xa
	.long	0xb6
	.long	0x15d
	.uleb128 0xb
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.long	.LASF25
	.byte	0x8
	.byte	0x9f
	.byte	0xe
	.long	0x14d
	.uleb128 0x9
	.long	.LASF26
	.byte	0x8
	.byte	0xa0
	.byte	0xc
	.long	0x40
	.uleb128 0x9
	.long	.LASF27
	.byte	0x8
	.byte	0xa1
	.byte	0x11
	.long	0x4e
	.uleb128 0x9
	.long	.LASF28
	.byte	0x8
	.byte	0xa6
	.byte	0xe
	.long	0x14d
	.uleb128 0x9
	.long	.LASF29
	.byte	0x8
	.byte	0xae
	.byte	0xc
	.long	0x40
	.uleb128 0x9
	.long	.LASF30
	.byte	0x8
	.byte	0xaf
	.byte	0x11
	.long	0x4e
	.uleb128 0xc
	.long	.LASF71
	.byte	0xd8
	.byte	0x9
	.byte	0x31
	.byte	0x8
	.long	0x32c
	.uleb128 0xd
	.long	.LASF31
	.byte	0x9
	.byte	0x33
	.byte	0x7
	.long	0x40
	.byte	0
	.uleb128 0xd
	.long	.LASF32
	.byte	0x9
	.byte	0x36
	.byte	0x9
	.long	0xb6
	.byte	0x8
	.uleb128 0xd
	.long	.LASF33
	.byte	0x9
	.byte	0x37
	.byte	0x9
	.long	0xb6
	.byte	0x10
	.uleb128 0xd
	.long	.LASF34
	.byte	0x9
	.byte	0x38
	.byte	0x9
	.long	0xb6
	.byte	0x18
	.uleb128 0xd
	.long	.LASF35
	.byte	0x9
	.byte	0x39
	.byte	0x9
	.long	0xb6
	.byte	0x20
	.uleb128 0xd
	.long	.LASF36
	.byte	0x9
	.byte	0x3a
	.byte	0x9
	.long	0xb6
	.byte	0x28
	.uleb128 0xd
	.long	.LASF37
	.byte	0x9
	.byte	0x3b
	.byte	0x9
	.long	0xb6
	.byte	0x30
	.uleb128 0xd
	.long	.LASF38
	.byte	0x9
	.byte	0x3c
	.byte	0x9
	.long	0xb6
	.byte	0x38
	.uleb128 0xd
	.long	.LASF39
	.byte	0x9
	.byte	0x3d
	.byte	0x9
	.long	0xb6
	.byte	0x40
	.uleb128 0xd
	.long	.LASF40
	.byte	0x9
	.byte	0x40
	.byte	0x9
	.long	0xb6
	.byte	0x48
	.uleb128 0xd
	.long	.LASF41
	.byte	0x9
	.byte	0x41
	.byte	0x9
	.long	0xb6
	.byte	0x50
	.uleb128 0xd
	.long	.LASF42
	.byte	0x9
	.byte	0x42
	.byte	0x9
	.long	0xb6
	.byte	0x58
	.uleb128 0xd
	.long	.LASF43
	.byte	0x9
	.byte	0x44
	.byte	0x16
	.long	0x35d
	.byte	0x60
	.uleb128 0xd
	.long	.LASF44
	.byte	0x9
	.byte	0x46
	.byte	0x14
	.long	0x363
	.byte	0x68
	.uleb128 0xd
	.long	.LASF45
	.byte	0x9
	.byte	0x48
	.byte	0x7
	.long	0x40
	.byte	0x70
	.uleb128 0xd
	.long	.LASF46
	.byte	0x9
	.byte	0x49
	.byte	0x7
	.long	0x40
	.byte	0x74
	.uleb128 0xd
	.long	.LASF47
	.byte	0x9
	.byte	0x4a
	.byte	0xb
	.long	0x9c
	.byte	0x78
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x4d
	.byte	0x12
	.long	0x63
	.byte	0x80
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x4e
	.byte	0xf
	.long	0x6a
	.byte	0x82
	.uleb128 0xd
	.long	.LASF50
	.byte	0x9
	.byte	0x4f
	.byte	0x8
	.long	0x369
	.byte	0x83
	.uleb128 0xd
	.long	.LASF51
	.byte	0x9
	.byte	0x51
	.byte	0xf
	.long	0x379
	.byte	0x88
	.uleb128 0xd
	.long	.LASF52
	.byte	0x9
	.byte	0x59
	.byte	0xd
	.long	0xa8
	.byte	0x90
	.uleb128 0xd
	.long	.LASF53
	.byte	0x9
	.byte	0x5b
	.byte	0x17
	.long	0x384
	.byte	0x98
	.uleb128 0xd
	.long	.LASF54
	.byte	0x9
	.byte	0x5c
	.byte	0x19
	.long	0x38f
	.byte	0xa0
	.uleb128 0xd
	.long	.LASF55
	.byte	0x9
	.byte	0x5d
	.byte	0x14
	.long	0x363
	.byte	0xa8
	.uleb128 0xd
	.long	.LASF56
	.byte	0x9
	.byte	0x5e
	.byte	0x9
	.long	0xb4
	.byte	0xb0
	.uleb128 0xd
	.long	.LASF57
	.byte	0x9
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xd
	.long	.LASF58
	.byte	0x9
	.byte	0x60
	.byte	0x7
	.long	0x40
	.byte	0xc0
	.uleb128 0xd
	.long	.LASF59
	.byte	0x9
	.byte	0x62
	.byte	0x8
	.long	0x395
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF60
	.byte	0xa
	.byte	0x7
	.byte	0x19
	.long	0x1a5
	.uleb128 0x2
	.long	.LASF61
	.byte	0xb
	.byte	0x91
	.byte	0x12
	.long	0xe7
	.uleb128 0x2
	.long	.LASF62
	.byte	0xb
	.byte	0x92
	.byte	0x12
	.long	0xe7
	.uleb128 0xe
	.long	.LASF98
	.byte	0x9
	.byte	0x2b
	.byte	0xe
	.uleb128 0xf
	.long	.LASF63
	.uleb128 0x6
	.byte	0x8
	.long	0x358
	.uleb128 0x6
	.byte	0x8
	.long	0x1a5
	.uleb128 0xa
	.long	0xbc
	.long	0x379
	.uleb128 0xb
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x350
	.uleb128 0xf
	.long	.LASF64
	.uleb128 0x6
	.byte	0x8
	.long	0x37f
	.uleb128 0xf
	.long	.LASF65
	.uleb128 0x6
	.byte	0x8
	.long	0x38a
	.uleb128 0xa
	.long	0xbc
	.long	0x3a5
	.uleb128 0xb
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x9
	.long	.LASF66
	.byte	0xc
	.byte	0x89
	.byte	0xe
	.long	0x3b1
	.uleb128 0x6
	.byte	0x8
	.long	0x32c
	.uleb128 0x9
	.long	.LASF67
	.byte	0xc
	.byte	0x8a
	.byte	0xe
	.long	0x3b1
	.uleb128 0x9
	.long	.LASF68
	.byte	0xc
	.byte	0x8b
	.byte	0xe
	.long	0x3b1
	.uleb128 0x9
	.long	.LASF69
	.byte	0xd
	.byte	0x1a
	.byte	0xc
	.long	0x40
	.uleb128 0xa
	.long	0x148
	.long	0x3e6
	.uleb128 0x10
	.byte	0
	.uleb128 0x7
	.long	0x3db
	.uleb128 0x9
	.long	.LASF70
	.byte	0xd
	.byte	0x1b
	.byte	0x1a
	.long	0x3e6
	.uleb128 0xc
	.long	.LASF72
	.byte	0x28
	.byte	0x1
	.byte	0x34
	.byte	0x10
	.long	0x452
	.uleb128 0x11
	.string	"Id"
	.byte	0x1
	.byte	0x35
	.byte	0xc
	.long	0x344
	.byte	0
	.uleb128 0xd
	.long	.LASF73
	.byte	0x1
	.byte	0x36
	.byte	0xc
	.long	0xe7
	.byte	0x4
	.uleb128 0xd
	.long	.LASF74
	.byte	0x1
	.byte	0x37
	.byte	0xc
	.long	0xe7
	.byte	0x8
	.uleb128 0xd
	.long	.LASF75
	.byte	0x1
	.byte	0x38
	.byte	0xc
	.long	0x452
	.byte	0x10
	.uleb128 0xd
	.long	.LASF76
	.byte	0x1
	.byte	0x39
	.byte	0x15
	.long	0x148
	.byte	0x18
	.uleb128 0xd
	.long	.LASF77
	.byte	0x1
	.byte	0x3a
	.byte	0xd
	.long	0x3b1
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xcf
	.uleb128 0x2
	.long	.LASF78
	.byte	0x1
	.byte	0x3b
	.byte	0x2
	.long	0x3f7
	.uleb128 0xa
	.long	0xcf
	.long	0x474
	.uleb128 0xb
	.long	0x39
	.byte	0x1f
	.byte	0
	.uleb128 0x12
	.long	.LASF79
	.byte	0x1
	.byte	0x3c
	.byte	0x10
	.long	0x464
	.uleb128 0x9
	.byte	0x3
	.quad	StorageID0
	.uleb128 0xa
	.long	0xcf
	.long	0x49b
	.uleb128 0x13
	.long	0x39
	.value	0xfff
	.byte	0
	.uleb128 0x12
	.long	.LASF80
	.byte	0x1
	.byte	0x3d
	.byte	0x10
	.long	0x48a
	.uleb128 0x9
	.byte	0x3
	.quad	StorageID1
	.uleb128 0xa
	.long	0x458
	.long	0x4c1
	.uleb128 0xb
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.long	.LASF81
	.byte	0x1
	.byte	0x3e
	.byte	0x16
	.long	0x4b1
	.uleb128 0x9
	.byte	0x3
	.quad	StorageAreaTbl
	.uleb128 0x15
	.long	.LASF83
	.byte	0x1
	.byte	0xfb
	.byte	0x1
	.long	0x338
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x516
	.uleb128 0x12
	.long	.LASF82
	.byte	0x1
	.byte	0xfd
	.byte	0x19
	.long	0x516
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0xfe
	.byte	0xc
	.long	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x458
	.uleb128 0x15
	.long	.LASF84
	.byte	0x1
	.byte	0xe2
	.byte	0x1
	.long	0x338
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x55b
	.uleb128 0x12
	.long	.LASF82
	.byte	0x1
	.byte	0xe4
	.byte	0x19
	.long	0x516
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0xe5
	.byte	0xc
	.long	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x15
	.long	.LASF85
	.byte	0x1
	.byte	0xa3
	.byte	0x1
	.long	0x338
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x5f4
	.uleb128 0x17
	.string	"Id"
	.byte	0x1
	.byte	0xa4
	.byte	0x13
	.long	0x344
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.long	.LASF86
	.byte	0x1
	.byte	0xa5
	.byte	0x13
	.long	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.long	.LASF87
	.byte	0x1
	.byte	0xa6
	.byte	0x10
	.long	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.long	.LASF88
	.byte	0x1
	.byte	0xa7
	.byte	0x13
	.long	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x12
	.long	.LASF89
	.byte	0x1
	.byte	0xaa
	.byte	0x10
	.long	0x338
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.long	.LASF82
	.byte	0x1
	.byte	0xab
	.byte	0x19
	.long	0x516
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0xac
	.byte	0xc
	.long	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.long	.LASF91
	.byte	0x1
	.byte	0xd6
	.byte	0x1
	.quad	.L18
	.byte	0
	.uleb128 0x15
	.long	.LASF90
	.byte	0x1
	.byte	0x73
	.byte	0x1
	.long	0x338
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x68d
	.uleb128 0x17
	.string	"Id"
	.byte	0x1
	.byte	0x74
	.byte	0x12
	.long	0x344
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.long	.LASF86
	.byte	0x1
	.byte	0x75
	.byte	0x12
	.long	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.long	.LASF87
	.byte	0x1
	.byte	0x76
	.byte	0x12
	.long	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.long	.LASF88
	.byte	0x1
	.byte	0x77
	.byte	0x12
	.long	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x12
	.long	.LASF89
	.byte	0x1
	.byte	0x7a
	.byte	0x10
	.long	0x338
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.long	.LASF82
	.byte	0x1
	.byte	0x7b
	.byte	0x19
	.long	0x516
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0x7c
	.byte	0xc
	.long	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.long	.LASF91
	.byte	0x1
	.byte	0x9d
	.byte	0x1
	.quad	.L11
	.byte	0
	.uleb128 0x15
	.long	.LASF92
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.long	0x338
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x717
	.uleb128 0x17
	.string	"Id"
	.byte	0x1
	.byte	0x53
	.byte	0x19
	.long	0x344
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.long	.LASF93
	.byte	0x1
	.byte	0x54
	.byte	0x19
	.long	0x717
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.long	.LASF94
	.byte	0x1
	.byte	0x55
	.byte	0x19
	.long	0x717
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x12
	.long	.LASF89
	.byte	0x1
	.byte	0x58
	.byte	0x10
	.long	0x338
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.long	.LASF82
	.byte	0x1
	.byte	0x59
	.byte	0x19
	.long	0x516
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0x5a
	.byte	0xc
	.long	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.long	.LASF91
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.quad	.L4
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xe7
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x16
	.uleb128 0x34
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
.LASF22:
	.string	"optind"
.LASF21:
	.string	"optarg"
.LASF81:
	.string	"StorageAreaTbl"
.LASF93:
	.string	"pStorageSize"
.LASF94:
	.string	"pBlockLength"
.LASF71:
	.string	"_IO_FILE"
.LASF73:
	.string	"StorageSize"
.LASF84:
	.string	"OpenEepromFiles"
.LASF42:
	.string	"_IO_save_end"
.LASF9:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF52:
	.string	"_offset"
.LASF25:
	.string	"__tzname"
.LASF8:
	.string	"__uint8_t"
.LASF36:
	.string	"_IO_write_ptr"
.LASF31:
	.string	"_flags"
.LASF11:
	.string	"__uint32_t"
.LASF97:
	.string	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux"
.LASF10:
	.string	"__uint16_t"
.LASF20:
	.string	"__environ"
.LASF43:
	.string	"_markers"
.LASF85:
	.string	"EApiStorageAreaWriteEmul"
.LASF56:
	.string	"_freeres_buf"
.LASF29:
	.string	"daylight"
.LASF16:
	.string	"uint8_t"
.LASF19:
	.string	"uintptr_t"
.LASF79:
	.string	"StorageID0"
.LASF80:
	.string	"StorageID1"
.LASF82:
	.string	"pCurStorageDesc"
.LASF30:
	.string	"timezone"
.LASF87:
	.string	"pvBuffer"
.LASF68:
	.string	"stderr"
.LASF3:
	.string	"long long int"
.LASF27:
	.string	"__timezone"
.LASF51:
	.string	"_lock"
.LASF26:
	.string	"__daylight"
.LASF2:
	.string	"long int"
.LASF62:
	.string	"EApiId_t"
.LASF48:
	.string	"_cur_column"
.LASF88:
	.string	"ByteCnt"
.LASF72:
	.string	"StorageAreaMapping_s"
.LASF78:
	.string	"StorageAreaMapping_t"
.LASF61:
	.string	"EApiStatus_t"
.LASF35:
	.string	"_IO_write_base"
.LASF47:
	.string	"_old_offset"
.LASF4:
	.string	"unsigned char"
.LASF91:
	.string	"ExitPoint"
.LASF6:
	.string	"signed char"
.LASF53:
	.string	"_codecvt"
.LASF15:
	.string	"long long unsigned int"
.LASF18:
	.string	"uint32_t"
.LASF1:
	.string	"unsigned int"
.LASF63:
	.string	"_IO_marker"
.LASF50:
	.string	"_shortbuf"
.LASF95:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fvisibility=hidden -fPIC -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF33:
	.string	"_IO_read_end"
.LASF28:
	.string	"tzname"
.LASF59:
	.string	"_unused2"
.LASF23:
	.string	"opterr"
.LASF86:
	.string	"Offset"
.LASF39:
	.string	"_IO_buf_end"
.LASF76:
	.string	"cszFilename"
.LASF14:
	.string	"char"
.LASF17:
	.string	"uint16_t"
.LASF89:
	.string	"StatusCode"
.LASF54:
	.string	"_wide_data"
.LASF55:
	.string	"_freeres_list"
.LASF57:
	.string	"__pad5"
.LASF74:
	.string	"WBlockLength"
.LASF5:
	.string	"short unsigned int"
.LASF0:
	.string	"long unsigned int"
.LASF37:
	.string	"_IO_write_end"
.LASF13:
	.string	"__off64_t"
.LASF77:
	.string	"FStream"
.LASF45:
	.string	"_fileno"
.LASF44:
	.string	"_chain"
.LASF65:
	.string	"_IO_wide_data"
.LASF58:
	.string	"_mode"
.LASF12:
	.string	"__off_t"
.LASF41:
	.string	"_IO_backup_base"
.LASF66:
	.string	"stdin"
.LASF38:
	.string	"_IO_buf_base"
.LASF46:
	.string	"_flags2"
.LASF64:
	.string	"_IO_codecvt"
.LASF34:
	.string	"_IO_read_base"
.LASF75:
	.string	"pu8Buffer"
.LASF69:
	.string	"sys_nerr"
.LASF49:
	.string	"_vtable_offset"
.LASF83:
	.string	"CloseEepromFiles"
.LASF40:
	.string	"_IO_save_base"
.LASF70:
	.string	"sys_errlist"
.LASF24:
	.string	"optopt"
.LASF90:
	.string	"EApiStorageAreaReadEmul"
.LASF60:
	.string	"FILE"
.LASF32:
	.string	"_IO_read_ptr"
.LASF67:
	.string	"stdout"
.LASF98:
	.string	"_IO_lock_t"
.LASF92:
	.string	"EApiStorageCapEmul"
.LASF96:
	.string	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EApiEmulStorage.c"
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
