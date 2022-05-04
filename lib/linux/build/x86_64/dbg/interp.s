	.file	"interp.c"
	.text
.Ltext0:
	.hidden	__invoke_dynamic_linker__
	.globl	__invoke_dynamic_linker__
	.section	.interp,"a"
	.align 16
	.type	__invoke_dynamic_linker__, @object
	.size	__invoke_dynamic_linker__, 28
__invoke_dynamic_linker__:
	.string	"/lib64/ld-linux-x86-64.so.2"
	.text
.Letext0:
	.file 1 "interp.c"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x58
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF2
	.byte	0xc
	.long	.LASF3
	.long	.LASF4
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	0x40
	.long	0x2d
	.uleb128 0x3
	.long	0x32
	.byte	0x1b
	.byte	0
	.uleb128 0x4
	.long	0x1d
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF1
	.uleb128 0x4
	.long	0x39
	.uleb128 0x6
	.long	.LASF5
	.byte	0x1
	.byte	0x29
	.byte	0xc
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	__invoke_dynamic_linker__
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
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF3:
	.string	"interp.c"
.LASF2:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fvisibility=hidden -fPIC -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF4:
	.string	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux"
.LASF5:
	.string	"__invoke_dynamic_linker__"
.LASF0:
	.string	"long unsigned int"
.LASF1:
	.string	"char"
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
