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
	.file	"EeePProg.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.global	cszTitle
	.section	.rodata
	.align	2
	.type	cszTitle, %object
	.size	cszTitle, 244
cszTitle:
	.ascii	"+=================================================="
	.ascii	"===========================+\012| EeePProg.exe  Cop"
	.ascii	"yright (C) Kontron Embedded Modules GmbH 2010   V %"
	.ascii	"u.%u.%04u |\012+==================================="
	.ascii	"==========================================+\012\012"
	.ascii	"\000"
	.global	syntaxErrMes
	.align	2
	.type	syntaxErrMes, %object
	.size	syntaxErrMes, 31
syntaxErrMes:
	.ascii	"Syntax error / Use -h for info\000"
	.global	CurOptions
	.bss
	.align	2
	.type	CurOptions, %object
	.size	CurOptions, 196
CurOptions:
	.space	196
	.global	COM0R20M_Cfg
	.section	.rodata
	.align	2
.LC0:
	.ascii	"<Filename|stdout>  Destination File\000"
	.section	.data.rel,"aw"
	.align	2
	.type	COM0R20M_Cfg, %object
	.size	COM0R20M_Cfg, 16
COM0R20M_Cfg:
	.word	CurOptions+16
	.word	4
	.word	.LC0
	.word	StringArg
	.global	COM0R20M_Img
	.section	.rodata
	.align	2
.LC1:
	.ascii	"<Filename>  Configuration Filename\000"
	.align	2
.LC2:
	.ascii	"<Filename>  Destination File\000"
	.section	.data.rel
	.align	2
	.type	COM0R20M_Img, %object
	.size	COM0R20M_Img, 32
COM0R20M_Img:
	.word	CurOptions+24
	.word	4
	.word	.LC1
	.word	StringArg
	.word	CurOptions+28
	.word	4
	.word	.LC2
	.word	StringArg
	.global	COM0R20M_EEP
	.align	2
	.type	COM0R20M_EEP, %object
	.size	COM0R20M_EEP, 16
COM0R20M_EEP:
	.word	CurOptions+36
	.word	4
	.word	.LC1
	.word	StringArg
	.global	COM0R20CB_Cfg
	.align	2
	.type	COM0R20CB_Cfg, %object
	.size	COM0R20CB_Cfg, 16
COM0R20CB_Cfg:
	.word	CurOptions+44
	.word	4
	.word	.LC0
	.word	StringArg
	.global	COM0R20CB_Img
	.align	2
	.type	COM0R20CB_Img, %object
	.size	COM0R20CB_Img, 32
COM0R20CB_Img:
	.word	CurOptions+52
	.word	4
	.word	.LC1
	.word	StringArg
	.word	CurOptions+56
	.word	4
	.word	.LC2
	.word	StringArg
	.global	COM0R20CB_EEP
	.align	2
	.type	COM0R20CB_EEP, %object
	.size	COM0R20CB_EEP, 16
COM0R20CB_EEP:
	.word	CurOptions+64
	.word	4
	.word	.LC1
	.word	StringArg
	.global	EeePExpEEP_Cfg
	.align	2
	.type	EeePExpEEP_Cfg, %object
	.size	EeePExpEEP_Cfg, 16
EeePExpEEP_Cfg:
	.word	CurOptions+72
	.word	4
	.word	.LC0
	.word	StringArg
	.global	EeePExpEEP_Img
	.align	2
	.type	EeePExpEEP_Img, %object
	.size	EeePExpEEP_Img, 32
EeePExpEEP_Img:
	.word	CurOptions+80
	.word	4
	.word	.LC1
	.word	StringArg
	.word	CurOptions+84
	.word	4
	.word	.LC2
	.word	StringArg
	.global	EeePExpEEP_EEP
	.section	.rodata
	.align	2
.LC3:
	.ascii	"<EApi Id>      EApi Bus Id\000"
	.align	2
.LC4:
	.ascii	"<I2C Address>  EEPROM Device Address\000"
	.section	.data.rel
	.align	2
	.type	EeePExpEEP_EEP, %object
	.size	EeePExpEEP_EEP, 48
EeePExpEEP_EEP:
	.word	CurOptions+92
	.word	4
	.word	.LC1
	.word	StringArg
	.word	CurOptions+96
	.word	4
	.word	.LC3
	.word	NumberArg
	.word	CurOptions+100
	.word	4
	.word	.LC4
	.word	NumberArg
	.global	EeePExpEEP_PEEP
	.section	.rodata
	.align	2
.LC5:
	.ascii	"<Filename>  Binary Image Filename\000"
	.section	.data.rel
	.align	2
	.type	EeePExpEEP_PEEP, %object
	.size	EeePExpEEP_PEEP, 48
EeePExpEEP_PEEP:
	.word	CurOptions+108
	.word	4
	.word	.LC5
	.word	StringArg
	.word	CurOptions+112
	.word	4
	.word	.LC3
	.word	NumberArg
	.word	CurOptions+116
	.word	4
	.word	.LC4
	.word	NumberArg
	.global	COM0R20CB_IMG
	.align	2
	.type	COM0R20CB_IMG, %object
	.size	COM0R20CB_IMG, 16
COM0R20CB_IMG:
	.word	CurOptions+184
	.word	4
	.word	.LC5
	.word	StringArg
	.global	COM0R20M_IMG
	.align	2
	.type	COM0R20M_IMG, %object
	.size	COM0R20M_IMG, 16
COM0R20M_IMG:
	.word	CurOptions+192
	.word	4
	.word	.LC5
	.word	StringArg
	.global	EeePExpEEP_IMG
	.align	2
	.type	EeePExpEEP_IMG, %object
	.size	EeePExpEEP_IMG, 48
EeePExpEEP_IMG:
	.word	CurOptions+168
	.word	4
	.word	.LC5
	.word	StringArg
	.word	CurOptions+172
	.word	4
	.word	.LC3
	.word	NumberArg
	.word	CurOptions+176
	.word	4
	.word	.LC4
	.word	NumberArg
	.global	COM0R20CB_PEEP
	.align	2
	.type	COM0R20CB_PEEP, %object
	.size	COM0R20CB_PEEP, 16
COM0R20CB_PEEP:
	.word	CurOptions+124
	.word	4
	.word	.LC5
	.word	StringArg
	.global	COM0R20M_PEEP
	.align	2
	.type	COM0R20M_PEEP, %object
	.size	COM0R20M_PEEP, 16
COM0R20M_PEEP:
	.word	CurOptions+132
	.word	4
	.word	.LC5
	.word	StringArg
	.global	GEN_LIST_DBLOCKS_FILE
	.align	2
	.type	GEN_LIST_DBLOCKS_FILE, %object
	.size	GEN_LIST_DBLOCKS_FILE, 16
GEN_LIST_DBLOCKS_FILE:
	.word	CurOptions+140
	.word	4
	.word	.LC5
	.word	StringArg
	.global	GEN_LIST_DBLOCKS_EEP
	.align	2
	.type	GEN_LIST_DBLOCKS_EEP, %object
	.size	GEN_LIST_DBLOCKS_EEP, 32
GEN_LIST_DBLOCKS_EEP:
	.word	CurOptions+148
	.word	4
	.word	.LC3
	.word	NumberArg
	.word	CurOptions+152
	.word	4
	.word	.LC4
	.word	NumberArg
	.section	.rodata
	.align	2
.LC6:
	.ascii	"stdout\000"
	.align	2
.LC7:
	.ascii	"&1\000"
	.align	2
.LC8:
	.ascii	"stderr\000"
	.align	2
.LC9:
	.ascii	"&2\000"
	.align	2
.LC10:
	.ascii	"w\000"
	.align	2
.LC11:
	.ascii	"CreateTxtFilePtr\000"
	.align	2
.LC12:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux/../EeePProg.c\000"
	.align	2
.LC13:
	.ascii	"(*FilePtr==NULL)\000"
	.align	2
.LC14:
	.ascii	"%s\012\000"
	.text
	.align	2
	.global	CreateTxtFilePtr
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CreateTxtFilePtr, %function
CreateTxtFilePtr:
.LFB1:
	.file 1 "/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/linux/../EeePProg.c"
	.loc 1 252 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #8
	.cfi_def_cfa 11, 4
	sub	sp, sp, #36
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	ldr	r4, .L9
.LPIC1:
	add	r4, pc, r4
	.loc 1 253 16
	mov	r3, #0
	str	r3, [fp, #-16]
	.loc 1 254 7
	ldr	r3, .L9+4
.LPIC0:
	add	r3, pc, r3
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	strcmp(PLT)
	mov	r3, r0
	.loc 1 254 5
	cmp	r3, #0
	bne	.L2
	.loc 1 255 14
	ldr	r3, .L9+8
	ldr	r3, [r4, r3]
	ldr	r2, [r3]
	ldr	r3, [fp, #-28]
	str	r2, [r3]
	b	.L3
.L2:
	.loc 1 256 13
	ldr	r3, .L9+12
.LPIC2:
	add	r3, pc, r3
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	strcmp(PLT)
	mov	r3, r0
	.loc 1 256 11
	cmp	r3, #0
	bne	.L4
	.loc 1 257 14
	ldr	r3, .L9+8
	ldr	r3, [r4, r3]
	ldr	r2, [r3]
	ldr	r3, [fp, #-28]
	str	r2, [r3]
	b	.L3
.L4:
	.loc 1 258 13
	ldr	r3, .L9+16
.LPIC3:
	add	r3, pc, r3
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	strcmp(PLT)
	mov	r3, r0
	.loc 1 258 11
	cmp	r3, #0
	bne	.L5
	.loc 1 259 14
	ldr	r3, .L9+20
	ldr	r3, [r4, r3]
	ldr	r2, [r3]
	ldr	r3, [fp, #-28]
	str	r2, [r3]
	b	.L3
.L5:
	.loc 1 260 13
	ldr	r3, .L9+24
.LPIC4:
	add	r3, pc, r3
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	strcmp(PLT)
	mov	r3, r0
	.loc 1 260 11
	cmp	r3, #0
	bne	.L6
	.loc 1 261 14
	ldr	r3, .L9+20
	ldr	r3, [r4, r3]
	ldr	r2, [r3]
	ldr	r3, [fp, #-28]
	str	r2, [r3]
	b	.L3
.L6:
	.loc 1 263 14
	ldr	r3, .L9+28
.LPIC5:
	add	r3, pc, r3
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	fopen(PLT)
	mov	r2, r0
	.loc 1 263 13
	ldr	r3, [fp, #-28]
	str	r2, [r3]
	.loc 1 264 5
	ldr	r3, [fp, #-28]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L8
	.loc 1 264 5 is_stmt 0 discriminator 1
	ldr	r3, .L9+32
.LPIC6:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L9+36
.LPIC7:
	add	r3, pc, r3
	str	r3, [sp, #4]
	movw	r3, #64254
	movt	r3, 65535
	str	r3, [sp]
	mov	r3, #264
	ldr	r2, .L9+40
.LPIC8:
	add	r2, pc, r2
	ldr	r1, .L9+44
.LPIC9:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	movw	r3, #64254
	movt	r3, 65535
	str	r3, [fp, #-16]
	b	.L3
.L8:
	.loc 1 270 1 is_stmt 1
	nop
.L3:
	.loc 1 271 10
	ldr	r3, [fp, #-16]
	.loc 1 272 1
	mov	r0, r3
	sub	sp, fp, #8
	.cfi_def_cfa 13, 12
	@ sp needed
	pop	{r4, fp, pc}
.L10:
	.align	2
.L9:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+8)
	.word	.LC6-(.LPIC0+8)
	.word	stdout(GOT)
	.word	.LC7-(.LPIC2+8)
	.word	.LC8-(.LPIC3+8)
	.word	stderr(GOT)
	.word	.LC9-(.LPIC4+8)
	.word	.LC10-(.LPIC5+8)
	.word	.LC13-(.LPIC6+8)
	.word	.LC14-(.LPIC7+8)
	.word	.LC11-(.LPIC8+8)
	.word	.LC12-(.LPIC9+8)
	.cfi_endproc
.LFE1:
	.size	CreateTxtFilePtr, .-CreateTxtFilePtr
	.align	2
	.global	FreeFilePtr
	.syntax unified
	.arm
	.fpu vfpv3
	.type	FreeFilePtr, %function
FreeFilePtr:
.LFB2:
	.loc 1 277 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	ldr	r3, .L14
.LPIC10:
	add	r3, pc, r3
	.loc 1 278 14
	ldr	r2, [fp, #-16]
	ldr	r2, [r2]
	str	r2, [fp, #-8]
	.loc 1 279 16
	ldr	r2, .L14+4
	ldr	r2, [r3, r2]
	ldr	r2, [r2]
	.loc 1 279 5
	ldr	r1, [fp, #-8]
	cmp	r1, r2
	beq	.L12
	.loc 1 279 36 discriminator 1
	ldr	r2, .L14+8
	ldr	r3, [r3, r2]
	ldr	r3, [r3]
	.loc 1 279 24 discriminator 1
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	beq	.L12
	.loc 1 279 44 discriminator 2
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L12
	.loc 1 280 5
	ldr	r0, [fp, #-8]
	bl	fclose(PLT)
.L12:
	.loc 1 282 11
	ldr	r3, [fp, #-16]
	mov	r2, #0
	str	r2, [r3]
	.loc 1 283 10
	mov	r3, #0
	.loc 1 284 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L15:
	.align	2
.L14:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC10+8)
	.word	stdout(GOT)
	.word	stderr(GOT)
	.cfi_endproc
.LFE2:
	.size	FreeFilePtr, .-FreeFilePtr
	.section	.rodata
	.align	2
.LC15:
	.ascii	"TB \000"
	.align	2
.LC16:
	.ascii	"CreateTxtFilePtr(*(char**)pArgData, &lclStream)\000"
	.align	2
.LC17:
	.ascii	"EeeP_CreateCOM0R20_MEEPCfg(lclStream)\000"
	.text
	.align	2
	.global	CMD_CreateCOM0R20_MEEPCfg
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CMD_CreateCOM0R20_MEEPCfg, %function
CMD_CreateCOM0R20_MEEPCfg:
.LFB3:
	.loc 1 295 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #40
	str	r0, [fp, #-24]
	.loc 1 295 1
	ldr	r2, .L22
.LPIC19:
	add	r2, pc, r2
	ldr	r3, .L22+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 296 16
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 297 9
	mov	r3, #0
	str	r3, [fp, #-16]
	.loc 1 299 3
	ldr	r3, [fp, #-24]
	ldr	r3, [r3]
	sub	r2, fp, #16
	mov	r1, r2
	mov	r0, r3
	bl	CreateTxtFilePtr(PLT)
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L17
	.loc 1 299 3 is_stmt 0 discriminator 1
	ldr	r3, .L22+8
.LPIC11:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L22+12
.LPIC12:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-12]
	str	r3, [sp]
	movw	r3, #299
	ldr	r2, .L22+16
.LPIC13:
	add	r2, pc, r2
	ldr	r1, .L22+20
.LPIC14:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L18
.L17:
	.loc 1 300 3 is_stmt 1
	ldr	r3, [fp, #-16]
	mov	r0, r3
	bl	EeeP_CreateCOM0R20_MEEPCfg(PLT)
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L21
	.loc 1 300 3 is_stmt 0 discriminator 1
	ldr	r3, .L22+24
.LPIC15:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L22+28
.LPIC16:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-12]
	str	r3, [sp]
	mov	r3, #300
	ldr	r2, .L22+32
.LPIC17:
	add	r2, pc, r2
	ldr	r1, .L22+36
.LPIC18:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L18
.L21:
	.loc 1 302 1 is_stmt 1
	nop
.L18:
	.loc 1 303 3
	sub	r3, fp, #16
	mov	r0, r3
	bl	FreeFilePtr(PLT)
	.loc 1 304 10
	ldr	r3, [fp, #-12]
	.loc 1 295 1
	ldr	r1, .L22+40
.LPIC20:
	add	r1, pc, r1
	.loc 1 305 1
	ldr	r2, .L22+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L20
	bl	__stack_chk_fail(PLT)
.L20:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L23:
	.align	2
.L22:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC19+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC16-(.LPIC11+8)
	.word	.LC14-(.LPIC12+8)
	.word	.LC15-(.LPIC13+8)
	.word	.LC12-(.LPIC14+8)
	.word	.LC17-(.LPIC15+8)
	.word	.LC14-(.LPIC16+8)
	.word	.LC15-(.LPIC17+8)
	.word	.LC12-(.LPIC18+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC20+8)
	.cfi_endproc
.LFE3:
	.size	CMD_CreateCOM0R20_MEEPCfg, .-CMD_CreateCOM0R20_MEEPCfg
	.section	.rodata
	.align	2
.LC18:
	.ascii	"EeeP_CreateCOM0R20_CBCfg(lclStream)\000"
	.text
	.align	2
	.global	CMD_CreateCOM0R20_CBCfg
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CMD_CreateCOM0R20_CBCfg, %function
CMD_CreateCOM0R20_CBCfg:
.LFB4:
	.loc 1 310 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #40
	str	r0, [fp, #-24]
	.loc 1 310 1
	ldr	r2, .L30
.LPIC29:
	add	r2, pc, r2
	ldr	r3, .L30+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 311 16
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 312 9
	mov	r3, #0
	str	r3, [fp, #-16]
	.loc 1 314 3
	ldr	r3, [fp, #-24]
	ldr	r3, [r3]
	sub	r2, fp, #16
	mov	r1, r2
	mov	r0, r3
	bl	CreateTxtFilePtr(PLT)
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L25
	.loc 1 314 3 is_stmt 0 discriminator 1
	ldr	r3, .L30+8
.LPIC21:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L30+12
.LPIC22:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-12]
	str	r3, [sp]
	movw	r3, #314
	ldr	r2, .L30+16
.LPIC23:
	add	r2, pc, r2
	ldr	r1, .L30+20
.LPIC24:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L26
.L25:
	.loc 1 315 3 is_stmt 1
	ldr	r3, [fp, #-16]
	mov	r0, r3
	bl	EeeP_CreateCOM0R20_CBCfg(PLT)
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L29
	.loc 1 315 3 is_stmt 0 discriminator 1
	ldr	r3, .L30+24
.LPIC25:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L30+28
.LPIC26:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-12]
	str	r3, [sp]
	movw	r3, #315
	ldr	r2, .L30+32
.LPIC27:
	add	r2, pc, r2
	ldr	r1, .L30+36
.LPIC28:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L26
.L29:
	.loc 1 317 1 is_stmt 1
	nop
.L26:
	.loc 1 318 3
	sub	r3, fp, #16
	mov	r0, r3
	bl	FreeFilePtr(PLT)
	.loc 1 319 10
	ldr	r3, [fp, #-12]
	.loc 1 310 1
	ldr	r1, .L30+40
.LPIC30:
	add	r1, pc, r1
	.loc 1 320 1
	ldr	r2, .L30+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L28
	bl	__stack_chk_fail(PLT)
.L28:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L31:
	.align	2
.L30:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC29+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC16-(.LPIC21+8)
	.word	.LC14-(.LPIC22+8)
	.word	.LC15-(.LPIC23+8)
	.word	.LC12-(.LPIC24+8)
	.word	.LC18-(.LPIC25+8)
	.word	.LC14-(.LPIC26+8)
	.word	.LC15-(.LPIC27+8)
	.word	.LC12-(.LPIC28+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC30+8)
	.cfi_endproc
.LFE4:
	.size	CMD_CreateCOM0R20_CBCfg, .-CMD_CreateCOM0R20_CBCfg
	.section	.rodata
	.align	2
.LC19:
	.ascii	"EeeP_CreateEeePExtEEPCfg(lclStream)\000"
	.text
	.align	2
	.global	CMD_CreateCOM0R20_EeePExtCfg
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CMD_CreateCOM0R20_EeePExtCfg, %function
CMD_CreateCOM0R20_EeePExtCfg:
.LFB5:
	.loc 1 325 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #40
	str	r0, [fp, #-24]
	.loc 1 325 1
	ldr	r2, .L38
.LPIC39:
	add	r2, pc, r2
	ldr	r3, .L38+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 326 16
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 327 9
	mov	r3, #0
	str	r3, [fp, #-16]
	.loc 1 329 3
	ldr	r3, [fp, #-24]
	ldr	r3, [r3]
	sub	r2, fp, #16
	mov	r1, r2
	mov	r0, r3
	bl	CreateTxtFilePtr(PLT)
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L33
	.loc 1 329 3 is_stmt 0 discriminator 1
	ldr	r3, .L38+8
.LPIC31:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L38+12
.LPIC32:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-12]
	str	r3, [sp]
	movw	r3, #329
	ldr	r2, .L38+16
.LPIC33:
	add	r2, pc, r2
	ldr	r1, .L38+20
.LPIC34:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L34
.L33:
	.loc 1 330 3 is_stmt 1
	ldr	r3, [fp, #-16]
	mov	r0, r3
	bl	EeeP_CreateEeePExtEEPCfg(PLT)
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L37
	.loc 1 330 3 is_stmt 0 discriminator 1
	ldr	r3, .L38+24
.LPIC35:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L38+28
.LPIC36:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-12]
	str	r3, [sp]
	movw	r3, #330
	ldr	r2, .L38+32
.LPIC37:
	add	r2, pc, r2
	ldr	r1, .L38+36
.LPIC38:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L34
.L37:
	.loc 1 332 1 is_stmt 1
	nop
.L34:
	.loc 1 333 3
	sub	r3, fp, #16
	mov	r0, r3
	bl	FreeFilePtr(PLT)
	.loc 1 334 10
	ldr	r3, [fp, #-12]
	.loc 1 325 1
	ldr	r1, .L38+40
.LPIC40:
	add	r1, pc, r1
	.loc 1 335 1
	ldr	r2, .L38+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L36
	bl	__stack_chk_fail(PLT)
.L36:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L39:
	.align	2
.L38:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC39+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC16-(.LPIC31+8)
	.word	.LC14-(.LPIC32+8)
	.word	.LC15-(.LPIC33+8)
	.word	.LC12-(.LPIC34+8)
	.word	.LC19-(.LPIC35+8)
	.word	.LC14-(.LPIC36+8)
	.word	.LC15-(.LPIC37+8)
	.word	.LC12-(.LPIC38+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC40+8)
	.cfi_endproc
.LFE5:
	.size	CMD_CreateCOM0R20_EeePExtCfg, .-CMD_CreateCOM0R20_EeePExtCfg
	.section	.rodata
	.align	2
.LC20:
	.ascii	"EeeP_CreateCOM0R20_CBImage( &BHandel , *(char**)pAr"
	.ascii	"gData )\000"
	.align	2
.LC21:
	.ascii	"EeePWriteBufferToEEP(BHandel, EAPI_ID_I2C_EXTERNAL,"
	.ascii	" COM0R20_CB_EEP_DEV_ADDR)\000"
	.text
	.align	2
	.global	CMD_CreateCOM0R20CB_EEP
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CMD_CreateCOM0R20CB_EEP, %function
CMD_CreateCOM0R20CB_EEP:
.LFB6:
	.loc 1 341 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #40
	str	r0, [fp, #-24]
	.loc 1 341 1
	ldr	r2, .L46
.LPIC49:
	add	r2, pc, r2
	ldr	r3, .L46+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 342 16
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 343 16
	mov	r3, #0
	str	r3, [fp, #-16]
	.loc 1 345 3
	ldr	r3, [fp, #-24]
	ldr	r2, [r3]
	sub	r3, fp, #16
	mov	r1, r2
	mov	r0, r3
	bl	EeeP_CreateCOM0R20_CBImage(PLT)
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L41
	.loc 1 345 3 is_stmt 0 discriminator 1
	ldr	r3, .L46+8
.LPIC41:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L46+12
.LPIC42:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-12]
	str	r3, [sp]
	movw	r3, #345
	ldr	r2, .L46+16
.LPIC43:
	add	r2, pc, r2
	ldr	r1, .L46+20
.LPIC44:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L42
.L41:
	.loc 1 349 3 is_stmt 1
	ldr	r3, [fp, #-16]
	mov	r2, #174
	mov	r1, #0
	mov	r0, r3
	bl	EeePWriteBufferToEEP(PLT)
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L45
	.loc 1 349 3 is_stmt 0 discriminator 1
	ldr	r3, .L46+24
.LPIC45:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L46+28
.LPIC46:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-12]
	str	r3, [sp]
	movw	r3, #349
	ldr	r2, .L46+32
.LPIC47:
	add	r2, pc, r2
	ldr	r1, .L46+36
.LPIC48:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L42
.L45:
	.loc 1 351 1 is_stmt 1
	nop
.L42:
	.loc 1 352 3
	sub	r3, fp, #16
	mov	r0, r3
	bl	EeePFreeBuffer(PLT)
	.loc 1 353 10
	ldr	r3, [fp, #-12]
	.loc 1 341 1
	ldr	r1, .L46+40
.LPIC50:
	add	r1, pc, r1
	.loc 1 354 1
	ldr	r2, .L46+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L44
	bl	__stack_chk_fail(PLT)
.L44:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L47:
	.align	2
.L46:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC49+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC20-(.LPIC41+8)
	.word	.LC14-(.LPIC42+8)
	.word	.LC15-(.LPIC43+8)
	.word	.LC12-(.LPIC44+8)
	.word	.LC21-(.LPIC45+8)
	.word	.LC14-(.LPIC46+8)
	.word	.LC15-(.LPIC47+8)
	.word	.LC12-(.LPIC48+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC50+8)
	.cfi_endproc
.LFE6:
	.size	CMD_CreateCOM0R20CB_EEP, .-CMD_CreateCOM0R20CB_EEP
	.section	.rodata
	.align	2
.LC22:
	.ascii	"EeeP_CreateCOM0R20_MEEPImage( &BHandel , *(char**)p"
	.ascii	"ArgData )\000"
	.align	2
.LC23:
	.ascii	"EeePWriteBufferToEEP(BHandel, EAPI_ID_I2C_EXTERNAL,"
	.ascii	" COM0R20_M_EEP_DEV_ADDR)\000"
	.text
	.align	2
	.global	CMD_CreateCOM0R20M_EEP
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CMD_CreateCOM0R20M_EEP, %function
CMD_CreateCOM0R20M_EEP:
.LFB7:
	.loc 1 360 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #40
	str	r0, [fp, #-24]
	.loc 1 360 1
	ldr	r2, .L54
.LPIC59:
	add	r2, pc, r2
	ldr	r3, .L54+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 361 16
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 362 16
	mov	r3, #0
	str	r3, [fp, #-16]
	.loc 1 364 3
	ldr	r3, [fp, #-24]
	ldr	r2, [r3]
	sub	r3, fp, #16
	mov	r1, r2
	mov	r0, r3
	bl	EeeP_CreateCOM0R20_MEEPImage(PLT)
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L49
	.loc 1 364 3 is_stmt 0 discriminator 1
	ldr	r3, .L54+8
.LPIC51:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L54+12
.LPIC52:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-12]
	str	r3, [sp]
	mov	r3, #364
	ldr	r2, .L54+16
.LPIC53:
	add	r2, pc, r2
	ldr	r1, .L54+20
.LPIC54:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L50
.L49:
	.loc 1 368 3 is_stmt 1
	ldr	r3, [fp, #-16]
	mov	r2, #160
	mov	r1, #0
	mov	r0, r3
	bl	EeePWriteBufferToEEP(PLT)
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L53
	.loc 1 368 3 is_stmt 0 discriminator 1
	ldr	r3, .L54+24
.LPIC55:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L54+28
.LPIC56:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-12]
	str	r3, [sp]
	mov	r3, #368
	ldr	r2, .L54+32
.LPIC57:
	add	r2, pc, r2
	ldr	r1, .L54+36
.LPIC58:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L50
.L53:
	.loc 1 370 1 is_stmt 1
	nop
.L50:
	.loc 1 371 3
	sub	r3, fp, #16
	mov	r0, r3
	bl	EeePFreeBuffer(PLT)
	.loc 1 372 10
	ldr	r3, [fp, #-12]
	.loc 1 360 1
	ldr	r1, .L54+40
.LPIC60:
	add	r1, pc, r1
	.loc 1 373 1
	ldr	r2, .L54+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L52
	bl	__stack_chk_fail(PLT)
.L52:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L55:
	.align	2
.L54:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC59+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC22-(.LPIC51+8)
	.word	.LC14-(.LPIC52+8)
	.word	.LC15-(.LPIC53+8)
	.word	.LC12-(.LPIC54+8)
	.word	.LC23-(.LPIC55+8)
	.word	.LC14-(.LPIC56+8)
	.word	.LC15-(.LPIC57+8)
	.word	.LC12-(.LPIC58+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC60+8)
	.cfi_endproc
.LFE7:
	.size	CMD_CreateCOM0R20M_EEP, .-CMD_CreateCOM0R20M_EEP
	.section	.rodata
	.align	2
.LC24:
	.ascii	"EeeP_CreateEeePExtEEPImage( &BHandel , ((WriteEepCf"
	.ascii	"g_t*)pArgData)->FileName )\000"
	.align	2
.LC25:
	.ascii	"EeePWriteBufferToEEP(BHandel, (uint16_t)((WriteEepC"
	.ascii	"fg_t*)pArgData)->I2CBus, (uint16_t)((WriteEepCfg_t*"
	.ascii	")pArgData)->I2CDevAddr )\000"
	.text
	.align	2
	.global	CMD_CreateEeePExt_EEP
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CMD_CreateEeePExt_EEP, %function
CMD_CreateEeePExt_EEP:
.LFB8:
	.loc 1 379 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #40
	str	r0, [fp, #-24]
	.loc 1 379 1
	ldr	r2, .L62
.LPIC69:
	add	r2, pc, r2
	ldr	r3, .L62+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 380 16
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 381 16
	mov	r3, #0
	str	r3, [fp, #-16]
	.loc 1 383 3
	ldr	r3, [fp, #-24]
	ldr	r2, [r3]
	sub	r3, fp, #16
	mov	r1, r2
	mov	r0, r3
	bl	EeeP_CreateEeePExtEEPImage(PLT)
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L57
	.loc 1 383 3 is_stmt 0 discriminator 1
	ldr	r3, .L62+8
.LPIC61:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L62+12
.LPIC62:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-12]
	str	r3, [sp]
	movw	r3, #383
	ldr	r2, .L62+16
.LPIC63:
	add	r2, pc, r2
	ldr	r1, .L62+20
.LPIC64:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L58
.L57:
	.loc 1 387 3 is_stmt 1
	ldr	r0, [fp, #-16]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #4]
	uxth	r3, r3
	mov	r1, r3
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #8]
	uxth	r3, r3
	mov	r2, r3
	bl	EeePWriteBufferToEEP(PLT)
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L61
	.loc 1 387 3 is_stmt 0 discriminator 1
	ldr	r3, .L62+24
.LPIC65:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L62+28
.LPIC66:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-12]
	str	r3, [sp]
	movw	r3, #387
	ldr	r2, .L62+32
.LPIC67:
	add	r2, pc, r2
	ldr	r1, .L62+36
.LPIC68:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L58
.L61:
	.loc 1 393 1 is_stmt 1
	nop
.L58:
	.loc 1 394 3
	sub	r3, fp, #16
	mov	r0, r3
	bl	EeePFreeBuffer(PLT)
	.loc 1 395 10
	ldr	r3, [fp, #-12]
	.loc 1 379 1
	ldr	r1, .L62+40
.LPIC70:
	add	r1, pc, r1
	.loc 1 396 1
	ldr	r2, .L62+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L60
	bl	__stack_chk_fail(PLT)
.L60:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L63:
	.align	2
.L62:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC69+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC24-(.LPIC61+8)
	.word	.LC14-(.LPIC62+8)
	.word	.LC15-(.LPIC63+8)
	.word	.LC12-(.LPIC64+8)
	.word	.LC25-(.LPIC65+8)
	.word	.LC14-(.LPIC66+8)
	.word	.LC15-(.LPIC67+8)
	.word	.LC12-(.LPIC68+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC70+8)
	.cfi_endproc
.LFE8:
	.size	CMD_CreateEeePExt_EEP, .-CMD_CreateEeePExt_EEP
	.section	.rodata
	.align	2
.LC26:
	.ascii	"EeePReadBufferFromFile( &BHandel , *(char**)pArgDat"
	.ascii	"a )\000"
	.align	2
.LC27:
	.ascii	"Com0\000"
	.align	2
.LC28:
	.ascii	"CMD_ProgramCOM0R20CB_EEP\000"
	.align	2
.LC29:
	.ascii	"Not Valid COM0 R2.0 Carrier Board Image\000"
	.text
	.align	2
	.global	CMD_ProgramCOM0R20CB_EEP
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CMD_ProgramCOM0R20CB_EEP, %function
CMD_ProgramCOM0R20CB_EEP:
.LFB9:
	.loc 1 403 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #40
	str	r0, [fp, #-24]
	.loc 1 403 1
	ldr	r2, .L71
.LPIC84:
	add	r2, pc, r2
	ldr	r3, .L71+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 404 16
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 405 16
	mov	r3, #0
	str	r3, [fp, #-16]
	.loc 1 407 3
	ldr	r3, [fp, #-24]
	ldr	r2, [r3]
	sub	r3, fp, #16
	mov	r1, r2
	mov	r0, r3
	bl	EeePReadBufferFromFile(PLT)
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L65
	.loc 1 407 3 is_stmt 0 discriminator 1
	ldr	r3, .L71+8
.LPIC71:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L71+12
.LPIC72:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-12]
	str	r3, [sp]
	movw	r3, #407
	ldr	r2, .L71+16
.LPIC73:
	add	r2, pc, r2
	ldr	r1, .L71+20
.LPIC74:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L66
.L65:
	.loc 1 411 14 is_stmt 1
	ldr	r3, [fp, #-16]
	.loc 1 411 38
	add	r3, r3, #6
	.loc 1 411 6
	mov	r2, #4
	ldr	r1, .L71+24
.LPIC75:
	add	r1, pc, r1
	mov	r0, r3
	bl	memcmp(PLT)
	mov	r3, r0
	.loc 1 411 5
	cmp	r3, #0
	beq	.L67
	.loc 1 412 5
	ldr	r3, .L71+28
.LPIC76:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L71+32
.LPIC77:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #3840
	str	r3, [sp]
	mov	r3, #412
	ldr	r2, .L71+36
.LPIC78:
	add	r2, pc, r2
	ldr	r1, .L71+40
.LPIC79:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #3840
	str	r3, [fp, #-12]
	b	.L66
.L67:
	.loc 1 418 3
	ldr	r3, [fp, #-16]
	mov	r2, #174
	mov	r1, #0
	mov	r0, r3
	bl	EeePWriteBufferToEEP(PLT)
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L70
	.loc 1 418 3 is_stmt 0 discriminator 1
	ldr	r3, .L71+44
.LPIC80:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L71+48
.LPIC81:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-12]
	str	r3, [sp]
	movw	r3, #418
	ldr	r2, .L71+52
.LPIC82:
	add	r2, pc, r2
	ldr	r1, .L71+56
.LPIC83:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L66
.L70:
	.loc 1 420 1 is_stmt 1
	nop
.L66:
	.loc 1 421 3
	sub	r3, fp, #16
	mov	r0, r3
	bl	EeePFreeBuffer(PLT)
	.loc 1 422 10
	ldr	r3, [fp, #-12]
	.loc 1 403 1
	ldr	r1, .L71+60
.LPIC85:
	add	r1, pc, r1
	.loc 1 423 1
	ldr	r2, .L71+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L69
	bl	__stack_chk_fail(PLT)
.L69:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L72:
	.align	2
.L71:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC84+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC26-(.LPIC71+8)
	.word	.LC14-(.LPIC72+8)
	.word	.LC15-(.LPIC73+8)
	.word	.LC12-(.LPIC74+8)
	.word	.LC27-(.LPIC75+8)
	.word	.LC29-(.LPIC76+8)
	.word	.LC14-(.LPIC77+8)
	.word	.LC28-(.LPIC78+8)
	.word	.LC12-(.LPIC79+8)
	.word	.LC21-(.LPIC80+8)
	.word	.LC14-(.LPIC81+8)
	.word	.LC15-(.LPIC82+8)
	.word	.LC12-(.LPIC83+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC85+8)
	.cfi_endproc
.LFE9:
	.size	CMD_ProgramCOM0R20CB_EEP, .-CMD_ProgramCOM0R20CB_EEP
	.section	.rodata
	.align	2
.LC30:
	.ascii	"coM0\000"
	.align	2
.LC31:
	.ascii	"CMD_ProgramCOM0R20M_EEP\000"
	.align	2
.LC32:
	.ascii	"Not Valid COM0 R2.0 Module Image\000"
	.text
	.align	2
	.global	CMD_ProgramCOM0R20M_EEP
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CMD_ProgramCOM0R20M_EEP, %function
CMD_ProgramCOM0R20M_EEP:
.LFB10:
	.loc 1 429 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #40
	str	r0, [fp, #-24]
	.loc 1 429 1
	ldr	r2, .L80
.LPIC99:
	add	r2, pc, r2
	ldr	r3, .L80+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 430 16
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 431 16
	mov	r3, #0
	str	r3, [fp, #-16]
	.loc 1 433 3
	ldr	r3, [fp, #-24]
	ldr	r2, [r3]
	sub	r3, fp, #16
	mov	r1, r2
	mov	r0, r3
	bl	EeePReadBufferFromFile(PLT)
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L74
	.loc 1 433 3 is_stmt 0 discriminator 1
	ldr	r3, .L80+8
.LPIC86:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L80+12
.LPIC87:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-12]
	str	r3, [sp]
	movw	r3, #433
	ldr	r2, .L80+16
.LPIC88:
	add	r2, pc, r2
	ldr	r1, .L80+20
.LPIC89:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L75
.L74:
	.loc 1 437 14 is_stmt 1
	ldr	r3, [fp, #-16]
	.loc 1 437 37
	add	r3, r3, #6
	.loc 1 437 6
	mov	r2, #4
	ldr	r1, .L80+24
.LPIC90:
	add	r1, pc, r1
	mov	r0, r3
	bl	memcmp(PLT)
	mov	r3, r0
	.loc 1 437 5
	cmp	r3, #0
	beq	.L76
	.loc 1 438 5
	ldr	r3, .L80+28
.LPIC91:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L80+32
.LPIC92:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #3840
	str	r3, [sp]
	movw	r3, #438
	ldr	r2, .L80+36
.LPIC93:
	add	r2, pc, r2
	ldr	r1, .L80+40
.LPIC94:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #3840
	str	r3, [fp, #-12]
	b	.L75
.L76:
	.loc 1 444 3
	ldr	r3, [fp, #-16]
	mov	r2, #160
	mov	r1, #0
	mov	r0, r3
	bl	EeePWriteBufferToEEP(PLT)
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L79
	.loc 1 444 3 is_stmt 0 discriminator 1
	ldr	r3, .L80+44
.LPIC95:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L80+48
.LPIC96:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-12]
	str	r3, [sp]
	mov	r3, #444
	ldr	r2, .L80+52
.LPIC97:
	add	r2, pc, r2
	ldr	r1, .L80+56
.LPIC98:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L75
.L79:
	.loc 1 446 1 is_stmt 1
	nop
.L75:
	.loc 1 447 3
	sub	r3, fp, #16
	mov	r0, r3
	bl	EeePFreeBuffer(PLT)
	.loc 1 448 10
	ldr	r3, [fp, #-12]
	.loc 1 429 1
	ldr	r1, .L80+60
.LPIC100:
	add	r1, pc, r1
	.loc 1 449 1
	ldr	r2, .L80+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L78
	bl	__stack_chk_fail(PLT)
.L78:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L81:
	.align	2
.L80:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC99+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC26-(.LPIC86+8)
	.word	.LC14-(.LPIC87+8)
	.word	.LC15-(.LPIC88+8)
	.word	.LC12-(.LPIC89+8)
	.word	.LC30-(.LPIC90+8)
	.word	.LC32-(.LPIC91+8)
	.word	.LC14-(.LPIC92+8)
	.word	.LC31-(.LPIC93+8)
	.word	.LC12-(.LPIC94+8)
	.word	.LC23-(.LPIC95+8)
	.word	.LC14-(.LPIC96+8)
	.word	.LC15-(.LPIC97+8)
	.word	.LC12-(.LPIC98+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC100+8)
	.cfi_endproc
.LFE10:
	.size	CMD_ProgramCOM0R20M_EEP, .-CMD_ProgramCOM0R20M_EEP
	.section	.rodata
	.align	2
.LC33:
	.ascii	"EeePReadBufferFromFile( &BHandel , ((WriteEepCfg_t*"
	.ascii	")pArgData)->FileName )\000"
	.align	2
.LC34:
	.ascii	"EXP1\000"
	.align	2
.LC35:
	.ascii	"CMD_ProgramEeePExt_EEP\000"
	.align	2
.LC36:
	.ascii	"Not Valid EeeP Extended EEP Image\000"
	.align	2
.LC37:
	.ascii	"EeePWriteBufferToEEP( BHandel, (uint16_t)((WriteEep"
	.ascii	"Cfg_t*)pArgData)->I2CBus, (uint16_t)((WriteEepCfg_t"
	.ascii	"*)pArgData)->I2CDevAddr )\000"
	.text
	.align	2
	.global	CMD_ProgramEeePExt_EEP
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CMD_ProgramEeePExt_EEP, %function
CMD_ProgramEeePExt_EEP:
.LFB11:
	.loc 1 456 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #40
	str	r0, [fp, #-24]
	.loc 1 456 1
	ldr	r2, .L89
.LPIC114:
	add	r2, pc, r2
	ldr	r3, .L89+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 457 16
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 458 16
	mov	r3, #0
	str	r3, [fp, #-16]
	.loc 1 460 3
	ldr	r3, [fp, #-24]
	ldr	r2, [r3]
	sub	r3, fp, #16
	mov	r1, r2
	mov	r0, r3
	bl	EeePReadBufferFromFile(PLT)
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L83
	.loc 1 460 3 is_stmt 0 discriminator 1
	ldr	r3, .L89+8
.LPIC101:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L89+12
.LPIC102:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-12]
	str	r3, [sp]
	mov	r3, #460
	ldr	r2, .L89+16
.LPIC103:
	add	r2, pc, r2
	ldr	r1, .L89+20
.LPIC104:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L84
.L83:
	.loc 1 464 14 is_stmt 1
	ldr	r3, [fp, #-16]
	.loc 1 464 35
	add	r3, r3, #6
	.loc 1 464 6
	mov	r2, #4
	ldr	r1, .L89+24
.LPIC105:
	add	r1, pc, r1
	mov	r0, r3
	bl	memcmp(PLT)
	mov	r3, r0
	.loc 1 464 5
	cmp	r3, #0
	beq	.L85
	.loc 1 465 5
	ldr	r3, .L89+28
.LPIC106:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L89+32
.LPIC107:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #3840
	str	r3, [sp]
	movw	r3, #465
	ldr	r2, .L89+36
.LPIC108:
	add	r2, pc, r2
	ldr	r1, .L89+40
.LPIC109:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #3840
	str	r3, [fp, #-12]
	b	.L84
.L85:
	.loc 1 471 3
	ldr	r0, [fp, #-16]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #4]
	uxth	r3, r3
	mov	r1, r3
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #8]
	uxth	r3, r3
	mov	r2, r3
	bl	EeePWriteBufferToEEP(PLT)
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L88
	.loc 1 471 3 is_stmt 0 discriminator 1
	ldr	r3, .L89+44
.LPIC110:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L89+48
.LPIC111:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-12]
	str	r3, [sp]
	movw	r3, #471
	ldr	r2, .L89+52
.LPIC112:
	add	r2, pc, r2
	ldr	r1, .L89+56
.LPIC113:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L84
.L88:
	.loc 1 477 1 is_stmt 1
	nop
.L84:
	.loc 1 478 3
	sub	r3, fp, #16
	mov	r0, r3
	bl	EeePFreeBuffer(PLT)
	.loc 1 479 10
	ldr	r3, [fp, #-12]
	.loc 1 456 1
	ldr	r1, .L89+60
.LPIC115:
	add	r1, pc, r1
	.loc 1 480 1
	ldr	r2, .L89+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L87
	bl	__stack_chk_fail(PLT)
.L87:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L90:
	.align	2
.L89:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC114+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC33-(.LPIC101+8)
	.word	.LC14-(.LPIC102+8)
	.word	.LC15-(.LPIC103+8)
	.word	.LC12-(.LPIC104+8)
	.word	.LC34-(.LPIC105+8)
	.word	.LC36-(.LPIC106+8)
	.word	.LC14-(.LPIC107+8)
	.word	.LC35-(.LPIC108+8)
	.word	.LC12-(.LPIC109+8)
	.word	.LC37-(.LPIC110+8)
	.word	.LC14-(.LPIC111+8)
	.word	.LC15-(.LPIC112+8)
	.word	.LC12-(.LPIC113+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC115+8)
	.cfi_endproc
.LFE11:
	.size	CMD_ProgramEeePExt_EEP, .-CMD_ProgramEeePExt_EEP
	.section	.rodata
	.align	2
.LC38:
	.ascii	"EeePReadBufferFromEEP( &BHandel, (uint16_t)((WriteE"
	.ascii	"epCfg_t*)pArgData)->I2CBus, (uint16_t)((WriteEepCfg"
	.ascii	"_t*)pArgData)->I2CDevAddr )\000"
	.align	2
.LC39:
	.ascii	"EeePWriteBufferToFile(BHandel, ((WriteEepCfg_t*)pAr"
	.ascii	"gData)->FileName)\000"
	.text
	.align	2
	.global	CMD_StoreEeePExt_EEP
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CMD_StoreEeePExt_EEP, %function
CMD_StoreEeePExt_EEP:
.LFB12:
	.loc 1 486 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #40
	str	r0, [fp, #-24]
	.loc 1 486 1
	ldr	r2, .L97
.LPIC124:
	add	r2, pc, r2
	ldr	r3, .L97+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 487 16
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 488 16
	mov	r3, #0
	str	r3, [fp, #-16]
	.loc 1 489 3
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #4]
	uxth	r3, r3
	mov	r1, r3
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #8]
	uxth	r2, r3
	sub	r3, fp, #16
	mov	r0, r3
	bl	EeePReadBufferFromEEP(PLT)
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L92
	.loc 1 489 3 is_stmt 0 discriminator 1
	ldr	r3, .L97+8
.LPIC116:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L97+12
.LPIC117:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-12]
	str	r3, [sp]
	movw	r3, #489
	ldr	r2, .L97+16
.LPIC118:
	add	r2, pc, r2
	ldr	r1, .L97+20
.LPIC119:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L93
.L92:
	.loc 1 494 3 is_stmt 1
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3]
	mov	r1, r3
	mov	r0, r2
	bl	EeePWriteBufferToFile(PLT)
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L96
	.loc 1 494 3 is_stmt 0 discriminator 1
	ldr	r3, .L97+24
.LPIC120:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L97+28
.LPIC121:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-12]
	str	r3, [sp]
	movw	r3, #494
	ldr	r2, .L97+32
.LPIC122:
	add	r2, pc, r2
	ldr	r1, .L97+36
.LPIC123:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L93
.L96:
	.loc 1 496 1 is_stmt 1
	nop
.L93:
	.loc 1 497 3
	sub	r3, fp, #16
	mov	r0, r3
	bl	EeePFreeBuffer(PLT)
	.loc 1 498 10
	ldr	r3, [fp, #-12]
	.loc 1 486 1
	ldr	r1, .L97+40
.LPIC125:
	add	r1, pc, r1
	.loc 1 499 1
	ldr	r2, .L97+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L95
	bl	__stack_chk_fail(PLT)
.L95:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L98:
	.align	2
.L97:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC124+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC38-(.LPIC116+8)
	.word	.LC14-(.LPIC117+8)
	.word	.LC15-(.LPIC118+8)
	.word	.LC12-(.LPIC119+8)
	.word	.LC39-(.LPIC120+8)
	.word	.LC14-(.LPIC121+8)
	.word	.LC15-(.LPIC122+8)
	.word	.LC12-(.LPIC123+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC125+8)
	.cfi_endproc
.LFE12:
	.size	CMD_StoreEeePExt_EEP, .-CMD_StoreEeePExt_EEP
	.align	2
	.global	CMD_StoreCOM0R20_CB_EEP
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CMD_StoreCOM0R20_CB_EEP, %function
CMD_StoreCOM0R20_CB_EEP:
.LFB13:
	.loc 1 505 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #24
	str	r0, [fp, #-24]
	.loc 1 505 1
	ldr	r2, .L102
.LPIC126:
	add	r2, pc, r2
	ldr	r3, .L102+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 506 17
	mov	r3, #0
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-16]
	mov	r3, #174
	str	r3, [fp, #-12]
	.loc 1 507 21
	ldr	r3, [fp, #-24]
	ldr	r3, [r3]
	.loc 1 507 20
	str	r3, [fp, #-20]
	.loc 1 508 10
	sub	r3, fp, #20
	mov	r0, r3
	bl	CMD_StoreEeePExt_EEP(PLT)
	mov	r3, r0
	.loc 1 505 1
	ldr	r1, .L102+8
.LPIC127:
	add	r1, pc, r1
	.loc 1 509 1
	ldr	r2, .L102+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L101
	bl	__stack_chk_fail(PLT)
.L101:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L103:
	.align	2
.L102:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC126+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC127+8)
	.cfi_endproc
.LFE13:
	.size	CMD_StoreCOM0R20_CB_EEP, .-CMD_StoreCOM0R20_CB_EEP
	.align	2
	.global	CMD_StoreCOM0R20_M_EEP
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CMD_StoreCOM0R20_M_EEP, %function
CMD_StoreCOM0R20_M_EEP:
.LFB14:
	.loc 1 515 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #24
	str	r0, [fp, #-24]
	.loc 1 515 1
	ldr	r2, .L107
.LPIC128:
	add	r2, pc, r2
	ldr	r3, .L107+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 516 17
	mov	r3, #0
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-16]
	mov	r3, #160
	str	r3, [fp, #-12]
	.loc 1 517 21
	ldr	r3, [fp, #-24]
	ldr	r3, [r3]
	.loc 1 517 20
	str	r3, [fp, #-20]
	.loc 1 518 10
	sub	r3, fp, #20
	mov	r0, r3
	bl	CMD_StoreEeePExt_EEP(PLT)
	mov	r3, r0
	.loc 1 515 1
	ldr	r1, .L107+8
.LPIC129:
	add	r1, pc, r1
	.loc 1 519 1
	ldr	r2, .L107+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L106
	bl	__stack_chk_fail(PLT)
.L106:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L108:
	.align	2
.L107:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC128+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC129+8)
	.cfi_endproc
.LFE14:
	.size	CMD_StoreCOM0R20_M_EEP, .-CMD_StoreCOM0R20_M_EEP
	.section	.rodata
	.align	2
.LC40:
	.ascii	"EeePReadBufferFromEEP( &BHandel, (uint16_t)((I2CAdd"
	.ascii	"rCfg_t*)pArgData)->I2CBus, (uint16_t)((I2CAddrCfg_t"
	.ascii	"*)pArgData)->I2CDevAddr )\000"
	.align	2
.LC41:
	.ascii	"EeePListBlocks( BHandel, 0)\000"
	.text
	.align	2
	.global	CMD_ListDBlocksEeePExt_EEP
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CMD_ListDBlocksEeePExt_EEP, %function
CMD_ListDBlocksEeePExt_EEP:
.LFB15:
	.loc 1 525 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #40
	str	r0, [fp, #-24]
	.loc 1 525 1
	ldr	r2, .L115
.LPIC138:
	add	r2, pc, r2
	ldr	r3, .L115+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 526 16
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 527 16
	mov	r3, #0
	str	r3, [fp, #-16]
	.loc 1 528 3
	ldr	r3, [fp, #-24]
	ldr	r3, [r3]
	uxth	r3, r3
	mov	r1, r3
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #4]
	uxth	r2, r3
	sub	r3, fp, #16
	mov	r0, r3
	bl	EeePReadBufferFromEEP(PLT)
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L110
	.loc 1 528 3 is_stmt 0 discriminator 1
	ldr	r3, .L115+8
.LPIC130:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L115+12
.LPIC131:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-12]
	str	r3, [sp]
	mov	r3, #528
	ldr	r2, .L115+16
.LPIC132:
	add	r2, pc, r2
	ldr	r1, .L115+20
.LPIC133:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L111
.L110:
	.loc 1 533 3 is_stmt 1
	ldr	r3, [fp, #-16]
	mov	r1, #0
	mov	r0, r3
	bl	EeePListBlocks(PLT)
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L114
	.loc 1 533 3 is_stmt 0 discriminator 1
	ldr	r3, .L115+24
.LPIC134:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L115+28
.LPIC135:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-12]
	str	r3, [sp]
	movw	r3, #533
	ldr	r2, .L115+32
.LPIC136:
	add	r2, pc, r2
	ldr	r1, .L115+36
.LPIC137:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L111
.L114:
	.loc 1 535 1 is_stmt 1
	nop
.L111:
	.loc 1 536 3
	sub	r3, fp, #16
	mov	r0, r3
	bl	EeePFreeBuffer(PLT)
	.loc 1 537 10
	ldr	r3, [fp, #-12]
	.loc 1 525 1
	ldr	r1, .L115+40
.LPIC139:
	add	r1, pc, r1
	.loc 1 538 1
	ldr	r2, .L115+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L113
	bl	__stack_chk_fail(PLT)
.L113:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L116:
	.align	2
.L115:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC138+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC40-(.LPIC130+8)
	.word	.LC14-(.LPIC131+8)
	.word	.LC15-(.LPIC132+8)
	.word	.LC12-(.LPIC133+8)
	.word	.LC41-(.LPIC134+8)
	.word	.LC14-(.LPIC135+8)
	.word	.LC15-(.LPIC136+8)
	.word	.LC12-(.LPIC137+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC139+8)
	.cfi_endproc
.LFE15:
	.size	CMD_ListDBlocksEeePExt_EEP, .-CMD_ListDBlocksEeePExt_EEP
	.align	2
	.global	CMD_ListDBlocksCOM0R20_CB_EEP
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CMD_ListDBlocksCOM0R20_CB_EEP, %function
CMD_ListDBlocksCOM0R20_CB_EEP:
.LFB16:
	.loc 1 545 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #24
	str	r0, [fp, #-24]
	.loc 1 545 1
	ldr	r2, .L120
.LPIC140:
	add	r2, pc, r2
	ldr	r3, .L120+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 546 16
	mov	r3, #0
	str	r3, [fp, #-16]
	mov	r3, #174
	str	r3, [fp, #-12]
	.loc 1 548 10
	sub	r3, fp, #16
	mov	r0, r3
	bl	CMD_ListDBlocksEeePExt_EEP(PLT)
	mov	r3, r0
	.loc 1 545 1
	ldr	r1, .L120+8
.LPIC141:
	add	r1, pc, r1
	.loc 1 549 1
	ldr	r2, .L120+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L119
	bl	__stack_chk_fail(PLT)
.L119:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L121:
	.align	2
.L120:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC140+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC141+8)
	.cfi_endproc
.LFE16:
	.size	CMD_ListDBlocksCOM0R20_CB_EEP, .-CMD_ListDBlocksCOM0R20_CB_EEP
	.align	2
	.global	CMD_ListDBlocksCOM0R20_M_EEP
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CMD_ListDBlocksCOM0R20_M_EEP, %function
CMD_ListDBlocksCOM0R20_M_EEP:
.LFB17:
	.loc 1 554 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #24
	str	r0, [fp, #-24]
	.loc 1 554 1
	ldr	r2, .L125
.LPIC142:
	add	r2, pc, r2
	ldr	r3, .L125+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 555 16
	mov	r3, #0
	str	r3, [fp, #-16]
	mov	r3, #160
	str	r3, [fp, #-12]
	.loc 1 557 10
	sub	r3, fp, #16
	mov	r0, r3
	bl	CMD_ListDBlocksEeePExt_EEP(PLT)
	mov	r3, r0
	.loc 1 554 1
	ldr	r1, .L125+8
.LPIC143:
	add	r1, pc, r1
	.loc 1 558 1
	ldr	r2, .L125+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L124
	bl	__stack_chk_fail(PLT)
.L124:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L126:
	.align	2
.L125:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC142+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC143+8)
	.cfi_endproc
.LFE17:
	.size	CMD_ListDBlocksCOM0R20_M_EEP, .-CMD_ListDBlocksCOM0R20_M_EEP
	.section	.rodata
	.align	2
.LC42:
	.ascii	"EeeP_CreateEeePExtEEPImage( &BHandel , ((InOutFiles"
	.ascii	"_t*)pArgData)->InFile )\000"
	.align	2
.LC43:
	.ascii	"EeePWriteBufferToFile(BHandel, ((InOutFiles_t*)pArg"
	.ascii	"Data)->OutFile)\000"
	.text
	.align	2
	.global	CMD_CreateExtEepEEP_IMG
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CMD_CreateExtEepEEP_IMG, %function
CMD_CreateExtEepEEP_IMG:
.LFB18:
	.loc 1 564 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #40
	str	r0, [fp, #-24]
	.loc 1 564 1
	ldr	r2, .L133
.LPIC152:
	add	r2, pc, r2
	ldr	r3, .L133+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 565 16
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 566 16
	mov	r3, #0
	str	r3, [fp, #-16]
	.loc 1 568 3
	ldr	r3, [fp, #-24]
	ldr	r2, [r3]
	sub	r3, fp, #16
	mov	r1, r2
	mov	r0, r3
	bl	EeeP_CreateEeePExtEEPImage(PLT)
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L128
	.loc 1 568 3 is_stmt 0 discriminator 1
	ldr	r3, .L133+8
.LPIC144:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L133+12
.LPIC145:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-12]
	str	r3, [sp]
	mov	r3, #568
	ldr	r2, .L133+16
.LPIC146:
	add	r2, pc, r2
	ldr	r1, .L133+20
.LPIC147:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L129
.L128:
	.loc 1 572 3 is_stmt 1
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #4]
	mov	r1, r3
	mov	r0, r2
	bl	EeePWriteBufferToFile(PLT)
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L132
	.loc 1 572 3 is_stmt 0 discriminator 1
	ldr	r3, .L133+24
.LPIC148:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L133+28
.LPIC149:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-12]
	str	r3, [sp]
	mov	r3, #572
	ldr	r2, .L133+32
.LPIC150:
	add	r2, pc, r2
	ldr	r1, .L133+36
.LPIC151:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L129
.L132:
	.loc 1 574 1 is_stmt 1
	nop
.L129:
	.loc 1 575 3
	sub	r3, fp, #16
	mov	r0, r3
	bl	EeePFreeBuffer(PLT)
	.loc 1 576 10
	ldr	r3, [fp, #-12]
	.loc 1 564 1
	ldr	r1, .L133+40
.LPIC153:
	add	r1, pc, r1
	.loc 1 577 1
	ldr	r2, .L133+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L131
	bl	__stack_chk_fail(PLT)
.L131:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L134:
	.align	2
.L133:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC152+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC42-(.LPIC144+8)
	.word	.LC14-(.LPIC145+8)
	.word	.LC15-(.LPIC146+8)
	.word	.LC12-(.LPIC147+8)
	.word	.LC43-(.LPIC148+8)
	.word	.LC14-(.LPIC149+8)
	.word	.LC15-(.LPIC150+8)
	.word	.LC12-(.LPIC151+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC153+8)
	.cfi_endproc
.LFE18:
	.size	CMD_CreateExtEepEEP_IMG, .-CMD_CreateExtEepEEP_IMG
	.section	.rodata
	.align	2
.LC44:
	.ascii	"EeeP_CreateCOM0R20_MEEPImage( &BHandel , ((InOutFil"
	.ascii	"es_t*)pArgData)->InFile )\000"
	.text
	.align	2
	.global	CMD_CreateCOM0R20M_IMG
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CMD_CreateCOM0R20M_IMG, %function
CMD_CreateCOM0R20M_IMG:
.LFB19:
	.loc 1 582 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #40
	str	r0, [fp, #-24]
	.loc 1 582 1
	ldr	r2, .L141
.LPIC162:
	add	r2, pc, r2
	ldr	r3, .L141+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 583 16
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 584 16
	mov	r3, #0
	str	r3, [fp, #-16]
	.loc 1 586 3
	ldr	r3, [fp, #-24]
	ldr	r2, [r3]
	sub	r3, fp, #16
	mov	r1, r2
	mov	r0, r3
	bl	EeeP_CreateCOM0R20_MEEPImage(PLT)
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L136
	.loc 1 586 3 is_stmt 0 discriminator 1
	ldr	r3, .L141+8
.LPIC154:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L141+12
.LPIC155:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-12]
	str	r3, [sp]
	movw	r3, #586
	ldr	r2, .L141+16
.LPIC156:
	add	r2, pc, r2
	ldr	r1, .L141+20
.LPIC157:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L137
.L136:
	.loc 1 590 3 is_stmt 1
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #4]
	mov	r1, r3
	mov	r0, r2
	bl	EeePWriteBufferToFile(PLT)
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L140
	.loc 1 590 3 is_stmt 0 discriminator 1
	ldr	r3, .L141+24
.LPIC158:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L141+28
.LPIC159:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-12]
	str	r3, [sp]
	movw	r3, #590
	ldr	r2, .L141+32
.LPIC160:
	add	r2, pc, r2
	ldr	r1, .L141+36
.LPIC161:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L137
.L140:
	.loc 1 592 1 is_stmt 1
	nop
.L137:
	.loc 1 593 3
	sub	r3, fp, #16
	mov	r0, r3
	bl	EeePFreeBuffer(PLT)
	.loc 1 594 10
	ldr	r3, [fp, #-12]
	.loc 1 582 1
	ldr	r1, .L141+40
.LPIC163:
	add	r1, pc, r1
	.loc 1 595 1
	ldr	r2, .L141+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L139
	bl	__stack_chk_fail(PLT)
.L139:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L142:
	.align	2
.L141:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC162+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC44-(.LPIC154+8)
	.word	.LC14-(.LPIC155+8)
	.word	.LC15-(.LPIC156+8)
	.word	.LC12-(.LPIC157+8)
	.word	.LC43-(.LPIC158+8)
	.word	.LC14-(.LPIC159+8)
	.word	.LC15-(.LPIC160+8)
	.word	.LC12-(.LPIC161+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC163+8)
	.cfi_endproc
.LFE19:
	.size	CMD_CreateCOM0R20M_IMG, .-CMD_CreateCOM0R20M_IMG
	.section	.rodata
	.align	2
.LC45:
	.ascii	"EeeP_CreateCOM0R20_CBImage( &BHandel , ((InOutFiles"
	.ascii	"_t*)pArgData)->InFile )\000"
	.text
	.align	2
	.global	CMD_CreateCOM0R20CB_IMG
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CMD_CreateCOM0R20CB_IMG, %function
CMD_CreateCOM0R20CB_IMG:
.LFB20:
	.loc 1 600 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #40
	str	r0, [fp, #-24]
	.loc 1 600 1
	ldr	r2, .L149
.LPIC172:
	add	r2, pc, r2
	ldr	r3, .L149+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 601 16
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 602 16
	mov	r3, #0
	str	r3, [fp, #-16]
	.loc 1 604 3
	ldr	r3, [fp, #-24]
	ldr	r2, [r3]
	sub	r3, fp, #16
	mov	r1, r2
	mov	r0, r3
	bl	EeeP_CreateCOM0R20_CBImage(PLT)
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L144
	.loc 1 604 3 is_stmt 0 discriminator 1
	ldr	r3, .L149+8
.LPIC164:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L149+12
.LPIC165:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-12]
	str	r3, [sp]
	mov	r3, #604
	ldr	r2, .L149+16
.LPIC166:
	add	r2, pc, r2
	ldr	r1, .L149+20
.LPIC167:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L145
.L144:
	.loc 1 608 3 is_stmt 1
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #4]
	mov	r1, r3
	mov	r0, r2
	bl	EeePWriteBufferToFile(PLT)
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L148
	.loc 1 608 3 is_stmt 0 discriminator 1
	ldr	r3, .L149+24
.LPIC168:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L149+28
.LPIC169:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-12]
	str	r3, [sp]
	mov	r3, #608
	ldr	r2, .L149+32
.LPIC170:
	add	r2, pc, r2
	ldr	r1, .L149+36
.LPIC171:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L145
.L148:
	.loc 1 610 1 is_stmt 1
	nop
.L145:
	.loc 1 611 3
	sub	r3, fp, #16
	mov	r0, r3
	bl	EeePFreeBuffer(PLT)
	.loc 1 612 10
	ldr	r3, [fp, #-12]
	.loc 1 600 1
	ldr	r1, .L149+40
.LPIC173:
	add	r1, pc, r1
	.loc 1 613 1
	ldr	r2, .L149+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L147
	bl	__stack_chk_fail(PLT)
.L147:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L150:
	.align	2
.L149:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC172+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC45-(.LPIC164+8)
	.word	.LC14-(.LPIC165+8)
	.word	.LC15-(.LPIC166+8)
	.word	.LC12-(.LPIC167+8)
	.word	.LC43-(.LPIC168+8)
	.word	.LC14-(.LPIC169+8)
	.word	.LC15-(.LPIC170+8)
	.word	.LC12-(.LPIC171+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC173+8)
	.cfi_endproc
.LFE20:
	.size	CMD_CreateCOM0R20CB_IMG, .-CMD_CreateCOM0R20CB_IMG
	.align	2
	.global	CMD_ListDBlocks_IMG
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CMD_ListDBlocks_IMG, %function
CMD_ListDBlocks_IMG:
.LFB21:
	.loc 1 619 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #40
	str	r0, [fp, #-24]
	.loc 1 619 1
	ldr	r2, .L157
.LPIC182:
	add	r2, pc, r2
	ldr	r3, .L157+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 620 16
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 621 16
	mov	r3, #0
	str	r3, [fp, #-16]
	.loc 1 623 3
	ldr	r3, [fp, #-24]
	ldr	r2, [r3]
	sub	r3, fp, #16
	mov	r1, r2
	mov	r0, r3
	bl	EeePReadBufferFromFile(PLT)
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L152
	.loc 1 623 3 is_stmt 0 discriminator 1
	ldr	r3, .L157+8
.LPIC174:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L157+12
.LPIC175:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-12]
	str	r3, [sp]
	movw	r3, #623
	ldr	r2, .L157+16
.LPIC176:
	add	r2, pc, r2
	ldr	r1, .L157+20
.LPIC177:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L153
.L152:
	.loc 1 627 3 is_stmt 1
	ldr	r3, [fp, #-16]
	mov	r1, #0
	mov	r0, r3
	bl	EeePListBlocks(PLT)
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L156
	.loc 1 627 3 is_stmt 0 discriminator 1
	ldr	r3, .L157+24
.LPIC178:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L157+28
.LPIC179:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-12]
	str	r3, [sp]
	movw	r3, #627
	ldr	r2, .L157+32
.LPIC180:
	add	r2, pc, r2
	ldr	r1, .L157+36
.LPIC181:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L153
.L156:
	.loc 1 629 1 is_stmt 1
	nop
.L153:
	.loc 1 630 3
	sub	r3, fp, #16
	mov	r0, r3
	bl	EeePFreeBuffer(PLT)
	.loc 1 631 10
	ldr	r3, [fp, #-12]
	.loc 1 619 1
	ldr	r1, .L157+40
.LPIC183:
	add	r1, pc, r1
	.loc 1 632 1
	ldr	r2, .L157+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L155
	bl	__stack_chk_fail(PLT)
.L155:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L158:
	.align	2
.L157:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC182+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC26-(.LPIC174+8)
	.word	.LC14-(.LPIC175+8)
	.word	.LC15-(.LPIC176+8)
	.word	.LC12-(.LPIC177+8)
	.word	.LC41-(.LPIC178+8)
	.word	.LC14-(.LPIC179+8)
	.word	.LC15-(.LPIC180+8)
	.word	.LC12-(.LPIC181+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC183+8)
	.cfi_endproc
.LFE21:
	.size	CMD_ListDBlocks_IMG, .-CMD_ListDBlocks_IMG
	.global	ArgsDesc
	.section	.rodata
	.align	2
.LC46:
	.ascii	"quiet\000"
	.align	2
.LC47:
	.ascii	"Minimises Output\000"
	.align	2
.LC48:
	.ascii	"help\000"
	.align	2
.LC49:
	.ascii	"Print this usage message\000"
	.align	2
.LC50:
	.ascii	"verbose\000"
	.align	2
.LC51:
	.ascii	"Increases Verbosity Level\000"
	.align	2
.LC52:
	.ascii	"CREATE-COM0R20M-CFG\000"
	.align	2
.LC53:
	.ascii	"Create COM0 Module Config File Template\000"
	.align	2
.LC54:
	.ascii	"CREATE-COM0R20M-IMG\000"
	.align	2
.LC55:
	.ascii	"Create COM0 Module Binary File\000"
	.align	2
.LC56:
	.ascii	"CREATE-COM0R20M-EEP\000"
	.align	2
.LC57:
	.ascii	"Create COM0 Module Content and Program over EApi\000"
	.align	2
.LC58:
	.ascii	"CREATE-COM0R20CB-CFG\000"
	.align	2
.LC59:
	.ascii	"Create COM0 Carrier Config File Template\000"
	.align	2
.LC60:
	.ascii	"CREATE-COM0R20CB-EEP\000"
	.align	2
.LC61:
	.ascii	"Create COM0 Carrier Content and Program over EApi\000"
	.align	2
.LC62:
	.ascii	"CREATE-COM0R20CB-IMG\000"
	.align	2
.LC63:
	.ascii	"Create COM0 Carrier Binary File\000"
	.align	2
.LC64:
	.ascii	"CREATE-EeePExpEEP-CFG\000"
	.align	2
.LC65:
	.ascii	"Create EeeP Expansion EEP Config File Template\000"
	.align	2
.LC66:
	.ascii	"CREATE-EeePExpEEP-IMG\000"
	.align	2
.LC67:
	.ascii	"Create EeeP Expansion EEP Binary File\000"
	.align	2
.LC68:
	.ascii	"CREATE-EeePExpEEP-EEP\000"
	.align	2
.LC69:
	.ascii	"Create EeeP Expansion EEP Image and Program over EA"
	.ascii	"pi\000"
	.align	2
.LC70:
	.ascii	"PROGRAM-EeePExpEEP-EEP\000"
	.align	2
.LC71:
	.ascii	"Program EeeP Expansion EEP Image file over EApi\000"
	.align	2
.LC72:
	.ascii	"PROGRAM-COM0R20CB-EEP\000"
	.align	2
.LC73:
	.ascii	"Program COM0 R2.0 Carrier Board EEP Image file over"
	.ascii	" EApi\000"
	.align	2
.LC74:
	.ascii	"PROGRAM-COM0R20M-EEP\000"
	.align	2
.LC75:
	.ascii	"Program COM0 R2.0 Module EEP Image file over EApi\000"
	.align	2
.LC76:
	.ascii	"SAVE-EeePExpEEP-IMG\000"
	.align	2
.LC77:
	.ascii	"Stores EeeP Expansion EEP to Image file over EApi\000"
	.align	2
.LC78:
	.ascii	"SAVE-COM0R20CB-IMG\000"
	.align	2
.LC79:
	.ascii	"Stores COM0 R2.0 Carrier Board EEP to Image file ov"
	.ascii	"er EApi\000"
	.align	2
.LC80:
	.ascii	"SAVE-COM0R20M-IMG\000"
	.align	2
.LC81:
	.ascii	"Stores COM0 R2.0 Module EEP to Image file over EApi"
	.ascii	"\000"
	.align	2
.LC82:
	.ascii	"LIST-DBLOCKS-IMG\000"
	.align	2
.LC83:
	.ascii	"Lists Dynamic Blocks in Binary Image file\000"
	.align	2
.LC84:
	.ascii	"LIST-DBLOCKS-EEP\000"
	.align	2
.LC85:
	.ascii	"LIST-DBLOCKS-COM0R20CBEEP\000"
	.align	2
.LC86:
	.ascii	"Lists Dynamic Blocks in COM0 R2.0 Carrier Board EEP"
	.ascii	"ROM\000"
	.align	2
.LC87:
	.ascii	"LIST-DBLOCKS-COM0R20MEEP\000"
	.align	2
.LC88:
	.ascii	"Lists Dynamic Blocks in COM0 R2.0 Module EEPROM\000"
	.section	.data.rel.local,"aw"
	.align	2
	.type	ArgsDesc, %object
	.size	ArgsDesc, 736
ArgsDesc:
	.byte	113
	.space	3
	.word	.LC46
	.word	CurOptions+4
	.word	.LC47
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	104
	.space	3
	.word	.LC48
	.word	CurOptions
	.word	.LC49
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	63
	.space	3
	.word	0
	.word	CurOptions
	.word	.LC49
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	118
	.space	3
	.word	.LC50
	.word	CurOptions+8
	.word	.LC51
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	0
	.space	3
	.word	.LC52
	.word	CurOptions+12
	.word	.LC53
	.word	COM0R20M_Cfg
	.word	1
	.word	CurOptions+16
	.word	CMD_CreateCOM0R20_MEEPCfg
	.byte	0
	.space	3
	.word	.LC54
	.word	CurOptions+20
	.word	.LC55
	.word	COM0R20M_Img
	.word	2
	.word	CurOptions+24
	.word	CMD_CreateCOM0R20M_IMG
	.byte	0
	.space	3
	.word	.LC56
	.word	CurOptions+32
	.word	.LC57
	.word	COM0R20M_EEP
	.word	1
	.word	CurOptions+36
	.word	CMD_CreateCOM0R20M_EEP
	.byte	0
	.space	3
	.word	.LC58
	.word	CurOptions+40
	.word	.LC59
	.word	COM0R20CB_Cfg
	.word	1
	.word	CurOptions+44
	.word	CMD_CreateCOM0R20_CBCfg
	.byte	0
	.space	3
	.word	.LC60
	.word	CurOptions+60
	.word	.LC61
	.word	COM0R20CB_EEP
	.word	1
	.word	CurOptions+64
	.word	CMD_CreateCOM0R20CB_EEP
	.byte	0
	.space	3
	.word	.LC62
	.word	CurOptions+48
	.word	.LC63
	.word	COM0R20CB_Img
	.word	2
	.word	CurOptions+52
	.word	CMD_CreateCOM0R20CB_IMG
	.byte	0
	.space	3
	.word	.LC64
	.word	CurOptions+68
	.word	.LC65
	.word	EeePExpEEP_Cfg
	.word	1
	.word	CurOptions+72
	.word	CMD_CreateCOM0R20_EeePExtCfg
	.byte	0
	.space	3
	.word	.LC66
	.word	CurOptions+76
	.word	.LC67
	.word	EeePExpEEP_Img
	.word	2
	.word	CurOptions+80
	.word	CMD_CreateExtEepEEP_IMG
	.byte	0
	.space	3
	.word	.LC68
	.word	CurOptions+88
	.word	.LC69
	.word	EeePExpEEP_EEP
	.word	3
	.word	CurOptions+92
	.word	CMD_CreateEeePExt_EEP
	.byte	0
	.space	3
	.word	.LC70
	.word	CurOptions+104
	.word	.LC71
	.word	EeePExpEEP_PEEP
	.word	3
	.word	CurOptions+108
	.word	CMD_ProgramEeePExt_EEP
	.byte	0
	.space	3
	.word	.LC72
	.word	CurOptions+120
	.word	.LC73
	.word	COM0R20CB_PEEP
	.word	1
	.word	CurOptions+124
	.word	CMD_ProgramCOM0R20CB_EEP
	.byte	0
	.space	3
	.word	.LC74
	.word	CurOptions+128
	.word	.LC75
	.word	COM0R20M_PEEP
	.word	1
	.word	CurOptions+132
	.word	CMD_ProgramCOM0R20M_EEP
	.byte	0
	.space	3
	.word	.LC76
	.word	CurOptions+164
	.word	.LC77
	.word	EeePExpEEP_IMG
	.word	3
	.word	CurOptions+168
	.word	CMD_StoreEeePExt_EEP
	.byte	0
	.space	3
	.word	.LC78
	.word	CurOptions+180
	.word	.LC79
	.word	COM0R20CB_IMG
	.word	1
	.word	CurOptions+184
	.word	CMD_StoreCOM0R20_CB_EEP
	.byte	0
	.space	3
	.word	.LC80
	.word	CurOptions+188
	.word	.LC81
	.word	COM0R20M_IMG
	.word	1
	.word	CurOptions+192
	.word	CMD_StoreCOM0R20_M_EEP
	.byte	0
	.space	3
	.word	.LC82
	.word	CurOptions+136
	.word	.LC83
	.word	GEN_LIST_DBLOCKS_FILE
	.word	1
	.word	CurOptions+140
	.word	CMD_ListDBlocks_IMG
	.byte	0
	.space	3
	.word	.LC84
	.word	CurOptions+144
	.word	.LC83
	.word	GEN_LIST_DBLOCKS_EEP
	.word	2
	.word	CurOptions+148
	.word	CMD_ListDBlocksEeePExt_EEP
	.byte	0
	.space	3
	.word	.LC85
	.word	CurOptions+156
	.word	.LC86
	.word	0
	.word	0
	.word	0
	.word	CMD_ListDBlocksCOM0R20_CB_EEP
	.byte	0
	.space	3
	.word	.LC87
	.word	CurOptions+160
	.word	.LC88
	.word	0
	.word	0
	.word	0
	.word	CMD_ListDBlocksCOM0R20_M_EEP
	.section	.rodata
	.align	2
.LC89:
	.ascii	"main\000"
	.align	2
.LC90:
	.ascii	"EApiLibInitialize()\000"
	.align	2
.LC91:
	.ascii	"%s\000"
	.align	2
.LC92:
	.ascii	"ParseArgs(argc, argv, ArgsDesc, ARRAY_SIZE(ArgsDesc"
	.ascii	"))\000"
	.align	2
.LC93:
	.ascii	"EApiLibUnInitialize()\000"
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfpv3
	.type	main, %function
main:
.LFB22:
	.loc 1 890 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #8
	.cfi_def_cfa 11, 4
	sub	sp, sp, #36
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	ldr	r4, .L171
.LPIC196:
	add	r4, pc, r4
	.loc 1 893 3
	bl	EApiLibInitialize(PLT)
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L160
	.loc 1 893 3 is_stmt 0 discriminator 1
	ldr	r3, .L171+4
.LPIC184:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L171+8
.LPIC185:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-16]
	str	r3, [sp]
	movw	r3, #893
	ldr	r2, .L171+12
.LPIC186:
	add	r2, pc, r2
	ldr	r1, .L171+16
.LPIC187:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L168
.L160:
	.loc 1 895 14 is_stmt 1
	ldr	r3, [fp, #-24]
	sub	r0, r3, #1
	ldr	r3, [fp, #-28]
	add	r1, r3, #4
	mov	r3, #23
	ldr	r2, .L171+20
.LPIC188:
	add	r2, pc, r2
	bl	ParseArgs(PLT)
	str	r0, [fp, #-16]
	.loc 1 896 3
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L169
	ldr	r3, [fp, #-16]
	mvn	r2, #256
	cmp	r3, r2
	bne	.L163
	.loc 1 898 7
	ldr	r3, .L171+24
.LPIC189:
	add	r3, pc, r3
	mov	r1, r3
	ldr	r3, .L171+28
.LPIC190:
	add	r3, pc, r3
	mov	r0, r3
	bl	printf(PLT)
	.loc 1 899 7
	ldr	r3, [fp, #-16]
	mov	r0, r3
	bl	exit(PLT)
.L163:
	.loc 1 904 7
	ldr	r3, .L171+32
.LPIC191:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L171+36
.LPIC192:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-16]
	str	r3, [sp]
	mov	r3, #904
	ldr	r2, .L171+40
.LPIC193:
	add	r2, pc, r2
	ldr	r1, .L171+44
.LPIC194:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	.loc 1 905 7
	ldr	r3, [fp, #-16]
	mov	r0, r3
	bl	exit(PLT)
.L169:
	.loc 1 902 7
	nop
	.loc 1 909 17
	ldr	r3, .L171+48
.LPIC195:
	add	r3, pc, r3
	ldr	r3, [r3, #4]
	.loc 1 909 5
	cmp	r3, #0
	bne	.L165
	.loc 1 910 5
	ldr	r3, .L171+52
	ldr	r3, [r4, r3]
	ldr	r0, [r3]
	movw	r3, #631
	str	r3, [sp]
	mov	r3, #5
	mov	r2, #0
	ldr	r1, .L171+56
.LPIC197:
	add	r1, pc, r1
	bl	fprintf(PLT)
.L165:
	.loc 1 913 16
	ldr	r3, .L171+60
.LPIC198:
	add	r3, pc, r3
	ldr	r3, [r3]
	.loc 1 913 5
	cmp	r3, #0
	beq	.L170
	.loc 1 914 5
	ldr	r3, .L171+52
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	mov	r2, #23
	ldr	r1, .L171+64
.LPIC199:
	add	r1, pc, r1
	mov	r0, r3
	bl	PrintUsage(PLT)
	.loc 1 915 5
	b	.L168
.L166:
.L170:
	.loc 1 921 1
	nop
.L161:
.L168:
	.loc 1 923 3 discriminator 2
	bl	EApiLibUnInitialize(PLT)
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L167
	.loc 1 923 3 is_stmt 0 discriminator 1
	ldr	r3, .L171+68
.LPIC200:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L171+72
.LPIC201:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-16]
	str	r3, [sp]
	movw	r3, #923
	ldr	r2, .L171+76
.LPIC202:
	add	r2, pc, r2
	ldr	r1, .L171+80
.LPIC203:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L168
.L167:
	.loc 1 924 3 is_stmt 1
	ldr	r3, [fp, #-16]
	mov	r0, r3
	bl	exit(PLT)
.L172:
	.align	2
.L171:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC196+8)
	.word	.LC90-(.LPIC184+8)
	.word	.LC14-(.LPIC185+8)
	.word	.LC89-(.LPIC186+8)
	.word	.LC12-(.LPIC187+8)
	.word	ArgsDesc-(.LPIC188+8)
	.word	syntaxErrMes-(.LPIC189+8)
	.word	.LC91-(.LPIC190+8)
	.word	.LC92-(.LPIC191+8)
	.word	.LC14-(.LPIC192+8)
	.word	.LC89-(.LPIC193+8)
	.word	.LC12-(.LPIC194+8)
	.word	CurOptions-(.LPIC195+8)
	.word	stderr(GOT)
	.word	cszTitle-(.LPIC197+8)
	.word	CurOptions-(.LPIC198+8)
	.word	ArgsDesc-(.LPIC199+8)
	.word	.LC93-(.LPIC200+8)
	.word	.LC14-(.LPIC201+8)
	.word	.LC89-(.LPIC202+8)
	.word	.LC12-(.LPIC203+8)
	.cfi_endproc
.LFE22:
	.size	main, .-main
.Letext0:
	.file 2 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/bits/alltypes.h"
	.file 3 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/stdio.h"
	.file 4 "../../../include/EApi.h"
	.file 5 "../ArgParse.h"
	.file 6 "../../../include/EeeP.h"
	.file 7 "../../../include/COM0EEP.h"
	.file 8 "../EeePDB.h"
	.file 9 "../EeePArg.h"
	.file 10 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/stdlib.h"
	.file 11 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/string.h"
	.file 12 "../EeePCfg.h"
	.file 13 "../../include/DbgChk.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x125e
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x19
	.4byte	.LASF201
	.byte	0xc
	.4byte	.LASF202
	.4byte	.LASF203
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x9
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2b
	.byte	0x18
	.4byte	0x26
	.uleb128 0x1a
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x14
	.4byte	.LASF20
	.byte	0x1
	.byte	0x2
	.2byte	0x134
	.byte	0x8
	.4byte	0x6b
	.uleb128 0x1b
	.ascii	"__x\000"
	.byte	0x2
	.2byte	0x134
	.byte	0x18
	.4byte	0x6b
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x10
	.4byte	0x6b
	.uleb128 0x11
	.4byte	.LASF5
	.byte	0x2
	.2byte	0x139
	.byte	0x19
	.4byte	0x4e
	.uleb128 0x1c
	.byte	0x4
	.uleb128 0xb
	.byte	0x8
	.byte	0x4
	.4byte	.LASF6
	.uleb128 0xa
	.4byte	0x77
	.uleb128 0x10
	.4byte	0x8d
	.uleb128 0x15
	.4byte	0x8d
	.uleb128 0x12
	.4byte	.LASF7
	.byte	0x3
	.byte	0x3d
	.byte	0x14
	.4byte	0x92
	.uleb128 0x12
	.4byte	.LASF8
	.byte	0x3
	.byte	0x3e
	.byte	0x14
	.4byte	0x92
	.uleb128 0x9
	.4byte	.LASF9
	.byte	0x2
	.byte	0x30
	.byte	0x18
	.4byte	0x26
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.4byte	.LASF10
	.uleb128 0xb
	.byte	0x2
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x9
	.4byte	.LASF12
	.byte	0x2
	.byte	0x72
	.byte	0x19
	.4byte	0xda
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x2
	.byte	0x77
	.byte	0x19
	.4byte	0xed
	.uleb128 0xb
	.byte	0x2
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x2
	.byte	0x7c
	.byte	0x19
	.4byte	0x26
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0xa
	.4byte	0x6b
	.uleb128 0xa
	.4byte	0x72
	.uleb128 0x15
	.4byte	0x10c
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x4
	.byte	0x91
	.byte	0x12
	.4byte	0xf4
	.uleb128 0xa
	.4byte	0x12e
	.uleb128 0x1d
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x10
	.byte	0x5
	.byte	0x24
	.4byte	0x170
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x5
	.byte	0x25
	.byte	0x9
	.4byte	0x84
	.byte	0
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x5
	.byte	0x26
	.byte	0xa
	.4byte	0x2d
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x5
	.byte	0x27
	.byte	0xf
	.4byte	0x10c
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x5
	.byte	0x28
	.byte	0x12
	.4byte	0x18e
	.byte	0xc
	.byte	0
	.uleb128 0x16
	.4byte	0x11d
	.4byte	0x189
	.uleb128 0x2
	.4byte	0x189
	.uleb128 0x2
	.4byte	0x84
	.uleb128 0x2
	.4byte	0x10c
	.byte	0
	.uleb128 0xa
	.4byte	0x12f
	.uleb128 0xa
	.4byte	0x170
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x5
	.byte	0x29
	.byte	0x2
	.4byte	0x12f
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x20
	.byte	0x5
	.byte	0x2b
	.4byte	0x214
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x5
	.byte	0x2c
	.byte	0xf
	.4byte	0x72
	.byte	0
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x5
	.byte	0x2d
	.byte	0xf
	.4byte	0x10c
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x5
	.byte	0x2e
	.byte	0x11
	.4byte	0x214
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x5
	.byte	0x2f
	.byte	0xf
	.4byte	0x10c
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x5
	.byte	0x30
	.byte	0xf
	.4byte	0x219
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x5
	.byte	0x31
	.byte	0xe
	.4byte	0x2d
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x5
	.byte	0x32
	.byte	0xe
	.4byte	0x84
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x5
	.byte	0x33
	.byte	0x12
	.4byte	0x22d
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.4byte	0x26
	.uleb128 0xa
	.4byte	0x193
	.uleb128 0x16
	.4byte	0x11d
	.4byte	0x22d
	.uleb128 0x2
	.4byte	0x84
	.byte	0
	.uleb128 0xa
	.4byte	0x21e
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x5
	.byte	0x34
	.byte	0x2
	.4byte	0x19f
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x6
	.byte	0x6
	.byte	0x6b
	.4byte	0x28c
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x6
	.byte	0x6c
	.byte	0x11
	.4byte	0xce
	.byte	0
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x6
	.byte	0x73
	.byte	0x11
	.4byte	0x28c
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x6
	.byte	0x75
	.byte	0x11
	.4byte	0xce
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x6
	.byte	0x7f
	.byte	0x11
	.4byte	0xce
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x6
	.byte	0x83
	.byte	0x11
	.4byte	0xce
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.4byte	0xce
	.4byte	0x29c
	.uleb128 0xe
	.4byte	0x26
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x6
	.byte	0xa6
	.byte	0x2
	.4byte	0x23e
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x6
	.byte	0x6
	.byte	0xb2
	.4byte	0x2e9
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x6
	.byte	0xb3
	.byte	0x11
	.4byte	0x28c
	.byte	0
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x6
	.byte	0xb4
	.byte	0x11
	.4byte	0x28c
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x6
	.byte	0xb5
	.byte	0x11
	.4byte	0xce
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x6
	.byte	0xb6
	.byte	0x11
	.4byte	0xce
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x6
	.byte	0xb7
	.byte	0x2
	.4byte	0x2a8
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x10
	.byte	0x6
	.byte	0xbe
	.4byte	0x329
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x6
	.byte	0xbf
	.byte	0x11
	.4byte	0x29c
	.byte	0
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x6
	.byte	0xc0
	.byte	0x11
	.4byte	0x329
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x6
	.byte	0xc2
	.byte	0x11
	.4byte	0x2e9
	.byte	0xa
	.byte	0
	.uleb128 0xd
	.4byte	0xce
	.4byte	0x339
	.uleb128 0xe
	.4byte	0x26
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x6
	.byte	0xc3
	.byte	0x2
	.4byte	0x2f5
	.uleb128 0xd
	.4byte	0xce
	.4byte	0x355
	.uleb128 0xe
	.4byte	0x26
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x31
	.byte	0x7
	.byte	0x77
	.4byte	0x407
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x7
	.byte	0x78
	.byte	0x11
	.4byte	0x29c
	.byte	0
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x7
	.byte	0x79
	.byte	0x11
	.4byte	0x329
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x7
	.byte	0x7b
	.byte	0x11
	.4byte	0x2e9
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x7
	.byte	0x7c
	.byte	0x11
	.4byte	0xce
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x7
	.byte	0x7d
	.byte	0x11
	.4byte	0xce
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x7
	.byte	0x86
	.byte	0x11
	.4byte	0xce
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x7
	.byte	0x97
	.byte	0x11
	.4byte	0xce
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x7
	.byte	0xc8
	.byte	0x11
	.4byte	0xce
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x7
	.byte	0xe0
	.byte	0x11
	.4byte	0xce
	.byte	0x15
	.uleb128 0xf
	.4byte	.LASF60
	.2byte	0x10f
	.4byte	0xce
	.byte	0x16
	.uleb128 0xf
	.4byte	.LASF61
	.2byte	0x13a
	.4byte	0x28c
	.byte	0x17
	.uleb128 0xf
	.4byte	.LASF62
	.2byte	0x17c
	.4byte	0x345
	.byte	0x19
	.uleb128 0xf
	.4byte	.LASF63
	.2byte	0x18d
	.4byte	0x407
	.byte	0x21
	.byte	0
	.uleb128 0xd
	.4byte	0xce
	.4byte	0x417
	.uleb128 0xe
	.4byte	0x26
	.byte	0xf
	.byte	0
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0x7
	.2byte	0x1a5
	.byte	0x2
	.4byte	0x355
	.uleb128 0x14
	.4byte	.LASF65
	.byte	0x12
	.byte	0x7
	.2byte	0x1ff
	.byte	0x10
	.4byte	0x46f
	.uleb128 0xf
	.4byte	.LASF50
	.2byte	0x200
	.4byte	0x29c
	.byte	0
	.uleb128 0xf
	.4byte	.LASF51
	.2byte	0x201
	.4byte	0x329
	.byte	0x6
	.uleb128 0xf
	.4byte	.LASF52
	.2byte	0x203
	.4byte	0x2e9
	.byte	0xa
	.uleb128 0xf
	.4byte	.LASF66
	.2byte	0x204
	.4byte	0xce
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF39
	.2byte	0x205
	.4byte	0xce
	.byte	0x11
	.byte	0
	.uleb128 0x11
	.4byte	.LASF67
	.byte	0x7
	.2byte	0x212
	.byte	0x2
	.4byte	0x424
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x8
	.byte	0x25
	.byte	0x10
	.4byte	0x84
	.uleb128 0xc
	.4byte	.LASF69
	.byte	0x8
	.byte	0x9
	.byte	0x24
	.4byte	0x4af
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x9
	.byte	0x25
	.byte	0x11
	.4byte	0x116
	.byte	0
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x9
	.byte	0x26
	.byte	0x11
	.4byte	0x116
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0x9
	.byte	0x27
	.byte	0x2
	.4byte	0x488
	.uleb128 0xc
	.4byte	.LASF73
	.byte	0xc
	.byte	0x9
	.byte	0x29
	.4byte	0x4ef
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x9
	.byte	0x2a
	.byte	0x9
	.4byte	0x107
	.byte	0
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x9
	.byte	0x2b
	.byte	0x11
	.4byte	0x116
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x9
	.byte	0x2c
	.byte	0x11
	.4byte	0x116
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0x9
	.byte	0x2d
	.byte	0x2
	.4byte	0x4bb
	.uleb128 0xc
	.4byte	.LASF76
	.byte	0x8
	.byte	0x9
	.byte	0x2f
	.4byte	0x522
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x9
	.byte	0x30
	.byte	0x9
	.4byte	0x107
	.byte	0
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x9
	.byte	0x31
	.byte	0x9
	.4byte	0x107
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x9
	.byte	0x32
	.byte	0x2
	.4byte	0x4fb
	.uleb128 0xc
	.4byte	.LASF80
	.byte	0xc4
	.byte	0x9
	.byte	0x34
	.4byte	0x736
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0x9
	.byte	0x35
	.byte	0x10
	.4byte	0x26
	.byte	0
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0x9
	.byte	0x36
	.byte	0x10
	.4byte	0x26
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0x9
	.byte	0x37
	.byte	0x10
	.4byte	0x26
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0x9
	.byte	0x38
	.byte	0x10
	.4byte	0x26
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0x9
	.byte	0x39
	.byte	0xa
	.4byte	0x107
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0x9
	.byte	0x3a
	.byte	0x10
	.4byte	0x26
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0x9
	.byte	0x3b
	.byte	0x12
	.4byte	0x522
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0x9
	.byte	0x3d
	.byte	0x10
	.4byte	0x26
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0x9
	.byte	0x3e
	.byte	0xc
	.4byte	0x107
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0x9
	.byte	0x40
	.byte	0x10
	.4byte	0x26
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0x9
	.byte	0x41
	.byte	0xc
	.4byte	0x107
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0x9
	.byte	0x43
	.byte	0x10
	.4byte	0x26
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0x9
	.byte	0x44
	.byte	0x12
	.4byte	0x522
	.byte	0x34
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x9
	.byte	0x46
	.byte	0x10
	.4byte	0x26
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0x9
	.byte	0x47
	.byte	0xc
	.4byte	0x107
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0x9
	.byte	0x49
	.byte	0x10
	.4byte	0x26
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0x9
	.byte	0x4a
	.byte	0xc
	.4byte	0x107
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0x9
	.byte	0x4c
	.byte	0x10
	.4byte	0x26
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0x9
	.byte	0x4d
	.byte	0x12
	.4byte	0x522
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0x9
	.byte	0x4f
	.byte	0x10
	.4byte	0x26
	.byte	0x58
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0x9
	.byte	0x50
	.byte	0x13
	.4byte	0x4ef
	.byte	0x5c
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0x9
	.byte	0x52
	.byte	0x10
	.4byte	0x26
	.byte	0x68
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0x9
	.byte	0x53
	.byte	0x13
	.4byte	0x4ef
	.byte	0x6c
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0x9
	.byte	0x55
	.byte	0x10
	.4byte	0x26
	.byte	0x78
	.uleb128 0x1
	.4byte	.LASF105
	.byte	0x9
	.byte	0x56
	.byte	0xc
	.4byte	0x107
	.byte	0x7c
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0x9
	.byte	0x58
	.byte	0x10
	.4byte	0x26
	.byte	0x80
	.uleb128 0x1
	.4byte	.LASF107
	.byte	0x9
	.byte	0x59
	.byte	0xc
	.4byte	0x107
	.byte	0x84
	.uleb128 0x1
	.4byte	.LASF108
	.byte	0x9
	.byte	0x5b
	.byte	0x10
	.4byte	0x26
	.byte	0x88
	.uleb128 0x1
	.4byte	.LASF109
	.byte	0x9
	.byte	0x5c
	.byte	0xc
	.4byte	0x107
	.byte	0x8c
	.uleb128 0x1
	.4byte	.LASF110
	.byte	0x9
	.byte	0x5e
	.byte	0x10
	.4byte	0x26
	.byte	0x90
	.uleb128 0x1
	.4byte	.LASF111
	.byte	0x9
	.byte	0x5f
	.byte	0x13
	.4byte	0x4af
	.byte	0x94
	.uleb128 0x1
	.4byte	.LASF112
	.byte	0x9
	.byte	0x61
	.byte	0x10
	.4byte	0x26
	.byte	0x9c
	.uleb128 0x1
	.4byte	.LASF113
	.byte	0x9
	.byte	0x63
	.byte	0x10
	.4byte	0x26
	.byte	0xa0
	.uleb128 0x1
	.4byte	.LASF114
	.byte	0x9
	.byte	0x65
	.byte	0x10
	.4byte	0x26
	.byte	0xa4
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0x9
	.byte	0x66
	.byte	0x13
	.4byte	0x4ef
	.byte	0xa8
	.uleb128 0x1
	.4byte	.LASF116
	.byte	0x9
	.byte	0x68
	.byte	0x10
	.4byte	0x26
	.byte	0xb4
	.uleb128 0x1
	.4byte	.LASF117
	.byte	0x9
	.byte	0x69
	.byte	0x14
	.4byte	0x107
	.byte	0xb8
	.uleb128 0x1
	.4byte	.LASF118
	.byte	0x9
	.byte	0x6b
	.byte	0x10
	.4byte	0x26
	.byte	0xbc
	.uleb128 0x1
	.4byte	.LASF119
	.byte	0x9
	.byte	0x6c
	.byte	0x14
	.4byte	0x107
	.byte	0xc0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF120
	.byte	0x9
	.byte	0x6d
	.byte	0x2
	.4byte	0x52e
	.uleb128 0x12
	.4byte	.LASF121
	.byte	0x9
	.byte	0x6f
	.byte	0x12
	.4byte	0x736
	.uleb128 0xd
	.4byte	0x72
	.4byte	0x75e
	.uleb128 0xe
	.4byte	0x26
	.byte	0xf3
	.byte	0
	.uleb128 0x10
	.4byte	0x74e
	.uleb128 0x7
	.4byte	.LASF122
	.byte	0x26
	.4byte	0x75e
	.uleb128 0x5
	.byte	0x3
	.4byte	cszTitle
	.uleb128 0xd
	.4byte	0x72
	.4byte	0x783
	.uleb128 0xe
	.4byte	0x26
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.4byte	0x773
	.uleb128 0x7
	.4byte	.LASF123
	.byte	0x2d
	.4byte	0x783
	.uleb128 0x5
	.byte	0x3
	.4byte	syntaxErrMes
	.uleb128 0x1e
	.4byte	0x742
	.byte	0x1
	.byte	0x30
	.byte	0xb
	.uleb128 0x5
	.byte	0x3
	.4byte	CurOptions
	.uleb128 0xd
	.4byte	0x193
	.4byte	0x7b6
	.uleb128 0xe
	.4byte	0x26
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF124
	.byte	0x32
	.4byte	0x7a6
	.uleb128 0x5
	.byte	0x3
	.4byte	COM0R20M_Cfg
	.uleb128 0xd
	.4byte	0x193
	.4byte	0x7d6
	.uleb128 0xe
	.4byte	0x26
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF125
	.byte	0x3a
	.4byte	0x7c6
	.uleb128 0x5
	.byte	0x3
	.4byte	COM0R20M_Img
	.uleb128 0x7
	.4byte	.LASF126
	.byte	0x48
	.4byte	0x7a6
	.uleb128 0x5
	.byte	0x3
	.4byte	COM0R20M_EEP
	.uleb128 0x7
	.4byte	.LASF127
	.byte	0x50
	.4byte	0x7a6
	.uleb128 0x5
	.byte	0x3
	.4byte	COM0R20CB_Cfg
	.uleb128 0x7
	.4byte	.LASF128
	.byte	0x58
	.4byte	0x7c6
	.uleb128 0x5
	.byte	0x3
	.4byte	COM0R20CB_Img
	.uleb128 0x7
	.4byte	.LASF129
	.byte	0x66
	.4byte	0x7a6
	.uleb128 0x5
	.byte	0x3
	.4byte	COM0R20CB_EEP
	.uleb128 0x7
	.4byte	.LASF130
	.byte	0x6e
	.4byte	0x7a6
	.uleb128 0x5
	.byte	0x3
	.4byte	EeePExpEEP_Cfg
	.uleb128 0x7
	.4byte	.LASF131
	.byte	0x76
	.4byte	0x7c6
	.uleb128 0x5
	.byte	0x3
	.4byte	EeePExpEEP_Img
	.uleb128 0xd
	.4byte	0x193
	.4byte	0x856
	.uleb128 0xe
	.4byte	0x26
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.4byte	.LASF132
	.byte	0x84
	.4byte	0x846
	.uleb128 0x5
	.byte	0x3
	.4byte	EeePExpEEP_EEP
	.uleb128 0x7
	.4byte	.LASF133
	.byte	0x98
	.4byte	0x846
	.uleb128 0x5
	.byte	0x3
	.4byte	EeePExpEEP_PEEP
	.uleb128 0x7
	.4byte	.LASF134
	.byte	0xac
	.4byte	0x7a6
	.uleb128 0x5
	.byte	0x3
	.4byte	COM0R20CB_IMG
	.uleb128 0x7
	.4byte	.LASF135
	.byte	0xb4
	.4byte	0x7a6
	.uleb128 0x5
	.byte	0x3
	.4byte	COM0R20M_IMG
	.uleb128 0x7
	.4byte	.LASF136
	.byte	0xbc
	.4byte	0x846
	.uleb128 0x5
	.byte	0x3
	.4byte	EeePExpEEP_IMG
	.uleb128 0x7
	.4byte	.LASF137
	.byte	0xd0
	.4byte	0x7a6
	.uleb128 0x5
	.byte	0x3
	.4byte	COM0R20CB_PEEP
	.uleb128 0x7
	.4byte	.LASF138
	.byte	0xd8
	.4byte	0x7a6
	.uleb128 0x5
	.byte	0x3
	.4byte	COM0R20M_PEEP
	.uleb128 0x7
	.4byte	.LASF139
	.byte	0xe0
	.4byte	0x7a6
	.uleb128 0x5
	.byte	0x3
	.4byte	GEN_LIST_DBLOCKS_FILE
	.uleb128 0x7
	.4byte	.LASF140
	.byte	0xe8
	.4byte	0x7c6
	.uleb128 0x5
	.byte	0x3
	.4byte	GEN_LIST_DBLOCKS_EEP
	.uleb128 0xd
	.4byte	0x232
	.4byte	0x8f6
	.uleb128 0xe
	.4byte	0x26
	.byte	0x16
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x27c
	.byte	0xb
	.4byte	0x8e6
	.uleb128 0x5
	.byte	0x3
	.4byte	ArgsDesc
	.uleb128 0x17
	.4byte	.LASF147
	.2byte	0x162
	.4byte	0x11d
	.uleb128 0x4
	.4byte	.LASF142
	.byte	0x5
	.byte	0x40
	.byte	0x1
	.4byte	0x11d
	.4byte	0x934
	.uleb128 0x2
	.4byte	0x8d
	.uleb128 0x2
	.4byte	0x934
	.uleb128 0x2
	.4byte	0x2d
	.byte	0
	.uleb128 0xa
	.4byte	0x232
	.uleb128 0x4
	.4byte	.LASF143
	.byte	0x3
	.byte	0x6c
	.byte	0x5
	.4byte	0x39
	.4byte	0x955
	.uleb128 0x2
	.4byte	0x97
	.uleb128 0x2
	.4byte	0x111
	.uleb128 0x13
	.byte	0
	.uleb128 0x20
	.4byte	.LASF144
	.byte	0xa
	.byte	0x2e
	.byte	0x10
	.4byte	0x967
	.uleb128 0x2
	.4byte	0x39
	.byte	0
	.uleb128 0x4
	.4byte	.LASF145
	.byte	0x3
	.byte	0x6b
	.byte	0x5
	.4byte	0x39
	.4byte	0x97e
	.uleb128 0x2
	.4byte	0x10c
	.uleb128 0x13
	.byte	0
	.uleb128 0x4
	.4byte	.LASF146
	.byte	0x5
	.byte	0x47
	.byte	0x1
	.4byte	0x11d
	.4byte	0x9a3
	.uleb128 0x2
	.4byte	0x39
	.uleb128 0x2
	.4byte	0x9a3
	.uleb128 0x2
	.4byte	0x934
	.uleb128 0x2
	.4byte	0x2d
	.byte	0
	.uleb128 0xa
	.4byte	0x10c
	.uleb128 0x17
	.4byte	.LASF148
	.2byte	0x153
	.4byte	0x11d
	.uleb128 0x4
	.4byte	.LASF149
	.byte	0x8
	.byte	0xc6
	.byte	0x1
	.4byte	0x11d
	.4byte	0x9ce
	.uleb128 0x2
	.4byte	0x47c
	.uleb128 0x2
	.4byte	0x26
	.byte	0
	.uleb128 0x4
	.4byte	.LASF150
	.byte	0x8
	.byte	0xa4
	.byte	0x1
	.4byte	0x11d
	.4byte	0x9e9
	.uleb128 0x2
	.4byte	0x47c
	.uleb128 0x2
	.4byte	0x107
	.byte	0
	.uleb128 0x4
	.4byte	.LASF151
	.byte	0x8
	.byte	0xb7
	.byte	0x1
	.4byte	0x11d
	.4byte	0xa09
	.uleb128 0x2
	.4byte	0xa09
	.uleb128 0x2
	.4byte	0x26
	.uleb128 0x2
	.4byte	0xe1
	.byte	0
	.uleb128 0xa
	.4byte	0x47c
	.uleb128 0x4
	.4byte	.LASF152
	.byte	0xb
	.byte	0x1c
	.byte	0x5
	.4byte	0x39
	.4byte	0xa2e
	.uleb128 0x2
	.4byte	0x129
	.uleb128 0x2
	.4byte	0x129
	.uleb128 0x2
	.4byte	0x2d
	.byte	0
	.uleb128 0x4
	.4byte	.LASF153
	.byte	0x8
	.byte	0xb1
	.byte	0x1
	.4byte	0x11d
	.4byte	0xa49
	.uleb128 0x2
	.4byte	0xa09
	.uleb128 0x2
	.4byte	0x107
	.byte	0
	.uleb128 0x4
	.4byte	.LASF154
	.byte	0xc
	.byte	0x31
	.byte	0x1
	.4byte	0x11d
	.4byte	0xa64
	.uleb128 0x2
	.4byte	0xa09
	.uleb128 0x2
	.4byte	0x10c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF155
	.byte	0xc
	.byte	0x2b
	.byte	0x1
	.4byte	0x11d
	.4byte	0xa7f
	.uleb128 0x2
	.4byte	0xa09
	.uleb128 0x2
	.4byte	0x10c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF156
	.byte	0x8
	.byte	0x6e
	.byte	0x1
	.4byte	0x11d
	.4byte	0xa95
	.uleb128 0x2
	.4byte	0xa09
	.byte	0
	.uleb128 0x4
	.4byte	.LASF157
	.byte	0x8
	.byte	0xaa
	.byte	0x1
	.4byte	0x11d
	.4byte	0xab5
	.uleb128 0x2
	.4byte	0x47c
	.uleb128 0x2
	.4byte	0x26
	.uleb128 0x2
	.4byte	0xe1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF158
	.byte	0xc
	.byte	0x25
	.byte	0x1
	.4byte	0x11d
	.4byte	0xad0
	.uleb128 0x2
	.4byte	0xa09
	.uleb128 0x2
	.4byte	0x10c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF159
	.byte	0xc
	.byte	0x41
	.byte	0x1
	.4byte	0x11d
	.4byte	0xae6
	.uleb128 0x2
	.4byte	0x8d
	.byte	0
	.uleb128 0x4
	.4byte	.LASF160
	.byte	0xc
	.byte	0x37
	.byte	0x1
	.4byte	0x11d
	.4byte	0xafc
	.uleb128 0x2
	.4byte	0x8d
	.byte	0
	.uleb128 0x4
	.4byte	.LASF161
	.byte	0xc
	.byte	0x3c
	.byte	0x1
	.4byte	0x11d
	.4byte	0xb12
	.uleb128 0x2
	.4byte	0x8d
	.byte	0
	.uleb128 0x4
	.4byte	.LASF162
	.byte	0x3
	.byte	0x46
	.byte	0x5
	.4byte	0x39
	.4byte	0xb28
	.uleb128 0x2
	.4byte	0x8d
	.byte	0
	.uleb128 0x4
	.4byte	.LASF163
	.byte	0xd
	.byte	0x3e
	.byte	0x1
	.4byte	0x39
	.4byte	0xb58
	.uleb128 0x2
	.4byte	0x6b
	.uleb128 0x2
	.4byte	0x10c
	.uleb128 0x2
	.4byte	0x10c
	.uleb128 0x2
	.4byte	0x26
	.uleb128 0x2
	.4byte	0x11d
	.uleb128 0x2
	.4byte	0x10c
	.uleb128 0x13
	.byte	0
	.uleb128 0x4
	.4byte	.LASF164
	.byte	0x3
	.byte	0x44
	.byte	0x7
	.4byte	0x8d
	.4byte	0xb73
	.uleb128 0x2
	.4byte	0x111
	.uleb128 0x2
	.4byte	0x111
	.byte	0
	.uleb128 0x4
	.4byte	.LASF165
	.byte	0xb
	.byte	0x25
	.byte	0x5
	.4byte	0x39
	.4byte	0xb8e
	.uleb128 0x2
	.4byte	0x10c
	.uleb128 0x2
	.4byte	0x10c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF166
	.byte	0x5
	.byte	0x3d
	.byte	0x11
	.4byte	0x11d
	.4byte	0xbae
	.uleb128 0x2
	.4byte	0x189
	.uleb128 0x2
	.4byte	0x84
	.uleb128 0x2
	.4byte	0x10c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF167
	.byte	0x5
	.byte	0x3c
	.byte	0x11
	.4byte	0x11d
	.4byte	0xbce
	.uleb128 0x2
	.4byte	0x189
	.uleb128 0x2
	.4byte	0x84
	.uleb128 0x2
	.4byte	0x10c
	.byte	0
	.uleb128 0x6
	.4byte	.LASF172
	.2byte	0x376
	.4byte	0x39
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc2b
	.uleb128 0x5
	.4byte	.LASF168
	.2byte	0x377
	.byte	0x10
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LASF169
	.2byte	0x378
	.byte	0x12
	.4byte	0x9a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF174
	.2byte	0x37b
	.byte	0x10
	.4byte	0x11d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF170
	.2byte	0x39a
	.4byte	.L161
	.uleb128 0x8
	.4byte	.LASF171
	.2byte	0x399
	.4byte	.L166
	.byte	0
	.uleb128 0x6
	.4byte	.LASF173
	.2byte	0x268
	.4byte	0x11d
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc7d
	.uleb128 0x5
	.4byte	.LASF33
	.2byte	0x269
	.byte	0xb
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF174
	.2byte	0x26c
	.byte	0x10
	.4byte	0x11d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3
	.4byte	.LASF175
	.2byte	0x26d
	.byte	0x10
	.4byte	0x47c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF170
	.2byte	0x275
	.4byte	.L153
	.byte	0
	.uleb128 0x6
	.4byte	.LASF176
	.2byte	0x255
	.4byte	0x11d
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xccf
	.uleb128 0x5
	.4byte	.LASF33
	.2byte	0x256
	.byte	0xb
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF174
	.2byte	0x259
	.byte	0x10
	.4byte	0x11d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3
	.4byte	.LASF175
	.2byte	0x25a
	.byte	0x10
	.4byte	0x47c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF170
	.2byte	0x262
	.4byte	.L145
	.byte	0
	.uleb128 0x6
	.4byte	.LASF177
	.2byte	0x243
	.4byte	0x11d
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd21
	.uleb128 0x5
	.4byte	.LASF33
	.2byte	0x244
	.byte	0xb
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF174
	.2byte	0x247
	.byte	0x10
	.4byte	0x11d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3
	.4byte	.LASF175
	.2byte	0x248
	.byte	0x10
	.4byte	0x47c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF170
	.2byte	0x250
	.4byte	.L137
	.byte	0
	.uleb128 0x6
	.4byte	.LASF178
	.2byte	0x231
	.4byte	0x11d
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd73
	.uleb128 0x5
	.4byte	.LASF33
	.2byte	0x232
	.byte	0xb
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF174
	.2byte	0x235
	.byte	0x10
	.4byte	0x11d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3
	.4byte	.LASF175
	.2byte	0x236
	.byte	0x10
	.4byte	0x47c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF170
	.2byte	0x23e
	.4byte	.L129
	.byte	0
	.uleb128 0x6
	.4byte	.LASF179
	.2byte	0x227
	.4byte	0x11d
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdab
	.uleb128 0x5
	.4byte	.LASF33
	.2byte	0x228
	.byte	0xb
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF180
	.2byte	0x22b
	.byte	0x10
	.4byte	0x4af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF181
	.2byte	0x21e
	.4byte	0x11d
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xde3
	.uleb128 0x5
	.4byte	.LASF33
	.2byte	0x21f
	.byte	0xb
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF180
	.2byte	0x222
	.byte	0x10
	.4byte	0x4af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF182
	.2byte	0x20a
	.4byte	0x11d
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe35
	.uleb128 0x5
	.4byte	.LASF33
	.2byte	0x20b
	.byte	0xb
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF174
	.2byte	0x20e
	.byte	0x10
	.4byte	0x11d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3
	.4byte	.LASF175
	.2byte	0x20f
	.byte	0x10
	.4byte	0x47c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF170
	.2byte	0x217
	.4byte	.L111
	.byte	0
	.uleb128 0x6
	.4byte	.LASF183
	.2byte	0x200
	.4byte	0x11d
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe6d
	.uleb128 0x5
	.4byte	.LASF33
	.2byte	0x201
	.byte	0xb
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF184
	.2byte	0x204
	.byte	0x11
	.4byte	0x4ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.4byte	.LASF185
	.2byte	0x1f6
	.4byte	0x11d
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xea5
	.uleb128 0x5
	.4byte	.LASF33
	.2byte	0x1f7
	.byte	0xb
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF184
	.2byte	0x1fa
	.byte	0x11
	.4byte	0x4ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.4byte	.LASF186
	.2byte	0x1e3
	.4byte	0x11d
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xef7
	.uleb128 0x5
	.4byte	.LASF33
	.2byte	0x1e4
	.byte	0xb
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF174
	.2byte	0x1e7
	.byte	0x10
	.4byte	0x11d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3
	.4byte	.LASF175
	.2byte	0x1e8
	.byte	0x10
	.4byte	0x47c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF170
	.2byte	0x1f0
	.4byte	.L93
	.byte	0
	.uleb128 0x6
	.4byte	.LASF187
	.2byte	0x1c5
	.4byte	0x11d
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf49
	.uleb128 0x5
	.4byte	.LASF33
	.2byte	0x1c6
	.byte	0xb
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF174
	.2byte	0x1c9
	.byte	0x10
	.4byte	0x11d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3
	.4byte	.LASF175
	.2byte	0x1ca
	.byte	0x10
	.4byte	0x47c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF170
	.2byte	0x1dd
	.4byte	.L84
	.byte	0
	.uleb128 0x6
	.4byte	.LASF188
	.2byte	0x1aa
	.4byte	0x11d
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf9b
	.uleb128 0x5
	.4byte	.LASF33
	.2byte	0x1ab
	.byte	0xb
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF174
	.2byte	0x1ae
	.byte	0x10
	.4byte	0x11d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3
	.4byte	.LASF175
	.2byte	0x1af
	.byte	0x10
	.4byte	0x47c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF170
	.2byte	0x1be
	.4byte	.L75
	.byte	0
	.uleb128 0x6
	.4byte	.LASF189
	.2byte	0x190
	.4byte	0x11d
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfed
	.uleb128 0x5
	.4byte	.LASF33
	.2byte	0x191
	.byte	0xb
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF174
	.2byte	0x194
	.byte	0x10
	.4byte	0x11d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3
	.4byte	.LASF175
	.2byte	0x195
	.byte	0x10
	.4byte	0x47c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF170
	.2byte	0x1a4
	.4byte	.L66
	.byte	0
	.uleb128 0x6
	.4byte	.LASF190
	.2byte	0x178
	.4byte	0x11d
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x103f
	.uleb128 0x5
	.4byte	.LASF33
	.2byte	0x179
	.byte	0xb
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF174
	.2byte	0x17c
	.byte	0x10
	.4byte	0x11d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3
	.4byte	.LASF175
	.2byte	0x17d
	.byte	0x10
	.4byte	0x47c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF170
	.2byte	0x189
	.4byte	.L58
	.byte	0
	.uleb128 0x6
	.4byte	.LASF191
	.2byte	0x165
	.4byte	0x11d
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1091
	.uleb128 0x5
	.4byte	.LASF33
	.2byte	0x166
	.byte	0xb
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF174
	.2byte	0x169
	.byte	0x10
	.4byte	0x11d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3
	.4byte	.LASF175
	.2byte	0x16a
	.byte	0x10
	.4byte	0x47c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF170
	.2byte	0x172
	.4byte	.L50
	.byte	0
	.uleb128 0x6
	.4byte	.LASF192
	.2byte	0x152
	.4byte	0x11d
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10e3
	.uleb128 0x5
	.4byte	.LASF33
	.2byte	0x153
	.byte	0xb
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF174
	.2byte	0x156
	.byte	0x10
	.4byte	0x11d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3
	.4byte	.LASF175
	.2byte	0x157
	.byte	0x10
	.4byte	0x47c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF170
	.2byte	0x15f
	.4byte	.L42
	.byte	0
	.uleb128 0x6
	.4byte	.LASF193
	.2byte	0x142
	.4byte	0x11d
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1135
	.uleb128 0x5
	.4byte	.LASF33
	.2byte	0x143
	.byte	0xb
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF174
	.2byte	0x146
	.byte	0x10
	.4byte	0x11d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3
	.4byte	.LASF194
	.2byte	0x147
	.byte	0x9
	.4byte	0x8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF170
	.2byte	0x14c
	.4byte	.L34
	.byte	0
	.uleb128 0x6
	.4byte	.LASF195
	.2byte	0x133
	.4byte	0x11d
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1187
	.uleb128 0x5
	.4byte	.LASF33
	.2byte	0x134
	.byte	0xb
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF174
	.2byte	0x137
	.byte	0x10
	.4byte	0x11d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3
	.4byte	.LASF194
	.2byte	0x138
	.byte	0x9
	.4byte	0x8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF170
	.2byte	0x13d
	.4byte	.L26
	.byte	0
	.uleb128 0x6
	.4byte	.LASF196
	.2byte	0x124
	.4byte	0x11d
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11d9
	.uleb128 0x5
	.4byte	.LASF33
	.2byte	0x125
	.byte	0xb
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF174
	.2byte	0x128
	.byte	0x10
	.4byte	0x11d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3
	.4byte	.LASF194
	.2byte	0x129
	.byte	0x9
	.4byte	0x8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF170
	.2byte	0x12e
	.4byte	.L18
	.byte	0
	.uleb128 0x6
	.4byte	.LASF197
	.2byte	0x112
	.4byte	0x11d
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1211
	.uleb128 0x5
	.4byte	.LASF198
	.2byte	0x113
	.byte	0x11
	.4byte	0x1211
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF199
	.2byte	0x116
	.byte	0xe
	.4byte	0x8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xa
	.4byte	0x8d
	.uleb128 0x21
	.4byte	.LASF204
	.byte	0x1
	.byte	0xf8
	.byte	0x1
	.4byte	0x11d
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.4byte	.LASF200
	.byte	0xf9
	.4byte	0x10c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.4byte	.LASF198
	.byte	0xfa
	.4byte	0x1211
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.4byte	.LASF174
	.byte	0x1
	.byte	0xfd
	.byte	0x10
	.4byte	0x11d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF170
	.2byte	0x10e
	.4byte	.L3
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x7
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
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 17
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x21
	.sleb128 17
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x2
	.uleb128 0x18
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
.LASF51:
	.ascii	"GenId\000"
.LASF151:
	.ascii	"EeePReadBufferFromEEP\000"
.LASF29:
	.ascii	"cszLong\000"
.LASF158:
	.ascii	"EeeP_CreateCOM0R20_CBImage\000"
.LASF110:
	.ascii	"uiListDBlocks_EEP\000"
.LASF66:
	.ascii	"MType\000"
.LASF125:
	.ascii	"COM0R20M_Img\000"
.LASF71:
	.ascii	"I2CDevAddr\000"
.LASF8:
	.ascii	"stderr\000"
.LASF103:
	.ascii	"ProgramEeePExpEEP_EEP\000"
.LASF119:
	.ascii	"szCOM0R20MEEP_To_Img_FName\000"
.LASF173:
	.ascii	"CMD_ListDBlocks_IMG\000"
.LASF159:
	.ascii	"EeeP_CreateEeePExtEEPCfg\000"
.LASF129:
	.ascii	"COM0R20CB_EEP\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF116:
	.ascii	"uiStoreCOM0R20CB_EEP\000"
.LASF123:
	.ascii	"syntaxErrMes\000"
.LASF78:
	.ascii	"OutFile\000"
.LASF34:
	.ascii	"handler\000"
.LASF156:
	.ascii	"EeePFreeBuffer\000"
.LASF179:
	.ascii	"CMD_ListDBlocksCOM0R20_M_EEP\000"
.LASF61:
	.ascii	"DDIDesc\000"
.LASF184:
	.ascii	"WriteEep\000"
.LASF198:
	.ascii	"FilePtr\000"
.LASF118:
	.ascii	"uiStoreCOM0R20M_EEP\000"
.LASF117:
	.ascii	"szCOM0R20CBEEP_To_Img_FName\000"
.LASF139:
	.ascii	"GEN_LIST_DBLOCKS_FILE\000"
.LASF28:
	.ascii	"cShort\000"
.LASF201:
	.ascii	"GNU C99 11.2.0 -mcpu=cortex-a9 -mfloat-abi=hard -mf"
	.ascii	"pu=vfpv3 -mabi=aapcs-linux -mtls-dialect=gnu -marm "
	.ascii	"-march=armv7-a+mp+sec+vfpv3 -g -O0 -std=gnu99 -fsta"
	.ascii	"ck-protector-strong -fPIE\000"
.LASF109:
	.ascii	"szGEN_List_DBlocks_File\000"
.LASF114:
	.ascii	"uiStoreEeePExpEEP_EEP\000"
.LASF124:
	.ascii	"COM0R20M_Cfg\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF58:
	.ascii	"LanDesc\000"
.LASF7:
	.ascii	"stdout\000"
.LASF46:
	.ascii	"DeviceFlav\000"
.LASF153:
	.ascii	"EeePReadBufferFromFile\000"
.LASF200:
	.ascii	"Destination\000"
.LASF52:
	.ascii	"DevId\000"
.LASF89:
	.ascii	"szCOM0R20M_S2Cfg_File\000"
.LASF37:
	.ascii	"DontCareByte\000"
.LASF136:
	.ascii	"EeePExpEEP_IMG\000"
.LASF111:
	.ascii	"ulEEP_Img\000"
.LASF17:
	.ascii	"long long unsigned int\000"
.LASF132:
	.ascii	"EeePExpEEP_EEP\000"
.LASF68:
	.ascii	"EeePHandel_t\000"
.LASF104:
	.ascii	"uiProgramCOM0R20CB_EEP\000"
.LASF49:
	.ascii	"Exp_EEP_s\000"
.LASF53:
	.ascii	"Exp_EEP_t\000"
.LASF87:
	.ascii	"CreateCOM0R20M\000"
.LASF59:
	.ascii	"MiscIo1\000"
.LASF60:
	.ascii	"MiscIo2\000"
.LASF101:
	.ascii	"CreateEeePExpEEP_EEP\000"
.LASF32:
	.ascii	"stArgs\000"
.LASF50:
	.ascii	"EeePHdr\000"
.LASF197:
	.ascii	"FreeFilePtr\000"
.LASF143:
	.ascii	"fprintf\000"
.LASF57:
	.ascii	"SasDesc\000"
.LASF40:
	.ascii	"BlkOffset\000"
.LASF134:
	.ascii	"COM0R20CB_IMG\000"
.LASF83:
	.ascii	"uiVerbose\000"
.LASF178:
	.ascii	"CMD_CreateExtEepEEP_IMG\000"
.LASF4:
	.ascii	"size_t\000"
.LASF194:
	.ascii	"lclStream\000"
.LASF47:
	.ascii	"RevId\000"
.LASF180:
	.ascii	"DevDesc\000"
.LASF76:
	.ascii	"InOutFiles_s\000"
.LASF79:
	.ascii	"InOutFiles_t\000"
.LASF80:
	.ascii	"Options_s\000"
.LASF100:
	.ascii	"uiCreateEeePExpEEP_EEP\000"
.LASF44:
	.ascii	"VendId\000"
.LASF106:
	.ascii	"uiProgramCOM0R20M_EEP\000"
.LASF193:
	.ascii	"CMD_CreateCOM0R20_EeePExtCfg\000"
.LASF93:
	.ascii	"CreateCOM0R20CB\000"
.LASF62:
	.ascii	"PCIeGen\000"
.LASF74:
	.ascii	"FileName\000"
.LASF56:
	.ascii	"UsbDesc\000"
.LASF45:
	.ascii	"DeviceId\000"
.LASF115:
	.ascii	"StoreEeePExpEEP_EEP\000"
.LASF107:
	.ascii	"szCOM0R20M_SBIN_File\000"
.LASF3:
	.ascii	"char\000"
.LASF98:
	.ascii	"uiCreateEeePExpEEP_IMG\000"
.LASF21:
	.ascii	"ArgDesc_s\000"
.LASF26:
	.ascii	"ArgDesc_t\000"
.LASF91:
	.ascii	"szCOM0R20CB_Cfg_File\000"
.LASF105:
	.ascii	"szCOM0R20CB_SBIN_File\000"
.LASF183:
	.ascii	"CMD_StoreCOM0R20_M_EEP\000"
.LASF97:
	.ascii	"szEeePExpEEP_Cfg_File\000"
.LASF144:
	.ascii	"exit\000"
.LASF41:
	.ascii	"DeviceDesc\000"
.LASF138:
	.ascii	"COM0R20M_PEEP\000"
.LASF163:
	.ascii	"siFormattedMessage_SC\000"
.LASF19:
	.ascii	"EApiStatus_t\000"
.LASF12:
	.ascii	"uint8_t\000"
.LASF128:
	.ascii	"COM0R20CB_Img\000"
.LASF120:
	.ascii	"Options_t\000"
.LASF131:
	.ascii	"EeePExpEEP_Img\000"
.LASF182:
	.ascii	"CMD_ListDBlocksEeePExt_EEP\000"
.LASF38:
	.ascii	"EepId\000"
.LASF2:
	.ascii	"long long int\000"
.LASF121:
	.ascii	"CurOptions\000"
.LASF81:
	.ascii	"uiHelp\000"
.LASF145:
	.ascii	"printf\000"
.LASF174:
	.ascii	"StatusCode\000"
.LASF31:
	.ascii	"pArgs\000"
.LASF186:
	.ascii	"CMD_StoreEeePExt_EEP\000"
.LASF27:
	.ascii	"CmdDesc_s\000"
.LASF35:
	.ascii	"CmdDesc_t\000"
.LASF69:
	.ascii	"I2CAddrCfg_s\000"
.LASF72:
	.ascii	"I2CAddrCfg_t\000"
.LASF137:
	.ascii	"COM0R20CB_PEEP\000"
.LASF188:
	.ascii	"CMD_ProgramCOM0R20M_EEP\000"
.LASF25:
	.ascii	"Handle\000"
.LASF63:
	.ascii	"LaneMap\000"
.LASF181:
	.ascii	"CMD_ListDBlocksCOM0R20_CB_EEP\000"
.LASF140:
	.ascii	"GEN_LIST_DBLOCKS_EEP\000"
.LASF77:
	.ascii	"InFile\000"
.LASF30:
	.ascii	"puiResult\000"
.LASF73:
	.ascii	"WriteEepCfg_s\000"
.LASF75:
	.ascii	"WriteEepCfg_t\000"
.LASF102:
	.ascii	"uiProgramEeePExpEEP_EEP\000"
.LASF94:
	.ascii	"uiCreateCOM0R20CB_EEP\000"
.LASF199:
	.ascii	"LclFilePtr\000"
.LASF167:
	.ascii	"StringArg\000"
.LASF65:
	.ascii	"COM0R20_M_s\000"
.LASF67:
	.ascii	"COM0R20_M_t\000"
.LASF164:
	.ascii	"fopen\000"
.LASF168:
	.ascii	"argc\000"
.LASF24:
	.ascii	"cszHelp\000"
.LASF88:
	.ascii	"uiCreateCOM0R20M_EEP\000"
.LASF96:
	.ascii	"uiCreateEeePExpEEP_CFG\000"
.LASF85:
	.ascii	"szCOM0R20M_Cfg_File\000"
.LASF169:
	.ascii	"argv\000"
.LASF187:
	.ascii	"CMD_ProgramEeePExt_EEP\000"
.LASF133:
	.ascii	"EeePExpEEP_PEEP\000"
.LASF14:
	.ascii	"uint16_t\000"
.LASF185:
	.ascii	"CMD_StoreCOM0R20_CB_EEP\000"
.LASF127:
	.ascii	"COM0R20CB_Cfg\000"
.LASF204:
	.ascii	"CreateTxtFilePtr\000"
.LASF112:
	.ascii	"uiListDBlocks_COM0R20_CB_EEP\000"
.LASF130:
	.ascii	"EeePExpEEP_Cfg\000"
.LASF99:
	.ascii	"CreateEeePExpEEP\000"
.LASF202:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux/../EeePProg.c\000"
.LASF108:
	.ascii	"uiListDBlocks_IMG\000"
.LASF171:
	.ascii	"ErrorExit\000"
.LASF92:
	.ascii	"uiCreateCOM0R20CB_IMG\000"
.LASF11:
	.ascii	"short int\000"
.LASF1:
	.ascii	"long int\000"
.LASF155:
	.ascii	"EeeP_CreateCOM0R20_MEEPImage\000"
.LASF190:
	.ascii	"CMD_CreateEeePExt_EEP\000"
.LASF142:
	.ascii	"PrintUsage\000"
.LASF48:
	.ascii	"EeePUDId_t\000"
.LASF86:
	.ascii	"uiCreateCOM0R20M_IMG\000"
.LASF152:
	.ascii	"memcmp\000"
.LASF162:
	.ascii	"fclose\000"
.LASF147:
	.ascii	"EApiLibUnInitialize\000"
.LASF192:
	.ascii	"CMD_CreateCOM0R20CB_EEP\000"
.LASF36:
	.ascii	"EeePCmn_s\000"
.LASF42:
	.ascii	"EeePCmn_t\000"
.LASF23:
	.ascii	"stValueSize\000"
.LASF9:
	.ascii	"uintptr_t\000"
.LASF39:
	.ascii	"SpecRev\000"
.LASF18:
	.ascii	"long unsigned int\000"
.LASF150:
	.ascii	"EeePWriteBufferToFile\000"
.LASF43:
	.ascii	"EeePUDId_s\000"
.LASF20:
	.ascii	"_IO_FILE\000"
.LASF126:
	.ascii	"COM0R20M_EEP\000"
.LASF157:
	.ascii	"EeePWriteBufferToEEP\000"
.LASF146:
	.ascii	"ParseArgs\000"
.LASF141:
	.ascii	"ArgsDesc\000"
.LASF13:
	.ascii	"unsigned char\000"
.LASF90:
	.ascii	"uiCreateCOM0R20CB_CFG\000"
.LASF176:
	.ascii	"CMD_CreateCOM0R20CB_IMG\000"
.LASF160:
	.ascii	"EeeP_CreateCOM0R20_CBCfg\000"
.LASF191:
	.ascii	"CMD_CreateCOM0R20M_EEP\000"
.LASF33:
	.ascii	"pArgData\000"
.LASF122:
	.ascii	"cszTitle\000"
.LASF64:
	.ascii	"COM0R20_CB_t\000"
.LASF154:
	.ascii	"EeeP_CreateEeePExtEEPImage\000"
.LASF84:
	.ascii	"uiCreateCOM0R20M_CFG\000"
.LASF70:
	.ascii	"I2CBus\000"
.LASF203:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux\000"
.LASF161:
	.ascii	"EeeP_CreateCOM0R20_MEEPCfg\000"
.LASF175:
	.ascii	"BHandel\000"
.LASF135:
	.ascii	"COM0R20M_IMG\000"
.LASF95:
	.ascii	"szCOM0R20CB_S2Cfg_File\000"
.LASF10:
	.ascii	"signed char\000"
.LASF148:
	.ascii	"EApiLibInitialize\000"
.LASF15:
	.ascii	"short unsigned int\000"
.LASF54:
	.ascii	"COM0R20_CB_s\000"
.LASF22:
	.ascii	"pValue\000"
.LASF172:
	.ascii	"main\000"
.LASF166:
	.ascii	"NumberArg\000"
.LASF189:
	.ascii	"CMD_ProgramCOM0R20CB_EEP\000"
.LASF196:
	.ascii	"CMD_CreateCOM0R20_MEEPCfg\000"
.LASF149:
	.ascii	"EeePListBlocks\000"
.LASF6:
	.ascii	"double\000"
.LASF177:
	.ascii	"CMD_CreateCOM0R20M_IMG\000"
.LASF5:
	.ascii	"FILE\000"
.LASF55:
	.ascii	"CBType\000"
.LASF82:
	.ascii	"uiQuiet\000"
.LASF113:
	.ascii	"uiListDBlocks_COM0R20_M_EEP\000"
.LASF195:
	.ascii	"CMD_CreateCOM0R20_CBCfg\000"
.LASF170:
	.ascii	"ExitPoint\000"
.LASF165:
	.ascii	"strcmp\000"
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
