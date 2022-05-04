	.cpu cortex-a9
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"interp.c"
	.text
	.hidden	__invoke_dynamic_linker__
	.global	__invoke_dynamic_linker__
	.section	.interp,"a"
	.align	2
	.type	__invoke_dynamic_linker__, %object
	.size	__invoke_dynamic_linker__, 28
__invoke_dynamic_linker__:
	.ascii	"/lib64/ld-linux-x86-64.so.2\000"
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
