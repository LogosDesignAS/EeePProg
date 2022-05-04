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
	.file	"ArgParse.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	StringArg
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	StringArg, %function
StringArg:
.LFB1:
	.file 1 "/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/linux/../ArgParse.c"
	.loc 1 44 1
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
	.loc 1 46 22
	ldr	r0, [fp, #-16]
	bl	strdup(PLT)
	mov	r3, r0
	mov	r2, r3
	.loc 1 46 21
	ldr	r3, [fp, #-12]
	str	r2, [r3]
	.loc 1 48 10
	mov	r3, #0
	.loc 1 49 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE1:
	.size	StringArg, .-StringArg
	.section	.rodata
	.align	2
.LC0:
	.ascii	"BYTES\000"
	.align	2
.LC1:
	.ascii	"\000"
	.align	2
.LC2:
	.ascii	"KB\000"
	.align	2
.LC3:
	.ascii	"*(1024 BYTES)\000"
	.align	2
.LC4:
	.ascii	"MB\000"
	.align	2
.LC5:
	.ascii	"*(1024 KB)\000"
	.align	2
.LC6:
	.ascii	"GB\000"
	.align	2
.LC7:
	.ascii	"*(1024 MB)\000"
	.section	.data.rel.local,"aw"
	.align	2
	.type	SizeMacros, %object
	.size	SizeMacros, 32
SizeMacros:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.align	2
	.type	SizeMacroDesc, %object
	.size	SizeMacroDesc, 8
SizeMacroDesc:
	.word	SizeMacros
	.word	4
	.section	.rodata
	.align	2
.LC8:
	.ascii	"TB \000"
	.align	2
.LC9:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux/../ArgParse.c\000"
	.align	2
.LC10:
	.ascii	"ParseAsciiEquEx_VA(cszArg, &SizeMacroDesc, pvalue, "
	.ascii	"(signed int)pArgs->stValueSize)\000"
	.align	2
.LC11:
	.ascii	"%s\012\000"
	.text
	.align	2
	.global	SizeArg
	.syntax unified
	.arm
	.fpu vfpv3
	.type	SizeArg, %function
SizeArg:
.LFB2:
	.loc 1 64 1
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
	.loc 1 65 16
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 67 3
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	ldr	r2, [fp, #-20]
	ldr	r1, .L7
.LPIC0:
	add	r1, pc, r1
	ldr	r0, [fp, #-24]
	bl	ParseAsciiEquEx_VA(PLT)
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L6
	.loc 1 67 3 is_stmt 0 discriminator 1
	ldr	r3, .L7+4
.LPIC1:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L7+8
.LPIC2:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-8]
	str	r3, [sp]
	mov	r3, #67
	ldr	r2, .L7+12
.LPIC3:
	add	r2, pc, r2
	ldr	r1, .L7+16
.LPIC4:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L4
.L6:
	.loc 1 69 1 is_stmt 1
	nop
.L4:
	.loc 1 70 10
	ldr	r3, [fp, #-8]
	.loc 1 71 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L8:
	.align	2
.L7:
	.word	SizeMacroDesc-(.LPIC0+8)
	.word	.LC10-(.LPIC1+8)
	.word	.LC11-(.LPIC2+8)
	.word	.LC8-(.LPIC3+8)
	.word	.LC9-(.LPIC4+8)
	.cfi_endproc
.LFE2:
	.size	SizeArg, .-SizeArg
	.section	.rodata
	.align	2
.LC12:
	.ascii	"ParseAsciiEqu_VA(cszArg, pvalue, (signed int)pArgs-"
	.ascii	">stValueSize)\000"
	.text
	.align	2
	.global	NumberArg
	.syntax unified
	.arm
	.fpu vfpv3
	.type	NumberArg, %function
NumberArg:
.LFB3:
	.loc 1 79 1
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
	.loc 1 80 16
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 82 3
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-24]
	bl	ParseAsciiEqu_VA(PLT)
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L12
	.loc 1 82 3 is_stmt 0 discriminator 1
	ldr	r3, .L13
.LPIC5:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L13+4
.LPIC6:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-8]
	str	r3, [sp]
	mov	r3, #82
	ldr	r2, .L13+8
.LPIC7:
	add	r2, pc, r2
	ldr	r1, .L13+12
.LPIC8:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L10
.L12:
	.loc 1 84 1 is_stmt 1
	nop
.L10:
	.loc 1 85 10
	ldr	r3, [fp, #-8]
	.loc 1 86 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L14:
	.align	2
.L13:
	.word	.LC12-(.LPIC5+8)
	.word	.LC11-(.LPIC6+8)
	.word	.LC8-(.LPIC7+8)
	.word	.LC9-(.LPIC8+8)
	.cfi_endproc
.LFE3:
	.size	NumberArg, .-NumberArg
	.global	cszHeader
	.section	.rodata
	.align	2
	.type	cszHeader, %object
	.size	cszHeader, 241
cszHeader:
	.ascii	"+=================================================="
	.ascii	"===========================+\012| Usage            "
	.ascii	"                                                   "
	.ascii	"        |\012+-------------------------------------"
	.ascii	"----------------------------------------+\012\000"
	.global	cszFooter
	.align	2
	.type	cszFooter, %object
	.size	cszFooter, 81
cszFooter:
	.ascii	"+=================================================="
	.ascii	"===========================+\012\000"
	.align	2
.LC13:
	.ascii	"| -%c \000"
	.align	2
.LC14:
	.ascii	"|  %c \000"
	.align	2
.LC15:
	.ascii	"--%-*s \000"
	.align	2
.LC16:
	.ascii	"  %-*s \000"
	.align	2
.LC17:
	.ascii	"|\000"
	.align	2
.LC18:
	.ascii	" |\012\000"
	.align	2
.LC19:
	.ascii	"|%*s%s%lu \000"
	.align	2
.LC20:
	.ascii	"Arg\000"
	.align	2
.LC21:
	.ascii	"|%*s|\012\000"
	.text
	.align	2
	.global	PrintUsage
	.syntax unified
	.arm
	.fpu vfpv3
	.type	PrintUsage, %function
PrintUsage:
.LFB4:
	.loc 1 103 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #48
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	str	r2, [fp, #-40]
	.loc 1 106 7
	mov	r3, #80
	str	r3, [fp, #-20]
	.loc 1 107 7
	mov	r3, #25
	str	r3, [fp, #-16]
	.loc 1 108 44
	ldr	r3, [fp, #-16]
	add	r3, r3, #8
	.loc 1 108 7
	str	r3, [fp, #-12]
	.loc 1 109 25
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-12]
	sub	r3, r2, r3
	.loc 1 109 36
	sub	r3, r3, #3
	.loc 1 109 7
	str	r3, [fp, #-8]
	.loc 1 110 3
	ldr	r3, [fp, #-32]
	mov	r2, #240
	mov	r1, #1
	ldr	r0, .L26
.LPIC9:
	add	r0, pc, r0
	bl	fwrite(PLT)
	.loc 1 111 8
	b	.L16
.L24:
	.loc 1 115 16
	ldr	r3, [fp, #-36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 115 7
	cmp	r3, #0
	beq	.L17
	.loc 1 116 44
	ldr	r3, [fp, #-36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 116 7
	mov	r2, r3
	ldr	r3, .L26+4
.LPIC10:
	add	r3, pc, r3
	mov	r1, r3
	ldr	r0, [fp, #-32]
	bl	fprintf(PLT)
	b	.L18
.L17:
	.loc 1 118 7
	mov	r2, #32
	ldr	r3, .L26+8
.LPIC11:
	add	r3, pc, r3
	mov	r1, r3
	ldr	r0, [fp, #-32]
	bl	fprintf(PLT)
.L18:
	.loc 1 122 16
	ldr	r3, [fp, #-36]
	ldr	r3, [r3, #4]
	.loc 1 122 7
	cmp	r3, #0
	beq	.L19
	.loc 1 123 7
	ldr	r3, [fp, #-36]
	ldr	r3, [r3, #4]
	ldr	r2, [fp, #-16]
	ldr	r1, .L26+12
.LPIC12:
	add	r1, pc, r1
	ldr	r0, [fp, #-32]
	bl	fprintf(PLT)
	b	.L20
.L19:
	.loc 1 125 7
	ldr	r3, .L26+16
.LPIC13:
	add	r3, pc, r3
	ldr	r2, [fp, #-16]
	ldr	r1, .L26+20
.LPIC14:
	add	r1, pc, r1
	ldr	r0, [fp, #-32]
	bl	fprintf(PLT)
.L20:
	.loc 1 129 5
	ldr	r3, [fp, #-36]
	ldr	r1, [r3, #12]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #0
	ldr	r0, .L26+24
.LPIC15:
	add	r0, pc, r0
	str	r0, [sp, #4]
	str	r3, [sp]
	ldr	r3, .L26+28
.LPIC16:
	add	r3, pc, r3
	ldr	r0, [fp, #-32]
	bl	PrintStringBlock(PLT)
	.loc 1 136 13
	ldr	r3, [fp, #-36]
	ldr	r3, [r3, #16]
	str	r3, [fp, #-28]
	.loc 1 137 19
	mov	r3, #0
	str	r3, [fp, #-24]
	.loc 1 137 5
	b	.L21
.L22:
	.loc 1 138 7 discriminator 3
	ldr	r3, [fp, #-24]
	str	r3, [sp, #4]
	ldr	r3, .L26+32
.LPIC17:
	add	r3, pc, r3
	str	r3, [sp]
	ldr	r3, .L26+36
.LPIC18:
	add	r3, pc, r3
	ldr	r2, [fp, #-12]
	ldr	r1, .L26+40
.LPIC19:
	add	r1, pc, r1
	ldr	r0, [fp, #-32]
	bl	fprintf(PLT)
	.loc 1 142 7 discriminator 3
	ldr	r3, [fp, #-28]
	ldr	r1, [r3, #8]
	.loc 1 145 21 discriminator 3
	ldr	r3, [fp, #-8]
	sub	r3, r3, #6
	.loc 1 142 7 discriminator 3
	mov	r0, r3
	ldr	r2, [fp, #-12]
	movw	r3, #65530
	movt	r3, 65535
	sub	r3, r3, r2
	ldr	r2, .L26+44
.LPIC20:
	add	r2, pc, r2
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r3, .L26+48
.LPIC21:
	add	r3, pc, r3
	mov	r2, r0
	ldr	r0, [fp, #-32]
	bl	PrintStringBlock(PLT)
	.loc 1 147 15 discriminator 3
	ldr	r3, [fp, #-28]
	add	r3, r3, #16
	str	r3, [fp, #-28]
	.loc 1 137 63 discriminator 3
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L21:
	.loc 1 137 43 discriminator 1
	ldr	r3, [fp, #-36]
	ldr	r3, [r3, #20]
	.loc 1 137 33 discriminator 1
	ldr	r2, [fp, #-24]
	cmp	r2, r3
	bcc	.L22
	.loc 1 149 16
	ldr	r3, [fp, #-36]
	ldr	r3, [r3, #16]
	.loc 1 149 7
	cmp	r3, #0
	beq	.L23
	.loc 1 150 57
	ldr	r3, [fp, #-20]
	sub	r3, r3, #3
	.loc 1 150 7
	mov	r2, r3
	ldr	r3, .L26+52
.LPIC22:
	add	r3, pc, r3
	ldr	r1, .L26+56
.LPIC23:
	add	r1, pc, r1
	ldr	r0, [fp, #-32]
	bl	fprintf(PLT)
.L23:
	.loc 1 153 13
	ldr	r3, [fp, #-36]
	add	r3, r3, #32
	str	r3, [fp, #-36]
.L16:
	.loc 1 111 22
	ldr	r3, [fp, #-40]
	sub	r2, r3, #1
	str	r2, [fp, #-40]
	.loc 1 111 9
	cmp	r3, #0
	bne	.L24
	.loc 1 155 3
	ldr	r3, [fp, #-32]
	mov	r2, #80
	mov	r1, #1
	ldr	r0, .L26+60
.LPIC24:
	add	r0, pc, r0
	bl	fwrite(PLT)
	.loc 1 156 10
	mov	r3, #0
	.loc 1 157 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L27:
	.align	2
.L26:
	.word	cszHeader-(.LPIC9+8)
	.word	.LC13-(.LPIC10+8)
	.word	.LC14-(.LPIC11+8)
	.word	.LC15-(.LPIC12+8)
	.word	.LC1-(.LPIC13+8)
	.word	.LC16-(.LPIC14+8)
	.word	.LC18-(.LPIC15+8)
	.word	.LC17-(.LPIC16+8)
	.word	.LC20-(.LPIC17+8)
	.word	.LC1-(.LPIC18+8)
	.word	.LC19-(.LPIC19+8)
	.word	.LC18-(.LPIC20+8)
	.word	.LC17-(.LPIC21+8)
	.word	.LC1-(.LPIC22+8)
	.word	.LC21-(.LPIC23+8)
	.word	cszFooter-(.LPIC24+8)
	.cfi_endproc
.LFE4:
	.size	PrintUsage, .-PrintUsage
	.align	2
	.global	ParseArgsBuffer
	.syntax unified
	.arm
	.fpu vfpv3
	.type	ParseArgsBuffer, %function
ParseArgsBuffer:
.LFB5:
	.loc 1 167 1
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -4
	add	fp, sp, #0
	.cfi_def_cfa_register 11
	sub	sp, sp, #36
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	str	r3, [fp, #-36]
	.loc 1 171 12
	ldr	r3, [fp, #-36]
	mov	r2, #0
	str	r2, [r3]
	.loc 1 172 12
	ldr	r3, [fp, #4]
	mov	r2, #0
	str	r2, [r3]
	.loc 1 173 13
	mov	r3, #0
	str	r3, [fp, #-16]
	.loc 1 175 10
	b	.L29
.L30:
	.loc 1 175 71 discriminator 6
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L29:
	.loc 1 175 11 discriminator 1
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 175 48 discriminator 1
	cmp	r3, #32
	beq	.L30
	.loc 1 175 30 discriminator 3
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 175 28 discriminator 3
	cmp	r3, #9
	beq	.L30
	.loc 1 175 50 discriminator 5
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 175 48 discriminator 5
	cmp	r3, #10
	beq	.L30
	.loc 1 176 8
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 176 7
	cmp	r3, #0
	beq	.L52
	.loc 1 178 7
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	beq	.L33
	.loc 1 179 15
	ldr	r3, [fp, #-28]
	add	r2, r3, #4
	str	r2, [fp, #-28]
	.loc 1 179 17
	ldr	r2, [fp, #-32]
	str	r2, [r3]
.L33:
	.loc 1 180 7
	ldr	r3, [fp, #-36]
	ldr	r3, [r3]
	.loc 1 180 5
	add	r2, r3, #1
	ldr	r3, [fp, #-36]
	str	r2, [r3]
.L46:
	.loc 1 182 17
	mov	r3, #1
	str	r3, [fp, #-12]
	.loc 1 184 19
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 185 12
	b	.L34
.L35:
	.loc 1 186 18
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
	.loc 1 187 21
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L34:
	.loc 1 185 13
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 185 23
	cmp	r3, #92
	beq	.L35
	.loc 1 189 10
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 189 9
	cmp	r3, #34
	bne	.L36
	.loc 1 190 12
	ldr	r3, [fp, #-8]
	and	r3, r3, #1
	.loc 1 190 11
	cmp	r3, #0
	bne	.L37
	.loc 1 191 13
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L38
	.loc 1 191 37 discriminator 1
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 191 25 discriminator 1
	cmp	r3, #34
	bne	.L38
	.loc 1 192 22
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
	b	.L37
.L38:
	.loc 1 194 23
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 195 24
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	.loc 1 195 23
	str	r3, [fp, #-16]
.L37:
	.loc 1 198 21
	ldr	r3, [fp, #-8]
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	str	r3, [fp, #-8]
.L36:
	.loc 1 200 16
	ldr	r3, [fp, #4]
	ldr	r2, [r3]
	ldr	r3, [fp, #-8]
	add	r2, r2, r3
	ldr	r3, [fp, #4]
	str	r2, [r3]
	.loc 1 201 9
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	beq	.L39
	.loc 1 202 14
	b	.L40
.L41:
	.loc 1 203 18
	ldr	r3, [fp, #-32]
	add	r2, r3, #1
	str	r2, [fp, #-32]
	.loc 1 203 20
	mov	r2, #92
	strb	r2, [r3]
.L40:
	.loc 1 202 28
	ldr	r3, [fp, #-8]
	sub	r2, r3, #1
	str	r2, [fp, #-8]
	.loc 1 202 15
	cmp	r3, #0
	bne	.L41
.L39:
	.loc 1 206 10
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 206 9
	cmp	r3, #0
	beq	.L42
	.loc 1 206 28 discriminator 1
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 206 26 discriminator 1
	cmp	r3, #10
	beq	.L42
	.loc 1 206 44 discriminator 2
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L43
	.loc 1 206 61 discriminator 3
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 206 58 discriminator 3
	cmp	r3, #32
	beq	.L42
	.loc 1 206 78 discriminator 4
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 206 76 discriminator 4
	cmp	r3, #9
	beq	.L42
.L43:
	.loc 1 208 9
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L44
	.loc 1 209 11
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	beq	.L45
	.loc 1 210 18
	ldr	r3, [fp, #-32]
	add	r2, r3, #1
	str	r2, [fp, #-32]
	.loc 1 210 21
	ldr	r2, [fp, #-24]
	ldrb	r2, [r2]	@ zero_extendqisi2
	.loc 1 210 20
	strb	r2, [r3]
.L45:
	.loc 1 211 11
	ldr	r3, [fp, #4]
	ldr	r3, [r3]
	.loc 1 211 9
	add	r2, r3, #1
	ldr	r3, [fp, #4]
	str	r2, [r3]
.L44:
	.loc 1 213 7
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
	.loc 1 182 17
	b	.L46
.L42:
	.loc 1 215 7
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	beq	.L47
	.loc 1 216 14
	ldr	r3, [fp, #-32]
	add	r2, r3, #1
	str	r2, [fp, #-32]
	.loc 1 216 16
	mov	r2, #0
	strb	r2, [r3]
.L47:
	.loc 1 217 7
	ldr	r3, [fp, #4]
	ldr	r3, [r3]
	.loc 1 217 5
	add	r2, r3, #1
	ldr	r3, [fp, #4]
	str	r2, [r3]
	.loc 1 175 10
	b	.L29
.L52:
	.loc 1 177 7
	nop
	.loc 1 219 5
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	beq	.L49
	.loc 1 220 13
	ldr	r3, [fp, #-28]
	add	r2, r3, #4
	str	r2, [fp, #-28]
	.loc 1 220 15
	mov	r2, #0
	str	r2, [r3]
.L49:
	.loc 1 221 5
	ldr	r3, [fp, #-36]
	ldr	r3, [r3]
	.loc 1 221 3
	add	r2, r3, #1
	ldr	r3, [fp, #-36]
	str	r2, [r3]
	.loc 1 222 10
	mov	r3, #0
	.loc 1 223 1
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
	.size	ParseArgsBuffer, .-ParseArgsBuffer
	.section	.rodata
	.align	2
.LC22:
	.ascii	"ParseArgsBuffer(szCmdLine, NULL, NULL, psiArgc, &si"
	.ascii	"CharCnt)\000"
	.align	2
.LC23:
	.ascii	"CreateArgvArgcBuffer\000"
	.align	2
.LC24:
	.ascii	"(*pszArgv==NULL)\000"
	.text
	.align	2
	.global	CreateArgvArgcBuffer
	.syntax unified
	.arm
	.fpu vfpv3
	.type	CreateArgvArgcBuffer, %function
CreateArgvArgcBuffer:
.LFB6:
	.loc 1 231 1
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
	.loc 1 231 1
	ldr	r2, .L59
.LPIC33:
	add	r2, pc, r2
	ldr	r3, .L59+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 234 3
	sub	r3, fp, #16
	str	r3, [sp]
	ldr	r3, [fp, #-32]
	mov	r2, #0
	mov	r1, #0
	ldr	r0, [fp, #-24]
	bl	ParseArgsBuffer(PLT)
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L54
	.loc 1 234 3 is_stmt 0 discriminator 1
	ldr	r3, .L59+8
.LPIC25:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L59+12
.LPIC26:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-12]
	str	r3, [sp]
	mov	r3, #234
	ldr	r2, .L59+16
.LPIC27:
	add	r2, pc, r2
	ldr	r1, .L59+20
.LPIC28:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L55
.L54:
	.loc 1 235 29 is_stmt 1
	ldr	r3, [fp, #-32]
	ldr	r3, [r3]
	.loc 1 235 38
	lsl	r3, r3, #2
	.loc 1 235 64
	ldr	r2, [fp, #-16]
	.loc 1 235 20
	add	r3, r3, r2
	mov	r0, r3
	bl	malloc(PLT)
	mov	r3, r0
	mov	r2, r3
	.loc 1 235 11
	ldr	r3, [fp, #-28]
	str	r2, [r3]
	.loc 1 236 3
	ldr	r3, [fp, #-28]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L56
	.loc 1 236 3 is_stmt 0 discriminator 1
	ldr	r3, .L59+24
.LPIC29:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L59+28
.LPIC30:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #2
	str	r3, [sp]
	mov	r3, #236
	ldr	r2, .L59+32
.LPIC31:
	add	r2, pc, r2
	ldr	r1, .L59+36
.LPIC32:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #2
	str	r3, [fp, #-12]
	b	.L55
.L56:
	.loc 1 241 4 is_stmt 1
	ldr	r3, [fp, #-32]
	ldr	r3, [r3]
	.loc 1 241 14
	sub	r2, r3, #1
	ldr	r3, [fp, #-32]
	str	r2, [r3]
	.loc 1 242 14
	ldr	r3, [fp, #-28]
	ldr	r1, [r3]
	.loc 1 245 21
	ldr	r3, [fp, #-28]
	ldr	r2, [r3]
	.loc 1 245 32
	ldr	r3, [fp, #-32]
	ldr	r3, [r3]
	.loc 1 245 30
	lsl	r3, r3, #2
	add	r2, r2, r3
	.loc 1 242 14
	sub	r3, fp, #16
	str	r3, [sp]
	ldr	r3, [fp, #-32]
	ldr	r0, [fp, #-24]
	bl	ParseArgsBuffer(PLT)
	str	r0, [fp, #-12]
.L55:
	.loc 1 250 10
	ldr	r3, [fp, #-12]
	.loc 1 231 1
	ldr	r1, .L59+40
.LPIC34:
	add	r1, pc, r1
	.loc 1 251 1
	ldr	r2, .L59+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L58
	bl	__stack_chk_fail(PLT)
.L58:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L60:
	.align	2
.L59:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC33+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC22-(.LPIC25+8)
	.word	.LC11-(.LPIC26+8)
	.word	.LC8-(.LPIC27+8)
	.word	.LC9-(.LPIC28+8)
	.word	.LC24-(.LPIC29+8)
	.word	.LC11-(.LPIC30+8)
	.word	.LC23-(.LPIC31+8)
	.word	.LC9-(.LPIC32+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC34+8)
	.cfi_endproc
.LFE6:
	.size	CreateArgvArgcBuffer, .-CreateArgvArgcBuffer
	.section	.rodata
	.align	2
.LC25:
	.ascii	"Error Reading %s\000"
	.align	2
.LC26:
	.ascii	"ParseArgs\000"
	.align	2
.LC27:
	.ascii	"CreateArgvArgcBuffer(szFileBuffer, &pszArgv, &siArg"
	.ascii	"c)\000"
	.align	2
.LC28:
	.ascii	"ParseArgs(siArgc - 1, (const char **)pszArgv, pCmdD"
	.ascii	"esc, stArgDescCnt)\000"
	.text
	.align	2
	.global	ParseArgsFile
	.syntax unified
	.arm
	.fpu vfpv3
	.type	ParseArgsFile, %function
ParseArgsFile:
.LFB7:
	.loc 1 259 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 248
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #264
	str	r0, [fp, #-240]
	str	r1, [fp, #-244]
	str	r2, [fp, #-248]
	.loc 1 259 1
	ldr	r2, .L70
.LPIC47:
	add	r2, pc, r2
	ldr	r3, .L70+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 262 9
	mov	r3, #0
	str	r3, [fp, #-228]
	.loc 1 267 14
	sub	r2, fp, #220
	sub	r3, fp, #224
	mov	r1, r3
	ldr	r0, [fp, #-240]
	bl	ReadTextFile(PLT)
	str	r0, [fp, #-216]
	.loc 1 268 15
	ldr	r3, [fp, #-224]
	str	r3, [fp, #-212]
	.loc 1 270 5
	ldr	r3, [fp, #-216]
	cmp	r3, #0
	beq	.L62
	.loc 1 271 5
	sub	r0, fp, #208
	ldr	r3, [fp, #-240]
	ldr	r2, .L70+8
.LPIC35:
	add	r2, pc, r2
	mov	r1, #200
	bl	EApiSprintfA(PLT)
	.loc 1 275 5
	sub	r3, fp, #208
	str	r3, [sp, #8]
	ldr	r3, .L70+12
.LPIC36:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-216]
	str	r3, [sp]
	movw	r3, #275
	ldr	r2, .L70+16
.LPIC37:
	add	r2, pc, r2
	ldr	r1, .L70+20
.LPIC38:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L63
.L62:
	.loc 1 281 3
	sub	r2, fp, #232
	sub	r3, fp, #228
	mov	r1, r3
	ldr	r0, [fp, #-212]
	bl	CreateArgvArgcBuffer(PLT)
	str	r0, [fp, #-216]
	ldr	r3, [fp, #-216]
	cmp	r3, #0
	beq	.L64
	.loc 1 281 3 is_stmt 0 discriminator 1
	ldr	r3, .L70+24
.LPIC39:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L70+28
.LPIC40:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-216]
	str	r3, [sp]
	movw	r3, #281
	ldr	r2, .L70+32
.LPIC41:
	add	r2, pc, r2
	ldr	r1, .L70+36
.LPIC42:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L63
.L64:
	.loc 1 282 5 is_stmt 1
	ldr	r3, [fp, #-212]
	cmp	r3, #0
	beq	.L65
	.loc 1 282 26 discriminator 1
	ldr	r0, [fp, #-212]
	bl	free(PLT)
.L65:
	.loc 1 283 15
	mov	r3, #0
	str	r3, [fp, #-212]
	.loc 1 285 3
	ldr	r3, [fp, #-232]
	sub	r0, r3, #1
	ldr	r1, [fp, #-228]
	ldr	r3, [fp, #-248]
	ldr	r2, [fp, #-244]
	bl	ParseArgs(PLT)
	str	r0, [fp, #-216]
	ldr	r3, [fp, #-216]
	cmp	r3, #0
	beq	.L69
	.loc 1 285 3 is_stmt 0 discriminator 1
	ldr	r3, .L70+40
.LPIC43:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L70+44
.LPIC44:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-216]
	str	r3, [sp]
	movw	r3, #285
	ldr	r2, .L70+48
.LPIC45:
	add	r2, pc, r2
	ldr	r1, .L70+52
.LPIC46:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L63
.L69:
	.loc 1 287 1 is_stmt 1
	nop
.L63:
	.loc 1 288 15
	ldr	r3, [fp, #-228]
	.loc 1 288 5
	cmp	r3, #0
	beq	.L66
	.loc 1 288 23 discriminator 1
	ldr	r3, [fp, #-228]
	mov	r0, r3
	bl	free(PLT)
.L66:
	.loc 1 289 10
	mov	r3, #0
	str	r3, [fp, #-228]
	.loc 1 290 10
	ldr	r3, [fp, #-216]
	.loc 1 259 1
	ldr	r1, .L70+56
.LPIC48:
	add	r1, pc, r1
	.loc 1 291 1
	ldr	r2, .L70+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L68
	bl	__stack_chk_fail(PLT)
.L68:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L71:
	.align	2
.L70:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC47+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC25-(.LPIC35+8)
	.word	.LC11-(.LPIC36+8)
	.word	.LC26-(.LPIC37+8)
	.word	.LC9-(.LPIC38+8)
	.word	.LC27-(.LPIC39+8)
	.word	.LC11-(.LPIC40+8)
	.word	.LC8-(.LPIC41+8)
	.word	.LC9-(.LPIC42+8)
	.word	.LC28-(.LPIC43+8)
	.word	.LC11-(.LPIC44+8)
	.word	.LC8-(.LPIC45+8)
	.word	.LC9-(.LPIC46+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC48+8)
	.cfi_endproc
.LFE7:
	.size	ParseArgsFile, .-ParseArgsFile
	.section	.rodata
	.align	2
.LC29:
	.ascii	"ERROR: Missing Required Argument (%s)\012\000"
	.align	2
.LC30:
	.ascii	"pArgDesc->Handle(pArgDesc, pArgDesc->pValue, **ppsz"
	.ascii	"Argv)\000"
	.text
	.align	2
	.global	ParseSubArgs
	.syntax unified
	.arm
	.fpu vfpv3
	.type	ParseSubArgs, %function
ParseSubArgs:
.LFB8:
	.loc 1 301 1
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
	str	r3, [fp, #-28]
	.loc 1 302 16
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 303 8
	b	.L73
.L78:
	.loc 1 304 10
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	.loc 1 304 19
	sub	r1, r3, #1
	ldr	r2, [fp, #-16]
	str	r1, [r2]
	.loc 1 304 7
	cmp	r3, #0
	bne	.L74
	.loc 1 305 7
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #8]
	mov	r1, r3
	ldr	r3, .L79
.LPIC49:
	add	r3, pc, r3
	mov	r0, r3
	bl	printf(PLT)
	.loc 1 306 14
	mvn	r3, #3840
	b	.L75
.L74:
	.loc 1 308 8
	ldr	r3, [fp, #-20]
	ldr	r3, [r3]
	.loc 1 308 5
	add	r2, r3, #4
	ldr	r3, [fp, #-20]
	str	r2, [r3]
	.loc 1 309 5
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #12]
	ldr	r2, [fp, #-28]
	ldr	r1, [r2]
	ldr	r2, [fp, #-20]
	ldr	r2, [r2]
	ldr	r2, [r2]
	ldr	r0, [fp, #-28]
	blx	r3
.LVL0:
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L76
	.loc 1 309 5 is_stmt 0 discriminator 1
	ldr	r3, .L79+4
.LPIC50:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L79+8
.LPIC51:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-8]
	str	r3, [sp]
	movw	r3, #309
	ldr	r2, .L79+12
.LPIC52:
	add	r2, pc, r2
	ldr	r1, .L79+16
.LPIC53:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L77
.L76:
	.loc 1 310 5 is_stmt 1
	ldr	r3, [fp, #-28]
	add	r3, r3, #16
	str	r3, [fp, #-28]
.L73:
	.loc 1 303 20
	ldr	r3, [fp, #-24]
	sub	r2, r3, #1
	str	r2, [fp, #-24]
	.loc 1 303 9
	cmp	r3, #0
	bne	.L78
	.loc 1 312 1
	nop
.L77:
	.loc 1 313 10
	ldr	r3, [fp, #-8]
.L75:
	.loc 1 314 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L80:
	.align	2
.L79:
	.word	.LC29-(.LPIC49+8)
	.word	.LC30-(.LPIC50+8)
	.word	.LC11-(.LPIC51+8)
	.word	.LC8-(.LPIC52+8)
	.word	.LC9-(.LPIC53+8)
	.cfi_endproc
.LFE8:
	.size	ParseSubArgs, .-ParseSubArgs
	.section	.rodata
	.align	2
.LC31:
	.ascii	"ParseArgsFile(szCurOption, pCmdDesc, stArgDescCnt)\000"
	.align	2
.LC32:
	.ascii	"ParseSubArgs(&siArgc, &pszCurArg, pCurArgDesc->stAr"
	.ascii	"gs, pCurArgDesc->pArgs)\000"
	.align	2
.LC33:
	.ascii	"pCurArgDesc->handler(pCurArgDesc->pArgData)\000"
	.align	2
.LC34:
	.ascii	"ERROR: Unknown Arg [%c] in (%s)\012\000"
	.align	2
.LC35:
	.ascii	"ERROR: Unknown Arg (%s)\012\000"
	.text
	.align	2
	.global	ParseArgs
	.syntax unified
	.arm
	.fpu vfpv3
	.type	ParseArgs, %function
ParseArgs:
.LFB9:
	.loc 1 324 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #64
	str	r0, [fp, #-40]
	str	r1, [fp, #-44]
	str	r2, [fp, #-48]
	str	r3, [fp, #-52]
	.loc 1 324 1
	ldr	r2, .L116
.LPIC76:
	add	r2, pc, r2
	ldr	r3, .L116+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 325 16
	mov	r3, #0
	str	r3, [fp, #-32]
	.loc 1 326 16
	ldr	r3, [fp, #-44]
	str	r3, [fp, #-36]
	.loc 1 331 16
	mov	r3, #0
	str	r3, [fp, #-16]
	.loc 1 332 8
	b	.L82
.L109:
	.loc 1 334 12
	mov	r3, #0
	str	r3, [fp, #-20]
	.loc 1 335 17
	ldr	r3, [fp, #-36]
	.loc 1 335 16
	ldr	r3, [r3]
	str	r3, [fp, #-12]
	.loc 1 336 24
	ldr	r3, [fp, #-12]
	add	r2, r3, #1
	str	r2, [fp, #-12]
	.loc 1 336 12
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 336 5
	cmp	r3, #45
	beq	.L83
	cmp	r3, #64
	bne	.L112
	.loc 1 338 9
	ldr	r2, [fp, #-52]
	ldr	r1, [fp, #-48]
	ldr	r0, [fp, #-12]
	bl	ParseArgsFile(PLT)
	str	r0, [fp, #-32]
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	beq	.L85
	.loc 1 338 9 is_stmt 0 discriminator 1
	ldr	r3, .L116+8
.LPIC54:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L116+12
.LPIC55:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-32]
	str	r3, [sp]
	movw	r3, #338
	ldr	r2, .L116+16
.LPIC56:
	add	r2, pc, r2
	ldr	r1, .L116+20
.LPIC57:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L86
.L85:
	.loc 1 339 9 is_stmt 1
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
	.loc 1 340 9
	b	.L87
.L83:
	.loc 1 342 12
	ldr	r3, [fp, #-12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 342 11
	cmp	r3, #45
	bne	.L97
	.loc 1 343 11
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
	.loc 1 347 14
	ldr	r3, [fp, #-52]
	str	r3, [fp, #-24]
	.loc 1 348 22
	ldr	r3, [fp, #-48]
	str	r3, [fp, #-28]
	.loc 1 349 16
	b	.L89
.L95:
	.loc 1 350 28
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #4]
	.loc 1 350 15
	cmp	r3, #0
	beq	.L90
	.loc 1 351 18 discriminator 1
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #4]
	mov	r1, r3
	ldr	r0, [fp, #-12]
	bl	strcmp(PLT)
	mov	r3, r0
	.loc 1 350 43 discriminator 1
	cmp	r3, #0
	bne	.L90
	.loc 1 354 29
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #8]
	.loc 1 354 17
	cmp	r3, #0
	beq	.L91
	.loc 1 355 32
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #8]
	.loc 1 355 20
	ldr	r2, [r3]
	.loc 1 355 17
	add	r2, r2, #1
	str	r2, [r3]
.L91:
	.loc 1 357 15
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #20]
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #16]
	sub	r1, fp, #36
	sub	r0, fp, #40
	bl	ParseSubArgs(PLT)
	str	r0, [fp, #-32]
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	beq	.L92
	.loc 1 357 15 is_stmt 0 discriminator 1
	ldr	r3, .L116+24
.LPIC58:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L116+28
.LPIC59:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-32]
	str	r3, [sp]
	movw	r3, #357
	ldr	r2, .L116+32
.LPIC60:
	add	r2, pc, r2
	ldr	r1, .L116+36
.LPIC61:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L86
.L92:
	.loc 1 358 15 is_stmt 1
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
	.loc 1 359 29
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #28]
	.loc 1 359 17
	cmp	r3, #0
	beq	.L113
	.loc 1 360 17
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #28]
	ldr	r2, [fp, #-28]
	ldr	r2, [r2, #24]
	mov	r0, r2
	blx	r3
.LVL1:
	str	r0, [fp, #-32]
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	beq	.L113
	.loc 1 360 17 is_stmt 0 discriminator 1
	ldr	r3, .L116+40
.LPIC62:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L116+44
.LPIC63:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-32]
	str	r3, [sp]
	mov	r3, #360
	ldr	r2, .L116+48
.LPIC64:
	add	r2, pc, r2
	ldr	r1, .L116+52
.LPIC65:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L86
.L90:
	.loc 1 364 13 is_stmt 1
	ldr	r3, [fp, #-28]
	add	r3, r3, #32
	str	r3, [fp, #-28]
.L89:
	.loc 1 349 21
	ldr	r3, [fp, #-24]
	sub	r2, r3, #1
	str	r2, [fp, #-24]
	.loc 1 349 17
	cmp	r3, #0
	bne	.L95
	.loc 1 396 9
	b	.L87
.L106:
	.loc 1 371 16
	ldr	r3, [fp, #-52]
	str	r3, [fp, #-24]
	.loc 1 372 24
	ldr	r3, [fp, #-48]
	str	r3, [fp, #-28]
	.loc 1 373 20
	mov	r3, #0
	str	r3, [fp, #-20]
	.loc 1 374 18
	b	.L98
.L104:
	.loc 1 375 18
	ldr	r3, [fp, #-12]
	ldrb	r2, [r3]	@ zero_extendqisi2
	.loc 1 375 43
	ldr	r3, [fp, #-28]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 375 17
	cmp	r2, r3
	bne	.L99
	.loc 1 376 31
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #8]
	.loc 1 376 19
	cmp	r3, #0
	beq	.L100
	.loc 1 377 34
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #8]
	.loc 1 377 22
	ldr	r2, [r3]
	.loc 1 377 19
	add	r2, r2, #1
	str	r2, [r3]
.L100:
	.loc 1 379 17
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #20]
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #16]
	sub	r1, fp, #36
	sub	r0, fp, #40
	bl	ParseSubArgs(PLT)
	str	r0, [fp, #-32]
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	beq	.L101
	.loc 1 379 17 is_stmt 0 discriminator 1
	ldr	r3, .L116+56
.LPIC66:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L116+60
.LPIC67:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-32]
	str	r3, [sp]
	movw	r3, #379
	ldr	r2, .L116+64
.LPIC68:
	add	r2, pc, r2
	ldr	r1, .L116+68
.LPIC69:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L86
.L101:
	.loc 1 380 17 is_stmt 1
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
	.loc 1 381 31
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #28]
	.loc 1 381 19
	cmp	r3, #0
	beq	.L114
	.loc 1 382 19
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #28]
	ldr	r2, [fp, #-28]
	ldr	r2, [r2, #24]
	mov	r0, r2
	blx	r3
.LVL2:
	str	r0, [fp, #-32]
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	beq	.L114
	.loc 1 382 19 is_stmt 0 discriminator 1
	ldr	r3, .L116+72
.LPIC70:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L116+76
.LPIC71:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-32]
	str	r3, [sp]
	movw	r3, #382
	ldr	r2, .L116+80
.LPIC72:
	add	r2, pc, r2
	ldr	r1, .L116+84
.LPIC73:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L86
.L99:
	.loc 1 386 15 is_stmt 1
	ldr	r3, [fp, #-28]
	add	r3, r3, #32
	str	r3, [fp, #-28]
.L98:
	.loc 1 374 23
	ldr	r3, [fp, #-24]
	sub	r2, r3, #1
	str	r2, [fp, #-24]
	.loc 1 374 19
	cmp	r3, #0
	bne	.L104
	b	.L103
.L114:
	.loc 1 384 17
	nop
.L103:
	.loc 1 388 15
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L105
	.loc 1 389 15
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
	.loc 1 390 59
	ldr	r3, [fp, #-12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 390 15
	mov	r1, r3
	ldr	r3, [fp, #-36]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, .L116+88
.LPIC74:
	add	r3, pc, r3
	mov	r0, r3
	bl	printf(PLT)
	.loc 1 391 22
	mov	r3, #0
	str	r3, [fp, #-20]
.L105:
	.loc 1 393 13
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L97:
	.loc 1 370 17
	ldr	r3, [fp, #-12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L106
	.loc 1 396 9
	b	.L87
.L113:
	.loc 1 362 15
	nop
	.loc 1 396 9
	b	.L87
.L112:
	.loc 1 398 9
	nop
.L87:
	.loc 1 400 7
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L107
	.loc 1 401 20
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
	.loc 1 402 7
	ldr	r3, [fp, #-36]
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r3, .L116+92
.LPIC75:
	add	r3, pc, r3
	mov	r0, r3
	bl	printf(PLT)
.L107:
	.loc 1 404 5
	ldr	r3, [fp, #-36]
	add	r3, r3, #4
	str	r3, [fp, #-36]
.L82:
	.loc 1 332 16
	ldr	r3, [fp, #-40]
	sub	r2, r3, #1
	str	r2, [fp, #-40]
	.loc 1 332 19
	cmp	r3, #0
	beq	.L108
	.loc 1 332 22 discriminator 1
	ldr	r3, [fp, #-36]
	ldr	r3, [r3]
	.loc 1 332 19 discriminator 1
	cmp	r3, #0
	bne	.L109
.L108:
	.loc 1 407 5
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L115
	.loc 1 408 13
	mvn	r3, #256
	str	r3, [fp, #-32]
	b	.L86
.L115:
	.loc 1 409 1
	nop
.L86:
	.loc 1 410 10
	ldr	r3, [fp, #-32]
	.loc 1 324 1
	ldr	r1, .L116+96
.LPIC77:
	add	r1, pc, r1
	.loc 1 411 1
	ldr	r2, .L116+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L111
	bl	__stack_chk_fail(PLT)
.L111:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L117:
	.align	2
.L116:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC76+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC31-(.LPIC54+8)
	.word	.LC11-(.LPIC55+8)
	.word	.LC8-(.LPIC56+8)
	.word	.LC9-(.LPIC57+8)
	.word	.LC32-(.LPIC58+8)
	.word	.LC11-(.LPIC59+8)
	.word	.LC8-(.LPIC60+8)
	.word	.LC9-(.LPIC61+8)
	.word	.LC33-(.LPIC62+8)
	.word	.LC11-(.LPIC63+8)
	.word	.LC8-(.LPIC64+8)
	.word	.LC9-(.LPIC65+8)
	.word	.LC32-(.LPIC66+8)
	.word	.LC11-(.LPIC67+8)
	.word	.LC8-(.LPIC68+8)
	.word	.LC9-(.LPIC69+8)
	.word	.LC33-(.LPIC70+8)
	.word	.LC11-(.LPIC71+8)
	.word	.LC8-(.LPIC72+8)
	.word	.LC9-(.LPIC73+8)
	.word	.LC34-(.LPIC74+8)
	.word	.LC35-(.LPIC75+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC77+8)
	.cfi_endproc
.LFE9:
	.size	ParseArgs, .-ParseArgs
.Letext0:
	.file 2 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/bits/alltypes.h"
	.file 3 "../../../include/EApi.h"
	.file 4 "../ArgParse.h"
	.file 5 "../StrFuncs.h"
	.file 6 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/string.h"
	.file 7 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/stdio.h"
	.file 8 "../../include/EApiAHStr.h"
	.file 9 "../BinFuncs.h"
	.file 10 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/stdlib.h"
	.file 11 "../StrPrint.h"
	.file 12 "../Str2Value.h"
	.file 13 "../../include/DbgChk.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x924
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x17
	.4byte	.LASF98
	.byte	0xc
	.4byte	.LASF99
	.4byte	.LASF100
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0xa
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2b
	.byte	0x18
	.4byte	0x26
	.uleb128 0xb
	.4byte	0x2d
	.uleb128 0x18
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x19
	.4byte	.LASF16
	.byte	0x1
	.byte	0x2
	.2byte	0x134
	.byte	0x8
	.4byte	0x70
	.uleb128 0x1a
	.ascii	"__x\000"
	.byte	0x2
	.2byte	0x134
	.byte	0x18
	.4byte	0x70
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0xb
	.4byte	0x70
	.uleb128 0x1b
	.4byte	.LASF5
	.byte	0x2
	.2byte	0x139
	.byte	0x19
	.4byte	0x53
	.uleb128 0x1c
	.byte	0x4
	.uleb128 0x7
	.byte	0x8
	.byte	0x4
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	0x7c
	.uleb128 0x13
	.4byte	0x92
	.uleb128 0xa
	.4byte	.LASF7
	.byte	0x2
	.byte	0x30
	.byte	0x18
	.4byte	0x26
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.4byte	.LASF8
	.uleb128 0x7
	.byte	0x2
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x7
	.byte	0x2
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0xa
	.4byte	.LASF12
	.byte	0x2
	.byte	0x7c
	.byte	0x19
	.4byte	0x26
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x3
	.4byte	0x70
	.uleb128 0xb
	.4byte	0xd7
	.uleb128 0x3
	.4byte	0x77
	.uleb128 0xb
	.4byte	0xe1
	.uleb128 0x13
	.4byte	0xe1
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x3
	.byte	0x91
	.byte	0x12
	.4byte	0xc4
	.uleb128 0x3
	.4byte	0x89
	.uleb128 0xd
	.4byte	.LASF17
	.byte	0x10
	.byte	0x4
	.byte	0x24
	.4byte	0x149
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x25
	.byte	0x9
	.4byte	0x89
	.byte	0
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x26
	.byte	0xa
	.4byte	0x2d
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0x27
	.byte	0xf
	.4byte	0xe1
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x4
	.byte	0x28
	.byte	0x12
	.4byte	0x167
	.byte	0xc
	.byte	0
	.uleb128 0x14
	.4byte	0xf7
	.4byte	0x162
	.uleb128 0x1
	.4byte	0x162
	.uleb128 0x1
	.4byte	0x89
	.uleb128 0x1
	.4byte	0xe1
	.byte	0
	.uleb128 0x3
	.4byte	0x108
	.uleb128 0x3
	.4byte	0x149
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x4
	.byte	0x29
	.byte	0x2
	.4byte	0x108
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x20
	.byte	0x4
	.byte	0x2b
	.4byte	0x1ed
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x4
	.byte	0x2c
	.byte	0xf
	.4byte	0x77
	.byte	0
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x4
	.byte	0x2d
	.byte	0xf
	.4byte	0xe1
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x4
	.byte	0x2e
	.byte	0x11
	.4byte	0x1ed
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0x2f
	.byte	0xf
	.4byte	0xe1
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x4
	.byte	0x30
	.byte	0xf
	.4byte	0x1f2
	.byte	0x10
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x4
	.byte	0x31
	.byte	0xe
	.4byte	0x2d
	.byte	0x14
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x4
	.byte	0x32
	.byte	0xe
	.4byte	0x89
	.byte	0x18
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x4
	.byte	0x33
	.byte	0x12
	.4byte	0x206
	.byte	0x1c
	.byte	0
	.uleb128 0x3
	.4byte	0x26
	.uleb128 0x3
	.4byte	0x16c
	.uleb128 0x14
	.4byte	0xf7
	.4byte	0x206
	.uleb128 0x1
	.4byte	0x89
	.byte	0
	.uleb128 0x3
	.4byte	0x1f7
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x4
	.byte	0x34
	.byte	0x2
	.4byte	0x178
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x8
	.byte	0x5
	.byte	0x4f
	.4byte	0x23e
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x5
	.byte	0x50
	.byte	0xf
	.4byte	0xe1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.4byte	0xe1
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x5
	.byte	0x52
	.byte	0x2
	.4byte	0x217
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x8
	.byte	0x5
	.byte	0x54
	.4byte	0x271
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0x5
	.byte	0x55
	.byte	0x10
	.4byte	0x271
	.byte	0
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x5
	.byte	0x56
	.byte	0x10
	.4byte	0x2d
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	0x23e
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x5
	.byte	0x57
	.byte	0x2
	.4byte	0x24a
	.uleb128 0xe
	.4byte	0x23e
	.4byte	0x292
	.uleb128 0xf
	.4byte	0x26
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.4byte	.LASF40
	.byte	0x32
	.byte	0x14
	.4byte	0x282
	.uleb128 0x5
	.byte	0x3
	.4byte	SizeMacros
	.uleb128 0x5
	.4byte	.LASF41
	.byte	0x38
	.byte	0x14
	.4byte	0x276
	.uleb128 0x5
	.byte	0x3
	.4byte	SizeMacroDesc
	.uleb128 0xe
	.4byte	0x77
	.4byte	0x2c4
	.uleb128 0xf
	.4byte	0x26
	.byte	0xf0
	.byte	0
	.uleb128 0xb
	.4byte	0x2b4
	.uleb128 0x15
	.4byte	.LASF42
	.byte	0x58
	.4byte	0x2c4
	.uleb128 0x5
	.byte	0x3
	.4byte	cszHeader
	.uleb128 0xe
	.4byte	0x77
	.4byte	0x2e9
	.uleb128 0xf
	.4byte	0x26
	.byte	0x50
	.byte	0
	.uleb128 0xb
	.4byte	0x2d9
	.uleb128 0x15
	.4byte	.LASF43
	.byte	0x5d
	.4byte	0x2e9
	.uleb128 0x5
	.byte	0x3
	.4byte	cszFooter
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0x6
	.byte	0x25
	.byte	0x5
	.4byte	0x3e
	.4byte	0x319
	.uleb128 0x1
	.4byte	0xe1
	.uleb128 0x1
	.4byte	0xe1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x7
	.byte	0x6b
	.byte	0x5
	.4byte	0x3e
	.4byte	0x330
	.uleb128 0x1
	.4byte	0xe1
	.uleb128 0x10
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF101
	.byte	0xa
	.byte	0x29
	.byte	0x6
	.4byte	0x342
	.uleb128 0x1
	.4byte	0x89
	.byte	0
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0x8
	.byte	0x6c
	.byte	0x1
	.4byte	0x3e
	.4byte	0x363
	.uleb128 0x1
	.4byte	0xdc
	.uleb128 0x1
	.4byte	0x39
	.uleb128 0x1
	.4byte	0xe6
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x9
	.byte	0xb9
	.byte	0x1
	.4byte	0xf7
	.4byte	0x383
	.uleb128 0x1
	.4byte	0xe1
	.uleb128 0x1
	.4byte	0x103
	.uleb128 0x1
	.4byte	0x383
	.byte	0
	.uleb128 0x3
	.4byte	0x2d
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0xa
	.byte	0x26
	.byte	0x7
	.4byte	0x89
	.4byte	0x39e
	.uleb128 0x1
	.4byte	0x2d
	.byte	0
	.uleb128 0x8
	.4byte	.LASF49
	.byte	0xb
	.byte	0x30
	.byte	0x1
	.4byte	0xf7
	.4byte	0x3cd
	.uleb128 0x1
	.4byte	0x92
	.uleb128 0x1
	.4byte	0xe1
	.uleb128 0x1
	.4byte	0x2d
	.uleb128 0x1
	.4byte	0xe1
	.uleb128 0x1
	.4byte	0x3e
	.uleb128 0x1
	.4byte	0xe1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF50
	.byte	0x7
	.byte	0x6c
	.byte	0x5
	.4byte	0x3e
	.4byte	0x3e9
	.uleb128 0x1
	.4byte	0x97
	.uleb128 0x1
	.4byte	0xeb
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0xc
	.byte	0x42
	.byte	0x1
	.4byte	0xf7
	.4byte	0x409
	.uleb128 0x1
	.4byte	0xe1
	.uleb128 0x1
	.4byte	0x89
	.uleb128 0x1
	.4byte	0x3e
	.byte	0
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0xd
	.byte	0x3e
	.byte	0x1
	.4byte	0x3e
	.4byte	0x439
	.uleb128 0x1
	.4byte	0x70
	.uleb128 0x1
	.4byte	0xe1
	.uleb128 0x1
	.4byte	0xe1
	.uleb128 0x1
	.4byte	0x26
	.uleb128 0x1
	.4byte	0xf7
	.uleb128 0x1
	.4byte	0xe1
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0xc
	.byte	0x68
	.byte	0x1
	.4byte	0xf7
	.4byte	0x45e
	.uleb128 0x1
	.4byte	0xe1
	.uleb128 0x1
	.4byte	0x45e
	.uleb128 0x1
	.4byte	0x89
	.uleb128 0x1
	.4byte	0x3e
	.byte	0
	.uleb128 0x3
	.4byte	0x276
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0x6
	.byte	0x44
	.byte	0x7
	.4byte	0xd7
	.4byte	0x479
	.uleb128 0x1
	.4byte	0xe1
	.byte	0
	.uleb128 0x16
	.4byte	.LASF65
	.2byte	0x13e
	.4byte	0xf7
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x544
	.uleb128 0x9
	.4byte	.LASF55
	.2byte	0x13f
	.byte	0x10
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x9
	.4byte	.LASF56
	.2byte	0x140
	.byte	0x11
	.4byte	0x544
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.4byte	.LASF57
	.2byte	0x141
	.byte	0x10
	.4byte	0x549
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x9
	.4byte	.LASF58
	.2byte	0x142
	.byte	0xf
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.4byte	.LASF59
	.2byte	0x145
	.byte	0x10
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.4byte	.LASF60
	.2byte	0x146
	.byte	0x10
	.4byte	0x544
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF61
	.2byte	0x147
	.byte	0xe
	.4byte	0x549
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.ascii	"stI\000"
	.byte	0x1
	.2byte	0x148
	.byte	0xa
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.4byte	.LASF62
	.2byte	0x149
	.byte	0x10
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.4byte	.LASF63
	.2byte	0x149
	.byte	0x18
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.4byte	.LASF64
	.2byte	0x14a
	.byte	0xf
	.4byte	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x11
	.4byte	.LASF71
	.2byte	0x199
	.4byte	.L86
	.byte	0
	.uleb128 0x3
	.4byte	0xe1
	.uleb128 0x3
	.4byte	0x20b
	.uleb128 0x16
	.4byte	.LASF66
	.2byte	0x127
	.4byte	0xf7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5be
	.uleb128 0x9
	.4byte	.LASF67
	.2byte	0x128
	.byte	0x13
	.4byte	0x5be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF68
	.2byte	0x129
	.byte	0x14
	.4byte	0x5c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.4byte	.LASF69
	.2byte	0x12a
	.byte	0x12
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.4byte	.LASF70
	.2byte	0x12b
	.byte	0x12
	.4byte	0x1f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.4byte	.LASF59
	.2byte	0x12e
	.byte	0x10
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x11
	.4byte	.LASF71
	.2byte	0x138
	.4byte	.L77
	.byte	0
	.uleb128 0x3
	.4byte	0x3e
	.uleb128 0x3
	.4byte	0x544
	.uleb128 0xc
	.4byte	.LASF72
	.byte	0xfe
	.4byte	0xf7
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x68b
	.uleb128 0x2
	.4byte	.LASF73
	.byte	0xff
	.byte	0x10
	.4byte	0xe1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x9
	.4byte	.LASF57
	.2byte	0x100
	.byte	0x10
	.4byte	0x549
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x9
	.4byte	.LASF58
	.2byte	0x101
	.byte	0xf
	.4byte	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x6
	.4byte	.LASF59
	.2byte	0x104
	.byte	0x10
	.4byte	0xf7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x6
	.4byte	.LASF55
	.2byte	0x105
	.byte	0xe
	.4byte	0x3e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x6
	.4byte	.LASF56
	.2byte	0x106
	.byte	0x9
	.4byte	0x68b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x6
	.4byte	.LASF74
	.2byte	0x107
	.byte	0x9
	.4byte	0x89
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x6
	.4byte	.LASF75
	.2byte	0x108
	.byte	0x9
	.4byte	0xd7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x6
	.4byte	.LASF76
	.2byte	0x109
	.byte	0xa
	.4byte	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x6
	.4byte	.LASF77
	.2byte	0x10a
	.byte	0x8
	.4byte	0x690
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x11
	.4byte	.LASF71
	.2byte	0x11f
	.4byte	.L63
	.byte	0
	.uleb128 0x3
	.4byte	0xd7
	.uleb128 0xe
	.4byte	0x70
	.4byte	0x6a0
	.uleb128 0xf
	.4byte	0x26
	.byte	0xc7
	.byte	0
	.uleb128 0xc
	.4byte	.LASF78
	.byte	0xe2
	.4byte	0xf7
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x709
	.uleb128 0x2
	.4byte	.LASF79
	.byte	0xe3
	.byte	0x11
	.4byte	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0xe4
	.byte	0x12
	.4byte	0x709
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF67
	.byte	0xe5
	.byte	0x11
	.4byte	0x5be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.4byte	.LASF59
	.byte	0xe8
	.byte	0x10
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x5
	.4byte	.LASF80
	.byte	0xe9
	.byte	0xe
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF71
	.byte	0xf9
	.4byte	.L55
	.byte	0
	.uleb128 0x3
	.4byte	0x68b
	.uleb128 0x1f
	.4byte	.LASF81
	.byte	0x1
	.byte	0xa0
	.byte	0x1
	.4byte	0xf7
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x799
	.uleb128 0x2
	.4byte	.LASF79
	.byte	0xa1
	.byte	0x11
	.4byte	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0xa2
	.byte	0x11
	.4byte	0x68b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.4byte	.LASF82
	.byte	0xa3
	.byte	0x11
	.4byte	0xd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF67
	.byte	0xa4
	.byte	0x11
	.4byte	0x5be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF83
	.byte	0xa5
	.byte	0x11
	.4byte	0x5be
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x5
	.4byte	.LASF84
	.byte	0xa8
	.byte	0xe
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF85
	.byte	0xa9
	.byte	0xe
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x5
	.4byte	.LASF86
	.byte	0xaa
	.byte	0xe
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x62
	.4byte	0xf7
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x830
	.uleb128 0x2
	.4byte	.LASF88
	.byte	0x63
	.byte	0x10
	.4byte	0x92
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0x64
	.byte	0x10
	.4byte	0x549
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.4byte	.LASF58
	.byte	0x65
	.byte	0xf
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.4byte	.LASF70
	.byte	0x68
	.byte	0xe
	.4byte	0x1f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.4byte	.LASF69
	.byte	0x69
	.byte	0xe
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LASF89
	.byte	0x6a
	.byte	0x7
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF90
	.byte	0x6b
	.byte	0x7
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF91
	.byte	0x6c
	.byte	0x7
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x5
	.4byte	.LASF92
	.byte	0x6d
	.byte	0x7
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xc
	.4byte	.LASF93
	.byte	0x4a
	.4byte	0xf7
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x88b
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x4b
	.byte	0x18
	.4byte	0x162
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF94
	.byte	0x4c
	.byte	0xb
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF95
	.byte	0x4d
	.byte	0x11
	.4byte	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LASF59
	.byte	0x50
	.byte	0x10
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x12
	.4byte	.LASF71
	.byte	0x54
	.4byte	.L10
	.byte	0
	.uleb128 0xc
	.4byte	.LASF96
	.byte	0x3b
	.4byte	0xf7
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8e6
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x3c
	.byte	0x18
	.4byte	0x162
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.4byte	.LASF94
	.byte	0x3d
	.byte	0xb
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.4byte	.LASF95
	.byte	0x3e
	.byte	0x11
	.4byte	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LASF59
	.byte	0x41
	.byte	0x10
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x12
	.4byte	.LASF71
	.byte	0x45
	.4byte	.L4
	.byte	0
	.uleb128 0x20
	.4byte	.LASF102
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.4byte	0xf7
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x28
	.byte	0x18
	.4byte	0x162
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x2
	.4byte	.LASF97
	.byte	0x29
	.byte	0xc
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2
	.4byte	.LASF95
	.byte	0x2a
	.byte	0x11
	.4byte	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x1
	.uleb128 0x13
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
.LASF21:
	.ascii	"Handle\000"
.LASF33:
	.ascii	"cszMacroName\000"
.LASF46:
	.ascii	"EApiSprintfA\000"
.LASF29:
	.ascii	"pArgData\000"
.LASF68:
	.ascii	"ppszArgv\000"
.LASF90:
	.ascii	"LArgLen\000"
.LASF34:
	.ascii	"cszMacroValue\000"
.LASF96:
	.ascii	"SizeArg\000"
.LASF4:
	.ascii	"size_t\000"
.LASF48:
	.ascii	"malloc\000"
.LASF69:
	.ascii	"stArgCount\000"
.LASF40:
	.ascii	"SizeMacros\000"
.LASF36:
	.ascii	"MacroList_s\000"
.LASF39:
	.ascii	"MacroList_t\000"
.LASF91:
	.ascii	"ArgOHead\000"
.LASF47:
	.ascii	"ReadTextFile\000"
.LASF72:
	.ascii	"ParseArgsFile\000"
.LASF75:
	.ascii	"szFileBuffer\000"
.LASF38:
	.ascii	"stMacroCnt\000"
.LASF79:
	.ascii	"szCmdLine\000"
.LASF102:
	.ascii	"StringArg\000"
.LASF30:
	.ascii	"handler\000"
.LASF35:
	.ascii	"MacroItem_t\000"
.LASF92:
	.ascii	"HelpLen\000"
.LASF9:
	.ascii	"short int\000"
.LASF94:
	.ascii	"pvalue\000"
.LASF64:
	.ascii	"szCurOption\000"
.LASF84:
	.ascii	"siInString\000"
.LASF26:
	.ascii	"puiResult\000"
.LASF24:
	.ascii	"cShort\000"
.LASF81:
	.ascii	"ParseArgsBuffer\000"
.LASF49:
	.ascii	"PrintStringBlock\000"
.LASF101:
	.ascii	"free\000"
.LASF60:
	.ascii	"pszCurArg\000"
.LASF78:
	.ascii	"CreateArgvArgcBuffer\000"
.LASF42:
	.ascii	"cszHeader\000"
.LASF7:
	.ascii	"uintptr_t\000"
.LASF70:
	.ascii	"pArgDesc\000"
.LASF5:
	.ascii	"FILE\000"
.LASF2:
	.ascii	"long long int\000"
.LASF53:
	.ascii	"ParseAsciiEquEx_VA\000"
.LASF41:
	.ascii	"SizeMacroDesc\000"
.LASF73:
	.ascii	"szFilename\000"
.LASF67:
	.ascii	"psiArgc\000"
.LASF58:
	.ascii	"stArgDescCnt\000"
.LASF45:
	.ascii	"printf\000"
.LASF95:
	.ascii	"cszArg\000"
.LASF56:
	.ascii	"pszArgv\000"
.LASF54:
	.ascii	"strdup\000"
.LASF50:
	.ascii	"fprintf\000"
.LASF52:
	.ascii	"siFormattedMessage_SC\000"
.LASF15:
	.ascii	"EApiStatus_t\000"
.LASF16:
	.ascii	"_IO_FILE\000"
.LASF51:
	.ascii	"ParseAsciiEqu_VA\000"
.LASF10:
	.ascii	"unsigned char\000"
.LASF62:
	.ascii	"uiValid\000"
.LASF66:
	.ascii	"ParseSubArgs\000"
.LASF71:
	.ascii	"ExitPoint\000"
.LASF8:
	.ascii	"signed char\000"
.LASF13:
	.ascii	"long long unsigned int\000"
.LASF12:
	.ascii	"uint32_t\000"
.LASF99:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux/../ArgParse.c\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF19:
	.ascii	"stValueSize\000"
.LASF86:
	.ascii	"siSlashesCnt\000"
.LASF43:
	.ascii	"cszFooter\000"
.LASF80:
	.ascii	"siCharCnt\000"
.LASF11:
	.ascii	"short unsigned int\000"
.LASF76:
	.ascii	"stFileSize\000"
.LASF17:
	.ascii	"ArgDesc_s\000"
.LASF3:
	.ascii	"char\000"
.LASF74:
	.ascii	"pvFileBuffer\000"
.LASF98:
	.ascii	"GNU C99 11.2.0 -mcpu=cortex-a9 -mfloat-abi=hard -mf"
	.ascii	"pu=vfpv3 -mabi=aapcs-linux -mtls-dialect=gnu -marm "
	.ascii	"-march=armv7-a+mp+sec+vfpv3 -g -O0 -std=gnu99 -fsta"
	.ascii	"ck-protector-strong -fPIE\000"
.LASF59:
	.ascii	"StatusCode\000"
.LASF87:
	.ascii	"PrintUsage\000"
.LASF77:
	.ascii	"ErrBuffer\000"
.LASF14:
	.ascii	"long unsigned int\000"
.LASF6:
	.ascii	"double\000"
.LASF61:
	.ascii	"pCurArgDesc\000"
.LASF63:
	.ascii	"uiSyntaxError\000"
.LASF97:
	.ascii	"cszCurArg\000"
.LASF37:
	.ascii	"pMacros\000"
.LASF28:
	.ascii	"stArgs\000"
.LASF44:
	.ascii	"strcmp\000"
.LASF22:
	.ascii	"ArgDesc_t\000"
.LASF100:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux\000"
.LASF25:
	.ascii	"cszLong\000"
.LASF23:
	.ascii	"CmdDesc_s\000"
.LASF31:
	.ascii	"CmdDesc_t\000"
.LASF93:
	.ascii	"NumberArg\000"
.LASF57:
	.ascii	"pCmdDesc\000"
.LASF18:
	.ascii	"pValue\000"
.LASF83:
	.ascii	"psiCharc\000"
.LASF88:
	.ascii	"OutStream\000"
.LASF55:
	.ascii	"siArgc\000"
.LASF1:
	.ascii	"long int\000"
.LASF82:
	.ascii	"szArgs\000"
.LASF27:
	.ascii	"pArgs\000"
.LASF65:
	.ascii	"ParseArgs\000"
.LASF89:
	.ascii	"LineWidth\000"
.LASF20:
	.ascii	"cszHelp\000"
.LASF32:
	.ascii	"MacroItem_s\000"
.LASF85:
	.ascii	"siCopyChar\000"
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
