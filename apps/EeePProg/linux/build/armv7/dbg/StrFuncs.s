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
	.file	"StrFuncs.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	skipWhiteSpaces
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	skipWhiteSpaces, %function
skipWhiteSpaces:
.LFB1:
	.file 1 "/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/linux/../StrFuncs.c"
	.loc 1 36 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -4
	add	fp, sp, #0
	.cfi_def_cfa_register 11
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	.loc 1 37 5
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L4
	.loc 1 37 27 discriminator 1
	ldr	r3, [fp, #-8]
	b	.L3
.L6:
	.loc 1 39 11
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L4:
	.loc 1 38 11
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 38 26
	cmp	r3, #10
	beq	.L5
	.loc 1 38 11 discriminator 1
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 38 10 discriminator 1
	cmp	r3, #13
	beq	.L5
	.loc 1 38 28 discriminator 2
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 38 26 discriminator 2
	cmp	r3, #32
	beq	.L6
	.loc 1 38 28 discriminator 3
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L6
.L5:
	.loc 1 40 10
	ldr	r3, [fp, #-8]
.L3:
	.loc 1 41 1
	mov	r0, r3
	add	sp, fp, #0
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	fp, [sp], #4
	.cfi_restore 11
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE1:
	.size	skipWhiteSpaces, .-skipWhiteSpaces
	.align	2
	.global	stripWhiteSpaces
	.syntax unified
	.arm
	.fpu vfpv3
	.type	stripWhiteSpaces, %function
stripWhiteSpaces:
.LFB2:
	.loc 1 47 1
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
	.loc 1 49 5
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L12
	.loc 1 50 17
	ldr	r0, [fp, #-16]
	bl	strlen(PLT)
	mov	r3, r0
	.loc 1 50 32
	sub	r3, r3, #1
	.loc 1 50 9
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	.loc 1 51 8
	b	.L10
.L11:
	.loc 1 52 11
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
.L10:
	.loc 1 51 9
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L11
	.loc 1 51 9 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L11
	.loc 1 53 11 is_stmt 1
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	.loc 1 53 14
	mov	r2, #0
	strb	r2, [r3]
	b	.L7
.L12:
	.loc 1 49 20
	nop
.L7:
	.loc 1 54 1
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE2:
	.size	stripWhiteSpaces, .-stripWhiteSpaces
	.align	2
	.global	szFindStr
	.syntax unified
	.arm
	.fpu vfpv3
	.type	szFindStr, %function
szFindStr:
.LFB3:
	.loc 1 62 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #32
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	.loc 1 63 10
	mov	r3, #0
	str	r3, [fp, #-20]
	.loc 1 64 10
	ldr	r3, [fp, #-28]
	ldr	r3, [r3]
	str	r3, [fp, #-16]
	.loc 1 65 27
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-12]
	.loc 1 66 8
	b	.L14
.L17:
	.loc 1 67 38
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	.loc 1 67 12
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	strstr(PLT)
	str	r0, [fp, #-8]
	.loc 1 68 7
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L15
	.loc 1 68 22 discriminator 1
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	beq	.L16
	.loc 1 68 39 discriminator 2
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bcs	.L15
.L16:
	.loc 1 69 13
	ldr	r3, [fp, #-8]
	str	r3, [fp, #-20]
	.loc 1 70 9
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	beq	.L15
	.loc 1 70 29 discriminator 1
	ldr	r3, [fp, #-32]
	ldr	r2, [fp, #-12]
	str	r2, [r3]
.L15:
	.loc 1 73 17
	ldr	r3, [fp, #-12]
	add	r3, r3, #8
	str	r3, [fp, #-12]
.L14:
	.loc 1 66 19
	ldr	r3, [fp, #-16]
	sub	r2, r3, #1
	str	r2, [fp, #-16]
	.loc 1 66 9
	cmp	r3, #0
	bne	.L17
	.loc 1 75 10
	ldr	r3, [fp, #-20]
	.loc 1 76 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE3:
	.size	szFindStr, .-szFindStr
	.global	szWordDelimns
	.section	.rodata
	.align	2
	.type	szWordDelimns, %object
	.size	szWordDelimns, 31
szWordDelimns:
	.ascii	"()\\/!\"$%&=?`\264*+~ \011<>;:,.'#^\260-\000\000"
	.text
	.align	2
	.global	szFindCharMap
	.syntax unified
	.arm
	.fpu vfpv3
	.type	szFindCharMap, %function
szFindCharMap:
.LFB4:
	.loc 1 84 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -4
	add	fp, sp, #0
	.cfi_def_cfa_register 11
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	.loc 1 86 8
	b	.L20
.L22:
	.loc 1 87 5
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L20:
	.loc 1 86 9
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 86 15
	cmp	r3, #0
	beq	.L23
	.loc 1 86 29 discriminator 1
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 86 36 discriminator 1
	lsr	r3, r3, #3
	uxtb	r3, r3
	mov	r2, r3
	.loc 1 86 27 discriminator 1
	ldr	r3, [fp, #-12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	.loc 1 86 46 discriminator 1
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 86 53 discriminator 1
	and	r3, r3, #7
	.loc 1 86 17 discriminator 1
	asr	r3, r2, r3
	and	r3, r3, #1
	.loc 1 86 15 discriminator 1
	cmp	r3, #0
	beq	.L22
	.loc 1 89 8
	b	.L23
.L25:
	.loc 1 90 5
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L23:
	.loc 1 89 9
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 89 15
	cmp	r3, #0
	beq	.L24
	.loc 1 89 28 discriminator 1
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 89 35 discriminator 1
	lsr	r3, r3, #3
	uxtb	r3, r3
	mov	r2, r3
	.loc 1 89 26 discriminator 1
	ldr	r3, [fp, #-12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	.loc 1 89 45 discriminator 1
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 89 52 discriminator 1
	and	r3, r3, #7
	.loc 1 89 15 discriminator 1
	asr	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L25
.L24:
	.loc 1 92 10
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 92 29
	cmp	r3, #0
	beq	.L26
	.loc 1 92 29 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-8]
	b	.L28
.L26:
	.loc 1 92 29 discriminator 2
	mov	r3, #0
.L28:
	.loc 1 93 1 is_stmt 1 discriminator 5
	mov	r0, r3
	add	sp, fp, #0
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	fp, [sp], #4
	.cfi_restore 11
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE4:
	.size	szFindCharMap, .-szFindCharMap
	.align	2
	.global	szStrCmp
	.syntax unified
	.arm
	.fpu vfpv3
	.type	szStrCmp, %function
szStrCmp:
.LFB5:
	.loc 1 99 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -4
	add	fp, sp, #0
	.cfi_def_cfa_register 11
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	.loc 1 100 8
	b	.L30
.L32:
	.loc 1 101 5
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
	.loc 1 102 5
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L30:
	.loc 1 100 9
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 100 25
	cmp	r3, #0
	beq	.L31
	.loc 1 100 17 discriminator 1
	ldr	r3, [fp, #-12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 100 15 discriminator 1
	cmp	r3, #0
	beq	.L31
	.loc 1 100 27 discriminator 2
	ldr	r3, [fp, #-8]
	ldrb	r2, [r3]	@ zero_extendqisi2
	.loc 1 100 35 discriminator 2
	ldr	r3, [fp, #-12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 100 25 discriminator 2
	cmp	r2, r3
	beq	.L32
.L31:
	.loc 1 104 6
	ldr	r3, [fp, #-12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 104 5
	cmp	r3, #0
	beq	.L33
	.loc 1 105 11
	mov	r3, #0
	str	r3, [fp, #-8]
.L33:
	.loc 1 107 10
	ldr	r3, [fp, #-8]
	.loc 1 108 1
	mov	r0, r3
	add	sp, fp, #0
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	fp, [sp], #4
	.cfi_restore 11
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE5:
	.size	szStrCmp, .-szStrCmp
	.align	2
	.global	szFindWord
	.syntax unified
	.arm
	.fpu vfpv3
	.type	szFindWord, %function
szFindWord:
.LFB6:
	.loc 1 115 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #72
	str	r0, [fp, #-64]
	str	r1, [fp, #-68]
	str	r2, [fp, #-72]
	.loc 1 115 1
	ldr	r2, .L45
.LPIC1:
	add	r2, pc, r2
	ldr	r3, .L45+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 116 16
	mov	r3, #0
	str	r3, [fp, #-56]
	.loc 1 119 8
	mov	r3, #0
	str	r3, [fp, #-40]
	sub	r3, fp, #36
	mov	r2, #0
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	.loc 1 120 9
	ldr	r3, .L45+8
.LPIC0:
	add	r3, pc, r3
	str	r3, [fp, #-56]
	.loc 1 121 13
	mov	r3, #1
	strb	r3, [fp, #-40]
	.loc 1 122 8
	b	.L36
.L37:
	.loc 1 123 14
	ldr	r3, [fp, #-56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 123 22
	lsr	r3, r3, #3
	uxtb	r3, r3
	.loc 1 123 25
	sub	r3, r3, #4
	add	r3, r3, fp
	ldrb	r3, [r3, #-36]	@ zero_extendqisi2
	sxtb	r2, r3
	.loc 1 123 33
	ldr	r3, [fp, #-56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 123 41
	and	r3, r3, #7
	.loc 1 123 29
	mov	r1, #1
	lsl	r3, r1, r3
	.loc 1 123 25
	sxtb	r3, r3
	orr	r3, r2, r3
	sxtb	r2, r3
	.loc 1 123 14
	ldr	r3, [fp, #-56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 123 22
	lsr	r3, r3, #3
	uxtb	r3, r3
	.loc 1 123 25
	uxtb	r2, r2
	sub	r3, r3, #4
	add	r3, r3, fp
	strb	r2, [r3, #-36]
	.loc 1 124 5
	ldr	r3, [fp, #-56]
	add	r3, r3, #1
	str	r3, [fp, #-56]
.L36:
	.loc 1 122 9
	ldr	r3, [fp, #-56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L37
	.loc 1 127 9
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
.L42:
	.loc 1 129 17
	ldr	r3, [fp, #-68]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-52]
	.loc 1 130 17
	ldr	r3, [fp, #-68]
	ldr	r3, [r3]
	str	r3, [fp, #-48]
	.loc 1 131 10
	b	.L38
.L41:
	.loc 1 132 43
	ldr	r3, [fp, #-48]
	ldr	r3, [r3]
	.loc 1 132 14
	mov	r1, r3
	ldr	r0, [fp, #-56]
	bl	szStrCmp(PLT)
	str	r0, [fp, #-44]
	.loc 1 133 9
	ldr	r3, [fp, #-44]
	cmp	r3, #0
	beq	.L39
	.loc 1 133 34 discriminator 1
	ldr	r3, [fp, #-44]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 133 42 discriminator 1
	lsr	r3, r3, #3
	uxtb	r3, r3
	.loc 1 133 32 discriminator 1
	sub	r3, r3, #4
	add	r3, r3, fp
	ldrb	r3, [r3, #-36]	@ zero_extendqisi2
	mov	r2, r3
	.loc 1 133 52 discriminator 1
	ldr	r3, [fp, #-44]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 133 60 discriminator 1
	and	r3, r3, #7
	.loc 1 133 22 discriminator 1
	asr	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L39
	.loc 1 134 18
	ldr	r3, [fp, #-72]
	ldr	r2, [fp, #-48]
	str	r2, [r3]
	.loc 1 135 16
	ldr	r3, [fp, #-56]
	b	.L43
.L39:
	.loc 1 137 19
	ldr	r3, [fp, #-48]
	add	r3, r3, #8
	str	r3, [fp, #-48]
.L38:
	.loc 1 131 21
	ldr	r3, [fp, #-52]
	sub	r2, r3, #1
	str	r2, [fp, #-52]
	.loc 1 131 11
	cmp	r3, #0
	bne	.L41
	.loc 1 139 19
	ldr	r3, [fp, #-56]
	add	r3, r3, #1
	sub	r2, fp, #40
	mov	r1, r2
	mov	r0, r3
	bl	szFindCharMap(PLT)
	str	r0, [fp, #-56]
	.loc 1 139 52
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bne	.L42
	.loc 1 140 10
	mov	r3, #0
.L43:
	.loc 1 115 1 discriminator 1
	ldr	r1, .L45+12
.LPIC2:
	add	r1, pc, r1
	.loc 1 141 1 discriminator 1
	ldr	r2, .L45+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L44
	.loc 1 141 1 is_stmt 0
	bl	__stack_chk_fail(PLT)
.L44:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L46:
	.align	2
.L45:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+8)
	.word	__stack_chk_guard(GOT)
	.word	szWordDelimns-(.LPIC0+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC2+8)
	.cfi_endproc
.LFE6:
	.size	szFindWord, .-szFindWord
	.align	2
	.global	strrstr
	.syntax unified
	.arm
	.fpu vfpv3
	.type	strrstr, %function
strrstr:
.LFB7:
	.loc 1 149 1 is_stmt 1
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
	str	r1, [fp, #-20]
	.loc 1 151 12
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 152 5
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L48
	.loc 1 152 30 discriminator 1
	mov	r3, #0
	b	.L49
.L48:
	.loc 1 153 5
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L50
	.loc 1 153 36 discriminator 1
	mov	r3, #0
	b	.L49
.L50:
	.loc 1 154 12
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	strstr(PLT)
	str	r0, [fp, #-12]
	.loc 1 155 8
	b	.L51
.L52:
	.loc 1 156 14
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-16]
	.loc 1 157 14
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	strstr(PLT)
	str	r0, [fp, #-12]
	.loc 1 158 17
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L51:
	.loc 1 155 17
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bne	.L52
	.loc 1 160 43
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L53
	.loc 1 160 43 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-16]
	sub	r3, r3, #1
	b	.L49
.L53:
	.loc 1 160 43 discriminator 2
	mov	r3, #0
.L49:
	.loc 1 161 1 is_stmt 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE7:
	.size	strrstr, .-strrstr
	.section	.rodata
	.align	2
.LC0:
	.ascii	"ReplaceSubStr\000"
	.align	2
.LC1:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux/../StrFuncs.c\000"
	.align	2
.LC2:
	.ascii	"(pStrDesc==NULL)\000"
	.align	2
.LC3:
	.ascii	"%s\012\000"
	.align	2
.LC4:
	.ascii	"(pStrDesc->szStr==NULL)\000"
	.text
	.align	2
	.global	InitStrDesc
	.syntax unified
	.arm
	.fpu vfpv3
	.type	InitStrDesc, %function
InitStrDesc:
.LFB8:
	.loc 1 170 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #32
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	.loc 1 171 16
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 172 3
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L56
	.loc 1 172 3 is_stmt 0 discriminator 1
	ldr	r3, .L63
.LPIC3:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L63+4
.LPIC4:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #172
	ldr	r2, .L63+8
.LPIC5:
	add	r2, pc, r2
	ldr	r1, .L63+12
.LPIC6:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-8]
	b	.L57
.L56:
	.loc 1 178 53 is_stmt 1
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	beq	.L58
	.loc 1 178 33 discriminator 1
	ldr	r0, [fp, #-20]
	bl	strlen(PLT)
	mov	r3, r0
	.loc 1 178 53 discriminator 1
	add	r3, r3, #1
	b	.L59
.L58:
	.loc 1 178 53 is_stmt 0 discriminator 2
	mov	r3, #1
.L59:
	.loc 1 178 21 is_stmt 1 discriminator 4
	ldr	r2, [fp, #-16]
	str	r3, [r2, #4]
	.loc 1 180 33 discriminator 4
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	.loc 1 180 60 discriminator 4
	add	r2, r3, #19
	.loc 1 180 64 discriminator 4
	movw	r3, #52429
	movt	r3, 52428
	umull	r2, r3, r3, r2
	lsr	r2, r3, #4
	.loc 1 180 80 discriminator 4
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #2
	mov	r2, r3
	.loc 1 180 23 discriminator 4
	ldr	r3, [fp, #-16]
	str	r2, [r3, #8]
	.loc 1 181 19 discriminator 4
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	malloc(PLT)
	mov	r3, r0
	mov	r2, r3
	.loc 1 181 18 discriminator 4
	ldr	r3, [fp, #-16]
	str	r2, [r3]
	.loc 1 182 3 discriminator 4
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L60
	.loc 1 182 3 is_stmt 0 discriminator 1
	ldr	r3, .L63+16
.LPIC7:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L63+20
.LPIC8:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #2
	str	r3, [sp]
	mov	r3, #182
	ldr	r2, .L63+24
.LPIC9:
	add	r2, pc, r2
	ldr	r1, .L63+28
.LPIC10:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #2
	str	r3, [fp, #-8]
	b	.L57
.L60:
	.loc 1 187 5 is_stmt 1
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	beq	.L61
	.loc 1 188 20
	ldr	r3, [fp, #-16]
	ldr	r0, [r3]
	.loc 1 188 5
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r1, [fp, #-20]
	bl	memcpy(PLT)
	b	.L57
.L61:
	.loc 1 190 20
	ldr	r3, [fp, #-16]
	mov	r2, #0
	str	r2, [r3]
.L57:
	.loc 1 193 10
	ldr	r3, [fp, #-8]
	.loc 1 194 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L64:
	.align	2
.L63:
	.word	.LC2-(.LPIC3+8)
	.word	.LC3-(.LPIC4+8)
	.word	.LC0-(.LPIC5+8)
	.word	.LC1-(.LPIC6+8)
	.word	.LC4-(.LPIC7+8)
	.word	.LC3-(.LPIC8+8)
	.word	.LC0-(.LPIC9+8)
	.word	.LC1-(.LPIC10+8)
	.cfi_endproc
.LFE8:
	.size	InitStrDesc, .-InitStrDesc
	.align	2
	.global	FreeStrDesc
	.syntax unified
	.arm
	.fpu vfpv3
	.type	FreeStrDesc, %function
FreeStrDesc:
.LFB9:
	.loc 1 199 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #32
	str	r0, [fp, #-16]
	.loc 1 200 16
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 201 3
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L66
	.loc 1 201 3 is_stmt 0 discriminator 1
	ldr	r3, .L70
.LPIC11:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L70+4
.LPIC12:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #201
	ldr	r2, .L70+8
.LPIC13:
	add	r2, pc, r2
	ldr	r1, .L70+12
.LPIC14:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-8]
	b	.L67
.L66:
	.loc 1 207 14 is_stmt 1
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	.loc 1 207 5
	cmp	r3, #0
	beq	.L68
	.loc 1 208 18
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	.loc 1 208 5
	mov	r0, r3
	bl	free(PLT)
.L68:
	.loc 1 209 3
	mov	r2, #4
	mov	r1, #0
	ldr	r0, [fp, #-16]
	bl	memset(PLT)
.L67:
	.loc 1 211 10
	ldr	r3, [fp, #-8]
	.loc 1 212 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L71:
	.align	2
.L70:
	.word	.LC2-(.LPIC11+8)
	.word	.LC3-(.LPIC12+8)
	.word	.LC0-(.LPIC13+8)
	.word	.LC1-(.LPIC14+8)
	.cfi_endproc
.LFE9:
	.size	FreeStrDesc, .-FreeStrDesc
	.align	2
	.global	ReplaceSubStr
	.syntax unified
	.arm
	.fpu vfpv3
	.type	ReplaceSubStr, %function
ReplaceSubStr:
.LFB10:
	.loc 1 220 1
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
	.loc 1 221 16
	mov	r3, #0
	str	r3, [fp, #-20]
	.loc 1 225 3
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L73
	.loc 1 225 3 is_stmt 0 discriminator 1
	ldr	r3, .L80
.LPIC15:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L80+4
.LPIC16:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #225
	ldr	r2, .L80+8
.LPIC17:
	add	r2, pc, r2
	ldr	r1, .L80+12
.LPIC18:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-20]
	b	.L74
.L73:
	.loc 1 230 48 is_stmt 1
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L75
	.loc 1 230 27 discriminator 1
	ldr	r0, [fp, #-36]
	bl	strlen(PLT)
	mov	r3, r0
	b	.L76
.L75:
	.loc 1 230 48 discriminator 2
	mov	r3, #0
.L76:
	.loc 1 230 12 discriminator 4
	str	r3, [fp, #-16]
	.loc 1 231 23 discriminator 4
	ldr	r3, [fp, #-24]
	ldr	r2, [r3, #4]
	.loc 1 231 46 discriminator 4
	ldr	r1, [fp, #-28]
	ldr	r3, [fp, #-32]
	sub	r1, r1, r3
	.loc 1 231 57 discriminator 4
	ldr	r3, [fp, #-16]
	add	r3, r1, r3
	.loc 1 231 33 discriminator 4
	add	r3, r2, r3
	.loc 1 231 14 discriminator 4
	str	r3, [fp, #-12]
	.loc 1 232 42 discriminator 4
	ldr	r3, [fp, #-12]
	add	r2, r3, #19
	.loc 1 232 46 discriminator 4
	movw	r3, #26215
	movt	r3, 26214
	smull	r1, r3, r3, r2
	asr	r1, r3, #3
	asr	r3, r2, #31
	sub	r2, r1, r3
	.loc 1 232 12 discriminator 4
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #2
	str	r3, [fp, #-8]
	.loc 1 233 34 discriminator 4
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #8]
	.loc 1 233 16 discriminator 4
	mov	r2, r3
	.loc 1 233 5 discriminator 4
	ldr	r3, [fp, #-8]
	cmp	r3, r2
	ble	.L77
	.loc 1 234 25
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-24]
	str	r2, [r3, #8]
	.loc 1 235 37
	ldr	r3, [fp, #-24]
	ldr	r3, [r3]
	.loc 1 235 21
	ldr	r2, [fp, #-8]
	mov	r1, r2
	mov	r0, r3
	bl	realloc(PLT)
	mov	r2, r0
	.loc 1 235 20
	ldr	r3, [fp, #-24]
	str	r2, [r3]
	.loc 1 236 5
	ldr	r3, [fp, #-24]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L77
	.loc 1 236 5 is_stmt 0 discriminator 1
	ldr	r3, .L80+16
.LPIC19:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L80+20
.LPIC20:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #2
	str	r3, [sp]
	mov	r3, #236
	ldr	r2, .L80+24
.LPIC21:
	add	r2, pc, r2
	ldr	r1, .L80+28
.LPIC22:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #2
	str	r3, [fp, #-20]
	b	.L74
.L77:
	.loc 1 242 16 is_stmt 1
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	.loc 1 242 5
	ldr	r2, [fp, #-32]
	cmp	r2, r3
	beq	.L78
	.loc 1 243 21
	ldr	r3, [fp, #-24]
	ldr	r2, [r3]
	.loc 1 243 39
	ldr	r1, [fp, #-28]
	ldr	r3, [fp, #-16]
	add	r3, r1, r3
	add	r0, r2, r3
	.loc 1 243 59
	ldr	r3, [fp, #-24]
	ldr	r2, [r3]
	.loc 1 243 66
	ldr	r3, [fp, #-32]
	add	r1, r2, r3
	.loc 1 243 85
	ldr	r3, [fp, #-24]
	ldr	r2, [r3, #4]
	.loc 1 243 5
	ldr	r3, [fp, #-32]
	sub	r3, r2, r3
	mov	r2, r3
	bl	memmove(PLT)
.L78:
	.loc 1 245 19
	ldr	r3, [fp, #-24]
	ldr	r2, [r3]
	.loc 1 245 26
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	.loc 1 245 3
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-36]
	mov	r0, r3
	bl	memmove(PLT)
	.loc 1 246 21
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-24]
	str	r2, [r3, #4]
.L74:
	.loc 1 248 10
	ldr	r3, [fp, #-20]
	.loc 1 249 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L81:
	.align	2
.L80:
	.word	.LC2-(.LPIC15+8)
	.word	.LC3-(.LPIC16+8)
	.word	.LC0-(.LPIC17+8)
	.word	.LC1-(.LPIC18+8)
	.word	.LC4-(.LPIC19+8)
	.word	.LC3-(.LPIC20+8)
	.word	.LC0-(.LPIC21+8)
	.word	.LC1-(.LPIC22+8)
	.cfi_endproc
.LFE10:
	.size	ReplaceSubStr, .-ReplaceSubStr
.Letext0:
	.file 2 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/bits/alltypes.h"
	.file 3 "../../../include/EApi.h"
	.file 4 "../StrFuncs.h"
	.file 5 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/string.h"
	.file 6 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/stdlib.h"
	.file 7 "../../include/DbgChk.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x680
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x10
	.4byte	.LASF80
	.byte	0xc
	.4byte	.LASF81
	.4byte	.LASF82
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x8
	.4byte	0x26
	.uleb128 0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2b
	.byte	0x18
	.4byte	0x26
	.uleb128 0x11
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x8
	.4byte	0x53
	.uleb128 0x12
	.byte	0x4
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0x7
	.4byte	.LASF6
	.byte	0x2
	.byte	0x30
	.byte	0x18
	.4byte	0x26
	.uleb128 0x7
	.4byte	.LASF7
	.byte	0x2
	.byte	0x3f
	.byte	0xf
	.4byte	0x3e
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x7
	.4byte	.LASF12
	.byte	0x2
	.byte	0x7c
	.byte	0x19
	.4byte	0x26
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.4byte	0x53
	.uleb128 0x8
	.4byte	0xaf
	.uleb128 0x5
	.4byte	0x5a
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x3
	.byte	0x91
	.byte	0x12
	.4byte	0x9c
	.uleb128 0x5
	.4byte	0xd6
	.uleb128 0x13
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x8
	.byte	0x36
	.4byte	0xfb
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x37
	.byte	0xf
	.4byte	0xb9
	.byte	0
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x38
	.byte	0x16
	.4byte	0x2d
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x4
	.byte	0x39
	.byte	0x2
	.4byte	0xd7
	.uleb128 0x8
	.4byte	0xfb
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x8
	.byte	0x3b
	.4byte	0x130
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x3c
	.byte	0x16
	.4byte	0x2d
	.byte	0
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x3d
	.byte	0x1b
	.4byte	0x130
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	0x107
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x4
	.byte	0x3e
	.byte	0x2
	.4byte	0x10c
	.uleb128 0x8
	.4byte	0x135
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x8
	.byte	0x4f
	.4byte	0x16a
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x50
	.byte	0xf
	.4byte	0xb9
	.byte	0
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x51
	.byte	0xf
	.4byte	0xb9
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x4
	.byte	0x52
	.byte	0x2
	.4byte	0x146
	.uleb128 0x8
	.4byte	0x16a
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x8
	.byte	0x54
	.4byte	0x19f
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x55
	.byte	0x10
	.4byte	0x19f
	.byte	0
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x56
	.byte	0x10
	.4byte	0x32
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	0x16a
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x4
	.byte	0x57
	.byte	0x2
	.4byte	0x17b
	.uleb128 0x8
	.4byte	0x1a4
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0xc
	.byte	0x60
	.4byte	0x1e5
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x61
	.byte	0xa
	.4byte	0xaf
	.byte	0
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x62
	.byte	0xa
	.4byte	0x32
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x63
	.byte	0xa
	.4byte	0x32
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x4
	.byte	0x64
	.byte	0x2
	.4byte	0x1b5
	.uleb128 0xd
	.4byte	0x5a
	.4byte	0x201
	.uleb128 0xe
	.4byte	0x26
	.byte	0x1e
	.byte	0
	.uleb128 0x8
	.4byte	0x1f1
	.uleb128 0x14
	.4byte	.LASF83
	.byte	0x1
	.byte	0x4d
	.byte	0xc
	.4byte	0x201
	.uleb128 0x5
	.byte	0x3
	.4byte	szWordDelimns
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x5
	.byte	0x1a
	.byte	0x7
	.4byte	0x5f
	.4byte	0x238
	.uleb128 0x1
	.4byte	0x5f
	.uleb128 0x1
	.4byte	0xd1
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x6
	.byte	0x28
	.byte	0x7
	.4byte	0x5f
	.4byte	0x253
	.uleb128 0x1
	.4byte	0x5f
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x5
	.byte	0x1b
	.byte	0x7
	.4byte	0x5f
	.4byte	0x273
	.uleb128 0x1
	.4byte	0x5f
	.uleb128 0x1
	.4byte	0x3e
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x15
	.4byte	.LASF84
	.byte	0x6
	.byte	0x29
	.byte	0x6
	.4byte	0x285
	.uleb128 0x1
	.4byte	0x5f
	.byte	0
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x5
	.byte	0x19
	.byte	0x7
	.4byte	0x5f
	.4byte	0x2a5
	.uleb128 0x1
	.4byte	0x5f
	.uleb128 0x1
	.4byte	0xd1
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x6
	.byte	0x26
	.byte	0x7
	.4byte	0x5f
	.4byte	0x2bb
	.uleb128 0x1
	.4byte	0x32
	.byte	0
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x7
	.byte	0x3e
	.byte	0x1
	.4byte	0x3e
	.4byte	0x2eb
	.uleb128 0x1
	.4byte	0x53
	.uleb128 0x1
	.4byte	0xb9
	.uleb128 0x1
	.4byte	0xb9
	.uleb128 0x1
	.4byte	0x26
	.uleb128 0x1
	.4byte	0xc5
	.uleb128 0x1
	.4byte	0xb9
	.uleb128 0x16
	.byte	0
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x5
	.byte	0x31
	.byte	0x7
	.4byte	0xaf
	.4byte	0x306
	.uleb128 0x1
	.4byte	0xb9
	.uleb128 0x1
	.4byte	0xb9
	.byte	0
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x5
	.byte	0x34
	.byte	0x8
	.4byte	0x32
	.4byte	0x31c
	.uleb128 0x1
	.4byte	0xb9
	.byte	0
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0xd6
	.4byte	0xc5
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3af
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0xd7
	.byte	0x19
	.4byte	0x3af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF46
	.byte	0xd8
	.byte	0x19
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF47
	.byte	0xd9
	.byte	0x19
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0xda
	.byte	0x19
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0xdd
	.byte	0x10
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0xde
	.byte	0xa
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0xdf
	.byte	0xc
	.4byte	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0xe0
	.byte	0xc
	.4byte	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0xf7
	.4byte	.L74
	.byte	0
	.uleb128 0x5
	.4byte	0x1e5
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0xc4
	.4byte	0xc5
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3f3
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0xc5
	.byte	0x19
	.4byte	0x3af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0xc8
	.byte	0x10
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0xd2
	.4byte	.L67
	.byte	0
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0xa6
	.4byte	0xc5
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x440
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0xa7
	.byte	0x19
	.4byte	0x3af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0xa8
	.byte	0x19
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0xab
	.byte	0x10
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0xc0
	.4byte	.L57
	.byte	0
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x91
	.4byte	0xaf
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x491
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0x92
	.byte	0x16
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0x93
	.byte	0x16
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x96
	.byte	0x9
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0x97
	.byte	0xc
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x6e
	.4byte	0xaf
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x51d
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0x6f
	.byte	0x26
	.4byte	0xb9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2
	.4byte	.LASF64
	.byte	0x70
	.byte	0x26
	.4byte	0x51d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.4byte	.LASF65
	.byte	0x71
	.byte	0x26
	.4byte	0x522
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0x74
	.byte	0x10
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0x74
	.byte	0x1e
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0x75
	.byte	0xa
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0x76
	.byte	0x16
	.4byte	0x527
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0x77
	.byte	0x8
	.4byte	0x52c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x5
	.4byte	0x1b0
	.uleb128 0x5
	.4byte	0x527
	.uleb128 0x5
	.4byte	0x176
	.uleb128 0xd
	.4byte	0x53
	.4byte	0x53c
	.uleb128 0xe
	.4byte	0x26
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF71
	.byte	0x5f
	.4byte	0xaf
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x571
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0x60
	.byte	0x26
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0x61
	.byte	0x26
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xf
	.4byte	.LASF73
	.byte	0x50
	.4byte	0xaf
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5a6
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0x51
	.byte	0x26
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x2
	.4byte	.LASF70
	.byte	0x52
	.byte	0x27
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xa
	.4byte	.LASF74
	.byte	0x39
	.4byte	0xaf
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x621
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0x3a
	.byte	0x26
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF64
	.byte	0x3b
	.byte	0x26
	.4byte	0x621
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF65
	.byte	0x3c
	.byte	0x26
	.4byte	0x626
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0x3f
	.byte	0xa
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0x3f
	.byte	0x18
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0x40
	.byte	0xa
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0x41
	.byte	0x1b
	.4byte	0x130
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x5
	.4byte	0x141
	.uleb128 0x5
	.4byte	0x130
	.uleb128 0x17
	.4byte	.LASF77
	.byte	0x1
	.byte	0x2c
	.byte	0x1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x65e
	.uleb128 0x2
	.4byte	.LASF75
	.byte	0x2d
	.byte	0x15
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0x30
	.byte	0xa
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x18
	.4byte	.LASF78
	.byte	0x1
	.byte	0x21
	.byte	0x1
	.4byte	0xaf
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2
	.4byte	.LASF79
	.byte	0x22
	.byte	0x15
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x7a
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
.LASF21:
	.ascii	"cuiCount\000"
.LASF53:
	.ascii	"ReplaceSubStr\000"
.LASF25:
	.ascii	"cszMacroName\000"
.LASF9:
	.ascii	"short int\000"
.LASF5:
	.ascii	"size_t\000"
.LASF41:
	.ascii	"malloc\000"
.LASF7:
	.ascii	"intptr_t\000"
.LASF28:
	.ascii	"MacroList_s\000"
.LASF31:
	.ascii	"MacroList_t\000"
.LASF70:
	.ascii	"CharMap\000"
.LASF78:
	.ascii	"skipWhiteSpaces\000"
.LASF40:
	.ascii	"memcpy\000"
.LASF59:
	.ascii	"cszString\000"
.LASF26:
	.ascii	"cszMacroValue\000"
.LASF65:
	.ascii	"pElement\000"
.LASF63:
	.ascii	"szFindWord\000"
.LASF24:
	.ascii	"MacroItem_s\000"
.LASF27:
	.ascii	"MacroItem_t\000"
.LASF61:
	.ascii	"szLclPtr\000"
.LASF74:
	.ascii	"szFindStr\000"
.LASF46:
	.ascii	"stStartPos\000"
.LASF58:
	.ascii	"strrstr\000"
.LASF6:
	.ascii	"uintptr_t\000"
.LASF76:
	.ascii	"pszEnd\000"
.LASF84:
	.ascii	"free\000"
.LASF75:
	.ascii	"pszStr\000"
.LASF30:
	.ascii	"stMacroCnt\000"
.LASF66:
	.ascii	"szPos1\000"
.LASF16:
	.ascii	"pcszSymbol\000"
.LASF67:
	.ascii	"szPos2\000"
.LASF2:
	.ascii	"long long int\000"
.LASF68:
	.ascii	"stNumStrs\000"
.LASF64:
	.ascii	"pDesc\000"
.LASF39:
	.ascii	"memset\000"
.LASF50:
	.ascii	"stRStrLen\000"
.LASF1:
	.ascii	"long int\000"
.LASF36:
	.ascii	"DStrDesc_t\000"
.LASF48:
	.ascii	"cszReplaceStr\000"
.LASF34:
	.ascii	"stStrLen\000"
.LASF22:
	.ascii	"pcDesc\000"
.LASF51:
	.ascii	"ipNewstrlen\000"
.LASF45:
	.ascii	"pStrDesc\000"
.LASF19:
	.ascii	"StrDescElement_s\000"
.LASF42:
	.ascii	"siFormattedMessage_SC\000"
.LASF20:
	.ascii	"StrDesc_s\000"
.LASF23:
	.ascii	"StrDesc_t\000"
.LASF47:
	.ascii	"stEndPos\000"
.LASF37:
	.ascii	"memmove\000"
.LASF10:
	.ascii	"unsigned char\000"
.LASF55:
	.ascii	"ExitPoint\000"
.LASF8:
	.ascii	"signed char\000"
.LASF13:
	.ascii	"long long unsigned int\000"
.LASF12:
	.ascii	"uint32_t\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF52:
	.ascii	"ipNewSize\000"
.LASF57:
	.ascii	"cszInitStr\000"
.LASF11:
	.ascii	"short unsigned int\000"
.LASF33:
	.ascii	"szStr\000"
.LASF72:
	.ascii	"szMatch\000"
.LASF3:
	.ascii	"char\000"
.LASF44:
	.ascii	"strlen\000"
.LASF80:
	.ascii	"GNU C99 11.2.0 -mcpu=cortex-a9 -mfloat-abi=hard -mf"
	.ascii	"pu=vfpv3 -mabi=aapcs-linux -mtls-dialect=gnu -marm "
	.ascii	"-march=armv7-a+mp+sec+vfpv3 -g -O0 -std=gnu99 -fsta"
	.ascii	"ck-protector-strong -fPIE\000"
.LASF49:
	.ascii	"StatusCode\000"
.LASF56:
	.ascii	"InitStrDesc\000"
.LASF60:
	.ascii	"cszSearchString\000"
.LASF38:
	.ascii	"realloc\000"
.LASF83:
	.ascii	"szWordDelimns\000"
.LASF14:
	.ascii	"long unsigned int\000"
.LASF54:
	.ascii	"FreeStrDesc\000"
.LASF4:
	.ascii	"double\000"
.LASF15:
	.ascii	"EApiStatus_t\000"
.LASF18:
	.ascii	"StrDescElement_t\000"
.LASF32:
	.ascii	"DStrDesc_s\000"
.LASF29:
	.ascii	"pMacros\000"
.LASF71:
	.ascii	"szStrCmp\000"
.LASF82:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux\000"
.LASF69:
	.ascii	"pcCurElement\000"
.LASF43:
	.ascii	"strstr\000"
.LASF17:
	.ascii	"cuiValue\000"
.LASF79:
	.ascii	"cszStr\000"
.LASF77:
	.ascii	"stripWhiteSpaces\000"
.LASF81:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux/../StrFuncs.c\000"
.LASF73:
	.ascii	"szFindCharMap\000"
.LASF35:
	.ascii	"stAllocLen\000"
.LASF62:
	.ascii	"uiMatchFound\000"
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
