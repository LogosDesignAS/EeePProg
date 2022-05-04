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
	.file	"EeePCfg.c"
	.text
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"SMBios Contained Element Description\012  Format:\012"
	.ascii	"    Element Type, Minimum Count, Maximum Count\012 "
	.ascii	" Examples:\012    SYSTEM_POWER_SUPPLY,  1, 1\012   "
	.ascii	" ServerBlade        ,  1, 5\012  Element Type Token"
	.ascii	"s:\012\000"
	.align	2
.LC1:
	.ascii	"     %s\012\000"
	.align	2
.LC2:
	.ascii	"  Minimum Count:\012    0 - 255     \012  Maximum C"
	.ascii	"ount:\012    0 - 255     \012\000"
	.text
	.align	2
	.global	SMBIOS_CE_Help
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	SMBIOS_CE_Help, %function
SMBIOS_CE_Help:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r7, r2
	ldr	r2, .L11
	mov	r6, r1
	mov	r0, r6
	mov	r1, r7
	ldr	r9, .L11+4
	mov	r5, #0
	ldr	r8, .L11+8
.LPIC0:
	add	r2, pc, r2
	bl	EApiSprintfA(PLT)
.LPIC1:
	add	r9, pc, r9
	mov	r4, r0
.LPIC2:
	add	r8, pc, r8
.L2:
	ldr	r3, [r9, r5, lsl #3]
	sub	r1, r7, r4
	add	r0, r6, r4
	mov	r2, r8
	add	r5, r5, #1
	bl	EApiSprintfA(PLT)
	cmp	r5, #12
	add	r4, r4, r0
	bne	.L2
	add	r9, r9, #168
	mov	r5, #0
.L3:
	ldr	r3, [r9, #-72]
	sub	r1, r7, r4
	mov	r2, r8
	add	r0, r6, r4
	pld	[r9]
	add	r5, r5, #4
	bl	EApiSprintfA(PLT)
	add	r4, r0, r4
	ldr	r3, [r9, #-64]
	sub	r1, r7, r4
	mov	r2, r8
	add	r0, r6, r4
	add	r9, r9, #32
	bl	EApiSprintfA(PLT)
	add	r4, r4, r0
	ldr	r3, [r9, #-88]
	sub	r1, r7, r4
	mov	r2, r8
	add	r0, r6, r4
	bl	EApiSprintfA(PLT)
	add	r4, r4, r0
	ldr	r3, [r9, #-80]
	sub	r1, r7, r4
	add	r0, r6, r4
	mov	r2, r8
	bl	EApiSprintfA(PLT)
	cmp	r5, #40
	add	r4, r4, r0
	bne	.L3
	ldr	r9, .L11+12
.LPIC8:
	add	r9, pc, r9
	add	r9, r9, #96
.L4:
	ldr	r3, [r9, r5, lsl #3]
	sub	r1, r7, r4
	add	r0, r6, r4
	mov	r2, r8
	add	r5, r5, #1
	bl	EApiSprintfA(PLT)
	cmp	r5, #41
	add	r4, r4, r0
	beq	.L4
	ldr	r2, .L11+16
	sub	r1, r7, r4
	add	r0, r6, r4
.LPIC10:
	add	r2, pc, r2
	bl	EApiSprintfA(PLT)
	mov	r0, #0
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L12:
	.align	2
.L11:
	.word	.LC0-(.LPIC0+8)
	.word	.LANCHOR0-(.LPIC1+8)
	.word	.LC1-(.LPIC2+8)
	.word	.LANCHOR0-(.LPIC8+8)
	.word	.LC2-(.LPIC10+8)
	.size	SMBIOS_CE_Help, .-SMBIOS_CE_Help
	.section	.rodata.str1.4
	.align	2
.LC3:
	.ascii	"COM0 PCIe Port Description\012  Format:\012    Star"
	.ascii	"ting Lane, Link Width, PCIe Generation\012  Example"
	.ascii	"s:\012     0,   x1, Gen1\012    16,  x16, Gen2\012 "
	.ascii	" Starting Lanes:\012    0 - 31      \012  Link Widt"
	.ascii	"hs Tokens:\012\000"
	.align	2
.LC4:
	.ascii	"  Generations Tokens:\012\000"
	.text
	.align	2
	.global	COM0PCIe_Help
	.syntax unified
	.arm
	.fpu vfpv3
	.type	COM0PCIe_Help, %function
COM0PCIe_Help:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r9, r2
	ldr	r7, .L19
	mov	r8, r1
	mov	r0, r8
	mov	r1, r9
	ldr	r2, .L19+4
	mov	r4, #0
	ldr	r6, .L19+8
.LPIC12:
	add	r7, pc, r7
	add	r7, r7, #432
.LPIC11:
	add	r2, pc, r2
	bl	EApiSprintfA(PLT)
.LPIC13:
	add	r6, pc, r6
	mov	r5, r0
	add	r10, r8, r0
	sub	fp, r9, r0
.L14:
	ldr	r3, [r7, r4, lsl #3]
	mov	r2, r6
	mov	r1, fp
	mov	r0, r10
	add	r4, r4, #1
	bl	EApiSprintfA(PLT)
	cmp	r4, #6
	bne	.L14
	ldr	r2, .L19+12
	mov	r1, fp
	ldr	r7, .L19+16
	mov	r0, r10
.LPIC14:
	add	r2, pc, r2
.LPIC15:
	add	r7, pc, r7
	bl	EApiSprintfA(PLT)
	add	r7, r7, #480
	add	r4, r5, r0
	mov	r5, #0
.L15:
	ldr	r3, [r7, r5, lsl #3]
	sub	r1, r9, r4
	add	r0, r8, r4
	mov	r2, r6
	add	r5, r5, #1
	bl	EApiSprintfA(PLT)
	cmp	r5, #3
	add	r4, r4, r0
	bne	.L15
	mov	r0, #0
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L20:
	.align	2
.L19:
	.word	.LANCHOR0-(.LPIC12+8)
	.word	.LC3-(.LPIC11+8)
	.word	.LC1-(.LPIC13+8)
	.word	.LC4-(.LPIC14+8)
	.word	.LANCHOR0-(.LPIC15+8)
	.size	COM0PCIe_Help, .-COM0PCIe_Help
	.section	.rodata.str1.4
	.align	2
.LC5:
	.ascii	"SMBIOS_CE_Element = Unknown Token, %s\012\000"
	.align	2
.LC6:
	.ascii	"SMBIOS_CE_Element = Invalid MinCount, %s\012\000"
	.align	2
.LC7:
	.ascii	"SMBIOS_CE_Element = Invalid MaxCount, %s\012\000"
	.text
	.align	2
	.global	SMBIOS_CE_Element
	.syntax unified
	.arm
	.fpu vfpv3
	.type	SMBIOS_CE_Element, %function
SMBIOS_CE_Element:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r0, r2
	mov	r8, r2
	ldr	r2, .L39
	sub	sp, sp, #12
	mov	r7, r1
	ldr	r3, .L39+4
	mov	r1, #44
.LPIC23:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #4]
	mov	r3, #0
	bl	strchr(PLT)
	subs	r4, r0, #0
	beq	.L24
	mov	r6, #0
	mov	r1, #44
	strb	r6, [r4], #1
	mov	r0, r4
	bl	strchr(PLT)
	subs	r5, r0, #0
	beq	.L24
	strb	r6, [r5]
	mov	r9, sp
	ldr	r6, .L39+8
	mov	r2, r9
	mov	r1, r8
.LPIC17:
	add	r6, pc, r6
	add	r0, r6, #504
	bl	GetTokenValueStrip(PLT)
	cmp	r0, #0
	bne	.L35
	ldr	r3, [sp]
	orr	r3, r3, #128
	str	r3, [sp]
.L27:
	mov	r1, #0
	mov	r0, r4
	add	r5, r5, #1
	bl	ulConvertStr2NumEx(PLT)
	mov	r1, #0
	mov	r8, r0
	mov	r0, r5
	bl	ulConvertStr2NumEx(PLT)
	cmp	r8, #255
	bhi	.L36
	cmp	r0, #255
	bhi	.L37
	ldr	r3, [sp]
	mov	r6, #0
	strb	r8, [r7, #1]
	strb	r0, [r7, #2]
	strb	r3, [r7]
.L23:
.L21:
	ldr	r2, .L39+12
	ldr	r3, .L39+4
.LPIC22:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #4]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L38
	mov	r0, r6
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L35:
	add	r0, r6, #512
	mov	r2, r9
	mov	r1, r8
	bl	GetTokenValueStrip(PLT)
	subs	r6, r0, #0
	beq	.L27
	ldr	r0, .L39+16
	mov	r1, r8
.LPIC19:
	add	r0, pc, r0
	bl	printf(PLT)
	b	.L21
.L24:
	mvn	r6, #3840
	b	.L21
.L36:
	ldr	r0, .L39+20
	mov	r1, r4
	mvn	r6, #3840
.LPIC20:
	add	r0, pc, r0
	bl	printf(PLT)
	b	.L21
.L37:
	ldr	r0, .L39+24
	mov	r1, r5
	mvn	r6, #3840
.LPIC21:
	add	r0, pc, r0
	bl	printf(PLT)
	b	.L21
.L38:
	bl	__stack_chk_fail(PLT)
.L40:
	.align	2
.L39:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC23+8)
	.word	__stack_chk_guard(GOT)
	.word	.LANCHOR0-(.LPIC17+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC22+8)
	.word	.LC5-(.LPIC19+8)
	.word	.LC6-(.LPIC20+8)
	.word	.LC7-(.LPIC21+8)
	.size	SMBIOS_CE_Element, .-SMBIOS_CE_Element
	.section	.rodata.str1.4
	.align	2
.LC8:
	.ascii	"COM0PCIe_Element\000"
	.align	2
.LC9:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux/../EeePCfg.c\000"
	.align	2
.LC10:
	.ascii	"pElementDesc->Instances.stElementSize < sizeof(unsi"
	.ascii	"gned long)\000"
	.align	2
.LC11:
	.ascii	"%s\012\000"
	.align	2
.LC12:
	.ascii	"COM0PCIe_Element = Invalid Starting Lane, %s\012\000"
	.align	2
.LC13:
	.ascii	"COM0PCIe_Element = Unknown Token, %s\012\000"
	.align	2
.LC14:
	.ascii	"COM0PCIe_Element = Invalid Starting Lane/Width, %s/"
	.ascii	"%s\012\000"
	.text
	.align	2
	.global	COM0PCIe_Element
	.syntax unified
	.arm
	.fpu vfpv3
	.type	COM0PCIe_Element, %function
COM0PCIe_Element:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, r0
	mov	r6, r2
	ldr	r2, [r0, #20]
	mov	r7, r1
	sub	sp, sp, #32
	ldr	r0, .L62
	mov	r1, #0
	ldr	r3, .L62+4
.LPIC35:
	add	r0, pc, r0
	ldr	r3, [r0, r3]
	mov	r0, r7
	ldr	r3, [r3]
	str	r3, [sp, #28]
	mov	r3, #0
	bl	memset(PLT)
	ldr	r3, [r4, #20]
	cmp	r3, #3
	bls	.L56
	mov	r1, #44
	mov	r0, r6
	bl	strchr(PLT)
	subs	r4, r0, #0
	beq	.L45
	mov	r5, #0
	mov	r1, #44
	strb	r5, [r4], #1
	mov	r0, r4
	bl	strchr(PLT)
	subs	r8, r0, #0
	beq	.L45
	mov	r1, r5
	mov	r0, r6
	strb	r5, [r8]
	bl	ulConvertStr2NumEx(PLT)
	cmp	r0, #31
	mov	r9, r0
	bhi	.L57
	ldr	r10, .L62+8
	add	r2, sp, #20
	mov	r1, r4
.LPIC29:
	add	r10, pc, r10
	add	r0, r10, #520
	bl	GetTokenValueStrip(PLT)
	subs	r5, r0, #0
	bne	.L58
	add	r8, r8, #1
	add	r0, r10, #528
	add	r2, sp, #24
	mov	r1, r8
	bl	GetTokenValueStrip(PLT)
	subs	r5, r0, #0
	bne	.L59
	ldr	r2, [sp, #20]
	mvn	r5, #0
	add	r3, r2, r5
	bics	r5, r9, r5, lsl r3
	bne	.L60
	ldr	r3, [sp, #24]
	orr	r3, r3, r2, lsl #8
	orr	r3, r3, r9, lsl #16
	str	r3, [r7]
.L43:
.L50:
.L41:
	ldr	r2, .L62+12
	ldr	r3, .L62+4
.LPIC34:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #28]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L61
	mov	r0, r5
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L45:
	mvn	r5, #3840
	b	.L41
.L57:
	ldr	r0, .L62+16
	mov	r1, r6
	mvn	r5, #3840
.LPIC28:
	add	r0, pc, r0
	bl	printf(PLT)
	b	.L41
.L58:
	ldr	r0, .L62+20
	mov	r1, r4
.LPIC30:
	add	r0, pc, r0
	bl	printf(PLT)
	b	.L41
.L56:
	ldr	ip, .L62+24
	mvn	r5, #256
	ldr	r0, .L62+28
	movw	r3, #281
	ldr	r2, .L62+32
	ldr	r1, .L62+36
.LPIC26:
	add	ip, pc, ip
.LPIC27:
	add	r0, pc, r0
	str	r5, [sp]
	stmib	sp, {r0, ip}
.LPIC24:
	add	r2, pc, r2
.LPIC25:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L41
.L59:
	ldr	r0, .L62+40
	mov	r1, r8
.LPIC32:
	add	r0, pc, r0
	bl	printf(PLT)
	b	.L41
.L60:
	ldr	r0, .L62+44
	mov	r2, r4
	mov	r1, r6
	mvn	r5, #3840
.LPIC33:
	add	r0, pc, r0
	bl	printf(PLT)
	b	.L41
.L61:
	bl	__stack_chk_fail(PLT)
.L63:
	.align	2
.L62:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC35+8)
	.word	__stack_chk_guard(GOT)
	.word	.LANCHOR0-(.LPIC29+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC34+8)
	.word	.LC12-(.LPIC28+8)
	.word	.LC13-(.LPIC30+8)
	.word	.LC10-(.LPIC26+8)
	.word	.LC11-(.LPIC27+8)
	.word	.LC8-(.LPIC24+8)
	.word	.LC9-(.LPIC25+8)
	.word	.LC13-(.LPIC32+8)
	.word	.LC14-(.LPIC33+8)
	.size	COM0PCIe_Element, .-COM0PCIe_Element
	.section	.rodata.str1.4
	.align	2
.LC15:
	.ascii	"PCIePorts\000"
	.align	2
.LC16:
	.ascii	"TB \000"
	.align	2
.LC17:
	.ascii	"GetElementDesc((CfgNodeGen_t*)pDesc, (CfgNodeGen_t*"
	.ascii	"*)&pElementsDesc, \"PCIePorts\", CfgElementNode)\000"
	.align	2
.LC18:
	.ascii	"Com0\000"
	.align	2
.LC19:
	.ascii	"HandleCOM0R20CBHeaderBlock\000"
	.align	2
.LC20:
	.ascii	"i2>=ARRAY_SIZE(pCOM0R20_CB_cgf->aulPCIePorts)\000"
	.text
	.align	2
	.global	HandleCOM0R20CBHeaderBlock
	.syntax unified
	.arm
	.fpu vfpv3
	.type	HandleCOM0R20CBHeaderBlock, %function
HandleCOM0R20CBHeaderBlock:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L83
	mov	r3, #2
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r4, r1
	ldr	r1, .L83+4
	sub	sp, sp, #28
.LPIC47:
	add	ip, pc, ip
	ldr	r2, .L83+8
	ldr	r1, [ip, r1]
	ldr	r5, [r0, #52]
.LPIC36:
	add	r2, pc, r2
	ldr	r1, [r1]
	str	r1, [sp, #20]
	mov	r1, #0
	add	r1, sp, #16
	bl	GetElementDesc(PLT)
	cmp	r0, #0
	bne	.L81
	mov	r1, r0
	mov	r2, #43
	add	r0, r4, #6
	bl	memset(PLT)
	ldr	r3, .L83+12
	ldrb	r2, [r5]	@ zero_extendqisi2
.LPIC41:
	add	r3, pc, r3
	ldr	r0, [r3]
	strb	r2, [r4, #5]
	str	r0, [r4, #6]	@ unaligned
	add	r0, r4, #10
	ldrh	r1, [r5, #2]
	bl	EeeP_Set16BitValue_BE(PLT)
	ldrh	r1, [r5, #4]
	add	r0, r4, #12
	bl	EeeP_Set16BitValue_BE(PLT)
	ldr	r2, [r5, #10]	@ unaligned
	ldr	r1, [r5, #6]	@ unaligned
	ldr	r3, [sp, #16]
	str	r2, [r4, #18]	@ unaligned
	str	r1, [r4, #14]	@ unaligned
	ldrb	r2, [r5, #14]	@ zero_extendqisi2
	strb	r2, [r4, #22]
	ldrb	r2, [r5, #15]	@ zero_extendqisi2
	strb	r2, [r4, #23]
	ldrb	r2, [r5, #16]	@ zero_extendqisi2
	strb	r2, [r4, #24]
	ldr	r7, [r3, #12]
	cmp	r7, #0
	beq	.L66
	add	ip, r5, #16
	mov	r8, #1
.L69:
	ldr	lr, [ip, #4]!
	ubfx	r6, lr, #8, #8
	lsr	r3, lr, #16
	sub	r5, r6, #1
	uxtb	lr, lr
	add	r5, r3, r8, lsl r5
	cmp	r3, r5
	bcs	.L73
	cmp	r3, #31
	bls	.L71
	b	.L70
.L72:
	cmp	r3, #32
	beq	.L70
.L71:
	add	r9, r4, r3, lsr #2
	and	r0, r3, #3
	lsl	r0, r0, #1
	add	r1, r4, r3, lsr #1
	ldrb	r2, [r9, #25]	@ zero_extendqisi2
	orr	r2, r2, lr, lsl r0
	and	r0, r3, #1
	lsl	r0, r0, #2
	add	r3, r3, #1
	strb	r2, [r9, #25]
	cmp	r5, r3
	ldrb	r2, [r1, #33]	@ zero_extendqisi2
	orr	r2, r2, r6, lsl r0
	strb	r2, [r1, #33]
	bhi	.L72
.L73:
	subs	r7, r7, #1
	bne	.L69
.L66:
	ldr	r2, .L83+16
	ldr	r3, .L83+4
.LPIC46:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #20]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L82
	mov	r0, #0
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L81:
	ldr	lr, .L83+20
	movw	r3, #1043
	ldr	ip, .L83+24
	ldr	r2, .L83+28
	ldr	r1, .L83+32
.LPIC39:
	add	lr, pc, lr
.LPIC40:
	add	ip, pc, ip
	str	r0, [sp]
.LPIC37:
	add	r2, pc, r2
	str	lr, [sp, #8]
.LPIC38:
	add	r1, pc, r1
	str	ip, [sp, #4]
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L66
.L70:
	ldr	ip, .L83+36
	mvn	lr, #3840
	ldr	r0, .L83+40
	movw	r3, #1089
	ldr	r2, .L83+44
	ldr	r1, .L83+48
.LPIC44:
	add	ip, pc, ip
.LPIC45:
	add	r0, pc, r0
	str	lr, [sp]
	stmib	sp, {r0, ip}
.LPIC42:
	add	r2, pc, r2
.LPIC43:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L66
.L82:
	bl	__stack_chk_fail(PLT)
.L84:
	.align	2
.L83:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC47+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC15-(.LPIC36+8)
	.word	.LC18-(.LPIC41+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC46+8)
	.word	.LC17-(.LPIC39+8)
	.word	.LC11-(.LPIC40+8)
	.word	.LC16-(.LPIC37+8)
	.word	.LC9-(.LPIC38+8)
	.word	.LC20-(.LPIC44+8)
	.word	.LC11-(.LPIC45+8)
	.word	.LC19-(.LPIC42+8)
	.word	.LC9-(.LPIC43+8)
	.size	HandleCOM0R20CBHeaderBlock, .-HandleCOM0R20CBHeaderBlock
	.section	.rodata.str1.4
	.align	2
.LC21:
	.ascii	"coM0\000"
	.text
	.align	2
	.global	HandleCOM0R20MHeaderBlock
	.syntax unified
	.arm
	.fpu vfpv3
	.type	HandleCOM0R20MHeaderBlock, %function
HandleCOM0R20MHeaderBlock:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L87
	push	{r4, r5, r6, lr}
	mov	r5, #0
	ldr	r6, [r0, #52]
	mov	r4, r1
.LPIC48:
	add	r3, pc, r3
	str	r5, [r1, #6]	@ unaligned
	ldr	r0, [r3]
	str	r5, [r1, #10]	@ unaligned
	str	r5, [r1, #14]	@ unaligned
	ldrb	r3, [r6]	@ zero_extendqisi2
	str	r0, [r1, #6]	@ unaligned
	add	r0, r4, #10
	strb	r3, [r1, #5]
	ldrh	r1, [r6, #2]
	bl	EeeP_Set16BitValue_BE(PLT)
	add	r0, r4, #12
	ldrh	r1, [r6, #4]
	bl	EeeP_Set16BitValue_BE(PLT)
	ldr	r3, [r6, #6]	@ unaligned
	mov	r0, r5
	str	r3, [r4, #14]	@ unaligned
	pop	{r4, r5, r6, pc}
.L88:
	.align	2
.L87:
	.word	.LC21-(.LPIC48+8)
	.size	HandleCOM0R20MHeaderBlock, .-HandleCOM0R20MHeaderBlock
	.section	.rodata.str1.4
	.align	2
.LC22:
	.ascii	"EXP1\000"
	.text
	.align	2
	.global	HandleEeePExpEepHeaderBlock
	.syntax unified
	.arm
	.fpu vfpv3
	.type	HandleEeePExpEepHeaderBlock, %function
HandleEeePExpEepHeaderBlock:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L91
	push	{r4, r5, r6, lr}
	mov	r5, #0
	ldr	r6, [r0, #52]
	mov	r4, r1
.LPIC49:
	add	r3, pc, r3
	str	r5, [r1, #6]	@ unaligned
	ldr	r0, [r3]
	str	r5, [r1, #10]	@ unaligned
	strh	r5, [r1, #14]	@ unaligned
	ldrb	r3, [r6]	@ zero_extendqisi2
	str	r0, [r1, #6]	@ unaligned
	add	r0, r4, #10
	strb	r3, [r1, #5]
	ldrh	r1, [r6, #2]
	bl	EeeP_Set16BitValue_BE(PLT)
	add	r0, r4, #12
	ldrh	r1, [r6, #4]
	bl	EeeP_Set16BitValue_BE(PLT)
	ldrh	r3, [r6, #6]
	mov	r0, r5
	strh	r3, [r4, #14]	@ unaligned
	pop	{r4, r5, r6, pc}
.L92:
	.align	2
.L91:
	.word	.LC22-(.LPIC49+8)
	.size	HandleEeePExpEepHeaderBlock, .-HandleEeePExpEepHeaderBlock
	.section	.rodata.str1.4
	.align	2
.LC23:
	.ascii	"HandleSmbiosChassisBlock\000"
	.align	2
.LC24:
	.ascii	"(pvBuffer==NULL)\000"
	.align	2
.LC25:
	.ascii	"(*pvBuffer==NULL)\000"
	.align	2
.LC26:
	.ascii	"SetDynBlockHeader(*pvBuffer, u8BlockId, stMinBlckLe"
	.ascii	"n)\000"
	.text
	.align	2
	.global	DBlockAllocWrap
	.syntax unified
	.arm
	.fpu vfpv3
	.type	DBlockAllocWrap, %function
DBlockAllocWrap:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r6, r0
	sub	sp, sp, #16
	mov	r0, r3
	mov	r7, r1
	mov	r5, r2
	ldrb	r8, [sp, #40]	@ zero_extendqisi2
	bl	EeePAlignLength(PLT)
	cmp	r6, #0
	beq	.L103
	cmp	r0, r5
	movcs	r4, r0
	movcc	r4, r5
	mov	r0, r4
	bl	malloc(PLT)
	cmp	r0, #0
	str	r0, [r6]
	beq	.L104
	cmp	r4, r5
	bhi	.L105
.L97:
	mov	r2, r5
	mov	r1, #0
	bl	memset(PLT)
	mov	r2, r4
	ldr	r0, [r6]
	mov	r1, r7
	bl	SetDynBlockHeader(PLT)
	subs	r4, r0, #0
	bne	.L106
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L105:
	add	r0, r0, r5
	mov	r1, r8
	sub	r2, r4, r5
	bl	memset(PLT)
	ldr	r0, [r6]
	b	.L97
.L106:
.L95:
	ldr	ip, .L107
	movw	r3, #1189
	ldr	r0, .L107+4
	ldr	r2, .L107+8
	ldr	r1, .L107+12
.LPIC60:
	add	ip, pc, ip
.LPIC61:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC58:
	add	r2, pc, r2
.LPIC59:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L103:
	ldr	ip, .L107+16
	mvn	r4, #256
	ldr	r0, .L107+20
	movw	r3, #1170
	ldr	r2, .L107+24
	ldr	r1, .L107+28
.LPIC52:
	add	ip, pc, ip
.LPIC53:
	add	r0, pc, r0
.LPIC50:
	add	r2, pc, r2
.LPIC51:
	add	r1, pc, r1
.L102:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L104:
	ldr	ip, .L107+32
	mvn	r4, #2
	ldr	r0, .L107+36
	movw	r3, #1180
	ldr	r2, .L107+40
	ldr	r1, .L107+44
.LPIC56:
	add	ip, pc, ip
.LPIC57:
	add	r0, pc, r0
.LPIC54:
	add	r2, pc, r2
.LPIC55:
	add	r1, pc, r1
	b	.L102
.L108:
	.align	2
.L107:
	.word	.LC26-(.LPIC60+8)
	.word	.LC11-(.LPIC61+8)
	.word	.LC16-(.LPIC58+8)
	.word	.LC9-(.LPIC59+8)
	.word	.LC24-(.LPIC52+8)
	.word	.LC11-(.LPIC53+8)
	.word	.LC23-(.LPIC50+8)
	.word	.LC9-(.LPIC51+8)
	.word	.LC25-(.LPIC56+8)
	.word	.LC11-(.LPIC57+8)
	.word	.LC23-(.LPIC54+8)
	.word	.LC9-(.LPIC55+8)
	.size	DBlockAllocWrap, .-DBlockAllocWrap
	.section	.rodata.str1.4
	.align	2
.LC27:
	.ascii	"DBlockAllocWrap( &pdHeader, EEEP_BLOCK_ID_EXP_EEPRO"
	.ascii	"M, stBlockLength, pExtI2C_cgf->aulMinSize[0], pExtI"
	.ascii	"2C_cgf->au8FillChar[0] )\000"
	.align	2
.LC28:
	.ascii	"EeePAddBlock(BHandel, pHeader, NULL, pExtI2C_cgf->a"
	.ascii	"ulInsideCrc[0])\000"
	.text
	.align	2
	.global	HandleEeePExpI2CBlock
	.syntax unified
	.arm
	.fpu vfpv3
	.type	HandleEeePExpI2CBlock, %function
HandleEeePExpI2CBlock:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r7, r1
	ldr	r1, .L121
	sub	sp, sp, #28
	mov	r3, #0
	ldr	r2, .L121+4
.LPIC71:
	add	r1, pc, r1
	ldr	r6, [r0, #52]
	mov	r0, #7
	ldr	r2, [r1, r2]
	ldr	r2, [r2]
	str	r2, [sp, #20]
	mov	r2, #0
	str	r3, [sp, #16]
	bl	EeePAlignLength(PLT)
	ldrb	r1, [r6, #12]	@ zero_extendqisi2
	mov	r2, r0
	ldr	r3, [r6, #8]
	add	r0, sp, #16
	str	r1, [sp]
	mov	r1, #241
	bl	DBlockAllocWrap(PLT)
	subs	r4, r0, #0
	bne	.L118
	ldr	r5, [sp, #16]
	ldrh	r1, [r6]
	add	r0, r5, #3
	bl	EeeP_Set16BitValue_BE(PLT)
	ldrh	r3, [r6, #2]
	mov	r2, r4
	mov	r0, r7
	mov	r1, r5
	strh	r3, [r5, #5]	@ unaligned
	ldr	r3, [r6, #4]
	bl	EeePAddBlock(PLT)
	subs	r4, r0, #0
	bne	.L119
.L112:
	mov	r0, r5
	bl	free(PLT)
.L109:
	ldr	r2, .L121+8
	ldr	r3, .L121+4
.LPIC70:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #20]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L120
	mov	r0, r4
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L118:
	ldr	ip, .L121+12
	movw	r3, #1207
	ldr	r0, .L121+16
	ldr	r2, .L121+20
	ldr	r1, .L121+24
.LPIC64:
	add	ip, pc, ip
.LPIC65:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC62:
	add	r2, pc, r2
.LPIC63:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L109
.L119:
	ldr	r1, .L121+28
	movw	r3, #1223
	ldr	r0, .L121+32
	ldr	r2, .L121+36
.LPIC69:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC68:
	add	r0, pc, r0
	ldr	r1, .L121+40
.LPIC66:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC67:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L112
.L120:
	bl	__stack_chk_fail(PLT)
.L122:
	.align	2
.L121:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC71+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC70+8)
	.word	.LC27-(.LPIC64+8)
	.word	.LC11-(.LPIC65+8)
	.word	.LC16-(.LPIC62+8)
	.word	.LC9-(.LPIC63+8)
	.word	.LC11-(.LPIC69+8)
	.word	.LC28-(.LPIC68+8)
	.word	.LC16-(.LPIC66+8)
	.word	.LC9-(.LPIC67+8)
	.size	HandleEeePExpI2CBlock, .-HandleEeePExpI2CBlock
	.section	.rodata.str1.4
	.align	2
.LC29:
	.ascii	"DBlockAllocWrap( &pdHeader, COM0R20_BLOCK_ID_SERIO_"
	.ascii	"DESC, stBlockLength, pCOM0Serial_cgf->aulMinSize[0]"
	.ascii	", pCOM0Serial_cgf->au8FillChar[0] )\000"
	.align	2
.LC30:
	.ascii	"EeePAddBlock(BHandel, pHeader, NULL, pCOM0Serial_cg"
	.ascii	"f->aulInsideCrc[0])\000"
	.text
	.align	2
	.global	HandleCOM0R20SerialCfgBlock
	.syntax unified
	.arm
	.fpu vfpv3
	.type	HandleCOM0R20SerialCfgBlock, %function
HandleCOM0R20SerialCfgBlock:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r7, r1
	ldr	r1, .L135
	sub	sp, sp, #28
	mov	r3, #0
	ldr	r2, .L135+4
.LPIC81:
	add	r1, pc, r1
	ldr	r6, [r0, #52]
	mov	r0, #8
	ldr	r2, [r1, r2]
	ldr	r2, [r2]
	str	r2, [sp, #20]
	mov	r2, #0
	str	r3, [sp, #16]
	bl	EeePAlignLength(PLT)
	ldrb	r1, [r6, #16]	@ zero_extendqisi2
	mov	r2, r0
	ldr	r3, [r6, #12]
	add	r0, sp, #16
	str	r1, [sp]
	mov	r1, #225
	bl	DBlockAllocWrap(PLT)
	subs	r4, r0, #0
	bne	.L132
	ldr	r5, [sp, #16]
	ldrh	r1, [r6]
	add	r0, r5, #4
	bl	EeeP_Set16BitValue_BE(PLT)
	ldrh	r1, [r6, #4]
	add	r0, r5, #6
	bl	EeeP_Set16BitValue_BE(PLT)
	ldrb	r3, [r6, #2]	@ zero_extendqisi2
	mov	r2, r4
	mov	r0, r7
	mov	r1, r5
	strb	r3, [r5, #3]
	ldr	r3, [r6, #8]
	bl	EeePAddBlock(PLT)
	subs	r4, r0, #0
	bne	.L133
.L126:
	mov	r0, r5
	bl	free(PLT)
.L123:
	ldr	r2, .L135+8
	ldr	r3, .L135+4
.LPIC80:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #20]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L134
	mov	r0, r4
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L132:
	ldr	ip, .L135+12
	movw	r3, #1244
	ldr	r0, .L135+16
	ldr	r2, .L135+20
	ldr	r1, .L135+24
.LPIC74:
	add	ip, pc, ip
.LPIC75:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC72:
	add	r2, pc, r2
.LPIC73:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L123
.L133:
	ldr	r1, .L135+28
	movw	r3, #1258
	ldr	r0, .L135+32
	ldr	r2, .L135+36
.LPIC79:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC78:
	add	r0, pc, r0
	ldr	r1, .L135+40
.LPIC76:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC77:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L126
.L134:
	bl	__stack_chk_fail(PLT)
.L136:
	.align	2
.L135:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC81+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC80+8)
	.word	.LC29-(.LPIC74+8)
	.word	.LC11-(.LPIC75+8)
	.word	.LC16-(.LPIC72+8)
	.word	.LC9-(.LPIC73+8)
	.word	.LC11-(.LPIC79+8)
	.word	.LC30-(.LPIC78+8)
	.word	.LC16-(.LPIC76+8)
	.word	.LC9-(.LPIC77+8)
	.size	HandleCOM0R20SerialCfgBlock, .-HandleCOM0R20SerialCfgBlock
	.section	.rodata.str1.4
	.align	2
.LC31:
	.ascii	"SwitchPFA\000"
	.align	2
.LC32:
	.ascii	"GetElementDesc((CfgNodeGen_t*)pDesc, (CfgNodeGen_t*"
	.ascii	"*)&pElementsDesc, \"SwitchPFA\", CfgElementNode)\000"
	.align	2
.LC33:
	.ascii	"DBlockAllocWrap( &pdHeader, COM0R20_BLOCK_ID_EXP_CA"
	.ascii	"RD_DESC, stBlockLength, pCOM0ExpCard_cgf->aulMinSiz"
	.ascii	"e[0], pCOM0ExpCard_cgf->au8FillChar[0] )\000"
	.align	2
.LC34:
	.ascii	"EeePAddBlock(BHandel, pHeader, NULL, pCOM0ExpCard_c"
	.ascii	"gf->aulInsideCrc[0])\000"
	.text
	.align	2
	.global	HandleCOM0R20ExpCardCfgBlock
	.syntax unified
	.arm
	.fpu vfpv3
	.type	HandleCOM0R20ExpCardCfgBlock, %function
HandleCOM0R20ExpCardCfgBlock:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L173
	mov	r3, #0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r1
	ldr	r1, .L173+4
	sub	sp, sp, #36
.LPIC96:
	add	ip, pc, ip
	ldr	r2, .L173+8
	ldr	r1, [ip, r1]
	ldr	r6, [r0, #52]
.LPIC82:
	add	r2, pc, r2
	ldr	r1, [r1]
	str	r1, [sp, #28]
	mov	r1, #0
	str	r3, [sp, #20]
	add	r1, sp, #24
	mov	r3, #2
	bl	GetElementDesc(PLT)
	subs	r4, r0, #0
	bne	.L169
	ldr	r3, [sp, #24]
	ldr	r5, [r3, #12]
	add	r9, r5, #5
	mov	r0, r9
	bl	EeePAlignLength(PLT)
	ldrb	r1, [r6, #40]	@ zero_extendqisi2
	mov	r2, r0
	ldr	r3, [r6, #36]
	add	r0, sp, #20
	str	r1, [sp]
	mov	r1, #224
	bl	DBlockAllocWrap(PLT)
	subs	r4, r0, #0
	bne	.L170
	mov	r0, r6
	ldr	r8, [sp, #20]
	ldrh	r3, [r0], #2
	cmp	r5, #0
	sub	lr, r5, #1
	add	ip, r8, #5
	strh	r3, [r8, #3]	@ unaligned
	beq	.L141
	add	r3, r6, #3
	mov	r2, ip
	sub	r3, ip, r3
	cmp	r3, #2
	cmphi	lr, #5
	bls	.L142
	cmp	r5, #35
	lsr	r9, r5, #2
	mov	r3, r0
	bls	.L151
	sub	r10, r9, #9
	bic	r10, r10, #7
	add	r1, r10, #8
.L144:
	ldr	fp, [r3]	@ unaligned
	cmp	r4, r10
	pld	[r3, #116]
	add	r4, r4, #8
	add	r3, r3, #32
	add	r2, r2, #32
	str	fp, [r2, #-32]	@ unaligned
	ldr	fp, [r3, #-28]	@ unaligned
	str	fp, [r2, #-28]	@ unaligned
	ldr	fp, [r3, #-24]	@ unaligned
	str	fp, [r2, #-24]	@ unaligned
	ldr	fp, [r3, #-20]	@ unaligned
	str	fp, [r2, #-20]	@ unaligned
	ldr	fp, [r3, #-16]	@ unaligned
	str	fp, [r2, #-16]	@ unaligned
	ldr	fp, [r3, #-12]	@ unaligned
	str	fp, [r2, #-12]	@ unaligned
	ldr	fp, [r3, #-8]	@ unaligned
	str	fp, [r2, #-8]	@ unaligned
	ldr	fp, [r3, #-4]	@ unaligned
	str	fp, [r2, #-4]	@ unaligned
	bne	.L144
.L145:
	ldr	r4, [r3], #4	@ unaligned
	add	r1, r1, #1
	cmp	r9, r1
	str	r4, [r2], #4	@ unaligned
	bhi	.L145
	bic	r3, r5, #3
	cmp	r5, r3
	sub	lr, lr, r3
	add	r2, ip, r3
	add	r1, r0, r3
	beq	.L148
	ldrb	r0, [r0, r3]	@ zero_extendqisi2
	cmp	lr, #0
	strb	r0, [ip, r3]
	beq	.L148
	ldrb	r3, [r1, #1]	@ zero_extendqisi2
	cmp	lr, #1
	strb	r3, [r2, #1]
	ldrbne	r3, [r1, #2]	@ zero_extendqisi2
	strbne	r3, [r2, #2]
.L148:
	add	ip, ip, r5
.L141:
	mvn	r3, #0
	mov	r0, r7
	strb	r3, [ip]
	mov	r2, #0
	ldr	r3, [r6, #32]
	mov	r1, r8
	bl	EeePAddBlock(PLT)
	subs	r4, r0, #0
	bne	.L171
.L149:
	mov	r0, r8
	bl	free(PLT)
.L137:
	ldr	r2, .L173+12
	ldr	r3, .L173+4
.LPIC95:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #28]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L172
	mov	r0, r4
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L169:
	ldr	ip, .L173+16
	movw	r3, #1281
	ldr	r0, .L173+20
	ldr	r2, .L173+24
	ldr	r1, .L173+28
.LPIC85:
	add	ip, pc, ip
.LPIC86:
	add	r0, pc, r0
.LPIC83:
	add	r2, pc, r2
.LPIC84:
	add	r1, pc, r1
.L168:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	b	.L137
.L171:
	ldr	r1, .L173+32
	movw	r3, #1315
	ldr	r0, .L173+36
	ldr	r2, .L173+40
.LPIC94:
	add	r1, pc, r1
	str	r4, [sp]
	str	r1, [sp, #4]
.LPIC93:
	add	r0, pc, r0
	ldr	r1, .L173+44
.LPIC91:
	add	r2, pc, r2
	str	r0, [sp, #8]
	mov	r0, #69
.LPIC92:
	add	r1, pc, r1
	bl	siFormattedMessage_SC(PLT)
	b	.L149
.L170:
	ldr	ip, .L173+48
	movw	r3, #1289
	ldr	r0, .L173+52
	ldr	r2, .L173+56
	ldr	r1, .L173+60
.LPIC89:
	add	ip, pc, ip
.LPIC90:
	add	r0, pc, r0
.LPIC87:
	add	r2, pc, r2
.LPIC88:
	add	r1, pc, r1
	b	.L168
.L142:
	add	r9, r8, r9
	add	r2, r6, #1
	mov	r3, ip
.L147:
	ldrb	r1, [r2, #1]!	@ zero_extendqisi2
	strb	r1, [r3], #1
	cmp	r3, r9
	bne	.L147
	b	.L148
.L151:
	mov	r1, r4
	b	.L145
.L172:
	bl	__stack_chk_fail(PLT)
.L174:
	.align	2
.L173:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC96+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC31-(.LPIC82+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC95+8)
	.word	.LC32-(.LPIC85+8)
	.word	.LC11-(.LPIC86+8)
	.word	.LC16-(.LPIC83+8)
	.word	.LC9-(.LPIC84+8)
	.word	.LC11-(.LPIC94+8)
	.word	.LC34-(.LPIC93+8)
	.word	.LC16-(.LPIC91+8)
	.word	.LC9-(.LPIC92+8)
	.word	.LC33-(.LPIC89+8)
	.word	.LC11-(.LPIC90+8)
	.word	.LC16-(.LPIC87+8)
	.word	.LC9-(.LPIC88+8)
	.size	HandleCOM0R20ExpCardCfgBlock, .-HandleCOM0R20ExpCardCfgBlock
	.section	.rodata.str1.4
	.align	2
.LC35:
	.ascii	"CElements\000"
	.align	2
.LC36:
	.ascii	"GetElementDesc((CfgNodeGen_t*)pDesc, (CfgNodeGen_t*"
	.ascii	"*)&pElementsDesc, \"CElements\", CfgElementNode)\000"
	.align	2
.LC37:
	.ascii	"DBlockAllocWrap( &pdHeader, EEEP_BLOCK_ID_SMBIOS, s"
	.ascii	"tBlockLength, pSmbiosChassis_cgf->aulMinSize[0], pS"
	.ascii	"mbiosChassis_cgf->au8FillChar[0] )\000"
	.align	2
.LC38:
	.ascii	"EeePAddBlock(BHandel, pHeader, NULL, pSmbiosChassis"
	.ascii	"_cgf->aulInsideCrc[0])\000"
	.text
	.align	2
	.global	HandleSmbiosChassisBlock
	.syntax unified
	.arm
	.fpu vfpv3
	.type	HandleSmbiosChassisBlock, %function
HandleSmbiosChassisBlock:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L227
	mov	r3, #0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r8, r1
	ldr	r1, .L227+4
	sub	sp, sp, #32
.LPIC111:
	add	ip, pc, ip
	ldr	r2, .L227+8
	ldr	r1, [ip, r1]
	ldr	r5, [r0, #52]
.LPIC97:
	add	r2, pc, r2
	ldr	r1, [r1]
	str	r1, [sp, #28]
	mov	r1, #0
	str	r3, [sp, #20]
	add	r1, sp, #24
	mov	r3, #2
	bl	GetElementDesc(PLT)
	subs	r4, r0, #0
	bne	.L223
	ldr	r0, [r5, #4]
	cmp	r0, #0
	beq	.L178
	bl	strlen(PLT)
	add	r4, r0, #1
.L178:
	ldr	r0, [r5, #12]
	cmp	r0, #0
	beq	.L179
	add	r4, r4, #1
	bl	strlen(PLT)
	add	r4, r0, r4
.L179:
	ldr	r0, [r5, #16]
	cmp	r0, #0
	beq	.L180
	add	r4, r4, #1
	bl	strlen(PLT)
	add	r4, r0, r4
.L180:
	ldr	r0, [r5, #20]
	cmp	r0, #0
	beq	.L181
	add	r4, r4, #1
	bl	strlen(PLT)
	add	r4, r0, r4
.L181:
	ldr	r3, [sp, #24]
	ldr	r7, [r3, #12]
	add	r7, r7, r7, lsl #1
	add	r0, r7, #25
	add	r0, r0, r4
	bl	EeePAlignLength(PLT)
	ldrb	r1, [r5, #40]	@ zero_extendqisi2
	mov	r2, r0
	ldr	r3, [r5, #36]
	add	r0, sp, #20
	str	r1, [sp]
	mov	r1, #208
	bl	DBlockAllocWrap(PLT)
	subs	r4, r0, #0
	bne	.L224
	ldr	r6, [sp, #20]
	ldrb	r3, [r5, #8]	@ zero_extendqisi2
	add	r0, r6, #16
	add	r9, r6, #24
	strb	r3, [r6, #8]
	ldr	r1, [r5, #24]
	bl	EeeP_Set32BitValue_BE(PLT)
	ldrh	r3, [r5, #28]
	add	r2, r5, #41
	strh	r3, [r6, #20]	@ unaligned
	ldr	r3, [sp, #24]
	ldr	lr, [r3, #12]
	mov	r3, #3
	strb	r3, [r6, #23]
	strb	lr, [r6, #22]
	ands	lr, lr, #255
	beq	.L183
	sub	r3, lr, #1
	cmp	r3, #9
	bls	.L193
	add	ip, r6, #54
	add	r3, r5, #71
	mov	r10, lr
.L185:
	ldrh	r1, [r3, #-30]	@ unaligned
	ldrb	r2, [r3, #-28]	@ zero_extendqisi2
	pld	[r3, #57]
	strh	r1, [ip, #-30]	@ unaligned
	strb	r2, [ip, #-28]
	ldrh	r1, [r3, #-27]	@ unaligned
	ldrb	r2, [r3, #-25]	@ zero_extendqisi2
	strh	r1, [ip, #-27]	@ unaligned
	strb	r2, [ip, #-25]
	ldrh	r1, [r3, #-24]	@ unaligned
	ldrb	r2, [r3, #-22]	@ zero_extendqisi2
	strh	r1, [ip, #-24]	@ unaligned
	strb	r2, [ip, #-22]
	ldrh	r1, [r3, #-21]	@ unaligned
	ldrb	r2, [r3, #-19]	@ zero_extendqisi2
	strh	r1, [ip, #-21]	@ unaligned
	strb	r2, [ip, #-19]
	ldrh	r1, [r3, #-18]	@ unaligned
	ldrb	r2, [r3, #-16]	@ zero_extendqisi2
	strh	r1, [ip, #-18]	@ unaligned
	strb	r2, [ip, #-16]
	ldrh	r1, [r3, #-15]	@ unaligned
	ldrb	r2, [r3, #-13]	@ zero_extendqisi2
	strh	r1, [ip, #-15]	@ unaligned
	strb	r2, [ip, #-13]
	ldrh	r1, [r3, #-12]	@ unaligned
	ldrb	r2, [r3, #-10]	@ zero_extendqisi2
	strh	r1, [ip, #-12]	@ unaligned
	strb	r2, [ip, #-10]
	ldrh	r1, [r3, #-9]	@ unaligned
	ldrb	r2, [r3, #-7]	@ zero_extendqisi2
	strh	r1, [ip, #-9]	@ unaligned
	strb	r2, [ip, #-7]
	ldrb	r2, [r3, #-4]	@ zero_extendqisi2
	ldrh	r1, [r3, #-6]	@ unaligned
	strb	r2, [ip, #-4]
	sub	r2, r10, #11
	strh	r1, [ip, #-6]	@ unaligned
	cmp	r2, #9
	ldrh	r1, [r3, #-3]	@ unaligned
	sub	r10, r10, #10
	ldrb	r2, [r3, #-1]	@ zero_extendqisi2
	strh	r1, [ip, #-3]	@ unaligned
	mov	r1, ip
	strb	r2, [ip, #-1]
	mov	r2, r3
	add	ip, ip, #30
	add	r3, r3, #30
	bhi	.L185
.L184:
	add	r10, r10, r10, lsl #1
.L186:
	ldrh	ip, [r2, r4]	@ unaligned
	add	r3, r2, r4
	ldrb	r0, [r3, #2]	@ zero_extendqisi2
	add	r3, r1, r4
	strh	ip, [r1, r4]	@ unaligned
	add	r4, r4, #3
	cmp	r10, r4
	strb	r0, [r3, #2]
	bne	.L186
	add	lr, lr, lr, lsl #1
	add	r9, r9, lr
.L183:
	ldr	r1, [r5, #4]
	cmp	r1, #0
	beq	.L194
	mov	r3, #1
	mov	r0, r9
	strb	r3, [r6, #7]
	mov	r10, #4
	bl	strcpy(PLT)
	ldr	r0, [r5, #4]
	mov	r4, #3
	bl	strlen(PLT)
	add	r0, r0, #1
	mov	r3, #2
	add	r9, r9, r0
.L187:
	ldr	r1, [r5, #12]
	cmp	r1, #0
	beq	.L188
	strb	r3, [r6, #9]
	mov	r0, r9
	bl	strcpy(PLT)
	ldr	r0, [r5, #12]
	bl	strlen(PLT)
	add	r0, r0, #1
	mov	r3, r4
	add	r9, r9, r0
	mov	r4, r10
.L188:
	ldr	r1, [r5, #16]
	cmp	r1, #0
	beq	.L189
	strb	r3, [r6, #10]
	mov	r0, r9
	bl	strcpy(PLT)
	ldr	r0, [r5, #16]
	bl	strlen(PLT)
	add	r0, r0, #1
	mov	r3, r4
	add	r9, r9, r0
.L189:
	ldr	r1, [r5, #20]
	cmp	r1, #0
	beq	.L190
	mov	r0, r9
	strb	r3, [r6, #11]
	bl	strcpy(PLT)
.L190:
	mov	r3, #3
	add	r7, r7, #21
	strb	r3, [r6, #3]
	add	r0, r6, #5
	strb	r7, [r6, #4]
	ldrh	r1, [r5]
	bl	EeeP_Set16BitValue_BE(PLT)
	ldr	r3, [r5, #32]
	mov	r2, #0
	mov	r1, r6
	mov	r0, r8
	bl	EeePAddBlock(PLT)
	subs	r4, r0, #0
	bne	.L225
	mov	r0, r6
	bl	free(PLT)
.L177:
.L175:
	ldr	r2, .L227+12
	ldr	r3, .L227+4
.LPIC110:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #28]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L226
	mov	r0, r4
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L194:
	mov	r10, #3
	mov	r4, #2
	mov	r3, #1
	b	.L187
.L224:
	ldr	ip, .L227+16
	movw	r3, #1364
	ldr	r0, .L227+20
	ldr	r2, .L227+24
	ldr	r1, .L227+28
.LPIC104:
	add	ip, pc, ip
.LPIC105:
	add	r0, pc, r0
.LPIC102:
	add	r2, pc, r2
.LPIC103:
	add	r1, pc, r1
.L222:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	b	.L175
.L223:
	ldr	ip, .L227+32
	movw	r3, #1352
	ldr	r0, .L227+36
	ldr	r2, .L227+40
	ldr	r1, .L227+44
.LPIC100:
	add	ip, pc, ip
.LPIC101:
	add	r0, pc, r0
.LPIC98:
	add	r2, pc, r2
.LPIC99:
	add	r1, pc, r1
	b	.L222
.L225:
	ldr	ip, .L227+48
	movw	r3, #1405
	ldr	r0, .L227+52
	ldr	r2, .L227+56
	ldr	r1, .L227+60
.LPIC108:
	add	ip, pc, ip
.LPIC109:
	add	r0, pc, r0
.LPIC106:
	add	r2, pc, r2
.LPIC107:
	add	r1, pc, r1
	b	.L222
.L193:
	mov	r1, r9
	mov	r10, lr
	b	.L184
.L226:
	bl	__stack_chk_fail(PLT)
.L228:
	.align	2
.L227:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC111+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC35-(.LPIC97+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC110+8)
	.word	.LC37-(.LPIC104+8)
	.word	.LC11-(.LPIC105+8)
	.word	.LC16-(.LPIC102+8)
	.word	.LC9-(.LPIC103+8)
	.word	.LC36-(.LPIC100+8)
	.word	.LC11-(.LPIC101+8)
	.word	.LC16-(.LPIC98+8)
	.word	.LC9-(.LPIC99+8)
	.word	.LC38-(.LPIC108+8)
	.word	.LC11-(.LPIC109+8)
	.word	.LC16-(.LPIC106+8)
	.word	.LC9-(.LPIC107+8)
	.size	HandleSmbiosChassisBlock, .-HandleSmbiosChassisBlock
	.section	.rodata.str1.4
	.align	2
.LC39:
	.ascii	"DBlockAllocWrap( &pdHeader, EEEP_BLOCK_ID_SMBIOS, s"
	.ascii	"tBlockLength, pSmbiosSystem_cgf->aulMinSize[0], pSm"
	.ascii	"biosSystem_cgf->au8FillChar[0] )\000"
	.align	2
.LC40:
	.ascii	"EeePAddBlock(BHandel, pHeader, NULL, pSmbiosSystem_"
	.ascii	"cgf->aulInsideCrc[0])\000"
	.text
	.align	2
	.global	HandleSmbiosSystemBlock
	.syntax unified
	.arm
	.fpu vfpv3
	.type	HandleSmbiosSystemBlock, %function
HandleSmbiosSystemBlock:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r1
	ldr	r5, [r0, #52]
	mov	r3, #0
	sub	sp, sp, #28
	ldr	r1, .L283
	ldr	r2, .L283+4
	ldr	r0, [r5, #4]
.LPIC121:
	add	r1, pc, r1
	ldr	r2, [r1, r2]
	cmp	r0, r3
	moveq	r4, r0
	ldr	r2, [r2]
	str	r2, [sp, #20]
	mov	r2, #0
	str	r3, [sp, #16]
	beq	.L230
	bl	strlen(PLT)
	add	r4, r0, #1
.L230:
	ldr	r0, [r5, #8]
	cmp	r0, #0
	beq	.L231
	add	r4, r4, #1
	bl	strlen(PLT)
	add	r4, r0, r4
.L231:
	ldr	r0, [r5, #12]
	cmp	r0, #0
	beq	.L232
	add	r4, r4, #1
	bl	strlen(PLT)
	add	r4, r0, r4
.L232:
	ldr	r0, [r5, #16]
	cmp	r0, #0
	beq	.L233
	add	r4, r4, #1
	bl	strlen(PLT)
	add	r4, r0, r4
.L233:
	ldr	r0, [r5, #36]
	cmp	r0, #0
	beq	.L234
	add	r4, r4, #1
	bl	strlen(PLT)
	add	r4, r0, r4
.L234:
	ldr	r0, [r5, #52]
	cmp	r0, #0
	beq	.L235
	add	r4, r4, #1
	bl	strlen(PLT)
	add	r4, r0, r4
.L235:
	add	r0, r4, #31
	bl	EeePAlignLength(PLT)
	ldrb	r1, [r5, #48]	@ zero_extendqisi2
	mov	r2, r0
	ldr	r3, [r5, #44]
	add	r0, sp, #16
	str	r1, [sp]
	mov	r1, #208
	bl	DBlockAllocWrap(PLT)
	subs	r4, r0, #0
	bne	.L280
	ldr	lr, [r5, #4]
	add	ip, r5, #20
	ldmia	ip!, {r0, r1, r2, r3}
	ldr	r7, [sp, #16]
	cmp	lr, #0
	add	r4, r7, #30
	str	r0, [r7, #11]	@ unaligned
	str	r1, [r7, #15]	@ unaligned
	str	r2, [r7, #19]	@ unaligned
	str	r3, [r7, #23]	@ unaligned
	beq	.L247
	mov	r3, #1
	mov	r1, lr
	strb	r3, [r7, #7]
	mov	r0, r4
	bl	strcpy(PLT)
	ldr	r0, [r5, #4]
	mov	fp, #6
	bl	strlen(PLT)
	add	r0, r0, #1
	mov	r10, #5
	add	r4, r4, r0
	mov	r9, #4
	mov	r8, #3
	mov	r3, #2
.L238:
	ldr	r1, [r5, #8]
	cmp	r1, #0
	beq	.L239
	strb	r3, [r7, #8]
	mov	r0, r4
	bl	strcpy(PLT)
	ldr	r0, [r5, #8]
	bl	strlen(PLT)
	add	r0, r0, #1
	mov	r3, r8
	add	r4, r4, r0
	mov	r8, r9
	mov	r9, r10
	mov	r10, fp
.L239:
	ldr	r1, [r5, #12]
	cmp	r1, #0
	beq	.L240
	strb	r3, [r7, #9]
	mov	r0, r4
	bl	strcpy(PLT)
	ldr	r0, [r5, #12]
	bl	strlen(PLT)
	add	r0, r0, #1
	mov	r3, r8
	add	r4, r4, r0
	mov	r8, r9
	mov	r9, r10
.L240:
	ldr	r1, [r5, #16]
	cmp	r1, #0
	beq	.L241
	strb	r3, [r7, #10]
	mov	r0, r4
	bl	strcpy(PLT)
	ldr	r0, [r5, #16]
	bl	strlen(PLT)
	add	r0, r0, #1
	mov	r3, r8
	add	r4, r4, r0
	mov	r8, r9
.L241:
	ldr	r1, [r5, #36]
	cmp	r1, #0
	beq	.L242
	strb	r3, [r7, #28]
	mov	r0, r4
	bl	strcpy(PLT)
	ldr	r0, [r5, #36]
	bl	strlen(PLT)
	add	r0, r0, #1
	mov	r3, r8
	add	r4, r4, r0
.L242:
	ldr	r1, [r5, #52]
	cmp	r1, #0
	beq	.L243
	mov	r0, r4
	strb	r3, [r7, #29]
	bl	strcpy(PLT)
.L243:
	movw	r3, #6913
	add	r0, r7, #5
	strh	r3, [r7, #3]	@ unaligned
	ldrh	r1, [r5]
	bl	EeeP_Set16BitValue_BE(PLT)
	ldr	r3, [r5, #40]
	mov	r2, #0
	mov	r1, r7
	mov	r0, r6
	bl	EeePAddBlock(PLT)
	subs	r4, r0, #0
	bne	.L281
	mov	r0, r7
	bl	free(PLT)
.L237:
.L229:
	ldr	r2, .L283+8
	ldr	r3, .L283+4
.LPIC120:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #20]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L282
	mov	r0, r4
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L247:
	mov	fp, #5
	mov	r10, #4
	mov	r9, #3
	mov	r8, #2
	mov	r3, #1
	b	.L238
.L281:
	ldr	ip, .L283+12
	movw	r3, #1467
	ldr	r0, .L283+16
	ldr	r2, .L283+20
	ldr	r1, .L283+24
.LPIC118:
	add	ip, pc, ip
.LPIC119:
	add	r0, pc, r0
.LPIC116:
	add	r2, pc, r2
.LPIC117:
	add	r1, pc, r1
.L279:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	b	.L229
.L280:
	ldr	ip, .L283+28
	mov	r3, #1440
	ldr	r0, .L283+32
	ldr	r2, .L283+36
	ldr	r1, .L283+40
.LPIC114:
	add	ip, pc, ip
.LPIC115:
	add	r0, pc, r0
.LPIC112:
	add	r2, pc, r2
.LPIC113:
	add	r1, pc, r1
	b	.L279
.L282:
	bl	__stack_chk_fail(PLT)
.L284:
	.align	2
.L283:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC121+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC120+8)
	.word	.LC40-(.LPIC118+8)
	.word	.LC11-(.LPIC119+8)
	.word	.LC16-(.LPIC116+8)
	.word	.LC9-(.LPIC117+8)
	.word	.LC39-(.LPIC114+8)
	.word	.LC11-(.LPIC115+8)
	.word	.LC16-(.LPIC112+8)
	.word	.LC9-(.LPIC113+8)
	.size	HandleSmbiosSystemBlock, .-HandleSmbiosSystemBlock
	.section	.rodata.str1.4
	.align	2
.LC41:
	.ascii	"DBlockAllocWrap( &pdHeader, EEEP_BLOCK_ID_SMBIOS, s"
	.ascii	"tBlockLength, pSmbiosModule_cgf->aulMinSize[0], pSm"
	.ascii	"biosModule_cgf->au8FillChar[0] )\000"
	.align	2
.LC42:
	.ascii	"EeePAddBlock(BHandel, pHeader, NULL, pSmbiosModule_"
	.ascii	"cgf->aulInsideCrc[0])\000"
	.text
	.align	2
	.global	HandleSmbiosModuleBlock
	.syntax unified
	.arm
	.fpu vfpv3
	.type	HandleSmbiosModuleBlock, %function
HandleSmbiosModuleBlock:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #44
	ldr	ip, .L349
	mov	r3, r0
	mov	r0, #0
	str	r1, [sp, #24]
	ldr	r1, .L349+4
.LPIC131:
	add	ip, pc, ip
	ldr	r5, [r3, #52]
	ldr	r2, [r3, #12]
	ldr	r1, [ip, r1]
	ldr	r7, [r3, #28]
	sub	r2, r2, #1
	ldr	r1, [r1]
	str	r1, [sp, #36]
	mov	r1, #0
	str	r0, [sp, #32]
	ldr	r0, [r5, #4]
	ldr	r1, [r3, #20]
	cmp	r0, #0
	moveq	r4, r0
	mla	r7, r1, r2, r7
	beq	.L286
	bl	strlen(PLT)
	add	r4, r0, #1
.L286:
	ldr	r0, [r5, #8]
	cmp	r0, #0
	beq	.L287
	add	r4, r4, #1
	bl	strlen(PLT)
	add	r4, r0, r4
.L287:
	ldr	r0, [r5, #12]
	cmp	r0, #0
	beq	.L288
	add	r4, r4, #1
	bl	strlen(PLT)
	add	r4, r0, r4
.L288:
	ldr	r0, [r5, #16]
	cmp	r0, #0
	beq	.L289
	add	r4, r4, #1
	bl	strlen(PLT)
	add	r4, r0, r4
.L289:
	ldr	r0, [r5, #20]
	cmp	r0, #0
	beq	.L290
	add	r4, r4, #1
	bl	strlen(PLT)
	add	r4, r0, r4
.L290:
	ldr	r0, [r5, #32]
	cmp	r0, #0
	beq	.L291
	add	r4, r4, #1
	bl	strlen(PLT)
	add	r4, r0, r4
.L291:
	ldr	r9, [r7, #12]
	lsl	r9, r9, #1
	add	r0, r9, #19
	add	r3, r9, #15
	add	r0, r0, r4
	str	r3, [sp, #20]
	bl	EeePAlignLength(PLT)
	ldrb	r1, [r5, #48]	@ zero_extendqisi2
	mov	r2, r0
	ldr	r3, [r5, #44]
	add	r0, sp, #32
	str	r1, [sp]
	mov	r1, #208
	bl	DBlockAllocWrap(PLT)
	subs	r4, r0, #0
	bne	.L346
	ldr	r6, [sp, #32]
	add	fp, r5, #50
	strb	r4, [r6, #12]
	add	r0, r6, #14
	ldrb	r3, [r5, #24]	@ zero_extendqisi2
	strb	r3, [r6, #12]
	ldrb	r2, [r5, #25]	@ zero_extendqisi2
	orr	r3, r3, r2
	strb	r3, [r6, #12]
	ldrb	r2, [r5, #26]	@ zero_extendqisi2
	orr	r3, r3, r2
	strb	r3, [r6, #12]
	ldrb	r2, [r5, #27]	@ zero_extendqisi2
	orr	r3, r3, r2
	strb	r3, [r6, #12]
	ldrb	r2, [r5, #28]	@ zero_extendqisi2
	orr	r3, r3, r2
	strb	r3, [r6, #12]
	ldrh	r1, [r5, #36]
	bl	EeeP_Set16BitValue_BE(PLT)
	ldrb	r3, [r5, #38]	@ zero_extendqisi2
	strb	r3, [r6, #16]
	ldr	r10, [r7, #12]
	add	r7, r6, #18
	strb	r10, [r6, #17]
	ands	r10, r10, #255
	beq	.L294
	sub	r3, r10, #1
	cmp	r3, #15
	bls	.L307
	add	r8, r5, #82
	mov	r4, r7
	mov	r9, r10
.L296:
	ldrh	r1, [r8, #-32]
	mov	r0, r4
	pld	[r8, #-8]
	mov	fp, r8
	bl	EeeP_Set16BitValue_BE(PLT)
	ldrh	r1, [r8, #-30]
	add	r0, r4, #2
	bl	EeeP_Set16BitValue_BE(PLT)
	ldrh	r1, [r8, #-28]
	add	r0, r4, #4
	bl	EeeP_Set16BitValue_BE(PLT)
	ldrh	r1, [r8, #-26]
	add	r0, r4, #6
	bl	EeeP_Set16BitValue_BE(PLT)
	ldrh	r1, [r8, #-24]
	add	r0, r4, #8
	bl	EeeP_Set16BitValue_BE(PLT)
	ldrh	r1, [r8, #-22]
	add	r0, r4, #10
	bl	EeeP_Set16BitValue_BE(PLT)
	ldrh	r1, [r8, #-20]
	add	r0, r4, #12
	bl	EeeP_Set16BitValue_BE(PLT)
	ldrh	r1, [r8, #-18]
	add	r0, r4, #14
	bl	EeeP_Set16BitValue_BE(PLT)
	ldrh	r1, [r8, #-16]
	add	r0, r4, #16
	bl	EeeP_Set16BitValue_BE(PLT)
	ldrh	r1, [r8, #-14]
	add	r0, r4, #18
	bl	EeeP_Set16BitValue_BE(PLT)
	ldrh	r1, [r8, #-12]
	add	r0, r4, #20
	bl	EeeP_Set16BitValue_BE(PLT)
	ldrh	r1, [r8, #-10]
	add	r0, r4, #22
	bl	EeeP_Set16BitValue_BE(PLT)
	ldrh	r1, [r8, #-8]
	add	r0, r4, #24
	bl	EeeP_Set16BitValue_BE(PLT)
	ldrh	r1, [r8, #-6]
	add	r0, r4, #26
	bl	EeeP_Set16BitValue_BE(PLT)
	ldrh	r1, [r8, #-4]
	add	r0, r4, #28
	bl	EeeP_Set16BitValue_BE(PLT)
	ldrh	r1, [r8, #-2]
	add	r0, r4, #30
	bl	EeeP_Set16BitValue_BE(PLT)
	sub	r2, r9, #17
	add	r4, r4, #32
	cmp	r2, #15
	sub	r9, r9, #16
	add	r8, r8, #32
	bhi	.L296
.L297:
	mov	r0, r4
	ldrh	r1, [fp], #2
	bl	EeeP_Set16BitValue_BE(PLT)
	subs	r9, r9, #1
	add	r4, r4, #2
	bne	.L297
	add	r7, r7, r10, lsl #1
.L294:
	ldr	r1, [r5, #4]
	cmp	r1, #0
	beq	.L309
	mov	r3, #1
	mov	r0, r7
	strb	r3, [r6, #7]
	mov	r10, #5
	bl	strcpy(PLT)
	ldr	r0, [r5, #4]
	mov	r8, #4
	bl	strlen(PLT)
	add	r0, r0, #1
	mov	r2, #6
	add	r7, r7, r0
	mov	r4, #3
	mov	r3, #2
.L298:
	ldr	r1, [r5, #8]
	str	r2, [sp, #28]
	cmp	r1, #0
	beq	.L299
	strb	r3, [r6, #8]
	mov	r0, r7
	bl	strcpy(PLT)
	ldr	r0, [r5, #8]
	bl	strlen(PLT)
	ldr	r2, [sp, #28]
	add	r0, r0, #1
	mov	r3, r4
	add	r7, r7, r0
	mov	r4, r8
	mov	r8, r10
	mov	r10, r2
.L299:
	ldr	r1, [r5, #12]
	cmp	r1, #0
	beq	.L300
	strb	r3, [r6, #9]
	mov	r0, r7
	bl	strcpy(PLT)
	ldr	r0, [r5, #12]
	bl	strlen(PLT)
	add	r0, r0, #1
	mov	r3, r4
	add	r7, r7, r0
	mov	r4, r8
	mov	r8, r10
.L300:
	ldr	r1, [r5, #16]
	cmp	r1, #0
	beq	.L301
	strb	r3, [r6, #10]
	mov	r0, r7
	bl	strcpy(PLT)
	ldr	r0, [r5, #16]
	bl	strlen(PLT)
	add	r0, r0, #1
	mov	r3, r4
	add	r7, r7, r0
	mov	r4, r8
.L301:
	ldr	r1, [r5, #20]
	cmp	r1, #0
	beq	.L302
	strb	r3, [r6, #11]
	mov	r0, r7
	bl	strcpy(PLT)
	ldr	r0, [r5, #20]
	bl	strlen(PLT)
	add	r0, r0, #1
	mov	r3, r4
	add	r7, r7, r0
.L302:
	ldr	r1, [r5, #32]
	cmp	r1, #0
	beq	.L303
	mov	r0, r7
	strb	r3, [r6, #13]
	bl	strcpy(PLT)
.L303:
	ldr	r2, [sp, #20]
	mov	r3, #2
	strb	r3, [r6, #3]
	add	r0, r6, #5
	strb	r2, [r6, #4]
	ldrh	r1, [r5]
	bl	EeeP_Set16BitValue_BE(PLT)
	ldr	r3, [r5, #40]
	mov	r2, #0
	ldr	r0, [sp, #24]
	mov	r1, r6
	bl	EeePAddBlock(PLT)
	subs	r4, r0, #0
	bne	.L347
	mov	r0, r6
	bl	free(PLT)
.L293:
.L285:
	ldr	r2, .L349+8
	ldr	r3, .L349+4
.LPIC130:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #36]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L348
	mov	r0, r4
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L309:
	mov	r2, #5
	mov	r10, #4
	mov	r8, #3
	mov	r4, #2
	mov	r3, #1
	b	.L298
.L347:
	ldr	ip, .L349+12
	movw	r3, #1560
	ldr	r0, .L349+16
	ldr	r2, .L349+20
	ldr	r1, .L349+24
.LPIC128:
	add	ip, pc, ip
.LPIC129:
	add	r0, pc, r0
.LPIC126:
	add	r2, pc, r2
.LPIC127:
	add	r1, pc, r1
.L345:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	b	.L285
.L346:
	ldr	ip, .L349+28
	movw	r3, #1509
	ldr	r0, .L349+32
	ldr	r2, .L349+36
	ldr	r1, .L349+40
.LPIC124:
	add	ip, pc, ip
.LPIC125:
	add	r0, pc, r0
.LPIC122:
	add	r2, pc, r2
.LPIC123:
	add	r1, pc, r1
	b	.L345
.L307:
	mov	r4, r7
	mov	r9, r10
	b	.L297
.L348:
	bl	__stack_chk_fail(PLT)
.L350:
	.align	2
.L349:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC131+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC130+8)
	.word	.LC42-(.LPIC128+8)
	.word	.LC11-(.LPIC129+8)
	.word	.LC16-(.LPIC126+8)
	.word	.LC9-(.LPIC127+8)
	.word	.LC41-(.LPIC124+8)
	.word	.LC11-(.LPIC125+8)
	.word	.LC16-(.LPIC122+8)
	.word	.LC9-(.LPIC123+8)
	.size	HandleSmbiosModuleBlock, .-HandleSmbiosModuleBlock
	.section	.rodata.str1.4
	.align	2
.LC43:
	.ascii	"ERROR: Opening %s\012\000"
	.align	2
.LC44:
	.ascii	"DBlockAllocWrap( &pdHeader, EEEP_BLOCK_ID_VENDOR_SP"
	.ascii	"ECIFIC, stBlockLength, pVendorBlock->aulMinSize[0],"
	.ascii	" pVendorBlock->au8FillChar[0] )\000"
	.align	2
.LC45:
	.ascii	"EeePAddBlock(BHandel, pHeader, NULL, pVendorBlock->"
	.ascii	"aulInsideCrc[0])\000"
	.text
	.align	2
	.global	HandleVendorBlock
	.syntax unified
	.arm
	.fpu vfpv3
	.type	HandleVendorBlock, %function
HandleVendorBlock:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L363
	mov	r3, #0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #36
	ldr	r6, [r0, #52]
	mov	r7, r1
.LPIC143:
	add	ip, pc, ip
	add	r2, sp, #24
	ldr	r0, .L363+4
	add	r1, sp, #20
	ldr	r5, .L363+8
	ldr	r0, [ip, r0]
.LPIC133:
	add	r5, pc, r5
	ldr	r0, [r0]
	str	r0, [sp, #28]
	mov	r0, #0
	ldr	r0, [r6]
	str	r3, [sp, #16]
	bl	ReadBinaryFile(PLT)
	subs	r4, r0, #0
	bne	.L359
	ldr	r0, [sp, #24]
	add	r0, r0, #6
	bl	EeePAlignLength(PLT)
	ldrb	r1, [r6, #16]	@ zero_extendqisi2
	mov	r2, r0
	ldr	r3, [r6, #12]
	add	r0, sp, #16
	str	r1, [sp]
	mov	r1, #240
	bl	DBlockAllocWrap(PLT)
	subs	r4, r0, #0
	bne	.L360
	ldr	r5, [sp, #16]
	ldrh	r1, [r6, #4]
	add	r0, r5, #3
	bl	EeeP_Set16BitValue_BE(PLT)
	ldrb	r3, [r6, #17]	@ zero_extendqisi2
	add	r0, r5, #6
	ldr	r2, [sp, #24]
	ldr	r1, [sp, #20]
	strb	r3, [r5, #5]
	bl	memcpy(PLT)
	mov	r2, r4
	ldr	r3, [r6, #8]
	mov	r1, r5
	mov	r0, r7
	bl	EeePAddBlock(PLT)
	subs	r4, r0, #0
	bne	.L361
	ldr	r0, [sp, #20]
	bl	free(PLT)
	mov	r0, r5
	bl	free(PLT)
.L351:
	ldr	r2, .L363+12
	ldr	r3, .L363+4
.LPIC142:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #28]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L362
	mov	r0, r4
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L360:
	ldr	ip, .L363+16
	movw	r3, #1589
	ldr	r0, .L363+20
	ldr	r2, .L363+24
	ldr	r1, .L363+28
.LPIC136:
	add	ip, pc, ip
.LPIC137:
	add	r0, pc, r0
.LPIC134:
	add	r2, pc, r2
.LPIC135:
	add	r1, pc, r1
.L358:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	b	.L351
.L359:
	ldr	r3, .L363+32
	ldr	r1, .L363+36
	ldr	r2, [r6]
	ldr	r3, [r5, r3]
.LPIC132:
	add	r1, pc, r1
	ldr	r0, [r3]
	bl	fprintf(PLT)
	b	.L351
.L361:
	ldr	ip, .L363+40
	movw	r3, #1606
	ldr	r0, .L363+44
	ldr	r2, .L363+48
	ldr	r1, .L363+52
.LPIC140:
	add	ip, pc, ip
.LPIC141:
	add	r0, pc, r0
.LPIC138:
	add	r2, pc, r2
.LPIC139:
	add	r1, pc, r1
	b	.L358
.L362:
	bl	__stack_chk_fail(PLT)
.L364:
	.align	2
.L363:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC143+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC133+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC142+8)
	.word	.LC44-(.LPIC136+8)
	.word	.LC11-(.LPIC137+8)
	.word	.LC16-(.LPIC134+8)
	.word	.LC9-(.LPIC135+8)
	.word	stderr(GOT)
	.word	.LC43-(.LPIC132+8)
	.word	.LC45-(.LPIC140+8)
	.word	.LC11-(.LPIC141+8)
	.word	.LC16-(.LPIC138+8)
	.word	.LC9-(.LPIC139+8)
	.size	HandleVendorBlock, .-HandleVendorBlock
	.section	.rodata.str1.4
	.align	2
.LC46:
	.ascii	"DBlockAllocWrap( &pdHeader, EEEP_BLOCK_ID_LFP, stBl"
	.ascii	"ockLength, pLfpBlock->aulMinSize[0], pLfpBlock->au8"
	.ascii	"FillChar[0] )\000"
	.align	2
.LC47:
	.ascii	"EeePAddBlock(BHandel, pHeader, NULL, pLfpBlock->aul"
	.ascii	"InsideCrc[0])\000"
	.text
	.align	2
	.global	HandleLFPDescBlock
	.syntax unified
	.arm
	.fpu vfpv3
	.type	HandleLFPDescBlock, %function
HandleLFPDescBlock:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L377
	mov	r3, #0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #36
	ldr	r6, [r0, #52]
	mov	r7, r1
.LPIC155:
	add	ip, pc, ip
	add	r2, sp, #24
	ldr	r0, .L377+4
	add	r1, sp, #20
	ldr	r5, .L377+8
	ldr	r0, [ip, r0]
.LPIC145:
	add	r5, pc, r5
	ldr	r0, [r0]
	str	r0, [sp, #28]
	mov	r0, #0
	ldr	r0, [r6, #4]
	str	r3, [sp, #16]
	bl	ReadBinaryFile(PLT)
	subs	r4, r0, #0
	bne	.L373
	ldr	r0, [sp, #24]
	add	r0, r0, #4
	bl	EeePAlignLength(PLT)
	ldrb	r1, [r6, #16]	@ zero_extendqisi2
	mov	r2, r0
	ldr	r3, [r6, #12]
	add	r0, sp, #16
	str	r1, [sp]
	mov	r1, #209
	bl	DBlockAllocWrap(PLT)
	subs	r4, r0, #0
	bne	.L374
	ldr	r5, [sp, #16]
	ldrb	r3, [r6]	@ zero_extendqisi2
	add	r0, r5, #4
	strb	r3, [r5, #3]
	ldr	r2, [sp, #24]
	ldr	r1, [sp, #20]
	bl	memcpy(PLT)
	mov	r2, r4
	ldr	r3, [r6, #8]
	mov	r1, r5
	mov	r0, r7
	bl	EeePAddBlock(PLT)
	subs	r4, r0, #0
	bne	.L375
	ldr	r0, [sp, #20]
	bl	free(PLT)
	mov	r0, r5
	bl	free(PLT)
.L365:
	ldr	r2, .L377+12
	ldr	r3, .L377+4
.LPIC154:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #28]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L376
	mov	r0, r4
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L374:
	ldr	ip, .L377+16
	movw	r3, #1637
	ldr	r0, .L377+20
	ldr	r2, .L377+24
	ldr	r1, .L377+28
.LPIC148:
	add	ip, pc, ip
.LPIC149:
	add	r0, pc, r0
.LPIC146:
	add	r2, pc, r2
.LPIC147:
	add	r1, pc, r1
.L372:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	b	.L365
.L373:
	ldr	r3, .L377+32
	ldr	r1, .L377+36
	ldr	r2, [r6, #4]
	ldr	r3, [r5, r3]
.LPIC144:
	add	r1, pc, r1
	ldr	r0, [r3]
	bl	fprintf(PLT)
	b	.L365
.L375:
	ldr	ip, .L377+40
	movw	r3, #1650
	ldr	r0, .L377+44
	ldr	r2, .L377+48
	ldr	r1, .L377+52
.LPIC152:
	add	ip, pc, ip
.LPIC153:
	add	r0, pc, r0
.LPIC150:
	add	r2, pc, r2
.LPIC151:
	add	r1, pc, r1
	b	.L372
.L376:
	bl	__stack_chk_fail(PLT)
.L378:
	.align	2
.L377:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC155+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC145+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC154+8)
	.word	.LC46-(.LPIC148+8)
	.word	.LC11-(.LPIC149+8)
	.word	.LC16-(.LPIC146+8)
	.word	.LC9-(.LPIC147+8)
	.word	stderr(GOT)
	.word	.LC43-(.LPIC144+8)
	.word	.LC47-(.LPIC152+8)
	.word	.LC11-(.LPIC153+8)
	.word	.LC16-(.LPIC150+8)
	.word	.LC9-(.LPIC151+8)
	.size	HandleLFPDescBlock, .-HandleLFPDescBlock
	.section	.rodata.str1.4
	.align	2
.LC48:
	.ascii	"DBlockAllocWrap( &pHeader, pCustomBlock->au8BlockId"
	.ascii	"[0], stBlockLength, pCustomBlock->aulMinSize[0], pC"
	.ascii	"ustomBlock->au8FillChar[0] )\000"
	.align	2
.LC49:
	.ascii	"EeePAddBlock(BHandel, pHeader, NULL, pCustomBlock->"
	.ascii	"aulInsideCrc[0])\000"
	.text
	.align	2
	.global	HandleCustomBlock
	.syntax unified
	.arm
	.fpu vfpv3
	.type	HandleCustomBlock, %function
HandleCustomBlock:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L391
	mov	r3, #0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #36
	ldr	r6, [r0, #52]
	mov	r7, r1
.LPIC167:
	add	ip, pc, ip
	add	r2, sp, #24
	ldr	r0, .L391+4
	add	r1, sp, #20
	ldr	r5, .L391+8
	ldr	r0, [ip, r0]
.LPIC157:
	add	r5, pc, r5
	ldr	r0, [r0]
	str	r0, [sp, #28]
	mov	r0, #0
	ldr	r0, [r6, #4]
	str	r3, [sp, #16]
	bl	ReadBinaryFile(PLT)
	subs	r4, r0, #0
	bne	.L387
	ldr	r0, [sp, #24]
	add	r0, r0, #3
	bl	EeePAlignLength(PLT)
	mov	r2, r0
	ldrb	r0, [r6, #16]	@ zero_extendqisi2
	ldr	r3, [r6, #12]
	ldrb	r1, [r6]	@ zero_extendqisi2
	str	r0, [sp]
	add	r0, sp, #16
	bl	DBlockAllocWrap(PLT)
	subs	r4, r0, #0
	bne	.L388
	ldr	r0, [sp, #16]
	ldr	r2, [sp, #24]
	ldr	r1, [sp, #20]
	add	r0, r0, #3
	bl	memcpy(PLT)
	mov	r2, r4
	ldr	r3, [r6, #8]
	ldr	r1, [sp, #16]
	mov	r0, r7
	bl	EeePAddBlock(PLT)
	subs	r4, r0, #0
	bne	.L389
	ldr	r0, [sp, #20]
	bl	free(PLT)
	ldr	r0, [sp, #16]
	bl	free(PLT)
.L379:
	ldr	r2, .L391+12
	ldr	r3, .L391+4
.LPIC166:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #28]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L390
	mov	r0, r4
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L388:
	ldr	ip, .L391+16
	movw	r3, #1679
	ldr	r0, .L391+20
	ldr	r2, .L391+24
	ldr	r1, .L391+28
.LPIC160:
	add	ip, pc, ip
.LPIC161:
	add	r0, pc, r0
.LPIC158:
	add	r2, pc, r2
.LPIC159:
	add	r1, pc, r1
.L386:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	b	.L379
.L387:
	ldr	r3, .L391+32
	ldr	r1, .L391+36
	ldr	r2, [r6, #4]
	ldr	r3, [r5, r3]
.LPIC156:
	add	r1, pc, r1
	ldr	r0, [r3]
	bl	fprintf(PLT)
	b	.L379
.L389:
	ldr	ip, .L391+40
	movw	r3, #1689
	ldr	r0, .L391+44
	ldr	r2, .L391+48
	ldr	r1, .L391+52
.LPIC164:
	add	ip, pc, ip
.LPIC165:
	add	r0, pc, r0
.LPIC162:
	add	r2, pc, r2
.LPIC163:
	add	r1, pc, r1
	b	.L386
.L390:
	bl	__stack_chk_fail(PLT)
.L392:
	.align	2
.L391:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC167+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC157+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC166+8)
	.word	.LC48-(.LPIC160+8)
	.word	.LC11-(.LPIC161+8)
	.word	.LC16-(.LPIC158+8)
	.word	.LC9-(.LPIC159+8)
	.word	stderr(GOT)
	.word	.LC43-(.LPIC156+8)
	.word	.LC49-(.LPIC164+8)
	.word	.LC11-(.LPIC165+8)
	.word	.LC16-(.LPIC162+8)
	.word	.LC9-(.LPIC163+8)
	.size	HandleCustomBlock, .-HandleCustomBlock
	.section	.rodata.str1.4
	.align	2
.LC50:
	.ascii	"EeeP_CreateEEPROMImage\000"
	.align	2
.LC51:
	.ascii	"(cszCfgFileName==NULL)\000"
	.align	2
.LC52:
	.ascii	"(pCfgBlockDesc==NULL)\000"
	.align	2
.LC53:
	.ascii	"(pu8DevDesc==NULL)\000"
	.align	2
.LC54:
	.ascii	"(stCfgBlockCnt==0)\000"
	.align	2
.LC55:
	.ascii	"(stHeaderSize==0)\000"
	.align	2
.LC56:
	.ascii	"ParseCfgFile(cszCfgFileName, pCfgBlockDesc, stCfgBl"
	.ascii	"ockCnt)\000"
	.align	2
.LC57:
	.ascii	"EeePCreateNewBuffer(pBHandel, 256<<(*pu8DevDesc&EEE"
	.ascii	"P_DEVICE_SIZE_MASK), stHeaderSize, EEEP_INIT_INCLUD"
	.ascii	"E_CRC)\000"
	.align	2
.LC58:
	.ascii	"pDesc->Handler(pDesc, *pBHandel)\000"
	.align	2
.LC59:
	.ascii	"EeePSetCRC(*pBHandel)\000"
	.align	2
.LC60:
	.ascii	"CleanStruct(pCfgBlockDesc, stCfgBlockCnt)\000"
	.text
	.align	2
	.global	EeeP_CreateEEPROMImage
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeeP_CreateEEPROMImage, %function
EeeP_CreateEEPROMImage:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	push	{r4, r5, r6, r7, r8, r9, lr}
	sub	sp, sp, #20
	ldr	r4, [sp, #48]
	ldr	r6, [sp, #52]
	beq	.L421
	cmp	r2, #0
	mov	r8, r2
	beq	.L422
	cmp	r4, #0
	beq	.L423
	cmp	r3, #0
	mov	r9, r3
	beq	.L424
	cmp	r6, #0
	beq	.L425
	mov	r7, r0
	mov	r2, r3
	mov	r0, r1
	mov	r1, r8
	bl	ParseCfgFile(PLT)
	subs	r5, r0, #0
	bne	.L426
	ldrb	r3, [r4]	@ zero_extendqisi2
	mov	r1, #256
	mov	r2, r6
	mov	r0, r7
	and	r3, r3, #15
	lsl	r1, r1, r3
	mov	r3, #1
	bl	EeePCreateNewBuffer(PLT)
	subs	r5, r0, #0
	bne	.L427
	ldr	r1, [r7]
	mov	r6, r9
	mov	r4, r8
.L401:
	ldr	ip, [r4, #40]
	pld	[r4, #432]
	cmp	ip, #0
	beq	.L402
	ldr	r5, [r4, #48]
	mov	r0, r4
	cmp	r5, #0
	beq	.L402
	blx	r5
	subs	r5, r0, #0
	bne	.L417
	ldr	r1, [r7]
.L402:
	subs	r6, r6, #1
	add	r4, r4, #56
	bne	.L401
	mov	r0, r1
	bl	EeePSetCRC(PLT)
	subs	r5, r0, #0
	bne	.L428
	mov	r1, r9
	mov	r0, r8
	bl	CleanStruct(PLT)
	subs	r5, r0, #0
	beq	.L393
	ldr	ip, .L429
	movw	r3, #1836
	ldr	r0, .L429+4
	ldr	r2, .L429+8
	ldr	r1, .L429+12
.LPIC206:
	add	ip, pc, ip
.LPIC207:
	add	r0, pc, r0
.LPIC204:
	add	r2, pc, r2
.LPIC205:
	add	r1, pc, r1
	b	.L420
.L426:
	ldr	ip, .L429+16
	movw	r3, #1820
	ldr	r0, .L429+20
	ldr	r2, .L429+24
	ldr	r1, .L429+28
.LPIC190:
	add	ip, pc, ip
.LPIC191:
	add	r0, pc, r0
.LPIC188:
	add	r2, pc, r2
.LPIC189:
	add	r1, pc, r1
.L420:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r5, [sp]
	bl	siFormattedMessage_SC(PLT)
.L395:
.L393:
	mov	r0, r5
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L428:
	ldr	ip, .L429+32
	movw	r3, #1832
	ldr	r0, .L429+36
	ldr	r2, .L429+40
	ldr	r1, .L429+44
.LPIC202:
	add	ip, pc, ip
.LPIC203:
	add	r0, pc, r0
.LPIC200:
	add	r2, pc, r2
.LPIC201:
	add	r1, pc, r1
	b	.L420
.L425:
	ldr	ip, .L429+48
	mvn	r5, #256
	ldr	r0, .L429+52
	movw	r3, #1812
	ldr	r2, .L429+56
	ldr	r1, .L429+60
.LPIC186:
	add	ip, pc, ip
.LPIC187:
	add	r0, pc, r0
.LPIC184:
	add	r2, pc, r2
.LPIC185:
	add	r1, pc, r1
.L419:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r5, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r5
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L424:
	ldr	ip, .L429+64
	mvn	r5, #256
	ldr	r0, .L429+68
	movw	r3, #1807
	ldr	r2, .L429+72
	ldr	r1, .L429+76
.LPIC182:
	add	ip, pc, ip
.LPIC183:
	add	r0, pc, r0
.LPIC180:
	add	r2, pc, r2
.LPIC181:
	add	r1, pc, r1
	b	.L419
.L427:
	ldr	ip, .L429+80
	mov	r3, #1824
	ldr	r0, .L429+84
	ldr	r2, .L429+88
	ldr	r1, .L429+92
.LPIC194:
	add	ip, pc, ip
.LPIC195:
	add	r0, pc, r0
.LPIC192:
	add	r2, pc, r2
.LPIC193:
	add	r1, pc, r1
	b	.L420
.L417:
	ldr	ip, .L429+96
	movw	r3, #1830
	ldr	r0, .L429+100
	ldr	r2, .L429+104
	ldr	r1, .L429+108
.LPIC198:
	add	ip, pc, ip
.LPIC199:
	add	r0, pc, r0
.LPIC196:
	add	r2, pc, r2
.LPIC197:
	add	r1, pc, r1
	b	.L420
.L421:
	ldr	ip, .L429+112
	mvn	r5, #256
	ldr	r0, .L429+116
	mov	r3, #1792
	ldr	r2, .L429+120
	ldr	r1, .L429+124
.LPIC170:
	add	ip, pc, ip
.LPIC171:
	add	r0, pc, r0
.LPIC168:
	add	r2, pc, r2
.LPIC169:
	add	r1, pc, r1
	b	.L419
.L422:
	ldr	ip, .L429+128
	mvn	r5, #256
	ldr	r0, .L429+132
	movw	r3, #1797
	ldr	r2, .L429+136
	ldr	r1, .L429+140
.LPIC174:
	add	ip, pc, ip
.LPIC175:
	add	r0, pc, r0
.LPIC172:
	add	r2, pc, r2
.LPIC173:
	add	r1, pc, r1
	b	.L419
.L423:
	ldr	ip, .L429+144
	mvn	r5, #256
	ldr	r0, .L429+148
	movw	r3, #1802
	ldr	r2, .L429+152
	ldr	r1, .L429+156
.LPIC178:
	add	ip, pc, ip
.LPIC179:
	add	r0, pc, r0
.LPIC176:
	add	r2, pc, r2
.LPIC177:
	add	r1, pc, r1
	b	.L419
.L430:
	.align	2
.L429:
	.word	.LC60-(.LPIC206+8)
	.word	.LC11-(.LPIC207+8)
	.word	.LC16-(.LPIC204+8)
	.word	.LC9-(.LPIC205+8)
	.word	.LC56-(.LPIC190+8)
	.word	.LC11-(.LPIC191+8)
	.word	.LC16-(.LPIC188+8)
	.word	.LC9-(.LPIC189+8)
	.word	.LC59-(.LPIC202+8)
	.word	.LC11-(.LPIC203+8)
	.word	.LC16-(.LPIC200+8)
	.word	.LC9-(.LPIC201+8)
	.word	.LC55-(.LPIC186+8)
	.word	.LC11-(.LPIC187+8)
	.word	.LC50-(.LPIC184+8)
	.word	.LC9-(.LPIC185+8)
	.word	.LC54-(.LPIC182+8)
	.word	.LC11-(.LPIC183+8)
	.word	.LC50-(.LPIC180+8)
	.word	.LC9-(.LPIC181+8)
	.word	.LC57-(.LPIC194+8)
	.word	.LC11-(.LPIC195+8)
	.word	.LC16-(.LPIC192+8)
	.word	.LC9-(.LPIC193+8)
	.word	.LC58-(.LPIC198+8)
	.word	.LC11-(.LPIC199+8)
	.word	.LC16-(.LPIC196+8)
	.word	.LC9-(.LPIC197+8)
	.word	.LC51-(.LPIC170+8)
	.word	.LC11-(.LPIC171+8)
	.word	.LC50-(.LPIC168+8)
	.word	.LC9-(.LPIC169+8)
	.word	.LC52-(.LPIC174+8)
	.word	.LC11-(.LPIC175+8)
	.word	.LC50-(.LPIC172+8)
	.word	.LC9-(.LPIC173+8)
	.word	.LC53-(.LPIC178+8)
	.word	.LC11-(.LPIC179+8)
	.word	.LC50-(.LPIC176+8)
	.word	.LC9-(.LPIC177+8)
	.size	EeeP_CreateEEPROMImage, .-EeeP_CreateEEPROMImage
	.align	2
	.global	EeeP_CreateCOM0R20_CBImage
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeeP_CreateCOM0R20_CBImage, %function
EeeP_CreateCOM0R20_CBImage:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	push	{r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #16
	beq	.L454
	ldr	r4, .L459
	mov	r6, r0
	mov	r2, #25
	mov	r0, r1
.LPIC213:
	add	r4, pc, r4
	add	r4, r4, #536
	mov	r1, r4
	bl	ParseCfgFile(PLT)
	subs	r8, r0, #0
	bne	.L455
	ldr	r2, .L459+4
	mov	r1, #256
	mov	r3, #1
	mov	r0, r6
.LPIC218:
	add	r2, pc, r2
	ldrb	r2, [r2]	@ zero_extendqisi2
	and	r2, r2, #15
	lsl	r1, r1, r2
	mov	r2, #49
	bl	EeePCreateNewBuffer(PLT)
	subs	r8, r0, #0
	bne	.L456
	ldr	r5, .L459+8
	ldr	r1, [r6]
.LPIC227:
	add	r5, pc, r5
	add	r7, r5, #536
	add	r5, r5, #1936
.L435:
	ldr	r3, [r4, #40]
	cmp	r3, #0
	beq	.L436
	ldr	r3, [r4, #48]
	mov	r0, r4
	cmp	r3, #0
	beq	.L436
	blx	r3
	subs	r8, r0, #0
	bne	.L451
	ldr	r1, [r6]
.L436:
	add	r4, r4, #56
	cmp	r4, r5
	bne	.L435
	mov	r0, r1
	bl	EeePSetCRC(PLT)
	subs	r8, r0, #0
	bne	.L457
	mov	r1, #25
	mov	r0, r7
	bl	CleanStruct(PLT)
	subs	r8, r0, #0
	bne	.L458
.L431:
	mov	r0, r8
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L455:
	ldr	ip, .L459+12
	movw	r3, #1820
	ldr	r0, .L459+16
	ldr	r2, .L459+20
	ldr	r1, .L459+24
.LPIC216:
	add	ip, pc, ip
.LPIC217:
	add	r0, pc, r0
.LPIC214:
	add	r2, pc, r2
.LPIC215:
	add	r1, pc, r1
.L453:
.L433:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r8, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r8
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L456:
	ldr	ip, .L459+28
	mov	r3, #1824
	ldr	r0, .L459+32
	ldr	r2, .L459+36
	ldr	r1, .L459+40
.LPIC221:
	add	ip, pc, ip
.LPIC222:
	add	r0, pc, r0
.LPIC219:
	add	r2, pc, r2
.LPIC220:
	add	r1, pc, r1
	b	.L453
.L457:
	ldr	ip, .L459+44
	movw	r3, #1832
	ldr	r0, .L459+48
	ldr	r2, .L459+52
	ldr	r1, .L459+56
.LPIC230:
	add	ip, pc, ip
.LPIC231:
	add	r0, pc, r0
.LPIC228:
	add	r2, pc, r2
.LPIC229:
	add	r1, pc, r1
	b	.L453
.L451:
	ldr	ip, .L459+60
	movw	r3, #1830
	ldr	r0, .L459+64
	ldr	r2, .L459+68
	ldr	r1, .L459+72
.LPIC225:
	add	ip, pc, ip
.LPIC226:
	add	r0, pc, r0
.LPIC223:
	add	r2, pc, r2
.LPIC224:
	add	r1, pc, r1
	b	.L453
.L454:
	ldr	ip, .L459+76
	mvn	r8, #256
	ldr	r0, .L459+80
	mov	r3, #1792
	ldr	r2, .L459+84
	ldr	r1, .L459+88
.LPIC211:
	add	ip, pc, ip
.LPIC212:
	add	r0, pc, r0
	str	r8, [sp]
	stmib	sp, {r0, ip}
.LPIC209:
	add	r2, pc, r2
.LPIC210:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L431
.L458:
	ldr	ip, .L459+92
	movw	r3, #1836
	ldr	r0, .L459+96
	ldr	r2, .L459+100
	ldr	r1, .L459+104
.LPIC235:
	add	ip, pc, ip
.LPIC236:
	add	r0, pc, r0
.LPIC233:
	add	r2, pc, r2
.LPIC234:
	add	r1, pc, r1
	b	.L453
.L460:
	.align	2
.L459:
	.word	.LANCHOR0-(.LPIC213+8)
	.word	.LANCHOR1-(.LPIC218+8)
	.word	.LANCHOR0-(.LPIC227+8)
	.word	.LC56-(.LPIC216+8)
	.word	.LC11-(.LPIC217+8)
	.word	.LC16-(.LPIC214+8)
	.word	.LC9-(.LPIC215+8)
	.word	.LC57-(.LPIC221+8)
	.word	.LC11-(.LPIC222+8)
	.word	.LC16-(.LPIC219+8)
	.word	.LC9-(.LPIC220+8)
	.word	.LC59-(.LPIC230+8)
	.word	.LC11-(.LPIC231+8)
	.word	.LC16-(.LPIC228+8)
	.word	.LC9-(.LPIC229+8)
	.word	.LC58-(.LPIC225+8)
	.word	.LC11-(.LPIC226+8)
	.word	.LC16-(.LPIC223+8)
	.word	.LC9-(.LPIC224+8)
	.word	.LC51-(.LPIC211+8)
	.word	.LC11-(.LPIC212+8)
	.word	.LC50-(.LPIC209+8)
	.word	.LC9-(.LPIC210+8)
	.word	.LC60-(.LPIC235+8)
	.word	.LC11-(.LPIC236+8)
	.word	.LC16-(.LPIC233+8)
	.word	.LC9-(.LPIC234+8)
	.size	EeeP_CreateCOM0R20_CBImage, .-EeeP_CreateCOM0R20_CBImage
	.align	2
	.global	EeeP_CreateCOM0R20_MEEPImage
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeeP_CreateCOM0R20_MEEPImage, %function
EeeP_CreateCOM0R20_MEEPImage:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	push	{r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #16
	beq	.L484
	ldr	r4, .L489
	mov	r6, r0
	mov	r2, #18
	mov	r0, r1
.LPIC242:
	add	r4, pc, r4
	add	r4, r4, #1936
	mov	r1, r4
	bl	ParseCfgFile(PLT)
	subs	r8, r0, #0
	bne	.L485
	ldr	r2, .L489+4
	mov	r1, #256
	mov	r3, #1
	mov	r0, r6
.LPIC247:
	add	r2, pc, r2
	ldrb	r2, [r2, #148]	@ zero_extendqisi2
	and	r2, r2, #15
	lsl	r1, r1, r2
	mov	r2, #18
	bl	EeePCreateNewBuffer(PLT)
	subs	r8, r0, #0
	bne	.L486
	ldr	r5, .L489+8
	ldr	r1, [r6]
.LPIC256:
	add	r5, pc, r5
	add	r7, r5, #1936
	add	r5, r5, #2944
.L465:
	ldr	r3, [r4, #40]
	cmp	r3, #0
	beq	.L466
	ldr	r3, [r4, #48]
	mov	r0, r4
	cmp	r3, #0
	beq	.L466
	blx	r3
	subs	r8, r0, #0
	bne	.L481
	ldr	r1, [r6]
.L466:
	add	r4, r4, #56
	cmp	r4, r5
	bne	.L465
	mov	r0, r1
	bl	EeePSetCRC(PLT)
	subs	r8, r0, #0
	bne	.L487
	mov	r1, #18
	mov	r0, r7
	bl	CleanStruct(PLT)
	subs	r8, r0, #0
	bne	.L488
.L461:
	mov	r0, r8
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L485:
	ldr	ip, .L489+12
	movw	r3, #1820
	ldr	r0, .L489+16
	ldr	r2, .L489+20
	ldr	r1, .L489+24
.LPIC245:
	add	ip, pc, ip
.LPIC246:
	add	r0, pc, r0
.LPIC243:
	add	r2, pc, r2
.LPIC244:
	add	r1, pc, r1
.L483:
.L463:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r8, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r8
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L486:
	ldr	ip, .L489+28
	mov	r3, #1824
	ldr	r0, .L489+32
	ldr	r2, .L489+36
	ldr	r1, .L489+40
.LPIC250:
	add	ip, pc, ip
.LPIC251:
	add	r0, pc, r0
.LPIC248:
	add	r2, pc, r2
.LPIC249:
	add	r1, pc, r1
	b	.L483
.L487:
	ldr	ip, .L489+44
	movw	r3, #1832
	ldr	r0, .L489+48
	ldr	r2, .L489+52
	ldr	r1, .L489+56
.LPIC259:
	add	ip, pc, ip
.LPIC260:
	add	r0, pc, r0
.LPIC257:
	add	r2, pc, r2
.LPIC258:
	add	r1, pc, r1
	b	.L483
.L481:
	ldr	ip, .L489+60
	movw	r3, #1830
	ldr	r0, .L489+64
	ldr	r2, .L489+68
	ldr	r1, .L489+72
.LPIC254:
	add	ip, pc, ip
.LPIC255:
	add	r0, pc, r0
.LPIC252:
	add	r2, pc, r2
.LPIC253:
	add	r1, pc, r1
	b	.L483
.L484:
	ldr	ip, .L489+76
	mvn	r8, #256
	ldr	r0, .L489+80
	mov	r3, #1792
	ldr	r2, .L489+84
	ldr	r1, .L489+88
.LPIC240:
	add	ip, pc, ip
.LPIC241:
	add	r0, pc, r0
	str	r8, [sp]
	stmib	sp, {r0, ip}
.LPIC238:
	add	r2, pc, r2
.LPIC239:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L461
.L488:
	ldr	ip, .L489+92
	movw	r3, #1836
	ldr	r0, .L489+96
	ldr	r2, .L489+100
	ldr	r1, .L489+104
.LPIC264:
	add	ip, pc, ip
.LPIC265:
	add	r0, pc, r0
.LPIC262:
	add	r2, pc, r2
.LPIC263:
	add	r1, pc, r1
	b	.L483
.L490:
	.align	2
.L489:
	.word	.LANCHOR0-(.LPIC242+8)
	.word	.LANCHOR1-(.LPIC247+8)
	.word	.LANCHOR0-(.LPIC256+8)
	.word	.LC56-(.LPIC245+8)
	.word	.LC11-(.LPIC246+8)
	.word	.LC16-(.LPIC243+8)
	.word	.LC9-(.LPIC244+8)
	.word	.LC57-(.LPIC250+8)
	.word	.LC11-(.LPIC251+8)
	.word	.LC16-(.LPIC248+8)
	.word	.LC9-(.LPIC249+8)
	.word	.LC59-(.LPIC259+8)
	.word	.LC11-(.LPIC260+8)
	.word	.LC16-(.LPIC257+8)
	.word	.LC9-(.LPIC258+8)
	.word	.LC58-(.LPIC254+8)
	.word	.LC11-(.LPIC255+8)
	.word	.LC16-(.LPIC252+8)
	.word	.LC9-(.LPIC253+8)
	.word	.LC51-(.LPIC240+8)
	.word	.LC11-(.LPIC241+8)
	.word	.LC50-(.LPIC238+8)
	.word	.LC9-(.LPIC239+8)
	.word	.LC60-(.LPIC264+8)
	.word	.LC11-(.LPIC265+8)
	.word	.LC16-(.LPIC262+8)
	.word	.LC9-(.LPIC263+8)
	.size	EeeP_CreateCOM0R20_MEEPImage, .-EeeP_CreateCOM0R20_MEEPImage
	.align	2
	.global	EeeP_CreateEeePExtEEPImage
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeeP_CreateEeePExtEEPImage, %function
EeeP_CreateEeePExtEEPImage:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #20
	beq	.L514
	ldr	r4, .L519
	mov	r6, r0
	mov	r2, #25
	mov	r0, r1
.LPIC271:
	add	r4, pc, r4
	add	r4, r4, #2944
	mov	r1, r4
	bl	ParseCfgFile(PLT)
	subs	r7, r0, #0
	bne	.L515
	ldr	r2, .L519+4
	mov	r1, #256
	mov	r3, #1
	mov	r0, r6
.LPIC276:
	add	r2, pc, r2
	ldrb	r2, [r2, #160]	@ zero_extendqisi2
	and	r2, r2, #15
	lsl	r1, r1, r2
	mov	r2, #16
	bl	EeePCreateNewBuffer(PLT)
	subs	r7, r0, #0
	bne	.L516
	ldr	r5, .L519+8
	ldr	r1, [r6]
.LPIC285:
	add	r5, pc, r5
	add	r5, r5, #2944
.L495:
	ldr	r3, [r4, #40]
	cmp	r3, #0
	beq	.L496
	ldr	r3, [r4, #48]
	mov	r0, r4
	cmp	r3, #0
	beq	.L496
	blx	r3
	subs	r7, r0, #0
	bne	.L511
	ldr	r1, [r6]
.L496:
	add	r3, r5, #1392
	add	r4, r4, #56
	add	r3, r3, #8
	cmp	r4, r3
	bne	.L495
	mov	r0, r1
	bl	EeePSetCRC(PLT)
	subs	r7, r0, #0
	bne	.L517
	mov	r1, #25
	mov	r0, r5
	bl	CleanStruct(PLT)
	subs	r7, r0, #0
	bne	.L518
.L491:
	mov	r0, r7
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L515:
	ldr	ip, .L519+12
	movw	r3, #1820
	ldr	r0, .L519+16
	ldr	r2, .L519+20
	ldr	r1, .L519+24
.LPIC274:
	add	ip, pc, ip
.LPIC275:
	add	r0, pc, r0
.LPIC272:
	add	r2, pc, r2
.LPIC273:
	add	r1, pc, r1
.L513:
.L493:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r7, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r7
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L516:
	ldr	ip, .L519+28
	mov	r3, #1824
	ldr	r0, .L519+32
	ldr	r2, .L519+36
	ldr	r1, .L519+40
.LPIC279:
	add	ip, pc, ip
.LPIC280:
	add	r0, pc, r0
.LPIC277:
	add	r2, pc, r2
.LPIC278:
	add	r1, pc, r1
	b	.L513
.L517:
	ldr	ip, .L519+44
	movw	r3, #1832
	ldr	r0, .L519+48
	ldr	r2, .L519+52
	ldr	r1, .L519+56
.LPIC288:
	add	ip, pc, ip
.LPIC289:
	add	r0, pc, r0
.LPIC286:
	add	r2, pc, r2
.LPIC287:
	add	r1, pc, r1
	b	.L513
.L511:
	ldr	ip, .L519+60
	movw	r3, #1830
	ldr	r0, .L519+64
	ldr	r2, .L519+68
	ldr	r1, .L519+72
.LPIC283:
	add	ip, pc, ip
.LPIC284:
	add	r0, pc, r0
.LPIC281:
	add	r2, pc, r2
.LPIC282:
	add	r1, pc, r1
	b	.L513
.L514:
	ldr	ip, .L519+76
	mvn	r7, #256
	ldr	r0, .L519+80
	mov	r3, #1792
	ldr	r2, .L519+84
	ldr	r1, .L519+88
.LPIC269:
	add	ip, pc, ip
.LPIC270:
	add	r0, pc, r0
	str	r7, [sp]
	stmib	sp, {r0, ip}
.LPIC267:
	add	r2, pc, r2
.LPIC268:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L491
.L518:
	ldr	ip, .L519+92
	movw	r3, #1836
	ldr	r0, .L519+96
	ldr	r2, .L519+100
	ldr	r1, .L519+104
.LPIC293:
	add	ip, pc, ip
.LPIC294:
	add	r0, pc, r0
.LPIC291:
	add	r2, pc, r2
.LPIC292:
	add	r1, pc, r1
	b	.L513
.L520:
	.align	2
.L519:
	.word	.LANCHOR0-(.LPIC271+8)
	.word	.LANCHOR1-(.LPIC276+8)
	.word	.LANCHOR0-(.LPIC285+8)
	.word	.LC56-(.LPIC274+8)
	.word	.LC11-(.LPIC275+8)
	.word	.LC16-(.LPIC272+8)
	.word	.LC9-(.LPIC273+8)
	.word	.LC57-(.LPIC279+8)
	.word	.LC11-(.LPIC280+8)
	.word	.LC16-(.LPIC277+8)
	.word	.LC9-(.LPIC278+8)
	.word	.LC59-(.LPIC288+8)
	.word	.LC11-(.LPIC289+8)
	.word	.LC16-(.LPIC286+8)
	.word	.LC9-(.LPIC287+8)
	.word	.LC58-(.LPIC283+8)
	.word	.LC11-(.LPIC284+8)
	.word	.LC16-(.LPIC281+8)
	.word	.LC9-(.LPIC282+8)
	.word	.LC51-(.LPIC269+8)
	.word	.LC11-(.LPIC270+8)
	.word	.LC50-(.LPIC267+8)
	.word	.LC9-(.LPIC268+8)
	.word	.LC60-(.LPIC293+8)
	.word	.LC11-(.LPIC294+8)
	.word	.LC16-(.LPIC291+8)
	.word	.LC9-(.LPIC292+8)
	.size	EeeP_CreateEeePExtEEPImage, .-EeeP_CreateEeePExtEEPImage
	.align	2
	.global	EeeP_CreateCOM0R20_CBCfg
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeeP_CreateCOM0R20_CBCfg, %function
EeeP_CreateCOM0R20_CBCfg:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L522
	mov	r2, r0
	mov	r1, #25
.LPIC295:
	add	r3, pc, r3
	add	r0, r3, #536
	b	PrintCfgFile(PLT)
.L523:
	.align	2
.L522:
	.word	.LANCHOR0-(.LPIC295+8)
	.size	EeeP_CreateCOM0R20_CBCfg, .-EeeP_CreateCOM0R20_CBCfg
	.align	2
	.global	EeeP_CreateCOM0R20_MEEPCfg
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeeP_CreateCOM0R20_MEEPCfg, %function
EeeP_CreateCOM0R20_MEEPCfg:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L525
	mov	r2, r0
	mov	r1, #18
.LPIC296:
	add	r3, pc, r3
	add	r0, r3, #1936
	b	PrintCfgFile(PLT)
.L526:
	.align	2
.L525:
	.word	.LANCHOR0-(.LPIC296+8)
	.size	EeeP_CreateCOM0R20_MEEPCfg, .-EeeP_CreateCOM0R20_MEEPCfg
	.align	2
	.global	EeeP_CreateEeePExtEEPCfg
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeeP_CreateEeePExtEEPCfg, %function
EeeP_CreateEeePExtEEPCfg:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L528
	mov	r2, r0
	mov	r1, #25
.LPIC297:
	add	r3, pc, r3
	add	r0, r3, #2944
	b	PrintCfgFile(PLT)
.L529:
	.align	2
.L528:
	.word	.LANCHOR0-(.LPIC297+8)
	.size	EeeP_CreateEeePExtEEPCfg, .-EeeP_CreateEeePExtEEPCfg
	.global	EeePExpEEP_CfgDesc
	.section	.rodata.str1.4
	.align	2
.LC61:
	.ascii	"EeePExpEEP\000"
	.align	2
.LC62:
	.ascii	"SmbiosCarrier\000"
	.align	2
.LC63:
	.ascii	"SmbiosSystem\000"
	.align	2
.LC64:
	.ascii	"SmbiosChassis\000"
	.align	2
.LC65:
	.ascii	"LFPData0\000"
	.align	2
.LC66:
	.ascii	"LFPData1\000"
	.align	2
.LC67:
	.ascii	"ExtI2CDevice0\000"
	.align	2
.LC68:
	.ascii	"ExtI2CDevice1\000"
	.align	2
.LC69:
	.ascii	"COM0R20_Exp0Card\000"
	.align	2
.LC70:
	.ascii	"COM0R20_Exp1Card\000"
	.align	2
.LC71:
	.ascii	"COM0R20_SerialPorts\000"
	.align	2
.LC72:
	.ascii	"VendorBlock0\000"
	.align	2
.LC73:
	.ascii	"VendorBlock1\000"
	.align	2
.LC74:
	.ascii	"VendorBlock2\000"
	.align	2
.LC75:
	.ascii	"VendorBlock3\000"
	.align	2
.LC76:
	.ascii	"VendorBlock4\000"
	.align	2
.LC77:
	.ascii	"VendorBlock5\000"
	.align	2
.LC78:
	.ascii	"VendorBlock6\000"
	.align	2
.LC79:
	.ascii	"CustomBlock0\000"
	.align	2
.LC80:
	.ascii	"CustomBlock1\000"
	.align	2
.LC81:
	.ascii	"CustomBlock2\000"
	.align	2
.LC82:
	.ascii	"CustomBlock3\000"
	.align	2
.LC83:
	.ascii	"CustomBlock4\000"
	.align	2
.LC84:
	.ascii	"CustomBlock5\000"
	.align	2
.LC85:
	.ascii	"CustomBlock6\000"
	.global	COM0R20_M_CfgDesc
	.align	2
.LC86:
	.ascii	"COM0R20_M\000"
	.align	2
.LC87:
	.ascii	"SmbiosModule\000"
	.global	COM0R20_CB_CfgDesc
	.align	2
.LC88:
	.ascii	"COM0R20_CB\000"
	.global	COM0R20_SerialPortsDesc
	.align	2
.LC89:
	.ascii	"InsideCRC\000"
	.align	2
.LC90:
	.ascii	"MinBlockSize\000"
	.align	2
.LC91:
	.ascii	"BlockFillChar\000"
	.align	2
.LC92:
	.ascii	"SER0_IOADDRESS\000"
	.align	2
.LC93:
	.ascii	"SER0_IRQ\000"
	.align	2
.LC94:
	.ascii	"SER1_IOADDRESS\000"
	.align	2
.LC95:
	.ascii	"SER1_IRQ\000"
	.global	ValidIOAddrPortDesc
	.global	ValidIOAddrPort
	.global	COM0R20_ExpCard1Desc
	.align	2
.LC96:
	.ascii	"COM0_PCIe_Port\000"
	.align	2
.LC97:
	.ascii	"COM0_USB_Port\000"
	.global	COM0R20_ExpCard0Desc
	.global	ValidCOM0USBPortDesc
	.global	ValidCOM0USBPort
	.global	ValidCOM0PCIePortDesc
	.global	ValidCOM0PCIePort
	.global	EeePExpHdr_Desc
	.align	2
.LC98:
	.ascii	"EepDeviceType\000"
	.align	2
.LC99:
	.ascii	"EepDeviceSize\000"
	.align	2
.LC100:
	.ascii	"WriteLength\000"
	.align	2
.LC101:
	.ascii	"VendorId\000"
	.align	2
.LC102:
	.ascii	"DeviceId\000"
	.align	2
.LC103:
	.ascii	"DeviceFlav\000"
	.align	2
.LC104:
	.ascii	"RevId\000"
	.global	COM0R20_M_Desc
	.align	2
.LC105:
	.ascii	"MType\000"
	.align	2
.LC106:
	.ascii	"SpecRevision\000"
	.global	COM0R20_CB_Desc
	.align	2
.LC107:
	.ascii	"CBType\000"
	.align	2
.LC108:
	.ascii	"USBHSCount\000"
	.align	2
.LC109:
	.ascii	"USBSSCount\000"
	.align	2
.LC110:
	.ascii	"SASPort0\000"
	.align	2
.LC111:
	.ascii	"SASPort1\000"
	.align	2
.LC112:
	.ascii	"SASPort2\000"
	.align	2
.LC113:
	.ascii	"SASPort3\000"
	.align	2
.LC114:
	.ascii	"GBE0\000"
	.align	2
.LC115:
	.ascii	"GBE1\000"
	.align	2
.LC116:
	.ascii	"GBE2\000"
	.align	2
.LC117:
	.ascii	"WAKE0\000"
	.align	2
.LC118:
	.ascii	"WAKE1\000"
	.align	2
.LC119:
	.ascii	"SUS\000"
	.align	2
.LC120:
	.ascii	"BatLow\000"
	.align	2
.LC121:
	.ascii	"THRMP\000"
	.align	2
.LC122:
	.ascii	"EBROM\000"
	.align	2
.LC123:
	.ascii	"WDT\000"
	.align	2
.LC124:
	.ascii	"AC97/HDA\000"
	.align	2
.LC125:
	.ascii	"SSC\000"
	.align	2
.LC126:
	.ascii	"SDIO\000"
	.align	2
.LC127:
	.ascii	"LID\000"
	.align	2
.LC128:
	.ascii	"Sleep\000"
	.align	2
.LC129:
	.ascii	"FAN0\000"
	.align	2
.LC130:
	.ascii	"SER0\000"
	.align	2
.LC131:
	.ascii	"SER1\000"
	.align	2
.LC132:
	.ascii	"DDI0\000"
	.align	2
.LC133:
	.ascii	"DDI1\000"
	.align	2
.LC134:
	.ascii	"DDI2\000"
	.align	2
.LC135:
	.ascii	"DDI3\000"
	.global	ValidModuleTypesDesc
	.global	ValidModuleTypes
	.global	ValidUsbSSRangeDesc
	.global	ValidUsbSSRange
	.global	ValidUsbHSRangeDesc
	.global	ValidUsbHSRange
	.global	ExtI2CDevice1Desc
	.align	2
.LC136:
	.ascii	"DeviceBus\000"
	.align	2
.LC137:
	.ascii	"DeviceAddr\000"
	.align	2
.LC138:
	.ascii	"DeviceType\000"
	.align	2
.LC139:
	.ascii	"DeviceSize\000"
	.global	ExtI2CDevice0Desc
	.global	EeePEEPWriteLenTL
	.global	EeePEEPWriteLenTokens
	.align	2
.LC140:
	.ascii	"1\000"
	.align	2
.LC141:
	.ascii	"8\000"
	.align	2
.LC142:
	.ascii	"16\000"
	.align	2
.LC143:
	.ascii	"32\000"
	.align	2
.LC144:
	.ascii	"64\000"
	.align	2
.LC145:
	.ascii	"128\000"
	.align	2
.LC146:
	.ascii	"256\000"
	.align	2
.LC147:
	.ascii	"512\000"
	.global	EEPDeviceSizeTL
	.global	EEPDeviceSizeTokens
	.align	2
.LC148:
	.ascii	"256Bytes\000"
	.align	2
.LC149:
	.ascii	"512Bytes\000"
	.align	2
.LC150:
	.ascii	"1KBytes\000"
	.align	2
.LC151:
	.ascii	"2KBytes\000"
	.align	2
.LC152:
	.ascii	"4KBytes\000"
	.align	2
.LC153:
	.ascii	"8KBytes\000"
	.align	2
.LC154:
	.ascii	"16KBytes\000"
	.align	2
.LC155:
	.ascii	"32KBytes\000"
	.align	2
.LC156:
	.ascii	"64KBytes\000"
	.align	2
.LC157:
	.ascii	"128KBytes\000"
	.align	2
.LC158:
	.ascii	"256KBytes\000"
	.align	2
.LC159:
	.ascii	"512KBytes\000"
	.align	2
.LC160:
	.ascii	"2Kbits\000"
	.align	2
.LC161:
	.ascii	"4Kbits\000"
	.align	2
.LC162:
	.ascii	"8Kbits\000"
	.align	2
.LC163:
	.ascii	"16Kbits\000"
	.align	2
.LC164:
	.ascii	"32Kbits\000"
	.align	2
.LC165:
	.ascii	"64Kbits\000"
	.align	2
.LC166:
	.ascii	"128Kbits\000"
	.align	2
.LC167:
	.ascii	"256Kbits\000"
	.align	2
.LC168:
	.ascii	"512Kbits\000"
	.align	2
.LC169:
	.ascii	"1Mbits\000"
	.align	2
.LC170:
	.ascii	"2Mbits\000"
	.align	2
.LC171:
	.ascii	"4Mbits\000"
	.global	CustomBlock6Desc
	.align	2
.LC172:
	.ascii	"BlockId\000"
	.align	2
.LC173:
	.ascii	"FileName\000"
	.global	CustomBlock5Desc
	.global	CustomBlock4Desc
	.global	CustomBlock3Desc
	.global	CustomBlock2Desc
	.global	CustomBlock1Desc
	.global	CustomBlock0Desc
	.global	VendorBlock6Desc
	.align	2
.LC174:
	.ascii	"VendorSpecificBlockId\000"
	.global	VendorBlock5Desc
	.global	VendorBlock4Desc
	.global	VendorBlock3Desc
	.global	VendorBlock2Desc
	.global	VendorBlock1Desc
	.global	VendorBlock0Desc
	.global	LFPData3Desc
	.align	2
.LC175:
	.ascii	"Interface\000"
	.global	LFPData2Desc
	.global	LFPData1Desc
	.global	LFPData0Desc
	.global	SmbiosChassisDesc
	.align	2
.LC176:
	.ascii	"Manufacturer\000"
	.align	2
.LC177:
	.ascii	"Type\000"
	.align	2
.LC178:
	.ascii	"Version\000"
	.align	2
.LC179:
	.ascii	"SerialNumber\000"
	.align	2
.LC180:
	.ascii	"AssetTag\000"
	.align	2
.LC181:
	.ascii	"OEM\000"
	.align	2
.LC182:
	.ascii	"Height\000"
	.align	2
.LC183:
	.ascii	"NumPowerCords\000"
	.global	SmbiosSystemDesc
	.align	2
.LC184:
	.ascii	"Product\000"
	.align	2
.LC185:
	.ascii	"UUID\000"
	.align	2
.LC186:
	.ascii	"SKU_Number\000"
	.align	2
.LC187:
	.ascii	"Family\000"
	.global	SmbiosCarrierDesc
	.align	2
.LC188:
	.ascii	"FeatureFlag\000"
	.align	2
.LC189:
	.ascii	"Location\000"
	.align	2
.LC190:
	.ascii	"LocationHandle\000"
	.align	2
.LC191:
	.ascii	"BoardType\000"
	.align	2
.LC192:
	.ascii	"Handles\000"
	.global	SmbiosModuleDesc
	.global	ValidMinSizeDesc
	.global	ValidMinSize
	.global	EeePExpHdr_cgf
	.global	COM0R20_SER_cgf
	.global	COM0R20_ECard1_cgf
	.global	COM0R20_ECard0_cgf
	.global	COM0R20_M_cgf
	.global	COM0R20_CB_cgf
	.global	EeePI2CDevice
	.global	EeePExtI2CDevice1
	.global	EeePExtI2CDevice0
	.global	EeeP_CustomBlock6_Cfg
	.global	EeeP_CustomBlock5_Cfg
	.global	EeeP_CustomBlock4_Cfg
	.global	EeeP_CustomBlock3_Cfg
	.global	EeeP_CustomBlock2_Cfg
	.global	EeeP_CustomBlock1_Cfg
	.global	EeeP_CustomBlock0_Cfg
	.global	EeeP_VendorBlock6_Cfg
	.global	EeeP_VendorBlock5_Cfg
	.global	EeeP_VendorBlock4_Cfg
	.global	EeeP_VendorBlock3_Cfg
	.global	EeeP_VendorBlock2_Cfg
	.global	EeeP_VendorBlock1_Cfg
	.global	EeeP_VendorBlock0_Cfg
	.global	EeeP_LFP3_Cfg
	.global	EeeP_LFP2_Cfg
	.global	EeeP_LFP1_Cfg
	.global	EeeP_LFP0_Cfg
	.global	COM0_SMBIOS_Chassis
	.global	COM0_SMBIOS_System
	.global	COM0_SMBIOS_Carrier
	.global	COM0_SMBIOS_Module
	.global	IRQTL
	.global	IRQTokens
	.align	2
.LC193:
	.ascii	"Auto\000"
	.align	2
.LC194:
	.ascii	"No_IRQ\000"
	.align	2
.LC195:
	.ascii	"IRQ3\000"
	.align	2
.LC196:
	.ascii	"IRQ4\000"
	.align	2
.LC197:
	.ascii	"IRQ5\000"
	.align	2
.LC198:
	.ascii	"IRQ6\000"
	.align	2
.LC199:
	.ascii	"IRQ7\000"
	.align	2
.LC200:
	.ascii	"IRQ8\000"
	.align	2
.LC201:
	.ascii	"IRQ9\000"
	.align	2
.LC202:
	.ascii	"IRQ10\000"
	.align	2
.LC203:
	.ascii	"IRQ11\000"
	.align	2
.LC204:
	.ascii	"IRQ12\000"
	.align	2
.LC205:
	.ascii	"IRQ13\000"
	.align	2
.LC206:
	.ascii	"IRQ14\000"
	.align	2
.LC207:
	.ascii	"IRQ15\000"
	.global	ValidHandlesDesc
	.global	ValidHandles
	.global	SmbiosChassisTypesTL
	.global	SmbiosChassisTypesTokens
	.align	2
.LC208:
	.ascii	"Other\000"
	.align	2
.LC209:
	.ascii	"Unknown\000"
	.align	2
.LC210:
	.ascii	"Desktop\000"
	.align	2
.LC211:
	.ascii	"Low_Profile_Desktop\000"
	.align	2
.LC212:
	.ascii	"Pizza_Box\000"
	.align	2
.LC213:
	.ascii	"Mini_Tower\000"
	.align	2
.LC214:
	.ascii	"Tower\000"
	.align	2
.LC215:
	.ascii	"Portable\000"
	.align	2
.LC216:
	.ascii	"Laptop\000"
	.align	2
.LC217:
	.ascii	"Notebook\000"
	.align	2
.LC218:
	.ascii	"Hand_Held\000"
	.align	2
.LC219:
	.ascii	"Docking_Station\000"
	.align	2
.LC220:
	.ascii	"All_In_One\000"
	.align	2
.LC221:
	.ascii	"Sub_Notebook\000"
	.align	2
.LC222:
	.ascii	"Space_saving_Lunch_Box\000"
	.align	2
.LC223:
	.ascii	"Main_Server_Chassis\000"
	.align	2
.LC224:
	.ascii	"Expansion_Chassis\000"
	.align	2
.LC225:
	.ascii	"SubChassis\000"
	.align	2
.LC226:
	.ascii	"Bus_Expansion_Chassis\000"
	.align	2
.LC227:
	.ascii	"Peripheral_Chassis\000"
	.align	2
.LC228:
	.ascii	"RAID_Chassis\000"
	.align	2
.LC229:
	.ascii	"Rack_Mount_Chassis\000"
	.align	2
.LC230:
	.ascii	"Sealed_case_PC\000"
	.align	2
.LC231:
	.ascii	"Multi_system_chassis\000"
	.global	SmbiSmbiosModuleFeatureFlagsTL
	.global	SmbiosModuleFeatureFlagsTokens
	.align	2
.LC232:
	.ascii	"IS_Motherboard\000"
	.align	2
.LC233:
	.ascii	"REQUIRES_DAUGHTER\000"
	.align	2
.LC234:
	.ascii	"REMOVABLE\000"
	.align	2
.LC235:
	.ascii	"REPLACEABLE\000"
	.align	2
.LC236:
	.ascii	"HOT_SWAP_CAPABLE\000"
	.global	StandardExtendedTL
	.global	StandardExtendedTokens
	.align	2
.LC237:
	.ascii	"Extended\000"
	.align	2
.LC238:
	.ascii	"Standard\000"
	.global	I2CBusTL
	.global	I2CBusTokens
	.align	2
.LC239:
	.ascii	"I2C\000"
	.align	2
.LC240:
	.ascii	"SMB\000"
	.align	2
.LC241:
	.ascii	"LVDS\000"
	.align	2
.LC242:
	.ascii	"SDVOB\000"
	.align	2
.LC243:
	.ascii	"SDVOC\000"
	.align	2
.LC244:
	.ascii	"CRT\000"
	.global	DisplayInterfaceTL
	.global	DisplayInterfaceTokens
	.global	DDI2TL
	.global	DDI2Tokens
	.align	2
.LC245:
	.ascii	"NotImplemented\000"
	.align	2
.LC246:
	.ascii	"eDisplayPort\000"
	.align	2
.LC247:
	.ascii	"DisplayPort\000"
	.align	2
.LC248:
	.ascii	"HDMI/DVI\000"
	.global	DDI1TL
	.global	DDI1Tokens
	.align	2
.LC249:
	.ascii	"SDVO\000"
	.global	ImpNotImpTL
	.global	ImpNotImpTokens
	.align	2
.LC250:
	.ascii	"Implemented\000"
	.global	SasTL
	.global	SasTokens
	.align	2
.LC251:
	.ascii	"SAS\000"
	.align	2
.LC252:
	.ascii	"SATA\000"
	.global	PCIeGenerationTL
	.global	PCIeGeneration
	.align	2
.LC253:
	.ascii	"Gen1\000"
	.align	2
.LC254:
	.ascii	"Gen2\000"
	.align	2
.LC255:
	.ascii	"Gen3\000"
	.global	PCIeLaneWidthsTL
	.global	PCIeLaneWidths
	.align	2
.LC256:
	.ascii	"x1\000"
	.align	2
.LC257:
	.ascii	"x2\000"
	.align	2
.LC258:
	.ascii	"x4\000"
	.align	2
.LC259:
	.ascii	"x8\000"
	.align	2
.LC260:
	.ascii	"x16\000"
	.align	2
.LC261:
	.ascii	"x32\000"
	.global	SmbiosBoardTypesTL
	.global	SmbiosBoardTypesTokens
	.align	2
.LC262:
	.ascii	"ServerBlade\000"
	.align	2
.LC263:
	.ascii	"ConnectivitySwitch\000"
	.align	2
.LC264:
	.ascii	"SystemManagementModule\000"
	.align	2
.LC265:
	.ascii	"ProcessorModule\000"
	.align	2
.LC266:
	.ascii	"IO_Module\000"
	.align	2
.LC267:
	.ascii	"Memory_Module\000"
	.align	2
.LC268:
	.ascii	"DaughterBoard\000"
	.align	2
.LC269:
	.ascii	"Motherboard\000"
	.align	2
.LC270:
	.ascii	"ProcessorMemory_Module\000"
	.align	2
.LC271:
	.ascii	"Interconnect_Board\000"
	.global	SmbiosStructureTypesTL
	.global	SmbiosStructureTypesTokens
	.align	2
.LC272:
	.ascii	"BIOS_INFORMATION\000"
	.align	2
.LC273:
	.ascii	"SYSTEM_INFORMATION\000"
	.align	2
.LC274:
	.ascii	"BASE_BOARD_(OR_MODULE)_INFORMATION\000"
	.align	2
.LC275:
	.ascii	"SYSTEM_ENCLOSURE_OR_CHASSIS\000"
	.align	2
.LC276:
	.ascii	"PROCESSOR_INFORMATION\000"
	.align	2
.LC277:
	.ascii	"MEMORY_CONTROLLER_INFORMATION\000"
	.align	2
.LC278:
	.ascii	"MEMORY_MODULE_INFORMATION\000"
	.align	2
.LC279:
	.ascii	"CACHE_INFORMATION\000"
	.align	2
.LC280:
	.ascii	"PORT_CONNECTOR_INFORMATION\000"
	.align	2
.LC281:
	.ascii	"SYSTEM_SLOTS\000"
	.align	2
.LC282:
	.ascii	"ON_BOARD_DEVICES_INFORMATION\000"
	.align	2
.LC283:
	.ascii	"OEM_STRINGS\000"
	.align	2
.LC284:
	.ascii	"SYSTEM_CONFIGURATION_OPTIONS\000"
	.align	2
.LC285:
	.ascii	"BIOS_LANGUAGE_INFORMATION\000"
	.align	2
.LC286:
	.ascii	"GROUP_ASSOCIATIONS\000"
	.align	2
.LC287:
	.ascii	"SYSTEM_EVENT_LOG\000"
	.align	2
.LC288:
	.ascii	"PHYSICAL_MEMORY_ARRAY\000"
	.align	2
.LC289:
	.ascii	"MEMORY_DEVICE\000"
	.align	2
.LC290:
	.ascii	"32_BIT_MEMORY_ERROR_INFORMATION\000"
	.align	2
.LC291:
	.ascii	"MEMORY_ARRAY_MAPPED_ADDRESS\000"
	.align	2
.LC292:
	.ascii	"MEMORY_DEVICE_MAPPED_ADDRESS\000"
	.align	2
.LC293:
	.ascii	"BUILT_IN_POINTING_DEVICE\000"
	.align	2
.LC294:
	.ascii	"PORTABLE_BATTERY\000"
	.align	2
.LC295:
	.ascii	"SYSTEM_RESET\000"
	.align	2
.LC296:
	.ascii	"HARDWARE_SECURITY\000"
	.align	2
.LC297:
	.ascii	"SYSTEM_POWER_CONTROLS\000"
	.align	2
.LC298:
	.ascii	"VOLTAGE_PROBE\000"
	.align	2
.LC299:
	.ascii	"COOLING_DEVICE\000"
	.align	2
.LC300:
	.ascii	"TEMPERATURE_PROBE\000"
	.align	2
.LC301:
	.ascii	"ELECTRICAL_CURRENT_PROBE\000"
	.align	2
.LC302:
	.ascii	"OUT_OF_BAND_REMOTE_ACCESS\000"
	.align	2
.LC303:
	.ascii	"BOOT_INTEGRITY_SERVICES_(BIS)_ENTRY_POINT\000"
	.align	2
.LC304:
	.ascii	"SYSTEM_BOOT_INFORMATION\000"
	.align	2
.LC305:
	.ascii	"64_BIT_MEMORY_ERROR_INFORMATION\000"
	.align	2
.LC306:
	.ascii	"MANAGEMENT_DEVICE\000"
	.align	2
.LC307:
	.ascii	"MANAGEMENT_DEVICE_COMPONENT\000"
	.align	2
.LC308:
	.ascii	"MANAGEMENT_DEVICE_THRESHOLD_DATA\000"
	.align	2
.LC309:
	.ascii	"MEMORY_CHANNEL\000"
	.align	2
.LC310:
	.ascii	"IPMI_DEVICE_INFORMATION\000"
	.align	2
.LC311:
	.ascii	"SYSTEM_POWER_SUPPLY\000"
	.align	2
.LC312:
	.ascii	"INACTIVE\000"
	.align	2
.LC313:
	.ascii	"END_OF_TABLE\000"
	.global	SMBIOS_CE_Element_funcs
	.global	COM0PCIe_Element_funcs
	.data
	.align	2
	.type	ValidIOAddrPort, %object
	.size	ValidIOAddrPort, 12
ValidIOAddrPort:
	.word	512
	.word	65528
	.word	1
	.type	ValidCOM0USBPort, %object
	.size	ValidCOM0USBPort, 12
ValidCOM0USBPort:
	.word	0
	.word	7
	.word	1
	.type	ValidCOM0PCIePort, %object
	.size	ValidCOM0PCIePort, 12
ValidCOM0PCIePort:
	.word	0
	.word	31
	.word	1
	.type	ValidModuleTypes, %object
	.size	ValidModuleTypes, 24
ValidModuleTypes:
	.word	0
	.word	6
	.word	1
	.word	10
	.word	10
	.word	1
	.type	ValidUsbSSRange, %object
	.size	ValidUsbSSRange, 12
ValidUsbSSRange:
	.word	0
	.word	4
	.word	1
	.type	ValidUsbHSRange, %object
	.size	ValidUsbHSRange, 12
ValidUsbHSRange:
	.word	0
	.word	8
	.word	1
	.type	ValidMinSize, %object
	.size	ValidMinSize, 12
ValidMinSize:
	.word	0
	.word	131068
	.word	1
	.type	COM0R20_ECard1_cgf, %object
	.size	COM0R20_ECard1_cgf, 44
COM0R20_ECard1_cgf:
	.ascii	"\001"
	.ascii	"\000"
	.ascii	"\000\000"
	.space	28
	.word	0
	.word	0
	.ascii	"\000"
	.space	3
	.type	COM0_SMBIOS_Chassis, %object
	.size	COM0_SMBIOS_Chassis, 104
COM0_SMBIOS_Chassis:
	.short	-8189
	.space	2
	.word	0
	.ascii	"\000"
	.space	3
	.word	0
	.word	0
	.word	0
	.word	0
	.ascii	"\000"
	.ascii	"\000"
	.space	2
	.word	0
	.word	0
	.ascii	"\000"
	.byte	0
	.byte	0
	.byte	0
	.space	57
	.space	3
	.type	COM0_SMBIOS_System, %object
	.size	COM0_SMBIOS_System, 56
COM0_SMBIOS_System:
	.short	-8190
	.space	2
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	0
	.space	3
	.byte	0
	.space	1
	.space	2
	.ascii	"\000\000"
	.space	6
	.word	0
	.word	0
	.word	0
	.ascii	"\000"
	.space	3
	.word	0
	.type	COM0_SMBIOS_Carrier, %object
	.size	COM0_SMBIOS_Carrier, 92
COM0_SMBIOS_Carrier:
	.short	-8191
	.space	2
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.ascii	"\000\000"
	.space	3
	.space	3
	.word	0
	.short	0
	.ascii	"\000"
	.space	1
	.word	0
	.word	0
	.ascii	"\000"
	.space	1
	.short	0
	.space	38
	.space	2
	.type	COM0_SMBIOS_Module, %object
	.size	COM0_SMBIOS_Module, 92
COM0_SMBIOS_Module:
	.short	-8192
	.space	2
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.ascii	"\000\000"
	.space	3
	.space	3
	.word	0
	.short	0
	.ascii	"\000"
	.space	1
	.word	0
	.word	0
	.ascii	"\000"
	.space	1
	.short	0
	.space	38
	.space	2
	.type	ValidHandles, %object
	.size	ValidHandles, 12
ValidHandles:
	.word	57344
	.word	65535
	.word	1
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	COM0R20_CB_cgf, %object
	.size	COM0R20_CB_cgf, 148
COM0R20_CB_cgf:
	.space	148
	.type	COM0R20_M_cgf, %object
	.size	COM0R20_M_cgf, 10
COM0R20_M_cgf:
	.space	10
	.space	2
	.type	EeePExpHdr_cgf, %object
	.size	EeePExpHdr_cgf, 12
EeePExpHdr_cgf:
	.space	12
	.type	COM0R20_SER_cgf, %object
	.size	COM0R20_SER_cgf, 20
COM0R20_SER_cgf:
	.space	20
	.type	COM0R20_ECard0_cgf, %object
	.size	COM0R20_ECard0_cgf, 44
COM0R20_ECard0_cgf:
	.space	44
	.type	EeePI2CDevice, %object
	.size	EeePI2CDevice, 16
EeePI2CDevice:
	.space	16
	.type	EeePExtI2CDevice1, %object
	.size	EeePExtI2CDevice1, 16
EeePExtI2CDevice1:
	.space	16
	.type	EeePExtI2CDevice0, %object
	.size	EeePExtI2CDevice0, 16
EeePExtI2CDevice0:
	.space	16
	.type	EeeP_CustomBlock6_Cfg, %object
	.size	EeeP_CustomBlock6_Cfg, 20
EeeP_CustomBlock6_Cfg:
	.space	20
	.type	EeeP_CustomBlock5_Cfg, %object
	.size	EeeP_CustomBlock5_Cfg, 20
EeeP_CustomBlock5_Cfg:
	.space	20
	.type	EeeP_CustomBlock4_Cfg, %object
	.size	EeeP_CustomBlock4_Cfg, 20
EeeP_CustomBlock4_Cfg:
	.space	20
	.type	EeeP_CustomBlock3_Cfg, %object
	.size	EeeP_CustomBlock3_Cfg, 20
EeeP_CustomBlock3_Cfg:
	.space	20
	.type	EeeP_CustomBlock2_Cfg, %object
	.size	EeeP_CustomBlock2_Cfg, 20
EeeP_CustomBlock2_Cfg:
	.space	20
	.type	EeeP_CustomBlock1_Cfg, %object
	.size	EeeP_CustomBlock1_Cfg, 20
EeeP_CustomBlock1_Cfg:
	.space	20
	.type	EeeP_CustomBlock0_Cfg, %object
	.size	EeeP_CustomBlock0_Cfg, 20
EeeP_CustomBlock0_Cfg:
	.space	20
	.type	EeeP_VendorBlock6_Cfg, %object
	.size	EeeP_VendorBlock6_Cfg, 20
EeeP_VendorBlock6_Cfg:
	.space	20
	.type	EeeP_VendorBlock5_Cfg, %object
	.size	EeeP_VendorBlock5_Cfg, 20
EeeP_VendorBlock5_Cfg:
	.space	20
	.type	EeeP_VendorBlock4_Cfg, %object
	.size	EeeP_VendorBlock4_Cfg, 20
EeeP_VendorBlock4_Cfg:
	.space	20
	.type	EeeP_VendorBlock3_Cfg, %object
	.size	EeeP_VendorBlock3_Cfg, 20
EeeP_VendorBlock3_Cfg:
	.space	20
	.type	EeeP_VendorBlock2_Cfg, %object
	.size	EeeP_VendorBlock2_Cfg, 20
EeeP_VendorBlock2_Cfg:
	.space	20
	.type	EeeP_VendorBlock1_Cfg, %object
	.size	EeeP_VendorBlock1_Cfg, 20
EeeP_VendorBlock1_Cfg:
	.space	20
	.type	EeeP_VendorBlock0_Cfg, %object
	.size	EeeP_VendorBlock0_Cfg, 20
EeeP_VendorBlock0_Cfg:
	.space	20
	.type	EeeP_LFP3_Cfg, %object
	.size	EeeP_LFP3_Cfg, 20
EeeP_LFP3_Cfg:
	.space	20
	.type	EeeP_LFP2_Cfg, %object
	.size	EeeP_LFP2_Cfg, 20
EeeP_LFP2_Cfg:
	.space	20
	.type	EeeP_LFP1_Cfg, %object
	.size	EeeP_LFP1_Cfg, 20
EeeP_LFP1_Cfg:
	.space	20
	.type	EeeP_LFP0_Cfg, %object
	.size	EeeP_LFP0_Cfg, 20
EeeP_LFP0_Cfg:
	.space	20
	.section	.data.rel,"aw"
	.align	2
	.type	COM0R20_SerialPortsDesc, %object
	.size	COM0R20_SerialPortsDesc, 392
COM0R20_SerialPortsDesc:
	.word	2
	.word	.LC89
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	COM0R20_SER_cgf+8
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Token_Element_funcs
	.word	InsideCrcTL
	.word	2
	.word	.LC90
	.word	0
	.word	0
	.word	1
	.word	4
	.word	4
	.word	COM0R20_SER_cgf+12
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Number_Element_funcs
	.word	ValidMinSizeDesc
	.word	2
	.word	.LC91
	.word	0
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_SER_cgf+16
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC92
	.word	0
	.word	0
	.word	1
	.word	2
	.word	4
	.word	COM0R20_SER_cgf
	.word	0
	.word	0
	.word	0
	.word	16
	.word	Number_Element_funcs
	.word	ValidIOAddrPortDesc
	.word	2
	.word	.LC93
	.word	0
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_SER_cgf+2
	.word	0
	.word	0
	.word	0
	.word	4
	.word	Token_Element_funcs
	.word	IRQTL
	.word	2
	.word	.LC94
	.word	0
	.word	0
	.word	1
	.word	2
	.word	4
	.word	COM0R20_SER_cgf+4
	.word	0
	.word	0
	.word	0
	.word	16
	.word	Number_Element_funcs
	.word	ValidIOAddrPortDesc
	.word	2
	.word	.LC95
	.word	0
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_SER_cgf+2
	.word	0
	.word	0
	.word	4
	.word	4
	.word	Token_Element_funcs
	.word	IRQTL
	.type	COM0R20_ExpCard1Desc, %object
	.size	COM0R20_ExpCard1Desc, 336
COM0R20_ExpCard1Desc:
	.word	2
	.word	.LC89
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	COM0R20_ECard1_cgf+32
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Token_Element_funcs
	.word	InsideCrcTL
	.word	2
	.word	.LC90
	.word	0
	.word	0
	.word	1
	.word	4
	.word	4
	.word	COM0R20_ECard1_cgf+36
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Number_Element_funcs
	.word	ValidMinSizeDesc
	.word	2
	.word	.LC91
	.word	0
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_ECard1_cgf+40
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC96
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_ECard1_cgf+1
	.word	0
	.word	0
	.word	0
	.word	5
	.word	Number_Element_funcs
	.word	ValidCOM0PCIePortDesc
	.word	2
	.word	.LC97
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_ECard1_cgf+1
	.word	0
	.word	0
	.word	5
	.word	3
	.word	Number_Element_funcs
	.word	ValidCOM0USBPortDesc
	.word	2
	.word	.LC31
	.word	0
	.word	0
	.word	30
	.word	1
	.word	4
	.word	COM0R20_ECard1_cgf+2
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.type	COM0R20_ExpCard0Desc, %object
	.size	COM0R20_ExpCard0Desc, 336
COM0R20_ExpCard0Desc:
	.word	2
	.word	.LC89
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	COM0R20_ECard0_cgf+32
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Token_Element_funcs
	.word	InsideCrcTL
	.word	2
	.word	.LC90
	.word	0
	.word	0
	.word	1
	.word	4
	.word	4
	.word	COM0R20_ECard0_cgf+36
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Number_Element_funcs
	.word	ValidMinSizeDesc
	.word	2
	.word	.LC91
	.word	0
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_ECard0_cgf+40
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC96
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_ECard0_cgf+1
	.word	0
	.word	0
	.word	0
	.word	5
	.word	Number_Element_funcs
	.word	ValidCOM0PCIePortDesc
	.word	2
	.word	.LC97
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_ECard0_cgf+1
	.word	0
	.word	0
	.word	5
	.word	3
	.word	Number_Element_funcs
	.word	ValidCOM0USBPortDesc
	.word	2
	.word	.LC31
	.word	0
	.word	0
	.word	30
	.word	1
	.word	4
	.word	COM0R20_ECard0_cgf+2
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.type	EeePExpHdr_Desc, %object
	.size	EeePExpHdr_Desc, 392
EeePExpHdr_Desc:
	.word	2
	.word	.LC98
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeePExpHdr_cgf
	.word	0
	.word	0
	.word	4
	.word	1
	.word	Token_Element_funcs
	.word	StandardExtendedTL
	.word	2
	.word	.LC99
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeePExpHdr_cgf
	.word	0
	.word	0
	.word	0
	.word	4
	.word	Token_Element_funcs
	.word	EEPDeviceSizeTL
	.word	2
	.word	.LC100
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeePExpHdr_cgf
	.word	0
	.word	0
	.word	5
	.word	3
	.word	Token_Element_funcs
	.word	EeePEEPWriteLenTL
	.word	2
	.word	.LC101
	.word	1
	.word	0
	.word	1
	.word	2
	.word	4
	.word	EeePExpHdr_cgf+2
	.word	0
	.word	0
	.word	0
	.word	16
	.word	PNPID_Element_funcs
	.word	0
	.word	2
	.word	.LC102
	.word	1
	.word	0
	.word	1
	.word	2
	.word	4
	.word	EeePExpHdr_cgf+4
	.word	0
	.word	0
	.word	0
	.word	16
	.word	Number_Element_funcs
	.word	UINT16RangeDesc
	.word	2
	.word	.LC103
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeePExpHdr_cgf+6
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC104
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeePExpHdr_cgf+7
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.type	COM0R20_M_Desc, %object
	.size	COM0R20_M_Desc, 504
COM0R20_M_Desc:
	.word	2
	.word	.LC98
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_M_cgf
	.word	0
	.word	0
	.word	4
	.word	1
	.word	Token_Element_funcs
	.word	StandardExtendedTL
	.word	2
	.word	.LC99
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_M_cgf
	.word	0
	.word	0
	.word	0
	.word	4
	.word	Token_Element_funcs
	.word	EEPDeviceSizeTL
	.word	2
	.word	.LC100
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_M_cgf
	.word	0
	.word	0
	.word	5
	.word	3
	.word	Token_Element_funcs
	.word	EeePEEPWriteLenTL
	.word	2
	.word	.LC101
	.word	1
	.word	0
	.word	1
	.word	2
	.word	4
	.word	COM0R20_M_cgf+2
	.word	0
	.word	0
	.word	0
	.word	16
	.word	PNPID_Element_funcs
	.word	0
	.word	2
	.word	.LC102
	.word	1
	.word	0
	.word	1
	.word	2
	.word	4
	.word	COM0R20_M_cgf+4
	.word	0
	.word	0
	.word	0
	.word	16
	.word	Number_Element_funcs
	.word	UINT16RangeDesc
	.word	2
	.word	.LC103
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_M_cgf+6
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC104
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_M_cgf+7
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC105
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_M_cgf+8
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	ValidModuleTypesDesc
	.word	2
	.word	.LC106
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_M_cgf+9
	.word	0
	.word	0
	.word	0
	.word	8
	.word	SpecRev_Element_funcs
	.word	0
	.type	COM0R20_CB_Desc, %object
	.size	COM0R20_CB_Desc, 2128
COM0R20_CB_Desc:
	.word	2
	.word	.LC98
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_CB_cgf
	.word	0
	.word	0
	.word	4
	.word	1
	.word	Token_Element_funcs
	.word	StandardExtendedTL
	.word	2
	.word	.LC99
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_CB_cgf
	.word	0
	.word	0
	.word	0
	.word	4
	.word	Token_Element_funcs
	.word	EEPDeviceSizeTL
	.word	2
	.word	.LC100
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_CB_cgf
	.word	0
	.word	0
	.word	5
	.word	3
	.word	Token_Element_funcs
	.word	EeePEEPWriteLenTL
	.word	2
	.word	.LC101
	.word	1
	.word	0
	.word	1
	.word	2
	.word	4
	.word	COM0R20_CB_cgf+2
	.word	0
	.word	0
	.word	0
	.word	16
	.word	PNPID_Element_funcs
	.word	0
	.word	2
	.word	.LC102
	.word	1
	.word	0
	.word	1
	.word	2
	.word	4
	.word	COM0R20_CB_cgf+4
	.word	0
	.word	0
	.word	0
	.word	16
	.word	Number_Element_funcs
	.word	UINT16RangeDesc
	.word	2
	.word	.LC103
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_CB_cgf+6
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC104
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_CB_cgf+7
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC107
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_CB_cgf+8
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	ValidModuleTypesDesc
	.word	2
	.word	.LC106
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_CB_cgf+9
	.word	0
	.word	0
	.word	0
	.word	8
	.word	SpecRev_Element_funcs
	.word	0
	.word	2
	.word	.LC108
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_CB_cgf+10
	.word	0
	.word	0
	.word	0
	.word	4
	.word	Number_Element_funcs
	.word	ValidUsbHSRangeDesc
	.word	2
	.word	.LC109
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_CB_cgf+10
	.word	0
	.word	0
	.word	4
	.word	3
	.word	Number_Element_funcs
	.word	ValidUsbHSRangeDesc
	.word	2
	.word	.LC110
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_CB_cgf+11
	.word	0
	.word	0
	.word	0
	.word	2
	.word	Token_Element_funcs
	.word	SasTL
	.word	2
	.word	.LC111
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_CB_cgf+11
	.word	0
	.word	0
	.word	2
	.word	2
	.word	Token_Element_funcs
	.word	SasTL
	.word	2
	.word	.LC112
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_CB_cgf+11
	.word	0
	.word	0
	.word	4
	.word	2
	.word	Token_Element_funcs
	.word	SasTL
	.word	2
	.word	.LC113
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_CB_cgf+11
	.word	0
	.word	0
	.word	6
	.word	2
	.word	Token_Element_funcs
	.word	SasTL
	.word	2
	.word	.LC114
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_CB_cgf+12
	.word	0
	.word	0
	.word	0
	.word	1
	.word	Token_Element_funcs
	.word	ImpNotImpTL
	.word	2
	.word	.LC115
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_CB_cgf+12
	.word	0
	.word	0
	.word	1
	.word	1
	.word	Token_Element_funcs
	.word	ImpNotImpTL
	.word	2
	.word	.LC116
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_CB_cgf+12
	.word	0
	.word	0
	.word	2
	.word	1
	.word	Token_Element_funcs
	.word	ImpNotImpTL
	.word	2
	.word	.LC117
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_CB_cgf+13
	.word	0
	.word	0
	.word	0
	.word	1
	.word	Token_Element_funcs
	.word	ImpNotImpTL
	.word	2
	.word	.LC118
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_CB_cgf+13
	.word	0
	.word	0
	.word	1
	.word	1
	.word	Token_Element_funcs
	.word	ImpNotImpTL
	.word	2
	.word	.LC119
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_CB_cgf+13
	.word	0
	.word	0
	.word	2
	.word	1
	.word	Token_Element_funcs
	.word	ImpNotImpTL
	.word	2
	.word	.LC120
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_CB_cgf+13
	.word	0
	.word	0
	.word	3
	.word	1
	.word	Token_Element_funcs
	.word	ImpNotImpTL
	.word	2
	.word	.LC121
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_CB_cgf+13
	.word	0
	.word	0
	.word	4
	.word	1
	.word	Token_Element_funcs
	.word	ImpNotImpTL
	.word	2
	.word	.LC122
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_CB_cgf+13
	.word	0
	.word	0
	.word	5
	.word	1
	.word	Token_Element_funcs
	.word	ImpNotImpTL
	.word	2
	.word	.LC123
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_CB_cgf+13
	.word	0
	.word	0
	.word	6
	.word	1
	.word	Token_Element_funcs
	.word	ImpNotImpTL
	.word	2
	.word	.LC124
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_CB_cgf+13
	.word	0
	.word	0
	.word	7
	.word	1
	.word	Token_Element_funcs
	.word	ImpNotImpTL
	.word	2
	.word	.LC125
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_CB_cgf+14
	.word	0
	.word	0
	.word	0
	.word	1
	.word	Token_Element_funcs
	.word	ImpNotImpTL
	.word	2
	.word	.LC126
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_CB_cgf+14
	.word	0
	.word	0
	.word	1
	.word	1
	.word	Token_Element_funcs
	.word	ImpNotImpTL
	.word	2
	.word	.LC127
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_CB_cgf+14
	.word	0
	.word	0
	.word	2
	.word	1
	.word	Token_Element_funcs
	.word	ImpNotImpTL
	.word	2
	.word	.LC128
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_CB_cgf+14
	.word	0
	.word	0
	.word	3
	.word	1
	.word	Token_Element_funcs
	.word	ImpNotImpTL
	.word	2
	.word	.LC129
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_CB_cgf+14
	.word	0
	.word	0
	.word	4
	.word	1
	.word	Token_Element_funcs
	.word	ImpNotImpTL
	.word	2
	.word	.LC130
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_CB_cgf+14
	.word	0
	.word	0
	.word	5
	.word	1
	.word	Token_Element_funcs
	.word	ImpNotImpTL
	.word	2
	.word	.LC131
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_CB_cgf+14
	.word	0
	.word	0
	.word	6
	.word	1
	.word	Token_Element_funcs
	.word	ImpNotImpTL
	.word	2
	.word	.LC132
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_CB_cgf+15
	.word	0
	.word	0
	.word	0
	.word	3
	.word	Token_Element_funcs
	.word	DDI1TL
	.word	2
	.word	.LC133
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_CB_cgf+15
	.word	0
	.word	0
	.word	4
	.word	3
	.word	Token_Element_funcs
	.word	DDI1TL
	.word	2
	.word	.LC134
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_CB_cgf+16
	.word	0
	.word	0
	.word	0
	.word	2
	.word	Token_Element_funcs
	.word	DDI2TL
	.word	2
	.word	.LC135
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0R20_CB_cgf+16
	.word	0
	.word	0
	.word	4
	.word	2
	.word	Token_Element_funcs
	.word	DDI2TL
	.word	2
	.word	.LC15
	.word	1
	.word	0
	.word	32
	.word	4
	.word	4
	.word	COM0R20_CB_cgf+20
	.word	0
	.word	0
	.word	0
	.word	32
	.word	COM0PCIe_Element_funcs
	.word	0
	.type	ExtI2CDevice1Desc, %object
	.size	ExtI2CDevice1Desc, 392
ExtI2CDevice1Desc:
	.word	2
	.word	.LC89
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeePExtI2CDevice1+4
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Token_Element_funcs
	.word	InsideCrcTL
	.word	2
	.word	.LC90
	.word	0
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeePExtI2CDevice1+8
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Number_Element_funcs
	.word	ValidMinSizeDesc
	.word	2
	.word	.LC91
	.word	0
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeePExtI2CDevice1+12
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC136
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeePExtI2CDevice1+2
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Token_Element_funcs
	.word	I2CBusTL
	.word	2
	.word	.LC137
	.word	1
	.word	0
	.word	1
	.word	2
	.word	4
	.word	EeePExtI2CDevice1
	.word	0
	.word	0
	.word	0
	.word	16
	.word	I2C_EEPROM_Addr_funcs
	.word	0
	.word	2
	.word	.LC138
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeePExtI2CDevice1+3
	.word	0
	.word	0
	.word	4
	.word	1
	.word	Token_Element_funcs
	.word	StandardExtendedTL
	.word	2
	.word	.LC139
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeePExtI2CDevice1+3
	.word	0
	.word	0
	.word	0
	.word	4
	.word	Token_Element_funcs
	.word	EEPDeviceSizeTL
	.type	ExtI2CDevice0Desc, %object
	.size	ExtI2CDevice0Desc, 392
ExtI2CDevice0Desc:
	.word	2
	.word	.LC89
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeePExtI2CDevice0+4
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Token_Element_funcs
	.word	InsideCrcTL
	.word	2
	.word	.LC90
	.word	0
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeePExtI2CDevice0+8
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Number_Element_funcs
	.word	ValidMinSizeDesc
	.word	2
	.word	.LC91
	.word	0
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeePExtI2CDevice0+12
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC136
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeePExtI2CDevice0+2
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Token_Element_funcs
	.word	I2CBusTL
	.word	2
	.word	.LC137
	.word	1
	.word	0
	.word	1
	.word	2
	.word	4
	.word	EeePExtI2CDevice0
	.word	0
	.word	0
	.word	0
	.word	16
	.word	I2C_EEPROM_Addr_funcs
	.word	0
	.word	2
	.word	.LC138
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeePExtI2CDevice0+3
	.word	0
	.word	0
	.word	4
	.word	1
	.word	Token_Element_funcs
	.word	StandardExtendedTL
	.word	2
	.word	.LC139
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeePExtI2CDevice0+3
	.word	0
	.word	0
	.word	0
	.word	4
	.word	Token_Element_funcs
	.word	EEPDeviceSizeTL
	.type	CustomBlock6Desc, %object
	.size	CustomBlock6Desc, 280
CustomBlock6Desc:
	.word	2
	.word	.LC89
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_CustomBlock6_Cfg+8
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Token_Element_funcs
	.word	InsideCrcTL
	.word	2
	.word	.LC90
	.word	0
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_CustomBlock6_Cfg+12
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Number_Element_funcs
	.word	ValidMinSizeDesc
	.word	2
	.word	.LC91
	.word	0
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeeP_CustomBlock6_Cfg+16
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC172
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeeP_CustomBlock6_Cfg
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC173
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_CustomBlock6_Cfg+4
	.word	0
	.word	0
	.word	0
	.word	32
	.word	String_Element_funcs
	.word	DeleteTrailingSpaces
	.type	CustomBlock5Desc, %object
	.size	CustomBlock5Desc, 280
CustomBlock5Desc:
	.word	2
	.word	.LC89
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_CustomBlock5_Cfg+8
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Token_Element_funcs
	.word	InsideCrcTL
	.word	2
	.word	.LC90
	.word	0
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_CustomBlock5_Cfg+12
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Number_Element_funcs
	.word	ValidMinSizeDesc
	.word	2
	.word	.LC91
	.word	0
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeeP_CustomBlock5_Cfg+16
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC172
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeeP_CustomBlock5_Cfg
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC173
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_CustomBlock5_Cfg+4
	.word	0
	.word	0
	.word	0
	.word	32
	.word	String_Element_funcs
	.word	DeleteTrailingSpaces
	.type	CustomBlock4Desc, %object
	.size	CustomBlock4Desc, 280
CustomBlock4Desc:
	.word	2
	.word	.LC89
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_CustomBlock4_Cfg+8
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Token_Element_funcs
	.word	InsideCrcTL
	.word	2
	.word	.LC90
	.word	0
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_CustomBlock4_Cfg+12
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Number_Element_funcs
	.word	ValidMinSizeDesc
	.word	2
	.word	.LC91
	.word	0
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeeP_CustomBlock4_Cfg+16
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC172
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeeP_CustomBlock4_Cfg
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC173
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_CustomBlock4_Cfg+4
	.word	0
	.word	0
	.word	0
	.word	32
	.word	String_Element_funcs
	.word	DeleteTrailingSpaces
	.type	CustomBlock3Desc, %object
	.size	CustomBlock3Desc, 280
CustomBlock3Desc:
	.word	2
	.word	.LC89
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_CustomBlock3_Cfg+8
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Token_Element_funcs
	.word	InsideCrcTL
	.word	2
	.word	.LC90
	.word	0
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_CustomBlock3_Cfg+12
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Number_Element_funcs
	.word	ValidMinSizeDesc
	.word	2
	.word	.LC91
	.word	0
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeeP_CustomBlock3_Cfg+16
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC172
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeeP_CustomBlock3_Cfg
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC173
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_CustomBlock3_Cfg+4
	.word	0
	.word	0
	.word	0
	.word	32
	.word	String_Element_funcs
	.word	DeleteTrailingSpaces
	.type	CustomBlock2Desc, %object
	.size	CustomBlock2Desc, 280
CustomBlock2Desc:
	.word	2
	.word	.LC89
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_CustomBlock2_Cfg+8
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Token_Element_funcs
	.word	InsideCrcTL
	.word	2
	.word	.LC90
	.word	0
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_CustomBlock2_Cfg+12
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Number_Element_funcs
	.word	ValidMinSizeDesc
	.word	2
	.word	.LC91
	.word	0
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeeP_CustomBlock2_Cfg+16
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC172
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeeP_CustomBlock2_Cfg
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC173
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_CustomBlock2_Cfg+4
	.word	0
	.word	0
	.word	0
	.word	32
	.word	String_Element_funcs
	.word	DeleteTrailingSpaces
	.type	CustomBlock1Desc, %object
	.size	CustomBlock1Desc, 280
CustomBlock1Desc:
	.word	2
	.word	.LC89
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_CustomBlock1_Cfg+8
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Token_Element_funcs
	.word	InsideCrcTL
	.word	2
	.word	.LC90
	.word	0
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_CustomBlock1_Cfg+12
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Number_Element_funcs
	.word	ValidMinSizeDesc
	.word	2
	.word	.LC91
	.word	0
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeeP_CustomBlock1_Cfg+16
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC172
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeeP_CustomBlock1_Cfg
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC173
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_CustomBlock1_Cfg+4
	.word	0
	.word	0
	.word	0
	.word	32
	.word	String_Element_funcs
	.word	DeleteTrailingSpaces
	.type	CustomBlock0Desc, %object
	.size	CustomBlock0Desc, 280
CustomBlock0Desc:
	.word	2
	.word	.LC89
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_CustomBlock0_Cfg+8
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Token_Element_funcs
	.word	InsideCrcTL
	.word	2
	.word	.LC90
	.word	0
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_CustomBlock0_Cfg+12
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Number_Element_funcs
	.word	ValidMinSizeDesc
	.word	2
	.word	.LC91
	.word	0
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeeP_CustomBlock0_Cfg+16
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC172
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeeP_CustomBlock0_Cfg
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC173
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_CustomBlock0_Cfg+4
	.word	0
	.word	0
	.word	0
	.word	32
	.word	String_Element_funcs
	.word	DeleteTrailingSpaces
	.type	VendorBlock6Desc, %object
	.size	VendorBlock6Desc, 336
VendorBlock6Desc:
	.word	2
	.word	.LC89
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_VendorBlock6_Cfg+8
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Token_Element_funcs
	.word	InsideCrcTL
	.word	2
	.word	.LC90
	.word	0
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_VendorBlock6_Cfg+12
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Number_Element_funcs
	.word	ValidMinSizeDesc
	.word	2
	.word	.LC91
	.word	0
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeeP_VendorBlock6_Cfg+16
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC101
	.word	1
	.word	0
	.word	1
	.word	2
	.word	4
	.word	EeeP_VendorBlock6_Cfg+4
	.word	0
	.word	0
	.word	0
	.word	16
	.word	PNPID_Element_funcs
	.word	0
	.word	2
	.word	.LC174
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeeP_VendorBlock6_Cfg+17
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC173
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_VendorBlock6_Cfg
	.word	0
	.word	0
	.word	0
	.word	32
	.word	String_Element_funcs
	.word	DeleteTrailingSpaces
	.type	VendorBlock5Desc, %object
	.size	VendorBlock5Desc, 336
VendorBlock5Desc:
	.word	2
	.word	.LC89
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_VendorBlock5_Cfg+8
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Token_Element_funcs
	.word	InsideCrcTL
	.word	2
	.word	.LC90
	.word	0
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_VendorBlock5_Cfg+12
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Number_Element_funcs
	.word	ValidMinSizeDesc
	.word	2
	.word	.LC91
	.word	0
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeeP_VendorBlock5_Cfg+16
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC101
	.word	1
	.word	0
	.word	1
	.word	2
	.word	4
	.word	EeeP_VendorBlock5_Cfg+4
	.word	0
	.word	0
	.word	0
	.word	16
	.word	PNPID_Element_funcs
	.word	0
	.word	2
	.word	.LC174
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeeP_VendorBlock5_Cfg+17
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC173
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_VendorBlock5_Cfg
	.word	0
	.word	0
	.word	0
	.word	32
	.word	String_Element_funcs
	.word	DeleteTrailingSpaces
	.type	VendorBlock4Desc, %object
	.size	VendorBlock4Desc, 336
VendorBlock4Desc:
	.word	2
	.word	.LC89
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_VendorBlock4_Cfg+8
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Token_Element_funcs
	.word	InsideCrcTL
	.word	2
	.word	.LC90
	.word	0
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_VendorBlock4_Cfg+12
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Number_Element_funcs
	.word	ValidMinSizeDesc
	.word	2
	.word	.LC91
	.word	0
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeeP_VendorBlock4_Cfg+16
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC101
	.word	1
	.word	0
	.word	1
	.word	2
	.word	4
	.word	EeeP_VendorBlock4_Cfg+4
	.word	0
	.word	0
	.word	0
	.word	16
	.word	PNPID_Element_funcs
	.word	0
	.word	2
	.word	.LC174
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeeP_VendorBlock4_Cfg+17
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC173
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_VendorBlock4_Cfg
	.word	0
	.word	0
	.word	0
	.word	32
	.word	String_Element_funcs
	.word	0
	.type	VendorBlock3Desc, %object
	.size	VendorBlock3Desc, 336
VendorBlock3Desc:
	.word	2
	.word	.LC89
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_VendorBlock3_Cfg+8
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Token_Element_funcs
	.word	InsideCrcTL
	.word	2
	.word	.LC90
	.word	0
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_VendorBlock3_Cfg+12
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Number_Element_funcs
	.word	ValidMinSizeDesc
	.word	2
	.word	.LC91
	.word	0
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeeP_VendorBlock3_Cfg+16
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC101
	.word	1
	.word	0
	.word	1
	.word	2
	.word	4
	.word	EeeP_VendorBlock3_Cfg+4
	.word	0
	.word	0
	.word	0
	.word	16
	.word	PNPID_Element_funcs
	.word	0
	.word	2
	.word	.LC174
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeeP_VendorBlock3_Cfg+17
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC173
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_VendorBlock3_Cfg
	.word	0
	.word	0
	.word	0
	.word	32
	.word	String_Element_funcs
	.word	DeleteTrailingSpaces
	.type	VendorBlock2Desc, %object
	.size	VendorBlock2Desc, 336
VendorBlock2Desc:
	.word	2
	.word	.LC89
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_VendorBlock2_Cfg+8
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Token_Element_funcs
	.word	InsideCrcTL
	.word	2
	.word	.LC90
	.word	0
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_VendorBlock2_Cfg+12
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Number_Element_funcs
	.word	ValidMinSizeDesc
	.word	2
	.word	.LC91
	.word	0
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeeP_VendorBlock2_Cfg+16
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC101
	.word	1
	.word	0
	.word	1
	.word	2
	.word	4
	.word	EeeP_VendorBlock2_Cfg+4
	.word	0
	.word	0
	.word	0
	.word	16
	.word	PNPID_Element_funcs
	.word	0
	.word	2
	.word	.LC174
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeeP_VendorBlock2_Cfg+17
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC173
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_VendorBlock2_Cfg
	.word	0
	.word	0
	.word	0
	.word	32
	.word	String_Element_funcs
	.word	DeleteTrailingSpaces
	.type	VendorBlock1Desc, %object
	.size	VendorBlock1Desc, 336
VendorBlock1Desc:
	.word	2
	.word	.LC89
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_VendorBlock1_Cfg+8
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Token_Element_funcs
	.word	InsideCrcTL
	.word	2
	.word	.LC90
	.word	0
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_VendorBlock1_Cfg+12
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Number_Element_funcs
	.word	ValidMinSizeDesc
	.word	2
	.word	.LC91
	.word	0
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeeP_VendorBlock1_Cfg+16
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC101
	.word	1
	.word	0
	.word	1
	.word	2
	.word	4
	.word	EeeP_VendorBlock1_Cfg+4
	.word	0
	.word	0
	.word	0
	.word	16
	.word	PNPID_Element_funcs
	.word	0
	.word	2
	.word	.LC174
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeeP_VendorBlock1_Cfg+17
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC173
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_VendorBlock1_Cfg
	.word	0
	.word	0
	.word	0
	.word	32
	.word	String_Element_funcs
	.word	DeleteTrailingSpaces
	.type	VendorBlock0Desc, %object
	.size	VendorBlock0Desc, 336
VendorBlock0Desc:
	.word	2
	.word	.LC89
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_VendorBlock0_Cfg+8
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Token_Element_funcs
	.word	InsideCrcTL
	.word	2
	.word	.LC90
	.word	0
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_VendorBlock0_Cfg+12
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Number_Element_funcs
	.word	ValidMinSizeDesc
	.word	2
	.word	.LC91
	.word	0
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeeP_VendorBlock0_Cfg+16
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC101
	.word	1
	.word	0
	.word	1
	.word	2
	.word	4
	.word	EeeP_VendorBlock0_Cfg+4
	.word	0
	.word	0
	.word	0
	.word	16
	.word	PNPID_Element_funcs
	.word	0
	.word	2
	.word	.LC174
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeeP_VendorBlock0_Cfg+17
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC173
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_VendorBlock0_Cfg
	.word	0
	.word	0
	.word	0
	.word	32
	.word	String_Element_funcs
	.word	DeleteTrailingSpaces
	.type	LFPData3Desc, %object
	.size	LFPData3Desc, 280
LFPData3Desc:
	.word	2
	.word	.LC89
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_LFP3_Cfg+8
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Token_Element_funcs
	.word	InsideCrcTL
	.word	2
	.word	.LC90
	.word	0
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_LFP3_Cfg+12
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Number_Element_funcs
	.word	ValidMinSizeDesc
	.word	2
	.word	.LC91
	.word	0
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeeP_LFP3_Cfg+16
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC175
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeeP_LFP3_Cfg
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Token_Element_funcs
	.word	DisplayInterfaceTL
	.word	2
	.word	.LC173
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_LFP3_Cfg+4
	.word	0
	.word	0
	.word	0
	.word	32
	.word	String_Element_funcs
	.word	DeleteTrailingSpaces
	.type	LFPData2Desc, %object
	.size	LFPData2Desc, 280
LFPData2Desc:
	.word	2
	.word	.LC89
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_LFP2_Cfg+8
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Token_Element_funcs
	.word	InsideCrcTL
	.word	2
	.word	.LC90
	.word	0
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_LFP2_Cfg+12
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Number_Element_funcs
	.word	ValidMinSizeDesc
	.word	2
	.word	.LC91
	.word	0
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeeP_LFP2_Cfg+16
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC175
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeeP_LFP2_Cfg
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Token_Element_funcs
	.word	DisplayInterfaceTL
	.word	2
	.word	.LC173
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_LFP2_Cfg+4
	.word	0
	.word	0
	.word	0
	.word	32
	.word	String_Element_funcs
	.word	DeleteTrailingSpaces
	.type	LFPData1Desc, %object
	.size	LFPData1Desc, 280
LFPData1Desc:
	.word	2
	.word	.LC89
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_LFP1_Cfg+8
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Token_Element_funcs
	.word	InsideCrcTL
	.word	2
	.word	.LC90
	.word	0
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_LFP1_Cfg+12
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Number_Element_funcs
	.word	ValidMinSizeDesc
	.word	2
	.word	.LC91
	.word	0
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeeP_LFP1_Cfg+16
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC175
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeeP_LFP1_Cfg
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Token_Element_funcs
	.word	DisplayInterfaceTL
	.word	2
	.word	.LC173
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_LFP1_Cfg+4
	.word	0
	.word	0
	.word	0
	.word	32
	.word	String_Element_funcs
	.word	DeleteTrailingSpaces
	.type	LFPData0Desc, %object
	.size	LFPData0Desc, 280
LFPData0Desc:
	.word	2
	.word	.LC89
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_LFP0_Cfg+8
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Token_Element_funcs
	.word	InsideCrcTL
	.word	2
	.word	.LC90
	.word	0
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_LFP0_Cfg+12
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Number_Element_funcs
	.word	ValidMinSizeDesc
	.word	2
	.word	.LC91
	.word	0
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeeP_LFP0_Cfg+16
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC175
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	EeeP_LFP0_Cfg
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Token_Element_funcs
	.word	DisplayInterfaceTL
	.word	2
	.word	.LC173
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	EeeP_LFP0_Cfg+4
	.word	0
	.word	0
	.word	0
	.word	32
	.word	String_Element_funcs
	.word	DeleteTrailingSpaces
	.type	SmbiosChassisDesc, %object
	.size	SmbiosChassisDesc, 672
SmbiosChassisDesc:
	.word	2
	.word	.LC89
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	COM0_SMBIOS_Chassis+32
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Token_Element_funcs
	.word	InsideCrcTL
	.word	2
	.word	.LC90
	.word	0
	.word	0
	.word	1
	.word	4
	.word	4
	.word	COM0_SMBIOS_Chassis+36
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Number_Element_funcs
	.word	ValidMinSizeDesc
	.word	2
	.word	.LC91
	.word	0
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0_SMBIOS_Chassis+40
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC176
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	COM0_SMBIOS_Chassis+4
	.word	0
	.word	0
	.word	0
	.word	32
	.word	String_Element_funcs
	.word	PreserveTrailingSpaces
	.word	2
	.word	.LC177
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0_SMBIOS_Chassis+8
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Token_Element_funcs
	.word	SmbiosChassisTypesTL
	.word	2
	.word	.LC178
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	COM0_SMBIOS_Chassis+12
	.word	0
	.word	0
	.word	0
	.word	32
	.word	String_Element_funcs
	.word	PreserveTrailingSpaces
	.word	2
	.word	.LC179
	.word	0
	.word	0
	.word	1
	.word	4
	.word	4
	.word	COM0_SMBIOS_Chassis+16
	.word	0
	.word	0
	.word	0
	.word	32
	.word	String_Element_funcs
	.word	PreserveTrailingSpaces
	.word	2
	.word	.LC180
	.word	0
	.word	0
	.word	1
	.word	4
	.word	4
	.word	COM0_SMBIOS_Chassis+20
	.word	0
	.word	0
	.word	0
	.word	32
	.word	String_Element_funcs
	.word	PreserveTrailingSpaces
	.word	2
	.word	.LC181
	.word	0
	.word	0
	.word	1
	.word	4
	.word	4
	.word	COM0_SMBIOS_Chassis+24
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Number_Element_funcs
	.word	UINT32RangeDesc
	.word	2
	.word	.LC182
	.word	0
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0_SMBIOS_Chassis+28
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC183
	.word	0
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0_SMBIOS_Chassis+29
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC35
	.word	0
	.word	0
	.word	20
	.word	3
	.word	4
	.word	COM0_SMBIOS_Chassis+41
	.word	0
	.word	0
	.word	0
	.word	24
	.word	SMBIOS_CE_Element_funcs
	.word	0
	.type	SmbiosSystemDesc, %object
	.size	SmbiosSystemDesc, 560
SmbiosSystemDesc:
	.word	2
	.word	.LC89
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	COM0_SMBIOS_System+40
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Token_Element_funcs
	.word	InsideCrcTL
	.word	2
	.word	.LC90
	.word	0
	.word	0
	.word	1
	.word	4
	.word	4
	.word	COM0_SMBIOS_System+44
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Number_Element_funcs
	.word	ValidMinSizeDesc
	.word	2
	.word	.LC91
	.word	0
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0_SMBIOS_System+48
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC176
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	COM0_SMBIOS_System+4
	.word	0
	.word	0
	.word	0
	.word	32
	.word	String_Element_funcs
	.word	PreserveTrailingSpaces
	.word	2
	.word	.LC184
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	COM0_SMBIOS_System+8
	.word	0
	.word	0
	.word	0
	.word	32
	.word	String_Element_funcs
	.word	PreserveTrailingSpaces
	.word	2
	.word	.LC178
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	COM0_SMBIOS_System+12
	.word	0
	.word	0
	.word	0
	.word	32
	.word	String_Element_funcs
	.word	PreserveTrailingSpaces
	.word	2
	.word	.LC179
	.word	0
	.word	0
	.word	1
	.word	4
	.word	4
	.word	COM0_SMBIOS_System+16
	.word	0
	.word	0
	.word	0
	.word	32
	.word	String_Element_funcs
	.word	PreserveTrailingSpaces
	.word	2
	.word	.LC185
	.word	0
	.word	0
	.word	1
	.word	16
	.word	4
	.word	COM0_SMBIOS_System+20
	.word	0
	.word	0
	.word	0
	.word	128
	.word	GUID_Element_funcs
	.word	0
	.word	2
	.word	.LC186
	.word	0
	.word	0
	.word	1
	.word	4
	.word	4
	.word	COM0_SMBIOS_System+36
	.word	0
	.word	0
	.word	0
	.word	32
	.word	String_Element_funcs
	.word	PreserveTrailingSpaces
	.word	2
	.word	.LC187
	.word	0
	.word	0
	.word	1
	.word	4
	.word	4
	.word	COM0_SMBIOS_System+52
	.word	0
	.word	0
	.word	0
	.word	32
	.word	String_Element_funcs
	.word	PreserveTrailingSpaces
	.type	SmbiosCarrierDesc, %object
	.size	SmbiosCarrierDesc, 728
SmbiosCarrierDesc:
	.word	2
	.word	.LC89
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	COM0_SMBIOS_Carrier+40
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Token_Element_funcs
	.word	InsideCrcTL
	.word	2
	.word	.LC90
	.word	0
	.word	0
	.word	1
	.word	4
	.word	4
	.word	COM0_SMBIOS_Carrier+44
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Number_Element_funcs
	.word	ValidMinSizeDesc
	.word	2
	.word	.LC91
	.word	0
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0_SMBIOS_Carrier+48
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC176
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	COM0_SMBIOS_Carrier+4
	.word	0
	.word	0
	.word	0
	.word	32
	.word	String_Element_funcs
	.word	PreserveTrailingSpaces
	.word	2
	.word	.LC184
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	COM0_SMBIOS_Carrier+8
	.word	0
	.word	0
	.word	0
	.word	32
	.word	String_Element_funcs
	.word	PreserveTrailingSpaces
	.word	2
	.word	.LC178
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	COM0_SMBIOS_Carrier+12
	.word	0
	.word	0
	.word	0
	.word	32
	.word	String_Element_funcs
	.word	PreserveTrailingSpaces
	.word	2
	.word	.LC179
	.word	0
	.word	0
	.word	1
	.word	4
	.word	4
	.word	COM0_SMBIOS_Carrier+16
	.word	0
	.word	0
	.word	0
	.word	32
	.word	String_Element_funcs
	.word	PreserveTrailingSpaces
	.word	2
	.word	.LC180
	.word	0
	.word	0
	.word	1
	.word	4
	.word	4
	.word	COM0_SMBIOS_Carrier+20
	.word	0
	.word	0
	.word	0
	.word	32
	.word	String_Element_funcs
	.word	PreserveTrailingSpaces
	.word	2
	.word	.LC188
	.word	1
	.word	0
	.word	5
	.word	1
	.word	4
	.word	COM0_SMBIOS_Carrier+24
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Token_Element_funcs
	.word	SmbiSmbiosModuleFeatureFlagsTL
	.word	2
	.word	.LC189
	.word	0
	.word	0
	.word	1
	.word	4
	.word	4
	.word	COM0_SMBIOS_Carrier+32
	.word	0
	.word	0
	.word	0
	.word	32
	.word	String_Element_funcs
	.word	PreserveTrailingSpaces
	.word	2
	.word	.LC190
	.word	0
	.word	0
	.word	1
	.word	2
	.word	4
	.word	COM0_SMBIOS_Carrier+36
	.word	0
	.word	0
	.word	0
	.word	16
	.word	Number_Element_funcs
	.word	ValidHandlesDesc
	.word	2
	.word	.LC191
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0_SMBIOS_Carrier+38
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Token_Element_funcs
	.word	SmbiosBoardTypesTL
	.word	2
	.word	.LC192
	.word	0
	.word	0
	.word	20
	.word	2
	.word	4
	.word	COM0_SMBIOS_Carrier+50
	.word	0
	.word	0
	.word	0
	.word	16
	.word	Number_Element_funcs
	.word	ValidHandlesDesc
	.type	SmbiosModuleDesc, %object
	.size	SmbiosModuleDesc, 728
SmbiosModuleDesc:
	.word	2
	.word	.LC89
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	COM0_SMBIOS_Module+40
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Token_Element_funcs
	.word	InsideCrcTL
	.word	2
	.word	.LC90
	.word	0
	.word	0
	.word	1
	.word	4
	.word	4
	.word	COM0_SMBIOS_Module+44
	.word	0
	.word	0
	.word	0
	.word	32
	.word	Number_Element_funcs
	.word	ValidMinSizeDesc
	.word	2
	.word	.LC91
	.word	0
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0_SMBIOS_Module+48
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Number_Element_funcs
	.word	UINT8RangeDesc
	.word	2
	.word	.LC176
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	COM0_SMBIOS_Module+4
	.word	0
	.word	0
	.word	0
	.word	32
	.word	String_Element_funcs
	.word	PreserveTrailingSpaces
	.word	2
	.word	.LC184
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	COM0_SMBIOS_Module+8
	.word	0
	.word	0
	.word	0
	.word	32
	.word	String_Element_funcs
	.word	PreserveTrailingSpaces
	.word	2
	.word	.LC178
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	COM0_SMBIOS_Module+12
	.word	0
	.word	0
	.word	0
	.word	32
	.word	String_Element_funcs
	.word	PreserveTrailingSpaces
	.word	2
	.word	.LC179
	.word	0
	.word	0
	.word	1
	.word	4
	.word	4
	.word	COM0_SMBIOS_Module+16
	.word	0
	.word	0
	.word	0
	.word	32
	.word	String_Element_funcs
	.word	PreserveTrailingSpaces
	.word	2
	.word	.LC180
	.word	0
	.word	0
	.word	1
	.word	4
	.word	4
	.word	COM0_SMBIOS_Module+20
	.word	0
	.word	0
	.word	0
	.word	32
	.word	String_Element_funcs
	.word	PreserveTrailingSpaces
	.word	2
	.word	.LC188
	.word	1
	.word	0
	.word	5
	.word	1
	.word	4
	.word	COM0_SMBIOS_Module+24
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Token_Element_funcs
	.word	SmbiSmbiosModuleFeatureFlagsTL
	.word	2
	.word	.LC189
	.word	0
	.word	0
	.word	1
	.word	4
	.word	4
	.word	COM0_SMBIOS_Module+32
	.word	0
	.word	0
	.word	0
	.word	32
	.word	String_Element_funcs
	.word	PreserveTrailingSpaces
	.word	2
	.word	.LC190
	.word	0
	.word	0
	.word	1
	.word	2
	.word	4
	.word	COM0_SMBIOS_Module+36
	.word	0
	.word	0
	.word	0
	.word	16
	.word	Number_Element_funcs
	.word	ValidHandlesDesc
	.word	2
	.word	.LC191
	.word	1
	.word	0
	.word	1
	.word	1
	.word	4
	.word	COM0_SMBIOS_Module+38
	.word	0
	.word	0
	.word	0
	.word	8
	.word	Token_Element_funcs
	.word	SmbiosBoardTypesTL
	.word	2
	.word	.LC192
	.word	0
	.word	0
	.word	20
	.word	2
	.word	4
	.word	COM0_SMBIOS_Module+50
	.word	0
	.word	0
	.word	0
	.word	16
	.word	Number_Element_funcs
	.word	ValidHandlesDesc
	.type	SMBIOS_CE_Element_funcs, %object
	.size	SMBIOS_CE_Element_funcs, 16
SMBIOS_CE_Element_funcs:
	.word	SMBIOS_CE_Element
	.word	GenClear_Element
	.word	SMBIOS_CE_Help
	.word	No_Default_Txt
	.type	COM0PCIe_Element_funcs, %object
	.size	COM0PCIe_Element_funcs, 16
COM0PCIe_Element_funcs:
	.word	COM0PCIe_Element
	.word	GenClear_Element
	.word	COM0PCIe_Help
	.word	No_Default_Txt
	.section	.data.rel.local,"aw"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	SmbiosBoardTypesTokens, %object
	.size	SmbiosBoardTypesTokens, 96
SmbiosBoardTypesTokens:
	.word	.LC209
	.word	0
	.word	.LC208
	.word	1
	.word	.LC262
	.word	2
	.word	.LC263
	.word	3
	.word	.LC264
	.word	4
	.word	.LC265
	.word	5
	.word	.LC266
	.word	6
	.word	.LC267
	.word	7
	.word	.LC268
	.word	8
	.word	.LC269
	.word	9
	.word	.LC270
	.word	10
	.word	.LC271
	.word	11
	.type	SmbiosStructureTypesTokens, %object
	.size	SmbiosStructureTypesTokens, 336
SmbiosStructureTypesTokens:
	.word	.LC272
	.word	0
	.word	.LC273
	.word	1
	.word	.LC274
	.word	2
	.word	.LC275
	.word	3
	.word	.LC276
	.word	4
	.word	.LC277
	.word	5
	.word	.LC278
	.word	6
	.word	.LC279
	.word	7
	.word	.LC280
	.word	8
	.word	.LC281
	.word	9
	.word	.LC282
	.word	10
	.word	.LC283
	.word	11
	.word	.LC284
	.word	12
	.word	.LC285
	.word	13
	.word	.LC286
	.word	14
	.word	.LC287
	.word	15
	.word	.LC288
	.word	16
	.word	.LC289
	.word	17
	.word	.LC290
	.word	18
	.word	.LC291
	.word	19
	.word	.LC292
	.word	20
	.word	.LC293
	.word	21
	.word	.LC294
	.word	22
	.word	.LC295
	.word	23
	.word	.LC296
	.word	24
	.word	.LC297
	.word	25
	.word	.LC298
	.word	26
	.word	.LC299
	.word	27
	.word	.LC300
	.word	28
	.word	.LC301
	.word	29
	.word	.LC302
	.word	30
	.word	.LC303
	.word	31
	.word	.LC304
	.word	32
	.word	.LC305
	.word	33
	.word	.LC306
	.word	34
	.word	.LC307
	.word	35
	.word	.LC308
	.word	36
	.word	.LC309
	.word	37
	.word	.LC310
	.word	38
	.word	.LC311
	.word	39
	.word	.LC312
	.word	126
	.word	.LC313
	.word	127
	.type	PCIeLaneWidths, %object
	.size	PCIeLaneWidths, 48
PCIeLaneWidths:
	.word	.LC256
	.word	1
	.word	.LC257
	.word	2
	.word	.LC258
	.word	3
	.word	.LC259
	.word	4
	.word	.LC260
	.word	5
	.word	.LC261
	.word	6
	.type	PCIeGeneration, %object
	.size	PCIeGeneration, 24
PCIeGeneration:
	.word	.LC253
	.word	0
	.word	.LC254
	.word	1
	.word	.LC255
	.word	2
	.type	SmbiosStructureTypesTL, %object
	.size	SmbiosStructureTypesTL, 8
SmbiosStructureTypesTL:
	.word	42
	.word	SmbiosStructureTypesTokens
	.type	SmbiosBoardTypesTL, %object
	.size	SmbiosBoardTypesTL, 8
SmbiosBoardTypesTL:
	.word	12
	.word	SmbiosBoardTypesTokens
	.type	PCIeLaneWidthsTL, %object
	.size	PCIeLaneWidthsTL, 8
PCIeLaneWidthsTL:
	.word	6
	.word	PCIeLaneWidths
	.type	PCIeGenerationTL, %object
	.size	PCIeGenerationTL, 8
PCIeGenerationTL:
	.word	3
	.word	PCIeGeneration
	.type	COM0R20_CB_CfgDesc, %object
	.size	COM0R20_CB_CfgDesc, 1400
COM0R20_CB_CfgDesc:
	.word	1
	.word	.LC88
	.word	-1
	.word	38
	.word	38
	.word	56
	.word	4
	.word	COM0R20_CB_Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleCOM0R20CBHeaderBlock
	.word	COM0R20_CB_cgf
	.word	1
	.word	.LC62
	.word	0
	.word	13
	.word	13
	.word	56
	.word	4
	.word	SmbiosCarrierDesc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleSmbiosModuleBlock
	.word	COM0_SMBIOS_Carrier
	.word	1
	.word	.LC63
	.word	0
	.word	10
	.word	10
	.word	56
	.word	4
	.word	SmbiosSystemDesc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleSmbiosSystemBlock
	.word	COM0_SMBIOS_System
	.word	1
	.word	.LC64
	.word	0
	.word	12
	.word	12
	.word	56
	.word	4
	.word	SmbiosChassisDesc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleSmbiosChassisBlock
	.word	COM0_SMBIOS_Chassis
	.word	1
	.word	.LC65
	.word	0
	.word	5
	.word	5
	.word	56
	.word	4
	.word	LFPData0Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleLFPDescBlock
	.word	EeeP_LFP0_Cfg
	.word	1
	.word	.LC66
	.word	0
	.word	5
	.word	5
	.word	56
	.word	4
	.word	LFPData1Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleLFPDescBlock
	.word	EeeP_LFP1_Cfg
	.word	1
	.word	.LC67
	.word	0
	.word	7
	.word	7
	.word	56
	.word	4
	.word	ExtI2CDevice0Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleEeePExpI2CBlock
	.word	EeePExtI2CDevice0
	.word	1
	.word	.LC68
	.word	0
	.word	7
	.word	7
	.word	56
	.word	4
	.word	ExtI2CDevice1Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleEeePExpI2CBlock
	.word	EeePExtI2CDevice1
	.word	1
	.word	.LC69
	.word	0
	.word	6
	.word	6
	.word	56
	.word	4
	.word	COM0R20_ExpCard0Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleCOM0R20ExpCardCfgBlock
	.word	COM0R20_ECard0_cgf
	.word	1
	.word	.LC70
	.word	0
	.word	6
	.word	6
	.word	56
	.word	4
	.word	COM0R20_ExpCard1Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleCOM0R20ExpCardCfgBlock
	.word	COM0R20_ECard1_cgf
	.word	1
	.word	.LC71
	.word	0
	.word	7
	.word	7
	.word	56
	.word	4
	.word	COM0R20_SerialPortsDesc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleCOM0R20SerialCfgBlock
	.word	COM0R20_SER_cgf
	.word	1
	.word	.LC72
	.word	0
	.word	6
	.word	6
	.word	56
	.word	4
	.word	VendorBlock0Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleVendorBlock
	.word	EeeP_VendorBlock0_Cfg
	.word	1
	.word	.LC73
	.word	0
	.word	6
	.word	6
	.word	56
	.word	4
	.word	VendorBlock1Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleVendorBlock
	.word	EeeP_VendorBlock1_Cfg
	.word	1
	.word	.LC74
	.word	0
	.word	6
	.word	6
	.word	56
	.word	4
	.word	VendorBlock2Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleVendorBlock
	.word	EeeP_VendorBlock2_Cfg
	.word	1
	.word	.LC75
	.word	0
	.word	6
	.word	6
	.word	56
	.word	4
	.word	VendorBlock3Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleVendorBlock
	.word	EeeP_VendorBlock3_Cfg
	.word	1
	.word	.LC76
	.word	0
	.word	6
	.word	6
	.word	56
	.word	4
	.word	VendorBlock4Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleVendorBlock
	.word	EeeP_VendorBlock4_Cfg
	.word	1
	.word	.LC77
	.word	0
	.word	6
	.word	6
	.word	56
	.word	4
	.word	VendorBlock5Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleVendorBlock
	.word	EeeP_VendorBlock5_Cfg
	.word	1
	.word	.LC78
	.word	0
	.word	6
	.word	6
	.word	56
	.word	4
	.word	VendorBlock6Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleVendorBlock
	.word	EeeP_VendorBlock6_Cfg
	.word	1
	.word	.LC79
	.word	0
	.word	5
	.word	5
	.word	56
	.word	4
	.word	CustomBlock0Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleCustomBlock
	.word	EeeP_CustomBlock0_Cfg
	.word	1
	.word	.LC80
	.word	0
	.word	5
	.word	5
	.word	56
	.word	4
	.word	CustomBlock1Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleCustomBlock
	.word	EeeP_CustomBlock1_Cfg
	.word	1
	.word	.LC81
	.word	0
	.word	5
	.word	5
	.word	56
	.word	4
	.word	CustomBlock2Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleCustomBlock
	.word	EeeP_CustomBlock2_Cfg
	.word	1
	.word	.LC82
	.word	0
	.word	5
	.word	5
	.word	56
	.word	4
	.word	CustomBlock3Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleCustomBlock
	.word	EeeP_CustomBlock3_Cfg
	.word	1
	.word	.LC83
	.word	0
	.word	5
	.word	5
	.word	56
	.word	4
	.word	CustomBlock4Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleCustomBlock
	.word	EeeP_CustomBlock4_Cfg
	.word	1
	.word	.LC84
	.word	0
	.word	5
	.word	5
	.word	56
	.word	4
	.word	CustomBlock5Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleCustomBlock
	.word	EeeP_CustomBlock5_Cfg
	.word	1
	.word	.LC85
	.word	0
	.word	5
	.word	5
	.word	56
	.word	4
	.word	CustomBlock6Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleCustomBlock
	.word	EeeP_CustomBlock6_Cfg
	.type	COM0R20_M_CfgDesc, %object
	.size	COM0R20_M_CfgDesc, 1008
COM0R20_M_CfgDesc:
	.word	1
	.word	.LC86
	.word	-1
	.word	9
	.word	9
	.word	56
	.word	4
	.word	COM0R20_M_Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleCOM0R20MHeaderBlock
	.word	COM0R20_M_cgf
	.word	1
	.word	.LC87
	.word	0
	.word	13
	.word	13
	.word	56
	.word	4
	.word	SmbiosModuleDesc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleSmbiosModuleBlock
	.word	COM0_SMBIOS_Module
	.word	1
	.word	.LC65
	.word	0
	.word	5
	.word	5
	.word	56
	.word	4
	.word	LFPData0Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleLFPDescBlock
	.word	EeeP_LFP0_Cfg
	.word	1
	.word	.LC66
	.word	0
	.word	5
	.word	5
	.word	56
	.word	4
	.word	LFPData1Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleLFPDescBlock
	.word	EeeP_LFP1_Cfg
	.word	1
	.word	.LC72
	.word	0
	.word	6
	.word	6
	.word	56
	.word	4
	.word	VendorBlock0Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleVendorBlock
	.word	EeeP_VendorBlock0_Cfg
	.word	1
	.word	.LC73
	.word	0
	.word	6
	.word	6
	.word	56
	.word	4
	.word	VendorBlock1Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleVendorBlock
	.word	EeeP_VendorBlock1_Cfg
	.word	1
	.word	.LC74
	.word	0
	.word	6
	.word	6
	.word	56
	.word	4
	.word	VendorBlock2Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleVendorBlock
	.word	EeeP_VendorBlock2_Cfg
	.word	1
	.word	.LC75
	.word	0
	.word	6
	.word	6
	.word	56
	.word	4
	.word	VendorBlock3Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleVendorBlock
	.word	EeeP_VendorBlock3_Cfg
	.word	1
	.word	.LC76
	.word	0
	.word	6
	.word	6
	.word	56
	.word	4
	.word	VendorBlock4Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleVendorBlock
	.word	EeeP_VendorBlock4_Cfg
	.word	1
	.word	.LC77
	.word	0
	.word	6
	.word	6
	.word	56
	.word	4
	.word	VendorBlock5Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleVendorBlock
	.word	EeeP_VendorBlock5_Cfg
	.word	1
	.word	.LC78
	.word	0
	.word	6
	.word	6
	.word	56
	.word	4
	.word	VendorBlock6Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleVendorBlock
	.word	EeeP_VendorBlock6_Cfg
	.word	1
	.word	.LC79
	.word	0
	.word	5
	.word	5
	.word	56
	.word	4
	.word	CustomBlock0Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleCustomBlock
	.word	EeeP_CustomBlock0_Cfg
	.word	1
	.word	.LC80
	.word	0
	.word	5
	.word	5
	.word	56
	.word	4
	.word	CustomBlock1Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleCustomBlock
	.word	EeeP_CustomBlock1_Cfg
	.word	1
	.word	.LC81
	.word	0
	.word	5
	.word	5
	.word	56
	.word	4
	.word	CustomBlock2Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleCustomBlock
	.word	EeeP_CustomBlock2_Cfg
	.word	1
	.word	.LC82
	.word	0
	.word	5
	.word	5
	.word	56
	.word	4
	.word	CustomBlock3Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleCustomBlock
	.word	EeeP_CustomBlock3_Cfg
	.word	1
	.word	.LC83
	.word	0
	.word	5
	.word	5
	.word	56
	.word	4
	.word	CustomBlock4Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleCustomBlock
	.word	EeeP_CustomBlock4_Cfg
	.word	1
	.word	.LC84
	.word	0
	.word	5
	.word	5
	.word	56
	.word	4
	.word	CustomBlock5Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleCustomBlock
	.word	EeeP_CustomBlock5_Cfg
	.word	1
	.word	.LC85
	.word	0
	.word	5
	.word	5
	.word	56
	.word	4
	.word	CustomBlock6Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleCustomBlock
	.word	EeeP_CustomBlock6_Cfg
	.type	EeePExpEEP_CfgDesc, %object
	.size	EeePExpEEP_CfgDesc, 1400
EeePExpEEP_CfgDesc:
	.word	1
	.word	.LC61
	.word	-1
	.word	7
	.word	7
	.word	56
	.word	4
	.word	EeePExpHdr_Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleEeePExpEepHeaderBlock
	.word	EeePExpHdr_cgf
	.word	1
	.word	.LC62
	.word	0
	.word	13
	.word	13
	.word	56
	.word	4
	.word	SmbiosCarrierDesc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleSmbiosModuleBlock
	.word	COM0_SMBIOS_Carrier
	.word	1
	.word	.LC63
	.word	0
	.word	10
	.word	10
	.word	56
	.word	4
	.word	SmbiosSystemDesc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleSmbiosSystemBlock
	.word	COM0_SMBIOS_System
	.word	1
	.word	.LC64
	.word	0
	.word	12
	.word	12
	.word	56
	.word	4
	.word	SmbiosChassisDesc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleSmbiosChassisBlock
	.word	COM0_SMBIOS_Chassis
	.word	1
	.word	.LC65
	.word	0
	.word	5
	.word	5
	.word	56
	.word	4
	.word	LFPData0Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleLFPDescBlock
	.word	EeeP_LFP0_Cfg
	.word	1
	.word	.LC66
	.word	0
	.word	5
	.word	5
	.word	56
	.word	4
	.word	LFPData1Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleLFPDescBlock
	.word	EeeP_LFP1_Cfg
	.word	1
	.word	.LC67
	.word	0
	.word	7
	.word	7
	.word	56
	.word	4
	.word	ExtI2CDevice0Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleEeePExpI2CBlock
	.word	EeePExtI2CDevice0
	.word	1
	.word	.LC68
	.word	0
	.word	7
	.word	7
	.word	56
	.word	4
	.word	ExtI2CDevice1Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleEeePExpI2CBlock
	.word	EeePExtI2CDevice1
	.word	1
	.word	.LC69
	.word	0
	.word	6
	.word	6
	.word	56
	.word	4
	.word	COM0R20_ExpCard0Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleCOM0R20ExpCardCfgBlock
	.word	COM0R20_ECard0_cgf
	.word	1
	.word	.LC70
	.word	0
	.word	6
	.word	6
	.word	56
	.word	4
	.word	COM0R20_ExpCard1Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleCOM0R20ExpCardCfgBlock
	.word	COM0R20_ECard1_cgf
	.word	1
	.word	.LC71
	.word	0
	.word	7
	.word	7
	.word	56
	.word	4
	.word	COM0R20_SerialPortsDesc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleCOM0R20SerialCfgBlock
	.word	COM0R20_SER_cgf
	.word	1
	.word	.LC72
	.word	0
	.word	6
	.word	6
	.word	56
	.word	4
	.word	VendorBlock0Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleVendorBlock
	.word	EeeP_VendorBlock0_Cfg
	.word	1
	.word	.LC73
	.word	0
	.word	6
	.word	6
	.word	56
	.word	4
	.word	VendorBlock1Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleVendorBlock
	.word	EeeP_VendorBlock1_Cfg
	.word	1
	.word	.LC74
	.word	0
	.word	6
	.word	6
	.word	56
	.word	4
	.word	VendorBlock2Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleVendorBlock
	.word	EeeP_VendorBlock2_Cfg
	.word	1
	.word	.LC75
	.word	0
	.word	6
	.word	6
	.word	56
	.word	4
	.word	VendorBlock3Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleVendorBlock
	.word	EeeP_VendorBlock3_Cfg
	.word	1
	.word	.LC76
	.word	0
	.word	6
	.word	6
	.word	56
	.word	4
	.word	VendorBlock4Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleVendorBlock
	.word	EeeP_VendorBlock4_Cfg
	.word	1
	.word	.LC77
	.word	0
	.word	6
	.word	6
	.word	56
	.word	4
	.word	VendorBlock5Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleVendorBlock
	.word	EeeP_VendorBlock5_Cfg
	.word	1
	.word	.LC78
	.word	0
	.word	6
	.word	6
	.word	56
	.word	4
	.word	VendorBlock6Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleVendorBlock
	.word	EeeP_VendorBlock6_Cfg
	.word	1
	.word	.LC79
	.word	0
	.word	5
	.word	5
	.word	56
	.word	4
	.word	CustomBlock0Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleCustomBlock
	.word	EeeP_CustomBlock0_Cfg
	.word	1
	.word	.LC80
	.word	0
	.word	5
	.word	5
	.word	56
	.word	4
	.word	CustomBlock1Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleCustomBlock
	.word	EeeP_CustomBlock1_Cfg
	.word	1
	.word	.LC81
	.word	0
	.word	5
	.word	5
	.word	56
	.word	4
	.word	CustomBlock2Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleCustomBlock
	.word	EeeP_CustomBlock2_Cfg
	.word	1
	.word	.LC82
	.word	0
	.word	5
	.word	5
	.word	56
	.word	4
	.word	CustomBlock3Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleCustomBlock
	.word	EeeP_CustomBlock3_Cfg
	.word	1
	.word	.LC83
	.word	0
	.word	5
	.word	5
	.word	56
	.word	4
	.word	CustomBlock4Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleCustomBlock
	.word	EeeP_CustomBlock4_Cfg
	.word	1
	.word	.LC84
	.word	0
	.word	5
	.word	5
	.word	56
	.word	4
	.word	CustomBlock5Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleCustomBlock
	.word	EeeP_CustomBlock5_Cfg
	.word	1
	.word	.LC85
	.word	0
	.word	5
	.word	5
	.word	56
	.word	4
	.word	CustomBlock6Desc
	.word	0
	.word	0
	.word	0
	.word	0
	.word	HandleCustomBlock
	.word	EeeP_CustomBlock6_Cfg
	.type	ValidIOAddrPortDesc, %object
	.size	ValidIOAddrPortDesc, 8
ValidIOAddrPortDesc:
	.word	1
	.word	ValidIOAddrPort
	.type	ValidCOM0USBPortDesc, %object
	.size	ValidCOM0USBPortDesc, 8
ValidCOM0USBPortDesc:
	.word	1
	.word	ValidCOM0USBPort
	.type	ValidCOM0PCIePortDesc, %object
	.size	ValidCOM0PCIePortDesc, 8
ValidCOM0PCIePortDesc:
	.word	1
	.word	ValidCOM0PCIePort
	.type	ValidModuleTypesDesc, %object
	.size	ValidModuleTypesDesc, 8
ValidModuleTypesDesc:
	.word	2
	.word	ValidModuleTypes
	.type	ValidUsbSSRangeDesc, %object
	.size	ValidUsbSSRangeDesc, 8
ValidUsbSSRangeDesc:
	.word	1
	.word	ValidUsbSSRange
	.type	ValidUsbHSRangeDesc, %object
	.size	ValidUsbHSRangeDesc, 8
ValidUsbHSRangeDesc:
	.word	1
	.word	ValidUsbHSRange
	.type	EeePEEPWriteLenTL, %object
	.size	EeePEEPWriteLenTL, 8
EeePEEPWriteLenTL:
	.word	8
	.word	EeePEEPWriteLenTokens
	.type	EeePEEPWriteLenTokens, %object
	.size	EeePEEPWriteLenTokens, 64
EeePEEPWriteLenTokens:
	.word	.LC140
	.word	0
	.word	.LC141
	.word	1
	.word	.LC142
	.word	2
	.word	.LC143
	.word	3
	.word	.LC144
	.word	4
	.word	.LC145
	.word	5
	.word	.LC146
	.word	6
	.word	.LC147
	.word	7
	.type	EEPDeviceSizeTL, %object
	.size	EEPDeviceSizeTL, 8
EEPDeviceSizeTL:
	.word	24
	.word	EEPDeviceSizeTokens
	.type	EEPDeviceSizeTokens, %object
	.size	EEPDeviceSizeTokens, 192
EEPDeviceSizeTokens:
	.word	.LC148
	.word	0
	.word	.LC149
	.word	1
	.word	.LC150
	.word	2
	.word	.LC151
	.word	3
	.word	.LC152
	.word	4
	.word	.LC153
	.word	5
	.word	.LC154
	.word	6
	.word	.LC155
	.word	7
	.word	.LC156
	.word	8
	.word	.LC157
	.word	9
	.word	.LC158
	.word	10
	.word	.LC159
	.word	11
	.word	.LC160
	.word	0
	.word	.LC161
	.word	1
	.word	.LC162
	.word	2
	.word	.LC163
	.word	3
	.word	.LC164
	.word	4
	.word	.LC165
	.word	5
	.word	.LC166
	.word	6
	.word	.LC167
	.word	7
	.word	.LC168
	.word	8
	.word	.LC169
	.word	9
	.word	.LC170
	.word	10
	.word	.LC171
	.word	11
	.type	ValidMinSizeDesc, %object
	.size	ValidMinSizeDesc, 8
ValidMinSizeDesc:
	.word	1
	.word	ValidMinSize
	.type	IRQTL, %object
	.size	IRQTL, 8
IRQTL:
	.word	15
	.word	IRQTokens
	.type	IRQTokens, %object
	.size	IRQTokens, 120
IRQTokens:
	.word	.LC193
	.word	0
	.word	.LC194
	.word	1
	.word	.LC195
	.word	3
	.word	.LC196
	.word	4
	.word	.LC197
	.word	5
	.word	.LC198
	.word	6
	.word	.LC199
	.word	7
	.word	.LC200
	.word	8
	.word	.LC201
	.word	9
	.word	.LC202
	.word	10
	.word	.LC203
	.word	11
	.word	.LC204
	.word	12
	.word	.LC205
	.word	13
	.word	.LC206
	.word	14
	.word	.LC207
	.word	15
	.type	ValidHandlesDesc, %object
	.size	ValidHandlesDesc, 8
ValidHandlesDesc:
	.word	1
	.word	ValidHandles
	.type	SmbiosChassisTypesTL, %object
	.size	SmbiosChassisTypesTL, 8
SmbiosChassisTypesTL:
	.word	24
	.word	SmbiosChassisTypesTokens
	.type	SmbiosChassisTypesTokens, %object
	.size	SmbiosChassisTypesTokens, 192
SmbiosChassisTypesTokens:
	.word	.LC208
	.word	1
	.word	.LC209
	.word	2
	.word	.LC210
	.word	3
	.word	.LC211
	.word	4
	.word	.LC212
	.word	5
	.word	.LC213
	.word	6
	.word	.LC214
	.word	7
	.word	.LC215
	.word	8
	.word	.LC216
	.word	9
	.word	.LC217
	.word	10
	.word	.LC218
	.word	11
	.word	.LC219
	.word	12
	.word	.LC220
	.word	13
	.word	.LC221
	.word	14
	.word	.LC222
	.word	15
	.word	.LC223
	.word	17
	.word	.LC224
	.word	18
	.word	.LC225
	.word	19
	.word	.LC226
	.word	20
	.word	.LC227
	.word	21
	.word	.LC228
	.word	22
	.word	.LC229
	.word	23
	.word	.LC230
	.word	24
	.word	.LC231
	.word	25
	.type	SmbiSmbiosModuleFeatureFlagsTL, %object
	.size	SmbiSmbiosModuleFeatureFlagsTL, 8
SmbiSmbiosModuleFeatureFlagsTL:
	.word	5
	.word	SmbiosModuleFeatureFlagsTokens
	.type	SmbiosModuleFeatureFlagsTokens, %object
	.size	SmbiosModuleFeatureFlagsTokens, 40
SmbiosModuleFeatureFlagsTokens:
	.word	.LC232
	.word	1
	.word	.LC233
	.word	2
	.word	.LC234
	.word	4
	.word	.LC235
	.word	8
	.word	.LC236
	.word	16
	.type	StandardExtendedTL, %object
	.size	StandardExtendedTL, 8
StandardExtendedTL:
	.word	2
	.word	StandardExtendedTokens
	.type	StandardExtendedTokens, %object
	.size	StandardExtendedTokens, 16
StandardExtendedTokens:
	.word	.LC237
	.word	1
	.word	.LC238
	.word	0
	.type	I2CBusTL, %object
	.size	I2CBusTL, 8
I2CBusTL:
	.word	9
	.word	I2CBusTokens
	.type	I2CBusTokens, %object
	.size	I2CBusTokens, 72
I2CBusTokens:
	.word	.LC239
	.word	0
	.word	.LC240
	.word	1
	.word	.LC241
	.word	2
	.word	.LC133
	.word	3
	.word	.LC134
	.word	4
	.word	.LC135
	.word	5
	.word	.LC242
	.word	6
	.word	.LC243
	.word	7
	.word	.LC244
	.word	8
	.type	DisplayInterfaceTL, %object
	.size	DisplayInterfaceTL, 8
DisplayInterfaceTL:
	.word	6
	.word	DisplayInterfaceTokens
	.type	DisplayInterfaceTokens, %object
	.size	DisplayInterfaceTokens, 48
DisplayInterfaceTokens:
	.word	.LC241
	.word	2
	.word	.LC242
	.word	3
	.word	.LC243
	.word	4
	.word	.LC133
	.word	5
	.word	.LC134
	.word	6
	.word	.LC135
	.word	7
	.type	DDI2TL, %object
	.size	DDI2TL, 8
DDI2TL:
	.word	4
	.word	DDI2Tokens
	.type	DDI2Tokens, %object
	.size	DDI2Tokens, 32
DDI2Tokens:
	.word	.LC245
	.word	0
	.word	.LC246
	.word	1
	.word	.LC247
	.word	2
	.word	.LC248
	.word	3
	.type	DDI1TL, %object
	.size	DDI1TL, 8
DDI1TL:
	.word	5
	.word	DDI1Tokens
	.type	DDI1Tokens, %object
	.size	DDI1Tokens, 40
DDI1Tokens:
	.word	.LC245
	.word	0
	.word	.LC246
	.word	1
	.word	.LC247
	.word	2
	.word	.LC248
	.word	3
	.word	.LC249
	.word	4
	.type	ImpNotImpTL, %object
	.size	ImpNotImpTL, 8
ImpNotImpTL:
	.word	2
	.word	ImpNotImpTokens
	.type	ImpNotImpTokens, %object
	.size	ImpNotImpTokens, 16
ImpNotImpTokens:
	.word	.LC245
	.word	0
	.word	.LC250
	.word	1
	.type	SasTL, %object
	.size	SasTL, 8
SasTL:
	.word	3
	.word	SasTokens
	.type	SasTokens, %object
	.size	SasTokens, 24
SasTokens:
	.word	.LC245
	.word	0
	.word	.LC251
	.word	3
	.word	.LC252
	.word	1
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
