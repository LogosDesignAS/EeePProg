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
	.file	"Message.c"
	.text
	.align	2
	.global	EApiMain
	.hidden	EApiMain
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiMain, %function
EApiMain:
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r4, #0
	str	lr, [sp, #-4]!
	mov	r1, #1
	sub	sp, sp, #20
	movw	r0, #991
	mov	r2, #5
	stmib	sp, {r0, r1, r4}
	mov	r3, r4
	ldr	r0, .L4
	str	r2, [sp]
	mov	r2, r4
.LPIC0:
	add	r0, pc, r0
	bl	printf(PLT)
	mov	r0, r4
	bl	exit(PLT)
.L5:
	.align	2
.L4:
	.word	.LANCHOR0-(.LPIC0+8)
	.size	EApiMain, .-EApiMain
	.hidden	Header
	.global	Header
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	Header, %object
	.size	Header, 387
Header:
	.ascii	"\012+----------------------------------------------"
	.ascii	"------------------------------+\012I              C"
	.ascii	"opyright (C) Kontron Embedded Modules GmbH 2009    "
	.ascii	"          I\012+-----------------------------------"
	.ascii	"-----------------------------------------+\012SVers"
	.ascii	"ion=%u.%u\012LVersion=%u.%u.%u\012Manufacturer=PICM"
	.ascii	"G\012MPNPID=PMG\012OFilename=libEApiPMG.so.%u.%u\012"
	.ascii	"Description=Embedded Application Programming Interf"
	.ascii	"ace\012\000"
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
