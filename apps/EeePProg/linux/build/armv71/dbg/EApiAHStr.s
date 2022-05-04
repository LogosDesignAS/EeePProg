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
	.file	"EApiAHStr.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.global	ErrorLookup
	.section	.rodata
	.align	2
.LC0:
	.ascii	"EAPI_STATUS_NOT_INITIALIZED\000"
	.align	2
.LC1:
	.ascii	"EAPI_STATUS_INITIALIZED\000"
	.align	2
.LC2:
	.ascii	"EAPI_STATUS_ALLOC_ERROR\000"
	.align	2
.LC3:
	.ascii	"EAPI_STATUS_DRIVER_TIMEOUT\000"
	.align	2
.LC4:
	.ascii	"EAPI_STATUS_INVALID_PARAMETER\000"
	.align	2
.LC5:
	.ascii	"EAPI_STATUS_INVALID_BLOCK_ALIGNMENT\000"
	.align	2
.LC6:
	.ascii	"EAPI_STATUS_INVALID_BLOCK_LENGTH\000"
	.align	2
.LC7:
	.ascii	"EAPI_STATUS_INVALID_DIRECTION\000"
	.align	2
.LC8:
	.ascii	"EAPI_STATUS_INVALID_BITMASK\000"
	.align	2
.LC9:
	.ascii	"EAPI_STATUS_RUNNING\000"
	.align	2
.LC10:
	.ascii	"EAPI_STATUS_UNSUPPORTED\000"
	.align	2
.LC11:
	.ascii	"EAPI_STATUS_NOT_FOUND\000"
	.align	2
.LC12:
	.ascii	"EAPI_STATUS_TIMEOUT\000"
	.align	2
.LC13:
	.ascii	"EAPI_STATUS_BUSY_COLLISION\000"
	.align	2
.LC14:
	.ascii	"EAPI_STATUS_READ_ERROR\000"
	.align	2
.LC15:
	.ascii	"EAPI_STATUS_WRITE_ERROR\000"
	.align	2
.LC16:
	.ascii	"EAPI_STATUS_MORE_DATA\000"
	.align	2
.LC17:
	.ascii	"EAPI_STATUS_ERROR\000"
	.align	2
.LC18:
	.ascii	"EAPI_STATUS_SUCCESS\000"
	.section	.data.rel.ro.local,"aw"
	.align	2
	.type	ErrorLookup, %object
	.size	ErrorLookup, 152
ErrorLookup:
	.word	-1
	.word	.LC0
	.word	-2
	.word	.LC1
	.word	-3
	.word	.LC2
	.word	-4
	.word	.LC3
	.word	-257
	.word	.LC4
	.word	-258
	.word	.LC5
	.word	-259
	.word	.LC6
	.word	-260
	.word	.LC7
	.word	-261
	.word	.LC8
	.word	-262
	.word	.LC9
	.word	-769
	.word	.LC10
	.word	-1025
	.word	.LC11
	.word	-1026
	.word	.LC12
	.word	-1027
	.word	.LC13
	.word	-1281
	.word	.LC14
	.word	-1282
	.word	.LC15
	.word	-1537
	.word	.LC16
	.word	-3841
	.word	.LC17
	.word	0
	.word	.LC18
	.section	.rodata
	.align	2
.LC19:
	.ascii	"EApiAHCreateErrorString\000"
	.align	2
.LC20:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux/../../common/EApiAHStr.c\000"
	.align	2
.LC21:
	.ascii	"(pString==NULL)\000"
	.align	2
.LC22:
	.ascii	"%s\012\000"
	.align	2
.LC23:
	.ascii	"(StrBufLen==0)\000"
	.align	2
.LC24:
	.ascii	"UNKNOWN ERROR(0x%08X)\000"
	.text
	.align	2
	.global	EApiAHCreateErrorString
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiAHCreateErrorString, %function
EApiAHCreateErrorString:
.LFB1:
	.file 1 "/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/linux/../../common/EApiAHStr.c"
	.loc 1 71 1
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
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	.loc 1 72 10
	mvn	r3, #0
	str	r3, [fp, #-12]
	.loc 1 75 3
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L2
	.loc 1 75 3 is_stmt 0 discriminator 1
	ldr	r3, .L12
.LPIC0:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L12+4
.LPIC1:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	mov	r3, #75
	ldr	r2, .L12+8
.LPIC2:
	add	r2, pc, r2
	ldr	r1, .L12+12
.LPIC3:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-12]
	b	.L8
.L2:
	.loc 1 80 3 is_stmt 1
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L4
	.loc 1 80 3 is_stmt 0 discriminator 1
	ldr	r3, .L12+16
.LPIC4:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L12+20
.LPIC5:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	mov	r3, #80
	ldr	r2, .L12+24
.LPIC6:
	add	r2, pc, r2
	ldr	r1, .L12+28
.LPIC7:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-12]
	b	.L8
.L4:
	.loc 1 86 8 is_stmt 1
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 86 3
	b	.L5
.L9:
	.loc 1 88 22
	ldr	r3, .L12+32
.LPIC8:
	add	r3, pc, r3
	ldr	r2, [fp, #-8]
	ldr	r3, [r3, r2, lsl #3]
	.loc 1 88 7
	ldr	r2, [fp, #-16]
	cmp	r2, r3
	bne	.L6
	.loc 1 90 9
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	beq	.L7
	.loc 1 91 54
	ldr	r2, .L12+36
.LPIC9:
	add	r2, pc, r2
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #3
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	.loc 1 91 9
	mov	r2, r3
	ldr	r1, [fp, #-24]
	ldr	r0, [fp, #-20]
	bl	EApiStrCpy(PLT)
	.loc 1 92 21
	ldr	r0, [fp, #-20]
	bl	strlen(PLT)
	str	r0, [fp, #-12]
	.loc 1 93 9
	b	.L8
.L7:
	.loc 1 95 17
	mvn	r3, #0
	str	r3, [fp, #-12]
	.loc 1 96 7
	b	.L8
.L6:
	.loc 1 86 39 discriminator 2
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L5:
	.loc 1 86 13 discriminator 1
	ldr	r3, [fp, #-8]
	cmp	r3, #18
	bls	.L9
	.loc 1 99 5
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	beq	.L10
	.loc 1 100 5
	ldr	r3, [fp, #-16]
	ldr	r2, .L12+40
.LPIC10:
	add	r2, pc, r2
	ldr	r1, [fp, #-24]
	ldr	r0, [fp, #-20]
	bl	EApiSprintf(PLT)
	.loc 1 104 16
	ldr	r0, [fp, #-20]
	bl	strlen(PLT)
	str	r0, [fp, #-12]
	.loc 1 105 5
	b	.L8
.L10:
	.loc 1 107 13
	mvn	r3, #0
	str	r3, [fp, #-12]
.L3:
.L8:
	.loc 1 110 10
	ldr	r3, [fp, #-12]
	.loc 1 111 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L13:
	.align	2
.L12:
	.word	.LC21-(.LPIC0+8)
	.word	.LC22-(.LPIC1+8)
	.word	.LC19-(.LPIC2+8)
	.word	.LC20-(.LPIC3+8)
	.word	.LC23-(.LPIC4+8)
	.word	.LC22-(.LPIC5+8)
	.word	.LC19-(.LPIC6+8)
	.word	.LC20-(.LPIC7+8)
	.word	ErrorLookup-(.LPIC8+8)
	.word	ErrorLookup-(.LPIC9+8)
	.word	.LC24-(.LPIC10+8)
	.cfi_endproc
.LFE1:
	.size	EApiAHCreateErrorString, .-EApiAHCreateErrorString
	.section	.rodata
	.align	2
.LC25:
	.ascii	"EApiAHCreateErrorStringAlloc\000"
	.text
	.align	2
	.global	EApiAHCreateErrorStringAlloc
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiAHCreateErrorStringAlloc, %function
EApiAHCreateErrorStringAlloc:
.LFB2:
	.loc 1 117 1
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
	str	r1, [fp, #-28]
	.loc 1 118 16
	mov	r3, #0
	str	r3, [fp, #-16]
	.loc 1 122 3
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L15
	.loc 1 122 3 is_stmt 0 discriminator 1
	ldr	r3, .L24
.LPIC11:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L24+4
.LPIC12:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #122
	ldr	r2, .L24+8
.LPIC13:
	add	r2, pc, r2
	ldr	r1, .L24+12
.LPIC14:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-16]
	b	.L20
.L15:
	.loc 1 124 8 is_stmt 1
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 124 3
	b	.L17
.L21:
	.loc 1 126 22
	ldr	r3, .L24+16
.LPIC15:
	add	r3, pc, r3
	ldr	r2, [fp, #-12]
	ldr	r3, [r3, r2, lsl #3]
	.loc 1 126 7
	ldr	r2, [fp, #-24]
	cmp	r2, r3
	bne	.L18
	.loc 1 127 40
	ldr	r2, .L24+20
.LPIC16:
	add	r2, pc, r2
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #3
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	.loc 1 127 14
	mov	r0, r3
	bl	strlen(PLT)
	mov	r3, r0
	.loc 1 127 13
	add	r3, r3, #1
	str	r3, [fp, #-8]
	.loc 1 128 16
	ldr	r0, [fp, #-8]
	bl	malloc(PLT)
	mov	r3, r0
	mov	r2, r3
	.loc 1 128 15
	ldr	r3, [fp, #-28]
	str	r2, [r3]
	.loc 1 129 10
	ldr	r3, [fp, #-28]
	ldr	r3, [r3]
	.loc 1 129 9
	cmp	r3, #0
	beq	.L19
	.loc 1 130 9
	ldr	r3, [fp, #-28]
	ldr	r0, [r3]
	.loc 1 130 52
	ldr	r2, .L24+24
.LPIC17:
	add	r2, pc, r2
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #3
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	.loc 1 130 9
	mov	r2, r3
	ldr	r1, [fp, #-8]
	bl	EApiStrCpy(PLT)
.L19:
	.loc 1 131 17
	mov	r3, #0
	str	r3, [fp, #-16]
	.loc 1 132 7
	b	.L20
.L18:
	.loc 1 124 39 discriminator 2
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L17:
	.loc 1 124 13 discriminator 1
	ldr	r3, [fp, #-12]
	cmp	r3, #18
	bls	.L21
	.loc 1 135 12
	mov	r0, #26
	bl	malloc(PLT)
	mov	r3, r0
	mov	r2, r3
	.loc 1 135 11
	ldr	r3, [fp, #-28]
	str	r2, [r3]
	.loc 1 136 6
	ldr	r3, [fp, #-28]
	ldr	r3, [r3]
	.loc 1 136 5
	cmp	r3, #0
	beq	.L23
	.loc 1 137 5
	ldr	r3, [fp, #-28]
	ldr	r0, [r3]
	ldr	r3, [fp, #-24]
	ldr	r2, .L24+28
.LPIC18:
	add	r2, pc, r2
	mov	r1, #26
	bl	EApiSprintf(PLT)
	b	.L20
.L16:
.L23:
	.loc 1 142 1
	nop
.L20:
	.loc 1 144 10
	ldr	r3, [fp, #-16]
	.loc 1 145 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L25:
	.align	2
.L24:
	.word	.LC21-(.LPIC11+8)
	.word	.LC22-(.LPIC12+8)
	.word	.LC25-(.LPIC13+8)
	.word	.LC20-(.LPIC14+8)
	.word	ErrorLookup-(.LPIC15+8)
	.word	ErrorLookup-(.LPIC16+8)
	.word	ErrorLookup-(.LPIC17+8)
	.word	.LC24-(.LPIC18+8)
	.cfi_endproc
.LFE2:
	.size	EApiAHCreateErrorStringAlloc, .-EApiAHCreateErrorStringAlloc
	.section	.rodata
	.align	2
.LC26:
	.ascii	"EApiAHGetString\000"
	.align	2
.LC27:
	.ascii	"EApiAHGetStringAlloc\000"
	.align	2
.LC28:
	.ascii	"Interface Returning Different String Lengths\000"
	.align	2
.LC29:
	.ascii	"Returned String Missing Terminating \\0 Character.\000"
	.text
	.align	2
	.global	EApiAHGetString
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiAHGetString, %function
EApiAHGetString:
.LFB3:
	.loc 1 153 1
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
	.loc 1 153 1
	ldr	r2, .L35
.LPIC35:
	add	r2, pc, r2
	ldr	r3, .L35+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 154 10
	mvn	r3, #0
	str	r3, [fp, #-16]
	.loc 1 155 12
	ldr	r3, [fp, #-32]
	str	r3, [fp, #-20]
	.loc 1 156 10
	ldr	r3, [fp, #-32]
	str	r3, [fp, #-12]
	.loc 1 157 3
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L27
	.loc 1 157 3 is_stmt 0 discriminator 1
	ldr	r3, .L35+8
.LPIC19:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L35+12
.LPIC20:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	mov	r3, #157
	ldr	r2, .L35+16
.LPIC21:
	add	r2, pc, r2
	ldr	r1, .L35+20
.LPIC22:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-16]
	b	.L28
.L27:
	.loc 1 158 3 is_stmt 1
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	bne	.L29
	.loc 1 158 3 is_stmt 0 discriminator 1
	ldr	r3, .L35+24
.LPIC23:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L35+28
.LPIC24:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	mov	r3, #158
	ldr	r2, .L35+32
.LPIC25:
	add	r2, pc, r2
	ldr	r1, .L35+36
.LPIC26:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-16]
	b	.L28
.L29:
	.loc 1 160 14 is_stmt 1
	sub	r3, fp, #20
	mov	r2, r3
	ldr	r1, [fp, #-28]
	ldr	r0, [fp, #-24]
	bl	EApiBoardGetStringA(PLT)
	str	r0, [fp, #-16]
	.loc 1 161 5
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L30
	.loc 1 162 30
	ldr	r2, [fp, #-12]
	ldr	r1, [fp, #-28]
	ldr	r0, [fp, #-16]
	bl	EApiAHCreateErrorString(PLT)
	mov	r3, r0
	.loc 1 162 19
	str	r3, [fp, #-20]
.L30:
	.loc 1 164 3
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-12]
	cmp	r2, r3
	bcs	.L31
	.loc 1 164 3 is_stmt 0 discriminator 1
	ldr	r3, .L35+40
.LPIC27:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L35+44
.LPIC28:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	mov	r3, #164
	ldr	r2, .L35+48
.LPIC29:
	add	r2, pc, r2
	ldr	r1, .L35+52
.LPIC30:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-16]
	b	.L28
.L31:
	.loc 1 170 6 is_stmt 1
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-28]
	bl	EApiStrLen(PLT)
	mov	r2, r0
	.loc 1 170 5
	ldr	r3, [fp, #-12]
	cmp	r3, r2
	bne	.L32
	.loc 1 172 6
	ldr	r3, .L35+56
.LPIC31:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L35+60
.LPIC32:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	mov	r3, #172
	ldr	r2, .L35+64
.LPIC33:
	add	r2, pc, r2
	ldr	r1, .L35+68
.LPIC34:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	.loc 1 177 12
	ldr	r3, [fp, #-12]
	sub	r3, r3, #1
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	.loc 1 177 34
	mov	r2, #0
	strb	r2, [r3]
.L32:
	.loc 1 180 13
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-16]
.L28:
	.loc 1 183 10
	ldr	r3, [fp, #-16]
	.loc 1 153 1
	ldr	r1, .L35+72
.LPIC36:
	add	r1, pc, r1
	.loc 1 184 1
	ldr	r2, .L35+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L34
	bl	__stack_chk_fail(PLT)
.L34:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L36:
	.align	2
.L35:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC35+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC21-(.LPIC19+8)
	.word	.LC22-(.LPIC20+8)
	.word	.LC26-(.LPIC21+8)
	.word	.LC20-(.LPIC22+8)
	.word	.LC23-(.LPIC23+8)
	.word	.LC22-(.LPIC24+8)
	.word	.LC26-(.LPIC25+8)
	.word	.LC20-(.LPIC26+8)
	.word	.LC28-(.LPIC27+8)
	.word	.LC22-(.LPIC28+8)
	.word	.LC27-(.LPIC29+8)
	.word	.LC20-(.LPIC30+8)
	.word	.LC29-(.LPIC31+8)
	.word	.LC22-(.LPIC32+8)
	.word	.LC26-(.LPIC33+8)
	.word	.LC20-(.LPIC34+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC36+8)
	.cfi_endproc
.LFE3:
	.size	EApiAHGetString, .-EApiAHGetString
	.section	.rodata
	.align	2
.LC30:
	.ascii	"Memory Allocation Error\000"
	.text
	.align	2
	.global	EApiAHGetStringAlloc
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiAHGetStringAlloc, %function
EApiAHGetStringAlloc:
.LFB4:
	.loc 1 193 1
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
	str	r1, [fp, #-28]
	.loc 1 193 1
	ldr	r2, .L47
.LPIC53:
	add	r2, pc, r2
	ldr	r3, .L47+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 194 16
	mov	r3, #0
	str	r3, [fp, #-16]
	.loc 1 195 12
	mov	r3, #0
	str	r3, [fp, #-20]
	.loc 1 196 12
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 197 3
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L38
	.loc 1 197 3 is_stmt 0 discriminator 1
	ldr	r3, .L47+8
.LPIC37:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L47+12
.LPIC38:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #197
	ldr	r2, .L47+16
.LPIC39:
	add	r2, pc, r2
	ldr	r1, .L47+20
.LPIC40:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-16]
	b	.L39
.L38:
	.loc 1 198 11 is_stmt 1
	ldr	r3, [fp, #-28]
	mov	r2, #0
	str	r2, [r3]
	.loc 1 199 14
	ldr	r3, [fp, #-28]
	ldr	r3, [r3]
	sub	r2, fp, #20
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	EApiBoardGetStringA(PLT)
	str	r0, [fp, #-16]
	.loc 1 200 3
	ldr	r3, [fp, #-16]
	mvn	r2, #1536
	cmp	r3, r2
	bne	.L40
	.loc 1 202 25
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-12]
	.loc 1 203 16
	ldr	r3, [fp, #-20]
	mov	r0, r3
	bl	malloc(PLT)
	mov	r3, r0
	mov	r2, r3
	.loc 1 203 15
	ldr	r3, [fp, #-28]
	str	r2, [r3]
	.loc 1 205 7
	ldr	r3, [fp, #-28]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L41
	.loc 1 205 7 is_stmt 0 discriminator 1
	ldr	r3, .L47+24
.LPIC41:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L47+28
.LPIC42:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #2
	str	r3, [sp]
	mov	r3, #205
	ldr	r2, .L47+32
.LPIC43:
	add	r2, pc, r2
	ldr	r1, .L47+36
.LPIC44:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #2
	str	r3, [fp, #-16]
	b	.L39
.L41:
	.loc 1 212 18 is_stmt 1
	ldr	r3, [fp, #-28]
	ldr	r3, [r3]
	sub	r2, fp, #20
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	EApiBoardGetStringA(PLT)
	str	r0, [fp, #-16]
	.loc 1 214 7
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-12]
	cmp	r2, r3
	bcs	.L42
	.loc 1 214 7 is_stmt 0 discriminator 1
	ldr	r3, .L47+40
.LPIC45:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L47+44
.LPIC46:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #3840
	str	r3, [sp]
	mov	r3, #214
	ldr	r2, .L47+48
.LPIC47:
	add	r2, pc, r2
	ldr	r1, .L47+52
.LPIC48:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #3840
	str	r3, [fp, #-16]
	b	.L39
.L42:
	.loc 1 220 10 is_stmt 1
	ldr	r3, [fp, #-28]
	ldr	r3, [r3]
	ldr	r1, [fp, #-12]
	mov	r0, r3
	bl	EApiStrLen(PLT)
	mov	r2, r0
	.loc 1 220 9
	ldr	r3, [fp, #-12]
	cmp	r3, r2
	bne	.L46
	.loc 1 222 9
	ldr	r3, .L47+56
.LPIC49:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L47+60
.LPIC50:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #3840
	str	r3, [sp]
	mov	r3, #222
	ldr	r2, .L47+64
.LPIC51:
	add	r2, pc, r2
	ldr	r1, .L47+68
.LPIC52:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	.loc 1 227 10
	ldr	r3, [fp, #-28]
	ldr	r2, [r3]
	.loc 1 227 19
	ldr	r3, [fp, #-12]
	sub	r3, r3, #1
	add	r3, r2, r3
	.loc 1 227 41
	mov	r2, #0
	strb	r2, [r3]
	.loc 1 230 7
	b	.L46
.L40:
	.loc 1 232 7
	ldr	r1, [fp, #-28]
	ldr	r0, [fp, #-16]
	bl	EApiAHCreateErrorStringAlloc(PLT)
	.loc 1 233 7
	b	.L39
.L46:
	.loc 1 230 7
	nop
.L39:
	.loc 1 237 10
	ldr	r3, [fp, #-16]
	.loc 1 193 1
	ldr	r1, .L47+72
.LPIC54:
	add	r1, pc, r1
	.loc 1 238 1
	ldr	r2, .L47+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L45
	bl	__stack_chk_fail(PLT)
.L45:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L48:
	.align	2
.L47:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC53+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC21-(.LPIC37+8)
	.word	.LC22-(.LPIC38+8)
	.word	.LC26-(.LPIC39+8)
	.word	.LC20-(.LPIC40+8)
	.word	.LC30-(.LPIC41+8)
	.word	.LC22-(.LPIC42+8)
	.word	.LC27-(.LPIC43+8)
	.word	.LC20-(.LPIC44+8)
	.word	.LC28-(.LPIC45+8)
	.word	.LC22-(.LPIC46+8)
	.word	.LC27-(.LPIC47+8)
	.word	.LC20-(.LPIC48+8)
	.word	.LC29-(.LPIC49+8)
	.word	.LC22-(.LPIC50+8)
	.word	.LC27-(.LPIC51+8)
	.word	.LC20-(.LPIC52+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC54+8)
	.cfi_endproc
.LFE4:
	.size	EApiAHGetStringAlloc, .-EApiAHGetStringAlloc
	.section	.rodata
	.align	2
.LC31:
	.ascii	"EApiAHCreateDecimalString\000"
	.align	2
.LC32:
	.ascii	"%u\000"
	.text
	.align	2
	.global	EApiAHCreateDecimalString
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiAHCreateDecimalString, %function
EApiAHCreateDecimalString:
.LFB5:
	.loc 1 245 1
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
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	.loc 1 246 8
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 247 5
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L50
	.loc 1 247 5 is_stmt 0 discriminator 1
	ldr	r3, .L54
.LPIC55:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L54+4
.LPIC56:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	mov	r3, #247
	ldr	r2, .L54+8
.LPIC57:
	add	r2, pc, r2
	ldr	r1, .L54+12
.LPIC58:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-8]
	b	.L51
.L50:
	.loc 1 248 5 is_stmt 1
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L52
	.loc 1 248 5 is_stmt 0 discriminator 1
	ldr	r3, .L54+16
.LPIC59:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L54+20
.LPIC60:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	mov	r3, #248
	ldr	r2, .L54+24
.LPIC61:
	add	r2, pc, r2
	ldr	r1, .L54+28
.LPIC62:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-8]
	b	.L51
.L52:
	.loc 1 249 16 is_stmt 1
	ldr	r3, [fp, #-16]
	ldr	r2, .L54+32
.LPIC63:
	add	r2, pc, r2
	ldr	r1, [fp, #-24]
	ldr	r0, [fp, #-20]
	bl	EApiSprintf(PLT)
	str	r0, [fp, #-8]
.L51:
	.loc 1 252 12
	ldr	r3, [fp, #-8]
	.loc 1 253 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L55:
	.align	2
.L54:
	.word	.LC21-(.LPIC55+8)
	.word	.LC22-(.LPIC56+8)
	.word	.LC31-(.LPIC57+8)
	.word	.LC20-(.LPIC58+8)
	.word	.LC23-(.LPIC59+8)
	.word	.LC22-(.LPIC60+8)
	.word	.LC31-(.LPIC61+8)
	.word	.LC20-(.LPIC62+8)
	.word	.LC32-(.LPIC63+8)
	.cfi_endproc
.LFE5:
	.size	EApiAHCreateDecimalString, .-EApiAHCreateDecimalString
	.section	.rodata
	.align	2
.LC33:
	.ascii	"0x%08X\000"
	.text
	.align	2
	.global	EApiAHCreateHexString
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiAHCreateHexString, %function
EApiAHCreateHexString:
.LFB6:
	.loc 1 260 1
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
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	.loc 1 261 8
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 262 5
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L57
	.loc 1 262 5 is_stmt 0 discriminator 1
	ldr	r3, .L61
.LPIC64:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L61+4
.LPIC65:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	movw	r3, #262
	ldr	r2, .L61+8
.LPIC66:
	add	r2, pc, r2
	ldr	r1, .L61+12
.LPIC67:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-8]
	b	.L58
.L57:
	.loc 1 263 5 is_stmt 1
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L59
	.loc 1 263 5 is_stmt 0 discriminator 1
	ldr	r3, .L61+16
.LPIC68:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L61+20
.LPIC69:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	movw	r3, #263
	ldr	r2, .L61+24
.LPIC70:
	add	r2, pc, r2
	ldr	r1, .L61+28
.LPIC71:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-8]
	b	.L58
.L59:
	.loc 1 264 16 is_stmt 1
	ldr	r3, [fp, #-16]
	ldr	r2, .L61+32
.LPIC72:
	add	r2, pc, r2
	ldr	r1, [fp, #-24]
	ldr	r0, [fp, #-20]
	bl	EApiSprintf(PLT)
	str	r0, [fp, #-8]
.L58:
	.loc 1 267 12
	ldr	r3, [fp, #-8]
	.loc 1 268 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L62:
	.align	2
.L61:
	.word	.LC21-(.LPIC64+8)
	.word	.LC22-(.LPIC65+8)
	.word	.LC31-(.LPIC66+8)
	.word	.LC20-(.LPIC67+8)
	.word	.LC23-(.LPIC68+8)
	.word	.LC22-(.LPIC69+8)
	.word	.LC31-(.LPIC70+8)
	.word	.LC20-(.LPIC71+8)
	.word	.LC33-(.LPIC72+8)
	.cfi_endproc
.LFE6:
	.size	EApiAHCreateHexString, .-EApiAHCreateHexString
	.section	.rodata
	.align	2
.LC34:
	.ascii	"%u.%02u Volts\000"
	.text
	.align	2
	.global	EApiAHCreateVoltageString
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiAHCreateVoltageString, %function
EApiAHCreateVoltageString:
.LFB7:
	.loc 1 275 1
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
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	.loc 1 276 8
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 277 5
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L64
	.loc 1 277 5 is_stmt 0 discriminator 1
	ldr	r3, .L68
.LPIC73:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L68+4
.LPIC74:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	movw	r3, #277
	ldr	r2, .L68+8
.LPIC75:
	add	r2, pc, r2
	ldr	r1, .L68+12
.LPIC76:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-8]
	b	.L65
.L64:
	.loc 1 278 5 is_stmt 1
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L66
	.loc 1 278 5 is_stmt 0 discriminator 1
	ldr	r3, .L68+16
.LPIC77:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L68+20
.LPIC78:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	movw	r3, #278
	ldr	r2, .L68+24
.LPIC79:
	add	r2, pc, r2
	ldr	r1, .L68+28
.LPIC80:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-8]
	b	.L65
.L66:
	.loc 1 279 10 is_stmt 1
	ldr	r2, [fp, #-16]
	movw	r3, #52429
	movt	r3, 52428
	umull	r2, r3, r3, r2
	lsr	r3, r3, #3
	str	r3, [fp, #-16]
	.loc 1 280 16
	ldr	r2, [fp, #-16]
	movw	r3, #34079
	movt	r3, 20971
	umull	r2, r3, r3, r2
	lsr	r1, r3, #5
	ldr	r2, [fp, #-16]
	movw	r3, #34079
	movt	r3, 20971
	umull	r0, r3, r3, r2
	lsr	r3, r3, #5
	mov	r0, #100
	mul	r3, r0, r3
	sub	r3, r2, r3
	str	r3, [sp]
	mov	r3, r1
	ldr	r2, .L68+32
.LPIC81:
	add	r2, pc, r2
	ldr	r1, [fp, #-24]
	ldr	r0, [fp, #-20]
	bl	EApiSprintf(PLT)
	str	r0, [fp, #-8]
.L65:
	.loc 1 284 12
	ldr	r3, [fp, #-8]
	.loc 1 285 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L69:
	.align	2
.L68:
	.word	.LC21-(.LPIC73+8)
	.word	.LC22-(.LPIC74+8)
	.word	.LC31-(.LPIC75+8)
	.word	.LC20-(.LPIC76+8)
	.word	.LC23-(.LPIC77+8)
	.word	.LC22-(.LPIC78+8)
	.word	.LC31-(.LPIC79+8)
	.word	.LC20-(.LPIC80+8)
	.word	.LC34-(.LPIC81+8)
	.cfi_endproc
.LFE7:
	.size	EApiAHCreateVoltageString, .-EApiAHCreateVoltageString
	.section	.rodata
	.align	2
.LC35:
	.ascii	"%u RPM\000"
	.text
	.align	2
	.global	EApiAHCreateRotationsString
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiAHCreateRotationsString, %function
EApiAHCreateRotationsString:
.LFB8:
	.loc 1 292 1
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
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	.loc 1 294 5
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L71
	.loc 1 294 5 is_stmt 0 discriminator 1
	ldr	r3, .L75
.LPIC82:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L75+4
.LPIC83:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	movw	r3, #294
	ldr	r2, .L75+8
.LPIC84:
	add	r2, pc, r2
	ldr	r1, .L75+12
.LPIC85:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-8]
	b	.L72
.L71:
	.loc 1 295 5 is_stmt 1
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L73
	.loc 1 295 5 is_stmt 0 discriminator 1
	ldr	r3, .L75+16
.LPIC86:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L75+20
.LPIC87:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	movw	r3, #295
	ldr	r2, .L75+24
.LPIC88:
	add	r2, pc, r2
	ldr	r1, .L75+28
.LPIC89:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-8]
	b	.L72
.L73:
	.loc 1 296 16 is_stmt 1
	ldr	r3, [fp, #-16]
	ldr	r2, .L75+32
.LPIC90:
	add	r2, pc, r2
	ldr	r1, [fp, #-24]
	ldr	r0, [fp, #-20]
	bl	EApiSprintf(PLT)
	str	r0, [fp, #-8]
.L72:
	.loc 1 300 12
	ldr	r3, [fp, #-8]
	.loc 1 301 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L76:
	.align	2
.L75:
	.word	.LC21-(.LPIC82+8)
	.word	.LC22-(.LPIC83+8)
	.word	.LC31-(.LPIC84+8)
	.word	.LC20-(.LPIC85+8)
	.word	.LC23-(.LPIC86+8)
	.word	.LC22-(.LPIC87+8)
	.word	.LC31-(.LPIC88+8)
	.word	.LC20-(.LPIC89+8)
	.word	.LC35-(.LPIC90+8)
	.cfi_endproc
.LFE8:
	.size	EApiAHCreateRotationsString, .-EApiAHCreateRotationsString
	.section	.rodata
	.align	2
.LC36:
	.ascii	"% i.%i Celcius\000"
	.text
	.align	2
	.global	EApiAHCreateTempString
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiAHCreateTempString, %function
EApiAHCreateTempString:
.LFB9:
	.loc 1 308 1
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
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	.loc 1 310 5
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L78
	.loc 1 310 5 is_stmt 0 discriminator 1
	ldr	r3, .L82
.LPIC91:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L82+4
.LPIC92:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	movw	r3, #310
	ldr	r2, .L82+8
.LPIC93:
	add	r2, pc, r2
	ldr	r1, .L82+12
.LPIC94:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-8]
	b	.L79
.L78:
	.loc 1 311 5 is_stmt 1
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L80
	.loc 1 311 5 is_stmt 0 discriminator 1
	ldr	r3, .L82+16
.LPIC95:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L82+20
.LPIC96:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	movw	r3, #311
	ldr	r2, .L82+24
.LPIC97:
	add	r2, pc, r2
	ldr	r1, .L82+28
.LPIC98:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-8]
	b	.L79
.L80:
	.loc 1 312 10 is_stmt 1
	ldr	r3, [fp, #-16]
	sub	r3, r3, #2720
	sub	r3, r3, #11
	str	r3, [fp, #-16]
	.loc 1 313 111
	ldr	r2, [fp, #-16]
	.loc 1 313 16
	movw	r3, #26215
	movt	r3, 26214
	smull	r1, r3, r3, r2
	asr	r1, r3, #2
	asr	r3, r2, #31
	sub	r0, r1, r3
	ldr	r1, [fp, #-16]
	movw	r3, #52429
	movt	r3, 52428
	umull	r2, r3, r3, r1
	lsr	r2, r3, #3
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	sub	r2, r1, r3
	str	r2, [sp]
	mov	r3, r0
	ldr	r2, .L82+32
.LPIC99:
	add	r2, pc, r2
	ldr	r1, [fp, #-24]
	ldr	r0, [fp, #-20]
	bl	EApiSprintf(PLT)
	str	r0, [fp, #-8]
.L79:
	.loc 1 317 12
	ldr	r3, [fp, #-8]
	.loc 1 318 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L83:
	.align	2
.L82:
	.word	.LC21-(.LPIC91+8)
	.word	.LC22-(.LPIC92+8)
	.word	.LC31-(.LPIC93+8)
	.word	.LC20-(.LPIC94+8)
	.word	.LC23-(.LPIC95+8)
	.word	.LC22-(.LPIC96+8)
	.word	.LC31-(.LPIC97+8)
	.word	.LC20-(.LPIC98+8)
	.word	.LC36-(.LPIC99+8)
	.cfi_endproc
.LFE9:
	.size	EApiAHCreateTempString, .-EApiAHCreateTempString
	.section	.rodata
	.align	2
.LC37:
	.ascii	"EApiAHCreateTimeString\000"
	.align	2
.LC38:
	.ascii	"%u Years \000"
	.align	2
.LC39:
	.ascii	"%u Days \000"
	.align	2
.LC40:
	.ascii	"%u Hours \000"
	.align	2
.LC41:
	.ascii	"%u Mins\000"
	.text
	.align	2
	.global	EApiAHCreateTimeString
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiAHCreateTimeString, %function
EApiAHCreateTimeString:
.LFB10:
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
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	.loc 1 327 9
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 328 5
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L85
	.loc 1 328 5 is_stmt 0 discriminator 1
	ldr	r3, .L94
.LPIC100:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L94+4
.LPIC101:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	mov	r3, #328
	ldr	r2, .L94+8
.LPIC102:
	add	r2, pc, r2
	ldr	r1, .L94+12
.LPIC103:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-12]
	b	.L86
.L85:
	.loc 1 329 5 is_stmt 1
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L87
	.loc 1 329 5 is_stmt 0 discriminator 1
	ldr	r3, .L94+16
.LPIC104:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L94+20
.LPIC105:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	movw	r3, #329
	ldr	r2, .L94+24
.LPIC106:
	add	r2, pc, r2
	ldr	r1, .L94+28
.LPIC107:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-12]
	b	.L86
.L87:
	.loc 1 330 7 is_stmt 1
	ldr	r2, [fp, #-16]
	movw	r3, #1311
	movt	r3, 8
	cmp	r2, r3
	bls	.L88
	.loc 1 331 18
	ldr	r3, [fp, #-8]
	.loc 1 331 30
	ldr	r2, [fp, #-20]
	add	r0, r2, r3
	.loc 1 331 18
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-24]
	sub	r1, r2, r3
	ldr	r2, [fp, #-16]
	movw	r3, #26829
	movt	r3, 65372
	umull	r2, r3, r3, r2
	lsr	r3, r3, #19
	ldr	r2, .L94+32
.LPIC108:
	add	r2, pc, r2
	bl	EApiSprintf(PLT)
	mov	r2, r0
	.loc 1 331 16
	ldr	r3, [fp, #-8]
	add	r3, r3, r2
	str	r3, [fp, #-8]
.L88:
	.loc 1 332 7
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L89
	.loc 1 332 29 discriminator 1
	ldr	r3, [fp, #-16]
	lsr	r2, r3, #5
	movw	r3, #23302
	movt	r3, 1456
	umull	r2, r3, r3, r2
	mov	r2, r3
	.loc 1 332 33 discriminator 1
	movw	r3, #62305
	movt	r3, 26393
	umull	r1, r3, r3, r2
	sub	r1, r2, r3
	lsr	r1, r1, #1
	add	r3, r3, r1
	lsr	r3, r3, #8
	movw	r1, #365
	mul	r3, r1, r3
	sub	r3, r2, r3
	.loc 1 332 17 discriminator 1
	cmp	r3, #0
	beq	.L90
.L89:
	.loc 1 333 18
	ldr	r3, [fp, #-8]
	.loc 1 333 30
	ldr	r2, [fp, #-20]
	add	r0, r2, r3
	.loc 1 333 18
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-24]
	sub	ip, r2, r3
	.loc 1 333 119
	ldr	r3, [fp, #-16]
	lsr	r2, r3, #5
	movw	r3, #23302
	movt	r3, 1456
	umull	r2, r3, r3, r2
	mov	r2, r3
	.loc 1 333 18
	movw	r3, #62305
	movt	r3, 26393
	umull	r1, r3, r3, r2
	sub	r1, r2, r3
	lsr	r1, r1, #1
	add	r3, r3, r1
	lsr	r3, r3, #8
	movw	r1, #365
	mul	r3, r1, r3
	sub	r3, r2, r3
	ldr	r2, .L94+36
.LPIC109:
	add	r2, pc, r2
	mov	r1, ip
	bl	EApiSprintf(PLT)
	mov	r2, r0
	.loc 1 333 16
	ldr	r3, [fp, #-8]
	add	r3, r3, r2
	str	r3, [fp, #-8]
.L90:
	.loc 1 334 7
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L91
	.loc 1 334 26 discriminator 1
	ldr	r2, [fp, #-16]
	movw	r3, #34953
	movt	r3, 34952
	umull	r2, r3, r3, r2
	lsr	r1, r3, #5
	.loc 1 334 30 discriminator 1
	movw	r3, #43691
	movt	r3, 43690
	umull	r2, r3, r3, r1
	lsr	r2, r3, #4
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #3
	sub	r2, r1, r3
	.loc 1 334 17 discriminator 1
	cmp	r2, #0
	beq	.L92
.L91:
	.loc 1 336 18
	ldr	r3, [fp, #-8]
	.loc 1 336 30
	ldr	r2, [fp, #-20]
	add	r0, r2, r3
	.loc 1 336 18
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-24]
	sub	ip, r2, r3
	.loc 1 336 116
	ldr	r2, [fp, #-16]
	movw	r3, #34953
	movt	r3, 34952
	umull	r2, r3, r3, r2
	lsr	r1, r3, #5
	.loc 1 336 18
	movw	r3, #43691
	movt	r3, 43690
	umull	r2, r3, r3, r1
	lsr	r2, r3, #4
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #3
	sub	r2, r1, r3
	mov	r3, r2
	ldr	r2, .L94+40
.LPIC110:
	add	r2, pc, r2
	mov	r1, ip
	bl	EApiSprintf(PLT)
	mov	r2, r0
	.loc 1 336 16
	ldr	r3, [fp, #-8]
	add	r3, r3, r2
	str	r3, [fp, #-8]
	.loc 1 337 18
	ldr	r3, [fp, #-8]
	.loc 1 337 30
	ldr	r2, [fp, #-20]
	add	r0, r2, r3
	.loc 1 337 18
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-24]
	sub	ip, r2, r3
	ldr	r1, [fp, #-16]
	movw	r3, #34953
	movt	r3, 34952
	umull	r2, r3, r3, r1
	lsr	r2, r3, #5
	mov	r3, r2
	lsl	r3, r3, #4
	sub	r3, r3, r2
	lsl	r3, r3, #2
	sub	r2, r1, r3
	mov	r3, r2
	ldr	r2, .L94+44
.LPIC111:
	add	r2, pc, r2
	mov	r1, ip
	bl	EApiSprintf(PLT)
	mov	r2, r0
	.loc 1 337 16
	ldr	r3, [fp, #-8]
	add	r3, r3, r2
	str	r3, [fp, #-8]
.L92:
	.loc 1 339 15
	ldr	r3, [fp, #-8]
	str	r3, [fp, #-12]
.L86:
	.loc 1 343 12
	ldr	r3, [fp, #-12]
	.loc 1 344 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L95:
	.align	2
.L94:
	.word	.LC21-(.LPIC100+8)
	.word	.LC22-(.LPIC101+8)
	.word	.LC37-(.LPIC102+8)
	.word	.LC20-(.LPIC103+8)
	.word	.LC23-(.LPIC104+8)
	.word	.LC22-(.LPIC105+8)
	.word	.LC37-(.LPIC106+8)
	.word	.LC20-(.LPIC107+8)
	.word	.LC38-(.LPIC108+8)
	.word	.LC39-(.LPIC109+8)
	.word	.LC40-(.LPIC110+8)
	.word	.LC41-(.LPIC111+8)
	.cfi_endproc
.LFE10:
	.size	EApiAHCreateTimeString, .-EApiAHCreateTimeString
	.section	.rodata
	.align	2
.LC42:
	.ascii	"EApiAHCreateSVersionString\000"
	.align	2
.LC43:
	.ascii	"%u.%u\000"
	.text
	.align	2
	.global	EApiAHCreateSVersionString
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiAHCreateSVersionString, %function
EApiAHCreateSVersionString:
.LFB11:
	.loc 1 353 1
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
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	.loc 1 356 5
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L97
	.loc 1 356 5 is_stmt 0 discriminator 1
	ldr	r3, .L101
.LPIC112:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L101+4
.LPIC113:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	mov	r3, #356
	ldr	r2, .L101+8
.LPIC114:
	add	r2, pc, r2
	ldr	r1, .L101+12
.LPIC115:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-8]
	b	.L98
.L97:
	.loc 1 357 5 is_stmt 1
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L99
	.loc 1 357 5 is_stmt 0 discriminator 1
	ldr	r3, .L101+16
.LPIC116:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L101+20
.LPIC117:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	movw	r3, #357
	ldr	r2, .L101+24
.LPIC118:
	add	r2, pc, r2
	ldr	r1, .L101+28
.LPIC119:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-8]
	b	.L98
.L99:
	.loc 1 358 63 is_stmt 1
	ldr	r3, [fp, #-16]
	lsr	r3, r3, #24
	uxtb	r3, r3
	.loc 1 358 16
	mov	r2, r3
	.loc 1 358 88
	ldr	r3, [fp, #-16]
	lsr	r3, r3, #16
	uxtb	r3, r3
	.loc 1 358 16
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, .L101+32
.LPIC120:
	add	r2, pc, r2
	ldr	r1, [fp, #-24]
	ldr	r0, [fp, #-20]
	bl	EApiSprintf(PLT)
	str	r0, [fp, #-8]
.L98:
	.loc 1 362 12
	ldr	r3, [fp, #-8]
	.loc 1 363 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L102:
	.align	2
.L101:
	.word	.LC21-(.LPIC112+8)
	.word	.LC22-(.LPIC113+8)
	.word	.LC42-(.LPIC114+8)
	.word	.LC20-(.LPIC115+8)
	.word	.LC23-(.LPIC116+8)
	.word	.LC22-(.LPIC117+8)
	.word	.LC42-(.LPIC118+8)
	.word	.LC20-(.LPIC119+8)
	.word	.LC43-(.LPIC120+8)
	.cfi_endproc
.LFE11:
	.size	EApiAHCreateSVersionString, .-EApiAHCreateSVersionString
	.section	.rodata
	.align	2
.LC44:
	.ascii	"EApiAHCreateVersionString\000"
	.align	2
.LC45:
	.ascii	"%u.%u.%u\000"
	.text
	.align	2
	.global	EApiAHCreateVersionString
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiAHCreateVersionString, %function
EApiAHCreateVersionString:
.LFB12:
	.loc 1 370 1
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
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	.loc 1 373 3
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L104
	.loc 1 373 3 is_stmt 0 discriminator 1
	ldr	r3, .L108
.LPIC121:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L108+4
.LPIC122:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	movw	r3, #373
	ldr	r2, .L108+8
.LPIC123:
	add	r2, pc, r2
	ldr	r1, .L108+12
.LPIC124:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-8]
	b	.L105
.L104:
	.loc 1 374 3 is_stmt 1
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L106
	.loc 1 374 3 is_stmt 0 discriminator 1
	ldr	r3, .L108+16
.LPIC125:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L108+20
.LPIC126:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	movw	r3, #374
	ldr	r2, .L108+24
.LPIC127:
	add	r2, pc, r2
	ldr	r1, .L108+28
.LPIC128:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-8]
	b	.L105
.L106:
	.loc 1 375 64 is_stmt 1
	ldr	r3, [fp, #-16]
	lsr	r3, r3, #24
	uxtb	r3, r3
	.loc 1 375 14
	mov	r1, r3
	.loc 1 375 89
	ldr	r3, [fp, #-16]
	lsr	r3, r3, #16
	uxtb	r3, r3
	.loc 1 375 114
	ldr	r2, [fp, #-16]
	uxth	r2, r2
	.loc 1 375 14
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r1
	ldr	r2, .L108+32
.LPIC129:
	add	r2, pc, r2
	ldr	r1, [fp, #-24]
	ldr	r0, [fp, #-20]
	bl	EApiSprintf(PLT)
	str	r0, [fp, #-8]
.L105:
	.loc 1 379 12
	ldr	r3, [fp, #-8]
	.loc 1 380 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L109:
	.align	2
.L108:
	.word	.LC21-(.LPIC121+8)
	.word	.LC22-(.LPIC122+8)
	.word	.LC44-(.LPIC123+8)
	.word	.LC20-(.LPIC124+8)
	.word	.LC23-(.LPIC125+8)
	.word	.LC22-(.LPIC126+8)
	.word	.LC44-(.LPIC127+8)
	.word	.LC20-(.LPIC128+8)
	.word	.LC45-(.LPIC129+8)
	.cfi_endproc
.LFE12:
	.size	EApiAHCreateVersionString, .-EApiAHCreateVersionString
	.global	CompressedAsciiLookup
	.data
	.align	2
	.type	CompressedAsciiLookup, %object
	.size	CompressedAsciiLookup, 32
CompressedAsciiLookup:
	.ascii	" ABCDEFGHIJKLMNOPQRSTUVWXYZ*****"
	.section	.rodata
	.align	2
.LC46:
	.ascii	"EApiAHCreatePNPIDString\000"
	.align	2
.LC47:
	.ascii	"pBuffer Too Short\000"
	.text
	.align	2
	.global	EApiAHCreatePNPIDString
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiAHCreatePNPIDString, %function
EApiAHCreatePNPIDString:
.LFB13:
	.loc 1 405 1
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
	.loc 1 408 40
	ldr	r3, [fp, #-24]
	uxth	r3, r3
	lsl	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [fp, #-24]
	lsr	r3, r3, #8
	uxth	r3, r3
	uxtb	r3, r3
	uxth	r3, r3
	.loc 1 408 18
	orr	r3, r2, r3
	strh	r3, [fp, #-14]	@ movhi
	.loc 1 409 3
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L111
	.loc 1 409 3 is_stmt 0 discriminator 1
	ldr	r3, .L119
.LPIC130:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L119+4
.LPIC131:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	movw	r3, #409
	ldr	r2, .L119+8
.LPIC132:
	add	r2, pc, r2
	ldr	r1, .L119+12
.LPIC133:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-12]
	b	.L112
.L111:
	.loc 1 410 5 is_stmt 1
	ldr	r3, [fp, #-32]
	cmp	r3, #3
	bhi	.L113
	.loc 1 411 5
	ldr	r3, .L119+16
.LPIC134:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L119+20
.LPIC135:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #0
	str	r3, [sp]
	movw	r3, #411
	ldr	r2, .L119+24
.LPIC136:
	add	r2, pc, r2
	ldr	r1, .L119+28
.LPIC137:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #0
	str	r3, [fp, #-12]
	b	.L112
.L113:
	.loc 1 413 6
	ldrsh	r3, [fp, #-14]
	.loc 1 413 5
	cmp	r3, #0
	bge	.L114
	.loc 1 414 16
	mvn	r3, #0
	str	r3, [fp, #-12]
	.loc 1 415 5
	b	.L112
.L114:
	.loc 1 417 10
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 417 3
	b	.L116
.L117:
	.loc 1 418 50 discriminator 3
	ldrh	r1, [fp, #-14]
	.loc 1 418 56 discriminator 3
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	.loc 1 418 50 discriminator 3
	asr	r3, r1, r3
	.loc 1 418 60 discriminator 3
	and	r2, r3, #31
	.loc 1 418 15 discriminator 3
	ldr	r3, [fp, #-8]
	rsb	r3, r3, #2
	mov	r1, r3
	.loc 1 418 12 discriminator 3
	ldr	r3, [fp, #-28]
	add	r3, r3, r1
	.loc 1 418 43 discriminator 3
	ldr	r1, .L119+32
.LPIC138:
	add	r1, pc, r1
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	.loc 1 418 21 discriminator 3
	strb	r2, [r3]
	.loc 1 417 26 discriminator 3
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L116:
	.loc 1 417 18 discriminator 1
	ldr	r3, [fp, #-8]
	cmp	r3, #2
	ble	.L117
	.loc 1 420 10
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	.loc 1 420 15
	mov	r2, #0
	strb	r2, [r3]
	.loc 1 421 13
	mov	r3, #3
	str	r3, [fp, #-12]
.L115:
.L112:
	.loc 1 426 12
	ldr	r3, [fp, #-12]
	.loc 1 427 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L120:
	.align	2
.L119:
	.word	.LC21-(.LPIC130+8)
	.word	.LC22-(.LPIC131+8)
	.word	.LC46-(.LPIC132+8)
	.word	.LC20-(.LPIC133+8)
	.word	.LC47-(.LPIC134+8)
	.word	.LC22-(.LPIC135+8)
	.word	.LC46-(.LPIC136+8)
	.word	.LC20-(.LPIC137+8)
	.word	CompressedAsciiLookup-(.LPIC138+8)
	.cfi_endproc
.LFE13:
	.size	EApiAHCreatePNPIDString, .-EApiAHCreatePNPIDString
	.align	2
	.global	EApiStrLenA
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiStrLenA, %function
EApiStrLenA:
.LFB14:
	.loc 1 478 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -4
	add	fp, sp, #0
	.cfi_def_cfa_register 11
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	.loc 1 480 5
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L122
	.loc 1 480 31 discriminator 1
	mov	r3, #0
	b	.L123
.L122:
	.loc 1 481 5
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L124
	.loc 1 481 30 discriminator 1
	mov	r3, #0
	b	.L123
.L124:
	.loc 1 483 17
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-8]
	.loc 1 483 3
	b	.L125
.L128:
	.loc 1 484 8
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 484 7
	cmp	r3, #0
	beq	.L129
	.loc 1 483 50 discriminator 2
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L125:
	.loc 1 483 36 discriminator 1
	ldr	r3, [fp, #-20]
	sub	r2, r3, #1
	str	r2, [fp, #-20]
	.loc 1 483 27 discriminator 1
	cmp	r3, #0
	bne	.L128
	b	.L127
.L129:
	.loc 1 485 7
	nop
.L127:
	.loc 1 486 21
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	sub	r3, r2, r3
.L123:
	.loc 1 487 1
	mov	r0, r3
	add	sp, fp, #0
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	fp, [sp], #4
	.cfi_restore 11
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE14:
	.size	EApiStrLenA, .-EApiStrLenA
	.align	2
	.global	EApiStrCpyA
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiStrCpyA, %function
EApiStrCpyA:
.LFB15:
	.loc 1 494 1
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
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	.loc 1 495 5
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L131
	.loc 1 495 33 discriminator 1
	ldr	r3, [fp, #-8]
	b	.L132
.L131:
	.loc 1 496 5
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L133
	.loc 1 496 33 discriminator 1
	ldr	r3, [fp, #-8]
	b	.L132
.L133:
	.loc 1 497 5
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bne	.L134
	.loc 1 497 30 discriminator 1
	ldr	r3, [fp, #-8]
	b	.L132
.L134:
	.loc 1 499 3
	ldr	r2, [fp, #-12]
	ldr	r1, [fp, #-16]
	ldr	r0, [fp, #-8]
	bl	strncpy(PLT)
	.loc 1 500 13
	ldr	r3, [fp, #-12]
	sub	r3, r3, #1
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	.loc 1 500 26
	mov	r2, #0
	strb	r2, [r3]
	.loc 1 501 10
	ldr	r3, [fp, #-8]
.L132:
	.loc 1 502 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE15:
	.size	EApiStrCpyA, .-EApiStrCpyA
	.align	2
	.global	EApiSprintfA
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiSprintfA, %function
EApiSprintfA:
.LFB16:
	.loc 1 511 1
	.cfi_startproc
	@ args = 4, pretend = 8, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 1
	push	{r2, r3}
	.cfi_def_cfa_offset 8
	.cfi_offset 2, -8
	.cfi_offset 3, -4
	push	{fp, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 11, -16
	.cfi_offset 14, -12
	add	fp, sp, #4
	.cfi_def_cfa 11, 12
	sub	sp, sp, #32
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	ldr	r3, [fp, #4]
	str	r3, [fp, #-32]
	.loc 1 511 1
	ldr	r2, .L142
.LPIC139:
	add	r2, pc, r2
	ldr	r3, .L142+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 514 5
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L136
	.loc 1 514 30 discriminator 1
	mvn	r3, #0
	b	.L140
.L136:
	.loc 1 515 5
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	bne	.L138
	.loc 1 515 30 discriminator 1
	mvn	r3, #0
	b	.L140
.L138:
	.loc 1 516 5
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L139
	.loc 1 516 30 discriminator 1
	mvn	r3, #0
	b	.L140
.L139:
	.loc 1 518 3
	add	r3, fp, #8
	str	r3, [fp, #-16]
	.loc 1 519 15
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-32]
	ldr	r1, [fp, #-28]
	ldr	r0, [fp, #-24]
	bl	vsnprintf(PLT)
	str	r0, [fp, #-12]
	.loc 1 520 10
	ldr	r3, [fp, #-28]
	sub	r3, r3, #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	.loc 1 520 23
	mov	r2, #0
	strb	r2, [r3]
	.loc 1 522 10
	ldr	r3, [fp, #-12]
.L140:
	.loc 1 511 1 discriminator 1
	ldr	r1, .L142+8
.LPIC140:
	add	r1, pc, r1
	.loc 1 523 1 discriminator 1
	ldr	r2, .L142+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L141
	.loc 1 523 1 is_stmt 0
	bl	__stack_chk_fail(PLT)
.L141:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 16
	@ sp needed
	pop	{fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_def_cfa_offset 8
	add	sp, sp, #8
	.cfi_restore 3
	.cfi_restore 2
	.cfi_def_cfa_offset 0
	bx	lr
.L143:
	.align	2
.L142:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC139+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC140+8)
	.cfi_endproc
.LFE16:
	.size	EApiSprintfA, .-EApiSprintfA
	.align	2
	.global	EApiStrLen
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiStrLen, %function
EApiStrLen:
.LFB17:
	.loc 1 529 1 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -4
	add	fp, sp, #0
	.cfi_def_cfa_register 11
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	.loc 1 531 5
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L145
	.loc 1 531 31 discriminator 1
	mov	r3, #0
	b	.L146
.L145:
	.loc 1 532 5
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L147
	.loc 1 532 30 discriminator 1
	mov	r3, #0
	b	.L146
.L147:
	.loc 1 534 17
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-8]
	.loc 1 534 3
	b	.L148
.L151:
	.loc 1 535 8
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 535 7
	cmp	r3, #0
	beq	.L152
	.loc 1 534 50 discriminator 2
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L148:
	.loc 1 534 36 discriminator 1
	ldr	r3, [fp, #-20]
	sub	r2, r3, #1
	str	r2, [fp, #-20]
	.loc 1 534 27 discriminator 1
	cmp	r3, #0
	bne	.L151
	b	.L150
.L152:
	.loc 1 536 7
	nop
.L150:
	.loc 1 537 21
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	sub	r3, r2, r3
.L146:
	.loc 1 538 1
	mov	r0, r3
	add	sp, fp, #0
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	fp, [sp], #4
	.cfi_restore 11
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE17:
	.size	EApiStrLen, .-EApiStrLen
	.align	2
	.global	EApiStrCpy
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiStrCpy, %function
EApiStrCpy:
.LFB18:
	.loc 1 546 1
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
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	.loc 1 547 5
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L154
	.loc 1 547 33 discriminator 1
	ldr	r3, [fp, #-8]
	b	.L155
.L154:
	.loc 1 548 5
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L156
	.loc 1 548 33 discriminator 1
	ldr	r3, [fp, #-8]
	b	.L155
.L156:
	.loc 1 549 5
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bne	.L157
	.loc 1 549 30 discriminator 1
	ldr	r3, [fp, #-8]
	b	.L155
.L157:
	.loc 1 551 3
	ldr	r2, [fp, #-12]
	ldr	r1, [fp, #-16]
	ldr	r0, [fp, #-8]
	bl	strncpy(PLT)
	.loc 1 552 13
	ldr	r3, [fp, #-12]
	sub	r3, r3, #1
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	.loc 1 552 26
	mov	r2, #0
	strb	r2, [r3]
	.loc 1 553 10
	ldr	r3, [fp, #-8]
.L155:
	.loc 1 554 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE18:
	.size	EApiStrCpy, .-EApiStrCpy
	.align	2
	.global	EApiSprintf
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EApiSprintf, %function
EApiSprintf:
.LFB19:
	.loc 1 563 1
	.cfi_startproc
	@ args = 4, pretend = 8, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 1
	push	{r2, r3}
	.cfi_def_cfa_offset 8
	.cfi_offset 2, -8
	.cfi_offset 3, -4
	push	{fp, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 11, -16
	.cfi_offset 14, -12
	add	fp, sp, #4
	.cfi_def_cfa 11, 12
	sub	sp, sp, #32
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	ldr	r3, [fp, #4]
	str	r3, [fp, #-32]
	.loc 1 563 1
	ldr	r2, .L165
.LPIC141:
	add	r2, pc, r2
	ldr	r3, .L165+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 566 5
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L159
	.loc 1 566 30 discriminator 1
	mvn	r3, #0
	b	.L163
.L159:
	.loc 1 567 5
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	bne	.L161
	.loc 1 567 30 discriminator 1
	mvn	r3, #0
	b	.L163
.L161:
	.loc 1 568 5
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L162
	.loc 1 568 30 discriminator 1
	mvn	r3, #0
	b	.L163
.L162:
	.loc 1 570 3
	add	r3, fp, #8
	str	r3, [fp, #-16]
	.loc 1 571 15
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-32]
	ldr	r1, [fp, #-28]
	ldr	r0, [fp, #-24]
	bl	vsnprintf(PLT)
	str	r0, [fp, #-12]
	.loc 1 572 10
	ldr	r3, [fp, #-28]
	sub	r3, r3, #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	.loc 1 572 23
	mov	r2, #0
	strb	r2, [r3]
	.loc 1 574 10
	ldr	r3, [fp, #-12]
.L163:
	.loc 1 563 1 discriminator 1
	ldr	r1, .L165+8
.LPIC142:
	add	r1, pc, r1
	.loc 1 575 1 discriminator 1
	ldr	r2, .L165+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L164
	.loc 1 575 1 is_stmt 0
	bl	__stack_chk_fail(PLT)
.L164:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 16
	@ sp needed
	pop	{fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_def_cfa_offset 8
	add	sp, sp, #8
	.cfi_restore 3
	.cfi_restore 2
	.cfi_def_cfa_offset 0
	bx	lr
.L166:
	.align	2
.L165:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC141+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC142+8)
	.cfi_endproc
.LFE19:
	.size	EApiSprintf, .-EApiSprintf
.Letext0:
	.file 2 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/bits/alltypes.h"
	.file 3 "../../../include/EApi.h"
	.file 4 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/stdio.h"
	.file 5 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/string.h"
	.file 6 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/stdlib.h"
	.file 7 "../../include/DbgChk.h"
	.file 8 "<built-in>"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x9c0
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x18
	.4byte	.LASF71
	.byte	0xc
	.4byte	.LASF72
	.4byte	.LASF73
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x8
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2b
	.byte	0x18
	.4byte	0x26
	.uleb128 0x9
	.4byte	0x2d
	.uleb128 0x19
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x9
	.4byte	0x53
	.uleb128 0x11
	.4byte	.LASF5
	.2byte	0x13f
	.4byte	0x6a
	.uleb128 0x1a
	.4byte	.LASF74
	.byte	0x4
	.byte	0x8
	.byte	0
	.4byte	0x81
	.uleb128 0x1b
	.4byte	.LASF75
	.4byte	0x81
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF6
	.2byte	0x144
	.4byte	0x6a
	.uleb128 0x5
	.byte	0x8
	.byte	0x4
	.4byte	.LASF7
	.uleb128 0x8
	.4byte	.LASF8
	.byte	0x2
	.byte	0x30
	.byte	0x18
	.4byte	0x26
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF9
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x8
	.4byte	.LASF11
	.byte	0x2
	.byte	0x63
	.byte	0x19
	.4byte	0x3e
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x2
	.byte	0x72
	.byte	0x19
	.4byte	0xc7
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x2
	.byte	0x77
	.byte	0x19
	.4byte	0xda
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x2
	.byte	0x7c
	.byte	0x19
	.4byte	0x26
	.uleb128 0x9
	.4byte	0xe1
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0xe
	.4byte	0x53
	.uleb128 0x9
	.4byte	0xf9
	.uleb128 0xe
	.4byte	0x5a
	.uleb128 0x9
	.4byte	0x103
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x3
	.byte	0x91
	.byte	0x12
	.4byte	0xe1
	.uleb128 0x9
	.4byte	0x114
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x3
	.byte	0x92
	.byte	0x12
	.4byte	0xe1
	.uleb128 0x1d
	.4byte	.LASF76
	.byte	0x8
	.byte	0x1
	.byte	0x25
	.byte	0x10
	.4byte	0x157
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x26
	.byte	0x16
	.4byte	0x120
	.byte	0
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x27
	.byte	0x17
	.4byte	0x108
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x1
	.byte	0x28
	.byte	0x2
	.4byte	0x131
	.uleb128 0x9
	.4byte	0x157
	.uleb128 0x13
	.4byte	0x163
	.4byte	0x178
	.uleb128 0x14
	.4byte	0x26
	.byte	0x12
	.byte	0
	.uleb128 0x9
	.4byte	0x168
	.uleb128 0x1e
	.4byte	.LASF24
	.byte	0x1
	.byte	0x2c
	.byte	0x18
	.4byte	0x178
	.uleb128 0x5
	.byte	0x3
	.4byte	ErrorLookup
	.uleb128 0x13
	.4byte	0x53
	.4byte	0x19f
	.uleb128 0x14
	.4byte	0x26
	.byte	0x1f
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x17f
	.byte	0x7
	.4byte	0x18f
	.uleb128 0x5
	.byte	0x3
	.4byte	CompressedAsciiLookup
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x4
	.byte	0x73
	.byte	0x5
	.4byte	0x3e
	.4byte	0x1d7
	.uleb128 0x2
	.4byte	0xf9
	.uleb128 0x2
	.4byte	0x2d
	.uleb128 0x2
	.4byte	0x103
	.uleb128 0x2
	.4byte	0x83
	.byte	0
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x5
	.byte	0x20
	.byte	0x7
	.4byte	0xf9
	.4byte	0x1f7
	.uleb128 0x2
	.4byte	0xf9
	.uleb128 0x2
	.4byte	0x103
	.uleb128 0x2
	.4byte	0x2d
	.byte	0
	.uleb128 0x20
	.4byte	.LASF28
	.byte	0x3
	.2byte	0x1af
	.byte	0x1
	.4byte	0x114
	.4byte	0x218
	.uleb128 0x2
	.4byte	0x125
	.uleb128 0x2
	.4byte	0xf9
	.uleb128 0x2
	.4byte	0x218
	.byte	0
	.uleb128 0xe
	.4byte	0xe1
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x6
	.byte	0x26
	.byte	0x7
	.4byte	0x81
	.4byte	0x233
	.uleb128 0x2
	.4byte	0x2d
	.byte	0
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x5
	.byte	0x34
	.byte	0x8
	.4byte	0x2d
	.4byte	0x249
	.uleb128 0x2
	.4byte	0x103
	.byte	0
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x7
	.byte	0x3e
	.byte	0x1
	.4byte	0x3e
	.4byte	0x279
	.uleb128 0x2
	.4byte	0x53
	.uleb128 0x2
	.4byte	0x103
	.uleb128 0x2
	.4byte	0x103
	.uleb128 0x2
	.4byte	0x26
	.uleb128 0x2
	.4byte	0x114
	.uleb128 0x2
	.4byte	0x103
	.uleb128 0xf
	.byte	0
	.uleb128 0x6
	.4byte	.LASF35
	.2byte	0x22d
	.4byte	0x3e
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2df
	.uleb128 0x1
	.4byte	.LASF32
	.2byte	0x22e
	.byte	0x1d
	.4byte	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF33
	.2byte	0x22f
	.byte	0x1d
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.ascii	"fmt\000"
	.2byte	0x230
	.byte	0x1d
	.4byte	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xf
	.uleb128 0x3
	.4byte	.LASF34
	.2byte	0x234
	.byte	0x7
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.ascii	"arg\000"
	.2byte	0x235
	.byte	0xb
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x6
	.4byte	.LASF36
	.2byte	0x21d
	.4byte	0xf9
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x326
	.uleb128 0x1
	.4byte	.LASF37
	.2byte	0x21e
	.byte	0x1d
	.4byte	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1
	.4byte	.LASF38
	.2byte	0x21f
	.byte	0x1d
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1
	.4byte	.LASF39
	.2byte	0x220
	.byte	0x1d
	.4byte	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.4byte	.LASF40
	.2byte	0x20d
	.4byte	0x2d
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x36d
	.uleb128 0x1
	.4byte	.LASF32
	.2byte	0x20e
	.byte	0x17
	.4byte	0x103
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF33
	.2byte	0x20f
	.byte	0x17
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF41
	.2byte	0x212
	.byte	0x10
	.4byte	0x103
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x6
	.4byte	.LASF42
	.2byte	0x1f9
	.4byte	0x3e
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d3
	.uleb128 0x1
	.4byte	.LASF32
	.2byte	0x1fa
	.byte	0x1c
	.4byte	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF33
	.2byte	0x1fb
	.byte	0x1d
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.ascii	"fmt\000"
	.2byte	0x1fc
	.byte	0x1c
	.4byte	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xf
	.uleb128 0x3
	.4byte	.LASF34
	.2byte	0x200
	.byte	0x7
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.ascii	"arg\000"
	.2byte	0x201
	.byte	0xb
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x6
	.4byte	.LASF43
	.2byte	0x1e9
	.4byte	0xf9
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x41a
	.uleb128 0x1
	.4byte	.LASF37
	.2byte	0x1ea
	.byte	0x1c
	.4byte	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1
	.4byte	.LASF38
	.2byte	0x1eb
	.byte	0x1d
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1
	.4byte	.LASF39
	.2byte	0x1ec
	.byte	0x1c
	.4byte	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.4byte	.LASF44
	.2byte	0x1da
	.4byte	0x2d
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x461
	.uleb128 0x1
	.4byte	.LASF32
	.2byte	0x1db
	.byte	0x17
	.4byte	0x103
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF33
	.2byte	0x1dc
	.byte	0x17
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF41
	.2byte	0x1df
	.byte	0xf
	.4byte	0x103
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x6
	.4byte	.LASF45
	.2byte	0x190
	.4byte	0x3e
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4eb
	.uleb128 0x1
	.4byte	.LASF46
	.2byte	0x191
	.byte	0x1b
	.4byte	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF47
	.2byte	0x192
	.byte	0x1b
	.4byte	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF38
	.2byte	0x193
	.byte	0x1b
	.4byte	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF21
	.2byte	0x196
	.byte	0x7
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x10
	.ascii	"cnt\000"
	.2byte	0x197
	.byte	0x7
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x3
	.4byte	.LASF48
	.2byte	0x198
	.byte	0x12
	.4byte	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0xa
	.4byte	.LASF49
	.2byte	0x1a8
	.4byte	.L112
	.uleb128 0xa
	.4byte	.LASF50
	.2byte	0x1a7
	.4byte	.L115
	.byte	0
	.uleb128 0x6
	.4byte	.LASF51
	.2byte	0x16d
	.4byte	0x3e
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x54c
	.uleb128 0x1
	.4byte	.LASF46
	.2byte	0x16e
	.byte	0x1b
	.4byte	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF47
	.2byte	0x16f
	.byte	0x1b
	.4byte	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF38
	.2byte	0x170
	.byte	0x1b
	.4byte	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF21
	.2byte	0x173
	.byte	0x7
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xa
	.4byte	.LASF49
	.2byte	0x179
	.4byte	.L105
	.byte	0
	.uleb128 0x6
	.4byte	.LASF52
	.2byte	0x15c
	.4byte	0x3e
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5ad
	.uleb128 0x1
	.4byte	.LASF46
	.2byte	0x15d
	.byte	0x1b
	.4byte	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF47
	.2byte	0x15e
	.byte	0x1b
	.4byte	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF38
	.2byte	0x15f
	.byte	0x1b
	.4byte	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF21
	.2byte	0x162
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xa
	.4byte	.LASF49
	.2byte	0x168
	.4byte	.L98
	.byte	0
	.uleb128 0x6
	.4byte	.LASF53
	.2byte	0x140
	.4byte	0x3e
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x61d
	.uleb128 0x1
	.4byte	.LASF46
	.2byte	0x141
	.byte	0x1b
	.4byte	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF47
	.2byte	0x142
	.byte	0x1b
	.4byte	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF38
	.2byte	0x143
	.byte	0x1b
	.4byte	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF21
	.2byte	0x146
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3
	.4byte	.LASF54
	.2byte	0x147
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xa
	.4byte	.LASF49
	.2byte	0x155
	.4byte	.L86
	.byte	0
	.uleb128 0x6
	.4byte	.LASF55
	.2byte	0x12f
	.4byte	0x3e
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x67e
	.uleb128 0x1
	.4byte	.LASF46
	.2byte	0x130
	.byte	0x1b
	.4byte	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF47
	.2byte	0x131
	.byte	0x1b
	.4byte	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF38
	.2byte	0x132
	.byte	0x1b
	.4byte	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF21
	.2byte	0x135
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xa
	.4byte	.LASF49
	.2byte	0x13b
	.4byte	.L79
	.byte	0
	.uleb128 0x6
	.4byte	.LASF56
	.2byte	0x11f
	.4byte	0x3e
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6df
	.uleb128 0x1
	.4byte	.LASF46
	.2byte	0x120
	.byte	0x1b
	.4byte	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF47
	.2byte	0x121
	.byte	0x1b
	.4byte	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF38
	.2byte	0x122
	.byte	0x1b
	.4byte	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF21
	.2byte	0x125
	.byte	0x9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xa
	.4byte	.LASF49
	.2byte	0x12a
	.4byte	.L72
	.byte	0
	.uleb128 0x6
	.4byte	.LASF57
	.2byte	0x10e
	.4byte	0x3e
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x740
	.uleb128 0x1
	.4byte	.LASF46
	.2byte	0x10f
	.byte	0x1b
	.4byte	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF47
	.2byte	0x110
	.byte	0x1b
	.4byte	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF38
	.2byte	0x111
	.byte	0x1b
	.4byte	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF21
	.2byte	0x114
	.byte	0x8
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xa
	.4byte	.LASF49
	.2byte	0x11a
	.4byte	.L65
	.byte	0
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0xff
	.4byte	0x3e
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7a0
	.uleb128 0x1
	.4byte	.LASF46
	.2byte	0x100
	.byte	0x1b
	.4byte	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF47
	.2byte	0x101
	.byte	0x1b
	.4byte	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF38
	.2byte	0x102
	.byte	0x1b
	.4byte	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF21
	.2byte	0x105
	.byte	0x8
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xa
	.4byte	.LASF49
	.2byte	0x109
	.4byte	.L58
	.byte	0
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0xf0
	.4byte	0x3e
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7fb
	.uleb128 0x4
	.4byte	.LASF46
	.byte	0xf1
	.byte	0x1b
	.4byte	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0xf2
	.byte	0x1b
	.4byte	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0xf3
	.byte	0x1b
	.4byte	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0xf6
	.byte	0x8
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0xfa
	.4byte	.L51
	.byte	0
	.uleb128 0xd
	.4byte	.LASF60
	.byte	0xbb
	.4byte	0x114
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x864
	.uleb128 0x4
	.4byte	.LASF61
	.byte	0xbc
	.byte	0x1b
	.4byte	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0xbd
	.byte	0x1b
	.4byte	0x869
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0xc2
	.byte	0x10
	.4byte	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF62
	.byte	0xc3
	.byte	0xc
	.4byte	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.4byte	.LASF63
	.byte	0xc4
	.byte	0xc
	.4byte	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0xeb
	.4byte	.L39
	.byte	0
	.uleb128 0xe
	.4byte	0xf9
	.uleb128 0x9
	.4byte	0x864
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0x94
	.4byte	0x2d
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8e5
	.uleb128 0x4
	.4byte	.LASF61
	.byte	0x95
	.byte	0x1b
	.4byte	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0x96
	.byte	0x1b
	.4byte	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x97
	.byte	0x1b
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x9a
	.byte	0xa
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF65
	.byte	0x9b
	.byte	0xc
	.4byte	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.4byte	.LASF63
	.byte	0x9c
	.byte	0xa
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0xb5
	.4byte	.L28
	.byte	0
	.uleb128 0xd
	.4byte	.LASF66
	.byte	0x71
	.4byte	0x114
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x955
	.uleb128 0x4
	.4byte	.LASF67
	.byte	0x72
	.byte	0x19
	.4byte	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0x73
	.byte	0x19
	.4byte	0x869
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x76
	.byte	0x10
	.4byte	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.ascii	"i\000"
	.byte	0x77
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x7
	.4byte	.LASF68
	.byte	0x78
	.byte	0xa
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x8e
	.4byte	.L16
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0x8f
	.4byte	.L20
	.byte	0
	.uleb128 0x21
	.4byte	.LASF77
	.byte	0x1
	.byte	0x42
	.byte	0x8
	.4byte	0x2d
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.4byte	.LASF67
	.byte	0x43
	.byte	0x17
	.4byte	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0x44
	.byte	0x1b
	.4byte	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x45
	.byte	0x1b
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x48
	.byte	0xa
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x17
	.ascii	"i\000"
	.byte	0x49
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x6c
	.4byte	.L3
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0x6d
	.4byte	.L8
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x11
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 27
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x16
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
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
	.uleb128 0x1e
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
	.uleb128 0x5
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
.LASF36:
	.ascii	"EApiStrCpy\000"
.LASF27:
	.ascii	"strncpy\000"
.LASF42:
	.ascii	"EApiSprintfA\000"
.LASF69:
	.ascii	"SuccessExit\000"
.LASF63:
	.ascii	"StringBufferLenBck\000"
.LASF47:
	.ascii	"pString\000"
.LASF10:
	.ascii	"short int\000"
.LASF4:
	.ascii	"size_t\000"
.LASF29:
	.ascii	"malloc\000"
.LASF22:
	.ascii	"ErrorString\000"
.LASF54:
	.ascii	"StrLength\000"
.LASF5:
	.ascii	"va_list\000"
.LASF45:
	.ascii	"EApiAHCreatePNPIDString\000"
.LASF12:
	.ascii	"uint8_t\000"
.LASF72:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux/../../common/EApiAHStr.c\000"
.LASF59:
	.ascii	"EApiAHCreateDecimalString\000"
.LASF8:
	.ascii	"uintptr_t\000"
.LASF35:
	.ascii	"EApiSprintf\000"
.LASF28:
	.ascii	"EApiBoardGetStringA\000"
.LASF2:
	.ascii	"long long int\000"
.LASF53:
	.ascii	"EApiAHCreateTimeString\000"
.LASF74:
	.ascii	"__va_list\000"
.LASF1:
	.ascii	"long int\000"
.LASF51:
	.ascii	"EApiAHCreateVersionString\000"
.LASF20:
	.ascii	"EApiId_t\000"
.LASF57:
	.ascii	"EApiAHCreateVoltageString\000"
.LASF70:
	.ascii	"ExitSuccess\000"
.LASF32:
	.ascii	"pBuffer\000"
.LASF33:
	.ascii	"BufferLen\000"
.LASF25:
	.ascii	"CompressedAsciiLookup\000"
.LASF31:
	.ascii	"siFormattedMessage_SC\000"
.LASF19:
	.ascii	"EApiStatus_t\000"
.LASF77:
	.ascii	"EApiAHCreateErrorString\000"
.LASF56:
	.ascii	"EApiAHCreateRotationsString\000"
.LASF62:
	.ascii	"StringLen\000"
.LASF46:
	.ascii	"Value\000"
.LASF13:
	.ascii	"unsigned char\000"
.LASF41:
	.ascii	"pszCurChar\000"
.LASF49:
	.ascii	"ExitPoint\000"
.LASF9:
	.ascii	"signed char\000"
.LASF11:
	.ascii	"int32_t\000"
.LASF17:
	.ascii	"long long unsigned int\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF6:
	.ascii	"__isoc_va_list\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF14:
	.ascii	"uint16_t\000"
.LASF58:
	.ascii	"EApiAHCreateHexString\000"
.LASF68:
	.ascii	"StrLen\000"
.LASF15:
	.ascii	"short unsigned int\000"
.LASF26:
	.ascii	"vsnprintf\000"
.LASF75:
	.ascii	"__ap\000"
.LASF3:
	.ascii	"char\000"
.LASF30:
	.ascii	"strlen\000"
.LASF71:
	.ascii	"GNU C99 11.2.0 -mcpu=cortex-a9 -mfloat-abi=hard -mf"
	.ascii	"pu=vfpv3 -mabi=aapcs-linux -mtls-dialect=gnu -marm "
	.ascii	"-march=armv7-a+mp+sec+vfpv3 -g -O0 -std=gnu99 -fsta"
	.ascii	"ck-protector-strong -fPIE\000"
.LASF21:
	.ascii	"StatusCode\000"
.LASF55:
	.ascii	"EApiAHCreateTempString\000"
.LASF65:
	.ascii	"StringLenLcl\000"
.LASF23:
	.ascii	"ErrorLookupTbl_t\000"
.LASF61:
	.ascii	"StringID\000"
.LASF52:
	.ascii	"EApiAHCreateSVersionString\000"
.LASF34:
	.ascii	"ReturnValue\000"
.LASF76:
	.ascii	"ErrorLookupTbl_S\000"
.LASF67:
	.ascii	"DispStatusCode\000"
.LASF18:
	.ascii	"long unsigned int\000"
.LASF7:
	.ascii	"double\000"
.LASF66:
	.ascii	"EApiAHCreateErrorStringAlloc\000"
.LASF48:
	.ascii	"PNPID\000"
.LASF24:
	.ascii	"ErrorLookup\000"
.LASF50:
	.ascii	"ErrorExit\000"
.LASF73:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux\000"
.LASF37:
	.ascii	"StringDest\000"
.LASF38:
	.ascii	"StrBufLen\000"
.LASF60:
	.ascii	"EApiAHGetStringAlloc\000"
.LASF43:
	.ascii	"EApiStrCpyA\000"
.LASF44:
	.ascii	"EApiStrLenA\000"
.LASF64:
	.ascii	"EApiAHGetString\000"
.LASF39:
	.ascii	"StringSource\000"
.LASF40:
	.ascii	"EApiStrLen\000"
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
