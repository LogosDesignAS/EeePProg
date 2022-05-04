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
	.file	"EApiEmulWDT.c"
	.text
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"EApiWDogGetCapEmul\000"
	.align	2
.LC1:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EA"
	.ascii	"piEmulWDT.c\000"
	.align	2
.LC2:
	.ascii	"\000"
	.align	2
.LC3:
	.ascii	"%s\012\000"
	.text
	.align	2
	.global	EApiWDogGetCapEmul
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiWDogGetCapEmul, %function
EApiWDogGetCapEmul:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L4
	mov	ip, #10176
	push	{r4, lr}
	movt	ip, 9
	sub	sp, sp, #16
	ldr	lr, .L4+4
.LPIC2:
	add	r3, pc, r3
	mov	r4, #0
	str	r3, [sp, #8]
	mov	r3, #79
	str	ip, [r0]
.LPIC3:
	add	lr, pc, lr
	str	ip, [r1]
	mov	r0, #76
	str	ip, [r2]
	ldr	r1, .L4+8
	ldr	r2, .L4+12
	str	lr, [sp, #4]
.LPIC1:
	add	r1, pc, r1
	str	r4, [sp]
.LPIC0:
	add	r2, pc, r2
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L5:
	.align	2
.L4:
	.word	.LC2-(.LPIC2+8)
	.word	.LC3-(.LPIC3+8)
	.word	.LC1-(.LPIC1+8)
	.word	.LC0-(.LPIC0+8)
	.size	EApiWDogGetCapEmul, .-EApiWDogGetCapEmul
	.section	.rodata.str1.4
	.align	2
.LC4:
	.ascii	"EApiWDogStartEmul\000"
	.align	2
.LC5:
	.ascii	"Watchdog alread runing, need to stop before startin"
	.ascii	"g\000"
	.align	2
.LC6:
	.ascii	"(Delay>pMaxDelay)\000"
	.align	2
.LC7:
	.ascii	"(EventTimeout>pMaxEventTimeout)\000"
	.align	2
.LC8:
	.ascii	"(ResetTimeout>pMaxResetTimeout)\000"
	.text
	.align	2
	.global	EApiWDogStartEmul
	.hidden	EApiWDogStartEmul
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiWDogStartEmul, %function
EApiWDogStartEmul:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L18
	push	{r4, lr}
	sub	sp, sp, #16
.LPIC4:
	add	ip, pc, ip
	ldr	r3, [ip]
	cmn	r3, #1
	beq	.L14
	mov	r3, #10176
	movt	r3, 9
	cmp	r0, r3
	bhi	.L15
	cmp	r1, r3
	bhi	.L16
	cmp	r2, r3
	bhi	.L17
.L8:
	ldr	lr, .L18+4
	mov	r4, #0
	ldr	r0, .L18+8
	mvn	r3, #0
	ldr	r2, .L18+12
	ldr	r1, .L18+16
.LPIC24:
	add	lr, pc, lr
	str	r4, [sp]
.LPIC25:
	add	r0, pc, r0
	str	r3, [ip]
	mov	ip, lr
	stmib	sp, {r0, ip}
.LPIC22:
	add	r2, pc, r2
.LPIC23:
	add	r1, pc, r1
	mov	r3, #119
	mov	r0, #76
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L17:
	ldr	ip, .L18+20
	mvn	r4, #256
	ldr	r0, .L18+24
	mov	r3, #113
	ldr	r2, .L18+28
	ldr	r1, .L18+32
.LPIC19:
	add	ip, pc, ip
.LPIC20:
	add	r0, pc, r0
.LPIC17:
	add	r2, pc, r2
.LPIC18:
	add	r1, pc, r1
.L13:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L15:
	ldr	ip, .L18+36
	mvn	r4, #256
	ldr	r0, .L18+40
	mov	r3, #103
	ldr	r2, .L18+44
	ldr	r1, .L18+48
.LPIC11:
	add	ip, pc, ip
.LPIC12:
	add	r0, pc, r0
.LPIC9:
	add	r2, pc, r2
.LPIC10:
	add	r1, pc, r1
	b	.L13
.L16:
	ldr	ip, .L18+52
	mvn	r4, #256
	ldr	r0, .L18+56
	mov	r3, #108
	ldr	r2, .L18+60
	ldr	r1, .L18+64
.LPIC15:
	add	ip, pc, ip
.LPIC16:
	add	r0, pc, r0
.LPIC13:
	add	r2, pc, r2
.LPIC14:
	add	r1, pc, r1
	b	.L13
.L14:
	ldr	ip, .L18+68
	movw	r4, #65274
	ldr	r0, .L18+72
	movt	r4, 65535
	ldr	r2, .L18+76
	mov	r3, #97
	ldr	r1, .L18+80
.LPIC7:
	add	ip, pc, ip
.LPIC8:
	add	r0, pc, r0
.LPIC5:
	add	r2, pc, r2
.LPIC6:
	add	r1, pc, r1
	b	.L13
.L19:
	.align	2
.L18:
	.word	.LANCHOR0-(.LPIC4+8)
	.word	.LC2-(.LPIC24+8)
	.word	.LC3-(.LPIC25+8)
	.word	.LC4-(.LPIC22+8)
	.word	.LC1-(.LPIC23+8)
	.word	.LC8-(.LPIC19+8)
	.word	.LC3-(.LPIC20+8)
	.word	.LC4-(.LPIC17+8)
	.word	.LC1-(.LPIC18+8)
	.word	.LC6-(.LPIC11+8)
	.word	.LC3-(.LPIC12+8)
	.word	.LC4-(.LPIC9+8)
	.word	.LC1-(.LPIC10+8)
	.word	.LC7-(.LPIC15+8)
	.word	.LC3-(.LPIC16+8)
	.word	.LC4-(.LPIC13+8)
	.word	.LC1-(.LPIC14+8)
	.word	.LC5-(.LPIC7+8)
	.word	.LC3-(.LPIC8+8)
	.word	.LC4-(.LPIC5+8)
	.word	.LC1-(.LPIC6+8)
	.size	EApiWDogStartEmul, .-EApiWDogStartEmul
	.section	.rodata.str1.4
	.align	2
.LC9:
	.ascii	"EApiWDogTriggerEmul\000"
	.align	2
.LC10:
	.ascii	"Watchdog Disabled therefore not possible to trigger"
	.ascii	"\000"
	.text
	.align	2
	.global	EApiWDogTriggerEmul
	.hidden	EApiWDogTriggerEmul
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiWDogTriggerEmul, %function
EApiWDogTriggerEmul:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L25
	push	{r4, lr}
	sub	sp, sp, #16
.LPIC26:
	add	r3, pc, r3
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L24
.L22:
	ldr	ip, .L25+4
	mov	r4, #0
	ldr	r0, .L25+8
	mov	r3, #135
	ldr	r2, .L25+12
	ldr	r1, .L25+16
.LPIC33:
	add	ip, pc, ip
.LPIC34:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC31:
	add	r2, pc, r2
.LPIC32:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L24:
	ldr	ip, .L25+20
	mvn	r4, #3840
	ldr	r0, .L25+24
	mov	r3, #128
	ldr	r2, .L25+28
	ldr	r1, .L25+32
.LPIC29:
	add	ip, pc, ip
.LPIC30:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC27:
	add	r2, pc, r2
.LPIC28:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L26:
	.align	2
.L25:
	.word	.LANCHOR0-(.LPIC26+8)
	.word	.LC2-(.LPIC33+8)
	.word	.LC3-(.LPIC34+8)
	.word	.LC9-(.LPIC31+8)
	.word	.LC1-(.LPIC32+8)
	.word	.LC10-(.LPIC29+8)
	.word	.LC3-(.LPIC30+8)
	.word	.LC9-(.LPIC27+8)
	.word	.LC1-(.LPIC28+8)
	.size	EApiWDogTriggerEmul, .-EApiWDogTriggerEmul
	.section	.rodata.str1.4
	.align	2
.LC11:
	.ascii	"EApiWDogStopEmul\000"
	.text
	.align	2
	.global	EApiWDogStopEmul
	.hidden	EApiWDogStopEmul
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiWDogStopEmul, %function
EApiWDogStopEmul:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L29
	mov	r3, #148
	ldr	r1, .L29+4
	push	{r4, lr}
	sub	sp, sp, #16
.LPIC38:
	add	ip, pc, ip
	ldr	r0, .L29+8
.LPIC39:
	add	r1, pc, r1
	mov	r4, #0
	stmib	sp, {r1, ip}
	ldr	r2, .L29+12
.LPIC35:
	add	r0, pc, r0
	ldr	r1, .L29+16
	str	r4, [sp]
.LPIC36:
	add	r2, pc, r2
	str	r4, [r0]
.LPIC37:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L30:
	.align	2
.L29:
	.word	.LC2-(.LPIC38+8)
	.word	.LC3-(.LPIC39+8)
	.word	.LANCHOR0-(.LPIC35+8)
	.word	.LC11-(.LPIC36+8)
	.word	.LC1-(.LPIC37+8)
	.size	EApiWDogStopEmul, .-EApiWDogStopEmul
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	WatchdogState, %object
	.size	WatchdogState, 4
WatchdogState:
	.space	4
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
