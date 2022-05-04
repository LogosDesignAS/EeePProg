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
	.file	"EApiEmulBoardInfo.c"
	.text
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"COMExpress\000"
	.align	2
.LC1:
	.ascii	"PICMG\000"
	.align	2
.LC2:
	.ascii	"SAMPLE API\000"
	.align	2
.LC3:
	.ascii	"Sample Serial Number\000"
	.align	2
.LC4:
	.ascii	"PICMGR2.0\000"
	.align	2
.LC5:
	.ascii	"EApiBoardGetStringAEmul\000"
	.align	2
.LC6:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EA"
	.ascii	"piEmulBoardInfo.c\000"
	.align	2
.LC7:
	.ascii	"Unrecognised String ID\000"
	.align	2
.LC8:
	.ascii	"%s\012\000"
	.align	2
.LC9:
	.ascii	"pBuffer Overrun Prevented\000"
	.align	2
.LC10:
	.ascii	"\000"
	.text
	.align	2
	.global	EApiBoardGetStringAEmul
	.hidden	EApiBoardGetStringAEmul
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiBoardGetStringAEmul, %function
EApiBoardGetStringAEmul:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0
	push	{r4, r5, lr}
	mov	r3, r1
	ldr	r4, [r2]
	sub	sp, sp, #20
	beq	.L10
	cmp	r0, #1
	beq	.L11
	cmp	r0, #3
	beq	.L12
	cmp	r0, #4
	beq	.L13
	cmp	r0, #6
	beq	.L14
	ldr	ip, .L21
	mvn	r4, #768
	ldr	r0, .L21+4
	mov	r3, #121
	ldr	r2, .L21+8
	ldr	r1, .L21+12
.LPIC7:
	add	ip, pc, ip
.LPIC8:
	add	r0, pc, r0
.LPIC5:
	add	r2, pc, r2
.LPIC6:
	add	r1, pc, r1
.L17:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, pc}
.L10:
	ldr	r1, .L21+16
	mov	r0, #6
	mov	r5, #5
.LPIC1:
	add	r1, pc, r1
.L2:
	cmp	r4, r0
	str	r0, [r2]
	bcs	.L19
	cmp	r3, #0
	cmpne	r4, #0
	beq	.L7
	mov	r2, r4
	mov	r0, r3
	bl	memcpy(PLT)
	mov	r2, #0
	add	r3, r0, r4
	strb	r2, [r3, #-1]
.L7:
	ldr	ip, .L21+20
	mvn	r4, #1536
	ldr	r0, .L21+24
	mov	r3, #109
	ldr	r2, .L21+28
	ldr	r1, .L21+32
.LPIC11:
	add	ip, pc, ip
.LPIC12:
	add	r0, pc, r0
.LPIC9:
	add	r2, pc, r2
.LPIC10:
	add	r1, pc, r1
	b	.L17
.L19:
	cmp	r3, #0
	bne	.L20
.L9:
.L3:
	ldr	ip, .L21+36
	mov	r4, #0
	ldr	r0, .L21+40
	mov	r3, #115
	ldr	r2, .L21+44
	ldr	r1, .L21+48
.LPIC15:
	add	ip, pc, ip
.LPIC16:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC13:
	add	r2, pc, r2
.LPIC14:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, pc}
.L11:
	ldr	r1, .L21+52
	mov	r0, #11
	mov	r5, #10
.LPIC2:
	add	r1, pc, r1
	b	.L2
.L12:
	ldr	r1, .L21+56
	mov	r0, #21
	mov	r5, #20
.LPIC3:
	add	r1, pc, r1
	b	.L2
.L13:
	ldr	r1, .L21+60
	mov	r0, #10
	mov	r5, #9
.LPIC4:
	add	r1, pc, r1
	b	.L2
.L14:
	ldr	r1, .L21+64
	mov	r0, #11
	mov	r5, #10
.LPIC0:
	add	r1, pc, r1
	b	.L2
.L20:
	mov	r2, r0
	mov	r0, r3
	bl	memcpy(PLT)
	mov	r2, #0
	strb	r2, [r0, r5]
	b	.L9
.L22:
	.align	2
.L21:
	.word	.LC7-(.LPIC7+8)
	.word	.LC8-(.LPIC8+8)
	.word	.LC5-(.LPIC5+8)
	.word	.LC6-(.LPIC6+8)
	.word	.LC1-(.LPIC1+8)
	.word	.LC9-(.LPIC11+8)
	.word	.LC8-(.LPIC12+8)
	.word	.LC5-(.LPIC9+8)
	.word	.LC6-(.LPIC10+8)
	.word	.LC10-(.LPIC15+8)
	.word	.LC8-(.LPIC16+8)
	.word	.LC5-(.LPIC13+8)
	.word	.LC6-(.LPIC14+8)
	.word	.LC2-(.LPIC2+8)
	.word	.LC3-(.LPIC3+8)
	.word	.LC4-(.LPIC4+8)
	.word	.LC0-(.LPIC0+8)
	.size	EApiBoardGetStringAEmul, .-EApiBoardGetStringAEmul
	.section	.rodata.str1.4
	.align	2
.LC11:
	.ascii	"EApiBoardGetValueEmul\000"
	.align	2
.LC12:
	.ascii	"Unrecognised Value ID\000"
	.text
	.align	2
	.global	EApiBoardGetValueEmul
	.hidden	EApiBoardGetValueEmul
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiBoardGetValueEmul, %function
EApiBoardGetValueEmul:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L30
	mov	r3, #0
	push	{r4, lr}
	mov	lr, r1
	sub	sp, sp, #16
.LPIC17:
	add	ip, pc, ip
.L26:
	ldr	r2, [ip, r3, lsl #3]
	cmp	r2, r0
	beq	.L29
	add	r3, r3, #1
	cmp	r3, #18
	bne	.L26
.L25:
	ldr	ip, .L30+4
	mvn	r4, #768
	ldr	r0, .L30+8
	mov	r3, #195
	ldr	r2, .L30+12
	ldr	r1, .L30+16
.LPIC25:
	add	ip, pc, ip
.LPIC26:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC23:
	add	r2, pc, r2
.LPIC24:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L29:
	ldr	r2, .L30+20
	add	ip, ip, r3, lsl #3
	ldr	r3, .L30+24
	mov	r4, #0
	ldr	r0, [ip, #4]
.LPIC21:
	add	r2, pc, r2
	ldr	r1, .L30+28
	str	r2, [sp, #8]
.LPIC22:
	add	r3, pc, r3
	ldr	r2, .L30+32
	str	r3, [sp, #4]
.LPIC20:
	add	r1, pc, r1
	str	r4, [sp]
	mov	r3, #192
	str	r0, [lr]
.LPIC19:
	add	r2, pc, r2
	mov	r0, #76
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L31:
	.align	2
.L30:
	.word	.LANCHOR0-(.LPIC17+8)
	.word	.LC12-(.LPIC25+8)
	.word	.LC8-(.LPIC26+8)
	.word	.LC11-(.LPIC23+8)
	.word	.LC6-(.LPIC24+8)
	.word	.LC10-(.LPIC21+8)
	.word	.LC8-(.LPIC22+8)
	.word	.LC6-(.LPIC20+8)
	.word	.LC11-(.LPIC19+8)
	.size	EApiBoardGetValueEmul, .-EApiBoardGetValueEmul
	.hidden	ValueLookup
	.global	ValueLookup
	.hidden	StringLookup
	.global	StringLookup
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
	.type	ValueLookup, %object
	.size	ValueLookup, 144
ValueLookup:
	.word	1
	.word	16
	.word	2
	.word	65536
	.word	3
	.word	42817
	.word	4
	.word	33554432
	.word	65536
	.word	0
	.word	65537
	.word	328671
	.word	131072
	.word	3732
	.word	131073
	.word	3193
	.word	131074
	.word	2278
	.word	135172
	.word	1300
	.word	135176
	.word	2500
	.word	135180
	.word	3300
	.word	135184
	.word	3000
	.word	135188
	.word	5000
	.word	135192
	.word	5000
	.word	135196
	.word	12000
	.word	139264
	.word	5000
	.word	139265
	.word	2500
	.section	.data.rel.ro.local,"aw"
	.align	2
	.type	StringLookup, %object
	.size	StringLookup, 40
StringLookup:
	.word	0
	.word	.LC1
	.word	1
	.word	.LC2
	.word	3
	.word	.LC3
	.word	4
	.word	.LC4
	.word	6
	.word	.LC0
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
