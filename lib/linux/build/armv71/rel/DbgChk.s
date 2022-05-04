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
	.file	"DbgChk.c"
	.text
	.align	2
	.global	EApiGetErrorStringA
	.hidden	EApiGetErrorStringA
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiGetErrorStringA, %function
EApiGetErrorStringA:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L9
	mov	r2, #0
	ldr	r3, .L9+4
	str	lr, [sp, #-4]!
	mov	lr, r0
.LPIC1:
	add	ip, pc, ip
	str	r2, [r0]
.LPIC0:
	add	r3, pc, r3
	add	ip, ip, #152
	b	.L4
.L2:
	add	r3, r3, #8
	cmp	r3, ip
	beq	.L8
.L4:
	ldr	r2, [r3]
	cmp	r2, r1
	bne	.L2
	ldr	r3, [r3, #4]
	mov	r0, #0
	str	r3, [lr]
	ldr	pc, [sp], #4
.L8:
	mvn	r0, #3840
	ldr	pc, [sp], #4
.L10:
	.align	2
.L9:
	.word	.LANCHOR0-(.LPIC1+8)
	.word	.LANCHOR0-(.LPIC0+8)
	.size	EApiGetErrorStringA, .-EApiGetErrorStringA
	.align	2
	.global	GetLastOccurance
	.hidden	GetLastOccurance
	.syntax unified
	.arm
	.fpu vfpv3
	.type	GetLastOccurance, %function
GetLastOccurance:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, #0
	bxeq	lr
	add	r2, r0, #1
.L14:
	cmp	r3, #47
	moveq	r0, r2
	beq	.L13
	cmp	r3, #92
	moveq	r0, r2
.L13:
	ldrb	r3, [r2], #1	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L14
	bx	lr
	.size	GetLastOccurance, .-GetLastOccurance
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"%-25s | \000"
	.text
	.align	2
	.global	siFormattedMessage_M2
	.hidden	siFormattedMessage_M2
	.syntax unified
	.arm
	.fpu vfpv3
	.type	siFormattedMessage_M2, %function
siFormattedMessage_M2:
	@ args = 8, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 1
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
	ldr	lr, .L30
	sub	sp, sp, #20
	add	r5, sp, #48
	ldr	ip, .L30+4
.LPIC6:
	add	lr, pc, lr
	ldr	r0, .L30+8
	ldr	r7, [sp, #40]
	ldr	ip, [lr, ip]
	ldr	lr, .L30+12
	ldr	r6, [sp, #44]
	ldr	ip, [ip]
	str	ip, [sp, #12]
	mov	ip, #0
	ldrb	ip, [r1]	@ zero_extendqisi2
.LPIC2:
	add	lr, pc, lr
	str	r5, [sp, #8]
	ldr	r5, [lr, r0]
	cmp	ip, #0
	ldr	r0, [r5]
	beq	.L19
	add	lr, r1, #1
.L21:
	cmp	ip, #47
	moveq	r1, lr
	beq	.L20
	cmp	ip, #92
	moveq	r1, lr
.L20:
	ldrb	ip, [lr], #1	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L21
.L19:
	stm	sp, {r1, r2}
	mov	r2, r4
	ldr	r1, .L30+16
.LPIC3:
	add	r1, pc, r1
	bl	fprintf(PLT)
	ldr	r1, .L30+20
	mov	r2, r7
	mov	r4, r0
	ldr	r0, [r5]
.LPIC4:
	add	r1, pc, r1
	bl	fprintf(PLT)
	ldr	r2, [sp, #8]
	mov	r1, r6
	ldr	r0, [r5]
	bl	vfprintf(PLT)
	ldr	r2, .L30+24
	add	r0, r4, r0
	ldr	r3, .L30+4
.LPIC5:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #12]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L29
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L29:
	bl	__stack_chk_fail(PLT)
.L31:
	.align	2
.L30:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC6+8)
	.word	__stack_chk_guard(GOT)
	.word	OutputStream(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC2+8)
	.word	.LANCHOR1-(.LPIC3+8)
	.word	.LC0-(.LPIC4+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC5+8)
	.size	siFormattedMessage_M2, .-siFormattedMessage_M2
	.section	.rodata.str1.4
	.align	2
.LC1:
	.ascii	"               0x%08X | \000"
	.text
	.align	2
	.global	siFormattedMessage_SC
	.hidden	siFormattedMessage_SC
	.syntax unified
	.arm
	.fpu vfpv3
	.type	siFormattedMessage_SC, %function
siFormattedMessage_SC:
	@ args = 8, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 1
	ldr	ip, .L55
	push	{r4, r5, r6, r7, r8, lr}
	mov	r7, r0
	ldr	r0, .L55+4
	sub	sp, sp, #16
.LPIC15:
	add	ip, pc, ip
	ldr	r4, .L55+8
	ldr	r0, [ip, r0]
	ldr	ip, .L55+12
.LPIC9:
	add	r4, pc, r4
	ldr	r5, [sp, #40]
	ldr	r0, [r0]
	str	r0, [sp, #12]
	mov	r0, #0
	add	r0, sp, #48
	str	r0, [sp, #8]
	add	r4, r4, #152
	ldr	r0, .L55+16
.LPIC7:
	add	ip, pc, ip
	ldr	r6, [sp, #44]
.LPIC8:
	add	r0, pc, r0
	b	.L36
.L33:
	add	ip, ip, #8
	cmp	ip, r4
	beq	.L53
.L36:
	ldr	lr, [ip]
	cmp	r5, lr
	bne	.L33
	ldr	r8, [ip, #4]
	ldr	ip, .L55+20
	ldr	r4, [r0, ip]
	ldrb	ip, [r1]	@ zero_extendqisi2
	ldr	r0, [r4]
	cmp	ip, #0
	beq	.L35
.L34:
	add	lr, r1, #1
.L39:
	cmp	ip, #47
	moveq	r1, lr
	beq	.L38
	cmp	ip, #92
	moveq	r1, lr
.L38:
	ldrb	ip, [lr], #1	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L39
.L35:
	stm	sp, {r1, r2}
	mov	r2, r7
	ldr	r1, .L55+24
.LPIC10:
	add	r1, pc, r1
	bl	fprintf(PLT)
	cmp	r8, #0
	mov	r7, r0
	beq	.L42
	ldr	r1, .L55+28
	mov	r2, r8
	ldr	r0, [r4]
.LPIC12:
	add	r1, pc, r1
	bl	fprintf(PLT)
.L41:
	ldr	r2, [sp, #8]
	mov	r1, r6
	ldr	r0, [r4]
	bl	vfprintf(PLT)
	ldr	r2, .L55+32
	add	r0, r0, r7
	ldr	r3, .L55+4
.LPIC14:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #12]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L54
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L53:
	ldr	ip, .L55+20
	ldr	r4, [r0, ip]
	ldrb	ip, [r1]	@ zero_extendqisi2
	ldr	r0, [r4]
	cmp	ip, #0
	movne	r8, #0
	bne	.L34
	stm	sp, {r1, r2}
	mov	r2, r7
	ldr	r1, .L55+36
.LPIC13:
	add	r1, pc, r1
	bl	fprintf(PLT)
	mov	r7, r0
.L42:
	ldr	r1, .L55+40
	mov	r2, r5
	ldr	r0, [r4]
.LPIC11:
	add	r1, pc, r1
	bl	fprintf(PLT)
	b	.L41
.L54:
	bl	__stack_chk_fail(PLT)
.L56:
	.align	2
.L55:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC15+8)
	.word	__stack_chk_guard(GOT)
	.word	.LANCHOR0-(.LPIC9+8)
	.word	.LANCHOR0-(.LPIC7+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC8+8)
	.word	OutputStream(GOT)
	.word	.LANCHOR1-(.LPIC10+8)
	.word	.LC0-(.LPIC12+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC14+8)
	.word	.LANCHOR1-(.LPIC13+8)
	.word	.LC1-(.LPIC11+8)
	.size	siFormattedMessage_SC, .-siFormattedMessage_SC
	.hidden	cszLogFormat
	.global	cszLogFormat
	.hidden	ErrorLookupA
	.global	ErrorLookupA
	.section	.rodata.str1.4
	.align	2
.LC2:
	.ascii	"NOT_INITIALIZED\000"
	.align	2
.LC3:
	.ascii	"INITIALIZED\000"
	.align	2
.LC4:
	.ascii	"ALLOC_ERROR\000"
	.align	2
.LC5:
	.ascii	"DRIVER_TIMEOUT\000"
	.align	2
.LC6:
	.ascii	"INVALID_PARAMETER\000"
	.align	2
.LC7:
	.ascii	"INVALID_BLOCK_ALIGNMENT\000"
	.align	2
.LC8:
	.ascii	"INVALID_BLOCK_LENGTH\000"
	.align	2
.LC9:
	.ascii	"INVALID_DIRECTION\000"
	.align	2
.LC10:
	.ascii	"INVALID_BITMASK\000"
	.align	2
.LC11:
	.ascii	"RUNNING\000"
	.align	2
.LC12:
	.ascii	"UNSUPPORTED\000"
	.align	2
.LC13:
	.ascii	"NOT_FOUND\000"
	.align	2
.LC14:
	.ascii	"TIMEOUT\000"
	.align	2
.LC15:
	.ascii	"BUSY_COLLISION\000"
	.align	2
.LC16:
	.ascii	"READ_ERROR\000"
	.align	2
.LC17:
	.ascii	"WRITE_ERROR\000"
	.align	2
.LC18:
	.ascii	"MORE_DATA\000"
	.align	2
.LC19:
	.ascii	"ERROR\000"
	.align	2
.LC20:
	.ascii	"SUCCESS\000"
	.section	.rodata
	.align	2
	.set	.LANCHOR1,. + 0
	.type	cszLogFormat, %object
	.size	cszLogFormat, 25
cszLogFormat:
	.ascii	"%c%04i %-15.15s %-30s | \000"
	.section	.data.rel.ro.local,"aw"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	ErrorLookupA, %object
	.size	ErrorLookupA, 152
ErrorLookupA:
	.word	-1
	.word	.LC2
	.word	-2
	.word	.LC3
	.word	-3
	.word	.LC4
	.word	-4
	.word	.LC5
	.word	-257
	.word	.LC6
	.word	-258
	.word	.LC7
	.word	-259
	.word	.LC8
	.word	-260
	.word	.LC9
	.word	-261
	.word	.LC10
	.word	-262
	.word	.LC11
	.word	-769
	.word	.LC12
	.word	-1025
	.word	.LC13
	.word	-1026
	.word	.LC14
	.word	-1027
	.word	.LC15
	.word	-1281
	.word	.LC16
	.word	-1282
	.word	.LC17
	.word	-1537
	.word	.LC18
	.word	-3841
	.word	.LC19
	.word	0
	.word	.LC20
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
