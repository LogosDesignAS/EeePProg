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
	.file	"EApiOsNIX.c"
	.text
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"initializing\000"
	.section	.text.startup,"ax",%progbits
	.align	2
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	init, %function
init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L3
.LPIC0:
	add	r0, pc, r0
	b	puts(PLT)
.L4:
	.align	2
.L3:
	.word	.LC0-(.LPIC0+8)
	.size	init, .-init
	.section	.init_array,"aw",%init_array
	.align	2
	.word	init(target1)
	.section	.rodata.str1.4
	.align	2
.LC1:
	.ascii	"finishing\000"
	.section	.text.exit,"ax",%progbits
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3
	.type	fini, %function
fini:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L6
.LPIC1:
	add	r0, pc, r0
	b	puts(PLT)
.L7:
	.align	2
.L6:
	.word	.LC1-(.LPIC1+8)
	.size	fini, .-fini
	.section	.fini_array,"aw",%fini_array
	.align	2
	.word	fini(target1)
	.text
	.align	2
	.global	EApiSleepns
	.hidden	EApiSleepns
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiSleepns, %function
EApiSleepns:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #56963
	movt	r3, 17179
	umull	r3, r0, r3, r0
	lsr	r0, r0, #18
	b	usleep(PLT)
	.size	EApiSleepns, .-EApiSleepns
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
