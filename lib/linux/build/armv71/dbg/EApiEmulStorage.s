	.cpu cortex-a9
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"EApiEmulStorage.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.local	StorageID0
	.comm	StorageID0,32,4
	.local	StorageID1
	.comm	StorageID1,4096,4
	.hidden	StorageAreaTbl
	.global	StorageAreaTbl
	.section	.rodata
	.align	2
.LC0:
	.ascii	"EApiStorage0.EMUL\000"
	.align	2
.LC1:
	.ascii	"EApiStorage1.EMUL\000"
	.section	.data.rel.local,"aw"
	.align	2
	.type	StorageAreaTbl, %object
	.size	StorageAreaTbl, 48
StorageAreaTbl:
	.word	0
	.word	32
	.word	1
	.word	StorageID0
	.word	.LC0
	.word	0
	.word	-93057024
	.word	4096
	.word	1024
	.word	StorageID1
	.word	.LC1
	.word	0
	.section	.rodata
	.align	2
.LC2:
	.ascii	"EApiStorageCap\000"
	.align	2
.LC3:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EA"
	.ascii	"piEmulStorage.c\000"
	.align	2
.LC4:
	.ascii	"\000"
	.align	2
.LC5:
	.ascii	"%s\012\000"
	.align	2
.LC6:
	.ascii	"EApiStorageCapEmul\000"
	.align	2
.LC7:
	.ascii	"Unrecognised Storage ID\000"
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
.LFB1:
	.file 1 "/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EApiEmulStorage.c"
	.loc 1 87 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #48
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	.loc 1 88 16
	mov	r3, #0
	str	r3, [fp, #-16]
	.loc 1 93 8
	mov	r3, #2
	str	r3, [fp, #-8]
	.loc 1 94 22
	ldr	r3, .L7
.LPIC0:
	add	r3, pc, r3
	str	r3, [fp, #-12]
	.loc 1 92 3
	b	.L2
.L5:
	.loc 1 98 25
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	.loc 1 98 9
	ldr	r2, [fp, #-24]
	cmp	r2, r3
	bne	.L3
	.loc 1 100 38
	ldr	r3, [fp, #-12]
	ldr	r2, [r3, #4]
	.loc 1 100 22
	ldr	r3, [fp, #-28]
	str	r2, [r3]
	.loc 1 101 38
	ldr	r3, [fp, #-12]
	ldr	r2, [r3, #8]
	.loc 1 101 22
	ldr	r3, [fp, #-32]
	str	r2, [r3]
	.loc 1 102 9
	ldr	r3, .L7+4
.LPIC1:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L7+8
.LPIC2:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mov	r3, #0
	str	r3, [sp]
	mov	r3, #102
	ldr	r2, .L7+12
.LPIC3:
	add	r2, pc, r2
	ldr	r1, .L7+16
.LPIC4:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_SC(PLT)
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L4
.L3:
	.loc 1 96 22
	ldr	r3, [fp, #-12]
	add	r3, r3, #24
	str	r3, [fp, #-12]
.L2:
	.loc 1 95 8
	ldr	r3, [fp, #-8]
	sub	r2, r3, #1
	str	r2, [fp, #-8]
	.loc 1 95 7
	cmp	r3, #0
	bne	.L5
	.loc 1 105 3
	ldr	r3, .L7+20
.LPIC5:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L7+24
.LPIC6:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #768
	str	r3, [sp]
	mov	r3, #105
	ldr	r2, .L7+28
.LPIC7:
	add	r2, pc, r2
	ldr	r1, .L7+32
.LPIC8:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #768
	str	r3, [fp, #-16]
	nop
.L4:
	.loc 1 112 10
	ldr	r3, [fp, #-16]
	.loc 1 113 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L8:
	.align	2
.L7:
	.word	StorageAreaTbl-(.LPIC0+8)
	.word	.LC4-(.LPIC1+8)
	.word	.LC5-(.LPIC2+8)
	.word	.LC2-(.LPIC3+8)
	.word	.LC3-(.LPIC4+8)
	.word	.LC7-(.LPIC5+8)
	.word	.LC5-(.LPIC6+8)
	.word	.LC6-(.LPIC7+8)
	.word	.LC3-(.LPIC8+8)
	.cfi_endproc
.LFE1:
	.size	EApiStorageCapEmul, .-EApiStorageCapEmul
	.section	.rodata
	.align	2
.LC8:
	.ascii	"EApiStorageAreaReadEmul\000"
	.align	2
.LC9:
	.ascii	"Read Len extends beyond End of Storage Area\000"
	.align	2
.LC10:
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
.LFB2:
	.loc 1 121 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #48
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	str	r3, [fp, #-36]
	.loc 1 122 16
	mov	r3, #0
	str	r3, [fp, #-16]
	.loc 1 127 8
	mov	r3, #2
	str	r3, [fp, #-8]
	.loc 1 128 22
	ldr	r3, .L16
.LPIC9:
	add	r3, pc, r3
	str	r3, [fp, #-12]
	.loc 1 126 3
	b	.L10
.L14:
	.loc 1 132 25
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	.loc 1 132 9
	ldr	r2, [fp, #-24]
	cmp	r2, r3
	bne	.L11
	.loc 1 134 9
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-36]
	add	r2, r2, r3
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bls	.L12
	.loc 1 134 9 is_stmt 0 discriminator 1
	ldr	r3, .L16+4
.LPIC10:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L16+8
.LPIC11:
	add	r3, pc, r3
	str	r3, [sp, #4]
	movw	r3, #65277
	movt	r3, 65535
	str	r3, [sp]
	mov	r3, #134
	ldr	r2, .L16+12
.LPIC12:
	add	r2, pc, r2
	ldr	r1, .L16+16
.LPIC13:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	movw	r3, #65277
	movt	r3, 65535
	str	r3, [fp, #-16]
	b	.L13
.L12:
	.loc 1 144 9 is_stmt 1
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #20]
	ldr	r1, [fp, #-28]
	mov	r2, #0
	mov	r0, r3
	bl	fseek(PLT)
	.loc 1 145 21
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #20]
	ldr	r2, [fp, #-36]
	mov	r1, #1
	ldr	r0, [fp, #-32]
	bl	fread(PLT)
	.loc 1 149 9
	ldr	r3, .L16+20
.LPIC14:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L16+24
.LPIC15:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mov	r3, #0
	str	r3, [sp]
	mov	r3, #149
	ldr	r2, .L16+28
.LPIC16:
	add	r2, pc, r2
	ldr	r1, .L16+32
.LPIC17:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_SC(PLT)
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L13
.L11:
	.loc 1 130 22
	ldr	r3, [fp, #-12]
	add	r3, r3, #24
	str	r3, [fp, #-12]
.L10:
	.loc 1 129 8
	ldr	r3, [fp, #-8]
	sub	r2, r3, #1
	str	r2, [fp, #-8]
	.loc 1 129 7
	cmp	r3, #0
	bne	.L14
	.loc 1 152 3
	ldr	r3, .L16+36
.LPIC18:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L16+40
.LPIC19:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #768
	str	r3, [sp]
	mov	r3, #152
	ldr	r2, .L16+44
.LPIC20:
	add	r2, pc, r2
	ldr	r1, .L16+48
.LPIC21:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #768
	str	r3, [fp, #-16]
	nop
.L13:
	.loc 1 159 10
	ldr	r3, [fp, #-16]
	.loc 1 160 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L17:
	.align	2
.L16:
	.word	StorageAreaTbl-(.LPIC9+8)
	.word	.LC9-(.LPIC10+8)
	.word	.LC5-(.LPIC11+8)
	.word	.LC8-(.LPIC12+8)
	.word	.LC3-(.LPIC13+8)
	.word	.LC4-(.LPIC14+8)
	.word	.LC5-(.LPIC15+8)
	.word	.LC10-(.LPIC16+8)
	.word	.LC3-(.LPIC17+8)
	.word	.LC7-(.LPIC18+8)
	.word	.LC5-(.LPIC19+8)
	.word	.LC8-(.LPIC20+8)
	.word	.LC3-(.LPIC21+8)
	.cfi_endproc
.LFE2:
	.size	EApiStorageAreaReadEmul, .-EApiStorageAreaReadEmul
	.global	__aeabi_uidivmod
	.section	.rodata
	.align	2
.LC11:
	.ascii	"EApiStorageAreaWriteEmul\000"
	.align	2
.LC12:
	.ascii	"Write length Not Aligned\000"
	.align	2
.LC13:
	.ascii	"Write Base Address Not Aligned\000"
	.align	2
.LC14:
	.ascii	"Write Len extends beyond End of Storage Area\000"
	.align	2
.LC15:
	.ascii	"EApiStorageAreaWrite\000"
	.text
	.align	2
	.global	EApiStorageAreaWriteEmul
	.hidden	EApiStorageAreaWriteEmul
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiStorageAreaWriteEmul, %function
EApiStorageAreaWriteEmul:
.LFB3:
	.loc 1 169 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #48
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	str	r3, [fp, #-36]
	.loc 1 170 16
	mov	r3, #0
	str	r3, [fp, #-16]
	.loc 1 174 8
	mov	r3, #2
	str	r3, [fp, #-8]
	.loc 1 175 22
	ldr	r3, .L27
.LPIC22:
	add	r3, pc, r3
	str	r3, [fp, #-12]
	.loc 1 173 3
	b	.L19
.L25:
	.loc 1 179 25
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	.loc 1 179 9
	ldr	r2, [fp, #-24]
	cmp	r2, r3
	bne	.L20
	.loc 1 181 9
	ldr	r3, [fp, #-12]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-36]
	mov	r1, r2
	mov	r0, r3
	bl	__aeabi_uidivmod(PLT)
	mov	r3, r1
	cmp	r3, #0
	beq	.L21
	.loc 1 181 9 is_stmt 0 discriminator 1
	ldr	r3, .L27+4
.LPIC23:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L27+8
.LPIC24:
	add	r3, pc, r3
	str	r3, [sp, #4]
	movw	r3, #65278
	movt	r3, 65535
	str	r3, [sp]
	mov	r3, #181
	ldr	r2, .L27+12
.LPIC25:
	add	r2, pc, r2
	ldr	r1, .L27+16
.LPIC26:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	movw	r3, #65278
	movt	r3, 65535
	str	r3, [fp, #-16]
	b	.L22
.L21:
	.loc 1 187 9 is_stmt 1
	ldr	r3, [fp, #-12]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-28]
	mov	r1, r2
	mov	r0, r3
	bl	__aeabi_uidivmod(PLT)
	mov	r3, r1
	cmp	r3, #0
	beq	.L23
	.loc 1 187 9 is_stmt 0 discriminator 1
	ldr	r3, .L27+20
.LPIC27:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L27+24
.LPIC28:
	add	r3, pc, r3
	str	r3, [sp, #4]
	movw	r3, #65278
	movt	r3, 65535
	str	r3, [sp]
	mov	r3, #187
	ldr	r2, .L27+28
.LPIC29:
	add	r2, pc, r2
	ldr	r1, .L27+32
.LPIC30:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	movw	r3, #65278
	movt	r3, 65535
	str	r3, [fp, #-16]
	b	.L22
.L23:
	.loc 1 193 9 is_stmt 1
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-36]
	add	r2, r2, r3
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bls	.L24
	.loc 1 193 9 is_stmt 0 discriminator 1
	ldr	r3, .L27+36
.LPIC31:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L27+40
.LPIC32:
	add	r3, pc, r3
	str	r3, [sp, #4]
	movw	r3, #65277
	movt	r3, 65535
	str	r3, [sp]
	mov	r3, #193
	ldr	r2, .L27+44
.LPIC33:
	add	r2, pc, r2
	ldr	r1, .L27+48
.LPIC34:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	movw	r3, #65277
	movt	r3, 65535
	str	r3, [fp, #-16]
	b	.L22
.L24:
	.loc 1 203 9 is_stmt 1
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #20]
	ldr	r1, [fp, #-28]
	mov	r2, #0
	mov	r0, r3
	bl	fseek(PLT)
	.loc 1 204 9
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #20]
	ldr	r2, [fp, #-36]
	mov	r1, #1
	ldr	r0, [fp, #-32]
	bl	fwrite(PLT)
	.loc 1 206 9
	ldr	r3, .L27+52
.LPIC35:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L27+56
.LPIC36:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mov	r3, #0
	str	r3, [sp]
	mov	r3, #206
	ldr	r2, .L27+60
.LPIC37:
	add	r2, pc, r2
	ldr	r1, .L27+64
.LPIC38:
	add	r1, pc, r1
	mov	r0, #76
	bl	siFormattedMessage_SC(PLT)
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L22
.L20:
	.loc 1 177 22
	ldr	r3, [fp, #-12]
	add	r3, r3, #24
	str	r3, [fp, #-12]
.L19:
	.loc 1 176 8
	ldr	r3, [fp, #-8]
	sub	r2, r3, #1
	str	r2, [fp, #-8]
	.loc 1 176 7
	cmp	r3, #0
	bne	.L25
	.loc 1 209 3
	ldr	r3, .L27+68
.LPIC39:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L27+72
.LPIC40:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #768
	str	r3, [sp]
	mov	r3, #209
	ldr	r2, .L27+76
.LPIC41:
	add	r2, pc, r2
	ldr	r1, .L27+80
.LPIC42:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #768
	str	r3, [fp, #-16]
	nop
.L22:
	.loc 1 216 10
	ldr	r3, [fp, #-16]
	.loc 1 217 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L28:
	.align	2
.L27:
	.word	StorageAreaTbl-(.LPIC22+8)
	.word	.LC12-(.LPIC23+8)
	.word	.LC5-(.LPIC24+8)
	.word	.LC11-(.LPIC25+8)
	.word	.LC3-(.LPIC26+8)
	.word	.LC13-(.LPIC27+8)
	.word	.LC5-(.LPIC28+8)
	.word	.LC11-(.LPIC29+8)
	.word	.LC3-(.LPIC30+8)
	.word	.LC14-(.LPIC31+8)
	.word	.LC5-(.LPIC32+8)
	.word	.LC11-(.LPIC33+8)
	.word	.LC3-(.LPIC34+8)
	.word	.LC4-(.LPIC35+8)
	.word	.LC5-(.LPIC36+8)
	.word	.LC11-(.LPIC37+8)
	.word	.LC3-(.LPIC38+8)
	.word	.LC7-(.LPIC39+8)
	.word	.LC5-(.LPIC40+8)
	.word	.LC15-(.LPIC41+8)
	.word	.LC3-(.LPIC42+8)
	.cfi_endproc
.LFE3:
	.size	EApiStorageAreaWriteEmul, .-EApiStorageAreaWriteEmul
	.section	.rodata
	.align	2
.LC16:
	.ascii	"rb+\000"
	.align	2
.LC17:
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
.LFB4:
	.loc 1 227 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #8
	.loc 1 231 8
	mov	r3, #2
	str	r3, [fp, #-8]
	.loc 1 232 22
	ldr	r3, .L35
.LPIC43:
	add	r3, pc, r3
	str	r3, [fp, #-12]
	.loc 1 230 3
	b	.L30
.L33:
	.loc 1 236 51
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #16]
	.loc 1 236 30
	ldr	r2, .L35+4
.LPIC44:
	add	r2, pc, r2
	mov	r1, r2
	mov	r0, r3
	bl	fopen(PLT)
	mov	r2, r0
	.loc 1 236 29
	ldr	r3, [fp, #-12]
	str	r2, [r3, #20]
	.loc 1 237 23
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #20]
	.loc 1 237 7
	cmp	r3, #0
	bne	.L31
	.loc 1 238 53
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #16]
	.loc 1 238 32
	ldr	r2, .L35+8
.LPIC45:
	add	r2, pc, r2
	mov	r1, r2
	mov	r0, r3
	bl	fopen(PLT)
	mov	r2, r0
	.loc 1 238 31
	ldr	r3, [fp, #-12]
	str	r2, [r3, #20]
.L31:
	.loc 1 240 23
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #20]
	.loc 1 240 7
	cmp	r3, #0
	beq	.L32
	.loc 1 241 9
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #20]
	mov	r2, #2
	mov	r1, #0
	mov	r0, r3
	bl	fseek(PLT)
	.loc 1 242 12
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #20]
	mov	r0, r3
	bl	ftell(PLT)
	mov	r2, r0
	.loc 1 242 67
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #4]
	.loc 1 242 11
	cmp	r2, r3
	bge	.L32
	.loc 1 243 11
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #20]
	mov	r0, r3
	bl	rewind(PLT)
	.loc 1 244 33
	ldr	r3, [fp, #-12]
	ldr	r0, [r3, #12]
	.loc 1 244 11
	ldr	r3, [fp, #-12]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #20]
	mov	r1, #1
	bl	fwrite(PLT)
.L32:
	.loc 1 234 22
	ldr	r3, [fp, #-12]
	add	r3, r3, #24
	str	r3, [fp, #-12]
.L30:
	.loc 1 233 8
	ldr	r3, [fp, #-8]
	sub	r2, r3, #1
	str	r2, [fp, #-8]
	.loc 1 233 7
	cmp	r3, #0
	bne	.L33
	.loc 1 248 10
	mov	r3, #0
	.loc 1 249 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L36:
	.align	2
.L35:
	.word	StorageAreaTbl-(.LPIC43+8)
	.word	.LC16-(.LPIC44+8)
	.word	.LC17-(.LPIC45+8)
	.cfi_endproc
.LFE4:
	.size	OpenEepromFiles, .-OpenEepromFiles
	.align	2
	.global	CloseEepromFiles
	.hidden	CloseEepromFiles
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CloseEepromFiles, %function
CloseEepromFiles:
.LFB5:
	.loc 1 252 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #8
	.loc 1 256 8
	mov	r3, #2
	str	r3, [fp, #-8]
	.loc 1 257 22
	ldr	r3, .L42
.LPIC46:
	add	r3, pc, r3
	str	r3, [fp, #-12]
	.loc 1 255 3
	b	.L38
.L40:
	.loc 1 261 23
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #20]
	.loc 1 261 7
	cmp	r3, #0
	beq	.L39
	.loc 1 262 7
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #20]
	mov	r0, r3
	bl	fclose(PLT)
	.loc 1 263 31
	ldr	r3, [fp, #-12]
	mov	r2, #0
	str	r2, [r3, #20]
.L39:
	.loc 1 259 22
	ldr	r3, [fp, #-12]
	add	r3, r3, #24
	str	r3, [fp, #-12]
.L38:
	.loc 1 258 8
	ldr	r3, [fp, #-8]
	sub	r2, r3, #1
	str	r2, [fp, #-8]
	.loc 1 258 7
	cmp	r3, #0
	bne	.L40
	.loc 1 266 10
	mov	r3, #0
	.loc 1 267 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L43:
	.align	2
.L42:
	.word	StorageAreaTbl-(.LPIC46+8)
	.cfi_endproc
.LFE5:
	.size	CloseEepromFiles, .-CloseEepromFiles
.Letext0:
	.file 2 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/bits/alltypes.h"
	.file 3 "../../include/EApi.h"
	.file 4 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/stdio.h"
	.file 5 "../include/DbgChk.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x4af
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x11
	.4byte	.LASF47
	.byte	0x1d
	.4byte	.LASF48
	.4byte	.LASF49
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2b
	.byte	0x18
	.4byte	0x26
	.uleb128 0x12
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x2
	.byte	0x30
	.byte	0x18
	.4byte	0x26
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x72
	.byte	0x19
	.4byte	0x74
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x77
	.byte	0x19
	.4byte	0x87
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x7c
	.byte	0x19
	.4byte	0x26
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0xf
	.4byte	0xa1
	.uleb128 0x13
	.byte	0x4
	.uleb128 0xb
	.4byte	0xad
	.uleb128 0x7
	.4byte	0xa8
	.uleb128 0xf
	.4byte	0xb4
	.uleb128 0xb
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x14
	.4byte	.LASF15
	.byte	0x2
	.2byte	0x139
	.byte	0x19
	.4byte	0xd7
	.uleb128 0x15
	.4byte	.LASF50
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x91
	.byte	0x12
	.4byte	0x8e
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x92
	.byte	0x12
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF18
	.uleb128 0x7
	.4byte	0xca
	.uleb128 0xb
	.4byte	0xfb
	.uleb128 0x16
	.4byte	.LASF51
	.byte	0x18
	.byte	0x1
	.byte	0x34
	.byte	0x10
	.4byte	0x15b
	.uleb128 0x17
	.ascii	"Id\000"
	.byte	0x1
	.byte	0x35
	.byte	0xc
	.4byte	0xe8
	.byte	0
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x36
	.byte	0xc
	.4byte	0x8e
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x37
	.byte	0xc
	.4byte	0x8e
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x38
	.byte	0xc
	.4byte	0x15b
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x39
	.byte	0x15
	.4byte	0xb9
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x3a
	.byte	0xd
	.4byte	0xfb
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.4byte	0x68
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x1
	.byte	0x3b
	.byte	0x2
	.4byte	0x105
	.uleb128 0xc
	.4byte	0x68
	.4byte	0x17c
	.uleb128 0x10
	.4byte	0x26
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x3c
	.byte	0x10
	.4byte	0x16c
	.uleb128 0x5
	.byte	0x3
	.4byte	StorageID0
	.uleb128 0xc
	.4byte	0x68
	.4byte	0x19e
	.uleb128 0x18
	.4byte	0x26
	.2byte	0xfff
	.byte	0
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x3d
	.byte	0x10
	.4byte	0x18d
	.uleb128 0x5
	.byte	0x3
	.4byte	StorageID1
	.uleb128 0xc
	.4byte	0x160
	.4byte	0x1bf
	.uleb128 0x10
	.4byte	0x26
	.byte	0x1
	.byte	0
	.uleb128 0x19
	.4byte	.LASF52
	.byte	0x1
	.byte	0x3e
	.byte	0x16
	.4byte	0x1af
	.uleb128 0x5
	.byte	0x3
	.4byte	StorageAreaTbl
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x4
	.byte	0x46
	.byte	0x5
	.4byte	0x39
	.4byte	0x1e7
	.uleb128 0x1
	.4byte	0xfb
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF53
	.byte	0x4
	.byte	0x52
	.byte	0x6
	.4byte	0x1f9
	.uleb128 0x1
	.4byte	0xfb
	.byte	0
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x4
	.byte	0x51
	.byte	0x6
	.4byte	0x40
	.4byte	0x20f
	.uleb128 0x1
	.4byte	0xfb
	.byte	0
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x4
	.byte	0x44
	.byte	0x7
	.4byte	0xfb
	.4byte	0x22a
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0xbe
	.byte	0
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x4
	.byte	0x58
	.byte	0x8
	.4byte	0x2d
	.4byte	0x24f
	.uleb128 0x1
	.4byte	0x254
	.uleb128 0x1
	.4byte	0x2d
	.uleb128 0x1
	.4byte	0x2d
	.uleb128 0x1
	.4byte	0x100
	.byte	0
	.uleb128 0x7
	.4byte	0x259
	.uleb128 0xb
	.4byte	0x24f
	.uleb128 0x1b
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x4
	.byte	0x57
	.byte	0x8
	.4byte	0x2d
	.4byte	0x27f
	.uleb128 0x1
	.4byte	0xaf
	.uleb128 0x1
	.4byte	0x2d
	.uleb128 0x1
	.4byte	0x2d
	.uleb128 0x1
	.4byte	0x100
	.byte	0
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x4
	.byte	0x50
	.byte	0x5
	.4byte	0x39
	.4byte	0x29f
	.uleb128 0x1
	.4byte	0xfb
	.uleb128 0x1
	.4byte	0x40
	.uleb128 0x1
	.4byte	0x39
	.byte	0
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x5
	.byte	0x3e
	.byte	0x1
	.4byte	0x39
	.4byte	0x2cf
	.uleb128 0x1
	.4byte	0xa1
	.uleb128 0x1
	.4byte	0xb4
	.uleb128 0x1
	.4byte	0xb4
	.uleb128 0x1
	.4byte	0x26
	.uleb128 0x1
	.4byte	0xdc
	.uleb128 0x1
	.4byte	0xb4
	.uleb128 0x1c
	.byte	0
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0xfb
	.4byte	0xdc
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x301
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0xfd
	.byte	0x19
	.4byte	0x301
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xa
	.ascii	"i\000"
	.byte	0xfe
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x7
	.4byte	0x160
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0xe2
	.4byte	0xdc
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x338
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0xe4
	.byte	0x19
	.4byte	0x301
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xa
	.ascii	"i\000"
	.byte	0xe5
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0xa3
	.4byte	0xdc
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3b9
	.uleb128 0xd
	.ascii	"Id\000"
	.byte	0xa4
	.byte	0x13
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LASF38
	.byte	0xa5
	.byte	0x13
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.4byte	.LASF39
	.byte	0xa6
	.byte	0x10
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF40
	.byte	0xa7
	.byte	0x13
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0xaa
	.byte	0x10
	.4byte	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0xab
	.byte	0x19
	.4byte	0x301
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xa
	.ascii	"i\000"
	.byte	0xac
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0xd6
	.4byte	.L22
	.byte	0
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x73
	.4byte	0xdc
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x43a
	.uleb128 0xd
	.ascii	"Id\000"
	.byte	0x74
	.byte	0x12
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LASF38
	.byte	0x75
	.byte	0x12
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.4byte	.LASF39
	.byte	0x76
	.byte	0x12
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF40
	.byte	0x77
	.byte	0x12
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x7a
	.byte	0x10
	.4byte	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x7b
	.byte	0x19
	.4byte	0x301
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xa
	.ascii	"i\000"
	.byte	0x7c
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x9d
	.4byte	.L13
	.byte	0
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x52
	.4byte	0xdc
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ad
	.uleb128 0xd
	.ascii	"Id\000"
	.byte	0x53
	.byte	0x19
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LASF45
	.byte	0x54
	.byte	0x19
	.4byte	0x4ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.4byte	.LASF46
	.byte	0x55
	.byte	0x19
	.4byte	0x4ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x58
	.byte	0x10
	.4byte	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x59
	.byte	0x19
	.4byte	0x301
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xa
	.ascii	"i\000"
	.byte	0x5a
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x6e
	.4byte	.L4
	.byte	0
	.uleb128 0x7
	.4byte	0x8e
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x3
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF29:
	.ascii	"fopen\000"
.LASF52:
	.ascii	"StorageAreaTbl\000"
.LASF45:
	.ascii	"pStorageSize\000"
.LASF46:
	.ascii	"pBlockLength\000"
.LASF19:
	.ascii	"StorageSize\000"
.LASF36:
	.ascii	"OpenEepromFiles\000"
.LASF27:
	.ascii	"fclose\000"
.LASF6:
	.ascii	"short int\000"
.LASF3:
	.ascii	"size_t\000"
.LASF49:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux\000"
.LASF37:
	.ascii	"EApiStorageAreaWriteEmul\000"
.LASF7:
	.ascii	"uint8_t\000"
.LASF4:
	.ascii	"uintptr_t\000"
.LASF25:
	.ascii	"StorageID0\000"
.LASF26:
	.ascii	"StorageID1\000"
.LASF34:
	.ascii	"pCurStorageDesc\000"
.LASF32:
	.ascii	"fseek\000"
.LASF2:
	.ascii	"long long int\000"
.LASF1:
	.ascii	"long int\000"
.LASF17:
	.ascii	"EApiId_t\000"
.LASF40:
	.ascii	"ByteCnt\000"
.LASF51:
	.ascii	"StorageAreaMapping_s\000"
.LASF24:
	.ascii	"StorageAreaMapping_t\000"
.LASF33:
	.ascii	"siFormattedMessage_SC\000"
.LASF16:
	.ascii	"EApiStatus_t\000"
.LASF28:
	.ascii	"ftell\000"
.LASF50:
	.ascii	"_IO_FILE\000"
.LASF8:
	.ascii	"unsigned char\000"
.LASF43:
	.ascii	"ExitPoint\000"
.LASF5:
	.ascii	"signed char\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF11:
	.ascii	"uint32_t\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF9:
	.ascii	"uint16_t\000"
.LASF39:
	.ascii	"pvBuffer\000"
.LASF38:
	.ascii	"Offset\000"
.LASF10:
	.ascii	"short unsigned int\000"
.LASF22:
	.ascii	"cszFilename\000"
.LASF13:
	.ascii	"char\000"
.LASF41:
	.ascii	"StatusCode\000"
.LASF20:
	.ascii	"WBlockLength\000"
.LASF30:
	.ascii	"fwrite\000"
.LASF14:
	.ascii	"long unsigned int\000"
.LASF18:
	.ascii	"double\000"
.LASF23:
	.ascii	"FStream\000"
.LASF47:
	.ascii	"GNU C17 11.2.0 -mcpu=cortex-a9 -mfloat-abi=hard -mf"
	.ascii	"pu=vfpv3 -mabi=aapcs-linux -mtls-dialect=gnu -marm "
	.ascii	"-march=armv7-a+mp+sec+vfpv3 -g -fstack-protector-st"
	.ascii	"rong -fvisibility=hidden -fPIC\000"
.LASF21:
	.ascii	"pu8Buffer\000"
.LASF35:
	.ascii	"CloseEepromFiles\000"
.LASF53:
	.ascii	"rewind\000"
.LASF42:
	.ascii	"EApiStorageAreaReadEmul\000"
.LASF15:
	.ascii	"FILE\000"
.LASF31:
	.ascii	"fread\000"
.LASF44:
	.ascii	"EApiStorageCapEmul\000"
.LASF48:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/lib/linux/../EA"
	.ascii	"piEmulStorage.c\000"
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
