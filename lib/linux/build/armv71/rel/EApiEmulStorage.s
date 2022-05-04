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
	.file	"EApiEmulStorage.c"
	.text
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"EApiStorageCapEmul\000"
	.align	2
.LC1:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EA"
	.ascii	"piEmulStorage.c\000"
	.align	2
.LC2:
	.ascii	"Unrecognised Storage ID\000"
	.align	2
.LC3:
	.ascii	"%s\012\000"
	.align	2
.LC4:
	.ascii	"EApiStorageCap\000"
	.align	2
.LC5:
	.ascii	"\000"
	.text
	.align	2
	.global	EApiStorageCapEmul
	.hidden	EApiStorageCapEmul
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiStorageCapEmul, %function
EApiStorageCapEmul:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L8
	push	{r4, lr}
	mov	lr, r2
	sub	sp, sp, #16
.LPIC2:
	add	r3, pc, r3
	ldr	ip, [r3]
	cmp	r0, ip
	beq	.L2
	ldr	r2, [r3, #24]
	cmp	r0, r2
	beq	.L5
	ldr	ip, .L8+4
	mvn	r4, #768
	ldr	r0, .L8+8
	mov	r3, #105
	ldr	r2, .L8+12
	ldr	r1, .L8+16
.LPIC6:
	add	ip, pc, ip
.LPIC7:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC4:
	add	r2, pc, r2
.LPIC5:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
.L1:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L5:
	add	r3, r3, #24
.L2:
.L3:
	ldr	r2, [r3, #4]
	mov	r4, #0
	ldr	r0, .L8+20
	str	r2, [r1]
	ldr	r2, .L8+24
.LPIC10:
	add	r0, pc, r0
	ldr	ip, [r3, #8]
	mov	r3, #102
	ldr	r1, .L8+28
.LPIC11:
	add	r2, pc, r2
	str	r0, [sp, #8]
	str	r2, [sp, #4]
	mov	r0, #76
	ldr	r2, .L8+32
.LPIC9:
	add	r1, pc, r1
	str	r4, [sp]
	str	ip, [lr]
.LPIC8:
	add	r2, pc, r2
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L1
.L9:
	.align	2
.L8:
	.word	.LANCHOR0-(.LPIC2+8)
	.word	.LC2-(.LPIC6+8)
	.word	.LC3-(.LPIC7+8)
	.word	.LC0-(.LPIC4+8)
	.word	.LC1-(.LPIC5+8)
	.word	.LC5-(.LPIC10+8)
	.word	.LC3-(.LPIC11+8)
	.word	.LC1-(.LPIC9+8)
	.word	.LC4-(.LPIC8+8)
	.size	EApiStorageCapEmul, .-EApiStorageCapEmul
	.section	.rodata.str1.4
	.align	2
.LC6:
	.ascii	"EApiStorageAreaReadEmul\000"
	.align	2
.LC7:
	.ascii	"Read Len extends beyond End of Storage Area\000"
	.align	2
.LC8:
	.ascii	"EApiStorageAreaRead\000"
	.text
	.align	2
	.global	EApiStorageAreaReadEmul
	.hidden	EApiStorageAreaReadEmul
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiStorageAreaReadEmul, %function
EApiStorageAreaReadEmul:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L19
	push	{r4, r5, r6, lr}
	mov	r6, r2
	sub	sp, sp, #16
	mov	r5, r3
.LPIC14:
	add	ip, pc, ip
	ldr	lr, [ip]
	cmp	r0, lr
	beq	.L14
	ldr	r3, [ip, #24]
	cmp	r0, r3
	beq	.L15
	ldr	ip, .L19+4
	mvn	r4, #768
	ldr	r0, .L19+8
	mov	r3, #152
	ldr	r2, .L19+12
	ldr	r1, .L19+16
.LPIC18:
	add	ip, pc, ip
.LPIC19:
	add	r0, pc, r0
.LPIC16:
	add	r2, pc, r2
.LPIC17:
	add	r1, pc, r1
.L17:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
.L10:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, pc}
.L14:
	mov	r4, ip
.L11:
	ldr	r2, [r4, #4]
	add	r3, r1, r5
	cmp	r3, r2
	bhi	.L18
.L12:
	ldr	r0, [r4, #20]
	mov	r2, #0
	bl	fseek(PLT)
	ldr	r3, [r4, #20]
	mov	r2, r5
	mov	r1, #1
	mov	r0, r6
	bl	fread(PLT)
	ldr	ip, .L19+20
	mov	r4, #0
	ldr	r0, .L19+24
	mov	r3, #149
	ldr	r2, .L19+28
	ldr	r1, .L19+32
.LPIC26:
	add	ip, pc, ip
.LPIC27:
	add	r0, pc, r0
	str	ip, [sp, #8]
	str	r0, [sp, #4]
.LPIC24:
	add	r2, pc, r2
.LPIC25:
	add	r1, pc, r1
	mov	r0, #76
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	b	.L10
.L15:
	add	r4, ip, #24
	b	.L11
.L18:
	ldr	ip, .L19+36
	movw	r4, #65277
	ldr	r0, .L19+40
	movt	r4, 65535
	ldr	r2, .L19+44
	mov	r3, #134
	ldr	r1, .L19+48
.LPIC22:
	add	ip, pc, ip
.LPIC23:
	add	r0, pc, r0
.LPIC20:
	add	r2, pc, r2
.LPIC21:
	add	r1, pc, r1
	b	.L17
.L20:
	.align	2
.L19:
	.word	.LANCHOR0-(.LPIC14+8)
	.word	.LC2-(.LPIC18+8)
	.word	.LC3-(.LPIC19+8)
	.word	.LC6-(.LPIC16+8)
	.word	.LC1-(.LPIC17+8)
	.word	.LC5-(.LPIC26+8)
	.word	.LC3-(.LPIC27+8)
	.word	.LC8-(.LPIC24+8)
	.word	.LC1-(.LPIC25+8)
	.word	.LC7-(.LPIC22+8)
	.word	.LC3-(.LPIC23+8)
	.word	.LC6-(.LPIC20+8)
	.word	.LC1-(.LPIC21+8)
	.size	EApiStorageAreaReadEmul, .-EApiStorageAreaReadEmul
	.section	.rodata.str1.4
	.align	2
.LC9:
	.ascii	"EApiStorageAreaWrite\000"
	.global	__aeabi_uidivmod
	.align	2
.LC10:
	.ascii	"EApiStorageAreaWriteEmul\000"
	.align	2
.LC11:
	.ascii	"Write length Not Aligned\000"
	.align	2
.LC12:
	.ascii	"Write Base Address Not Aligned\000"
	.align	2
.LC13:
	.ascii	"Write Len extends beyond End of Storage Area\000"
	.text
	.align	2
	.global	EApiStorageAreaWriteEmul
	.hidden	EApiStorageAreaWriteEmul
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiStorageAreaWriteEmul, %function
EApiStorageAreaWriteEmul:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L34
	push	{r4, r5, r6, r7, r8, lr}
	mov	r6, r1
	sub	sp, sp, #16
	mov	r7, r2
.LPIC30:
	add	ip, pc, ip
	mov	r5, r3
	ldr	lr, [ip]
	cmp	r0, lr
	beq	.L27
	ldr	r3, [ip, #24]
	cmp	r0, r3
	beq	.L28
	ldr	lr, .L34+4
	mvn	r4, #768
	ldr	ip, .L34+8
	mov	r3, #209
	ldr	r2, .L34+12
	mov	r0, #69
	ldr	r1, .L34+16
.LPIC34:
	add	lr, pc, lr
.LPIC35:
	add	ip, pc, ip
	str	r4, [sp]
.LPIC32:
	add	r2, pc, r2
	stmib	sp, {ip, lr}
.LPIC33:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
.L21:
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L27:
	mov	r8, ip
.L22:
	ldr	r4, [r8, #8]
	mov	r0, r5
	mov	r1, r4
	bl	__aeabi_uidivmod(PLT)
	cmp	r1, #0
	bne	.L31
	mov	r1, r4
	mov	r0, r6
	bl	__aeabi_uidivmod(PLT)
	subs	r4, r1, #0
	bne	.L32
	ldr	r3, [r8, #4]
	add	r2, r5, r6
	cmp	r2, r3
	bhi	.L33
.L23:
	mov	r1, r6
	mov	r2, r4
	ldr	r0, [r8, #20]
	bl	fseek(PLT)
	ldr	r3, [r8, #20]
	mov	r2, r5
	mov	r1, #1
	mov	r0, r7
	bl	fwrite(PLT)
	ldr	ip, .L34+20
	mov	r3, #206
	ldr	r0, .L34+24
	ldr	r2, .L34+28
	ldr	r1, .L34+32
.LPIC50:
	add	ip, pc, ip
.LPIC51:
	add	r0, pc, r0
	str	ip, [sp, #8]
	str	r0, [sp, #4]
.LPIC48:
	add	r2, pc, r2
.LPIC49:
	add	r1, pc, r1
	str	r4, [sp]
	mov	r0, #76
	bl	siFormattedMessage_SC(PLT)
	b	.L21
.L28:
	add	r8, ip, #24
	b	.L22
.L33:
	ldr	ip, .L34+36
	movw	r4, #65277
	ldr	r0, .L34+40
	movt	r4, 65535
	ldr	r2, .L34+44
	mov	r3, #193
	ldr	r1, .L34+48
.LPIC46:
	add	ip, pc, ip
.LPIC47:
	add	r0, pc, r0
.LPIC44:
	add	r2, pc, r2
.LPIC45:
	add	r1, pc, r1
.L30:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	b	.L21
.L31:
	ldr	ip, .L34+52
	movw	r4, #65278
	ldr	r0, .L34+56
	movt	r4, 65535
	ldr	r2, .L34+60
	mov	r3, #181
	ldr	r1, .L34+64
.LPIC38:
	add	ip, pc, ip
.LPIC39:
	add	r0, pc, r0
.LPIC36:
	add	r2, pc, r2
.LPIC37:
	add	r1, pc, r1
	b	.L30
.L32:
	ldr	ip, .L34+68
	movw	r4, #65278
	ldr	r0, .L34+72
	movt	r4, 65535
	ldr	r2, .L34+76
	mov	r3, #187
	ldr	r1, .L34+80
.LPIC42:
	add	ip, pc, ip
.LPIC43:
	add	r0, pc, r0
.LPIC40:
	add	r2, pc, r2
.LPIC41:
	add	r1, pc, r1
	b	.L30
.L35:
	.align	2
.L34:
	.word	.LANCHOR0-(.LPIC30+8)
	.word	.LC2-(.LPIC34+8)
	.word	.LC3-(.LPIC35+8)
	.word	.LC9-(.LPIC32+8)
	.word	.LC1-(.LPIC33+8)
	.word	.LC5-(.LPIC50+8)
	.word	.LC3-(.LPIC51+8)
	.word	.LC10-(.LPIC48+8)
	.word	.LC1-(.LPIC49+8)
	.word	.LC13-(.LPIC46+8)
	.word	.LC3-(.LPIC47+8)
	.word	.LC10-(.LPIC44+8)
	.word	.LC1-(.LPIC45+8)
	.word	.LC11-(.LPIC38+8)
	.word	.LC3-(.LPIC39+8)
	.word	.LC10-(.LPIC36+8)
	.word	.LC1-(.LPIC37+8)
	.word	.LC12-(.LPIC42+8)
	.word	.LC3-(.LPIC43+8)
	.word	.LC10-(.LPIC40+8)
	.word	.LC1-(.LPIC41+8)
	.size	EApiStorageAreaWriteEmul, .-EApiStorageAreaWriteEmul
	.section	.rodata.str1.4
	.align	2
.LC14:
	.ascii	"rb+\000"
	.align	2
.LC15:
	.ascii	"wb+\000"
	.text
	.align	2
	.global	OpenEepromFiles
	.hidden	OpenEepromFiles
	.syntax unified
	.arm
	.fpu vfpv3
	.type	OpenEepromFiles, %function
OpenEepromFiles:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, #2
	ldr	r4, .L45
	ldr	r6, .L45+4
	ldr	r7, .L45+8
.LPIC52:
	add	r4, pc, r4
.LPIC53:
	add	r6, pc, r6
.LPIC54:
	add	r7, pc, r7
.L40:
	ldr	r0, [r4, #16]
	mov	r1, r6
	bl	fopen(PLT)
	cmp	r0, #0
	str	r0, [r4, #20]
	beq	.L43
.L37:
	mov	r2, #2
	mov	r1, #0
	bl	fseek(PLT)
	ldr	r0, [r4, #20]
	bl	ftell(PLT)
	ldr	r3, [r4, #4]
	cmp	r0, r3
	blt	.L44
.L38:
	cmp	r5, #1
	add	r4, r4, #24
	mov	r5, #1
	bne	.L40
	mov	r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.L43:
	ldr	r0, [r4, #16]
	mov	r1, r7
	bl	fopen(PLT)
	cmp	r0, #0
	str	r0, [r4, #20]
	beq	.L38
	b	.L37
.L44:
	ldr	r0, [r4, #20]
	bl	rewind(PLT)
	ldr	r3, [r4, #20]
	mov	r1, #1
	ldr	r2, [r4, #4]
	ldr	r0, [r4, #12]
	bl	fwrite(PLT)
	b	.L38
.L46:
	.align	2
.L45:
	.word	.LANCHOR0-(.LPIC52+8)
	.word	.LC14-(.LPIC53+8)
	.word	.LC15-(.LPIC54+8)
	.size	OpenEepromFiles, .-OpenEepromFiles
	.align	2
	.global	CloseEepromFiles
	.hidden	CloseEepromFiles
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CloseEepromFiles, %function
CloseEepromFiles:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L57
.LPIC55:
	add	r4, pc, r4
	ldr	r0, [r4, #20]
	cmp	r0, #0
	beq	.L48
	bl	fclose(PLT)
	mov	r3, #0
	str	r3, [r4, #20]
.L48:
	ldr	r4, .L57+4
.LPIC57:
	add	r4, pc, r4
	ldr	r0, [r4, #44]
	cmp	r0, #0
	beq	.L49
	bl	fclose(PLT)
	mov	r3, #0
	str	r3, [r4, #44]
.L49:
	mov	r0, #0
	pop	{r4, pc}
.L58:
	.align	2
.L57:
	.word	.LANCHOR0-(.LPIC55+8)
	.word	.LANCHOR0-(.LPIC57+8)
	.size	CloseEepromFiles, .-CloseEepromFiles
	.hidden	StorageAreaTbl
	.global	StorageAreaTbl
	.section	.rodata.str1.4
	.align	2
.LC16:
	.ascii	"EApiStorage0.EMUL\000"
	.align	2
.LC17:
	.ascii	"EApiStorage1.EMUL\000"
	.bss
	.align	2
	.type	StorageID1, %object
	.size	StorageID1, 4096
StorageID1:
	.space	4096
	.type	StorageID0, %object
	.size	StorageID0, 32
StorageID0:
	.space	32
	.section	.data.rel.local,"aw"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	StorageAreaTbl, %object
	.size	StorageAreaTbl, 48
StorageAreaTbl:
	.word	0
	.word	32
	.word	1
	.word	StorageID0
	.word	.LC16
	.word	0
	.word	-93057024
	.word	4096
	.word	1024
	.word	StorageID1
	.word	.LC17
	.word	0
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
