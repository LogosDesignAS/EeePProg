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
	.file	"CfgPHelper.c"
	.text
	.align	2
	.global	No_Default_Txt
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	No_Default_Txt, %function
No_Default_Txt:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0
	bx	lr
	.size	No_Default_Txt, .-No_Default_Txt
	.align	2
	.global	Token_List_Default
	.syntax unified
	.arm
	.fpu vfpv3
	.type	Token_List_Default, %function
Token_List_Default:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #52]
	push	{r4, lr}
	ldr	r3, [r3, #4]
	ldr	r0, [r3]
	bl	fputs(PLT)
	mov	r0, #0
	pop	{r4, pc}
	.size	Token_List_Default, .-Token_List_Default
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"0x%02X\000"
	.text
	.align	2
	.global	Range_Default_Txt
	.syntax unified
	.arm
	.fpu vfpv3
	.type	Range_Default_Txt, %function
Range_Default_Txt:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #52]
	mov	r2, r1
	ldr	r1, .L7
	mov	r0, r2
	push	{r4, lr}
	ldr	r3, [r3, #4]
.LPIC0:
	add	r1, pc, r1
	ldr	r2, [r3]
	bl	fprintf(PLT)
	mov	r0, #0
	pop	{r4, pc}
.L8:
	.align	2
.L7:
	.word	.LC0-(.LPIC0+8)
	.size	Range_Default_Txt, .-Range_Default_Txt
	.align	2
	.global	TokenNum_List_Default
	.syntax unified
	.arm
	.fpu vfpv3
	.type	TokenNum_List_Default, %function
TokenNum_List_Default:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, [r0, #52]
	push	{r4, lr}
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L10
.L11:
	ldr	r3, [r3, #4]
	ldr	r0, [r3]
	bl	fputs(PLT)
	mov	r0, #0
	pop	{r4, pc}
.L10:
	ldr	r3, [r2, #4]
	mov	r0, r1
	ldr	r1, .L13
	ldr	r3, [r3, #4]
.LPIC1:
	add	r1, pc, r1
	ldr	r2, [r3]
	bl	fprintf(PLT)
	mov	r0, #0
	pop	{r4, pc}
.L14:
	.align	2
.L13:
	.word	.LC0-(.LPIC1+8)
	.size	TokenNum_List_Default, .-TokenNum_List_Default
	.section	.rodata.str1.4
	.align	2
.LC1:
	.ascii	"FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF\000"
	.text
	.align	2
	.global	GUID_Default
	.syntax unified
	.arm
	.fpu vfpv3
	.type	GUID_Default, %function
GUID_Default:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L17
	mov	r3, r1
	mov	r2, #36
	mov	r1, #1
	push	{r4, lr}
.LPIC2:
	add	r0, pc, r0
	bl	fwrite(PLT)
	mov	r0, #0
	pop	{r4, pc}
.L18:
	.align	2
.L17:
	.word	.LC1-(.LPIC2+8)
	.size	GUID_Default, .-GUID_Default
	.section	.rodata.str1.4
	.align	2
.LC2:
	.ascii	"Generic String\000"
	.align	2
.LC3:
	.ascii	"%s\012\000"
	.align	2
.LC4:
	.ascii	"   Max Length %u\012\000"
	.align	2
.LC5:
	.ascii	"   Min Length %u\012\000"
	.align	2
.LC6:
	.ascii	"   Trailing spaces %s\012\000"
	.text
	.align	2
	.global	String_Help
	.syntax unified
	.arm
	.fpu vfpv3
	.type	String_Help, %function
String_Help:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r6, r2
	ldr	r3, .L35
	mov	r5, r1
	mov	r1, r6
	ldr	r2, .L35+4
	ldr	r7, [r0, #52]
.LPIC3:
	add	r3, pc, r3
	mov	r0, r5
.LPIC4:
	add	r2, pc, r2
	bl	EApiSprintfA(PLT)
	cmp	r7, #0
	beq	.L20
	ldr	r3, [r7, #4]
	mov	r4, r0
	cmp	r3, #0
	bne	.L33
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L34
.L22:
	ldr	r3, .L35+8
	sub	r1, r6, r4
	ldr	r2, [r7, #8]
	add	r0, r5, r4
.LPIC7:
	add	r3, pc, r3
	ldr	r3, [r3, r2, lsl #2]
	ldr	r2, .L35+12
.LPIC8:
	add	r2, pc, r2
	bl	EApiSprintfA(PLT)
.L20:
	mov	r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.L34:
	ldr	r2, .L35+16
	sub	r1, r6, r4
	add	r0, r5, r4
.LPIC6:
	add	r2, pc, r2
	bl	EApiSprintfA(PLT)
	add	r4, r4, r0
	b	.L22
.L33:
	ldr	r2, .L35+20
	sub	r1, r6, r0
	add	r0, r5, r0
.LPIC5:
	add	r2, pc, r2
	bl	EApiSprintfA(PLT)
	ldr	r3, [r7]
	add	r4, r4, r0
	cmp	r3, #0
	beq	.L22
	b	.L34
.L36:
	.align	2
.L35:
	.word	.LC2-(.LPIC3+8)
	.word	.LC3-(.LPIC4+8)
	.word	.LANCHOR0-(.LPIC7+8)
	.word	.LC6-(.LPIC8+8)
	.word	.LC5-(.LPIC6+8)
	.word	.LC4-(.LPIC5+8)
	.size	String_Help, .-String_Help
	.section	.rodata.str1.4
	.align	2
.LC7:
	.ascii	"Generic Number\000"
	.align	2
.LC8:
	.ascii	"Meeting one of the following conditions\000"
	.align	2
.LC9:
	.ascii	"Meeting the following condition\000"
	.align	2
.LC10:
	.ascii	"\011 Number == %8u(0x%04X)\012\000"
	.align	2
.LC11:
	.ascii	"\011 %8u(0x%04X) <= Number <= %8u(0x%04X)\012\000"
	.align	2
.LC12:
	.ascii	"\011 Number < %8u(0x%04X) || %8u(0x%04X) < Number\012"
	.ascii	"\000"
	.text
	.align	2
	.global	Range_List_Help
	.syntax unified
	.arm
	.fpu vfpv3
	.type	Range_List_Help, %function
Range_List_Help:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r1
	ldr	r9, .L54
	mov	r8, r2
	mov	r4, r0
	sub	sp, sp, #20
	ldr	r3, .L54+4
	mov	r1, r8
.LPIC10:
	add	r9, pc, r9
	mov	r0, r7
	mov	r2, r9
.LPIC9:
	add	r3, pc, r3
	bl	EApiSprintfA(PLT)
	ldr	r3, [r4, #52]
	cmp	r3, #0
	beq	.L48
	ldr	r6, [r3]
	mov	r5, r0
	ldr	r4, [r3, #4]
	mov	r2, r9
	add	r0, r7, r0
	sub	r1, r8, r5
	cmp	r6, #1
	bls	.L39
	ldr	r3, .L54+8
.LPIC11:
	add	r3, pc, r3
	bl	EApiSprintfA(PLT)
	add	r5, r5, r0
.L40:
	ldr	r10, .L54+12
	add	r4, r4, #40
	ldr	r9, .L54+16
	ldr	fp, .L54+20
.LPIC17:
	add	r10, pc, r10
.LPIC16:
	add	r9, pc, r9
.LPIC15:
	add	fp, pc, fp
	b	.L45
.L53:
	cmp	r3, #1
	add	r0, r7, r5
	sub	r1, r8, r5
	bne	.L43
	ldr	ip, [r4, #-40]
	mov	r2, r9
	ldr	lr, [r4, #-36]
	mov	r3, ip
	cmp	ip, lr
	beq	.L52
	str	lr, [sp, #8]
	stm	sp, {ip, lr}
	bl	EApiSprintfA(PLT)
	add	r5, r5, r0
.L43:
	subs	r6, r6, #1
	add	r4, r4, #12
	beq	.L48
.L45:
	ldr	r3, [r4, #-32]
	cmp	r3, #0
	bne	.L53
	ldr	r2, [r4, #-36]
	sub	r1, r8, r5
	ldr	r3, [r4, #-40]
	add	r0, r7, r5
	pld	[r4]
	add	r4, r4, #12
	str	r2, [sp, #8]
	str	r2, [sp, #4]
	mov	r2, r10
	str	r3, [sp]
	bl	EApiSprintfA(PLT)
	subs	r6, r6, #1
	add	r5, r5, r0
	bne	.L45
.L48:
	mov	r0, #0
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L39:
	ldr	r3, .L54+24
.LPIC13:
	add	r3, pc, r3
	bl	EApiSprintfA(PLT)
	cmp	r6, #0
	beq	.L48
	add	r5, r5, r0
	b	.L40
.L52:
	mov	r2, fp
	str	ip, [sp]
	bl	EApiSprintfA(PLT)
	add	r5, r5, r0
	b	.L43
.L55:
	.align	2
.L54:
	.word	.LC3-(.LPIC10+8)
	.word	.LC7-(.LPIC9+8)
	.word	.LC8-(.LPIC11+8)
	.word	.LC12-(.LPIC17+8)
	.word	.LC11-(.LPIC16+8)
	.word	.LC10-(.LPIC15+8)
	.word	.LC9-(.LPIC13+8)
	.size	Range_List_Help, .-Range_List_Help
	.section	.rodata.str1.4
	.align	2
.LC13:
	.ascii	"Supported Options\000"
	.align	2
.LC14:
	.ascii	"\011 %s\012\000"
	.text
	.align	2
	.global	Token_List_Help
	.syntax unified
	.arm
	.fpu vfpv3
	.type	Token_List_Help, %function
Token_List_Help:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r8, r2
	ldr	r3, .L67
	mov	r7, r1
	mov	r5, r0
	mov	r1, r8
	ldr	r2, .L67+4
	mov	r0, r7
.LPIC18:
	add	r3, pc, r3
.LPIC19:
	add	r2, pc, r2
	bl	EApiSprintfA(PLT)
	ldr	r3, [r5, #52]
	ldm	r3, {r5, r6}
	cmp	r5, #0
	beq	.L57
	sub	r5, r5, #1
	mov	r4, r0
	cmp	r5, #3
	bls	.L58
	ldr	r10, .L67+8
	add	r9, r6, #32
.LPIC20:
	add	r10, pc, r10
.L59:
	ldr	r3, [r9, #-32]
	sub	r1, r8, r4
	mov	r2, r10
	add	r0, r7, r4
	pld	[r9, #40]
	sub	r5, r5, #4
	bl	EApiSprintfA(PLT)
	add	r6, r0, r4
	ldr	r3, [r9, #-24]
	sub	r1, r8, r6
	mov	r2, r10
	add	r0, r7, r6
	bl	EApiSprintfA(PLT)
	add	r6, r6, r0
	ldr	r3, [r9, #-16]
	sub	r1, r8, r6
	mov	r2, r10
	add	r0, r7, r6
	bl	EApiSprintfA(PLT)
	add	r6, r6, r0
	ldr	r3, [r9, #-8]
	sub	r1, r8, r6
	add	r0, r7, r6
	mov	r2, r10
	bl	EApiSprintfA(PLT)
	cmp	r5, #3
	add	r4, r6, r0
	mov	r6, r9
	add	r9, r9, #32
	bhi	.L59
.L58:
	ldr	r9, .L67+12
	add	r6, r6, #8
.LPIC24:
	add	r9, pc, r9
.L60:
	ldr	r3, [r6, #-8]
	sub	r1, r8, r4
	add	r0, r7, r4
	mov	r2, r9
	bl	EApiSprintfA(PLT)
	cmp	r5, #0
	add	r4, r4, r0
	sub	r5, r5, #1
	add	r6, r6, #8
	bne	.L60
.L57:
	mov	r0, #0
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L68:
	.align	2
.L67:
	.word	.LC13-(.LPIC18+8)
	.word	.LC3-(.LPIC19+8)
	.word	.LC14-(.LPIC20+8)
	.word	.LC14-(.LPIC24+8)
	.size	Token_List_Help, .-Token_List_Help
	.section	.rodata.str1.4
	.align	2
.LC15:
	.ascii	"GUID in the Format F9168C5E-CEB2-4faa-B6BF-329BF39F"
	.ascii	"A1E4\012  Means Not Supported 00000000-0000-0000-00"
	.ascii	"00-000000000000\012  Means Setable       FFFFFFFF-F"
	.ascii	"FFF-FFFF-FFFF-FFFFFFFFFFFF\012\000"
	.text
	.align	2
	.global	GUID_Help
	.syntax unified
	.arm
	.fpu vfpv3
	.type	GUID_Help, %function
GUID_Help:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, r1
	mov	r1, r2
	ldr	r2, .L71
	push	{r4, lr}
.LPIC25:
	add	r2, pc, r2
	bl	EApiSprintfA(PLT)
	mov	r0, #0
	pop	{r4, pc}
.L72:
	.align	2
.L71:
	.word	.LC15-(.LPIC25+8)
	.size	GUID_Help, .-GUID_Help
	.section	.rodata.str1.4
	.align	2
.LC16:
	.ascii	"2.0\012\000"
	.text
	.align	2
	.global	SpecRev_Help
	.syntax unified
	.arm
	.fpu vfpv3
	.type	SpecRev_Help, %function
SpecRev_Help:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, r1
	mov	r1, r2
	ldr	r2, .L75
	push	{r4, lr}
.LPIC26:
	add	r2, pc, r2
	bl	EApiSprintfA(PLT)
	mov	r0, #0
	pop	{r4, pc}
.L76:
	.align	2
.L75:
	.word	.LC16-(.LPIC26+8)
	.size	SpecRev_Help, .-SpecRev_Help
	.section	.rodata.str1.4
	.align	2
.LC17:
	.ascii	"3 Letter PNPID e.g. PMG,KEM\000"
	.text
	.align	2
	.global	PNPID_Help
	.syntax unified
	.arm
	.fpu vfpv3
	.type	PNPID_Help, %function
PNPID_Help:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, r1
	mov	r1, r2
	ldr	r2, .L79
	push	{r4, lr}
.LPIC27:
	add	r2, pc, r2
	bl	EApiSprintfA(PLT)
	mov	r0, #0
	pop	{r4, pc}
.L80:
	.align	2
.L79:
	.word	.LC17-(.LPIC27+8)
	.size	PNPID_Help, .-PNPID_Help
	.section	.rodata.str1.4
	.align	2
.LC18:
	.ascii	"Encodded I2C EEPROM Device Selector Address 0xA0,0x"
	.ascii	"A2,0xA4,0xA6,0xA8,0xAA,0xAC,0xAE\012\000"
	.text
	.align	2
	.global	I2C_EEPROM_Help
	.syntax unified
	.arm
	.fpu vfpv3
	.type	I2C_EEPROM_Help, %function
I2C_EEPROM_Help:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, r1
	mov	r1, r2
	ldr	r2, .L83
	push	{r4, lr}
.LPIC28:
	add	r2, pc, r2
	bl	EApiSprintfA(PLT)
	mov	r0, #0
	pop	{r4, pc}
.L84:
	.align	2
.L83:
	.word	.LC18-(.LPIC28+8)
	.size	I2C_EEPROM_Help, .-I2C_EEPROM_Help
	.section	.rodata.str1.4
	.align	2
.LC19:
	.ascii	"String_Element\000"
	.align	2
.LC20:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux/../CfgPHelper.c\000"
	.align	2
.LC21:
	.ascii	"pElementDesc->stBitOffset != 0\000"
	.align	2
.LC22:
	.ascii	"pElementDesc->stBitLength != 8*sizeof(char*)\000"
	.align	2
.LC23:
	.ascii	"pElementDesc->Instances.stElementSize != sizeof(cha"
	.ascii	"r*)\000"
	.align	2
.LC24:
	.ascii	"\011String_Element = String Too Short, %s\012\000"
	.align	2
.LC25:
	.ascii	"\011String_Element = String Too Long, %s\012\000"
	.text
	.align	2
	.global	String_Element
	.syntax unified
	.arm
	.fpu vfpv3
	.type	String_Element, %function
String_Element:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #40]
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #20
	ldr	r5, [r0, #52]
	cmp	r3, #0
	bne	.L100
	ldr	r3, [r0, #44]
	cmp	r3, #32
	bne	.L101
	ldr	r3, [r0, #20]
	cmp	r3, #4
	bne	.L102
	cmp	r5, #0
	mov	r6, r1
	mov	r4, r2
	beq	.L91
	ldr	r3, [r5, #8]
	cmp	r3, #0
	beq	.L103
.L92:
	mov	r0, r4
	bl	strlen(PLT)
	ldr	r3, [r5]
	mov	r7, r0
	cmp	r3, r0
	bhi	.L104
.L93:
	ldr	r3, [r5, #4]
	cmp	r3, #0
	cmpne	r3, r7
	bcc	.L105
.L91:
.L87:
	mov	r0, r4
	bl	strdup(PLT)
	str	r0, [r6]
	mov	r0, #0
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L101:
	ldr	ip, .L106
	mvn	lr, #256
	ldr	r0, .L106+4
	movw	r3, #405
	ldr	r2, .L106+8
	ldr	r1, .L106+12
.LPIC35:
	add	ip, pc, ip
.LPIC36:
	add	r0, pc, r0
.LPIC33:
	add	r2, pc, r2
.LPIC34:
	add	r1, pc, r1
.L99:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	lr, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, #0
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L100:
	ldr	ip, .L106+16
	mvn	lr, #256
	ldr	r0, .L106+20
	mov	r3, #400
	ldr	r2, .L106+24
	ldr	r1, .L106+28
.LPIC31:
	add	ip, pc, ip
.LPIC32:
	add	r0, pc, r0
.LPIC29:
	add	r2, pc, r2
.LPIC30:
	add	r1, pc, r1
	b	.L99
.L102:
	ldr	ip, .L106+32
	mvn	lr, #256
	ldr	r0, .L106+36
	movw	r3, #410
	ldr	r2, .L106+40
	ldr	r1, .L106+44
.LPIC39:
	add	ip, pc, ip
.LPIC40:
	add	r0, pc, r0
.LPIC37:
	add	r2, pc, r2
.LPIC38:
	add	r1, pc, r1
	b	.L99
.L103:
	mov	r0, r2
	bl	stripWhiteSpaces(PLT)
	b	.L92
.L105:
	ldr	r0, .L106+48
	mov	r1, r4
.LPIC42:
	add	r0, pc, r0
	bl	printf(PLT)
	b	.L91
.L104:
	ldr	r0, .L106+52
	mov	r1, r4
.LPIC41:
	add	r0, pc, r0
	bl	printf(PLT)
	b	.L93
.L107:
	.align	2
.L106:
	.word	.LC22-(.LPIC35+8)
	.word	.LC3-(.LPIC36+8)
	.word	.LC19-(.LPIC33+8)
	.word	.LC20-(.LPIC34+8)
	.word	.LC21-(.LPIC31+8)
	.word	.LC3-(.LPIC32+8)
	.word	.LC19-(.LPIC29+8)
	.word	.LC20-(.LPIC30+8)
	.word	.LC23-(.LPIC39+8)
	.word	.LC3-(.LPIC40+8)
	.word	.LC19-(.LPIC37+8)
	.word	.LC20-(.LPIC38+8)
	.word	.LC25-(.LPIC42+8)
	.word	.LC24-(.LPIC41+8)
	.size	String_Element, .-String_Element
	.section	.rodata.str1.4
	.align	2
.LC26:
	.ascii	"TB \000"
	.align	2
.LC27:
	.ascii	"ParseAsciiEqu(szValue, &sllValue)\000"
	.align	2
.LC28:
	.ascii	"\011Number_Element = Outside Range, %s\012\000"
	.align	2
.LC29:
	.ascii	"AssignValue_VAB( sllValue, pCurElement, (signed int"
	.ascii	")pElementDesc->stBitOffset , (signed int)pElementDe"
	.ascii	"sc->stBitLength , (signed int)pElementDesc->Instanc"
	.ascii	"es.stElementSize )\000"
	.text
	.align	2
	.global	Number_Element
	.syntax unified
	.arm
	.fpu vfpv3
	.type	Number_Element, %function
Number_Element:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r5, r0
	mov	r6, r2
	mov	r0, r2
	sub	sp, sp, #36
	mov	r7, r1
	ldr	r2, .L126
	add	r1, sp, #16
	ldr	r3, .L126+4
.LPIC53:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #28]
	mov	r3, #0
	bl	ParseAsciiEqu(PLT)
	subs	r4, r0, #0
	bne	.L124
	ldr	r0, [r5, #52]
	ldr	r1, [sp, #16]
	cmp	r0, #0
	beq	.L111
	bl	RangeCheckAny(PLT)
	subs	r4, r0, #0
	beq	.L111
	ldr	r0, .L126+8
	mov	r1, r6
.LPIC47:
	add	r0, pc, r0
	bl	printf(PLT)
.L108:
	ldr	r2, .L126+12
	ldr	r3, .L126+4
.LPIC52:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #28]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L125
	mov	r0, r4
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L111:
	ldr	r0, [r5, #20]
	mov	r2, r7
	ldr	r1, [r5, #44]
	ldr	r3, [r5, #40]
	str	r0, [sp, #4]
	str	r1, [sp]
	ldrd	r0, [sp, #16]
	bl	AssignValue_VAB(PLT)
	subs	r4, r0, #0
	beq	.L108
	ldr	ip, .L126+16
	mov	r3, #524
	ldr	r0, .L126+20
	ldr	r2, .L126+24
	ldr	r1, .L126+28
.LPIC50:
	add	ip, pc, ip
.LPIC51:
	add	r0, pc, r0
.LPIC48:
	add	r2, pc, r2
.LPIC49:
	add	r1, pc, r1
	b	.L123
.L124:
	ldr	ip, .L126+32
	movw	r3, #513
	ldr	r0, .L126+36
	ldr	r2, .L126+40
	ldr	r1, .L126+44
.LPIC45:
	add	ip, pc, ip
.LPIC46:
	add	r0, pc, r0
.LPIC43:
	add	r2, pc, r2
.LPIC44:
	add	r1, pc, r1
.L123:
.L110:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	b	.L108
.L125:
	bl	__stack_chk_fail(PLT)
.L127:
	.align	2
.L126:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC53+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC28-(.LPIC47+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC52+8)
	.word	.LC29-(.LPIC50+8)
	.word	.LC3-(.LPIC51+8)
	.word	.LC26-(.LPIC48+8)
	.word	.LC20-(.LPIC49+8)
	.word	.LC27-(.LPIC45+8)
	.word	.LC3-(.LPIC46+8)
	.word	.LC26-(.LPIC43+8)
	.word	.LC20-(.LPIC44+8)
	.size	Number_Element, .-Number_Element
	.section	.rodata.str1.4
	.align	2
.LC30:
	.ascii	"ParseAsciiEquEx(szValue, &SizeMacroDesc, &sllValue)"
	.ascii	"\000"
	.text
	.align	2
	.global	Size_Element
	.syntax unified
	.arm
	.fpu vfpv3
	.type	Size_Element, %function
Size_Element:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L146
	push	{r4, r5, r6, r7, lr}
	mov	r6, r0
	ldr	r0, .L146+4
	mov	r7, r1
.LPIC54:
	add	r3, pc, r3
	sub	sp, sp, #36
	add	r1, r3, #8
	ldr	r3, .L146+8
.LPIC65:
	add	r0, pc, r0
	mov	r5, r2
	add	r2, sp, #16
	ldr	r3, [r0, r3]
	mov	r0, r5
	ldr	r3, [r3]
	str	r3, [sp, #28]
	mov	r3, #0
	bl	ParseAsciiEquEx(PLT)
	subs	r4, r0, #0
	bne	.L144
	ldr	r0, [r6, #52]
	ldr	r1, [sp, #16]
	cmp	r0, #0
	beq	.L131
	bl	RangeCheckAny(PLT)
	subs	r4, r0, #0
	beq	.L131
	ldr	r0, .L146+12
	mov	r1, r5
.LPIC59:
	add	r0, pc, r0
	bl	printf(PLT)
.L128:
	ldr	r2, .L146+16
	ldr	r3, .L146+8
.LPIC64:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #28]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L145
	mov	r0, r4
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L131:
	ldr	r0, [r6, #20]
	mov	r2, r7
	ldr	r1, [r6, #44]
	ldr	r3, [r6, #40]
	str	r0, [sp, #4]
	str	r1, [sp]
	ldrd	r0, [sp, #16]
	bl	AssignValue_VAB(PLT)
	subs	r4, r0, #0
	beq	.L128
	ldr	ip, .L146+20
	movw	r3, #567
	ldr	r0, .L146+24
	ldr	r2, .L146+28
	ldr	r1, .L146+32
.LPIC62:
	add	ip, pc, ip
.LPIC63:
	add	r0, pc, r0
.LPIC60:
	add	r2, pc, r2
.LPIC61:
	add	r1, pc, r1
	b	.L143
.L144:
	ldr	ip, .L146+36
	movw	r3, #555
	ldr	r0, .L146+40
	ldr	r2, .L146+44
	ldr	r1, .L146+48
.LPIC57:
	add	ip, pc, ip
.LPIC58:
	add	r0, pc, r0
.LPIC55:
	add	r2, pc, r2
.LPIC56:
	add	r1, pc, r1
.L143:
.L130:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	b	.L128
.L145:
	bl	__stack_chk_fail(PLT)
.L147:
	.align	2
.L146:
	.word	.LANCHOR0-(.LPIC54+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC65+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC28-(.LPIC59+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC64+8)
	.word	.LC29-(.LPIC62+8)
	.word	.LC3-(.LPIC63+8)
	.word	.LC26-(.LPIC60+8)
	.word	.LC20-(.LPIC61+8)
	.word	.LC30-(.LPIC57+8)
	.word	.LC3-(.LPIC58+8)
	.word	.LC26-(.LPIC55+8)
	.word	.LC20-(.LPIC56+8)
	.size	Size_Element, .-Size_Element
	.section	.rodata.str1.4
	.align	2
.LC31:
	.ascii	"I2C_EEPROM_Addr\000"
	.align	2
.LC32:
	.ascii	"pElementDesc->Instances.stElementSize < sizeof(uint"
	.ascii	"16_t)\000"
	.align	2
.LC33:
	.ascii	"pElementDesc->stBitLength < 8*sizeof(uint16_t)\000"
	.align	2
.LC34:
	.ascii	"AssignValue_VAB( ulDeviceAddress, pCurElement, (sig"
	.ascii	"ned int)pElementDesc->stBitOffset , (signed int)pEl"
	.ascii	"ementDesc->stBitLength , (signed int)pElementDesc->"
	.ascii	"Instances.stElementSize )\000"
	.align	2
.LC35:
	.ascii	"\011I2C_EEPROM_Addr = Invalid Address 0x%02lX, %s\012"
	.ascii	"\000"
	.text
	.align	2
	.global	I2C_EEPROM_Addr
	.syntax unified
	.arm
	.fpu vfpv3
	.type	I2C_EEPROM_Addr, %function
I2C_EEPROM_Addr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	sub	sp, sp, #16
	mov	r6, r1
	mov	r0, r2
	mov	r1, #0
	mov	r5, r2
	bl	ulConvertStr2NumEx(PLT)
	ldr	r3, [r4, #20]
	cmp	r3, #1
	bls	.L158
	ldr	ip, [r4, #44]
	cmp	ip, #15
	bls	.L159
	sub	r2, r0, #160
	mov	r1, r0
	cmp	r2, #14
	bhi	.L152
	ands	lr, r0, #1
	beq	.L160
.L152:
	ldr	r0, .L161
	mov	r2, r5
	mvn	r4, #3840
.LPIC78:
	add	r0, pc, r0
	bl	printf(PLT)
.L150:
.L148:
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, pc}
.L160:
	str	r3, [sp, #4]
	mov	r2, r6
	ldr	r3, [r4, #40]
	mov	r1, lr
	str	ip, [sp]
	bl	AssignValue_VAB(PLT)
	subs	r4, r0, #0
	beq	.L148
	ldr	ip, .L161+4
	mov	r3, #604
	ldr	r0, .L161+8
	ldr	r2, .L161+12
	ldr	r1, .L161+16
.LPIC76:
	add	ip, pc, ip
.LPIC77:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC74:
	add	r2, pc, r2
.LPIC75:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L148
.L159:
	ldr	ip, .L161+20
	mvn	r4, #256
	ldr	r0, .L161+24
	mov	r3, #596
	ldr	r2, .L161+28
	ldr	r1, .L161+32
.LPIC72:
	add	ip, pc, ip
.LPIC73:
	add	r0, pc, r0
.LPIC70:
	add	r2, pc, r2
.LPIC71:
	add	r1, pc, r1
.L157:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, pc}
.L158:
	ldr	ip, .L161+36
	mvn	r4, #256
	ldr	r0, .L161+40
	movw	r3, #591
	ldr	r2, .L161+44
	ldr	r1, .L161+48
.LPIC68:
	add	ip, pc, ip
.LPIC69:
	add	r0, pc, r0
.LPIC66:
	add	r2, pc, r2
.LPIC67:
	add	r1, pc, r1
	b	.L157
.L162:
	.align	2
.L161:
	.word	.LC35-(.LPIC78+8)
	.word	.LC34-(.LPIC76+8)
	.word	.LC3-(.LPIC77+8)
	.word	.LC26-(.LPIC74+8)
	.word	.LC20-(.LPIC75+8)
	.word	.LC33-(.LPIC72+8)
	.word	.LC3-(.LPIC73+8)
	.word	.LC31-(.LPIC70+8)
	.word	.LC20-(.LPIC71+8)
	.word	.LC32-(.LPIC68+8)
	.word	.LC3-(.LPIC69+8)
	.word	.LC31-(.LPIC66+8)
	.word	.LC20-(.LPIC67+8)
	.size	I2C_EEPROM_Addr, .-I2C_EEPROM_Addr
	.section	.rodata.str1.4
	.align	2
.LC36:
	.ascii	"SpecRev_Element\000"
	.align	2
.LC37:
	.ascii	"(*szEnd!='.')\000"
	.align	2
.LC38:
	.ascii	"AssignValue_VAB( uiValue, pCurElement, (signed int)"
	.ascii	"pElementDesc->stBitOffset , (signed int)pElementDes"
	.ascii	"c->stBitLength , (signed int)pElementDesc->Instance"
	.ascii	"s.stElementSize )\000"
	.text
	.align	2
	.global	SpecRev_Element
	.syntax unified
	.arm
	.fpu vfpv3
	.type	SpecRev_Element, %function
SpecRev_Element:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r5, r0
	mov	r0, r2
	ldr	r2, .L174
	sub	sp, sp, #28
	mov	r6, r1
	ldr	r3, .L174+4
	add	r7, sp, #16
.LPIC88:
	add	r2, pc, r2
	mov	r1, r7
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #20]
	mov	r3, #0
	bl	ulConvertStr2NumEx(PLT)
	ldr	r3, [sp, #16]
	ldrb	r2, [r3]	@ zero_extendqisi2
	cmp	r2, #46
	bne	.L171
	mov	r4, r0
	mov	r1, r7
	add	r0, r3, #1
	lsl	r4, r4, #4
	bl	ulConvertStr2NumEx(PLT)
	ldr	r3, [r5, #20]
	uxtb	r4, r4
	and	r0, r0, #15
	orr	r0, r0, r4
	mov	r2, r6
	str	r3, [sp, #4]
	mov	r1, #0
	ldr	ip, [r5, #44]
	ldr	r3, [r5, #40]
	str	ip, [sp]
	bl	AssignValue_VAB(PLT)
	subs	r4, r0, #0
	bne	.L172
.L163:
	ldr	r2, .L174+8
	ldr	r3, .L174+4
.LPIC87:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #20]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L173
	mov	r0, r4
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L171:
	ldr	ip, .L174+12
	mvn	r4, #3840
	ldr	r0, .L174+16
	movw	r3, #702
	ldr	r2, .L174+20
	ldr	r1, .L174+24
.LPIC81:
	add	ip, pc, ip
.LPIC82:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC79:
	add	r2, pc, r2
.LPIC80:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L163
.L172:
.L165:
	ldr	ip, .L174+28
	movw	r3, #709
	ldr	r0, .L174+32
	ldr	r2, .L174+36
	ldr	r1, .L174+40
.LPIC85:
	add	ip, pc, ip
.LPIC86:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC83:
	add	r2, pc, r2
.LPIC84:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L163
.L173:
	bl	__stack_chk_fail(PLT)
.L175:
	.align	2
.L174:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC88+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC87+8)
	.word	.LC37-(.LPIC81+8)
	.word	.LC3-(.LPIC82+8)
	.word	.LC36-(.LPIC79+8)
	.word	.LC20-(.LPIC80+8)
	.word	.LC38-(.LPIC85+8)
	.word	.LC3-(.LPIC86+8)
	.word	.LC26-(.LPIC83+8)
	.word	.LC20-(.LPIC84+8)
	.size	SpecRev_Element, .-SpecRev_Element
	.section	.rodata.str1.4
	.align	2
.LC39:
	.ascii	"\011Token_Element = Unknown Token, %s\012\000"
	.align	2
.LC40:
	.ascii	"AssignValue_VAB( ulValue, pCurElement, (signed int)"
	.ascii	"pElementDesc->stBitOffset , (signed int)pElementDes"
	.ascii	"c->stBitLength , (signed int)pElementDesc->Instance"
	.ascii	"s.stElementSize )\000"
	.text
	.align	2
	.global	Token_Element
	.syntax unified
	.arm
	.fpu vfpv3
	.type	Token_Element, %function
Token_Element:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r6, r0
	mov	r0, r2
	ldr	r2, .L185
	sub	sp, sp, #28
	mov	r7, r1
	ldr	r3, .L185+4
.LPIC95:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #20]
	mov	r3, #0
	bl	skipWhiteSpaces(PLT)
	mov	r5, r0
	bl	stripWhiteSpaces(PLT)
	ldr	r0, [r6, #52]
	add	r2, sp, #16
	mov	r1, r5
	bl	GetTokenValue(PLT)
	subs	r4, r0, #0
	beq	.L177
	ldr	r0, .L185+8
	mov	r1, r5
.LPIC89:
	add	r0, pc, r0
	bl	printf(PLT)
.L176:
	ldr	r2, .L185+12
	ldr	r3, .L185+4
.LPIC94:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #20]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L184
	mov	r0, r4
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L177:
	ldr	r0, [r6, #44]
	mov	r1, r4
	ldr	ip, [r6, #20]
	mov	r2, r7
	ldr	r3, [r6, #40]
	stm	sp, {r0, ip}
	ldr	r0, [sp, #16]
	bl	AssignValue_VAB(PLT)
	subs	r4, r0, #0
	beq	.L176
.L178:
	ldr	ip, .L185+16
	movw	r3, #643
	ldr	r0, .L185+20
	ldr	r2, .L185+24
	ldr	r1, .L185+28
.LPIC92:
	add	ip, pc, ip
.LPIC93:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC90:
	add	r2, pc, r2
.LPIC91:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L176
.L184:
	bl	__stack_chk_fail(PLT)
.L186:
	.align	2
.L185:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC95+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC39-(.LPIC89+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC94+8)
	.word	.LC40-(.LPIC92+8)
	.word	.LC3-(.LPIC93+8)
	.word	.LC26-(.LPIC90+8)
	.word	.LC20-(.LPIC91+8)
	.size	Token_Element, .-Token_Element
	.section	.rodata.str1.4
	.align	2
.LC41:
	.ascii	"AssignValue_VA( ulValue, pCurElement, (signed int)p"
	.ascii	"ElementDesc->Instances.stElementSize )\000"
	.align	2
.LC42:
	.ascii	"Number_Element(&LclElementDesc, pCurElement, szValu"
	.ascii	"e)\000"
	.text
	.align	2
	.global	TokenNum_Element
	.syntax unified
	.arm
	.fpu vfpv3
	.type	TokenNum_Element, %function
TokenNum_Element:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	mov	r0, r2
	ldr	r2, .L202
	sub	sp, sp, #80
	mov	r5, r1
	ldr	r3, .L202+4
.LPIC105:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #76]
	mov	r3, #0
	bl	skipWhiteSpaces(PLT)
	mov	r6, r0
	bl	stripWhiteSpaces(PLT)
	ldr	r3, [r4, #52]
	mov	r1, r6
	add	r2, sp, #16
	ldr	r0, [r3]
	bl	GetTokenValue(PLT)
	subs	r1, r0, #0
	bne	.L188
	ldr	r3, [r4, #20]
	mov	r2, r5
	ldr	r0, [sp, #16]
	bl	AssignValue_VA(PLT)
	subs	r4, r0, #0
	bne	.L200
.L189:
.L187:
	ldr	r2, .L202+8
	ldr	r3, .L202+4
.LPIC104:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #76]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L201
	mov	r0, r4
	add	sp, sp, #80
	@ sp needed
	pop	{r4, r5, r6, pc}
.L188:
	ldr	r3, [r4, #52]
	mov	ip, r4
	add	lr, sp, #20
	ldr	r4, [r3, #4]
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	mov	r2, r6
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	mov	r1, r5
	add	r0, sp, #20
	str	r4, [sp, #72]
	bl	Number_Element(PLT)
	subs	r4, r0, #0
	beq	.L187
	ldr	ip, .L202+12
	movw	r3, #682
	ldr	r0, .L202+16
	ldr	r2, .L202+20
	ldr	r1, .L202+24
.LPIC102:
	add	ip, pc, ip
.LPIC103:
	add	r0, pc, r0
.LPIC100:
	add	r2, pc, r2
.LPIC101:
	add	r1, pc, r1
.L199:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	b	.L187
.L200:
	ldr	ip, .L202+28
	movw	r3, #673
	ldr	r0, .L202+32
	ldr	r2, .L202+36
	ldr	r1, .L202+40
.LPIC98:
	add	ip, pc, ip
.LPIC99:
	add	r0, pc, r0
.LPIC96:
	add	r2, pc, r2
.LPIC97:
	add	r1, pc, r1
	b	.L199
.L201:
	bl	__stack_chk_fail(PLT)
.L203:
	.align	2
.L202:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC105+8)
	.word	__stack_chk_guard(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC104+8)
	.word	.LC42-(.LPIC102+8)
	.word	.LC3-(.LPIC103+8)
	.word	.LC26-(.LPIC100+8)
	.word	.LC20-(.LPIC101+8)
	.word	.LC41-(.LPIC98+8)
	.word	.LC3-(.LPIC99+8)
	.word	.LC26-(.LPIC96+8)
	.word	.LC20-(.LPIC97+8)
	.size	TokenNum_Element, .-TokenNum_Element
	.section	.rodata.str1.4
	.align	2
.LC43:
	.ascii	"PNPID_Element\000"
	.align	2
.LC44:
	.ascii	"(strlen(szValue)!=3)\000"
	.align	2
.LC45:
	.ascii	"(uiCurChar<'A'||uiCurChar>'Z')\000"
	.align	2
.LC46:
	.ascii	"AssignValue_VAB( uiPNPID, pCurElement, (signed int)"
	.ascii	"pElementDesc->stBitOffset , (signed int)pElementDes"
	.ascii	"c->stBitLength , (signed int)pElementDesc->Instance"
	.ascii	"s.stElementSize )\000"
	.text
	.align	2
	.global	PNPID_Element
	.syntax unified
	.arm
	.fpu vfpv3
	.type	PNPID_Element, %function
PNPID_Element:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r5, r0
	sub	sp, sp, #20
	mov	r0, r2
	mov	r4, r2
	mov	r7, r1
	bl	stripWhiteSpaces(PLT)
	ldr	r8, [r5, #20]
	cmp	r8, #1
	bls	.L216
	ldr	r9, [r5, #44]
	cmp	r9, #15
	bls	.L217
	mov	r0, r4
	bl	strlen(PLT)
	cmp	r0, #3
	bne	.L218
	ldrb	r0, [r4]	@ zero_extendqisi2
	bl	toupper(PLT)
	sub	r3, r0, #65
	cmp	r3, #25
	bhi	.L209
	sub	r6, r0, #64
	ldrb	r0, [r4, #1]	@ zero_extendqisi2
	bl	toupper(PLT)
	sub	r3, r0, #65
	cmp	r3, #25
	bhi	.L209
	sub	r0, r0, #64
	orr	r6, r0, r6, lsl #5
	ldrb	r0, [r4, #2]	@ zero_extendqisi2
	bl	toupper(PLT)
	sub	r3, r0, #65
	cmp	r3, #25
	bhi	.L209
	sub	r0, r0, #64
	str	r8, [sp, #4]
	orr	r0, r0, r6, lsl #5
	ldr	r3, [r5, #40]
	mov	r2, r7
	str	r9, [sp]
	mov	r1, #0
	bl	AssignValue_VAB(PLT)
	subs	r4, r0, #0
	bne	.L219
	mov	r0, r4
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L219:
.L206:
	ldr	ip, .L220
	movw	r3, #759
	ldr	r0, .L220+4
	ldr	r2, .L220+8
	ldr	r1, .L220+12
.LPIC124:
	add	ip, pc, ip
.LPIC125:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC122:
	add	r2, pc, r2
.LPIC123:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L218:
	ldr	ip, .L220+16
	mvn	r4, #3840
	ldr	r0, .L220+20
	movw	r3, #743
	ldr	r2, .L220+24
	ldr	r1, .L220+28
.LPIC116:
	add	ip, pc, ip
.LPIC117:
	add	r0, pc, r0
.LPIC114:
	add	r2, pc, r2
.LPIC115:
	add	r1, pc, r1
.L215:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, r4
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L217:
	ldr	ip, .L220+32
	mvn	r4, #256
	ldr	r0, .L220+36
	movw	r3, #737
	ldr	r2, .L220+40
	ldr	r1, .L220+44
.LPIC112:
	add	ip, pc, ip
.LPIC113:
	add	r0, pc, r0
.LPIC110:
	add	r2, pc, r2
.LPIC111:
	add	r1, pc, r1
	b	.L215
.L209:
	ldr	ip, .L220+48
	mvn	r4, #3840
	ldr	r0, .L220+52
	movw	r3, #751
	ldr	r2, .L220+56
	ldr	r1, .L220+60
.LPIC120:
	add	ip, pc, ip
.LPIC121:
	add	r0, pc, r0
.LPIC118:
	add	r2, pc, r2
.LPIC119:
	add	r1, pc, r1
	b	.L215
.L216:
	ldr	ip, .L220+64
	mvn	r4, #256
	ldr	r0, .L220+68
	mov	r3, #732
	ldr	r2, .L220+72
	ldr	r1, .L220+76
.LPIC108:
	add	ip, pc, ip
.LPIC109:
	add	r0, pc, r0
.LPIC106:
	add	r2, pc, r2
.LPIC107:
	add	r1, pc, r1
	b	.L215
.L221:
	.align	2
.L220:
	.word	.LC46-(.LPIC124+8)
	.word	.LC3-(.LPIC125+8)
	.word	.LC26-(.LPIC122+8)
	.word	.LC20-(.LPIC123+8)
	.word	.LC44-(.LPIC116+8)
	.word	.LC3-(.LPIC117+8)
	.word	.LC43-(.LPIC114+8)
	.word	.LC20-(.LPIC115+8)
	.word	.LC33-(.LPIC112+8)
	.word	.LC3-(.LPIC113+8)
	.word	.LC43-(.LPIC110+8)
	.word	.LC20-(.LPIC111+8)
	.word	.LC45-(.LPIC120+8)
	.word	.LC3-(.LPIC121+8)
	.word	.LC43-(.LPIC118+8)
	.word	.LC20-(.LPIC119+8)
	.word	.LC32-(.LPIC108+8)
	.word	.LC3-(.LPIC109+8)
	.word	.LC43-(.LPIC106+8)
	.word	.LC20-(.LPIC107+8)
	.size	PNPID_Element, .-PNPID_Element
	.section	.rodata.str1.4
	.align	2
.LC47:
	.ascii	"Dealloc_Element\000"
	.text
	.align	2
	.global	Dealloc_Element
	.syntax unified
	.arm
	.fpu vfpv3
	.type	Dealloc_Element, %function
Dealloc_Element:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	sp, sp, #20
	ldr	r5, [r0, #40]
	cmp	r5, #0
	bne	.L232
	ldr	r3, [r0, #44]
	cmp	r3, #32
	bne	.L233
	ldr	r3, [r0, #20]
	cmp	r3, #4
	bne	.L234
	ldr	r0, [r1]
	mov	r4, r1
	cmp	r0, #0
	beq	.L224
	bl	free(PLT)
	str	r5, [r4]
.L224:
	mov	r0, #0
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, pc}
.L233:
	ldr	ip, .L235
	mvn	lr, #256
	ldr	r0, .L235+4
	movw	r3, #334
	ldr	r2, .L235+8
	ldr	r1, .L235+12
.LPIC132:
	add	ip, pc, ip
.LPIC133:
	add	r0, pc, r0
.LPIC130:
	add	r2, pc, r2
.LPIC131:
	add	r1, pc, r1
.L231:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	lr, [sp]
	bl	siFormattedMessage_SC(PLT)
	mov	r0, #0
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, pc}
.L232:
	ldr	ip, .L235+16
	mvn	lr, #256
	ldr	r0, .L235+20
	movw	r3, #329
	ldr	r2, .L235+24
	ldr	r1, .L235+28
.LPIC128:
	add	ip, pc, ip
.LPIC129:
	add	r0, pc, r0
.LPIC126:
	add	r2, pc, r2
.LPIC127:
	add	r1, pc, r1
	b	.L231
.L234:
	ldr	ip, .L235+32
	mvn	lr, #256
	ldr	r0, .L235+36
	movw	r3, #339
	ldr	r2, .L235+40
	ldr	r1, .L235+44
.LPIC136:
	add	ip, pc, ip
.LPIC137:
	add	r0, pc, r0
.LPIC134:
	add	r2, pc, r2
.LPIC135:
	add	r1, pc, r1
	b	.L231
.L236:
	.align	2
.L235:
	.word	.LC22-(.LPIC132+8)
	.word	.LC3-(.LPIC133+8)
	.word	.LC47-(.LPIC130+8)
	.word	.LC20-(.LPIC131+8)
	.word	.LC21-(.LPIC128+8)
	.word	.LC3-(.LPIC129+8)
	.word	.LC47-(.LPIC126+8)
	.word	.LC20-(.LPIC127+8)
	.word	.LC23-(.LPIC136+8)
	.word	.LC3-(.LPIC137+8)
	.word	.LC47-(.LPIC134+8)
	.word	.LC20-(.LPIC135+8)
	.size	Dealloc_Element, .-Dealloc_Element
	.section	.rodata.str1.4
	.align	2
.LC48:
	.ascii	"pElementDesc->stBitLength+ pElementDesc->stBitOffse"
	.ascii	"t> pElementDesc->Instances.stElementSize*8\000"
	.text
	.align	2
	.global	GenClear_Element
	.syntax unified
	.arm
	.fpu vfpv3
	.type	GenClear_Element, %function
GenClear_Element:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, [r0, #40]
	ldr	r3, [r0, #44]
	ldr	ip, [r0, #20]
	push	{r4, r5, r6, r7, lr}
	mov	r5, r1
	add	r0, r2, r3
	and	r1, r2, #7
	sub	sp, sp, #20
	add	r3, r3, r1
	cmp	r0, ip, lsl #3
	bhi	.L250
	cmp	r1, #0
	lsr	r6, r2, #3
	ldrbne	r0, [r5, r2, lsr #3]	@ zero_extendqisi2
	mvnne	ip, #0
	addne	r6, r6, #1
	bicne	r1, r0, ip, lsl r1
	strbne	r1, [r5, r2, lsr #3]
	cmp	r3, #7
	bhi	.L251
.L239:
	mov	r0, #0
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L251:
	lsr	r7, r3, #3
	and	r4, r3, #7
	add	r0, r5, r6
	mov	r2, r7
	mov	r1, #0
	bl	memset(PLT)
	cmp	r4, #0
	mov	r0, #0
	addne	r6, r6, r7
	movne	r2, #255
	ldrbne	r3, [r5, r6]	@ zero_extendqisi2
	andne	r3, r3, r2, lsl r4
	strbne	r3, [r5, r6]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L250:
	ldr	ip, .L252
	mvn	lr, #256
	ldr	r0, .L252+4
	mov	r3, #364
	ldr	r2, .L252+8
	ldr	r1, .L252+12
.LPIC140:
	add	ip, pc, ip
.LPIC141:
	add	r0, pc, r0
	str	lr, [sp]
	stmib	sp, {r0, ip}
.LPIC138:
	add	r2, pc, r2
.LPIC139:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mov	r0, #0
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L253:
	.align	2
.L252:
	.word	.LC48-(.LPIC140+8)
	.word	.LC3-(.LPIC141+8)
	.word	.LC47-(.LPIC138+8)
	.word	.LC20-(.LPIC139+8)
	.size	GenClear_Element, .-GenClear_Element
	.section	.rodata.str1.4
	.align	2
.LC49:
	.ascii	"GUID_Element\000"
	.align	2
.LC50:
	.ascii	"pElementDesc->Instances.stElementSize != sizeof(*pG"
	.ascii	"UID)\000"
	.align	2
.LC51:
	.ascii	"\011String_Element = Invalid Format, %s\012\000"
	.text
	.align	2
	.global	GUID_Element
	.syntax unified
	.arm
	.fpu vfpv3
	.type	GUID_Element, %function
GUID_Element:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r7, r1
	ldr	r1, .L269
	mov	r3, r0
	sub	sp, sp, #32
	ldr	r4, [r0, #40]
	mov	r0, r2
	ldr	r2, .L269+4
.LPIC152:
	add	r1, pc, r1
	cmp	r4, #0
	ldr	r2, [r1, r2]
	ldr	r2, [r2]
	str	r2, [sp, #28]
	mov	r2, #0
	bne	.L266
	ldr	r6, [r3, #20]
	cmp	r6, #16
	bne	.L267
	bl	skipWhiteSpaces(PLT)
	mov	r5, r0
	bl	stripWhiteSpaces(PLT)
	ldrb	r3, [r5, #8]	@ zero_extendqisi2
	cmp	r3, #45
	bne	.L258
	ldrb	r3, [r5, #13]	@ zero_extendqisi2
	cmp	r3, #45
	bne	.L258
	ldrb	r3, [r5, #18]	@ zero_extendqisi2
	cmp	r3, #45
	bne	.L258
	ldrb	r3, [r5, #23]	@ zero_extendqisi2
	cmp	r3, #45
	bne	.L258
	ldrb	r3, [r5, #36]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L258
	add	r8, sp, #20
	mov	r2, r6
	mov	r1, r8
	mov	r0, r5
	bl	strtoul(PLT)
	mov	r1, r0
	mov	r0, r7
	bl	EeeP_Set32BitValue_BE(PLT)
	mov	r2, r6
	mov	r1, r8
	add	r0, r5, #9
	add	r9, sp, #24
	bl	strtoul(PLT)
	uxth	r1, r0
	add	r0, r7, #4
	mov	r10, r4
	bl	EeeP_Set16BitValue_BE(PLT)
	mov	r2, r6
	mov	r1, r8
	add	r0, r5, #14
	bl	strtoul(PLT)
	uxth	r1, r0
	add	r0, r7, #6
	bl	EeeP_Set16BitValue_BE(PLT)
	ldrh	r3, [r5, #19]	@ unaligned
	mov	r2, r6
	mov	r1, r8
	mov	r0, r9
	strb	r4, [sp, #26]
	strh	r3, [sp, #24]	@ movhi
	bl	strtoul(PLT)
	strb	r0, [r7, #8]
	mov	r2, r6
	ldrh	r3, [r5, #21]	@ unaligned
	mov	r6, r4
	mov	r1, r8
	mov	r0, r9
	strb	r4, [sp, #26]
	strh	r3, [sp, #24]	@ movhi
	bl	strtoul(PLT)
	strb	r0, [r7, #9]
.L261:
	add	r3, r5, r6
	mov	r2, #16
	ldrh	r3, [r3, #24]	@ unaligned
	mov	r1, r8
	mov	r0, r9
	strb	r10, [sp, #26]
	strh	r3, [sp, #24]	@ movhi
	bl	strtoul(PLT)
	add	r3, r7, r6, lsr #1
	add	r6, r6, #2
	cmp	r6, #12
	strb	r0, [r3, #10]
	bne	.L261
	b	.L254
.L258:
	ldr	r0, .L269+8
	mov	r1, r5
	mvn	r4, #3840
.LPIC150:
	add	r0, pc, r0
	bl	printf(PLT)
.L254:
	ldr	r2, .L269+12
	ldr	r3, .L269+4
.LPIC151:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #28]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L268
	mov	r0, r4
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L267:
	ldr	ip, .L269+16
	mvn	r4, #256
	ldr	r0, .L269+20
	movw	r3, #455
	ldr	r2, .L269+24
	ldr	r1, .L269+28
.LPIC148:
	add	ip, pc, ip
.LPIC149:
	add	r0, pc, r0
.LPIC146:
	add	r2, pc, r2
.LPIC147:
	add	r1, pc, r1
.L265:
	stmib	sp, {r0, ip}
	mov	r0, #69
	str	r4, [sp]
	bl	siFormattedMessage_SC(PLT)
	b	.L254
.L266:
	ldr	ip, .L269+32
	mvn	r4, #256
	ldr	r0, .L269+36
	movw	r3, #450
	ldr	r2, .L269+40
	ldr	r1, .L269+44
.LPIC144:
	add	ip, pc, ip
.LPIC145:
	add	r0, pc, r0
.LPIC142:
	add	r2, pc, r2
.LPIC143:
	add	r1, pc, r1
	b	.L265
.L268:
	bl	__stack_chk_fail(PLT)
.L270:
	.align	2
.L269:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC152+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC51-(.LPIC150+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC151+8)
	.word	.LC50-(.LPIC148+8)
	.word	.LC3-(.LPIC149+8)
	.word	.LC49-(.LPIC146+8)
	.word	.LC20-(.LPIC147+8)
	.word	.LC21-(.LPIC144+8)
	.word	.LC3-(.LPIC145+8)
	.word	.LC49-(.LPIC142+8)
	.word	.LC20-(.LPIC143+8)
	.size	GUID_Element, .-GUID_Element
	.section	.rodata.str1.4
	.align	2
.LC52:
	.ascii	"Or a \012\000"
	.align	2
.LC53:
	.ascii	"Range_List_Help(&LclElementDesc, szHelpBuf + len, s"
	.ascii	"tHBufLen - len)\000"
	.text
	.align	2
	.global	TokenNum_List_Help
	.syntax unified
	.arm
	.fpu vfpv3
	.type	TokenNum_List_Help, %function
TokenNum_List_Help:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, r2
	ldr	r2, .L289
	sub	sp, sp, #92
	add	ip, sp, #28
	mov	lr, r0
	ldr	r3, .L289+4
	mov	r7, r1
.LPIC166:
	add	r2, pc, r2
	str	ip, [sp, #20]
	mov	r9, r0
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [sp, #84]
	mov	r3, #0
	ldr	r3, [r0, #52]
	ldr	r4, [r3]
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	ldr	r3, .L289+8
	ldr	r2, .L289+12
	stm	ip, {r0, r1}
	mov	r1, r8
.LPIC153:
	add	r3, pc, r3
	mov	r0, r7
.LPIC154:
	add	r2, pc, r2
	str	r4, [sp, #80]
	bl	EApiSprintfA(PLT)
	ldr	r3, [sp, #80]
	ldm	r3, {r5, r6}
	cmp	r5, #0
	beq	.L272
	sub	r5, r5, #1
	mov	r4, r0
	cmp	r5, #3
	bls	.L273
	ldr	r10, .L289+16
	add	fp, r6, #32
.LPIC155:
	add	r10, pc, r10
.L274:
	ldr	r3, [fp, #-32]
	sub	r1, r8, r4
	mov	r2, r10
	add	r0, r7, r4
	pld	[fp, #40]
	sub	r5, r5, #4
	bl	EApiSprintfA(PLT)
	add	r6, r0, r4
	ldr	r3, [fp, #-24]
	sub	r1, r8, r6
	mov	r2, r10
	add	r0, r7, r6
	bl	EApiSprintfA(PLT)
	add	r6, r6, r0
	ldr	r3, [fp, #-16]
	sub	r1, r8, r6
	mov	r2, r10
	add	r0, r7, r6
	bl	EApiSprintfA(PLT)
	add	r6, r6, r0
	ldr	r3, [fp, #-8]
	sub	r1, r8, r6
	add	r0, r7, r6
	mov	r2, r10
	bl	EApiSprintfA(PLT)
	cmp	r5, #3
	add	r4, r6, r0
	mov	r6, fp
	add	fp, fp, #32
	bhi	.L274
.L273:
	ldr	fp, .L289+20
	add	r6, r6, #8
.LPIC159:
	add	fp, pc, fp
.L275:
	ldr	r3, [r6, #-8]
	sub	r1, r8, r4
	add	r0, r7, r4
	mov	r2, fp
	bl	EApiSprintfA(PLT)
	cmp	r5, #0
	add	r4, r4, r0
	sub	r5, r5, #1
	add	r6, r6, #8
	bne	.L275
.L272:
	mov	r0, r7
	bl	strlen(PLT)
	ldr	r2, .L289+24
	mov	r4, r0
	sub	r1, r8, r0
	add	r0, r7, r0
.LPIC160:
	add	r2, pc, r2
	bl	EApiSprintfA(PLT)
	ldr	r3, [r9, #52]
	add	r1, r4, r0
	sub	r2, r8, r1
	ldr	r0, [sp, #20]
	add	r1, r7, r1
	ldr	r3, [r3, #4]
	str	r3, [sp, #80]
	bl	Range_List_Help(PLT)
	subs	r4, r0, #0
	bne	.L287
.L271:
	ldr	r2, .L289+28
	ldr	r3, .L289+4
.LPIC165:
	add	r2, pc, r2
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [sp, #84]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L288
	mov	r0, r4
	add	sp, sp, #92
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L287:
.L276:
	ldr	ip, .L289+32
	mov	r3, #241
	ldr	r0, .L289+36
	ldr	r2, .L289+40
	ldr	r1, .L289+44
.LPIC163:
	add	ip, pc, ip
.LPIC164:
	add	r0, pc, r0
	str	r4, [sp]
	stmib	sp, {r0, ip}
.LPIC161:
	add	r2, pc, r2
.LPIC162:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L271
.L288:
	bl	__stack_chk_fail(PLT)
.L290:
	.align	2
.L289:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC166+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC13-(.LPIC153+8)
	.word	.LC3-(.LPIC154+8)
	.word	.LC14-(.LPIC155+8)
	.word	.LC14-(.LPIC159+8)
	.word	.LC52-(.LPIC160+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC165+8)
	.word	.LC53-(.LPIC163+8)
	.word	.LC3-(.LPIC164+8)
	.word	.LC26-(.LPIC161+8)
	.word	.LC20-(.LPIC162+8)
	.size	TokenNum_List_Help, .-TokenNum_List_Help
	.global	DeleteTrailingSpaces
	.global	PreserveTrailingSpaces
	.global	InsideCrcTL
	.global	InsideCrcTokens
	.section	.rodata.str1.4
	.align	2
.LC54:
	.ascii	"InsideCRC\000"
	.align	2
.LC55:
	.ascii	"OutsideCRC\000"
	.global	UINT32RangeDesc
	.global	UINT32Range
	.global	UINT16RangeDesc
	.global	UINT16Range
	.global	UINT8RangeDesc
	.global	UINT8Range
	.align	2
.LC56:
	.ascii	"BYTES\000"
	.align	2
.LC57:
	.ascii	"\000"
	.align	2
.LC58:
	.ascii	"KB\000"
	.align	2
.LC59:
	.ascii	"*(1024 BYTES)\000"
	.align	2
.LC60:
	.ascii	"MB\000"
	.align	2
.LC61:
	.ascii	"*(1024 KB)\000"
	.align	2
.LC62:
	.ascii	"GB\000"
	.align	2
.LC63:
	.ascii	"*(1024 MB)\000"
	.global	DeletePreserve
	.align	2
.LC64:
	.ascii	"Deleted\000"
	.align	2
.LC65:
	.ascii	"Preserved\000"
	.global	GUID_Element_funcs
	.global	I2C_EEPROM_Addr_funcs
	.global	PNPID_Element_funcs
	.global	SpecRev_Element_funcs
	.global	Token_Element_funcs
	.global	TokenNum_Element_funcs
	.global	Size_Element_funcs
	.global	Number_Element_funcs
	.global	String_Element_funcs
	.data
	.align	2
	.type	PreserveTrailingSpaces, %object
	.size	PreserveTrailingSpaces, 12
PreserveTrailingSpaces:
	.word	0
	.word	0
	.word	1
	.type	UINT32Range, %object
	.size	UINT32Range, 12
UINT32Range:
	.word	0
	.word	-1
	.word	1
	.type	UINT16Range, %object
	.size	UINT16Range, 12
UINT16Range:
	.word	0
	.word	65535
	.word	1
	.type	UINT8Range, %object
	.size	UINT8Range, 12
UINT8Range:
	.word	0
	.word	255
	.word	1
	.bss
	.align	2
	.type	DeleteTrailingSpaces, %object
	.size	DeleteTrailingSpaces, 12
DeleteTrailingSpaces:
	.space	12
	.section	.data.rel.local,"aw"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	DeletePreserve, %object
	.size	DeletePreserve, 8
DeletePreserve:
	.word	.LC64
	.word	.LC65
	.type	SizeMacroDesc, %object
	.size	SizeMacroDesc, 8
SizeMacroDesc:
	.word	SizeMacros
	.word	4
	.type	InsideCrcTL, %object
	.size	InsideCrcTL, 8
InsideCrcTL:
	.word	2
	.word	InsideCrcTokens
	.type	InsideCrcTokens, %object
	.size	InsideCrcTokens, 16
InsideCrcTokens:
	.word	.LC54
	.word	1
	.word	.LC55
	.word	0
	.type	UINT32RangeDesc, %object
	.size	UINT32RangeDesc, 8
UINT32RangeDesc:
	.word	1
	.word	UINT32Range
	.type	UINT16RangeDesc, %object
	.size	UINT16RangeDesc, 8
UINT16RangeDesc:
	.word	1
	.word	UINT16Range
	.type	UINT8RangeDesc, %object
	.size	UINT8RangeDesc, 8
UINT8RangeDesc:
	.word	1
	.word	UINT8Range
	.type	SizeMacros, %object
	.size	SizeMacros, 32
SizeMacros:
	.word	.LC56
	.word	.LC57
	.word	.LC58
	.word	.LC59
	.word	.LC60
	.word	.LC61
	.word	.LC62
	.word	.LC63
	.type	GUID_Element_funcs, %object
	.size	GUID_Element_funcs, 16
GUID_Element_funcs:
	.word	GUID_Element
	.word	GenClear_Element
	.word	GUID_Help
	.word	GUID_Default
	.type	I2C_EEPROM_Addr_funcs, %object
	.size	I2C_EEPROM_Addr_funcs, 16
I2C_EEPROM_Addr_funcs:
	.word	I2C_EEPROM_Addr
	.word	GenClear_Element
	.word	I2C_EEPROM_Help
	.word	No_Default_Txt
	.type	PNPID_Element_funcs, %object
	.size	PNPID_Element_funcs, 16
PNPID_Element_funcs:
	.word	PNPID_Element
	.word	GenClear_Element
	.word	PNPID_Help
	.word	No_Default_Txt
	.type	SpecRev_Element_funcs, %object
	.size	SpecRev_Element_funcs, 16
SpecRev_Element_funcs:
	.word	SpecRev_Element
	.word	GenClear_Element
	.word	SpecRev_Help
	.word	No_Default_Txt
	.type	Token_Element_funcs, %object
	.size	Token_Element_funcs, 16
Token_Element_funcs:
	.word	Token_Element
	.word	GenClear_Element
	.word	Token_List_Help
	.word	Token_List_Default
	.type	TokenNum_Element_funcs, %object
	.size	TokenNum_Element_funcs, 16
TokenNum_Element_funcs:
	.word	TokenNum_Element
	.word	GenClear_Element
	.word	TokenNum_List_Help
	.word	TokenNum_List_Default
	.type	Size_Element_funcs, %object
	.size	Size_Element_funcs, 16
Size_Element_funcs:
	.word	Size_Element
	.word	GenClear_Element
	.word	Range_List_Help
	.word	Range_Default_Txt
	.type	Number_Element_funcs, %object
	.size	Number_Element_funcs, 16
Number_Element_funcs:
	.word	Number_Element
	.word	GenClear_Element
	.word	Range_List_Help
	.word	Range_Default_Txt
	.type	String_Element_funcs, %object
	.size	String_Element_funcs, 16
String_Element_funcs:
	.word	String_Element
	.word	Dealloc_Element
	.word	String_Help
	.word	No_Default_Txt
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
