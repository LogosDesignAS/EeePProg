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
	.file	"EApiEmulGPIO.c"
	.text
	.align	2
	.global	EApiReadIO32Delay
	.hidden	EApiReadIO32Delay
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiReadIO32Delay, %function
EApiReadIO32Delay:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	movw	r0, #1400
	bl	EApiSleepns(PLT)
	add	r3, r4, #4
	cmp	r3, #16
	bhi	.L3
	ldr	r3, .L6
.LPIC0:
	add	r3, pc, r3
	ldr	r0, [r3, r4]
	pop	{r4, pc}
.L3:
	mov	r0, #0
	pop	{r4, pc}
.L7:
	.align	2
.L6:
	.word	.LANCHOR0-(.LPIC0+8)
	.size	EApiReadIO32Delay, .-EApiReadIO32Delay
	.align	2
	.global	EApiWriteIO32Delay
	.hidden	EApiWriteIO32Delay
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiWriteIO32Delay, %function
EApiWriteIO32Delay:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	movw	r0, #1400
	mov	r5, r1
	bl	EApiSleepns(PLT)
	add	r3, r4, #4
	cmp	r3, #16
	ldrls	r3, .L11
.LPIC1:
	addls	r3, pc, r3
	strls	r5, [r3, r4]
	pop	{r4, r5, r6, pc}
.L12:
	.align	2
.L11:
	.word	.LANCHOR0-(.LPIC1+8)
	.size	EApiWriteIO32Delay, .-EApiWriteIO32Delay
	.align	2
	.global	EApiReadIO32
	.hidden	EApiReadIO32
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiReadIO32, %function
EApiReadIO32:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r3, r0, #4
	cmp	r3, #16
	bhi	.L15
	ldr	r3, .L16
.LPIC2:
	add	r3, pc, r3
	ldr	r0, [r3, r0]
	bx	lr
.L15:
	mov	r0, #0
	bx	lr
.L17:
	.align	2
.L16:
	.word	.LANCHOR0-(.LPIC2+8)
	.size	EApiReadIO32, .-EApiReadIO32
	.align	2
	.global	EApiWriteIO32
	.hidden	EApiWriteIO32
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiWriteIO32, %function
EApiWriteIO32:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r3, r0, #4
	cmp	r3, #16
	ldrls	r3, .L20
.LPIC3:
	addls	r3, pc, r3
	strls	r1, [r3, r0]
	bx	lr
.L21:
	.align	2
.L20:
	.word	.LANCHOR0-(.LPIC3+8)
	.size	EApiWriteIO32, .-EApiWriteIO32
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"EApiGPIOGetLevelEmul\000"
	.align	2
.LC1:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EA"
	.ascii	"piEmulGPIO.c\000"
	.align	2
.LC2:
	.ascii	"Bit-mask Selects Invalid Bits\000"
	.align	2
.LC3:
	.ascii	"%s\012\000"
	.align	2
.LC4:
	.ascii	"EApiGPIOGetLevel\000"
	.align	2
.LC5:
	.ascii	"\000"
	.align	2
.LC6:
	.ascii	"Unrecognised GPIO ID\000"
	.text
	.align	2
	.global	EApiGPIOGetLevelEmul
	.hidden	EApiGPIOGetLevelEmul
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiGPIOGetLevelEmul, %function
EApiGPIOGetLevelEmul:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #65536
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r8, r1
	sub	sp, sp, #16
	mov	r9, r2
	beq	.L37
	cmp	r0, #4
	beq	.L38
	cmp	r0, #5
	beq	.L39
	cmp	r0, #6
	beq	.L40
	cmp	r0, #7
	beq	.L41
	cmp	r0, #0
	beq	.L42
	cmp	r0, #1
	beq	.L43
	cmp	r0, #2
	beq	.L44
	cmp	r0, #3
	moveq	r2, #8
	beq	.L23
	ldr	ip, .L52
	mvn	r6, #768
	ldr	r0, .L52+4
	mov	r3, #348
	ldr	r2, .L52+8
	ldr	r1, .L52+12
.LPIC17:
	add	ip, pc, ip
.LPIC18:
	add	r0, pc, r0
.LPIC15:
	add	r2, pc, r2
.LPIC16:
	add	r1, pc, r1
.L51:
.L29:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r6, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r6
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L37:
	mov	r2, #0
.L23:
	ldr	r3, .L52+16
.LPIC4:
	add	r3, pc, r3
	add	r3, r3, r2, lsl #4
	ldr	r6, [r3, #8]
	ldr	r2, [r3, #12]
	orr	r6, r6, r2
	bics	r6, r8, r6
	bne	.L25
	ldr	r4, [r3, #4]
	ldr	r3, [r4]
	cmn	r3, #1
	movne	r3, r4
	movne	r1, r6
	beq	.L31
.L30:
	ldr	r2, [r3, #4]
	str	r1, [r2]
	ldr	r2, [r3, #8]!
	cmn	r2, #1
	bne	.L30
.L31:
	mov	r3, #0
	str	r3, [r9]
	ldr	r3, [r4]
	cmn	r3, #1
	movne	r5, #1
	addne	r4, r4, #8
	movne	r10, r5
	beq	.L28
.L36:
	tst	r8, r5
	beq	.L33
	ldr	r7, [r4, #-4]
	ldr	r2, [r7]
	cmp	r2, #0
	bne	.L34
	ldr	r3, [r7, #24]
	ldr	r0, [r7, #12]
	blx	r3
	str	r0, [r7, #4]
	ldr	r7, [r4, #-4]
	str	r10, [r7]
	ldr	r3, [r4, #-8]
.L34:
	ldr	r2, [r7, #4]
	tst	r3, r2
	ldrne	r3, [r9]
	orrne	r3, r3, r5
	strne	r3, [r9]
.L33:
	ldr	r3, [r4], #8
	lsl	r5, r5, #1
	cmn	r3, #1
	bne	.L36
.L28:
	ldr	r1, .L52+20
	mov	ip, #0
	ldr	r0, .L52+24
	movw	r3, #345
	ldr	r2, .L52+28
.LPIC14:
	add	r1, pc, r1
	str	ip, [sp]
	str	r1, [sp, #4]
.LPIC13:
	add	r0, pc, r0
	ldr	r1, .L52+32
.LPIC11:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #76
.LPIC12:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r6
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L25:
	ldr	ip, .L52+36
	mvn	r6, #260
	ldr	r0, .L52+40
	mov	r3, #320
	ldr	r2, .L52+44
	ldr	r1, .L52+48
.LPIC9:
	add	ip, pc, ip
.LPIC10:
	add	r0, pc, r0
.LPIC7:
	add	r2, pc, r2
.LPIC8:
	add	r1, pc, r1
	b	.L51
.L38:
	mov	r2, #1
	b	.L23
.L39:
	mov	r2, #2
	b	.L23
.L40:
	mov	r2, #3
	b	.L23
.L41:
	mov	r2, #4
	b	.L23
.L42:
	mov	r2, #5
	b	.L23
.L43:
	mov	r2, #6
	b	.L23
.L44:
	mov	r2, #7
	b	.L23
.L53:
	.align	2
.L52:
	.word	.LC6-(.LPIC17+8)
	.word	.LC3-(.LPIC18+8)
	.word	.LC4-(.LPIC15+8)
	.word	.LC1-(.LPIC16+8)
	.word	.LANCHOR1-(.LPIC4+8)
	.word	.LC3-(.LPIC14+8)
	.word	.LC5-(.LPIC13+8)
	.word	.LC4-(.LPIC11+8)
	.word	.LC1-(.LPIC12+8)
	.word	.LC2-(.LPIC9+8)
	.word	.LC3-(.LPIC10+8)
	.word	.LC0-(.LPIC7+8)
	.word	.LC1-(.LPIC8+8)
	.size	EApiGPIOGetLevelEmul, .-EApiGPIOGetLevelEmul
	.section	.rodata.str1.4
	.align	2
.LC7:
	.ascii	"EApiGPIOSetLevel\000"
	.align	2
.LC8:
	.ascii	"EApiGPIOSetLevelEmul\000"
	.align	2
.LC9:
	.ascii	"Cant Set Level on Pin that is set to input\000"
	.text
	.align	2
	.global	EApiGPIOSetLevelEmul
	.hidden	EApiGPIOSetLevelEmul
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiGPIOSetLevelEmul, %function
EApiGPIOSetLevelEmul:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #65536
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r1
	sub	sp, sp, #20
	mov	r10, r2
	beq	.L70
	cmp	r0, #4
	beq	.L71
	cmp	r0, #5
	beq	.L72
	cmp	r0, #6
	beq	.L73
	cmp	r0, #7
	beq	.L74
	cmp	r0, #0
	beq	.L75
	cmp	r0, #1
	beq	.L76
	cmp	r0, #2
	beq	.L77
	cmp	r0, #3
	moveq	r1, #8
	beq	.L55
	ldr	ip, .L93
	mvn	r8, #768
	ldr	r0, .L93+4
	movw	r3, #423
	ldr	r2, .L93+8
	ldr	r1, .L93+12
.LPIC36:
	add	ip, pc, ip
.LPIC37:
	add	r0, pc, r0
.LPIC34:
	add	r2, pc, r2
.LPIC35:
	add	r1, pc, r1
.L90:
.L59:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r8, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r8
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L70:
	mov	r1, #0
.L55:
	ldr	r3, .L93+16
.LPIC19:
	add	r3, pc, r3
	add	r3, r3, r1, lsl #4
	ldr	r8, [r3, #8]
	ldr	r1, [r3, #12]
	orr	r8, r8, r1
	bics	r8, r7, r8
	bne	.L57
	ldr	r9, [r3, #4]
	ldr	r3, [r9]
	cmn	r3, #1
	movne	fp, r9
	movne	r1, r9
	movne	ip, r8
	beq	.L66
.L60:
	ldr	r0, [r1, #4]
	str	ip, [r0]
	ldr	r0, [r1, #8]!
	cmn	r0, #1
	bne	.L60
	mov	r5, #1
	add	r6, r9, #8
.L65:
	tst	r7, r5
	beq	.L61
	ldr	r4, [r6, #-4]
	ldr	r1, [r4]
	cmp	r1, #0
	bne	.L62
	ldr	r3, [r4, #24]
	ldr	r0, [r4, #12]
	blx	r3
	str	r0, [r4, #4]
	ldr	r4, [r6, #-4]
	ldr	r3, [r4, #24]
	ldr	r0, [r4, #16]
	blx	r3
	str	r0, [r4, #8]
	mov	r3, #1
	ldr	r4, [r6, #-4]
	str	r3, [r4]
	ldr	r3, [r6, #-8]
.L62:
	ldr	r1, [r4, #8]
	tst	r3, r1
	bne	.L91
	ldr	r1, [r4, #4]
	tst	r10, r5
	orrne	r1, r3, r1
	biceq	r1, r1, r3
	str	r1, [r4, #4]
.L61:
	ldr	r3, [r6], #8
	lsl	r5, r5, #1
	cmn	r3, #1
	bne	.L65
	ldr	r3, [r9]
	cmn	r3, #1
	beq	.L66
	mov	r4, #0
.L69:
	ldr	r3, [fp, #4]
	ldr	r2, [r3]
	cmp	r2, #1
	beq	.L92
	ldr	r3, [fp, #8]!
	cmn	r3, #1
	bne	.L69
.L66:
	ldr	r1, .L93+20
	mov	ip, #0
	ldr	r0, .L93+24
	mov	r3, #420
	ldr	r2, .L93+28
.LPIC25:
	add	r1, pc, r1
	str	ip, [sp]
	str	r1, [sp, #4]
.LPIC24:
	add	r0, pc, r0
	ldr	r1, .L93+32
.LPIC22:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #76
.LPIC23:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r8
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L92:
	ldr	r2, [r3, #20]
	ldr	r1, [r3, #4]
	ldr	r0, [r3, #12]
	blx	r2
	ldr	r3, [fp, #4]
	str	r4, [r3]
	ldr	r3, [fp, #8]!
	cmn	r3, #1
	bne	.L69
	b	.L66
.L91:
	ldr	ip, .L93+36
	mvn	r8, #256
	ldr	r0, .L93+40
	movw	r3, #397
	ldr	r2, .L93+44
	ldr	r1, .L93+48
.LPIC32:
	add	ip, pc, ip
.LPIC33:
	add	r0, pc, r0
.LPIC30:
	add	r2, pc, r2
.LPIC31:
	add	r1, pc, r1
	b	.L90
.L71:
	mov	r1, #1
	b	.L55
.L72:
	mov	r1, #2
	b	.L55
.L73:
	mov	r1, #3
	b	.L55
.L74:
	mov	r1, #4
	b	.L55
.L75:
	mov	r1, #5
	b	.L55
.L57:
	ldr	ip, .L93+52
	mvn	r8, #260
	ldr	r0, .L93+56
	mov	r3, #372
	ldr	r2, .L93+60
	ldr	r1, .L93+64
.LPIC28:
	add	ip, pc, ip
.LPIC29:
	add	r0, pc, r0
.LPIC26:
	add	r2, pc, r2
.LPIC27:
	add	r1, pc, r1
	b	.L90
.L76:
	mov	r1, #6
	b	.L55
.L77:
	mov	r1, #7
	b	.L55
.L94:
	.align	2
.L93:
	.word	.LC6-(.LPIC36+8)
	.word	.LC3-(.LPIC37+8)
	.word	.LC7-(.LPIC34+8)
	.word	.LC1-(.LPIC35+8)
	.word	.LANCHOR1-(.LPIC19+8)
	.word	.LC3-(.LPIC25+8)
	.word	.LC5-(.LPIC24+8)
	.word	.LC7-(.LPIC22+8)
	.word	.LC1-(.LPIC23+8)
	.word	.LC9-(.LPIC32+8)
	.word	.LC3-(.LPIC33+8)
	.word	.LC7-(.LPIC30+8)
	.word	.LC1-(.LPIC31+8)
	.word	.LC2-(.LPIC28+8)
	.word	.LC3-(.LPIC29+8)
	.word	.LC8-(.LPIC26+8)
	.word	.LC1-(.LPIC27+8)
	.size	EApiGPIOSetLevelEmul, .-EApiGPIOSetLevelEmul
	.section	.rodata.str1.4
	.align	2
.LC10:
	.ascii	"EApiGPIOGetDirectionEmul\000"
	.align	2
.LC11:
	.ascii	"EApiGPIOGetDirection\000"
	.text
	.align	2
	.global	EApiGPIOGetDirectionEmul
	.hidden	EApiGPIOGetDirectionEmul
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiGPIOGetDirectionEmul, %function
EApiGPIOGetDirectionEmul:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #65536
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r8, r1
	sub	sp, sp, #16
	mov	r9, r2
	beq	.L110
	cmp	r0, #4
	beq	.L111
	cmp	r0, #5
	beq	.L112
	cmp	r0, #6
	beq	.L113
	cmp	r0, #7
	beq	.L114
	cmp	r0, #0
	beq	.L115
	cmp	r0, #1
	beq	.L116
	cmp	r0, #2
	beq	.L117
	cmp	r0, #3
	moveq	r2, #8
	beq	.L96
	ldr	ip, .L125
	mvn	r6, #768
	ldr	r0, .L125+4
	movw	r3, #475
	ldr	r2, .L125+8
	ldr	r1, .L125+12
.LPIC51:
	add	ip, pc, ip
.LPIC52:
	add	r0, pc, r0
.LPIC49:
	add	r2, pc, r2
.LPIC50:
	add	r1, pc, r1
.L124:
.L102:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r6, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r6
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L110:
	mov	r2, #0
.L96:
	ldr	r3, .L125+16
.LPIC38:
	add	r3, pc, r3
	add	r3, r3, r2, lsl #4
	ldr	r6, [r3, #8]
	ldr	r2, [r3, #12]
	orr	r6, r6, r2
	bics	r6, r8, r6
	bne	.L98
	ldr	r4, [r3, #4]
	ldr	r3, [r4]
	cmn	r3, #1
	movne	r3, r4
	movne	r1, r6
	beq	.L104
.L103:
	ldr	r2, [r3, #4]
	str	r1, [r2]
	ldr	r2, [r3, #8]!
	cmn	r2, #1
	bne	.L103
.L104:
	mov	r3, #0
	str	r3, [r9]
	ldr	r3, [r4]
	cmn	r3, #1
	movne	r5, #1
	addne	r4, r4, #8
	movne	r10, r5
	beq	.L101
.L109:
	tst	r8, r5
	beq	.L106
	ldr	r7, [r4, #-4]
	ldr	r2, [r7]
	cmp	r2, #0
	bne	.L107
	ldr	r3, [r7, #24]
	ldr	r0, [r7, #16]
	blx	r3
	str	r0, [r7, #4]
	ldr	r7, [r4, #-4]
	str	r10, [r7]
	ldr	r3, [r4, #-8]
.L107:
	ldr	r2, [r7, #4]
	tst	r3, r2
	ldrne	r3, [r9]
	orrne	r3, r3, r5
	strne	r3, [r9]
.L106:
	ldr	r3, [r4], #8
	lsl	r5, r5, #1
	cmn	r3, #1
	bne	.L109
.L101:
	ldr	r1, .L125+20
	mov	ip, #0
	ldr	r0, .L125+24
	mov	r3, #472
	ldr	r2, .L125+28
.LPIC48:
	add	r1, pc, r1
	str	ip, [sp]
	str	r1, [sp, #4]
.LPIC47:
	add	r0, pc, r0
	ldr	r1, .L125+32
.LPIC45:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #76
.LPIC46:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r6
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L98:
	ldr	ip, .L125+36
	mvn	r6, #260
	ldr	r0, .L125+40
	mov	r3, #448
	ldr	r2, .L125+44
	ldr	r1, .L125+48
.LPIC43:
	add	ip, pc, ip
.LPIC44:
	add	r0, pc, r0
.LPIC41:
	add	r2, pc, r2
.LPIC42:
	add	r1, pc, r1
	b	.L124
.L111:
	mov	r2, #1
	b	.L96
.L112:
	mov	r2, #2
	b	.L96
.L113:
	mov	r2, #3
	b	.L96
.L114:
	mov	r2, #4
	b	.L96
.L115:
	mov	r2, #5
	b	.L96
.L116:
	mov	r2, #6
	b	.L96
.L117:
	mov	r2, #7
	b	.L96
.L126:
	.align	2
.L125:
	.word	.LC6-(.LPIC51+8)
	.word	.LC3-(.LPIC52+8)
	.word	.LC11-(.LPIC49+8)
	.word	.LC1-(.LPIC50+8)
	.word	.LANCHOR1-(.LPIC38+8)
	.word	.LC3-(.LPIC48+8)
	.word	.LC5-(.LPIC47+8)
	.word	.LC11-(.LPIC45+8)
	.word	.LC1-(.LPIC46+8)
	.word	.LC2-(.LPIC43+8)
	.word	.LC3-(.LPIC44+8)
	.word	.LC10-(.LPIC41+8)
	.word	.LC1-(.LPIC42+8)
	.size	EApiGPIOGetDirectionEmul, .-EApiGPIOGetDirectionEmul
	.section	.rodata.str1.4
	.align	2
.LC12:
	.ascii	"EApiGPIOSetDirectionEmul\000"
	.align	2
.LC13:
	.ascii	"Unsupported Input Bits\000"
	.align	2
.LC14:
	.ascii	"EApiGPIOSetDirection\000"
	.align	2
.LC15:
	.ascii	"Unsupported Output Bits\000"
	.text
	.align	2
	.global	EApiGPIOSetDirectionEmul
	.hidden	EApiGPIOSetDirectionEmul
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiGPIOSetDirectionEmul, %function
EApiGPIOSetDirectionEmul:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #65536
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r1
	sub	sp, sp, #20
	mov	fp, r2
	beq	.L144
	cmp	r0, #4
	beq	.L145
	cmp	r0, #5
	beq	.L146
	cmp	r0, #6
	beq	.L147
	cmp	r0, #7
	beq	.L148
	cmp	r0, #0
	beq	.L149
	cmp	r0, #1
	beq	.L150
	cmp	r0, #2
	beq	.L151
	cmp	r0, #3
	moveq	r2, #8
	beq	.L128
	ldr	ip, .L168
	mvn	r7, #768
	ldr	r0, .L168+4
	movw	r3, #553
	ldr	r2, .L168+8
	ldr	r1, .L168+12
.LPIC74:
	add	ip, pc, ip
.LPIC75:
	add	r0, pc, r0
.LPIC72:
	add	r2, pc, r2
.LPIC73:
	add	r1, pc, r1
.L164:
.L131:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r7, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r7
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L144:
	mov	r2, #0
.L128:
	ldr	r3, .L168+16
.LPIC53:
	add	r3, pc, r3
	add	r3, r3, r2, lsl #4
	ldr	r2, [r3, #8]
	ldr	r0, [r3, #12]
	orr	r1, r2, r0
	bics	r1, r6, r1
	bne	.L165
	and	r1, r6, fp
	bics	r1, r1, r0
	bne	.L166
	bic	r7, r6, fp
	bics	r7, r7, r2
	bne	.L133
	ldr	r10, [r3, #4]
	ldr	r3, [r10]
	cmn	r3, #1
	movne	r5, r10
	movne	r1, r10
	movne	ip, r7
	beq	.L140
.L135:
	ldr	r0, [r1, #4]
	str	ip, [r0]
	ldr	r0, [r1, #8]!
	cmn	r0, #1
	bne	.L135
	mov	r4, #1
	add	r9, r10, #8
.L139:
	tst	r6, r4
	beq	.L136
	ldr	r8, [r9, #-4]
	ldr	r1, [r8]
	cmp	r1, #0
	bne	.L137
	ldr	r3, [r8, #24]
	ldr	r0, [r8, #16]
	blx	r3
	str	r0, [r8, #4]
	mov	r3, #1
	ldr	r8, [r9, #-4]
	str	r3, [r8]
	ldr	r3, [r9, #-8]
.L137:
	ldr	r1, [r8, #4]
	tst	fp, r4
	orr	r0, r3, r1
	bic	r1, r1, r3
	strne	r0, [r8, #4]
	streq	r1, [r8, #4]
.L136:
	ldr	r3, [r9], #8
	lsl	r4, r4, #1
	cmn	r3, #1
	bne	.L139
	ldr	r3, [r10]
	cmn	r3, #1
	beq	.L140
	mov	r4, #0
.L143:
	ldr	r3, [r5, #4]
	ldr	r2, [r3]
	cmp	r2, #1
	beq	.L167
	ldr	r3, [r5, #8]!
	cmn	r3, #1
	bne	.L143
.L140:
	ldr	r1, .L168+20
	mov	ip, #0
	ldr	r0, .L168+24
	movw	r3, #550
	ldr	r2, .L168+28
.LPIC67:
	add	r1, pc, r1
	str	ip, [sp]
	str	r1, [sp, #4]
.LPIC66:
	add	r0, pc, r0
	ldr	r1, .L168+32
.LPIC64:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #76
.LPIC65:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r7
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L167:
	ldr	r2, [r3, #20]
	ldr	r1, [r3, #4]
	ldr	r0, [r3, #16]
	blx	r2
	ldr	r3, [r5, #4]
	str	r4, [r3]
	ldr	r3, [r5, #8]!
	cmn	r3, #1
	bne	.L143
	b	.L140
.L133:
	ldr	ip, .L168+36
	movw	r7, #65276
	ldr	r0, .L168+40
	movt	r7, 65535
	ldr	r2, .L168+44
	movw	r3, #511
	ldr	r1, .L168+48
.LPIC70:
	add	ip, pc, ip
.LPIC71:
	add	r0, pc, r0
.LPIC68:
	add	r2, pc, r2
.LPIC69:
	add	r1, pc, r1
	b	.L164
.L145:
	mov	r2, #1
	b	.L128
.L146:
	mov	r2, #2
	b	.L128
.L147:
	mov	r2, #3
	b	.L128
.L148:
	mov	r2, #4
	b	.L128
.L149:
	mov	r2, #5
	b	.L128
.L165:
	ldr	ip, .L168+52
	mvn	r7, #260
	ldr	r0, .L168+56
	movw	r3, #499
	ldr	r2, .L168+60
	ldr	r1, .L168+64
.LPIC57:
	add	ip, pc, ip
.LPIC58:
	add	r0, pc, r0
.LPIC55:
	add	r2, pc, r2
.LPIC56:
	add	r1, pc, r1
	b	.L164
.L150:
	mov	r2, #6
	b	.L128
.L151:
	mov	r2, #7
	b	.L128
.L166:
	ldr	ip, .L168+68
	movw	r7, #65276
	ldr	r0, .L168+72
	movt	r7, 65535
	ldr	r2, .L168+76
	movw	r3, #505
	ldr	r1, .L168+80
.LPIC61:
	add	ip, pc, ip
.LPIC62:
	add	r0, pc, r0
.LPIC59:
	add	r2, pc, r2
.LPIC60:
	add	r1, pc, r1
	b	.L164
.L169:
	.align	2
.L168:
	.word	.LC6-(.LPIC74+8)
	.word	.LC3-(.LPIC75+8)
	.word	.LC14-(.LPIC72+8)
	.word	.LC1-(.LPIC73+8)
	.word	.LANCHOR1-(.LPIC53+8)
	.word	.LC3-(.LPIC67+8)
	.word	.LC5-(.LPIC66+8)
	.word	.LC14-(.LPIC64+8)
	.word	.LC1-(.LPIC65+8)
	.word	.LC15-(.LPIC70+8)
	.word	.LC3-(.LPIC71+8)
	.word	.LC12-(.LPIC68+8)
	.word	.LC1-(.LPIC69+8)
	.word	.LC2-(.LPIC57+8)
	.word	.LC3-(.LPIC58+8)
	.word	.LC12-(.LPIC55+8)
	.word	.LC1-(.LPIC56+8)
	.word	.LC13-(.LPIC61+8)
	.word	.LC3-(.LPIC62+8)
	.word	.LC12-(.LPIC59+8)
	.word	.LC1-(.LPIC60+8)
	.size	EApiGPIOSetDirectionEmul, .-EApiGPIOSetDirectionEmul
	.section	.rodata.str1.4
	.align	2
.LC16:
	.ascii	"EApiGPIOGetDirectionCaps\000"
	.text
	.align	2
	.global	EApiGPIOGetDirectionCapsEmul
	.hidden	EApiGPIOGetDirectionCapsEmul
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiGPIOGetDirectionCapsEmul, %function
EApiGPIOGetDirectionCapsEmul:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #65536
	push	{r4, lr}
	mov	ip, r2
	sub	sp, sp, #16
	beq	.L174
	cmp	r0, #4
	beq	.L175
	cmp	r0, #5
	beq	.L176
	cmp	r0, #6
	beq	.L177
	cmp	r0, #7
	beq	.L178
	cmp	r0, #0
	beq	.L179
	cmp	r0, #1
	beq	.L180
	cmp	r0, #2
	beq	.L181
	cmp	r0, #3
	moveq	r0, #8
	beq	.L171
.L173:
	ldr	ip, .L183
	mvn	r4, #768
	ldr	r0, .L183+4
	movw	r3, #582
	ldr	r2, .L183+8
	ldr	r1, .L183+12
.LPIC84:
	add	ip, pc, ip
.LPIC85:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC82:
	add	r2, pc, r2
.LPIC83:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L174:
	mov	r0, #0
.L171:
	ldr	r3, .L183+16
	mov	r4, #0
	ldr	r2, .L183+20
	str	r4, [sp]
.LPIC76:
	add	r3, pc, r3
	add	r3, r3, r0, lsl #4
.LPIC80:
	add	r2, pc, r2
	str	r2, [sp, #8]
	ldr	r2, .L183+24
	ldr	lr, [r3, #12]
	ldr	r0, [r3, #8]
	movw	r3, #579
.LPIC81:
	add	r2, pc, r2
	str	r2, [sp, #4]
	str	lr, [r1]
	ldr	r2, .L183+28
	ldr	r1, .L183+32
	str	r0, [ip]
	mov	r0, #76
.LPIC78:
	add	r2, pc, r2
.LPIC79:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L175:
	mov	r0, #1
	b	.L171
.L176:
	mov	r0, #2
	b	.L171
.L177:
	mov	r0, #3
	b	.L171
.L178:
	mov	r0, #4
	b	.L171
.L179:
	mov	r0, #5
	b	.L171
.L180:
	mov	r0, #6
	b	.L171
.L181:
	mov	r0, #7
	b	.L171
.L184:
	.align	2
.L183:
	.word	.LC6-(.LPIC84+8)
	.word	.LC3-(.LPIC85+8)
	.word	.LC16-(.LPIC82+8)
	.word	.LC1-(.LPIC83+8)
	.word	.LANCHOR1-(.LPIC76+8)
	.word	.LC5-(.LPIC80+8)
	.word	.LC3-(.LPIC81+8)
	.word	.LC16-(.LPIC78+8)
	.word	.LC1-(.LPIC79+8)
	.size	EApiGPIOGetDirectionCapsEmul, .-EApiGPIOGetDirectionCapsEmul
	.hidden	GPIOIDMapping
	.global	GPIOIDMapping
	.hidden	GpioMappingID8
	.global	GpioMappingID8
	.hidden	GpioMappingID7
	.global	GpioMappingID7
	.hidden	GpioMappingID6
	.global	GpioMappingID6
	.hidden	GpioMappingID5
	.global	GpioMappingID5
	.hidden	GpioMappingID4
	.global	GpioMappingID4
	.hidden	GpioMappingID3
	.global	GpioMappingID3
	.hidden	GpioMappingID2
	.global	GpioMappingID2
	.hidden	GpioMappingID1
	.global	GpioMappingID1
	.hidden	GpioMappingID0
	.global	GpioMappingID0
	.hidden	Port2Desc
	.global	Port2Desc
	.hidden	Port1Desc
	.global	Port1Desc
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	EmulatedIoBlock, %object
	.size	EmulatedIoBlock, 16
EmulatedIoBlock:
	.word	8560640
	.word	8519680
	.word	8560640
	.word	8519680
	.section	.data.rel.local,"aw"
	.align	2
	.type	Port2Desc, %object
	.size	Port2Desc, 28
Port2Desc:
	.word	0
	.word	0
	.word	0
	.word	12
	.word	8
	.word	EApiWriteIO32Delay
	.word	EApiReadIO32Delay
	.type	Port1Desc, %object
	.size	Port1Desc, 28
Port1Desc:
	.word	0
	.word	0
	.word	0
	.word	4
	.word	0
	.word	EApiWriteIO32Delay
	.word	EApiReadIO32Delay
	.section	.data.rel.ro.local,"aw"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	GPIOIDMapping, %object
	.size	GPIOIDMapping, 144
GPIOIDMapping:
	.word	65536
	.word	GpioMappingID0
	.word	240
	.word	15
	.word	4
	.word	GpioMappingID1
	.word	0
	.word	1
	.word	5
	.word	GpioMappingID2
	.word	0
	.word	1
	.word	6
	.word	GpioMappingID3
	.word	0
	.word	1
	.word	7
	.word	GpioMappingID4
	.word	0
	.word	1
	.word	0
	.word	GpioMappingID5
	.word	1
	.word	0
	.word	1
	.word	GpioMappingID6
	.word	1
	.word	0
	.word	2
	.word	GpioMappingID7
	.word	1
	.word	0
	.word	3
	.word	GpioMappingID8
	.word	1
	.word	0
	.type	GpioMappingID8, %object
	.size	GpioMappingID8, 16
GpioMappingID8:
	.word	1
	.word	Port1Desc
	.word	-1
	.word	0
	.type	GpioMappingID7, %object
	.size	GpioMappingID7, 16
GpioMappingID7:
	.word	-2147483648
	.word	Port1Desc
	.word	-1
	.word	0
	.type	GpioMappingID6, %object
	.size	GpioMappingID6, 16
GpioMappingID6:
	.word	64
	.word	Port1Desc
	.word	-1
	.word	0
	.type	GpioMappingID5, %object
	.size	GpioMappingID5, 16
GpioMappingID5:
	.word	16
	.word	Port1Desc
	.word	-1
	.word	0
	.type	GpioMappingID4, %object
	.size	GpioMappingID4, 16
GpioMappingID4:
	.word	131072
	.word	Port1Desc
	.word	-1
	.word	0
	.type	GpioMappingID3, %object
	.size	GpioMappingID3, 16
GpioMappingID3:
	.word	8192
	.word	Port1Desc
	.word	-1
	.word	0
	.type	GpioMappingID2, %object
	.size	GpioMappingID2, 16
GpioMappingID2:
	.word	32768
	.word	Port1Desc
	.word	-1
	.word	0
	.type	GpioMappingID1, %object
	.size	GpioMappingID1, 16
GpioMappingID1:
	.word	8388608
	.word	Port1Desc
	.word	-1
	.word	0
	.type	GpioMappingID0, %object
	.size	GpioMappingID0, 72
GpioMappingID0:
	.word	8388608
	.word	Port1Desc
	.word	32768
	.word	Port1Desc
	.word	8192
	.word	Port1Desc
	.word	131072
	.word	Port1Desc
	.word	16
	.word	Port1Desc
	.word	64
	.word	Port1Desc
	.word	-2147483648
	.word	Port1Desc
	.word	1
	.word	Port1Desc
	.word	-1
	.word	0
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
