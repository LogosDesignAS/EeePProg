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
	.file	"EApiAHStorage.c"
	.text
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"EApiAHWriteStorage\000"
	.align	2
.LC1:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux/../../common/EApiAHStorage.c\000"
	.align	2
.LC2:
	.ascii	"(pBuffer==NULL)\000"
	.align	2
.LC3:
	.ascii	"%s\012\000"
	.align	2
.LC4:
	.ascii	"(ByteCnt==0)\000"
	.align	2
.LC5:
	.ascii	"((ByteOffset+ByteCnt)>MaxLen)\000"
	.global	__aeabi_uidivmod
	.align	2
.LC6:
	.ascii	"((AdjOffset+AdjLength)>MaxLen)\000"
	.align	2
.LC7:
	.ascii	"Allocating Page Buffer\000"
	.text
	.align	2
	.global	EApiAHWriteStorage
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiAHWriteStorage, %function
EApiAHWriteStorage:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subs	r7, r2, #0
	ldr	r2, .L28
	mov	r5, r3
	sub	sp, sp, #44
	ldr	r3, .L28+4
.LPIC21:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #36]
	mov	r3, #0
	beq	.L21
	cmp	r5, #0
	beq	.L22
	mov	r6, r1
	add	r2, sp, #32
	add	r1, sp, #28
	mov	r8, r0
	bl	EApiStorageCap(PLT)
	subs	r4, r0, #0
	bne	.L1
	ldr	r4, [sp, #28]
	add	r3, r6, r5
	cmp	r3, r4
	bhi	.L23
	ldr	r10, [sp, #32]
	mov	r0, r6
	mov	r1, r10
	bl	__aeabi_uidivmod(PLT)
	subs	fp, r1, #0
	str	fp, [sp, #20]
	beq	.L6
	add	r9, fp, r5
	mov	r1, r10
	mov	r0, r9
	sub	fp, r6, fp
	bl	__aeabi_uidivmod(PLT)
	cmp	r1, #0
	bne	.L12
.L7:
	cmp	r9, r5
	beq	.L8
	add	r3, r9, fp
	cmp	r4, r3
	bcc	.L24
	mov	r0, r9
	bl	malloc(PLT)
	subs	r6, r0, #0
	beq	.L25
	mov	r3, r9
	mov	r2, r6
	mov	r1, fp
	mov	r0, r8
	str	r9, [sp]
	bl	EApiStorageAreaRead(PLT)
	subs	r4, r0, #0
	beq	.L26
	mov	r0, r6
	bl	free(PLT)
.L1:
	ldr	r2, .L28+8
	ldr	r3, .L28+4
.LPIC20:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #36]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L27
	mov	r0, r4
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L6:
	mov	r1, r10
	mov	r0, r5
	bl	__aeabi_uidivmod(PLT)
	cmp	r1, #0
	movne	r9, r5
	movne	fp, r6
	beq	.L8
.L12:
	add	r3, r10, r9
	sub	r9, r3, r1
	b	.L7
.L22:
	ldr	ip, .L28+12
	mvn	r4, #256
	ldr	r0, .L28+16
	mov	r3, #58
	ldr	r2, .L28+20
	ldr	r1, .L28+24
.LPIC6:
	add	ip, pc, ip
.LPIC7:
	add	r0, pc, r0
.LPIC4:
	add	r2, pc, r2
.LPIC5:
	add	r1, pc, r1
.L19:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	b	.L1
.L26:
	ldr	r3, [sp, #20]
	mov	r2, r5
	mov	r1, r7
	add	r0, r6, r3
	bl	memcpy(PLT)
	mov	r3, r9
	mov	r2, r6
	mov	r1, fp
	mov	r0, r8
	bl	EApiStorageAreaWrite(PLT)
	mov	r4, r0
	mov	r0, r6
	bl	free(PLT)
	b	.L1
.L8:
	mov	r3, r5
	mov	r2, r7
	mov	r1, r6
	mov	r0, r8
	bl	EApiStorageAreaWrite(PLT)
	mov	r4, r0
	b	.L1
.L24:
	ldr	ip, .L28+28
	mvn	r4, #3840
	ldr	r0, .L28+32
	mov	r3, #88
	ldr	r2, .L28+36
	ldr	r1, .L28+40
.LPIC14:
	add	ip, pc, ip
.LPIC15:
	add	r0, pc, r0
.LPIC12:
	add	r2, pc, r2
.LPIC13:
	add	r1, pc, r1
	b	.L19
.L23:
	ldr	r1, .L28+44
	mvn	r4, #256
	ldr	r0, .L28+48
	mov	r3, #69
	ldr	r2, .L28+52
.LPIC11:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC10:
	add	r0, pc, r0
	ldr	r1, .L28+56
.LPIC8:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, r3
.LPIC9:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L1
.L21:
	ldr	ip, .L28+60
	mvn	r4, #256
	ldr	r0, .L28+64
	mov	r3, #53
	ldr	r2, .L28+68
	ldr	r1, .L28+72
.LPIC2:
	add	ip, pc, ip
.LPIC3:
	add	r0, pc, r0
.LPIC0:
	add	r2, pc, r2
.LPIC1:
	add	r1, pc, r1
	b	.L19
.L27:
	bl	__stack_chk_fail(PLT)
.L25:
	ldr	ip, .L28+76
	mvn	r4, #2
	ldr	r0, .L28+80
	mov	r3, #94
	ldr	r2, .L28+84
	ldr	r1, .L28+88
.LPIC18:
	add	ip, pc, ip
.LPIC19:
	add	r0, pc, r0
.LPIC16:
	add	r2, pc, r2
.LPIC17:
	add	r1, pc, r1
	b	.L19
.L29:
	.align	2
.L28:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC21+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC20+8)
	.word	.LC4-(.LPIC6+8)
	.word	.LC3-(.LPIC7+8)
	.word	.LC0-(.LPIC4+8)
	.word	.LC1-(.LPIC5+8)
	.word	.LC6-(.LPIC14+8)
	.word	.LC3-(.LPIC15+8)
	.word	.LC0-(.LPIC12+8)
	.word	.LC1-(.LPIC13+8)
	.word	.LC3-(.LPIC11+8)
	.word	.LC5-(.LPIC10+8)
	.word	.LC0-(.LPIC8+8)
	.word	.LC1-(.LPIC9+8)
	.word	.LC2-(.LPIC2+8)
	.word	.LC3-(.LPIC3+8)
	.word	.LC0-(.LPIC0+8)
	.word	.LC1-(.LPIC1+8)
	.word	.LC7-(.LPIC18+8)
	.word	.LC3-(.LPIC19+8)
	.word	.LC0-(.LPIC16+8)
	.word	.LC1-(.LPIC17+8)
	.size	EApiAHWriteStorage, .-EApiAHWriteStorage
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
